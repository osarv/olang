source_filename = "std_time.quick.ll"
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
%"std/time:Date" = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%"<time.h>:timespec" = type { i64, i64 }
%"std/time:Timer" = type { i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
@G_2estd_2ftime_2eBillion = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @G_2estd_2ftime_2eBillion.k1 }>, align 8
@G_2estd_2ftime_2eBillion.k1 = internal global <{ [20 x i8] }> <{ [20 x i8] c"\32\30\30\31\2D\30\39\2D\30\39\54\30\31\3A\34\36\3A\34\30\5A" }>, align 8
@G_2estd_2ftime_2eEpochText = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @G_2estd_2ftime_2eEpochText.k1 }>, align 8
@G_2estd_2ftime_2eEpochText.k1 = internal global <{ [20 x i8] }> <{ [20 x i8] c"\31\39\37\30\2D\30\31\2D\30\31\54\30\30\3A\30\30\3A\30\30\5A" }>, align 8
@G_2estd_2ftime_2eVirtualStart = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\43\52\CF\4C\23\0D" }>, align 8
@G_2estd_2ftime_2eWhyBaked = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @G_2estd_2ftime_2eWhyBaked.k1 }>, align 8
@G_2estd_2ftime_2eWhyBaked.k1 = internal global <{ [21 x i8] }> <{ [21 x i8] c"\74\69\6D\65\2E\45\72\72\6F\72\2E\53\79\6E\74\61\78\28\32\32\29" }>, align 8
@G_2estd_2ftime_2eclockMonotonic = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2estd_2ftime_2eclockRealtime = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2estd_2ftime_2evirtualDepth = global <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2ftime_2evirtualNs = global <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
define dso_local %"std/time:Date" @std_2ftime_2eDate_2eOf(i64 %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
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
  %l14 = alloca i64
  %l33 = alloca i64
  %l76 = alloca i64
  %l84 = alloca i64
  %l87 = alloca i64
  %l104 = alloca %"std/time:Date"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/time:Date"
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t2, 60000000000
  %t7 = add i64 %a0, %t4
  store i64 %t7, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = sdiv i64 %t9, 86400000000000
  store i64 %t11, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = srem i64 %t13, 86400000000000
  store i64 %t15, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp slt i64 %t17, 0
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t23 = sub i64 %t21, 1
  store i64 %t23, ptr %l3, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = add i64 %t25, 86400000000000
  store i64 %t27, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t31 = add i64 %t29, 719468
  store i64 %t31, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp sge i64 %t33, 0
  br i1 %t35, label %bb4, label %bb5
bb4:
  %t37 = load i64, ptr %l5, !tbaa !24
  store i64 %t37, ptr %l33, !tbaa !24
  br label %bb6
bb5:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t41 = sub i64 %t39, 146096
  store i64 %t41, ptr %l33, !tbaa !24
  br label %bb6
bb6:
  %t43 = load i64, ptr %l33, !tbaa !24
  %t44 = sdiv i64 %t43, 146097
  store i64 %t44, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t49 = mul i64 %t47, 146097
  %t52 = sub i64 %t46, %t49
  store i64 %t52, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t57 = sdiv i64 %t55, 1460
  %t60 = sub i64 %t54, %t57
  %t61 = load i64, ptr %l7, !tbaa !24
  %t63 = sdiv i64 %t61, 36524
  %t66 = add i64 %t60, %t63
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = sdiv i64 %t67, 146096
  %t72 = sub i64 %t66, %t69
  %t74 = sdiv i64 %t72, 365
  store i64 %t74, ptr %l8, !tbaa !24
  %t76 = load i64, ptr %l7, !tbaa !24
  %t77 = load i64, ptr %l8, !tbaa !24
  %t79 = mul i64 365, %t77
  %t80 = load i64, ptr %l8, !tbaa !24
  %t82 = sdiv i64 %t80, 4
  %t85 = add i64 %t79, %t82
  %t86 = load i64, ptr %l8, !tbaa !24
  %t88 = sdiv i64 %t86, 100
  %t91 = sub i64 %t85, %t88
  %t94 = sub i64 %t76, %t91
  store i64 %t94, ptr %l9, !tbaa !24
  %t96 = load i64, ptr %l9, !tbaa !24
  %t98 = mul i64 5, %t96
  %t100 = add i64 %t98, 2
  %t102 = sdiv i64 %t100, 153
  store i64 %t102, ptr %l10, !tbaa !24
  %t104 = load i64, ptr %l9, !tbaa !24
  %t105 = load i64, ptr %l10, !tbaa !24
  %t107 = mul i64 153, %t105
  %t109 = add i64 %t107, 2
  %t111 = sdiv i64 %t109, 5
  %t114 = sub i64 %t104, %t111
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l11, !tbaa !24
  %t118 = load i64, ptr %l10, !tbaa !24
  %t120 = icmp slt i64 %t118, 10
  br i1 %t120, label %bb7, label %bb8
bb7:
  %t122 = load i64, ptr %l10, !tbaa !24
  %t124 = add i64 %t122, 3
  store i64 %t124, ptr %l76, !tbaa !24
  br label %bb9
bb8:
  %t126 = load i64, ptr %l10, !tbaa !24
  %t128 = sub i64 %t126, 9
  store i64 %t128, ptr %l76, !tbaa !24
  br label %bb9
bb9:
  %t130 = load i64, ptr %l76, !tbaa !24
  store i64 %t130, ptr %l12, !tbaa !24
  %t131 = load i64, ptr %l8, !tbaa !24
  %t132 = load i64, ptr %l6, !tbaa !24
  %t134 = mul i64 %t132, 400
  %t137 = add i64 %t131, %t134
  store i64 %t137, ptr %l84, !tbaa !24
  %t138 = load i64, ptr %l12, !tbaa !24
  %t140 = icmp sle i64 %t138, 2
  br i1 %t140, label %bb10, label %bb11
bb10:
  store i64 1, ptr %l87, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb12
bb12:
  %t142 = load i64, ptr %l84, !tbaa !24
  %t143 = load i64, ptr %l87, !tbaa !24
  %t144 = add i64 %t142, %t143
  %t146 = load i64, ptr %l4, !tbaa !24
  %t148 = sdiv i64 %t146, 1000000000
  store i64 %t148, ptr %l14, !tbaa !24
  %t151 = load i64, ptr %l12, !tbaa !24
  %t152 = load i64, ptr %l11, !tbaa !24
  %t153 = load i64, ptr %l14, !tbaa !24
  %t155 = sdiv i64 %t153, 3600
  %t156 = load i64, ptr %l14, !tbaa !24
  %t158 = sdiv i64 %t156, 60
  %t160 = srem i64 %t158, 60
  %t161 = load i64, ptr %l14, !tbaa !24
  %t163 = srem i64 %t161, 60
  %t164 = load i64, ptr %l4, !tbaa !24
  %t166 = srem i64 %t164, 1000000000
  %t167 = load i64, ptr %l1, !tbaa !24
  %t176 = call %"std/time:Date" @std_2ftime_3aDate_2ector(ptr %s0, i64 %t144, i64 %t151, i64 %t152, i64 %t155, i64 %t160, i64 %t163, i64 %t166, i64 %t167)
  store %"std/time:Date" %t176, ptr %l104
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t177 = load %"std/time:Date", ptr %l104
  store %"std/time:Date" %t177, ptr %rv
  br label %ret
ret:
  %rr = load %"std/time:Date", ptr %rv
  ret %"std/time:Date" %rr
}

