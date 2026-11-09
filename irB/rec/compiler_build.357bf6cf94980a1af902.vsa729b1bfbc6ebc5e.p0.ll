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
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca %"std/os:Output"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca ptr
  %l38 = alloca i64
  %l51 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l55 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca i64
  %l75 = alloca { i64, ptr }
  %l78 = alloca ptr
  %l79 = alloca i64
  %l86 = alloca %"std/os:Output"
  %l88 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l90 = alloca %"std/os:Output"
  %l91 = alloca i32
  %l93 = alloca i1
  %l100 = alloca { i64, ptr }
  %l104 = alloca ptr
  %l105 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l117 = alloca i1
  %l124 = alloca i1
  %l128 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l136 = alloca { i64, ptr }
  %l139 = alloca ptr
  %l140 = alloca i64
  %l147 = alloca ptr
  %l149 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l156 = alloca i32
  %s2 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s20 = alloca %olang.scope
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
  br label %bb56
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
  store ptr %l11, ptr %l37, !tbaa !29
  %t25 = ptrtoint ptr %s2 to i64
  store i64 %t25, ptr %l38, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = call ptr @__olang_region_make(ptr %s2)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l38, !tbaa !24
  br label %bb7
bb7:
  %t32 = extractvalue { i64, ptr } %a1, 1
  %t33 = extractvalue { i64, ptr } %a1, 0
  %t34 = load i64, ptr %l38
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t33)
  call void @olang_textcopy(ptr %t36, ptr %t32, i64 %t33)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  %t40 = load i64, ptr %l38
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %t48, { i64, ptr } %t47)
  br label %bb8
bb8:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %l11, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) })
  br label %bb9
bb9:
  store { i64, ptr } %a2, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  store i64 %t55, ptr %l14, !tbaa !24
  br label %bb10
bb10:
  %t57 = load i64, ptr %l13, !tbaa !24
  %t58 = load i64, ptr %l14, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb11, label %bb12
bb11:
  br label %bb18
bb12:
  br label %bb13
bb13:
  %t65 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t65, ptr %l51, !tbaa !27
  %t66 = load i64, ptr %l13, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %t69, i64 %t66
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !37
  store { i64, ptr } %t71, ptr %l15, !tbaa !27
  store ptr %l11, ptr %l54, !tbaa !29
  %t73 = ptrtoint ptr %s2 to i64
  store i64 %t73, ptr %l55, !tbaa !24
  %t74 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t74, label %bb14, label %bb15
bb14:
  %t76 = call ptr @__olang_region_make(ptr %s2)
  %t77 = ptrtoint ptr %t76 to i64
  store i64 %t77, ptr %l55, !tbaa !24
  br label %bb15
bb15:
  %t78 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 1
  %t81 = extractvalue { i64, ptr } %t78, 0
  %t82 = load i64, ptr %l55
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = call ptr @__olang_scope_alloc(ptr %t83, i64 %t81)
  call void @olang_textcopy(ptr %t84, ptr %t80, i64 %t81)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  %t88 = load i64, ptr %l55
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = extractvalue { i64, ptr } %t86, 0
  %t91 = extractvalue { i64, ptr } %t86, 1
  %t92 = mul i64 %t90, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %t89, i64 %t92)
  call void @llvm.memcpy.p0.p0.i64(ptr %t93, ptr %t91, i64 %t92, i1 false)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  %t96 = load ptr, ptr %l54, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %t96, { i64, ptr } %t95)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t98 = load i64, ptr %l13, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l13, !tbaa !24
  br label %bb10
bb18:
  store ptr %l11, ptr %l62, !tbaa !29
  %t102 = ptrtoint ptr %s2 to i64
  store i64 %t102, ptr %l63, !tbaa !24
  %t103 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t103, label %bb19, label %bb20
bb19:
  %t105 = call ptr @__olang_region_make(ptr %s2)
  %t106 = ptrtoint ptr %t105 to i64
  store i64 %t106, ptr %l63, !tbaa !24
  br label %bb20
bb20:
  %t107 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 1
  %t110 = extractvalue { i64, ptr } %t107, 0
  %t111 = load i64, ptr %l63
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = call ptr @__olang_scope_alloc(ptr %t112, i64 %t110)
  call void @olang_textcopy(ptr %t113, ptr %t109, i64 %t110)
  %t114 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  %t117 = load i64, ptr %l63
  %t118 = inttoptr i64 %t117 to ptr
  %t119 = extractvalue { i64, ptr } %t115, 0
  %t120 = extractvalue { i64, ptr } %t115, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %t118, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t125 = load ptr, ptr %l62, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %t125, { i64, ptr } %t124)
  br label %bb21
bb21:
  %t127 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t127, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t129 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  store i64 %t131, ptr %l18, !tbaa !24
  br label %bb22
bb22:
  %t133 = load i64, ptr %l17, !tbaa !24
  %t134 = load i64, ptr %l18, !tbaa !24
  %t137 = icmp slt i64 %t133, %t134
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb23, label %bb24
bb23:
  br label %bb30
bb24:
  br label %bb25
bb25:
  %t141 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t141, ptr %l75, !tbaa !27
  %t142 = load i64, ptr %l17, !tbaa !24
  %t144 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr { i64, ptr }, ptr %t145, i64 %t142
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !37
  store { i64, ptr } %t147, ptr %l19, !tbaa !27
  store ptr %l11, ptr %l78, !tbaa !29
  %t149 = ptrtoint ptr %s2 to i64
  store i64 %t149, ptr %l79, !tbaa !24
  %t150 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t150, label %bb26, label %bb27
bb26:
  %t152 = call ptr @__olang_region_make(ptr %s2)
  %t153 = ptrtoint ptr %t152 to i64
  store i64 %t153, ptr %l79, !tbaa !24
  br label %bb27
bb27:
  %t154 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t154, 1
  %t157 = extractvalue { i64, ptr } %t154, 0
  %t158 = load i64, ptr %l79
  %t159 = inttoptr i64 %t158 to ptr
  %t160 = call ptr @__olang_scope_alloc(ptr %t159, i64 %t157)
  call void @olang_textcopy(ptr %t160, ptr %t156, i64 %t157)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  %t164 = load i64, ptr %l79
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = extractvalue { i64, ptr } %t162, 0
  %t167 = extractvalue { i64, ptr } %t162, 1
  %t168 = mul i64 %t166, 1
  %t169 = call ptr @__olang_scope_alloc(ptr %t165, i64 %t168)
  call void @llvm.memcpy.p0.p0.i64(ptr %t169, ptr %t167, i64 %t168, i1 false)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  %t172 = load ptr, ptr %l78, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %t172, { i64, ptr } %t171)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t174 = load i64, ptr %l17, !tbaa !24
  %t176 = add i64 %t174, 1
  store i64 %t176, ptr %l17, !tbaa !24
  br label %bb22
bb30:
  %t179 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s2, ptr %s2, ptr %l11)
  store { i64, ptr } %t179, ptr %l88
  br label %bb31
bb31:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l89, !tbaa !27
  %t180 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t181 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t182 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s2, ptr %s2, ptr %s2, ptr %s2, { i64, ptr } %t180, { i64, ptr } %t181, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  %t183 = extractvalue { i32, %"std/os:Output" } %t182, 1
  %t184 = extractvalue { i32, %"std/os:Output" } %t182, 0
  store i32 %t184, ptr %l91
  %t185 = icmp ne i32 %t184, 0
  br i1 %t185, label %bb33, label %ok.186, !prof !99
ok.186:
  store %"std/os:Output" %t183, ptr %l90
  br label %bb32
bb32:
  %t187 = load %"std/os:Output", ptr %l90
  store %"std/os:Output" %t187, ptr %l86
  br label %bb39
bb33:
  %t188 = load i32, ptr %l91, !tbaa !23
  %t189 = ashr i32 %t188, 16
  %t191 = icmp eq i32 %t189, 1
  store i1 %t191, ptr %l93, !tbaa !21
  %t192 = load i32, ptr %l91, !tbaa !23
  %t193 = ashr i32 %t192, 16
  %t195 = icmp eq i32 %t193, 1
  br i1 %t195, label %bb34, label %bb35
bb34:
  call void @__olang_errpay_pop()
  br label %bb35
bb35:
  br label %bb36
bb36:
  store %olang.scope zeroinitializer, ptr %s13
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t198, 1
  %t201 = extractvalue { i64, ptr } %t198, 0
  %t202 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t203 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t204 = add i64 %t201, %t203
  %t205 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t204)
  call void @olang_textcopy(ptr %t205, ptr %t200, i64 %t201)
  %t206 = getelementptr i8, ptr %t205, i64 %t201
  call void @olang_textcopy(ptr %t206, ptr %t202, i64 %t203)
  %t207 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t205, 1
  %t210 = extractvalue { i64, ptr } %t208, 0
  %t211 = extractvalue { i64, ptr } %t208, 1
  %t212 = mul i64 %t210, 1
  %t213 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t212)
  call void @llvm.memcpy.p0.p0.i64(ptr %t213, ptr %t211, i64 %t212, i1 false)
  %t214 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t213, 1
  %t218 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s13, ptr %s13, ptr %s13, ptr %t197, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) }, { i64, ptr } %t215)
  store { i64, ptr } %t218, ptr %l100
  br label %bb37
bb37:
  %t219 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t219, 0
  %t221 = extractvalue { i64, ptr } %t219, 1
  %t222 = mul i64 %t220, 1
  %t223 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t222)
  call void @llvm.memcpy.p0.p0.i64(ptr %t223, ptr %t221, i64 %t222, i1 false)
  %t224 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t223, 1
  call void @compiler_2fbuild_2esayln(ptr %s13, { i64, ptr } %t225)
  br label %bb38
bb38:
  store i1 true, ptr %l5, !tbaa !21
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s2)
  br label %bb55
bb39:
  %t227 = load %"std/os:Output", ptr %l86
  store %"std/os:Output" %t227, ptr %l20
  %t228 = getelementptr %"std/os:Output", ptr %l20, i32 0, i32 0
  %t229 = load i32, ptr %t228, !tbaa !23
  %t231 = icmp sgt i32 %t229, 128
  br i1 %t231, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s15
  %t233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t233, ptr %l104, !tbaa !29
  %t234 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t234, ptr %l105, !tbaa !27
  %t235 = getelementptr %"std/os:Output", ptr %l20, i32 0, i32 0
  %t236 = load i32, ptr %t235, !tbaa !23
  %t238 = sub i32 %t236, 128
  %t240 = call { i64, ptr } @compiler_2fbuild_2eSignalName(ptr %s15, i32 %t238)
  store { i64, ptr } %t240, ptr %l108
  br label %bb42
bb41:
  br label %bb45
bb42:
  %t241 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t241, 1
  %t243 = extractvalue { i64, ptr } %t241, 0
  %t244 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t245 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t246 = add i64 %t243, %t245
  %t247 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 1
  %t249 = extractvalue { i64, ptr } %t247, 0
  %t250 = add i64 %t246, %t249
  %t251 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t253 = add i64 %t250, %t252
  %t254 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t253)
  call void @olang_textcopy(ptr %t254, ptr %t242, i64 %t243)
  %t255 = getelementptr i8, ptr %t254, i64 %t243
  call void @olang_textcopy(ptr %t255, ptr %t244, i64 %t245)
  %t256 = getelementptr i8, ptr %t255, i64 %t245
  call void @olang_textcopy(ptr %t256, ptr %t248, i64 %t249)
  %t257 = getelementptr i8, ptr %t256, i64 %t249
  call void @olang_textcopy(ptr %t257, ptr %t251, i64 %t252)
  %t258 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t254, 1
  %t261 = extractvalue { i64, ptr } %t259, 0
  %t262 = extractvalue { i64, ptr } %t259, 1
  %t263 = mul i64 %t261, 1
  %t264 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t263)
  call void @llvm.memcpy.p0.p0.i64(ptr %t264, ptr %t262, i64 %t263, i1 false)
  %t265 = insertvalue { i64, ptr } undef, i64 %t261, 0
  %t266 = insertvalue { i64, ptr } %t265, ptr %t264, 1
  %t267 = load ptr, ptr %l104, !tbaa !29
  %t269 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s15, ptr %s15, ptr %s15, ptr %t267, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d30, i32 0, i32 1) }, { i64, ptr } %t266)
  store { i64, ptr } %t269, ptr %l111
  br label %bb43
bb43:
  %t270 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t270, 0
  %t272 = extractvalue { i64, ptr } %t270, 1
  %t273 = mul i64 %t271, 1
  %t274 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t273)
  call void @llvm.memcpy.p0.p0.i64(ptr %t274, ptr %t272, i64 %t273, i1 false)
  %t275 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t274, 1
  call void @compiler_2fbuild_2esayln(ptr %s15, { i64, ptr } %t276)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s15)
  br label %bb45
bb45:
  %t278 = getelementptr %"std/os:Output", ptr %l20, i32 0, i32 0
  %t279 = load i32, ptr %t278, !tbaa !23
  %t281 = icmp ne i32 %t279, 3
  br i1 %t281, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb48
bb47:
  br label %bb48
bb48:
  %t283 = getelementptr %"std/os:Output", ptr %l20, i32 0, i32 0
  %t284 = load i32, ptr %t283, !tbaa !23
  %t286 = icmp ne i32 %t284, 0
  br i1 %t286, label %bb49, label %bb50
bb49:
  %t288 = getelementptr %"std/os:Output", ptr %l20, i32 0, i32 0
  %t289 = load i32, ptr %t288, !tbaa !23
  %t291 = icmp ne i32 %t289, 3
  store i1 %t291, ptr %l117, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb51
bb51:
  %t293 = load i1, ptr %l117, !tbaa !21
  br i1 %t293, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb54
bb53:
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s2)
  br label %bb55
bb55:
  %t294 = load i64, ptr %l8, !tbaa !24
  %t296 = add i64 %t294, 1
  store i64 %t296, ptr %l8, !tbaa !24
  br label %bb1
bb56:
  %t298 = load i1, ptr %l6, !tbaa !21
  %t300 = xor i1 %t298, true
  br i1 %t300, label %bb57, label %bb58
bb57:
  %t302 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t302, 0
  %t306 = icmp sgt i64 %t304, 0
  store i1 %t306, ptr %l124, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb59
bb59:
  %t308 = load i1, ptr %l124, !tbaa !21
  br i1 %t308, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s20
  %t309 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s20, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t309, ptr %l128
  br label %bb62
bb61:
  br label %bb75
bb62:
  %t310 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l128
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t310, ptr %l21
  %t311 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t311, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t313 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t315 = extractvalue { i64, ptr } %t313, 0
  store i64 %t315, ptr %l24, !tbaa !24
  br label %bb63
bb63:
  %t317 = load i64, ptr %l23, !tbaa !24
  %t318 = load i64, ptr %l24, !tbaa !24
  %t321 = icmp slt i64 %t317, %t318
  %t323 = xor i1 %t321, true
  br i1 %t323, label %bb64, label %bb65
bb64:
  br label %bb71
bb65:
  br label %bb66
bb66:
  %t325 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t325, ptr %l136, !tbaa !27
  %t326 = load i64, ptr %l23, !tbaa !24
  %t328 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr { i64, ptr }, ptr %t329, i64 %t326
  %t331 = load { i64, ptr }, ptr %t330, !tbaa !37
  store { i64, ptr } %t331, ptr %l25, !tbaa !27
  store ptr %l21, ptr %l139, !tbaa !29
  %t333 = ptrtoint ptr %s20 to i64
  store i64 %t333, ptr %l140, !tbaa !24
  %t334 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t334, label %bb67, label %bb68
bb67:
  %t336 = call ptr @__olang_region_make(ptr %s20)
  %t337 = ptrtoint ptr %t336 to i64
  store i64 %t337, ptr %l140, !tbaa !24
  br label %bb68
bb68:
  %t338 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t339 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t340 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t342 = extractvalue { i64, ptr } %t338, 1
  %t343 = extractvalue { i64, ptr } %t338, 0
  %t344 = add i64 %t340, %t343
  %t345 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t346 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t347 = add i64 %t344, %t346
  %t348 = load i64, ptr %l140
  %t349 = inttoptr i64 %t348 to ptr
  %t350 = call ptr @__olang_scope_alloc(ptr %t349, i64 %t347)
  call void @olang_textcopy(ptr %t350, ptr %t339, i64 %t340)
  %t351 = getelementptr i8, ptr %t350, i64 %t340
  call void @olang_textcopy(ptr %t351, ptr %t342, i64 %t343)
  %t352 = getelementptr i8, ptr %t351, i64 %t343
  call void @olang_textcopy(ptr %t352, ptr %t345, i64 %t346)
  %t353 = insertvalue { i64, ptr } undef, i64 %t347, 0
  %t354 = insertvalue { i64, ptr } %t353, ptr %t350, 1
  %t356 = load i64, ptr %l140
  %t357 = inttoptr i64 %t356 to ptr
  %t358 = extractvalue { i64, ptr } %t354, 0
  %t359 = extractvalue { i64, ptr } %t354, 1
  %t360 = mul i64 %t358, 1
  %t361 = call ptr @__olang_scope_alloc(ptr %t357, i64 %t360)
  call void @llvm.memcpy.p0.p0.i64(ptr %t361, ptr %t359, i64 %t360, i1 false)
  %t362 = insertvalue { i64, ptr } undef, i64 %t358, 0
  %t363 = insertvalue { i64, ptr } %t362, ptr %t361, 1
  %t364 = load ptr, ptr %l139, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s20, ptr %s20, ptr %t364, { i64, ptr } %t363)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t366 = load i64, ptr %l23, !tbaa !24
  %t368 = add i64 %t366, 1
  store i64 %t368, ptr %l23, !tbaa !24
  br label %bb63
bb71:
  %t370 = load ptr, ptr %l0, !tbaa !29
  store ptr %t370, ptr %l147, !tbaa !29
  %t372 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s20, ptr %s20, ptr %s20, ptr %l21, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store { i64, ptr } %t372, ptr %l149
  br label %bb72
bb72:
  %t373 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t374 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t375 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t376 = extractvalue { i64, ptr } %t375, 1
  %t377 = extractvalue { i64, ptr } %t375, 0
  %t378 = add i64 %t374, %t377
  %t379 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t378)
  call void @olang_textcopy(ptr %t379, ptr %t373, i64 %t374)
  %t380 = getelementptr i8, ptr %t379, i64 %t374
  call void @olang_textcopy(ptr %t380, ptr %t376, i64 %t377)
  %t381 = insertvalue { i64, ptr } undef, i64 %t378, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t379, 1
  %t384 = extractvalue { i64, ptr } %t382, 0
  %t385 = extractvalue { i64, ptr } %t382, 1
  %t386 = mul i64 %t384, 1
  %t387 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t386)
  call void @llvm.memcpy.p0.p0.i64(ptr %t387, ptr %t385, i64 %t386, i1 false)
  %t388 = insertvalue { i64, ptr } undef, i64 %t384, 0
  %t389 = insertvalue { i64, ptr } %t388, ptr %t387, 1
  %t390 = load ptr, ptr %l147, !tbaa !29
  %t392 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s20, ptr %s20, ptr %s20, ptr %t390, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, { i64, ptr } %t389)
  store { i64, ptr } %t392, ptr %l152
  br label %bb73
bb73:
  %t393 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t394 = extractvalue { i64, ptr } %t393, 0
  %t395 = extractvalue { i64, ptr } %t393, 1
  %t396 = mul i64 %t394, 1
  %t397 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t396)
  call void @llvm.memcpy.p0.p0.i64(ptr %t397, ptr %t395, i64 %t396, i1 false)
  %t398 = insertvalue { i64, ptr } undef, i64 %t394, 0
  %t399 = insertvalue { i64, ptr } %t398, ptr %t397, 1
  call void @compiler_2fbuild_2esayln(ptr %s20, { i64, ptr } %t399)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s20)
  store i32 1, ptr %rv
  br label %ret
bb75:
  %t402 = load i1, ptr %l5, !tbaa !21
  br i1 %t402, label %bb76, label %bb77
bb76:
  store i32 1, ptr %l156, !tbaa !23
  br label %bb78
bb77:
  store i32 0, ptr %l156, !tbaa !23
  br label %bb78
bb78:
  %t404 = load i32, ptr %l156, !tbaa !23
  store i32 %t404, ptr %rv
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
  %s2 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s2
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t29, ptr %l14, !tbaa !27
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %s2)
  store %"compiler/diagmsg:Msg" %t30, ptr %l15
  br label %bb12
bb12:
  %t32 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t33 = load %"compiler/diagmsg:Msg", ptr %l15
  call void @compiler_2fbuild_2efileFatal(ptr %v0, ptr %s2, ptr %v1, { i64, ptr } %t32, %"compiler/diagmsg:Msg" %t33, ptr %a1)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
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
  %l27 = alloca ptr
  %l28 = alloca i64
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
  store ptr %t93, ptr %l27, !tbaa !29
  %t94 = ptrtoint ptr %v1 to i64
  store i64 %t94, ptr %l28, !tbaa !24
  %t95 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t95, label %bb19, label %bb20
bb18:
  br label %bb22
bb19:
  %t97 = call ptr @__olang_region_make(ptr %v1)
  %t98 = ptrtoint ptr %t97 to i64
  store i64 %t98, ptr %l28, !tbaa !24
  br label %bb20
bb20:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/build:Config", ptr %t99, i32 0, i32 2
  %t102 = getelementptr %"compiler/target:Target", ptr %t101, i32 0, i32 6
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 1
  %t106 = extractvalue { i64, ptr } %t103, 0
  %t107 = load i64, ptr %l28
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = call ptr @__olang_scope_alloc(ptr %t108, i64 %t106)
  call void @olang_textcopy(ptr %t109, ptr %t105, i64 %t106)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t113 = load i64, ptr %l28
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = extractvalue { i64, ptr } %t111, 0
  %t116 = extractvalue { i64, ptr } %t111, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %t114, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  %t121 = load ptr, ptr %l27, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t121, { i64, ptr } %t120)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t123 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t123, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d41, i32 0, i32 1) })
  br label %bb23
bb23:
  %t125 = load ptr, ptr %lp1
  %t126 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t125
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %rv
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
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca ptr
  %l13 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca %"std/os:Output"
  %l28 = alloca %"std/os:FileInfo"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca ptr
  %l31 = alloca i64
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca i64
  %l42 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l49 = alloca i64
  %l58 = alloca ptr
  %l59 = alloca i64
  %l65 = alloca ptr
  %l66 = alloca i64
  %l77 = alloca %"std/prelude/text:StringBuilder"
  %l80 = alloca i64
  %l82 = alloca i64
  %l87 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l100 = alloca i32
  %l102 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i64
  %l112 = alloca ptr
  %l113 = alloca i64
  %l116 = alloca { i64, ptr }
  %l120 = alloca ptr
  %l121 = alloca i64
  %l127 = alloca i64
  %l129 = alloca i64
  %l134 = alloca { i64, ptr }
  %l135 = alloca ptr
  %l136 = alloca i64
  %l144 = alloca i64
  %l146 = alloca i64
  %l151 = alloca { i64, ptr }
  %l152 = alloca ptr
  %l153 = alloca i64
  %l169 = alloca i1
  %l176 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l178 = alloca i64
  %l180 = alloca i64
  %l185 = alloca { i64, ptr }
  %l190 = alloca ptr
  %l192 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l200 = alloca i1
  %l202 = alloca i32
  %l204 = alloca i1
  %l209 = alloca i1
  %l211 = alloca %"std/os:Output"
  %l213 = alloca { i64, ptr }
  %l214 = alloca { i64, ptr }
  %l215 = alloca %"std/os:Output"
  %l216 = alloca i32
  %l218 = alloca i1
  %l225 = alloca ptr
  %l228 = alloca %"std/os:FileInfo"
  %l230 = alloca %"std/os:FileInfo"
  %l231 = alloca i32
  %l233 = alloca i1
  %l243 = alloca i32
  %l245 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
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
  store ptr %l6, ptr %l30, !tbaa !29
  %t3 = ptrtoint ptr %s0 to i64
  store i64 %t3, ptr %l31, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t6 = call ptr @__olang_region_make(ptr %s0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l31, !tbaa !24
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/build:Config", ptr %t8, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 1
  %t14 = extractvalue { i64, ptr } %t11, 0
  %t15 = load i64, ptr %l31
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = call ptr @__olang_scope_alloc(ptr %t16, i64 %t14)
  call void @olang_textcopy(ptr %t17, ptr %t13, i64 %t14)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  %t21 = load i64, ptr %l31
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = extractvalue { i64, ptr } %t19, 0
  %t24 = extractvalue { i64, ptr } %t19, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  %t29 = load ptr, ptr %l30, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t29, { i64, ptr } %t28)
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %s2, ptr %t31)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l38
  br label %bb5
bb5:
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  %t35 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %t35
  store ptr %t35, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l8, !tbaa !24
  store i64 %t37, ptr %l40, !tbaa !24
  %t38 = load ptr, ptr %l7, !tbaa !29
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %t38)
  store i64 %t40, ptr %l42
  br label %bb7
bb7:
  %t41 = load i64, ptr %l40, !tbaa !24
  %t42 = load i64, ptr %l42, !tbaa !24
  %t43 = icmp slt i64 %t41, %t42
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t47 = load ptr, ptr %l7, !tbaa !29
  %t48 = load i64, ptr %l8, !tbaa !24
  %t51 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %t47, i64 %t48)
  store { i64, ptr } %t51, ptr %l47
  br label %bb11
bb11:
  %t52 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t52, ptr %l9, !tbaa !27
  store ptr %l6, ptr %l48, !tbaa !29
  %t53 = ptrtoint ptr %s0 to i64
  store i64 %t53, ptr %l49, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = call ptr @__olang_region_make(ptr %s0)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l49, !tbaa !24
  br label %bb13
