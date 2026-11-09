source_filename = "std_hex.quick.ll"
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
@G_2estd_2fhex_2edigits = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2estd_2fhex_2edigits.k1 }>, align 8
@G_2estd_2fhex_2edigits.k1 = internal global <{ [16 x i8] }> <{ [16 x i8] c"\30\31\32\33\34\35\36\37\38\39\61\62\63\64\65\66" }>, align 8
define dso_local { i32, { i64, ptr } } @std_2fhex_2eDecode(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i8
  %l46 = alloca { i64, ptr }
  %l50 = alloca i8
  %l51 = alloca i32
  %l53 = alloca i8
  %l54 = alloca i8
  %l55 = alloca { i64, ptr }
  %l60 = alloca i8
  %l61 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = srem i64 %t3, 2
  %t7 = icmp ne i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t10 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t10, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t15 = sdiv i64 %t13, 2
  store i64 %t15, ptr %l15, !tbaa !24
  %t16 = load i64, ptr %l15, !tbaa !24
  %t17 = icmp sge i64 %t16, 0
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l15, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t24, ptr %lp1
  %t26 = load ptr, ptr %lp1
  store { i64, ptr } %t23, ptr %t26, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t27 = load ptr, ptr %lp1
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_b11f241cbc5ec2cd_9d3717b454a1d6a9)
  unreachable
bb6:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb11
bb8:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t43 = load i64, ptr %l2, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l26, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb10
bb10:
  %t58 = load i64, ptr %l26, !tbaa !24
  store i64 %t58, ptr %l23, !tbaa !24
  br label %bb11
bb11:
  %t59 = load i64, ptr %l23, !tbaa !24
  store i64 %t59, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb13, label %bb14
bb13:
  br label %bb23
bb14:
  br label %bb15
bb15:
  %t68 = load i64, ptr %l2, !tbaa !24
  %t69 = load i64, ptr %l6, !tbaa !24
  %t70 = load i64, ptr %l4, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l7, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  store i64 %t78, ptr %l44, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t79, ptr %l46, !tbaa !27
  %t80 = load i64, ptr %l7, !tbaa !24
  %t82 = mul i64 2, %t80
  %t84 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i8, ptr %t85, i64 %t82
  %t87 = load i8, ptr %t86, !tbaa !32
  %t89 = call { i32, i8 } @std_2fhex_2edigit(i8 %t87)
  %t90 = extractvalue { i32, i8 } %t89, 1
  %t91 = extractvalue { i32, i8 } %t89, 0
  store i32 %t91, ptr %l51
  %t92 = icmp ne i32 %t91, 0
  br i1 %t92, label %bb17, label %ok.93, !prof !99
ok.93:
  store i8 %t90, ptr %l50
  br label %bb16
bb16:
  %t94 = load i8, ptr %l50, !tbaa !22
  store i8 %t94, ptr %l45, !tbaa !22
  br label %bb18
bb17:
  %t95 = load i32, ptr %l51, !tbaa !23
  %t96 = lshr i32 %t95, 16
  %t97 = and i32 %t95, 65535
  %t98 = icmp eq i32 %t96, 1
  %t99 = select i1 %t98, i32 1, i32 0
  %t100 = icmp eq i32 %t95, 0
  %t101 = shl i32 %t99, 16
  %t102 = or i32 %t101, %t97
  %t103 = select i1 %t100, i32 0, i32 %t102
  %t105 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t103, 0
  store { i32, { i64, ptr } } %t105, ptr %rv
  br label %ret
bb18:
  %t106 = load i8, ptr %l45, !tbaa !22
  %t107 = shl i8 %t106, 4
  store i8 %t107, ptr %l53, !tbaa !22
  %t108 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t108, ptr %l55, !tbaa !27
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = mul i64 2, %t109
  %t113 = add i64 %t111, 1
  %t115 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i8, ptr %t116, i64 %t113
  %t118 = load i8, ptr %t117, !tbaa !32
  %t120 = call { i32, i8 } @std_2fhex_2edigit(i8 %t118)
  %t121 = extractvalue { i32, i8 } %t120, 1
  %t122 = extractvalue { i32, i8 } %t120, 0
  store i32 %t122, ptr %l61
  %t123 = icmp ne i32 %t122, 0
  br i1 %t123, label %bb20, label %ok.124, !prof !99
ok.124:
  store i8 %t121, ptr %l60
  br label %bb19
bb19:
  %t125 = load i8, ptr %l60, !tbaa !22
  store i8 %t125, ptr %l54, !tbaa !22
  br label %bb21
bb20:
  %t126 = load i32, ptr %l61, !tbaa !23
  %t127 = lshr i32 %t126, 16
  %t128 = and i32 %t126, 65535
  %t129 = icmp eq i32 %t127, 1
  %t130 = select i1 %t129, i32 1, i32 0
  %t131 = icmp eq i32 %t126, 0
  %t132 = shl i32 %t130, 16
  %t133 = or i32 %t132, %t128
  %t134 = select i1 %t131, i32 0, i32 %t133
  %t136 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t134, 0
  store { i32, { i64, ptr } } %t136, ptr %rv
  br label %ret