define dso_local { i32, %"std/time:Date" } @std_2ftime_2eDate_2eParse(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
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
  %l16 = alloca i64
  %l17 = alloca i32
  %l20 = alloca i32
  %l22 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l28 = alloca i32
  %l30 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i32
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l46 = alloca i1
  %l47 = alloca { i64, ptr }
  %l54 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i32
  %l60 = alloca i32
  %l62 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i32
  %l68 = alloca i32
  %l70 = alloca i64
  %l72 = alloca i64
  %l73 = alloca i32
  %l79 = alloca i1
  %l80 = alloca { i64, ptr }
  %l91 = alloca i1
  %l92 = alloca { i64, ptr }
  %l95 = alloca i1
  %l107 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l140 = alloca i1
  %l141 = alloca { i64, ptr }
  %l147 = alloca { i64, ptr }
  %l151 = alloca i1
  %l152 = alloca { i64, ptr }
  %l156 = alloca i64
  %l160 = alloca i64
  %l161 = alloca i32
  %l166 = alloca i32
  %l168 = alloca i64
  %l172 = alloca i64
  %l173 = alloca i32
  %l177 = alloca i1
  %l188 = alloca { i64, ptr }
  %l212 = alloca i1
  %l215 = alloca i1
  %l218 = alloca i1
  %l219 = alloca i64
  %l222 = alloca i64
  %l224 = alloca i1
  %l227 = alloca i1
  %l230 = alloca i1
  %l245 = alloca %"std/time:Date"
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"std/time:Date" }
  %t126 = alloca { i64, [1 x i64] }, align 8
  %t287 = alloca { i64, [1 x i64] }, align 8
  %t337 = alloca { i64, [1 x i64] }, align 8
  %t361 = alloca { i64, [1 x i64] }, align 8
  %t434 = alloca { i64, [1 x i64] }, align 8
  %t515 = alloca { i64, [1 x i64] }, align 8
  %t562 = alloca { i64, [1 x i64] }, align 8
  %t617 = alloca { i64, [1 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2ftime_2edigitsAt(ptr %v0, { i64, ptr } %t1, i64 0, i64 4)
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l17
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l16
  br label %bb1
bb1:
  %t8 = load i64, ptr %l16, !tbaa !24
  store i64 %t8, ptr %l14, !tbaa !24
  br label %bb3
bb2:
  %t9 = load i32, ptr %l17, !tbaa !23
  %t10 = lshr i32 %t9, 16
  %t11 = and i32 %t9, 65535
  %t12 = icmp eq i32 %t10, 1
  %t13 = select i1 %t12, i32 1, i32 0
  %t14 = icmp eq i32 %t9, 0
  %t15 = shl i32 %t13, 16
  %t16 = or i32 %t15, %t11
  %t17 = select i1 %t14, i32 0, i32 %t16
  call void @__olang_scope_close(ptr %s0)
  %t19 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t17, 0
  store { i32, %"std/time:Date" } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load i64, ptr %l14, !tbaa !24
  store i64 %t20, ptr %l1, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t23 = call i32 @std_2ftime_2eexpect(ptr %v0, { i64, ptr } %t21, i64 4, i8 45)
  store i32 %t23, ptr %l20
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb5, label %ok.25, !prof !99
ok.25:
  br label %bb4
bb4:
  br label %bb6
bb5:
  %t26 = load i32, ptr %l20, !tbaa !23
  %t27 = lshr i32 %t26, 16
  %t28 = and i32 %t26, 65535
  %t29 = icmp eq i32 %t27, 1
  %t30 = select i1 %t29, i32 1, i32 0
  %t31 = icmp eq i32 %t26, 0
  %t32 = shl i32 %t30, 16
  %t33 = or i32 %t32, %t28
  %t34 = select i1 %t31, i32 0, i32 %t33
  call void @__olang_scope_close(ptr %s0)
  %t36 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t34, 0
  store { i32, %"std/time:Date" } %t36, ptr %rv
  br label %ret
bb6:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t39 = call { i32, i64 } @std_2ftime_2edigitsAt(ptr %v0, { i64, ptr } %t37, i64 5, i64 2)
  %t40 = extractvalue { i32, i64 } %t39, 1
  %t41 = extractvalue { i32, i64 } %t39, 0
  store i32 %t41, ptr %l25
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb8, label %ok.43, !prof !99
ok.43:
  store i64 %t40, ptr %l24
  br label %bb7
bb7:
  %t44 = load i64, ptr %l24, !tbaa !24
  store i64 %t44, ptr %l22, !tbaa !24
  br label %bb9
bb8:
  %t45 = load i32, ptr %l25, !tbaa !23
  %t46 = lshr i32 %t45, 16
  %t47 = and i32 %t45, 65535
  %t48 = icmp eq i32 %t46, 1
  %t49 = select i1 %t48, i32 1, i32 0
  %t50 = icmp eq i32 %t45, 0
  %t51 = shl i32 %t49, 16
  %t52 = or i32 %t51, %t47
  %t53 = select i1 %t50, i32 0, i32 %t52
  call void @__olang_scope_close(ptr %s0)
  %t55 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t53, 0
  store { i32, %"std/time:Date" } %t55, ptr %rv
  br label %ret
bb9:
  %t56 = load i64, ptr %l22, !tbaa !24
  store i64 %t56, ptr %l2, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t59 = call i32 @std_2ftime_2eexpect(ptr %v0, { i64, ptr } %t57, i64 7, i8 45)
  store i32 %t59, ptr %l28
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb11, label %ok.61, !prof !99
ok.61:
  br label %bb10
bb10:
  br label %bb12
bb11:
  %t62 = load i32, ptr %l28, !tbaa !23
  %t63 = lshr i32 %t62, 16
  %t64 = and i32 %t62, 65535
  %t65 = icmp eq i32 %t63, 1
  %t66 = select i1 %t65, i32 1, i32 0
  %t67 = icmp eq i32 %t62, 0
  %t68 = shl i32 %t66, 16
  %t69 = or i32 %t68, %t64
  %t70 = select i1 %t67, i32 0, i32 %t69
  call void @__olang_scope_close(ptr %s0)
  %t72 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t70, 0
  store { i32, %"std/time:Date" } %t72, ptr %rv
  br label %ret
bb12:
  %t73 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t75 = call { i32, i64 } @std_2ftime_2edigitsAt(ptr %v0, { i64, ptr } %t73, i64 8, i64 2)
  %t76 = extractvalue { i32, i64 } %t75, 1
  %t77 = extractvalue { i32, i64 } %t75, 0
  store i32 %t77, ptr %l33
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb14, label %ok.79, !prof !99
ok.79:
  store i64 %t76, ptr %l32
  br label %bb13
bb13:
  %t80 = load i64, ptr %l32, !tbaa !24
  store i64 %t80, ptr %l30, !tbaa !24
  br label %bb15
bb14:
  %t81 = load i32, ptr %l33, !tbaa !23
  %t82 = lshr i32 %t81, 16
  %t83 = and i32 %t81, 65535
  %t84 = icmp eq i32 %t82, 1
  %t85 = select i1 %t84, i32 1, i32 0
  %t86 = icmp eq i32 %t81, 0
  %t87 = shl i32 %t85, 16
  %t88 = or i32 %t87, %t83
  %t89 = select i1 %t86, i32 0, i32 %t88
  call void @__olang_scope_close(ptr %s0)
  %t91 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t89, 0
  store { i32, %"std/time:Date" } %t91, ptr %rv
  br label %ret
bb15:
  %t92 = load i64, ptr %l30, !tbaa !24
  store i64 %t92, ptr %l3, !tbaa !24
  %t93 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t97 = icmp sle i64 %t95, 10
  br i1 %t97, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb24
bb17:
  %t99 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t99, ptr %l39, !tbaa !27
  %t100 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i8, ptr %t101, i64 10
  %t103 = load i8, ptr %t102, !tbaa !32
  %t105 = icmp ne i8 %t103, 84
  br i1 %t105, label %bb18, label %bb19
bb18:
  %t107 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t107, ptr %l43, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i8, ptr %t109, i64 10
  %t111 = load i8, ptr %t110, !tbaa !32
  %t113 = icmp ne i8 %t111, 116
  store i1 %t113, ptr %l42, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb20
bb20:
  %t115 = load i1, ptr %l42, !tbaa !21
  br i1 %t115, label %bb21, label %bb22
bb21:
  %t116 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t116, ptr %l47, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr i8, ptr %t118, i64 10
  %t120 = load i8, ptr %t119, !tbaa !32
  %t122 = icmp ne i8 %t120, 32
  store i1 %t122, ptr %l46, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb23
bb23:
  %t124 = load i1, ptr %l46, !tbaa !21
  store i1 %t124, ptr %l38, !tbaa !21
  br label %bb24
bb24:
  %t125 = load i1, ptr %l38, !tbaa !21
  br i1 %t125, label %bb25, label %bb26
bb25:
  store { i64, [1 x i64] } zeroinitializer, ptr %t126
  %t127 = getelementptr { i64, [1 x i64] }, ptr %t126, i32 0, i32 0
  store i64 0, ptr %t127
  %t128 = insertvalue { i64 } undef, i64 10, 0
  %t129 = getelementptr { i64, [1 x i64] }, ptr %t126, i32 0, i32 1
  store { i64 } %t128, ptr %t129
  %t130 = load { i64, [1 x i64] }, ptr %t126
  %t131 = call ptr @__olang_errpay_push()
  %t132 = ptrtoint ptr %t131 to i64
  %t135 = inttoptr i64 %t132 to ptr
  %t136 = call ptr @__olang_scope_alloc_a(ptr %t135, i64 16, i64 8)
  store { i64, [1 x i64] } %t130, ptr %t136
  call void @__olang_errpay_set(ptr %t136)
  call void @__olang_scope_close(ptr %s0)
  %t139 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 65536, 0
  store { i32, %"std/time:Date" } %t139, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t140 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t142 = call { i32, i64 } @std_2ftime_2edigitsAt(ptr %v0, { i64, ptr } %t140, i64 11, i64 2)
  %t143 = extractvalue { i32, i64 } %t142, 1
  %t144 = extractvalue { i32, i64 } %t142, 0
  store i32 %t144, ptr %l57
  %t145 = icmp ne i32 %t144, 0
  br i1 %t145, label %bb29, label %ok.146, !prof !99
ok.146:
  store i64 %t143, ptr %l56
  br label %bb28
bb28:
  %t147 = load i64, ptr %l56, !tbaa !24
  store i64 %t147, ptr %l54, !tbaa !24
  br label %bb30
bb29:
  %t148 = load i32, ptr %l57, !tbaa !23
  %t149 = lshr i32 %t148, 16
  %t150 = and i32 %t148, 65535
  %t151 = icmp eq i32 %t149, 1
  %t152 = select i1 %t151, i32 1, i32 0
  %t153 = icmp eq i32 %t148, 0
  %t154 = shl i32 %t152, 16
  %t155 = or i32 %t154, %t150
  %t156 = select i1 %t153, i32 0, i32 %t155
  call void @__olang_scope_close(ptr %s0)
  %t158 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t156, 0
  store { i32, %"std/time:Date" } %t158, ptr %rv
  br label %ret
bb30:
  %t159 = load i64, ptr %l54, !tbaa !24
  store i64 %t159, ptr %l4, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t162 = call i32 @std_2ftime_2eexpect(ptr %v0, { i64, ptr } %t160, i64 13, i8 58)
  store i32 %t162, ptr %l60
  %t163 = icmp ne i32 %t162, 0
  br i1 %t163, label %bb32, label %ok.164, !prof !99
ok.164:
  br label %bb31
bb31:
  br label %bb33
bb32:
  %t165 = load i32, ptr %l60, !tbaa !23
  %t166 = lshr i32 %t165, 16
  %t167 = and i32 %t165, 65535
  %t168 = icmp eq i32 %t166, 1
  %t169 = select i1 %t168, i32 1, i32 0
  %t170 = icmp eq i32 %t165, 0
  %t171 = shl i32 %t169, 16
  %t172 = or i32 %t171, %t167
  %t173 = select i1 %t170, i32 0, i32 %t172
  call void @__olang_scope_close(ptr %s0)
  %t175 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t173, 0
  store { i32, %"std/time:Date" } %t175, ptr %rv
  br label %ret
bb33:
  %t176 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t178 = call { i32, i64 } @std_2ftime_2edigitsAt(ptr %v0, { i64, ptr } %t176, i64 14, i64 2)
  %t179 = extractvalue { i32, i64 } %t178, 1
  %t180 = extractvalue { i32, i64 } %t178, 0
  store i32 %t180, ptr %l65
  %t181 = icmp ne i32 %t180, 0
  br i1 %t181, label %bb35, label %ok.182, !prof !99
ok.182:
  store i64 %t179, ptr %l64
  br label %bb34
bb34:
  %t183 = load i64, ptr %l64, !tbaa !24
  store i64 %t183, ptr %l62, !tbaa !24
  br label %bb36
bb35:
  %t184 = load i32, ptr %l65, !tbaa !23
  %t185 = lshr i32 %t184, 16
  %t186 = and i32 %t184, 65535
  %t187 = icmp eq i32 %t185, 1
  %t188 = select i1 %t187, i32 1, i32 0
  %t189 = icmp eq i32 %t184, 0
  %t190 = shl i32 %t188, 16
  %t191 = or i32 %t190, %t186
  %t192 = select i1 %t189, i32 0, i32 %t191
  call void @__olang_scope_close(ptr %s0)
  %t194 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t192, 0
  store { i32, %"std/time:Date" } %t194, ptr %rv
  br label %ret
bb36:
  %t195 = load i64, ptr %l62, !tbaa !24
  store i64 %t195, ptr %l5, !tbaa !24
  %t196 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t198 = call i32 @std_2ftime_2eexpect(ptr %v0, { i64, ptr } %t196, i64 16, i8 58)
  store i32 %t198, ptr %l68
  %t199 = icmp ne i32 %t198, 0
  br i1 %t199, label %bb38, label %ok.200, !prof !99
ok.200:
  br label %bb37
bb37:
  br label %bb39
bb38:
  %t201 = load i32, ptr %l68, !tbaa !23
  %t202 = lshr i32 %t201, 16
  %t203 = and i32 %t201, 65535
  %t204 = icmp eq i32 %t202, 1
  %t205 = select i1 %t204, i32 1, i32 0
  %t206 = icmp eq i32 %t201, 0
  %t207 = shl i32 %t205, 16
  %t208 = or i32 %t207, %t203
  %t209 = select i1 %t206, i32 0, i32 %t208
  call void @__olang_scope_close(ptr %s0)
  %t211 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t209, 0
  store { i32, %"std/time:Date" } %t211, ptr %rv
  br label %ret
bb39:
  %t212 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t214 = call { i32, i64 } @std_2ftime_2edigitsAt(ptr %v0, { i64, ptr } %t212, i64 17, i64 2)
  %t215 = extractvalue { i32, i64 } %t214, 1
  %t216 = extractvalue { i32, i64 } %t214, 0
  store i32 %t216, ptr %l73
  %t217 = icmp ne i32 %t216, 0
  br i1 %t217, label %bb41, label %ok.218, !prof !99
ok.218:
  store i64 %t215, ptr %l72
  br label %bb40
bb40:
  %t219 = load i64, ptr %l72, !tbaa !24
  store i64 %t219, ptr %l70, !tbaa !24
  br label %bb42
bb41:
  %t220 = load i32, ptr %l73, !tbaa !23
  %t221 = lshr i32 %t220, 16
  %t222 = and i32 %t220, 65535
  %t223 = icmp eq i32 %t221, 1
  %t224 = select i1 %t223, i32 1, i32 0
  %t225 = icmp eq i32 %t220, 0
  %t226 = shl i32 %t224, 16
  %t227 = or i32 %t226, %t222
  %t228 = select i1 %t225, i32 0, i32 %t227
  call void @__olang_scope_close(ptr %s0)
  %t230 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t228, 0
  store { i32, %"std/time:Date" } %t230, ptr %rv
  br label %ret
bb42:
  %t231 = load i64, ptr %l70, !tbaa !24
  store i64 %t231, ptr %l6, !tbaa !24
  store i64 19, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t232 = load i64, ptr %l7, !tbaa !24
  %t233 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t233, 0
  %t238 = icmp slt i64 %t232, %t235
  br i1 %t238, label %bb43, label %bb44
bb43:
  %t240 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t240, ptr %l80, !tbaa !27
  %t241 = load i64, ptr %l7, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr i8, ptr %t244, i64 %t241
  %t246 = load i8, ptr %t245, !tbaa !32
  %t248 = icmp eq i8 %t246, 46
  store i1 %t248, ptr %l79, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb45
bb45:
  %t250 = load i1, ptr %l79, !tbaa !21
  br i1 %t250, label %bb46, label %bb47
bb46:
  %t251 = load i64, ptr %l7, !tbaa !24
  %t253 = add i64 %t251, 1
  store i64 %t253, ptr %l7, !tbaa !24
  %t255 = load i64, ptr %l7, !tbaa !24
  store i64 %t255, ptr %l9, !tbaa !24
  store i64 100000000, ptr %l10, !tbaa !24
  br label %bb48
bb47:
  br label %bb64
bb48:
  %t257 = load i64, ptr %l7, !tbaa !24
  %t258 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t258, 0
  %t263 = icmp slt i64 %t257, %t260
  br i1 %t263, label %bb49, label %bb50
bb49:
  %t265 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t265, ptr %l92, !tbaa !27
  %t266 = load i64, ptr %l7, !tbaa !24
  %t268 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !27
  %t270 = getelementptr i8, ptr %t269, i64 %t266
  %t271 = load i8, ptr %t270, !tbaa !32
  %t273 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t271)
  store i1 %t273, ptr %l95
  br label %bb51
bb50:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb52
bb51:
  %t274 = load i1, ptr %l95, !tbaa !21
  store i1 %t274, ptr %l91, !tbaa !21
  br label %bb52
bb52:
  %t275 = load i1, ptr %l91, !tbaa !21
  %t276 = xor i1 %t275, true
  br i1 %t276, label %bb53, label %bb54
bb53:
  br label %bb60
bb54:
  br label %bb55
bb55:
  %t278 = load i64, ptr %l7, !tbaa !24
  %t279 = load i64, ptr %l9, !tbaa !24
  %t282 = sub i64 %t278, %t279
  %t284 = icmp sge i64 %t282, 9
  br i1 %t284, label %bb56, label %bb57
bb56:
  %t286 = load i64, ptr %l7, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t287
  %t288 = getelementptr { i64, [1 x i64] }, ptr %t287, i32 0, i32 0
  store i64 0, ptr %t288
  %t290 = insertvalue { i64 } undef, i64 %t286, 0
  %t291 = getelementptr { i64, [1 x i64] }, ptr %t287, i32 0, i32 1
  store { i64 } %t290, ptr %t291
  %t292 = load { i64, [1 x i64] }, ptr %t287
  %t293 = call ptr @__olang_errpay_push()
  %t294 = ptrtoint ptr %t293 to i64
  %t297 = inttoptr i64 %t294 to ptr
  %t298 = call ptr @__olang_scope_alloc_a(ptr %t297, i64 16, i64 8)
  store { i64, [1 x i64] } %t292, ptr %t298
  call void @__olang_errpay_set(ptr %t298)
  call void @__olang_scope_close(ptr %s0)
  %t301 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 65536, 0
  store { i32, %"std/time:Date" } %t301, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  %t302 = load i64, ptr %l8, !tbaa !24
  %t303 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t303, ptr %l107, !tbaa !27
  %t304 = load i64, ptr %l7, !tbaa !24
  %t306 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr i8, ptr %t307, i64 %t304
  %t309 = load i8, ptr %t308, !tbaa !32
  %t311 = sub i8 %t309, 48
  %t313 = zext i8 %t311 to i64
  %t314 = load i64, ptr %l10, !tbaa !24
  %t317 = mul i64 %t313, %t314
  %t320 = add i64 %t302, %t317
  store i64 %t320, ptr %l8, !tbaa !24
  %t322 = load i64, ptr %l10, !tbaa !24
  %t324 = sdiv i64 %t322, 10
  store i64 %t324, ptr %l10, !tbaa !24
  %t326 = load i64, ptr %l7, !tbaa !24
  %t328 = add i64 %t326, 1
  store i64 %t328, ptr %l7, !tbaa !24
  br label %bb59
bb59:
  br label %bb48
bb60:
  %t330 = load i64, ptr %l7, !tbaa !24
  %t331 = load i64, ptr %l9, !tbaa !24
  %t334 = icmp eq i64 %t330, %t331
  br i1 %t334, label %bb61, label %bb62
bb61:
  %t336 = load i64, ptr %l7, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t337
  %t338 = getelementptr { i64, [1 x i64] }, ptr %t337, i32 0, i32 0
  store i64 0, ptr %t338
  %t340 = insertvalue { i64 } undef, i64 %t336, 0
  %t341 = getelementptr { i64, [1 x i64] }, ptr %t337, i32 0, i32 1
  store { i64 } %t340, ptr %t341
  %t342 = load { i64, [1 x i64] }, ptr %t337
  %t343 = call ptr @__olang_errpay_push()
  %t344 = ptrtoint ptr %t343 to i64
  %t347 = inttoptr i64 %t344 to ptr
  %t348 = call ptr @__olang_scope_alloc_a(ptr %t347, i64 16, i64 8)
  store { i64, [1 x i64] } %t342, ptr %t348
  call void @__olang_errpay_set(ptr %t348)
  call void @__olang_scope_close(ptr %s0)
  %t351 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 65536, 0
  store { i32, %"std/time:Date" } %t351, ptr %rv
  br label %ret
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t352 = load i64, ptr %l7, !tbaa !24
  %t353 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t355 = extractvalue { i64, ptr } %t353, 0
  %t358 = icmp sge i64 %t352, %t355
  br i1 %t358, label %bb65, label %bb66
bb65:
  %t360 = load i64, ptr %l7, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t361
  %t362 = getelementptr { i64, [1 x i64] }, ptr %t361, i32 0, i32 0
  store i64 0, ptr %t362
  %t364 = insertvalue { i64 } undef, i64 %t360, 0
  %t365 = getelementptr { i64, [1 x i64] }, ptr %t361, i32 0, i32 1
  store { i64 } %t364, ptr %t365
  %t366 = load { i64, [1 x i64] }, ptr %t361
  %t367 = call ptr @__olang_errpay_push()
  %t368 = ptrtoint ptr %t367 to i64
  %t371 = inttoptr i64 %t368 to ptr
  %t372 = call ptr @__olang_scope_alloc_a(ptr %t371, i64 16, i64 8)
  store { i64, [1 x i64] } %t366, ptr %t372
  call void @__olang_errpay_set(ptr %t372)
  call void @__olang_scope_close(ptr %s0)
  %t375 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 65536, 0
  store { i32, %"std/time:Date" } %t375, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  store i64 0, ptr %l11, !tbaa !24
  %t376 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t376, ptr %l136, !tbaa !27
  %t377 = load i64, ptr %l7, !tbaa !24
  %t379 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t380 = load ptr, ptr %t379, !tbaa !27
  %t381 = getelementptr i8, ptr %t380, i64 %t377
  %t382 = load i8, ptr %t381, !tbaa !32
  %t384 = icmp eq i8 %t382, 90
  br i1 %t384, label %bb68, label %bb69
bb68:
  store i1 true, ptr %l140, !tbaa !21
  br label %bb70
bb69:
  %t386 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t386, ptr %l141, !tbaa !27
  %t387 = load i64, ptr %l7, !tbaa !24
  %t389 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t390 = load ptr, ptr %t389, !tbaa !27
  %t391 = getelementptr i8, ptr %t390, i64 %t387
  %t392 = load i8, ptr %t391, !tbaa !32
  %t394 = icmp eq i8 %t392, 122
  store i1 %t394, ptr %l140, !tbaa !21
  br label %bb70
bb70:
  %t396 = load i1, ptr %l140, !tbaa !21
  br i1 %t396, label %bb71, label %bb72
bb71:
  %t397 = load i64, ptr %l7, !tbaa !24
  %t399 = add i64 %t397, 1
  store i64 %t399, ptr %l7, !tbaa !24
  br label %bb97
bb72:
  %t401 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t401, ptr %l147, !tbaa !27
  %t402 = load i64, ptr %l7, !tbaa !24
  %t404 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !27
  %t406 = getelementptr i8, ptr %t405, i64 %t402
  %t407 = load i8, ptr %t406, !tbaa !32
  %t409 = icmp eq i8 %t407, 43
  br i1 %t409, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l151, !tbaa !21
  br label %bb75
bb74:
  %t411 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t411, ptr %l152, !tbaa !27
  %t412 = load i64, ptr %l7, !tbaa !24
  %t414 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !27
  %t416 = getelementptr i8, ptr %t415, i64 %t412
  %t417 = load i8, ptr %t416, !tbaa !32
  %t419 = icmp eq i8 %t417, 45
  store i1 %t419, ptr %l151, !tbaa !21
  br label %bb75
bb75:
  %t421 = load i1, ptr %l151, !tbaa !21
  br i1 %t421, label %bb76, label %bb77
bb76:
  %t422 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t423 = load i64, ptr %l7, !tbaa !24
  %t425 = add i64 %t423, 1
  %t428 = call { i32, i64 } @std_2ftime_2edigitsAt(ptr %v0, { i64, ptr } %t422, i64 %t425, i64 2)
  %t429 = extractvalue { i32, i64 } %t428, 1
  %t430 = extractvalue { i32, i64 } %t428, 0
  store i32 %t430, ptr %l161
  %t431 = icmp ne i32 %t430, 0
  br i1 %t431, label %bb79, label %ok.432, !prof !99
ok.432:
  store i64 %t429, ptr %l160
  br label %bb78
bb77:
  %t433 = load i64, ptr %l7, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t434
  %t435 = getelementptr { i64, [1 x i64] }, ptr %t434, i32 0, i32 0
  store i64 0, ptr %t435
  %t437 = insertvalue { i64 } undef, i64 %t433, 0
  %t438 = getelementptr { i64, [1 x i64] }, ptr %t434, i32 0, i32 1
  store { i64 } %t437, ptr %t438
  %t439 = load { i64, [1 x i64] }, ptr %t434
  %t440 = call ptr @__olang_errpay_push()
  %t441 = ptrtoint ptr %t440 to i64
  %t444 = inttoptr i64 %t441 to ptr
  %t445 = call ptr @__olang_scope_alloc_a(ptr %t444, i64 16, i64 8)
  store { i64, [1 x i64] } %t439, ptr %t445
  call void @__olang_errpay_set(ptr %t445)
  call void @__olang_scope_close(ptr %s0)
  %t448 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 65536, 0
  store { i32, %"std/time:Date" } %t448, ptr %rv
  br label %ret
bb78:
  %t449 = load i64, ptr %l160, !tbaa !24
  store i64 %t449, ptr %l156, !tbaa !24
  br label %bb80
bb79:
  %t450 = load i32, ptr %l161, !tbaa !23
  %t451 = lshr i32 %t450, 16
  %t452 = and i32 %t450, 65535
  %t453 = icmp eq i32 %t451, 1
  %t454 = select i1 %t453, i32 1, i32 0
  %t455 = icmp eq i32 %t450, 0
  %t456 = shl i32 %t454, 16
  %t457 = or i32 %t456, %t452
  %t458 = select i1 %t455, i32 0, i32 %t457
  call void @__olang_scope_close(ptr %s0)
  %t460 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t458, 0
  store { i32, %"std/time:Date" } %t460, ptr %rv
  br label %ret
bb80:
  %t461 = load i64, ptr %l156, !tbaa !24
  store i64 %t461, ptr %l12, !tbaa !24
  %t462 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t463 = load i64, ptr %l7, !tbaa !24
  %t465 = add i64 %t463, 3
  %t468 = call i32 @std_2ftime_2eexpect(ptr %v0, { i64, ptr } %t462, i64 %t465, i8 58)
  store i32 %t468, ptr %l166
  %t469 = icmp ne i32 %t468, 0
  br i1 %t469, label %bb82, label %ok.470, !prof !99
ok.470:
  br label %bb81
bb81:
  br label %bb83
bb82:
  %t471 = load i32, ptr %l166, !tbaa !23
  %t472 = lshr i32 %t471, 16
  %t473 = and i32 %t471, 65535
  %t474 = icmp eq i32 %t472, 1
  %t475 = select i1 %t474, i32 1, i32 0
  %t476 = icmp eq i32 %t471, 0
  %t477 = shl i32 %t475, 16
  %t478 = or i32 %t477, %t473
  %t479 = select i1 %t476, i32 0, i32 %t478
  call void @__olang_scope_close(ptr %s0)
  %t481 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t479, 0
  store { i32, %"std/time:Date" } %t481, ptr %rv
  br label %ret
bb83:
  %t482 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t483 = load i64, ptr %l7, !tbaa !24
  %t485 = add i64 %t483, 4
  %t488 = call { i32, i64 } @std_2ftime_2edigitsAt(ptr %v0, { i64, ptr } %t482, i64 %t485, i64 2)
  %t489 = extractvalue { i32, i64 } %t488, 1
  %t490 = extractvalue { i32, i64 } %t488, 0
  store i32 %t490, ptr %l173
  %t491 = icmp ne i32 %t490, 0
  br i1 %t491, label %bb85, label %ok.492, !prof !99
ok.492:
  store i64 %t489, ptr %l172
  br label %bb84
bb84:
  %t493 = load i64, ptr %l172, !tbaa !24
  store i64 %t493, ptr %l168, !tbaa !24
  br label %bb86
bb85:
  %t494 = load i32, ptr %l173, !tbaa !23
  %t495 = lshr i32 %t494, 16
  %t496 = and i32 %t494, 65535
  %t497 = icmp eq i32 %t495, 1
  %t498 = select i1 %t497, i32 1, i32 0
  %t499 = icmp eq i32 %t494, 0
  %t500 = shl i32 %t498, 16
  %t501 = or i32 %t500, %t496
  %t502 = select i1 %t499, i32 0, i32 %t501
  call void @__olang_scope_close(ptr %s0)
  %t504 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 %t502, 0
  store { i32, %"std/time:Date" } %t504, ptr %rv
  br label %ret
bb86:
  %t505 = load i64, ptr %l168, !tbaa !24
  store i64 %t505, ptr %l13, !tbaa !24
  %t506 = load i64, ptr %l12, !tbaa !24
  %t508 = icmp sgt i64 %t506, 23
  br i1 %t508, label %bb87, label %bb88
bb87:
  store i1 true, ptr %l177, !tbaa !21
  br label %bb89
bb88:
  %t510 = load i64, ptr %l13, !tbaa !24
  %t512 = icmp sgt i64 %t510, 59
  store i1 %t512, ptr %l177, !tbaa !21
  br label %bb89
bb89:
  %t514 = load i1, ptr %l177, !tbaa !21
  br i1 %t514, label %bb90, label %bb91
bb90:
  store { i64, [1 x i64] } zeroinitializer, ptr %t515
  %t516 = getelementptr { i64, [1 x i64] }, ptr %t515, i32 0, i32 0
  store i64 1, ptr %t516
  %t517 = load { i64, [1 x i64] }, ptr %t515
  %t518 = call ptr @__olang_errpay_push()
  %t519 = ptrtoint ptr %t518 to i64
  %t522 = inttoptr i64 %t519 to ptr
  %t523 = call ptr @__olang_scope_alloc_a(ptr %t522, i64 16, i64 8)
  store { i64, [1 x i64] } %t517, ptr %t523
  call void @__olang_errpay_set(ptr %t523)
  call void @__olang_scope_close(ptr %s0)
  %t526 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 65537, 0
  store { i32, %"std/time:Date" } %t526, ptr %rv
  br label %ret
bb91:
  br label %bb92
bb92:
  %t527 = load i64, ptr %l12, !tbaa !24
  %t529 = mul i64 %t527, 60
  %t530 = load i64, ptr %l13, !tbaa !24
  %t533 = add i64 %t529, %t530
  store i64 %t533, ptr %l11, !tbaa !24
  %t535 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t535, ptr %l188, !tbaa !27
  %t536 = load i64, ptr %l7, !tbaa !24
  %t538 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t539 = load ptr, ptr %t538, !tbaa !27
  %t540 = getelementptr i8, ptr %t539, i64 %t536
  %t541 = load i8, ptr %t540, !tbaa !32
  %t543 = icmp eq i8 %t541, 45
  br i1 %t543, label %bb93, label %bb94
bb93:
  %t545 = load i64, ptr %l11, !tbaa !24
  %t547 = sub i64 0, %t545
  store i64 %t547, ptr %l11, !tbaa !24
  br label %bb95
bb94:
  br label %bb95
bb95:
  %t549 = load i64, ptr %l7, !tbaa !24
  %t551 = add i64 %t549, 6
  store i64 %t551, ptr %l7, !tbaa !24
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t553 = load i64, ptr %l7, !tbaa !24
  %t554 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t556 = extractvalue { i64, ptr } %t554, 0
  %t559 = icmp ne i64 %t553, %t556
  br i1 %t559, label %bb98, label %bb99
bb98:
  %t561 = load i64, ptr %l7, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t562
  %t563 = getelementptr { i64, [1 x i64] }, ptr %t562, i32 0, i32 0
  store i64 0, ptr %t563
  %t565 = insertvalue { i64 } undef, i64 %t561, 0
  %t566 = getelementptr { i64, [1 x i64] }, ptr %t562, i32 0, i32 1
  store { i64 } %t565, ptr %t566
  %t567 = load { i64, [1 x i64] }, ptr %t562
  %t568 = call ptr @__olang_errpay_push()
  %t569 = ptrtoint ptr %t568 to i64
  %t572 = inttoptr i64 %t569 to ptr
  %t573 = call ptr @__olang_scope_alloc_a(ptr %t572, i64 16, i64 8)
  store { i64, [1 x i64] } %t567, ptr %t573
  call void @__olang_errpay_set(ptr %t573)
  call void @__olang_scope_close(ptr %s0)
  %t576 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 65536, 0
  store { i32, %"std/time:Date" } %t576, ptr %rv
  br label %ret
bb99:
  br label %bb100
bb100:
  %t577 = load i64, ptr %l2, !tbaa !24
  %t579 = icmp slt i64 %t577, 1
  br i1 %t579, label %bb101, label %bb102
bb101:
  store i1 true, ptr %l212, !tbaa !21
  br label %bb103
bb102:
  %t581 = load i64, ptr %l2, !tbaa !24
  %t583 = icmp sgt i64 %t581, 12
  store i1 %t583, ptr %l212, !tbaa !21
  br label %bb103
bb103:
  %t585 = load i1, ptr %l212, !tbaa !21
  br i1 %t585, label %bb104, label %bb105
bb104:
  store i1 true, ptr %l215, !tbaa !21
  br label %bb106
bb105:
  %t586 = load i64, ptr %l3, !tbaa !24
  %t588 = icmp slt i64 %t586, 1
  store i1 %t588, ptr %l215, !tbaa !21
  br label %bb106
bb106:
  %t590 = load i1, ptr %l215, !tbaa !21
  br i1 %t590, label %bb107, label %bb108
bb107:
  store i1 true, ptr %l218, !tbaa !21
  br label %bb110
bb108:
  %t591 = load i64, ptr %l3, !tbaa !24
  store i64 %t591, ptr %l219, !tbaa !24
  %t592 = load i64, ptr %l1, !tbaa !24
  %t593 = load i64, ptr %l2, !tbaa !24
  %t596 = call i64 @std_2ftime_2edaysIn(i64 %t592, i64 %t593)
  store i64 %t596, ptr %l222
  br label %bb109
bb109:
  %t597 = load i64, ptr %l219, !tbaa !24
  %t598 = load i64, ptr %l222, !tbaa !24
  %t599 = icmp sgt i64 %t597, %t598
  store i1 %t599, ptr %l218, !tbaa !21
  br label %bb110
bb110:
  %t601 = load i1, ptr %l218, !tbaa !21
  br i1 %t601, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l224, !tbaa !21
  br label %bb113
bb112:
  %t602 = load i64, ptr %l4, !tbaa !24
  %t604 = icmp sgt i64 %t602, 23
  store i1 %t604, ptr %l224, !tbaa !21
  br label %bb113
bb113:
  %t606 = load i1, ptr %l224, !tbaa !21
  br i1 %t606, label %bb114, label %bb115
bb114:
  store i1 true, ptr %l227, !tbaa !21
  br label %bb116
bb115:
  %t607 = load i64, ptr %l5, !tbaa !24
  %t609 = icmp sgt i64 %t607, 59
  store i1 %t609, ptr %l227, !tbaa !21
  br label %bb116
bb116:
  %t611 = load i1, ptr %l227, !tbaa !21
  br i1 %t611, label %bb117, label %bb118
bb117:
  store i1 true, ptr %l230, !tbaa !21
  br label %bb119
bb118:
  %t612 = load i64, ptr %l6, !tbaa !24
  %t614 = icmp sgt i64 %t612, 59
  store i1 %t614, ptr %l230, !tbaa !21
  br label %bb119
bb119:
  %t616 = load i1, ptr %l230, !tbaa !21
  br i1 %t616, label %bb120, label %bb121
bb120:
  store { i64, [1 x i64] } zeroinitializer, ptr %t617
  %t618 = getelementptr { i64, [1 x i64] }, ptr %t617, i32 0, i32 0
  store i64 1, ptr %t618
  %t619 = load { i64, [1 x i64] }, ptr %t617
  %t620 = call ptr @__olang_errpay_push()
  %t621 = ptrtoint ptr %t620 to i64
  %t624 = inttoptr i64 %t621 to ptr
  %t625 = call ptr @__olang_scope_alloc_a(ptr %t624, i64 16, i64 8)
  store { i64, [1 x i64] } %t619, ptr %t625
  call void @__olang_errpay_set(ptr %t625)
  call void @__olang_scope_close(ptr %s0)
  %t628 = insertvalue { i32, %"std/time:Date" } zeroinitializer, i32 65537, 0
  store { i32, %"std/time:Date" } %t628, ptr %rv
  br label %ret
bb121:
  br label %bb122
bb122:
  %t629 = load i64, ptr %l1, !tbaa !24
  %t630 = load i64, ptr %l2, !tbaa !24
  %t631 = load i64, ptr %l3, !tbaa !24
  %t632 = load i64, ptr %l4, !tbaa !24
  %t633 = load i64, ptr %l5, !tbaa !24
  %t634 = load i64, ptr %l6, !tbaa !24
  %t635 = load i64, ptr %l8, !tbaa !24
  %t636 = load i64, ptr %l11, !tbaa !24
  %t645 = call %"std/time:Date" @std_2ftime_3aDate_2ector(ptr %s0, i64 %t629, i64 %t630, i64 %t631, i64 %t632, i64 %t633, i64 %t634, i64 %t635, i64 %t636)
  store %"std/time:Date" %t645, ptr %l245
  br label %bb123
bb123:
  call void @__olang_scope_close(ptr %s0)
  %t646 = load %"std/time:Date", ptr %l245
  %t647 = insertvalue { i32, %"std/time:Date" } zeroinitializer, %"std/time:Date" %t646, 1
  store { i32, %"std/time:Date" } %t647, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/time:Date" }, ptr %rv
  ret { i32, %"std/time:Date" } %rr
}

