source_filename = "std_sha256.quick.ll"
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
%"std/sha256:Hasher" = type { [8 x i32], [64 x i8], i64, i64 }
@G_2estd_2fsha256_2ek = constant <{ [256 x i8] }> <{ [256 x i8] c"\98\2F\8A\42\91\44\37\71\CF\FB\C0\B5\A5\DB\B5\E9\5B\C2\56\39\F1\11\F1\59\A4\82\3F\92\D5\5E\1C\AB\98\AA\07\D8\01\5B\83\12\BE\85\31\24\C3\7D\0C\55\74\5D\BE\72\FE\B1\DE\80\A7\06\DC\9B\74\F1\9B\C1\C1\69\9B\E4\86\47\BE\EF\C6\9D\C1\0F\CC\A1\0C\24\6F\2C\E9\2D\AA\84\74\4A\DC\A9\B0\5C\DA\88\F9\76\52\51\3E\98\6D\C6\31\A8\C8\27\03\B0\C7\7F\59\BF\F3\0B\E0\C6\47\91\A7\D5\51\63\CA\06\67\29\29\14\85\0A\B7\27\38\21\1B\2E\FC\6D\2C\4D\13\0D\38\53\54\73\0A\65\BB\0A\6A\76\2E\C9\C2\81\85\2C\72\92\A1\E8\BF\A2\4B\66\1A\A8\70\8B\4B\C2\A3\51\6C\C7\19\E8\92\D1\24\06\99\D6\85\35\0E\F4\70\A0\6A\10\16\C1\A4\19\08\6C\37\1E\4C\77\48\27\B5\BC\B0\34\B3\0C\1C\39\4A\AA\D8\4E\4F\CA\9C\5B\F3\6F\2E\68\EE\82\8F\74\6F\63\A5\78\14\78\C8\84\08\02\C7\8C\FA\FF\BE\90\EB\6C\50\A4\F7\A3\F9\BE\F2\78\71\C6" }>, align 64
define dso_local { i64, ptr } @std_2fsha256_2eHex(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i64, ptr } @std_2fsha256_2eSum(ptr %v0, ptr %v1, { i64, ptr } %a0)
  store { i64, ptr } %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = mul i64 %t5, 1
  %t8 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t7)
  call void @llvm.memcpy.p0.p0.i64(ptr %t8, ptr %t6, i64 %t7, i1 false)
  %t9 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  %t12 = call { i64, ptr } @std_2fhex_2eEncode(ptr %v1, ptr %v1, { i64, ptr } %t10)
  store { i64, ptr } %t12, ptr %l4
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t13, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fsha256_2eSum(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/sha256:Hasher"
  %l2 = alloca %"std/sha256:Hasher"
  %l6 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/sha256:Hasher" @std_2fsha256_3aHasher_2ector(ptr %s0)
  store %"std/sha256:Hasher" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"std/sha256:Hasher", ptr %l2
  store %"std/sha256:Hasher" %t2, ptr %l1
  call void @std_2fsha256_2estd_2fsha256_3aHasher_2ePush(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %a0)
  br label %bb2
bb2:
  %t7 = call { i64, ptr } @std_2fsha256_2estd_2fsha256_3aHasher_2eSum(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t7, ptr %l6
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @std_2fsha256_2erotr(i32 %a0, i32 %a1) #0 {
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

define dso_local void @std_2fsha256_2estd_2fsha256_3aHasher_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca ptr
  %l15 = alloca i1
  %l23 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l61 = alloca ptr
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"std/sha256:Hasher", ptr %t2, i32 0, i32 3
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = add i64 %t4, %t7
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t13 = getelementptr %"std/sha256:Hasher", ptr %t12, i32 0, i32 3
  store i64 %t10, ptr %t13, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"std/sha256:Hasher", ptr %t14, i32 0, i32 2
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb16
bb3:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t27 = icmp slt i64 %t21, %t24
  br i1 %t27, label %bb4, label %bb5
bb4:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"std/sha256:Hasher", ptr %t29, i32 0, i32 2
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = icmp slt i64 %t32, 64
  store i1 %t34, ptr %l15, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l15, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/sha256:Hasher", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t44, ptr %l23, !tbaa !27
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i8, ptr %t48, i64 %t45
  %t50 = load i8, ptr %t49, !tbaa !32
  %t53 = getelementptr %"std/sha256:Hasher", ptr %t39, i32 0, i32 1
  %t55 = getelementptr [64 x i8], ptr %t53, i64 0, i64 %t43
  store i8 %t50, ptr %t55, !tbaa !32
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l26, !tbaa !29
  %t57 = load ptr, ptr %l26, !tbaa !29
  %t58 = getelementptr %"std/sha256:Hasher", ptr %t57, i32 0, i32 2
  %t59 = load i64, ptr %t58, !tbaa !24
  %t61 = add i64 %t59, 1
  %t63 = load ptr, ptr %l26, !tbaa !29
  %t64 = getelementptr %"std/sha256:Hasher", ptr %t63, i32 0, i32 2
  store i64 %t61, ptr %t64, !tbaa !24
  %t65 = load i64, ptr %l2, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l2, !tbaa !24
  br label %bb10
bb10:
  br label %bb3
bb11:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"std/sha256:Hasher", ptr %t69, i32 0, i32 2
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
  %t79 = getelementptr %"std/sha256:Hasher", ptr %t77, i32 0, i32 1
  %t81 = insertvalue { i64, ptr } undef, i64 64, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t79, 1
  call void @std_2fsha256_2estd_2fsha256_3aHasher_2eblock(ptr %v0, ptr %v0, ptr %t76, { i64, ptr } %t82, i64 0)
  br label %bb15
bb15:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"std/sha256:Hasher", ptr %t85, i32 0, i32 2
  store i64 0, ptr %t87, !tbaa !24
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t88 = load i64, ptr %l2, !tbaa !24
  %t90 = add i64 %t88, 64
  %t91 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t96 = icmp sle i64 %t90, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb18, label %bb19
bb18:
  br label %bb23
bb19:
  br label %bb20
bb20:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t102 = load i64, ptr %l2, !tbaa !24
  call void @std_2fsha256_2estd_2fsha256_3aHasher_2eblock(ptr %v0, ptr %v1, ptr %t100, { i64, ptr } %t101, i64 %t102)
  br label %bb21
bb21:
  %t106 = load i64, ptr %l2, !tbaa !24
  %t108 = add i64 %t106, 64
  store i64 %t108, ptr %l2, !tbaa !24
  br label %bb22
bb22:
  br label %bb17
bb23:
  br label %bb24
bb24:
  %t110 = load i64, ptr %l2, !tbaa !24
  %t111 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  %t116 = icmp slt i64 %t110, %t113
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb25, label %bb26
bb25:
  br label %bb29
bb26:
  br label %bb27
bb27:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"std/sha256:Hasher", ptr %t121, i32 0, i32 2
  %t124 = load i64, ptr %t123, !tbaa !24
  %t125 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t125, ptr %l58, !tbaa !27
  %t126 = load i64, ptr %l2, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i8, ptr %t129, i64 %t126
  %t131 = load i8, ptr %t130, !tbaa !32
  %t134 = getelementptr %"std/sha256:Hasher", ptr %t120, i32 0, i32 1
  %t136 = getelementptr [64 x i8], ptr %t134, i64 0, i64 %t124
  store i8 %t131, ptr %t136, !tbaa !32
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l61, !tbaa !29
  %t138 = load ptr, ptr %l61, !tbaa !29
  %t139 = getelementptr %"std/sha256:Hasher", ptr %t138, i32 0, i32 2
  %t140 = load i64, ptr %t139, !tbaa !24
  %t142 = add i64 %t140, 1
  %t144 = load ptr, ptr %l61, !tbaa !29
  %t145 = getelementptr %"std/sha256:Hasher", ptr %t144, i32 0, i32 2
  store i64 %t142, ptr %t145, !tbaa !24
  %t146 = load i64, ptr %l2, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l2, !tbaa !24
  br label %bb28
bb28:
  br label %bb24
bb29:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @std_2fsha256_2estd_2fsha256_3aHasher_2eSum(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/sha256:Hasher"
  %l2 = alloca i64
  %l3 = alloca [1 x i8]
  %l4 = alloca [1 x i8]
  %l5 = alloca [8 x i8]
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca [32 x i8]
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i32
  %l40 = alloca i64
  %l43 = alloca i64
  %l66 = alloca i64
  %l75 = alloca [32 x i8]
  %l79 = alloca i64
  %l82 = alloca i64
  %l129 = alloca [32 x i8]
  %l130 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load %"std/sha256:Hasher", ptr %t1
  store %"std/sha256:Hasher" %t3, ptr %l1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/sha256:Hasher", ptr %t5, i32 0, i32 3
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = mul i64 %t8, 8
  store i64 %t11, ptr %l2, !tbaa !65
  %t13 = insertvalue [1 x i8] undef, i8 -128, 0
  store [1 x i8] %t13, ptr %l3
  %t16 = insertvalue { i64, ptr } undef, i64 1, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %l3, 1
  call void @std_2fsha256_2estd_2fsha256_3aHasher_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } %t17)
  br label %bb1
bb1:
  %t20 = insertvalue [1 x i8] undef, i8 0, 0
  store [1 x i8] %t20, ptr %l4
  br label %bb2
bb2:
  %t22 = getelementptr %"std/sha256:Hasher", ptr %l1, i32 0, i32 2
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = icmp ne i64 %t23, 56
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t30 = insertvalue { i64, ptr } undef, i64 1, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %l4, 1
  call void @std_2fsha256_2estd_2fsha256_3aHasher_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } %t31)
  br label %bb6