bb21:
  %t137 = load i8, ptr %l53, !tbaa !22
  %t138 = load i8, ptr %l54, !tbaa !22
  %t139 = or i8 %t137, %t138
  %t141 = load ptr, ptr %lp1
  %t142 = load i64, ptr %l44, !tbaa !24
  %t143 = getelementptr { i64, ptr }, ptr %t141, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr i8, ptr %t144, i64 %t142
  store i8 %t139, ptr %t145, !tbaa !32
  br label %bb22
bb22:
  %t146 = load i64, ptr %l6, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l6, !tbaa !24
  br label %bb12
bb23:
  %t150 = load ptr, ptr %lp1
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  %t153 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t151, 1
  store { i32, { i64, ptr } } %t153, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @std_2fhex_2eEncode(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l41 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = mul i64 %t3, 2
  store i64 %t5, ptr %l10, !tbaa !24
  %t6 = load i64, ptr %l10, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l10, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  %t14 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t14, ptr %lp1
  %t16 = load ptr, ptr %lp1
  store { i64, ptr } %t13, ptr %t16, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_ffb4fb0a08e93265_a9ae290ba86b8f01)
  unreachable
bb3:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb8
bb5:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l21, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t47 = load i64, ptr %l21, !tbaa !24
  store i64 %t47, ptr %l18, !tbaa !24
  br label %bb8
bb8:
  %t48 = load i64, ptr %l18, !tbaa !24
  store i64 %t48, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l4, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  store i64 %t65, ptr %l7, !tbaa !24
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = mul i64 2, %t67
  %t70 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t70, ptr %l41, !tbaa !27
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i8, ptr %t74, i64 %t71
  %t76 = load i8, ptr %t75, !tbaa !32
  %t78 = lshr i8 %t76, 4
  %t80 = zext i8 %t78 to i64
  %t81 = getelementptr { i64, ptr }, ptr @G_2estd_2fhex_2edigits, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i8, ptr %t82, i64 %t80
  %t84 = load i8, ptr %t83, !tbaa !32
  %t86 = load ptr, ptr %lp1
  %t88 = getelementptr { i64, ptr }, ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i8, ptr %t89, i64 %t69
  store i8 %t84, ptr %t90, !tbaa !32
  %t91 = load i64, ptr %l7, !tbaa !24
  %t93 = mul i64 2, %t91
  %t95 = add i64 %t93, 1
  %t96 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t96, ptr %l49, !tbaa !27
  %t97 = load i64, ptr %l7, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i8, ptr %t100, i64 %t97
  %t102 = load i8, ptr %t101, !tbaa !32
  %t104 = and i8 %t102, 15
  %t106 = zext i8 %t104 to i64
  %t107 = getelementptr { i64, ptr }, ptr @G_2estd_2fhex_2edigits, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i8, ptr %t108, i64 %t106
  %t110 = load i8, ptr %t109, !tbaa !32
  %t112 = load ptr, ptr %lp1
  %t114 = getelementptr { i64, ptr }, ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i8, ptr %t115, i64 %t95
  store i8 %t110, ptr %t116, !tbaa !32
  br label %bb13
bb13:
  %t117 = load i64, ptr %l6, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l6, !tbaa !24
  br label %bb9
bb14:
  %t121 = load ptr, ptr %lp1
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, i8 } @std_2fhex_2edigit(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l3 = alloca i1
  %l11 = alloca i1
  %l20 = alloca i1
  %rv = alloca { i32, i8 }
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp uge i8 %t1, 48
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp ule i8 %t5, 57
  store i1 %t7, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = sub i8 %t10, 48
  %t15 = insertvalue { i32, i8 } zeroinitializer, i8 %t12, 1
  store { i32, i8 } %t15, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load i8, ptr %l0, !tbaa !22
  %t18 = icmp uge i8 %t16, 97
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t20 = load i8, ptr %l0, !tbaa !22
  %t22 = icmp ule i8 %t20, 102
  store i1 %t22, ptr %l11, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t25 = load i8, ptr %l0, !tbaa !22
  %t27 = sub i8 %t25, 97
  %t30 = add i8 %t27, 10
  %t32 = insertvalue { i32, i8 } zeroinitializer, i8 %t30, 1
  store { i32, i8 } %t32, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t33 = load i8, ptr %l0, !tbaa !22
  %t35 = icmp uge i8 %t33, 65
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t37 = load i8, ptr %l0, !tbaa !22
  %t39 = icmp ule i8 %t37, 70
  store i1 %t39, ptr %l20, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb15
bb15:
  %t41 = load i1, ptr %l20, !tbaa !21
  br i1 %t41, label %bb16, label %bb17
bb16:
  %t42 = load i8, ptr %l0, !tbaa !22
  %t44 = sub i8 %t42, 65
  %t47 = add i8 %t44, 10
  %t49 = insertvalue { i32, i8 } zeroinitializer, i8 %t47, 1
  store { i32, i8 } %t49, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t51 = insertvalue { i32, i8 } zeroinitializer, i32 65536, 0
  store { i32, i8 } %t51, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i8 }, ptr %rv
  ret { i32, i8 } %rr
}

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
declare void @__olang_check_failed(ptr) cold noreturn
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@olang_loc_b11f241cbc5ec2cd_9d3717b454a1d6a9 = external constant [0 x i8]
@olang_loc_ffb4fb0a08e93265_a9ae290ba86b8f01 = external constant [0 x i8]

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