define dso_local i64 @std_2ftime_2eDuration_2eElapsed(i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i64 @std_2ftime_2eNow()
  store i64 %t1, ptr %l1
  br label %bb1
bb1:
  %t3 = load i64, ptr %l1, !tbaa !24
  %t5 = sub i64 %t3, %a0
  store i64 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2eDuration_2eHours(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = mul i64 %a0, 3600000000000
  store i64 %t3, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2eDuration_2eMicros(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = mul i64 %a0, 1000
  store i64 %t3, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2eDuration_2eMillis(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = mul i64 %a0, 1000000
  store i64 %t3, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2eDuration_2eMinutes(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = mul i64 %a0, 60000000000
  store i64 %t3, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2eDuration_2eNanos(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2eDuration_2eSeconds(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = mul i64 %a0, 1000000000
  store i64 %t3, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @std_2ftime_2eFormat(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l4 = alloca %"std/time:Date"
  %l6 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"std/time:Date" @std_2ftime_2eDate_2eOf(i64 %a0, i64 %a1)
  store %"std/time:Date" %t5, ptr %l4
  br label %bb1
bb1:
  %t7 = call { i64, ptr } @std_2ftime_2estd_2ftime_3aDate_2eStr(ptr %v0, ptr %v0, ptr %l4)
  store { i64, ptr } %t7, ptr %l6
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @std_2ftime_2eIsVirtual() #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @std_2ftime_2eNow() #0 {
entry:
  %l1 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2estd_2ftime_2eclockMonotonic, !tbaa !23
  %t3 = call i64 @std_2ftime_2eread(i32 %t1)
  store i64 %t3, ptr %l1
  br label %bb1
bb1:
  %t4 = load i64, ptr %l1, !tbaa !24
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @std_2ftime_2eReach(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l8 = alloca i1
  %l13 = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = xor i1 false, true
  br i1 %t1, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  br label %bb4
bb4:
  %t4 = load atomic i64, ptr @G_2estd_2ftime_2evirtualNs seq_cst, align 8
  store i64 %t4, ptr %l1, !tbaa !24
  %t6 = load i64, ptr %l1, !tbaa !24
  %t7 = load i64, ptr %l0, !tbaa !24
  %t10 = icmp sge i64 %t6, %t7
  br i1 %t10, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb7
bb6:
  %t13 = load atomic i64, ptr @G_2estd_2ftime_2evirtualDepth seq_cst, align 8
  %t15 = icmp eq i64 %t13, 0
  store i1 %t15, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  %t18 = load i64, ptr %l1, !tbaa !24
  store i64 %t18, ptr %l13, !tbaa !24
  %t19 = load i64, ptr %l0, !tbaa !24
  %t21 = load i64, ptr %l13, !tbaa !24
  %t22 = load i64, ptr %l13, !tbaa !24
  %t24 = cmpxchg ptr @G_2estd_2ftime_2evirtualNs, i64 %t22, i64 %t19 seq_cst seq_cst
  %t25 = extractvalue { i64, i1 } %t24, 0
  %t26 = load i64, ptr %l1, !tbaa !24
  %t29 = icmp eq i64 %t25, %t26
  br i1 %t29, label %bb11, label %bb12
bb11:
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  br label %bb4
ret:
  ret void
}

define dso_local i64 @std_2ftime_2eSince(i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i64 @std_2ftime_2eNow()
  store i64 %t1, ptr %l1
  br label %bb1
bb1:
  %t3 = load i64, ptr %l1, !tbaa !24
  %t5 = sub i64 %t3, %a0
  store i64 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @std_2ftime_2eSleep(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca %"<time.h>:timespec"
  %l2 = alloca %"<time.h>:timespec"
  %l5 = alloca %"<time.h>:timespec"
  %l12 = alloca %"<time.h>:timespec"
  %l15 = alloca i32
  %s0 = alloca %olang.scope
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp sle i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = call %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %s0)
  store %"<time.h>:timespec" %t5, ptr %l5
  br label %bb4
bb4:
  %t6 = load %"<time.h>:timespec", ptr %l5
  store %"<time.h>:timespec" %t6, ptr %l1
  %t7 = load i64, ptr %l0, !tbaa !24
  %t10 = sdiv i64 %t7, 1000000000
  %t12 = getelementptr %"<time.h>:timespec", ptr %l1, i32 0, i32 0
  store i64 %t10, ptr %t12, !tbaa !24
  %t13 = load i64, ptr %l0, !tbaa !24
  %t16 = srem i64 %t13, 1000000000
  %t18 = getelementptr %"<time.h>:timespec", ptr %l1, i32 0, i32 1
  store i64 %t16, ptr %t18, !tbaa !24
  %t19 = call %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %s0)
  store %"<time.h>:timespec" %t19, ptr %l12
  br label %bb5
bb5:
  %t20 = load %"<time.h>:timespec", ptr %l12
  store %"<time.h>:timespec" %t20, ptr %l2
  br label %bb6
bb6:
  %t23 = call i32 @nanosleep(ptr %l1, ptr %l2)
  store i32 %t23, ptr %l15
  br label %bb7
bb7:
  %t24 = load i32, ptr %l15, !tbaa !23
  %t25 = icmp ne i32 %t24, 0
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t29 = getelementptr %"<time.h>:timespec", ptr %l2, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = getelementptr %"<time.h>:timespec", ptr %l1, i32 0, i32 0
  store i64 %t30, ptr %t32, !tbaa !24
  %t33 = getelementptr %"<time.h>:timespec", ptr %l2, i32 0, i32 1
  %t34 = load i64, ptr %t33, !tbaa !24
  %t36 = getelementptr %"<time.h>:timespec", ptr %l1, i32 0, i32 1
  store i64 %t34, ptr %t36, !tbaa !24
  br label %bb11
bb11:
  br label %bb6
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/time:Timer" @std_2ftime_2eTimer_2eAfter(i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %l5 = alloca %"std/time:Timer"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/time:Timer"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call i64 @std_2ftime_2eNow()
  store i64 %t1, ptr %l1
  br label %bb1
bb1:
  %t4 = load i64, ptr %l1, !tbaa !24
  %t6 = add i64 %t4, %a0
  %t8 = call %"std/time:Timer" @std_2ftime_3aTimer_2ector(ptr %s0, i64 %t6)
  store %"std/time:Timer" %t8, ptr %l5
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load %"std/time:Timer", ptr %l5
  store %"std/time:Timer" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"std/time:Timer", ptr %rv
  ret %"std/time:Timer" %rr
}

define dso_local i64 @std_2ftime_2eWall() #0 {
entry:
  %l1 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2estd_2ftime_2eclockRealtime, !tbaa !23
  %t3 = call i64 @std_2ftime_2eread(i32 %t1)
  store i64 %t3, ptr %l1
  br label %bb1
bb1:
  %t4 = load i64, ptr %l1, !tbaa !24
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2edaysFromCivil(i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l11 = alloca i64
  %l17 = alloca i64
  %l28 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sle i64 %t1, 2
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = sub i64 %t5, 1
  store i64 %t7, ptr %l11, !tbaa !24
  br label %bb3
bb2:
  %t9 = load i64, ptr %l0, !tbaa !24
  store i64 %t9, ptr %l11, !tbaa !24
  br label %bb3
bb3:
  %t11 = load i64, ptr %l11, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t14 = icmp sge i64 %t12, 0
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = load i64, ptr %l3, !tbaa !24
  store i64 %t16, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = sub i64 %t18, 399
  store i64 %t20, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t22 = load i64, ptr %l17, !tbaa !24
  %t23 = sdiv i64 %t22, 400
  store i64 %t23, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = mul i64 %t26, 400
  %t31 = sub i64 %t25, %t28
  store i64 %t31, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp sgt i64 %t33, 2
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  %t39 = sub i64 %t37, 3
  store i64 %t39, ptr %l28, !tbaa !24
  br label %bb9
bb8:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t43 = add i64 %t41, 9
  store i64 %t43, ptr %l28, !tbaa !24
  br label %bb9
bb9:
  %t45 = load i64, ptr %l28, !tbaa !24
  %t48 = mul i64 153, %t45
  %t50 = add i64 %t48, 2
  %t52 = sdiv i64 %t50, 5
  %t56 = add i64 %t52, %a2
  %t58 = sub i64 %t56, 1
  %t60 = load i64, ptr %l5, !tbaa !24
  %t62 = mul i64 %t60, 365
  %t63 = load i64, ptr %l5, !tbaa !24
  %t65 = sdiv i64 %t63, 4
  %t68 = add i64 %t62, %t65
  %t69 = load i64, ptr %l5, !tbaa !24
  %t71 = sdiv i64 %t69, 100
  %t74 = sub i64 %t68, %t71
  %t78 = add i64 %t74, %t58
  %t80 = load i64, ptr %l4, !tbaa !24
  %t82 = mul i64 %t80, 146097
  %t86 = add i64 %t82, %t78
  %t88 = sub i64 %t86, 719468
  store i64 %t88, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2edaysIn(i64 %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i64
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i64
  %rv = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 2
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t7 = call i1 @std_2ftime_2eisLeap(i64 %a0)
  store i1 %t7, ptr %l5
  br label %bb3
bb2:
  br label %bb7
bb3:
  %t8 = load i1, ptr %l5, !tbaa !21
  br i1 %t8, label %bb4, label %bb5
bb4:
  store i64 29, ptr %l6, !tbaa !24
  br label %bb6
bb5:
  store i64 28, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t9 = load i64, ptr %l6, !tbaa !24
  store i64 %t9, ptr %rv
  br label %ret
bb7:
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp eq i64 %t10, 4
  br i1 %t12, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb10
bb9:
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = icmp eq i64 %t14, 6
  store i1 %t16, ptr %l9, !tbaa !21
  br label %bb10
bb10:
  %t18 = load i1, ptr %l9, !tbaa !21
  br i1 %t18, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb13
bb12:
  %t19 = load i64, ptr %l1, !tbaa !24
  %t21 = icmp eq i64 %t19, 9
  store i1 %t21, ptr %l12, !tbaa !21
  br label %bb13
bb13:
  %t23 = load i1, ptr %l12, !tbaa !21
  br i1 %t23, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb16
bb15:
  %t24 = load i64, ptr %l1, !tbaa !24
  %t26 = icmp eq i64 %t24, 11
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb16
bb16:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb17, label %bb18
bb17:
  store i64 30, ptr %l18, !tbaa !24
  br label %bb19
bb18:
  store i64 31, ptr %l18, !tbaa !24
  br label %bb19
bb19:
  %t29 = load i64, ptr %l18, !tbaa !24
  store i64 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, i64 } @std_2ftime_2edigitsAt(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i8
  %l27 = alloca i64
  %l30 = alloca i64
  %l48 = alloca { i64, ptr }
  %l54 = alloca i1
  %rv = alloca { i32, i64 }
  %t16 = alloca { i64, [1 x i64] }, align 8
  %t102 = alloca { i64, [1 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = add i64 %t1, %t2
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t11 = icmp sgt i64 %t5, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store { i64, [1 x i64] } zeroinitializer, ptr %t16
  %t17 = getelementptr { i64, [1 x i64] }, ptr %t16, i32 0, i32 0
  store i64 0, ptr %t17
  %t19 = insertvalue { i64 } undef, i64 %t15, 0
  %t20 = getelementptr { i64, [1 x i64] }, ptr %t16, i32 0, i32 1
  store { i64 } %t19, ptr %t20
  %t21 = load { i64, [1 x i64] }, ptr %t16
  %t22 = call ptr @__olang_errpay_push()
  %t23 = ptrtoint ptr %t22 to i64
  %t26 = inttoptr i64 %t23 to ptr
  %t27 = call ptr @__olang_scope_alloc_a(ptr %t26, i64 16, i64 8)
  store { i64, [1 x i64] } %t21, ptr %t27
  call void @__olang_errpay_set(ptr %t27)
  %t30 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t30, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  store i64 %t31, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp sgt i64 %t33, %t34
  br i1 %t37, label %bb4, label %bb5
bb4:
  %t39 = load i64, ptr %l6, !tbaa !24
  %t41 = icmp sgt i64 %t39, 0
  br i1 %t41, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb9
bb6:
  %t43 = load i64, ptr %l5, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = sub i64 %t43, %t44
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = add i64 %t47, %t48
  %t53 = sub i64 %t51, 1
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = sdiv i64 %t53, %t54
  store i64 %t57, ptr %l30, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb8
bb8:
  %t59 = load i64, ptr %l30, !tbaa !24
  store i64 %t59, ptr %l27, !tbaa !24
  br label %bb9
bb9:
  %t60 = load i64, ptr %l27, !tbaa !24
  store i64 %t60, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  %t61 = load i64, ptr %l8, !tbaa !24
  %t62 = load i64, ptr %l7, !tbaa !24
  %t65 = icmp slt i64 %t61, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb11, label %bb12
bb11:
  br label %bb19
bb12:
  br label %bb13
bb13:
  %t69 = load i64, ptr %l4, !tbaa !24
  %t70 = load i64, ptr %l8, !tbaa !24
  %t71 = load i64, ptr %l6, !tbaa !24
  %t74 = mul i64 %t70, %t71
  %t77 = add i64 %t69, %t74
  store i64 %t77, ptr %l9, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t79, ptr %l48, !tbaa !27
  %t80 = load i64, ptr %l1, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  %t84 = add i64 %t80, %t81
  %t86 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i8, ptr %t87, i64 %t84
  %t89 = load i8, ptr %t88, !tbaa !32
  store i8 %t89, ptr %l10, !tbaa !22
  %t91 = load i8, ptr %l10, !tbaa !22
  %t93 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t91)
  store i1 %t93, ptr %l54
  br label %bb14
bb14:
  %t94 = load i1, ptr %l54, !tbaa !21
  %t95 = xor i1 %t94, true
  br i1 %t95, label %bb15, label %bb16
bb15:
  %t97 = load i64, ptr %l1, !tbaa !24
  %t98 = load i64, ptr %l9, !tbaa !24
  %t101 = add i64 %t97, %t98
  store { i64, [1 x i64] } zeroinitializer, ptr %t102
  %t103 = getelementptr { i64, [1 x i64] }, ptr %t102, i32 0, i32 0
  store i64 0, ptr %t103
  %t105 = insertvalue { i64 } undef, i64 %t101, 0
  %t106 = getelementptr { i64, [1 x i64] }, ptr %t102, i32 0, i32 1
  store { i64 } %t105, ptr %t106
  %t107 = load { i64, [1 x i64] }, ptr %t102
  %t108 = call ptr @__olang_errpay_push()
  %t109 = ptrtoint ptr %t108 to i64
  %t112 = inttoptr i64 %t109 to ptr
  %t113 = call ptr @__olang_scope_alloc_a(ptr %t112, i64 16, i64 8)
  store { i64, [1 x i64] } %t107, ptr %t113
  call void @__olang_errpay_set(ptr %t113)
  %t116 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t116, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t117 = load i64, ptr %l3, !tbaa !24
  %t119 = mul i64 %t117, 10
  %t120 = load i8, ptr %l10, !tbaa !22
  %t122 = sub i8 %t120, 48
  %t124 = zext i8 %t122 to i64
  %t127 = add i64 %t119, %t124
  store i64 %t127, ptr %l3, !tbaa !24
  br label %bb18
bb18:
  %t129 = load i64, ptr %l8, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l8, !tbaa !24
  br label %bb10
bb19:
  %t133 = load i64, ptr %l3, !tbaa !24
  %t135 = insertvalue { i32, i64 } zeroinitializer, i64 %t133, 1
  store { i32, i64 } %t135, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i32 @std_2ftime_2eexpect(ptr %v0, { i64, ptr } %a0, i64 %a1, i8 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %rv = alloca i32
  %t23 = alloca { i64, [1 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t7 = icmp sge i64 %t1, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l8, !tbaa !27
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 %t10
  %t15 = load i8, ptr %t14, !tbaa !32
  %t19 = icmp ne i8 %t15, %a2
  store i1 %t19, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t21 = load i1, ptr %l7, !tbaa !21
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t22 = load i64, ptr %l1, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [1 x i64] }, ptr %t23, i32 0, i32 0
  store i64 0, ptr %t24
  %t26 = insertvalue { i64 } undef, i64 %t22, 0
  %t27 = getelementptr { i64, [1 x i64] }, ptr %t23, i32 0, i32 1
  store { i64 } %t26, ptr %t27
  %t28 = load { i64, [1 x i64] }, ptr %t23
  %t29 = call ptr @__olang_errpay_push()
  %t30 = ptrtoint ptr %t29 to i64
  %t33 = inttoptr i64 %t30 to ptr
  %t34 = call ptr @__olang_scope_alloc_a(ptr %t33, i64 16, i64 8)
  store { i64, [1 x i64] } %t28, ptr %t34
  call void @__olang_errpay_set(ptr %t34)
  store i32 65536, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @std_2ftime_2efraction(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca i64
  %l16 = alloca %"std/prelude/text:StringBuilder"
  %l21 = alloca i1
  %l37 = alloca i64
  %l39 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l0, !tbaa !65
  %t2 = load i64, ptr %l1, !tbaa !65
  %t5 = udiv i64 %t1, %t2
  store i64 %t5, ptr %l2, !tbaa !65
  %t7 = load i64, ptr %l0, !tbaa !65
  %t8 = load i64, ptr %l1, !tbaa !65
  %t11 = urem i64 %t7, %t8
  store i64 %t11, ptr %l3, !tbaa !65
  %t13 = load i64, ptr %l3, !tbaa !65
  %t15 = icmp eq i64 %t13, 0
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load i64, ptr %l2, !tbaa !65
  %t19 = call i64 @__olang_fmt_u64(ptr null, i64 %t17)
  %t20 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t19)
  %t21 = call i64 @__olang_fmt_u64(ptr %t20, i64 %t17)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t20, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t25 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t25, ptr %l16
  br label %bb4
bb4:
  %t26 = load %"std/prelude/text:StringBuilder", ptr %l16
  store %"std/prelude/text:StringBuilder" %t26, ptr %l4
  %t27 = load i64, ptr %l1, !tbaa !65
  %t29 = udiv i64 %t27, 10
  store i64 %t29, ptr %l5, !tbaa !65
  br label %bb5
bb5:
  %t31 = load i64, ptr %l5, !tbaa !65
  %t33 = icmp ugt i64 %t31, 0
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t35 = load i64, ptr %l3, !tbaa !65
  %t37 = icmp ugt i64 %t35, 0
  store i1 %t37, ptr %l21, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t39 = load i1, ptr %l21, !tbaa !21
  %t40 = xor i1 %t39, true
  br i1 %t40, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t42 = zext i8 48 to i64
  %t43 = load i64, ptr %l3, !tbaa !65
  %t44 = load i64, ptr %l5, !tbaa !65
  %t47 = udiv i64 %t43, %t44
  %t50 = add i64 %t42, %t47
  %t52 = trunc i64 %t50 to i8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l4, i8 %t52)
  br label %bb12
bb12:
  %t55 = load i64, ptr %l3, !tbaa !65
  %t56 = load i64, ptr %l5, !tbaa !65
  %t59 = urem i64 %t55, %t56
  store i64 %t59, ptr %l3, !tbaa !65
  br label %bb13
bb13:
  %t61 = load i64, ptr %l5, !tbaa !65
  %t63 = udiv i64 %t61, 10
  store i64 %t63, ptr %l5, !tbaa !65
  br label %bb5
bb14:
  %t65 = load i64, ptr %l2, !tbaa !65
  store i64 %t65, ptr %l37, !tbaa !65
  %t67 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t67, ptr %l39
  br label %bb15
bb15:
  %t68 = load i64, ptr %l37, !tbaa !65
  %t69 = call i64 @__olang_fmt_u64(ptr null, i64 %t68)
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t72 = add i64 %t69, %t71
  %t73 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 1
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t76 = add i64 %t72, %t75
  %t77 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t76)
  %t78 = call i64 @__olang_fmt_u64(ptr %t77, i64 %t68)
  %t79 = getelementptr i8, ptr %t77, i64 %t69
  call void @olang_textcopy(ptr %t79, ptr %t70, i64 %t71)
  %t80 = getelementptr i8, ptr %t79, i64 %t71
  call void @olang_textcopy(ptr %t80, ptr %t74, i64 %t75)
  %t81 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t77, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t82, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @std_2ftime_2eisLeap(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l4 = alloca i1
  %l8 = alloca i1
  %rv = alloca i1
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = srem i64 %t1, 4
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l0, !tbaa !24
  %t9 = srem i64 %t7, 100
  %t11 = icmp ne i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb6
bb3:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb4:
  %t13 = load i64, ptr %l0, !tbaa !24
  %t15 = srem i64 %t13, 400
  %t17 = icmp eq i64 %t15, 0
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l8, !tbaa !21
  store i1 %t19, ptr %l4, !tbaa !21
  br label %bb6
bb6:
  %t20 = load i1, ptr %l4, !tbaa !21
  store i1 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @std_2ftime_2eread(i32 %a0) #0 {
entry:
  %l1 = alloca %"<time.h>:timespec"
  %l2 = alloca %"<time.h>:timespec"
  %l5 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %s0)
  store %"<time.h>:timespec" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"<time.h>:timespec", ptr %l2
  store %"<time.h>:timespec" %t2, ptr %l1
  %t6 = call i32 @clock_gettime(i32 %a0, ptr %l1)
  store i32 %t6, ptr %l5
  br label %bb2
bb2:
  %t7 = getelementptr %"<time.h>:timespec", ptr %l1, i32 0, i32 0
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = mul i64 %t8, 1000000000
  %t11 = getelementptr %"<time.h>:timespec", ptr %l1, i32 0, i32 1
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = add i64 %t10, %t12
  call void @__olang_scope_close(ptr %s0)
  store i64 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @std_2ftime_2estd_2ftime_3aDate_2eStr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l40 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i64
  %l50 = alloca i64
  %l62 = alloca i64
  %l68 = alloca ptr
  %l72 = alloca i8
  %l73 = alloca ptr
  %l76 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  store ptr %l1, ptr %l6, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"std/time:Date", ptr %t3, i32 0, i32 0
  %t6 = load i64, ptr %t5, !tbaa !24
  %t8 = call { i64, ptr } @std_2fprelude_2ftext_2eI64_2ePadStart(ptr %s0, i64 %t6, i64 4, i8 48)
  store { i64, ptr } %t8, ptr %l9
  br label %bb2
bb2:
  %t9 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  %t11 = extractvalue { i64, ptr } %t9, 1
  %t12 = mul i64 %t10, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  call void @llvm.memcpy.p0.p0.i64(ptr %t13, ptr %t11, i64 %t12, i1 false)
  %t14 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  %t16 = load ptr, ptr %l6, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t16, { i64, ptr } %t15)
  br label %bb3
bb3:
  store ptr %l1, ptr %l11, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"std/time:Date", ptr %t18, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  %t23 = call { i64, ptr } @std_2ftime_2etwoDigits(ptr %s0, i64 %t21)
  store { i64, ptr } %t23, ptr %l14
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"std/time:Date", ptr %t24, i32 0, i32 2
  %t27 = load i64, ptr %t26, !tbaa !24
  %t29 = call { i64, ptr } @std_2ftime_2etwoDigits(ptr %s0, i64 %t27)
  store { i64, ptr } %t29, ptr %l17
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"std/time:Date", ptr %t30, i32 0, i32 3
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = call { i64, ptr } @std_2ftime_2etwoDigits(ptr %s0, i64 %t33)
  store { i64, ptr } %t35, ptr %l20
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"std/time:Date", ptr %t36, i32 0, i32 4
  %t39 = load i64, ptr %t38, !tbaa !24
  %t41 = call { i64, ptr } @std_2ftime_2etwoDigits(ptr %s0, i64 %t39)
  store { i64, ptr } %t41, ptr %l23
  br label %bb7
bb7:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"std/time:Date", ptr %t42, i32 0, i32 5
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = call { i64, ptr } @std_2ftime_2etwoDigits(ptr %s0, i64 %t45)
  store { i64, ptr } %t47, ptr %l26
  br label %bb8
bb8:
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t50 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 1
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = add i64 %t49, %t52
  %t54 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t56 = add i64 %t53, %t55
  %t57 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 1
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t60 = add i64 %t56, %t59
  %t61 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t63 = add i64 %t60, %t62
  %t64 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t67 = add i64 %t63, %t66
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t70 = add i64 %t67, %t69
  %t71 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = add i64 %t70, %t73
  %t75 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t77 = add i64 %t74, %t76
  %t78 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = add i64 %t77, %t80
  %t82 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t81)
  call void @olang_textcopy(ptr %t82, ptr %t48, i64 %t49)
  %t83 = getelementptr i8, ptr %t82, i64 %t49
  call void @olang_textcopy(ptr %t83, ptr %t51, i64 %t52)
  %t84 = getelementptr i8, ptr %t83, i64 %t52
  call void @olang_textcopy(ptr %t84, ptr %t54, i64 %t55)
  %t85 = getelementptr i8, ptr %t84, i64 %t55
  call void @olang_textcopy(ptr %t85, ptr %t58, i64 %t59)
  %t86 = getelementptr i8, ptr %t85, i64 %t59
  call void @olang_textcopy(ptr %t86, ptr %t61, i64 %t62)
  %t87 = getelementptr i8, ptr %t86, i64 %t62
  call void @olang_textcopy(ptr %t87, ptr %t65, i64 %t66)
  %t88 = getelementptr i8, ptr %t87, i64 %t66
  call void @olang_textcopy(ptr %t88, ptr %t68, i64 %t69)
  %t89 = getelementptr i8, ptr %t88, i64 %t69
  call void @olang_textcopy(ptr %t89, ptr %t72, i64 %t73)
  %t90 = getelementptr i8, ptr %t89, i64 %t73
  call void @olang_textcopy(ptr %t90, ptr %t75, i64 %t76)
  %t91 = getelementptr i8, ptr %t90, i64 %t76
  call void @olang_textcopy(ptr %t91, ptr %t79, i64 %t80)
  %t92 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t82, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = extractvalue { i64, ptr } %t93, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  %t101 = load ptr, ptr %l11, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t101, { i64, ptr } %t100)
  br label %bb9
bb9:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"std/time:Date", ptr %t103, i32 0, i32 6
  %t106 = load i64, ptr %t105, !tbaa !24
  %t108 = icmp ne i64 %t106, 0
  br i1 %t108, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 46)
  br label %bb12
bb11:
  br label %bb30
bb12:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"std/time:Date", ptr %t111, i32 0, i32 6
  %t114 = load i64, ptr %t113, !tbaa !24
  %t116 = call { i64, ptr } @std_2fprelude_2ftext_2eI64_2ePadStart(ptr %s2, i64 %t114, i64 9, i8 48)
  store { i64, ptr } %t116, ptr %l35
  br label %bb13
bb13:
  %t117 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t117, ptr %l2, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t118, 0
  store i64 %t120, ptr %l3, !tbaa !24
  br label %bb14
bb14:
  %t122 = load i64, ptr %l3, !tbaa !24
  %t124 = icmp sgt i64 %t122, 0
  br i1 %t124, label %bb15, label %bb16
bb15:
  %t126 = load i64, ptr %l3, !tbaa !24
  %t128 = sub i64 %t126, 1
  %t130 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i8, ptr %t131, i64 %t128
  %t133 = load i8, ptr %t132, !tbaa !32
  %t135 = icmp eq i8 %t133, 48
  store i1 %t135, ptr %l40, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb17
bb17:
  %t137 = load i1, ptr %l40, !tbaa !21
  %t138 = xor i1 %t137, true
  br i1 %t138, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t140 = load i64, ptr %l3, !tbaa !24
  %t142 = sub i64 %t140, 1
  store i64 %t142, ptr %l3, !tbaa !24
  br label %bb21
bb21:
  br label %bb14
bb22:
  store ptr %l1, ptr %l48, !tbaa !29
  %t144 = load i64, ptr %l3, !tbaa !24
  store i64 %t144, ptr %l49, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  store i64 %t146, ptr %l50, !tbaa !24
  %t147 = icmp sge i64 0, 0
  br i1 %t147, label %bb23, label %bb24
bb23:
  %t149 = load i64, ptr %l49, !tbaa !24
  %t150 = icmp sle i64 0, %t149
  br i1 %t150, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_f63687bbaea10838_93db7057d6025df4)
  unreachable
bb25:
  %t152 = load i64, ptr %l49, !tbaa !24
  %t153 = load i64, ptr %l50, !tbaa !24
  %t154 = icmp sle i64 %t152, %t153
  br i1 %t154, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_f63687bbaea10838_93db7057d6025df4)
  unreachable
bb27:
  %t156 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = load i64, ptr %l49, !tbaa !24
  %t159 = getelementptr i8, ptr %t157, i64 0
  %t160 = sub i64 %t158, 0
  %t161 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t159, 1
  %t163 = load ptr, ptr %l48, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t163, { i64, ptr } %t162)
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_f63687bbaea10838_93db7057d6025df4)
  unreachable
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb30
bb30:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"std/time:Date", ptr %t165, i32 0, i32 7
  %t168 = load i64, ptr %t167, !tbaa !24
  %t170 = icmp eq i64 %t168, 0
  br i1 %t170, label %bb31, label %bb32
bb31:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 90)
  br label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s5
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"std/time:Date", ptr %t173, i32 0, i32 7
  %t176 = load i64, ptr %t175, !tbaa !24
  %t178 = icmp sgt i64 %t176, 0
  br i1 %t178, label %bb34, label %bb35
bb33:
  br label %bb44
bb34:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"std/time:Date", ptr %t180, i32 0, i32 7
  %t183 = load i64, ptr %t182, !tbaa !24
  store i64 %t183, ptr %l62, !tbaa !24
  br label %bb36
bb35:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"std/time:Date", ptr %t185, i32 0, i32 7
  %t188 = load i64, ptr %t187, !tbaa !24
  %t190 = sub i64 0, %t188
  store i64 %t190, ptr %l62, !tbaa !24
  br label %bb36
bb36:
  %t192 = load i64, ptr %l62, !tbaa !24
  store i64 %t192, ptr %l4, !tbaa !24
  store ptr %l1, ptr %l68, !tbaa !29
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"std/time:Date", ptr %t193, i32 0, i32 7
  %t196 = load i64, ptr %t195, !tbaa !24
  %t198 = icmp sgt i64 %t196, 0
  br i1 %t198, label %bb37, label %bb38
bb37:
  store i8 43, ptr %l72, !tbaa !22
  br label %bb39
bb38:
  store i8 45, ptr %l72, !tbaa !22
  br label %bb39
bb39:
  %t200 = load ptr, ptr %l68, !tbaa !29
  %t201 = load i8, ptr %l72, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t200, i8 %t201)
  br label %bb40