bb6:
  br label %bb7
bb7:
  br label %bb2
bb8:
  store i64 0, ptr %l6, !tbaa !24
  store i64 8, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t40 = load i64, ptr %l8, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb14
bb11:
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l8, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l43, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb13
bb13:
  %t60 = load i64, ptr %l43, !tbaa !24
  store i64 %t60, ptr %l40, !tbaa !24
  br label %bb14
bb14:
  %t61 = load i64, ptr %l40, !tbaa !24
  store i64 %t61, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb15
bb15:
  %t62 = load i64, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t70 = load i64, ptr %l6, !tbaa !24
  %t71 = load i64, ptr %l10, !tbaa !24
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l11, !tbaa !24
  %t80 = load i64, ptr %l11, !tbaa !24
  %t81 = load i64, ptr %l2, !tbaa !65
  %t82 = load i64, ptr %l11, !tbaa !24
  %t84 = mul i64 8, %t82
  %t86 = sub i64 56, %t84
  store i64 %t86, ptr %l66, !tbaa !65
  %t89 = load i64, ptr %l66, !tbaa !65
  %t90 = load i64, ptr %l66, !tbaa !65
  %t91 = lshr i64 %t81, %t90
  %t93 = and i64 %t91, 255
  %t95 = trunc i64 %t93 to i8
  %t98 = getelementptr [8 x i8], ptr %l5, i64 0, i64 %t80
  store i8 %t95, ptr %t98, !tbaa !32
  br label %bb19