bb13:
  %t58 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = extractvalue { i64, ptr } %t58, 0
  %t62 = load i64, ptr %l49
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call ptr @__olang_scope_alloc(ptr %t63, i64 %t61)
  call void @olang_textcopy(ptr %t64, ptr %t60, i64 %t61)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  %t68 = load i64, ptr %l49
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = extractvalue { i64, ptr } %t66, 0
  %t71 = extractvalue { i64, ptr } %t66, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %t69, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t76 = load ptr, ptr %l48, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t76, { i64, ptr } %t75)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t78 = load i64, ptr %l8, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l8, !tbaa !24
  br label %bb6
bb16:
  call void @__olang_scope_close(ptr %s2)
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/build:Config", ptr %t82, i32 0, i32 27
  %t85 = load i1, ptr %t84, !tbaa !21
  br i1 %t85, label %bb17, label %bb18
bb17:
  store ptr %l6, ptr %l58, !tbaa !29
  %t87 = ptrtoint ptr %s0 to i64
  store i64 %t87, ptr %l59, !tbaa !24
  %t88 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t88, label %bb19, label %bb20
bb18:
  br label %bb25
bb19:
  %t90 = call ptr @__olang_region_make(ptr %s0)
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l59, !tbaa !24
  br label %bb20
bb20:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/build:Config", ptr %t92, i32 0, i32 0
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !27
  %t96 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t99 = extractvalue { i64, ptr } %t95, 1
  %t100 = extractvalue { i64, ptr } %t95, 0
  %t101 = add i64 %t97, %t100
  %t102 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t104 = add i64 %t101, %t103
  %t105 = load i64, ptr %l59
  %t106 = inttoptr i64 %t105 to ptr
  %t107 = call ptr @__olang_scope_alloc(ptr %t106, i64 %t104)
  call void @olang_textcopy(ptr %t107, ptr %t96, i64 %t97)
  %t108 = getelementptr i8, ptr %t107, i64 %t97
  call void @olang_textcopy(ptr %t108, ptr %t99, i64 %t100)
  %t109 = getelementptr i8, ptr %t108, i64 %t100
  call void @olang_textcopy(ptr %t109, ptr %t102, i64 %t103)
  %t110 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t107, 1
  %t113 = load i64, ptr %l59
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = extractvalue { i64, ptr } %t111, 0
  %t116 = extractvalue { i64, ptr } %t111, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %t114, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  %t121 = load ptr, ptr %l58, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t121, { i64, ptr } %t120)
  br label %bb21
bb21:
  store ptr %l6, ptr %l65, !tbaa !29
  %t123 = ptrtoint ptr %s0 to i64
  store i64 %t123, ptr %l66, !tbaa !24
  %t124 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t124, label %bb22, label %bb23
bb22:
  %t126 = call ptr @__olang_region_make(ptr %s0)
  %t127 = ptrtoint ptr %t126 to i64
  store i64 %t127, ptr %l66, !tbaa !24
  br label %bb23
bb23:
  %t128 = load i64, ptr @G_2ecompiler_2fbuild_2eImportLimit, !tbaa !24
  %t129 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t130 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t132 = call i64 @__olang_fmt_i64(ptr null, i64 %t128)
  %t133 = add i64 %t130, %t132
  %t134 = load i64, ptr %l66
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = call ptr @__olang_scope_alloc(ptr %t135, i64 %t133)
  call void @olang_textcopy(ptr %t136, ptr %t129, i64 %t130)
  %t137 = getelementptr i8, ptr %t136, i64 %t130
  %t138 = call i64 @__olang_fmt_i64(ptr %t137, i64 %t128)
  %t139 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t136, 1
  %t142 = load i64, ptr %l66
  %t143 = inttoptr i64 %t142 to ptr
  %t144 = extractvalue { i64, ptr } %t140, 0
  %t145 = extractvalue { i64, ptr } %t140, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %t143, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  %t150 = load ptr, ptr %l65, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t150, { i64, ptr } %t149)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t152 = load ptr, ptr %l5, !tbaa !29
  %t154 = icmp eq ptr %t152, null
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d54, i32 0, i32 1) })
  br label %bb28
bb27:
  br label %bb55
bb28:
  %t159 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t159, 1
  %t162 = extractvalue { i64, ptr } %t159, 0
  %t163 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t165 = add i64 %t162, %t164
  %t166 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t165)
  call void @olang_textcopy(ptr %t166, ptr %t161, i64 %t162)
  %t167 = getelementptr i8, ptr %t166, i64 %t162
  call void @olang_textcopy(ptr %t167, ptr %t163, i64 %t164)
  %t168 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t166, 1
  store { i64, ptr } %t169, ptr %l10, !tbaa !27
  %t171 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s9)
  store %"std/prelude/text:StringBuilder" %t171, ptr %l77
  br label %bb29
bb29:
  %t172 = load %"std/prelude/text:StringBuilder", ptr %l77
  store %"std/prelude/text:StringBuilder" %t172, ptr %l11
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s9, ptr %s9, ptr %l11, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d56, i32 0, i32 1) })
  br label %bb30
bb30:
  %t174 = load ptr, ptr %l5, !tbaa !29
  store ptr %t174, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb31
bb31:
  store %olang.scope zeroinitializer, ptr %s12
  %t176 = load i64, ptr %l13, !tbaa !24
  store i64 %t176, ptr %l80, !tbaa !24
  %t177 = load ptr, ptr %l12, !tbaa !29
  %t179 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v4, ptr %t177)
  store i64 %t179, ptr %l82
  br label %bb32
bb32:
  %t180 = load i64, ptr %l80, !tbaa !24
  %t181 = load i64, ptr %l82, !tbaa !24
  %t182 = icmp slt i64 %t180, %t181
  %t184 = xor i1 %t182, true
  br i1 %t184, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s12)
  br label %bb39
bb34:
  br label %bb35
bb35:
  %t186 = load ptr, ptr %l12, !tbaa !29
  %t187 = load i64, ptr %l13, !tbaa !24
  %t190 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v4, ptr %v4, ptr %t186, i64 %t187)
  store { i64, ptr } %t190, ptr %l87
  br label %bb36
bb36:
  %t191 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t193 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t196 = extractvalue { i64, ptr } %t191, 1
  %t197 = extractvalue { i64, ptr } %t191, 0
  %t198 = add i64 %t194, %t197
  %t199 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t201 = add i64 %t198, %t200
  %t202 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t201)
  call void @olang_textcopy(ptr %t202, ptr %t193, i64 %t194)
  %t203 = getelementptr i8, ptr %t202, i64 %t194
  call void @olang_textcopy(ptr %t203, ptr %t196, i64 %t197)
  %t204 = getelementptr i8, ptr %t203, i64 %t197
  call void @olang_textcopy(ptr %t204, ptr %t199, i64 %t200)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t202, 1
  %t208 = extractvalue { i64, ptr } %t206, 0
  %t209 = extractvalue { i64, ptr } %t206, 1
  %t210 = mul i64 %t208, 1
  %t211 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t210)
  call void @llvm.memcpy.p0.p0.i64(ptr %t211, ptr %t209, i64 %t210, i1 false)
  %t212 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t211, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s9, ptr %s12, ptr %l11, { i64, ptr } %t213)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s12)
  br label %bb38
bb38:
  %t216 = load i64, ptr %l13, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l13, !tbaa !24
  br label %bb31
bb39:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s9, ptr %s9, ptr %l11, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d59, i32 0, i32 1) })
  br label %bb40
bb40:
  %t221 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t221, ptr %l95, !tbaa !27
  %t223 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s9, ptr %s9, ptr %l11)
  store { i64, ptr } %t223, ptr %l97
  br label %bb41
bb41:
  %t224 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t224, 0
  %t227 = extractvalue { i64, ptr } %t224, 1
  %t228 = mul i64 %t226, 1
  %t229 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t228)
  call void @llvm.memcpy.p0.p0.i64(ptr %t229, ptr %t227, i64 %t228, i1 false)
  %t230 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  %t232 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t234 = call i32 @std_2fos_2eWriteFile(ptr %s9, ptr %s9, { i64, ptr } %t232, { i64, ptr } %t231)
  store i32 %t234, ptr %l100
  %t235 = icmp ne i32 %t234, 0
  br i1 %t235, label %bb43, label %ok.236, !prof !99
ok.236:
  br label %bb42
bb42:
  br label %bb47
bb43:
  %t237 = load i32, ptr %l100, !tbaa !23
  %t238 = ashr i32 %t237, 16
  %t240 = icmp eq i32 %t238, 1
  store i1 %t240, ptr %l102, !tbaa !21
  %t241 = load i32, ptr %l100, !tbaa !23
  %t242 = ashr i32 %t241, 16
  %t244 = icmp eq i32 %t242, 1
  br i1 %t244, label %bb44, label %bb45
bb44:
  call void @__olang_errpay_pop()
  br label %bb45
bb45:
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb47:
  store ptr %l6, ptr %l106, !tbaa !29
  %t247 = ptrtoint ptr %s0 to i64
  store i64 %t247, ptr %l107, !tbaa !24
  %t248 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t248, label %bb48, label %bb49
bb48:
  %t250 = call ptr @__olang_region_make(ptr %s0)
  %t251 = ptrtoint ptr %t250 to i64
  store i64 %t251, ptr %l107, !tbaa !24
  br label %bb49
bb49:
  %t252 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t253 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t254 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t256 = extractvalue { i64, ptr } %t252, 1
  %t257 = extractvalue { i64, ptr } %t252, 0
  %t258 = add i64 %t254, %t257
  %t259 = load i64, ptr %l107
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = call ptr @__olang_scope_alloc(ptr %t260, i64 %t258)
  call void @olang_textcopy(ptr %t261, ptr %t253, i64 %t254)
  %t262 = getelementptr i8, ptr %t261, i64 %t254
  call void @olang_textcopy(ptr %t262, ptr %t256, i64 %t257)
  %t263 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t261, 1
  %t266 = load i64, ptr %l107
  %t267 = inttoptr i64 %t266 to ptr
  %t268 = extractvalue { i64, ptr } %t264, 0
  %t269 = extractvalue { i64, ptr } %t264, 1
  %t270 = mul i64 %t268, 1
  %t271 = call ptr @__olang_scope_alloc(ptr %t267, i64 %t270)
  call void @llvm.memcpy.p0.p0.i64(ptr %t271, ptr %t269, i64 %t270, i1 false)
  %t272 = insertvalue { i64, ptr } undef, i64 %t268, 0
  %t273 = insertvalue { i64, ptr } %t272, ptr %t271, 1
  %t274 = load ptr, ptr %l106, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t274, { i64, ptr } %t273)
  br label %bb50
bb50:
  store ptr %l6, ptr %l112, !tbaa !29
  %t276 = ptrtoint ptr %s0 to i64
  store i64 %t276, ptr %l113, !tbaa !24
  %t277 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t277, label %bb51, label %bb52
bb51:
  %t279 = call ptr @__olang_region_make(ptr %s0)
  %t280 = ptrtoint ptr %t279 to i64
  store i64 %t280, ptr %l113, !tbaa !24
  br label %bb52
bb52:
  %t281 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t283 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v2, ptr %s9, { i64, ptr } %t281)
  store { i64, ptr } %t283, ptr %l116
  br label %bb53
bb53:
  %t284 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t285 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t286 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t287 = extractvalue { i64, ptr } %t286, 1
  %t288 = extractvalue { i64, ptr } %t286, 0
  %t289 = add i64 %t285, %t288
  %t290 = load i64, ptr %l113
  %t291 = inttoptr i64 %t290 to ptr
  %t292 = call ptr @__olang_scope_alloc(ptr %t291, i64 %t289)
  call void @olang_textcopy(ptr %t292, ptr %t284, i64 %t285)
  %t293 = getelementptr i8, ptr %t292, i64 %t285
  call void @olang_textcopy(ptr %t293, ptr %t287, i64 %t288)
  %t294 = insertvalue { i64, ptr } undef, i64 %t289, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t292, 1
  %t297 = load i64, ptr %l113
  %t298 = inttoptr i64 %t297 to ptr
  %t299 = extractvalue { i64, ptr } %t295, 0
  %t300 = extractvalue { i64, ptr } %t295, 1
  %t301 = mul i64 %t299, 1
  %t302 = call ptr @__olang_scope_alloc(ptr %t298, i64 %t301)
  call void @llvm.memcpy.p0.p0.i64(ptr %t302, ptr %t300, i64 %t301, i1 false)
  %t303 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t302, 1
  %t305 = load ptr, ptr %l112, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t305, { i64, ptr } %t304)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s9)
  br label %bb55
bb55:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d62, i32 0, i32 1) })
  br label %bb56
bb56:
  store ptr %l6, ptr %l120, !tbaa !29
  %t308 = ptrtoint ptr %s0 to i64
  store i64 %t308, ptr %l121, !tbaa !24
  %t309 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t309, label %bb57, label %bb58
bb57:
  %t311 = call ptr @__olang_region_make(ptr %s0)
  %t312 = ptrtoint ptr %t311 to i64
  store i64 %t312, ptr %l121, !tbaa !24
  br label %bb58
bb58:
  %t313 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t315 = extractvalue { i64, ptr } %t313, 1
  %t316 = extractvalue { i64, ptr } %t313, 0
  %t317 = load i64, ptr %l121
  %t318 = inttoptr i64 %t317 to ptr
  %t319 = call ptr @__olang_scope_alloc(ptr %t318, i64 %t316)
  call void @olang_textcopy(ptr %t319, ptr %t315, i64 %t316)
  %t320 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t321 = insertvalue { i64, ptr } %t320, ptr %t319, 1
  %t323 = load i64, ptr %l121
  %t324 = inttoptr i64 %t323 to ptr
  %t325 = extractvalue { i64, ptr } %t321, 0
  %t326 = extractvalue { i64, ptr } %t321, 1
  %t327 = mul i64 %t325, 1
  %t328 = call ptr @__olang_scope_alloc(ptr %t324, i64 %t327)
  call void @llvm.memcpy.p0.p0.i64(ptr %t328, ptr %t326, i64 %t327, i1 false)
  %t329 = insertvalue { i64, ptr } undef, i64 %t325, 0
  %t330 = insertvalue { i64, ptr } %t329, ptr %t328, 1
  %t331 = load ptr, ptr %l120, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t331, { i64, ptr } %t330)
  br label %bb59
bb59:
  store ptr %a1, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb60
bb60:
  %t335 = load i64, ptr %l16, !tbaa !24
  store i64 %t335, ptr %l127, !tbaa !24
  %t336 = load ptr, ptr %l15, !tbaa !29
  %t338 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t336)
  store i64 %t338, ptr %l129
  br label %bb61
bb61:
  %t339 = load i64, ptr %l127, !tbaa !24
  %t340 = load i64, ptr %l129, !tbaa !24
  %t341 = icmp slt i64 %t339, %t340
  %t343 = xor i1 %t341, true
  br i1 %t343, label %bb62, label %bb63
bb62:
  br label %bb70
bb63:
  br label %bb64
bb64:
  %t345 = load ptr, ptr %l15, !tbaa !29
  %t346 = load i64, ptr %l16, !tbaa !24
  %t349 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t345, i64 %t346)
  store { i64, ptr } %t349, ptr %l134
  br label %bb65
bb65:
  %t350 = load { i64, ptr }, ptr %l134, !tbaa !27
  store { i64, ptr } %t350, ptr %l17, !tbaa !27
  store ptr %l6, ptr %l135, !tbaa !29
  %t351 = ptrtoint ptr %s0 to i64
  store i64 %t351, ptr %l136, !tbaa !24
  %t352 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t352, label %bb66, label %bb67
bb66:
  %t354 = call ptr @__olang_region_make(ptr %s0)
  %t355 = ptrtoint ptr %t354 to i64
  store i64 %t355, ptr %l136, !tbaa !24
  br label %bb67
bb67:
  %t356 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t358 = extractvalue { i64, ptr } %t356, 1
  %t359 = extractvalue { i64, ptr } %t356, 0
  %t360 = load i64, ptr %l136
  %t361 = inttoptr i64 %t360 to ptr
  %t362 = call ptr @__olang_scope_alloc(ptr %t361, i64 %t359)
  call void @olang_textcopy(ptr %t362, ptr %t358, i64 %t359)
  %t363 = insertvalue { i64, ptr } undef, i64 %t359, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t362, 1
  %t366 = load i64, ptr %l136
  %t367 = inttoptr i64 %t366 to ptr
  %t368 = extractvalue { i64, ptr } %t364, 0
  %t369 = extractvalue { i64, ptr } %t364, 1
  %t370 = mul i64 %t368, 1
  %t371 = call ptr @__olang_scope_alloc(ptr %t367, i64 %t370)
  call void @llvm.memcpy.p0.p0.i64(ptr %t371, ptr %t369, i64 %t370, i1 false)
  %t372 = insertvalue { i64, ptr } undef, i64 %t368, 0
  %t373 = insertvalue { i64, ptr } %t372, ptr %t371, 1
  %t374 = load ptr, ptr %l135, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t374, { i64, ptr } %t373)
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t376 = load i64, ptr %l16, !tbaa !24
  %t378 = add i64 %t376, 1
  store i64 %t378, ptr %l16, !tbaa !24
  br label %bb60
bb70:
  store ptr %a4, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb71
bb71:
  %t382 = load i64, ptr %l19, !tbaa !24
  store i64 %t382, ptr %l144, !tbaa !24
  %t383 = load ptr, ptr %l18, !tbaa !29
  %t385 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t383)
  store i64 %t385, ptr %l146
  br label %bb72
bb72:
  %t386 = load i64, ptr %l144, !tbaa !24
  %t387 = load i64, ptr %l146, !tbaa !24
  %t388 = icmp slt i64 %t386, %t387
  %t390 = xor i1 %t388, true
  br i1 %t390, label %bb73, label %bb74
bb73:
  br label %bb81
bb74:
  br label %bb75
bb75:
  %t392 = load ptr, ptr %l18, !tbaa !29
  %t393 = load i64, ptr %l19, !tbaa !24
  %t396 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t392, i64 %t393)
  store { i64, ptr } %t396, ptr %l151
  br label %bb76
bb76:
  %t397 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t397, ptr %l20, !tbaa !27
  store ptr %l6, ptr %l152, !tbaa !29
  %t398 = ptrtoint ptr %s0 to i64
  store i64 %t398, ptr %l153, !tbaa !24
  %t399 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t399, label %bb77, label %bb78
bb77:
  %t401 = call ptr @__olang_region_make(ptr %s0)
  %t402 = ptrtoint ptr %t401 to i64
  store i64 %t402, ptr %l153, !tbaa !24
  br label %bb78
bb78:
  %t403 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t405 = extractvalue { i64, ptr } %t403, 1
  %t406 = extractvalue { i64, ptr } %t403, 0
  %t407 = load i64, ptr %l153
  %t408 = inttoptr i64 %t407 to ptr
  %t409 = call ptr @__olang_scope_alloc(ptr %t408, i64 %t406)
  call void @olang_textcopy(ptr %t409, ptr %t405, i64 %t406)
  %t410 = insertvalue { i64, ptr } undef, i64 %t406, 0
  %t411 = insertvalue { i64, ptr } %t410, ptr %t409, 1
  %t413 = load i64, ptr %l153
  %t414 = inttoptr i64 %t413 to ptr
  %t415 = extractvalue { i64, ptr } %t411, 0
  %t416 = extractvalue { i64, ptr } %t411, 1
  %t417 = mul i64 %t415, 1
  %t418 = call ptr @__olang_scope_alloc(ptr %t414, i64 %t417)
  call void @llvm.memcpy.p0.p0.i64(ptr %t418, ptr %t416, i64 %t417, i1 false)
  %t419 = insertvalue { i64, ptr } undef, i64 %t415, 0
  %t420 = insertvalue { i64, ptr } %t419, ptr %t418, 1
  %t421 = load ptr, ptr %l152, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t421, { i64, ptr } %t420)
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t423 = load i64, ptr %l19, !tbaa !24
  %t425 = add i64 %t423, 1
  store i64 %t425, ptr %l19, !tbaa !24
  br label %bb71
bb81:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d63, i32 0, i32 1) })
  br label %bb82
bb82:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d64, i32 0, i32 1) })
  br label %bb83
bb83:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d65, i32 0, i32 1) })
  br label %bb84
bb84:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t432 = getelementptr %"compiler/build:Config", ptr %t430, i32 0, i32 12
  %t433 = load i1, ptr %t432, !tbaa !21
  br i1 %t433, label %bb85, label %bb86
bb85:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d66, i32 0, i32 1) })
  br label %bb87
bb86:
  br label %bb95
bb87:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t438 = getelementptr %"compiler/build:Config", ptr %t436, i32 0, i32 5
  %t439 = load i1, ptr %t438, !tbaa !21
  %t441 = xor i1 %t439, true
  br i1 %t441, label %bb88, label %bb89
bb88:
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t445 = getelementptr %"compiler/build:Config", ptr %t443, i32 0, i32 4
  %t446 = load i1, ptr %t445, !tbaa !21
  %t448 = xor i1 %t446, true
  store i1 %t448, ptr %l169, !tbaa !21
  br label %bb90
bb89:
  store i1 false, ptr %l169, !tbaa !21
  br label %bb90
bb90:
  %t450 = load i1, ptr %l169, !tbaa !21
  br i1 %t450, label %bb91, label %bb92
bb91:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d67, i32 0, i32 1) })
  br label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb94
bb94:
  br label %bb95
bb95:
  br i1 %a3, label %bb96, label %bb97
bb96:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d68, i32 0, i32 1) })
  br label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb99
bb99:
  %t455 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t455, ptr %l176
  br label %bb100
bb100:
  %t456 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l176
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t456, ptr %l21
  store ptr %l6, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb101
bb101:
  %t458 = load i64, ptr %l23, !tbaa !24
  store i64 %t458, ptr %l178, !tbaa !24
  %t459 = load ptr, ptr %l22, !tbaa !29
  %t461 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t459)
  store i64 %t461, ptr %l180
  br label %bb102
bb102:
  %t462 = load i64, ptr %l178, !tbaa !24
  %t463 = load i64, ptr %l180, !tbaa !24
  %t464 = icmp slt i64 %t462, %t463
  %t466 = xor i1 %t464, true
  br i1 %t466, label %bb103, label %bb104
bb103:
  br label %bb109
bb104:
  br label %bb105
bb105:
  %t468 = load ptr, ptr %l22, !tbaa !29
  %t469 = load i64, ptr %l23, !tbaa !24
  %t472 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t468, i64 %t469)
  store { i64, ptr } %t472, ptr %l185
  br label %bb106
bb106:
  %t473 = load { i64, ptr }, ptr %l185, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l21, { i64, ptr } %t473)
  br label %bb107
bb107:
  br label %bb108
bb108:
  %t477 = load i64, ptr %l23, !tbaa !24
  %t479 = add i64 %t477, 1
  store i64 %t479, ptr %l23, !tbaa !24
  br label %bb101
bb109:
  store ptr %l21, ptr %l190, !tbaa !29
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t483 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eclangVersion(ptr %v0, ptr %v0, ptr %t481)
  store { i64, ptr } %t483, ptr %l192
  br label %bb110
bb110:
  %t484 = load ptr, ptr %l190, !tbaa !29
  %t485 = load { i64, ptr }, ptr %l192, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %t484, { i64, ptr } %t485)
  br label %bb111
bb111:
  %t487 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s0, ptr %s0, ptr %l21)
  store { i64, ptr } %t487, ptr %l194
  br label %bb112
bb112:
  %t488 = load { i64, ptr }, ptr %l194, !tbaa !27
  store { i64, ptr } %t488, ptr %l25, !tbaa !27
  %t489 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t491 = extractvalue { i64, ptr } %t489, 1
  %t492 = extractvalue { i64, ptr } %t489, 0
  %t493 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t494 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t495 = add i64 %t492, %t494
  %t496 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t495)
  call void @olang_textcopy(ptr %t496, ptr %t491, i64 %t492)
  %t497 = getelementptr i8, ptr %t496, i64 %t492
  call void @olang_textcopy(ptr %t497, ptr %t493, i64 %t494)
  %t498 = insertvalue { i64, ptr } undef, i64 %t495, 0
  %t499 = insertvalue { i64, ptr } %t498, ptr %t496, 1
  store { i64, ptr } %t499, ptr %l26, !tbaa !27
  %t501 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t502 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t503 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t507 = call i1 @compiler_2fbuild_2elinkCurrent(ptr %v2, ptr %s0, ptr %s0, { i64, ptr } %t501, { i64, ptr } %t502, { i64, ptr } %t503)
  store i1 %t507, ptr %l200
  br label %bb113
bb113:
  %t508 = load i1, ptr %l200, !tbaa !21
  br i1 %t508, label %bb114, label %bb115
bb114:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb115:
  br label %bb116
bb116:
  %t509 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t511 = call i32 @std_2fos_2eRemove(ptr %s0, { i64, ptr } %t509)
  store i32 %t511, ptr %l202
  %t512 = icmp ne i32 %t511, 0
  br i1 %t512, label %bb118, label %ok.513, !prof !99
ok.513:
  br label %bb117
bb117:
  br label %bb122
bb118:
  %t514 = load i32, ptr %l202, !tbaa !23
  %t515 = ashr i32 %t514, 16
  %t517 = icmp eq i32 %t515, 1
  store i1 %t517, ptr %l204, !tbaa !21
  %t518 = load i32, ptr %l202, !tbaa !23
  %t519 = ashr i32 %t518, 16
  %t521 = icmp eq i32 %t519, 1
  br i1 %t521, label %bb119, label %bb120
bb119:
  call void @__olang_errpay_pop()
  br label %bb120
bb120:
  br label %bb121
bb121:
  br label %bb122
bb122:
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t525 = getelementptr %"compiler/build:Config", ptr %t523, i32 0, i32 1
  %t526 = load { i64, ptr }, ptr %t525, !tbaa !27
  %t528 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t526, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store i1 %t528, ptr %l209
  br label %bb123
bb123:
  %t529 = load i1, ptr %l209, !tbaa !21
  br i1 %t529, label %bb124, label %bb125
bb124:
  call void @__olang_scope_close(ptr %s0)
  store i32 65537, ptr %rv
  br label %ret
bb125:
  br label %bb126