bb40:
  store ptr %l1, ptr %l73, !tbaa !29
  %t202 = load i64, ptr %l4, !tbaa !24
  %t204 = sdiv i64 %t202, 60
  %t206 = call { i64, ptr } @std_2ftime_2etwoDigits(ptr %s5, i64 %t204)
  store { i64, ptr } %t206, ptr %l76
  br label %bb41
bb41:
  %t207 = load i64, ptr %l4, !tbaa !24
  %t209 = srem i64 %t207, 60
  %t211 = call { i64, ptr } @std_2ftime_2etwoDigits(ptr %s5, i64 %t209)
  store { i64, ptr } %t211, ptr %l79
  br label %bb42
bb42:
  %t212 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 1
  %t214 = extractvalue { i64, ptr } %t212, 0
  %t215 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t216 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t217 = add i64 %t214, %t216
  %t218 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t218, 1
  %t220 = extractvalue { i64, ptr } %t218, 0
  %t221 = add i64 %t217, %t220
  %t222 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t221)
  call void @olang_textcopy(ptr %t222, ptr %t213, i64 %t214)
  %t223 = getelementptr i8, ptr %t222, i64 %t214
  call void @olang_textcopy(ptr %t223, ptr %t215, i64 %t216)
  %t224 = getelementptr i8, ptr %t223, i64 %t216
  call void @olang_textcopy(ptr %t224, ptr %t219, i64 %t220)
  %t225 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t222, 1
  %t228 = extractvalue { i64, ptr } %t226, 0
  %t229 = extractvalue { i64, ptr } %t226, 1
  %t230 = mul i64 %t228, 1
  %t231 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t230)
  call void @llvm.memcpy.p0.p0.i64(ptr %t231, ptr %t229, i64 %t230, i1 false)
  %t232 = insertvalue { i64, ptr } undef, i64 %t228, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr %t231, 1
  %t234 = load ptr, ptr %l73, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t234, { i64, ptr } %t233)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s5)
  br label %bb44