bb19:
  %t99 = load i64, ptr %l10, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l10, !tbaa !24
  br label %bb15
bb20:
  %t104 = insertvalue { i64, ptr } undef, i64 8, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %l5, 1
  call void @std_2fsha256_2estd_2fsha256_3aHasher_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } %t105)
  br label %bb21
bb21:
  br label %fill.111
fill.111:
  br label %fill.108
fill.108:
  %t112 = phi i64 [ 0, %fill.111 ], [ %t113, %fill.109 ]
  %t114 = icmp slt i64 %t112, 32
  br i1 %t114, label %fill.109, label %fill.110
fill.109:
  %t115 = getelementptr [32 x i8], ptr %l75, i64 0, i64 %t112
  store i8 0, ptr %t115
  %t113 = add i64 %t112, 1
  br label %fill.108
fill.110:
  %t116 = load [32 x i8], ptr %l75
  store [32 x i8] %t116, ptr %l12
  store i64 0, ptr %l13, !tbaa !24
  store i64 8, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t117 = load i64, ptr %l14, !tbaa !24
  %t118 = load i64, ptr %l13, !tbaa !24
  %t121 = icmp sgt i64 %t117, %t118
  br i1 %t121, label %bb22, label %bb23
bb22:
  %t123 = load i64, ptr %l15, !tbaa !24
  %t125 = icmp sgt i64 %t123, 0
  br i1 %t125, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb27
bb24:
  %t127 = load i64, ptr %l14, !tbaa !24
  %t128 = load i64, ptr %l13, !tbaa !24
  %t131 = sub i64 %t127, %t128
  %t132 = load i64, ptr %l15, !tbaa !24
  %t135 = add i64 %t131, %t132
  %t137 = sub i64 %t135, 1
  %t138 = load i64, ptr %l15, !tbaa !24
  %t141 = sdiv i64 %t137, %t138
  store i64 %t141, ptr %l82, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l82, !tbaa !24
  br label %bb26
bb26:
  %t143 = load i64, ptr %l82, !tbaa !24
  store i64 %t143, ptr %l79, !tbaa !24
  br label %bb27
bb27:
  %t144 = load i64, ptr %l79, !tbaa !24
  store i64 %t144, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb28
bb28:
  %t145 = load i64, ptr %l17, !tbaa !24
  %t146 = load i64, ptr %l16, !tbaa !24
  %t149 = icmp slt i64 %t145, %t146
  %t151 = xor i1 %t149, true
  br i1 %t151, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  br label %bb31