bb126:
  %t532 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t532, ptr %l213
  br label %bb127
bb127:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l214, !tbaa !27
  %t533 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t534 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t535 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t533, { i64, ptr } %t534, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  %t536 = extractvalue { i32, %"std/os:Output" } %t535, 1
  %t537 = extractvalue { i32, %"std/os:Output" } %t535, 0
  store i32 %t537, ptr %l216
  %t538 = icmp ne i32 %t537, 0
  br i1 %t538, label %bb129, label %ok.539, !prof !99
ok.539:
  store %"std/os:Output" %t536, ptr %l215
  br label %bb128
bb128:
  %t540 = load %"std/os:Output", ptr %l215
  store %"std/os:Output" %t540, ptr %l211
  br label %bb133
bb129:
  %t541 = load i32, ptr %l216, !tbaa !23
  %t542 = ashr i32 %t541, 16
  %t544 = icmp eq i32 %t542, 1
  store i1 %t544, ptr %l218, !tbaa !21
  %t545 = load i32, ptr %l216, !tbaa !23
  %t546 = ashr i32 %t545, 16
  %t548 = icmp eq i32 %t546, 1
  br i1 %t548, label %bb130, label %bb131
bb130:
  call void @__olang_errpay_pop()
  br label %bb131
bb131:
  br label %bb132
bb132:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb133:
  %t551 = load %"std/os:Output", ptr %l211
  store %"std/os:Output" %t551, ptr %l27
  %t552 = getelementptr %"std/os:Output", ptr %l27, i32 0, i32 0
  %t553 = load i32, ptr %t552, !tbaa !23
  %t555 = icmp ne i32 %t553, 0
  br i1 %t555, label %bb134, label %bb135
bb134:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb135:
  br label %bb136
bb136:
  %t558 = load ptr, ptr %l0, !tbaa !29
  store ptr %t558, ptr %l225, !tbaa !29
  %t559 = load ptr, ptr %l225, !tbaa !29
  %t560 = getelementptr %"compiler/build:Config", ptr %t559, i32 0, i32 26
  %t561 = load i64, ptr %t560, !tbaa !24
  %t563 = add i64 %t561, 1
  %t565 = load ptr, ptr %l225, !tbaa !29
  %t566 = getelementptr %"compiler/build:Config", ptr %t565, i32 0, i32 26
  store i64 %t563, ptr %t566, !tbaa !24
  %t567 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t569 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v2, { i64, ptr } %t567)
  %t570 = extractvalue { i32, %"std/os:FileInfo" } %t569, 1
  %t571 = extractvalue { i32, %"std/os:FileInfo" } %t569, 0
  store i32 %t571, ptr %l231
  %t572 = icmp ne i32 %t571, 0
  br i1 %t572, label %bb138, label %ok.573, !prof !99
ok.573:
  store %"std/os:FileInfo" %t570, ptr %l230
  br label %bb137
bb137:
  %t574 = load %"std/os:FileInfo", ptr %l230
  store %"std/os:FileInfo" %t574, ptr %l228
  br label %bb142
bb138:
  %t575 = load i32, ptr %l231, !tbaa !23
  %t576 = ashr i32 %t575, 16
  %t578 = icmp eq i32 %t576, 1
  store i1 %t578, ptr %l233, !tbaa !21
  %t579 = load i32, ptr %l231, !tbaa !23
  %t580 = ashr i32 %t579, 16
  %t582 = icmp eq i32 %t580, 1
  br i1 %t582, label %bb139, label %bb140
bb139:
  call void @__olang_errpay_pop()
  br label %bb140
bb140:
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb142:
  %t584 = load %"std/os:FileInfo", ptr %l228
  store %"std/os:FileInfo" %t584, ptr %l28
  %t585 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t586 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t587 = getelementptr %"std/os:FileInfo", ptr %l28, i32 0, i32 1
  %t588 = load i64, ptr %t587, !tbaa !24
  %t589 = getelementptr %"std/os:FileInfo", ptr %l28, i32 0, i32 2
  %t590 = load i64, ptr %t589, !tbaa !24
  %t592 = extractvalue { i64, ptr } %t586, 1
  %t593 = extractvalue { i64, ptr } %t586, 0
  %t594 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t595 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t596 = add i64 %t593, %t595
  %t598 = call i64 @__olang_fmt_i64(ptr null, i64 %t588)
  %t599 = add i64 %t596, %t598
  %t600 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t601 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t602 = add i64 %t599, %t601
  %t604 = call i64 @__olang_fmt_i64(ptr null, i64 %t590)
  %t605 = add i64 %t602, %t604
  %t606 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t607 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t608 = add i64 %t605, %t607
  %t609 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t608)
  call void @olang_textcopy(ptr %t609, ptr %t592, i64 %t593)
  %t610 = getelementptr i8, ptr %t609, i64 %t593
  call void @olang_textcopy(ptr %t610, ptr %t594, i64 %t595)
  %t611 = getelementptr i8, ptr %t610, i64 %t595
  %t612 = call i64 @__olang_fmt_i64(ptr %t611, i64 %t588)
  %t613 = getelementptr i8, ptr %t611, i64 %t598
  call void @olang_textcopy(ptr %t613, ptr %t600, i64 %t601)
  %t614 = getelementptr i8, ptr %t613, i64 %t601
  %t615 = call i64 @__olang_fmt_i64(ptr %t614, i64 %t590)
  %t616 = getelementptr i8, ptr %t614, i64 %t604
  call void @olang_textcopy(ptr %t616, ptr %t606, i64 %t607)
  %t617 = insertvalue { i64, ptr } undef, i64 %t608, 0
  %t618 = insertvalue { i64, ptr } %t617, ptr %t609, 1
  %t621 = extractvalue { i64, ptr } %t618, 0
  %t622 = extractvalue { i64, ptr } %t618, 1
  %t623 = mul i64 %t621, 1
  %t624 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t623)
  call void @llvm.memcpy.p0.p0.i64(ptr %t624, ptr %t622, i64 %t623, i1 false)
  %t625 = insertvalue { i64, ptr } undef, i64 %t621, 0
  %t626 = insertvalue { i64, ptr } %t625, ptr %t624, 1
  %t629 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t585, { i64, ptr } %t626)
  store i32 %t629, ptr %l243
  %t630 = icmp ne i32 %t629, 0
  br i1 %t630, label %bb144, label %ok.631, !prof !99
ok.631:
  br label %bb143
bb143:
  br label %bb148
bb144:
  %t632 = load i32, ptr %l243, !tbaa !23
  %t633 = ashr i32 %t632, 16
  %t635 = icmp eq i32 %t633, 1
  store i1 %t635, ptr %l245, !tbaa !21
  %t636 = load i32, ptr %l243, !tbaa !23
  %t637 = ashr i32 %t636, 16
  %t639 = icmp eq i32 %t637, 1
  br i1 %t639, label %bb145, label %bb146
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
  %l27 = alloca ptr
  %l28 = alloca i64
  %l39 = alloca i1
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
  store ptr %t93, ptr %l27, !tbaa !29
  %t94 = ptrtoint ptr %v1 to i64
  store i64 %t94, ptr %l28, !tbaa !24
  %t95 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t95, label %bb19, label %bb20
bb18:
  br label %bb22
bb19:
  %t97 = call ptr @__olang_region_make(ptr %v1)
  %t98 = ptrtoint ptr %t97 to i64
  store i64 %t98, ptr %l28, !tbaa !24
  br label %bb20
bb20:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/build:Config", ptr %t99, i32 0, i32 2
  %t102 = getelementptr %"compiler/target:Target", ptr %t101, i32 0, i32 6
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 1
  %t106 = extractvalue { i64, ptr } %t103, 0
  %t107 = load i64, ptr %l28
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = call ptr @__olang_scope_alloc(ptr %t108, i64 %t106)
  call void @olang_textcopy(ptr %t109, ptr %t105, i64 %t106)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t113 = load i64, ptr %l28
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = extractvalue { i64, ptr } %t111, 0
  %t116 = extractvalue { i64, ptr } %t111, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %t114, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  %t121 = load ptr, ptr %l27, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t121, { i64, ptr } %t120)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/build:Config", ptr %t123, i32 0, i32 9
  %t126 = load i1, ptr %t125, !tbaa !21
  br i1 %t126, label %bb23, label %bb24
bb23:
  %t128 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t128, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d77, i32 0, i32 1) })
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/build:Config", ptr %t130, i32 0, i32 10
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  %t135 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t133, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store i1 %t135, ptr %l39
  br label %bb27
bb27:
  %t136 = load i1, ptr %l39, !tbaa !21
  %t137 = xor i1 %t136, true
  br i1 %t137, label %bb28, label %bb29
bb28:
  %t139 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t139, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d79, i32 0, i32 1) })
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb31
bb31:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/build:Config", ptr %t141, i32 0, i32 4
  %t144 = load i1, ptr %t143, !tbaa !21
  br i1 %t144, label %bb32, label %bb33
bb32:
  %t146 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t146, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d80, i32 0, i32 1) })
  br label %bb34
bb33:
  br label %bb40
bb34:
  %t148 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t148, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) })
  br label %bb35
bb35:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/build:Config", ptr %t150, i32 0, i32 6
  %t153 = load i1, ptr %t152, !tbaa !21
  br i1 %t153, label %bb36, label %bb37
bb36:
  %t155 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t155, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d82, i32 0, i32 1) })
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  %t157 = load ptr, ptr %lp1
  %t158 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t157
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %rv
  br label %ret
bb40:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/build:Config", ptr %t160, i32 0, i32 6
  %t163 = load i1, ptr %t162, !tbaa !21
  br i1 %t163, label %bb41, label %bb42
bb41:
  %t165 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t165, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d83, i32 0, i32 1) })
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t167 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t167, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d84, i32 0, i32 1) })
  br label %bb44
bb44:
  %t169 = load ptr, ptr %lp1
  %t170 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t169
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %rv
  br label %ret
bb45:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/build:Config", ptr %t172, i32 0, i32 5
  %t175 = load i1, ptr %t174, !tbaa !21
  br i1 %t175, label %bb46, label %bb47
bb46:
  %t177 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t177, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d85, i32 0, i32 1) })
  br label %bb48
bb47:
  br label %bb49
bb48:
  %t179 = load ptr, ptr %lp1
  %t180 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t179
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %rv
  br label %ret
bb49:
  %t182 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t182, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d86, i32 0, i32 1) })
  br label %bb50
bb50:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/build:Config", ptr %t184, i32 0, i32 27
  %t187 = load i1, ptr %t186, !tbaa !21
  br i1 %t187, label %bb51, label %bb52
bb51:
  %t189 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t189, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d87, i32 0, i32 1) })
  br label %bb53
bb52:
  %t191 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t191, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d88, i32 0, i32 1) })
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  %t193 = load ptr, ptr %lp1
  %t194 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t193
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t194, ptr %rv
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
  %l7 = alloca %"compiler/build:compiles"
  %lp8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/build:Unit"
  %l13 = alloca i64
  %l14 = alloca %"compiler/build:compiles"
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
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
  %t67 = alloca %"compiler/build:compiles", align 8
  %t305 = alloca %"compiler/build:compiles", align 8
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
  call void @compiler_2fbuild_3acompiles_2ector(ptr %t67, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l52, ptr %t67, i64 288, i1 false)
  br label %bb18
bb18:
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l52, i64 288, i1 false)
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l53
  br label %bb19
bb19:
  %t69 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t69, ptr %lp8
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  %t71 = load ptr, ptr %lp8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %t71
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/build:Program", ptr %t72, i32 0, i32 0
  store ptr %t74, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb20
bb20:
  %t76 = load i64, ptr %l10, !tbaa !24
  store i64 %t76, ptr %l56, !tbaa !24
  %t77 = load ptr, ptr %l9, !tbaa !29
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %t77)
  store i64 %t79, ptr %l58
  br label %bb21
bb21:
  %t80 = load i64, ptr %l56, !tbaa !24
  %t81 = load i64, ptr %l58, !tbaa !24
  %t82 = icmp slt i64 %t80, %t81
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb22, label %bb23
bb22:
  br label %bb34
bb23:
  br label %bb24
bb24:
  %t86 = load i64, ptr %l10, !tbaa !24
  store i64 %t86, ptr %l11, !tbaa !24
  %t88 = load ptr, ptr %l9, !tbaa !29
  %t89 = load i64, ptr %l10, !tbaa !24
  %t92 = call %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %v1, ptr %t88, i64 %t89)
  store %"compiler/build:Unit" %t92, ptr %l64
  br label %bb25
bb25:
  %t93 = load %"compiler/build:Unit", ptr %l64
  store %"compiler/build:Unit" %t93, ptr %l12
  %t94 = load ptr, ptr %lp8
  store ptr %t94, ptr %l65, !tbaa !29
  %t95 = ptrtoint ptr %v3 to i64
  store i64 %t95, ptr %l66, !tbaa !24
  %t96 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t96, label %bb26, label %bb27
bb26:
  %t98 = call ptr @__olang_region_make(ptr %v3)
  %t99 = ptrtoint ptr %t98 to i64
  store i64 %t99, ptr %l66, !tbaa !24
  br label %bb27
bb27:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l69, !tbaa !29
  store ptr %l7, ptr %l70, !tbaa !29
  %t101 = getelementptr %"compiler/build:Unit", ptr %l12, i32 0, i32 0
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t104 = call { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v1, ptr %v3, { i64, ptr } %t102)
  store { i64, ptr } %t104, ptr %l72
  br label %bb28
bb28:
  %t105 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t112 = getelementptr %"compiler/build:Unit", ptr %l12, i32 0, i32 1
  %t113 = load i32, ptr %t112, !range !{i32 0, i32 5}
  %t114 = getelementptr %"compiler/build:Unit", ptr %l12, i32 0, i32 2
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t116 = load ptr, ptr %l2, !tbaa !29
  %t117 = getelementptr %"compiler/build:Unit", ptr %l12, i32 0, i32 3
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l11, !tbaa !24
  %t120 = load ptr, ptr %l69, !tbaa !29
  %t121 = load ptr, ptr %l70, !tbaa !29
  %t128 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %s0, ptr %v3, ptr %v1, ptr %v2, ptr %v1, ptr %v3, ptr %t120, ptr %t121, { i64, ptr } %t111, i32 %t113, { i64, ptr } %t115, ptr %t116, { i64, ptr } %t118, i64 %t119)
  %t129 = extractvalue { i32, { i64, ptr } } %t128, 1
  %t130 = extractvalue { i32, { i64, ptr } } %t128, 0
  store i32 %t130, ptr %l80
  %t131 = icmp ne i32 %t130, 0
  br i1 %t131, label %bb30, label %ok.132, !prof !99
ok.132:
  store { i64, ptr } %t129, ptr %l79
  br label %bb29
bb29:
  %t133 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t133, ptr %l68, !tbaa !27
  br label %bb31
bb30:
  %t134 = load i32, ptr %l80, !tbaa !23
  %t135 = lshr i32 %t134, 16
  %t136 = and i32 %t134, 65535
  %t137 = icmp eq i32 %t135, 1
  %t138 = select i1 %t137, i32 1, i32 0
  %t139 = icmp eq i32 %t134, 0
  %t140 = shl i32 %t138, 16
  %t141 = or i32 %t140, %t136
  %t142 = select i1 %t139, i32 0, i32 %t141
  call void @__olang_scope_close(ptr %s0)
  %t144 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t142, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t144, ptr %rv
  br label %ret
bb31:
  %t145 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t146 = load i64, ptr %l66
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = extractvalue { i64, ptr } %t145, 0
  %t149 = extractvalue { i64, ptr } %t145, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %t147, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t154 = load ptr, ptr %l65, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t154, { i64, ptr } %t153)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t156 = load i64, ptr %l10, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l10, !tbaa !24
  br label %bb20
bb34:
  %t160 = load ptr, ptr %l1, !tbaa !29
  %t162 = getelementptr %"compiler/build:Program", ptr %t160, i32 0, i32 0
  %t164 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %t162)
  store i64 %t164, ptr %l87
  br label %bb35
bb35:
  %t165 = load i64, ptr %l87, !tbaa !24
  store i64 %t165, ptr %l13, !tbaa !24
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr %"compiler/build:Program", ptr %t166, i32 0, i32 1
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  %t171 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t169, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store i1 %t171, ptr %l90
  br label %bb36
bb36:
  %t172 = load i1, ptr %l90, !tbaa !21
  %t173 = xor i1 %t172, true
  br i1 %t173, label %bb37, label %bb38
bb37:
  %t175 = load ptr, ptr %lp8
  store ptr %t175, ptr %l92, !tbaa !29
  %t176 = ptrtoint ptr %v3 to i64
  store i64 %t176, ptr %l93, !tbaa !24
  %t177 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t177, label %bb39, label %bb40
bb38:
  br label %bb45
bb39:
  %t179 = call ptr @__olang_region_make(ptr %v3)
  %t180 = ptrtoint ptr %t179 to i64
  store i64 %t180, ptr %l93, !tbaa !24
  br label %bb40
bb40:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load ptr, ptr %l1, !tbaa !29
  %t184 = getelementptr %"compiler/build:Program", ptr %t182, i32 0, i32 1
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !27
  %t186 = load ptr, ptr %l2, !tbaa !29
  %t187 = load i64, ptr %l13, !tbaa !24
  %t194 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %s0, ptr %v3, ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t181, ptr %l7, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d93, i32 0, i32 1) }, i32 0, { i64, ptr } %t185, ptr %t186, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d94, i32 0, i32 1) }, i64 %t187)
  %t195 = extractvalue { i32, { i64, ptr } } %t194, 1
  %t196 = extractvalue { i32, { i64, ptr } } %t194, 0
  store i32 %t196, ptr %l104
  %t197 = icmp ne i32 %t196, 0
  br i1 %t197, label %bb42, label %ok.198, !prof !99
ok.198:
  store { i64, ptr } %t195, ptr %l103
  br label %bb41
bb41:
  %t199 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t199, ptr %l95, !tbaa !27
  br label %bb43
bb42:
  %t200 = load i32, ptr %l104, !tbaa !23
  %t201 = lshr i32 %t200, 16
  %t202 = and i32 %t200, 65535
  %t203 = icmp eq i32 %t201, 1
  %t204 = select i1 %t203, i32 1, i32 0
  %t205 = icmp eq i32 %t200, 0
  %t206 = shl i32 %t204, 16
  %t207 = or i32 %t206, %t202
  %t208 = select i1 %t205, i32 0, i32 %t207
  call void @__olang_scope_close(ptr %s0)
  %t210 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t208, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t210, ptr %rv
  br label %ret
bb43:
  %t211 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t212 = load i64, ptr %l93
  %t213 = inttoptr i64 %t212 to ptr
  %t214 = extractvalue { i64, ptr } %t211, 0
  %t215 = extractvalue { i64, ptr } %t211, 1
  %t216 = mul i64 %t214, 1
  %t217 = call ptr @__olang_scope_alloc(ptr %t213, i64 %t216)
  call void @llvm.memcpy.p0.p0.i64(ptr %t217, ptr %t215, i64 %t216, i1 false)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t217, 1
  %t220 = load ptr, ptr %l92, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t220, { i64, ptr } %t219)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t222 = load ptr, ptr %l1, !tbaa !29
  %t224 = getelementptr %"compiler/build:Program", ptr %t222, i32 0, i32 2
  %t225 = load { i64, ptr }, ptr %t224, !tbaa !27
  %t227 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t225, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d95, i32 0, i32 1) })
  store i1 %t227, ptr %l109
  br label %bb46
bb46:
  %t228 = load i1, ptr %l109, !tbaa !21
  %t229 = xor i1 %t228, true
  br i1 %t229, label %bb47, label %bb48
bb47:
  %t231 = load ptr, ptr %lp8
  store ptr %t231, ptr %l111, !tbaa !29
  %t232 = ptrtoint ptr %v3 to i64
  store i64 %t232, ptr %l112, !tbaa !24
  %t233 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t233, label %bb49, label %bb50
bb48:
  br label %bb55
bb49:
  %t235 = call ptr @__olang_region_make(ptr %v3)
  %t236 = ptrtoint ptr %t235 to i64
  store i64 %t236, ptr %l112, !tbaa !24
  br label %bb50
bb50:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load ptr, ptr %l1, !tbaa !29
  %t240 = getelementptr %"compiler/build:Program", ptr %t238, i32 0, i32 2
  %t241 = load { i64, ptr }, ptr %t240, !tbaa !27
  %t242 = load ptr, ptr %l2, !tbaa !29
  %t243 = load i64, ptr %l13, !tbaa !24
  %t245 = add i64 %t243, 1
  %t252 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %s0, ptr %v3, ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t237, ptr %l7, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d96, i32 0, i32 1) }, i32 0, { i64, ptr } %t241, ptr %t242, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d97, i32 0, i32 1) }, i64 %t245)
  %t253 = extractvalue { i32, { i64, ptr } } %t252, 1
  %t254 = extractvalue { i32, { i64, ptr } } %t252, 0
  store i32 %t254, ptr %l124
  %t255 = icmp ne i32 %t254, 0
  br i1 %t255, label %bb52, label %ok.256, !prof !99
ok.256:
  store { i64, ptr } %t253, ptr %l123
  br label %bb51
bb51:
  %t257 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t257, ptr %l114, !tbaa !27
  br label %bb53
bb52:
  %t258 = load i32, ptr %l124, !tbaa !23
  %t259 = lshr i32 %t258, 16
  %t260 = and i32 %t258, 65535
  %t261 = icmp eq i32 %t259, 1
  %t262 = select i1 %t261, i32 1, i32 0
  %t263 = icmp eq i32 %t258, 0
  %t264 = shl i32 %t262, 16
  %t265 = or i32 %t264, %t260
  %t266 = select i1 %t263, i32 0, i32 %t265
  call void @__olang_scope_close(ptr %s0)
  %t268 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t266, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t268, ptr %rv
  br label %ret
bb53:
  %t269 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t270 = load i64, ptr %l112
  %t271 = inttoptr i64 %t270 to ptr
  %t272 = extractvalue { i64, ptr } %t269, 0
  %t273 = extractvalue { i64, ptr } %t269, 1
  %t274 = mul i64 %t272, 1
  %t275 = call ptr @__olang_scope_alloc(ptr %t271, i64 %t274)
  call void @llvm.memcpy.p0.p0.i64(ptr %t275, ptr %t273, i64 %t274, i1 false)
  %t276 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t277 = insertvalue { i64, ptr } %t276, ptr %t275, 1
  %t278 = load ptr, ptr %l111, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t278, { i64, ptr } %t277)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load ptr, ptr %l2, !tbaa !29
  %t285 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ecompile(ptr %v0, ptr %s0, ptr %v2, ptr %t280, ptr %l7, ptr %t281)
  store i32 %t285, ptr %l130
  %t286 = icmp ne i32 %t285, 0
  br i1 %t286, label %bb57, label %ok.287, !prof !99
ok.287:
  br label %bb56
bb56:
  br label %bb58
bb57:
  %t288 = load i32, ptr %l130, !tbaa !23
  %t289 = lshr i32 %t288, 16
  %t290 = and i32 %t288, 65535
  %t291 = icmp eq i32 %t289, 1
  %t292 = select i1 %t291, i32 1, i32 0
  %t293 = icmp eq i32 %t288, 0
  %t294 = shl i32 %t292, 16
  %t295 = or i32 %t294, %t290
  %t296 = select i1 %t293, i32 0, i32 %t295
  call void @__olang_scope_close(ptr %s0)
  %t298 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t296, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t298, ptr %rv
  br label %ret
bb58:
  %t299 = getelementptr %"compiler/build:compiles", ptr %l7, i32 0, i32 8
  %t301 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t299)
  store i64 %t301, ptr %l133
  br label %bb59
bb59:
  %t302 = load i64, ptr %l133, !tbaa !24
  %t303 = icmp sgt i64 %t302, 0
  br i1 %t303, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s9
  call void @compiler_2fbuild_3acompiles_2ector(ptr %t305, ptr %s9)
  call void @llvm.memmove.p0.p0.i64(ptr %l135, ptr %t305, i64 288, i1 false)
  br label %bb62
bb61:
  br label %bb116
bb62:
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %l135, i64 288, i1 false)
  %t306 = getelementptr %"compiler/build:compiles", ptr %l7, i32 0, i32 8
  store ptr %t306, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb63
bb63:
  store %olang.scope zeroinitializer, ptr %s11
  %t308 = load i64, ptr %l16, !tbaa !24
  store i64 %t308, ptr %l137, !tbaa !24
  %t309 = load ptr, ptr %l15, !tbaa !29
  %t311 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t309)
  store i64 %t311, ptr %l139
  br label %bb64
bb64:
  %t312 = load i64, ptr %l137, !tbaa !24
  %t313 = load i64, ptr %l139, !tbaa !24
  %t314 = icmp slt i64 %t312, %t313
  %t316 = xor i1 %t314, true
  br i1 %t316, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s11)
  br label %bb112
bb66:
  br label %bb67
bb67:
  %t318 = load ptr, ptr %l15, !tbaa !29
  %t319 = load i64, ptr %l16, !tbaa !24
  %t322 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t318, i64 %t319)
  store i64 %t322, ptr %l144
  br label %bb68
bb68:
  %t323 = load i64, ptr %l144, !tbaa !24
  store i64 %t323, ptr %l17, !tbaa !24
  %t324 = load i64, ptr %l17, !tbaa !24
  %t325 = load i64, ptr %l13, !tbaa !24
  %t327 = add i64 %t325, 1
  %t330 = icmp slt i64 %t324, %t327
  br i1 %t330, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l149, !tbaa !21
  br label %bb72
bb70:
  %t332 = load ptr, ptr %l1, !tbaa !29
  %t334 = getelementptr %"compiler/build:Program", ptr %t332, i32 0, i32 1
  %t335 = load { i64, ptr }, ptr %t334, !tbaa !27
  %t337 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s11, { i64, ptr } %t335, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) })
  store i1 %t337, ptr %l152
  br label %bb71