bb44:
  %t237 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t237, ptr %l83
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s0)
  %t238 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t238, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @std_2ftime_2estd_2ftime_3aDate_2eWall(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/time:Date", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/time:Date", ptr %t5, i32 0, i32 1
  %t8 = load i64, ptr %t7, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/time:Date", ptr %t9, i32 0, i32 2
  %t12 = load i64, ptr %t11, !tbaa !24
  %t16 = call i64 @std_2ftime_2edaysFromCivil(i64 %t4, i64 %t8, i64 %t12)
  store i64 %t16, ptr %l9
  br label %bb1
bb1:
  %t17 = load i64, ptr %l9, !tbaa !24
  %t20 = mul i64 %t17, 86400
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/time:Date", ptr %t21, i32 0, i32 3
  %t24 = load i64, ptr %t23, !tbaa !24
  %t26 = mul i64 %t24, 3600
  %t29 = add i64 %t20, %t26
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"std/time:Date", ptr %t30, i32 0, i32 4
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = mul i64 %t33, 60
  %t38 = add i64 %t29, %t35
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"std/time:Date", ptr %t39, i32 0, i32 5
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = add i64 %t38, %t42
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"std/time:Date", ptr %t46, i32 0, i32 7
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = mul i64 %t49, 60
  %t54 = sub i64 %t45, %t51
  %t58 = mul i64 %t54, 1000000000
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"std/time:Date", ptr %t59, i32 0, i32 6
  %t62 = load i64, ptr %t61, !tbaa !24
  %t65 = add i64 %t58, %t62
  store i64 %t65, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2estd_2ftime_3aDate_2eWeekday(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/time:Date", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/time:Date", ptr %t5, i32 0, i32 1
  %t8 = load i64, ptr %t7, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/time:Date", ptr %t9, i32 0, i32 2
  %t12 = load i64, ptr %t11, !tbaa !24
  %t16 = call i64 @std_2ftime_2edaysFromCivil(i64 %t4, i64 %t8, i64 %t12)
  store i64 %t16, ptr %l8
  br label %bb1
bb1:
  %t17 = load i64, ptr %l8, !tbaa !24
  %t18 = add i64 %t17, 4
  %t20 = srem i64 %t18, 7
  store i64 %t20, ptr %l1, !tbaa !24
  %t22 = load i64, ptr %l1, !tbaa !24
  %t24 = icmp slt i64 %t22, 0
  br i1 %t24, label %bb2, label %bb3
bb2:
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = add i64 %t26, 7
  store i64 %t28, ptr %l13, !tbaa !24
  br label %bb4
bb3:
  %t30 = load i64, ptr %l1, !tbaa !24
  store i64 %t30, ptr %l13, !tbaa !24
  br label %bb4
bb4:
  %t32 = load i64, ptr %l13, !tbaa !24
  store i64 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2estd_2ftime_3aDate_2eYearDay(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca i64
  %l10 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/time:Date", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/time:Date", ptr %t5, i32 0, i32 1
  %t8 = load i64, ptr %t7, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/time:Date", ptr %t9, i32 0, i32 2
  %t12 = load i64, ptr %t11, !tbaa !24
  %t16 = call i64 @std_2ftime_2edaysFromCivil(i64 %t4, i64 %t8, i64 %t12)
  store i64 %t16, ptr %l7
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/time:Date", ptr %t17, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = call i64 @std_2ftime_2edaysFromCivil(i64 %t20, i64 1, i64 1)
  store i64 %t22, ptr %l10
  br label %bb2
bb2:
  %t23 = load i64, ptr %l7, !tbaa !24
  %t24 = load i64, ptr %l10, !tbaa !24
  %t25 = sub i64 %t23, %t24
  %t27 = add i64 %t25, 1
  store i64 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2estd_2ftime_3aDuration_2eMicros(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t4 = sdiv i64 %a0, 1000
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2estd_2ftime_3aDuration_2eMillis(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t4 = sdiv i64 %a0, 1000000
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2ftime_2estd_2ftime_3aDuration_2eNanos(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local double @std_2ftime_2estd_2ftime_3aDuration_2eSeconds(i64 %a0) #0 {
entry:
  %rv = alloca double
  br label %start
start:
  br label %bb0
bb0:
  %t4 = sitofp i64 %a0 to double
  %t6 = fdiv double %t4, 0x41cdcd6500000000
  store double %t6, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local { i64, ptr } @std_2ftime_2estd_2ftime_3aDuration_2eStr(ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l20 = alloca i64
  %l33 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 %a0, ptr %l1, !tbaa !24
  %t4 = load i64, ptr %l1, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t8, ptr %l12, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l13, !tbaa !24
  %t11 = load i64, ptr %l13, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l13, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t22, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t23 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t24 = load i64, ptr %l1, !tbaa !24
  %t26 = icmp slt i64 %t24, 0
  br i1 %t26, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l17, !tbaa !27
  br label %bb6
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l17, !tbaa !27
  br label %bb6
bb6:
  %t28 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t28, ptr %l2, !tbaa !27
  %t29 = load i64, ptr %l1, !tbaa !24
  %t31 = icmp slt i64 %t29, 0
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = sub i64 0, %t33
  store i64 %t35, ptr %l20, !tbaa !65
  br label %bb9
bb8:
  %t38 = load i64, ptr %l1, !tbaa !24
  store i64 %t38, ptr %l20, !tbaa !65
  br label %bb9
bb9:
  %t41 = load i64, ptr %l20, !tbaa !65
  store i64 %t41, ptr %l3, !tbaa !65
  %t42 = load i64, ptr %l3, !tbaa !65
  %t44 = icmp ult i64 %t42, 1000
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t46 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t47 = load i64, ptr %l3, !tbaa !65
  %t49 = extractvalue { i64, ptr } %t46, 1
  %t50 = extractvalue { i64, ptr } %t46, 0
  %t52 = call i64 @__olang_fmt_u64(ptr null, i64 %t47)
  %t53 = add i64 %t50, %t52
  %t54 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t56 = add i64 %t53, %t55
  %t57 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t56)
  call void @olang_textcopy(ptr %t57, ptr %t49, i64 %t50)
  %t58 = getelementptr i8, ptr %t57, i64 %t50
  %t59 = call i64 @__olang_fmt_u64(ptr %t58, i64 %t47)
  %t60 = getelementptr i8, ptr %t58, i64 %t52
  call void @olang_textcopy(ptr %t60, ptr %t54, i64 %t55)
  %t61 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t57, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t62, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t64 = load i64, ptr %l3, !tbaa !65
  %t66 = icmp ult i64 %t64, 1000000
  br i1 %t66, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s4
  %t68 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t68, ptr %l33, !tbaa !27
  %t69 = load i64, ptr %l3, !tbaa !65
  %t71 = call { i64, ptr } @std_2ftime_2efraction(ptr %s4, i64 %t69, i64 1000)
  store { i64, ptr } %t71, ptr %l35
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t72 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 1
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t78 = add i64 %t74, %t77
  %t79 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t81 = add i64 %t78, %t80
  %t82 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t81)
  call void @olang_textcopy(ptr %t82, ptr %t73, i64 %t74)
  %t83 = getelementptr i8, ptr %t82, i64 %t74
  call void @olang_textcopy(ptr %t83, ptr %t76, i64 %t77)
  %t84 = getelementptr i8, ptr %t83, i64 %t77
  call void @olang_textcopy(ptr %t84, ptr %t79, i64 %t80)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t82, 1
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb16:
  %t88 = load i64, ptr %l3, !tbaa !65
  %t90 = icmp ult i64 %t88, 1000000000
  br i1 %t90, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s6
  %t92 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t92, ptr %l39, !tbaa !27
  %t93 = load i64, ptr %l3, !tbaa !65
  %t95 = call { i64, ptr } @std_2ftime_2efraction(ptr %s6, i64 %t93, i64 1000000)
  store { i64, ptr } %t95, ptr %l41
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t96 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t99 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 1
  %t101 = extractvalue { i64, ptr } %t99, 0
  %t102 = add i64 %t98, %t101
  %t103 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t105 = add i64 %t102, %t104
  %t106 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t105)
  call void @olang_textcopy(ptr %t106, ptr %t97, i64 %t98)
  %t107 = getelementptr i8, ptr %t106, i64 %t98
  call void @olang_textcopy(ptr %t107, ptr %t100, i64 %t101)
  %t108 = getelementptr i8, ptr %t107, i64 %t101
  call void @olang_textcopy(ptr %t108, ptr %t103, i64 %t104)
  %t109 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t106, 1
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t110, ptr %rv
  br label %ret
bb20:
  %t112 = load i64, ptr %l3, !tbaa !65
  %t114 = udiv i64 %t112, 3600000000000
  store i64 %t114, ptr %l4, !tbaa !65
  %t116 = load i64, ptr %l3, !tbaa !65
  %t118 = udiv i64 %t116, 60000000000
  %t120 = urem i64 %t118, 60
  store i64 %t120, ptr %l5, !tbaa !65
  %t122 = load i64, ptr %l3, !tbaa !65
  %t124 = urem i64 %t122, 60000000000
  %t126 = call { i64, ptr } @std_2ftime_2efraction(ptr %s0, i64 %t124, i64 1000000000)
  store { i64, ptr } %t126, ptr %l50
  br label %bb21
bb21:
  %t127 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t127, ptr %l6, !tbaa !27
  %t128 = load i64, ptr %l4, !tbaa !65
  %t130 = icmp ugt i64 %t128, 0
  br i1 %t130, label %bb22, label %bb23
bb22:
  %t132 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t133 = load i64, ptr %l4, !tbaa !65
  %t134 = load i64, ptr %l5, !tbaa !65
  %t135 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t132, 1
  %t138 = extractvalue { i64, ptr } %t132, 0
  %t140 = call i64 @__olang_fmt_u64(ptr null, i64 %t133)
  %t141 = add i64 %t138, %t140
  %t142 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t146 = call i64 @__olang_fmt_u64(ptr null, i64 %t134)
  %t147 = add i64 %t144, %t146
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t150 = add i64 %t147, %t149
  %t152 = extractvalue { i64, ptr } %t135, 1
  %t153 = extractvalue { i64, ptr } %t135, 0
  %t154 = add i64 %t150, %t153
  %t155 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t156 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t157 = add i64 %t154, %t156
  %t158 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t157)
  call void @olang_textcopy(ptr %t158, ptr %t137, i64 %t138)
  %t159 = getelementptr i8, ptr %t158, i64 %t138
  %t160 = call i64 @__olang_fmt_u64(ptr %t159, i64 %t133)
  %t161 = getelementptr i8, ptr %t159, i64 %t140
  call void @olang_textcopy(ptr %t161, ptr %t142, i64 %t143)
  %t162 = getelementptr i8, ptr %t161, i64 %t143
  %t163 = call i64 @__olang_fmt_u64(ptr %t162, i64 %t134)
  %t164 = getelementptr i8, ptr %t162, i64 %t146
  call void @olang_textcopy(ptr %t164, ptr %t148, i64 %t149)
  %t165 = getelementptr i8, ptr %t164, i64 %t149
  call void @olang_textcopy(ptr %t165, ptr %t152, i64 %t153)
  %t166 = getelementptr i8, ptr %t165, i64 %t153
  call void @olang_textcopy(ptr %t166, ptr %t155, i64 %t156)
  %t167 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t158, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t168, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t170 = load i64, ptr %l5, !tbaa !65
  %t172 = icmp ugt i64 %t170, 0
  br i1 %t172, label %bb25, label %bb26
bb25:
  %t174 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t175 = load i64, ptr %l5, !tbaa !65
  %t176 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t174, 1
  %t179 = extractvalue { i64, ptr } %t174, 0
  %t181 = call i64 @__olang_fmt_u64(ptr null, i64 %t175)
  %t182 = add i64 %t179, %t181
  %t183 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t187 = extractvalue { i64, ptr } %t176, 1
  %t188 = extractvalue { i64, ptr } %t176, 0
  %t189 = add i64 %t185, %t188
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t193 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t192)
  call void @olang_textcopy(ptr %t193, ptr %t178, i64 %t179)
  %t194 = getelementptr i8, ptr %t193, i64 %t179
  %t195 = call i64 @__olang_fmt_u64(ptr %t194, i64 %t175)
  %t196 = getelementptr i8, ptr %t194, i64 %t181
  call void @olang_textcopy(ptr %t196, ptr %t183, i64 %t184)
  %t197 = getelementptr i8, ptr %t196, i64 %t184
  call void @olang_textcopy(ptr %t197, ptr %t187, i64 %t188)
  %t198 = getelementptr i8, ptr %t197, i64 %t188
  call void @olang_textcopy(ptr %t198, ptr %t190, i64 %t191)
  %t199 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t193, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t200, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t202 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t203 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t202, 1
  %t206 = extractvalue { i64, ptr } %t202, 0
  %t208 = extractvalue { i64, ptr } %t203, 1
  %t209 = extractvalue { i64, ptr } %t203, 0
  %t210 = add i64 %t206, %t209
  %t211 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t212 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t213 = add i64 %t210, %t212
  %t214 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t213)
  call void @olang_textcopy(ptr %t214, ptr %t205, i64 %t206)
  %t215 = getelementptr i8, ptr %t214, i64 %t206
  call void @olang_textcopy(ptr %t215, ptr %t208, i64 %t209)
  %t216 = getelementptr i8, ptr %t215, i64 %t209
  call void @olang_textcopy(ptr %t216, ptr %t211, i64 %t212)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t214, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t218, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @std_2ftime_2estd_2ftime_3aTimer_2eDue(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/time:Timer", ptr %a0, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, i64 } @std_2ftime_2estd_2ftime_3aTimer_2eTryNow(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %rv = alloca { i32, i64 }
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i64 @std_2ftime_2eNow()
  store i64 %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load i64, ptr %l2, !tbaa !24
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t6 = getelementptr %"std/time:Timer", ptr %a0, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  %t10 = icmp slt i64 %t3, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t13 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = insertvalue { i32, i64 } zeroinitializer, i64 %t14, 1
  store { i32, i64 } %t16, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i64, ptr } @std_2ftime_2etwoDigits(ptr %v0, i64 %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i64, ptr } @std_2fprelude_2ftext_2eI64_2ePadStart(ptr %v0, i64 %a0, i64 2, i8 48)
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

define dso_local { i64, ptr } @std_2ftime_2ewhyNot(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i32, { i64, [1 x i64] } }
  %l2 = alloca %"std/time:Date"
  %l4 = alloca %"std/time:Date"
  %l5 = alloca i32
  %l7 = alloca i1
  %l8 = alloca { i32, { i64, [1 x i64] } }
  %l9 = alloca { i32, { i64, [1 x i64] } }
  %l10 = alloca i32
  %l14 = alloca { i32, { i64, [1 x i64] } }
  %l17 = alloca { i32, { i64, [1 x i64] } }
  %l18 = alloca i32
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i32, %"std/time:Date" } @std_2ftime_2eDate_2eParse(ptr %v0, { i64, ptr } %a0)
  %t4 = extractvalue { i32, %"std/time:Date" } %t3, 1
  %t5 = extractvalue { i32, %"std/time:Date" } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store %"std/time:Date" %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load %"std/time:Date", ptr %l4
  store %"std/time:Date" %t8, ptr %l2
  br label %bb13