bb31:
  %t153 = load i64, ptr %l13, !tbaa !24
  %t154 = load i64, ptr %l17, !tbaa !24
  %t155 = load i64, ptr %l15, !tbaa !24
  %t158 = mul i64 %t154, %t155
  %t161 = add i64 %t153, %t158
  store i64 %t161, ptr %l18, !tbaa !24
  %t163 = load i64, ptr %l18, !tbaa !24
  %t164 = getelementptr %"std/sha256:Hasher", ptr %l1, i32 0, i32 0
  %t166 = getelementptr [8 x i32], ptr %t164, i64 0, i64 %t163
  %t167 = load i32, ptr %t166, !tbaa !84
  store i32 %t167, ptr %l19, !tbaa !64
  %t169 = load i64, ptr %l18, !tbaa !24
  %t171 = mul i64 4, %t169
  %t172 = load i32, ptr %l19, !tbaa !64
  %t174 = lshr i32 %t172, 24
  %t176 = trunc i32 %t174 to i8
  %t179 = getelementptr [32 x i8], ptr %l12, i64 0, i64 %t171
  store i8 %t176, ptr %t179, !tbaa !32
  %t180 = load i64, ptr %l18, !tbaa !24
  %t182 = mul i64 4, %t180
  %t184 = add i64 %t182, 1
  %t185 = load i32, ptr %l19, !tbaa !64
  %t187 = lshr i32 %t185, 16
  %t189 = and i32 %t187, 255
  %t191 = trunc i32 %t189 to i8
  %t194 = getelementptr [32 x i8], ptr %l12, i64 0, i64 %t184
  store i8 %t191, ptr %t194, !tbaa !32
  %t195 = load i64, ptr %l18, !tbaa !24
  %t197 = mul i64 4, %t195
  %t199 = add i64 %t197, 2
  %t200 = load i32, ptr %l19, !tbaa !64
  %t202 = lshr i32 %t200, 8
  %t204 = and i32 %t202, 255
  %t206 = trunc i32 %t204 to i8
  %t209 = getelementptr [32 x i8], ptr %l12, i64 0, i64 %t199
  store i8 %t206, ptr %t209, !tbaa !32
  %t210 = load i64, ptr %l18, !tbaa !24
  %t212 = mul i64 4, %t210
  %t214 = add i64 %t212, 3
  %t215 = load i32, ptr %l19, !tbaa !64
  %t217 = and i32 %t215, 255
  %t219 = trunc i32 %t217 to i8
  %t222 = getelementptr [32 x i8], ptr %l12, i64 0, i64 %t214
  store i8 %t219, ptr %t222, !tbaa !32
  br label %bb32
bb32:
  %t223 = load i64, ptr %l17, !tbaa !24
  %t225 = add i64 %t223, 1
  store i64 %t225, ptr %l17, !tbaa !24
  br label %bb28
bb33:
  %t227 = load [32 x i8], ptr %l12
  store [32 x i8] %t227, ptr %l129
  %t228 = mul i64 32, 1
  %t229 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t228)
  %t230 = insertvalue { i64, ptr } undef, i64 32, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  store { i64, ptr } %t231, ptr %l130, !tbaa !27
  %t232 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = mul i64 32, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t233, ptr %l129, i64 %t234, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t235 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t235, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fsha256_2estd_2fsha256_3aHasher_2eblock(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
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
  %l33 = alloca i32
  %l35 = alloca [64 x i32]
  %l39 = alloca i64
  %l42 = alloca i64
  %l65 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l95 = alloca i64
  %l98 = alloca i64
  %l119 = alloca i32
  %l123 = alloca i32
  %l133 = alloca i32
  %l137 = alloca i32
  %l177 = alloca i64
  %l180 = alloca i64
  %l198 = alloca i32
  %l200 = alloca i32
  %l202 = alloca i32
  %l203 = alloca i32
  %l205 = alloca i32
  %l224 = alloca i32
  %l226 = alloca i32
  %l227 = alloca i32
  %l229 = alloca i32
  %l257 = alloca ptr
  %l261 = alloca ptr
  %l265 = alloca ptr
  %l269 = alloca ptr
  %l273 = alloca ptr
  %l277 = alloca ptr
  %l281 = alloca ptr
  %l285 = alloca ptr
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
  %t8 = getelementptr [64 x i32], ptr %l35, i64 0, i64 %t5
  store i32 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l35, i64 256, i1 false)
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
  store i64 0, ptr %l39, !tbaa !24
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
  store i64 %t33, ptr %l42, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb5