bb71:
  %t338 = load i1, ptr %l152, !tbaa !21
  %t339 = xor i1 %t338, true
  store i1 %t339, ptr %l149, !tbaa !21
  br label %bb72
bb72:
  %t341 = load i1, ptr %l149, !tbaa !21
  br i1 %t341, label %bb73, label %bb74
bb73:
  %t342 = load ptr, ptr %lp8
  %t343 = load i64, ptr %l17, !tbaa !24
  %t346 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %s11, ptr %t342, i64 %t343)
  store { i64, ptr } %t346, ptr %l157
  br label %bb75
bb74:
  %t347 = load ptr, ptr %lp8
  %t348 = load i64, ptr %l13, !tbaa !24
  %t351 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %s11, ptr %t347, i64 %t348)
  store { i64, ptr } %t351, ptr %l160
  br label %bb76
bb75:
  %t352 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t352, ptr %l154, !tbaa !27
  br label %bb77
bb76:
  %t353 = load { i64, ptr }, ptr %l160, !tbaa !27
  store { i64, ptr } %t353, ptr %l154, !tbaa !27
  br label %bb77
bb77:
  %t354 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t354, ptr %l18, !tbaa !27
  br label %bb78
bb78:
  store %olang.scope zeroinitializer, ptr %s12
  %t355 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t357 = call i1 @std_2fos_2eExists(ptr %s11, { i64, ptr } %t355)
  store i1 %t357, ptr %l162
  br label %bb79
bb79:
  %t358 = load i1, ptr %l162, !tbaa !21
  %t359 = xor i1 %t358, true
  br i1 %t359, label %bb80, label %bb81
bb80:
  %t361 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t363 = extractvalue { i64, ptr } %t361, 1
  %t364 = extractvalue { i64, ptr } %t361, 0
  %t365 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t366 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t367 = add i64 %t364, %t366
  %t368 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t367)
  call void @olang_textcopy(ptr %t368, ptr %t363, i64 %t364)
  %t369 = getelementptr i8, ptr %t368, i64 %t364
  call void @olang_textcopy(ptr %t369, ptr %t365, i64 %t366)
  %t370 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t371 = insertvalue { i64, ptr } %t370, ptr %t368, 1
  %t373 = extractvalue { i64, ptr } %t371, 0
  %t374 = extractvalue { i64, ptr } %t371, 1
  %t375 = mul i64 %t373, 1
  %t376 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t375)
  call void @llvm.memcpy.p0.p0.i64(ptr %t376, ptr %t374, i64 %t375, i1 false)
  %t377 = insertvalue { i64, ptr } undef, i64 %t373, 0
  %t378 = insertvalue { i64, ptr } %t377, ptr %t376, 1
  %t380 = call i1 @compiler_2fbuild_2eholderAlive(ptr %s12, { i64, ptr } %t378)
  store i1 %t380, ptr %l168
  br label %bb82
bb81:
  store i1 false, ptr %l164, !tbaa !21
  br label %bb83
bb82:
  %t381 = load i1, ptr %l168, !tbaa !21
  store i1 %t381, ptr %l164, !tbaa !21
  br label %bb83
bb83:
  %t382 = load i1, ptr %l164, !tbaa !21
  %t383 = xor i1 %t382, true
  br i1 %t383, label %bb84, label %bb85
bb84:
  call void @__olang_scope_close(ptr %s12)
  br label %bb89
bb85:
  br label %bb86
bb86:
  %t385 = call i32 @usleep(i32 20000)
  store i32 %t385, ptr %l170
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s12)
  br label %bb88
bb88:
  br label %bb78
bb89:
  %t386 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t388 = call i1 @std_2fos_2eExists(ptr %s11, { i64, ptr } %t386)
  store i1 %t388, ptr %l172
  br label %bb90
bb90:
  %t389 = load i1, ptr %l172, !tbaa !21
  br i1 %t389, label %bb91, label %bb92
bb91:
  call void @__olang_scope_close(ptr %s11)
  br label %bb111
bb92:
  br label %bb93
bb93:
  %t390 = load i64, ptr %l17, !tbaa !24
  %t391 = load i64, ptr %l13, !tbaa !24
  %t394 = icmp slt i64 %t390, %t391
  br i1 %t394, label %bb94, label %bb95
bb94:
  store %olang.scope zeroinitializer, ptr %s15
  %t396 = load ptr, ptr %l1, !tbaa !29
  %t398 = getelementptr %"compiler/build:Program", ptr %t396, i32 0, i32 0
  %t399 = load i64, ptr %l17, !tbaa !24
  %t402 = call %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %v1, ptr %t398, i64 %t399)
  store %"compiler/build:Unit" %t402, ptr %l179
  br label %bb96
bb95:
  %t403 = load i64, ptr %l17, !tbaa !24
  %t404 = load i64, ptr %l13, !tbaa !24
  %t407 = icmp eq i64 %t403, %t404
  br i1 %t407, label %bb101, label %bb102
bb96:
  %t409 = load %"compiler/build:Unit", ptr %l179
  store %"compiler/build:Unit" %t409, ptr %l19
  %t410 = load ptr, ptr %l0, !tbaa !29
  store ptr %t410, ptr %l181, !tbaa !29
  store ptr %l14, ptr %l182, !tbaa !29
  %t411 = getelementptr %"compiler/build:Unit", ptr %l19, i32 0, i32 0
  %t412 = load { i64, ptr }, ptr %t411, !tbaa !27
  %t414 = call { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v1, ptr %s15, { i64, ptr } %t412)
  store { i64, ptr } %t414, ptr %l184
  br label %bb97
bb97:
  %t415 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t416 = extractvalue { i64, ptr } %t415, 0
  %t417 = extractvalue { i64, ptr } %t415, 1
  %t418 = mul i64 %t416, 1
  %t419 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t418)
  call void @llvm.memcpy.p0.p0.i64(ptr %t419, ptr %t417, i64 %t418, i1 false)
  %t420 = insertvalue { i64, ptr } undef, i64 %t416, 0
  %t421 = insertvalue { i64, ptr } %t420, ptr %t419, 1
  %t422 = getelementptr %"compiler/build:Unit", ptr %l19, i32 0, i32 1
  %t423 = load i32, ptr %t422, !range !{i32 0, i32 5}
  %t424 = getelementptr %"compiler/build:Unit", ptr %l19, i32 0, i32 2
  %t425 = load { i64, ptr }, ptr %t424, !tbaa !27
  %t426 = load ptr, ptr %l2, !tbaa !29
  %t427 = getelementptr %"compiler/build:Unit", ptr %l19, i32 0, i32 3
  %t428 = load { i64, ptr }, ptr %t427, !tbaa !27
  %t429 = load ptr, ptr %l181, !tbaa !29
  %t430 = load ptr, ptr %l182, !tbaa !29
  %t436 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %s9, ptr %s15, ptr %v1, ptr %v2, ptr %v1, ptr %s15, ptr %t429, ptr %t430, { i64, ptr } %t421, i32 %t423, { i64, ptr } %t425, ptr %t426, { i64, ptr } %t428, i64 -1)
  %t437 = extractvalue { i32, { i64, ptr } } %t436, 1
  %t438 = extractvalue { i32, { i64, ptr } } %t436, 0
  store i32 %t438, ptr %l191
  %t439 = icmp ne i32 %t438, 0
  br i1 %t439, label %bb99, label %ok.440, !prof !99
ok.440:
  store { i64, ptr } %t437, ptr %l190
  br label %bb98
bb98:
  %t441 = load { i64, ptr }, ptr %l190, !tbaa !27
  store { i64, ptr } %t441, ptr %l180, !tbaa !27
  br label %bb100
bb99:
  %t442 = load i32, ptr %l191, !tbaa !23
  %t443 = lshr i32 %t442, 16
  %t444 = and i32 %t442, 65535
  %t445 = icmp eq i32 %t443, 1
  %t446 = select i1 %t445, i32 1, i32 0
  %t447 = icmp eq i32 %t442, 0
  %t448 = shl i32 %t446, 16
  %t449 = or i32 %t448, %t444
  %t450 = select i1 %t447, i32 0, i32 %t449
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t452 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t450, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t452, ptr %rv
  br label %ret
bb100:
  call void @__olang_scope_close(ptr %s15)
  br label %bb110
bb101:
  store %olang.scope zeroinitializer, ptr %s17
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t454 = load ptr, ptr %l1, !tbaa !29
  %t456 = getelementptr %"compiler/build:Program", ptr %t454, i32 0, i32 1
  %t457 = load { i64, ptr }, ptr %t456, !tbaa !27
  %t458 = load ptr, ptr %l2, !tbaa !29
  %t464 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %s9, ptr %s17, ptr %v1, ptr %v2, ptr %s17, ptr %s17, ptr %t453, ptr %l14, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d100, i32 0, i32 1) }, i32 0, { i64, ptr } %t457, ptr %t458, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) }, i64 -1)
  %t465 = extractvalue { i32, { i64, ptr } } %t464, 1
  %t466 = extractvalue { i32, { i64, ptr } } %t464, 0
  store i32 %t466, ptr %l204
  %t467 = icmp ne i32 %t466, 0
  br i1 %t467, label %bb104, label %ok.468, !prof !99
ok.468:
  store { i64, ptr } %t465, ptr %l203
  br label %bb103
bb102:
  store %olang.scope zeroinitializer, ptr %s18
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t470 = load ptr, ptr %l1, !tbaa !29
  %t472 = getelementptr %"compiler/build:Program", ptr %t470, i32 0, i32 2
  %t473 = load { i64, ptr }, ptr %t472, !tbaa !27
  %t474 = load ptr, ptr %l2, !tbaa !29
  %t480 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %s9, ptr %s18, ptr %v1, ptr %v2, ptr %s18, ptr %s18, ptr %t469, ptr %l14, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d102, i32 0, i32 1) }, i32 0, { i64, ptr } %t473, ptr %t474, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) }, i64 -1)
  %t481 = extractvalue { i32, { i64, ptr } } %t480, 1
  %t482 = extractvalue { i32, { i64, ptr } } %t480, 0
  store i32 %t482, ptr %l214
  %t483 = icmp ne i32 %t482, 0
  br i1 %t483, label %bb107, label %ok.484, !prof !99
ok.484:
  store { i64, ptr } %t481, ptr %l213
  br label %bb106
bb103:
  %t485 = load { i64, ptr }, ptr %l203, !tbaa !27
  store { i64, ptr } %t485, ptr %l196, !tbaa !27
  br label %bb105
bb104:
  %t486 = load i32, ptr %l204, !tbaa !23
  %t487 = lshr i32 %t486, 16
  %t488 = and i32 %t486, 65535
  %t489 = icmp eq i32 %t487, 1
  %t490 = select i1 %t489, i32 1, i32 0
  %t491 = icmp eq i32 %t486, 0
  %t492 = shl i32 %t490, 16
  %t493 = or i32 %t492, %t488
  %t494 = select i1 %t491, i32 0, i32 %t493
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t496 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t494, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t496, ptr %rv
  br label %ret
bb105:
  call void @__olang_scope_close(ptr %s17)
  br label %bb109
bb106:
  %t497 = load { i64, ptr }, ptr %l213, !tbaa !27
  store { i64, ptr } %t497, ptr %l206, !tbaa !27
  br label %bb108
bb107:
  %t498 = load i32, ptr %l214, !tbaa !23
  %t499 = lshr i32 %t498, 16
  %t500 = and i32 %t498, 65535
  %t501 = icmp eq i32 %t499, 1
  %t502 = select i1 %t501, i32 1, i32 0
  %t503 = icmp eq i32 %t498, 0
  %t504 = shl i32 %t502, 16
  %t505 = or i32 %t504, %t500
  %t506 = select i1 %t503, i32 0, i32 %t505
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t508 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t506, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t508, ptr %rv
  br label %ret
bb108:
  call void @__olang_scope_close(ptr %s18)
  br label %bb109
bb109:
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s11)
  br label %bb111
bb111:
  %t509 = load i64, ptr %l16, !tbaa !24
  %t511 = add i64 %t509, 1
  store i64 %t511, ptr %l16, !tbaa !24
  br label %bb63
bb112:
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load ptr, ptr %l2, !tbaa !29
  %t518 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ecompile(ptr %v0, ptr %s9, ptr %v2, ptr %t513, ptr %l14, ptr %t514)
  store i32 %t518, ptr %l221
  %t519 = icmp ne i32 %t518, 0
  br i1 %t519, label %bb114, label %ok.520, !prof !99
ok.520:
  br label %bb113
bb113:
  br label %bb115
bb114:
  %t521 = load i32, ptr %l221, !tbaa !23
  %t522 = lshr i32 %t521, 16
  %t523 = and i32 %t521, 65535
  %t524 = icmp eq i32 %t522, 1
  %t525 = select i1 %t524, i32 1, i32 0
  %t526 = icmp eq i32 %t521, 0
  %t527 = shl i32 %t525, 16
  %t528 = or i32 %t527, %t523
  %t529 = select i1 %t526, i32 0, i32 %t528
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t531 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t529, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t531, ptr %rv
  br label %ret
bb115:
  call void @__olang_scope_close(ptr %s9)
  br label %bb116
bb116:
  %t532 = load ptr, ptr %lp8
  %t533 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t532
  call void @__olang_scope_close(ptr %s0)
  %t535 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t533, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t535, ptr %rv
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
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca %"std/os:Output"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca ptr
  %l29 = alloca i64
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca i64
  %l40 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l47 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca i64
  %l66 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l73 = alloca i64
  %l78 = alloca ptr
  %l79 = alloca i64
  %l85 = alloca ptr
  %l86 = alloca i64
  %l92 = alloca i64
  %l94 = alloca i64
  %l99 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l101 = alloca i64
  %l110 = alloca i64
  %l112 = alloca i64
  %l117 = alloca { i64, ptr }
  %l118 = alloca ptr
  %l119 = alloca i64
  %l137 = alloca ptr
  %l138 = alloca i64
  %l147 = alloca i1
  %l152 = alloca i1
  %l154 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l156 = alloca i64
  %l158 = alloca i64
  %l163 = alloca { i64, ptr }
  %l168 = alloca ptr
  %l170 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l175 = alloca i1
  %l181 = alloca i32
  %l183 = alloca %"std/os:Output"
  %l185 = alloca { i64, ptr }
  %l186 = alloca { i64, ptr }
  %l187 = alloca %"std/os:Output"
  %l188 = alloca i32
  %l190 = alloca i1
  %l193 = alloca %"std/os:Output"
  %l200 = alloca ptr
  %l201 = alloca { i64, [3 x i64] }
  %l205 = alloca %"compiler/diagmsg:Msg"
  %l207 = alloca ptr
  %l214 = alloca i32
  %l223 = alloca i32
  %l225 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %rv = alloca i32
  %t511 = alloca { i64, [3 x i64] }, align 8
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
  store ptr %l7, ptr %l28, !tbaa !29
  %t3 = ptrtoint ptr %s0 to i64
  store i64 %t3, ptr %l29, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t6 = call ptr @__olang_region_make(ptr %s0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l29, !tbaa !24
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/build:Config", ptr %t8, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 1
  %t14 = extractvalue { i64, ptr } %t11, 0
  %t15 = load i64, ptr %l29
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = call ptr @__olang_scope_alloc(ptr %t16, i64 %t14)
  call void @olang_textcopy(ptr %t17, ptr %t13, i64 %t14)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  %t21 = load i64, ptr %l29
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = extractvalue { i64, ptr } %t19, 0
  %t24 = extractvalue { i64, ptr } %t19, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  %t29 = load ptr, ptr %l28, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t29, { i64, ptr } %t28)
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %s2, ptr %t31)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l36
  br label %bb5
bb5:
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  %t35 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %t35
  store ptr %t35, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l9, !tbaa !24
  store i64 %t37, ptr %l38, !tbaa !24
  %t38 = load ptr, ptr %l8, !tbaa !29
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %t38)
  store i64 %t40, ptr %l40
  br label %bb7
bb7:
  %t41 = load i64, ptr %l38, !tbaa !24
  %t42 = load i64, ptr %l40, !tbaa !24
  %t43 = icmp slt i64 %t41, %t42
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t47 = load ptr, ptr %l8, !tbaa !29
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %t47, i64 %t48)
  store { i64, ptr } %t51, ptr %l45
  br label %bb11
bb11:
  %t52 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t52, ptr %l10, !tbaa !27
  store ptr %l7, ptr %l46, !tbaa !29
  %t53 = ptrtoint ptr %s0 to i64
  store i64 %t53, ptr %l47, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = call ptr @__olang_region_make(ptr %s0)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l47, !tbaa !24
  br label %bb13
bb13:
  %t58 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = extractvalue { i64, ptr } %t58, 0
  %t62 = load i64, ptr %l47
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call ptr @__olang_scope_alloc(ptr %t63, i64 %t61)
  call void @olang_textcopy(ptr %t64, ptr %t60, i64 %t61)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  %t68 = load i64, ptr %l47
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = extractvalue { i64, ptr } %t66, 0
  %t71 = extractvalue { i64, ptr } %t66, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %t69, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t76 = load ptr, ptr %l46, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t76, { i64, ptr } %t75)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t78 = load i64, ptr %l9, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l9, !tbaa !24
  br label %bb6
bb16:
  call void @__olang_scope_close(ptr %s2)
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/build:Config", ptr %t82, i32 0, i32 27
  %t85 = load i1, ptr %t84, !tbaa !21
  br i1 %t85, label %bb17, label %bb18
bb17:
  store ptr %l7, ptr %l56, !tbaa !29
  %t87 = ptrtoint ptr %s0 to i64
  store i64 %t87, ptr %l57, !tbaa !24
  %t88 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t88, label %bb19, label %bb20
bb18:
  br label %bb22
bb19:
  %t90 = call ptr @__olang_region_make(ptr %s0)
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l57, !tbaa !24
  br label %bb20
bb20:
  %t92 = load i64, ptr @G_2ecompiler_2fbuild_2eImportLimit, !tbaa !24
  %t93 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t96 = call i64 @__olang_fmt_i64(ptr null, i64 %t92)
  %t97 = add i64 %t94, %t96
  %t98 = load i64, ptr %l57
  %t99 = inttoptr i64 %t98 to ptr
  %t100 = call ptr @__olang_scope_alloc(ptr %t99, i64 %t97)
  call void @olang_textcopy(ptr %t100, ptr %t93, i64 %t94)
  %t101 = getelementptr i8, ptr %t100, i64 %t94
  %t102 = call i64 @__olang_fmt_i64(ptr %t101, i64 %t92)
  %t103 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t100, 1
  %t106 = load i64, ptr %l57
  %t107 = inttoptr i64 %t106 to ptr
  %t108 = extractvalue { i64, ptr } %t104, 0
  %t109 = extractvalue { i64, ptr } %t104, 1
  %t110 = mul i64 %t108, 1
  %t111 = call ptr @__olang_scope_alloc(ptr %t107, i64 %t110)
  call void @llvm.memcpy.p0.p0.i64(ptr %t111, ptr %t109, i64 %t110, i1 false)
  %t112 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t111, 1
  %t114 = load ptr, ptr %l56, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t114, { i64, ptr } %t113)
  br label %bb21
bb21:
  br label %bb22
bb22:
  store ptr %l7, ptr %l62, !tbaa !29
  %t116 = ptrtoint ptr %s0 to i64
  store i64 %t116, ptr %l63, !tbaa !24
  %t117 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t117, label %bb23, label %bb24
bb23:
  %t119 = call ptr @__olang_region_make(ptr %s0)
  %t120 = ptrtoint ptr %t119 to i64
  store i64 %t120, ptr %l63, !tbaa !24
  br label %bb24
bb24:
  %t121 = load i1, ptr %l4, !tbaa !21
  br i1 %t121, label %bb25, label %bb26
bb25:
  store { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d116, i32 0, i32 1) }, ptr %l67, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t123, ptr %l66, !tbaa !27
  br label %bb27
bb26:
  store { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d117, i32 0, i32 1) }, ptr %l69, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t125, ptr %l66, !tbaa !27
  br label %bb27
bb27:
  %t127 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t128 = load i64, ptr %l63
  %t129 = inttoptr i64 %t128 to ptr
  %t130 = extractvalue { i64, ptr } %t127, 0
  %t131 = extractvalue { i64, ptr } %t127, 1
  %t132 = mul i64 %t130, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %t129, i64 %t132)
  call void @llvm.memcpy.p0.p0.i64(ptr %t133, ptr %t131, i64 %t132, i1 false)
  %t134 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  %t136 = load ptr, ptr %l62, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t136, { i64, ptr } %t135)
  br label %bb28
bb28:
  store ptr %l7, ptr %l72, !tbaa !29
  %t138 = ptrtoint ptr %s0 to i64
  store i64 %t138, ptr %l73, !tbaa !24
  %t139 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t139, label %bb29, label %bb30
bb29:
  %t141 = call ptr @__olang_region_make(ptr %s0)
  %t142 = ptrtoint ptr %t141 to i64
  store i64 %t142, ptr %l73, !tbaa !24
  br label %bb30
bb30:
  %t143 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t144 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t145 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t147 = extractvalue { i64, ptr } %t143, 1
  %t148 = extractvalue { i64, ptr } %t143, 0
  %t149 = add i64 %t145, %t148
  %t150 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t151 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t152 = add i64 %t149, %t151
  %t153 = load i64, ptr %l73
  %t154 = inttoptr i64 %t153 to ptr
  %t155 = call ptr @__olang_scope_alloc(ptr %t154, i64 %t152)
  call void @olang_textcopy(ptr %t155, ptr %t144, i64 %t145)
  %t156 = getelementptr i8, ptr %t155, i64 %t145
  call void @olang_textcopy(ptr %t156, ptr %t147, i64 %t148)
  %t157 = getelementptr i8, ptr %t156, i64 %t148
  call void @olang_textcopy(ptr %t157, ptr %t150, i64 %t151)
  %t158 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t155, 1
  %t161 = load i64, ptr %l73
  %t162 = inttoptr i64 %t161 to ptr
  %t163 = extractvalue { i64, ptr } %t159, 0
  %t164 = extractvalue { i64, ptr } %t159, 1
  %t165 = mul i64 %t163, 1
  %t166 = call ptr @__olang_scope_alloc(ptr %t162, i64 %t165)
  call void @llvm.memcpy.p0.p0.i64(ptr %t166, ptr %t164, i64 %t165, i1 false)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  %t169 = load ptr, ptr %l72, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t169, { i64, ptr } %t168)
  br label %bb31
bb31:
  store ptr %l7, ptr %l78, !tbaa !29
  %t171 = ptrtoint ptr %s0 to i64
  store i64 %t171, ptr %l79, !tbaa !24
  %t172 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t172, label %bb32, label %bb33
bb32:
  %t174 = call ptr @__olang_region_make(ptr %s0)
  %t175 = ptrtoint ptr %t174 to i64
  store i64 %t175, ptr %l79, !tbaa !24
  br label %bb33
bb33:
  %t176 = load { i64, ptr }, ptr @G_2ecompiler_2fbuild_2eRemarkPasses, !tbaa !27
  %t177 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t180 = extractvalue { i64, ptr } %t176, 1
  %t181 = extractvalue { i64, ptr } %t176, 0
  %t182 = add i64 %t178, %t181
  %t183 = load i64, ptr %l79
  %t184 = inttoptr i64 %t183 to ptr
  %t185 = call ptr @__olang_scope_alloc(ptr %t184, i64 %t182)
  call void @olang_textcopy(ptr %t185, ptr %t177, i64 %t178)
  %t186 = getelementptr i8, ptr %t185, i64 %t178
  call void @olang_textcopy(ptr %t186, ptr %t180, i64 %t181)
  %t187 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t185, 1
  %t190 = load i64, ptr %l79
  %t191 = inttoptr i64 %t190 to ptr
  %t192 = extractvalue { i64, ptr } %t188, 0
  %t193 = extractvalue { i64, ptr } %t188, 1
  %t194 = mul i64 %t192, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %t191, i64 %t194)
  call void @llvm.memcpy.p0.p0.i64(ptr %t195, ptr %t193, i64 %t194, i1 false)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  %t198 = load ptr, ptr %l78, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t198, { i64, ptr } %t197)
  br label %bb34
bb34:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d121, i32 0, i32 1) })
  br label %bb35
bb35:
  store ptr %l7, ptr %l85, !tbaa !29
  %t201 = ptrtoint ptr %s0 to i64
  store i64 %t201, ptr %l86, !tbaa !24
  %t202 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t202, label %bb36, label %bb37
bb36:
  %t204 = call ptr @__olang_region_make(ptr %s0)
  %t205 = ptrtoint ptr %t204 to i64
  store i64 %t205, ptr %l86, !tbaa !24
  br label %bb37
bb37:
  %t206 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t206, 1
  %t209 = extractvalue { i64, ptr } %t206, 0
  %t210 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t211 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t212 = add i64 %t209, %t211
  %t213 = load i64, ptr %l86
  %t214 = inttoptr i64 %t213 to ptr
  %t215 = call ptr @__olang_scope_alloc(ptr %t214, i64 %t212)
  call void @olang_textcopy(ptr %t215, ptr %t208, i64 %t209)
  %t216 = getelementptr i8, ptr %t215, i64 %t209
  call void @olang_textcopy(ptr %t216, ptr %t210, i64 %t211)
  %t217 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t215, 1
  %t220 = load i64, ptr %l86
  %t221 = inttoptr i64 %t220 to ptr
  %t222 = extractvalue { i64, ptr } %t218, 0
  %t223 = extractvalue { i64, ptr } %t218, 1
  %t224 = mul i64 %t222, 1
  %t225 = call ptr @__olang_scope_alloc(ptr %t221, i64 %t224)
  call void @llvm.memcpy.p0.p0.i64(ptr %t225, ptr %t223, i64 %t224, i1 false)
  %t226 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t225, 1
  %t228 = load ptr, ptr %l85, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t228, { i64, ptr } %t227)
  br label %bb38
bb38:
  store ptr %a1, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb39
bb39:
  %t232 = load i64, ptr %l12, !tbaa !24
  store i64 %t232, ptr %l92, !tbaa !24
  %t233 = load ptr, ptr %l11, !tbaa !29
  %t235 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t233)
  store i64 %t235, ptr %l94
  br label %bb40