bb2:
  %t9 = load i32, ptr %l5, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l7, !tbaa !21
  store { i32, { i64, [1 x i64] } } zeroinitializer, ptr %l1
  %t13 = load i32, ptr %l5, !tbaa !23
  %t14 = lshr i32 %t13, 16
  %t15 = and i32 %t13, 65535
  %t16 = icmp eq i32 %t14, 1
  %t17 = select i1 %t16, i32 1, i32 0
  %t18 = icmp eq i32 %t13, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t15
  %t21 = select i1 %t18, i32 0, i32 %t20
  %t22 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l1, i32 0, i32 0
  store i32 %t21, ptr %t22, !tbaa !23
  br label %bb3
bb3:
  %t23 = load { i32, { i64, [1 x i64] } }, ptr %l1
  store { i32, { i64, [1 x i64] } } %t23, ptr %l8
  store { i32, { i64, [1 x i64] } } zeroinitializer, ptr %l9
  %t24 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l8, i32 0, i32 0
  %t25 = load i32, ptr %t24, !tbaa !23
  store i32 %t25, ptr %l10, !tbaa !23
  %t26 = load i32, ptr %l10, !tbaa !23
  %t27 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l9, i32 0, i32 0
  store i32 %t26, ptr %t27, !tbaa !23
  %t28 = load i32, ptr %l10, !tbaa !23
  %t29 = ashr i32 %t28, 16
  %t31 = icmp eq i32 %t29, 1
  br i1 %t31, label %bb4, label %bb5