bb5:
  %t35 = load i64, ptr %l42, !tbaa !24
  store i64 %t35, ptr %l39, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l39, !tbaa !24
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
  %t58 = mul i64 4, %t56
  %t61 = add i64 %a2, %t58
  store i64 %t61, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t64, ptr %l65, !tbaa !27
  %t65 = load i64, ptr %l10, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i8, ptr %t68, i64 %t65
  %t70 = load i8, ptr %t69, !tbaa !32
  %t72 = zext i8 %t70 to i32
  %t74 = shl i32 %t72, 24
  %t75 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t75, ptr %l70, !tbaa !27
  %t76 = load i64, ptr %l10, !tbaa !24
  %t78 = add i64 %t76, 1
  %t80 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i8, ptr %t81, i64 %t78
  %t83 = load i8, ptr %t82, !tbaa !32
  %t85 = zext i8 %t83 to i32
  %t87 = shl i32 %t85, 16
  %t90 = or i32 %t74, %t87
  %t91 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t91, ptr %l77, !tbaa !27
  %t92 = load i64, ptr %l10, !tbaa !24
  %t94 = add i64 %t92, 2
  %t96 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i8, ptr %t97, i64 %t94
  %t99 = load i8, ptr %t98, !tbaa !32
  %t101 = zext i8 %t99 to i32
  %t103 = shl i32 %t101, 8
  %t106 = or i32 %t90, %t103
  %t107 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t107, ptr %l84, !tbaa !27
  %t108 = load i64, ptr %l10, !tbaa !24
  %t110 = add i64 %t108, 3
  %t112 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
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
  store i64 0, ptr %l95, !tbaa !24
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
  store i64 %t152, ptr %l98, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb17
bb17:
  %t154 = load i64, ptr %l98, !tbaa !24
  store i64 %t154, ptr %l95, !tbaa !24
  br label %bb18
bb18:
  %t155 = load i64, ptr %l95, !tbaa !24
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
  %t181 = call i32 @std_2fsha256_2erotr(i32 %t179, i32 7)
  store i32 %t181, ptr %l119
  br label %bb23
bb23:
  %t182 = load i64, ptr %l16, !tbaa !24
  %t184 = sub i64 %t182, 15
  %t186 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t184
  %t187 = load i32, ptr %t186, !tbaa !84
  %t189 = call i32 @std_2fsha256_2erotr(i32 %t187, i32 18)
  store i32 %t189, ptr %l123
  br label %bb24
bb24:
  %t190 = load i32, ptr %l119, !tbaa !64
  %t191 = load i32, ptr %l123, !tbaa !64
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
  %t212 = call i32 @std_2fsha256_2erotr(i32 %t210, i32 17)
  store i32 %t212, ptr %l133
  br label %bb25
bb25:
  %t213 = load i64, ptr %l16, !tbaa !24
  %t215 = sub i64 %t213, 2
  %t217 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t215
  %t218 = load i32, ptr %t217, !tbaa !84
  %t220 = call i32 @std_2fsha256_2erotr(i32 %t218, i32 19)
  store i32 %t220, ptr %l137
  br label %bb26
bb26:
  %t221 = load i32, ptr %l133, !tbaa !64
  %t222 = load i32, ptr %l137, !tbaa !64
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
  %t269 = getelementptr %"std/sha256:Hasher", ptr %t267, i32 0, i32 0
  %t270 = getelementptr [8 x i32], ptr %t269, i64 0, i64 0
  %t271 = load i32, ptr %t270, !tbaa !84
  store i32 %t271, ptr %l19, !tbaa !64
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"std/sha256:Hasher", ptr %t273, i32 0, i32 0
  %t276 = getelementptr [8 x i32], ptr %t275, i64 0, i64 1
  %t277 = load i32, ptr %t276, !tbaa !84
  store i32 %t277, ptr %l20, !tbaa !64
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"std/sha256:Hasher", ptr %t279, i32 0, i32 0
  %t282 = getelementptr [8 x i32], ptr %t281, i64 0, i64 2
  %t283 = load i32, ptr %t282, !tbaa !84
  store i32 %t283, ptr %l21, !tbaa !64
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"std/sha256:Hasher", ptr %t285, i32 0, i32 0
  %t288 = getelementptr [8 x i32], ptr %t287, i64 0, i64 3
  %t289 = load i32, ptr %t288, !tbaa !84
  store i32 %t289, ptr %l22, !tbaa !64
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"std/sha256:Hasher", ptr %t291, i32 0, i32 0
  %t294 = getelementptr [8 x i32], ptr %t293, i64 0, i64 4
  %t295 = load i32, ptr %t294, !tbaa !84
  store i32 %t295, ptr %l23, !tbaa !64
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"std/sha256:Hasher", ptr %t297, i32 0, i32 0
  %t300 = getelementptr [8 x i32], ptr %t299, i64 0, i64 5
  %t301 = load i32, ptr %t300, !tbaa !84
  store i32 %t301, ptr %l24, !tbaa !64
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"std/sha256:Hasher", ptr %t303, i32 0, i32 0
  %t306 = getelementptr [8 x i32], ptr %t305, i64 0, i64 6
  %t307 = load i32, ptr %t306, !tbaa !84
  store i32 %t307, ptr %l25, !tbaa !64
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"std/sha256:Hasher", ptr %t309, i32 0, i32 0
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
  store i64 0, ptr %l177, !tbaa !24
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
  store i64 %t339, ptr %l180, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l180, !tbaa !24
  br label %bb33