bb40:
  %t236 = load i64, ptr %l92, !tbaa !24
  %t237 = load i64, ptr %l94, !tbaa !24
  %t238 = icmp slt i64 %t236, %t237
  %t240 = xor i1 %t238, true
  br i1 %t240, label %bb41, label %bb42
bb41:
  br label %bb49
bb42:
  br label %bb43
bb43:
  %t242 = load ptr, ptr %l11, !tbaa !29
  %t243 = load i64, ptr %l12, !tbaa !24
  %t246 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t242, i64 %t243)
  store { i64, ptr } %t246, ptr %l99
  br label %bb44
bb44:
  %t247 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t247, ptr %l13, !tbaa !27
  store ptr %l7, ptr %l100, !tbaa !29
  %t248 = ptrtoint ptr %s0 to i64
  store i64 %t248, ptr %l101, !tbaa !24
  %t249 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t249, label %bb45, label %bb46
bb45:
  %t251 = call ptr @__olang_region_make(ptr %s0)
  %t252 = ptrtoint ptr %t251 to i64
  store i64 %t252, ptr %l101, !tbaa !24
  br label %bb46
bb46:
  %t253 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t253, 1
  %t256 = extractvalue { i64, ptr } %t253, 0
  %t257 = load i64, ptr %l101
  %t258 = inttoptr i64 %t257 to ptr
  %t259 = call ptr @__olang_scope_alloc(ptr %t258, i64 %t256)
  call void @olang_textcopy(ptr %t259, ptr %t255, i64 %t256)
  %t260 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t259, 1
  %t263 = load i64, ptr %l101
  %t264 = inttoptr i64 %t263 to ptr
  %t265 = extractvalue { i64, ptr } %t261, 0
  %t266 = extractvalue { i64, ptr } %t261, 1
  %t267 = mul i64 %t265, 1
  %t268 = call ptr @__olang_scope_alloc(ptr %t264, i64 %t267)
  call void @llvm.memcpy.p0.p0.i64(ptr %t268, ptr %t266, i64 %t267, i1 false)
  %t269 = insertvalue { i64, ptr } undef, i64 %t265, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr %t268, 1
  %t271 = load ptr, ptr %l100, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t271, { i64, ptr } %t270)
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t273 = load i64, ptr %l12, !tbaa !24
  %t275 = add i64 %t273, 1
  store i64 %t275, ptr %l12, !tbaa !24
  br label %bb39
bb49:
  %t277 = load ptr, ptr %l2, !tbaa !29
  %t279 = getelementptr %"compiler/build:Program", ptr %t277, i32 0, i32 3
  store ptr %t279, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb50
bb50:
  %t281 = load i64, ptr %l15, !tbaa !24
  store i64 %t281, ptr %l110, !tbaa !24
  %t282 = load ptr, ptr %l14, !tbaa !29
  %t284 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t282)
  store i64 %t284, ptr %l112
  br label %bb51
bb51:
  %t285 = load i64, ptr %l110, !tbaa !24
  %t286 = load i64, ptr %l112, !tbaa !24
  %t287 = icmp slt i64 %t285, %t286
  %t289 = xor i1 %t287, true
  br i1 %t289, label %bb52, label %bb53
bb52:
  br label %bb60
bb53:
  br label %bb54
bb54:
  %t291 = load ptr, ptr %l14, !tbaa !29
  %t292 = load i64, ptr %l15, !tbaa !24
  %t295 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t291, i64 %t292)
  store { i64, ptr } %t295, ptr %l117
  br label %bb55
bb55:
  %t296 = load { i64, ptr }, ptr %l117, !tbaa !27
  store { i64, ptr } %t296, ptr %l16, !tbaa !27
  store ptr %l7, ptr %l118, !tbaa !29
  %t297 = ptrtoint ptr %s0 to i64
  store i64 %t297, ptr %l119, !tbaa !24
  %t298 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t298, label %bb56, label %bb57
bb56:
  %t300 = call ptr @__olang_region_make(ptr %s0)
  %t301 = ptrtoint ptr %t300 to i64
  store i64 %t301, ptr %l119, !tbaa !24
  br label %bb57
bb57:
  %t302 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t302, 1
  %t305 = extractvalue { i64, ptr } %t302, 0
  %t306 = load i64, ptr %l119
  %t307 = inttoptr i64 %t306 to ptr
  %t308 = call ptr @__olang_scope_alloc(ptr %t307, i64 %t305)
  call void @olang_textcopy(ptr %t308, ptr %t304, i64 %t305)
  %t309 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t310 = insertvalue { i64, ptr } %t309, ptr %t308, 1
  %t312 = load i64, ptr %l119
  %t313 = inttoptr i64 %t312 to ptr
  %t314 = extractvalue { i64, ptr } %t310, 0
  %t315 = extractvalue { i64, ptr } %t310, 1
  %t316 = mul i64 %t314, 1
  %t317 = call ptr @__olang_scope_alloc(ptr %t313, i64 %t316)
  call void @llvm.memcpy.p0.p0.i64(ptr %t317, ptr %t315, i64 %t316, i1 false)
  %t318 = insertvalue { i64, ptr } undef, i64 %t314, 0
  %t319 = insertvalue { i64, ptr } %t318, ptr %t317, 1
  %t320 = load ptr, ptr %l118, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t320, { i64, ptr } %t319)
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t322 = load i64, ptr %l15, !tbaa !24
  %t324 = add i64 %t322, 1
  store i64 %t324, ptr %l15, !tbaa !24
  br label %bb50
bb60:
  store %olang.scope zeroinitializer, ptr %s19
  %t326 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t327 = insertvalue [3 x { i64, ptr }] %t326, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t328 = insertvalue [3 x { i64, ptr }] %t327, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d125, i32 0, i32 1) }, 2
  %t330 = call ptr @__olang_scope_alloc_a(ptr %s19, i64 48, i64 8)
  store [3 x { i64, ptr }] %t328, ptr %t330
  store ptr %t330, ptr %l17
  store i64 0, ptr %l18, !tbaa !24
  %t332 = load ptr, ptr %l17
  store i64 3, ptr %l19, !tbaa !24
  br label %bb61
bb61:
  %t335 = load i64, ptr %l18, !tbaa !24
  %t336 = load i64, ptr %l19, !tbaa !24
  %t339 = icmp slt i64 %t335, %t336
  %t341 = xor i1 %t339, true
  br i1 %t341, label %bb62, label %bb63
bb62:
  br label %bb69
bb63:
  br label %bb64
bb64:
  %t343 = load ptr, ptr %l17
  %t344 = load i64, ptr %l18, !tbaa !24
  %t347 = getelementptr [3 x { i64, ptr }], ptr %t343, i64 0, i64 %t344
  %t348 = load { i64, ptr }, ptr %t347, !tbaa !37
  store { i64, ptr } %t348, ptr %l20, !tbaa !27
  store ptr %l7, ptr %l137, !tbaa !29
  %t350 = ptrtoint ptr %s0 to i64
  store i64 %t350, ptr %l138, !tbaa !24
  %t351 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t351, label %bb65, label %bb66
bb65:
  %t353 = call ptr @__olang_region_make(ptr %s0)
  %t354 = ptrtoint ptr %t353 to i64
  store i64 %t354, ptr %l138, !tbaa !24
  br label %bb66
bb66:
  %t355 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t357 = extractvalue { i64, ptr } %t355, 1
  %t358 = extractvalue { i64, ptr } %t355, 0
  %t359 = load i64, ptr %l138
  %t360 = inttoptr i64 %t359 to ptr
  %t361 = call ptr @__olang_scope_alloc(ptr %t360, i64 %t358)
  call void @olang_textcopy(ptr %t361, ptr %t357, i64 %t358)
  %t362 = insertvalue { i64, ptr } undef, i64 %t358, 0
  %t363 = insertvalue { i64, ptr } %t362, ptr %t361, 1
  %t365 = load i64, ptr %l138
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = extractvalue { i64, ptr } %t363, 0
  %t368 = extractvalue { i64, ptr } %t363, 1
  %t369 = mul i64 %t367, 1
  %t370 = call ptr @__olang_scope_alloc(ptr %t366, i64 %t369)
  call void @llvm.memcpy.p0.p0.i64(ptr %t370, ptr %t368, i64 %t369, i1 false)
  %t371 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t370, 1
  %t373 = load ptr, ptr %l137, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t373, { i64, ptr } %t372)
  br label %bb67
bb67:
  br label %bb68
bb68:
  %t375 = load i64, ptr %l18, !tbaa !24
  %t377 = add i64 %t375, 1
  store i64 %t377, ptr %l18, !tbaa !24
  br label %bb61
bb69:
  call void @__olang_scope_close(ptr %s19)
  %t379 = load ptr, ptr %l2, !tbaa !29
  %t381 = getelementptr %"compiler/build:Program", ptr %t379, i32 0, i32 2
  %t382 = load { i64, ptr }, ptr %t381, !tbaa !27
  %t384 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t382, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d126, i32 0, i32 1) })
  store i1 %t384, ptr %l147
  br label %bb70
bb70:
  %t385 = load i1, ptr %l147, !tbaa !21
  %t386 = xor i1 %t385, true
  br i1 %t386, label %bb71, label %bb72
bb71:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d127, i32 0, i32 1) })
  br label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb74
bb74:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = getelementptr %"compiler/build:Config", ptr %t389, i32 0, i32 1
  %t392 = load { i64, ptr }, ptr %t391, !tbaa !27
  %t394 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t392, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d128, i32 0, i32 1) })
  store i1 %t394, ptr %l152
  br label %bb75
bb75:
  %t395 = load i1, ptr %l152, !tbaa !21
  br i1 %t395, label %bb76, label %bb77
bb76:
  call void @__olang_scope_close(ptr %s0)
  store i32 65537, ptr %rv
  br label %ret
bb77:
  br label %bb78
bb78:
  %t397 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t397, ptr %l154
  br label %bb79
bb79:
  %t398 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l154
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t398, ptr %l21
  store ptr %l7, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb80
bb80:
  %t400 = load i64, ptr %l23, !tbaa !24
  store i64 %t400, ptr %l156, !tbaa !24
  %t401 = load ptr, ptr %l22, !tbaa !29
  %t403 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t401)
  store i64 %t403, ptr %l158
  br label %bb81
bb81:
  %t404 = load i64, ptr %l156, !tbaa !24
  %t405 = load i64, ptr %l158, !tbaa !24
  %t406 = icmp slt i64 %t404, %t405
  %t408 = xor i1 %t406, true
  br i1 %t408, label %bb82, label %bb83
bb82:
  br label %bb88
bb83:
  br label %bb84
bb84:
  %t410 = load ptr, ptr %l22, !tbaa !29
  %t411 = load i64, ptr %l23, !tbaa !24
  %t414 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t410, i64 %t411)
  store { i64, ptr } %t414, ptr %l163
  br label %bb85
bb85:
  %t415 = load { i64, ptr }, ptr %l163, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l21, { i64, ptr } %t415)
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t419 = load i64, ptr %l23, !tbaa !24
  %t421 = add i64 %t419, 1
  store i64 %t421, ptr %l23, !tbaa !24
  br label %bb80
bb88:
  store ptr %l21, ptr %l168, !tbaa !29
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t425 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eclangVersion(ptr %v0, ptr %v0, ptr %t423)
  store { i64, ptr } %t425, ptr %l170
  br label %bb89
bb89:
  %t426 = load ptr, ptr %l168, !tbaa !29
  %t427 = load { i64, ptr }, ptr %l170, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %t426, { i64, ptr } %t427)
  br label %bb90
bb90:
  %t429 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s0, ptr %s0, ptr %l21)
  store { i64, ptr } %t429, ptr %l172
  br label %bb91
bb91:
  %t430 = load { i64, ptr }, ptr %l172, !tbaa !27
  store { i64, ptr } %t430, ptr %l25, !tbaa !27
  %t431 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t432 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t435 = call i1 @compiler_2fbuild_2emadeBefore(ptr %v3, ptr %s0, { i64, ptr } %t431, { i64, ptr } %t432)
  store i1 %t435, ptr %l175
  br label %bb92
bb92:
  %t436 = load i1, ptr %l175, !tbaa !21
  br i1 %t436, label %bb93, label %bb94
bb93:
  %t437 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t438 = load i1, ptr %l4, !tbaa !21
  %t439 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fbuild_2elistFiles(ptr %v3, ptr %v4, { i64, ptr } %t437, i1 %t438, ptr %t439)
  br label %bb95
bb94:
  br label %bb96
bb95:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb96:
  %t443 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t444 = load ptr, ptr %l6, !tbaa !29
  %t447 = call i32 @compiler_2fbuild_2eafresh(ptr %v3, ptr %v5, { i64, ptr } %t443, ptr %t444)
  store i32 %t447, ptr %l181
  %t448 = icmp ne i32 %t447, 0
  br i1 %t448, label %bb98, label %ok.449, !prof !99
ok.449:
  br label %bb97
bb97:
  br label %bb99
bb98:
  %t450 = load i32, ptr %l181, !tbaa !23
  %t451 = lshr i32 %t450, 16
  %t452 = and i32 %t450, 65535
  %t453 = icmp eq i32 %t451, 1
  %t454 = select i1 %t453, i32 1, i32 0
  %t455 = icmp eq i32 %t450, 0
  %t456 = shl i32 %t454, 16
  %t457 = or i32 %t456, %t452
  %t458 = select i1 %t455, i32 0, i32 %t457
  call void @__olang_scope_close(ptr %s0)
  store i32 %t458, ptr %rv
  br label %ret
bb99:
  %t461 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l7)
  store { i64, ptr } %t461, ptr %l185
  br label %bb100
bb100:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l186, !tbaa !27
  %t462 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t463 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t464 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t462, { i64, ptr } %t463, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  %t465 = extractvalue { i32, %"std/os:Output" } %t464, 1
  %t466 = extractvalue { i32, %"std/os:Output" } %t464, 0
  store i32 %t466, ptr %l188
  %t467 = icmp ne i32 %t466, 0
  br i1 %t467, label %bb102, label %ok.468, !prof !99
ok.468:
  store %"std/os:Output" %t465, ptr %l187
  br label %bb101
bb101:
  %t469 = load %"std/os:Output", ptr %l187
  store %"std/os:Output" %t469, ptr %l183
  br label %bb107
bb102:
  %t470 = load i32, ptr %l188, !tbaa !23
  %t471 = ashr i32 %t470, 16
  %t473 = icmp eq i32 %t471, 1
  store i1 %t473, ptr %l190, !tbaa !21
  %t474 = load i32, ptr %l188, !tbaa !23
  %t475 = ashr i32 %t474, 16
  %t477 = icmp eq i32 %t475, 1
  br i1 %t477, label %bb103, label %bb104
bb103:
  call void @__olang_errpay_pop()
  br label %bb104
bb104:
  br label %bb105
bb105:
  %t479 = call %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %s0, ptr %s0, ptr %s0, i32 127, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d129, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d130, i32 0, i32 1) })
  store %"std/os:Output" %t479, ptr %l193
  br label %bb106
bb106:
  %t480 = load %"std/os:Output", ptr %l193
  store %"std/os:Output" %t480, ptr %l183
  br label %bb107
bb107:
  %t481 = load %"std/os:Output", ptr %l183
  store %"std/os:Output" %t481, ptr %l26
  %t482 = getelementptr %"std/os:Output", ptr %l26, i32 0, i32 0
  %t483 = load i32, ptr %t482, !tbaa !23
  %t485 = icmp ne i32 %t483, 0
  br i1 %t485, label %bb108, label %bb109
bb108:
  store %olang.scope zeroinitializer, ptr %s29
  %t487 = getelementptr %"std/os:Output", ptr %l26, i32 0, i32 1
  %t488 = load { i64, ptr }, ptr %t487, !tbaa !27
  %t489 = getelementptr %"std/os:Output", ptr %l26, i32 0, i32 2
  %t490 = load { i64, ptr }, ptr %t489, !tbaa !27
  %t492 = extractvalue { i64, ptr } %t488, 1
  %t493 = extractvalue { i64, ptr } %t488, 0
  %t495 = extractvalue { i64, ptr } %t490, 1
  %t496 = extractvalue { i64, ptr } %t490, 0
  %t497 = add i64 %t493, %t496
  %t498 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t497)
  call void @olang_textcopy(ptr %t498, ptr %t492, i64 %t493)
  %t499 = getelementptr i8, ptr %t498, i64 %t493
  call void @olang_textcopy(ptr %t499, ptr %t495, i64 %t496)
  %t500 = insertvalue { i64, ptr } undef, i64 %t497, 0
  %t501 = insertvalue { i64, ptr } %t500, ptr %t498, 1
  %t503 = extractvalue { i64, ptr } %t501, 0
  %t504 = extractvalue { i64, ptr } %t501, 1
  %t505 = mul i64 %t503, 1
  %t506 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t505)
  call void @llvm.memcpy.p0.p0.i64(ptr %t506, ptr %t504, i64 %t505, i1 false)
  %t507 = insertvalue { i64, ptr } undef, i64 %t503, 0
  %t508 = insertvalue { i64, ptr } %t507, ptr %t506, 1
  call void @compiler_2fbuild_2esayErr(ptr %s29, { i64, ptr } %t508)
  br label %bb110
bb109:
  br label %bb113
bb110:
  %t510 = load ptr, ptr %l6, !tbaa !29
  store ptr %t510, ptr %l200, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t511
  %t512 = getelementptr { i64, [3 x i64] }, ptr %t511, i32 0, i32 0
  store i64 0, ptr %t512
  %t513 = load { i64, [3 x i64] }, ptr %t511
  store { i64, [3 x i64] } %t513, ptr %l201
  %t514 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t516 = extractvalue { i64, ptr } %t514, 1
  %t517 = extractvalue { i64, ptr } %t514, 0
  %t518 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t519 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t520 = add i64 %t517, %t519
  %t521 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t520)
  call void @olang_textcopy(ptr %t521, ptr %t516, i64 %t517)
  %t522 = getelementptr i8, ptr %t521, i64 %t517
  call void @olang_textcopy(ptr %t522, ptr %t518, i64 %t519)
  %t523 = insertvalue { i64, ptr } undef, i64 %t520, 0
  %t524 = insertvalue { i64, ptr } %t523, ptr %t521, 1
  %t526 = extractvalue { i64, ptr } %t524, 0
  %t527 = extractvalue { i64, ptr } %t524, 1
  %t528 = mul i64 %t526, 1
  %t529 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t528)
  call void @llvm.memcpy.p0.p0.i64(ptr %t529, ptr %t527, i64 %t528, i1 false)
  %t530 = insertvalue { i64, ptr } undef, i64 %t526, 0
  %t531 = insertvalue { i64, ptr } %t530, ptr %t529, 1
  %t533 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %s29, ptr %s29, { i64, ptr } %t531)
  store %"compiler/diagmsg:Msg" %t533, ptr %l205
  br label %bb111
bb111:
  %t534 = load ptr, ptr %l200, !tbaa !29
  %t535 = load { i64, [3 x i64] }, ptr %l201
  %t536 = load %"compiler/diagmsg:Msg", ptr %l205
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v5, ptr %s29, ptr %t534, { i64, [3 x i64] } %t535, %"compiler/diagmsg:Msg" %t536)
  br label %bb112
bb112:
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb113:
  call void @compiler_2fbuild_2ePhase(ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d132, i32 0, i32 1) })
  br label %bb114
bb114:
  %t538 = load ptr, ptr %l0, !tbaa !29
  store ptr %t538, ptr %l207, !tbaa !29
  %t539 = load ptr, ptr %l207, !tbaa !29
  %t540 = getelementptr %"compiler/build:Config", ptr %t539, i32 0, i32 26
  %t541 = load i64, ptr %t540, !tbaa !24
  %t543 = add i64 %t541, 1
  %t545 = load ptr, ptr %l207, !tbaa !29
  %t546 = getelementptr %"compiler/build:Config", ptr %t545, i32 0, i32 26
  store i64 %t543, ptr %t546, !tbaa !24
  %t547 = load i1, ptr %l4, !tbaa !21
  br i1 %t547, label %bb115, label %bb116
bb115:
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t550 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t551 = load ptr, ptr %l6, !tbaa !29
  %t555 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ebitcodeText(ptr %v0, ptr %v3, ptr %v5, ptr %t549, { i64, ptr } %t550, ptr %t551)
  store i32 %t555, ptr %l214
  %t556 = icmp ne i32 %t555, 0
  br i1 %t556, label %bb118, label %ok.557, !prof !99
ok.557:
  br label %bb117
bb116:
  br label %bb120
bb117:
  br label %bb119
bb118:
  %t558 = load i32, ptr %l214, !tbaa !23
  %t559 = lshr i32 %t558, 16
  %t560 = and i32 %t558, 65535
  %t561 = icmp eq i32 %t559, 1
  %t562 = select i1 %t561, i32 1, i32 0
  %t563 = icmp eq i32 %t558, 0
  %t564 = shl i32 %t562, 16
  %t565 = or i32 %t564, %t560
  %t566 = select i1 %t563, i32 0, i32 %t565
  call void @__olang_scope_close(ptr %s0)
  store i32 %t566, ptr %rv
  br label %ret
bb119:
  br label %bb120
bb120:
  %t568 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t570 = extractvalue { i64, ptr } %t568, 1
  %t571 = extractvalue { i64, ptr } %t568, 0
  %t572 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t573 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t574 = add i64 %t571, %t573
  %t575 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t574)
  call void @olang_textcopy(ptr %t575, ptr %t570, i64 %t571)
  %t576 = getelementptr i8, ptr %t575, i64 %t571
  call void @olang_textcopy(ptr %t576, ptr %t572, i64 %t573)
  %t577 = insertvalue { i64, ptr } undef, i64 %t574, 0
  %t578 = insertvalue { i64, ptr } %t577, ptr %t575, 1
  %t580 = extractvalue { i64, ptr } %t578, 0
  %t581 = extractvalue { i64, ptr } %t578, 1
  %t582 = mul i64 %t580, 1
  %t583 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t582)
  call void @llvm.memcpy.p0.p0.i64(ptr %t583, ptr %t581, i64 %t582, i1 false)
  %t584 = insertvalue { i64, ptr } undef, i64 %t580, 0
  %t585 = insertvalue { i64, ptr } %t584, ptr %t583, 1
  %t586 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t588 = extractvalue { i64, ptr } %t586, 1
  %t589 = extractvalue { i64, ptr } %t586, 0
  %t590 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t591 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t592 = add i64 %t589, %t591
  %t593 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t592)
  call void @olang_textcopy(ptr %t593, ptr %t588, i64 %t589)
  %t594 = getelementptr i8, ptr %t593, i64 %t589
  call void @olang_textcopy(ptr %t594, ptr %t590, i64 %t591)
  %t595 = insertvalue { i64, ptr } undef, i64 %t592, 0
  %t596 = insertvalue { i64, ptr } %t595, ptr %t593, 1
  %t599 = extractvalue { i64, ptr } %t596, 0
  %t600 = extractvalue { i64, ptr } %t596, 1
  %t601 = mul i64 %t599, 1
  %t602 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t601)
  call void @llvm.memcpy.p0.p0.i64(ptr %t602, ptr %t600, i64 %t601, i1 false)
  %t603 = insertvalue { i64, ptr } undef, i64 %t599, 0
  %t604 = insertvalue { i64, ptr } %t603, ptr %t602, 1
  %t607 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t585, { i64, ptr } %t604)
  store i32 %t607, ptr %l223
  %t608 = icmp ne i32 %t607, 0
  br i1 %t608, label %bb122, label %ok.609, !prof !99
ok.609:
  br label %bb121
bb121:
  br label %bb126
bb122:
  %t610 = load i32, ptr %l223, !tbaa !23
  %t611 = ashr i32 %t610, 16
  %t613 = icmp eq i32 %t611, 1
  store i1 %t613, ptr %l225, !tbaa !21
  %t614 = load i32, ptr %l223, !tbaa !23
  %t615 = ashr i32 %t614, 16
  %t617 = icmp eq i32 %t615, 1
  br i1 %t617, label %bb123, label %bb124
bb123:
  call void @__olang_errpay_pop()
  br label %bb124
bb124:
  br label %bb125
bb125:
  br label %bb126
bb126:
  %t619 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t620 = load i1, ptr %l4, !tbaa !21
  %t621 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fbuild_2elistFiles(ptr %v3, ptr %v4, { i64, ptr } %t619, i1 %t620, ptr %t621)
  br label %bb127