bb4:
  %t33 = call ptr @__olang_errpay_top_get()
  %t35 = load { i64, [1 x i64] }, ptr %t33
  %t36 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l9, i32 0, i32 1
  store { i64, [1 x i64] } %t35, ptr %t36
  br label %bb5
bb5:
  %t37 = load { i32, { i64, [1 x i64] } }, ptr %l9
  store { i32, { i64, [1 x i64] } } %t37, ptr %l1
  %t38 = load { i32, { i64, [1 x i64] } }, ptr %l1
  store { i32, { i64, [1 x i64] } } %t38, ptr %l14
  %t39 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l14, i32 0, i32 0
  %t40 = load i32, ptr %t39, !tbaa !23
  %t41 = ashr i32 %t40, 16
  %t43 = icmp eq i32 %t41, 1
  br i1 %t43, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  %t45 = load { i32, { i64, [1 x i64] } }, ptr %l1
  store { i32, { i64, [1 x i64] } } %t45, ptr %l17
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  %t46 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l17, i32 0, i32 0
  %t47 = load i32, ptr %t46, !tbaa !23
  store i32 %t47, ptr %l18, !tbaa !23
  %t48 = load i32, ptr %l18, !tbaa !23
  %t49 = icmp eq i32 %t48, 0
  br i1 %t49, label %bb9, label %bb10