bb33:
  %t341 = load i64, ptr %l180, !tbaa !24
  store i64 %t341, ptr %l177, !tbaa !24
  br label %bb34
bb34:
  %t342 = load i64, ptr %l177, !tbaa !24
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
  %t361 = load i32, ptr %l26, !tbaa !64
  store i32 %t361, ptr %l198, !tbaa !64
  %t362 = load i32, ptr %l23, !tbaa !64
  %t364 = call i32 @std_2fsha256_2erotr(i32 %t362, i32 6)
  store i32 %t364, ptr %l200
  br label %bb39
bb39:
  %t365 = load i32, ptr %l23, !tbaa !64
  %t367 = call i32 @std_2fsha256_2erotr(i32 %t365, i32 11)
  store i32 %t367, ptr %l202
  br label %bb40
bb40:
  %t368 = load i32, ptr %l200, !tbaa !64
  %t369 = load i32, ptr %l202, !tbaa !64
  %t370 = xor i32 %t368, %t369
  store i32 %t370, ptr %l203, !tbaa !64
  %t371 = load i32, ptr %l23, !tbaa !64
  %t373 = call i32 @std_2fsha256_2erotr(i32 %t371, i32 25)
  store i32 %t373, ptr %l205
  br label %bb41
bb41:
  %t374 = load i32, ptr %l203, !tbaa !64
  %t375 = load i32, ptr %l205, !tbaa !64
  %t376 = xor i32 %t374, %t375
  %t377 = load i32, ptr %l198, !tbaa !64
  %t379 = add i32 %t377, %t376
  %t380 = load i32, ptr %l23, !tbaa !64
  %t381 = load i32, ptr %l24, !tbaa !64
  %t384 = and i32 %t380, %t381
  %t385 = load i32, ptr %l23, !tbaa !64
  %t387 = xor i32 %t385, -1
  %t388 = load i32, ptr %l25, !tbaa !64
  %t391 = and i32 %t387, %t388
  %t394 = xor i32 %t384, %t391
  %t397 = add i32 %t379, %t394
  %t398 = load i64, ptr %l32, !tbaa !24
  %t400 = getelementptr [64 x i32], ptr @G_2estd_2fsha256_2ek, i64 0, i64 %t398
  %t401 = load i32, ptr %t400, !tbaa !84
  %t404 = add i32 %t397, %t401
  %t405 = load i64, ptr %l32, !tbaa !24
  %t407 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t405
  %t408 = load i32, ptr %t407, !tbaa !84
  %t411 = add i32 %t404, %t408
  store i32 %t411, ptr %l33, !tbaa !64
  %t413 = load i32, ptr %l19, !tbaa !64
  %t415 = call i32 @std_2fsha256_2erotr(i32 %t413, i32 2)
  store i32 %t415, ptr %l224
  br label %bb42
bb42:
  %t416 = load i32, ptr %l19, !tbaa !64
  %t418 = call i32 @std_2fsha256_2erotr(i32 %t416, i32 13)
  store i32 %t418, ptr %l226
  br label %bb43
bb43:
  %t419 = load i32, ptr %l224, !tbaa !64
  %t420 = load i32, ptr %l226, !tbaa !64
  %t421 = xor i32 %t419, %t420
  store i32 %t421, ptr %l227, !tbaa !64
  %t422 = load i32, ptr %l19, !tbaa !64
  %t424 = call i32 @std_2fsha256_2erotr(i32 %t422, i32 22)
  store i32 %t424, ptr %l229
  br label %bb44