bb127:
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
  %s1 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s1
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
  %t25 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNoEmulator(ptr %v0, ptr %s1, { i64, ptr } %t23)
  store %"compiler/diagmsg:Msg" %t25, ptr %l13
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l9, !tbaa !29
  %t27 = load { i64, [3 x i64] }, ptr %l10
  %t28 = load %"compiler/diagmsg:Msg", ptr %l13
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v1, ptr %s1, ptr %t26, { i64, [3 x i64] } %t27, %"compiler/diagmsg:Msg" %t28)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
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
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
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
  %l54 = alloca i1
  %l55 = alloca i1
  %l57 = alloca i1
  %l58 = alloca i1
  %l61 = alloca i1
  %l63 = alloca { i64, ptr }
  %l65 = alloca i1
  %l69 = alloca i1
  %l73 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l79 = alloca i64
  %l81 = alloca { i64, ptr }
  %l83 = alloca i64
  %l84 = alloca i64
  %l90 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca i32
  %l96 = alloca i1
  %l101 = alloca i1
  %l103 = alloca { i64, ptr }
  %l105 = alloca i1
  %l107 = alloca { i64, ptr }
  %l111 = alloca i64
  %l113 = alloca i64
  %l114 = alloca i64
  %l122 = alloca i32
  %l124 = alloca i1
  %l128 = alloca i1
  %l132 = alloca i1
  %l135 = alloca i1
  %l143 = alloca i64
  %l144 = alloca i64
  %l151 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l156 = alloca { i64, ptr }
  %l159 = alloca i1
  %l161 = alloca i1
  %l166 = alloca i1
  %l168 = alloca { i64, ptr }
  %l170 = alloca i64
  %l172 = alloca i64
  %l173 = alloca { i64, ptr }
  %l176 = alloca i64
  %l177 = alloca i64
  %l181 = alloca { i64, ptr }
  %l182 = alloca i32
  %l185 = alloca i1
  %l186 = alloca i1
  %l189 = alloca { i64, ptr }
  %l190 = alloca i1
  %l192 = alloca { i64, ptr }
  %l196 = alloca { i64, ptr }
  %l201 = alloca i32
  %l203 = alloca i1
  %l206 = alloca { i64, ptr }
  %l207 = alloca %"compiler/diagmsg:Msg"
  %l212 = alloca i1
  %l215 = alloca i32
  %l217 = alloca i1
  %l220 = alloca ptr
  %l221 = alloca { i64, [3 x i64] }
  %l223 = alloca %"compiler/diagmsg:Msg"
  %l225 = alloca { i64, ptr }
  %l226 = alloca i32
  %l228 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l230 = alloca ptr
  %l231 = alloca i64
  %l238 = alloca i64
  %l240 = alloca i64
  %l245 = alloca { i64, ptr }
  %l246 = alloca ptr
  %l247 = alloca i64
  %l256 = alloca ptr
  %l257 = alloca i64
  %l262 = alloca ptr
  %l263 = alloca i64
  %l269 = alloca ptr
  %l270 = alloca i64
  %l276 = alloca ptr
  %l277 = alloca i64
  %l280 = alloca { i64, ptr }
  %l282 = alloca ptr
  %l283 = alloca i64
  %l289 = alloca ptr
  %l290 = alloca i64
  %l293 = alloca { i64, ptr }
  %l296 = alloca { i64, ptr }
  %l300 = alloca ptr
  %l301 = alloca i64
  %l307 = alloca ptr
  %l308 = alloca i64
  %l314 = alloca ptr
  %l315 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t598 = alloca { i64, [3 x i64] }, align 8
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
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eDataFlags(ptr %v0, ptr %s0, ptr %t6)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l27
  br label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCompileFlags(ptr %v0, ptr %v3, ptr %s0, ptr %t9, { i64, ptr } %t10)
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
  %t44 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjectPath(ptr %v0, ptr %v2, ptr %v5, ptr %s0, ptr %v6, ptr %t39, { i64, ptr } %t40, i32 %t41, { i64, ptr } %t42, ptr %l8)
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
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr %"compiler/build:compiles", ptr %t64, i32 0, i32 2
  %t70 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v1, ptr %s0, ptr %t66, { i64, ptr } %t62)
  store i1 %t70, ptr %l54
  br label %bb15
bb15:
  %t71 = load i1, ptr %l54, !tbaa !21
  br i1 %t71, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb27
bb17:
  %t72 = load ptr, ptr %lp9
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  %t75 = call i1 @std_2fos_2eExists(ptr %v6, { i64, ptr } %t73)
  store i1 %t75, ptr %l57
  br label %bb18
bb18:
  %t76 = load i1, ptr %l57, !tbaa !21
  br i1 %t76, label %bb19, label %bb20
bb19:
  %t77 = load i1, ptr %l10, !tbaa !21
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb21, label %bb22
bb20:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb26
bb21:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb25
bb22:
  %t81 = load ptr, ptr %lp9
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  %t84 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s0, { i64, ptr } %t82)
  store { i64, ptr } %t84, ptr %l63
  br label %bb23
bb23:
  %t85 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t93 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t91)
  store i1 %t93, ptr %l65
  br label %bb24
bb24:
  %t94 = load i1, ptr %l65, !tbaa !21
  store i1 %t94, ptr %l61, !tbaa !21
  br label %bb25
bb25:
  %t95 = load i1, ptr %l61, !tbaa !21
  store i1 %t95, ptr %l58, !tbaa !21
  br label %bb26
bb26:
  %t96 = load i1, ptr %l58, !tbaa !21
  store i1 %t96, ptr %l55, !tbaa !21
  br label %bb27
bb27:
  %t97 = load i1, ptr %l55, !tbaa !21
  br i1 %t97, label %bb28, label %bb29
bb28:
  %t98 = load ptr, ptr %lp9
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t101 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t99, 1
  store { i32, { i64, ptr } } %t101, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/build:Config", ptr %t102, i32 0, i32 28
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  %t107 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t105, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d160, i32 0, i32 1) })
  store i1 %t107, ptr %l69
  br label %bb31
bb31:
  %t108 = load i1, ptr %l69, !tbaa !21
  %t109 = xor i1 %t108, true
  br i1 %t109, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s2
  %t111 = load i1, ptr %l10, !tbaa !21
  br i1 %t111, label %bb34, label %bb35
bb33:
  br label %bb76
bb34:
  store %olang.scope zeroinitializer, ptr %s3
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/build:Config", ptr %t113, i32 0, i32 28
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  store { i64, ptr } %t116, ptr %l73, !tbaa !27
  %t117 = load ptr, ptr %lp9
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  %t120 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s3, { i64, ptr } %t118)
  store { i64, ptr } %t120, ptr %l75
  br label %bb36
bb35:
  br label %bb51
bb36:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/build:Config", ptr %t121, i32 0, i32 0
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t128 = add i64 %t126, 1
  store i64 %t128, ptr %l79, !tbaa !24
  %t129 = load ptr, ptr %lp9
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  %t132 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s3, { i64, ptr } %t130)
  store { i64, ptr } %t132, ptr %l81
  br label %bb37
bb37:
  %t133 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 0
  store i64 %t135, ptr %l83, !tbaa !24
  %t136 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 0
  store i64 %t137, ptr %l84, !tbaa !24
  %t138 = load i64, ptr %l79, !tbaa !24
  %t139 = icmp sge i64 %t138, 0
  br i1 %t139, label %bb38, label %bb39
bb38:
  %t141 = load i64, ptr %l79, !tbaa !24
  %t142 = load i64, ptr %l83, !tbaa !24
  %t143 = icmp sle i64 %t141, %t142
  br i1 %t143, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_81dfa638548de3d7_ab0731b6a5acba3)
  unreachable
bb40:
  %t145 = load i64, ptr %l83, !tbaa !24
  %t146 = load i64, ptr %l84, !tbaa !24
  %t147 = icmp sle i64 %t145, %t146
  br i1 %t147, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_81dfa638548de3d7_ab0731b6a5acba3)
  unreachable
bb42:
  %t149 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = load i64, ptr %l79, !tbaa !24
  %t152 = load i64, ptr %l83, !tbaa !24
  %t153 = getelementptr i8, ptr %t150, i64 %t151
  %t154 = sub i64 %t152, %t151
  %t155 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t153, 1
  %t157 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t157, 1
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t160 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t161 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t162 = add i64 %t159, %t161
  %t164 = extractvalue { i64, ptr } %t156, 1
  %t165 = extractvalue { i64, ptr } %t156, 0
  %t166 = add i64 %t162, %t165
  %t167 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t166)
  call void @olang_textcopy(ptr %t167, ptr %t158, i64 %t159)
  %t168 = getelementptr i8, ptr %t167, i64 %t159
  call void @olang_textcopy(ptr %t168, ptr %t160, i64 %t161)
  %t169 = getelementptr i8, ptr %t168, i64 %t161
  call void @olang_textcopy(ptr %t169, ptr %t164, i64 %t165)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t167, 1
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t174 = extractvalue { i64, ptr } %t171, 1
  %t175 = mul i64 %t173, 1
  %t176 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t175)
  call void @llvm.memcpy.p0.p0.i64(ptr %t176, ptr %t174, i64 %t175, i1 false)
  %t177 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t176, 1
  store { i64, ptr } %t178, ptr %l90, !tbaa !27
  %t179 = load ptr, ptr %lp9
  %t180 = load { i64, ptr }, ptr %t179, !tbaa !27
  %t182 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s3, { i64, ptr } %t180)
  store { i64, ptr } %t182, ptr %l92
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_81dfa638548de3d7_ab0731b6a5acba3)
  unreachable
bb44:
  %t183 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t183, 0
  %t185 = extractvalue { i64, ptr } %t183, 1
  %t186 = mul i64 %t184, 1
  %t187 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t186)
  call void @llvm.memcpy.p0.p0.i64(ptr %t187, ptr %t185, i64 %t186, i1 false)
  %t188 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t187, 1
  %t190 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t192 = call i32 @std_2fos_2eLink(ptr %s3, ptr %s3, { i64, ptr } %t190, { i64, ptr } %t189)
  store i32 %t192, ptr %l94
  %t193 = icmp ne i32 %t192, 0
  br i1 %t193, label %bb46, label %ok.194, !prof !99
ok.194:
  br label %bb45
bb45:
  br label %bb50
bb46:
  %t195 = load i32, ptr %l94, !tbaa !23
  %t196 = ashr i32 %t195, 16
  %t198 = icmp eq i32 %t196, 1
  store i1 %t198, ptr %l96, !tbaa !21
  %t199 = load i32, ptr %l94, !tbaa !23
  %t200 = ashr i32 %t199, 16
  %t202 = icmp eq i32 %t200, 1
  br i1 %t202, label %bb47, label %bb48
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
  %t204 = load i1, ptr %l10, !tbaa !21
  %t206 = xor i1 %t204, true
  br i1 %t206, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l101, !tbaa !21
  br label %bb56
bb53:
  %t208 = load ptr, ptr %lp9
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  %t211 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s2, { i64, ptr } %t209)
  store { i64, ptr } %t211, ptr %l103
  br label %bb54
bb54:
  %t212 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 0
  %t214 = extractvalue { i64, ptr } %t212, 1
  %t215 = mul i64 %t213, 1
  %t216 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t215)
  call void @llvm.memcpy.p0.p0.i64(ptr %t216, ptr %t214, i64 %t215, i1 false)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  %t220 = call i1 @std_2fos_2eExists(ptr %s2, { i64, ptr } %t218)
  store i1 %t220, ptr %l105
  br label %bb55
bb55:
  %t221 = load i1, ptr %l105, !tbaa !21
  store i1 %t221, ptr %l101, !tbaa !21
  br label %bb56
bb56:
  %t222 = load i1, ptr %l101, !tbaa !21
  br i1 %t222, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s6
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/build:Config", ptr %t223, i32 0, i32 28
  %t226 = load { i64, ptr }, ptr %t225, !tbaa !27
  store { i64, ptr } %t226, ptr %l107, !tbaa !27
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/build:Config", ptr %t227, i32 0, i32 0
  %t230 = load { i64, ptr }, ptr %t229, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t230, 0
  %t234 = add i64 %t232, 1
  store i64 %t234, ptr %l111, !tbaa !24
  %t235 = load ptr, ptr %lp9
  %t236 = load { i64, ptr }, ptr %t235, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t236, 0
  store i64 %t238, ptr %l113, !tbaa !24
  %t239 = load ptr, ptr %lp9
  %t240 = load { i64, ptr }, ptr %t239, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t240, 0
  store i64 %t241, ptr %l114, !tbaa !24
  %t242 = load i64, ptr %l111, !tbaa !24
  %t243 = icmp sge i64 %t242, 0
  br i1 %t243, label %bb59, label %bb60
bb58:
  br label %bb71
bb59:
  %t245 = load i64, ptr %l111, !tbaa !24
  %t246 = load i64, ptr %l113, !tbaa !24
  %t247 = icmp sle i64 %t245, %t246
  br i1 %t247, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_64cef890f5e30dfa_ab05d47f854753c6)
  unreachable
bb61:
  %t249 = load i64, ptr %l113, !tbaa !24
  %t250 = load i64, ptr %l114, !tbaa !24
  %t251 = icmp sle i64 %t249, %t250
  br i1 %t251, label %bb63, label %bb64
bb62:
  call void @__olang_check_failed(ptr @olang_loc_64cef890f5e30dfa_ab05d47f854753c6)
  unreachable
bb63:
  %t253 = load ptr, ptr %lp9
  %t254 = getelementptr { i64, ptr }, ptr %t253, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = load i64, ptr %l111, !tbaa !24
  %t257 = load i64, ptr %l113, !tbaa !24
  %t258 = getelementptr i8, ptr %t255, i64 %t256
  %t259 = sub i64 %t257, %t256
  %t260 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t258, 1
  %t262 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t263 = extractvalue { i64, ptr } %t262, 1
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t266 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t267 = add i64 %t264, %t266
  %t269 = extractvalue { i64, ptr } %t261, 1
  %t270 = extractvalue { i64, ptr } %t261, 0
  %t271 = add i64 %t267, %t270
  %t272 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t271)
  call void @olang_textcopy(ptr %t272, ptr %t263, i64 %t264)
  %t273 = getelementptr i8, ptr %t272, i64 %t264
  call void @olang_textcopy(ptr %t273, ptr %t265, i64 %t266)
  %t274 = getelementptr i8, ptr %t273, i64 %t266
  call void @olang_textcopy(ptr %t274, ptr %t269, i64 %t270)
  %t275 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t272, 1
  %t278 = extractvalue { i64, ptr } %t276, 0
  %t279 = extractvalue { i64, ptr } %t276, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  %t284 = load ptr, ptr %lp9
  %t285 = load { i64, ptr }, ptr %t284, !tbaa !27
  %t288 = call i32 @std_2fos_2eLink(ptr %s6, ptr %v6, { i64, ptr } %t283, { i64, ptr } %t285)
  store i32 %t288, ptr %l122
  %t289 = icmp ne i32 %t288, 0
  br i1 %t289, label %bb66, label %ok.290, !prof !99
ok.290:
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_64cef890f5e30dfa_ab05d47f854753c6)
  unreachable
bb65:
  br label %bb70
bb66:
  %t291 = load i32, ptr %l122, !tbaa !23
  %t292 = ashr i32 %t291, 16
  %t294 = icmp eq i32 %t292, 1
  store i1 %t294, ptr %l124, !tbaa !21
  %t295 = load i32, ptr %l122, !tbaa !23
  %t296 = ashr i32 %t295, 16
  %t298 = icmp eq i32 %t296, 1
  br i1 %t298, label %bb67, label %bb68
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
  %t300 = load ptr, ptr %lp9
  %t301 = load { i64, ptr }, ptr %t300, !tbaa !27
  %t303 = call i1 @std_2fos_2eExists(ptr %v6, { i64, ptr } %t301)
  store i1 %t303, ptr %l128
  br label %bb72
bb72:
  %t304 = load i1, ptr %l128, !tbaa !21
  br i1 %t304, label %bb73, label %bb74
bb73:
  %t305 = load ptr, ptr %lp9
  %t306 = load { i64, ptr }, ptr %t305, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t308 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t306, 1
  store { i32, { i64, ptr } } %t308, ptr %rv
  br label %ret
bb74:
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s2)
  br label %bb76
bb76:
  %t309 = load i64, ptr %l7, !tbaa !24
  %t311 = icmp sge i64 %t309, 0
  br i1 %t311, label %bb77, label %bb78
bb77:
  %t313 = load ptr, ptr %l1, !tbaa !29
  %t314 = load ptr, ptr %lp9
  %t315 = load { i64, ptr }, ptr %t314, !tbaa !27
  %t318 = call i1 @compiler_2fbuild_2ecompiler_2fbuild_3acompiles_2eclaim(ptr %v1, ptr %v6, ptr %t313, { i64, ptr } %t315)
  store i1 %t318, ptr %l135
  br label %bb79
bb78:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb80
bb79:
  %t319 = load i1, ptr %l135, !tbaa !21
  %t320 = xor i1 %t319, true
  store i1 %t320, ptr %l132, !tbaa !21
  br label %bb80
bb80:
  %t322 = load i1, ptr %l132, !tbaa !21
  br i1 %t322, label %bb81, label %bb82
bb81:
  %t323 = load ptr, ptr %l1, !tbaa !29
  %t325 = getelementptr %"compiler/build:compiles", ptr %t323, i32 0, i32 8
  %t326 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t325, i64 %t326)
  br label %bb83
bb82:
  br label %bb84
bb83:
  %t329 = load ptr, ptr %lp9
  %t330 = load { i64, ptr }, ptr %t329, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t332 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t330, 1
  store { i32, { i64, ptr } } %t332, ptr %rv
  br label %ret
bb84:
  %t333 = load ptr, ptr %lp9
  %t334 = load { i64, ptr }, ptr %t333, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t334, 0
  %t338 = sub i64 %t336, 2
  store i64 %t338, ptr %l143, !tbaa !24
  %t339 = load ptr, ptr %lp9
  %t340 = load { i64, ptr }, ptr %t339, !tbaa !27
  %t341 = extractvalue { i64, ptr } %t340, 0
  store i64 %t341, ptr %l144, !tbaa !24
  %t342 = icmp sge i64 0, 0
  br i1 %t342, label %bb85, label %bb86
bb85:
  %t344 = load i64, ptr %l143, !tbaa !24
  %t345 = icmp sle i64 0, %t344
  br i1 %t345, label %bb87, label %bb88
bb86:
  call void @__olang_check_failed(ptr @olang_loc_adf83e678ec27f19_e5a5f2a4f92e5ce5)
  unreachable
bb87:
  %t347 = load i64, ptr %l143, !tbaa !24
  %t348 = load i64, ptr %l144, !tbaa !24
  %t349 = icmp sle i64 %t347, %t348
  br i1 %t349, label %bb89, label %bb90
bb88:
  call void @__olang_check_failed(ptr @olang_loc_adf83e678ec27f19_e5a5f2a4f92e5ce5)
  unreachable
bb89:
  %t351 = load ptr, ptr %lp9
  %t352 = getelementptr { i64, ptr }, ptr %t351, i32 0, i32 1
  %t353 = load ptr, ptr %t352, !tbaa !27
  %t354 = load i64, ptr %l143, !tbaa !24
  %t355 = getelementptr i8, ptr %t353, i64 0
  %t356 = sub i64 %t354, 0
  %t357 = insertvalue { i64, ptr } undef, i64 %t356, 0
  %t358 = insertvalue { i64, ptr } %t357, ptr %t355, 1
  %t360 = extractvalue { i64, ptr } %t358, 1
  %t361 = extractvalue { i64, ptr } %t358, 0
  %t362 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t363 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
  %t364 = add i64 %t361, %t363
  %t365 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t364)
  call void @olang_textcopy(ptr %t365, ptr %t360, i64 %t361)
  %t366 = getelementptr i8, ptr %t365, i64 %t361
  call void @olang_textcopy(ptr %t366, ptr %t362, i64 %t363)
  %t367 = insertvalue { i64, ptr } undef, i64 %t364, 0
  %t368 = insertvalue { i64, ptr } %t367, ptr %t365, 1
  store { i64, ptr } %t368, ptr %l12, !tbaa !27
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t372 = getelementptr %"compiler/build:Config", ptr %t370, i32 0, i32 0
  %t373 = load { i64, ptr }, ptr %t372, !tbaa !27
  store { i64, ptr } %t373, ptr %l151, !tbaa !27
  %t374 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t374, ptr %l152, !tbaa !27
  %t375 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t377 = call { i64, ptr } @compiler_2fbuild_2ekindSuffix(ptr %s0, i32 %t375)
  store { i64, ptr } %t377, ptr %l154
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_adf83e678ec27f19_e5a5f2a4f92e5ce5)
  unreachable
bb91:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t380 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2emodeSuffix(ptr %v0, ptr %s0, ptr %t378)
  store { i64, ptr } %t380, ptr %l156
  br label %bb92
bb92:
  %t381 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t382 = extractvalue { i64, ptr } %t381, 1
  %t383 = extractvalue { i64, ptr } %t381, 0
  %t384 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t385 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  %t386 = add i64 %t383, %t385
  %t387 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t388 = extractvalue { i64, ptr } %t387, 1
  %t389 = extractvalue { i64, ptr } %t387, 0
  %t390 = add i64 %t386, %t389
  %t391 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t392 = extractvalue { i64, ptr } %t391, 1
  %t393 = extractvalue { i64, ptr } %t391, 0
  %t394 = add i64 %t390, %t393
  %t395 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t396 = extractvalue { i64, ptr } %t395, 1
  %t397 = extractvalue { i64, ptr } %t395, 0
  %t398 = add i64 %t394, %t397
  %t399 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t400 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  %t401 = add i64 %t398, %t400
  %t402 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t401)
  call void @olang_textcopy(ptr %t402, ptr %t382, i64 %t383)
  %t403 = getelementptr i8, ptr %t402, i64 %t383
  call void @olang_textcopy(ptr %t403, ptr %t384, i64 %t385)
  %t404 = getelementptr i8, ptr %t403, i64 %t385
  call void @olang_textcopy(ptr %t404, ptr %t388, i64 %t389)
  %t405 = getelementptr i8, ptr %t404, i64 %t389
  call void @olang_textcopy(ptr %t405, ptr %t392, i64 %t393)
  %t406 = getelementptr i8, ptr %t405, i64 %t393
  call void @olang_textcopy(ptr %t406, ptr %t396, i64 %t397)
  %t407 = getelementptr i8, ptr %t406, i64 %t397
  call void @olang_textcopy(ptr %t407, ptr %t399, i64 %t400)
  %t408 = insertvalue { i64, ptr } undef, i64 %t401, 0
  %t409 = insertvalue { i64, ptr } %t408, ptr %t402, 1
  store { i64, ptr } %t409, ptr %l13, !tbaa !27
  %t411 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t413 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t411, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d166, i32 0, i32 1) })
  store i1 %t413, ptr %l159
  br label %bb93
bb93:
  %t414 = load i1, ptr %l159, !tbaa !21
  %t415 = xor i1 %t414, true
  br i1 %t415, label %bb94, label %bb95
bb94:
  %t417 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t419 = load ptr, ptr %l1, !tbaa !29
  %t421 = getelementptr %"compiler/build:compiles", ptr %t419, i32 0, i32 3
  %t425 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v1, ptr %s0, ptr %t421, { i64, ptr } %t417)
  store i1 %t425, ptr %l166
  br label %bb96
bb95:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb97
bb96:
  %t426 = load i1, ptr %l166, !tbaa !21
  %t427 = xor i1 %t426, true
  store i1 %t427, ptr %l161, !tbaa !21
  br label %bb97
bb97:
  %t429 = load i1, ptr %l161, !tbaa !21
  br i1 %t429, label %bb98, label %bb99
bb98:
  %t430 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t430, ptr %l168, !tbaa !27
  %t431 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t432 = extractvalue { i64, ptr } %t431, 0
  %t433 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t434 = extractvalue { i64, ptr } %t433, 0
  store i64 %t434, ptr %l170, !tbaa !24
  %t436 = load i64, ptr %l170, !tbaa !24
  %t437 = icmp eq i64 %t432, %t436
  br i1 %t437, label %bb100, label %bb101
bb99:
  br label %bb103
bb100:
  %t439 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t440 = load ptr, ptr %t439, !tbaa !27
  %t441 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t442 = load ptr, ptr %t441, !tbaa !27
  %t443 = load i64, ptr %l170, !tbaa !24
  %t444 = mul i64 %t443, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t440, ptr %t442, i64 %t444, i1 false)
  br label %bb102
bb101:
  %t445 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t446 = extractvalue { i64, ptr } %t445, 0
  store i64 %t446, ptr %l172, !tbaa !24
  %t447 = load i64, ptr %l172, !tbaa !24
  %t448 = mul i64 %t447, 1
  %t449 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t448)
  %t450 = insertvalue { i64, ptr } undef, i64 %t447, 0
  %t451 = insertvalue { i64, ptr } %t450, ptr %t449, 1
  store { i64, ptr } %t451, ptr %l173, !tbaa !27
  %t452 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t453 = load ptr, ptr %t452, !tbaa !27
  %t454 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t455 = load ptr, ptr %t454, !tbaa !27
  %t456 = load i64, ptr %l172, !tbaa !24
  %t457 = mul i64 %t456, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t453, ptr %t455, i64 %t457, i1 false)
  %t458 = load { i64, ptr }, ptr %l173, !tbaa !27
  store { i64, ptr } %t458, ptr %l12, !tbaa !27
  br label %bb102
bb102:
  br label %bb103
bb103:
  %t459 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t459, 0
  %t463 = sub i64 %t461, 3
  store i64 %t463, ptr %l176, !tbaa !24
  %t464 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t465 = extractvalue { i64, ptr } %t464, 0
  store i64 %t465, ptr %l177, !tbaa !24
  %t466 = icmp sge i64 0, 0
  br i1 %t466, label %bb104, label %bb105
bb104:
  %t468 = load i64, ptr %l176, !tbaa !24
  %t469 = icmp sle i64 0, %t468
  br i1 %t469, label %bb106, label %bb107
bb105:
  call void @__olang_check_failed(ptr @olang_loc_d790d12bf07ae06c_96ebe5e6b28bd688)
  unreachable
bb106:
  %t471 = load i64, ptr %l176, !tbaa !24
  %t472 = load i64, ptr %l177, !tbaa !24
  %t473 = icmp sle i64 %t471, %t472
  br i1 %t473, label %bb108, label %bb109
bb107:
  call void @__olang_check_failed(ptr @olang_loc_d790d12bf07ae06c_96ebe5e6b28bd688)
  unreachable
bb108:
  %t475 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t476 = load ptr, ptr %t475, !tbaa !27
  %t477 = load i64, ptr %l176, !tbaa !24
  %t478 = getelementptr i8, ptr %t476, i64 0
  %t479 = sub i64 %t477, 0
  %t480 = insertvalue { i64, ptr } undef, i64 %t479, 0
  %t481 = insertvalue { i64, ptr } %t480, ptr %t478, 1
  store { i64, ptr } %t481, ptr %l181, !tbaa !27
  %t482 = call i32 @getpid()
  store i32 %t482, ptr %l182
  br label %bb110
bb109:
  call void @__olang_check_failed(ptr @olang_loc_d790d12bf07ae06c_96ebe5e6b28bd688)
  unreachable