bb8:
  %t51 = load ptr, ptr %s2
  %t52 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t53 = load i64, ptr %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t53)
  call void @olang_textcopy(ptr %t54, ptr %t51, i64 %t53)
  %t55 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l22, !tbaa !27
  %t57 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t58 = load ptr, ptr %t57
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %sbgrew.60, label %sbdone.61
sbgrew.60:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.61
sbdone.61:
  %t62 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t62, ptr %rv
  br label %ret
bb9:
  %t63 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t63, i64 %t64)
  br label %bb8
bb10:
  %t65 = load i32, ptr %l18, !tbaa !23
  %t66 = icmp eq i32 %t65, 65536
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t68 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t68, i64 %t69)
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t70, i64 %t71)
  %t72 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l17, i32 0, i32 1
  %t73 = getelementptr { i64, [1 x i64] }, ptr %t72, i32 0, i32 1
  %t74 = getelementptr { i64 }, ptr %t73, i32 0, i32 0
  %t75 = load i64, ptr %t74
  %t77 = call ptr @__olang_sb_room(ptr %s2, i64 24)
  %t78 = call i64 @__olang_fmt_i64(ptr %t77, i64 %t75)
  call void @__olang_sb_add(ptr %s2, i64 %t78)
  %t79 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t79, i64 %t80)
  br label %bb8
bb12:
  %t81 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t81, i64 %t82)
  br label %bb8
bb13:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t83, ptr %l24, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  store i64 %t85, ptr %l25, !tbaa !24
  %t86 = load i64, ptr %l25, !tbaa !24
  %t87 = mul i64 %t86, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l26, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = load i64, ptr %l25, !tbaa !24
  %t96 = mul i64 %t95, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t92, ptr %t94, i64 %t96, i1 false)
  %t97 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t97, ptr %l24, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t98, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/time:Date" @std_2ftime_3aDate_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7) #0 {
entry:
  %rv = alloca %"std/time:Date"
  br label %start
start:
  br label %bb0
bb0:
  %t18 = insertvalue %"std/time:Date" undef, i64 %a0, 0
  %t20 = insertvalue %"std/time:Date" %t18, i64 %a1, 1
  %t22 = insertvalue %"std/time:Date" %t20, i64 %a2, 2
  %t24 = insertvalue %"std/time:Date" %t22, i64 %a3, 3
  %t26 = insertvalue %"std/time:Date" %t24, i64 %a4, 4
  %t28 = insertvalue %"std/time:Date" %t26, i64 %a5, 5
  %t30 = insertvalue %"std/time:Date" %t28, i64 %a6, 6
  %t32 = insertvalue %"std/time:Date" %t30, i64 %a7, 7
  store %"std/time:Date" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"std/time:Date", ptr %rv
  ret %"std/time:Date" %rr
}

define dso_local %"std/time:Timer" @std_2ftime_3aTimer_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %rv = alloca %"std/time:Timer"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/time:Timer" undef, i64 %a0, 0
  store %"std/time:Timer" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"std/time:Timer", ptr %rv
  ret %"std/time:Timer" %rr
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
declare ptr @__olang_errpay_push() cold
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
declare void @__olang_errpay_set(ptr) cold
declare i32 @nanosleep(ptr, ptr)
declare i64 @__olang_fmt_u64(ptr, i64)
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
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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
declare i32 @clock_gettime(i32, ptr)
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"T" }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"0s" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ns" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"us" }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ms" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"h" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"m" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"m" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
declare ptr @__olang_errpay_top_get()
declare void @__olang_errpay_pop()
declare void @__olang_sb_done(ptr)
@.d17 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d18 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"time.Error.Syntax" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
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
declare i64 @__olang_fmt_i64(ptr, i64)
declare void @__olang_sb_add(ptr, i64)
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d21 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"time.Error.Range" }>, align 8
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ok" }>, align 8
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %v0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eI64_2ePadStart(ptr %v0, i64 %a0, i64 %a1, i8 %a2)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_f63687bbaea10838_93db7057d6025df4 = external constant [0 x i8]

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