bb44:
  %t425 = load i32, ptr %l227, !tbaa !64
  %t426 = load i32, ptr %l229, !tbaa !64
  %t427 = xor i32 %t425, %t426
  %t428 = load i32, ptr %l19, !tbaa !64
  %t429 = load i32, ptr %l20, !tbaa !64
  %t432 = and i32 %t428, %t429
  %t433 = load i32, ptr %l19, !tbaa !64
  %t434 = load i32, ptr %l21, !tbaa !64
  %t437 = and i32 %t433, %t434
  %t440 = xor i32 %t432, %t437
  %t441 = load i32, ptr %l20, !tbaa !64
  %t442 = load i32, ptr %l21, !tbaa !64
  %t445 = and i32 %t441, %t442
  %t448 = xor i32 %t440, %t445
  %t451 = add i32 %t427, %t448
  %t453 = load i32, ptr %l25, !tbaa !64
  store i32 %t453, ptr %l26, !tbaa !64
  %t455 = load i32, ptr %l24, !tbaa !64
  store i32 %t455, ptr %l25, !tbaa !64
  %t457 = load i32, ptr %l23, !tbaa !64
  store i32 %t457, ptr %l24, !tbaa !64
  %t459 = load i32, ptr %l22, !tbaa !64
  %t460 = load i32, ptr %l33, !tbaa !64
  %t463 = add i32 %t459, %t460
  store i32 %t463, ptr %l23, !tbaa !64
  %t465 = load i32, ptr %l21, !tbaa !64
  store i32 %t465, ptr %l22, !tbaa !64
  %t467 = load i32, ptr %l20, !tbaa !64
  store i32 %t467, ptr %l21, !tbaa !64
  %t469 = load i32, ptr %l19, !tbaa !64
  store i32 %t469, ptr %l20, !tbaa !64
  %t471 = load i32, ptr %l33, !tbaa !64
  %t475 = add i32 %t471, %t451
  store i32 %t475, ptr %l19, !tbaa !64
  br label %bb45
bb45:
  %t477 = load i64, ptr %l31, !tbaa !24
  %t479 = add i64 %t477, 1
  store i64 %t479, ptr %l31, !tbaa !24
  br label %bb35