bb110:
  %t483 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t484 = extractvalue { i64, ptr } %t483, 1
  %t485 = extractvalue { i64, ptr } %t483, 0
  %t486 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t487 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t488 = add i64 %t485, %t487
  %t489 = load i32, ptr %l182, !tbaa !23
  %t490 = sext i32 %t489 to i64
  %t491 = call i64 @__olang_fmt_i64(ptr null, i64 %t490)
  %t492 = add i64 %t488, %t491
  %t493 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t494 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t495 = add i64 %t492, %t494
  %t496 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t495)
  call void @olang_textcopy(ptr %t496, ptr %t484, i64 %t485)
  %t497 = getelementptr i8, ptr %t496, i64 %t485
  call void @olang_textcopy(ptr %t497, ptr %t486, i64 %t487)
  %t498 = getelementptr i8, ptr %t497, i64 %t487
  %t499 = call i64 @__olang_fmt_i64(ptr %t498, i64 %t490)
  %t500 = getelementptr i8, ptr %t498, i64 %t491
  call void @olang_textcopy(ptr %t500, ptr %t493, i64 %t494)
  %t501 = insertvalue { i64, ptr } undef, i64 %t495, 0
  %t502 = insertvalue { i64, ptr } %t501, ptr %t496, 1
  store { i64, ptr } %t502, ptr %l15, !tbaa !27
  %t504 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t506 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v3, ptr %s0, { i64, ptr } %t504, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d169, i32 0, i32 1) })
  store i1 %t506, ptr %l185
  br label %bb111
bb111:
  %t507 = load i1, ptr %l185, !tbaa !21
  br i1 %t507, label %bb112, label %bb113
bb112:
  store i1 true, ptr %l186, !tbaa !21
  br label %bb115
bb113:
  %t508 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d170, i32 0, i32 1) }, ptr %l189, !tbaa !27
  %t511 = load { i64, ptr }, ptr %l189, !tbaa !27
  %t512 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v3, ptr %s0, { i64, ptr } %t508, { i64, ptr } %t511)
  store i1 %t512, ptr %l190
  br label %bb114
bb114:
  %t513 = load i1, ptr %l190, !tbaa !21
  store i1 %t513, ptr %l186, !tbaa !21
  br label %bb115
bb115:
  %t514 = load i1, ptr %l186, !tbaa !21
  br i1 %t514, label %bb116, label %bb117
bb116:
  %t517 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t519 = extractvalue { i64, ptr } %t517, 1
  %t520 = extractvalue { i64, ptr } %t517, 0
  %t521 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t520)
  call void @olang_textcopy(ptr %t521, ptr %t519, i64 %t520)
  %t522 = insertvalue { i64, ptr } undef, i64 %t520, 0
  %t523 = insertvalue { i64, ptr } %t522, ptr %t521, 1
  store { i64, ptr } %t523, ptr %l192, !tbaa !27
  br label %bb119
bb117:
  %t525 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t527 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %s0, ptr %s0, { i64, ptr } %t525)
  store { i64, ptr } %t527, ptr %l196
  br label %bb118
bb118:
  %t528 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t529 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t530 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  %t531 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t532 = extractvalue { i64, ptr } %t531, 1
  %t533 = extractvalue { i64, ptr } %t531, 0
  %t534 = add i64 %t530, %t533
  %t535 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d172, i32 0, i32 1) }, 1
  %t536 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d172, i32 0, i32 1) }, 0
  %t537 = add i64 %t534, %t536
  %t539 = extractvalue { i64, ptr } %t528, 1
  %t540 = extractvalue { i64, ptr } %t528, 0
  %t541 = add i64 %t537, %t540
  %t542 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t541)
  call void @olang_textcopy(ptr %t542, ptr %t529, i64 %t530)
  %t543 = getelementptr i8, ptr %t542, i64 %t530
  call void @olang_textcopy(ptr %t543, ptr %t532, i64 %t533)
  %t544 = getelementptr i8, ptr %t543, i64 %t533
  call void @olang_textcopy(ptr %t544, ptr %t535, i64 %t536)
  %t545 = getelementptr i8, ptr %t544, i64 %t536
  call void @olang_textcopy(ptr %t545, ptr %t539, i64 %t540)
  %t546 = insertvalue { i64, ptr } undef, i64 %t541, 0
  %t547 = insertvalue { i64, ptr } %t546, ptr %t542, 1
  store { i64, ptr } %t547, ptr %l192, !tbaa !27
  br label %bb119
bb119:
  %t549 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t550 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t554 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t550, { i64, ptr } %t549)
  store i32 %t554, ptr %l201
  %t555 = icmp ne i32 %t554, 0
  br i1 %t555, label %bb121, label %ok.556, !prof !99
ok.556:
  br label %bb120
bb120:
  br label %bb127
bb121:
  %t557 = load i32, ptr %l201, !tbaa !23
  %t558 = ashr i32 %t557, 16
  %t560 = icmp eq i32 %t558, 1
  store i1 %t560, ptr %l203, !tbaa !21
  %t561 = load i32, ptr %l201, !tbaa !23
  %t562 = ashr i32 %t561, 16
  %t564 = icmp eq i32 %t562, 1
  br i1 %t564, label %bb122, label %bb123
bb122:
  call void @__olang_errpay_pop()
  br label %bb123
bb123:
  br label %bb124
bb124:
  store %olang.scope zeroinitializer, ptr %s17
  %t566 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t566, ptr %l206, !tbaa !27
  %t567 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %s17)
  store %"compiler/diagmsg:Msg" %t567, ptr %l207
  br label %bb125
bb125:
  %t568 = load ptr, ptr %l5, !tbaa !29
  %t569 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t570 = load %"compiler/diagmsg:Msg", ptr %l207
  call void @compiler_2fbuild_2efileFatal(ptr %s0, ptr %s17, ptr %v4, { i64, ptr } %t569, %"compiler/diagmsg:Msg" %t570, ptr %t568)
  br label %bb126
bb126:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  %t573 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t573, ptr %rv
  br label %ret
bb127:
  %t574 = load ptr, ptr %l0, !tbaa !29
  %t576 = getelementptr %"compiler/build:Config", ptr %t574, i32 0, i32 1
  %t577 = load { i64, ptr }, ptr %t576, !tbaa !27
  %t579 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t577, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d173, i32 0, i32 1) })
  store i1 %t579, ptr %l212
  br label %bb128
bb128:
  %t580 = load i1, ptr %l212, !tbaa !21
  br i1 %t580, label %bb129, label %bb130
bb129:
  store %olang.scope zeroinitializer, ptr %s18
  %t581 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t582 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t585 = call i32 @std_2fos_2eRename(ptr %s0, ptr %s0, { i64, ptr } %t581, { i64, ptr } %t582)
  store i32 %t585, ptr %l215
  %t586 = icmp ne i32 %t585, 0
  br i1 %t586, label %bb132, label %ok.587, !prof !99
ok.587:
  br label %bb131
bb130:
  br label %bb139
bb131:
  br label %bb136
bb132:
  %t588 = load i32, ptr %l215, !tbaa !23
  %t589 = ashr i32 %t588, 16
  %t591 = icmp eq i32 %t589, 1
  store i1 %t591, ptr %l217, !tbaa !21
  %t592 = load i32, ptr %l215, !tbaa !23
  %t593 = ashr i32 %t592, 16
  %t595 = icmp eq i32 %t593, 1
  br i1 %t595, label %bb133, label %bb134
bb133:
  call void @__olang_errpay_pop()
  br label %bb134
bb134:
  br label %bb135
bb135:
  br label %bb136
bb136:
  %t597 = load ptr, ptr %l5, !tbaa !29
  store ptr %t597, ptr %l220, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t598
  %t599 = getelementptr { i64, [3 x i64] }, ptr %t598, i32 0, i32 0
  store i64 0, ptr %t599
  %t600 = load { i64, [3 x i64] }, ptr %t598
  store { i64, [3 x i64] } %t600, ptr %l221
  %t601 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t603 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoClang(ptr %s0, ptr %s18, { i64, ptr } %t601)
  store %"compiler/diagmsg:Msg" %t603, ptr %l223
  br label %bb137
bb137:
  %t604 = load ptr, ptr %l220, !tbaa !29
  %t605 = load { i64, [3 x i64] }, ptr %l221
  %t606 = load %"compiler/diagmsg:Msg", ptr %l223
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v4, ptr %s18, ptr %t604, { i64, [3 x i64] } %t605, %"compiler/diagmsg:Msg" %t606)
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s0)
  %t608 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t608, ptr %rv
  br label %ret
bb139:
  %t609 = load ptr, ptr %lp9
  %t610 = load { i64, ptr }, ptr %t609, !tbaa !27
  store { i64, ptr } %t610, ptr %l225, !tbaa !27
  %t611 = call i32 @getpid()
  store i32 %t611, ptr %l226
  br label %bb140
bb140:
  %t612 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t613 = extractvalue { i64, ptr } %t612, 1
  %t614 = extractvalue { i64, ptr } %t612, 0
  %t615 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t616 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  %t617 = add i64 %t614, %t616
  %t618 = load i32, ptr %l226, !tbaa !23
  %t619 = sext i32 %t618 to i64
  %t620 = call i64 @__olang_fmt_i64(ptr null, i64 %t619)
  %t621 = add i64 %t617, %t620
  %t622 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t623 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
  %t624 = add i64 %t621, %t623
  %t625 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t624)
  call void @olang_textcopy(ptr %t625, ptr %t613, i64 %t614)
  %t626 = getelementptr i8, ptr %t625, i64 %t614
  call void @olang_textcopy(ptr %t626, ptr %t615, i64 %t616)
  %t627 = getelementptr i8, ptr %t626, i64 %t616
  %t628 = call i64 @__olang_fmt_i64(ptr %t627, i64 %t619)
  %t629 = getelementptr i8, ptr %t627, i64 %t620
  call void @olang_textcopy(ptr %t629, ptr %t622, i64 %t623)
  %t630 = insertvalue { i64, ptr } undef, i64 %t624, 0
  %t631 = insertvalue { i64, ptr } %t630, ptr %t625, 1
  store { i64, ptr } %t631, ptr %l18, !tbaa !27
  %t633 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t633, ptr %l228
  br label %bb141
bb141:
  %t634 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l228
  %t635 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t634, ptr %t635
  store ptr %t635, ptr %l19, !tbaa !29
  %t637 = load ptr, ptr %l19, !tbaa !29
  store ptr %t637, ptr %l230, !tbaa !29
  %t638 = ptrtoint ptr %v1 to i64
  store i64 %t638, ptr %l231, !tbaa !24
  %t639 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t639, label %bb142, label %bb143
bb142:
  %t641 = call ptr @__olang_region_make(ptr %v1)
  %t642 = ptrtoint ptr %t641 to i64
  store i64 %t642, ptr %l231, !tbaa !24
  br label %bb143
bb143:
  %t643 = load ptr, ptr %l0, !tbaa !29
  %t645 = getelementptr %"compiler/build:Config", ptr %t643, i32 0, i32 1
  %t646 = load { i64, ptr }, ptr %t645, !tbaa !27
  %t648 = extractvalue { i64, ptr } %t646, 1
  %t649 = extractvalue { i64, ptr } %t646, 0
  %t650 = load i64, ptr %l231
  %t651 = inttoptr i64 %t650 to ptr
  %t652 = call ptr @__olang_scope_alloc(ptr %t651, i64 %t649)
  call void @olang_textcopy(ptr %t652, ptr %t648, i64 %t649)
  %t653 = insertvalue { i64, ptr } undef, i64 %t649, 0
  %t654 = insertvalue { i64, ptr } %t653, ptr %t652, 1
  %t656 = load i64, ptr %l231
  %t657 = inttoptr i64 %t656 to ptr
  %t658 = extractvalue { i64, ptr } %t654, 0
  %t659 = extractvalue { i64, ptr } %t654, 1
  %t660 = mul i64 %t658, 1
  %t661 = call ptr @__olang_scope_alloc(ptr %t657, i64 %t660)
  call void @llvm.memcpy.p0.p0.i64(ptr %t661, ptr %t659, i64 %t660, i1 false)
  %t662 = insertvalue { i64, ptr } undef, i64 %t658, 0
  %t663 = insertvalue { i64, ptr } %t662, ptr %t661, 1
  %t664 = load ptr, ptr %l230, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t664, { i64, ptr } %t663)
  br label %bb144
bb144:
  store ptr %l8, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb145
bb145:
  %t667 = load i64, ptr %l21, !tbaa !24
  store i64 %t667, ptr %l238, !tbaa !24
  %t668 = load ptr, ptr %l20, !tbaa !29
  %t670 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t668)
  store i64 %t670, ptr %l240
  br label %bb146
bb146:
  %t671 = load i64, ptr %l238, !tbaa !24
  %t672 = load i64, ptr %l240, !tbaa !24
  %t673 = icmp slt i64 %t671, %t672
  %t675 = xor i1 %t673, true
  br i1 %t675, label %bb147, label %bb148
bb147:
  br label %bb155
bb148:
  br label %bb149
bb149:
  %t677 = load ptr, ptr %l20, !tbaa !29
  %t678 = load i64, ptr %l21, !tbaa !24
  %t681 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t677, i64 %t678)
  store { i64, ptr } %t681, ptr %l245
  br label %bb150
bb150:
  %t682 = load { i64, ptr }, ptr %l245, !tbaa !27
  store { i64, ptr } %t682, ptr %l22, !tbaa !27
  %t683 = load ptr, ptr %l19, !tbaa !29
  store ptr %t683, ptr %l246, !tbaa !29
  %t684 = ptrtoint ptr %v1 to i64
  store i64 %t684, ptr %l247, !tbaa !24
  %t685 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t685, label %bb151, label %bb152
bb151:
  %t687 = call ptr @__olang_region_make(ptr %v1)
  %t688 = ptrtoint ptr %t687 to i64
  store i64 %t688, ptr %l247, !tbaa !24
  br label %bb152
bb152:
  %t689 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t691 = extractvalue { i64, ptr } %t689, 1
  %t692 = extractvalue { i64, ptr } %t689, 0
  %t693 = load i64, ptr %l247
  %t694 = inttoptr i64 %t693 to ptr
  %t695 = call ptr @__olang_scope_alloc(ptr %t694, i64 %t692)
  call void @olang_textcopy(ptr %t695, ptr %t691, i64 %t692)
  %t696 = insertvalue { i64, ptr } undef, i64 %t692, 0
  %t697 = insertvalue { i64, ptr } %t696, ptr %t695, 1
  %t699 = load i64, ptr %l247
  %t700 = inttoptr i64 %t699 to ptr
  %t701 = extractvalue { i64, ptr } %t697, 0
  %t702 = extractvalue { i64, ptr } %t697, 1
  %t703 = mul i64 %t701, 1
  %t704 = call ptr @__olang_scope_alloc(ptr %t700, i64 %t703)
  call void @llvm.memcpy.p0.p0.i64(ptr %t704, ptr %t702, i64 %t703, i1 false)
  %t705 = insertvalue { i64, ptr } undef, i64 %t701, 0
  %t706 = insertvalue { i64, ptr } %t705, ptr %t704, 1
  %t707 = load ptr, ptr %l246, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t707, { i64, ptr } %t706)
  br label %bb153
bb153:
  br label %bb154
bb154:
  %t709 = load i64, ptr %l21, !tbaa !24
  %t711 = add i64 %t709, 1
  store i64 %t711, ptr %l21, !tbaa !24
  br label %bb145
bb155:
  %t713 = load ptr, ptr %l19, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t713, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d176, i32 0, i32 1) })
  br label %bb156
bb156:
  %t715 = load ptr, ptr %l19, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t715, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d177, i32 0, i32 1) })
  br label %bb157
bb157:
  %t717 = load ptr, ptr %l19, !tbaa !29
  store ptr %t717, ptr %l256, !tbaa !29
  %t718 = ptrtoint ptr %v1 to i64
  store i64 %t718, ptr %l257, !tbaa !24
  %t719 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t719, label %bb158, label %bb159
bb158:
  %t721 = call ptr @__olang_region_make(ptr %v1)
  %t722 = ptrtoint ptr %t721 to i64
  store i64 %t722, ptr %l257, !tbaa !24
  br label %bb159
bb159:
  %t723 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t725 = extractvalue { i64, ptr } %t723, 1
  %t726 = extractvalue { i64, ptr } %t723, 0
  %t727 = load i64, ptr %l257
  %t728 = inttoptr i64 %t727 to ptr
  %t729 = call ptr @__olang_scope_alloc(ptr %t728, i64 %t726)
  call void @olang_textcopy(ptr %t729, ptr %t725, i64 %t726)
  %t730 = insertvalue { i64, ptr } undef, i64 %t726, 0
  %t731 = insertvalue { i64, ptr } %t730, ptr %t729, 1
  %t733 = load i64, ptr %l257
  %t734 = inttoptr i64 %t733 to ptr
  %t735 = extractvalue { i64, ptr } %t731, 0
  %t736 = extractvalue { i64, ptr } %t731, 1
  %t737 = mul i64 %t735, 1
  %t738 = call ptr @__olang_scope_alloc(ptr %t734, i64 %t737)
  call void @llvm.memcpy.p0.p0.i64(ptr %t738, ptr %t736, i64 %t737, i1 false)
  %t739 = insertvalue { i64, ptr } undef, i64 %t735, 0
  %t740 = insertvalue { i64, ptr } %t739, ptr %t738, 1
  %t741 = load ptr, ptr %l256, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t741, { i64, ptr } %t740)
  br label %bb160
bb160:
  %t743 = load ptr, ptr %l19, !tbaa !29
  store ptr %t743, ptr %l262, !tbaa !29
  %t744 = ptrtoint ptr %v1 to i64
  store i64 %t744, ptr %l263, !tbaa !24
  %t745 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t745, label %bb161, label %bb162
bb161:
  %t747 = call ptr @__olang_region_make(ptr %v1)
  %t748 = ptrtoint ptr %t747 to i64
  store i64 %t748, ptr %l263, !tbaa !24
  br label %bb162
bb162:
  %t749 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t751 = extractvalue { i64, ptr } %t749, 1
  %t752 = extractvalue { i64, ptr } %t749, 0
  %t753 = load i64, ptr %l263
  %t754 = inttoptr i64 %t753 to ptr
  %t755 = call ptr @__olang_scope_alloc(ptr %t754, i64 %t752)
  call void @olang_textcopy(ptr %t755, ptr %t751, i64 %t752)
  %t756 = insertvalue { i64, ptr } undef, i64 %t752, 0
  %t757 = insertvalue { i64, ptr } %t756, ptr %t755, 1
  %t759 = load i64, ptr %l263
  %t760 = inttoptr i64 %t759 to ptr
  %t761 = extractvalue { i64, ptr } %t757, 0
  %t762 = extractvalue { i64, ptr } %t757, 1
  %t763 = mul i64 %t761, 1
  %t764 = call ptr @__olang_scope_alloc(ptr %t760, i64 %t763)
  call void @llvm.memcpy.p0.p0.i64(ptr %t764, ptr %t762, i64 %t763, i1 false)
  %t765 = insertvalue { i64, ptr } undef, i64 %t761, 0
  %t766 = insertvalue { i64, ptr } %t765, ptr %t764, 1
  %t767 = load ptr, ptr %l262, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t767, { i64, ptr } %t766)
  br label %bb163
bb163:
  %t769 = load i1, ptr %l10, !tbaa !21
  br i1 %t769, label %bb164, label %bb165
bb164:
  %t771 = load ptr, ptr %l19, !tbaa !29
  store ptr %t771, ptr %l269, !tbaa !29
  %t772 = ptrtoint ptr %v1 to i64
  store i64 %t772, ptr %l270, !tbaa !24
  %t773 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t773, label %bb166, label %bb167
bb165:
  br label %bb169
bb166:
  %t775 = call ptr @__olang_region_make(ptr %v1)
  %t776 = ptrtoint ptr %t775 to i64
  store i64 %t776, ptr %l270, !tbaa !24
  br label %bb167
bb167:
  %t777 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t778 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t779 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  %t781 = extractvalue { i64, ptr } %t777, 1
  %t782 = extractvalue { i64, ptr } %t777, 0
  %t783 = add i64 %t779, %t782
  %t784 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t785 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t786 = add i64 %t783, %t785
  %t787 = load i64, ptr %l270
  %t788 = inttoptr i64 %t787 to ptr
  %t789 = call ptr @__olang_scope_alloc(ptr %t788, i64 %t786)
  call void @olang_textcopy(ptr %t789, ptr %t778, i64 %t779)
  %t790 = getelementptr i8, ptr %t789, i64 %t779
  call void @olang_textcopy(ptr %t790, ptr %t781, i64 %t782)
  %t791 = getelementptr i8, ptr %t790, i64 %t782
  call void @olang_textcopy(ptr %t791, ptr %t784, i64 %t785)
  %t792 = insertvalue { i64, ptr } undef, i64 %t786, 0
  %t793 = insertvalue { i64, ptr } %t792, ptr %t789, 1
  %t795 = load i64, ptr %l270
  %t796 = inttoptr i64 %t795 to ptr
  %t797 = extractvalue { i64, ptr } %t793, 0
  %t798 = extractvalue { i64, ptr } %t793, 1
  %t799 = mul i64 %t797, 1
  %t800 = call ptr @__olang_scope_alloc(ptr %t796, i64 %t799)
  call void @llvm.memcpy.p0.p0.i64(ptr %t800, ptr %t798, i64 %t799, i1 false)
  %t801 = insertvalue { i64, ptr } undef, i64 %t797, 0
  %t802 = insertvalue { i64, ptr } %t801, ptr %t800, 1
  %t803 = load ptr, ptr %l269, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t803, { i64, ptr } %t802)
  br label %bb168
bb168:
  br label %bb169
bb169:
  %t805 = load ptr, ptr %l1, !tbaa !29
  %t807 = getelementptr %"compiler/build:compiles", ptr %t805, i32 0, i32 0
  store ptr %t807, ptr %l276, !tbaa !29
  %t808 = ptrtoint ptr %v1 to i64
  store i64 %t808, ptr %l277, !tbaa !24
  %t809 = load i1, ptr @olang_2esole_2eArray_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2e_2d1
  br i1 %t809, label %bb170, label %bb171
bb170:
  %t811 = call ptr @__olang_region_make(ptr %v1)
  %t812 = ptrtoint ptr %t811 to i64
  store i64 %t812, ptr %l277, !tbaa !24
  br label %bb171
bb171:
  %t813 = load ptr, ptr %l19, !tbaa !29
  %t814 = load i64, ptr %l277
  %t815 = inttoptr i64 %t814 to ptr
  %t817 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %t815, ptr %t813)
  store { i64, ptr } %t817, ptr %l280
  br label %bb172
bb172:
  %t818 = load ptr, ptr %l276, !tbaa !29
  %t819 = load { i64, ptr }, ptr %l280, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %v1, ptr %v1, ptr %t818, { i64, ptr } %t819)
  br label %bb173
bb173:
  %t820 = load ptr, ptr %l1, !tbaa !29
  %t822 = getelementptr %"compiler/build:compiles", ptr %t820, i32 0, i32 1
  store ptr %t822, ptr %l282, !tbaa !29
  %t823 = ptrtoint ptr %v1 to i64
  store i64 %t823, ptr %l283, !tbaa !24
  %t824 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t824, label %bb174, label %bb175
bb174:
  %t826 = call ptr @__olang_region_make(ptr %v1)
  %t827 = ptrtoint ptr %t826 to i64
  store i64 %t827, ptr %l283, !tbaa !24
  br label %bb175
bb175:
  %t828 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t830 = extractvalue { i64, ptr } %t828, 1
  %t831 = extractvalue { i64, ptr } %t828, 0
  %t832 = load i64, ptr %l283
  %t833 = inttoptr i64 %t832 to ptr
  %t834 = call ptr @__olang_scope_alloc(ptr %t833, i64 %t831)
  call void @olang_textcopy(ptr %t834, ptr %t830, i64 %t831)
  %t835 = insertvalue { i64, ptr } undef, i64 %t831, 0
  %t836 = insertvalue { i64, ptr } %t835, ptr %t834, 1
  %t838 = load i64, ptr %l283
  %t839 = inttoptr i64 %t838 to ptr
  %t840 = extractvalue { i64, ptr } %t836, 0
  %t841 = extractvalue { i64, ptr } %t836, 1
  %t842 = mul i64 %t840, 1
  %t843 = call ptr @__olang_scope_alloc(ptr %t839, i64 %t842)
  call void @llvm.memcpy.p0.p0.i64(ptr %t843, ptr %t841, i64 %t842, i1 false)
  %t844 = insertvalue { i64, ptr } undef, i64 %t840, 0
  %t845 = insertvalue { i64, ptr } %t844, ptr %t843, 1
  %t846 = load ptr, ptr %l282, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t846, { i64, ptr } %t845)
  br label %bb176
bb176:
  %t848 = load ptr, ptr %l1, !tbaa !29
  %t850 = getelementptr %"compiler/build:compiles", ptr %t848, i32 0, i32 5
  store ptr %t850, ptr %l289, !tbaa !29
  %t851 = ptrtoint ptr %v1 to i64
  store i64 %t851, ptr %l290, !tbaa !24
  %t852 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t852, label %bb177, label %bb178
bb177:
  %t854 = call ptr @__olang_region_make(ptr %v1)
  %t855 = ptrtoint ptr %t854 to i64
  store i64 %t855, ptr %l290, !tbaa !24
  br label %bb178
bb178:
  %t856 = load i1, ptr %l10, !tbaa !21
  br i1 %t856, label %bb179, label %bb180
bb179:
  %t858 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t860 = extractvalue { i64, ptr } %t858, 1
  %t861 = extractvalue { i64, ptr } %t858, 0
  %t862 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t863 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t864 = add i64 %t861, %t863
  %t865 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t864)
  call void @olang_textcopy(ptr %t865, ptr %t860, i64 %t861)
  %t866 = getelementptr i8, ptr %t865, i64 %t861
  call void @olang_textcopy(ptr %t866, ptr %t862, i64 %t863)
  %t867 = insertvalue { i64, ptr } undef, i64 %t864, 0
  %t868 = insertvalue { i64, ptr } %t867, ptr %t865, 1
  store { i64, ptr } %t868, ptr %l293, !tbaa !27
  br label %bb181
