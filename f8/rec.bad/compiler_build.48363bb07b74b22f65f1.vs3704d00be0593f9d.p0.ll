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
%"compiler/build:Sha256" = type { [8 x i32], [64 x i8], i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19" = type { i64, { i64, ptr }, i64, i64, i64, i1, i64, i64, i1, i64, %"<pthread.h>:pthread_mutex_t", %"<pthread.h>:pthread_cond_t", %"<pthread.h>:pthread_cond_t" }
%"<pthread.h>:pthread_mutex_t" = type { [5 x i64] }
%"<pthread.h>:pthread_cond_t" = type { [6 x i64] }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/build:Config" = type { { i64, ptr }, { i64, ptr }, %"compiler/target:Target", %"compiler/cond:Consts", i1, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, i64, i1, i1, i1, i64, i1, { i64, ptr }, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, { i64, ptr }, { i64, ptr }, i64, i64, i1, i1, { i64, ptr }, { i64, ptr } }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/os:FileInfo" = type { i32, i64, i64 }
%"compiler/build:Unit" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/build:compiles" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:Program" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:stubFrontend" = type { i64, i64 }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/build:Listed" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:Aged" = type { { i64, ptr }, i64, i64 }
%"compiler/build:Code" = type { { i64, ptr }, { i64, ptr }, i64, { i64, ptr } }
@G_2ecompiler_2fbuild_2eImportLimit = constant <{ [8 x i8] }> <{ [8 x i8] c"\46\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbuild_2eJobMemory = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\02\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbuild_2ePhaseAt = global <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbuild_2eRan = global <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbuild_2eRemarkPasses = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\BB\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbuild_2eRemarkPasses.k1 }>, align 8
@G_2ecompiler_2fbuild_2eRemarkPasses.k1 = internal constant <{ [187 x i8] }> <{ [187 x i8] c"\5E\28\69\6E\6C\69\6E\65\7C\6C\6F\6F\70\2D\76\65\63\74\6F\72\69\7A\65\7C\73\6C\70\2D\76\65\63\74\6F\72\69\7A\65\72\7C\6C\6F\6F\70\2D\75\6E\72\6F\6C\6C\7C\6C\6F\6F\70\2D\75\6E\72\6F\6C\6C\2D\61\6E\64\2D\6A\61\6D\7C\6C\69\63\6D\7C\67\76\6E\7C\6C\6F\6F\70\2D\69\64\69\6F\6D\7C\6C\6F\6F\70\2D\64\65\6C\65\74\65\7C\74\61\69\6C\63\61\6C\6C\65\6C\69\6D\7C\6C\6F\6F\70\2D\64\69\73\74\72\69\62\75\74\65\7C\6C\6F\6F\70\2D\69\6E\74\65\72\63\68\61\6E\67\65\7C\6C\6F\6F\70\2D\6C\6F\61\64\2D\65\6C\69\6D\7C\72\65\67\61\6C\6C\6F\63\7C\70\72\6F\6C\6F\67\65\70\69\6C\6F\67\29\24" }>, align 64
@G_2ecompiler_2fbuild_2eRunCacheCap = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\40\00\00\00\00" }>, align 8
@G_2ecompiler_2fbuild_2eShaK = constant <{ [256 x i8] }> <{ [256 x i8] c"\98\2F\8A\42\91\44\37\71\CF\FB\C0\B5\A5\DB\B5\E9\5B\C2\56\39\F1\11\F1\59\A4\82\3F\92\D5\5E\1C\AB\98\AA\07\D8\01\5B\83\12\BE\85\31\24\C3\7D\0C\55\74\5D\BE\72\FE\B1\DE\80\A7\06\DC\9B\74\F1\9B\C1\C1\69\9B\E4\86\47\BE\EF\C6\9D\C1\0F\CC\A1\0C\24\6F\2C\E9\2D\AA\84\74\4A\DC\A9\B0\5C\DA\88\F9\76\52\51\3E\98\6D\C6\31\A8\C8\27\03\B0\C7\7F\59\BF\F3\0B\E0\C6\47\91\A7\D5\51\63\CA\06\67\29\29\14\85\0A\B7\27\38\21\1B\2E\FC\6D\2C\4D\13\0D\38\53\54\73\0A\65\BB\0A\6A\76\2E\C9\C2\81\85\2C\72\92\A1\E8\BF\A2\4B\66\1A\A8\70\8B\4B\C2\A3\51\6C\C7\19\E8\92\D1\24\06\99\D6\85\35\0E\F4\70\A0\6A\10\16\C1\A4\19\08\6C\37\1E\4C\77\48\27\B5\BC\B0\34\B3\0C\1C\39\4A\AA\D8\4E\4F\CA\9C\5B\F3\6F\2E\68\EE\82\8F\74\6F\63\A5\78\14\78\C8\84\08\02\C7\8C\FA\FF\BE\90\EB\6C\50\A4\F7\A3\F9\BE\F2\78\71\C6" }>, align 64
@G_2ecompiler_2fbuild_2eThinFrom = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\80\00\00\00\00\00" }>, align 8
define dso_local { i64, ptr } @compiler_2fbuild_2eCacheDir(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l7 = alloca i1
  %l11 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l20 = alloca i1
  %l24 = alloca i1
  %l29 = alloca { i64, ptr }
  %l30 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d0, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb6
bb6:
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t16, ptr %l1, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t17, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t19, ptr %l11
  br label %bb7
bb7:
  %t20 = load i1, ptr %l11, !tbaa !21
  %t21 = xor i1 %t20, true
  br i1 %t21, label %bb8, label %bb9
bb8:
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t23, 1
  %t27 = extractvalue { i64, ptr } %t23, 0
  %t28 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t32 = extractvalue { i64, ptr } %t24, 1
  %t33 = extractvalue { i64, ptr } %t24, 0
  %t34 = add i64 %t30, %t33
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  call void @olang_textcopy(ptr %t35, ptr %t26, i64 %t27)
  %t36 = getelementptr i8, ptr %t35, i64 %t27
  call void @olang_textcopy(ptr %t36, ptr %t28, i64 %t29)
  %t37 = getelementptr i8, ptr %t36, i64 %t29
  call void @olang_textcopy(ptr %t37, ptr %t32, i64 %t33)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t35, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t41 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) })
  %t42 = extractvalue { i32, { i64, ptr } } %t41, 1
  %t43 = extractvalue { i32, { i64, ptr } } %t41, 0
  store i32 %t43, ptr %l18
  %t44 = icmp ne i32 %t43, 0
  br i1 %t44, label %bb12, label %ok.45, !prof !99
ok.45:
  store { i64, ptr } %t42, ptr %l17
  br label %bb11
bb11:
  %t46 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t46, ptr %l16, !tbaa !27
  br label %bb16
bb12:
  %t47 = load i32, ptr %l18, !tbaa !23
  %t48 = ashr i32 %t47, 16
  %t50 = icmp eq i32 %t48, 1
  store i1 %t50, ptr %l20, !tbaa !21
  %t51 = load i32, ptr %l18, !tbaa !23
  %t52 = ashr i32 %t51, 16
  %t54 = icmp eq i32 %t52, 1
  br i1 %t54, label %bb13, label %bb14
bb13:
  call void @__olang_errpay_pop()
  br label %bb14
bb14:
  br label %bb15
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb16
bb16:
  %t56 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t56, ptr %l2, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t59, ptr %l24
  br label %bb17
bb17:
  %t60 = load i1, ptr %l24, !tbaa !21
  %t61 = xor i1 %t60, true
  br i1 %t61, label %bb18, label %bb19
bb18:
  %t63 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t63, 1
  %t67 = extractvalue { i64, ptr } %t63, 0
  %t68 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t70 = add i64 %t67, %t69
  %t72 = extractvalue { i64, ptr } %t64, 1
  %t73 = extractvalue { i64, ptr } %t64, 0
  %t74 = add i64 %t70, %t73
  %t75 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t74)
  call void @olang_textcopy(ptr %t75, ptr %t66, i64 %t67)
  %t76 = getelementptr i8, ptr %t75, i64 %t67
  call void @olang_textcopy(ptr %t76, ptr %t68, i64 %t69)
  %t77 = getelementptr i8, ptr %t76, i64 %t69
  call void @olang_textcopy(ptr %t77, ptr %t72, i64 %t73)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t75, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t79, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t81 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t81, ptr %l29, !tbaa !27
  %t82 = call i32 @getuid()
  store i32 %t82, ptr %l30
  br label %bb21
bb21:
  %t83 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t85 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = add i64 %t84, %t87
  %t89 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t91 = add i64 %t88, %t90
  %t92 = load i32, ptr %l30, !tbaa !64
  %t93 = zext i32 %t92 to i64
  %t94 = call i64 @__olang_fmt_u64(ptr null, i64 %t93)
  %t95 = add i64 %t91, %t94
  %t96 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t95)
  call void @olang_textcopy(ptr %t96, ptr %t83, i64 %t84)
  %t97 = getelementptr i8, ptr %t96, i64 %t84
  call void @olang_textcopy(ptr %t97, ptr %t86, i64 %t87)
  %t98 = getelementptr i8, ptr %t97, i64 %t87
  call void @olang_textcopy(ptr %t98, ptr %t89, i64 %t90)
  %t99 = getelementptr i8, ptr %t98, i64 %t90
  %t100 = call i64 @__olang_fmt_u64(ptr %t99, i64 %t93)
  %t101 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t96, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t102, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

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
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eWrite(ptr %s0, ptr %s2, ptr %l1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) })
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

define dso_local { i64, ptr } @compiler_2fbuild_2eLibName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i8
  %l8 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l20 = alloca %"std/prelude/text:StringBuilder"
  %l28 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l33 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l37 = alloca i1
  %l40 = alloca i8
  %l45 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store { i64, ptr } %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t7, ptr %l10
  br label %bb2
bb2:
  %t8 = load i1, ptr %l10, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t9, ptr %l11, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t14 = sub i64 %t12, 6
  store i64 %t14, ptr %l14, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l15, !tbaa !24
  %t17 = icmp sge i64 0, 0
  br i1 %t17, label %bb5, label %bb6
bb4:
  br label %bb11
bb5:
  %t19 = load i64, ptr %l14, !tbaa !24
  %t20 = icmp sle i64 0, %t19
  br i1 %t20, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_807a392292b9ae5a_fba630df00719f06)
  unreachable
bb7:
  %t22 = load i64, ptr %l14, !tbaa !24
  %t23 = load i64, ptr %l15, !tbaa !24
  %t24 = icmp sle i64 %t22, %t23
  br i1 %t24, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_807a392292b9ae5a_fba630df00719f06)
  unreachable
bb9:
  %t26 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = getelementptr i8, ptr %t27, i64 0
  %t30 = sub i64 %t28, 0
  %t31 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t29, 1
  store { i64, ptr } %t32, ptr %l1, !tbaa !27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_807a392292b9ae5a_fba630df00719f06)
  unreachable
bb11:
  %t34 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t34, ptr %l20
  br label %bb12
bb12:
  %t35 = load %"std/prelude/text:StringBuilder", ptr %l20
  store %"std/prelude/text:StringBuilder" %t35, ptr %l2
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t36, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l5, !tbaa !24
  br label %bb13
bb13:
  %t42 = load i64, ptr %l4, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb14, label %bb15
bb14:
  br label %bb30
bb15:
  br label %bb16
bb16:
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t50, ptr %l28, !tbaa !27
  %t51 = load i64, ptr %l4, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i8, ptr %t54, i64 %t51
  %t56 = load i8, ptr %t55, !tbaa !32
  store i8 %t56, ptr %l6, !tbaa !22
  store ptr %l2, ptr %l31, !tbaa !29
  %t58 = load i8, ptr %l6, !tbaa !22
  %t60 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t58)
  store i1 %t60, ptr %l33
  br label %bb17
bb17:
  %t61 = load i1, ptr %l33, !tbaa !21
  br i1 %t61, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb21
bb19:
  %t62 = load i8, ptr %l6, !tbaa !22
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t62)
  store i1 %t64, ptr %l36
  br label %bb20
bb20:
  %t65 = load i1, ptr %l36, !tbaa !21
  store i1 %t65, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t66 = load i1, ptr %l34, !tbaa !21
  br i1 %t66, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb24
bb23:
  %t67 = load i8, ptr %l6, !tbaa !22
  %t69 = icmp eq i8 %t67, 95
  store i1 %t69, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t71 = load i1, ptr %l37, !tbaa !21
  br i1 %t71, label %bb25, label %bb26
bb25:
  %t72 = load i8, ptr %l6, !tbaa !22
  store i8 %t72, ptr %l40, !tbaa !22
  br label %bb27
bb26:
  store i8 95, ptr %l40, !tbaa !22
  br label %bb27
bb27:
  %t74 = load ptr, ptr %l31, !tbaa !29
  %t75 = load i8, ptr %l40, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t74, i8 %t75)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t76 = load i64, ptr %l4, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l4, !tbaa !24
  br label %bb13
bb30:
  %t81 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t81, ptr %l45
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t82 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t82, ptr %rv
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
  %l13 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca i1
  %l26 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d12, i32 0, i32 1) })
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
  store { i64, ptr } %t23, ptr %l13, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t25 = load i64, ptr @G_2ecompiler_2fbuild_2ePhaseAt, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t30 = sdiv i64 %t28, 1000000
  store i64 %t30, ptr %l17, !tbaa !24
  %t31 = call { i64, ptr } @compiler_2fbuild_2ememoryNow(ptr %s2)
  store { i64, ptr } %t31, ptr %l18
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t32 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t34 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t37 = add i64 %t33, %t36
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t40 = add i64 %t37, %t39
  %t41 = load i64, ptr %l17, !tbaa !24
  %t42 = call i64 @__olang_fmt_i64(ptr null, i64 %t41)
  %t43 = add i64 %t40, %t42
  %t44 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t46 = add i64 %t43, %t45
  %t47 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 1
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t50 = add i64 %t46, %t49
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t53 = add i64 %t50, %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t53)
  call void @olang_textcopy(ptr %t54, ptr %t32, i64 %t33)
  %t55 = getelementptr i8, ptr %t54, i64 %t33
  call void @olang_textcopy(ptr %t55, ptr %t35, i64 %t36)
  %t56 = getelementptr i8, ptr %t55, i64 %t36
  call void @olang_textcopy(ptr %t56, ptr %t38, i64 %t39)
  %t57 = getelementptr i8, ptr %t56, i64 %t39
  %t58 = call i64 @__olang_fmt_i64(ptr %t57, i64 %t41)
  %t59 = getelementptr i8, ptr %t57, i64 %t42
  call void @olang_textcopy(ptr %t59, ptr %t44, i64 %t45)
  %t60 = getelementptr i8, ptr %t59, i64 %t45
  call void @olang_textcopy(ptr %t60, ptr %t48, i64 %t49)
  %t61 = getelementptr i8, ptr %t60, i64 %t49
  call void @olang_textcopy(ptr %t61, ptr %t51, i64 %t52)
  %t62 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t54, 1
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t66 = extractvalue { i64, ptr } %t63, 1
  %t67 = mul i64 %t65, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t67)
  call void @llvm.memcpy.p0.p0.i64(ptr %t68, ptr %t66, i64 %t67, i1 false)
  %t69 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  call void @compiler_2fbuild_2esayErr(ptr %s2, { i64, ptr } %t70)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb12:
  %t72 = load i64, ptr %l2, !tbaa !24
  store i64 %t72, ptr @G_2ecompiler_2fbuild_2ePhaseAt, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t76 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t74, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t76, ptr %l23
  br label %bb13
bb13:
  %t77 = load i1, ptr %l23, !tbaa !21
  br i1 %t77, label %bb14, label %bb15
bb14:
  %t78 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t80 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t78, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t80, ptr %l26
  br label %bb16
bb15:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb17
bb16:
  %t81 = load i1, ptr %l26, !tbaa !21
  store i1 %t81, ptr %l24, !tbaa !21
  br label %bb17
bb17:
  %t82 = load i1, ptr %l24, !tbaa !21
  br i1 %t82, label %bb18, label %bb19
bb18:
  call void @std_2fos_2eExit(i32 0)
  unreachable
bb19:
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_1a0af222d89a1264_6ae848cde6020298)
  unreachable
bb21:
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

define dso_local { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l19 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i8
  %l34 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
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
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
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
  br label %bb22
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t17, ptr %l14, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  store i8 %t23, ptr %l5, !tbaa !22
  store ptr %l1, ptr %l17, !tbaa !29
  %t25 = load i8, ptr %l5, !tbaa !22
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t25)
  store i1 %t27, ptr %l19
  br label %bb6
bb6:
  %t28 = load i1, ptr %l19, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb10
bb8:
  %t29 = load i8, ptr %l5, !tbaa !22
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t29)
  store i1 %t31, ptr %l22
  br label %bb9
bb9:
  %t32 = load i1, ptr %l22, !tbaa !21
  store i1 %t32, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t33 = load i1, ptr %l20, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb13
bb12:
  %t34 = load i8, ptr %l5, !tbaa !22
  %t36 = icmp eq i8 %t34, 95
  store i1 %t36, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t38 = load i1, ptr %l23, !tbaa !21
  br i1 %t38, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb16
bb15:
  %t39 = load i8, ptr %l5, !tbaa !22
  %t41 = icmp eq i8 %t39, 45
  store i1 %t41, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t43 = load i1, ptr %l26, !tbaa !21
  br i1 %t43, label %bb17, label %bb18
bb17:
  %t44 = load i8, ptr %l5, !tbaa !22
  store i8 %t44, ptr %l29, !tbaa !22
  br label %bb19
bb18:
  store i8 95, ptr %l29, !tbaa !22
  br label %bb19
bb19:
  %t46 = load ptr, ptr %l17, !tbaa !29
  %t47 = load i8, ptr %l29, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t46, i8 %t47)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t48 = load i64, ptr %l3, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l3, !tbaa !24
  br label %bb2
bb22:
  %t53 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t53, ptr %l34
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t54, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l1, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t6 = sub i64 %t4, 2
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = icmp sge i64 0, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = icmp sle i64 0, %t11
  br i1 %t12, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_cca858d13f2cc89a_874b1ca570aaca06)
  unreachable
bb3:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = icmp sle i64 %t14, %t15
  br i1 %t16, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_cca858d13f2cc89a_874b1ca570aaca06)
  unreachable
bb5:
  %t18 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr i8, ptr %t19, i64 0
  %t22 = sub i64 %t20, 0
  %t23 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t21, 1
  %t26 = extractvalue { i64, ptr } %t24, 1
  %t27 = extractvalue { i64, ptr } %t24, 0
  %t28 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t26, i64 %t27)
  %t32 = getelementptr i8, ptr %t31, i64 %t27
  call void @olang_textcopy(ptr %t32, ptr %t28, i64 %t29)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t31, 1
  store { i64, ptr } %t34, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_cca858d13f2cc89a_874b1ca570aaca06)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { { i64, ptr }, { i64, ptr } } @compiler_2fbuild_2eRunAll(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l31 = alloca i64
  %l41 = alloca { { i64, ptr }, { i64, ptr } }
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %l88 = alloca %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19"
  %l97 = alloca { i64, ptr }
  %l102 = alloca i32
  %l104 = alloca i1
  %l110 = alloca i64
  %l113 = alloca i1
  %l122 = alloca i64
  %l125 = alloca i64
  %l154 = alloca { { i64, ptr }, { i64, ptr } }
  %l155 = alloca { i64, ptr }
  %l156 = alloca i64
  %l157 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l159 = alloca i64
  %l160 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %jh12 = alloca ptr
  %rv = alloca { { i64, ptr }, { i64, ptr } }
  %t28 = alloca i64
  %t168 = alloca { { i64, ptr }, ptr }, align 8
  %t179 = alloca %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", align 8
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l27, !tbaa !24
  %t6 = load i64, ptr %l27, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l27, !tbaa !24
  %t10 = icmp sle i64 %t9, 2305843009213693951
  br i1 %t10, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_2b4b55182e30c5b8_1dd1254afca8c384)
  unreachable
bb3:
  %t12 = load i64, ptr %l27, !tbaa !24
  %t13 = mul i64 %t12, 4
  %t14 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  store i64 %t18, ptr %l31, !tbaa !24
  %t19 = load i64, ptr %l31, !tbaa !24
  %t20 = icmp sge i64 %t19, 0
  br i1 %t20, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_2b4b55182e30c5b8_1dd1254afca8c384)
  unreachable
bb5:
  %t22 = load i64, ptr %l31, !tbaa !24
  %t23 = icmp sle i64 %t22, 576460752303423487
  br i1 %t23, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_3fd1be9bff2cc025_306b5f0bb3e84491)
  unreachable
bb7:
  %t25 = load i64, ptr %l31, !tbaa !24
  %t26 = mul i64 %t25, 16
  %t27 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t26)
  store i64 0, ptr %t28
  br label %fill.29
fill.29:
  %t32 = load i64, ptr %t28
  %t33 = icmp slt i64 %t32, %t25
  br i1 %t33, label %fillb.30, label %filld.31
fillb.30:
  %t34 = getelementptr { i64, ptr }, ptr %t27, i64 %t32
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %t34
  %t35 = add i64 %t32, 1
  store i64 %t35, ptr %t28
  br label %fill.29
filld.31:
  %t36 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t27, 1
  store { i64, ptr } %t37, ptr %l5, !tbaa !27
  %t39 = load i64, ptr %l3, !tbaa !24
  %t41 = icmp eq i64 %t39, 0
  br i1 %t41, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3fd1be9bff2cc025_306b5f0bb3e84491)
  unreachable
bb9:
  %t43 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t48 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t43, 0
  %t50 = insertvalue { { i64, ptr }, { i64, ptr } } %t48, { i64, ptr } %t45, 1
  store { { i64, ptr }, { i64, ptr } } %t50, ptr %l41
  %t51 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l41, i32 0, i32 0
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  store { i64, ptr } %t52, ptr %l42, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 0
  store i64 %t54, ptr %l43, !tbaa !24
  %t55 = load i64, ptr %l43, !tbaa !24
  %t56 = mul i64 %t55, 4
  %t57 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t56)
  %t58 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  store { i64, ptr } %t59, ptr %l44, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = load i64, ptr %l43, !tbaa !24
  %t65 = mul i64 %t64, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t61, ptr %t63, i64 %t65, i1 false)
  %t66 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t67 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l41, i32 0, i32 0
  store { i64, ptr } %t66, ptr %t67, !tbaa !27
  %t68 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l41, i32 0, i32 1
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l45, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 0
  store i64 %t71, ptr %l46, !tbaa !24
  %t72 = load i64, ptr %l46, !tbaa !24
  %t73 = mul i64 %t72, 16
  %t74 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t73)
  %t75 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l47, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l46, !tbaa !24
  %t82 = mul i64 %t81, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t78, ptr %t80, i64 %t82, i1 false)
  %t83 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t84 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l41, i32 0, i32 1
  store { i64, ptr } %t83, ptr %t84, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t85 = load { { i64, ptr }, { i64, ptr } }, ptr %l41
  store { { i64, ptr }, { i64, ptr } } %t85, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t86 = load i64, ptr %l3, !tbaa !24
  store i64 %t86, ptr %l48, !tbaa !24
  %t87 = load i64, ptr %l48, !tbaa !24
  %t88 = icmp sge i64 %t87, 0
  br i1 %t88, label %bb12, label %bb13
bb12:
  %t90 = load i64, ptr %l48, !tbaa !24
  %t91 = icmp sle i64 %t90, 1152921504606846975
  br i1 %t91, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_bc625dc042a99e06_c0b5fdead4ea6272)
  unreachable
bb14:
  %t93 = load i64, ptr %l48, !tbaa !24
  %t94 = mul i64 %t93, 8
  %t95 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t94)
  %t96 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  store { i64, ptr } %t97, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t99 = load i64, ptr %l3, !tbaa !24
  store i64 %t99, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t101 = load i64, ptr %l8, !tbaa !24
  %t102 = load i64, ptr %l7, !tbaa !24
  %t105 = icmp sgt i64 %t101, %t102
  br i1 %t105, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_bc625dc042a99e06_c0b5fdead4ea6272)
  unreachable
bb16:
  %t107 = load i64, ptr %l9, !tbaa !24
  %t109 = icmp sgt i64 %t107, 0
  br i1 %t109, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb21
bb18:
  %t111 = load i64, ptr %l8, !tbaa !24
  %t112 = load i64, ptr %l7, !tbaa !24
  %t115 = sub i64 %t111, %t112
  %t116 = load i64, ptr %l9, !tbaa !24
  %t119 = add i64 %t115, %t116
  %t121 = sub i64 %t119, 1
  %t122 = load i64, ptr %l9, !tbaa !24
  %t125 = sdiv i64 %t121, %t122
  store i64 %t125, ptr %l59, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb20
bb20:
  %t127 = load i64, ptr %l59, !tbaa !24
  store i64 %t127, ptr %l56, !tbaa !24
  br label %bb21
bb21:
  %t128 = load i64, ptr %l56, !tbaa !24
  store i64 %t128, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb22
bb22:
  %t129 = load i64, ptr %l11, !tbaa !24
  %t130 = load i64, ptr %l10, !tbaa !24
  %t133 = icmp slt i64 %t129, %t130
  %t135 = xor i1 %t133, true
  br i1 %t135, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t137 = load i64, ptr %l7, !tbaa !24
  %t138 = load i64, ptr %l11, !tbaa !24
  %t139 = load i64, ptr %l9, !tbaa !24
  %t142 = mul i64 %t138, %t139
  %t145 = add i64 %t137, %t142
  store i64 %t145, ptr %l12, !tbaa !24
  %t147 = load i64, ptr %l12, !tbaa !24
  %t148 = load i64, ptr %l12, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr i64, ptr %t152, i64 %t147
  store i64 %t148, ptr %t153, !tbaa !34
  br label %bb26
bb26:
  %t154 = load i64, ptr %l11, !tbaa !24
  %t156 = add i64 %t154, 1
  store i64 %t156, ptr %l11, !tbaa !24
  br label %bb22
bb27:
  %t158 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t162 = icmp sgt i64 %t160, 0
  br i1 %t162, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t164 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t165 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t166 = getelementptr { { i64, ptr }, ptr }, ptr null, i32 1
  %t167 = ptrtoint ptr %t166 to i64
  %t169 = getelementptr { { i64, ptr }, ptr }, ptr %t168, i32 0, i32 0
  store { i64, ptr } %t165, ptr %t169, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t171 = getelementptr { { i64, ptr }, ptr }, ptr %t168, i32 0, i32 1
  store ptr %v1, ptr %t171, !tbaa !28
  %t172 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_21, 0
  %t173 = insertvalue { ptr, ptr } %t172, ptr %t168, 1
  %t176 = extractvalue { ptr, ptr } %t173, 0
  %t177 = extractvalue { ptr, ptr } %t173, 1
  call void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s5, { i64, ptr } %t164, ptr %t176, ptr %t177)
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_scope_close(ptr %s5)
  br label %bb31
bb31:
  %t178 = load i64, ptr %l3, !tbaa !24
  call void @std_2fchan_3aChan_3cI64_3e_2ector(ptr %t179, ptr %s0, i64 %t178)
  call void @llvm.memmove.p0.p0.i64(ptr %l88, ptr %t179, i64 224, i1 false)
  br label %bb32
bb32:
  %t181 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 224, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t181, ptr %l88, i64 224, i1 false)
  store ptr %t181, ptr %l13, !tbaa !29
  %t183 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t183, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t185 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t185, 0
  store i64 %t187, ptr %l16, !tbaa !24
  br label %bb33
bb33:
  %t189 = load i64, ptr %l15, !tbaa !24
  %t190 = load i64, ptr %l16, !tbaa !24
  %t193 = icmp slt i64 %t189, %t190
  %t195 = xor i1 %t193, true
  br i1 %t195, label %bb34, label %bb35
bb34:
  br label %bb42
bb35:
  br label %bb36
bb36:
  %t197 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t197, ptr %l97, !tbaa !27
  %t198 = load i64, ptr %l15, !tbaa !24
  %t200 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = getelementptr i64, ptr %t201, i64 %t198
  %t203 = load i64, ptr %t202, !tbaa !34
  %t205 = load ptr, ptr %l13, !tbaa !29
  %t209 = call i32 @std_2fchan_2eSend_3cI64_3e(ptr %s0, ptr %t205, i64 %t203)
  store i32 %t209, ptr %l102
  %t210 = icmp ne i32 %t209, 0
  br i1 %t210, label %bb38, label %ok.211, !prof !99
ok.211:
  br label %bb37
bb37:
  br label %bb40
bb38:
  %t212 = load i32, ptr %l102, !tbaa !23
  %t213 = ashr i32 %t212, 16
  %t215 = icmp eq i32 %t213, 1
  store i1 %t215, ptr %l104, !tbaa !21
  br label %bb39
bb39:
  call void @__olang_check_failed(ptr @olang_loc_1359a9f97975288c_a8d4abcb606172b0)
  unreachable
bb40:
  br label %bb41
bb41:
  %t216 = load i64, ptr %l15, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l15, !tbaa !24
  br label %bb33
bb42:
  %t220 = load i64, ptr %l1, !tbaa !24
  %t221 = load i64, ptr %l3, !tbaa !24
  %t224 = icmp slt i64 %t220, %t221
  br i1 %t224, label %bb43, label %bb44
bb43:
  %t226 = load i64, ptr %l1, !tbaa !24
  store i64 %t226, ptr %l110, !tbaa !24
  br label %bb45
bb44:
  %t228 = load i64, ptr %l3, !tbaa !24
  store i64 %t228, ptr %l110, !tbaa !24
  br label %bb45
bb45:
  %t230 = load i64, ptr %l110, !tbaa !24
  store i64 %t230, ptr %l18, !tbaa !24
  store i64 0, ptr @G_2ecompiler_2fbuild_2eRan, !tbaa !24
  %t231 = call i1 @compiler_2fbuild_2etimed()
  store i1 %t231, ptr %l113
  br label %bb46
bb46:
  %t232 = load i1, ptr %l113, !tbaa !21
  br i1 %t232, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s10
  %t233 = load i64, ptr %l3, !tbaa !24
  %t234 = load i64, ptr %l18, !tbaa !24
  %t235 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t238 = call i64 @__olang_fmt_i64(ptr null, i64 %t233)
  %t239 = add i64 %t236, %t238
  %t240 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t242 = add i64 %t239, %t241
  %t244 = call i64 @__olang_fmt_i64(ptr null, i64 %t234)
  %t245 = add i64 %t242, %t244
  %t246 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t247 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t248 = add i64 %t245, %t247
  %t249 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t248)
  call void @olang_textcopy(ptr %t249, ptr %t235, i64 %t236)
  %t250 = getelementptr i8, ptr %t249, i64 %t236
  %t251 = call i64 @__olang_fmt_i64(ptr %t250, i64 %t233)
  %t252 = getelementptr i8, ptr %t250, i64 %t238
  call void @olang_textcopy(ptr %t252, ptr %t240, i64 %t241)
  %t253 = getelementptr i8, ptr %t252, i64 %t241
  %t254 = call i64 @__olang_fmt_i64(ptr %t253, i64 %t234)
  %t255 = getelementptr i8, ptr %t253, i64 %t244
  call void @olang_textcopy(ptr %t255, ptr %t246, i64 %t247)
  %t256 = insertvalue { i64, ptr } undef, i64 %t248, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t249, 1
  %t259 = extractvalue { i64, ptr } %t257, 0
  %t260 = extractvalue { i64, ptr } %t257, 1
  %t261 = mul i64 %t259, 1
  %t262 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t261)
  call void @llvm.memcpy.p0.p0.i64(ptr %t262, ptr %t260, i64 %t261, i1 false)
  %t263 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t262, 1
  call void @compiler_2fbuild_2esayErr(ptr %s10, { i64, ptr } %t264)
  br label %bb49
bb48:
  br label %bb50
bb49:
  call void @__olang_scope_close(ptr %s10)
  br label %bb50
bb50:
  store %olang.scope zeroinitializer, ptr %s12
  store ptr null, ptr %jh12
  store i64 0, ptr %l19, !tbaa !24
  %t266 = load i64, ptr %l18, !tbaa !24
  store i64 %t266, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t268 = load i64, ptr %l20, !tbaa !24
  %t269 = load i64, ptr %l19, !tbaa !24
  %t272 = icmp sgt i64 %t268, %t269
  br i1 %t272, label %bb51, label %bb52
bb51:
  %t274 = load i64, ptr %l21, !tbaa !24
  %t276 = icmp sgt i64 %t274, 0
  br i1 %t276, label %bb53, label %bb54
bb52:
  store i64 0, ptr %l122, !tbaa !24
  br label %bb56
bb53:
  %t278 = load i64, ptr %l20, !tbaa !24
  %t279 = load i64, ptr %l19, !tbaa !24
  %t282 = sub i64 %t278, %t279
  %t283 = load i64, ptr %l21, !tbaa !24
  %t286 = add i64 %t282, %t283
  %t288 = sub i64 %t286, 1
  %t289 = load i64, ptr %l21, !tbaa !24
  %t292 = sdiv i64 %t288, %t289
  store i64 %t292, ptr %l125, !tbaa !24
  br label %bb55
bb54:
  store i64 0, ptr %l125, !tbaa !24
  br label %bb55
bb55:
  %t294 = load i64, ptr %l125, !tbaa !24
  store i64 %t294, ptr %l122, !tbaa !24
  br label %bb56
bb56:
  %t295 = load i64, ptr %l122, !tbaa !24
  store i64 %t295, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb57
bb57:
  %t296 = load i64, ptr %l23, !tbaa !24
  %t297 = load i64, ptr %l22, !tbaa !24
  %t300 = icmp slt i64 %t296, %t297
  %t302 = xor i1 %t300, true
  br i1 %t302, label %bb58, label %bb59
bb58:
  br label %bb62
bb59:
  br label %bb60
bb60:
  %t304 = load i64, ptr %l19, !tbaa !24
  %t305 = load i64, ptr %l23, !tbaa !24
  %t306 = load i64, ptr %l21, !tbaa !24
  %t309 = mul i64 %t305, %t306
  %t312 = add i64 %t304, %t309
  store i64 %t312, ptr %l24, !tbaa !24
  %t314 = load ptr, ptr %l13, !tbaa !29
  %t315 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t316 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t317 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t322 = call ptr @__olang_standin(ptr %s0)
  %t323 = call ptr @__olang_standin(ptr %v0)
  %t324 = call ptr @__olang_standin(ptr %s0)
  %t325 = call ptr @__olang_standin(ptr %v2)
  %t326 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr null, i32 1
  %t327 = ptrtoint ptr %t326 to i64
  %t328 = call ptr @__olang_scope_alloc_a(ptr %s12, i64 %t327, i64 8)
  %t329 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t328, i32 0, i32 0
  store ptr %t314, ptr %t329
  %t330 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t328, i32 0, i32 1
  store { i64, ptr } %t315, ptr %t330
  %t331 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t328, i32 0, i32 2
  store { i64, ptr } %t316, ptr %t331
  %t332 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t328, i32 0, i32 3
  store { i64, ptr } %t317, ptr %t332
  %t333 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t328, i32 0, i32 4
  store ptr %t322, ptr %t333
  %t334 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t328, i32 0, i32 5
  store ptr %t323, ptr %t334
  %t335 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t328, i32 0, i32 6
  store ptr %t324, ptr %t335
  %t336 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t328, i32 0, i32 7
  store ptr %t325, ptr %t336
  %t337 = call ptr @__olang_scope_alloc_a(ptr %s12, i64 40, i64 8)
  %t338 = call ptr @__olang_scope_alloc_a(ptr %s12, i64 16, i64 8)
  store ptr null, ptr %t338
  %t339 = getelementptr { ptr, ptr }, ptr %t338, i32 0, i32 1
  store ptr %t322, ptr %t339
  %t340 = call ptr @__olang_scope_alloc_a(ptr %s12, i64 16, i64 8)
  store ptr %t338, ptr %t340
  %t341 = getelementptr { ptr, ptr }, ptr %t340, i32 0, i32 1
  store ptr %t323, ptr %t341
  %t342 = call ptr @__olang_scope_alloc_a(ptr %s12, i64 16, i64 8)
  store ptr %t340, ptr %t342
  %t343 = getelementptr { ptr, ptr }, ptr %t342, i32 0, i32 1
  store ptr %t324, ptr %t343
  %t344 = call ptr @__olang_scope_alloc_a(ptr %s12, i64 16, i64 8)
  store ptr %t342, ptr %t344
  %t345 = getelementptr { ptr, ptr }, ptr %t344, i32 0, i32 1
  store ptr %t325, ptr %t345
  %t346 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t337, i32 0, i32 2
  store ptr %t344, ptr %t346
  %t347 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t337, i32 0, i32 1
  store i64 0, ptr %t347
  %t348 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t337, i32 0, i32 3
  store i64 0, ptr %t348
  %t349 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t337, i32 0, i32 4
  store ptr null, ptr %t349
  %t350 = call ptr @__olang_worker_get()
  call void @__olang_worker_start(ptr %t350, ptr @olang_task25, ptr %t328, ptr %t337)
  %t351 = load ptr, ptr %jh12
  store ptr %t351, ptr %t337
  store ptr %t337, ptr %jh12
  br label %bb61
bb61:
  %t352 = load i64, ptr %l23, !tbaa !24
  %t354 = add i64 %t352, 1
  store i64 %t354, ptr %l23, !tbaa !24
  br label %bb57
bb62:
  %t356 = load ptr, ptr %l13, !tbaa !29
  call void @std_2fchan_2eClose_3cI64_3e(ptr %s0, ptr %t356)
  br label %bb63
bb63:
  %t358 = call i64 @__olang_join_tasks_keep(ptr %jh12, i1 false)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s12)
  br label %bb65
bb65:
  %t359 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t361 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t364 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t359, 0
  %t366 = insertvalue { { i64, ptr }, { i64, ptr } } %t364, { i64, ptr } %t361, 1
  store { { i64, ptr }, { i64, ptr } } %t366, ptr %l154
  %t367 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l154, i32 0, i32 0
  %t368 = load { i64, ptr }, ptr %t367, !tbaa !27
  store { i64, ptr } %t368, ptr %l155, !tbaa !27
  %t369 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t370 = extractvalue { i64, ptr } %t369, 0
  store i64 %t370, ptr %l156, !tbaa !24
  %t371 = load i64, ptr %l156, !tbaa !24
  %t372 = mul i64 %t371, 4
  %t373 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t372)
  %t374 = insertvalue { i64, ptr } undef, i64 %t371, 0
  %t375 = insertvalue { i64, ptr } %t374, ptr %t373, 1
  store { i64, ptr } %t375, ptr %l157, !tbaa !27
  %t376 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t377 = load ptr, ptr %t376, !tbaa !27
  %t378 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !27
  %t380 = load i64, ptr %l156, !tbaa !24
  %t381 = mul i64 %t380, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t377, ptr %t379, i64 %t381, i1 false)
  %t382 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t383 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l154, i32 0, i32 0
  store { i64, ptr } %t382, ptr %t383, !tbaa !27
  %t384 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l154, i32 0, i32 1
  %t385 = load { i64, ptr }, ptr %t384, !tbaa !27
  store { i64, ptr } %t385, ptr %l158, !tbaa !27
  %t386 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t387 = extractvalue { i64, ptr } %t386, 0
  store i64 %t387, ptr %l159, !tbaa !24
  %t388 = load i64, ptr %l159, !tbaa !24
  %t389 = mul i64 %t388, 16
  %t390 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t389)
  %t391 = insertvalue { i64, ptr } undef, i64 %t388, 0
  %t392 = insertvalue { i64, ptr } %t391, ptr %t390, 1
  store { i64, ptr } %t392, ptr %l160, !tbaa !27
  %t393 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t394 = load ptr, ptr %t393, !tbaa !27
  %t395 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t396 = load ptr, ptr %t395, !tbaa !27
  %t397 = load i64, ptr %l159, !tbaa !24
  %t398 = mul i64 %t397, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t394, ptr %t396, i64 %t398, i1 false)
  %t399 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t400 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l154, i32 0, i32 1
  store { i64, ptr } %t399, ptr %t400, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t401 = load { { i64, ptr }, { i64, ptr } }, ptr %l154
  store { { i64, ptr }, { i64, ptr } } %t401, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
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
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) })
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
  %t14 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l4, !tbaa !27
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
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l8, !tbaa !27
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
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l12, !tbaa !27
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
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l16, !tbaa !27
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
  store { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l20, !tbaa !27
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
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l24, !tbaa !27
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
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l28, !tbaa !27
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
  store { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l32, !tbaa !27
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
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l36, !tbaa !27
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
  store { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l40, !tbaa !27
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
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l44, !tbaa !27
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
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l48, !tbaa !27
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
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l52, !tbaa !27
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
  %t80 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
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
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca %"std/os:Output"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l30 = alloca i1
  %l31 = alloca i1
  %l36 = alloca i1
  %l40 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l89 = alloca %"std/os:Output"
  %l91 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca %"std/os:Output"
  %l94 = alloca i32
  %l96 = alloca i1
  %l103 = alloca { i64, ptr }
  %l107 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l120 = alloca i1
  %l127 = alloca i1
  %l132 = alloca i64
  %l133 = alloca i64
  %l136 = alloca { i64, ptr }
  %l141 = alloca i1
  %l145 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l153 = alloca { i64, ptr }
  %l156 = alloca ptr
  %l157 = alloca i64
  %l164 = alloca ptr
  %l166 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %l173 = alloca i32
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fspin_2eEnd()
  br label %bb1
bb1:
  %t1 = call i64 @std_2ftime_2eNow()
  store i64 %t1, ptr %l28
  br label %bb2
bb2:
  %t2 = load i64, ptr %l28, !tbaa !24
  store i64 %t2, ptr %l5, !tbaa !24
  store i1 false, ptr %l6, !tbaa !21
  store i1 false, ptr %l7, !tbaa !21
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i1 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eracesSpawners(ptr %v0, ptr %t3)
  store i1 %t5, ptr %l30
  br label %bb3
bb3:
  %t6 = load i1, ptr %l30, !tbaa !21
  br i1 %t6, label %bb4, label %bb5
bb4:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/build:Config", ptr %t7, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/build:Config", ptr %t11, i32 0, i32 2
  %t14 = getelementptr %"compiler/target:Target", ptr %t13, i32 0, i32 2
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t18 = call i1 @compiler_2ftarget_2eHasRaceRuntime(ptr %v0, ptr %v0, { i64, ptr } %t10, { i64, ptr } %t15)
  store i1 %t18, ptr %l36
  br label %bb6
bb5:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb7
bb6:
  %t19 = load i1, ptr %l36, !tbaa !21
  %t20 = xor i1 %t19, true
  store i1 %t20, ptr %l31, !tbaa !21
  br label %bb7
bb7:
  %t22 = load i1, ptr %l31, !tbaa !21
  store i1 %t22, ptr %l8, !tbaa !21
  %t23 = load i1, ptr %l8, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2enoRaceRuntime(ptr %v0, ptr %s1, ptr %t25)
  store { i64, ptr } %t27, ptr %l40
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t28 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  %t30 = extractvalue { i64, ptr } %t28, 1
  %t31 = mul i64 %t29, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t31)
  call void @llvm.memcpy.p0.p0.i64(ptr %t32, ptr %t30, i64 %t31, i1 false)
  %t33 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  call void @compiler_2fbuild_2esayln(ptr %s1, { i64, ptr } %t34)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s1)
  br label %bb12
bb12:
  %t36 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t36, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l11, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t42 = load i64, ptr %l10, !tbaa !24
  %t43 = load i64, ptr %l11, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb65
bb15:
  br label %bb16
bb16:
  %t50 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t50, ptr %l49, !tbaa !27
  %t51 = load i64, ptr %l10, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %t54, i64 %t51
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !37
  store { i64, ptr } %t56, ptr %l12, !tbaa !27
  %t58 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l52
  br label %bb17
bb17:
  %t59 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l13
  %t60 = load i1, ptr %l8, !tbaa !21
  br i1 %t60, label %bb18, label %bb19
bb18:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s3, ptr %s3, ptr %l13, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb20
bb19:
  br label %bb22
bb20:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s3, ptr %s3, ptr %l13, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb21
bb21:
  br label %bb22
bb22:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s3, ptr %v1, ptr %l13, { i64, ptr } %a1)
  br label %bb23
bb23:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s3, ptr %s3, ptr %l13, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d44, i32 0, i32 1) })
  br label %bb24
bb24:
  store { i64, ptr } %a2, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t70 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t70, 0
  store i64 %t72, ptr %l16, !tbaa !24
  br label %bb25
bb25:
  %t74 = load i64, ptr %l15, !tbaa !24
  %t75 = load i64, ptr %l16, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb26, label %bb27
bb26:
  br label %bb31
bb27:
  br label %bb28
bb28:
  %t82 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t82, ptr %l66, !tbaa !27
  %t83 = load i64, ptr %l15, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr { i64, ptr }, ptr %t86, i64 %t83
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s3, ptr %v2, ptr %l13, { i64, ptr } %t88)
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t93 = load i64, ptr %l15, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l15, !tbaa !24
  br label %bb25
bb31:
  %t97 = load { i64, ptr }, ptr %l12, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s3, ptr %v3, ptr %l13, { i64, ptr } %t97)
  br label %bb32
bb32:
  %t100 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t100, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  store i64 %t104, ptr %l20, !tbaa !24
  br label %bb33
bb33:
  %t106 = load i64, ptr %l19, !tbaa !24
  %t107 = load i64, ptr %l20, !tbaa !24
  %t110 = icmp slt i64 %t106, %t107
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb34, label %bb35
bb34:
  br label %bb39
bb35:
  br label %bb36
bb36:
  %t114 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t114, ptr %l82, !tbaa !27
  %t115 = load i64, ptr %l19, !tbaa !24
  %t117 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr { i64, ptr }, ptr %t118, i64 %t115
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s3, ptr %v4, ptr %l13, { i64, ptr } %t120)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t125 = load i64, ptr %l19, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l19, !tbaa !24
  br label %bb33
bb39:
  %t130 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s3, ptr %s3, ptr %l13)
  store { i64, ptr } %t130, ptr %l91
  br label %bb40
bb40:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l92, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t133 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s3, ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t131, { i64, ptr } %t132, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  %t134 = extractvalue { i32, %"std/os:Output" } %t133, 1
  %t135 = extractvalue { i32, %"std/os:Output" } %t133, 0
  store i32 %t135, ptr %l94
  %t136 = icmp ne i32 %t135, 0
  br i1 %t136, label %bb42, label %ok.137, !prof !99
ok.137:
  store %"std/os:Output" %t134, ptr %l93
  br label %bb41
bb41:
  %t138 = load %"std/os:Output", ptr %l93
  store %"std/os:Output" %t138, ptr %l89
  br label %bb48
bb42:
  %t139 = load i32, ptr %l94, !tbaa !23
  %t140 = ashr i32 %t139, 16
  %t142 = icmp eq i32 %t140, 1
  store i1 %t142, ptr %l96, !tbaa !21
  %t143 = load i32, ptr %l94, !tbaa !23
  %t144 = ashr i32 %t143, 16
  %t146 = icmp eq i32 %t144, 1
  br i1 %t146, label %bb43, label %bb44
bb43:
  call void @__olang_errpay_pop()
  br label %bb44
bb44:
  br label %bb45
bb45:
  store %olang.scope zeroinitializer, ptr %s11
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t149, 1
  %t152 = extractvalue { i64, ptr } %t149, 0
  %t153 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t154 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t155 = add i64 %t152, %t154
  %t156 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t155)
  call void @olang_textcopy(ptr %t156, ptr %t151, i64 %t152)
  %t157 = getelementptr i8, ptr %t156, i64 %t152
  call void @olang_textcopy(ptr %t157, ptr %t153, i64 %t154)
  %t158 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t156, 1
  %t161 = extractvalue { i64, ptr } %t159, 0
  %t162 = extractvalue { i64, ptr } %t159, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  %t169 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s11, ptr %s11, ptr %s11, ptr %t148, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d48, i32 0, i32 1) }, { i64, ptr } %t166)
  store { i64, ptr } %t169, ptr %l103
  br label %bb46
bb46:
  %t170 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 0
  %t172 = extractvalue { i64, ptr } %t170, 1
  %t173 = mul i64 %t171, 1
  %t174 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t173)
  call void @llvm.memcpy.p0.p0.i64(ptr %t174, ptr %t172, i64 %t173, i1 false)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  call void @compiler_2fbuild_2esayln(ptr %s11, { i64, ptr } %t176)
  br label %bb47
bb47:
  store i1 true, ptr %l6, !tbaa !21
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s3)
  br label %bb64
bb48:
  %t178 = load %"std/os:Output", ptr %l89
  store %"std/os:Output" %t178, ptr %l22
  %t179 = getelementptr %"std/os:Output", ptr %l22, i32 0, i32 0
  %t180 = load i32, ptr %t179, !tbaa !23
  %t182 = icmp sgt i32 %t180, 128
  br i1 %t182, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s13
  %t184 = load ptr, ptr %l0, !tbaa !29
  store ptr %t184, ptr %l107, !tbaa !29
  %t185 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t185, ptr %l108, !tbaa !27
  %t186 = getelementptr %"std/os:Output", ptr %l22, i32 0, i32 0
  %t187 = load i32, ptr %t186, !tbaa !23
  %t189 = sub i32 %t187, 128
  %t191 = call { i64, ptr } @compiler_2fbuild_2eSignalName(ptr %s13, i32 %t189)
  store { i64, ptr } %t191, ptr %l111
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t192 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 1
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t195 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t196 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t197 = add i64 %t194, %t196
  %t198 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = extractvalue { i64, ptr } %t198, 0
  %t201 = add i64 %t197, %t200
  %t202 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t203 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t204 = add i64 %t201, %t203
  %t205 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t204)
  call void @olang_textcopy(ptr %t205, ptr %t193, i64 %t194)
  %t206 = getelementptr i8, ptr %t205, i64 %t194
  call void @olang_textcopy(ptr %t206, ptr %t195, i64 %t196)
  %t207 = getelementptr i8, ptr %t206, i64 %t196
  call void @olang_textcopy(ptr %t207, ptr %t199, i64 %t200)
  %t208 = getelementptr i8, ptr %t207, i64 %t200
  call void @olang_textcopy(ptr %t208, ptr %t202, i64 %t203)
  %t209 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t205, 1
  %t212 = extractvalue { i64, ptr } %t210, 0
  %t213 = extractvalue { i64, ptr } %t210, 1
  %t214 = mul i64 %t212, 1
  %t215 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t214)
  call void @llvm.memcpy.p0.p0.i64(ptr %t215, ptr %t213, i64 %t214, i1 false)
  %t216 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  %t218 = load ptr, ptr %l107, !tbaa !29
  %t220 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s13, ptr %s13, ptr %s13, ptr %t218, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) }, { i64, ptr } %t217)
  store { i64, ptr } %t220, ptr %l114
  br label %bb52
bb52:
  %t221 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t221, 0
  %t223 = extractvalue { i64, ptr } %t221, 1
  %t224 = mul i64 %t222, 1
  %t225 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t224)
  call void @llvm.memcpy.p0.p0.i64(ptr %t225, ptr %t223, i64 %t224, i1 false)
  %t226 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t225, 1
  call void @compiler_2fbuild_2esayln(ptr %s13, { i64, ptr } %t227)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s13)
  br label %bb54
bb54:
  %t229 = getelementptr %"std/os:Output", ptr %l22, i32 0, i32 0
  %t230 = load i32, ptr %t229, !tbaa !23
  %t232 = icmp ne i32 %t230, 3
  br i1 %t232, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb57
bb56:
  br label %bb57
bb57:
  %t234 = getelementptr %"std/os:Output", ptr %l22, i32 0, i32 0
  %t235 = load i32, ptr %t234, !tbaa !23
  %t237 = icmp ne i32 %t235, 0
  br i1 %t237, label %bb58, label %bb59
bb58:
  %t239 = getelementptr %"std/os:Output", ptr %l22, i32 0, i32 0
  %t240 = load i32, ptr %t239, !tbaa !23
  %t242 = icmp ne i32 %t240, 3
  store i1 %t242, ptr %l120, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb60
bb60:
  %t244 = load i1, ptr %l120, !tbaa !21
  br i1 %t244, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb63
bb62:
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s3)
  br label %bb64
bb64:
  %t245 = load i64, ptr %l10, !tbaa !24
  %t247 = add i64 %t245, 1
  store i64 %t247, ptr %l10, !tbaa !24
  br label %bb13
bb65:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/build:Config", ptr %t249, i32 0, i32 16
  %t252 = load i1, ptr %t251, !tbaa !21
  br i1 %t252, label %bb66, label %bb67
bb66:
  %t254 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t254, 0
  %t258 = icmp sgt i64 %t256, 1
  store i1 %t258, ptr %l127, !tbaa !21
  br label %bb68
bb67:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb68
bb68:
  %t260 = load i1, ptr %l127, !tbaa !21
  br i1 %t260, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s18
  %t261 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t263 = extractvalue { i64, ptr } %t261, 0
  store i64 %t263, ptr %l132, !tbaa !24
  %t264 = call i64 @std_2ftime_2eNow()
  store i64 %t264, ptr %l133
  br label %bb71
bb70:
  br label %bb74
bb71:
  %t265 = load i64, ptr %l5, !tbaa !24
  %t266 = load i64, ptr %l133, !tbaa !24
  %t268 = sub i64 %t266, %t265
  %t269 = load i64, ptr %l132, !tbaa !24
  %t271 = call { i64, ptr } @compiler_2fmeasure_2eTotal(ptr %s18, i64 %t269, i64 %t268)
  store { i64, ptr } %t271, ptr %l136
  br label %bb72
bb72:
  %t272 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t272, 1
  %t274 = extractvalue { i64, ptr } %t272, 0
  %t275 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t276 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t277 = add i64 %t274, %t276
  %t278 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t277)
  call void @olang_textcopy(ptr %t278, ptr %t273, i64 %t274)
  %t279 = getelementptr i8, ptr %t278, i64 %t274
  call void @olang_textcopy(ptr %t279, ptr %t275, i64 %t276)
  %t280 = insertvalue { i64, ptr } undef, i64 %t277, 0
  %t281 = insertvalue { i64, ptr } %t280, ptr %t278, 1
  %t283 = extractvalue { i64, ptr } %t281, 0
  %t284 = extractvalue { i64, ptr } %t281, 1
  %t285 = mul i64 %t283, 1
  %t286 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t285)
  call void @llvm.memcpy.p0.p0.i64(ptr %t286, ptr %t284, i64 %t285, i1 false)
  %t287 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t286, 1
  call void @compiler_2fbuild_2esayErr(ptr %s18, { i64, ptr } %t288)
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s18)
  br label %bb74
bb74:
  %t290 = load i1, ptr %l7, !tbaa !21
  %t292 = xor i1 %t290, true
  br i1 %t292, label %bb75, label %bb76
bb75:
  %t294 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t294, 0
  %t298 = icmp sgt i64 %t296, 0
  store i1 %t298, ptr %l141, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb77
bb77:
  %t300 = load i1, ptr %l141, !tbaa !21
  br i1 %t300, label %bb78, label %bb79
bb78:
  store %olang.scope zeroinitializer, ptr %s20
  %t301 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s20, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t301, ptr %l145
  br label %bb80
bb79:
  br label %bb93
bb80:
  %t302 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l145
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t302, ptr %l23
  %t303 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t303, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t305 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t307 = extractvalue { i64, ptr } %t305, 0
  store i64 %t307, ptr %l26, !tbaa !24
  br label %bb81
bb81:
  %t309 = load i64, ptr %l25, !tbaa !24
  %t310 = load i64, ptr %l26, !tbaa !24
  %t313 = icmp slt i64 %t309, %t310
  %t315 = xor i1 %t313, true
  br i1 %t315, label %bb82, label %bb83
bb82:
  br label %bb89
bb83:
  br label %bb84
bb84:
  %t317 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t317, ptr %l153, !tbaa !27
  %t318 = load i64, ptr %l25, !tbaa !24
  %t320 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !27
  %t322 = getelementptr { i64, ptr }, ptr %t321, i64 %t318
  %t323 = load { i64, ptr }, ptr %t322, !tbaa !37
  store { i64, ptr } %t323, ptr %l27, !tbaa !27
  store ptr %l23, ptr %l156, !tbaa !29
  %t325 = ptrtoint ptr %s20 to i64
  store i64 %t325, ptr %l157, !tbaa !24
  %t326 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t326, label %bb85, label %bb86
bb85:
  %t328 = call ptr @__olang_region_make(ptr %s20)
  %t329 = ptrtoint ptr %t328 to i64
  store i64 %t329, ptr %l157, !tbaa !24
  br label %bb86
bb86:
  %t330 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t331 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t332 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t334 = extractvalue { i64, ptr } %t330, 1
  %t335 = extractvalue { i64, ptr } %t330, 0
  %t336 = add i64 %t332, %t335
  %t337 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t338 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t339 = add i64 %t336, %t338
  %t340 = load i64, ptr %l157
  %t341 = inttoptr i64 %t340 to ptr
  %t342 = call ptr @__olang_scope_alloc(ptr %t341, i64 %t339)
  call void @olang_textcopy(ptr %t342, ptr %t331, i64 %t332)
  %t343 = getelementptr i8, ptr %t342, i64 %t332
  call void @olang_textcopy(ptr %t343, ptr %t334, i64 %t335)
  %t344 = getelementptr i8, ptr %t343, i64 %t335
  call void @olang_textcopy(ptr %t344, ptr %t337, i64 %t338)
  %t345 = insertvalue { i64, ptr } undef, i64 %t339, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t342, 1
  %t348 = load i64, ptr %l157
  %t349 = inttoptr i64 %t348 to ptr
  %t350 = extractvalue { i64, ptr } %t346, 0
  %t351 = extractvalue { i64, ptr } %t346, 1
  %t352 = mul i64 %t350, 1
  %t353 = call ptr @__olang_scope_alloc(ptr %t349, i64 %t352)
  call void @llvm.memcpy.p0.p0.i64(ptr %t353, ptr %t351, i64 %t352, i1 false)
  %t354 = insertvalue { i64, ptr } undef, i64 %t350, 0
  %t355 = insertvalue { i64, ptr } %t354, ptr %t353, 1
  %t356 = load ptr, ptr %l156, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s20, ptr %s20, ptr %t356, { i64, ptr } %t355)
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t358 = load i64, ptr %l25, !tbaa !24
  %t360 = add i64 %t358, 1
  store i64 %t360, ptr %l25, !tbaa !24
  br label %bb81
bb89:
  %t362 = load ptr, ptr %l0, !tbaa !29
  store ptr %t362, ptr %l164, !tbaa !29
  %t364 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s20, ptr %s20, ptr %s20, ptr %l23, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store { i64, ptr } %t364, ptr %l166
  br label %bb90
bb90:
  %t365 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t366 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t367 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t368 = extractvalue { i64, ptr } %t367, 1
  %t369 = extractvalue { i64, ptr } %t367, 0
  %t370 = add i64 %t366, %t369
  %t371 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t370)
  call void @olang_textcopy(ptr %t371, ptr %t365, i64 %t366)
  %t372 = getelementptr i8, ptr %t371, i64 %t366
  call void @olang_textcopy(ptr %t372, ptr %t368, i64 %t369)
  %t373 = insertvalue { i64, ptr } undef, i64 %t370, 0
  %t374 = insertvalue { i64, ptr } %t373, ptr %t371, 1
  %t376 = extractvalue { i64, ptr } %t374, 0
  %t377 = extractvalue { i64, ptr } %t374, 1
  %t378 = mul i64 %t376, 1
  %t379 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t378)
  call void @llvm.memcpy.p0.p0.i64(ptr %t379, ptr %t377, i64 %t378, i1 false)
  %t380 = insertvalue { i64, ptr } undef, i64 %t376, 0
  %t381 = insertvalue { i64, ptr } %t380, ptr %t379, 1
  %t382 = load ptr, ptr %l164, !tbaa !29
  %t384 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s20, ptr %s20, ptr %s20, ptr %t382, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d57, i32 0, i32 1) }, { i64, ptr } %t381)
  store { i64, ptr } %t384, ptr %l169
  br label %bb91
bb91:
  %t385 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t386 = extractvalue { i64, ptr } %t385, 0
  %t387 = extractvalue { i64, ptr } %t385, 1
  %t388 = mul i64 %t386, 1
  %t389 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t388)
  call void @llvm.memcpy.p0.p0.i64(ptr %t389, ptr %t387, i64 %t388, i1 false)
  %t390 = insertvalue { i64, ptr } undef, i64 %t386, 0
  %t391 = insertvalue { i64, ptr } %t390, ptr %t389, 1
  call void @compiler_2fbuild_2esayln(ptr %s20, { i64, ptr } %t391)
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s20)
  store i32 1, ptr %rv
  br label %ret
bb93:
  %t394 = load i1, ptr %l6, !tbaa !21
  br i1 %t394, label %bb94, label %bb95
bb94:
  store i32 1, ptr %l173, !tbaa !23
  br label %bb96
bb95:
  store i32 0, ptr %l173, !tbaa !23
  br label %bb96
bb96:
  %t396 = load i32, ptr %l173, !tbaa !23
  store i32 %t396, ptr %rv
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
  %t2 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t3 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
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
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/build:Config", ptr %t3, i32 0, i32 2
  %t6 = getelementptr %"compiler/target:Target", ptr %t5, i32 0, i32 9
  %t7 = load i1, ptr %t6, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  store ptr %l1, ptr %l6, !tbaa !29
  %t9 = ptrtoint ptr %v1 to i64
  store i64 %t9, ptr %l7, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t10, label %bb4, label %bb5
bb3:
  br label %bb15
bb4:
  %t12 = call ptr @__olang_region_make(ptr %v1)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/build:Config", ptr %t14, i32 0, i32 2
  %t17 = getelementptr %"compiler/target:Target", ptr %t16, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t19 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t22 = extractvalue { i64, ptr } %t18, 1
  %t23 = extractvalue { i64, ptr } %t18, 0
  %t24 = add i64 %t20, %t23
  %t25 = load i64, ptr %l7
  %t26 = inttoptr i64 %t25 to ptr
  %t27 = call ptr @__olang_scope_alloc(ptr %t26, i64 %t24)
  call void @olang_textcopy(ptr %t27, ptr %t19, i64 %t20)
  %t28 = getelementptr i8, ptr %t27, i64 %t20
  call void @olang_textcopy(ptr %t28, ptr %t22, i64 %t23)
  %t29 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  %t32 = load i64, ptr %l7
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = extractvalue { i64, ptr } %t30, 0
  %t35 = extractvalue { i64, ptr } %t30, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %t33, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  %t40 = load ptr, ptr %l6, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t40, { i64, ptr } %t39)
  br label %bb6
bb6:
  %t42 = call { i64, ptr } @compiler_2ftarget_2eSysroot(ptr %s1)
  store { i64, ptr } %t42, ptr %l13
  br label %bb7
bb7:
  %t43 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t43, ptr %l2, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t46 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t44, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t46, ptr %l15
  br label %bb8
bb8:
  %t47 = load i1, ptr %l15, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb9, label %bb10
bb9:
  store ptr %l1, ptr %l17, !tbaa !29
  %t50 = ptrtoint ptr %v1 to i64
  store i64 %t50, ptr %l18, !tbaa !24
  %t51 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t51, label %bb11, label %bb12
bb10:
  br label %bb14
bb11:
  %t53 = call ptr @__olang_region_make(ptr %v1)
  %t54 = ptrtoint ptr %t53 to i64
  store i64 %t54, ptr %l18, !tbaa !24
  br label %bb12
bb12:
  %t55 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t56 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t59 = extractvalue { i64, ptr } %t55, 1
  %t60 = extractvalue { i64, ptr } %t55, 0
  %t61 = add i64 %t57, %t60
  %t62 = load i64, ptr %l18
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call ptr @__olang_scope_alloc(ptr %t63, i64 %t61)
  call void @olang_textcopy(ptr %t64, ptr %t56, i64 %t57)
  %t65 = getelementptr i8, ptr %t64, i64 %t57
  call void @olang_textcopy(ptr %t65, ptr %t59, i64 %t60)
  %t66 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t64, 1
  %t69 = load i64, ptr %l18
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = extractvalue { i64, ptr } %t67, 0
  %t72 = extractvalue { i64, ptr } %t67, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %t70, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  %t77 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t77, { i64, ptr } %t76)
  br label %bb13
bb13:
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s1)
  br label %bb15
bb15:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/build:Config", ptr %t79, i32 0, i32 2
  %t82 = getelementptr %"compiler/target:Target", ptr %t81, i32 0, i32 6
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  %t85 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t83, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d62, i32 0, i32 1) })
  store i1 %t85, ptr %l25
  br label %bb16
bb16:
  %t86 = load i1, ptr %l25, !tbaa !21
  %t87 = xor i1 %t86, true
  br i1 %t87, label %bb17, label %bb18
bb17:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/build:Config", ptr %t89, i32 0, i32 2
  %t92 = getelementptr %"compiler/target:Target", ptr %t91, i32 0, i32 6
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v0, ptr %l1, { i64, ptr } %t93)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d63, i32 0, i32 1) })
  br label %bb21
bb21:
  %t97 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCompileFlags(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i1
  %l32 = alloca i1
  %l35 = alloca { i64, ptr }
  %l36 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %v2, ptr %t1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i1 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2evectorizesAtLink(ptr %v0, ptr %t5)
  store i1 %t7, ptr %l10
  br label %bb2
bb2:
  %t8 = load i1, ptr %l10, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = insertvalue [6 x { i64, ptr }] undef, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t10 = insertvalue [6 x { i64, ptr }] %t9, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t11 = insertvalue [6 x { i64, ptr }] %t10, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d66, i32 0, i32 1) }, 2
  %t12 = insertvalue [6 x { i64, ptr }] %t11, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d67, i32 0, i32 1) }, 3
  %t13 = insertvalue [6 x { i64, ptr }] %t12, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d68, i32 0, i32 1) }, 4
  %t14 = insertvalue [6 x { i64, ptr }] %t13, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d69, i32 0, i32 1) }, 5
  %t16 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 96, i64 8)
  store [6 x { i64, ptr }] %t14, ptr %t16
  store ptr %t16, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t18 = load ptr, ptr %l3
  store i64 6, ptr %l5, !tbaa !24
  br label %bb5
bb4:
  br label %bb12
bb5:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = icmp slt i64 %t21, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb6, label %bb7
bb6:
  br label %bb11
bb7:
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l3
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = getelementptr [6 x { i64, ptr }], ptr %t29, i64 0, i64 %t30
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !37
  %t37 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %t37, ptr %l2, { i64, ptr } %t34)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t40 = load i64, ptr %l4, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l4, !tbaa !24
  br label %bb5
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb12:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/build:Config", ptr %t44, i32 0, i32 14
  %t47 = load i1, ptr %t46, !tbaa !21
  br i1 %t47, label %bb13, label %bb14
bb13:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %l2, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) })
  br label %bb15
bb14:
  br label %bb17
bb15:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %l2, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d71, i32 0, i32 1) })
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/build:Config", ptr %t51, i32 0, i32 4
  %t54 = load i1, ptr %t53, !tbaa !21
  br i1 %t54, label %bb18, label %bb19
bb18:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t60 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %a1, { i64, ptr } %t59)
  store i1 %t60, ptr %l36
  br label %bb20
bb19:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb21
bb20:
  %t61 = load i1, ptr %l36, !tbaa !21
  store i1 %t61, ptr %l32, !tbaa !21
  br label %bb21
bb21:
  %t62 = load i1, ptr %l32, !tbaa !21
  br i1 %t62, label %bb22, label %bb23
bb22:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %l2, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d73, i32 0, i32 1) })
  br label %bb24
bb23:
  br label %bb26
bb24:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %l2, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d74, i32 0, i32 1) })
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/build:Config", ptr %t65, i32 0, i32 18
  %t68 = load i1, ptr %t67, !tbaa !21
  br i1 %t68, label %bb27, label %bb28
bb27:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %l2, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d75, i32 0, i32 1) })
  br label %bb29
bb28:
  br label %bb33
bb29:
  store ptr %l2, ptr %l42, !tbaa !29
  %t71 = ptrtoint ptr %v2 to i64
  store i64 %t71, ptr %l43, !tbaa !24
  %t72 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t72, label %bb30, label %bb31
bb30:
  %t74 = call ptr @__olang_region_make(ptr %v2)
  %t75 = ptrtoint ptr %t74 to i64
  store i64 %t75, ptr %l43, !tbaa !24
  br label %bb31
bb31:
  %t76 = load { i64, ptr }, ptr @G_2ecompiler_2fbuild_2eRemarkPasses, !tbaa !27
  %t77 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t80 = extractvalue { i64, ptr } %t76, 1
  %t81 = extractvalue { i64, ptr } %t76, 0
  %t82 = add i64 %t78, %t81
  %t83 = load i64, ptr %l43
  %t84 = inttoptr i64 %t83 to ptr
  %t85 = call ptr @__olang_scope_alloc(ptr %t84, i64 %t82)
  call void @olang_textcopy(ptr %t85, ptr %t77, i64 %t78)
  %t86 = getelementptr i8, ptr %t85, i64 %t78
  call void @olang_textcopy(ptr %t86, ptr %t80, i64 %t81)
  %t87 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t85, 1
  %t90 = load i64, ptr %l43
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = extractvalue { i64, ptr } %t88, 0
  %t93 = extractvalue { i64, ptr } %t88, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t98 = load ptr, ptr %l42, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t98, { i64, ptr } %t97)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eDataFlags(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca { i64, ptr }
  %l18 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %v1, ptr %a0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l7
  br label %bb2
bb2:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t7 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  store ptr %t7, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = load i64, ptr %l3, !tbaa !24
  store i64 %t9, ptr %l9, !tbaa !24
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t10)
  store i64 %t12, ptr %l11
  br label %bb4
bb4:
  %t13 = load i64, ptr %l9, !tbaa !24
  %t14 = load i64, ptr %l11, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t19, i64 %t20)
  store { i64, ptr } %t23, ptr %l16
  br label %bb8
bb8:
  %t24 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t24, ptr %l4, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t25, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d77, i32 0, i32 1) })
  store i1 %t27, ptr %l18
  br label %bb9
bb9:
  %t28 = load i1, ptr %l18, !tbaa !21
  %t29 = xor i1 %t28, true
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t31 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t31, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store i1 %t33, ptr %l22
  br label %bb12
bb11:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb13
bb12:
  %t34 = load i1, ptr %l22, !tbaa !21
  %t35 = xor i1 %t34, true
  store i1 %t35, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  %t37 = load i1, ptr %l20, !tbaa !21
  br i1 %t37, label %bb14, label %bb15
bb14:
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } %t38)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l3, !tbaa !24
  br label %bb3
bb19:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %rv
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
  %t8 = getelementptr %"compiler/build:Config", ptr %t6, i32 0, i32 14
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d79, i32 0, i32 1) }, ptr %l5, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d80, i32 0, i32 1) }, ptr %l5, !tbaa !27
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
  %l193 = alloca ptr
  %l194 = alloca i64
  %l197 = alloca i64
  %l200 = alloca %"std/os:Output"
  %l202 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l204 = alloca %"std/os:Output"
  %l205 = alloca i32
  %l207 = alloca i1
  %l214 = alloca ptr
  %l217 = alloca %"std/os:FileInfo"
  %l219 = alloca %"std/os:FileInfo"
  %l220 = alloca i32
  %l222 = alloca i1
  %l232 = alloca i32
  %l234 = alloca i1
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
  call void @compiler_2fspin_2eRetitle(ptr %s0, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d81, i32 0, i32 1) })
  br label %bb1
bb1:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l29
  br label %bb2
bb2:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l6
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/build:Config", ptr %t3, i32 0, i32 1
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %l6, { i64, ptr } %t6)
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %s0, ptr %t9)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l34
  br label %bb4
bb4:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  %t13 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %t13
  store ptr %t13, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb5
bb5:
  %t15 = load i64, ptr %l8, !tbaa !24
  store i64 %t15, ptr %l36, !tbaa !24
  %t16 = load ptr, ptr %l7, !tbaa !29
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t16)
  store i64 %t18, ptr %l38
  br label %bb6
bb6:
  %t19 = load i64, ptr %l36, !tbaa !24
  %t20 = load i64, ptr %l38, !tbaa !24
  %t21 = icmp slt i64 %t19, %t20
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  br label %bb9
bb9:
  %t25 = load ptr, ptr %l7, !tbaa !29
  %t26 = load i64, ptr %l8, !tbaa !24
  %t29 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t25, i64 %t26)
  store { i64, ptr } %t29, ptr %l43
  br label %bb10
bb10:
  %t30 = load { i64, ptr }, ptr %l43, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t30)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t34 = load i64, ptr %l8, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l8, !tbaa !24
  br label %bb5
bb13:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/build:Config", ptr %t38, i32 0, i32 34
  %t41 = load i1, ptr %t40, !tbaa !21
  br i1 %t41, label %bb14, label %bb15
bb14:
  store ptr %l6, ptr %l50, !tbaa !29
  %t43 = ptrtoint ptr %s0 to i64
  store i64 %t43, ptr %l51, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t44, label %bb16, label %bb17
bb15:
  br label %bb22
bb16:
  %t46 = call ptr @__olang_region_make(ptr %s0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l51, !tbaa !24
  br label %bb17
bb17:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/build:Config", ptr %t48, i32 0, i32 0
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  %t52 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t53 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t55 = extractvalue { i64, ptr } %t51, 1
  %t56 = extractvalue { i64, ptr } %t51, 0
  %t57 = add i64 %t53, %t56
  %t58 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
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
  br label %bb18
bb18:
  store ptr %l6, ptr %l57, !tbaa !29
  %t79 = ptrtoint ptr %s0 to i64
  store i64 %t79, ptr %l58, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t80, label %bb19, label %bb20
bb19:
  %t82 = call ptr @__olang_region_make(ptr %s0)
  %t83 = ptrtoint ptr %t82 to i64
  store i64 %t83, ptr %l58, !tbaa !24
  br label %bb20
bb20:
  %t84 = load i64, ptr @G_2ecompiler_2fbuild_2eImportLimit, !tbaa !24
  %t85 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
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
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t108 = load ptr, ptr %l5, !tbaa !29
  %t110 = icmp eq ptr %t108, null
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d85, i32 0, i32 1) })
  br label %bb25
bb24:
  br label %bb52
bb25:
  %t115 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 1
  %t118 = extractvalue { i64, ptr } %t115, 0
  %t119 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t120 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
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
  br label %bb26
bb26:
  %t128 = load %"std/prelude/text:StringBuilder", ptr %l69
  store %"std/prelude/text:StringBuilder" %t128, ptr %l11
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s7, ptr %s7, ptr %l11, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d87, i32 0, i32 1) })
  br label %bb27
bb27:
  %t130 = load ptr, ptr %l5, !tbaa !29
  store ptr %t130, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb28
bb28:
  store %olang.scope zeroinitializer, ptr %s10
  %t132 = load i64, ptr %l13, !tbaa !24
  store i64 %t132, ptr %l72, !tbaa !24
  %t133 = load ptr, ptr %l12, !tbaa !29
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v4, ptr %t133)
  store i64 %t135, ptr %l74
  br label %bb29
bb29:
  %t136 = load i64, ptr %l72, !tbaa !24
  %t137 = load i64, ptr %l74, !tbaa !24
  %t138 = icmp slt i64 %t136, %t137
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s10)
  br label %bb36
bb31:
  br label %bb32
bb32:
  %t142 = load ptr, ptr %l12, !tbaa !29
  %t143 = load i64, ptr %l13, !tbaa !24
  %t146 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v4, ptr %v4, ptr %t142, i64 %t143)
  store { i64, ptr } %t146, ptr %l79
  br label %bb33
bb33:
  %t147 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t149 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t152 = extractvalue { i64, ptr } %t147, 1
  %t153 = extractvalue { i64, ptr } %t147, 0
  %t154 = add i64 %t150, %t153
  %t155 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t156 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
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
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s10)
  br label %bb35
bb35:
  %t172 = load i64, ptr %l13, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l13, !tbaa !24
  br label %bb28
bb36:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s7, ptr %s7, ptr %l11, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d90, i32 0, i32 1) })
  br label %bb37
bb37:
  %t177 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t177, ptr %l87, !tbaa !27
  %t179 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s7, ptr %s7, ptr %l11)
  store { i64, ptr } %t179, ptr %l89
  br label %bb38
bb38:
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
  br i1 %t191, label %bb40, label %ok.192, !prof !99
ok.192:
  br label %bb39
bb39:
  br label %bb44
bb40:
  %t193 = load i32, ptr %l92, !tbaa !23
  %t194 = ashr i32 %t193, 16
  %t196 = icmp eq i32 %t194, 1
  store i1 %t196, ptr %l94, !tbaa !21
  %t197 = load i32, ptr %l92, !tbaa !23
  %t198 = ashr i32 %t197, 16
  %t200 = icmp eq i32 %t198, 1
  br i1 %t200, label %bb41, label %bb42
bb41:
  call void @__olang_errpay_pop()
  br label %bb42
bb42:
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb44:
  store ptr %l6, ptr %l98, !tbaa !29
  %t203 = ptrtoint ptr %s0 to i64
  store i64 %t203, ptr %l99, !tbaa !24
  %t204 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t204, label %bb45, label %bb46
bb45:
  %t206 = call ptr @__olang_region_make(ptr %s0)
  %t207 = ptrtoint ptr %t206 to i64
  store i64 %t207, ptr %l99, !tbaa !24
  br label %bb46
bb46:
  %t208 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t209 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
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
  br label %bb47
bb47:
  store ptr %l6, ptr %l104, !tbaa !29
  %t232 = ptrtoint ptr %s0 to i64
  store i64 %t232, ptr %l105, !tbaa !24
  %t233 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t233, label %bb48, label %bb49
bb48:
  %t235 = call ptr @__olang_region_make(ptr %s0)
  %t236 = ptrtoint ptr %t235 to i64
  store i64 %t236, ptr %l105, !tbaa !24
  br label %bb49
bb49:
  %t237 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t239 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v2, ptr %s7, { i64, ptr } %t237)
  store { i64, ptr } %t239, ptr %l108
  br label %bb50
bb50:
  %t240 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
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
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s7)
  br label %bb52
bb52:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d93, i32 0, i32 1) })
  br label %bb53
bb53:
  %t264 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v2, ptr %l6, { i64, ptr } %t264)
  br label %bb54
bb54:
  store ptr %a1, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb55
bb55:
  %t269 = load i64, ptr %l16, !tbaa !24
  store i64 %t269, ptr %l115, !tbaa !24
  %t270 = load ptr, ptr %l15, !tbaa !29
  %t272 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t270)
  store i64 %t272, ptr %l117
  br label %bb56
bb56:
  %t273 = load i64, ptr %l115, !tbaa !24
  %t274 = load i64, ptr %l117, !tbaa !24
  %t275 = icmp slt i64 %t273, %t274
  %t277 = xor i1 %t275, true
  br i1 %t277, label %bb57, label %bb58
bb57:
  br label %bb63
bb58:
  br label %bb59
bb59:
  %t279 = load ptr, ptr %l15, !tbaa !29
  %t280 = load i64, ptr %l16, !tbaa !24
  %t283 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t279, i64 %t280)
  store { i64, ptr } %t283, ptr %l122
  br label %bb60
bb60:
  %t284 = load { i64, ptr }, ptr %l122, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l6, { i64, ptr } %t284)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t288 = load i64, ptr %l16, !tbaa !24
  %t290 = add i64 %t288, 1
  store i64 %t290, ptr %l16, !tbaa !24
  br label %bb55
bb63:
  store ptr %a4, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb64
bb64:
  %t294 = load i64, ptr %l19, !tbaa !24
  store i64 %t294, ptr %l128, !tbaa !24
  %t295 = load ptr, ptr %l18, !tbaa !29
  %t297 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t295)
  store i64 %t297, ptr %l130
  br label %bb65
bb65:
  %t298 = load i64, ptr %l128, !tbaa !24
  %t299 = load i64, ptr %l130, !tbaa !24
  %t300 = icmp slt i64 %t298, %t299
  %t302 = xor i1 %t300, true
  br i1 %t302, label %bb66, label %bb67
bb66:
  br label %bb72
bb67:
  br label %bb68
bb68:
  %t304 = load ptr, ptr %l18, !tbaa !29
  %t305 = load i64, ptr %l19, !tbaa !24
  %t308 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t304, i64 %t305)
  store { i64, ptr } %t308, ptr %l135
  br label %bb69
bb69:
  %t309 = load { i64, ptr }, ptr %l135, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v3, ptr %l6, { i64, ptr } %t309)
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t313 = load i64, ptr %l19, !tbaa !24
  %t315 = add i64 %t313, 1
  store i64 %t315, ptr %l19, !tbaa !24
  br label %bb64
bb72:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d94, i32 0, i32 1) })
  br label %bb73
bb73:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d95, i32 0, i32 1) })
  br label %bb74
bb74:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d96, i32 0, i32 1) })
  br label %bb75
bb75:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/build:Config", ptr %t320, i32 0, i32 14
  %t323 = load i1, ptr %t322, !tbaa !21
  br i1 %t323, label %bb76, label %bb77
bb76:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d97, i32 0, i32 1) })
  br label %bb78
bb77:
  br label %bb86
bb78:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/build:Config", ptr %t326, i32 0, i32 5
  %t329 = load i1, ptr %t328, !tbaa !21
  %t331 = xor i1 %t329, true
  br i1 %t331, label %bb79, label %bb80
bb79:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/build:Config", ptr %t333, i32 0, i32 4
  %t336 = load i1, ptr %t335, !tbaa !21
  %t338 = xor i1 %t336, true
  store i1 %t338, ptr %l149, !tbaa !21
  br label %bb81
bb80:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb81
bb81:
  %t340 = load i1, ptr %l149, !tbaa !21
  br i1 %t340, label %bb82, label %bb83
bb82:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d98, i32 0, i32 1) })
  br label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb85
bb85:
  br label %bb86
bb86:
  br i1 %a3, label %bb87, label %bb88
bb87:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d99, i32 0, i32 1) })
  br label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb90
bb90:
  %t345 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t345, ptr %l156
  br label %bb91
bb91:
  %t346 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l156
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t346, ptr %l21
  store ptr %l6, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb92
bb92:
  %t348 = load i64, ptr %l23, !tbaa !24
  store i64 %t348, ptr %l158, !tbaa !24
  %t349 = load ptr, ptr %l22, !tbaa !29
  %t351 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t349)
  store i64 %t351, ptr %l160
  br label %bb93
bb93:
  %t352 = load i64, ptr %l158, !tbaa !24
  %t353 = load i64, ptr %l160, !tbaa !24
  %t354 = icmp slt i64 %t352, %t353
  %t356 = xor i1 %t354, true
  br i1 %t356, label %bb94, label %bb95
bb94:
  br label %bb100
bb95:
  br label %bb96
bb96:
  %t358 = load ptr, ptr %l22, !tbaa !29
  %t359 = load i64, ptr %l23, !tbaa !24
  %t362 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t358, i64 %t359)
  store { i64, ptr } %t362, ptr %l165
  br label %bb97
bb97:
  %t363 = load { i64, ptr }, ptr %l165, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l21, { i64, ptr } %t363)
  br label %bb98
bb98:
  br label %bb99
bb99:
  %t367 = load i64, ptr %l23, !tbaa !24
  %t369 = add i64 %t367, 1
  store i64 %t369, ptr %l23, !tbaa !24
  br label %bb92
bb100:
  store ptr %l21, ptr %l170, !tbaa !29
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eclangVersion(ptr %v0, ptr %v0, ptr %t371)
  store { i64, ptr } %t373, ptr %l172
  br label %bb101
bb101:
  %t374 = load ptr, ptr %l170, !tbaa !29
  %t375 = load { i64, ptr }, ptr %l172, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %t374, { i64, ptr } %t375)
  br label %bb102
bb102:
  %t377 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s0, ptr %s0, ptr %l21)
  store { i64, ptr } %t377, ptr %l174
  br label %bb103
bb103:
  %t378 = load { i64, ptr }, ptr %l174, !tbaa !27
  store { i64, ptr } %t378, ptr %l25, !tbaa !27
  %t379 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t381 = extractvalue { i64, ptr } %t379, 1
  %t382 = extractvalue { i64, ptr } %t379, 0
  %t383 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t384 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
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
  br label %bb104
bb104:
  %t398 = load i1, ptr %l180, !tbaa !21
  br i1 %t398, label %bb105, label %bb106
bb105:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb106:
  br label %bb107
bb107:
  %t399 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t401 = call i32 @std_2fos_2eRemove(ptr %s0, { i64, ptr } %t399)
  store i32 %t401, ptr %l182
  %t402 = icmp ne i32 %t401, 0
  br i1 %t402, label %bb109, label %ok.403, !prof !99
ok.403:
  br label %bb108
bb108:
  br label %bb113
bb109:
  %t404 = load i32, ptr %l182, !tbaa !23
  %t405 = ashr i32 %t404, 16
  %t407 = icmp eq i32 %t405, 1
  store i1 %t407, ptr %l184, !tbaa !21
  %t408 = load i32, ptr %l182, !tbaa !23
  %t409 = ashr i32 %t408, 16
  %t411 = icmp eq i32 %t409, 1
  br i1 %t411, label %bb110, label %bb111
bb110:
  call void @__olang_errpay_pop()
  br label %bb111
bb111:
  br label %bb112
bb112:
  br label %bb113
bb113:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t415 = getelementptr %"compiler/build:Config", ptr %t413, i32 0, i32 1
  %t416 = load { i64, ptr }, ptr %t415, !tbaa !27
  %t418 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t416, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) })
  store i1 %t418, ptr %l189
  br label %bb114
bb114:
  %t419 = load i1, ptr %l189, !tbaa !21
  br i1 %t419, label %bb115, label %bb116
bb115:
  call void @__olang_scope_close(ptr %s0)
  store i32 65537, ptr %rv
  br label %ret
bb116:
  br label %bb117
bb117:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t423 = getelementptr %"compiler/build:Config", ptr %t421, i32 0, i32 34
  %t424 = load i1, ptr %t423, !tbaa !21
  br i1 %t424, label %bb118, label %bb119
bb118:
  store ptr %l6, ptr %l193, !tbaa !29
  %t426 = ptrtoint ptr %s0 to i64
  store i64 %t426, ptr %l194, !tbaa !24
  %t427 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t427, label %bb120, label %bb121
bb119:
  br label %bb124
bb120:
  %t429 = call ptr @__olang_region_make(ptr %s0)
  %t430 = ptrtoint ptr %t429 to i64
  store i64 %t430, ptr %l194, !tbaa !24
  br label %bb121
bb121:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t433 = call i64 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewidth(ptr %v0, ptr %t431)
  store i64 %t433, ptr %l197
  br label %bb122
bb122:
  %t434 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t435 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t436 = load i64, ptr %l197, !tbaa !24
  %t437 = call i64 @__olang_fmt_i64(ptr null, i64 %t436)
  %t438 = add i64 %t435, %t437
  %t439 = load i64, ptr %l194
  %t440 = inttoptr i64 %t439 to ptr
  %t441 = call ptr @__olang_scope_alloc(ptr %t440, i64 %t438)
  call void @olang_textcopy(ptr %t441, ptr %t434, i64 %t435)
  %t442 = getelementptr i8, ptr %t441, i64 %t435
  %t443 = call i64 @__olang_fmt_i64(ptr %t442, i64 %t436)
  %t444 = insertvalue { i64, ptr } undef, i64 %t438, 0
  %t445 = insertvalue { i64, ptr } %t444, ptr %t441, 1
  %t447 = load i64, ptr %l194
  %t448 = inttoptr i64 %t447 to ptr
  %t449 = extractvalue { i64, ptr } %t445, 0
  %t450 = extractvalue { i64, ptr } %t445, 1
  %t451 = mul i64 %t449, 1
  %t452 = call ptr @__olang_scope_alloc(ptr %t448, i64 %t451)
  call void @llvm.memcpy.p0.p0.i64(ptr %t452, ptr %t450, i64 %t451, i1 false)
  %t453 = insertvalue { i64, ptr } undef, i64 %t449, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr %t452, 1
  %t455 = load ptr, ptr %l193, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t455, { i64, ptr } %t454)
  br label %bb123
bb123:
  br label %bb124
bb124:
  %t458 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t458, ptr %l202
  br label %bb125
bb125:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l203, !tbaa !27
  %t459 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t460 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t461 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t459, { i64, ptr } %t460, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  %t462 = extractvalue { i32, %"std/os:Output" } %t461, 1
  %t463 = extractvalue { i32, %"std/os:Output" } %t461, 0
  store i32 %t463, ptr %l205
  %t464 = icmp ne i32 %t463, 0
  br i1 %t464, label %bb127, label %ok.465, !prof !99
ok.465:
  store %"std/os:Output" %t462, ptr %l204
  br label %bb126
bb126:
  %t466 = load %"std/os:Output", ptr %l204
  store %"std/os:Output" %t466, ptr %l200
  br label %bb131
bb127:
  %t467 = load i32, ptr %l205, !tbaa !23
  %t468 = ashr i32 %t467, 16
  %t470 = icmp eq i32 %t468, 1
  store i1 %t470, ptr %l207, !tbaa !21
  %t471 = load i32, ptr %l205, !tbaa !23
  %t472 = ashr i32 %t471, 16
  %t474 = icmp eq i32 %t472, 1
  br i1 %t474, label %bb128, label %bb129
bb128:
  call void @__olang_errpay_pop()
  br label %bb129
bb129:
  br label %bb130
bb130:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb131:
  %t477 = load %"std/os:Output", ptr %l200
  store %"std/os:Output" %t477, ptr %l27
  %t478 = getelementptr %"std/os:Output", ptr %l27, i32 0, i32 0
  %t479 = load i32, ptr %t478, !tbaa !23
  %t481 = icmp ne i32 %t479, 0
  br i1 %t481, label %bb132, label %bb133
bb132:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb133:
  br label %bb134
bb134:
  %t484 = load ptr, ptr %l0, !tbaa !29
  store ptr %t484, ptr %l214, !tbaa !29
  %t485 = load ptr, ptr %l214, !tbaa !29
  %t486 = getelementptr %"compiler/build:Config", ptr %t485, i32 0, i32 33
  %t487 = load i64, ptr %t486, !tbaa !24
  %t489 = add i64 %t487, 1
  %t491 = load ptr, ptr %l214, !tbaa !29
  %t492 = getelementptr %"compiler/build:Config", ptr %t491, i32 0, i32 33
  store i64 %t489, ptr %t492, !tbaa !24
  %t493 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t495 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v2, { i64, ptr } %t493)
  %t496 = extractvalue { i32, %"std/os:FileInfo" } %t495, 1
  %t497 = extractvalue { i32, %"std/os:FileInfo" } %t495, 0
  store i32 %t497, ptr %l220
  %t498 = icmp ne i32 %t497, 0
  br i1 %t498, label %bb136, label %ok.499, !prof !99
ok.499:
  store %"std/os:FileInfo" %t496, ptr %l219
  br label %bb135
bb135:
  %t500 = load %"std/os:FileInfo", ptr %l219
  store %"std/os:FileInfo" %t500, ptr %l217
  br label %bb140
bb136:
  %t501 = load i32, ptr %l220, !tbaa !23
  %t502 = ashr i32 %t501, 16
  %t504 = icmp eq i32 %t502, 1
  store i1 %t504, ptr %l222, !tbaa !21
  %t505 = load i32, ptr %l220, !tbaa !23
  %t506 = ashr i32 %t505, 16
  %t508 = icmp eq i32 %t506, 1
  br i1 %t508, label %bb137, label %bb138
bb137:
  call void @__olang_errpay_pop()
  br label %bb138
bb138:
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb140:
  %t510 = load %"std/os:FileInfo", ptr %l217
  store %"std/os:FileInfo" %t510, ptr %l28
  %t511 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t512 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t513 = getelementptr %"std/os:FileInfo", ptr %l28, i32 0, i32 1
  %t514 = load i64, ptr %t513, !tbaa !24
  %t515 = getelementptr %"std/os:FileInfo", ptr %l28, i32 0, i32 2
  %t516 = load i64, ptr %t515, !tbaa !24
  %t518 = extractvalue { i64, ptr } %t512, 1
  %t519 = extractvalue { i64, ptr } %t512, 0
  %t520 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t521 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t522 = add i64 %t519, %t521
  %t524 = call i64 @__olang_fmt_i64(ptr null, i64 %t514)
  %t525 = add i64 %t522, %t524
  %t526 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t527 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t528 = add i64 %t525, %t527
  %t530 = call i64 @__olang_fmt_i64(ptr null, i64 %t516)
  %t531 = add i64 %t528, %t530
  %t532 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t533 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t534 = add i64 %t531, %t533
  %t535 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t534)
  call void @olang_textcopy(ptr %t535, ptr %t518, i64 %t519)
  %t536 = getelementptr i8, ptr %t535, i64 %t519
  call void @olang_textcopy(ptr %t536, ptr %t520, i64 %t521)
  %t537 = getelementptr i8, ptr %t536, i64 %t521
  %t538 = call i64 @__olang_fmt_i64(ptr %t537, i64 %t514)
  %t539 = getelementptr i8, ptr %t537, i64 %t524
  call void @olang_textcopy(ptr %t539, ptr %t526, i64 %t527)
  %t540 = getelementptr i8, ptr %t539, i64 %t527
  %t541 = call i64 @__olang_fmt_i64(ptr %t540, i64 %t516)
  %t542 = getelementptr i8, ptr %t540, i64 %t530
  call void @olang_textcopy(ptr %t542, ptr %t532, i64 %t533)
  %t543 = insertvalue { i64, ptr } undef, i64 %t534, 0
  %t544 = insertvalue { i64, ptr } %t543, ptr %t535, 1
  %t547 = extractvalue { i64, ptr } %t544, 0
  %t548 = extractvalue { i64, ptr } %t544, 1
  %t549 = mul i64 %t547, 1
  %t550 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t549)
  call void @llvm.memcpy.p0.p0.i64(ptr %t550, ptr %t548, i64 %t549, i1 false)
  %t551 = insertvalue { i64, ptr } undef, i64 %t547, 0
  %t552 = insertvalue { i64, ptr } %t551, ptr %t550, 1
  %t555 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t511, { i64, ptr } %t552)
  store i32 %t555, ptr %l232
  %t556 = icmp ne i32 %t555, 0
  br i1 %t556, label %bb142, label %ok.557, !prof !99
ok.557:
  br label %bb141
bb141:
  br label %bb146
bb142:
  %t558 = load i32, ptr %l232, !tbaa !23
  %t559 = ashr i32 %t558, 16
  %t561 = icmp eq i32 %t559, 1
  store i1 %t561, ptr %l234, !tbaa !21
  %t562 = load i32, ptr %l232, !tbaa !23
  %t563 = ashr i32 %t562, 16
  %t565 = icmp eq i32 %t563, 1
  br i1 %t565, label %bb143, label %bb144
bb143:
  call void @__olang_errpay_pop()
  br label %bb144
bb144:
  br label %bb145
bb145:
  br label %bb146
bb146:
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
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l13 = alloca { i64, ptr }
  %l15 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i64
  %l25 = alloca i1
  %l32 = alloca i1
  %l38 = alloca i1
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
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/build:Config", ptr %t3, i32 0, i32 2
  %t6 = getelementptr %"compiler/target:Target", ptr %t5, i32 0, i32 9
  %t7 = load i1, ptr %t6, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  store ptr %l1, ptr %l6, !tbaa !29
  %t9 = ptrtoint ptr %v1 to i64
  store i64 %t9, ptr %l7, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t10, label %bb4, label %bb5
bb3:
  br label %bb15
bb4:
  %t12 = call ptr @__olang_region_make(ptr %v1)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/build:Config", ptr %t14, i32 0, i32 2
  %t17 = getelementptr %"compiler/target:Target", ptr %t16, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t19 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t22 = extractvalue { i64, ptr } %t18, 1
  %t23 = extractvalue { i64, ptr } %t18, 0
  %t24 = add i64 %t20, %t23
  %t25 = load i64, ptr %l7
  %t26 = inttoptr i64 %t25 to ptr
  %t27 = call ptr @__olang_scope_alloc(ptr %t26, i64 %t24)
  call void @olang_textcopy(ptr %t27, ptr %t19, i64 %t20)
  %t28 = getelementptr i8, ptr %t27, i64 %t20
  call void @olang_textcopy(ptr %t28, ptr %t22, i64 %t23)
  %t29 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  %t32 = load i64, ptr %l7
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = extractvalue { i64, ptr } %t30, 0
  %t35 = extractvalue { i64, ptr } %t30, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %t33, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  %t40 = load ptr, ptr %l6, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t40, { i64, ptr } %t39)
  br label %bb6
bb6:
  %t42 = call { i64, ptr } @compiler_2ftarget_2eSysroot(ptr %s1)
  store { i64, ptr } %t42, ptr %l13
  br label %bb7
bb7:
  %t43 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t43, ptr %l2, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t46 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t44, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d106, i32 0, i32 1) })
  store i1 %t46, ptr %l15
  br label %bb8
bb8:
  %t47 = load i1, ptr %l15, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb9, label %bb10
bb9:
  store ptr %l1, ptr %l17, !tbaa !29
  %t50 = ptrtoint ptr %v1 to i64
  store i64 %t50, ptr %l18, !tbaa !24
  %t51 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t51, label %bb11, label %bb12
bb10:
  br label %bb14
bb11:
  %t53 = call ptr @__olang_region_make(ptr %v1)
  %t54 = ptrtoint ptr %t53 to i64
  store i64 %t54, ptr %l18, !tbaa !24
  br label %bb12
bb12:
  %t55 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t56 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t59 = extractvalue { i64, ptr } %t55, 1
  %t60 = extractvalue { i64, ptr } %t55, 0
  %t61 = add i64 %t57, %t60
  %t62 = load i64, ptr %l18
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call ptr @__olang_scope_alloc(ptr %t63, i64 %t61)
  call void @olang_textcopy(ptr %t64, ptr %t56, i64 %t57)
  %t65 = getelementptr i8, ptr %t64, i64 %t57
  call void @olang_textcopy(ptr %t65, ptr %t59, i64 %t60)
  %t66 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t64, 1
  %t69 = load i64, ptr %l18
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = extractvalue { i64, ptr } %t67, 0
  %t72 = extractvalue { i64, ptr } %t67, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %t70, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  %t77 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t77, { i64, ptr } %t76)
  br label %bb13
bb13:
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s1)
  br label %bb15
bb15:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/build:Config", ptr %t79, i32 0, i32 2
  %t82 = getelementptr %"compiler/target:Target", ptr %t81, i32 0, i32 6
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  %t85 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t83, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d108, i32 0, i32 1) })
  store i1 %t85, ptr %l25
  br label %bb16
bb16:
  %t86 = load i1, ptr %l25, !tbaa !21
  %t87 = xor i1 %t86, true
  br i1 %t87, label %bb17, label %bb18
bb17:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/build:Config", ptr %t89, i32 0, i32 2
  %t92 = getelementptr %"compiler/target:Target", ptr %t91, i32 0, i32 6
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v0, ptr %l1, { i64, ptr } %t93)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/build:Config", ptr %t96, i32 0, i32 10
  %t99 = load i1, ptr %t98, !tbaa !21
  br i1 %t99, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb23
bb22:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/build:Config", ptr %t101, i32 0, i32 11
  %t104 = load i1, ptr %t103, !tbaa !21
  store i1 %t104, ptr %l32, !tbaa !21
  br label %bb23
bb23:
  %t106 = load i1, ptr %l32, !tbaa !21
  br i1 %t106, label %bb24, label %bb25
bb24:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d109, i32 0, i32 1) })
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb27
bb27:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/build:Config", ptr %t108, i32 0, i32 12
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  %t113 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t111, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d110, i32 0, i32 1) })
  store i1 %t113, ptr %l38
  br label %bb28
bb28:
  %t114 = load i1, ptr %l38, !tbaa !21
  %t115 = xor i1 %t114, true
  br i1 %t115, label %bb29, label %bb30
bb29:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d111, i32 0, i32 1) })
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/build:Config", ptr %t118, i32 0, i32 4
  %t121 = load i1, ptr %t120, !tbaa !21
  br i1 %t121, label %bb33, label %bb34
bb33:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d112, i32 0, i32 1) })
  br label %bb35
bb34:
  br label %bb41
bb35:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d113, i32 0, i32 1) })
  br label %bb36
bb36:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/build:Config", ptr %t125, i32 0, i32 6
  %t128 = load i1, ptr %t127, !tbaa !21
  br i1 %t128, label %bb37, label %bb38
bb37:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d114, i32 0, i32 1) })
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb40
bb40:
  %t131 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t131, ptr %rv
  br label %ret
bb41:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/build:Config", ptr %t133, i32 0, i32 6
  %t136 = load i1, ptr %t135, !tbaa !21
  br i1 %t136, label %bb42, label %bb43
bb42:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d115, i32 0, i32 1) })
  br label %bb44
bb43:
  br label %bb46
bb44:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d116, i32 0, i32 1) })
  br label %bb45
bb45:
  %t140 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %rv
  br label %ret
bb46:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/build:Config", ptr %t142, i32 0, i32 5
  %t145 = load i1, ptr %t144, !tbaa !21
  br i1 %t145, label %bb47, label %bb48
bb47:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d117, i32 0, i32 1) })
  br label %bb49
bb48:
  br label %bb50
bb49:
  %t148 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %rv
  br label %ret
bb50:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d118, i32 0, i32 1) })
  br label %bb51
bb51:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/build:Config", ptr %t151, i32 0, i32 34
  %t154 = load i1, ptr %t153, !tbaa !21
  br i1 %t154, label %bb52, label %bb53
bb52:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d119, i32 0, i32 1) })
  br label %bb54
bb53:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d120, i32 0, i32 1) })
  br label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb56
bb56:
  %t158 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %rv
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
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t70 = add i64 %t67, %t69
  %t71 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = add i64 %t70, %t73
  %t75 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
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
  %t90 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
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
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
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
  %t66 = getelementptr %"compiler/build:Config", ptr %t65, i32 0, i32 34
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
  store %olang.scope zeroinitializer, ptr %s5
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
  call void @__olang_scope_close(ptr %s5)
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
  %t107 = call { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v1, ptr %s5, { i64, ptr } %t105)
  store { i64, ptr } %t107, ptr %l72
  br label %bb28
bb28:
  %t108 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  %t110 = extractvalue { i64, ptr } %t108, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t111)
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
  %t131 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v2, ptr %s5, ptr %v1, ptr %v2, ptr %v1, ptr %v3, ptr %t123, ptr %t124, { i64, ptr } %t114, i32 %t116, { i64, ptr } %t118, ptr %t119, { i64, ptr } %t121, i64 %t122)
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
  call void @__olang_scope_close(ptr %s5)
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
  call void @__olang_scope_close(ptr %s5)
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
  %t174 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t172, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d124, i32 0, i32 1) })
  store i1 %t174, ptr %l90
  br label %bb36
bb36:
  %t175 = load i1, ptr %l90, !tbaa !21
  %t176 = xor i1 %t175, true
  br i1 %t176, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s7
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
  %t198 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v2, ptr %s7, ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t184, ptr %t185, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d125, i32 0, i32 1) }, i32 0, { i64, ptr } %t189, ptr %t190, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d126, i32 0, i32 1) }, i64 %t191)
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
  call void @__olang_scope_close(ptr %s7)
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
  call void @__olang_scope_close(ptr %s7)
  br label %bb45
bb45:
  %t226 = load ptr, ptr %l1, !tbaa !29
  %t228 = getelementptr %"compiler/build:Program", ptr %t226, i32 0, i32 2
  %t229 = load { i64, ptr }, ptr %t228, !tbaa !27
  %t231 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t229, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d127, i32 0, i32 1) })
  store i1 %t231, ptr %l109
  br label %bb46
bb46:
  %t232 = load i1, ptr %l109, !tbaa !21
  %t233 = xor i1 %t232, true
  br i1 %t233, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s8
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
  %t257 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v2, ptr %s8, ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t241, ptr %t242, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d128, i32 0, i32 1) }, i32 0, { i64, ptr } %t246, ptr %t247, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d129, i32 0, i32 1) }, i64 %t250)
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
  call void @__olang_scope_close(ptr %s8)
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
  call void @__olang_scope_close(ptr %s8)
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
  %t347 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s11, { i64, ptr } %t345, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d130, i32 0, i32 1) })
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
  %t375 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t376 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
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
  store %olang.scope zeroinitializer, ptr %s15
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
  %t425 = call { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v1, ptr %s15, { i64, ptr } %t423)
  store { i64, ptr } %t425, ptr %l184
  br label %bb97
bb97:
  %t426 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t427 = extractvalue { i64, ptr } %t426, 0
  %t428 = extractvalue { i64, ptr } %t426, 1
  %t429 = mul i64 %t427, 1
  %t430 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t429)
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
  %t447 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v2, ptr %s15, ptr %v1, ptr %v2, ptr %v1, ptr %v2, ptr %t440, ptr %t441, { i64, ptr } %t432, i32 %t434, { i64, ptr } %t436, ptr %t437, { i64, ptr } %t439, i64 -1)
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
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t463 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t461, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t463, ptr %rv
  br label %ret
bb100:
  call void @__olang_scope_close(ptr %s15)
  br label %bb110
bb101:
  store %olang.scope zeroinitializer, ptr %s17
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t465 = load ptr, ptr %lp14
  %t466 = load ptr, ptr %l1, !tbaa !29
  %t468 = getelementptr %"compiler/build:Program", ptr %t466, i32 0, i32 1
  %t469 = load { i64, ptr }, ptr %t468, !tbaa !27
  %t470 = load ptr, ptr %l2, !tbaa !29
  %t476 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v2, ptr %s17, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %t464, ptr %t465, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d132, i32 0, i32 1) }, i32 0, { i64, ptr } %t469, ptr %t470, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d133, i32 0, i32 1) }, i64 -1)
  %t477 = extractvalue { i32, { i64, ptr } } %t476, 1
  %t478 = extractvalue { i32, { i64, ptr } } %t476, 0
  store i32 %t478, ptr %l204
  %t479 = icmp ne i32 %t478, 0
  br i1 %t479, label %bb104, label %ok.480, !prof !99
ok.480:
  store { i64, ptr } %t477, ptr %l203
  br label %bb103
bb102:
  store %olang.scope zeroinitializer, ptr %s18
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t482 = load ptr, ptr %lp14
  %t483 = load ptr, ptr %l1, !tbaa !29
  %t485 = getelementptr %"compiler/build:Program", ptr %t483, i32 0, i32 2
  %t486 = load { i64, ptr }, ptr %t485, !tbaa !27
  %t487 = load ptr, ptr %l2, !tbaa !29
  %t493 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v2, ptr %s18, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %t481, ptr %t482, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d134, i32 0, i32 1) }, i32 0, { i64, ptr } %t486, ptr %t487, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d133, i32 0, i32 1) }, i64 -1)
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
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t509 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t507, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t509, ptr %rv
  br label %ret
bb105:
  call void @__olang_scope_close(ptr %s17)
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
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t521 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t519, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t521, ptr %rv
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

define dso_local void @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eTestHeader(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 29
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a1, 1
  %t14 = extractvalue { i64, ptr } %a1, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t19 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t18)
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = getelementptr i8, ptr %t20, i64 %t14
  call void @olang_textcopy(ptr %t21, ptr %t16, i64 %t17)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t19, 1
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t26 = extractvalue { i64, ptr } %t23, 1
  %t27 = mul i64 %t25, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t27)
  call void @llvm.memcpy.p0.p0.i64(ptr %t28, ptr %t26, i64 %t27, i1 false)
  %t29 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  %t33 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s1, ptr %s1, ptr %s1, ptr %t8, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d137, i32 0, i32 1) }, { i64, ptr } %t30)
  store { i64, ptr } %t33, ptr %l9
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t34 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  %t36 = extractvalue { i64, ptr } %t34, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  call void @compiler_2fbuild_2esayln(ptr %s1, { i64, ptr } %t40)
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ebitcodeText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca { { i64, ptr }, { i64, ptr } }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i32
  %l33 = alloca i1
  %l46 = alloca { i64, ptr }
  %l50 = alloca i1
  %l52 = alloca i1
  %l54 = alloca i1
  %l56 = alloca i1
  %l62 = alloca i32
  %l64 = alloca i1
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l74 = alloca ptr
  %l75 = alloca i64
  %l84 = alloca i64
  %l90 = alloca [9 x { i64, ptr }]
  %l105 = alloca ptr
  %l106 = alloca i64
  %l109 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l115 = alloca i64
  %l119 = alloca { { i64, ptr }, { i64, ptr } }
  %l120 = alloca { i64, ptr }
  %l121 = alloca i64
  %l122 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l124 = alloca i64
  %l125 = alloca { i64, ptr }
  %l131 = alloca i64
  %l134 = alloca i64
  %l157 = alloca ptr
  %l158 = alloca { i64, [3 x i64] }
  %l161 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l169 = alloca %"compiler/diagmsg:Msg"
  %l174 = alloca i64
  %l176 = alloca i64
  %l181 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %l187 = alloca i32
  %l189 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca i32
  %t373 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l27
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v1, ptr %s0, { i64, ptr } %t3)
  %t6 = extractvalue { i32, { i64, ptr } } %t5, 1
  %t7 = extractvalue { i32, { i64, ptr } } %t5, 0
  store i32 %t7, ptr %l31
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb3, label %ok.9, !prof !99
ok.9:
  store { i64, ptr } %t6, ptr %l30
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t10, ptr %l28, !tbaa !27
  br label %bb11
bb3:
  %t11 = load i32, ptr %l31, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l33, !tbaa !21
  %t15 = load i32, ptr %l31, !tbaa !23
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
  call void @__olang_check_failed(ptr @olang_loc_ed85b58552229ad2_db88a25435ad515e)
  unreachable
bb9:
  %t24 = mul i64 0, 16
  %t25 = insertvalue { i64, ptr } undef, i64 0, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t26, ptr %l28, !tbaa !27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_ed85b58552229ad2_db88a25435ad515e)
  unreachable
bb11:
  %t28 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t28, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  store i64 %t33, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb56
bb14:
  br label %bb15
bb15:
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t43, ptr %l46, !tbaa !27
  %t44 = load i64, ptr %l6, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %t47, i64 %t44
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !37
  store { i64, ptr } %t49, ptr %l8, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t53 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s2, { i64, ptr } %t51, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d138, i32 0, i32 1) })
  store i1 %t53, ptr %l50
  br label %bb16
bb16:
  %t54 = load i1, ptr %l50, !tbaa !21
  %t55 = xor i1 %t54, true
  br i1 %t55, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb20
bb18:
  %t57 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s2, { i64, ptr } %t57, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d139, i32 0, i32 1) })
  store i1 %t59, ptr %l54
  br label %bb19
bb19:
  %t60 = load i1, ptr %l54, !tbaa !21
  store i1 %t60, ptr %l52, !tbaa !21
  br label %bb20
bb20:
  %t61 = load i1, ptr %l52, !tbaa !21
  br i1 %t61, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb55
bb22:
  br label %bb23
bb23:
  %t62 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s2, { i64, ptr } %t62, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d140, i32 0, i32 1) })
  store i1 %t64, ptr %l56
  br label %bb24
bb24:
  %t65 = load i1, ptr %l56, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t68 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t68, 1
  %t72 = extractvalue { i64, ptr } %t68, 0
  %t73 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t75 = add i64 %t72, %t74
  %t77 = extractvalue { i64, ptr } %t69, 1
  %t78 = extractvalue { i64, ptr } %t69, 0
  %t79 = add i64 %t75, %t78
  %t80 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t79)
  call void @olang_textcopy(ptr %t80, ptr %t71, i64 %t72)
  %t81 = getelementptr i8, ptr %t80, i64 %t72
  call void @olang_textcopy(ptr %t81, ptr %t73, i64 %t74)
  %t82 = getelementptr i8, ptr %t81, i64 %t74
  call void @olang_textcopy(ptr %t82, ptr %t77, i64 %t78)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t80, 1
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t87 = extractvalue { i64, ptr } %t84, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t93 = call i32 @std_2fos_2eRemove(ptr %s4, { i64, ptr } %t91)
  store i32 %t93, ptr %l62
  %t94 = icmp ne i32 %t93, 0
  br i1 %t94, label %bb28, label %ok.95, !prof !99
ok.95:
  br label %bb27
bb26:
  br label %bb33
bb27:
  br label %bb32
bb28:
  %t96 = load i32, ptr %l62, !tbaa !23
  %t97 = ashr i32 %t96, 16
  %t99 = icmp eq i32 %t97, 1
  store i1 %t99, ptr %l64, !tbaa !21
  %t100 = load i32, ptr %l62, !tbaa !23
  %t101 = ashr i32 %t100, 16
  %t103 = icmp eq i32 %t101, 1
  br i1 %t103, label %bb29, label %bb30
bb29:
  call void @__olang_errpay_pop()
  br label %bb30
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb55
bb33:
  %t105 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l67
  br label %bb34
bb34:
  %t106 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  %t107 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %t107
  store ptr %t107, ptr %l9, !tbaa !29
  %t109 = load ptr, ptr %l9, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/build:Config", ptr %t110, i32 0, i32 1
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %t109, { i64, ptr } %t113)
  br label %bb35
bb35:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/build:Config", ptr %t116, i32 0, i32 2
  %t119 = getelementptr %"compiler/target:Target", ptr %t118, i32 0, i32 9
  %t120 = load i1, ptr %t119, !tbaa !21
  br i1 %t120, label %bb36, label %bb37
bb36:
  %t122 = load ptr, ptr %l9, !tbaa !29
  store ptr %t122, ptr %l74, !tbaa !29
  %t123 = ptrtoint ptr %s0 to i64
  store i64 %t123, ptr %l75, !tbaa !24
  %t124 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t124, label %bb38, label %bb39
bb37:
  br label %bb41
bb38:
  %t126 = call ptr @__olang_region_make(ptr %s0)
  %t127 = ptrtoint ptr %t126 to i64
  store i64 %t127, ptr %l75, !tbaa !24
  br label %bb39
bb39:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/build:Config", ptr %t128, i32 0, i32 2
  %t131 = getelementptr %"compiler/target:Target", ptr %t130, i32 0, i32 1
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  %t133 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t134 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t136 = extractvalue { i64, ptr } %t132, 1
  %t137 = extractvalue { i64, ptr } %t132, 0
  %t138 = add i64 %t134, %t137
  %t139 = load i64, ptr %l75
  %t140 = inttoptr i64 %t139 to ptr
  %t141 = call ptr @__olang_scope_alloc(ptr %t140, i64 %t138)
  call void @olang_textcopy(ptr %t141, ptr %t133, i64 %t134)
  %t142 = getelementptr i8, ptr %t141, i64 %t134
  call void @olang_textcopy(ptr %t142, ptr %t136, i64 %t137)
  %t143 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t141, 1
  %t146 = load i64, ptr %l75
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = extractvalue { i64, ptr } %t144, 0
  %t149 = extractvalue { i64, ptr } %t144, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %t147, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t154 = load ptr, ptr %l74, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t154, { i64, ptr } %t153)
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t156 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t157 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t156, 1
  %t160 = extractvalue { i64, ptr } %t156, 0
  %t161 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t163 = add i64 %t160, %t162
  %t165 = extractvalue { i64, ptr } %t157, 1
  %t166 = extractvalue { i64, ptr } %t157, 0
  %t167 = add i64 %t163, %t166
  %t168 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t167)
  call void @olang_textcopy(ptr %t168, ptr %t159, i64 %t160)
  %t169 = getelementptr i8, ptr %t168, i64 %t160
  call void @olang_textcopy(ptr %t169, ptr %t161, i64 %t162)
  %t170 = getelementptr i8, ptr %t169, i64 %t162
  call void @olang_textcopy(ptr %t170, ptr %t165, i64 %t166)
  %t171 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t168, 1
  store { i64, ptr } %t172, ptr %l10, !tbaa !27
  %t174 = ptrtoint ptr %s0 to i64
  store i64 %t174, ptr %l84, !tbaa !24
  %t175 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_209_3e_2e_2d1
  br i1 %t175, label %bb42, label %bb43
bb42:
  %t177 = call ptr @__olang_region_make(ptr %s0)
  %t178 = ptrtoint ptr %t177 to i64
  store i64 %t178, ptr %l84, !tbaa !24
  br label %bb43
bb43:
  %t179 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t179, 1
  %t182 = extractvalue { i64, ptr } %t179, 0
  %t183 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t186 = load i64, ptr %l84
  %t187 = inttoptr i64 %t186 to ptr
  %t188 = call ptr @__olang_scope_alloc(ptr %t187, i64 %t185)
  call void @olang_textcopy(ptr %t188, ptr %t181, i64 %t182)
  %t189 = getelementptr i8, ptr %t188, i64 %t182
  call void @olang_textcopy(ptr %t189, ptr %t183, i64 %t184)
  %t190 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t188, 1
  %t193 = load i64, ptr %l84
  %t194 = inttoptr i64 %t193 to ptr
  %t195 = extractvalue { i64, ptr } %t191, 0
  %t196 = extractvalue { i64, ptr } %t191, 1
  %t197 = mul i64 %t195, 1
  %t198 = call ptr @__olang_scope_alloc(ptr %t194, i64 %t197)
  call void @llvm.memcpy.p0.p0.i64(ptr %t198, ptr %t196, i64 %t197, i1 false)
  %t199 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  %t201 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t202 = getelementptr [9 x { i64, ptr }], ptr %l90, i64 0, i64 0
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d145, i32 0, i32 1) }, ptr %t202, !tbaa !37
  %t203 = getelementptr [9 x { i64, ptr }], ptr %l90, i64 0, i64 1
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d146, i32 0, i32 1) }, ptr %t203, !tbaa !37
  %t204 = getelementptr [9 x { i64, ptr }], ptr %l90, i64 0, i64 2
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d147, i32 0, i32 1) }, ptr %t204, !tbaa !37
  %t205 = getelementptr [9 x { i64, ptr }], ptr %l90, i64 0, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d148, i32 0, i32 1) }, ptr %t205, !tbaa !37
  %t206 = getelementptr [9 x { i64, ptr }], ptr %l90, i64 0, i64 4
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d149, i32 0, i32 1) }, ptr %t206, !tbaa !37
  %t207 = getelementptr [9 x { i64, ptr }], ptr %l90, i64 0, i64 5
  store { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d150, i32 0, i32 1) }, ptr %t207, !tbaa !37
  %t208 = getelementptr [9 x { i64, ptr }], ptr %l90, i64 0, i64 6
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d151, i32 0, i32 1) }, ptr %t208, !tbaa !37
  %t209 = getelementptr [9 x { i64, ptr }], ptr %l90, i64 0, i64 7
  store { i64, ptr } %t200, ptr %t209, !tbaa !37
  %t211 = getelementptr [9 x { i64, ptr }], ptr %l90, i64 0, i64 8
  store { i64, ptr } %t201, ptr %t211, !tbaa !37
  %t213 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 144, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t213, ptr %l90, i64 144, i1 false)
  store ptr %t213, ptr %l11
  store i64 0, ptr %l12, !tbaa !24
  %t215 = load ptr, ptr %l11
  store i64 9, ptr %l13, !tbaa !24
  br label %bb44
bb44:
  %t218 = load i64, ptr %l12, !tbaa !24
  %t219 = load i64, ptr %l13, !tbaa !24
  %t222 = icmp slt i64 %t218, %t219
  %t224 = xor i1 %t222, true
  br i1 %t224, label %bb45, label %bb46
bb45:
  br label %bb50
bb46:
  br label %bb47
bb47:
  %t226 = load ptr, ptr %l11
  %t227 = load i64, ptr %l12, !tbaa !24
  %t230 = getelementptr [9 x { i64, ptr }], ptr %t226, i64 0, i64 %t227
  %t231 = load { i64, ptr }, ptr %t230, !tbaa !37
  %t233 = load ptr, ptr %l9, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t233, { i64, ptr } %t231)
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t237 = load i64, ptr %l12, !tbaa !24
  %t239 = add i64 %t237, 1
  store i64 %t239, ptr %l12, !tbaa !24
  br label %bb44
bb50:
  store ptr %l3, ptr %l105, !tbaa !29
  %t241 = ptrtoint ptr %s0 to i64
  store i64 %t241, ptr %l106, !tbaa !24
  %t242 = load i1, ptr @olang_2esole_2eArray_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2e_2d1
  br i1 %t242, label %bb51, label %bb52
bb51:
  %t244 = call ptr @__olang_region_make(ptr %s0)
  %t245 = ptrtoint ptr %t244 to i64
  store i64 %t245, ptr %l106, !tbaa !24
  br label %bb52
bb52:
  %t246 = load ptr, ptr %l9, !tbaa !29
  %t247 = load i64, ptr %l106
  %t248 = inttoptr i64 %t247 to ptr
  %t250 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %t248, ptr %t246)
  store { i64, ptr } %t250, ptr %l109
  br label %bb53
bb53:
  %t251 = load ptr, ptr %l105, !tbaa !29
  %t252 = load { i64, ptr }, ptr %l109, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %s0, ptr %s0, ptr %t251, { i64, ptr } %t252)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s2)
  br label %bb55
bb55:
  %t253 = load i64, ptr %l6, !tbaa !24
  %t255 = add i64 %t253, 1
  store i64 %t255, ptr %l6, !tbaa !24
  br label %bb12
bb56:
  %t258 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t258, ptr %l113
  br label %bb57
bb57:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = call i64 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewidth(ptr %v0, ptr %t259)
  store i64 %t261, ptr %l115
  br label %bb58
bb58:
  %t262 = icmp sge i64 0, 0
  br i1 %t262, label %bb59, label %bb60
bb59:
  %t264 = icmp sle i64 0, 1152921504606846975
  br i1 %t264, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_39c6cdce0ac4fdc7_621aa1b204fc2693)
  unreachable
bb61:
  %t266 = mul i64 0, 8
  %t267 = insertvalue { i64, ptr } undef, i64 0, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t269 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t270 = load i64, ptr %l115, !tbaa !24
  %t272 = call { { i64, ptr }, { i64, ptr } } @compiler_2fbuild_2eRunAll(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t269, i64 %t270, { i64, ptr } %t268)
  store { { i64, ptr }, { i64, ptr } } %t272, ptr %l119
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_39c6cdce0ac4fdc7_621aa1b204fc2693)
  unreachable
bb63:
  %t273 = load { { i64, ptr }, { i64, ptr } }, ptr %l119
  store { { i64, ptr }, { i64, ptr } } %t273, ptr %l15
  %t274 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l15, i32 0, i32 0
  %t275 = load { i64, ptr }, ptr %t274, !tbaa !27
  store { i64, ptr } %t275, ptr %l120, !tbaa !27
  %t276 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t276, 0
  store i64 %t277, ptr %l121, !tbaa !24
  %t278 = load i64, ptr %l121, !tbaa !24
  %t279 = mul i64 %t278, 4
  %t280 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t279)
  %t281 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t280, 1
  store { i64, ptr } %t282, ptr %l122, !tbaa !27
  %t283 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !27
  %t287 = load i64, ptr %l121, !tbaa !24
  %t288 = mul i64 %t287, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t284, ptr %t286, i64 %t288, i1 false)
  %t289 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t289, ptr %l16, !tbaa !27
  %t290 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l15, i32 0, i32 1
  %t291 = load { i64, ptr }, ptr %t290, !tbaa !27
  store { i64, ptr } %t291, ptr %l123, !tbaa !27
  %t292 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t293 = extractvalue { i64, ptr } %t292, 0
  store i64 %t293, ptr %l124, !tbaa !24
  %t294 = load i64, ptr %l124, !tbaa !24
  %t295 = mul i64 %t294, 16
  %t296 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t295)
  %t297 = insertvalue { i64, ptr } undef, i64 %t294, 0
  %t298 = insertvalue { i64, ptr } %t297, ptr %t296, 1
  store { i64, ptr } %t298, ptr %l125, !tbaa !27
  %t299 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !27
  %t301 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = load i64, ptr %l124, !tbaa !24
  %t304 = mul i64 %t303, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t300, ptr %t302, i64 %t304, i1 false)
  %t305 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t305, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t306 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t308 = extractvalue { i64, ptr } %t306, 0
  store i64 %t308, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t310 = load i64, ptr %l19, !tbaa !24
  %t311 = load i64, ptr %l18, !tbaa !24
  %t314 = icmp sgt i64 %t310, %t311
  br i1 %t314, label %bb64, label %bb65
bb64:
  %t316 = load i64, ptr %l20, !tbaa !24
  %t318 = icmp sgt i64 %t316, 0
  br i1 %t318, label %bb66, label %bb67
bb65:
  store i64 0, ptr %l131, !tbaa !24
  br label %bb69
bb66:
  %t320 = load i64, ptr %l19, !tbaa !24
  %t321 = load i64, ptr %l18, !tbaa !24
  %t324 = sub i64 %t320, %t321
  %t325 = load i64, ptr %l20, !tbaa !24
  %t328 = add i64 %t324, %t325
  %t330 = sub i64 %t328, 1
  %t331 = load i64, ptr %l20, !tbaa !24
  %t334 = sdiv i64 %t330, %t331
  store i64 %t334, ptr %l134, !tbaa !24
  br label %bb68
bb67:
  store i64 0, ptr %l134, !tbaa !24
  br label %bb68
bb68:
  %t336 = load i64, ptr %l134, !tbaa !24
  store i64 %t336, ptr %l131, !tbaa !24
  br label %bb69
bb69:
  %t337 = load i64, ptr %l131, !tbaa !24
  store i64 %t337, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb70
bb70:
  store %olang.scope zeroinitializer, ptr %s16
  %t338 = load i64, ptr %l22, !tbaa !24
  %t339 = load i64, ptr %l21, !tbaa !24
  %t342 = icmp slt i64 %t338, %t339
  %t344 = xor i1 %t342, true
  br i1 %t344, label %bb71, label %bb72
bb71:
  call void @__olang_scope_close(ptr %s16)
  br label %bb83
bb72:
  br label %bb73
bb73:
  %t346 = load i64, ptr %l18, !tbaa !24
  %t347 = load i64, ptr %l22, !tbaa !24
  %t348 = load i64, ptr %l20, !tbaa !24
  %t351 = mul i64 %t347, %t348
  %t354 = add i64 %t346, %t351
  store i64 %t354, ptr %l23, !tbaa !24
  %t356 = load i64, ptr %l23, !tbaa !24
  %t358 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !27
  %t360 = getelementptr i32, ptr %t359, i64 %t356
  %t361 = load i32, ptr %t360, !tbaa !33
  %t363 = icmp eq i32 %t361, 0
  br i1 %t363, label %bb74, label %bb75
bb74:
  call void @__olang_scope_close(ptr %s16)
  br label %bb82
bb75:
  br label %bb76
bb76:
  %t365 = load i64, ptr %l23, !tbaa !24
  %t367 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t368 = load ptr, ptr %t367, !tbaa !27
  %t369 = getelementptr { i64, ptr }, ptr %t368, i64 %t365
  %t370 = load { i64, ptr }, ptr %t369, !tbaa !37
  call void @compiler_2fbuild_2esayErr(ptr %s0, { i64, ptr } %t370)
  br label %bb77
bb77:
  store ptr %a2, ptr %l157, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t373
  %t374 = getelementptr { i64, [3 x i64] }, ptr %t373, i32 0, i32 0
  store i64 0, ptr %t374
  %t375 = load { i64, [3 x i64] }, ptr %t373
  store { i64, [3 x i64] } %t375, ptr %l158
  %t376 = load i64, ptr %l23, !tbaa !24
  %t379 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %l3, i64 %t376)
  store { i64, ptr } %t379, ptr %l161
  br label %bb78
bb78:
  %t380 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t380, ptr %l162, !tbaa !27
  %t381 = load i64, ptr %l23, !tbaa !24
  %t384 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s16, ptr %l3, i64 %t381)
  store { i64, ptr } %t384, ptr %l165
  br label %bb79
bb79:
  %t385 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t386 = extractvalue { i64, ptr } %t385, 0
  %t388 = sub i64 %t386, 1
  %t390 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t391 = load ptr, ptr %t390, !tbaa !27
  %t392 = getelementptr { i64, ptr }, ptr %t391, i64 %t388
  %t393 = load { i64, ptr }, ptr %t392, !tbaa !37
  %t395 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eClangFailed(ptr %s0, ptr %v2, { i64, ptr } %t393)
  store %"compiler/diagmsg:Msg" %t395, ptr %l169
  br label %bb80
bb80:
  %t396 = load ptr, ptr %l157, !tbaa !29
  %t397 = load { i64, [3 x i64] }, ptr %l158
  %t398 = load %"compiler/diagmsg:Msg", ptr %l169
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v2, ptr %v2, ptr %t396, { i64, [3 x i64] } %t397, %"compiler/diagmsg:Msg" %t398)
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb82:
  %t400 = load i64, ptr %l22, !tbaa !24
  %t402 = add i64 %t400, 1
  store i64 %t402, ptr %l22, !tbaa !24
  br label %bb70
bb83:
  store ptr %l3, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb84
bb84:
  %t405 = load i64, ptr %l25, !tbaa !24
  store i64 %t405, ptr %l174, !tbaa !24
  %t406 = load ptr, ptr %l24, !tbaa !29
  %t408 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H2ab12f44ffbd18d099d1f5a69642975a(ptr %s0, ptr %t406)
  store i64 %t408, ptr %l176
  br label %bb85
bb85:
  %t409 = load i64, ptr %l174, !tbaa !24
  %t410 = load i64, ptr %l176, !tbaa !24
  %t411 = icmp slt i64 %t409, %t410
  %t413 = xor i1 %t411, true
  br i1 %t413, label %bb86, label %bb87
bb86:
  br label %bb97
bb87:
  br label %bb88
bb88:
  %t415 = load ptr, ptr %l24, !tbaa !29
  %t416 = load i64, ptr %l25, !tbaa !24
  %t419 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %t415, i64 %t416)
  store { i64, ptr } %t419, ptr %l181
  br label %bb89
bb89:
  %t420 = load { i64, ptr }, ptr %l181, !tbaa !27
  store { i64, ptr } %t420, ptr %l26, !tbaa !27
  %t421 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t421, ptr %l182, !tbaa !27
  %t422 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t424 = extractvalue { i64, ptr } %t422, 0
  %t426 = sub i64 %t424, 1
  %t428 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t429 = load ptr, ptr %t428, !tbaa !27
  %t430 = getelementptr { i64, ptr }, ptr %t429, i64 %t426
  %t431 = load { i64, ptr }, ptr %t430, !tbaa !37
  %t433 = call i32 @std_2fos_2eRemove(ptr %s0, { i64, ptr } %t431)
  store i32 %t433, ptr %l187
  %t434 = icmp ne i32 %t433, 0
  br i1 %t434, label %bb91, label %ok.435, !prof !99
ok.435:
  br label %bb90
bb90:
  br label %bb95
bb91:
  %t436 = load i32, ptr %l187, !tbaa !23
  %t437 = ashr i32 %t436, 16
  %t439 = icmp eq i32 %t437, 1
  store i1 %t439, ptr %l189, !tbaa !21
  %t440 = load i32, ptr %l187, !tbaa !23
  %t441 = ashr i32 %t440, 16
  %t443 = icmp eq i32 %t441, 1
  br i1 %t443, label %bb92, label %bb93
bb92:
  call void @__olang_errpay_pop()
  br label %bb93
bb93:
  br label %bb94
bb94:
  br label %bb95
bb95:
  br label %bb96
bb96:
  %t445 = load i64, ptr %l25, !tbaa !24
  %t447 = add i64 %t445, 1
  store i64 %t447, ptr %l25, !tbaa !24
  br label %bb84
bb97:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eclangVersion(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/os:Output"
  %l4 = alloca i1
  %l5 = alloca %"std/os:Output"
  %l6 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"std/os:Output"
  %l14 = alloca i32
  %l16 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l22 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 37
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d152, i32 0, i32 1) })
  store i1 %t6, ptr %l4
  br label %bb1
bb1:
  %t7 = load i1, ptr %l4, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = ptrtoint ptr %s1 to i64
  store i64 %t8, ptr %l6, !tbaa !24
  %t9 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t9, label %bb4, label %bb5
bb3:
  br label %bb14
bb4:
  %t11 = call ptr @__olang_region_make(ptr %s1)
  %t12 = ptrtoint ptr %t11 to i64
  store i64 %t12, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/build:Config", ptr %t13, i32 0, i32 1
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 1
  %t19 = extractvalue { i64, ptr } %t16, 0
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
  %t34 = mul i64 2, 16
  %t35 = call ptr @__olang_scope_alloc_zeroed(ptr %s1, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 2, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l12, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %t40, i64 0
  store { i64, ptr } %t33, ptr %t41, !tbaa !37
  %t42 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %t43, i64 1
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d153, i32 0, i32 1) }, ptr %t44, !tbaa !37
  %t45 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t46 = call { i32, %"std/os:Output" } @compiler_2ftarget_2eClangSays(ptr %s1, ptr %s1, ptr %v0, { i64, ptr } %t45, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d154, i32 0, i32 1) }, i1 true)
  %t47 = extractvalue { i32, %"std/os:Output" } %t46, 1
  %t48 = extractvalue { i32, %"std/os:Output" } %t46, 0
  store i32 %t48, ptr %l14
  %t49 = icmp ne i32 %t48, 0
  br i1 %t49, label %bb7, label %ok.50, !prof !99
ok.50:
  store %"std/os:Output" %t47, ptr %l13
  br label %bb6
bb6:
  %t51 = load %"std/os:Output", ptr %l13
  store %"std/os:Output" %t51, ptr %l5
  br label %bb11
bb7:
  %t52 = load i32, ptr %l14, !tbaa !23
  %t53 = ashr i32 %t52, 16
  %t55 = icmp eq i32 %t53, 1
  store i1 %t55, ptr %l16, !tbaa !21
  %t56 = load i32, ptr %l14, !tbaa !23
  %t57 = ashr i32 %t56, 16
  %t59 = icmp eq i32 %t57, 1
  br i1 %t59, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb10
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d155, i32 0, i32 1) }, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t61 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t61, ptr %rv
  br label %ret
bb11:
  %t62 = load %"std/os:Output", ptr %l5
  store %"std/os:Output" %t62, ptr %l1
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l20, !tbaa !29
  %t64 = getelementptr %"std/os:Output", ptr %l1, i32 0, i32 1
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  %t66 = load ptr, ptr %l20, !tbaa !29
  %t67 = getelementptr %"compiler/build:Config", ptr %t66, i32 0, i32 37
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l22, !tbaa !27
  %t70 = load ptr, ptr %l20, !tbaa !29
  %t71 = getelementptr %"compiler/build:Config", ptr %t70, i32 0, i32 37
  store { i64, ptr } %t65, ptr %t71, !tbaa !27
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e37
  br i1 %t72, label %bb12, label %bb13
bb12:
  %t74 = load { i64, ptr }, ptr %l22
  %t75 = extractvalue { i64, ptr } %t74, 1
  call void @__olang_region_release(ptr %t75)
  store { i64, ptr } zeroinitializer, ptr %l22
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s1)
  br label %bb14
bb14:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/build:Config", ptr %t76, i32 0, i32 37
  %t79 = load { i64, ptr }, ptr %t78, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t79, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ecompile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { { i64, ptr }, { i64, ptr } }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca { { i64, ptr }, { i64, ptr } }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i64
  %l35 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l66 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l71 = alloca i32
  %l73 = alloca i1
  %l83 = alloca ptr
  %l84 = alloca { i64, [3 x i64] }
  %l88 = alloca { i64, ptr }
  %l89 = alloca %"compiler/diagmsg:Msg"
  %l93 = alloca { i64, ptr }
  %l94 = alloca i32
  %l96 = alloca i1
  %l102 = alloca { i64, ptr }
  %l103 = alloca i1
  %l108 = alloca { i64, ptr }
  %l109 = alloca i32
  %l111 = alloca i1
  %l116 = alloca i1
  %l123 = alloca { i64, ptr }
  %l124 = alloca i1
  %l129 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l136 = alloca i32
  %l138 = alloca i1
  %l143 = alloca i64
  %l148 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l151 = alloca %"compiler/diagmsg:Msg"
  %l153 = alloca ptr
  %l157 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l163 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %l168 = alloca i32
  %l170 = alloca i1
  %l178 = alloca { i64, ptr }
  %l179 = alloca %"compiler/diagmsg:Msg"
  %l181 = alloca ptr
  %l185 = alloca { i64, ptr }
  %l190 = alloca i64
  %l192 = alloca i64
  %l197 = alloca { i64, ptr }
  %l199 = alloca i32
  %l201 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca i32
  %t165 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/build:compiles", ptr %t1, i32 0, i32 0
  %t5 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %v1, ptr %v1, ptr %t3)
  store { i64, ptr } %t5, ptr %l18
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewidth(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l20
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/build:compiles", ptr %t9, i32 0, i32 6
  %t13 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v1, ptr %s0, ptr %t11)
  store { i64, ptr } %t13, ptr %l23
  br label %bb3
bb3:
  %t14 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t15 = load i64, ptr %l20, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t17 = call { { i64, ptr }, { i64, ptr } } @compiler_2fbuild_2eRunAll(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t14, i64 %t15, { i64, ptr } %t16)
  store { { i64, ptr }, { i64, ptr } } %t17, ptr %l24
  br label %bb4
bb4:
  %t18 = load { { i64, ptr }, { i64, ptr } }, ptr %l24
  store { { i64, ptr }, { i64, ptr } } %t18, ptr %l3
  %t19 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l3, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l25, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  store i64 %t22, ptr %l26, !tbaa !24
  %t23 = load i64, ptr %l26, !tbaa !24
  %t24 = mul i64 %t23, 4
  %t25 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l27, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l26, !tbaa !24
  %t33 = mul i64 %t32, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %t31, i64 %t33, i1 false)
  %t34 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t34, ptr %l4, !tbaa !27
  %t35 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l3, i32 0, i32 1
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l28, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l29, !tbaa !24
  %t39 = load i64, ptr %l29, !tbaa !24
  %t40 = mul i64 %t39, 16
  %t41 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t40)
  %t42 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  store { i64, ptr } %t43, ptr %l30, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = load i64, ptr %l29, !tbaa !24
  %t49 = mul i64 %t48, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t45, ptr %t47, i64 %t49, i1 false)
  %t50 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t50, ptr %l5, !tbaa !27
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l31, !tbaa !29
  %t52 = load ptr, ptr %l31, !tbaa !29
  %t53 = getelementptr %"compiler/build:Config", ptr %t52, i32 0, i32 32
  %t54 = load i64, ptr %t53, !tbaa !24
  store i64 %t54, ptr %l32, !tbaa !24
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr %"compiler/build:compiles", ptr %t55, i32 0, i32 0
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H2ab12f44ffbd18d099d1f5a69642975a(ptr %v1, ptr %t57)
  store i64 %t59, ptr %l35
  br label %bb5
bb5:
  %t60 = load i64, ptr %l32, !tbaa !24
  %t61 = load i64, ptr %l35, !tbaa !24
  %t62 = add i64 %t60, %t61
  %t64 = load ptr, ptr %l31, !tbaa !29
  %t65 = getelementptr %"compiler/build:Config", ptr %t64, i32 0, i32 32
  store i64 %t62, ptr %t65, !tbaa !24
  store i1 false, ptr %l6, !tbaa !21
  store i64 0, ptr %l7, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l8, !tbaa !24
  %t71 = load i64, ptr %l7, !tbaa !24
  %t74 = icmp sgt i64 %t70, %t71
  br i1 %t74, label %bb6, label %bb7
bb6:
  %t76 = load i64, ptr %l9, !tbaa !24
  %t78 = icmp sgt i64 %t76, 0
  br i1 %t78, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb11
bb8:
  %t80 = load i64, ptr %l8, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = sub i64 %t80, %t81
  %t85 = load i64, ptr %l9, !tbaa !24
  %t88 = add i64 %t84, %t85
  %t90 = sub i64 %t88, 1
  %t91 = load i64, ptr %l9, !tbaa !24
  %t94 = sdiv i64 %t90, %t91
  store i64 %t94, ptr %l45, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb10
bb10:
  %t96 = load i64, ptr %l45, !tbaa !24
  store i64 %t96, ptr %l42, !tbaa !24
  br label %bb11
bb11:
  %t97 = load i64, ptr %l42, !tbaa !24
  store i64 %t97, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t98 = load i64, ptr %l11, !tbaa !24
  %t99 = load i64, ptr %l10, !tbaa !24
  %t102 = icmp slt i64 %t98, %t99
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb101
bb14:
  br label %bb15
bb15:
  %t106 = load i64, ptr %l7, !tbaa !24
  %t107 = load i64, ptr %l11, !tbaa !24
  %t108 = load i64, ptr %l9, !tbaa !24
  %t111 = mul i64 %t107, %t108
  %t114 = add i64 %t106, %t111
  store i64 %t114, ptr %l12, !tbaa !24
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr %"compiler/build:compiles", ptr %t116, i32 0, i32 4
  %t119 = load i64, ptr %l12, !tbaa !24
  %t122 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t118, i64 %t119)
  store { i64, ptr } %t122, ptr %l66
  br label %bb16
bb16:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/build:compiles", ptr %t123, i32 0, i32 3
  %t126 = load i64, ptr %l12, !tbaa !24
  %t129 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t125, i64 %t126)
  store { i64, ptr } %t129, ptr %l70
  br label %bb17
bb17:
  %t130 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t132 = call i32 @std_2fos_2eRename(ptr %v1, ptr %v1, { i64, ptr } %t130, { i64, ptr } %t131)
  store i32 %t132, ptr %l71
  %t133 = icmp ne i32 %t132, 0
  br i1 %t133, label %bb19, label %ok.134, !prof !99
ok.134:
  br label %bb18
bb18:
  br label %bb23
bb19:
  %t135 = load i32, ptr %l71, !tbaa !23
  %t136 = ashr i32 %t135, 16
  %t138 = icmp eq i32 %t136, 1
  store i1 %t138, ptr %l73, !tbaa !21
  %t139 = load i32, ptr %l71, !tbaa !23
  %t140 = ashr i32 %t139, 16
  %t142 = icmp eq i32 %t140, 1
  br i1 %t142, label %bb20, label %bb21
bb20:
  call void @__olang_errpay_pop()
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t144 = load i64, ptr %l12, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i32, ptr %t147, i64 %t144
  %t149 = load i32, ptr %t148, !tbaa !33
  %t151 = icmp ne i32 %t149, 0
  br i1 %t151, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t153 = load i64, ptr %l12, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr { i64, ptr }, ptr %t156, i64 %t153
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !37
  call void @compiler_2fbuild_2esayErr(ptr %s0, { i64, ptr } %t158)
  br label %bb26
bb25:
  br label %bb52
bb26:
  %t160 = load i1, ptr %l6, !tbaa !21
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb27, label %bb28
bb27:
  %t164 = load ptr, ptr %l2, !tbaa !29
  store ptr %t164, ptr %l83, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t165
  %t166 = getelementptr { i64, [3 x i64] }, ptr %t165, i32 0, i32 0
  store i64 0, ptr %t166
  %t167 = load { i64, [3 x i64] }, ptr %t165
  store { i64, [3 x i64] } %t167, ptr %l84
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr %"compiler/build:compiles", ptr %t168, i32 0, i32 3
  %t171 = load i64, ptr %l12, !tbaa !24
  %t174 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t170, i64 %t171)
  store { i64, ptr } %t174, ptr %l88
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t175 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t176 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eClangFailed(ptr %v1, ptr %v2, { i64, ptr } %t175)
  store %"compiler/diagmsg:Msg" %t176, ptr %l89
  br label %bb30
bb30:
  %t177 = load ptr, ptr %l83, !tbaa !29
  %t178 = load { i64, [3 x i64] }, ptr %l84
  %t179 = load %"compiler/diagmsg:Msg", ptr %l89
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v2, ptr %v2, ptr %t177, { i64, [3 x i64] } %t178, %"compiler/diagmsg:Msg" %t179)
  br label %bb31
bb31:
  br label %bb32
bb32:
  store i1 true, ptr %l6, !tbaa !21
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = getelementptr %"compiler/build:compiles", ptr %t180, i32 0, i32 1
  %t183 = load i64, ptr %l12, !tbaa !24
  %t186 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t182, i64 %t183)
  store { i64, ptr } %t186, ptr %l93
  br label %bb33
bb33:
  %t187 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t188 = call i32 @std_2fos_2eRemove(ptr %v1, { i64, ptr } %t187)
  store i32 %t188, ptr %l94
  %t189 = icmp ne i32 %t188, 0
  br i1 %t189, label %bb35, label %ok.190, !prof !99
ok.190:
  br label %bb34
bb34:
  br label %bb39
bb35:
  %t191 = load i32, ptr %l94, !tbaa !23
  %t192 = ashr i32 %t191, 16
  %t194 = icmp eq i32 %t192, 1
  store i1 %t194, ptr %l96, !tbaa !21
  %t195 = load i32, ptr %l94, !tbaa !23
  %t196 = ashr i32 %t195, 16
  %t198 = icmp eq i32 %t196, 1
  br i1 %t198, label %bb36, label %bb37
bb36:
  call void @__olang_errpay_pop()
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t202 = getelementptr %"compiler/build:compiles", ptr %t200, i32 0, i32 5
  %t203 = load i64, ptr %l12, !tbaa !24
  %t206 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t202, i64 %t203)
  store { i64, ptr } %t206, ptr %l102
  br label %bb40
bb40:
  %t207 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t208 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s4, { i64, ptr } %t207, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d156, i32 0, i32 1) })
  store i1 %t208, ptr %l103
  br label %bb41
bb41:
  %t209 = load i1, ptr %l103, !tbaa !21
  %t210 = xor i1 %t209, true
  br i1 %t210, label %bb42, label %bb43
bb42:
  %t212 = load ptr, ptr %l1, !tbaa !29
  %t214 = getelementptr %"compiler/build:compiles", ptr %t212, i32 0, i32 5
  %t215 = load i64, ptr %l12, !tbaa !24
  %t218 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t214, i64 %t215)
  store { i64, ptr } %t218, ptr %l108
  br label %bb44
bb43:
  br label %bb51
bb44:
  %t219 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t220 = call i32 @std_2fos_2eRemove(ptr %v1, { i64, ptr } %t219)
  store i32 %t220, ptr %l109
  %t221 = icmp ne i32 %t220, 0
  br i1 %t221, label %bb46, label %ok.222, !prof !99
ok.222:
  br label %bb45
bb45:
  br label %bb50
bb46:
  %t223 = load i32, ptr %l109, !tbaa !23
  %t224 = ashr i32 %t223, 16
  %t226 = icmp eq i32 %t224, 1
  store i1 %t226, ptr %l111, !tbaa !21
  %t227 = load i32, ptr %l109, !tbaa !23
  %t228 = ashr i32 %t227, 16
  %t230 = icmp eq i32 %t228, 1
  br i1 %t230, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb100
bb52:
  %t232 = load i64, ptr %l12, !tbaa !24
  %t234 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = getelementptr { i64, ptr }, ptr %t235, i64 %t232
  %t237 = load { i64, ptr }, ptr %t236, !tbaa !37
  %t239 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t237, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d157, i32 0, i32 1) })
  store i1 %t239, ptr %l116
  br label %bb53
bb53:
  %t240 = load i1, ptr %l116, !tbaa !21
  %t241 = xor i1 %t240, true
  br i1 %t241, label %bb54, label %bb55
bb54:
  %t243 = load i64, ptr %l12, !tbaa !24
  %t245 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr { i64, ptr }, ptr %t246, i64 %t243
  %t248 = load { i64, ptr }, ptr %t247, !tbaa !37
  call void @compiler_2fbuild_2esayErr(ptr %s0, { i64, ptr } %t248)
  br label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb57
bb57:
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t252 = getelementptr %"compiler/build:compiles", ptr %t250, i32 0, i32 5
  %t253 = load i64, ptr %l12, !tbaa !24
  %t256 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t252, i64 %t253)
  store { i64, ptr } %t256, ptr %l123
  br label %bb58
bb58:
  %t257 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t258 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t257, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d158, i32 0, i32 1) })
  store i1 %t258, ptr %l124
  br label %bb59
bb59:
  %t259 = load i1, ptr %l124, !tbaa !21
  %t260 = xor i1 %t259, true
  br i1 %t260, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s10
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t264 = getelementptr %"compiler/build:compiles", ptr %t262, i32 0, i32 5
  %t265 = load i64, ptr %l12, !tbaa !24
  %t268 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t264, i64 %t265)
  store { i64, ptr } %t268, ptr %l129
  br label %bb62
bb61:
  br label %bb83
bb62:
  %t269 = load ptr, ptr %l1, !tbaa !29
  %t271 = getelementptr %"compiler/build:compiles", ptr %t269, i32 0, i32 2
  %t272 = load i64, ptr %l12, !tbaa !24
  %t275 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t271, i64 %t272)
  store { i64, ptr } %t275, ptr %l133
  br label %bb63
bb63:
  %t276 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t277 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v1, ptr %s10, { i64, ptr } %t276)
  store { i64, ptr } %t277, ptr %l134
  br label %bb64
bb64:
  %t278 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t278, 0
  %t280 = extractvalue { i64, ptr } %t278, 1
  %t281 = mul i64 %t279, 1
  %t282 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t281)
  call void @llvm.memcpy.p0.p0.i64(ptr %t282, ptr %t280, i64 %t281, i1 false)
  %t283 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t282, 1
  %t285 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t287 = call i32 @std_2fos_2eRename(ptr %v1, ptr %s10, { i64, ptr } %t285, { i64, ptr } %t284)
  store i32 %t287, ptr %l136
  %t288 = icmp ne i32 %t287, 0
  br i1 %t288, label %bb66, label %ok.289, !prof !99
ok.289:
  br label %bb65
bb65:
  br label %bb79
bb66:
  %t290 = load i32, ptr %l136, !tbaa !23
  %t291 = ashr i32 %t290, 16
  %t293 = icmp eq i32 %t291, 1
  store i1 %t293, ptr %l138, !tbaa !21
  %t294 = load i32, ptr %l136, !tbaa !23
  %t295 = ashr i32 %t294, 16
  %t297 = icmp eq i32 %t295, 1
  br i1 %t297, label %bb67, label %bb68
bb67:
  call void @__olang_errpay_pop()
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t299 = load i1, ptr %l6, !tbaa !21
  %t301 = xor i1 %t299, true
  br i1 %t301, label %bb70, label %bb71
bb70:
  %t303 = ptrtoint ptr %v2 to i64
  store i64 %t303, ptr %l143, !tbaa !24
  %t304 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t304, label %bb72, label %bb73
bb71:
  br label %bb78
bb72:
  %t306 = call ptr @__olang_region_make(ptr %v2)
  %t307 = ptrtoint ptr %t306 to i64
  store i64 %t307, ptr %l143, !tbaa !24
  br label %bb73
bb73:
  %t308 = load ptr, ptr %l1, !tbaa !29
  %t310 = getelementptr %"compiler/build:compiles", ptr %t308, i32 0, i32 2
  %t311 = load i64, ptr %l12, !tbaa !24
  %t314 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t310, i64 %t311)
  store { i64, ptr } %t314, ptr %l148
  br label %bb74
bb74:
  %t315 = load i64, ptr %l143
  %t316 = inttoptr i64 %t315 to ptr
  %t317 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t318 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v1, ptr %t316, { i64, ptr } %t317)
  store { i64, ptr } %t318, ptr %l149
  br label %bb75
bb75:
  %t319 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t320 = load i64, ptr %l143
  %t321 = inttoptr i64 %t320 to ptr
  %t322 = extractvalue { i64, ptr } %t319, 0
  %t323 = extractvalue { i64, ptr } %t319, 1
  %t324 = mul i64 %t322, 1
  %t325 = call ptr @__olang_scope_alloc(ptr %t321, i64 %t324)
  call void @llvm.memcpy.p0.p0.i64(ptr %t325, ptr %t323, i64 %t324, i1 false)
  %t326 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t327 = insertvalue { i64, ptr } %t326, ptr %t325, 1
  store { i64, ptr } %t327, ptr %l150, !tbaa !27
  %t328 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v2)
  store %"compiler/diagmsg:Msg" %t328, ptr %l151
  br label %bb76
bb76:
  %t329 = load ptr, ptr %l2, !tbaa !29
  %t330 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t331 = load %"compiler/diagmsg:Msg", ptr %l151
  call void @compiler_2fbuild_2efileFatal(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t330, %"compiler/diagmsg:Msg" %t331, ptr %t329)
  br label %bb77
bb77:
  br label %bb78
bb78:
  store i1 true, ptr %l6, !tbaa !21
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s2)
  br label %bb100
bb79:
  %t333 = load ptr, ptr %l0, !tbaa !29
  store ptr %t333, ptr %l153, !tbaa !29
  %t334 = load ptr, ptr %l1, !tbaa !29
  %t336 = getelementptr %"compiler/build:compiles", ptr %t334, i32 0, i32 2
  %t337 = load i64, ptr %l12, !tbaa !24
  %t340 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t336, i64 %t337)
  store { i64, ptr } %t340, ptr %l157
  br label %bb80
bb80:
  %t341 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t342 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v1, ptr %s10, { i64, ptr } %t341)
  store { i64, ptr } %t342, ptr %l158
  br label %bb81
bb81:
  %t343 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t344 = extractvalue { i64, ptr } %t343, 0
  %t345 = extractvalue { i64, ptr } %t343, 1
  %t346 = mul i64 %t344, 1
  %t347 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t346)
  call void @llvm.memcpy.p0.p0.i64(ptr %t347, ptr %t345, i64 %t346, i1 false)
  %t348 = insertvalue { i64, ptr } undef, i64 %t344, 0
  %t349 = insertvalue { i64, ptr } %t348, ptr %t347, 1
  %t350 = load ptr, ptr %l153, !tbaa !29
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ekeep(ptr %v0, ptr %s10, ptr %t350, { i64, ptr } %t349)
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s10)
  br label %bb83
bb83:
  %t352 = load ptr, ptr %l1, !tbaa !29
  %t354 = getelementptr %"compiler/build:compiles", ptr %t352, i32 0, i32 1
  %t355 = load i64, ptr %l12, !tbaa !24
  %t358 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t354, i64 %t355)
  store { i64, ptr } %t358, ptr %l163
  br label %bb84
bb84:
  %t359 = load ptr, ptr %l1, !tbaa !29
  %t361 = getelementptr %"compiler/build:compiles", ptr %t359, i32 0, i32 2
  %t362 = load i64, ptr %l12, !tbaa !24
  %t365 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t361, i64 %t362)
  store { i64, ptr } %t365, ptr %l167
  br label %bb85
bb85:
  %t366 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t367 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t368 = call i32 @std_2fos_2eRename(ptr %v1, ptr %v1, { i64, ptr } %t366, { i64, ptr } %t367)
  store i32 %t368, ptr %l168
  %t369 = icmp ne i32 %t368, 0
  br i1 %t369, label %bb87, label %ok.370, !prof !99
ok.370:
  br label %bb86
bb86:
  br label %bb97
bb87:
  %t371 = load i32, ptr %l168, !tbaa !23
  %t372 = ashr i32 %t371, 16
  %t374 = icmp eq i32 %t372, 1
  store i1 %t374, ptr %l170, !tbaa !21
  %t375 = load i32, ptr %l168, !tbaa !23
  %t376 = ashr i32 %t375, 16
  %t378 = icmp eq i32 %t376, 1
  br i1 %t378, label %bb88, label %bb89
bb88:
  call void @__olang_errpay_pop()
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t380 = load i1, ptr %l6, !tbaa !21
  %t382 = xor i1 %t380, true
  br i1 %t382, label %bb91, label %bb92
bb91:
  %t384 = load ptr, ptr %l1, !tbaa !29
  %t386 = getelementptr %"compiler/build:compiles", ptr %t384, i32 0, i32 2
  %t387 = load i64, ptr %l12, !tbaa !24
  %t390 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t386, i64 %t387)
  store { i64, ptr } %t390, ptr %l178
  br label %bb93
bb92:
  br label %bb96
bb93:
  %t391 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v2)
  store %"compiler/diagmsg:Msg" %t391, ptr %l179
  br label %bb94
bb94:
  %t392 = load ptr, ptr %l2, !tbaa !29
  %t393 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t394 = load %"compiler/diagmsg:Msg", ptr %l179
  call void @compiler_2fbuild_2efileFatal(ptr %v1, ptr %v2, ptr %v2, { i64, ptr } %t393, %"compiler/diagmsg:Msg" %t394, ptr %t392)
  br label %bb95
bb95:
  br label %bb96
bb96:
  store i1 true, ptr %l6, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb100
bb97:
  %t396 = load ptr, ptr %l0, !tbaa !29
  store ptr %t396, ptr %l181, !tbaa !29
  %t397 = load ptr, ptr %l1, !tbaa !29
  %t399 = getelementptr %"compiler/build:compiles", ptr %t397, i32 0, i32 2
  %t400 = load i64, ptr %l12, !tbaa !24
  %t403 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t399, i64 %t400)
  store { i64, ptr } %t403, ptr %l185
  br label %bb98
bb98:
  %t404 = load ptr, ptr %l181, !tbaa !29
  %t405 = load { i64, ptr }, ptr %l185, !tbaa !27
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ekeep(ptr %v0, ptr %v1, ptr %t404, { i64, ptr } %t405)
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s2)
  br label %bb100
bb100:
  %t406 = load i64, ptr %l11, !tbaa !24
  %t408 = add i64 %t406, 1
  store i64 %t408, ptr %l11, !tbaa !24
  br label %bb12
bb101:
  %t410 = load ptr, ptr %l1, !tbaa !29
  %t412 = getelementptr %"compiler/build:compiles", ptr %t410, i32 0, i32 7
  store ptr %t412, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb102
bb102:
  %t414 = load i64, ptr %l14, !tbaa !24
  store i64 %t414, ptr %l190, !tbaa !24
  %t415 = load ptr, ptr %l13, !tbaa !29
  %t417 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t415)
  store i64 %t417, ptr %l192
  br label %bb103
bb103:
  %t418 = load i64, ptr %l190, !tbaa !24
  %t419 = load i64, ptr %l192, !tbaa !24
  %t420 = icmp slt i64 %t418, %t419
  %t422 = xor i1 %t420, true
  br i1 %t422, label %bb104, label %bb105
bb104:
  br label %bb115
bb105:
  br label %bb106
bb106:
  %t424 = load ptr, ptr %l13, !tbaa !29
  %t425 = load i64, ptr %l14, !tbaa !24
  %t428 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t424, i64 %t425)
  store { i64, ptr } %t428, ptr %l197
  br label %bb107
bb107:
  %t429 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t432 = call i32 @std_2fos_2eRemoveAll(ptr %v1, { i64, ptr } %t429)
  store i32 %t432, ptr %l199
  %t433 = icmp ne i32 %t432, 0
  br i1 %t433, label %bb109, label %ok.434, !prof !99
ok.434:
  br label %bb108
bb108:
  br label %bb113
bb109:
  %t435 = load i32, ptr %l199, !tbaa !23
  %t436 = ashr i32 %t435, 16
  %t438 = icmp eq i32 %t436, 1
  store i1 %t438, ptr %l201, !tbaa !21
  %t439 = load i32, ptr %l199, !tbaa !23
  %t440 = ashr i32 %t439, 16
  %t442 = icmp eq i32 %t440, 1
  br i1 %t442, label %bb110, label %bb111
bb110:
  call void @__olang_errpay_pop()
  br label %bb111
bb111:
  br label %bb112
bb112:
  br label %bb113
bb113:
  br label %bb114
bb114:
  %t444 = load i64, ptr %l14, !tbaa !24
  %t446 = add i64 %t444, 1
  store i64 %t446, ptr %l14, !tbaa !24
  br label %bb102
bb115:
  %t448 = load i1, ptr %l6, !tbaa !21
  br i1 %t448, label %bb116, label %bb117
bb116:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb117:
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eensureDir(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l6 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %t4)
  store i32 %t6, ptr %l4
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  br label %bb1
bb1:
  br label %bb8
bb2:
  %t9 = load i32, ptr %l4, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l6, !tbaa !21
  %t13 = load i32, ptr %l4, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/build:Config", ptr %t18, i32 0, i32 0
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l10, !tbaa !27
  %t22 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v1)
  store %"compiler/diagmsg:Msg" %t22, ptr %l11
  br label %bb6
bb6:
  %t24 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t25 = load %"compiler/diagmsg:Msg", ptr %l11
  call void @compiler_2fbuild_2efileFatal(ptr %v0, ptr %v1, ptr %v1, { i64, ptr } %t24, %"compiler/diagmsg:Msg" %t25, ptr %a1)
  br label %bb7
bb7:
  store i32 65536, ptr %rv
  br label %ret
bb8:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 13
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
  %t16 = getelementptr %"compiler/build:Config", ptr %t14, i32 0, i32 13
  %t17 = load i64, ptr %t16, !tbaa !24
  %t18 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
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
  %t44 = getelementptr %"compiler/build:Config", ptr %t42, i32 0, i32 12
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = getelementptr %"compiler/build:Program", ptr %t46, i32 0, i32 6
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  %t50 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t53 = extractvalue { i64, ptr } %t45, 1
  %t54 = extractvalue { i64, ptr } %t45, 0
  %t55 = add i64 %t51, %t54
  %t56 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t58 = add i64 %t55, %t57
  %t60 = extractvalue { i64, ptr } %t49, 1
  %t61 = extractvalue { i64, ptr } %t49, 0
  %t62 = add i64 %t58, %t61
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
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
  %t82 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t41, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d163, i32 0, i32 1) }, { i64, ptr } %t79)
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t96 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v1, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t94, { i64, ptr } %t95, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
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
  %t121 = getelementptr %"compiler/build:Config", ptr %t119, i32 0, i32 12
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  %t123 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t124 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  %t126 = extractvalue { i64, ptr } %t122, 1
  %t127 = extractvalue { i64, ptr } %t122, 0
  %t128 = add i64 %t124, %t127
  %t129 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t130 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
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
  %t146 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s5, ptr %s5, ptr %s5, ptr %t118, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d166, i32 0, i32 1) }, { i64, ptr } %t143)
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
  %t159 = getelementptr %"compiler/build:Config", ptr %t157, i32 0, i32 12
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  %t161 = load ptr, ptr %l2, !tbaa !29
  %t163 = getelementptr %"compiler/build:Program", ptr %t161, i32 0, i32 6
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  %t165 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t166 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t168 = extractvalue { i64, ptr } %t160, 1
  %t169 = extractvalue { i64, ptr } %t160, 0
  %t170 = add i64 %t166, %t169
  %t171 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t173 = add i64 %t170, %t172
  %t175 = extractvalue { i64, ptr } %t164, 1
  %t176 = extractvalue { i64, ptr } %t164, 0
  %t177 = add i64 %t173, %t176
  %t178 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
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
  %t197 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t156, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d170, i32 0, i32 1) }, { i64, ptr } %t194)
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

define dso_local void @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ekeep(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l6 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l13 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l24 = alloca i1
  %l27 = alloca i32
  %l29 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca i32
  %l37 = alloca i32
  %l39 = alloca i1
  %l44 = alloca i32
  %l46 = alloca i1
  %l50 = alloca i32
  %l52 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 36
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d171, i32 0, i32 1) })
  store i1 %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load i1, ptr %l6, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/build:Config", ptr %t8, i32 0, i32 36
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l8, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t12, ptr %l9, !tbaa !27
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/build:Config", ptr %t13, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = add i64 %t18, 1
  store i64 %t20, ptr %l13, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t21, 0
  store i64 %t24, ptr %l16, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l17, !tbaa !24
  %t27 = load i64, ptr %l13, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = load i64, ptr %l13, !tbaa !24
  %t31 = load i64, ptr %l16, !tbaa !24
  %t32 = icmp sle i64 %t30, %t31
  br i1 %t32, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_3ba7d2bc4f70132e_88e22ea564bfc3e2)
  unreachable
bb7:
  %t34 = load i64, ptr %l16, !tbaa !24
  %t35 = load i64, ptr %l17, !tbaa !24
  %t36 = icmp sle i64 %t34, %t35
  br i1 %t36, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3ba7d2bc4f70132e_88e22ea564bfc3e2)
  unreachable
bb9:
  %t38 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l13, !tbaa !24
  %t41 = load i64, ptr %l16, !tbaa !24
  %t42 = getelementptr i8, ptr %t39, i64 %t40
  %t43 = sub i64 %t41, %t40
  %t44 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  %t46 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d172, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d172, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t53 = extractvalue { i64, ptr } %t45, 1
  %t54 = extractvalue { i64, ptr } %t45, 0
  %t55 = add i64 %t51, %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t47, i64 %t48)
  %t57 = getelementptr i8, ptr %t56, i64 %t48
  call void @olang_textcopy(ptr %t57, ptr %t49, i64 %t50)
  %t58 = getelementptr i8, ptr %t57, i64 %t50
  call void @olang_textcopy(ptr %t58, ptr %t53, i64 %t54)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t56, 1
  store { i64, ptr } %t60, ptr %l2, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t64 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t62)
  store i1 %t64, ptr %l24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_3ba7d2bc4f70132e_88e22ea564bfc3e2)
  unreachable
bb11:
  %t65 = load i1, ptr %l24, !tbaa !21
  br i1 %t65, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/build:Config", ptr %t66, i32 0, i32 36
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t71 = call i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %t69)
  store i32 %t71, ptr %l27
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb16, label %ok.73, !prof !99
ok.73:
  br label %bb15
bb15:
  br label %bb20
bb16:
  %t74 = load i32, ptr %l27, !tbaa !23
  %t75 = ashr i32 %t74, 16
  %t77 = icmp eq i32 %t75, 1
  store i1 %t77, ptr %l29, !tbaa !21
  %t78 = load i32, ptr %l27, !tbaa !23
  %t79 = ashr i32 %t78, 16
  %t81 = icmp eq i32 %t79, 1
  br i1 %t81, label %bb17, label %bb18
bb17:
  call void @__olang_errpay_pop()
  br label %bb18
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb20:
  %t83 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t83, ptr %l32, !tbaa !27
  %t84 = call i32 @getpid()
  store i32 %t84, ptr %l33
  br label %bb21
bb21:
  %t85 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
  %t90 = add i64 %t87, %t89
  %t91 = load i32, ptr %l33, !tbaa !23
  %t92 = sext i32 %t91 to i64
  %t93 = call i64 @__olang_fmt_i64(ptr null, i64 %t92)
  %t94 = add i64 %t90, %t93
  %t95 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  %t97 = add i64 %t94, %t96
  %t98 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t97)
  call void @olang_textcopy(ptr %t98, ptr %t86, i64 %t87)
  %t99 = getelementptr i8, ptr %t98, i64 %t87
  call void @olang_textcopy(ptr %t99, ptr %t88, i64 %t89)
  %t100 = getelementptr i8, ptr %t99, i64 %t89
  %t101 = call i64 @__olang_fmt_i64(ptr %t100, i64 %t92)
  %t102 = getelementptr i8, ptr %t100, i64 %t93
  call void @olang_textcopy(ptr %t102, ptr %t95, i64 %t96)
  %t103 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t98, 1
  store { i64, ptr } %t104, ptr %l3, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t110 = call i32 @std_2fos_2eLink(ptr %v1, ptr %s0, { i64, ptr } %t106, { i64, ptr } %t107)
  store i32 %t110, ptr %l37
  %t111 = icmp ne i32 %t110, 0
  br i1 %t111, label %bb23, label %ok.112, !prof !99
ok.112:
  br label %bb22
bb22:
  br label %bb27
bb23:
  %t113 = load i32, ptr %l37, !tbaa !23
  %t114 = ashr i32 %t113, 16
  %t116 = icmp eq i32 %t114, 1
  store i1 %t116, ptr %l39, !tbaa !21
  %t117 = load i32, ptr %l37, !tbaa !23
  %t118 = ashr i32 %t117, 16
  %t120 = icmp eq i32 %t118, 1
  br i1 %t120, label %bb24, label %bb25
bb24:
  call void @__olang_errpay_pop()
  br label %bb25
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb27:
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t126 = call i32 @std_2fos_2eRename(ptr %s0, ptr %s0, { i64, ptr } %t122, { i64, ptr } %t123)
  store i32 %t126, ptr %l44
  %t127 = icmp ne i32 %t126, 0
  br i1 %t127, label %bb29, label %ok.128, !prof !99
ok.128:
  br label %bb28
bb28:
  br label %bb39
bb29:
  %t129 = load i32, ptr %l44, !tbaa !23
  %t130 = ashr i32 %t129, 16
  %t132 = icmp eq i32 %t130, 1
  store i1 %t132, ptr %l46, !tbaa !21
  %t133 = load i32, ptr %l44, !tbaa !23
  %t134 = ashr i32 %t133, 16
  %t136 = icmp eq i32 %t134, 1
  br i1 %t136, label %bb30, label %bb31
bb30:
  call void @__olang_errpay_pop()
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t138 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t140 = call i32 @std_2fos_2eRemove(ptr %s0, { i64, ptr } %t138)
  store i32 %t140, ptr %l50
  %t141 = icmp ne i32 %t140, 0
  br i1 %t141, label %bb34, label %ok.142, !prof !99
ok.142:
  br label %bb33
bb33:
  br label %bb38
bb34:
  %t143 = load i32, ptr %l50, !tbaa !23
  %t144 = ashr i32 %t143, 16
  %t146 = icmp eq i32 %t144, 1
  store i1 %t146, ptr %l52, !tbaa !21
  %t147 = load i32, ptr %l50, !tbaa !23
  %t148 = ashr i32 %t147, 16
  %t150 = icmp eq i32 %t148, 1
  br i1 %t150, label %bb35, label %bb36
bb35:
  call void @__olang_errpay_pop()
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2elibrary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %lp6 = alloca ptr
  %l7 = alloca [2 x { i64, ptr }]
  %lp8 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l13 = alloca i1
  %l15 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l47 = alloca i1
  %l53 = alloca i32
  %l55 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca { i64, [3 x i64] }
  %l59 = alloca %"compiler/diagmsg:Msg"
  %l61 = alloca i32
  %l66 = alloca i32
  %l68 = alloca i1
  %l71 = alloca { i64, ptr }
  %l72 = alloca %"compiler/diagmsg:Msg"
  %l75 = alloca i32
  %l76 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca i32
  %t150 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @compiler_2fbuild_2eLibName(ptr %v3, ptr %s0, { i64, ptr } %a3)
  store { i64, ptr } %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/build:Config", ptr %t5, i32 0, i32 30
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t8, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d175, i32 0, i32 1) })
  store i1 %t10, ptr %l13
  br label %bb2
bb2:
  %t11 = load i1, ptr %l13, !tbaa !21
  %t12 = xor i1 %t11, true
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/build:Config", ptr %t14, i32 0, i32 30
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 1
  %t20 = extractvalue { i64, ptr } %t17, 0
  %t21 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t20)
  call void @olang_textcopy(ptr %t21, ptr %t19, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l15, !tbaa !27
  br label %bb7
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/build:Config", ptr %t25, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l20, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t29, ptr %l21, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2emodeSuffix(ptr %v0, ptr %s0, ptr %t30)
  store { i64, ptr } %t32, ptr %l23
  br label %bb5
bb5:
  %t33 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t36 = extractvalue { i64, ptr } %t33, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d176, i32 0, i32 1) }, ptr %l26, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d177, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t44 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t40, { i64, ptr } %t42, { i64, ptr } %t43)
  store { i64, ptr } %t44, ptr %l28
  br label %bb6
bb6:
  %t45 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t49 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t52 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t55 = add i64 %t51, %t54
  %t57 = extractvalue { i64, ptr } %t45, 1
  %t58 = extractvalue { i64, ptr } %t45, 0
  %t59 = add i64 %t55, %t58
  %t60 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t61 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t62 = add i64 %t59, %t61
  %t63 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t62)
  call void @olang_textcopy(ptr %t63, ptr %t47, i64 %t48)
  %t64 = getelementptr i8, ptr %t63, i64 %t48
  call void @olang_textcopy(ptr %t64, ptr %t49, i64 %t50)
  %t65 = getelementptr i8, ptr %t64, i64 %t50
  call void @olang_textcopy(ptr %t65, ptr %t53, i64 %t54)
  %t66 = getelementptr i8, ptr %t65, i64 %t54
  call void @olang_textcopy(ptr %t66, ptr %t57, i64 %t58)
  %t67 = getelementptr i8, ptr %t66, i64 %t58
  call void @olang_textcopy(ptr %t67, ptr %t60, i64 %t61)
  %t68 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t63, 1
  store { i64, ptr } %t69, ptr %l15, !tbaa !27
  br label %bb7
bb7:
  %t71 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t71, ptr %lp6
  %t72 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t73 = load ptr, ptr %lp6
  store { i64, ptr } %t72, ptr %t73, !tbaa !27
  %t74 = load ptr, ptr %lp6
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  %t77 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %s0, { i64, ptr } %t75)
  store { i64, ptr } %t77, ptr %l32
  br label %bb8
bb8:
  %t78 = ptrtoint ptr %s0 to i64
  store i64 %t78, ptr %l33, !tbaa !24
  %t79 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t79, label %bb9, label %bb10
bb9:
  %t81 = call ptr @__olang_region_make(ptr %s0)
  %t82 = ptrtoint ptr %t81 to i64
  store i64 %t82, ptr %l33, !tbaa !24
  br label %bb10
bb10:
  %t83 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 1
  %t86 = extractvalue { i64, ptr } %t83, 0
  %t87 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t89 = add i64 %t86, %t88
  %t90 = load i64, ptr %l33
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t89)
  call void @olang_textcopy(ptr %t92, ptr %t85, i64 %t86)
  %t93 = getelementptr i8, ptr %t92, i64 %t86
  call void @olang_textcopy(ptr %t93, ptr %t87, i64 %t88)
  %t94 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t92, 1
  %t97 = load i64, ptr %l33
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = extractvalue { i64, ptr } %t95, 0
  %t100 = extractvalue { i64, ptr } %t95, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %t98, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t105 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t106 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t105, 0
  %t108 = insertvalue [2 x { i64, ptr }] %t106, { i64, ptr } %t104, 1
  store [2 x { i64, ptr }] %t108, ptr %l7
  %t111 = insertvalue { i64, ptr } undef, i64 2, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %l7, 1
  %t114 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %v4, { i64, ptr } %t112)
  store { i64, ptr } %t114, ptr %l41
  br label %bb11
bb11:
  %t115 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t115, ptr %lp8
  %t116 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t117 = load ptr, ptr %lp8
  store { i64, ptr } %t116, ptr %t117, !tbaa !27
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l42, !tbaa !29
  store ptr %a2, ptr %l43, !tbaa !29
  %t120 = load ptr, ptr %lp6
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  store { i64, ptr } %t121, ptr %l44, !tbaa !27
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr %"compiler/build:Program", ptr %t122, i32 0, i32 2
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  %t127 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t125, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d181, i32 0, i32 1) })
  store i1 %t127, ptr %l47
  br label %bb12
bb12:
  %t128 = load i1, ptr %l47, !tbaa !21
  %t129 = xor i1 %t128, true
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr %"compiler/build:Program", ptr %t130, i32 0, i32 3
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr %"compiler/build:Program", ptr %t133, i32 0, i32 4
  %t136 = load ptr, ptr %l42, !tbaa !29
  %t137 = load ptr, ptr %l43, !tbaa !29
  %t138 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t142 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eLink(ptr %v0, ptr %v2, ptr %v0, ptr %v1, ptr %v1, ptr %t136, ptr %t137, { i64, ptr } %t138, i1 %t129, ptr %t132, ptr %t135)
  store i32 %t142, ptr %l53
  %t143 = icmp ne i32 %t142, 0
  br i1 %t143, label %bb14, label %ok.144, !prof !99
ok.144:
  br label %bb13
bb13:
  br label %bb19
bb14:
  %t145 = load i32, ptr %l53, !tbaa !23
  %t146 = ashr i32 %t145, 16
  %t148 = icmp eq i32 %t146, 1
  store i1 %t148, ptr %l55, !tbaa !21
  br label %bb15
bb15:
  %t149 = load ptr, ptr %l4, !tbaa !29
  store ptr %t149, ptr %l56, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t150
  %t151 = getelementptr { i64, [3 x i64] }, ptr %t150, i32 0, i32 0
  store i64 0, ptr %t151
  %t152 = load { i64, [3 x i64] }, ptr %t150
  store { i64, [3 x i64] } %t152, ptr %l57
  %t153 = load ptr, ptr %lp6
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  %t156 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %v0, ptr %v4, { i64, ptr } %t154)
  store %"compiler/diagmsg:Msg" %t156, ptr %l59
  br label %bb16
bb16:
  %t157 = load ptr, ptr %l56, !tbaa !29
  %t158 = load { i64, [3 x i64] }, ptr %l57
  %t159 = load %"compiler/diagmsg:Msg", ptr %l59
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v4, ptr %v4, ptr %t157, { i64, [3 x i64] } %t158, %"compiler/diagmsg:Msg" %t159)
  br label %bb17
bb17:
  %t160 = load ptr, ptr %l4, !tbaa !29
  %t162 = call i32 @compiler_2fbuild_2efinish(ptr %v4, ptr %t160)
  store i32 %t162, ptr %l61
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t163 = load i32, ptr %l61, !tbaa !23
  store i32 %t163, ptr %rv
  br label %ret
bb19:
  call void @compiler_2fbuild_2ePhase(ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d182, i32 0, i32 1) })
  br label %bb20
bb20:
  %t164 = load ptr, ptr %lp8
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr %"compiler/build:Program", ptr %t166, i32 0, i32 5
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  %t173 = call i32 @std_2fos_2eWriteFile(ptr %v4, ptr %v1, { i64, ptr } %t165, { i64, ptr } %t169)
  store i32 %t173, ptr %l66
  %t174 = icmp ne i32 %t173, 0
  br i1 %t174, label %bb22, label %ok.175, !prof !99
ok.175:
  br label %bb21
bb21:
  br label %bb29
bb22:
  %t176 = load i32, ptr %l66, !tbaa !23
  %t177 = ashr i32 %t176, 16
  %t179 = icmp eq i32 %t177, 1
  store i1 %t179, ptr %l68, !tbaa !21
  %t180 = load i32, ptr %l66, !tbaa !23
  %t181 = ashr i32 %t180, 16
  %t183 = icmp eq i32 %t181, 1
  br i1 %t183, label %bb23, label %bb24
bb23:
  call void @__olang_errpay_pop()
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t185 = load ptr, ptr %lp8
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  store { i64, ptr } %t186, ptr %l71, !tbaa !27
  %t187 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOutputCannotWrite(ptr %v4)
  store %"compiler/diagmsg:Msg" %t187, ptr %l72
  br label %bb26
bb26:
  %t188 = load ptr, ptr %l4, !tbaa !29
  %t189 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t190 = load %"compiler/diagmsg:Msg", ptr %l72
  call void @compiler_2fbuild_2efileFatal(ptr %v4, ptr %v4, ptr %v4, { i64, ptr } %t189, %"compiler/diagmsg:Msg" %t190, ptr %t188)
  br label %bb27
bb27:
  %t192 = load ptr, ptr %l4, !tbaa !29
  %t194 = call i32 @compiler_2fbuild_2efinish(ptr %v4, ptr %t192)
  store i32 %t194, ptr %l75
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t195 = load i32, ptr %l75, !tbaa !23
  store i32 %t195, ptr %rv
  br label %ret
bb29:
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l76, !tbaa !29
  %t197 = load ptr, ptr %lp6
  %t198 = load { i64, ptr }, ptr %t197, !tbaa !27
  %t199 = load ptr, ptr %l76, !tbaa !29
  %t200 = getelementptr %"compiler/build:Config", ptr %t199, i32 0, i32 31
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  store { i64, ptr } %t201, ptr %l78, !tbaa !27
  %t203 = load ptr, ptr %l76, !tbaa !29
  %t204 = getelementptr %"compiler/build:Config", ptr %t203, i32 0, i32 31
  store { i64, ptr } %t198, ptr %t204, !tbaa !27
  %t205 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e31
  br i1 %t205, label %bb30, label %bb31
bb30:
  %t207 = load { i64, ptr }, ptr %l78
  %t208 = extractvalue { i64, ptr } %t207, 1
  call void @__olang_region_release(ptr %t208)
  store { i64, ptr } zeroinitializer, ptr %l78
  br label %bb31
bb31:
  call void @compiler_2fspin_2eEnd()
  br label %bb32
bb32:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/build:Config", ptr %t209, i32 0, i32 29
  %t212 = load i1, ptr %t211, !tbaa !21
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t216 = load ptr, ptr %l0, !tbaa !29
  store ptr %t216, ptr %l83, !tbaa !29
  %t217 = load ptr, ptr %lp6
  %t218 = load { i64, ptr }, ptr %t217, !tbaa !27
  %t220 = call { i64, ptr } @compiler_2fbuild_2eShown(ptr %v0, ptr %s6, { i64, ptr } %t218)
  store { i64, ptr } %t220, ptr %l85
  br label %bb35
bb34:
  br label %bb39
bb35:
  %t221 = load ptr, ptr %lp8
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  %t224 = call { i64, ptr } @compiler_2fbuild_2eShown(ptr %v4, ptr %s6, { i64, ptr } %t222)
  store { i64, ptr } %t224, ptr %l87
  br label %bb36
bb36:
  %t225 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t226 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t227 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t227, 1
  %t229 = extractvalue { i64, ptr } %t227, 0
  %t230 = add i64 %t226, %t229
  %t231 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t232 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t233 = add i64 %t230, %t232
  %t234 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t234, 1
  %t236 = extractvalue { i64, ptr } %t234, 0
  %t237 = add i64 %t233, %t236
  %t238 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t237)
  call void @olang_textcopy(ptr %t238, ptr %t225, i64 %t226)
  %t239 = getelementptr i8, ptr %t238, i64 %t226
  call void @olang_textcopy(ptr %t239, ptr %t228, i64 %t229)
  %t240 = getelementptr i8, ptr %t239, i64 %t229
  call void @olang_textcopy(ptr %t240, ptr %t231, i64 %t232)
  %t241 = getelementptr i8, ptr %t240, i64 %t232
  call void @olang_textcopy(ptr %t241, ptr %t235, i64 %t236)
  %t242 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t243 = insertvalue { i64, ptr } %t242, ptr %t238, 1
  %t245 = extractvalue { i64, ptr } %t243, 0
  %t246 = extractvalue { i64, ptr } %t243, 1
  %t247 = mul i64 %t245, 1
  %t248 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t247)
  call void @llvm.memcpy.p0.p0.i64(ptr %t248, ptr %t246, i64 %t247, i1 false)
  %t249 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t248, 1
  %t251 = load ptr, ptr %l83, !tbaa !29
  %t253 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s6, ptr %s6, ptr %s6, ptr %t251, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d185, i32 0, i32 1) }, { i64, ptr } %t250)
  store { i64, ptr } %t253, ptr %l90
  br label %bb37
bb37:
  %t254 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t254, 0
  %t256 = extractvalue { i64, ptr } %t254, 1
  %t257 = mul i64 %t255, 1
  %t258 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t257)
  call void @llvm.memcpy.p0.p0.i64(ptr %t258, ptr %t256, i64 %t257, i1 false)
  %t259 = insertvalue { i64, ptr } undef, i64 %t255, 0
  %t260 = insertvalue { i64, ptr } %t259, ptr %t258, 1
  call void @compiler_2fbuild_2esayln(ptr %s6, { i64, ptr } %t260)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s6)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
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
  %t40 = getelementptr %"compiler/build:Config", ptr %t38, i32 0, i32 34
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
  %t49 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d187, i32 0, i32 1) }, ptr %l59, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t79, ptr %l58, !tbaa !27
  br label %bb23
bb22:
  store { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d188, i32 0, i32 1) }, ptr %l61, !tbaa !27
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
  %t100 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  %t103 = extractvalue { i64, ptr } %t99, 1
  %t104 = extractvalue { i64, ptr } %t99, 0
  %t105 = add i64 %t101, %t104
  %t106 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
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
  %t133 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t134 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d192, i32 0, i32 1) })
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
  %t166 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t167 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
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
  %t238 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t239 = insertvalue [3 x { i64, ptr }] %t238, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t240 = insertvalue [3 x { i64, ptr }] %t239, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d196, i32 0, i32 1) }, 2
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
  %t275 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t273, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d197, i32 0, i32 1) })
  store i1 %t275, ptr %l127
  br label %bb60
bb60:
  %t276 = load i1, ptr %l127, !tbaa !21
  %t277 = xor i1 %t276, true
  br i1 %t277, label %bb61, label %bb62
bb61:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d198, i32 0, i32 1) })
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/build:Config", ptr %t280, i32 0, i32 1
  %t283 = load { i64, ptr }, ptr %t282, !tbaa !27
  %t285 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t283, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d199, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l166, !tbaa !27
  %t353 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t354 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t355 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t353, { i64, ptr } %t354, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
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
  %t370 = call %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %s0, ptr %s0, ptr %s0, i32 127, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d200, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d201, i32 0, i32 1) })
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
  %t409 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t410 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t411 = add i64 %t408, %t410
  %t412 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t411)
  call void @olang_textcopy(ptr %t412, ptr %t407, i64 %t408)
  %t413 = getelementptr i8, ptr %t412, i64 %t408
  call void @olang_textcopy(ptr %t413, ptr %t409, i64 %t410)
  %t414 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t415 = insertvalue { i64, ptr } %t414, ptr %t412, 1
  %t417 = extractvalue { i64, ptr } %t415, 0
  %t418 = extractvalue { i64, ptr } %t415, 1
  %t419 = mul i64 %t417, 1
  %t420 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t419)
  call void @llvm.memcpy.p0.p0.i64(ptr %t420, ptr %t418, i64 %t419, i1 false)
  %t421 = insertvalue { i64, ptr } undef, i64 %t417, 0
  %t422 = insertvalue { i64, ptr } %t421, ptr %t420, 1
  %t424 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %s24, ptr %v5, { i64, ptr } %t422)
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
  call void @compiler_2fbuild_2ePhase(ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d203, i32 0, i32 1) })
  br label %bb104
bb104:
  %t429 = load ptr, ptr %l0, !tbaa !29
  store ptr %t429, ptr %l187, !tbaa !29
  %t430 = load ptr, ptr %l187, !tbaa !29
  %t431 = getelementptr %"compiler/build:Config", ptr %t430, i32 0, i32 33
  %t432 = load i64, ptr %t431, !tbaa !24
  %t434 = add i64 %t432, 1
  %t436 = load ptr, ptr %l187, !tbaa !29
  %t437 = getelementptr %"compiler/build:Config", ptr %t436, i32 0, i32 33
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
  %t463 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t464 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
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
  %t481 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t482 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
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

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2elistQuick(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/build:Unit"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %lp24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca { { i64, ptr }, { i64, ptr } }
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca i64
  %l53 = alloca i64
  %l58 = alloca %"compiler/build:Unit"
  %l68 = alloca i1
  %l75 = alloca i1
  %l82 = alloca i1
  %l84 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l86 = alloca i64
  %l88 = alloca i64
  %l93 = alloca { i64, ptr }
  %l94 = alloca ptr
  %l95 = alloca i64
  %l98 = alloca { i64, ptr }
  %l102 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l104 = alloca i64
  %l106 = alloca i64
  %l111 = alloca { i64, ptr }
  %l118 = alloca ptr
  %l119 = alloca i64
  %l124 = alloca ptr
  %l126 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l131 = alloca i1
  %l137 = alloca i32
  %l139 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l140 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l142 = alloca i64
  %l144 = alloca i64
  %l150 = alloca { i64, ptr }
  %l157 = alloca i32
  %l159 = alloca i1
  %l162 = alloca { i64, ptr }
  %l163 = alloca %"compiler/diagmsg:Msg"
  %l166 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l175 = alloca i64
  %l177 = alloca i64
  %l182 = alloca { i64, ptr }
  %l190 = alloca i64
  %l192 = alloca { i64, ptr }
  %l193 = alloca i64
  %l195 = alloca { i64, ptr }
  %l197 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l199 = alloca i64
  %l220 = alloca ptr
  %l221 = alloca i64
  %l224 = alloca { i64, ptr }
  %l231 = alloca { i64, ptr }
  %l233 = alloca i64
  %l235 = alloca { i64, ptr }
  %l236 = alloca { { i64, ptr }, { i64, ptr } }
  %l237 = alloca { i64, ptr }
  %l238 = alloca i64
  %l239 = alloca { i64, ptr }
  %l240 = alloca { i64, ptr }
  %l241 = alloca i64
  %l242 = alloca { i64, ptr }
  %l243 = alloca ptr
  %l244 = alloca i64
  %l246 = alloca i64
  %l253 = alloca i64
  %l256 = alloca i64
  %l279 = alloca ptr
  %l280 = alloca { i64, [3 x i64] }
  %l285 = alloca %"compiler/diagmsg:Msg"
  %l290 = alloca i64
  %l294 = alloca i64
  %l297 = alloca i64
  %l319 = alloca i32
  %l321 = alloca i1
  %l333 = alloca i32
  %l335 = alloca i1
  %s0 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %rv = alloca i32
  %t599 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i1 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l48
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l6
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/build:Program", ptr %t3, i32 0, i32 0
  store ptr %t5, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l8, !tbaa !24
  store i64 %t7, ptr %l51, !tbaa !24
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l53
  br label %bb3
bb3:
  %t11 = load i64, ptr %l51, !tbaa !24
  %t12 = load i64, ptr %l53, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb13
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l7, !tbaa !29
  %t18 = load i64, ptr %l8, !tbaa !24
  %t21 = call %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %v1, ptr %t17, i64 %t18)
  store %"compiler/build:Unit" %t21, ptr %l58
  br label %bb7
bb7:
  %t22 = load %"compiler/build:Unit", ptr %l58
  store %"compiler/build:Unit" %t22, ptr %l9
  %t23 = getelementptr %"compiler/build:Unit", ptr %l9, i32 0, i32 1
  %t24 = load i32, ptr %t23, !range !{i32 0, i32 5}
  %t26 = trunc i64 4 to i32
  %t27 = icmp eq i32 %t24, %t26
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t31 = getelementptr %"compiler/build:Unit", ptr %l9, i32 0, i32 2
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l6, { i64, ptr } %t32)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t35 = load i64, ptr %l8, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l8, !tbaa !24
  br label %bb2
bb13:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr %"compiler/build:Program", ptr %t39, i32 0, i32 1
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t44 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d206, i32 0, i32 1) })
  store i1 %t44, ptr %l68
  br label %bb14
bb14:
  %t45 = load i1, ptr %l68, !tbaa !21
  %t46 = xor i1 %t45, true
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr %"compiler/build:Program", ptr %t48, i32 0, i32 1
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l6, { i64, ptr } %t51)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/build:Program", ptr %t54, i32 0, i32 2
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) })
  store i1 %t59, ptr %l75
  br label %bb19
bb19:
  %t60 = load i1, ptr %l75, !tbaa !21
  %t61 = xor i1 %t60, true
  br i1 %t61, label %bb20, label %bb21
bb20:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/build:Program", ptr %t63, i32 0, i32 2
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l6, { i64, ptr } %t66)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/build:Config", ptr %t69, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t74 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t72, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d208, i32 0, i32 1) })
  store i1 %t74, ptr %l82
  br label %bb24
bb24:
  %t75 = load i1, ptr %l82, !tbaa !21
  br i1 %t75, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i32 65537, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t77 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %l84
  br label %bb28
bb28:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l10
  store ptr %l6, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb29
bb29:
  %t80 = load i64, ptr %l12, !tbaa !24
  store i64 %t80, ptr %l86, !tbaa !24
  %t81 = load ptr, ptr %l11, !tbaa !29
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t81)
  store i64 %t83, ptr %l88
  br label %bb30
bb30:
  %t84 = load i64, ptr %l86, !tbaa !24
  %t85 = load i64, ptr %l88, !tbaa !24
  %t86 = icmp slt i64 %t84, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb31, label %bb32
bb31:
  br label %bb50
bb32:
  br label %bb33
bb33:
  %t90 = load ptr, ptr %l11, !tbaa !29
  %t91 = load i64, ptr %l12, !tbaa !24
  %t94 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t90, i64 %t91)
  store { i64, ptr } %t94, ptr %l93
  br label %bb34
bb34:
  %t95 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t95, ptr %l13, !tbaa !27
  store ptr %l10, ptr %l94, !tbaa !29
  %t96 = ptrtoint ptr %s0 to i64
  store i64 %t96, ptr %l95, !tbaa !24
  %t97 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t97, label %bb35, label %bb36
bb35:
  %t99 = call ptr @__olang_region_make(ptr %s0)
  %t100 = ptrtoint ptr %t99 to i64
  store i64 %t100, ptr %l95, !tbaa !24
  br label %bb36
bb36:
  %t101 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t102 = load i64, ptr %l95
  %t103 = inttoptr i64 %t102 to ptr
  %t105 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %s0, ptr %t103, { i64, ptr } %t101)
  store { i64, ptr } %t105, ptr %l98
  br label %bb37
bb37:
  %t106 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t107 = load i64, ptr %l95
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = extractvalue { i64, ptr } %t106, 0
  %t110 = extractvalue { i64, ptr } %t106, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %t108, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t115 = load ptr, ptr %l94, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t115, { i64, ptr } %t114)
  br label %bb38
bb38:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t121 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCompileFlags(ptr %v0, ptr %s0, ptr %s0, ptr %t117, { i64, ptr } %t118)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t121, ptr %l102
  br label %bb39
bb39:
  %t122 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102
  %t123 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t122, ptr %t123
  store ptr %t123, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb40
bb40:
  %t125 = load i64, ptr %l15, !tbaa !24
  store i64 %t125, ptr %l104, !tbaa !24
  %t126 = load ptr, ptr %l14, !tbaa !29
  %t128 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t126)
  store i64 %t128, ptr %l106
  br label %bb41
bb41:
  %t129 = load i64, ptr %l104, !tbaa !24
  %t130 = load i64, ptr %l106, !tbaa !24
  %t131 = icmp slt i64 %t129, %t130
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb42, label %bb43
bb42:
  br label %bb48
bb43:
  br label %bb44
bb44:
  %t135 = load ptr, ptr %l14, !tbaa !29
  %t136 = load i64, ptr %l15, !tbaa !24
  %t139 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t135, i64 %t136)
  store { i64, ptr } %t139, ptr %l111
  br label %bb45
bb45:
  %t140 = load { i64, ptr }, ptr %l111, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } %t140)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t144 = load i64, ptr %l15, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l15, !tbaa !24
  br label %bb40
bb48:
  br label %bb49
bb49:
  %t148 = load i64, ptr %l12, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l12, !tbaa !24
  br label %bb29
bb50:
  store ptr %l10, ptr %l118, !tbaa !29
  %t152 = ptrtoint ptr %s0 to i64
  store i64 %t152, ptr %l119, !tbaa !24
  %t153 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t153, label %bb51, label %bb52
bb51:
  %t155 = call ptr @__olang_region_make(ptr %s0)
  %t156 = ptrtoint ptr %t155 to i64
  store i64 %t156, ptr %l119, !tbaa !24
  br label %bb52
bb52:
  %t157 = load i1, ptr %l3, !tbaa !21
  %t159 = select i1 %t157, ptr @.c209, ptr @.c210
  %t160 = select i1 %t157, i64 4, i64 5
  %t161 = load i64, ptr %l119
  %t162 = inttoptr i64 %t161 to ptr
  %t163 = call ptr @__olang_scope_alloc(ptr %t162, i64 %t160)
  call void @olang_textcopy(ptr %t163, ptr %t159, i64 %t160)
  %t164 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  %t167 = load i64, ptr %l119
  %t168 = inttoptr i64 %t167 to ptr
  %t169 = extractvalue { i64, ptr } %t165, 0
  %t170 = extractvalue { i64, ptr } %t165, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %t168, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load ptr, ptr %l118, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t175, { i64, ptr } %t174)
  br label %bb53
bb53:
  store ptr %l10, ptr %l124, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eclangVersion(ptr %v0, ptr %v0, ptr %t177)
  store { i64, ptr } %t179, ptr %l126
  br label %bb54
bb54:
  %t180 = load ptr, ptr %l124, !tbaa !29
  %t181 = load { i64, ptr }, ptr %l126, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %t180, { i64, ptr } %t181)
  br label %bb55
bb55:
  %t183 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s0, ptr %s0, ptr %l10)
  store { i64, ptr } %t183, ptr %l128
  br label %bb56
bb56:
  %t184 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t184, ptr %l17, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t189 = call i1 @compiler_2fbuild_2emadeBefore(ptr %v2, ptr %s0, { i64, ptr } %t185, { i64, ptr } %t186)
  store i1 %t189, ptr %l131
  br label %bb57
bb57:
  %t190 = load i1, ptr %l131, !tbaa !21
  br i1 %t190, label %bb58, label %bb59
bb58:
  %t191 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t192 = load i1, ptr %l3, !tbaa !21
  %t193 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fbuild_2elistFiles(ptr %v2, ptr %v3, { i64, ptr } %t191, i1 %t192, ptr %t193)
  br label %bb60
bb59:
  br label %bb61
bb60:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb61:
  %t197 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t198 = load ptr, ptr %l5, !tbaa !29
  %t201 = call i32 @compiler_2fbuild_2eafresh(ptr %v2, ptr %v4, { i64, ptr } %t197, ptr %t198)
  store i32 %t201, ptr %l137
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb63, label %ok.203, !prof !99
ok.203:
  br label %bb62
bb62:
  br label %bb64
bb63:
  %t204 = load i32, ptr %l137, !tbaa !23
  %t205 = lshr i32 %t204, 16
  %t206 = and i32 %t204, 65535
  %t207 = icmp eq i32 %t205, 1
  %t208 = select i1 %t207, i32 1, i32 0
  %t209 = icmp eq i32 %t204, 0
  %t210 = shl i32 %t208, 16
  %t211 = or i32 %t210, %t206
  %t212 = select i1 %t209, i32 0, i32 %t211
  call void @__olang_scope_close(ptr %s0)
  store i32 %t212, ptr %rv
  br label %ret
bb64:
  %t214 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t214, ptr %l139
  br label %bb65
bb65:
  %t215 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l139
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t215, ptr %l18
  %t216 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t216, ptr %l140
  br label %bb66
bb66:
  %t217 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l140
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t217, ptr %l19
  store ptr %l6, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb67
bb67:
  %t219 = load i64, ptr %l21, !tbaa !24
  store i64 %t219, ptr %l142, !tbaa !24
  %t220 = load ptr, ptr %l20, !tbaa !29
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t220)
  store i64 %t222, ptr %l144
  br label %bb68
bb68:
  %t223 = load i64, ptr %l142, !tbaa !24
  %t224 = load i64, ptr %l144, !tbaa !24
  %t225 = icmp slt i64 %t223, %t224
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb69, label %bb70
bb69:
  br label %bb118
bb70:
  br label %bb71
bb71:
  %t229 = load i64, ptr %l21, !tbaa !24
  store i64 %t229, ptr %l22, !tbaa !24
  %t231 = load ptr, ptr %l20, !tbaa !29
  %t232 = load i64, ptr %l21, !tbaa !24
  %t235 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t231, i64 %t232)
  store { i64, ptr } %t235, ptr %l150
  br label %bb72
bb72:
  %t236 = load { i64, ptr }, ptr %l150, !tbaa !27
  store { i64, ptr } %t236, ptr %l23, !tbaa !27
  %t237 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t238 = load i64, ptr %l22, !tbaa !24
  %t240 = extractvalue { i64, ptr } %t237, 1
  %t241 = extractvalue { i64, ptr } %t237, 0
  %t242 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t243 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  %t244 = add i64 %t241, %t243
  %t246 = call i64 @__olang_fmt_i64(ptr null, i64 %t238)
  %t247 = add i64 %t244, %t246
  %t248 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t249 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  %t250 = add i64 %t247, %t249
  %t251 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t250)
  call void @olang_textcopy(ptr %t251, ptr %t240, i64 %t241)
  %t252 = getelementptr i8, ptr %t251, i64 %t241
  call void @olang_textcopy(ptr %t252, ptr %t242, i64 %t243)
  %t253 = getelementptr i8, ptr %t252, i64 %t243
  %t254 = call i64 @__olang_fmt_i64(ptr %t253, i64 %t238)
  %t255 = getelementptr i8, ptr %t253, i64 %t246
  call void @olang_textcopy(ptr %t255, ptr %t248, i64 %t249)
  %t256 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t251, 1
  %t258 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t258, ptr %lp24
  %t260 = load ptr, ptr %lp24
  store { i64, ptr } %t257, ptr %t260, !tbaa !27
  %t261 = load ptr, ptr %lp24
  %t262 = load { i64, ptr }, ptr %t261, !tbaa !27
  %t263 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t267 = call i32 @std_2fos_2eWriteFile(ptr %v4, ptr %s0, { i64, ptr } %t262, { i64, ptr } %t263)
  store i32 %t267, ptr %l157
  %t268 = icmp ne i32 %t267, 0
  br i1 %t268, label %bb74, label %ok.269, !prof !99
ok.269:
  br label %bb73
bb73:
  br label %bb80
bb74:
  %t270 = load i32, ptr %l157, !tbaa !23
  %t271 = ashr i32 %t270, 16
  %t273 = icmp eq i32 %t271, 1
  store i1 %t273, ptr %l159, !tbaa !21
  %t274 = load i32, ptr %l157, !tbaa !23
  %t275 = ashr i32 %t274, 16
  %t277 = icmp eq i32 %t275, 1
  br i1 %t277, label %bb75, label %bb76
bb75:
  call void @__olang_errpay_pop()
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t279 = load ptr, ptr %lp24
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  store { i64, ptr } %t280, ptr %l162, !tbaa !27
  %t281 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v4)
  store %"compiler/diagmsg:Msg" %t281, ptr %l163
  br label %bb78
bb78:
  %t282 = load ptr, ptr %l5, !tbaa !29
  %t283 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t284 = load %"compiler/diagmsg:Msg", ptr %l163
  call void @compiler_2fbuild_2efileFatal(ptr %v4, ptr %v4, ptr %v4, { i64, ptr } %t283, %"compiler/diagmsg:Msg" %t284, ptr %t282)
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb80:
  %t287 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t287, ptr %l166
  br label %bb81
bb81:
  %t288 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l166
  %t289 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t288, ptr %t289
  store ptr %t289, ptr %l25, !tbaa !29
  %t291 = load ptr, ptr %l25, !tbaa !29
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/build:Config", ptr %t292, i32 0, i32 1
  %t295 = load { i64, ptr }, ptr %t294, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %t291, { i64, ptr } %t295)
  br label %bb82
bb82:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t302 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCompileFlags(ptr %v0, ptr %s0, ptr %s0, ptr %t298, { i64, ptr } %t299)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t302, ptr %l173
  br label %bb83
bb83:
  %t303 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173
  %t304 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t303, ptr %t304
  store ptr %t304, ptr %l26, !tbaa !29
  store i64 0, ptr %l27, !tbaa !24
  br label %bb84
bb84:
  %t306 = load i64, ptr %l27, !tbaa !24
  store i64 %t306, ptr %l175, !tbaa !24
  %t307 = load ptr, ptr %l26, !tbaa !29
  %t309 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t307)
  store i64 %t309, ptr %l177
  br label %bb85
bb85:
  %t310 = load i64, ptr %l175, !tbaa !24
  %t311 = load i64, ptr %l177, !tbaa !24
  %t312 = icmp slt i64 %t310, %t311
  %t314 = xor i1 %t312, true
  br i1 %t314, label %bb86, label %bb87
bb86:
  br label %bb92
bb87:
  br label %bb88
bb88:
  %t316 = load ptr, ptr %l26, !tbaa !29
  %t317 = load i64, ptr %l27, !tbaa !24
  %t320 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t316, i64 %t317)
  store { i64, ptr } %t320, ptr %l182
  br label %bb89
bb89:
  %t321 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t322 = load ptr, ptr %l25, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t322, { i64, ptr } %t321)
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t326 = load i64, ptr %l27, !tbaa !24
  %t328 = add i64 %t326, 1
  store i64 %t328, ptr %l27, !tbaa !24
  br label %bb84
bb92:
  %t330 = load ptr, ptr %l25, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t330, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d213, i32 0, i32 1) })
  br label %bb93
bb93:
  %t332 = load i1, ptr %l3, !tbaa !21
  br i1 %t332, label %bb94, label %bb95
bb94:
  %t334 = load ptr, ptr %l25, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t334, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d214, i32 0, i32 1) })
  br label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb97
bb97:
  %t336 = ptrtoint ptr %s0 to i64
  store i64 %t336, ptr %l190, !tbaa !24
  %t337 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_204_3e_2e_2d1
  br i1 %t337, label %bb98, label %bb99
bb98:
  %t339 = call ptr @__olang_region_make(ptr %s0)
  %t340 = ptrtoint ptr %t339 to i64
  store i64 %t340, ptr %l190, !tbaa !24
  br label %bb99
bb99:
  %t341 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t341, ptr %l192, !tbaa !27
  %t342 = load i64, ptr %l22, !tbaa !24
  store i64 %t342, ptr %l193, !tbaa !24
  %t343 = load i1, ptr %l3, !tbaa !21
  br i1 %t343, label %bb100, label %bb101
bb100:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d215, i32 0, i32 1) }, ptr %l195, !tbaa !27
  br label %bb102
bb101:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d216, i32 0, i32 1) }, ptr %l195, !tbaa !27
  br label %bb102
bb102:
  %t345 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t346 = extractvalue { i64, ptr } %t345, 1
  %t347 = extractvalue { i64, ptr } %t345, 0
  %t348 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t349 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
  %t350 = add i64 %t347, %t349
  %t351 = load i64, ptr %l193, !tbaa !24
  %t352 = call i64 @__olang_fmt_i64(ptr null, i64 %t351)
  %t353 = add i64 %t350, %t352
  %t354 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t355 = extractvalue { i64, ptr } %t354, 1
  %t356 = extractvalue { i64, ptr } %t354, 0
  %t357 = add i64 %t353, %t356
  %t358 = load i64, ptr %l190
  %t359 = inttoptr i64 %t358 to ptr
  %t360 = call ptr @__olang_scope_alloc(ptr %t359, i64 %t357)
  call void @olang_textcopy(ptr %t360, ptr %t346, i64 %t347)
  %t361 = getelementptr i8, ptr %t360, i64 %t347
  call void @olang_textcopy(ptr %t361, ptr %t348, i64 %t349)
  %t362 = getelementptr i8, ptr %t361, i64 %t349
  %t363 = call i64 @__olang_fmt_i64(ptr %t362, i64 %t351)
  %t364 = getelementptr i8, ptr %t362, i64 %t352
  call void @olang_textcopy(ptr %t364, ptr %t355, i64 %t356)
  %t365 = insertvalue { i64, ptr } undef, i64 %t357, 0
  %t366 = insertvalue { i64, ptr } %t365, ptr %t360, 1
  %t368 = load i64, ptr %l190
  %t369 = inttoptr i64 %t368 to ptr
  %t370 = extractvalue { i64, ptr } %t366, 0
  %t371 = extractvalue { i64, ptr } %t366, 1
  %t372 = mul i64 %t370, 1
  %t373 = call ptr @__olang_scope_alloc(ptr %t369, i64 %t372)
  call void @llvm.memcpy.p0.p0.i64(ptr %t373, ptr %t371, i64 %t372, i1 false)
  %t374 = insertvalue { i64, ptr } undef, i64 %t370, 0
  %t375 = insertvalue { i64, ptr } %t374, ptr %t373, 1
  store { i64, ptr } %t375, ptr %l197, !tbaa !27
  %t376 = load ptr, ptr %lp24
  %t377 = load { i64, ptr }, ptr %t376, !tbaa !27
  store { i64, ptr } %t377, ptr %l198, !tbaa !27
  %t378 = ptrtoint ptr %s0 to i64
  store i64 %t378, ptr %l199, !tbaa !24
  %t379 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_204_3e_2e_2d1
  br i1 %t379, label %bb103, label %bb104
bb103:
  %t381 = call ptr @__olang_region_make(ptr %s0)
  %t382 = ptrtoint ptr %t381 to i64
  store i64 %t382, ptr %l199, !tbaa !24
  br label %bb104
bb104:
  %t383 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t384 = load i64, ptr %l22, !tbaa !24
  %t385 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d218, i32 0, i32 1) }, 1
  %t386 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d218, i32 0, i32 1) }, 0
  %t388 = extractvalue { i64, ptr } %t383, 1
  %t389 = extractvalue { i64, ptr } %t383, 0
  %t390 = add i64 %t386, %t389
  %t391 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d219, i32 0, i32 1) }, 1
  %t392 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d219, i32 0, i32 1) }, 0
  %t393 = add i64 %t390, %t392
  %t395 = call i64 @__olang_fmt_i64(ptr null, i64 %t384)
  %t396 = add i64 %t393, %t395
  %t397 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
  %t399 = add i64 %t396, %t398
  %t400 = load i64, ptr %l199
  %t401 = inttoptr i64 %t400 to ptr
  %t402 = call ptr @__olang_scope_alloc(ptr %t401, i64 %t399)
  call void @olang_textcopy(ptr %t402, ptr %t385, i64 %t386)
  %t403 = getelementptr i8, ptr %t402, i64 %t386
  call void @olang_textcopy(ptr %t403, ptr %t388, i64 %t389)
  %t404 = getelementptr i8, ptr %t403, i64 %t389
  call void @olang_textcopy(ptr %t404, ptr %t391, i64 %t392)
  %t405 = getelementptr i8, ptr %t404, i64 %t392
  %t406 = call i64 @__olang_fmt_i64(ptr %t405, i64 %t384)
  %t407 = getelementptr i8, ptr %t405, i64 %t395
  call void @olang_textcopy(ptr %t407, ptr %t397, i64 %t398)
  %t408 = insertvalue { i64, ptr } undef, i64 %t399, 0
  %t409 = insertvalue { i64, ptr } %t408, ptr %t402, 1
  %t411 = load i64, ptr %l199
  %t412 = inttoptr i64 %t411 to ptr
  %t413 = extractvalue { i64, ptr } %t409, 0
  %t414 = extractvalue { i64, ptr } %t409, 1
  %t415 = mul i64 %t413, 1
  %t416 = call ptr @__olang_scope_alloc(ptr %t412, i64 %t415)
  call void @llvm.memcpy.p0.p0.i64(ptr %t416, ptr %t414, i64 %t415, i1 false)
  %t417 = insertvalue { i64, ptr } undef, i64 %t413, 0
  %t418 = insertvalue { i64, ptr } %t417, ptr %t416, 1
  %t419 = insertvalue [4 x { i64, ptr }] undef, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d221, i32 0, i32 1) }, 0
  %t420 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t421 = insertvalue [4 x { i64, ptr }] %t419, { i64, ptr } %t420, 1
  %t422 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t423 = insertvalue [4 x { i64, ptr }] %t421, { i64, ptr } %t422, 2
  %t425 = insertvalue [4 x { i64, ptr }] %t423, { i64, ptr } %t418, 3
  %t427 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 64, i64 8)
  store [4 x { i64, ptr }] %t425, ptr %t427
  store ptr %t427, ptr %l29
  store i64 0, ptr %l30, !tbaa !24
  %t429 = load ptr, ptr %l29
  store i64 4, ptr %l31, !tbaa !24
  br label %bb105
bb105:
  %t432 = load i64, ptr %l30, !tbaa !24
  %t433 = load i64, ptr %l31, !tbaa !24
  %t436 = icmp slt i64 %t432, %t433
  %t438 = xor i1 %t436, true
  br i1 %t438, label %bb106, label %bb107
bb106:
  br label %bb111
bb107:
  br label %bb108
bb108:
  %t440 = load ptr, ptr %l29
  %t441 = load i64, ptr %l30, !tbaa !24
  %t444 = getelementptr [4 x { i64, ptr }], ptr %t440, i64 0, i64 %t441
  %t445 = load { i64, ptr }, ptr %t444, !tbaa !37
  %t447 = load ptr, ptr %l25, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t447, { i64, ptr } %t445)
  br label %bb109
bb109:
  br label %bb110
bb110:
  %t451 = load i64, ptr %l30, !tbaa !24
  %t453 = add i64 %t451, 1
  store i64 %t453, ptr %l30, !tbaa !24
  br label %bb105
bb111:
  store ptr %l18, ptr %l220, !tbaa !29
  %t455 = ptrtoint ptr %s0 to i64
  store i64 %t455, ptr %l221, !tbaa !24
  %t456 = load i1, ptr @olang_2esole_2eArray_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2e_2d1
  br i1 %t456, label %bb112, label %bb113
bb112:
  %t458 = call ptr @__olang_region_make(ptr %s0)
  %t459 = ptrtoint ptr %t458 to i64
  store i64 %t459, ptr %l221, !tbaa !24
  br label %bb113
bb113:
  %t460 = load ptr, ptr %l25, !tbaa !29
  %t461 = load i64, ptr %l221
  %t462 = inttoptr i64 %t461 to ptr
  %t464 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %t462, ptr %t460)
  store { i64, ptr } %t464, ptr %l224
  br label %bb114
bb114:
  %t465 = load ptr, ptr %l220, !tbaa !29
  %t466 = load { i64, ptr }, ptr %l224, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %s0, ptr %s0, ptr %t465, { i64, ptr } %t466)
  br label %bb115
bb115:
  %t467 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t469 = extractvalue { i64, ptr } %t467, 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l19, i64 %t469)
  br label %bb116
bb116:
  br label %bb117
bb117:
  %t472 = load i64, ptr %l21, !tbaa !24
  %t474 = add i64 %t472, 1
  store i64 %t474, ptr %l21, !tbaa !24
  br label %bb67
bb118:
  %t477 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %l18)
  store { i64, ptr } %t477, ptr %l231
  br label %bb119
bb119:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t480 = call i64 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewidth(ptr %v0, ptr %t478)
  store i64 %t480, ptr %l233
  br label %bb120
bb120:
  %t482 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l19)
  store { i64, ptr } %t482, ptr %l235
  br label %bb121
bb121:
  %t483 = load { i64, ptr }, ptr %l231, !tbaa !27
  %t484 = load i64, ptr %l233, !tbaa !24
  %t485 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t486 = call { { i64, ptr }, { i64, ptr } } @compiler_2fbuild_2eRunAll(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t483, i64 %t484, { i64, ptr } %t485)
  store { { i64, ptr }, { i64, ptr } } %t486, ptr %l236
  br label %bb122
bb122:
  %t487 = load { { i64, ptr }, { i64, ptr } }, ptr %l236
  store { { i64, ptr }, { i64, ptr } } %t487, ptr %l33
  %t488 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l33, i32 0, i32 0
  %t489 = load { i64, ptr }, ptr %t488, !tbaa !27
  store { i64, ptr } %t489, ptr %l237, !tbaa !27
  %t490 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t491 = extractvalue { i64, ptr } %t490, 0
  store i64 %t491, ptr %l238, !tbaa !24
  %t492 = load i64, ptr %l238, !tbaa !24
  %t493 = mul i64 %t492, 4
  %t494 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t493)
  %t495 = insertvalue { i64, ptr } undef, i64 %t492, 0
  %t496 = insertvalue { i64, ptr } %t495, ptr %t494, 1
  store { i64, ptr } %t496, ptr %l239, !tbaa !27
  %t497 = getelementptr { i64, ptr }, ptr %l239, i32 0, i32 1
  %t498 = load ptr, ptr %t497, !tbaa !27
  %t499 = getelementptr { i64, ptr }, ptr %l237, i32 0, i32 1
  %t500 = load ptr, ptr %t499, !tbaa !27
  %t501 = load i64, ptr %l238, !tbaa !24
  %t502 = mul i64 %t501, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t498, ptr %t500, i64 %t502, i1 false)
  %t503 = load { i64, ptr }, ptr %l239, !tbaa !27
  store { i64, ptr } %t503, ptr %l34, !tbaa !27
  %t504 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l33, i32 0, i32 1
  %t505 = load { i64, ptr }, ptr %t504, !tbaa !27
  store { i64, ptr } %t505, ptr %l240, !tbaa !27
  %t506 = load { i64, ptr }, ptr %l240, !tbaa !27
  %t507 = extractvalue { i64, ptr } %t506, 0
  store i64 %t507, ptr %l241, !tbaa !24
  %t508 = load i64, ptr %l241, !tbaa !24
  %t509 = mul i64 %t508, 16
  %t510 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t509)
  %t511 = insertvalue { i64, ptr } undef, i64 %t508, 0
  %t512 = insertvalue { i64, ptr } %t511, ptr %t510, 1
  store { i64, ptr } %t512, ptr %l242, !tbaa !27
  %t513 = getelementptr { i64, ptr }, ptr %l242, i32 0, i32 1
  %t514 = load ptr, ptr %t513, !tbaa !27
  %t515 = getelementptr { i64, ptr }, ptr %l240, i32 0, i32 1
  %t516 = load ptr, ptr %t515, !tbaa !27
  %t517 = load i64, ptr %l241, !tbaa !24
  %t518 = mul i64 %t517, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t514, ptr %t516, i64 %t518, i1 false)
  %t519 = load { i64, ptr }, ptr %l242, !tbaa !27
  store { i64, ptr } %t519, ptr %l35, !tbaa !27
  %t520 = load ptr, ptr %l0, !tbaa !29
  store ptr %t520, ptr %l243, !tbaa !29
  %t521 = load ptr, ptr %l243, !tbaa !29
  %t522 = getelementptr %"compiler/build:Config", ptr %t521, i32 0, i32 32
  %t523 = load i64, ptr %t522, !tbaa !24
  store i64 %t523, ptr %l244, !tbaa !24
  %t525 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H2ab12f44ffbd18d099d1f5a69642975a(ptr %s0, ptr %l18)
  store i64 %t525, ptr %l246
  br label %bb123
bb123:
  %t526 = load i64, ptr %l244, !tbaa !24
  %t527 = load i64, ptr %l246, !tbaa !24
  %t528 = add i64 %t526, %t527
  %t530 = load ptr, ptr %l243, !tbaa !29
  %t531 = getelementptr %"compiler/build:Config", ptr %t530, i32 0, i32 32
  store i64 %t528, ptr %t531, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  %t532 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t534 = extractvalue { i64, ptr } %t532, 0
  store i64 %t534, ptr %l37, !tbaa !24
  store i64 1, ptr %l38, !tbaa !24
  %t536 = load i64, ptr %l37, !tbaa !24
  %t537 = load i64, ptr %l36, !tbaa !24
  %t540 = icmp sgt i64 %t536, %t537
  br i1 %t540, label %bb124, label %bb125
bb124:
  %t542 = load i64, ptr %l38, !tbaa !24
  %t544 = icmp sgt i64 %t542, 0
  br i1 %t544, label %bb126, label %bb127
bb125:
  store i64 0, ptr %l253, !tbaa !24
  br label %bb129
bb126:
  %t546 = load i64, ptr %l37, !tbaa !24
  %t547 = load i64, ptr %l36, !tbaa !24
  %t550 = sub i64 %t546, %t547
  %t551 = load i64, ptr %l38, !tbaa !24
  %t554 = add i64 %t550, %t551
  %t556 = sub i64 %t554, 1
  %t557 = load i64, ptr %l38, !tbaa !24
  %t560 = sdiv i64 %t556, %t557
  store i64 %t560, ptr %l256, !tbaa !24
  br label %bb128
bb127:
  store i64 0, ptr %l256, !tbaa !24
  br label %bb128
bb128:
  %t562 = load i64, ptr %l256, !tbaa !24
  store i64 %t562, ptr %l253, !tbaa !24
  br label %bb129
bb129:
  %t563 = load i64, ptr %l253, !tbaa !24
  store i64 %t563, ptr %l39, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  br label %bb130
bb130:
  store %olang.scope zeroinitializer, ptr %s31
  %t564 = load i64, ptr %l40, !tbaa !24
  %t565 = load i64, ptr %l39, !tbaa !24
  %t568 = icmp slt i64 %t564, %t565
  %t570 = xor i1 %t568, true
  br i1 %t570, label %bb131, label %bb132
bb131:
  call void @__olang_scope_close(ptr %s31)
  br label %bb141
bb132:
  br label %bb133
bb133:
  %t572 = load i64, ptr %l36, !tbaa !24
  %t573 = load i64, ptr %l40, !tbaa !24
  %t574 = load i64, ptr %l38, !tbaa !24
  %t577 = mul i64 %t573, %t574
  %t580 = add i64 %t572, %t577
  store i64 %t580, ptr %l41, !tbaa !24
  %t582 = load i64, ptr %l41, !tbaa !24
  %t584 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t585 = load ptr, ptr %t584, !tbaa !27
  %t586 = getelementptr i32, ptr %t585, i64 %t582
  %t587 = load i32, ptr %t586, !tbaa !33
  %t589 = icmp eq i32 %t587, 0
  br i1 %t589, label %bb134, label %bb135
bb134:
  call void @__olang_scope_close(ptr %s31)
  br label %bb140
bb135:
  br label %bb136
bb136:
  %t591 = load i64, ptr %l41, !tbaa !24
  %t593 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t594 = load ptr, ptr %t593, !tbaa !27
  %t595 = getelementptr { i64, ptr }, ptr %t594, i64 %t591
  %t596 = load { i64, ptr }, ptr %t595, !tbaa !37
  call void @compiler_2fbuild_2esayErr(ptr %s0, { i64, ptr } %t596)
  br label %bb137
bb137:
  %t598 = load ptr, ptr %l5, !tbaa !29
  store ptr %t598, ptr %l279, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t599
  %t600 = getelementptr { i64, [3 x i64] }, ptr %t599, i32 0, i32 0
  store i64 0, ptr %t600
  %t601 = load { i64, [3 x i64] }, ptr %t599
  store { i64, [3 x i64] } %t601, ptr %l280
  %t602 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t603 = load i64, ptr %l41, !tbaa !24
  %t605 = extractvalue { i64, ptr } %t602, 1
  %t606 = extractvalue { i64, ptr } %t602, 0
  %t607 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t608 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  %t609 = add i64 %t606, %t608
  %t611 = call i64 @__olang_fmt_i64(ptr null, i64 %t603)
  %t612 = add i64 %t609, %t611
  %t613 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t614 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  %t615 = add i64 %t612, %t614
  %t616 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t615)
  call void @olang_textcopy(ptr %t616, ptr %t605, i64 %t606)
  %t617 = getelementptr i8, ptr %t616, i64 %t606
  call void @olang_textcopy(ptr %t617, ptr %t607, i64 %t608)
  %t618 = getelementptr i8, ptr %t617, i64 %t608
  %t619 = call i64 @__olang_fmt_i64(ptr %t618, i64 %t603)
  %t620 = getelementptr i8, ptr %t618, i64 %t611
  call void @olang_textcopy(ptr %t620, ptr %t613, i64 %t614)
  %t621 = insertvalue { i64, ptr } undef, i64 %t615, 0
  %t622 = insertvalue { i64, ptr } %t621, ptr %t616, 1
  %t624 = extractvalue { i64, ptr } %t622, 0
  %t625 = extractvalue { i64, ptr } %t622, 1
  %t626 = mul i64 %t624, 1
  %t627 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t626)
  call void @llvm.memcpy.p0.p0.i64(ptr %t627, ptr %t625, i64 %t626, i1 false)
  %t628 = insertvalue { i64, ptr } undef, i64 %t624, 0
  %t629 = insertvalue { i64, ptr } %t628, ptr %t627, 1
  %t631 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eClangFailed(ptr %s31, ptr %v4, { i64, ptr } %t629)
  store %"compiler/diagmsg:Msg" %t631, ptr %l285
  br label %bb138
bb138:
  %t632 = load ptr, ptr %l279, !tbaa !29
  %t633 = load { i64, [3 x i64] }, ptr %l280
  %t634 = load %"compiler/diagmsg:Msg", ptr %l285
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v4, ptr %v4, ptr %t632, { i64, [3 x i64] } %t633, %"compiler/diagmsg:Msg" %t634)
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s31)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb140:
  %t636 = load i64, ptr %l40, !tbaa !24
  %t638 = add i64 %t636, 1
  store i64 %t638, ptr %l40, !tbaa !24
  br label %bb130
bb141:
  store i64 0, ptr %l42, !tbaa !24
  %t641 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l6)
  store i64 %t641, ptr %l290
  br label %bb142
bb142:
  %t642 = load i64, ptr %l290, !tbaa !24
  store i64 %t642, ptr %l43, !tbaa !24
  store i64 1, ptr %l44, !tbaa !24
  %t643 = load i64, ptr %l43, !tbaa !24
  %t644 = load i64, ptr %l42, !tbaa !24
  %t647 = icmp sgt i64 %t643, %t644
  br i1 %t647, label %bb143, label %bb144
bb143:
  %t649 = load i64, ptr %l44, !tbaa !24
  %t651 = icmp sgt i64 %t649, 0
  br i1 %t651, label %bb145, label %bb146
bb144:
  store i64 0, ptr %l294, !tbaa !24
  br label %bb148
bb145:
  %t653 = load i64, ptr %l43, !tbaa !24
  %t654 = load i64, ptr %l42, !tbaa !24
  %t657 = sub i64 %t653, %t654
  %t658 = load i64, ptr %l44, !tbaa !24
  %t661 = add i64 %t657, %t658
  %t663 = sub i64 %t661, 1
  %t664 = load i64, ptr %l44, !tbaa !24
  %t667 = sdiv i64 %t663, %t664
  store i64 %t667, ptr %l297, !tbaa !24
  br label %bb147
bb146:
  store i64 0, ptr %l297, !tbaa !24
  br label %bb147
bb147:
  %t669 = load i64, ptr %l297, !tbaa !24
  store i64 %t669, ptr %l294, !tbaa !24
  br label %bb148
bb148:
  %t670 = load i64, ptr %l294, !tbaa !24
  store i64 %t670, ptr %l45, !tbaa !24
  store i64 0, ptr %l46, !tbaa !24
  br label %bb149
bb149:
  store %olang.scope zeroinitializer, ptr %s36
  %t671 = load i64, ptr %l46, !tbaa !24
  %t672 = load i64, ptr %l45, !tbaa !24
  %t675 = icmp slt i64 %t671, %t672
  %t677 = xor i1 %t675, true
  br i1 %t677, label %bb150, label %bb151
bb150:
  call void @__olang_scope_close(ptr %s36)
  br label %bb160
bb151:
  br label %bb152
bb152:
  %t679 = load i64, ptr %l42, !tbaa !24
  %t680 = load i64, ptr %l46, !tbaa !24
  %t681 = load i64, ptr %l44, !tbaa !24
  %t684 = mul i64 %t680, %t681
  %t687 = add i64 %t679, %t684
  %t689 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t692 = extractvalue { i64, ptr } %t689, 1
  %t693 = extractvalue { i64, ptr } %t689, 0
  %t694 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t695 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  %t696 = add i64 %t693, %t695
  %t698 = call i64 @__olang_fmt_i64(ptr null, i64 %t687)
  %t699 = add i64 %t696, %t698
  %t700 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t701 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  %t702 = add i64 %t699, %t701
  %t703 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t702)
  call void @olang_textcopy(ptr %t703, ptr %t692, i64 %t693)
  %t704 = getelementptr i8, ptr %t703, i64 %t693
  call void @olang_textcopy(ptr %t704, ptr %t694, i64 %t695)
  %t705 = getelementptr i8, ptr %t704, i64 %t695
  %t706 = call i64 @__olang_fmt_i64(ptr %t705, i64 %t687)
  %t707 = getelementptr i8, ptr %t705, i64 %t698
  call void @olang_textcopy(ptr %t707, ptr %t700, i64 %t701)
  %t708 = insertvalue { i64, ptr } undef, i64 %t702, 0
  %t709 = insertvalue { i64, ptr } %t708, ptr %t703, 1
  %t711 = extractvalue { i64, ptr } %t709, 0
  %t712 = extractvalue { i64, ptr } %t709, 1
  %t713 = mul i64 %t711, 1
  %t714 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t713)
  call void @llvm.memcpy.p0.p0.i64(ptr %t714, ptr %t712, i64 %t713, i1 false)
  %t715 = insertvalue { i64, ptr } undef, i64 %t711, 0
  %t716 = insertvalue { i64, ptr } %t715, ptr %t714, 1
  %t718 = call i32 @std_2fos_2eRemove(ptr %s36, { i64, ptr } %t716)
  store i32 %t718, ptr %l319
  %t719 = icmp ne i32 %t718, 0
  br i1 %t719, label %bb154, label %ok.720, !prof !99
ok.720:
  br label %bb153
bb153:
  br label %bb158
bb154:
  %t721 = load i32, ptr %l319, !tbaa !23
  %t722 = ashr i32 %t721, 16
  %t724 = icmp eq i32 %t722, 1
  store i1 %t724, ptr %l321, !tbaa !21
  %t725 = load i32, ptr %l319, !tbaa !23
  %t726 = ashr i32 %t725, 16
  %t728 = icmp eq i32 %t726, 1
  br i1 %t728, label %bb155, label %bb156
bb155:
  call void @__olang_errpay_pop()
  br label %bb156
bb156:
  br label %bb157
bb157:
  br label %bb158
bb158:
  call void @__olang_scope_close(ptr %s36)
  br label %bb159
bb159:
  %t730 = load i64, ptr %l46, !tbaa !24
  %t732 = add i64 %t730, 1
  store i64 %t732, ptr %l46, !tbaa !24
  br label %bb149
bb160:
  %t734 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t736 = extractvalue { i64, ptr } %t734, 1
  %t737 = extractvalue { i64, ptr } %t734, 0
  %t738 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d226, i32 0, i32 1) }, 1
  %t739 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d226, i32 0, i32 1) }, 0
  %t740 = add i64 %t737, %t739
  %t741 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t740)
  call void @olang_textcopy(ptr %t741, ptr %t736, i64 %t737)
  %t742 = getelementptr i8, ptr %t741, i64 %t737
  call void @olang_textcopy(ptr %t742, ptr %t738, i64 %t739)
  %t743 = insertvalue { i64, ptr } undef, i64 %t740, 0
  %t744 = insertvalue { i64, ptr } %t743, ptr %t741, 1
  %t746 = extractvalue { i64, ptr } %t744, 0
  %t747 = extractvalue { i64, ptr } %t744, 1
  %t748 = mul i64 %t746, 1
  %t749 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t748)
  call void @llvm.memcpy.p0.p0.i64(ptr %t749, ptr %t747, i64 %t748, i1 false)
  %t750 = insertvalue { i64, ptr } undef, i64 %t746, 0
  %t751 = insertvalue { i64, ptr } %t750, ptr %t749, 1
  %t752 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t754 = extractvalue { i64, ptr } %t752, 1
  %t755 = extractvalue { i64, ptr } %t752, 0
  %t756 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d227, i32 0, i32 1) }, 1
  %t757 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d227, i32 0, i32 1) }, 0
  %t758 = add i64 %t755, %t757
  %t759 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t758)
  call void @olang_textcopy(ptr %t759, ptr %t754, i64 %t755)
  %t760 = getelementptr i8, ptr %t759, i64 %t755
  call void @olang_textcopy(ptr %t760, ptr %t756, i64 %t757)
  %t761 = insertvalue { i64, ptr } undef, i64 %t758, 0
  %t762 = insertvalue { i64, ptr } %t761, ptr %t759, 1
  %t765 = extractvalue { i64, ptr } %t762, 0
  %t766 = extractvalue { i64, ptr } %t762, 1
  %t767 = mul i64 %t765, 1
  %t768 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t767)
  call void @llvm.memcpy.p0.p0.i64(ptr %t768, ptr %t766, i64 %t767, i1 false)
  %t769 = insertvalue { i64, ptr } undef, i64 %t765, 0
  %t770 = insertvalue { i64, ptr } %t769, ptr %t768, 1
  %t773 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t751, { i64, ptr } %t770)
  store i32 %t773, ptr %l333
  %t774 = icmp ne i32 %t773, 0
  br i1 %t774, label %bb162, label %ok.775, !prof !99
ok.775:
  br label %bb161
bb161:
  br label %bb166
bb162:
  %t776 = load i32, ptr %l333, !tbaa !23
  %t777 = ashr i32 %t776, 16
  %t779 = icmp eq i32 %t777, 1
  store i1 %t779, ptr %l335, !tbaa !21
  %t780 = load i32, ptr %l333, !tbaa !23
  %t781 = ashr i32 %t780, 16
  %t783 = icmp eq i32 %t781, 1
  br i1 %t783, label %bb163, label %bb164
bb163:
  call void @__olang_errpay_pop()
  br label %bb164
bb164:
  br label %bb165
bb165:
  br label %bb166
bb166:
  %t785 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t786 = load i1, ptr %l3, !tbaa !21
  %t787 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fbuild_2elistFiles(ptr %v2, ptr %v3, { i64, ptr } %t785, i1 %t786, ptr %t787)
  br label %bb167
bb167:
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
  %l18 = alloca { i64, ptr }
  %l21 = alloca i1
  %l23 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
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
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d228, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d229, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/build:Config", ptr %t6, i32 0, i32 4
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d230, i32 0, i32 1) }, ptr %l6, !tbaa !27
  br label %bb6
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d231, i32 0, i32 1) }, ptr %l6, !tbaa !27
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/build:Config", ptr %t11, i32 0, i32 5
  %t14 = load i1, ptr %t13, !tbaa !21
  br i1 %t14, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d232, i32 0, i32 1) }, ptr %l9, !tbaa !27
  br label %bb9
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d233, i32 0, i32 1) }, ptr %l9, !tbaa !27
  br label %bb9
bb9:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/build:Config", ptr %t16, i32 0, i32 7
  %t19 = load i1, ptr %t18, !tbaa !21
  br i1 %t19, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d234, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb12
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d235, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb12
bb12:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/build:Config", ptr %t21, i32 0, i32 10
  %t24 = load i1, ptr %t23, !tbaa !21
  br i1 %t24, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d236, i32 0, i32 1) }, ptr %l15, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d237, i32 0, i32 1) }, ptr %l15, !tbaa !27
  br label %bb15
bb15:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/build:Config", ptr %t26, i32 0, i32 11
  %t29 = load i1, ptr %t28, !tbaa !21
  br i1 %t29, label %bb16, label %bb17
bb16:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d238, i32 0, i32 1) }, ptr %l18, !tbaa !27
  br label %bb18
bb17:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d239, i32 0, i32 1) }, ptr %l18, !tbaa !27
  br label %bb18
bb18:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/build:Config", ptr %t31, i32 0, i32 12
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t34, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d240, i32 0, i32 1) })
  store i1 %t36, ptr %l21
  br label %bb19
bb19:
  %t37 = load i1, ptr %l21, !tbaa !21
  %t38 = xor i1 %t37, true
  br i1 %t38, label %bb20, label %bb21
bb20:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d241, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb22
bb21:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d242, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb22
bb22:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/build:Config", ptr %t40, i32 0, i32 14
  %t43 = load i1, ptr %t42, !tbaa !21
  br i1 %t43, label %bb23, label %bb24
bb23:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d243, i32 0, i32 1) }, ptr %l26, !tbaa !27
  br label %bb25
bb24:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d244, i32 0, i32 1) }, ptr %l26, !tbaa !27
  br label %bb25
bb25:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/build:Config", ptr %t45, i32 0, i32 18
  %t48 = load i1, ptr %t47, !tbaa !21
  br i1 %t48, label %bb26, label %bb27
bb26:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d245, i32 0, i32 1) }, ptr %l29, !tbaa !27
  br label %bb28
bb27:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d246, i32 0, i32 1) }, ptr %l29, !tbaa !27
  br label %bb28
bb28:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/build:Config", ptr %t50, i32 0, i32 15
  %t53 = load i1, ptr %t52, !tbaa !21
  br i1 %t53, label %bb29, label %bb30
bb29:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d247, i32 0, i32 1) }, ptr %l32, !tbaa !27
  br label %bb31
bb30:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d248, i32 0, i32 1) }, ptr %l32, !tbaa !27
  br label %bb31
bb31:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/build:Config", ptr %t55, i32 0, i32 22
  %t58 = load i1, ptr %t57, !tbaa !21
  br i1 %t58, label %bb32, label %bb33
bb32:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d249, i32 0, i32 1) }, ptr %l35, !tbaa !27
  br label %bb34
bb33:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d250, i32 0, i32 1) }, ptr %l35, !tbaa !27
  br label %bb34
bb34:
  %t60 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t63 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t66 = add i64 %t62, %t65
  %t67 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = add i64 %t66, %t69
  %t71 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = add i64 %t70, %t73
  %t75 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 1
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t78 = add i64 %t74, %t77
  %t79 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t82 = add i64 %t78, %t81
  %t83 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = add i64 %t82, %t85
  %t87 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = add i64 %t86, %t89
  %t91 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t94 = add i64 %t90, %t93
  %t95 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t98 = add i64 %t94, %t97
  %t99 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 1
  %t101 = extractvalue { i64, ptr } %t99, 0
  %t102 = add i64 %t98, %t101
  %t103 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t102)
  call void @olang_textcopy(ptr %t103, ptr %t61, i64 %t62)
  %t104 = getelementptr i8, ptr %t103, i64 %t62
  call void @olang_textcopy(ptr %t104, ptr %t64, i64 %t65)
  %t105 = getelementptr i8, ptr %t104, i64 %t65
  call void @olang_textcopy(ptr %t105, ptr %t68, i64 %t69)
  %t106 = getelementptr i8, ptr %t105, i64 %t69
  call void @olang_textcopy(ptr %t106, ptr %t72, i64 %t73)
  %t107 = getelementptr i8, ptr %t106, i64 %t73
  call void @olang_textcopy(ptr %t107, ptr %t76, i64 %t77)
  %t108 = getelementptr i8, ptr %t107, i64 %t77
  call void @olang_textcopy(ptr %t108, ptr %t80, i64 %t81)
  %t109 = getelementptr i8, ptr %t108, i64 %t81
  call void @olang_textcopy(ptr %t109, ptr %t84, i64 %t85)
  %t110 = getelementptr i8, ptr %t109, i64 %t85
  call void @olang_textcopy(ptr %t110, ptr %t88, i64 %t89)
  %t111 = getelementptr i8, ptr %t110, i64 %t89
  call void @olang_textcopy(ptr %t111, ptr %t92, i64 %t93)
  %t112 = getelementptr i8, ptr %t111, i64 %t93
  call void @olang_textcopy(ptr %t112, ptr %t96, i64 %t97)
  %t113 = getelementptr i8, ptr %t112, i64 %t97
  call void @olang_textcopy(ptr %t113, ptr %t100, i64 %t101)
  %t114 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t103, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t115, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2enoRaceRuntime(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/build:Config", ptr %t2, i32 0, i32 2
  %t5 = getelementptr %"compiler/target:Target", ptr %t4, i32 0, i32 2
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  %t7 = extractvalue { i64, ptr } { i64 136, ptr getelementptr inbounds (<{ i64, [136 x i8] }>, ptr @.d251, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 136, ptr getelementptr inbounds (<{ i64, [136 x i8] }>, ptr @.d251, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %t6, 1
  %t11 = extractvalue { i64, ptr } %t6, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d252, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d252, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @olang_textcopy(ptr %t16, ptr %t7, i64 %t8)
  %t17 = getelementptr i8, ptr %t16, i64 %t8
  call void @olang_textcopy(ptr %t17, ptr %t10, i64 %t11)
  %t18 = getelementptr i8, ptr %t17, i64 %t11
  call void @olang_textcopy(ptr %t18, ptr %t13, i64 %t14)
  %t19 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t16, 1
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t23 = extractvalue { i64, ptr } %t20, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t30 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d253, i32 0, i32 1) }, { i64, ptr } %t27)
  store { i64, ptr } %t30, ptr %l6
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t31 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t31, ptr %rv
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
  %t3 = getelementptr %"compiler/build:Config", ptr %a0, i32 0, i32 28
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
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d254, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d254, i32 0, i32 1) }, 0
  %t23 = extractvalue { i64, ptr } %a1, 1
  %t24 = extractvalue { i64, ptr } %a1, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d255, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d255, i32 0, i32 1) }, 0
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d256, i32 0, i32 1) })
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

define dso_local i1 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eracesSpawners(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l11 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i32
  %l38 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
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
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/build:Config", ptr %t6, i32 0, i32 7
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb7
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/build:Config", ptr %t12, i32 0, i32 12
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d257, i32 0, i32 1) })
  store i1 %t17, ptr %l9
  br label %bb6
bb6:
  %t18 = load i1, ptr %l9, !tbaa !21
  %t19 = xor i1 %t18, true
  store i1 %t19, ptr %l6, !tbaa !21
  br label %bb7
bb7:
  %t21 = load i1, ptr %l6, !tbaa !21
  br i1 %t21, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb10
bb9:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/build:Config", ptr %t22, i32 0, i32 15
  %t25 = load i1, ptr %t24, !tbaa !21
  store i1 %t25, ptr %l11, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l11, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb13
bb12:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/build:Config", ptr %t28, i32 0, i32 16
  %t31 = load i1, ptr %t30, !tbaa !21
  store i1 %t31, ptr %l14, !tbaa !21
  br label %bb13
bb13:
  %t33 = load i1, ptr %l14, !tbaa !21
  br i1 %t33, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb16
bb15:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/build:Config", ptr %t34, i32 0, i32 23
  %t37 = load i1, ptr %t36, !tbaa !21
  store i1 %t37, ptr %l17, !tbaa !21
  br label %bb16
bb16:
  %t39 = load i1, ptr %l17, !tbaa !21
  br i1 %t39, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb19
bb18:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/build:Config", ptr %t40, i32 0, i32 8
  %t43 = load i1, ptr %t42, !tbaa !21
  store i1 %t43, ptr %l20, !tbaa !21
  br label %bb19
bb19:
  %t45 = load i1, ptr %l20, !tbaa !21
  br i1 %t45, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb22
bb21:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/build:Config", ptr %t46, i32 0, i32 18
  %t49 = load i1, ptr %t48, !tbaa !21
  store i1 %t49, ptr %l23, !tbaa !21
  br label %bb22
bb22:
  %t51 = load i1, ptr %l23, !tbaa !21
  br i1 %t51, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb25
bb24:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/build:Config", ptr %t52, i32 0, i32 14
  %t55 = load i1, ptr %t54, !tbaa !21
  store i1 %t55, ptr %l26, !tbaa !21
  br label %bb25
bb25:
  %t57 = load i1, ptr %l26, !tbaa !21
  br i1 %t57, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb28
bb27:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/build:Config", ptr %t58, i32 0, i32 2
  %t61 = getelementptr %"compiler/target:Target", ptr %t60, i32 0, i32 9
  %t62 = load i1, ptr %t61, !tbaa !21
  store i1 %t62, ptr %l29, !tbaa !21
  br label %bb28
bb28:
  %t64 = load i1, ptr %l29, !tbaa !21
  br i1 %t64, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t66 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d258, i32 0, i32 1) })
  %t67 = extractvalue { i32, { i64, ptr } } %t66, 1
  %t68 = extractvalue { i32, { i64, ptr } } %t66, 0
  store i32 %t68, ptr %l35
  %t69 = icmp ne i32 %t68, 0
  br i1 %t69, label %bb33, label %ok.70, !prof !99
ok.70:
  store { i64, ptr } %t67, ptr %l34
  br label %bb32
bb32:
  %t71 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t71, ptr %l33, !tbaa !27
  br label %bb37
bb33:
  %t72 = load i32, ptr %l35, !tbaa !23
  %t73 = ashr i32 %t72, 16
  %t75 = icmp eq i32 %t73, 1
  br i1 %t75, label %bb34, label %bb35
bb34:
  call void @__olang_errpay_pop()
  br label %bb35
bb35:
  br label %bb36
bb36:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d259, i32 0, i32 1) }, ptr %l33, !tbaa !27
  br label %bb37
bb37:
  %t77 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t78 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t77, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d260, i32 0, i32 1) })
  store i1 %t78, ptr %l38
  br label %bb38
bb38:
  %t79 = load i1, ptr %l38, !tbaa !21
  %t80 = xor i1 %t79, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2erunParts(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4, { i64, ptr } %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca i32
  %l43 = alloca i32
  %l44 = alloca ptr
  %l45 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i64
  %l58 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca i32
  %l64 = alloca i1
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca i64
  %l75 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l77 = alloca i64
  %l78 = alloca i32
  %l79 = alloca i64
  %l80 = alloca i32
  %l82 = alloca i64
  %l83 = alloca i64
  %l84 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l86 = alloca i64
  %l87 = alloca i32
  %l88 = alloca i64
  %l89 = alloca i32
  %l95 = alloca i1
  %l104 = alloca i1
  %l108 = alloca ptr
  %l111 = alloca i1
  %l114 = alloca i32
  %l118 = alloca i32
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 3, ptr %l7, !tbaa !23
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l17
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l8
  %t3 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t3, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d261, i32 0, i32 1) })
  store i1 %t5, ptr %l19
  br label %bb2
bb2:
  %t6 = load i1, ptr %l19, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb3, label %bb4
bb3:
  store ptr %l8, ptr %l21, !tbaa !29
  %t9 = ptrtoint ptr %s0 to i64
  store i64 %t9, ptr %l22, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t10, label %bb5, label %bb6
bb4:
  br label %bb10
bb5:
  %t12 = call ptr @__olang_region_make(ptr %s0)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 1
  %t17 = extractvalue { i64, ptr } %t14, 0
  %t18 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d262, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d262, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load i64, ptr %l22
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t16, i64 %t17)
  %t24 = getelementptr i8, ptr %t23, i64 %t17
  call void @olang_textcopy(ptr %t24, ptr %t18, i64 %t19)
  %t25 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t23, 1
  %t28 = load i64, ptr %l22
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = extractvalue { i64, ptr } %t26, 0
  %t31 = extractvalue { i64, ptr } %t26, 1
  %t32 = mul i64 %t30, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %t29, i64 %t32)
  call void @llvm.memcpy.p0.p0.i64(ptr %t33, ptr %t31, i64 %t32, i1 false)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  %t36 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t36, { i64, ptr } %t35)
  br label %bb7
bb7:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l27, !tbaa !29
  %t39 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t39, ptr %l28, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t40, ptr %l29, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t41, ptr %l30, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t42, ptr %l31, !tbaa !27
  %t44 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l8, i64 0)
  store { i64, ptr } %t44, ptr %l33
  br label %bb8
bb8:
  %t45 = load ptr, ptr %l27, !tbaa !29
  %t46 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t51 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2erunTests(ptr %v0, ptr %v1, ptr %v2, ptr %v4, ptr %v5, ptr %s0, ptr %t45, { i64, ptr } %t46, { i64, ptr } %t47, { i64, ptr } %t48, { i64, ptr } %t49, { i64, ptr } %t50, i64 0)
  store i32 %t51, ptr %l34
  br label %bb9
bb9:
  %t52 = load i32, ptr %l34, !tbaa !23
  store i32 %t52, ptr %l7, !tbaa !23
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = extractvalue { i64, ptr } %t58, 0
  %t62 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
  %t64 = add i64 %t61, %t63
  %t65 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t64)
  call void @olang_textcopy(ptr %t65, ptr %t60, i64 %t61)
  %t66 = getelementptr i8, ptr %t65, i64 %t61
  call void @olang_textcopy(ptr %t66, ptr %t62, i64 %t63)
  %t67 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t65, 1
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t71 = extractvalue { i64, ptr } %t68, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t82 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2erunTests(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %v5, ptr %s0, ptr %t53, { i64, ptr } %t54, { i64, ptr } %t55, { i64, ptr } %t56, { i64, ptr } %t57, { i64, ptr } %t75, i64 0)
  store i32 %t82, ptr %l43
  br label %bb11
bb11:
  %t83 = load i32, ptr %l43, !tbaa !23
  store i32 %t83, ptr %l9, !tbaa !23
  store ptr %l8, ptr %l44, !tbaa !29
  %t84 = ptrtoint ptr %s0 to i64
  store i64 %t84, ptr %l45, !tbaa !24
  %t85 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t85, label %bb12, label %bb13
bb12:
  %t87 = call ptr @__olang_region_make(ptr %s0)
  %t88 = ptrtoint ptr %t87 to i64
  store i64 %t88, ptr %l45, !tbaa !24
  br label %bb13
bb13:
  %t89 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 1
  %t92 = extractvalue { i64, ptr } %t89, 0
  %t93 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d264, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d264, i32 0, i32 1) }, 0
  %t95 = add i64 %t92, %t94
  %t96 = load i64, ptr %l45
  %t97 = inttoptr i64 %t96 to ptr
  %t98 = call ptr @__olang_scope_alloc(ptr %t97, i64 %t95)
  call void @olang_textcopy(ptr %t98, ptr %t91, i64 %t92)
  %t99 = getelementptr i8, ptr %t98, i64 %t92
  call void @olang_textcopy(ptr %t99, ptr %t93, i64 %t94)
  %t100 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t98, 1
  %t103 = load i64, ptr %l45
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = extractvalue { i64, ptr } %t101, 0
  %t106 = extractvalue { i64, ptr } %t101, 1
  %t107 = mul i64 %t105, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %t104, i64 %t107)
  call void @llvm.memcpy.p0.p0.i64(ptr %t108, ptr %t106, i64 %t107, i1 false)
  %t109 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  %t111 = load ptr, ptr %l44, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t111, { i64, ptr } %t110)
  br label %bb14
bb14:
  store i64 0, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  store ptr %l8, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s6
  %t114 = load i64, ptr %l13, !tbaa !24
  store i64 %t114, ptr %l51, !tbaa !24
  %t115 = load ptr, ptr %l12, !tbaa !29
  %t117 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t115)
  store i64 %t117, ptr %l53
  br label %bb16
bb16:
  %t118 = load i64, ptr %l51, !tbaa !24
  %t119 = load i64, ptr %l53, !tbaa !24
  %t120 = icmp slt i64 %t118, %t119
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s6)
  br label %bb45
bb18:
  br label %bb19
bb19:
  %t124 = load ptr, ptr %l12, !tbaa !29
  %t125 = load i64, ptr %l13, !tbaa !24
  %t128 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t124, i64 %t125)
  store { i64, ptr } %t128, ptr %l58
  br label %bb20
bb20:
  %t129 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t132 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s6, { i64, ptr } %t129)
  %t133 = extractvalue { i32, { i64, ptr } } %t132, 1
  %t134 = extractvalue { i32, { i64, ptr } } %t132, 0
  store i32 %t134, ptr %l62
  %t135 = icmp ne i32 %t134, 0
  br i1 %t135, label %bb22, label %ok.136, !prof !99
ok.136:
  store { i64, ptr } %t133, ptr %l61
  br label %bb21
bb21:
  %t137 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t137, ptr %l59, !tbaa !27
  br label %bb26
bb22:
  %t138 = load i32, ptr %l62, !tbaa !23
  %t139 = ashr i32 %t138, 16
  %t141 = icmp eq i32 %t139, 1
  store i1 %t141, ptr %l64, !tbaa !21
  %t142 = load i32, ptr %l62, !tbaa !23
  %t143 = ashr i32 %t142, 16
  %t145 = icmp eq i32 %t143, 1
  br i1 %t145, label %bb23, label %bb24
bb23:
  call void @__olang_errpay_pop()
  br label %bb24
bb24:
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb26:
  %t147 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t150 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s6, ptr %s6, { i64, ptr } %t147)
  store { i64, ptr } %t150, ptr %l68
  br label %bb27
bb27:
  %t151 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t152 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s6, ptr %s6, ptr %s6, { i64, ptr } %t151, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d265, i32 0, i32 1) })
  store { i64, ptr } %t152, ptr %l69
  br label %bb28
bb28:
  %t153 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t153, ptr %l16, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t154, 0
  %t158 = icmp ne i64 %t156, 2
  br i1 %t158, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb30:
  br label %bb31
bb31:
  %t160 = load i64, ptr %l10, !tbaa !24
  store i64 %t160, ptr %l73, !tbaa !24
  %t161 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t161, ptr %l75, !tbaa !27
  %t162 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr { i64, ptr }, ptr %t163, i64 0
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !37
  store { i64, ptr } %t165, ptr %l76, !tbaa !27
  %t166 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s6, i64 10)
  %t167 = extractvalue { i32, i64 } %t166, 1
  %t168 = extractvalue { i32, i64 } %t166, 0
  store i32 %t168, ptr %l78
  %t169 = icmp ne i32 %t168, 0
  br i1 %t169, label %bb33, label %ok.170, !prof !99
ok.170:
  store i64 %t167, ptr %l77
  br label %bb32
bb32:
  %t171 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t172 = load i64, ptr %l77, !tbaa !24
  %t173 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s6, { i64, ptr } %t171, i64 %t172)
  %t174 = extractvalue { i32, i64 } %t173, 1
  %t175 = extractvalue { i32, i64 } %t173, 0
  store i32 %t175, ptr %l80
  %t176 = icmp ne i32 %t175, 0
  br i1 %t176, label %bb36, label %ok.177, !prof !99
ok.177:
  store i64 %t174, ptr %l79
  br label %bb35
bb33:
  br label %bb34
bb34:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb37
bb35:
  %t178 = load i64, ptr %l79, !tbaa !24
  store i64 %t178, ptr %l74, !tbaa !24
  br label %bb37
bb36:
  br label %bb34
bb37:
  %t179 = load i64, ptr %l73, !tbaa !24
  %t180 = load i64, ptr %l74, !tbaa !24
  %t181 = add i64 %t179, %t180
  store i64 %t181, ptr %l10, !tbaa !24
  %t183 = load i64, ptr %l11, !tbaa !24
  store i64 %t183, ptr %l82, !tbaa !24
  %t184 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t184, ptr %l84, !tbaa !27
  %t185 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !27
  %t187 = getelementptr { i64, ptr }, ptr %t186, i64 1
  %t188 = load { i64, ptr }, ptr %t187, !tbaa !37
  store { i64, ptr } %t188, ptr %l85, !tbaa !27
  %t189 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s6, i64 10)
  %t190 = extractvalue { i32, i64 } %t189, 1
  %t191 = extractvalue { i32, i64 } %t189, 0
  store i32 %t191, ptr %l87
  %t192 = icmp ne i32 %t191, 0
  br i1 %t192, label %bb39, label %ok.193, !prof !99
ok.193:
  store i64 %t190, ptr %l86
  br label %bb38
bb38:
  %t194 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t195 = load i64, ptr %l86, !tbaa !24
  %t196 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s6, { i64, ptr } %t194, i64 %t195)
  %t197 = extractvalue { i32, i64 } %t196, 1
  %t198 = extractvalue { i32, i64 } %t196, 0
  store i32 %t198, ptr %l89
  %t199 = icmp ne i32 %t198, 0
  br i1 %t199, label %bb42, label %ok.200, !prof !99
ok.200:
  store i64 %t197, ptr %l88
  br label %bb41
bb39:
  br label %bb40
bb40:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb43
bb41:
  %t201 = load i64, ptr %l88, !tbaa !24
  store i64 %t201, ptr %l83, !tbaa !24
  br label %bb43
bb42:
  br label %bb40
bb43:
  %t202 = load i64, ptr %l82, !tbaa !24
  %t203 = load i64, ptr %l83, !tbaa !24
  %t204 = add i64 %t202, %t203
  store i64 %t204, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb44:
  %t206 = load i64, ptr %l13, !tbaa !24
  %t208 = add i64 %t206, 1
  store i64 %t208, ptr %l13, !tbaa !24
  br label %bb15
bb45:
  %t210 = load i32, ptr %l7, !tbaa !23
  %t212 = icmp ne i32 %t210, 3
  br i1 %t212, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l95, !tbaa !21
  br label %bb48
bb47:
  %t214 = load i32, ptr %l9, !tbaa !23
  %t216 = icmp ne i32 %t214, 3
  store i1 %t216, ptr %l95, !tbaa !21
  br label %bb48
bb48:
  %t218 = load i1, ptr %l95, !tbaa !21
  br i1 %t218, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s10
  %t219 = load i64, ptr %l10, !tbaa !24
  %t220 = load i64, ptr %l11, !tbaa !24
  %t222 = call i64 @__olang_fmt_i64(ptr null, i64 %t219)
  %t223 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d266, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d266, i32 0, i32 1) }, 0
  %t225 = add i64 %t222, %t224
  %t227 = call i64 @__olang_fmt_i64(ptr null, i64 %t220)
  %t228 = add i64 %t225, %t227
  %t229 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d267, i32 0, i32 1) }, 1
  %t230 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d267, i32 0, i32 1) }, 0
  %t231 = add i64 %t228, %t230
  %t232 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t231)
  %t233 = call i64 @__olang_fmt_i64(ptr %t232, i64 %t219)
  %t234 = getelementptr i8, ptr %t232, i64 %t222
  call void @olang_textcopy(ptr %t234, ptr %t223, i64 %t224)
  %t235 = getelementptr i8, ptr %t234, i64 %t224
  %t236 = call i64 @__olang_fmt_i64(ptr %t235, i64 %t220)
  %t237 = getelementptr i8, ptr %t235, i64 %t227
  call void @olang_textcopy(ptr %t237, ptr %t229, i64 %t230)
  %t238 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t232, 1
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t242 = extractvalue { i64, ptr } %t239, 1
  %t243 = mul i64 %t241, 1
  %t244 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t243)
  call void @llvm.memcpy.p0.p0.i64(ptr %t244, ptr %t242, i64 %t243, i1 false)
  %t245 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t246 = insertvalue { i64, ptr } %t245, ptr %t244, 1
  call void @compiler_2fbuild_2esayln(ptr %s10, { i64, ptr } %t246)
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_scope_close(ptr %s10)
  br label %bb52
bb52:
  %t248 = load i32, ptr %l7, !tbaa !23
  %t250 = icmp eq i32 %t248, 1
  br i1 %t250, label %bb53, label %bb54
bb53:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb55
bb54:
  %t252 = load i32, ptr %l9, !tbaa !23
  %t254 = icmp eq i32 %t252, 1
  store i1 %t254, ptr %l104, !tbaa !21
  br label %bb55
bb55:
  %t256 = load i1, ptr %l104, !tbaa !21
  br i1 %t256, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l108, !tbaa !29
  %t259 = load i32, ptr %l7, !tbaa !23
  %t261 = icmp eq i32 %t259, 3
  br i1 %t261, label %bb59, label %bb60
bb59:
  %t263 = load i32, ptr %l9, !tbaa !23
  %t265 = icmp eq i32 %t263, 3
  store i1 %t265, ptr %l111, !tbaa !21
  br label %bb61
bb60:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb61
bb61:
  %t267 = load i1, ptr %l111, !tbaa !21
  br i1 %t267, label %bb62, label %bb63
bb62:
  store i32 3, ptr %l114, !tbaa !23
  br label %bb64
bb63:
  store i32 0, ptr %l114, !tbaa !23
  br label %bb64
bb64:
  %t268 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t269 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t271 = load ptr, ptr %l108, !tbaa !29
  %t272 = load i32, ptr %l114, !tbaa !23
  %t276 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2etestsEnded(ptr %v0, ptr %v4, ptr %v5, ptr %v6, ptr %t271, i32 %t272, { i64, ptr } %t268, { i64, ptr } %t269, ptr %a6)
  store i32 %t276, ptr %l118
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  %t277 = load i32, ptr %l118, !tbaa !23
  store i32 %t277, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2erunTests(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4, { i64, ptr } %a5, i64 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i32
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i1
  %l22 = alloca i32
  %l24 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i64
  %l41 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l49 = alloca i64
  %l52 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l68 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l72 = alloca i32
  %l78 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l89 = alloca i1
  %l96 = alloca i32
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l17
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l7
  %t3 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v5, ptr %s0, { i64, ptr } %t3, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d268, i32 0, i32 1) })
  store i1 %t5, ptr %l19
  br label %bb2
bb2:
  %t6 = load i1, ptr %l19, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb3, label %bb4
bb3:
  %t9 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t11 = call i32 @std_2fos_2eRemove(ptr %v5, { i64, ptr } %t9)
  store i32 %t11, ptr %l22
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb6, label %ok.13, !prof !99
ok.13:
  br label %bb5
bb4:
  br label %bb15
bb5:
  br label %bb10
bb6:
  %t14 = load i32, ptr %l22, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l24, !tbaa !21
  %t18 = load i32, ptr %l22, !tbaa !23
  %t19 = ashr i32 %t18, 16
  %t21 = icmp eq i32 %t19, 1
  br i1 %t21, label %bb7, label %bb8
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d269, i32 0, i32 1) })
  br label %bb11
bb11:
  store ptr %l7, ptr %l28, !tbaa !29
  %t24 = ptrtoint ptr %s0 to i64
  store i64 %t24, ptr %l29, !tbaa !24
  %t25 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t25, label %bb12, label %bb13
bb12:
  %t27 = call ptr @__olang_region_make(ptr %s0)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l29, !tbaa !24
  br label %bb13
bb13:
  %t29 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t30 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t33 = extractvalue { i64, ptr } %t29, 1
  %t34 = extractvalue { i64, ptr } %t29, 0
  %t35 = add i64 %t31, %t34
  %t36 = load i64, ptr %l29
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = call ptr @__olang_scope_alloc(ptr %t37, i64 %t35)
  call void @olang_textcopy(ptr %t38, ptr %t30, i64 %t31)
  %t39 = getelementptr i8, ptr %t38, i64 %t31
  call void @olang_textcopy(ptr %t39, ptr %t33, i64 %t34)
  %t40 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t38, 1
  %t43 = load i64, ptr %l29
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = extractvalue { i64, ptr } %t41, 0
  %t46 = extractvalue { i64, ptr } %t41, 1
  %t47 = mul i64 %t45, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %t44, i64 %t47)
  call void @llvm.memcpy.p0.p0.i64(ptr %t48, ptr %t46, i64 %t47, i1 false)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  %t51 = load ptr, ptr %l28, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t51, { i64, ptr } %t50)
  br label %bb14
bb14:
  br label %bb15
bb15:
  store { i64, ptr } %a1, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  store i64 %t57, ptr %l10, !tbaa !24
  br label %bb16
bb16:
  %t59 = load i64, ptr %l9, !tbaa !24
  %t60 = load i64, ptr %l10, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb17, label %bb18
bb17:
  br label %bb22
bb18:
  br label %bb19
bb19:
  %t67 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t67, ptr %l41, !tbaa !27
  %t68 = load i64, ptr %l9, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %t71, i64 %t68
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l7, { i64, ptr } %t73)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t78 = load i64, ptr %l9, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l9, !tbaa !24
  br label %bb16
bb22:
  store ptr %l7, ptr %l48, !tbaa !29
  %t82 = ptrtoint ptr %s0 to i64
  store i64 %t82, ptr %l49, !tbaa !24
  %t83 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t83, label %bb23, label %bb24
bb23:
  %t85 = call ptr @__olang_region_make(ptr %s0)
  %t86 = ptrtoint ptr %t85 to i64
  store i64 %t86, ptr %l49, !tbaa !24
  br label %bb24
bb24:
  %t88 = load i64, ptr %l49
  %t89 = inttoptr i64 %t88 to ptr
  %t91 = call { i64, ptr } @compiler_2fbuild_2eShown(ptr %v2, ptr %t89, { i64, ptr } %a2)
  store { i64, ptr } %t91, ptr %l52
  br label %bb25
bb25:
  %t92 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t93 = load i64, ptr %l49
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = extractvalue { i64, ptr } %t92, 0
  %t96 = extractvalue { i64, ptr } %t92, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %t94, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  %t101 = load ptr, ptr %l48, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t101, { i64, ptr } %t100)
  br label %bb26
bb26:
  %t103 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t103, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t105 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t105, 0
  store i64 %t107, ptr %l14, !tbaa !24
  br label %bb27
bb27:
  %t109 = load i64, ptr %l13, !tbaa !24
  %t110 = load i64, ptr %l14, !tbaa !24
  %t113 = icmp slt i64 %t109, %t110
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb28, label %bb29
bb28:
  br label %bb33
bb29:
  br label %bb30
bb30:
  %t117 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t117, ptr %l61, !tbaa !27
  %t118 = load i64, ptr %l13, !tbaa !24
  %t120 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %t121, i64 %t118
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v4, ptr %l7, { i64, ptr } %t123)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t128 = load i64, ptr %l13, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l13, !tbaa !24
  br label %bb27
bb33:
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l68, !tbaa !29
  %t134 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l7)
  store { i64, ptr } %t134, ptr %l70
  br label %bb34
bb34:
  %t136 = load ptr, ptr %l68, !tbaa !29
  %t137 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t139 = call i32 @compiler_2fbuild_2eexecTests(ptr %v0, ptr %s0, ptr %t136, { i64, ptr } %t137, i64 %a6)
  store i32 %t139, ptr %l72
  br label %bb35
bb35:
  %t140 = load i32, ptr %l72, !tbaa !23
  store i32 %t140, ptr %l16, !tbaa !23
  %t141 = load i32, ptr %l16, !tbaa !23
  %t143 = icmp slt i32 %t141, 0
  br i1 %t143, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t146 = load i32, ptr %l16, !tbaa !23
  %t148 = icmp sgt i32 %t146, 128
  br i1 %t148, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s11
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l78, !tbaa !29
  store { i64, ptr } %a3, ptr %l79, !tbaa !27
  %t152 = load i32, ptr %l16, !tbaa !23
  %t154 = sub i32 %t152, 128
  %t156 = call { i64, ptr } @compiler_2fbuild_2eSignalName(ptr %s11, i32 %t154)
  store { i64, ptr } %t156, ptr %l82
  br label %bb41
bb40:
  br label %bb44
bb41:
  %t157 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t157, 1
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t160 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d271, i32 0, i32 1) }, 1
  %t161 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d271, i32 0, i32 1) }, 0
  %t162 = add i64 %t159, %t161
  %t163 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = add i64 %t162, %t165
  %t167 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d272, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d272, i32 0, i32 1) }, 0
  %t169 = add i64 %t166, %t168
  %t170 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t169)
  call void @olang_textcopy(ptr %t170, ptr %t158, i64 %t159)
  %t171 = getelementptr i8, ptr %t170, i64 %t159
  call void @olang_textcopy(ptr %t171, ptr %t160, i64 %t161)
  %t172 = getelementptr i8, ptr %t171, i64 %t161
  call void @olang_textcopy(ptr %t172, ptr %t164, i64 %t165)
  %t173 = getelementptr i8, ptr %t172, i64 %t165
  call void @olang_textcopy(ptr %t173, ptr %t167, i64 %t168)
  %t174 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t170, 1
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t178 = extractvalue { i64, ptr } %t175, 1
  %t179 = mul i64 %t177, 1
  %t180 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t179)
  call void @llvm.memcpy.p0.p0.i64(ptr %t180, ptr %t178, i64 %t179, i1 false)
  %t181 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  %t183 = load ptr, ptr %l78, !tbaa !29
  %t185 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s11, ptr %s11, ptr %s11, ptr %t183, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d273, i32 0, i32 1) }, { i64, ptr } %t182)
  store { i64, ptr } %t185, ptr %l85
  br label %bb42
bb42:
  %t186 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 0
  %t188 = extractvalue { i64, ptr } %t186, 1
  %t189 = mul i64 %t187, 1
  %t190 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t189)
  call void @llvm.memcpy.p0.p0.i64(ptr %t190, ptr %t188, i64 %t189, i1 false)
  %t191 = insertvalue { i64, ptr } undef, i64 %t187, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t190, 1
  call void @compiler_2fbuild_2esayln(ptr %s11, { i64, ptr } %t192)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s11)
  br label %bb44
bb44:
  %t194 = load i32, ptr %l16, !tbaa !23
  %t196 = icmp eq i32 %t194, 3
  br i1 %t196, label %bb45, label %bb46
bb45:
  %t198 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t198, 0
  %t202 = icmp sgt i64 %t200, 0
  store i1 %t202, ptr %l89, !tbaa !21
  br label %bb47
bb46:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb47
bb47:
  %t204 = load i1, ptr %l89, !tbaa !21
  br i1 %t204, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  store i32 3, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  %t206 = load i32, ptr %l16, !tbaa !23
  %t208 = icmp eq i32 %t206, 0
  br i1 %t208, label %bb51, label %bb52
bb51:
  store i32 0, ptr %l96, !tbaa !23
  br label %bb53
bb52:
  store i32 1, ptr %l96, !tbaa !23
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t210 = load i32, ptr %l96, !tbaa !23
  store i32 %t210, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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
  %t17 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d274, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d274, i32 0, i32 1) }, 0
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
  %t33 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %a0, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d275, i32 0, i32 1) }, { i64, ptr } %t30)
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

define dso_local i1 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2esplitsTests(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l9 = alloca i1
  %l12 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eracesSpawners(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/build:Config", ptr %t8, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/build:Config", ptr %t12, i32 0, i32 2
  %t15 = getelementptr %"compiler/target:Target", ptr %t14, i32 0, i32 2
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t19 = call i1 @compiler_2ftarget_2eHasRaceRuntime(ptr %v0, ptr %v0, { i64, ptr } %t11, { i64, ptr } %t16)
  store i1 %t19, ptr %l9
  br label %bb5
bb5:
  %t20 = load i1, ptr %l9, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2enoRaceRuntime(ptr %v0, ptr %s0, ptr %t22)
  store { i64, ptr } %t24, ptr %l12
  br label %bb9
bb9:
  %t25 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  %t27 = extractvalue { i64, ptr } %t25, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  call void @compiler_2fbuild_2esayln(ptr %s0, { i64, ptr } %t31)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2etestsEnded(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l11 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp ne i32 %t1, 3
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t13 = call { i64, ptr } @compiler_2fbuild_2enoTestNamed(ptr %v1, ptr %v2, ptr %v3, ptr %s0, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4)
  store { i64, ptr } %t13, ptr %l11
  br label %bb4
bb4:
  %t14 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t14, 0
  %t16 = extractvalue { i64, ptr } %t14, 1
  %t17 = mul i64 %t15, 1
  %t18 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t17)
  call void @llvm.memcpy.p0.p0.i64(ptr %t18, ptr %t16, i64 %t17, i1 false)
  %t19 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  call void @compiler_2fbuild_2esayln(ptr %s0, { i64, ptr } %t20)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i32 3, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eunusable(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, %"compiler/diagmsg:Msg" %a2, ptr %a3) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fbuild_2efileError(ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %t1, %"compiler/diagmsg:Msg" %a2, ptr %t3)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l3, !tbaa !29
  %t9 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v3, ptr %s0, ptr %t7)
  store { i64, ptr } %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  %t12 = extractvalue { i64, ptr } %t10, 1
  %t13 = mul i64 %t11, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t13)
  call void @llvm.memcpy.p0.p0.i64(ptr %t14, ptr %t12, i64 %t13, i1 false)
  %t15 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  call void @compiler_2fbuild_2esay(ptr %s0, { i64, ptr } %t16)
  br label %bb3
bb3:
  %t19 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d276, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d276, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @olang_textcopy(ptr %t26, ptr %t21, i64 %t22)
  %t27 = getelementptr i8, ptr %t26, i64 %t22
  call void @olang_textcopy(ptr %t27, ptr %t23, i64 %t24)
  %t28 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t26, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = extractvalue { i64, ptr } %t29, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  %t39 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %a0, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d277, i32 0, i32 1) }, { i64, ptr } %t36)
  store { i64, ptr } %t39, ptr %l14
  br label %bb4
bb4:
  %t40 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  %t42 = extractvalue { i64, ptr } %t40, 1
  %t43 = mul i64 %t41, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t43)
  call void @llvm.memcpy.p0.p0.i64(ptr %t44, ptr %t42, i64 %t43, i1 false)
  %t45 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  call void @compiler_2fbuild_2esayln(ptr %s0, { i64, ptr } %t46)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2evectorizesAtLink(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i1
  %l8 = alloca i1
  %l12 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/build:Config", ptr %t8, i32 0, i32 6
  %t11 = load i1, ptr %t10, !tbaa !21
  %t13 = xor i1 %t11, true
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/build:Config", ptr %t16, i32 0, i32 5
  %t19 = load i1, ptr %t18, !tbaa !21
  %t21 = xor i1 %t19, true
  store i1 %t21, ptr %l8, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l8, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/build:Config", ptr %t24, i32 0, i32 34
  %t27 = load i1, ptr %t26, !tbaa !21
  %t29 = xor i1 %t27, true
  store i1 %t29, ptr %l12, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l12, !tbaa !21
  store i1 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %lp11 = alloca ptr
  %l12 = alloca i1
  %lp14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %lp17 = alloca ptr
  %lp20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i1
  %l40 = alloca i1
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l49 = alloca i32
  %l51 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l62 = alloca i1
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca { i64, ptr }
  %l72 = alloca i1
  %l73 = alloca i1
  %l75 = alloca i1
  %l76 = alloca i1
  %l79 = alloca i1
  %l81 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca { i64, ptr }
  %l89 = alloca i1
  %l93 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l99 = alloca i64
  %l101 = alloca { i64, ptr }
  %l103 = alloca i64
  %l104 = alloca i64
  %l110 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l114 = alloca i32
  %l116 = alloca i1
  %l121 = alloca i1
  %l123 = alloca { i64, ptr }
  %l125 = alloca i1
  %l127 = alloca { i64, ptr }
  %l131 = alloca i64
  %l133 = alloca i64
  %l134 = alloca i64
  %l142 = alloca i32
  %l144 = alloca i1
  %l148 = alloca i1
  %l149 = alloca { i64, ptr }
  %l150 = alloca i64
  %l151 = alloca { i64, ptr }
  %l154 = alloca i1
  %l157 = alloca i1
  %l162 = alloca { i64, ptr }
  %l163 = alloca i64
  %l164 = alloca { i64, ptr }
  %l165 = alloca i64
  %l169 = alloca i64
  %l170 = alloca i64
  %l175 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l186 = alloca i1
  %l188 = alloca i1
  %l193 = alloca i1
  %l195 = alloca { i64, ptr }
  %l196 = alloca { i64, ptr }
  %l197 = alloca i64
  %l198 = alloca { i64, ptr }
  %l202 = alloca i64
  %l203 = alloca i64
  %l207 = alloca { i64, ptr }
  %l208 = alloca i32
  %l211 = alloca i1
  %l212 = alloca i1
  %l215 = alloca { i64, ptr }
  %l216 = alloca i1
  %l218 = alloca { i64, ptr }
  %l222 = alloca { i64, ptr }
  %l227 = alloca i32
  %l229 = alloca i1
  %l232 = alloca { i64, ptr }
  %l233 = alloca %"compiler/diagmsg:Msg"
  %l238 = alloca i1
  %l241 = alloca i32
  %l243 = alloca i1
  %l246 = alloca ptr
  %l247 = alloca { i64, [3 x i64] }
  %l249 = alloca %"compiler/diagmsg:Msg"
  %l251 = alloca { i64, ptr }
  %l252 = alloca i32
  %l254 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l260 = alloca i64
  %l262 = alloca i64
  %l267 = alloca { i64, ptr }
  %l279 = alloca ptr
  %l280 = alloca i64
  %l287 = alloca ptr
  %l288 = alloca i64
  %l291 = alloca { i64, ptr }
  %l293 = alloca { i64, ptr }
  %l295 = alloca { i64, ptr }
  %l298 = alloca ptr
  %l299 = alloca i64
  %l302 = alloca { i64, ptr }
  %l307 = alloca ptr
  %l308 = alloca i64
  %l311 = alloca { i64, ptr }
  %l314 = alloca { i64, ptr }
  %l330 = alloca { i64, ptr }
  %l331 = alloca i64
  %l332 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t721 = alloca { i64, [3 x i64] }, align 8
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
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l29
  br label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCompileFlags(ptr %v0, ptr %v3, ptr %v1, ptr %t9, { i64, ptr } %t10)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l32
  br label %bb4
bb3:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l27
  br label %bb5
bb4:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l27
  br label %bb5
bb5:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l8
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/build:Config", ptr %t17, i32 0, i32 35
  %t20 = load i1, ptr %t19, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t24 = trunc i64 4 to i32
  %t25 = icmp eq i32 %t22, %t24
  %t27 = xor i1 %t25, true
  store i1 %t27, ptr %l35, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l35, !tbaa !21
  store i1 %t29, ptr %l9, !tbaa !21
  %t30 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v5, ptr %s0, { i64, ptr } %t30, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d278, i32 0, i32 1) })
  store i1 %t32, ptr %l40
  br label %bb9
bb9:
  %t33 = load i1, ptr %l40, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t36 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t36, ptr %l42, !tbaa !27
  br label %bb13
bb11:
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t40 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %v3, ptr %v5, { i64, ptr } %t38)
  store { i64, ptr } %t40, ptr %l45
  br label %bb12
bb12:
  %t41 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  %t43 = extractvalue { i64, ptr } %t41, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  store { i64, ptr } %t47, ptr %l42, !tbaa !27
  br label %bb13
bb13:
  %t49 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t49, ptr %l10, !tbaa !27
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l47, !tbaa !29
  %t51 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t51, ptr %l48, !tbaa !27
  %t52 = load i32, ptr %l3, !range !{i32 0, i32 5}
  store i32 %t52, ptr %l49
  %t53 = load i1, ptr %l9, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 1
  %t58 = extractvalue { i64, ptr } %t55, 0
  %t59 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d279, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d279, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t57, i64 %t58)
  %t63 = getelementptr i8, ptr %t62, i64 %t58
  call void @olang_textcopy(ptr %t63, ptr %t59, i64 %t60)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t62, 1
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t68 = extractvalue { i64, ptr } %t65, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  %t74 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %s0, ptr %v5, { i64, ptr } %t72)
  store { i64, ptr } %t74, ptr %l55
  br label %bb16
bb15:
  %t75 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t75, ptr %l51, !tbaa !27
  br label %bb17
bb16:
  %t77 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 0
  %t79 = extractvalue { i64, ptr } %t77, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  store { i64, ptr } %t83, ptr %l51, !tbaa !27
  br label %bb17
bb17:
  %t85 = load ptr, ptr %l47, !tbaa !29
  %t86 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t87 = load i32, ptr %l49, !range !{i32 0, i32 5}
  %t88 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t90 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjectPath(ptr %v0, ptr %v2, ptr %v5, ptr %v1, ptr %v6, ptr %t85, { i64, ptr } %t86, i32 %t87, { i64, ptr } %t88, ptr %l8)
  store { i64, ptr } %t90, ptr %l59
  br label %bb18
bb18:
  %t91 = call ptr @__olang_scope_alloc_a(ptr %v6, i64 16, i64 8)
  store ptr %t91, ptr %lp11
  %t92 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t93 = load ptr, ptr %lp11
  store { i64, ptr } %t92, ptr %t93, !tbaa !27
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/build:Config", ptr %t94, i32 0, i32 18
  %t97 = load i1, ptr %t96, !tbaa !21
  br i1 %t97, label %bb19, label %bb20
bb19:
  %t99 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t101 = trunc i64 4 to i32
  %t102 = icmp eq i32 %t99, %t101
  %t104 = xor i1 %t102, true
  store i1 %t104, ptr %l62, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb21
bb21:
  %t106 = load i1, ptr %l62, !tbaa !21
  store i1 %t106, ptr %l12, !tbaa !21
  %t107 = load ptr, ptr %lp11
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  store { i64, ptr } %t108, ptr %l66, !tbaa !27
  %t109 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  store i64 %t110, ptr %l67, !tbaa !24
  %t111 = load i64, ptr %l67, !tbaa !24
  %t112 = mul i64 %t111, 1
  %t113 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t112)
  %t114 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  store { i64, ptr } %t115, ptr %l68, !tbaa !27
  %t116 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = load i64, ptr %l67, !tbaa !24
  %t121 = mul i64 %t120, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t117, ptr %t119, i64 %t121, i1 false)
  %t122 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/build:compiles", ptr %t123, i32 0, i32 2
  %t129 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v1, ptr %s0, ptr %t125, { i64, ptr } %t122)
  store i1 %t129, ptr %l72
  br label %bb22
bb22:
  %t130 = load i1, ptr %l72, !tbaa !21
  br i1 %t130, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb34
bb24:
  %t131 = load ptr, ptr %lp11
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  %t134 = call i1 @std_2fos_2eExists(ptr %v6, { i64, ptr } %t132)
  store i1 %t134, ptr %l75
  br label %bb25
bb25:
  %t135 = load i1, ptr %l75, !tbaa !21
  br i1 %t135, label %bb26, label %bb27
bb26:
  %t136 = load i1, ptr %l12, !tbaa !21
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb28, label %bb29
bb27:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb33
bb28:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb32
bb29:
  %t140 = load ptr, ptr %lp11
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  %t143 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s0, { i64, ptr } %t141)
  store { i64, ptr } %t143, ptr %l81
  br label %bb30
bb30:
  %t144 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  %t146 = extractvalue { i64, ptr } %t144, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t152 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t150)
  store i1 %t152, ptr %l83
  br label %bb31
bb31:
  %t153 = load i1, ptr %l83, !tbaa !21
  store i1 %t153, ptr %l79, !tbaa !21
  br label %bb32
bb32:
  %t154 = load i1, ptr %l79, !tbaa !21
  store i1 %t154, ptr %l76, !tbaa !21
  br label %bb33
bb33:
  %t155 = load i1, ptr %l76, !tbaa !21
  store i1 %t155, ptr %l73, !tbaa !21
  br label %bb34
bb34:
  %t156 = load i1, ptr %l73, !tbaa !21
  br i1 %t156, label %bb35, label %bb36
bb35:
  %t157 = load ptr, ptr %lp11
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l84, !tbaa !27
  %t159 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 0
  store i64 %t160, ptr %l85, !tbaa !24
  %t161 = load i64, ptr %l85, !tbaa !24
  %t162 = mul i64 %t161, 1
  %t163 = call ptr @__olang_scope_alloc(ptr %v6, i64 %t162)
  %t164 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  store { i64, ptr } %t165, ptr %l86, !tbaa !27
  %t166 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = load i64, ptr %l85, !tbaa !24
  %t171 = mul i64 %t170, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t167, ptr %t169, i64 %t171, i1 false)
  %t172 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t172, ptr %l84, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t173 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t174 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t173, 1
  store { i32, { i64, ptr } } %t174, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/build:Config", ptr %t175, i32 0, i32 36
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  %t180 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t178, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d280, i32 0, i32 1) })
  store i1 %t180, ptr %l89
  br label %bb38
bb38:
  %t181 = load i1, ptr %l89, !tbaa !21
  %t182 = xor i1 %t181, true
  br i1 %t182, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s3
  %t184 = load i1, ptr %l12, !tbaa !21
  br i1 %t184, label %bb41, label %bb42
bb40:
  br label %bb83
bb41:
  store %olang.scope zeroinitializer, ptr %s4
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/build:Config", ptr %t186, i32 0, i32 36
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  store { i64, ptr } %t189, ptr %l93, !tbaa !27
  %t190 = load ptr, ptr %lp11
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  %t193 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s4, { i64, ptr } %t191)
  store { i64, ptr } %t193, ptr %l95
  br label %bb43
bb42:
  br label %bb58
bb43:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/build:Config", ptr %t194, i32 0, i32 0
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t197, 0
  %t201 = add i64 %t199, 1
  store i64 %t201, ptr %l99, !tbaa !24
  %t202 = load ptr, ptr %lp11
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  %t205 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s4, { i64, ptr } %t203)
  store { i64, ptr } %t205, ptr %l101
  br label %bb44
bb44:
  %t206 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t206, 0
  store i64 %t208, ptr %l103, !tbaa !24
  %t209 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 0
  store i64 %t210, ptr %l104, !tbaa !24
  %t211 = load i64, ptr %l99, !tbaa !24
  %t212 = icmp sge i64 %t211, 0
  br i1 %t212, label %bb45, label %bb46
bb45:
  %t214 = load i64, ptr %l99, !tbaa !24
  %t215 = load i64, ptr %l103, !tbaa !24
  %t216 = icmp sle i64 %t214, %t215
  br i1 %t216, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_81dfa638548de3d7_ab0731b6a5acba3)
  unreachable
bb47:
  %t218 = load i64, ptr %l103, !tbaa !24
  %t219 = load i64, ptr %l104, !tbaa !24
  %t220 = icmp sle i64 %t218, %t219
  br i1 %t220, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_81dfa638548de3d7_ab0731b6a5acba3)
  unreachable
bb49:
  %t222 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = load i64, ptr %l99, !tbaa !24
  %t225 = load i64, ptr %l103, !tbaa !24
  %t226 = getelementptr i8, ptr %t223, i64 %t224
  %t227 = sub i64 %t225, %t224
  %t228 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t226, 1
  %t230 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t230, 1
  %t232 = extractvalue { i64, ptr } %t230, 0
  %t233 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d281, i32 0, i32 1) }, 1
  %t234 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d281, i32 0, i32 1) }, 0
  %t235 = add i64 %t232, %t234
  %t237 = extractvalue { i64, ptr } %t229, 1
  %t238 = extractvalue { i64, ptr } %t229, 0
  %t239 = add i64 %t235, %t238
  %t240 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t239)
  call void @olang_textcopy(ptr %t240, ptr %t231, i64 %t232)
  %t241 = getelementptr i8, ptr %t240, i64 %t232
  call void @olang_textcopy(ptr %t241, ptr %t233, i64 %t234)
  %t242 = getelementptr i8, ptr %t241, i64 %t234
  call void @olang_textcopy(ptr %t242, ptr %t237, i64 %t238)
  %t243 = insertvalue { i64, ptr } undef, i64 %t239, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t240, 1
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t247 = extractvalue { i64, ptr } %t244, 1
  %t248 = mul i64 %t246, 1
  %t249 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t248)
  call void @llvm.memcpy.p0.p0.i64(ptr %t249, ptr %t247, i64 %t248, i1 false)
  %t250 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  store { i64, ptr } %t251, ptr %l110, !tbaa !27
  %t252 = load ptr, ptr %lp11
  %t253 = load { i64, ptr }, ptr %t252, !tbaa !27
  %t255 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s4, { i64, ptr } %t253)
  store { i64, ptr } %t255, ptr %l112
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_81dfa638548de3d7_ab0731b6a5acba3)
  unreachable
bb51:
  %t256 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t256, 0
  %t258 = extractvalue { i64, ptr } %t256, 1
  %t259 = mul i64 %t257, 1
  %t260 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t259)
  call void @llvm.memcpy.p0.p0.i64(ptr %t260, ptr %t258, i64 %t259, i1 false)
  %t261 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  %t263 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t265 = call i32 @std_2fos_2eLink(ptr %s4, ptr %s4, { i64, ptr } %t263, { i64, ptr } %t262)
  store i32 %t265, ptr %l114
  %t266 = icmp ne i32 %t265, 0
  br i1 %t266, label %bb53, label %ok.267, !prof !99
ok.267:
  br label %bb52
bb52:
  br label %bb57
bb53:
  %t268 = load i32, ptr %l114, !tbaa !23
  %t269 = ashr i32 %t268, 16
  %t271 = icmp eq i32 %t269, 1
  store i1 %t271, ptr %l116, !tbaa !21
  %t272 = load i32, ptr %l114, !tbaa !23
  %t273 = ashr i32 %t272, 16
  %t275 = icmp eq i32 %t273, 1
  br i1 %t275, label %bb54, label %bb55
bb54:
  call void @__olang_errpay_pop()
  br label %bb55
bb55:
  br label %bb56
bb56:
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s4)
  br label %bb58
bb58:
  %t277 = load i1, ptr %l12, !tbaa !21
  %t279 = xor i1 %t277, true
  br i1 %t279, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l121, !tbaa !21
  br label %bb63
bb60:
  %t281 = load ptr, ptr %lp11
  %t282 = load { i64, ptr }, ptr %t281, !tbaa !27
  %t284 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s3, { i64, ptr } %t282)
  store { i64, ptr } %t284, ptr %l123
  br label %bb61
bb61:
  %t285 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t286 = extractvalue { i64, ptr } %t285, 0
  %t287 = extractvalue { i64, ptr } %t285, 1
  %t288 = mul i64 %t286, 1
  %t289 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t288)
  call void @llvm.memcpy.p0.p0.i64(ptr %t289, ptr %t287, i64 %t288, i1 false)
  %t290 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t291 = insertvalue { i64, ptr } %t290, ptr %t289, 1
  %t293 = call i1 @std_2fos_2eExists(ptr %s3, { i64, ptr } %t291)
  store i1 %t293, ptr %l125
  br label %bb62
bb62:
  %t294 = load i1, ptr %l125, !tbaa !21
  store i1 %t294, ptr %l121, !tbaa !21
  br label %bb63
bb63:
  %t295 = load i1, ptr %l121, !tbaa !21
  br i1 %t295, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s7
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/build:Config", ptr %t296, i32 0, i32 36
  %t299 = load { i64, ptr }, ptr %t298, !tbaa !27
  store { i64, ptr } %t299, ptr %l127, !tbaa !27
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/build:Config", ptr %t300, i32 0, i32 0
  %t303 = load { i64, ptr }, ptr %t302, !tbaa !27
  %t305 = extractvalue { i64, ptr } %t303, 0
  %t307 = add i64 %t305, 1
  store i64 %t307, ptr %l131, !tbaa !24
  %t308 = load ptr, ptr %lp11
  %t309 = load { i64, ptr }, ptr %t308, !tbaa !27
  %t311 = extractvalue { i64, ptr } %t309, 0
  store i64 %t311, ptr %l133, !tbaa !24
  %t312 = load ptr, ptr %lp11
  %t313 = load { i64, ptr }, ptr %t312, !tbaa !27
  %t314 = extractvalue { i64, ptr } %t313, 0
  store i64 %t314, ptr %l134, !tbaa !24
  %t315 = load i64, ptr %l131, !tbaa !24
  %t316 = icmp sge i64 %t315, 0
  br i1 %t316, label %bb66, label %bb67
bb65:
  br label %bb78
bb66:
  %t318 = load i64, ptr %l131, !tbaa !24
  %t319 = load i64, ptr %l133, !tbaa !24
  %t320 = icmp sle i64 %t318, %t319
  br i1 %t320, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_64cef890f5e30dfa_ab05d47f854753c6)
  unreachable
bb68:
  %t322 = load i64, ptr %l133, !tbaa !24
  %t323 = load i64, ptr %l134, !tbaa !24
  %t324 = icmp sle i64 %t322, %t323
  br i1 %t324, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_64cef890f5e30dfa_ab05d47f854753c6)
  unreachable
bb70:
  %t326 = load ptr, ptr %lp11
  %t327 = getelementptr { i64, ptr }, ptr %t326, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = load i64, ptr %l131, !tbaa !24
  %t330 = load i64, ptr %l133, !tbaa !24
  %t331 = getelementptr i8, ptr %t328, i64 %t329
  %t332 = sub i64 %t330, %t329
  %t333 = insertvalue { i64, ptr } undef, i64 %t332, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t331, 1
  %t335 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 1
  %t337 = extractvalue { i64, ptr } %t335, 0
  %t338 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d282, i32 0, i32 1) }, 1
  %t339 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d282, i32 0, i32 1) }, 0
  %t340 = add i64 %t337, %t339
  %t342 = extractvalue { i64, ptr } %t334, 1
  %t343 = extractvalue { i64, ptr } %t334, 0
  %t344 = add i64 %t340, %t343
  %t345 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t344)
  call void @olang_textcopy(ptr %t345, ptr %t336, i64 %t337)
  %t346 = getelementptr i8, ptr %t345, i64 %t337
  call void @olang_textcopy(ptr %t346, ptr %t338, i64 %t339)
  %t347 = getelementptr i8, ptr %t346, i64 %t339
  call void @olang_textcopy(ptr %t347, ptr %t342, i64 %t343)
  %t348 = insertvalue { i64, ptr } undef, i64 %t344, 0
  %t349 = insertvalue { i64, ptr } %t348, ptr %t345, 1
  %t351 = extractvalue { i64, ptr } %t349, 0
  %t352 = extractvalue { i64, ptr } %t349, 1
  %t353 = mul i64 %t351, 1
  %t354 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t353)
  call void @llvm.memcpy.p0.p0.i64(ptr %t354, ptr %t352, i64 %t353, i1 false)
  %t355 = insertvalue { i64, ptr } undef, i64 %t351, 0
  %t356 = insertvalue { i64, ptr } %t355, ptr %t354, 1
  %t357 = load ptr, ptr %lp11
  %t358 = load { i64, ptr }, ptr %t357, !tbaa !27
  %t361 = call i32 @std_2fos_2eLink(ptr %s7, ptr %v6, { i64, ptr } %t356, { i64, ptr } %t358)
  store i32 %t361, ptr %l142
  %t362 = icmp ne i32 %t361, 0
  br i1 %t362, label %bb73, label %ok.363, !prof !99
ok.363:
  br label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_64cef890f5e30dfa_ab05d47f854753c6)
  unreachable
bb72:
  br label %bb77
bb73:
  %t364 = load i32, ptr %l142, !tbaa !23
  %t365 = ashr i32 %t364, 16
  %t367 = icmp eq i32 %t365, 1
  store i1 %t367, ptr %l144, !tbaa !21
  %t368 = load i32, ptr %l142, !tbaa !23
  %t369 = ashr i32 %t368, 16
  %t371 = icmp eq i32 %t369, 1
  br i1 %t371, label %bb74, label %bb75
bb74:
  call void @__olang_errpay_pop()
  br label %bb75
bb75:
  br label %bb76
bb76:
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s7)
  br label %bb78
bb78:
  %t373 = load ptr, ptr %lp11
  %t374 = load { i64, ptr }, ptr %t373, !tbaa !27
  %t376 = call i1 @std_2fos_2eExists(ptr %v6, { i64, ptr } %t374)
  store i1 %t376, ptr %l148
  br label %bb79
bb79:
  %t377 = load i1, ptr %l148, !tbaa !21
  br i1 %t377, label %bb80, label %bb81
bb80:
  %t378 = load ptr, ptr %lp11
  %t379 = load { i64, ptr }, ptr %t378, !tbaa !27
  store { i64, ptr } %t379, ptr %l149, !tbaa !27
  %t380 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t381 = extractvalue { i64, ptr } %t380, 0
  store i64 %t381, ptr %l150, !tbaa !24
  %t382 = load i64, ptr %l150, !tbaa !24
  %t383 = mul i64 %t382, 1
  %t384 = call ptr @__olang_scope_alloc(ptr %v6, i64 %t383)
  %t385 = insertvalue { i64, ptr } undef, i64 %t382, 0
  %t386 = insertvalue { i64, ptr } %t385, ptr %t384, 1
  store { i64, ptr } %t386, ptr %l151, !tbaa !27
  %t387 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t388 = load ptr, ptr %t387, !tbaa !27
  %t389 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t390 = load ptr, ptr %t389, !tbaa !27
  %t391 = load i64, ptr %l150, !tbaa !24
  %t392 = mul i64 %t391, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t388, ptr %t390, i64 %t392, i1 false)
  %t393 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t393, ptr %l149, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t394 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t395 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t394, 1
  store { i32, { i64, ptr } } %t395, ptr %rv
  br label %ret
bb81:
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s3)
  br label %bb83
bb83:
  %t396 = load i64, ptr %l7, !tbaa !24
  %t398 = icmp sge i64 %t396, 0
  br i1 %t398, label %bb84, label %bb85
bb84:
  %t400 = load ptr, ptr %l1, !tbaa !29
  %t401 = load ptr, ptr %lp11
  %t402 = load { i64, ptr }, ptr %t401, !tbaa !27
  %t405 = call i1 @compiler_2fbuild_2ecompiler_2fbuild_3acompiles_2eclaim(ptr %v1, ptr %v6, ptr %t400, { i64, ptr } %t402)
  store i1 %t405, ptr %l157
  br label %bb86
bb85:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb87
bb86:
  %t406 = load i1, ptr %l157, !tbaa !21
  %t407 = xor i1 %t406, true
  store i1 %t407, ptr %l154, !tbaa !21
  br label %bb87
bb87:
  %t409 = load i1, ptr %l154, !tbaa !21
  br i1 %t409, label %bb88, label %bb89
bb88:
  %t410 = load ptr, ptr %l1, !tbaa !29
  %t412 = getelementptr %"compiler/build:compiles", ptr %t410, i32 0, i32 8
  %t413 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t412, i64 %t413)
  br label %bb90
bb89:
  br label %bb91
bb90:
  %t416 = load ptr, ptr %lp11
  %t417 = load { i64, ptr }, ptr %t416, !tbaa !27
  store { i64, ptr } %t417, ptr %l162, !tbaa !27
  %t418 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t419 = extractvalue { i64, ptr } %t418, 0
  store i64 %t419, ptr %l163, !tbaa !24
  %t420 = load i64, ptr %l163, !tbaa !24
  %t421 = mul i64 %t420, 1
  %t422 = call ptr @__olang_scope_alloc(ptr %v6, i64 %t421)
  %t423 = insertvalue { i64, ptr } undef, i64 %t420, 0
  %t424 = insertvalue { i64, ptr } %t423, ptr %t422, 1
  store { i64, ptr } %t424, ptr %l164, !tbaa !27
  %t425 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !27
  %t427 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t428 = load ptr, ptr %t427, !tbaa !27
  %t429 = load i64, ptr %l163, !tbaa !24
  %t430 = mul i64 %t429, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t426, ptr %t428, i64 %t430, i1 false)
  %t431 = load { i64, ptr }, ptr %l164, !tbaa !27
  store { i64, ptr } %t431, ptr %l162, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t432 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t433 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t432, 1
  store { i32, { i64, ptr } } %t433, ptr %rv
  br label %ret
bb91:
  %t434 = ptrtoint ptr %v4 to i64
  store i64 %t434, ptr %l165, !tbaa !24
  %t435 = load i1, ptr @olang_2esole_2ecompiler__2fbuild__2ecompiler__2fbuild__3aConfig__2ewant_2elocal_2e14
  br i1 %t435, label %bb92, label %bb93
bb92:
  %t437 = call ptr @__olang_region_make(ptr %v4)
  %t438 = ptrtoint ptr %t437 to i64
  store i64 %t438, ptr %l165, !tbaa !24
  br label %bb93
bb93:
  %t439 = load ptr, ptr %lp11
  %t440 = load { i64, ptr }, ptr %t439, !tbaa !27
  %t442 = extractvalue { i64, ptr } %t440, 0
  %t444 = sub i64 %t442, 2
  store i64 %t444, ptr %l169, !tbaa !24
  %t445 = load ptr, ptr %lp11
  %t446 = load { i64, ptr }, ptr %t445, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t446, 0
  store i64 %t447, ptr %l170, !tbaa !24
  %t448 = icmp sge i64 0, 0
  br i1 %t448, label %bb94, label %bb95
bb94:
  %t450 = load i64, ptr %l169, !tbaa !24
  %t451 = icmp sle i64 0, %t450
  br i1 %t451, label %bb96, label %bb97
bb95:
  call void @__olang_check_failed(ptr @olang_loc_adf83e678ec27f19_e5a5f2a4f92e5ce5)
  unreachable
bb96:
  %t453 = load i64, ptr %l169, !tbaa !24
  %t454 = load i64, ptr %l170, !tbaa !24
  %t455 = icmp sle i64 %t453, %t454
  br i1 %t455, label %bb98, label %bb99
bb97:
  call void @__olang_check_failed(ptr @olang_loc_adf83e678ec27f19_e5a5f2a4f92e5ce5)
  unreachable
bb98:
  %t457 = load ptr, ptr %lp11
  %t458 = getelementptr { i64, ptr }, ptr %t457, i32 0, i32 1
  %t459 = load ptr, ptr %t458, !tbaa !27
  %t460 = load i64, ptr %l169, !tbaa !24
  %t461 = getelementptr i8, ptr %t459, i64 0
  %t462 = sub i64 %t460, 0
  %t463 = insertvalue { i64, ptr } undef, i64 %t462, 0
  %t464 = insertvalue { i64, ptr } %t463, ptr %t461, 1
  %t466 = extractvalue { i64, ptr } %t464, 1
  %t467 = extractvalue { i64, ptr } %t464, 0
  %t468 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d283, i32 0, i32 1) }, 1
  %t469 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d283, i32 0, i32 1) }, 0
  %t470 = add i64 %t467, %t469
  %t471 = load i64, ptr %l165
  %t472 = inttoptr i64 %t471 to ptr
  %t473 = call ptr @__olang_scope_alloc(ptr %t472, i64 %t470)
  call void @olang_textcopy(ptr %t473, ptr %t466, i64 %t467)
  %t474 = getelementptr i8, ptr %t473, i64 %t467
  call void @olang_textcopy(ptr %t474, ptr %t468, i64 %t469)
  %t475 = insertvalue { i64, ptr } undef, i64 %t470, 0
  %t476 = insertvalue { i64, ptr } %t475, ptr %t473, 1
  store { i64, ptr } %t476, ptr %l175, !tbaa !27
  %t477 = load i1, ptr @olang_2esole_2ecompiler__2fbuild__2ecompiler__2fbuild__3aConfig__2ewant_2elocal_2e14
  br i1 %t477, label %bb100, label %bb101
bb99:
  call void @__olang_check_failed(ptr @olang_loc_adf83e678ec27f19_e5a5f2a4f92e5ce5)
  unreachable
bb100:
  %t479 = load i64, ptr %l165
  %t480 = inttoptr i64 %t479 to ptr
  %t481 = load { i64, ptr }, ptr %l175
  %t482 = extractvalue { i64, ptr } %t481, 1
  %t483 = call ptr @__olang_region_or(ptr %t482, ptr null)
  %t484 = icmp ne ptr %t483, null
  %t485 = select i1 %t484, ptr %t483, ptr null
  %t486 = icmp eq ptr %t485, %t480
  call void @__olang_region_settle(ptr %t480, i1 %t486)
  br label %bb101
bb101:
  %t487 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t487, ptr %lp14
  %t488 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t489 = load ptr, ptr %lp14
  store { i64, ptr } %t488, ptr %t489, !tbaa !27
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t492 = getelementptr %"compiler/build:Config", ptr %t490, i32 0, i32 0
  %t493 = load { i64, ptr }, ptr %t492, !tbaa !27
  store { i64, ptr } %t493, ptr %l178, !tbaa !27
  %t494 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t494, ptr %l179, !tbaa !27
  %t495 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t497 = call { i64, ptr } @compiler_2fbuild_2ekindSuffix(ptr %s0, i32 %t495)
  store { i64, ptr } %t497, ptr %l181
  br label %bb102
bb102:
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t500 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2emodeSuffix(ptr %v0, ptr %s0, ptr %t498)
  store { i64, ptr } %t500, ptr %l183
  br label %bb103
bb103:
  %t501 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t502 = extractvalue { i64, ptr } %t501, 1
  %t503 = extractvalue { i64, ptr } %t501, 0
  %t504 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d284, i32 0, i32 1) }, 1
  %t505 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d284, i32 0, i32 1) }, 0
  %t506 = add i64 %t503, %t505
  %t507 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t508 = extractvalue { i64, ptr } %t507, 1
  %t509 = extractvalue { i64, ptr } %t507, 0
  %t510 = add i64 %t506, %t509
  %t511 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t512 = extractvalue { i64, ptr } %t511, 1
  %t513 = extractvalue { i64, ptr } %t511, 0
  %t514 = add i64 %t510, %t513
  %t515 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t516 = extractvalue { i64, ptr } %t515, 1
  %t517 = extractvalue { i64, ptr } %t515, 0
  %t518 = add i64 %t514, %t517
  %t519 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d285, i32 0, i32 1) }, 1
  %t520 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d285, i32 0, i32 1) }, 0
  %t521 = add i64 %t518, %t520
  %t522 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t521)
  call void @olang_textcopy(ptr %t522, ptr %t502, i64 %t503)
  %t523 = getelementptr i8, ptr %t522, i64 %t503
  call void @olang_textcopy(ptr %t523, ptr %t504, i64 %t505)
  %t524 = getelementptr i8, ptr %t523, i64 %t505
  call void @olang_textcopy(ptr %t524, ptr %t508, i64 %t509)
  %t525 = getelementptr i8, ptr %t524, i64 %t509
  call void @olang_textcopy(ptr %t525, ptr %t512, i64 %t513)
  %t526 = getelementptr i8, ptr %t525, i64 %t513
  call void @olang_textcopy(ptr %t526, ptr %t516, i64 %t517)
  %t527 = getelementptr i8, ptr %t526, i64 %t517
  call void @olang_textcopy(ptr %t527, ptr %t519, i64 %t520)
  %t528 = insertvalue { i64, ptr } undef, i64 %t521, 0
  %t529 = insertvalue { i64, ptr } %t528, ptr %t522, 1
  store { i64, ptr } %t529, ptr %l15, !tbaa !27
  %t531 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t533 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t531, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d286, i32 0, i32 1) })
  store i1 %t533, ptr %l186
  br label %bb104
bb104:
  %t534 = load i1, ptr %l186, !tbaa !21
  %t535 = xor i1 %t534, true
  br i1 %t535, label %bb105, label %bb106
bb105:
  %t537 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t539 = load ptr, ptr %l1, !tbaa !29
  %t541 = getelementptr %"compiler/build:compiles", ptr %t539, i32 0, i32 3
  %t545 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v1, ptr %s0, ptr %t541, { i64, ptr } %t537)
  store i1 %t545, ptr %l193
  br label %bb107
bb106:
  store i1 false, ptr %l188, !tbaa !21
  br label %bb108
bb107:
  %t546 = load i1, ptr %l193, !tbaa !21
  %t547 = xor i1 %t546, true
  store i1 %t547, ptr %l188, !tbaa !21
  br label %bb108
bb108:
  %t549 = load i1, ptr %l188, !tbaa !21
  br i1 %t549, label %bb109, label %bb110
bb109:
  %t550 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t550, ptr %l195, !tbaa !27
  %t551 = load ptr, ptr %lp14
  %t552 = load { i64, ptr }, ptr %t551, !tbaa !27
  store { i64, ptr } %t552, ptr %l196, !tbaa !27
  %t553 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t554 = extractvalue { i64, ptr } %t553, 0
  store i64 %t554, ptr %l197, !tbaa !24
  %t555 = load i64, ptr %l197, !tbaa !24
  %t556 = mul i64 %t555, 1
  %t557 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t556)
  %t558 = insertvalue { i64, ptr } undef, i64 %t555, 0
  %t559 = insertvalue { i64, ptr } %t558, ptr %t557, 1
  store { i64, ptr } %t559, ptr %l198, !tbaa !27
  %t560 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t561 = load ptr, ptr %t560, !tbaa !27
  %t562 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t563 = load ptr, ptr %t562, !tbaa !27
  %t564 = load i64, ptr %l197, !tbaa !24
  %t565 = mul i64 %t564, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t561, ptr %t563, i64 %t565, i1 false)
  %t566 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t567 = load ptr, ptr %lp14
  store { i64, ptr } %t566, ptr %t567, !tbaa !27
  %t568 = load i1, ptr @olang_2esole_2ecompiler__2fbuild__2ecompiler__2fbuild__3aConfig__2ewant_2elocal_2e14
  br i1 %t568, label %bb111, label %bb112
bb110:
  br label %bb113
bb111:
  %t570 = load { i64, ptr }, ptr %l196
  %t571 = extractvalue { i64, ptr } %t570, 1
  call void @__olang_region_release(ptr %t571)
  store { i64, ptr } zeroinitializer, ptr %l196
  br label %bb112
bb112:
  br label %bb113
bb113:
  %t572 = load ptr, ptr %lp14
  %t573 = load { i64, ptr }, ptr %t572, !tbaa !27
  %t575 = extractvalue { i64, ptr } %t573, 0
  %t577 = sub i64 %t575, 3
  store i64 %t577, ptr %l202, !tbaa !24
  %t578 = load ptr, ptr %lp14
  %t579 = load { i64, ptr }, ptr %t578, !tbaa !27
  %t580 = extractvalue { i64, ptr } %t579, 0
  store i64 %t580, ptr %l203, !tbaa !24
  %t581 = icmp sge i64 0, 0
  br i1 %t581, label %bb114, label %bb115
bb114:
  %t583 = load i64, ptr %l202, !tbaa !24
  %t584 = icmp sle i64 0, %t583
  br i1 %t584, label %bb116, label %bb117
bb115:
  call void @__olang_check_failed(ptr @olang_loc_d790d12bf07ae06c_96ebe5e6b28bd688)
  unreachable
bb116:
  %t586 = load i64, ptr %l202, !tbaa !24
  %t587 = load i64, ptr %l203, !tbaa !24
  %t588 = icmp sle i64 %t586, %t587
  br i1 %t588, label %bb118, label %bb119
bb117:
  call void @__olang_check_failed(ptr @olang_loc_d790d12bf07ae06c_96ebe5e6b28bd688)
  unreachable
bb118:
  %t590 = load ptr, ptr %lp14
  %t591 = getelementptr { i64, ptr }, ptr %t590, i32 0, i32 1
  %t592 = load ptr, ptr %t591, !tbaa !27
  %t593 = load i64, ptr %l202, !tbaa !24
  %t594 = getelementptr i8, ptr %t592, i64 0
  %t595 = sub i64 %t593, 0
  %t596 = insertvalue { i64, ptr } undef, i64 %t595, 0
  %t597 = insertvalue { i64, ptr } %t596, ptr %t594, 1
  store { i64, ptr } %t597, ptr %l207, !tbaa !27
  %t598 = call i32 @getpid()
  store i32 %t598, ptr %l208
  br label %bb120
bb119:
  call void @__olang_check_failed(ptr @olang_loc_d790d12bf07ae06c_96ebe5e6b28bd688)
  unreachable
bb120:
  %t599 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t600 = extractvalue { i64, ptr } %t599, 1
  %t601 = extractvalue { i64, ptr } %t599, 0
  %t602 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d287, i32 0, i32 1) }, 1
  %t603 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d287, i32 0, i32 1) }, 0
  %t604 = add i64 %t601, %t603
  %t605 = load i32, ptr %l208, !tbaa !23
  %t606 = sext i32 %t605 to i64
  %t607 = call i64 @__olang_fmt_i64(ptr null, i64 %t606)
  %t608 = add i64 %t604, %t607
  %t609 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d288, i32 0, i32 1) }, 1
  %t610 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d288, i32 0, i32 1) }, 0
  %t611 = add i64 %t608, %t610
  %t612 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t611)
  call void @olang_textcopy(ptr %t612, ptr %t600, i64 %t601)
  %t613 = getelementptr i8, ptr %t612, i64 %t601
  call void @olang_textcopy(ptr %t613, ptr %t602, i64 %t603)
  %t614 = getelementptr i8, ptr %t613, i64 %t603
  %t615 = call i64 @__olang_fmt_i64(ptr %t614, i64 %t606)
  %t616 = getelementptr i8, ptr %t614, i64 %t607
  call void @olang_textcopy(ptr %t616, ptr %t609, i64 %t610)
  %t617 = insertvalue { i64, ptr } undef, i64 %t611, 0
  %t618 = insertvalue { i64, ptr } %t617, ptr %t612, 1
  %t619 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t619, ptr %lp17
  %t621 = load ptr, ptr %lp17
  store { i64, ptr } %t618, ptr %t621, !tbaa !27
  %t622 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t624 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v3, ptr %s0, { i64, ptr } %t622, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d289, i32 0, i32 1) })
  store i1 %t624, ptr %l211
  br label %bb121
bb121:
  %t625 = load i1, ptr %l211, !tbaa !21
  br i1 %t625, label %bb122, label %bb123
bb122:
  store i1 true, ptr %l212, !tbaa !21
  br label %bb125
bb123:
  %t626 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d290, i32 0, i32 1) }, ptr %l215, !tbaa !27
  %t629 = load { i64, ptr }, ptr %l215, !tbaa !27
  %t630 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v3, ptr %s0, { i64, ptr } %t626, { i64, ptr } %t629)
  store i1 %t630, ptr %l216
  br label %bb124
bb124:
  %t631 = load i1, ptr %l216, !tbaa !21
  store i1 %t631, ptr %l212, !tbaa !21
  br label %bb125
bb125:
  %t632 = load i1, ptr %l212, !tbaa !21
  br i1 %t632, label %bb126, label %bb127
bb126:
  %t635 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t637 = extractvalue { i64, ptr } %t635, 1
  %t638 = extractvalue { i64, ptr } %t635, 0
  %t639 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t638)
  call void @olang_textcopy(ptr %t639, ptr %t637, i64 %t638)
  %t640 = insertvalue { i64, ptr } undef, i64 %t638, 0
  %t641 = insertvalue { i64, ptr } %t640, ptr %t639, 1
  store { i64, ptr } %t641, ptr %l218, !tbaa !27
  br label %bb129
bb127:
  %t643 = load ptr, ptr %lp14
  %t644 = load { i64, ptr }, ptr %t643, !tbaa !27
  %t646 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v4, ptr %s0, { i64, ptr } %t644)
  store { i64, ptr } %t646, ptr %l222
  br label %bb128
bb128:
  %t647 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t648 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d291, i32 0, i32 1) }, 1
  %t649 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d291, i32 0, i32 1) }, 0
  %t650 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t651 = extractvalue { i64, ptr } %t650, 1
  %t652 = extractvalue { i64, ptr } %t650, 0
  %t653 = add i64 %t649, %t652
  %t654 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d292, i32 0, i32 1) }, 1
  %t655 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d292, i32 0, i32 1) }, 0
  %t656 = add i64 %t653, %t655
  %t658 = extractvalue { i64, ptr } %t647, 1
  %t659 = extractvalue { i64, ptr } %t647, 0
  %t660 = add i64 %t656, %t659
  %t661 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t660)
  call void @olang_textcopy(ptr %t661, ptr %t648, i64 %t649)
  %t662 = getelementptr i8, ptr %t661, i64 %t649
  call void @olang_textcopy(ptr %t662, ptr %t651, i64 %t652)
  %t663 = getelementptr i8, ptr %t662, i64 %t652
  call void @olang_textcopy(ptr %t663, ptr %t654, i64 %t655)
  %t664 = getelementptr i8, ptr %t663, i64 %t655
  call void @olang_textcopy(ptr %t664, ptr %t658, i64 %t659)
  %t665 = insertvalue { i64, ptr } undef, i64 %t660, 0
  %t666 = insertvalue { i64, ptr } %t665, ptr %t661, 1
  store { i64, ptr } %t666, ptr %l218, !tbaa !27
  br label %bb129
bb129:
  %t668 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t669 = load ptr, ptr %lp17
  %t670 = load { i64, ptr }, ptr %t669, !tbaa !27
  %t674 = call i32 @std_2fos_2eWriteFile(ptr %v1, ptr %s0, { i64, ptr } %t670, { i64, ptr } %t668)
  store i32 %t674, ptr %l227
  %t675 = icmp ne i32 %t674, 0
  br i1 %t675, label %bb131, label %ok.676, !prof !99
ok.676:
  br label %bb130
bb130:
  br label %bb137
bb131:
  %t677 = load i32, ptr %l227, !tbaa !23
  %t678 = ashr i32 %t677, 16
  %t680 = icmp eq i32 %t678, 1
  store i1 %t680, ptr %l229, !tbaa !21
  %t681 = load i32, ptr %l227, !tbaa !23
  %t682 = ashr i32 %t681, 16
  %t684 = icmp eq i32 %t682, 1
  br i1 %t684, label %bb132, label %bb133
bb132:
  call void @__olang_errpay_pop()
  br label %bb133
bb133:
  br label %bb134
bb134:
  %t686 = load ptr, ptr %lp14
  %t687 = load { i64, ptr }, ptr %t686, !tbaa !27
  store { i64, ptr } %t687, ptr %l232, !tbaa !27
  %t688 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v4)
  store %"compiler/diagmsg:Msg" %t688, ptr %l233
  br label %bb135
bb135:
  %t689 = load ptr, ptr %l5, !tbaa !29
  %t690 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t691 = load %"compiler/diagmsg:Msg", ptr %l233
  call void @compiler_2fbuild_2efileFatal(ptr %v4, ptr %v4, ptr %v4, { i64, ptr } %t690, %"compiler/diagmsg:Msg" %t691, ptr %t689)
  br label %bb136
bb136:
  call void @__olang_scope_close(ptr %s0)
  %t694 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t694, ptr %rv
  br label %ret
bb137:
  %t695 = load ptr, ptr %l0, !tbaa !29
  %t697 = getelementptr %"compiler/build:Config", ptr %t695, i32 0, i32 1
  %t698 = load { i64, ptr }, ptr %t697, !tbaa !27
  %t700 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t698, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d293, i32 0, i32 1) })
  store i1 %t700, ptr %l238
  br label %bb138
bb138:
  %t701 = load i1, ptr %l238, !tbaa !21
  br i1 %t701, label %bb139, label %bb140
bb139:
  %t702 = load ptr, ptr %lp17
  %t703 = load { i64, ptr }, ptr %t702, !tbaa !27
  %t704 = load ptr, ptr %lp14
  %t705 = load { i64, ptr }, ptr %t704, !tbaa !27
  %t708 = call i32 @std_2fos_2eRename(ptr %v1, ptr %v4, { i64, ptr } %t703, { i64, ptr } %t705)
  store i32 %t708, ptr %l241
  %t709 = icmp ne i32 %t708, 0
  br i1 %t709, label %bb142, label %ok.710, !prof !99
ok.710:
  br label %bb141
bb140:
  br label %bb149
bb141:
  br label %bb146
bb142:
  %t711 = load i32, ptr %l241, !tbaa !23
  %t712 = ashr i32 %t711, 16
  %t714 = icmp eq i32 %t712, 1
  store i1 %t714, ptr %l243, !tbaa !21
  %t715 = load i32, ptr %l241, !tbaa !23
  %t716 = ashr i32 %t715, 16
  %t718 = icmp eq i32 %t716, 1
  br i1 %t718, label %bb143, label %bb144
bb143:
  call void @__olang_errpay_pop()
  br label %bb144
bb144:
  br label %bb145
bb145:
  br label %bb146
bb146:
  %t720 = load ptr, ptr %l5, !tbaa !29
  store ptr %t720, ptr %l246, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t721
  %t722 = getelementptr { i64, [3 x i64] }, ptr %t721, i32 0, i32 0
  store i64 0, ptr %t722
  %t723 = load { i64, [3 x i64] }, ptr %t721
  store { i64, [3 x i64] } %t723, ptr %l247
  %t724 = load ptr, ptr %lp14
  %t725 = load { i64, ptr }, ptr %t724, !tbaa !27
  %t727 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoClang(ptr %v4, ptr %v4, { i64, ptr } %t725)
  store %"compiler/diagmsg:Msg" %t727, ptr %l249
  br label %bb147
bb147:
  %t728 = load ptr, ptr %l246, !tbaa !29
  %t729 = load { i64, [3 x i64] }, ptr %l247
  %t730 = load %"compiler/diagmsg:Msg", ptr %l249
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v4, ptr %v4, ptr %t728, { i64, [3 x i64] } %t729, %"compiler/diagmsg:Msg" %t730)
  br label %bb148
bb148:
  call void @__olang_scope_close(ptr %s0)
  %t732 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t732, ptr %rv
  br label %ret
bb149:
  %t733 = load ptr, ptr %lp11
  %t734 = load { i64, ptr }, ptr %t733, !tbaa !27
  store { i64, ptr } %t734, ptr %l251, !tbaa !27
  %t735 = call i32 @getpid()
  store i32 %t735, ptr %l252
  br label %bb150
bb150:
  %t736 = load { i64, ptr }, ptr %l251, !tbaa !27
  %t737 = extractvalue { i64, ptr } %t736, 1
  %t738 = extractvalue { i64, ptr } %t736, 0
  %t739 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d294, i32 0, i32 1) }, 1
  %t740 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d294, i32 0, i32 1) }, 0
  %t741 = add i64 %t738, %t740
  %t742 = load i32, ptr %l252, !tbaa !23
  %t743 = sext i32 %t742 to i64
  %t744 = call i64 @__olang_fmt_i64(ptr null, i64 %t743)
  %t745 = add i64 %t741, %t744
  %t746 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d295, i32 0, i32 1) }, 1
  %t747 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d295, i32 0, i32 1) }, 0
  %t748 = add i64 %t745, %t747
  %t749 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t748)
  call void @olang_textcopy(ptr %t749, ptr %t737, i64 %t738)
  %t750 = getelementptr i8, ptr %t749, i64 %t738
  call void @olang_textcopy(ptr %t750, ptr %t739, i64 %t740)
  %t751 = getelementptr i8, ptr %t750, i64 %t740
  %t752 = call i64 @__olang_fmt_i64(ptr %t751, i64 %t743)
  %t753 = getelementptr i8, ptr %t751, i64 %t744
  call void @olang_textcopy(ptr %t753, ptr %t746, i64 %t747)
  %t754 = insertvalue { i64, ptr } undef, i64 %t748, 0
  %t755 = insertvalue { i64, ptr } %t754, ptr %t749, 1
  %t756 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t756, ptr %lp20
  %t758 = load ptr, ptr %lp20
  store { i64, ptr } %t755, ptr %t758, !tbaa !27
  %t759 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t759, ptr %l254
  br label %bb151
bb151:
  %t760 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l254
  %t761 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t760, ptr %t761
  store ptr %t761, ptr %l21, !tbaa !29
  %t763 = load ptr, ptr %l21, !tbaa !29
  %t764 = load ptr, ptr %l0, !tbaa !29
  %t766 = getelementptr %"compiler/build:Config", ptr %t764, i32 0, i32 1
  %t767 = load { i64, ptr }, ptr %t766, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v0, ptr %t763, { i64, ptr } %t767)
  br label %bb152
bb152:
  store ptr %l8, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb153
bb153:
  %t771 = load i64, ptr %l23, !tbaa !24
  store i64 %t771, ptr %l260, !tbaa !24
  %t772 = load ptr, ptr %l22, !tbaa !29
  %t774 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t772)
  store i64 %t774, ptr %l262
  br label %bb154
bb154:
  %t775 = load i64, ptr %l260, !tbaa !24
  %t776 = load i64, ptr %l262, !tbaa !24
  %t777 = icmp slt i64 %t775, %t776
  %t779 = xor i1 %t777, true
  br i1 %t779, label %bb155, label %bb156
bb155:
  br label %bb161
bb156:
  br label %bb157
bb157:
  %t781 = load ptr, ptr %l22, !tbaa !29
  %t782 = load i64, ptr %l23, !tbaa !24
  %t785 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t781, i64 %t782)
  store { i64, ptr } %t785, ptr %l267
  br label %bb158
bb158:
  %t786 = load { i64, ptr }, ptr %l267, !tbaa !27
  %t787 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t787, { i64, ptr } %t786)
  br label %bb159
bb159:
  br label %bb160
bb160:
  %t791 = load i64, ptr %l23, !tbaa !24
  %t793 = add i64 %t791, 1
  store i64 %t793, ptr %l23, !tbaa !24
  br label %bb153
bb161:
  %t795 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t795, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d296, i32 0, i32 1) })
  br label %bb162
bb162:
  %t797 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t797, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d297, i32 0, i32 1) })
  br label %bb163
bb163:
  %t799 = load ptr, ptr %l21, !tbaa !29
  %t800 = load ptr, ptr %lp20
  %t801 = load { i64, ptr }, ptr %t800, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t799, { i64, ptr } %t801)
  br label %bb164
bb164:
  %t804 = load ptr, ptr %l21, !tbaa !29
  %t805 = load ptr, ptr %lp17
  %t806 = load { i64, ptr }, ptr %t805, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t804, { i64, ptr } %t806)
  br label %bb165
bb165:
  %t809 = load i1, ptr %l12, !tbaa !21
  br i1 %t809, label %bb166, label %bb167
bb166:
  %t811 = load ptr, ptr %l21, !tbaa !29
  store ptr %t811, ptr %l279, !tbaa !29
  %t812 = ptrtoint ptr %v1 to i64
  store i64 %t812, ptr %l280, !tbaa !24
  %t813 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t813, label %bb168, label %bb169
bb167:
  br label %bb171
bb168:
  %t815 = call ptr @__olang_region_make(ptr %v1)
  %t816 = ptrtoint ptr %t815 to i64
  store i64 %t816, ptr %l280, !tbaa !24
  br label %bb169
bb169:
  %t817 = load ptr, ptr %lp20
  %t818 = load { i64, ptr }, ptr %t817, !tbaa !27
  %t819 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d298, i32 0, i32 1) }, 1
  %t820 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d298, i32 0, i32 1) }, 0
  %t822 = extractvalue { i64, ptr } %t818, 1
  %t823 = extractvalue { i64, ptr } %t818, 0
  %t824 = add i64 %t820, %t823
  %t825 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d299, i32 0, i32 1) }, 1
  %t826 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d299, i32 0, i32 1) }, 0
  %t827 = add i64 %t824, %t826
  %t828 = load i64, ptr %l280
  %t829 = inttoptr i64 %t828 to ptr
  %t830 = call ptr @__olang_scope_alloc(ptr %t829, i64 %t827)
  call void @olang_textcopy(ptr %t830, ptr %t819, i64 %t820)
  %t831 = getelementptr i8, ptr %t830, i64 %t820
  call void @olang_textcopy(ptr %t831, ptr %t822, i64 %t823)
  %t832 = getelementptr i8, ptr %t831, i64 %t823
  call void @olang_textcopy(ptr %t832, ptr %t825, i64 %t826)
  %t833 = insertvalue { i64, ptr } undef, i64 %t827, 0
  %t834 = insertvalue { i64, ptr } %t833, ptr %t830, 1
  %t836 = load i64, ptr %l280
  %t837 = inttoptr i64 %t836 to ptr
  %t838 = extractvalue { i64, ptr } %t834, 0
  %t839 = extractvalue { i64, ptr } %t834, 1
  %t840 = mul i64 %t838, 1
  %t841 = call ptr @__olang_scope_alloc(ptr %t837, i64 %t840)
  call void @llvm.memcpy.p0.p0.i64(ptr %t841, ptr %t839, i64 %t840, i1 false)
  %t842 = insertvalue { i64, ptr } undef, i64 %t838, 0
  %t843 = insertvalue { i64, ptr } %t842, ptr %t841, 1
  %t844 = load ptr, ptr %l279, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t844, { i64, ptr } %t843)
  br label %bb170
bb170:
  br label %bb171
bb171:
  %t846 = load i1, ptr %l9, !tbaa !21
  br i1 %t846, label %bb172, label %bb173
bb172:
  %t848 = load ptr, ptr %l1, !tbaa !29
  %t850 = getelementptr %"compiler/build:compiles", ptr %t848, i32 0, i32 0
  store ptr %t850, ptr %l287, !tbaa !29
  %t851 = ptrtoint ptr %v1 to i64
  store i64 %t851, ptr %l288, !tbaa !24
  %t852 = load i1, ptr @olang_2esole_2eArray_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2e_2d1
  br i1 %t852, label %bb174, label %bb175
bb173:
  %t854 = load ptr, ptr %l1, !tbaa !29
  %t856 = getelementptr %"compiler/build:compiles", ptr %t854, i32 0, i32 0
  store ptr %t856, ptr %l298, !tbaa !29
  %t857 = ptrtoint ptr %v1 to i64
  store i64 %t857, ptr %l299, !tbaa !24
  %t858 = load i1, ptr @olang_2esole_2eArray_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2e_2d1
  br i1 %t858, label %bb179, label %bb180
bb174:
  %t860 = call ptr @__olang_region_make(ptr %v1)
  %t861 = ptrtoint ptr %t860 to i64
  store i64 %t861, ptr %l288, !tbaa !24
  br label %bb175
bb175:
  %t862 = load ptr, ptr %l0, !tbaa !29
  %t864 = getelementptr %"compiler/build:Config", ptr %t862, i32 0, i32 1
  %t865 = load { i64, ptr }, ptr %t864, !tbaa !27
  store { i64, ptr } %t865, ptr %l291, !tbaa !27
  %t866 = load ptr, ptr %l21, !tbaa !29
  %t868 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %v1, ptr %t866)
  store { i64, ptr } %t868, ptr %l293
  br label %bb176
bb176:
  %t869 = load ptr, ptr %lp17
  %t870 = load { i64, ptr }, ptr %t869, !tbaa !27
  %t871 = load i64, ptr %l288
  %t872 = inttoptr i64 %t871 to ptr
  %t873 = load i64, ptr %l288
  %t874 = inttoptr i64 %t873 to ptr
  %t875 = load { i64, ptr }, ptr %l291, !tbaa !27
  %t876 = load { i64, ptr }, ptr %l293, !tbaa !27
  %t878 = call { i64, ptr } @compiler_2fbuild_2ehoisted(ptr %v0, ptr %t872, ptr %v1, ptr %t874, { i64, ptr } %t875, { i64, ptr } %t876, { i64, ptr } %t870)
  store { i64, ptr } %t878, ptr %l295
  br label %bb177
bb177:
  %t879 = load { i64, ptr }, ptr %l295, !tbaa !27
  %t880 = load i64, ptr %l288
  %t881 = inttoptr i64 %t880 to ptr
  %t882 = extractvalue { i64, ptr } %t879, 0
  %t883 = extractvalue { i64, ptr } %t879, 1
  %t884 = mul i64 %t882, 16
  %t885 = call ptr @__olang_scope_alloc(ptr %t881, i64 %t884)
  call void @llvm.memcpy.p0.p0.i64(ptr %t885, ptr %t883, i64 %t884, i1 false)
  %t886 = insertvalue { i64, ptr } undef, i64 %t882, 0
  %t887 = insertvalue { i64, ptr } %t886, ptr %t885, 1
  %t888 = load ptr, ptr %l287, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %v1, ptr %v1, ptr %t888, { i64, ptr } %t887)
  br label %bb178
bb178:
  br label %bb183
bb179:
  %t890 = call ptr @__olang_region_make(ptr %v1)
  %t891 = ptrtoint ptr %t890 to i64
  store i64 %t891, ptr %l299, !tbaa !24
  br label %bb180
bb180:
  %t892 = load ptr, ptr %l21, !tbaa !29
  %t893 = load i64, ptr %l299
  %t894 = inttoptr i64 %t893 to ptr
  %t896 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %t894, ptr %t892)
  store { i64, ptr } %t896, ptr %l302
  br label %bb181
bb181:
  %t897 = load ptr, ptr %l298, !tbaa !29
  %t898 = load { i64, ptr }, ptr %l302, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %v1, ptr %v1, ptr %t897, { i64, ptr } %t898)
  br label %bb182
bb182:
  br label %bb183
bb183:
  %t899 = load ptr, ptr %l1, !tbaa !29
  %t901 = getelementptr %"compiler/build:compiles", ptr %t899, i32 0, i32 1
  %t902 = load ptr, ptr %lp20
  %t903 = load { i64, ptr }, ptr %t902, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t901, { i64, ptr } %t903)
  br label %bb184
bb184:
  %t906 = load ptr, ptr %l1, !tbaa !29
  %t908 = getelementptr %"compiler/build:compiles", ptr %t906, i32 0, i32 5
  store ptr %t908, ptr %l307, !tbaa !29
  %t909 = ptrtoint ptr %v1 to i64
  store i64 %t909, ptr %l308, !tbaa !24
  %t910 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t910, label %bb185, label %bb186
bb185:
  %t912 = call ptr @__olang_region_make(ptr %v1)
  %t913 = ptrtoint ptr %t912 to i64
  store i64 %t913, ptr %l308, !tbaa !24
  br label %bb186
bb186:
  %t914 = load i1, ptr %l12, !tbaa !21
  br i1 %t914, label %bb187, label %bb188
bb187:
  %t916 = load ptr, ptr %lp20
  %t917 = load { i64, ptr }, ptr %t916, !tbaa !27
  %t919 = extractvalue { i64, ptr } %t917, 1
  %t920 = extractvalue { i64, ptr } %t917, 0
  %t921 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d300, i32 0, i32 1) }, 1
  %t922 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d300, i32 0, i32 1) }, 0
  %t923 = add i64 %t920, %t922
  %t924 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t923)
  call void @olang_textcopy(ptr %t924, ptr %t919, i64 %t920)
  %t925 = getelementptr i8, ptr %t924, i64 %t920
  call void @olang_textcopy(ptr %t925, ptr %t921, i64 %t922)
  %t926 = insertvalue { i64, ptr } undef, i64 %t923, 0
  %t927 = insertvalue { i64, ptr } %t926, ptr %t924, 1
  store { i64, ptr } %t927, ptr %l311, !tbaa !27
  br label %bb189
bb188:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d301, i32 0, i32 1) }, ptr %l314, !tbaa !27
  %t929 = load { i64, ptr }, ptr %l314, !tbaa !27
  store { i64, ptr } %t929, ptr %l311, !tbaa !27
  br label %bb189
bb189:
  %t931 = load { i64, ptr }, ptr %l311, !tbaa !27
  %t932 = load i64, ptr %l308
  %t933 = inttoptr i64 %t932 to ptr
  %t934 = extractvalue { i64, ptr } %t931, 0
  %t935 = extractvalue { i64, ptr } %t931, 1
  %t936 = mul i64 %t934, 1
  %t937 = call ptr @__olang_scope_alloc(ptr %t933, i64 %t936)
  call void @llvm.memcpy.p0.p0.i64(ptr %t937, ptr %t935, i64 %t936, i1 false)
  %t938 = insertvalue { i64, ptr } undef, i64 %t934, 0
  %t939 = insertvalue { i64, ptr } %t938, ptr %t937, 1
  %t940 = load ptr, ptr %l307, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t940, { i64, ptr } %t939)
  br label %bb190
bb190:
  %t942 = load ptr, ptr %l1, !tbaa !29
  %t944 = getelementptr %"compiler/build:compiles", ptr %t942, i32 0, i32 2
  %t945 = load ptr, ptr %lp11
  %t946 = load { i64, ptr }, ptr %t945, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v6, ptr %t944, { i64, ptr } %t946)
  br label %bb191
bb191:
  %t949 = load ptr, ptr %l1, !tbaa !29
  %t951 = getelementptr %"compiler/build:compiles", ptr %t949, i32 0, i32 3
  %t952 = load ptr, ptr %lp14
  %t953 = load { i64, ptr }, ptr %t952, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v4, ptr %t951, { i64, ptr } %t953)
  br label %bb192
bb192:
  %t956 = load ptr, ptr %l1, !tbaa !29
  %t958 = getelementptr %"compiler/build:compiles", ptr %t956, i32 0, i32 4
  %t959 = load ptr, ptr %lp17
  %t960 = load { i64, ptr }, ptr %t959, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t958, { i64, ptr } %t960)
  br label %bb193
bb193:
  %t963 = load ptr, ptr %l1, !tbaa !29
  %t965 = getelementptr %"compiler/build:compiles", ptr %t963, i32 0, i32 6
  %t966 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t968 = extractvalue { i64, ptr } %t966, 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t965, i64 %t968)
  br label %bb194
bb194:
  %t971 = load ptr, ptr %lp11
  %t972 = load { i64, ptr }, ptr %t971, !tbaa !27
  store { i64, ptr } %t972, ptr %l330, !tbaa !27
  %t973 = load { i64, ptr }, ptr %l330, !tbaa !27
  %t974 = extractvalue { i64, ptr } %t973, 0
  store i64 %t974, ptr %l331, !tbaa !24
  %t975 = load i64, ptr %l331, !tbaa !24
  %t976 = mul i64 %t975, 1
  %t977 = call ptr @__olang_scope_alloc(ptr %v6, i64 %t976)
  %t978 = insertvalue { i64, ptr } undef, i64 %t975, 0
  %t979 = insertvalue { i64, ptr } %t978, ptr %t977, 1
  store { i64, ptr } %t979, ptr %l332, !tbaa !27
  %t980 = getelementptr { i64, ptr }, ptr %l332, i32 0, i32 1
  %t981 = load ptr, ptr %t980, !tbaa !27
  %t982 = getelementptr { i64, ptr }, ptr %l330, i32 0, i32 1
  %t983 = load ptr, ptr %t982, !tbaa !27
  %t984 = load i64, ptr %l331, !tbaa !24
  %t985 = mul i64 %t984, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t981, ptr %t983, i64 %t985, i1 false)
  %t986 = load { i64, ptr }, ptr %l332, !tbaa !27
  store { i64, ptr } %t986, ptr %l330, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t987 = load { i64, ptr }, ptr %l330, !tbaa !27
  %t988 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t987, 1
  store { i32, { i64, ptr } } %t988, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i64 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewidth(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i32
  %l17 = alloca i1
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i32
  %l23 = alloca i64
  %l24 = alloca i32
  %l28 = alloca i64
  %l31 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i32
  %l37 = alloca i1
  %l42 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 27
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sgt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/build:Config", ptr %t8, i32 0, i32 27
  %t11 = load i64, ptr %t10, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t11, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t13 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d302, i32 0, i32 1) })
  %t14 = extractvalue { i32, { i64, ptr } } %t13, 1
  %t15 = extractvalue { i32, { i64, ptr } } %t13, 0
  store i32 %t15, ptr %l15
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb5, label %ok.17, !prof !99
ok.17:
  store { i64, ptr } %t14, ptr %l14
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t18, ptr %l13, !tbaa !27
  br label %bb9
bb5:
  %t19 = load i32, ptr %l15, !tbaa !23
  %t20 = ashr i32 %t19, 16
  %t22 = icmp eq i32 %t20, 1
  store i1 %t22, ptr %l17, !tbaa !21
  %t23 = load i32, ptr %l15, !tbaa !23
  %t24 = ashr i32 %t23, 16
  %t26 = icmp eq i32 %t24, 1
  br i1 %t26, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  br label %bb8
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d303, i32 0, i32 1) }, ptr %l13, !tbaa !27
  br label %bb9
bb9:
  %t28 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t29 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s0, ptr %s0, { i64, ptr } %t28)
  store { i64, ptr } %t29, ptr %l20
  br label %bb10
bb10:
  %t30 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t31 = extractvalue { i32, i64 } %t30, 1
  %t32 = extractvalue { i32, i64 } %t30, 0
  store i32 %t32, ptr %l22
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb12, label %ok.34, !prof !99
ok.34:
  store i64 %t31, ptr %l21
  br label %bb11
bb11:
  %t35 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t36 = load i64, ptr %l21, !tbaa !24
  %t37 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t35, i64 %t36)
  %t38 = extractvalue { i32, i64 } %t37, 1
  %t39 = extractvalue { i32, i64 } %t37, 0
  store i32 %t39, ptr %l24
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb15, label %ok.41, !prof !99
ok.41:
  store i64 %t38, ptr %l23
  br label %bb14
bb12:
  br label %bb13
bb13:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb16
bb14:
  %t42 = load i64, ptr %l23, !tbaa !24
  store i64 %t42, ptr %l12, !tbaa !24
  br label %bb16
bb15:
  br label %bb13
bb16:
  %t43 = load i64, ptr %l12, !tbaa !24
  store i64 %t43, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l1, !tbaa !24
  %t46 = icmp sgt i64 %t44, 0
  br i1 %t46, label %bb17, label %bb18
bb17:
  %t48 = load i64, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t48, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t50 = call i64 @sysconf(i32 84)
  store i64 %t50, ptr %l28
  br label %bb20
bb20:
  %t51 = load i64, ptr %l28, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  %t52 = load i64, ptr %l2, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb21, label %bb22
bb21:
  %t56 = load i64, ptr %l2, !tbaa !24
  store i64 %t56, ptr %l31, !tbaa !24
  br label %bb23
bb22:
  store i64 1, ptr %l31, !tbaa !24
  br label %bb23
bb23:
  %t58 = load i64, ptr %l31, !tbaa !24
  store i64 %t58, ptr %l3, !tbaa !24
  %t59 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d304, i32 0, i32 1) })
  %t60 = extractvalue { i32, { i64, ptr } } %t59, 1
  %t61 = extractvalue { i32, { i64, ptr } } %t59, 0
  store i32 %t61, ptr %l35
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb25, label %ok.63, !prof !99
ok.63:
  store { i64, ptr } %t60, ptr %l34
  br label %bb24
bb24:
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t64, ptr %l33, !tbaa !27
  br label %bb29
bb25:
  %t65 = load i32, ptr %l35, !tbaa !23
  %t66 = ashr i32 %t65, 16
  %t68 = icmp eq i32 %t66, 1
  store i1 %t68, ptr %l37, !tbaa !21
  %t69 = load i32, ptr %l35, !tbaa !23
  %t70 = ashr i32 %t69, 16
  %t72 = icmp eq i32 %t70, 1
  br i1 %t72, label %bb26, label %bb27
bb26:
  call void @__olang_errpay_pop()
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t74 = load i64, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t74, ptr %rv
  br label %ret
bb29:
  %t76 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t79 = call i64 @compiler_2fbuild_2ekbOf(ptr %s0, ptr %s0, { i64, ptr } %t76, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d305, i32 0, i32 1) })
  store i64 %t79, ptr %l42
  br label %bb30
bb30:
  %t80 = load i64, ptr %l42, !tbaa !24
  store i64 %t80, ptr %l5, !tbaa !24
  %t81 = load i64, ptr %l5, !tbaa !24
  %t83 = icmp sle i64 %t81, 0
  br i1 %t83, label %bb31, label %bb32
bb31:
  %t85 = load i64, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t85, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t87 = load i64, ptr %l5, !tbaa !24
  %t88 = load i64, ptr @G_2ecompiler_2fbuild_2eJobMemory, !tbaa !24
  %t90 = mul i64 %t88, 1024
  %t93 = sdiv i64 %t87, %t90
  store i64 %t93, ptr %l6, !tbaa !24
  %t95 = load i64, ptr %l6, !tbaa !24
  %t97 = icmp slt i64 %t95, 1
  br i1 %t97, label %bb34, label %bb35
bb34:
  store i64 1, ptr %l52, !tbaa !24
  br label %bb37
bb35:
  %t99 = load i64, ptr %l3, !tbaa !24
  %t100 = load i64, ptr %l6, !tbaa !24
  %t103 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t99, i64 %t100)
  store i64 %t103, ptr %l55
  br label %bb36
bb36:
  %t104 = load i64, ptr %l55, !tbaa !24
  store i64 %t104, ptr %l52, !tbaa !24
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s0)
  %t105 = load i64, ptr %l52, !tbaa !24
  store i64 %t105, ptr %rv
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d306, i32 0, i32 1) }, ptr %l33, !tbaa !27
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
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eWrite(ptr %v0, ptr %s0, ptr %t9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d307, i32 0, i32 1) })
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
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eWrite(ptr %v0, ptr %s1, ptr %t20, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d308, i32 0, i32 1) })
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

define dso_local void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2ecompress(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca [64 x i32]
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
  %l16 = alloca i64
  %l17 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i32
  %l38 = alloca [64 x i32]
  %l42 = alloca i64
  %l45 = alloca i64
  %l68 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l98 = alloca i64
  %l101 = alloca i64
  %l122 = alloca i32
  %l126 = alloca i32
  %l136 = alloca i32
  %l140 = alloca i32
  %l180 = alloca i64
  %l183 = alloca i64
  %l202 = alloca i32
  %l204 = alloca i32
  %l205 = alloca i32
  %l207 = alloca i32
  %l229 = alloca i32
  %l231 = alloca i32
  %l232 = alloca i32
  %l234 = alloca i32
  %l263 = alloca ptr
  %l267 = alloca ptr
  %l271 = alloca ptr
  %l275 = alloca ptr
  %l279 = alloca ptr
  %l283 = alloca ptr
  %l287 = alloca ptr
  %l291 = alloca ptr
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 64
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [64 x i32], ptr %l38, i64 0, i64 %t5
  store i32 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l38, i64 256, i1 false)
  store i64 0, ptr %l4, !tbaa !24
  store i64 16, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb6
bb3:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l45, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb5
bb5:
  %t35 = load i64, ptr %l45, !tbaa !24
  store i64 %t35, ptr %l42, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l42, !tbaa !24
  store i64 %t36, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l8, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t45 = load i64, ptr %l4, !tbaa !24
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l9, !tbaa !24
  %t56 = load i64, ptr %l9, !tbaa !24
  %t58 = mul i64 %t56, 4
  %t61 = add i64 %a2, %t58
  store i64 %t61, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t64, ptr %l68, !tbaa !27
  %t65 = load i64, ptr %l10, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i8, ptr %t68, i64 %t65
  %t70 = load i8, ptr %t69, !tbaa !32
  %t72 = zext i8 %t70 to i32
  %t74 = shl i32 %t72, 24
  %t75 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t75, ptr %l73, !tbaa !27
  %t76 = load i64, ptr %l10, !tbaa !24
  %t78 = add i64 %t76, 1
  %t80 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i8, ptr %t81, i64 %t78
  %t83 = load i8, ptr %t82, !tbaa !32
  %t85 = zext i8 %t83 to i32
  %t87 = shl i32 %t85, 16
  %t90 = or i32 %t74, %t87
  %t91 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t91, ptr %l80, !tbaa !27
  %t92 = load i64, ptr %l10, !tbaa !24
  %t94 = add i64 %t92, 2
  %t96 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i8, ptr %t97, i64 %t94
  %t99 = load i8, ptr %t98, !tbaa !32
  %t101 = zext i8 %t99 to i32
  %t103 = shl i32 %t101, 8
  %t106 = or i32 %t90, %t103
  %t107 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t107, ptr %l87, !tbaa !27
  %t108 = load i64, ptr %l10, !tbaa !24
  %t110 = add i64 %t108, 3
  %t112 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i8, ptr %t113, i64 %t110
  %t115 = load i8, ptr %t114, !tbaa !32
  %t117 = zext i8 %t115 to i32
  %t120 = or i32 %t106, %t117
  %t123 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t63
  store i32 %t120, ptr %t123, !tbaa !84
  br label %bb11
bb11:
  %t124 = load i64, ptr %l8, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l8, !tbaa !24
  br label %bb7
bb12:
  store i64 16, ptr %l11, !tbaa !24
  store i64 64, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t128 = load i64, ptr %l12, !tbaa !24
  %t129 = load i64, ptr %l11, !tbaa !24
  %t132 = icmp sgt i64 %t128, %t129
  br i1 %t132, label %bb13, label %bb14
bb13:
  %t134 = load i64, ptr %l13, !tbaa !24
  %t136 = icmp sgt i64 %t134, 0
  br i1 %t136, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb18
bb15:
  %t138 = load i64, ptr %l12, !tbaa !24
  %t139 = load i64, ptr %l11, !tbaa !24
  %t142 = sub i64 %t138, %t139
  %t143 = load i64, ptr %l13, !tbaa !24
  %t146 = add i64 %t142, %t143
  %t148 = sub i64 %t146, 1
  %t149 = load i64, ptr %l13, !tbaa !24
  %t152 = sdiv i64 %t148, %t149
  store i64 %t152, ptr %l101, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb17
bb17:
  %t154 = load i64, ptr %l101, !tbaa !24
  store i64 %t154, ptr %l98, !tbaa !24
  br label %bb18
bb18:
  %t155 = load i64, ptr %l98, !tbaa !24
  store i64 %t155, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb19
bb19:
  %t156 = load i64, ptr %l15, !tbaa !24
  %t157 = load i64, ptr %l14, !tbaa !24
  %t160 = icmp slt i64 %t156, %t157
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb20, label %bb21
bb20:
  br label %bb28
bb21:
  br label %bb22
bb22:
  %t164 = load i64, ptr %l11, !tbaa !24
  %t165 = load i64, ptr %l15, !tbaa !24
  %t166 = load i64, ptr %l13, !tbaa !24
  %t169 = mul i64 %t165, %t166
  %t172 = add i64 %t164, %t169
  store i64 %t172, ptr %l16, !tbaa !24
  %t174 = load i64, ptr %l16, !tbaa !24
  %t176 = sub i64 %t174, 15
  %t178 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t176
  %t179 = load i32, ptr %t178, !tbaa !84
  %t181 = call i32 @compiler_2fbuild_2erotr(i32 %t179, i32 7)
  store i32 %t181, ptr %l122
  br label %bb23
bb23:
  %t182 = load i64, ptr %l16, !tbaa !24
  %t184 = sub i64 %t182, 15
  %t186 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t184
  %t187 = load i32, ptr %t186, !tbaa !84
  %t189 = call i32 @compiler_2fbuild_2erotr(i32 %t187, i32 18)
  store i32 %t189, ptr %l126
  br label %bb24
bb24:
  %t190 = load i32, ptr %l122, !tbaa !64
  %t191 = load i32, ptr %l126, !tbaa !64
  %t192 = xor i32 %t190, %t191
  %t193 = load i64, ptr %l16, !tbaa !24
  %t195 = sub i64 %t193, 15
  %t197 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t195
  %t198 = load i32, ptr %t197, !tbaa !84
  %t200 = lshr i32 %t198, 3
  %t203 = xor i32 %t192, %t200
  store i32 %t203, ptr %l17, !tbaa !64
  %t205 = load i64, ptr %l16, !tbaa !24
  %t207 = sub i64 %t205, 2
  %t209 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t207
  %t210 = load i32, ptr %t209, !tbaa !84
  %t212 = call i32 @compiler_2fbuild_2erotr(i32 %t210, i32 17)
  store i32 %t212, ptr %l136
  br label %bb25
bb25:
  %t213 = load i64, ptr %l16, !tbaa !24
  %t215 = sub i64 %t213, 2
  %t217 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t215
  %t218 = load i32, ptr %t217, !tbaa !84
  %t220 = call i32 @compiler_2fbuild_2erotr(i32 %t218, i32 19)
  store i32 %t220, ptr %l140
  br label %bb26
bb26:
  %t221 = load i32, ptr %l136, !tbaa !64
  %t222 = load i32, ptr %l140, !tbaa !64
  %t223 = xor i32 %t221, %t222
  %t224 = load i64, ptr %l16, !tbaa !24
  %t226 = sub i64 %t224, 2
  %t228 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t226
  %t229 = load i32, ptr %t228, !tbaa !84
  %t231 = lshr i32 %t229, 10
  %t234 = xor i32 %t223, %t231
  %t236 = load i64, ptr %l16, !tbaa !24
  %t237 = load i64, ptr %l16, !tbaa !24
  %t239 = sub i64 %t237, 16
  %t241 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t239
  %t242 = load i32, ptr %t241, !tbaa !84
  %t243 = load i32, ptr %l17, !tbaa !64
  %t246 = add i32 %t242, %t243
  %t247 = load i64, ptr %l16, !tbaa !24
  %t249 = sub i64 %t247, 7
  %t251 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t249
  %t252 = load i32, ptr %t251, !tbaa !84
  %t255 = add i32 %t246, %t252
  %t259 = add i32 %t255, %t234
  %t262 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t236
  store i32 %t259, ptr %t262, !tbaa !84
  br label %bb27
bb27:
  %t263 = load i64, ptr %l15, !tbaa !24
  %t265 = add i64 %t263, 1
  store i64 %t265, ptr %l15, !tbaa !24
  br label %bb19
bb28:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/build:Sha256", ptr %t267, i32 0, i32 0
  %t270 = getelementptr [8 x i32], ptr %t269, i64 0, i64 0
  %t271 = load i32, ptr %t270, !tbaa !84
  store i32 %t271, ptr %l19, !tbaa !64
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/build:Sha256", ptr %t273, i32 0, i32 0
  %t276 = getelementptr [8 x i32], ptr %t275, i64 0, i64 1
  %t277 = load i32, ptr %t276, !tbaa !84
  store i32 %t277, ptr %l20, !tbaa !64
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/build:Sha256", ptr %t279, i32 0, i32 0
  %t282 = getelementptr [8 x i32], ptr %t281, i64 0, i64 2
  %t283 = load i32, ptr %t282, !tbaa !84
  store i32 %t283, ptr %l21, !tbaa !64
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/build:Sha256", ptr %t285, i32 0, i32 0
  %t288 = getelementptr [8 x i32], ptr %t287, i64 0, i64 3
  %t289 = load i32, ptr %t288, !tbaa !84
  store i32 %t289, ptr %l22, !tbaa !64
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/build:Sha256", ptr %t291, i32 0, i32 0
  %t294 = getelementptr [8 x i32], ptr %t293, i64 0, i64 4
  %t295 = load i32, ptr %t294, !tbaa !84
  store i32 %t295, ptr %l23, !tbaa !64
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/build:Sha256", ptr %t297, i32 0, i32 0
  %t300 = getelementptr [8 x i32], ptr %t299, i64 0, i64 5
  %t301 = load i32, ptr %t300, !tbaa !84
  store i32 %t301, ptr %l24, !tbaa !64
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/build:Sha256", ptr %t303, i32 0, i32 0
  %t306 = getelementptr [8 x i32], ptr %t305, i64 0, i64 6
  %t307 = load i32, ptr %t306, !tbaa !84
  store i32 %t307, ptr %l25, !tbaa !64
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"compiler/build:Sha256", ptr %t309, i32 0, i32 0
  %t312 = getelementptr [8 x i32], ptr %t311, i64 0, i64 7
  %t313 = load i32, ptr %t312, !tbaa !84
  store i32 %t313, ptr %l26, !tbaa !64
  store i64 0, ptr %l27, !tbaa !24
  store i64 64, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t315 = load i64, ptr %l28, !tbaa !24
  %t316 = load i64, ptr %l27, !tbaa !24
  %t319 = icmp sgt i64 %t315, %t316
  br i1 %t319, label %bb29, label %bb30
bb29:
  %t321 = load i64, ptr %l29, !tbaa !24
  %t323 = icmp sgt i64 %t321, 0
  br i1 %t323, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l180, !tbaa !24
  br label %bb34
bb31:
  %t325 = load i64, ptr %l28, !tbaa !24
  %t326 = load i64, ptr %l27, !tbaa !24
  %t329 = sub i64 %t325, %t326
  %t330 = load i64, ptr %l29, !tbaa !24
  %t333 = add i64 %t329, %t330
  %t335 = sub i64 %t333, 1
  %t336 = load i64, ptr %l29, !tbaa !24
  %t339 = sdiv i64 %t335, %t336
  store i64 %t339, ptr %l183, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l183, !tbaa !24
  br label %bb33
bb33:
  %t341 = load i64, ptr %l183, !tbaa !24
  store i64 %t341, ptr %l180, !tbaa !24
  br label %bb34
bb34:
  %t342 = load i64, ptr %l180, !tbaa !24
  store i64 %t342, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb35
bb35:
  %t343 = load i64, ptr %l31, !tbaa !24
  %t344 = load i64, ptr %l30, !tbaa !24
  %t347 = icmp slt i64 %t343, %t344
  %t349 = xor i1 %t347, true
  br i1 %t349, label %bb36, label %bb37
bb36:
  br label %bb46
bb37:
  br label %bb38
bb38:
  %t351 = load i64, ptr %l27, !tbaa !24
  %t352 = load i64, ptr %l31, !tbaa !24
  %t353 = load i64, ptr %l29, !tbaa !24
  %t356 = mul i64 %t352, %t353
  %t359 = add i64 %t351, %t356
  store i64 %t359, ptr %l32, !tbaa !24
  %t361 = load i32, ptr %l23, !tbaa !64
  %t363 = call i32 @compiler_2fbuild_2erotr(i32 %t361, i32 6)
  store i32 %t363, ptr %l202
  br label %bb39
bb39:
  %t364 = load i32, ptr %l23, !tbaa !64
  %t366 = call i32 @compiler_2fbuild_2erotr(i32 %t364, i32 11)
  store i32 %t366, ptr %l204
  br label %bb40
bb40:
  %t367 = load i32, ptr %l202, !tbaa !64
  %t368 = load i32, ptr %l204, !tbaa !64
  %t369 = xor i32 %t367, %t368
  store i32 %t369, ptr %l205, !tbaa !64
  %t370 = load i32, ptr %l23, !tbaa !64
  %t372 = call i32 @compiler_2fbuild_2erotr(i32 %t370, i32 25)
  store i32 %t372, ptr %l207
  br label %bb41
bb41:
  %t373 = load i32, ptr %l205, !tbaa !64
  %t374 = load i32, ptr %l207, !tbaa !64
  %t375 = xor i32 %t373, %t374
  %t377 = load i32, ptr %l23, !tbaa !64
  %t378 = load i32, ptr %l24, !tbaa !64
  %t381 = and i32 %t377, %t378
  %t382 = load i32, ptr %l23, !tbaa !64
  %t384 = xor i32 %t382, -1
  %t385 = load i32, ptr %l25, !tbaa !64
  %t388 = and i32 %t384, %t385
  %t391 = xor i32 %t381, %t388
  %t393 = load i32, ptr %l26, !tbaa !64
  %t397 = add i32 %t393, %t375
  %t401 = add i32 %t397, %t391
  %t402 = load i64, ptr %l32, !tbaa !24
  %t404 = getelementptr [64 x i32], ptr @G_2ecompiler_2fbuild_2eShaK, i64 0, i64 %t402
  %t405 = load i32, ptr %t404, !tbaa !84
  %t408 = add i32 %t401, %t405
  %t409 = load i64, ptr %l32, !tbaa !24
  %t411 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t409
  %t412 = load i32, ptr %t411, !tbaa !84
  %t415 = add i32 %t408, %t412
  store i32 %t415, ptr %l35, !tbaa !64
  %t417 = load i32, ptr %l19, !tbaa !64
  %t419 = call i32 @compiler_2fbuild_2erotr(i32 %t417, i32 2)
  store i32 %t419, ptr %l229
  br label %bb42
bb42:
  %t420 = load i32, ptr %l19, !tbaa !64
  %t422 = call i32 @compiler_2fbuild_2erotr(i32 %t420, i32 13)
  store i32 %t422, ptr %l231
  br label %bb43
bb43:
  %t423 = load i32, ptr %l229, !tbaa !64
  %t424 = load i32, ptr %l231, !tbaa !64
  %t425 = xor i32 %t423, %t424
  store i32 %t425, ptr %l232, !tbaa !64
  %t426 = load i32, ptr %l19, !tbaa !64
  %t428 = call i32 @compiler_2fbuild_2erotr(i32 %t426, i32 22)
  store i32 %t428, ptr %l234
  br label %bb44
bb44:
  %t429 = load i32, ptr %l232, !tbaa !64
  %t430 = load i32, ptr %l234, !tbaa !64
  %t431 = xor i32 %t429, %t430
  %t433 = load i32, ptr %l19, !tbaa !64
  %t434 = load i32, ptr %l20, !tbaa !64
  %t437 = and i32 %t433, %t434
  %t438 = load i32, ptr %l19, !tbaa !64
  %t439 = load i32, ptr %l21, !tbaa !64
  %t442 = and i32 %t438, %t439
  %t445 = xor i32 %t437, %t442
  %t446 = load i32, ptr %l20, !tbaa !64
  %t447 = load i32, ptr %l21, !tbaa !64
  %t450 = and i32 %t446, %t447
  %t453 = xor i32 %t445, %t450
  %t455 = load i32, ptr %l25, !tbaa !64
  store i32 %t455, ptr %l26, !tbaa !64
  %t457 = load i32, ptr %l24, !tbaa !64
  store i32 %t457, ptr %l25, !tbaa !64
  %t459 = load i32, ptr %l23, !tbaa !64
  store i32 %t459, ptr %l24, !tbaa !64
  %t461 = load i32, ptr %l22, !tbaa !64
  %t462 = load i32, ptr %l35, !tbaa !64
  %t465 = add i32 %t461, %t462
  store i32 %t465, ptr %l23, !tbaa !64
  %t467 = load i32, ptr %l21, !tbaa !64
  store i32 %t467, ptr %l22, !tbaa !64
  %t469 = load i32, ptr %l20, !tbaa !64
  store i32 %t469, ptr %l21, !tbaa !64
  %t471 = load i32, ptr %l19, !tbaa !64
  store i32 %t471, ptr %l20, !tbaa !64
  %t473 = load i32, ptr %l35, !tbaa !64
  %t477 = add i32 %t473, %t431
  %t481 = add i32 %t477, %t453
  store i32 %t481, ptr %l19, !tbaa !64
  br label %bb45
bb45:
  %t483 = load i64, ptr %l31, !tbaa !24
  %t485 = add i64 %t483, 1
  store i64 %t485, ptr %l31, !tbaa !24
  br label %bb35
bb46:
  %t487 = load ptr, ptr %l0, !tbaa !29
  store ptr %t487, ptr %l263, !tbaa !29
  %t488 = load ptr, ptr %l263, !tbaa !29
  %t489 = getelementptr %"compiler/build:Sha256", ptr %t488, i32 0, i32 0
  %t490 = getelementptr [8 x i32], ptr %t489, i64 0, i64 0
  %t491 = load i32, ptr %t490, !tbaa !84
  %t492 = load i32, ptr %l19, !tbaa !64
  %t495 = add i32 %t491, %t492
  %t497 = load ptr, ptr %l263, !tbaa !29
  %t498 = getelementptr %"compiler/build:Sha256", ptr %t497, i32 0, i32 0
  %t499 = getelementptr [8 x i32], ptr %t498, i64 0, i64 0
  store i32 %t495, ptr %t499, !tbaa !84
  %t500 = load ptr, ptr %l0, !tbaa !29
  store ptr %t500, ptr %l267, !tbaa !29
  %t501 = load ptr, ptr %l267, !tbaa !29
  %t502 = getelementptr %"compiler/build:Sha256", ptr %t501, i32 0, i32 0
  %t503 = getelementptr [8 x i32], ptr %t502, i64 0, i64 1
  %t504 = load i32, ptr %t503, !tbaa !84
  %t505 = load i32, ptr %l20, !tbaa !64
  %t508 = add i32 %t504, %t505
  %t510 = load ptr, ptr %l267, !tbaa !29
  %t511 = getelementptr %"compiler/build:Sha256", ptr %t510, i32 0, i32 0
  %t512 = getelementptr [8 x i32], ptr %t511, i64 0, i64 1
  store i32 %t508, ptr %t512, !tbaa !84
  %t513 = load ptr, ptr %l0, !tbaa !29
  store ptr %t513, ptr %l271, !tbaa !29
  %t514 = load ptr, ptr %l271, !tbaa !29
  %t515 = getelementptr %"compiler/build:Sha256", ptr %t514, i32 0, i32 0
  %t516 = getelementptr [8 x i32], ptr %t515, i64 0, i64 2
  %t517 = load i32, ptr %t516, !tbaa !84
  %t518 = load i32, ptr %l21, !tbaa !64
  %t521 = add i32 %t517, %t518
  %t523 = load ptr, ptr %l271, !tbaa !29
  %t524 = getelementptr %"compiler/build:Sha256", ptr %t523, i32 0, i32 0
  %t525 = getelementptr [8 x i32], ptr %t524, i64 0, i64 2
  store i32 %t521, ptr %t525, !tbaa !84
  %t526 = load ptr, ptr %l0, !tbaa !29
  store ptr %t526, ptr %l275, !tbaa !29
  %t527 = load ptr, ptr %l275, !tbaa !29
  %t528 = getelementptr %"compiler/build:Sha256", ptr %t527, i32 0, i32 0
  %t529 = getelementptr [8 x i32], ptr %t528, i64 0, i64 3
  %t530 = load i32, ptr %t529, !tbaa !84
  %t531 = load i32, ptr %l22, !tbaa !64
  %t534 = add i32 %t530, %t531
  %t536 = load ptr, ptr %l275, !tbaa !29
  %t537 = getelementptr %"compiler/build:Sha256", ptr %t536, i32 0, i32 0
  %t538 = getelementptr [8 x i32], ptr %t537, i64 0, i64 3
  store i32 %t534, ptr %t538, !tbaa !84
  %t539 = load ptr, ptr %l0, !tbaa !29
  store ptr %t539, ptr %l279, !tbaa !29
  %t540 = load ptr, ptr %l279, !tbaa !29
  %t541 = getelementptr %"compiler/build:Sha256", ptr %t540, i32 0, i32 0
  %t542 = getelementptr [8 x i32], ptr %t541, i64 0, i64 4
  %t543 = load i32, ptr %t542, !tbaa !84
  %t544 = load i32, ptr %l23, !tbaa !64
  %t547 = add i32 %t543, %t544
  %t549 = load ptr, ptr %l279, !tbaa !29
  %t550 = getelementptr %"compiler/build:Sha256", ptr %t549, i32 0, i32 0
  %t551 = getelementptr [8 x i32], ptr %t550, i64 0, i64 4
  store i32 %t547, ptr %t551, !tbaa !84
  %t552 = load ptr, ptr %l0, !tbaa !29
  store ptr %t552, ptr %l283, !tbaa !29
  %t553 = load ptr, ptr %l283, !tbaa !29
  %t554 = getelementptr %"compiler/build:Sha256", ptr %t553, i32 0, i32 0
  %t555 = getelementptr [8 x i32], ptr %t554, i64 0, i64 5
  %t556 = load i32, ptr %t555, !tbaa !84
  %t557 = load i32, ptr %l24, !tbaa !64
  %t560 = add i32 %t556, %t557
  %t562 = load ptr, ptr %l283, !tbaa !29
  %t563 = getelementptr %"compiler/build:Sha256", ptr %t562, i32 0, i32 0
  %t564 = getelementptr [8 x i32], ptr %t563, i64 0, i64 5
  store i32 %t560, ptr %t564, !tbaa !84
  %t565 = load ptr, ptr %l0, !tbaa !29
  store ptr %t565, ptr %l287, !tbaa !29
  %t566 = load ptr, ptr %l287, !tbaa !29
  %t567 = getelementptr %"compiler/build:Sha256", ptr %t566, i32 0, i32 0
  %t568 = getelementptr [8 x i32], ptr %t567, i64 0, i64 6
  %t569 = load i32, ptr %t568, !tbaa !84
  %t570 = load i32, ptr %l25, !tbaa !64
  %t573 = add i32 %t569, %t570
  %t575 = load ptr, ptr %l287, !tbaa !29
  %t576 = getelementptr %"compiler/build:Sha256", ptr %t575, i32 0, i32 0
  %t577 = getelementptr [8 x i32], ptr %t576, i64 0, i64 6
  store i32 %t573, ptr %t577, !tbaa !84
  %t578 = load ptr, ptr %l0, !tbaa !29
  store ptr %t578, ptr %l291, !tbaa !29
  %t579 = load ptr, ptr %l291, !tbaa !29
  %t580 = getelementptr %"compiler/build:Sha256", ptr %t579, i32 0, i32 0
  %t581 = getelementptr [8 x i32], ptr %t580, i64 0, i64 7
  %t582 = load i32, ptr %t581, !tbaa !84
  %t583 = load i32, ptr %l26, !tbaa !64
  %t586 = add i32 %t582, %t583
  %t588 = load ptr, ptr %l291, !tbaa !29
  %t589 = getelementptr %"compiler/build:Sha256", ptr %t588, i32 0, i32 0
  %t590 = getelementptr [8 x i32], ptr %t589, i64 0, i64 7
  store i32 %t586, ptr %t590, !tbaa !84
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
  %t5 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d309, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d309, i32 0, i32 1) }, 0
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
  %t92 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d310, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d310, i32 0, i32 1) }, 0
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
  %t14 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eHas(ptr %v2, ptr %s0, ptr %t12, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d311, i32 0, i32 1) })
  store i1 %t14, ptr %l15
  br label %bb1
bb1:
  %t15 = load i1, ptr %l15, !tbaa !21
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr %"compiler/build:Config", ptr %t16, i32 0, i32 3
  %t20 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eRaw(ptr %v2, ptr %s0, ptr %s0, ptr %t18, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d312, i32 0, i32 1) })
  store { i64, ptr } %t20, ptr %l19
  br label %bb4
bb3:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d313, i32 0, i32 1) }, ptr %l16, !tbaa !27
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
  %t35 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d314, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d314, i32 0, i32 1) }, 0
  %t38 = extractvalue { i64, ptr } %t34, 1
  %t39 = extractvalue { i64, ptr } %t34, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d315, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d315, i32 0, i32 1) }, 0
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
  %t55 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t58 = extractvalue { i64, ptr } %t54, 1
  %t59 = extractvalue { i64, ptr } %t54, 0
  %t60 = add i64 %t56, %t59
  %t61 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
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
  %t84 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d318, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d318, i32 0, i32 1) }, 0
  %t86 = add i64 %t83, %t85
  %t88 = extractvalue { i64, ptr } %t79, 1
  %t89 = extractvalue { i64, ptr } %t79, 0
  %t90 = add i64 %t86, %t89
  %t91 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d319, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d319, i32 0, i32 1) }, 0
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
  %t118 = call %"compiler/build:Unit" @compiler_2fbuild_3aUnit_2ector(ptr %v3, ptr %v3, ptr %v3, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d320, i32 0, i32 1) }, i32 %t116, { i64, ptr } %t115)
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
  %t138 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d321, i32 0, i32 1) }, 1
  %t139 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d321, i32 0, i32 1) }, 0
  %t140 = add i64 %t137, %t139
  %t142 = call i64 @__olang_fmt_i64(ptr null, i64 %t133)
  %t143 = add i64 %t140, %t142
  %t144 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d322, i32 0, i32 1) }, 1
  %t145 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d322, i32 0, i32 1) }, 0
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
  %t172 = call %"compiler/build:Unit" @compiler_2fbuild_3aUnit_2ector(ptr %v3, ptr %v3, ptr %v3, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d323, i32 0, i32 1) }, i32 %t170, { i64, ptr } %t169)
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
  %t180 = extractvalue { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d324, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d324, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t183 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d325, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d325, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t186 = extractvalue { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d326, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d326, i32 0, i32 1) }, 0
  %t188 = add i64 %t185, %t187
  %t189 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d327, i32 0, i32 1) }, 1
  %t190 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d327, i32 0, i32 1) }, 0
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
  %t225 = call %"compiler/build:Unit" @compiler_2fbuild_3aUnit_2ector(ptr %v3, ptr %v3, ptr %v3, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d328, i32 0, i32 1) }, i32 %t223, { i64, ptr } %t222)
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
  %t241 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d329, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d329, i32 0, i32 1) }, 0
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
  %t266 = call %"compiler/build:Unit" @compiler_2fbuild_3aUnit_2ector(ptr %v3, ptr %v3, ptr %v3, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d330, i32 0, i32 1) }, i32 %t264, { i64, ptr } %t263)
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
  %t280 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d331, i32 0, i32 1) }, 1
  %t281 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d331, i32 0, i32 1) }, 0
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

define dso_local { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3astubFrontend_2eExplain(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t2 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d332, i32 0, i32 1) }, 1
  %t3 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d332, i32 0, i32 1) }, 0
  %t5 = extractvalue { i64, ptr } %a2, 1
  %t6 = extractvalue { i64, ptr } %a2, 0
  %t7 = add i64 %t3, %t6
  %t8 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d333, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d333, i32 0, i32 1) }, 0
  %t10 = add i64 %t7, %t9
  %t11 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t10)
  call void @olang_textcopy(ptr %t11, ptr %t2, i64 %t3)
  %t12 = getelementptr i8, ptr %t11, i64 %t3
  call void @olang_textcopy(ptr %t12, ptr %t5, i64 %t6)
  %t13 = getelementptr i8, ptr %t12, i64 %t6
  call void @olang_textcopy(ptr %t13, ptr %t8, i64 %t9)
  %t14 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t11, 1
  %t17 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t15, 1
  store { i32, { i64, ptr } } %t17, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, i32 } @compiler_2fbuild_2ecompiler_2fbuild_3astubFrontend_2eInterpret(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, ptr } %a2, 0
  %t5 = trunc i64 %t3 to i32
  %t7 = insertvalue { i32, i32 } zeroinitializer, i32 %t5, 1
  store { i32, i32 } %t7, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i32 @compiler_2fbuild_2eexecTests(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"std/os:Output"
  %l8 = alloca i32
  %l9 = alloca %"std/os:Output"
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/os:Output"
  %l13 = alloca i32
  %l15 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/build:Config", ptr %a0, i32 0, i32 16
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t10 = call i32 @compiler_2fmeasure_2eMeasure(ptr %v1, ptr %s1, { i64, ptr } %t6, i64 %a2, i64 1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d334, i32 0, i32 1) })
  store i32 %t10, ptr %l8
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t11 = load i32, ptr %l8, !tbaa !23
  store i32 %t11, ptr %rv
  br label %ret
bb4:
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t15 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v1, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t12, { i64, ptr } %t14, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  %t16 = extractvalue { i32, %"std/os:Output" } %t15, 1
  %t17 = extractvalue { i32, %"std/os:Output" } %t15, 0
  store i32 %t17, ptr %l13
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb6, label %ok.19, !prof !99
ok.19:
  store %"std/os:Output" %t16, ptr %l12
  br label %bb5
bb5:
  %t20 = load %"std/os:Output", ptr %l12
  store %"std/os:Output" %t20, ptr %l9
  br label %bb10
bb6:
  %t21 = load i32, ptr %l13, !tbaa !23
  %t22 = ashr i32 %t21, 16
  %t24 = icmp eq i32 %t22, 1
  store i1 %t24, ptr %l15, !tbaa !21
  %t25 = load i32, ptr %l13, !tbaa !23
  %t26 = ashr i32 %t25, 16
  %t28 = icmp eq i32 %t26, 1
  br i1 %t28, label %bb7, label %bb8
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i32 -1, ptr %rv
  br label %ret
bb10:
  %t31 = load %"std/os:Output", ptr %l9
  store %"std/os:Output" %t31, ptr %l3
  %t32 = getelementptr %"std/os:Output", ptr %l3, i32 0, i32 0
  %t33 = load i32, ptr %t32, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fbuild_2efileError(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, %"compiler/diagmsg:Msg" %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca i64
  %l11 = alloca i64
  %t9 = alloca { i64, [3 x i64] }, align 8
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v2, ptr %v0, ptr %v2, ptr %t1, { i64, ptr } %a0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d335, i32 0, i32 1) }, i1 false)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l2, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [3 x i64] }, ptr %t9, i32 0, i32 0
  store i64 1, ptr %t10
  %t12 = insertvalue { i64 } undef, i64 %t6, 0
  %t13 = getelementptr { i64, [3 x i64] }, ptr %t9, i32 0, i32 1
  store { i64 } %t12, ptr %t13
  %t14 = load { i64, [3 x i64] }, ptr %t9
  %t19 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v2, ptr %v1, ptr %t7, { i64, [3 x i64] } %t14, %"compiler/diagmsg:Msg" %a1)
  store i64 %t19, ptr %l11
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbuild_2efileFatal(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, %"compiler/diagmsg:Msg" %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca i64
  %t9 = alloca { i64, [3 x i64] }, align 8
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v2, ptr %v0, ptr %v2, ptr %t1, { i64, ptr } %a0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d336, i32 0, i32 1) }, i1 false)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l2, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [3 x i64] }, ptr %t9, i32 0, i32 0
  store i64 1, ptr %t10
  %t12 = insertvalue { i64 } undef, i64 %t6, 0
  %t13 = getelementptr { i64, [3 x i64] }, ptr %t9, i32 0, i32 1
  store { i64 } %t12, ptr %t13
  %t14 = load { i64, [3 x i64] }, ptr %t9
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v2, ptr %v1, ptr %t7, { i64, [3 x i64] } %t14, %"compiler/diagmsg:Msg" %a1)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
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
  call void @compiler_2fspin_2eEnd()
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %s0, ptr %t1)
  store { i64, ptr } %t3, ptr %l2
  br label %bb2
bb2:
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = mul i64 %t5, 1
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @llvm.memcpy.p0.p0.i64(ptr %t8, ptr %t6, i64 %t7, i1 false)
  %t9 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  call void @compiler_2fbuild_2esay(ptr %s0, { i64, ptr } %t10)
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSummary(ptr %v0, ptr %s0, ptr %t12)
  store { i64, ptr } %t14, ptr %l5
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  %t17 = extractvalue { i64, ptr } %t15, 1
  %t18 = mul i64 %t16, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t18)
  call void @llvm.memcpy.p0.p0.i64(ptr %t19, ptr %t17, i64 %t18, i1 false)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  call void @compiler_2fbuild_2esay(ptr %s0, { i64, ptr } %t21)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2ehexOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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

define dso_local { i64, ptr } @compiler_2fbuild_2ehoisted(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i1
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l36 = alloca %"std/prelude/text:StringBuilder"
  %l37 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l61 = alloca i1
  %l63 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l77 = alloca i64
  %l80 = alloca { i64, ptr }
  %l82 = alloca [3 x { i64, ptr }]
  %l83 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %s0, { i64, ptr } %t1)
  store { i64, ptr } %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d337, i32 0, i32 1) }, ptr %l15, !tbaa !27
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d338, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t8 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t4, { i64, ptr } %t6, { i64, ptr } %t7)
  store { i64, ptr } %t8, ptr %l17
  br label %bb2
bb2:
  %t9 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l18, !tbaa !24
  %t11 = load i64, ptr %l18, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l19, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l18, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t22, ptr %l3, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d339, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t28 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t24, { i64, ptr } %t27)
  store i1 %t28, ptr %l24
  br label %bb3
bb3:
  %t29 = load i1, ptr %l24, !tbaa !21
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t32 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %s0, { i64, ptr } %t30)
  store { i64, ptr } %t32, ptr %l27
  br label %bb6
bb5:
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 1
  %t36 = extractvalue { i64, ptr } %t33, 0
  %t37 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t35, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l25, !tbaa !27
  br label %bb7
bb6:
  %t41 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d340, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d340, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t49 = extractvalue { i64, ptr } %t41, 1
  %t50 = extractvalue { i64, ptr } %t41, 0
  %t51 = add i64 %t47, %t50
  %t52 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t51)
  call void @olang_textcopy(ptr %t52, ptr %t43, i64 %t44)
  %t53 = getelementptr i8, ptr %t52, i64 %t44
  call void @olang_textcopy(ptr %t53, ptr %t45, i64 %t46)
  %t54 = getelementptr i8, ptr %t53, i64 %t46
  call void @olang_textcopy(ptr %t54, ptr %t49, i64 %t50)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t52, 1
  store { i64, ptr } %t56, ptr %l25, !tbaa !27
  br label %bb7
bb7:
  %t58 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t58, ptr %l4, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 1
  %t62 = extractvalue { i64, ptr } %t59, 0
  %t63 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d341, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d341, i32 0, i32 1) }, 0
  %t65 = add i64 %t62, %t64
  %t66 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t65)
  call void @olang_textcopy(ptr %t66, ptr %t61, i64 %t62)
  %t67 = getelementptr i8, ptr %t66, i64 %t62
  call void @olang_textcopy(ptr %t67, ptr %t63, i64 %t64)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t66, 1
  store { i64, ptr } %t69, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 129, ptr getelementptr inbounds (<{ i64, [129 x i8] }>, ptr @.d342, i32 0, i32 1) }, ptr %l34, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t71, ptr %l6, !tbaa !27
  %t73 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t73, ptr %l36
  br label %bb8
bb8:
  %t74 = load %"std/prelude/text:StringBuilder", ptr %l36
  store %"std/prelude/text:StringBuilder" %t74, ptr %l7
  store ptr %l7, ptr %l37, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t77 = call { i64, ptr } @std_2fos_2eQuote(ptr %s0, ptr %s0, { i64, ptr } %t75)
  store { i64, ptr } %t77, ptr %l39
  br label %bb9
bb9:
  %t78 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t80 = call { i64, ptr } @std_2fos_2eQuote(ptr %s0, ptr %s0, { i64, ptr } %t78)
  store { i64, ptr } %t80, ptr %l41
  br label %bb10
bb10:
  %t81 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t83 = call { i64, ptr } @std_2fos_2eQuote(ptr %v2, ptr %s0, { i64, ptr } %t81)
  store { i64, ptr } %t83, ptr %l43
  br label %bb11
bb11:
  %t84 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t86 = call { i64, ptr } @std_2fos_2eQuote(ptr %s0, ptr %s0, { i64, ptr } %t84)
  store { i64, ptr } %t86, ptr %l45
  br label %bb12
bb12:
  %t87 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d343, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d343, i32 0, i32 1) }, 0
  %t92 = add i64 %t89, %t91
  %t93 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = add i64 %t92, %t95
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d344, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d344, i32 0, i32 1) }, 0
  %t99 = add i64 %t96, %t98
  %t100 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t103 = add i64 %t99, %t102
  %t104 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d345, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d345, i32 0, i32 1) }, 0
  %t106 = add i64 %t103, %t105
  %t107 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t107, 1
  %t109 = extractvalue { i64, ptr } %t107, 0
  %t110 = add i64 %t106, %t109
  %t111 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d346, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d346, i32 0, i32 1) }, 0
  %t113 = add i64 %t110, %t112
  %t114 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t113)
  call void @olang_textcopy(ptr %t114, ptr %t88, i64 %t89)
  %t115 = getelementptr i8, ptr %t114, i64 %t89
  call void @olang_textcopy(ptr %t115, ptr %t90, i64 %t91)
  %t116 = getelementptr i8, ptr %t115, i64 %t91
  call void @olang_textcopy(ptr %t116, ptr %t94, i64 %t95)
  %t117 = getelementptr i8, ptr %t116, i64 %t95
  call void @olang_textcopy(ptr %t117, ptr %t97, i64 %t98)
  %t118 = getelementptr i8, ptr %t117, i64 %t98
  call void @olang_textcopy(ptr %t118, ptr %t101, i64 %t102)
  %t119 = getelementptr i8, ptr %t118, i64 %t102
  call void @olang_textcopy(ptr %t119, ptr %t104, i64 %t105)
  %t120 = getelementptr i8, ptr %t119, i64 %t105
  call void @olang_textcopy(ptr %t120, ptr %t108, i64 %t109)
  %t121 = getelementptr i8, ptr %t120, i64 %t109
  call void @olang_textcopy(ptr %t121, ptr %t111, i64 %t112)
  %t122 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t114, 1
  %t125 = extractvalue { i64, ptr } %t123, 0
  %t126 = extractvalue { i64, ptr } %t123, 1
  %t127 = mul i64 %t125, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t127)
  call void @llvm.memcpy.p0.p0.i64(ptr %t128, ptr %t126, i64 %t127, i1 false)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  %t131 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t131, { i64, ptr } %t130)
  br label %bb13
bb13:
  store { i64, ptr } %a1, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t135 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t135, 0
  store i64 %t137, ptr %l10, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s6
  %t139 = load i64, ptr %l9, !tbaa !24
  %t140 = load i64, ptr %l10, !tbaa !24
  %t143 = icmp slt i64 %t139, %t140
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s6)
  br label %bb25
bb16:
  br label %bb17
bb17:
  %t147 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t147, ptr %l55, !tbaa !27
  %t148 = load i64, ptr %l9, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr { i64, ptr }, ptr %t151, i64 %t148
  %t153 = load { i64, ptr }, ptr %t152, !tbaa !37
  store { i64, ptr } %t153, ptr %l11, !tbaa !27
  store ptr %l7, ptr %l58, !tbaa !29
  %t155 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t156 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t159 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %v2, { i64, ptr } %t155, { i64, ptr } %t156)
  store i1 %t159, ptr %l61
  br label %bb18
bb18:
  %t160 = load i1, ptr %l61, !tbaa !21
  %t161 = xor i1 %t160, true
  br i1 %t161, label %bb19, label %bb20
bb19:
  %t163 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t163, ptr %l63, !tbaa !27
  br label %bb21
bb20:
  %t165 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t165, ptr %l63, !tbaa !27
  br label %bb21
bb21:
  %t167 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = call ptr @__olang_scope_of(ptr %t168, ptr null)
  %t170 = ptrtoint ptr %t169 to i64
  %t172 = inttoptr i64 %t170 to ptr
  %t173 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t174 = call { i64, ptr } @std_2fos_2eQuote(ptr %t172, ptr %s6, { i64, ptr } %t173)
  store { i64, ptr } %t174, ptr %l67
  br label %bb22
bb22:
  %t175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t176 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
  %t177 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t177, 1
  %t179 = extractvalue { i64, ptr } %t177, 0
  %t180 = add i64 %t176, %t179
  %t181 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t180)
  call void @olang_textcopy(ptr %t181, ptr %t175, i64 %t176)
  %t182 = getelementptr i8, ptr %t181, i64 %t176
  call void @olang_textcopy(ptr %t182, ptr %t178, i64 %t179)
  %t183 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t181, 1
  %t186 = extractvalue { i64, ptr } %t184, 0
  %t187 = extractvalue { i64, ptr } %t184, 1
  %t188 = mul i64 %t186, 1
  %t189 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t188)
  call void @llvm.memcpy.p0.p0.i64(ptr %t189, ptr %t187, i64 %t188, i1 false)
  %t190 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  %t192 = load ptr, ptr %l58, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t192, { i64, ptr } %t191)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s6)
  br label %bb24
bb24:
  %t194 = load i64, ptr %l9, !tbaa !24
  %t196 = add i64 %t194, 1
  store i64 %t196, ptr %l9, !tbaa !24
  br label %bb14
bb25:
  store ptr %l7, ptr %l72, !tbaa !29
  %t198 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t200 = call { i64, ptr } @std_2fos_2eQuote(ptr %s0, ptr %s0, { i64, ptr } %t198)
  store { i64, ptr } %t200, ptr %l74
  br label %bb26
bb26:
  %t201 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d348, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d348, i32 0, i32 1) }, 0
  %t203 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t203, 1
  %t205 = extractvalue { i64, ptr } %t203, 0
  %t206 = add i64 %t202, %t205
  %t207 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d349, i32 0, i32 1) }, 1
  %t208 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d349, i32 0, i32 1) }, 0
  %t209 = add i64 %t206, %t208
  %t210 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t209)
  call void @olang_textcopy(ptr %t210, ptr %t201, i64 %t202)
  %t211 = getelementptr i8, ptr %t210, i64 %t202
  call void @olang_textcopy(ptr %t211, ptr %t204, i64 %t205)
  %t212 = getelementptr i8, ptr %t211, i64 %t205
  call void @olang_textcopy(ptr %t212, ptr %t207, i64 %t208)
  %t213 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t214 = insertvalue { i64, ptr } %t213, ptr %t210, 1
  %t216 = extractvalue { i64, ptr } %t214, 0
  %t217 = extractvalue { i64, ptr } %t214, 1
  %t218 = mul i64 %t216, 1
  %t219 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t218)
  call void @llvm.memcpy.p0.p0.i64(ptr %t219, ptr %t217, i64 %t218, i1 false)
  %t220 = insertvalue { i64, ptr } undef, i64 %t216, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t219, 1
  %t222 = load ptr, ptr %l72, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t222, { i64, ptr } %t221)
  br label %bb27
bb27:
  %t224 = ptrtoint ptr %v3 to i64
  store i64 %t224, ptr %l77, !tbaa !24
  %t225 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_203_3e_2e_2d1
  br i1 %t225, label %bb28, label %bb29
bb28:
  %t227 = call ptr @__olang_region_make(ptr %v3)
  %t228 = ptrtoint ptr %t227 to i64
  store i64 %t228, ptr %l77, !tbaa !24
  br label %bb29
bb29:
  %t229 = load i64, ptr %l77
  %t230 = inttoptr i64 %t229 to ptr
  %t232 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t230, ptr %l7)
  store { i64, ptr } %t232, ptr %l80
  br label %bb30
bb30:
  %t233 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t234 = load i64, ptr %l77
  %t235 = inttoptr i64 %t234 to ptr
  %t236 = extractvalue { i64, ptr } %t233, 0
  %t237 = extractvalue { i64, ptr } %t233, 1
  %t238 = mul i64 %t236, 1
  %t239 = call ptr @__olang_scope_alloc(ptr %t235, i64 %t238)
  call void @llvm.memcpy.p0.p0.i64(ptr %t239, ptr %t237, i64 %t238, i1 false)
  %t240 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t239, 1
  %t242 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d350, i32 0, i32 1) }, 0
  %t243 = insertvalue [3 x { i64, ptr }] %t242, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d351, i32 0, i32 1) }, 1
  %t245 = insertvalue [3 x { i64, ptr }] %t243, { i64, ptr } %t241, 2
  store [3 x { i64, ptr }] %t245, ptr %l82
  %t246 = mul i64 3, 16
  %t247 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t246)
  %t248 = insertvalue { i64, ptr } undef, i64 3, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t247, 1
  store { i64, ptr } %t249, ptr %l83, !tbaa !27
  %t250 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = mul i64 3, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t251, ptr %l82, i64 %t252, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t253 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t253, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %t36 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d352, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d352, i32 0, i32 1) }, 0
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
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t71, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d353, i32 0, i32 1) })
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
  %t80 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d354, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d354, i32 0, i32 1) }, 0
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

define dso_local i64 @compiler_2fbuild_2ekbOf(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:LineIter"
  %l3 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/text:LineIter"
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l11 = alloca i1
  %l14 = alloca i1
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l19 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i32
  %l34 = alloca i64
  %l35 = alloca i32
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store %"std/prelude/text:LineIter" %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load %"std/prelude/text:LineIter", ptr %l5
  store %"std/prelude/text:LineIter" %t4, ptr %l2
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t6 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l2)
  %t7 = extractvalue { i32, { i64, ptr } } %t6, 1
  %t8 = extractvalue { i32, { i64, ptr } } %t6, 0
  store i32 %t8, ptr %l9
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb4, label %ok.10, !prof !99
ok.10:
  store { i64, ptr } %t7, ptr %l8
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t11, ptr %l6, !tbaa !27
  br label %bb6
bb4:
  %t12 = load i32, ptr %l9, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  store i1 %t15, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb6:
  %t16 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t16, ptr %l3, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %t17, { i64, ptr } %t18)
  store i1 %t21, ptr %l14
  br label %bb7
bb7:
  %t22 = load i1, ptr %l14, !tbaa !21
  %t23 = xor i1 %t22, true
  br i1 %t23, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t25, ptr %l17, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  store i64 %t28, ptr %l19, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t29, 0
  store i64 %t32, ptr %l22, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l23, !tbaa !24
  %t35 = load i64, ptr %l19, !tbaa !24
  %t36 = icmp sge i64 %t35, 0
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t38 = load i64, ptr %l19, !tbaa !24
  %t39 = load i64, ptr %l22, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_55ad031485a0eb50_815537920d1d6894)
  unreachable
bb13:
  %t42 = load i64, ptr %l22, !tbaa !24
  %t43 = load i64, ptr %l23, !tbaa !24
  %t44 = icmp sle i64 %t42, %t43
  br i1 %t44, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_55ad031485a0eb50_815537920d1d6894)
  unreachable
bb15:
  %t46 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = load i64, ptr %l19, !tbaa !24
  %t49 = load i64, ptr %l22, !tbaa !24
  %t50 = getelementptr i8, ptr %t47, i64 %t48
  %t51 = sub i64 %t49, %t48
  %t52 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t50, 1
  %t55 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s2, { i64, ptr } %t53)
  store { i64, ptr } %t55, ptr %l28
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_55ad031485a0eb50_815537920d1d6894)
  unreachable
bb17:
  %t56 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t57 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s2, ptr %s2, ptr %s2, { i64, ptr } %t56, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d355, i32 0, i32 1) })
  store { i64, ptr } %t57, ptr %l29
  br label %bb18
bb18:
  %t58 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t58, ptr %l30, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %t60, i64 0
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !37
  store { i64, ptr } %t62, ptr %l31, !tbaa !27
  %t63 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s2, i64 10)
  %t64 = extractvalue { i32, i64 } %t63, 1
  %t65 = extractvalue { i32, i64 } %t63, 0
  store i32 %t65, ptr %l33
  %t66 = icmp ne i32 %t65, 0
  br i1 %t66, label %bb20, label %ok.67, !prof !99
ok.67:
  store i64 %t64, ptr %l32
  br label %bb19
bb19:
  %t68 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t69 = load i64, ptr %l32, !tbaa !24
  %t70 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s2, { i64, ptr } %t68, i64 %t69)
  %t71 = extractvalue { i32, i64 } %t70, 1
  %t72 = extractvalue { i32, i64 } %t70, 0
  store i32 %t72, ptr %l35
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb23, label %ok.74, !prof !99
ok.74:
  store i64 %t71, ptr %l34
  br label %bb22
bb20:
  br label %bb21
bb21:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb24
bb22:
  %t75 = load i64, ptr %l34, !tbaa !24
  store i64 %t75, ptr %l16, !tbaa !24
  br label %bb24
bb23:
  br label %bb21
bb24:
  call void @__olang_scope_close(ptr %s2)
  %t76 = load i64, ptr %l16, !tbaa !24
  store i64 %t76, ptr %rv
  br label %ret
bb25:
  br label %bb2
bb26:
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d356, i32 0, i32 1) }, ptr %l4, !tbaa !27
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
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d357, i32 0, i32 1) }, ptr %l8, !tbaa !27
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
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d358, i32 0, i32 1) }, ptr %l12, !tbaa !27
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
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d359, i32 0, i32 1) }, ptr %l16, !tbaa !27
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
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d360, i32 0, i32 1) }, ptr %l20, !tbaa !27
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
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d361, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d361, i32 0, i32 1) }, 0
  %t50 = add i64 %t47, %t49
  %t52 = call i64 @__olang_fmt_i64(ptr null, i64 %t42)
  %t53 = add i64 %t50, %t52
  %t54 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d361, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d361, i32 0, i32 1) }, 0
  %t56 = add i64 %t53, %t55
  %t58 = call i64 @__olang_fmt_i64(ptr null, i64 %t44)
  %t59 = add i64 %t56, %t58
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d362, i32 0, i32 1) }, 1
  %t61 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d362, i32 0, i32 1) }, 0
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
  %t58 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_363, 0
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
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d364, i32 0, i32 1) }, ptr %l51, !tbaa !27
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
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d365, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d365, i32 0, i32 1) }, 0
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
  %t127 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s5, { i64, ptr } %t125, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d366, i32 0, i32 1) })
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
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d367, i32 0, i32 1) }, ptr %l66, !tbaa !27
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
  %t138 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s5, { i64, ptr } %t136, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d368, i32 0, i32 1) })
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
  %t144 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s5, { i64, ptr } %t142, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d369, i32 0, i32 1) })
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
  %t162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d370, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d370, i32 0, i32 1) }, 0
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

define dso_local i1 @compiler_2fbuild_2emadeBefore(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l9 = alloca i1
  %l15 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = extractvalue { i64, ptr } %a0, 1
  %t4 = extractvalue { i64, ptr } %a0, 0
  %t5 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d371, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d371, i32 0, i32 1) }, 0
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
  %t20 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } %t18)
  %t21 = extractvalue { i32, { i64, ptr } } %t20, 1
  %t22 = extractvalue { i32, { i64, ptr } } %t20, 0
  store i32 %t22, ptr %l7
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb2, label %ok.24, !prof !99
ok.24:
  store { i64, ptr } %t21, ptr %l6
  br label %bb1
bb1:
  %t25 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t25, ptr %l2, !tbaa !27
  br label %bb6
bb2:
  %t26 = load i32, ptr %l7, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l9, !tbaa !21
  %t30 = load i32, ptr %l7, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d372, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb6
bb6:
  %t37 = extractvalue { i64, ptr } %a1, 1
  %t38 = extractvalue { i64, ptr } %a1, 0
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d373, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d373, i32 0, i32 1) }, 0
  %t41 = add i64 %t38, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t37, i64 %t38)
  %t43 = getelementptr i8, ptr %t42, i64 %t38
  call void @olang_textcopy(ptr %t43, ptr %t39, i64 %t40)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t48 = extractvalue { i64, ptr } %t45, 1
  %t49 = mul i64 %t47, 1
  %t50 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t49)
  call void @llvm.memcpy.p0.p0.i64(ptr %t50, ptr %t48, i64 %t49, i1 false)
  %t51 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t53, { i64, ptr } %t52)
  store i1 %t55, ptr %l15
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t56 = load i1, ptr %l15, !tbaa !21
  store i1 %t56, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2ememoryNow(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l5 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d374, i32 0, i32 1) })
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
  store i1 %t10, ptr %l5, !tbaa !21
  %t11 = load i32, ptr %l3, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d375, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t16, ptr %l9, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l10, !tbaa !24
  %t19 = load i64, ptr %l10, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l11, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l10, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t30, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t31 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t31, ptr %rv
  br label %ret
bb6:
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t32, ptr %l0, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t35 = call i64 @compiler_2fbuild_2ekbOf(ptr %s0, ptr %s0, { i64, ptr } %t33, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d376, i32 0, i32 1) })
  store i64 %t35, ptr %l13
  br label %bb7
bb7:
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = sdiv i64 %t36, 1024
  store i64 %t37, ptr %l14, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t40 = call i64 @compiler_2fbuild_2ekbOf(ptr %s0, ptr %s0, { i64, ptr } %t38, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d377, i32 0, i32 1) })
  store i64 %t40, ptr %l16
  br label %bb8
bb8:
  %t41 = load i64, ptr %l16, !tbaa !24
  %t42 = sdiv i64 %t41, 1024
  %t43 = load i64, ptr %l14, !tbaa !24
  %t44 = call i64 @__olang_fmt_i64(ptr null, i64 %t43)
  %t45 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d378, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d378, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t49 = call i64 @__olang_fmt_i64(ptr null, i64 %t42)
  %t50 = add i64 %t47, %t49
  %t51 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d379, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d379, i32 0, i32 1) }, 0
  %t53 = add i64 %t50, %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t53)
  %t55 = call i64 @__olang_fmt_i64(ptr %t54, i64 %t43)
  %t56 = getelementptr i8, ptr %t54, i64 %t44
  call void @olang_textcopy(ptr %t56, ptr %t45, i64 %t46)
  %t57 = getelementptr i8, ptr %t56, i64 %t46
  %t58 = call i64 @__olang_fmt_i64(ptr %t57, i64 %t42)
  %t59 = getelementptr i8, ptr %t57, i64 %t49
  call void @olang_textcopy(ptr %t59, ptr %t51, i64 %t52)
  %t60 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t54, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t61, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2enoTestNamed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca i64
  %l38 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l51 = alloca i64
  %l53 = alloca i64
  %l58 = alloca { i64, ptr }
  %l61 = alloca i64
  %l64 = alloca i1
  %l65 = alloca i1
  %l71 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca { i64, ptr }
  %l81 = alloca i1
  %l83 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l19
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t3, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb10
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t17, ptr %l27, !tbaa !27
  %t18 = load i64, ptr %l5, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %t21, i64 %t18
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !37
  store { i64, ptr } %t23, ptr %l7, !tbaa !27
  store ptr %l3, ptr %l30, !tbaa !29
  %t25 = ptrtoint ptr %s0 to i64
  store i64 %t25, ptr %l31, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = call ptr @__olang_region_make(ptr %s0)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l31, !tbaa !24
  br label %bb7
bb7:
  %t30 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d380, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d380, i32 0, i32 1) }, 0
  %t34 = extractvalue { i64, ptr } %t30, 1
  %t35 = extractvalue { i64, ptr } %t30, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d381, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d381, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = load i64, ptr %l31
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t39)
  call void @olang_textcopy(ptr %t42, ptr %t31, i64 %t32)
  %t43 = getelementptr i8, ptr %t42, i64 %t32
  call void @olang_textcopy(ptr %t43, ptr %t34, i64 %t35)
  %t44 = getelementptr i8, ptr %t43, i64 %t35
  call void @olang_textcopy(ptr %t44, ptr %t37, i64 %t38)
  %t45 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t42, 1
  %t48 = load i64, ptr %l31
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = extractvalue { i64, ptr } %t46, 0
  %t51 = extractvalue { i64, ptr } %t46, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %t49, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t56 = load ptr, ptr %l30, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t56, { i64, ptr } %t55)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l5, !tbaa !24
  br label %bb2
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d382, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t62, ptr %l8, !tbaa !27
  store i64 1073741824, ptr %l9, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t64, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l12, !tbaa !24
  br label %bb11
bb11:
  %t70 = load i64, ptr %l11, !tbaa !24
  %t71 = load i64, ptr %l12, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb12, label %bb13
bb12:
  br label %bb34
bb13:
  br label %bb14
bb14:
  %t78 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t78, ptr %l47, !tbaa !27
  %t79 = load i64, ptr %l11, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %t82, i64 %t79
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !37
  store { i64, ptr } %t84, ptr %l13, !tbaa !27
  store ptr %a2, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb15
bb15:
  %t88 = load i64, ptr %l15, !tbaa !24
  store i64 %t88, ptr %l51, !tbaa !24
  %t89 = load ptr, ptr %l14, !tbaa !29
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t89)
  store i64 %t91, ptr %l53
  br label %bb16
bb16:
  %t92 = load i64, ptr %l51, !tbaa !24
  %t93 = load i64, ptr %l53, !tbaa !24
  %t94 = icmp slt i64 %t92, %t93
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb17, label %bb18
bb17:
  br label %bb32
bb18:
  br label %bb19
bb19:
  %t98 = load ptr, ptr %l14, !tbaa !29
  %t99 = load i64, ptr %l15, !tbaa !24
  %t102 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t98, i64 %t99)
  store { i64, ptr } %t102, ptr %l58
  br label %bb20
bb20:
  %t103 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t103, ptr %l16, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t108 = call i64 @compiler_2fbuild_2ecloseness(ptr %v1, ptr %v2, { i64, ptr } %t104, { i64, ptr } %t105)
  store i64 %t108, ptr %l61
  br label %bb21
bb21:
  %t109 = load i64, ptr %l61, !tbaa !24
  store i64 %t109, ptr %l17, !tbaa !24
  %t110 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t111 = load i64, ptr %l17, !tbaa !24
  %t114 = call i1 @compiler_2fmsgs_2eNear(ptr %v1, { i64, ptr } %t110, i64 %t111)
  store i1 %t114, ptr %l64
  br label %bb22
bb22:
  %t115 = load i1, ptr %l64, !tbaa !21
  br i1 %t115, label %bb23, label %bb24
bb23:
  %t116 = load i64, ptr %l17, !tbaa !24
  %t117 = load i64, ptr %l9, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  store i1 %t120, ptr %l65, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb25
bb25:
  %t122 = load i1, ptr %l65, !tbaa !21
  br i1 %t122, label %bb26, label %bb27
bb26:
  %t123 = load i64, ptr %l17, !tbaa !24
  store i64 %t123, ptr %l9, !tbaa !24
  %t125 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t125, ptr %l71, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t127, ptr %l72, !tbaa !27
  %t128 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 0
  store i64 %t129, ptr %l73, !tbaa !24
  %t130 = load i64, ptr %l73, !tbaa !24
  %t131 = mul i64 %t130, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t131)
  %t133 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  store { i64, ptr } %t134, ptr %l74, !tbaa !27
  %t135 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = load i64, ptr %l73, !tbaa !24
  %t140 = mul i64 %t139, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t136, ptr %t138, i64 %t140, i1 false)
  %t141 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t141, ptr %l8, !tbaa !27
  %t142 = load i1, ptr @olang_2esole_2ecompiler__2fbuild__2enoTestNamed_2elocal_2e8
  br i1 %t142, label %bb28, label %bb29
bb27:
  br label %bb30
bb28:
  %t144 = load { i64, ptr }, ptr %l72
  %t145 = extractvalue { i64, ptr } %t144, 1
  call void @__olang_region_release(ptr %t145)
  store { i64, ptr } zeroinitializer, ptr %l72
  br label %bb29
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t146 = load i64, ptr %l15, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l15, !tbaa !24
  br label %bb15
bb32:
  br label %bb33
bb33:
  %t150 = load i64, ptr %l11, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l11, !tbaa !24
  br label %bb11
bb34:
  %t154 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t156 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t154, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d383, i32 0, i32 1) })
  store i1 %t156, ptr %l81
  br label %bb35
bb35:
  %t157 = load i1, ptr %l81, !tbaa !21
  %t158 = xor i1 %t157, true
  br i1 %t158, label %bb36, label %bb37
bb36:
  %t160 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t161 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d384, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d384, i32 0, i32 1) }, 0
  %t164 = extractvalue { i64, ptr } %t160, 1
  %t165 = extractvalue { i64, ptr } %t160, 0
  %t166 = add i64 %t162, %t165
  %t167 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d385, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d385, i32 0, i32 1) }, 0
  %t169 = add i64 %t166, %t168
  %t170 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t169)
  call void @olang_textcopy(ptr %t170, ptr %t161, i64 %t162)
  %t171 = getelementptr i8, ptr %t170, i64 %t162
  call void @olang_textcopy(ptr %t171, ptr %t164, i64 %t165)
  %t172 = getelementptr i8, ptr %t171, i64 %t165
  call void @olang_textcopy(ptr %t172, ptr %t167, i64 %t168)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t170, 1
  %t176 = extractvalue { i64, ptr } %t174, 0
  %t177 = extractvalue { i64, ptr } %t174, 1
  %t178 = mul i64 %t176, 1
  %t179 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t178)
  call void @llvm.memcpy.p0.p0.i64(ptr %t179, ptr %t177, i64 %t178, i1 false)
  %t180 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t179, 1
  store { i64, ptr } %t181, ptr %l83, !tbaa !27
  br label %bb38
bb37:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d386, i32 0, i32 1) }, ptr %l83, !tbaa !27
  br label %bb38
bb38:
  %t183 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t183, ptr %l18, !tbaa !27
  store { i64, ptr } %a0, ptr %l87, !tbaa !27
  %t186 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d387, i32 0, i32 1) })
  store { i64, ptr } %t186, ptr %l89
  br label %bb39
bb39:
  %t187 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t188 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 1
  %t190 = extractvalue { i64, ptr } %t188, 0
  %t191 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d388, i32 0, i32 1) }, 1
  %t192 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d388, i32 0, i32 1) }, 0
  %t193 = add i64 %t190, %t192
  %t194 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t194, 1
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t197 = add i64 %t193, %t196
  %t199 = extractvalue { i64, ptr } %t187, 1
  %t200 = extractvalue { i64, ptr } %t187, 0
  %t201 = add i64 %t197, %t200
  %t202 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t201)
  call void @olang_textcopy(ptr %t202, ptr %t189, i64 %t190)
  %t203 = getelementptr i8, ptr %t202, i64 %t190
  call void @olang_textcopy(ptr %t203, ptr %t191, i64 %t192)
  %t204 = getelementptr i8, ptr %t203, i64 %t192
  call void @olang_textcopy(ptr %t204, ptr %t195, i64 %t196)
  %t205 = getelementptr i8, ptr %t204, i64 %t196
  call void @olang_textcopy(ptr %t205, ptr %t199, i64 %t200)
  %t206 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t202, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t207, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2eoutputOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l34 = alloca { i64, ptr }
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = sub i64 %t3, 1
  store i64 %t5, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l16, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l16, !tbaa !24
  store i64 %t33, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l13, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l6, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t53, ptr %l34, !tbaa !27
  %t54 = load i64, ptr %l6, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %t57, i64 %t54
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !37
  %t61 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t59, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d389, i32 0, i32 1) })
  store i1 %t61, ptr %l37
  br label %bb11
bb11:
  %t62 = load i1, ptr %l37, !tbaa !21
  br i1 %t62, label %bb12, label %bb13
bb12:
  %t63 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t63, ptr %l38, !tbaa !27
  %t64 = load i64, ptr %l6, !tbaa !24
  %t66 = add i64 %t64, 1
  %t68 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %t69, i64 %t66
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !37
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t71, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t73 = load i64, ptr %l5, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l5, !tbaa !24
  br label %bb7
bb16:
  %t77 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t77, ptr %l44, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t82 = sub i64 %t80, 1
  %t84 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %t85, i64 %t82
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !37
  store { i64, ptr } %t87, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fbuild_2eprune(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"std/os:FileInfo"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca %"compiler/build:Aged"
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l19 = alloca i32
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i32
  %l26 = alloca i1
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca { i64, ptr }
  %l43 = alloca %"std/os:FileInfo"
  %l48 = alloca %"std/os:FileInfo"
  %l49 = alloca i32
  %l51 = alloca i1
  %l57 = alloca ptr
  %l61 = alloca %"compiler/build:Aged"
  %l70 = alloca i64
  %l72 = alloca i64
  %l77 = alloca %"compiler/build:Aged"
  %l86 = alloca i1
  %l87 = alloca i1
  %l92 = alloca i1
  %l94 = alloca i32
  %l96 = alloca i1
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i64, ptr } @std_2fos_2eQuote(ptr %v1, ptr %s0, { i64, ptr } %t1)
  store { i64, ptr } %t3, ptr %l16
  br label %bb1
bb1:
  %t4 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d390, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d390, i32 0, i32 1) }, 0
  %t6 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 1
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t9 = add i64 %t5, %t8
  %t10 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d391, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d391, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t4, i64 %t5)
  %t14 = getelementptr i8, ptr %t13, i64 %t5
  call void @olang_textcopy(ptr %t14, ptr %t7, i64 %t8)
  %t15 = getelementptr i8, ptr %t14, i64 %t8
  call void @olang_textcopy(ptr %t15, ptr %t10, i64 %t11)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t13, 1
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = extractvalue { i64, ptr } %t17, 1
  %t21 = mul i64 %t19, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t21)
  call void @llvm.memcpy.p0.p0.i64(ptr %t22, ptr %t20, i64 %t21, i1 false)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  %t26 = call i32 @std_2fos_2eRun(ptr %s0, { i64, ptr } %t24)
  store i32 %t26, ptr %l19
  br label %bb2
bb2:
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fbuild_2erestamp(ptr %v1, { i64, ptr } %t27)
  br label %bb3
bb3:
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t31 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %s0, { i64, ptr } %t29)
  %t32 = extractvalue { i32, { i64, ptr } } %t31, 1
  %t33 = extractvalue { i32, { i64, ptr } } %t31, 0
  store i32 %t33, ptr %l24
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb5, label %ok.35, !prof !99
ok.35:
  store { i64, ptr } %t32, ptr %l23
  br label %bb4
bb4:
  %t36 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t36, ptr %l21, !tbaa !27
  br label %bb13
bb5:
  %t37 = load i32, ptr %l24, !tbaa !23
  %t38 = ashr i32 %t37, 16
  %t40 = icmp eq i32 %t38, 1
  store i1 %t40, ptr %l26, !tbaa !21
  %t41 = load i32, ptr %l24, !tbaa !23
  %t42 = ashr i32 %t41, 16
  %t44 = icmp eq i32 %t42, 1
  br i1 %t44, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t46 = icmp sge i64 0, 0
  br i1 %t46, label %bb9, label %bb10
bb9:
  %t48 = icmp sle i64 0, 576460752303423487
  br i1 %t48, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_c2e3e05ea269d042_ab0ea8740a7d243e)
  unreachable
bb11:
  %t50 = mul i64 0, 16
  %t51 = insertvalue { i64, ptr } undef, i64 0, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t52, ptr %l21, !tbaa !27
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_c2e3e05ea269d042_ab0ea8740a7d243e)
  unreachable
bb13:
  %t54 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t54, ptr %l3, !tbaa !27
  %t55 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aAged_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %l32
  br label %bb14
bb14:
  %t56 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t57, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t59 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  store i64 %t61, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t63 = load i64, ptr %l7, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = icmp slt i64 %t63, %t64
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb17:
  br label %bb18
bb18:
  %t71 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t71, ptr %l40, !tbaa !27
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %t75, i64 %t72
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !37
  store { i64, ptr } %t77, ptr %l9, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t79, 1
  %t83 = extractvalue { i64, ptr } %t79, 0
  %t84 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d392, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d392, i32 0, i32 1) }, 0
  %t86 = add i64 %t83, %t85
  %t88 = extractvalue { i64, ptr } %t80, 1
  %t89 = extractvalue { i64, ptr } %t80, 0
  %t90 = add i64 %t86, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t82, i64 %t83)
  %t92 = getelementptr i8, ptr %t91, i64 %t83
  call void @olang_textcopy(ptr %t92, ptr %t84, i64 %t85)
  %t93 = getelementptr i8, ptr %t92, i64 %t85
  call void @olang_textcopy(ptr %t93, ptr %t88, i64 %t89)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t91, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t98 = extractvalue { i64, ptr } %t95, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  %t104 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %s3, { i64, ptr } %t102)
  %t105 = extractvalue { i32, %"std/os:FileInfo" } %t104, 1
  %t106 = extractvalue { i32, %"std/os:FileInfo" } %t104, 0
  store i32 %t106, ptr %l49
  %t107 = icmp ne i32 %t106, 0
  br i1 %t107, label %bb20, label %ok.108, !prof !99
ok.108:
  store %"std/os:FileInfo" %t105, ptr %l48
  br label %bb19
bb19:
  %t109 = load %"std/os:FileInfo", ptr %l48
  store %"std/os:FileInfo" %t109, ptr %l43
  br label %bb24
bb20:
  %t110 = load i32, ptr %l49, !tbaa !23
  %t111 = ashr i32 %t110, 16
  %t113 = icmp eq i32 %t111, 1
  store i1 %t113, ptr %l51, !tbaa !21
  %t114 = load i32, ptr %l49, !tbaa !23
  %t115 = ashr i32 %t114, 16
  %t117 = icmp eq i32 %t115, 1
  br i1 %t117, label %bb21, label %bb22
bb21:
  call void @__olang_errpay_pop()
  br label %bb22
bb22:
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb24:
  %t119 = load %"std/os:FileInfo", ptr %l43
  store %"std/os:FileInfo" %t119, ptr %l10
  %t120 = load i64, ptr %l5, !tbaa !24
  %t121 = getelementptr %"std/os:FileInfo", ptr %l10, i32 0, i32 1
  %t122 = load i64, ptr %t121, !tbaa !24
  %t125 = add i64 %t120, %t122
  store i64 %t125, ptr %l5, !tbaa !24
  store ptr %l4, ptr %l57, !tbaa !29
  %t127 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t128 = getelementptr %"std/os:FileInfo", ptr %l10, i32 0, i32 1
  %t129 = load i64, ptr %t128, !tbaa !24
  %t130 = getelementptr %"std/os:FileInfo", ptr %l10, i32 0, i32 2
  %t131 = load i64, ptr %t130, !tbaa !24
  %t135 = call %"compiler/build:Aged" @compiler_2fbuild_3aAged_2ector(ptr %s0, ptr %s0, { i64, ptr } %t127, i64 %t129, i64 %t131)
  store %"compiler/build:Aged" %t135, ptr %l61
  br label %bb25
bb25:
  %t136 = load ptr, ptr %l57, !tbaa !29
  %t137 = load %"compiler/build:Aged", ptr %l61
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aAged_3e_2ePush_3ccompiler_2fbuild_3aAged_3e(ptr %s0, ptr %s0, ptr %t136, %"compiler/build:Aged" %t137)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb27:
  %t138 = load i64, ptr %l7, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l7, !tbaa !24
  br label %bb15
bb28:
  %t142 = load i64, ptr %l5, !tbaa !24
  %t143 = load i64, ptr %l2, !tbaa !24
  %t146 = icmp sle i64 %t142, %t143
  br i1 %t146, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb30:
  br label %bb31
bb31:
  %t148 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_393, 0
  %t149 = insertvalue { ptr, ptr } %t148, ptr null, 1
  %t152 = extractvalue { ptr, ptr } %t149, 0
  %t153 = extractvalue { ptr, ptr } %t149, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aAged_3e_2eSort_3cco_H63eebd47c26ebfd40b5b0af0aaa7c615(ptr %s0, ptr %s0, ptr %l4, ptr %t152, ptr %t153)
  br label %bb32
bb32:
  store ptr %l4, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb33
bb33:
  store %olang.scope zeroinitializer, ptr %s9
  %t155 = load i64, ptr %l12, !tbaa !24
  store i64 %t155, ptr %l70, !tbaa !24
  %t156 = load ptr, ptr %l11, !tbaa !29
  %t158 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aAged_3e_2eLen_3ccompiler_2fbuild_3aAged_3e(ptr %s0, ptr %t156)
  store i64 %t158, ptr %l72
  br label %bb34
bb34:
  %t159 = load i64, ptr %l70, !tbaa !24
  %t160 = load i64, ptr %l72, !tbaa !24
  %t161 = icmp slt i64 %t159, %t160
  %t163 = xor i1 %t161, true
  br i1 %t163, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s9)
  br label %bb57
bb36:
  br label %bb37
bb37:
  %t165 = load ptr, ptr %l11, !tbaa !29
  %t166 = load i64, ptr %l12, !tbaa !24
  %t169 = call %"compiler/build:Aged" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aAged_3e_2eAt_3ccompiler_2fbuild_3aAged_3e(ptr %s0, ptr %s0, ptr %t165, i64 %t166)
  store %"compiler/build:Aged" %t169, ptr %l77
  br label %bb38
bb38:
  %t170 = load %"compiler/build:Aged", ptr %l77
  store %"compiler/build:Aged" %t170, ptr %l13
  %t171 = load i64, ptr %l5, !tbaa !24
  %t172 = load i64, ptr %l2, !tbaa !24
  %t175 = icmp sle i64 %t171, %t172
  br i1 %t175, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb40:
  br label %bb41
bb41:
  %t177 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t178 = getelementptr %"compiler/build:Aged", ptr %l13, i32 0, i32 0
  %t179 = load { i64, ptr }, ptr %t178, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t177, 1
  %t182 = extractvalue { i64, ptr } %t177, 0
  %t183 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d394, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d394, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t187 = extractvalue { i64, ptr } %t179, 1
  %t188 = extractvalue { i64, ptr } %t179, 0
  %t189 = add i64 %t185, %t188
  %t190 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t189)
  call void @olang_textcopy(ptr %t190, ptr %t181, i64 %t182)
  %t191 = getelementptr i8, ptr %t190, i64 %t182
  call void @olang_textcopy(ptr %t191, ptr %t183, i64 %t184)
  %t192 = getelementptr i8, ptr %t191, i64 %t184
  call void @olang_textcopy(ptr %t192, ptr %t187, i64 %t188)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t190, 1
  store { i64, ptr } %t194, ptr %l14, !tbaa !27
  %t196 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t197 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t200 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s9, ptr %v1, { i64, ptr } %t196, { i64, ptr } %t197)
  store i1 %t200, ptr %l86
  br label %bb42
bb42:
  %t201 = load i1, ptr %l86, !tbaa !21
  br i1 %t201, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb46
bb44:
  %t202 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t203 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t203, 1
  %t206 = extractvalue { i64, ptr } %t203, 0
  %t207 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d395, i32 0, i32 1) }, 1
  %t208 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d395, i32 0, i32 1) }, 0
  %t209 = add i64 %t206, %t208
  %t210 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t209)
  call void @olang_textcopy(ptr %t210, ptr %t205, i64 %t206)
  %t211 = getelementptr i8, ptr %t210, i64 %t206
  call void @olang_textcopy(ptr %t211, ptr %t207, i64 %t208)
  %t212 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t210, 1
  %t215 = extractvalue { i64, ptr } %t213, 0
  %t216 = extractvalue { i64, ptr } %t213, 1
  %t217 = mul i64 %t215, 1
  %t218 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t217)
  call void @llvm.memcpy.p0.p0.i64(ptr %t218, ptr %t216, i64 %t217, i1 false)
  %t219 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t218, 1
  %t223 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s9, ptr %s9, { i64, ptr } %t202, { i64, ptr } %t220)
  store i1 %t223, ptr %l92
  br label %bb45
bb45:
  %t224 = load i1, ptr %l92, !tbaa !21
  store i1 %t224, ptr %l87, !tbaa !21
  br label %bb46
bb46:
  %t225 = load i1, ptr %l87, !tbaa !21
  br i1 %t225, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s9)
  br label %bb56
bb48:
  br label %bb49
bb49:
  %t226 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t228 = call i32 @std_2fos_2eRemoveAll(ptr %s9, { i64, ptr } %t226)
  store i32 %t228, ptr %l94
  %t229 = icmp ne i32 %t228, 0
  br i1 %t229, label %bb51, label %ok.230, !prof !99
ok.230:
  br label %bb50
bb50:
  br label %bb55
bb51:
  %t231 = load i32, ptr %l94, !tbaa !23
  %t232 = ashr i32 %t231, 16
  %t234 = icmp eq i32 %t232, 1
  store i1 %t234, ptr %l96, !tbaa !21
  %t235 = load i32, ptr %l94, !tbaa !23
  %t236 = ashr i32 %t235, 16
  %t238 = icmp eq i32 %t236, 1
  br i1 %t238, label %bb52, label %bb53
bb52:
  call void @__olang_errpay_pop()
  br label %bb53
bb53:
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s9)
  br label %bb56
bb55:
  %t240 = load i64, ptr %l5, !tbaa !24
  %t241 = getelementptr %"compiler/build:Aged", ptr %l13, i32 0, i32 1
  %t242 = load i64, ptr %t241, !tbaa !24
  %t245 = sub i64 %t240, %t242
  store i64 %t245, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s9)
  br label %bb56
bb56:
  %t247 = load i64, ptr %l12, !tbaa !24
  %t249 = add i64 %t247, 1
  store i64 %t249, ptr %l12, !tbaa !24
  br label %bb33
bb57:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbuild_2erestamp(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/os:FileInfo"
  %l4 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l12 = alloca i1
  %l15 = alloca %"std/os:FileInfo"
  %l17 = alloca %"std/os:FileInfo"
  %l18 = alloca i32
  %l20 = alloca i1
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l37 = alloca i32
  %l39 = alloca i1
  %s0 = alloca %olang.scope
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d396, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d396, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  store { i64, ptr } %t11, ptr %l1, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t15 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } %t13)
  %t16 = extractvalue { i32, { i64, ptr } } %t15, 1
  %t17 = extractvalue { i32, { i64, ptr } } %t15, 0
  store i32 %t17, ptr %l10
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb2, label %ok.19, !prof !99
ok.19:
  store { i64, ptr } %t16, ptr %l9
  br label %bb1
bb1:
  %t20 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t20, ptr %l7, !tbaa !27
  br label %bb6
bb2:
  %t21 = load i32, ptr %l10, !tbaa !23
  %t22 = ashr i32 %t21, 16
  %t24 = icmp eq i32 %t22, 1
  store i1 %t24, ptr %l12, !tbaa !21
  %t25 = load i32, ptr %l10, !tbaa !23
  %t26 = ashr i32 %t25, 16
  %t28 = icmp eq i32 %t26, 1
  br i1 %t28, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t30 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t30, ptr %l2, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t33 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %t31)
  %t34 = extractvalue { i32, %"std/os:FileInfo" } %t33, 1
  %t35 = extractvalue { i32, %"std/os:FileInfo" } %t33, 0
  store i32 %t35, ptr %l18
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb8, label %ok.37, !prof !99
ok.37:
  store %"std/os:FileInfo" %t34, ptr %l17
  br label %bb7
bb7:
  %t38 = load %"std/os:FileInfo", ptr %l17
  store %"std/os:FileInfo" %t38, ptr %l15
  br label %bb12
bb8:
  %t39 = load i32, ptr %l18, !tbaa !23
  %t40 = ashr i32 %t39, 16
  %t42 = icmp eq i32 %t40, 1
  store i1 %t42, ptr %l20, !tbaa !21
  %t43 = load i32, ptr %l18, !tbaa !23
  %t44 = ashr i32 %t43, 16
  %t46 = icmp eq i32 %t44, 1
  br i1 %t46, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  %t48 = load %"std/os:FileInfo", ptr %l15
  store %"std/os:FileInfo" %t48, ptr %l3
  %t49 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t51 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s0, ptr %s0, { i64, ptr } %t49)
  store { i64, ptr } %t51, ptr %l24
  br label %bb13
bb13:
  %t52 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t53 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d397, i32 0, i32 1) })
  store { i64, ptr } %t53, ptr %l25
  br label %bb14
bb14:
  %t54 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t54, ptr %l4, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t59 = icmp ne i64 %t57, 3
  br i1 %t59, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  br label %bb17
bb17:
  %t61 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t62, ptr %l30, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %t64, i64 0
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !37
  %t67 = getelementptr %"std/os:FileInfo", ptr %l3, i32 0, i32 1
  %t68 = load i64, ptr %t67, !tbaa !24
  %t69 = getelementptr %"std/os:FileInfo", ptr %l3, i32 0, i32 2
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = extractvalue { i64, ptr } %t66, 1
  %t73 = extractvalue { i64, ptr } %t66, 0
  %t74 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d398, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d398, i32 0, i32 1) }, 0
  %t76 = add i64 %t73, %t75
  %t78 = call i64 @__olang_fmt_i64(ptr null, i64 %t68)
  %t79 = add i64 %t76, %t78
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d398, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d398, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t84 = call i64 @__olang_fmt_i64(ptr null, i64 %t70)
  %t85 = add i64 %t82, %t84
  %t86 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d399, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d399, i32 0, i32 1) }, 0
  %t88 = add i64 %t85, %t87
  %t89 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t88)
  call void @olang_textcopy(ptr %t89, ptr %t72, i64 %t73)
  %t90 = getelementptr i8, ptr %t89, i64 %t73
  call void @olang_textcopy(ptr %t90, ptr %t74, i64 %t75)
  %t91 = getelementptr i8, ptr %t90, i64 %t75
  %t92 = call i64 @__olang_fmt_i64(ptr %t91, i64 %t68)
  %t93 = getelementptr i8, ptr %t91, i64 %t78
  call void @olang_textcopy(ptr %t93, ptr %t80, i64 %t81)
  %t94 = getelementptr i8, ptr %t93, i64 %t81
  %t95 = call i64 @__olang_fmt_i64(ptr %t94, i64 %t70)
  %t96 = getelementptr i8, ptr %t94, i64 %t84
  call void @olang_textcopy(ptr %t96, ptr %t86, i64 %t87)
  %t97 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t89, 1
  %t101 = extractvalue { i64, ptr } %t98, 0
  %t102 = extractvalue { i64, ptr } %t98, 1
  %t103 = mul i64 %t101, 1
  %t104 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t103)
  call void @llvm.memcpy.p0.p0.i64(ptr %t104, ptr %t102, i64 %t103, i1 false)
  %t105 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t104, 1
  %t109 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t61, { i64, ptr } %t106)
  store i32 %t109, ptr %l37
  %t110 = icmp ne i32 %t109, 0
  br i1 %t110, label %bb19, label %ok.111, !prof !99
ok.111:
  br label %bb18
bb18:
  br label %bb23
bb19:
  %t112 = load i32, ptr %l37, !tbaa !23
  %t113 = ashr i32 %t112, 16
  %t115 = icmp eq i32 %t113, 1
  store i1 %t115, ptr %l39, !tbaa !21
  %t116 = load i32, ptr %l37, !tbaa !23
  %t117 = ashr i32 %t116, 16
  %t119 = icmp eq i32 %t117, 1
  br i1 %t119, label %bb20, label %bb21
bb20:
  call void @__olang_errpay_pop()
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
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

define dso_local void @compiler_2fbuild_2erunner(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"std/os:Output"
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l13 = alloca i1
  %l14 = alloca %"std/os:Output"
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca %"std/os:Output"
  %l20 = alloca i32
  %l22 = alloca i1
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l48 = alloca i1
  %l51 = alloca i64
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l4, !tbaa !29
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t3 = load ptr, ptr %l4, !tbaa !29
  %t5 = call { i32, i64 } @std_2fchan_2estd_2fchan_3aChan_3cI64_3e_2eNext_3cI64_3e(ptr %v0, ptr %t3)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l11
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb3, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l10
  br label %bb2
bb2:
  %t10 = load i64, ptr %l10, !tbaa !24
  store i64 %t10, ptr %l8, !tbaa !24
  br label %bb5
bb3:
  %t11 = load i32, ptr %l11, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l13, !tbaa !21
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb5:
  %t15 = load i64, ptr %l8, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t16, ptr %l15, !tbaa !27
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %t20, i64 %t17
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !37
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t25 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v1, ptr %s2, ptr %s2, ptr %s2, { i64, ptr } %t22, { i64, ptr } %t24, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  %t26 = extractvalue { i32, %"std/os:Output" } %t25, 1
  %t27 = extractvalue { i32, %"std/os:Output" } %t25, 0
  store i32 %t27, ptr %l20
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb7, label %ok.29, !prof !99
ok.29:
  store %"std/os:Output" %t26, ptr %l19
  br label %bb6
bb6:
  %t30 = load %"std/os:Output", ptr %l19
  store %"std/os:Output" %t30, ptr %l14
  br label %bb13
bb7:
  %t31 = load i32, ptr %l20, !tbaa !23
  %t32 = ashr i32 %t31, 16
  %t34 = icmp eq i32 %t32, 1
  store i1 %t34, ptr %l22, !tbaa !21
  %t35 = load i32, ptr %l20, !tbaa !23
  %t36 = ashr i32 %t35, 16
  %t38 = icmp eq i32 %t36, 1
  br i1 %t38, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t40 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t40, ptr %l25, !tbaa !27
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i32, ptr %t44, i64 %t41
  store i32 127, ptr %t45, !tbaa !33
  %t46 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t46, ptr %l27, !tbaa !27
  %t47 = load i64, ptr %l5, !tbaa !24
  store i64 %t47, ptr %l28, !tbaa !24
  %t48 = ptrtoint ptr %v3 to i64
  store i64 %t48, ptr %l29, !tbaa !24
  %t49 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t51 = call ptr @__olang_region_make(ptr %v3)
  %t52 = ptrtoint ptr %t51 to i64
  store i64 %t52, ptr %l29, !tbaa !24
  br label %bb12
bb12:
  %t53 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t53, ptr %l31, !tbaa !27
  %t54 = load i64, ptr %l5, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %t57, i64 %t54
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !37
  store { i64, ptr } %t59, ptr %l33, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %t61, i64 0
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !37
  %t64 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d400, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d400, i32 0, i32 1) }, 0
  %t67 = extractvalue { i64, ptr } %t63, 1
  %t68 = extractvalue { i64, ptr } %t63, 0
  %t69 = add i64 %t65, %t68
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d401, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d401, i32 0, i32 1) }, 0
  %t72 = add i64 %t69, %t71
  %t73 = load i64, ptr %l29
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = call ptr @__olang_scope_alloc(ptr %t74, i64 %t72)
  call void @olang_textcopy(ptr %t75, ptr %t64, i64 %t65)
  %t76 = getelementptr i8, ptr %t75, i64 %t65
  call void @olang_textcopy(ptr %t76, ptr %t67, i64 %t68)
  %t77 = getelementptr i8, ptr %t76, i64 %t68
  call void @olang_textcopy(ptr %t77, ptr %t70, i64 %t71)
  %t78 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t75, 1
  %t81 = load i64, ptr %l29
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = extractvalue { i64, ptr } %t79, 0
  %t84 = extractvalue { i64, ptr } %t79, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %t82, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t90 = load i64, ptr %l28, !tbaa !24
  %t91 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %t92, i64 %t90
  store { i64, ptr } %t88, ptr %t93, !tbaa !37
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb13:
  %t94 = load %"std/os:Output", ptr %l14
  store %"std/os:Output" %t94, ptr %l6
  %t95 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t95, ptr %l37, !tbaa !27
  %t96 = load i64, ptr %l5, !tbaa !24
  %t97 = getelementptr %"std/os:Output", ptr %l6, i32 0, i32 0
  %t98 = load i32, ptr %t97, !tbaa !23
  %t101 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i32, ptr %t102, i64 %t96
  store i32 %t98, ptr %t103, !tbaa !33
  %t104 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t104, ptr %l40, !tbaa !27
  %t105 = load i64, ptr %l5, !tbaa !24
  store i64 %t105, ptr %l41, !tbaa !24
  %t106 = ptrtoint ptr %v3 to i64
  store i64 %t106, ptr %l42, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t107, label %bb14, label %bb15
bb14:
  %t109 = call ptr @__olang_region_make(ptr %v3)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l42, !tbaa !24
  br label %bb15
bb15:
  %t111 = getelementptr %"std/os:Output", ptr %l6, i32 0, i32 1
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  %t113 = getelementptr %"std/os:Output", ptr %l6, i32 0, i32 2
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t112, 1
  %t117 = extractvalue { i64, ptr } %t112, 0
  %t119 = extractvalue { i64, ptr } %t114, 1
  %t120 = extractvalue { i64, ptr } %t114, 0
  %t121 = add i64 %t117, %t120
  %t122 = load i64, ptr %l42
  %t123 = inttoptr i64 %t122 to ptr
  %t124 = call ptr @__olang_scope_alloc(ptr %t123, i64 %t121)
  call void @olang_textcopy(ptr %t124, ptr %t116, i64 %t117)
  %t125 = getelementptr i8, ptr %t124, i64 %t117
  call void @olang_textcopy(ptr %t125, ptr %t119, i64 %t120)
  %t126 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t124, 1
  %t129 = load i64, ptr %l42
  %t130 = inttoptr i64 %t129 to ptr
  %t131 = extractvalue { i64, ptr } %t127, 0
  %t132 = extractvalue { i64, ptr } %t127, 1
  %t133 = mul i64 %t131, 1
  %t134 = call ptr @__olang_scope_alloc(ptr %t130, i64 %t133)
  call void @llvm.memcpy.p0.p0.i64(ptr %t134, ptr %t132, i64 %t133, i1 false)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t134, 1
  %t138 = load i64, ptr %l41, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr { i64, ptr }, ptr %t140, i64 %t138
  store { i64, ptr } %t136, ptr %t141, !tbaa !37
  %t142 = call i1 @compiler_2fbuild_2etimed()
  store i1 %t142, ptr %l48
  br label %bb16
bb16:
  %t143 = load i1, ptr %l48, !tbaa !21
  br i1 %t143, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s6
  %t145 = atomicrmw add ptr @G_2ecompiler_2fbuild_2eRan, i64 1 seq_cst
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l51, !tbaa !24
  %t148 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t148, 0
  store i64 %t150, ptr %l53, !tbaa !24
  %t151 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t151, ptr %l54, !tbaa !27
  %t152 = load i64, ptr %l5, !tbaa !24
  %t154 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %t155, i64 %t152
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !37
  %t159 = call { i64, ptr } @compiler_2fbuild_2eoutputOf(ptr %v1, ptr %v1, { i64, ptr } %t157)
  store { i64, ptr } %t159, ptr %l57
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t160 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t161 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v1, ptr %s6, { i64, ptr } %t160)
  store { i64, ptr } %t161, ptr %l58
  br label %bb20
bb20:
  %t162 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d402, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d402, i32 0, i32 1) }, 0
  %t164 = load i64, ptr %l51, !tbaa !24
  %t165 = call i64 @__olang_fmt_i64(ptr null, i64 %t164)
  %t166 = add i64 %t163, %t165
  %t167 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d403, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d403, i32 0, i32 1) }, 0
  %t169 = add i64 %t166, %t168
  %t170 = load i64, ptr %l53, !tbaa !24
  %t171 = call i64 @__olang_fmt_i64(ptr null, i64 %t170)
  %t172 = add i64 %t169, %t171
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d404, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d404, i32 0, i32 1) }, 0
  %t175 = add i64 %t172, %t174
  %t176 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = add i64 %t175, %t178
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d405, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d405, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t183 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t182)
  call void @olang_textcopy(ptr %t183, ptr %t162, i64 %t163)
  %t184 = getelementptr i8, ptr %t183, i64 %t163
  %t185 = call i64 @__olang_fmt_i64(ptr %t184, i64 %t164)
  %t186 = getelementptr i8, ptr %t184, i64 %t165
  call void @olang_textcopy(ptr %t186, ptr %t167, i64 %t168)
  %t187 = getelementptr i8, ptr %t186, i64 %t168
  %t188 = call i64 @__olang_fmt_i64(ptr %t187, i64 %t170)
  %t189 = getelementptr i8, ptr %t187, i64 %t171
  call void @olang_textcopy(ptr %t189, ptr %t173, i64 %t174)
  %t190 = getelementptr i8, ptr %t189, i64 %t174
  call void @olang_textcopy(ptr %t190, ptr %t177, i64 %t178)
  %t191 = getelementptr i8, ptr %t190, i64 %t178
  call void @olang_textcopy(ptr %t191, ptr %t180, i64 %t181)
  %t192 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t183, 1
  %t195 = extractvalue { i64, ptr } %t193, 0
  %t196 = extractvalue { i64, ptr } %t193, 1
  %t197 = mul i64 %t195, 1
  %t198 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t197)
  call void @llvm.memcpy.p0.p0.i64(ptr %t198, ptr %t196, i64 %t197, i1 false)
  %t199 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  call void @compiler_2fbuild_2esayErr(ptr %s6, { i64, ptr } %t200)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s6)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb23:
  br label %bb1
bb24:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbuild_2esay(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2estd_2fio_2eStdout, !tbaa !23
  call void @compiler_2fspin_2eSay(ptr %v0, i32 %t1, { i64, ptr } %a0)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbuild_2esayErr(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2estd_2fio_2eStderr, !tbaa !23
  call void @compiler_2fspin_2eSay(ptr %v0, i32 %t1, { i64, ptr } %a0)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbuild_2esayln(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr @G_2estd_2fio_2eStdout, !tbaa !23
  %t4 = extractvalue { i64, ptr } %a0, 1
  %t5 = extractvalue { i64, ptr } %a0, 0
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d406, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d406, i32 0, i32 1) }, 0
  %t8 = add i64 %t5, %t7
  %t9 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t8)
  call void @olang_textcopy(ptr %t9, ptr %t4, i64 %t5)
  %t10 = getelementptr i8, ptr %t9, i64 %t5
  call void @olang_textcopy(ptr %t10, ptr %t6, i64 %t7)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t9, 1
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t15 = extractvalue { i64, ptr } %t12, 1
  %t16 = mul i64 %t14, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @llvm.memcpy.p0.p0.i64(ptr %t17, ptr %t15, i64 %t16, i1 false)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  call void @compiler_2fspin_2eSay(ptr %s0, i32 %t1, { i64, ptr } %t19)
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t10 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t7, { i64, ptr } %t9, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
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

define dso_local i1 @compiler_2fbuild_2etimed() #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l4 = alloca i1
  %l7 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d407, i32 0, i32 1) })
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
  store i1 %t10, ptr %l4, !tbaa !21
  %t11 = load i32, ptr %l2, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d408, i32 0, i32 1) }, ptr %l0, !tbaa !27
  br label %bb6
bb6:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d409, i32 0, i32 1) })
  store i1 %t17, ptr %l7
  br label %bb7
bb7:
  %t18 = load i1, ptr %l7, !tbaa !21
  %t19 = xor i1 %t18, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local %"compiler/build:Aged" @compiler_2fbuild_3aAged_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/build:Aged"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/build:Aged" undef, { i64, ptr } %a0, 0
  %t10 = insertvalue %"compiler/build:Aged" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/build:Aged" %t10, i64 %a2, 2
  store %"compiler/build:Aged" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/build:Aged", ptr %rv
  ret %"compiler/build:Aged" %rr
}

define dso_local %"compiler/build:Code" @compiler_2fbuild_3aCode_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/build:Code"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/build:Code" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/build:Code" %t10, { i64, ptr } %a1, 1
  %t14 = insertvalue %"compiler/build:Code" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/build:Code" %t14, { i64, ptr } %a3, 3
  store %"compiler/build:Code" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/build:Code", ptr %rv
  ret %"compiler/build:Code" %rr
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
  %l10 = alloca i1
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i64
  %l18 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i1
  %l23 = alloca i1
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca %"compiler/target:Target"
  %l39 = alloca %"compiler/cond:Consts"
  %l40 = alloca i64
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca i64
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca %"compiler/build:Config"
  %t3 = alloca %"compiler/cond:Consts", align 8
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d410, i32 0, i32 1) }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d411, i32 0, i32 1) }, ptr %l1, !tbaa !27
  %t1 = call %"compiler/target:Target" @compiler_2ftarget_3aTarget_2ector(ptr %v0)
  store %"compiler/target:Target" %t1, ptr %l38
  br label %bb1
bb1:
  %t2 = load %"compiler/target:Target", ptr %l38
  store %"compiler/target:Target" %t2, ptr %l2
  call void @compiler_2fcond_3aConsts_2ector(ptr %t3, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l39, ptr %t3, i64 224, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l39, i64 224, i1 false)
  store i1 false, ptr %l4, !tbaa !21
  store i1 false, ptr %l5, !tbaa !21
  store i1 false, ptr %l6, !tbaa !21
  store i1 false, ptr %l7, !tbaa !21
  store i1 false, ptr %l8, !tbaa !21
  store i1 false, ptr %l9, !tbaa !21
  store i1 false, ptr %l10, !tbaa !21
  store i1 false, ptr %l11, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d412, i32 0, i32 1) }, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  store i1 false, ptr %l14, !tbaa !21
  store i1 false, ptr %l15, !tbaa !21
  store i1 false, ptr %l16, !tbaa !21
  store i64 0, ptr %l17, !tbaa !24
  store i1 false, ptr %l18, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d413, i32 0, i32 1) }, ptr %l19, !tbaa !27
  store i1 false, ptr %l20, !tbaa !21
  store i1 false, ptr %l21, !tbaa !21
  store i1 false, ptr %l22, !tbaa !21
  store i1 false, ptr %l23, !tbaa !21
  %t4 = ptrtoint ptr %v0 to i64
  store i64 %t4, ptr %l40, !tbaa !24
  %t5 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e24
  br i1 %t5, label %bb3, label %bb4
bb3:
  %t7 = call ptr @__olang_region_make(ptr %v0)
  %t8 = ptrtoint ptr %t7 to i64
  store i64 %t8, ptr %l40, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l40
  %t10 = inttoptr i64 %t9 to ptr
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t10, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l42
  br label %bb5
bb5:
  %t12 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e24
  br i1 %t12, label %bb6, label %bb7
bb6:
  %t14 = load i64, ptr %l40
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42, i32 0, i32 0
  %t17 = load { i64, ptr }, ptr %t16
  %t18 = extractvalue { i64, ptr } %t17, 1
  %t19 = call ptr @__olang_region_or(ptr %t18, ptr null)
  %t20 = call ptr @__olang_region_home(ptr %t19)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t15
  call void @__olang_region_settle(ptr %t15, i1 %t23)
  br label %bb7
bb7:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l24
  store i64 0, ptr %l25, !tbaa !24
  %t25 = ptrtoint ptr %v0 to i64
  store i64 %t25, ptr %l44, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e26
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = call ptr @__olang_region_make(ptr %v0)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l44, !tbaa !24
  br label %bb9
bb9:
  %t30 = load i64, ptr %l44
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t31, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l46
  br label %bb10
bb10:
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e26
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t35 = load i64, ptr %l44
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = call ptr @__olang_region_home(ptr %t40)
  %t42 = icmp ne ptr %t41, null
  %t43 = select i1 %t42, ptr %t41, ptr null
  %t44 = icmp eq ptr %t43, %t36
  call void @__olang_region_settle(ptr %t36, i1 %t44)
  br label %bb12
bb12:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d414, i32 0, i32 1) }, ptr %l30, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d415, i32 0, i32 1) }, ptr %l31, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d416, i32 0, i32 1) }, ptr %l36, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d417, i32 0, i32 1) }, ptr %l37, !tbaa !27
  %t46 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t47, ptr %t46, !tbaa !27
  %t48 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 1
  %t49 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t49, ptr %t48, !tbaa !27
  %t50 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 2
  %t51 = load %"compiler/target:Target", ptr %l2
  store %"compiler/target:Target" %t51, ptr %t50
  %t52 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %t52, ptr %l3, i64 224, i1 false)
  %t53 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 4
  %t54 = load i1, ptr %l4, !tbaa !21
  store i1 %t54, ptr %t53, !tbaa !21
  %t55 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 5
  %t56 = load i1, ptr %l5, !tbaa !21
  store i1 %t56, ptr %t55, !tbaa !21
  %t57 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 6
  %t58 = load i1, ptr %l6, !tbaa !21
  store i1 %t58, ptr %t57, !tbaa !21
  %t59 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 7
  %t60 = load i1, ptr %l7, !tbaa !21
  store i1 %t60, ptr %t59, !tbaa !21
  %t61 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 8
  %t62 = load i1, ptr %l8, !tbaa !21
  store i1 %t62, ptr %t61, !tbaa !21
  %t63 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 9
  %t64 = load i1, ptr %l9, !tbaa !21
  store i1 %t64, ptr %t63, !tbaa !21
  %t65 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 10
  %t66 = load i1, ptr %l10, !tbaa !21
  store i1 %t66, ptr %t65, !tbaa !21
  %t67 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 11
  %t68 = load i1, ptr %l11, !tbaa !21
  store i1 %t68, ptr %t67, !tbaa !21
  %t69 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 12
  %t70 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t70, ptr %t69, !tbaa !27
  %t71 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 13
  %t72 = load i64, ptr %l13, !tbaa !24
  store i64 %t72, ptr %t71, !tbaa !24
  %t73 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 14
  %t74 = load i1, ptr %l14, !tbaa !21
  store i1 %t74, ptr %t73, !tbaa !21
  %t75 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 15
  %t76 = load i1, ptr %l15, !tbaa !21
  store i1 %t76, ptr %t75, !tbaa !21
  %t77 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 16
  %t78 = load i1, ptr %l16, !tbaa !21
  store i1 %t78, ptr %t77, !tbaa !21
  %t79 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 17
  %t80 = load i64, ptr %l17, !tbaa !24
  store i64 %t80, ptr %t79, !tbaa !24
  %t81 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 18
  %t82 = load i1, ptr %l18, !tbaa !21
  store i1 %t82, ptr %t81, !tbaa !21
  %t83 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 19
  %t84 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t84, ptr %t83, !tbaa !27
  %t85 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 20
  %t86 = load i1, ptr %l20, !tbaa !21
  store i1 %t86, ptr %t85, !tbaa !21
  %t87 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 21
  %t88 = load i1, ptr %l21, !tbaa !21
  store i1 %t88, ptr %t87, !tbaa !21
  %t89 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 22
  %t90 = load i1, ptr %l22, !tbaa !21
  store i1 %t90, ptr %t89, !tbaa !21
  %t91 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 23
  %t92 = load i1, ptr %l23, !tbaa !21
  store i1 %t92, ptr %t91, !tbaa !21
  %t93 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 24
  %t94 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %t93
  %t95 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 25
  %t96 = load i64, ptr %l25, !tbaa !24
  store i64 %t96, ptr %t95, !tbaa !24
  %t97 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t97
  %t99 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 27
  store i64 0, ptr %t99, !tbaa !24
  %t101 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 28
  store i1 false, ptr %t101, !tbaa !21
  %t103 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 29
  store i1 false, ptr %t103, !tbaa !21
  %t105 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 30
  %t106 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t106, ptr %t105, !tbaa !27
  %t107 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 31
  %t108 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t108, ptr %t107, !tbaa !27
  %t109 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 32
  store i64 0, ptr %t109, !tbaa !24
  %t111 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 33
  store i64 0, ptr %t111, !tbaa !24
  %t113 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 34
  store i1 false, ptr %t113, !tbaa !21
  %t115 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 35
  store i1 false, ptr %t115, !tbaa !21
  %t117 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 36
  %t118 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t118, ptr %t117, !tbaa !27
  %t119 = getelementptr %"compiler/build:Config", ptr %l48, i32 0, i32 37
  %t120 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t120, ptr %t119, !tbaa !27
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l48, i64 640, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/build:Listed" @compiler_2fbuild_3aListed_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/build:Listed"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aListed_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l2
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l4
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aListed_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l2
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = call ptr @__olang_region_home(ptr %t16)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = icmp eq ptr %t19, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t20)
  br label %bb5
bb5:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l0
  %t22 = ptrtoint ptr %v0 to i64
  store i64 %t22, ptr %l6, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aListed_2e1
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = call ptr @__olang_region_make(ptr %v0)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l6
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t28, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l8
  br label %bb8
bb8:
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aListed_2e1
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l6
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = call ptr @__olang_region_or(ptr %t36, ptr null)
  %t38 = call ptr @__olang_region_home(ptr %t37)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t33
  call void @__olang_region_settle(ptr %t33, i1 %t41)
  br label %bb10
bb10:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t43 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  %t44 = insertvalue %"compiler/build:Listed" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, 0
  %t46 = insertvalue %"compiler/build:Listed" %t44, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, 1
  store %"compiler/build:Listed" %t46, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/build:Listed", ptr %rv
  ret %"compiler/build:Listed" %rr
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
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca i64
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"compiler/build:Program"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l0
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d418, i32 0, i32 1) }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d419, i32 0, i32 1) }, ptr %l2, !tbaa !27
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l12, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e3
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l12, !tbaa !24
  br label %bb3
bb3:
  %t8 = load i64, ptr %l12
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l14
  br label %bb4
bb4:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e3
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load i64, ptr %l12
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = call ptr @__olang_region_home(ptr %t18)
  %t20 = icmp ne ptr %t19, null
  %t21 = select i1 %t20, ptr %t19, ptr null
  %t22 = icmp eq ptr %t21, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t22)
  br label %bb6
bb6:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l3
  %t24 = ptrtoint ptr %v0 to i64
  store i64 %t24, ptr %l16, !tbaa !24
  %t25 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e4
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = call ptr @__olang_region_make(ptr %v0)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb8
bb8:
  %t29 = load i64, ptr %l16
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t30, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l18
  br label %bb9
bb9:
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e4
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = load i64, ptr %l16
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = call ptr @__olang_region_or(ptr %t38, ptr null)
  %t40 = call ptr @__olang_region_home(ptr %t39)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t35
  call void @__olang_region_settle(ptr %t35, i1 %t43)
  br label %bb11
bb11:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l4
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d420, i32 0, i32 1) }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d421, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t45 = ptrtoint ptr %v0 to i64
  store i64 %t45, ptr %l20, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e7
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = call ptr @__olang_region_make(ptr %v0)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l20, !tbaa !24
  br label %bb13
bb13:
  %t50 = load i64, ptr %l20
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t51, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l22
  br label %bb14
bb14:
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e7
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t55 = load i64, ptr %l20
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = call ptr @__olang_region_home(ptr %t60)
  %t62 = icmp ne ptr %t61, null
  %t63 = select i1 %t62, ptr %t61, ptr null
  %t64 = icmp eq ptr %t63, %t56
  call void @__olang_region_settle(ptr %t56, i1 %t64)
  br label %bb16
bb16:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l7
  %t66 = ptrtoint ptr %v0 to i64
  store i64 %t66, ptr %l24, !tbaa !24
  %t67 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e8
  br i1 %t67, label %bb17, label %bb18
bb17:
  %t69 = call ptr @__olang_region_make(ptr %v0)
  %t70 = ptrtoint ptr %t69 to i64
  store i64 %t70, ptr %l24, !tbaa !24
  br label %bb18
bb18:
  %t71 = load i64, ptr %l24
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t72, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t73, ptr %l26
  br label %bb19
bb19:
  %t74 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e8
  br i1 %t74, label %bb20, label %bb21
bb20:
  %t76 = load i64, ptr %l24
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26, i32 0, i32 0
  %t79 = load { i64, ptr }, ptr %t78
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = call ptr @__olang_region_or(ptr %t80, ptr null)
  %t82 = call ptr @__olang_region_home(ptr %t81)
  %t83 = icmp ne ptr %t82, null
  %t84 = select i1 %t83, ptr %t82, ptr null
  %t85 = icmp eq ptr %t84, %t77
  call void @__olang_region_settle(ptr %t77, i1 %t85)
  br label %bb21
bb21:
  %t86 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t87 = ptrtoint ptr %v0 to i64
  store i64 %t87, ptr %l28, !tbaa !24
  %t88 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e10
  br i1 %t88, label %bb22, label %bb23
bb22:
  %t90 = call ptr @__olang_region_make(ptr %v0)
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l28, !tbaa !24
  br label %bb23
bb23:
  %t92 = load i64, ptr %l28
  %t93 = inttoptr i64 %t92 to ptr
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2ector(ptr %t93, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l30
  br label %bb24
bb24:
  %t95 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e10
  br i1 %t95, label %bb25, label %bb26
bb25:
  %t97 = load i64, ptr %l28
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30, i32 0, i32 0
  %t100 = load { i64, ptr }, ptr %t99
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = call ptr @__olang_region_or(ptr %t101, ptr null)
  %t103 = call ptr @__olang_region_home(ptr %t102)
  %t104 = icmp ne ptr %t103, null
  %t105 = select i1 %t104, ptr %t103, ptr null
  %t106 = icmp eq ptr %t105, %t98
  call void @__olang_region_settle(ptr %t98, i1 %t106)
  br label %bb26
bb26:
  %t107 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  %t108 = getelementptr %"compiler/build:Program", ptr %l32, i32 0, i32 0
  %t109 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %t108
  %t110 = getelementptr %"compiler/build:Program", ptr %l32, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t111, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/build:Program", ptr %l32, i32 0, i32 2
  %t113 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t113, ptr %t112, !tbaa !27
  %t114 = getelementptr %"compiler/build:Program", ptr %l32, i32 0, i32 3
  %t115 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t115, ptr %t114
  %t116 = getelementptr %"compiler/build:Program", ptr %l32, i32 0, i32 4
  %t117 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t117, ptr %t116
  %t118 = getelementptr %"compiler/build:Program", ptr %l32, i32 0, i32 5
  %t119 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t119, ptr %t118, !tbaa !27
  %t120 = getelementptr %"compiler/build:Program", ptr %l32, i32 0, i32 6
  %t121 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t121, ptr %t120, !tbaa !27
  %t122 = getelementptr %"compiler/build:Program", ptr %l32, i32 0, i32 7
  %t123 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t123, ptr %t122
  %t124 = getelementptr %"compiler/build:Program", ptr %l32, i32 0, i32 8
  %t125 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t125, ptr %t124
  %t126 = getelementptr %"compiler/build:Program", ptr %l32, i32 0, i32 9
  %t127 = load i64, ptr %l9, !tbaa !24
  store i64 %t127, ptr %t126, !tbaa !24
  %t128 = getelementptr %"compiler/build:Program", ptr %l32, i32 0, i32 10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %t128
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l32, i64 264, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/build:Sha256" @compiler_2fbuild_3aSha256_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca [8 x i32]
  %l5 = alloca [64 x i8]
  %rv = alloca %"compiler/build:Sha256"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [8 x i32] undef, i32 1779033703, 0
  %t2 = insertvalue [8 x i32] %t1, i32 -1150833019, 1
  %t3 = insertvalue [8 x i32] %t2, i32 1013904242, 2
  %t4 = insertvalue [8 x i32] %t3, i32 -1521486534, 3
  %t5 = insertvalue [8 x i32] %t4, i32 1359893119, 4
  %t6 = insertvalue [8 x i32] %t5, i32 -1694144372, 5
  %t7 = insertvalue [8 x i32] %t6, i32 528734635, 6
  %t8 = insertvalue [8 x i32] %t7, i32 1541459225, 7
  store [8 x i32] %t8, ptr %l0
  br label %fill.13
fill.13:
  br label %fill.10
fill.10:
  %t14 = phi i64 [ 0, %fill.13 ], [ %t15, %fill.11 ]
  %t16 = icmp slt i64 %t14, 64
  br i1 %t16, label %fill.11, label %fill.12
fill.11:
  %t17 = getelementptr [64 x i8], ptr %l5, i64 0, i64 %t14
  store i8 0, ptr %t17
  %t15 = add i64 %t14, 1
  br label %fill.10
fill.12:
  %t18 = load [64 x i8], ptr %l5
  %t19 = load [8 x i32], ptr %l0
  %t20 = insertvalue %"compiler/build:Sha256" undef, [8 x i32] %t19, 0
  %t22 = insertvalue %"compiler/build:Sha256" %t20, [64 x i8] %t18, 1
  %t24 = insertvalue %"compiler/build:Sha256" %t22, i64 0, 2
  %t26 = insertvalue %"compiler/build:Sha256" %t24, i64 0, 3
  store %"compiler/build:Sha256" %t26, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/build:Sha256", ptr %rv
  ret %"compiler/build:Sha256" %rr
}

define dso_local %"compiler/build:Unit" @compiler_2fbuild_3aUnit_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l6 = alloca { i64, ptr }
  %rv = alloca %"compiler/build:Unit"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d422, i32 0, i32 1) }, ptr %l6, !tbaa !27
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
  %t17 = call ptr @__olang_region_home(ptr %t16)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = icmp eq ptr %t19, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t20)
  br label %bb5
bb5:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l0
  %t22 = ptrtoint ptr %v0 to i64
  store i64 %t22, ptr %l13, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e1
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = call ptr @__olang_region_make(ptr %v0)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l13
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t28, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l15
  br label %bb8
bb8:
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e1
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l13
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = call ptr @__olang_region_or(ptr %t36, ptr null)
  %t38 = call ptr @__olang_region_home(ptr %t37)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t33
  call void @__olang_region_settle(ptr %t33, i1 %t41)
  br label %bb10
bb10:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l1
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l17, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e2
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = call ptr @__olang_region_make(ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l17, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l17
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l19
  br label %bb13
bb13:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e2
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l17
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = call ptr @__olang_region_home(ptr %t58)
  %t60 = icmp ne ptr %t59, null
  %t61 = select i1 %t60, ptr %t59, ptr null
  %t62 = icmp eq ptr %t61, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t62)
  br label %bb15
bb15:
  %t63 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l2
  %t64 = ptrtoint ptr %v0 to i64
  store i64 %t64, ptr %l21, !tbaa !24
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e3
  br i1 %t65, label %bb16, label %bb17
bb16:
  %t67 = call ptr @__olang_region_make(ptr %v0)
  %t68 = ptrtoint ptr %t67 to i64
  store i64 %t68, ptr %l21, !tbaa !24
  br label %bb17
bb17:
  %t69 = load i64, ptr %l21
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t70, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l23
  br label %bb18
bb18:
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e3
  br i1 %t72, label %bb19, label %bb20
bb19:
  %t74 = load i64, ptr %l21
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23, i32 0, i32 0
  %t77 = load { i64, ptr }, ptr %t76
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = call ptr @__olang_region_or(ptr %t78, ptr null)
  %t80 = call ptr @__olang_region_home(ptr %t79)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr null
  %t83 = icmp eq ptr %t82, %t75
  call void @__olang_region_settle(ptr %t75, i1 %t83)
  br label %bb20
bb20:
  %t84 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l3
  %t85 = ptrtoint ptr %v0 to i64
  store i64 %t85, ptr %l25, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e4
  br i1 %t86, label %bb21, label %bb22
bb21:
  %t88 = call ptr @__olang_region_make(ptr %v0)
  %t89 = ptrtoint ptr %t88 to i64
  store i64 %t89, ptr %l25, !tbaa !24
  br label %bb22
bb22:
  %t90 = load i64, ptr %l25
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t91, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l27
  br label %bb23
bb23:
  %t93 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e4
  br i1 %t93, label %bb24, label %bb25
bb24:
  %t95 = load i64, ptr %l25
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = call ptr @__olang_region_home(ptr %t100)
  %t102 = icmp ne ptr %t101, null
  %t103 = select i1 %t102, ptr %t101, ptr null
  %t104 = icmp eq ptr %t103, %t96
  call void @__olang_region_settle(ptr %t96, i1 %t104)
  br label %bb25
bb25:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l4
  %t106 = ptrtoint ptr %v0 to i64
  store i64 %t106, ptr %l29, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e5
  br i1 %t107, label %bb26, label %bb27
bb26:
  %t109 = call ptr @__olang_region_make(ptr %v0)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l29, !tbaa !24
  br label %bb27
bb27:
  %t111 = load i64, ptr %l29
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t112, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t113, ptr %l31
  br label %bb28
bb28:
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e5
  br i1 %t114, label %bb29, label %bb30
bb29:
  %t116 = load i64, ptr %l29
  %t117 = inttoptr i64 %t116 to ptr
  %t118 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31, i32 0, i32 0
  %t119 = load { i64, ptr }, ptr %t118
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = call ptr @__olang_region_or(ptr %t120, ptr null)
  %t122 = call ptr @__olang_region_home(ptr %t121)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr null
  %t125 = icmp eq ptr %t124, %t117
  call void @__olang_region_settle(ptr %t117, i1 %t125)
  br label %bb30
bb30:
  %t126 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l5
  %t127 = ptrtoint ptr %v0 to i64
  store i64 %t127, ptr %l33, !tbaa !24
  %t128 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e6
  br i1 %t128, label %bb31, label %bb32
bb31:
  %t130 = call ptr @__olang_region_make(ptr %v0)
  %t131 = ptrtoint ptr %t130 to i64
  store i64 %t131, ptr %l33, !tbaa !24
  br label %bb32
bb32:
  %t132 = load i64, ptr %l33
  %t133 = inttoptr i64 %t132 to ptr
  %t134 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t133, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %l35
  br label %bb33
bb33:
  %t135 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e6
  br i1 %t135, label %bb34, label %bb35
bb34:
  %t137 = load i64, ptr %l33
  %t138 = inttoptr i64 %t137 to ptr
  %t139 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35, i32 0, i32 0
  %t140 = load { i64, ptr }, ptr %t139
  %t141 = extractvalue { i64, ptr } %t140, 1
  %t142 = call ptr @__olang_region_or(ptr %t141, ptr null)
  %t143 = call ptr @__olang_region_home(ptr %t142)
  %t144 = icmp ne ptr %t143, null
  %t145 = select i1 %t144, ptr %t143, ptr null
  %t146 = icmp eq ptr %t145, %t138
  call void @__olang_region_settle(ptr %t138, i1 %t146)
  br label %bb35
bb35:
  %t147 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t147, ptr %l6
  %t148 = ptrtoint ptr %v0 to i64
  store i64 %t148, ptr %l37, !tbaa !24
  %t149 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e7
  br i1 %t149, label %bb36, label %bb37
bb36:
  %t151 = call ptr @__olang_region_make(ptr %v0)
  %t152 = ptrtoint ptr %t151 to i64
  store i64 %t152, ptr %l37, !tbaa !24
  br label %bb37
bb37:
  %t153 = load i64, ptr %l37
  %t154 = inttoptr i64 %t153 to ptr
  %t155 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t154, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t155, ptr %l39
  br label %bb38
bb38:
  %t156 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e7
  br i1 %t156, label %bb39, label %bb40
bb39:
  %t158 = load i64, ptr %l37
  %t159 = inttoptr i64 %t158 to ptr
  %t160 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39, i32 0, i32 0
  %t161 = load { i64, ptr }, ptr %t160
  %t162 = extractvalue { i64, ptr } %t161, 1
  %t163 = call ptr @__olang_region_or(ptr %t162, ptr null)
  %t164 = call ptr @__olang_region_home(ptr %t163)
  %t165 = icmp ne ptr %t164, null
  %t166 = select i1 %t165, ptr %t164, ptr null
  %t167 = icmp eq ptr %t166, %t159
  call void @__olang_region_settle(ptr %t159, i1 %t167)
  br label %bb40
bb40:
  %t168 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %l7
  %t169 = ptrtoint ptr %v0 to i64
  store i64 %t169, ptr %l41, !tbaa !24
  %t170 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e8
  br i1 %t170, label %bb41, label %bb42
bb41:
  %t172 = call ptr @__olang_region_make(ptr %v0)
  %t173 = ptrtoint ptr %t172 to i64
  store i64 %t173, ptr %l41, !tbaa !24
  br label %bb42
bb42:
  %t174 = load i64, ptr %l41
  %t175 = inttoptr i64 %t174 to ptr
  %t176 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t175, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t176, ptr %l43
  br label %bb43
bb43:
  %t177 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e8
  br i1 %t177, label %bb44, label %bb45
bb44:
  %t179 = load i64, ptr %l41
  %t180 = inttoptr i64 %t179 to ptr
  %t181 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43, i32 0, i32 0
  %t182 = load { i64, ptr }, ptr %t181
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = call ptr @__olang_region_or(ptr %t183, ptr null)
  %t185 = call ptr @__olang_region_home(ptr %t184)
  %t186 = icmp ne ptr %t185, null
  %t187 = select i1 %t186, ptr %t185, ptr null
  %t188 = icmp eq ptr %t187, %t180
  call void @__olang_region_settle(ptr %t180, i1 %t188)
  br label %bb45
bb45:
  %t189 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  %t190 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 0
  %t191 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t191, ptr %t190
  %t192 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 1
  %t193 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t193, ptr %t192
  %t194 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 2
  %t195 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t195, ptr %t194
  %t196 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 3
  %t197 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t197, ptr %t196
  %t198 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 4
  %t199 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t199, ptr %t198
  %t200 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 5
  %t201 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t201, ptr %t200
  %t202 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 6
  %t203 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t203, ptr %t202
  %t204 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 7
  %t205 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t205, ptr %t204
  %t206 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t189, ptr %t206
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

@.d0 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"XDG_CACHE_HOME" }>, align 8
declare void @__olang_errpay_pop()
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"/olang/" }>, align 8
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
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"HOME" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/.cache/olang/" }>, align 8
declare i32 @getuid()
@.d8 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/tmp/olang-" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
declare i64 @__olang_fmt_u64(ptr, i64)
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] [i8 0] }>, align 8
@.d11 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d12 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"OLANG_TIMES" }>, align 8
@.d13 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d15 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" ms, " }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d17 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"front" }>, align 8
@.d18 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"lower+emit" }>, align 8
declare i32 @getpid()
@.d19 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".yaml" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define available_externally void @__olang_scope_escape(ptr %s) alwaysinline {
entry:
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %un = icmp eq ptr %o, null
  br i1 %un, label %claim, label %done
claim:
  %me = load ptr, ptr @__olang_self
  store atomic ptr %me, ptr %op monotonic, align 8
  br label %done
done:
  ret void
}
define internal i1 @olang_lambda_21(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %rv = alloca i1
  %cp0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { i64, ptr }, ptr %cp0, !tbaa !28
  store { i64, ptr } %cv0, ptr %l2
  %vq0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  %t4 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr i64, ptr %t5, i64 %a0
  %t7 = load i64, ptr %t6, !tbaa !34
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t8, ptr %l6, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr i64, ptr %t12, i64 %a1
  %t14 = load i64, ptr %t13, !tbaa !34
  %t17 = icmp sgt i64 %t7, %t14
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
@.d22 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"olang: compiling " }>, align 8
@.d23 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" objects, " }>, align 8
@.d24 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" at once\0A" }>, align 8
declare ptr @__olang_standin(ptr)
declare ptr @__olang_worker_get()
declare void @__olang_worker_start(ptr, ptr, ptr, ptr)
define internal ptr @olang_task25(ptr %env) #0 {
entry:
  %f0 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  %f1 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %f2 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %f3 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %f4 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 4
  %f5 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 5
  %f6 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 6
  %f7 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 7
  %sc0 = load ptr, ptr %f4
  %sn0 = icmp eq ptr %sc0, null
  %sg0 = load ptr, ptr @__olang_prog_scope
  %ss0 = select i1 %sn0, ptr %sg0, ptr %sc0
  %sc1 = load ptr, ptr %f5
  %sn1 = icmp eq ptr %sc1, null
  %sg1 = load ptr, ptr @__olang_prog_scope
  %ss1 = select i1 %sn1, ptr %sg1, ptr %sc1
  %sc2 = load ptr, ptr %f6
  %sn2 = icmp eq ptr %sc2, null
  %sg2 = load ptr, ptr @__olang_prog_scope
  %ss2 = select i1 %sn2, ptr %sg2, ptr %sc2
  %sc3 = load ptr, ptr %f7
  %sn3 = icmp eq ptr %sc3, null
  %sg3 = load ptr, ptr @__olang_prog_scope
  %ss3 = select i1 %sn3, ptr %sg3, ptr %sc3
  %a0 = load ptr, ptr %f0
  %a1 = load { i64, ptr }, ptr %f1
  %a2 = load { i64, ptr }, ptr %f2
  %a3 = load { i64, ptr }, ptr %f3
  call void @compiler_2fbuild_2erunner(ptr %ss0, ptr %ss1, ptr %ss2, ptr %ss3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
  ret ptr null
}

declare i64 @__olang_join_tasks_keep(ptr, i1)
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d27 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"./" }>, align 8
@.d28 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Hangup" }>, align 8
@.d29 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Interrupt" }>, align 8
@.d30 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Quit" }>, align 8
@.d31 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"Illegal instruction" }>, align 8
@.d32 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"Trace/breakpoint trap" }>, align 8
@.d33 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Aborted" }>, align 8
@.d34 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Bus error" }>, align 8
@.d35 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"Floating point exception" }>, align 8
@.d36 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Killed" }>, align 8
@.d37 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"Segmentation fault" }>, align 8
@.d38 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"Broken pipe" }>, align 8
@.d39 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"Alarm clock" }>, align 8
@.d40 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"Terminated" }>, align 8
@.d41 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"Unknown signal " }>, align 8
@.d42 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"env" }>, align 8
@.d43 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"OLANG_AUTORACE=0" }>, align 8
@.d44 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d46 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d47 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c": lost track of its build, skipping" }>, align 8
@.d48 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d49 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c": the compiler ended (" }>, align 8
@.d50 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"), skipping" }>, align 8
@.d51 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d55 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d56 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"no listed file has a test named by " }>, align 8
@.d57 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d58 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"olang: error: the self-hosted compiler cannot build this yet: " }>, align 8
@.d59 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--target=" }>, align 8
@.d60 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d61 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"--sysroot=" }>, align 8
@.d62 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d63 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"-D_GNU_SOURCE" }>, align 8
@.d64 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"-fno-vectorize" }>, align 8
@.d65 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"-fno-slp-vectorize" }>, align 8
@.d66 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-mllvm" }>, align 8
@.d67 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"-unroll-runtime=false" }>, align 8
@.d68 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-mllvm" }>, align 8
@.d69 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"-unroll-allow-partial=false" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d70 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-mllvm" }>, align 8
@.d71 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"-enable-shrink-wrap=false" }>, align 8
@.d72 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"bfloat" }>, align 8
@.d73 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-mllvm" }>, align 8
@.d74 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"-fast-isel=false" }>, align 8
@.d75 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"-fsave-optimization-record" }>, align 8
@.d76 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"-foptimization-record-passes=" }>, align 8
@.d77 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-flto" }>, align 8
@.d78 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-flto=thin" }>, align 8
@.d79 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" \22frame-pointer\22=\22all\22" }>, align 8
@.d80 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d81 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"linking" }>, align 8
@.d82 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"-Wl,-plugin-opt,cache-dir=" }>, align 8
@.d83 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"/thinlto" }>, align 8
@.d84 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"-Wl,-plugin-opt,-import-instr-limit=" }>, align 8
@.d85 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-shared" }>, align 8
@.d86 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".map" }>, align 8
@.d87 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{\0A  global:\0A" }>, align 8
@.d88 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d89 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c";\0A" }>, align 8
@.d90 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"  local: *;\0A};\0A" }>, align 8
@.d91 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"-Wl,--version-script=" }>, align 8
@.d92 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"-Wl,-soname," }>, align 8
@.d93 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d94 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-lm" }>, align 8
@.d95 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"-lpthread" }>, align 8
@.d96 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"-ldl" }>, align 8
@.d97 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"-lrt" }>, align 8
@.d98 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"-Wl,-plugin-opt=-enable-shrink-wrap=false" }>, align 8
@.d99 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-lffi" }>, align 8
@.d100 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".link" }>, align 8
@.d101 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d102 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"-flto-jobs=" }>, align 8
@.d103 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d104 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d105 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--target=" }>, align 8
@.d106 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d107 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"--sysroot=" }>, align 8
@.d108 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d109 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-fPIC" }>, align 8
@.d110 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d111 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"-fsanitize=fuzzer" }>, align 8
@.d112 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-O0" }>, align 8
@.d113 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-g" }>, align 8
@.d114 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"-fsanitize=thread" }>, align 8
@.d115 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-O1" }>, align 8
@.d116 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"-fsanitize=thread" }>, align 8
@.d117 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-O2" }>, align 8
@.d118 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-O3" }>, align 8
@.d119 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-flto=thin" }>, align 8
@.d120 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-flto" }>, align 8
@.d121 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d122 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d123 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".o" }>, align 8
@.d124 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d125 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang_runtime" }>, align 8
@.d126 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d127 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d128 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang_dyncall" }>, align 8
@.d129 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d130 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d131 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".lock" }>, align 8
declare i32 @usleep(i32)
@.d132 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang_runtime" }>, align 8
@.d133 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d134 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang_dyncall" }>, align 8
@.d135 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"== " }>, align 8
@.d136 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ==" }>, align 8
@.d137 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"36" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d138 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"code" }>, align 8
@.d139 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
@.d140 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c".5.precodegen.bc" }>, align 8
@.d141 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d142 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--target=" }>, align 8
@.d143 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_209_3e_2e_2d1 = weak hidden constant i1 false
@.d144 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
@.d145 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-S" }>, align 8
@.d146 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-emit-llvm" }>, align 8
@.d147 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d148 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ir" }>, align 8
@.d149 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-Xclang" }>, align 8
@.d150 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"-disable-llvm-passes" }>, align 8
@.d151 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@olang_2esole_2eArray_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2e_2d1 = weak hidden constant i1 false
@.d152 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1 = weak hidden constant i1 false
@.d153 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--version" }>, align 8
@.d154 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d155 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aConfig_2e37 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d156 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d157 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d158 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d159 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"-max_total_time=" }>, align 8
@.d160 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"fuzzing " }>, align 8
@.d161 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c": failing inputs go to " }>, align 8
@.d162 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d163 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"36" }>, align 8
@.d164 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"fuzzing " }>, align 8
@.d165 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c": nothing failed" }>, align 8
@.d166 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"32" }>, align 8
@.d167 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"fuzzing " }>, align 8
@.d168 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c": an input failed, saved in " }>, align 8
@.d169 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"/ - 'olang test' replays it" }>, align 8
@.d170 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d171 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d172 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d173 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d174 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".tmp" }>, align 8
@.d175 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d176 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".lib" }>, align 8
@.d177 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d178 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"/lib" }>, align 8
@.d179 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".so" }>, align 8
@.d180 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".h" }>, align 8
@.d181 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d182 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"link" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aConfig_2e31 = weak hidden constant i1 false
@.d183 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"built " }>, align 8
@.d184 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" and " }>, align 8
@.d185 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"32" }>, align 8
@.d186 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"-Wl,-plugin-opt,-import-instr-limit=" }>, align 8
@.d187 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"-Wl,-plugin-opt=save-temps" }>, align 8
@.d188 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"-Wl,-plugin-opt=emit-asm" }>, align 8
@.d189 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"-Wl,-plugin-opt=opt-remarks-filename=" }>, align 8
@.d190 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"/link.yaml" }>, align 8
@.d191 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"-Wl,-plugin-opt=opt-remarks-passes=" }>, align 8
@.d192 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d193 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/code" }>, align 8
@.d194 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-lm" }>, align 8
@.d195 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"-lpthread" }>, align 8
@.d196 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"-ldl" }>, align 8
@.d197 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d198 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-lffi" }>, align 8
@.d199 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d200 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d201 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d202 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/code" }>, align 8
@.d203 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"link" }>, align 8
@.d204 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/made" }>, align 8
@.d205 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d206 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d207 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d208 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.c209 = private unnamed_addr constant [5 x i8] c"true\00"
@.c210 = private unnamed_addr constant [6 x i8] c"false\00"
@.d211 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"/u" }>, align 8
@.d212 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".in.ll" }>, align 8
@.d213 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-S" }>, align 8
@.d214 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-emit-llvm" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_204_3e_2e_2d1 = weak hidden constant i1 false
@.d215 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
@.d216 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".s" }>, align 8
@.d217 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"/u" }>, align 8
@.d218 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"-foptimization-record-file=" }>, align 8
@.d219 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"/u" }>, align 8
@.d220 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".yaml" }>, align 8
@.d221 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d222 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"/u" }>, align 8
@.d223 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".in.ll" }>, align 8
@.d224 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"/u" }>, align 8
@.d225 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".in.ll" }>, align 8
@.d226 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/made" }>, align 8
@.d227 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d228 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".race" }>, align 8
@.d229 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d230 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".debug" }>, align 8
@.d231 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d232 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".quick" }>, align 8
@.d233 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d234 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".san" }>, align 8
@.d235 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d236 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".lib" }>, align 8
@.d237 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d238 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".cell" }>, align 8
@.d239 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d240 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d241 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".fuzz" }>, align 8
@.d242 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d243 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".prof" }>, align 8
@.d244 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d245 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".listing" }>, align 8
@.d246 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d247 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".bench" }>, align 8
@.d248 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d249 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".checked" }>, align 8
@.d250 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d251 = private constant <{ i64, [136 x i8] }> <{ i64 0, [136 x i8] c"olang: tests that start a task run under the race detector (P7), but clang's ThreadSanitizer runtime is not installed (libclang_rt.tsan-" }>, align 8
@.d252 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c".a, in Debian and Ubuntu libclang-rt-N-dev): they run without it" }>, align 8
@.d253 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"33" }>, align 8
@.d254 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d255 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"m" }>, align 8
@.d256 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"[0m" }>, align 8
@.d257 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d258 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"OLANG_AUTORACE" }>, align 8
@.d259 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d260 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d261 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d262 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c".counts" }>, align 8
@.d263 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c".counts" }>, align 8
@.d264 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c".counts" }>, align 8
@.d265 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d266 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" passed, " }>, align 8
@.d267 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" failed" }>, align 8
@.d268 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d269 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"env" }>, align 8
@.d270 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"OLANG_TEST_COUNTS=" }>, align 8
@.d271 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c": the tests ended by a signal (" }>, align 8
@.d272 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d273 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d274 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c": semantic errors, skipping" }>, align 8
@.d275 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d276 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c": cannot be built, skipping" }>, align 8
@.d277 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d278 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d279 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"|hoist" }>, align 8
@.d280 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d281 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d282 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@olang_2esole_2ecompiler__2fbuild__2ecompiler__2fbuild__3aConfig__2ewant_2elocal_2e14 = weak hidden constant i1 false
@.d283 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d284 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d285 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
@.d286 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"olang_" }>, align 8
@.d287 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d288 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c".tmp.ll" }>, align 8
@.d289 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"source_filename" }>, align 8
@.d290 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"\0Asource_filename" }>, align 8
@.d291 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"source_filename = \22" }>, align 8
@.d292 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\22\0A" }>, align 8
@.d293 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d294 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d295 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".tmp" }>, align 8
@.d296 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-c" }>, align 8
@.d297 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d298 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"-foptimization-record-file=" }>, align 8
@.d299 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".yaml" }>, align 8
@.d300 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".yaml" }>, align 8
@.d301 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d302 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"OLANG_JOBS" }>, align 8
@.d303 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i64 @sysconf(i32)
@.d304 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"/proc/meminfo" }>, align 8
@.d305 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"MemAvailable:" }>, align 8
@.d306 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d307 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] [i8 -128] }>, align 8
@.d308 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] [i8 0] }>, align 8
@.d309 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".lock" }>, align 8
@.d310 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"/pid" }>, align 8
@.d311 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"N" }>, align 8
@.d312 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"N" }>, align 8
@.d313 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"41" }>, align 8
@.d314 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"attributes #0 = { nounwind " }>, align 8
@.d315 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" }\0A" }>, align 8
@.d316 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"target triple = \22" }>, align 8
@.d317 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\22\0A" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aUnit_2e2 = weak hidden constant i1 false
@.d318 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"define i32 @lib_n() #0 {\0A  ret i32 " }>, align 8
@.d319 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\0A}\0A" }>, align 8
@.d320 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"lib" }>, align 8
@.d321 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"define i32 @util_k() #0 {\0A  ret i32 " }>, align 8
@.d322 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\0A}\0A" }>, align 8
@.d323 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"util" }>, align 8
@.d324 = private constant <{ i64, [90 x i8] }> <{ i64 0, [90 x i8] c"declare i32 @lib_n()\0Adeclare i32 @util_k()\0Adeclare i32 @inst_z()\0Adeclare void @olang_rt()\0A" }>, align 8
@.d325 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"define i32 @main() #0 {\0A  call void @olang_rt()\0A  %a = call i32 @lib_n()\0A" }>, align 8
@.d326 = private constant <{ i64, [96 x i8] }> <{ i64 0, [96 x i8] c"  %b = call i32 @util_k()\0A  %c = call i32 @inst_z()\0A  %s = add i32 %a, %b\0A  %t = add i32 %s, %c\0A" }>, align 8
@.d327 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"  ret i32 %t\0A}\0A" }>, align 8
@.d328 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"app" }>, align 8
@.d329 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"define i32 @inst_z() #0 {\0A  ret i32 0\0A}\0A" }>, align 8
@.d330 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"app" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aProgram_2e1 = weak hidden constant i1 false
@.d331 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"define void @olang_rt() #0 {\0A  ret void\0A}\0A" }>, align 8
@.d332 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d333 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"()\0A" }>, align 8
@.d334 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d335 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d336 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d337 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"clang" }>, align 8
@.d338 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"opt" }>, align 8
@.d339 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d340 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d341 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".bc" }>, align 8
@.d342 = private constant <{ i64, [129 x i8] }> <{ i64 0, [129 x i8] c"function(sroa,early-cse<memssa>,simplifycfg,instcombine<no-verify-fixpoint>),function(loop-mssa(loop-rotate,licm)),function(irce)" }>, align 8
@.d343 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" -passes=" }>, align 8
@.d344 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d345 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" -o " }>, align 8
@.d346 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" &&" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d347 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d348 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"; s=$?; rm -f " }>, align 8
@.d349 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"; exit $s" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_203_3e_2e_2d1 = weak hidden constant i1 false
@.d350 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"/bin/sh" }>, align 8
@.d351 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-c" }>, align 8
@.d352 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"/pid" }>, align 8
@.d353 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d354 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"/proc/" }>, align 8
@.d355 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d356 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d357 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".main" }>, align 8
@.d358 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".test" }>, align 8
@.d359 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".inst" }>, align 8
@.d360 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".loc" }>, align 8
@.d361 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d362 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
define internal i1 @olang_lambda_363(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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

@.d364 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".yaml" }>, align 8
@.d365 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d366 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"made" }>, align 8
@.d367 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".yaml" }>, align 8
@.d368 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".in.ll" }>, align 8
@.d369 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
@.d370 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d371 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/made" }>, align 8
@.d372 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d373 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d374 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"/proc/self/status" }>, align 8
@.d375 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"memory unknown" }>, align 8
@.d376 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"VmRSS:" }>, align 8
@.d377 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"VmHWM:" }>, align 8
@.d378 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" MB resident (at most " }>, align 8
@.d379 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" MB)" }>, align 8
@.d380 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d381 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d382 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2fbuild__2enoTestNamed_2elocal_2e8 = weak hidden constant i1 false
@.d383 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d384 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" - did you mean '" }>, align 8
@.d385 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'?" }>, align 8
@.d386 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d387 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d388 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c": no test is named by " }>, align 8
@.d389 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d390 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"touch " }>, align 8
@.d391 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" 2> /dev/null" }>, align 8
@.d392 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
define internal i1 @olang_lambda_393(ptr %env, ptr %v0, ptr %v1, %"compiler/build:Aged" %a0, %"compiler/build:Aged" %a1) #0 {
entry:
  %l0 = alloca %"compiler/build:Aged"
  %l1 = alloca %"compiler/build:Aged"
  %rv = alloca i1
  store %"compiler/build:Aged" %a0, ptr %l0
  store %"compiler/build:Aged" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/build:Aged", ptr %l0, i32 0, i32 2
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/build:Aged", ptr %l1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = icmp slt i64 %t2, %t4
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d394 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d395 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d396 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".link" }>, align 8
@.d397 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d398 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d399 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d400 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"cannot run " }>, align 8
@.d401 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d402 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"olang: compiled " }>, align 8
@.d403 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d404 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d405 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d406 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d407 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"OLANG_TIMES" }>, align 8
@.d408 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d409 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d410 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"build" }>, align 8
@.d411 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d412 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d413 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aConfig_2e24 = weak hidden constant i1 false
declare ptr @__olang_region_home(ptr)
@olang_2esole_2ecompiler_2fbuild_3aConfig_2e26 = weak hidden constant i1 false
@.d414 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d415 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d416 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d417 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aListed_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3aListed_2e1 = weak hidden constant i1 false
@.d418 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d419 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aProgram_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3aProgram_2e4 = weak hidden constant i1 false
@.d420 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d421 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aProgram_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3aProgram_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3aProgram_2e10 = weak hidden constant i1 false
@.d422 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@__olang_self = external thread_local(initialexec) global ptr
define available_externally ptr @__olang_capture_scope(ptr %s) alwaysinline {
entry:
  %isprog = icmp eq ptr %s, null
  br i1 %isprog, label %prog, label %mine
prog:
  %p = load ptr, ptr @__olang_prog_scope
  ret ptr %p
mine:
  %m = call ptr @__olang_scope_mine(ptr %s)
  ret ptr %m
}
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
define available_externally ptr @__olang_scope_mine(ptr %s) alwaysinline {
entry:
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %me = load ptr, ptr @__olang_self
  %own = icmp eq ptr %o, %me
  br i1 %own, label %mine, label %slow
mine:
  ret ptr %s
slow:
  %r = call ptr @__olang_scope_mine_slow(ptr %s)
  ret ptr %r
}
declare ptr @__olang_scope_mine_slow(ptr) noinline
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_807a392292b9ae5a_fba630df00719f06 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2ftime_2eNow()
declare void @std_2fos_2eExit(i32 %a0)
@olang_loc_1a0af222d89a1264_6ae848cde6020298 = external constant [0 x i8]
@olang_loc_cca858d13f2cc89a_874b1ca570aaca06 = external constant [0 x i8]
@olang_loc_2b4b55182e30c5b8_1dd1254afca8c384 = external constant [0 x i8]
@olang_loc_3fd1be9bff2cc025_306b5f0bb3e84491 = external constant [0 x i8]
@olang_loc_bc625dc042a99e06_c0b5fdead4ea6272 = external constant [0 x i8]
declare void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare void @std_2fchan_3aChan_3cI64_3e_2ector(ptr %out, ptr %v0, i64 %a0)
declare i32 @std_2fchan_2eSend_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_1359a9f97975288c_a8d4abcb606172b0 = external constant [0 x i8]
declare void @std_2fchan_2eClose_3cI64_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_84eba90bdad5d702_427cd4b75eaf1c36 = external constant [0 x i8]
declare void @compiler_2fspin_2eEnd()
declare i1 @compiler_2ftarget_2eHasRaceRuntime(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2fmeasure_2eTotal(ptr %v0, i64 %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v0)
declare i64 @compiler_2fmsgs_2eDistance(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_7d17f382592ac8ef_3cd22268ed245003 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftarget_2eSysroot(ptr %v0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fspin_2eRetitle(ptr %v0, { i64, ptr } %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRemove(ptr %v0, { i64, ptr } %a0)
declare { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %a0)
@olang_loc_4cf283899a273ea5_54dbe84ebef87a69 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %a0)
declare %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_ed85b58552229ad2_db88a25435ad515e = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_39c6cdce0ac4fdc7_621aa1b204fc2693 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eClangFailed(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H2ab12f44ffbd18d099d1f5a69642975a(ptr %v0, ptr %a0)
declare { i32, %"std/os:Output" } @compiler_2ftarget_2eClangSays(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fos_2eRename(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_3ba7d2bc4f70132e_88e22ea564bfc3e2 = external constant [0 x i8]
declare i32 @std_2fos_2eLink(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOutputCannotWrite(ptr %v0)
declare %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare { i32, { i64, ptr } } @compiler_2ftarget_2ecompiler_2ftarget_3aTarget_2eRunner(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNoEmulator(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_81dfa638548de3d7_ab0731b6a5acba3 = external constant [0 x i8]
@olang_loc_64cef890f5e30dfa_ab05d47f854753c6 = external constant [0 x i8]
@olang_loc_adf83e678ec27f19_e5a5f2a4f92e5ce5 = external constant [0 x i8]
@olang_loc_d790d12bf07ae06c_96ebe5e6b28bd688 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoClang(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2eU32_2eFormat(ptr %v0, i32 %a0, i64 %a1)
@olang_loc_8179dc362f2d1bfc_fef952a35fe3ad58 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare i32 @std_2fos_2eMkDir(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eHas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eRaw(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ePush_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/build:Unit" %a1)
declare i32 @compiler_2fmeasure_2eMeasure(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, { i64, ptr } %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSummary(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fos_2eQuote(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2ftime_2eWall()
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_55ad031485a0eb50_815537920d1d6894 = external constant [0 x i8]
@olang_loc_7cb1cbeb873878be_a9deaf72b78184ba = external constant [0 x i8]
@olang_loc_46572e8a3ed1f877_752b2fa47e3744e3 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare i1 @compiler_2fmsgs_2eNear(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare i32 @std_2fos_2eRun(ptr %v0, { i64, ptr } %a0)
@olang_loc_c2e3e05ea269d042_ab0ea8740a7d243e = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aAged_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aAged_3e_2ePush_3ccompiler_2fbuild_3aAged_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/build:Aged" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aAged_3e_2eSort_3cco_H63eebd47c26ebfd40b5b0af0aaa7c615(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aAged_3e_2eLen_3ccompiler_2fbuild_3aAged_3e(ptr %v0, ptr %a0)
declare %"compiler/build:Aged" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aAged_3e_2eAt_3ccompiler_2fbuild_3aAged_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fchan_2estd_2fchan_3aChan_3cI64_3e_2eNext_3cI64_3e(ptr %v0, ptr %a0)
@G_2estd_2fio_2eStdout = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare void @compiler_2fspin_2eSay(ptr %v0, i32 %a0, { i64, ptr } %a1)
@G_2estd_2fio_2eStderr = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare %"compiler/target:Target" @compiler_2ftarget_3aTarget_2ector(ptr %v0)
declare void @compiler_2fcond_3aConsts_2ector(ptr %out, ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2ector(ptr %v0, i64 %a0)
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