bb46:
  %t481 = load ptr, ptr %l0, !tbaa !29
  store ptr %t481, ptr %l257, !tbaa !29
  %t482 = load ptr, ptr %l257, !tbaa !29
  %t483 = getelementptr %"std/sha256:Hasher", ptr %t482, i32 0, i32 0
  %t484 = getelementptr [8 x i32], ptr %t483, i64 0, i64 0
  %t485 = load i32, ptr %t484, !tbaa !84
  %t486 = load i32, ptr %l19, !tbaa !64
  %t489 = add i32 %t485, %t486
  %t491 = load ptr, ptr %l257, !tbaa !29
  %t492 = getelementptr %"std/sha256:Hasher", ptr %t491, i32 0, i32 0
  %t493 = getelementptr [8 x i32], ptr %t492, i64 0, i64 0
  store i32 %t489, ptr %t493, !tbaa !84
  %t494 = load ptr, ptr %l0, !tbaa !29
  store ptr %t494, ptr %l261, !tbaa !29
  %t495 = load ptr, ptr %l261, !tbaa !29
  %t496 = getelementptr %"std/sha256:Hasher", ptr %t495, i32 0, i32 0
  %t497 = getelementptr [8 x i32], ptr %t496, i64 0, i64 1
  %t498 = load i32, ptr %t497, !tbaa !84
  %t499 = load i32, ptr %l20, !tbaa !64
  %t502 = add i32 %t498, %t499
  %t504 = load ptr, ptr %l261, !tbaa !29
  %t505 = getelementptr %"std/sha256:Hasher", ptr %t504, i32 0, i32 0
  %t506 = getelementptr [8 x i32], ptr %t505, i64 0, i64 1
  store i32 %t502, ptr %t506, !tbaa !84
  %t507 = load ptr, ptr %l0, !tbaa !29
  store ptr %t507, ptr %l265, !tbaa !29
  %t508 = load ptr, ptr %l265, !tbaa !29
  %t509 = getelementptr %"std/sha256:Hasher", ptr %t508, i32 0, i32 0
  %t510 = getelementptr [8 x i32], ptr %t509, i64 0, i64 2
  %t511 = load i32, ptr %t510, !tbaa !84
  %t512 = load i32, ptr %l21, !tbaa !64
  %t515 = add i32 %t511, %t512
  %t517 = load ptr, ptr %l265, !tbaa !29
  %t518 = getelementptr %"std/sha256:Hasher", ptr %t517, i32 0, i32 0
  %t519 = getelementptr [8 x i32], ptr %t518, i64 0, i64 2
  store i32 %t515, ptr %t519, !tbaa !84
  %t520 = load ptr, ptr %l0, !tbaa !29
  store ptr %t520, ptr %l269, !tbaa !29
  %t521 = load ptr, ptr %l269, !tbaa !29
  %t522 = getelementptr %"std/sha256:Hasher", ptr %t521, i32 0, i32 0
  %t523 = getelementptr [8 x i32], ptr %t522, i64 0, i64 3
  %t524 = load i32, ptr %t523, !tbaa !84
  %t525 = load i32, ptr %l22, !tbaa !64
  %t528 = add i32 %t524, %t525
  %t530 = load ptr, ptr %l269, !tbaa !29
  %t531 = getelementptr %"std/sha256:Hasher", ptr %t530, i32 0, i32 0
  %t532 = getelementptr [8 x i32], ptr %t531, i64 0, i64 3
  store i32 %t528, ptr %t532, !tbaa !84
  %t533 = load ptr, ptr %l0, !tbaa !29
  store ptr %t533, ptr %l273, !tbaa !29
  %t534 = load ptr, ptr %l273, !tbaa !29
  %t535 = getelementptr %"std/sha256:Hasher", ptr %t534, i32 0, i32 0
  %t536 = getelementptr [8 x i32], ptr %t535, i64 0, i64 4
  %t537 = load i32, ptr %t536, !tbaa !84
  %t538 = load i32, ptr %l23, !tbaa !64
  %t541 = add i32 %t537, %t538
  %t543 = load ptr, ptr %l273, !tbaa !29
  %t544 = getelementptr %"std/sha256:Hasher", ptr %t543, i32 0, i32 0
  %t545 = getelementptr [8 x i32], ptr %t544, i64 0, i64 4
  store i32 %t541, ptr %t545, !tbaa !84
  %t546 = load ptr, ptr %l0, !tbaa !29
  store ptr %t546, ptr %l277, !tbaa !29
  %t547 = load ptr, ptr %l277, !tbaa !29
  %t548 = getelementptr %"std/sha256:Hasher", ptr %t547, i32 0, i32 0
  %t549 = getelementptr [8 x i32], ptr %t548, i64 0, i64 5
  %t550 = load i32, ptr %t549, !tbaa !84
  %t551 = load i32, ptr %l24, !tbaa !64
  %t554 = add i32 %t550, %t551
  %t556 = load ptr, ptr %l277, !tbaa !29
  %t557 = getelementptr %"std/sha256:Hasher", ptr %t556, i32 0, i32 0
  %t558 = getelementptr [8 x i32], ptr %t557, i64 0, i64 5
  store i32 %t554, ptr %t558, !tbaa !84
  %t559 = load ptr, ptr %l0, !tbaa !29
  store ptr %t559, ptr %l281, !tbaa !29
  %t560 = load ptr, ptr %l281, !tbaa !29
  %t561 = getelementptr %"std/sha256:Hasher", ptr %t560, i32 0, i32 0
  %t562 = getelementptr [8 x i32], ptr %t561, i64 0, i64 6
  %t563 = load i32, ptr %t562, !tbaa !84
  %t564 = load i32, ptr %l25, !tbaa !64
  %t567 = add i32 %t563, %t564
  %t569 = load ptr, ptr %l281, !tbaa !29
  %t570 = getelementptr %"std/sha256:Hasher", ptr %t569, i32 0, i32 0
  %t571 = getelementptr [8 x i32], ptr %t570, i64 0, i64 6
  store i32 %t567, ptr %t571, !tbaa !84
  %t572 = load ptr, ptr %l0, !tbaa !29
  store ptr %t572, ptr %l285, !tbaa !29
  %t573 = load ptr, ptr %l285, !tbaa !29
  %t574 = getelementptr %"std/sha256:Hasher", ptr %t573, i32 0, i32 0
  %t575 = getelementptr [8 x i32], ptr %t574, i64 0, i64 7
  %t576 = load i32, ptr %t575, !tbaa !84
  %t577 = load i32, ptr %l26, !tbaa !64
  %t580 = add i32 %t576, %t577
  %t582 = load ptr, ptr %l285, !tbaa !29
  %t583 = getelementptr %"std/sha256:Hasher", ptr %t582, i32 0, i32 0
  %t584 = getelementptr [8 x i32], ptr %t583, i64 0, i64 7
  store i32 %t580, ptr %t584, !tbaa !84
  br label %ret
ret:
  ret void
}

define dso_local %"std/sha256:Hasher" @std_2fsha256_3aHasher_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca [8 x i32]
  %l5 = alloca [64 x i8]
  %rv = alloca %"std/sha256:Hasher"
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
  %t20 = insertvalue %"std/sha256:Hasher" undef, [8 x i32] %t19, 0
  %t22 = insertvalue %"std/sha256:Hasher" %t20, [64 x i8] %t18, 1
  %t24 = insertvalue %"std/sha256:Hasher" %t22, i64 0, 2
  %t26 = insertvalue %"std/sha256:Hasher" %t24, i64 0, 3
  store %"std/sha256:Hasher" %t26, ptr %rv
  br label %ret
ret:
  %rr = load %"std/sha256:Hasher", ptr %rv
  ret %"std/sha256:Hasher" %rr
}

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
declare { i64, ptr } @std_2fhex_2eEncode(ptr %v0, ptr %v1, { i64, ptr } %a0)

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