bb180:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d181, i32 0, i32 1) }, ptr %l296, !tbaa !27
  %t870 = load { i64, ptr }, ptr %l296, !tbaa !27
  store { i64, ptr } %t870, ptr %l293, !tbaa !27
  br label %bb181
bb181:
  %t872 = load { i64, ptr }, ptr %l293, !tbaa !27
  %t873 = load i64, ptr %l290
  %t874 = inttoptr i64 %t873 to ptr
  %t875 = extractvalue { i64, ptr } %t872, 0
  %t876 = extractvalue { i64, ptr } %t872, 1
  %t877 = mul i64 %t875, 1
  %t878 = call ptr @__olang_scope_alloc(ptr %t874, i64 %t877)
  call void @llvm.memcpy.p0.p0.i64(ptr %t878, ptr %t876, i64 %t877, i1 false)
  %t879 = insertvalue { i64, ptr } undef, i64 %t875, 0
  %t880 = insertvalue { i64, ptr } %t879, ptr %t878, 1
  %t881 = load ptr, ptr %l289, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t881, { i64, ptr } %t880)
  br label %bb182
bb182:
  %t883 = load ptr, ptr %l1, !tbaa !29
  %t885 = getelementptr %"compiler/build:compiles", ptr %t883, i32 0, i32 2
  store ptr %t885, ptr %l300, !tbaa !29
  %t886 = ptrtoint ptr %v1 to i64
  store i64 %t886, ptr %l301, !tbaa !24
  %t887 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t887, label %bb183, label %bb184
bb183:
  %t889 = call ptr @__olang_region_make(ptr %v1)
  %t890 = ptrtoint ptr %t889 to i64
  store i64 %t890, ptr %l301, !tbaa !24
  br label %bb184
bb184:
  %t891 = load ptr, ptr %lp9
  %t892 = load { i64, ptr }, ptr %t891, !tbaa !27
  %t894 = extractvalue { i64, ptr } %t892, 1
  %t895 = extractvalue { i64, ptr } %t892, 0
  %t896 = load i64, ptr %l301
  %t897 = inttoptr i64 %t896 to ptr
  %t898 = call ptr @__olang_scope_alloc(ptr %t897, i64 %t895)
  call void @olang_textcopy(ptr %t898, ptr %t894, i64 %t895)
  %t899 = insertvalue { i64, ptr } undef, i64 %t895, 0
  %t900 = insertvalue { i64, ptr } %t899, ptr %t898, 1
  %t902 = load i64, ptr %l301
  %t903 = inttoptr i64 %t902 to ptr
  %t904 = extractvalue { i64, ptr } %t900, 0
  %t905 = extractvalue { i64, ptr } %t900, 1
  %t906 = mul i64 %t904, 1
  %t907 = call ptr @__olang_scope_alloc(ptr %t903, i64 %t906)
  call void @llvm.memcpy.p0.p0.i64(ptr %t907, ptr %t905, i64 %t906, i1 false)
  %t908 = insertvalue { i64, ptr } undef, i64 %t904, 0
  %t909 = insertvalue { i64, ptr } %t908, ptr %t907, 1
  %t910 = load ptr, ptr %l300, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t910, { i64, ptr } %t909)
  br label %bb185
bb185:
  %t912 = load ptr, ptr %l1, !tbaa !29
  %t914 = getelementptr %"compiler/build:compiles", ptr %t912, i32 0, i32 3
  store ptr %t914, ptr %l307, !tbaa !29
  %t915 = ptrtoint ptr %v1 to i64
  store i64 %t915, ptr %l308, !tbaa !24
  %t916 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t916, label %bb186, label %bb187
bb186:
  %t918 = call ptr @__olang_region_make(ptr %v1)
  %t919 = ptrtoint ptr %t918 to i64
  store i64 %t919, ptr %l308, !tbaa !24
  br label %bb187
bb187:
  %t920 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t922 = extractvalue { i64, ptr } %t920, 1
  %t923 = extractvalue { i64, ptr } %t920, 0
  %t924 = load i64, ptr %l308
  %t925 = inttoptr i64 %t924 to ptr
  %t926 = call ptr @__olang_scope_alloc(ptr %t925, i64 %t923)
  call void @olang_textcopy(ptr %t926, ptr %t922, i64 %t923)
  %t927 = insertvalue { i64, ptr } undef, i64 %t923, 0
  %t928 = insertvalue { i64, ptr } %t927, ptr %t926, 1
  %t930 = load i64, ptr %l308
  %t931 = inttoptr i64 %t930 to ptr
  %t932 = extractvalue { i64, ptr } %t928, 0
  %t933 = extractvalue { i64, ptr } %t928, 1
  %t934 = mul i64 %t932, 1
  %t935 = call ptr @__olang_scope_alloc(ptr %t931, i64 %t934)
  call void @llvm.memcpy.p0.p0.i64(ptr %t935, ptr %t933, i64 %t934, i1 false)
  %t936 = insertvalue { i64, ptr } undef, i64 %t932, 0
  %t937 = insertvalue { i64, ptr } %t936, ptr %t935, 1
  %t938 = load ptr, ptr %l307, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t938, { i64, ptr } %t937)
  br label %bb188
bb188:
  %t940 = load ptr, ptr %l1, !tbaa !29
  %t942 = getelementptr %"compiler/build:compiles", ptr %t940, i32 0, i32 4
  store ptr %t942, ptr %l314, !tbaa !29
  %t943 = ptrtoint ptr %v1 to i64
  store i64 %t943, ptr %l315, !tbaa !24
  %t944 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t944, label %bb189, label %bb190
bb189:
  %t946 = call ptr @__olang_region_make(ptr %v1)
  %t947 = ptrtoint ptr %t946 to i64
  store i64 %t947, ptr %l315, !tbaa !24
  br label %bb190
bb190:
  %t948 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t950 = extractvalue { i64, ptr } %t948, 1
  %t951 = extractvalue { i64, ptr } %t948, 0
  %t952 = load i64, ptr %l315
  %t953 = inttoptr i64 %t952 to ptr
  %t954 = call ptr @__olang_scope_alloc(ptr %t953, i64 %t951)
  call void @olang_textcopy(ptr %t954, ptr %t950, i64 %t951)
  %t955 = insertvalue { i64, ptr } undef, i64 %t951, 0
  %t956 = insertvalue { i64, ptr } %t955, ptr %t954, 1
  %t958 = load i64, ptr %l315
  %t959 = inttoptr i64 %t958 to ptr
  %t960 = extractvalue { i64, ptr } %t956, 0
  %t961 = extractvalue { i64, ptr } %t956, 1
  %t962 = mul i64 %t960, 1
  %t963 = call ptr @__olang_scope_alloc(ptr %t959, i64 %t962)
  call void @llvm.memcpy.p0.p0.i64(ptr %t963, ptr %t961, i64 %t962, i1 false)
  %t964 = insertvalue { i64, ptr } undef, i64 %t960, 0
  %t965 = insertvalue { i64, ptr } %t964, ptr %t963, 1
  %t966 = load ptr, ptr %l314, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t966, { i64, ptr } %t965)
  br label %bb191
bb191:
  %t968 = load ptr, ptr %l1, !tbaa !29
  %t970 = getelementptr %"compiler/build:compiles", ptr %t968, i32 0, i32 6
  %t971 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t973 = extractvalue { i64, ptr } %t971, 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t970, i64 %t973)
  br label %bb192
bb192:
  %t976 = load ptr, ptr %lp9
  %t977 = load { i64, ptr }, ptr %t976, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t979 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t977, 1
  store { i32, { i64, ptr } } %t979, ptr %rv
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
  %l2 = alloca { i64, ptr }
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
  %l60 = alloca ptr
  %l61 = alloca i64
  %l68 = alloca i1
  %l71 = alloca i32
  %l73 = alloca i1
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = extractvalue { i64, ptr } %a1, 1
  %t4 = extractvalue { i64, ptr } %a1, 0
  %t5 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  store { i64, ptr } %t11, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  store i64 2, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb1, label %bb2
bb1:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb6
bb3:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l18, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb5
bb5:
  %t39 = load i64, ptr %l18, !tbaa !24
  store i64 %t39, ptr %l15, !tbaa !24
  br label %bb6
bb6:
  %t40 = load i64, ptr %l15, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb8, label %bb9
bb8:
  br label %bb46
bb9:
  br label %bb10
bb10:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l8, !tbaa !24
  store i1 true, ptr %l9, !tbaa !21
  %t59 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t61 = call i32 @std_2fos_2eMkDir(ptr %s0, { i64, ptr } %t59)
  store i32 %t61, ptr %l37
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb12, label %ok.63, !prof !99
ok.63:
  br label %bb11
bb11:
  br label %bb21
bb12:
  %t64 = load i32, ptr %l37, !tbaa !23
  %t65 = icmp eq i32 %t64, 65537
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load i32, ptr %l37, !tbaa !23
  %t68 = ashr i32 %t67, 16
  %t70 = icmp eq i32 %t68, 1
  br i1 %t70, label %bb15, label %bb16
bb14:
  %t72 = load i32, ptr %l37, !tbaa !23
  %t73 = ashr i32 %t72, 16
  %t75 = icmp eq i32 %t73, 1
  store i1 %t75, ptr %l42, !tbaa !21
  %t76 = load i32, ptr %l37, !tbaa !23
  %t77 = ashr i32 %t76, 16
  %t79 = icmp eq i32 %t77, 1
  br i1 %t79, label %bb18, label %bb19
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
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb21:
  %t82 = load i1, ptr %l9, !tbaa !21
  br i1 %t82, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s6
  %t84 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 1
  %t87 = extractvalue { i64, ptr } %t84, 0
  %t88 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t90 = add i64 %t87, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t86, i64 %t87)
  %t92 = getelementptr i8, ptr %t91, i64 %t87
  call void @olang_textcopy(ptr %t92, ptr %t88, i64 %t89)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t91, 1
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t97 = extractvalue { i64, ptr } %t94, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  store { i64, ptr } %t101, ptr %l49, !tbaa !27
  %t102 = call i32 @getpid()
  store i32 %t102, ptr %l50
  br label %bb24
bb23:
  br label %bb34
bb24:
  %t103 = load i32, ptr %l50, !tbaa !23
  %t104 = sext i32 %t103 to i64
  %t105 = call i64 @__olang_fmt_i64(ptr null, i64 %t104)
  %t106 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t105)
  %t107 = call i64 @__olang_fmt_i64(ptr %t106, i64 %t104)
  %t108 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t106, 1
  %t112 = extractvalue { i64, ptr } %t109, 0
  %t113 = extractvalue { i64, ptr } %t109, 1
  %t114 = mul i64 %t112, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t114)
  call void @llvm.memcpy.p0.p0.i64(ptr %t115, ptr %t113, i64 %t114, i1 false)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t118 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t120 = call i32 @std_2fos_2eWriteFile(ptr %s6, ptr %s6, { i64, ptr } %t118, { i64, ptr } %t117)
  store i32 %t120, ptr %l54
  %t121 = icmp ne i32 %t120, 0
  br i1 %t121, label %bb26, label %ok.122, !prof !99
ok.122:
  br label %bb25
bb25:
  br label %bb30
bb26:
  %t123 = load i32, ptr %l54, !tbaa !23
  %t124 = ashr i32 %t123, 16
  %t126 = icmp eq i32 %t124, 1
  store i1 %t126, ptr %l56, !tbaa !21
  %t127 = load i32, ptr %l54, !tbaa !23
  %t128 = ashr i32 %t127, 16
  %t130 = icmp eq i32 %t128, 1
  br i1 %t130, label %bb27, label %bb28
bb27:
  call void @__olang_errpay_pop()
  br label %bb28
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t134 = getelementptr %"compiler/build:compiles", ptr %a0, i32 0, i32 7
  store ptr %t134, ptr %l60, !tbaa !29
  %t135 = ptrtoint ptr %v0 to i64
  store i64 %t135, ptr %l61, !tbaa !24
  %t136 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t136, label %bb31, label %bb32
bb31:
  %t138 = call ptr @__olang_region_make(ptr %v0)
  %t139 = ptrtoint ptr %t138 to i64
  store i64 %t139, ptr %l61, !tbaa !24
  br label %bb32
bb32:
  %t140 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 1
  %t143 = extractvalue { i64, ptr } %t140, 0
  %t144 = load i64, ptr %l61
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = call ptr @__olang_scope_alloc(ptr %t145, i64 %t143)
  call void @olang_textcopy(ptr %t146, ptr %t142, i64 %t143)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t150 = load i64, ptr %l61
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = extractvalue { i64, ptr } %t148, 0
  %t153 = extractvalue { i64, ptr } %t148, 1
  %t154 = mul i64 %t152, 1
  %t155 = call ptr @__olang_scope_alloc(ptr %t151, i64 %t154)
  call void @llvm.memcpy.p0.p0.i64(ptr %t155, ptr %t153, i64 %t154, i1 false)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  %t158 = load ptr, ptr %l60, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t158, { i64, ptr } %t157)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb34:
  %t161 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t163 = call i1 @compiler_2fbuild_2eholderAlive(ptr %s0, { i64, ptr } %t161)
  store i1 %t163, ptr %l68
  br label %bb35
bb35:
  %t164 = load i1, ptr %l68, !tbaa !21
  br i1 %t164, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t166 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t168 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t166)
  store i32 %t168, ptr %l71
  %t169 = icmp ne i32 %t168, 0
  br i1 %t169, label %bb40, label %ok.170, !prof !99
ok.170:
  br label %bb39
bb39:
  br label %bb44
bb40:
  %t171 = load i32, ptr %l71, !tbaa !23
  %t172 = ashr i32 %t171, 16
  %t174 = icmp eq i32 %t172, 1
  store i1 %t174, ptr %l73, !tbaa !21
  %t175 = load i32, ptr %l71, !tbaa !23
  %t176 = ashr i32 %t175, 16
  %t178 = icmp eq i32 %t176, 1
  br i1 %t178, label %bb41, label %bb42
bb41:
  call void @__olang_errpay_pop()
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t180 = load i64, ptr %l7, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l7, !tbaa !24
  br label %bb7
bb46:
  call void @__olang_scope_close(ptr %s0)
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
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l18 = alloca i1
  %l31 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i64
  %l45 = alloca i64
  %l47 = alloca i64
  %l52 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i64
  %l66 = alloca i1
  %l67 = alloca i1
  %l70 = alloca { i64, ptr }
  %l71 = alloca i1
  %l72 = alloca i1
  %l74 = alloca i1
  %l75 = alloca i1
  %l77 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca i64
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
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
  br label %bb20
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
  store { i64, ptr } %t49, ptr %l8, !tbaa !27
  store ptr %l3, ptr %l34, !tbaa !29
  %t51 = ptrtoint ptr %s0 to i64
  store i64 %t51, ptr %l35, !tbaa !24
  %t52 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t54 = call ptr @__olang_region_make(ptr %s0)
  %t55 = ptrtoint ptr %t54 to i64
  store i64 %t55, ptr %l35, !tbaa !24
  br label %bb17
bb17:
  %t56 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 1
  %t59 = extractvalue { i64, ptr } %t56, 0
  %t60 = load i64, ptr %l35
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = call ptr @__olang_scope_alloc(ptr %t61, i64 %t59)
  call void @olang_textcopy(ptr %t62, ptr %t58, i64 %t59)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t66 = load i64, ptr %l35
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = extractvalue { i64, ptr } %t64, 0
  %t69 = extractvalue { i64, ptr } %t64, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %t67, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t74 = load ptr, ptr %l34, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t74, { i64, ptr } %t73)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t76 = load i64, ptr %l6, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l6, !tbaa !24
  br label %bb12
bb20:
  %t80 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_218, 0
  %t81 = insertvalue { ptr, ptr } %t80, ptr null, 1
  %t84 = extractvalue { ptr, ptr } %t81, 0
  %t85 = extractvalue { ptr, ptr } %t81, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s0, ptr %s0, ptr %l3, ptr %t84, ptr %t85)
  br label %bb21
bb21:
  store ptr %l3, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s6
  %t87 = load i64, ptr %l10, !tbaa !24
  store i64 %t87, ptr %l45, !tbaa !24
  %t88 = load ptr, ptr %l9, !tbaa !29
  %t90 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t88)
  store i64 %t90, ptr %l47
  br label %bb23
bb23:
  %t91 = load i64, ptr %l45, !tbaa !24
  %t92 = load i64, ptr %l47, !tbaa !24
  %t93 = icmp slt i64 %t91, %t92
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s6)
  br label %bb55
bb25:
  br label %bb26
bb26:
  %t97 = load ptr, ptr %l9, !tbaa !29
  %t98 = load i64, ptr %l10, !tbaa !24
  %t101 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t97, i64 %t98)
  store { i64, ptr } %t101, ptr %l52
  br label %bb27
bb27:
  %t102 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t102, ptr %l11, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d219, i32 0, i32 1) }, ptr %l55, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t107 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s6, { i64, ptr } %t103, { i64, ptr } %t106)
  store i1 %t107, ptr %l56
  br label %bb28
bb28:
  %t108 = load i1, ptr %l56, !tbaa !21
  br i1 %t108, label %bb29, label %bb30
bb29:
  %t109 = load ptr, ptr %l2, !tbaa !29
  %t111 = getelementptr %"compiler/build:Listed", ptr %t109, i32 0, i32 1
  store ptr %t111, ptr %l58, !tbaa !29
  %t112 = ptrtoint ptr %v1 to i64
  store i64 %t112, ptr %l59, !tbaa !24
  %t113 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t113, label %bb31, label %bb32
bb30:
  br label %bb34
bb31:
  %t115 = call ptr @__olang_region_make(ptr %v1)
  %t116 = ptrtoint ptr %t115 to i64
  store i64 %t116, ptr %l59, !tbaa !24
  br label %bb32
bb32:
  %t117 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t117, 1
  %t121 = extractvalue { i64, ptr } %t117, 0
  %t122 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
  %t124 = add i64 %t121, %t123
  %t126 = extractvalue { i64, ptr } %t118, 1
  %t127 = extractvalue { i64, ptr } %t118, 0
  %t128 = add i64 %t124, %t127
  %t129 = load i64, ptr %l59
  %t130 = inttoptr i64 %t129 to ptr
  %t131 = call ptr @__olang_scope_alloc(ptr %t130, i64 %t128)
  call void @olang_textcopy(ptr %t131, ptr %t120, i64 %t121)
  %t132 = getelementptr i8, ptr %t131, i64 %t121
  call void @olang_textcopy(ptr %t132, ptr %t122, i64 %t123)
  %t133 = getelementptr i8, ptr %t132, i64 %t123
  call void @olang_textcopy(ptr %t133, ptr %t126, i64 %t127)
  %t134 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t131, 1
  %t137 = load i64, ptr %l59
  %t138 = inttoptr i64 %t137 to ptr
  %t139 = extractvalue { i64, ptr } %t135, 0
  %t140 = extractvalue { i64, ptr } %t135, 1
  %t141 = mul i64 %t139, 1
  %t142 = call ptr @__olang_scope_alloc(ptr %t138, i64 %t141)
  call void @llvm.memcpy.p0.p0.i64(ptr %t142, ptr %t140, i64 %t141, i1 false)
  %t143 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  %t145 = load ptr, ptr %l58, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t145, { i64, ptr } %t144)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t147 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t149 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s6, { i64, ptr } %t147, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d221, i32 0, i32 1) })
  store i1 %t149, ptr %l66
  br label %bb35
bb35:
  %t150 = load i1, ptr %l66, !tbaa !21
  br i1 %t150, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb39
bb37:
  %t151 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d222, i32 0, i32 1) }, ptr %l70, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t155 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s6, { i64, ptr } %t151, { i64, ptr } %t154)
  store i1 %t155, ptr %l71
  br label %bb38
bb38:
  %t156 = load i1, ptr %l71, !tbaa !21
  store i1 %t156, ptr %l67, !tbaa !21
  br label %bb39
bb39:
  %t157 = load i1, ptr %l67, !tbaa !21
  br i1 %t157, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb43
bb41:
  %t158 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t160 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s6, { i64, ptr } %t158, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d223, i32 0, i32 1) })
  store i1 %t160, ptr %l74
  br label %bb42
bb42:
  %t161 = load i1, ptr %l74, !tbaa !21
  store i1 %t161, ptr %l72, !tbaa !21
  br label %bb43
bb43:
  %t162 = load i1, ptr %l72, !tbaa !21
  br i1 %t162, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s6)
  br label %bb54
bb45:
  br label %bb46
bb46:
  store i1 %a1, ptr %l75, !tbaa !21
  %t164 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t166 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s6, { i64, ptr } %t164, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d224, i32 0, i32 1) })
  store i1 %t166, ptr %l77
  br label %bb47
bb47:
  %t167 = load i1, ptr %l75, !tbaa !21
  %t168 = load i1, ptr %l77, !tbaa !21
  %t169 = icmp eq i1 %t167, %t168
  br i1 %t169, label %bb48, label %bb49
bb48:
  %t171 = load ptr, ptr %l2, !tbaa !29
  %t173 = getelementptr %"compiler/build:Listed", ptr %t171, i32 0, i32 0
  store ptr %t173, ptr %l80, !tbaa !29
  %t174 = ptrtoint ptr %v1 to i64
  store i64 %t174, ptr %l81, !tbaa !24
  %t175 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t175, label %bb50, label %bb51
bb49:
  br label %bb53
bb50:
  %t177 = call ptr @__olang_region_make(ptr %v1)
  %t178 = ptrtoint ptr %t177 to i64
  store i64 %t178, ptr %l81, !tbaa !24
  br label %bb51
bb51:
  %t179 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t180 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t179, 1
  %t183 = extractvalue { i64, ptr } %t179, 0
  %t184 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  %t186 = add i64 %t183, %t185
  %t188 = extractvalue { i64, ptr } %t180, 1
  %t189 = extractvalue { i64, ptr } %t180, 0
  %t190 = add i64 %t186, %t189
  %t191 = load i64, ptr %l81
  %t192 = inttoptr i64 %t191 to ptr
  %t193 = call ptr @__olang_scope_alloc(ptr %t192, i64 %t190)
  call void @olang_textcopy(ptr %t193, ptr %t182, i64 %t183)
  %t194 = getelementptr i8, ptr %t193, i64 %t183
  call void @olang_textcopy(ptr %t194, ptr %t184, i64 %t185)
  %t195 = getelementptr i8, ptr %t194, i64 %t185
  call void @olang_textcopy(ptr %t195, ptr %t188, i64 %t189)
  %t196 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t193, 1
  %t199 = load i64, ptr %l81
  %t200 = inttoptr i64 %t199 to ptr
  %t201 = extractvalue { i64, ptr } %t197, 0
  %t202 = extractvalue { i64, ptr } %t197, 1
  %t203 = mul i64 %t201, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %t200, i64 %t203)
  call void @llvm.memcpy.p0.p0.i64(ptr %t204, ptr %t202, i64 %t203, i1 false)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  %t207 = load ptr, ptr %l80, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t207, { i64, ptr } %t206)
  br label %bb52
bb52:
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s6)
  br label %bb54
bb54:
  %t209 = load i64, ptr %l10, !tbaa !24
  %t211 = add i64 %t209, 1
  store i64 %t211, ptr %l10, !tbaa !24
  br label %bb22
bb55:
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
  %l4 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"std/os:Output"
  %l14 = alloca i32
  %l16 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = ptrtoint ptr %s0 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_201_3e_2e_2d1
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %s0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = load i64, ptr %l4
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call ptr @__olang_scope_alloc(ptr %t11, i64 %t9)
  call void @olang_textcopy(ptr %t12, ptr %t8, i64 %t9)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t16 = load i64, ptr %l4
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = extractvalue { i64, ptr } %t14, 0
  %t19 = extractvalue { i64, ptr } %t14, 1
  %t20 = mul i64 %t18, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t20)
  call void @llvm.memcpy.p0.p0.i64(ptr %t21, ptr %t19, i64 %t20, i1 false)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t25 = insertvalue [1 x { i64, ptr }] undef, { i64, ptr } %t23, 0
  store [1 x { i64, ptr }] %t25, ptr %l1
  %t28 = insertvalue { i64, ptr } undef, i64 1, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %l1, 1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t32 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t29, { i64, ptr } %t31, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  %t33 = extractvalue { i32, %"std/os:Output" } %t32, 1
  %t34 = extractvalue { i32, %"std/os:Output" } %t32, 0
  store i32 %t34, ptr %l14
  %t35 = icmp ne i32 %t34, 0
  br i1 %t35, label %bb4, label %ok.36, !prof !99
ok.36:
  store %"std/os:Output" %t33, ptr %l13
  br label %bb3
bb3:
  %t37 = load %"std/os:Output", ptr %l13
  store %"std/os:Output" %t37, ptr %l3
  br label %bb8
bb4:
  %t38 = load i32, ptr %l14, !tbaa !23
  %t39 = ashr i32 %t38, 16
  %t41 = icmp eq i32 %t39, 1
  store i1 %t41, ptr %l16, !tbaa !21
  %t42 = load i32, ptr %l14, !tbaa !23
  %t43 = ashr i32 %t42, 16
  %t45 = icmp eq i32 %t43, 1
  br i1 %t45, label %bb5, label %bb6
bb5:
  call void @__olang_errpay_pop()
  br label %bb6
bb6:
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i32 -1, ptr %rv
  br label %ret
bb8:
  %t48 = load %"std/os:Output", ptr %l3
  store %"std/os:Output" %t48, ptr %l2
  %t49 = getelementptr %"std/os:Output", ptr %l2, i32 0, i32 0
  %t50 = load i32, ptr %t49, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t50, ptr %rv
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
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d23 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c": lost track of its build, skipping" }>, align 8
@.d27 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d28 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c": the compiler ended (" }>, align 8
@.d29 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"), skipping" }>, align 8
@.d30 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
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
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_201_3e_2e_2d1 = weak hidden constant i1 false
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
