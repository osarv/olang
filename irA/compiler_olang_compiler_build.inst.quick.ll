source_filename = "compiler_olang_compiler_build.inst.quick.ll"
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
%"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19" = type { i64, { i64, ptr }, i64, i64, i64, i1, i64, i64, i1, i64, %"<pthread.h>:pthread_mutex_t", %"<pthread.h>:pthread_cond_t", %"<pthread.h>:pthread_cond_t" }
%"<pthread.h>:pthread_mutex_t" = type { [5 x i64] }
%"<pthread.h>:pthread_cond_t" = type { [6 x i64] }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/build:Unit" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
define dso_local void @std_2fchan_2eClose_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i32
  %l13 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t1, i32 0, i32 10
  %t5 = call i32 @pthread_mutex_lock(ptr %t3)
  store i32 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t6, i32 0, i32 8
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t9, i32 0, i32 11
  %t13 = call i32 @pthread_cond_broadcast(ptr %t11)
  store i32 %t13, ptr %l7
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t14, i32 0, i32 12
  %t18 = call i32 @pthread_cond_broadcast(ptr %t16)
  store i32 %t18, ptr %l10
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t19, i32 0, i32 10
  %t23 = call i32 @pthread_mutex_unlock(ptr %t21)
  store i32 %t23, ptr %l13
  br label %bb4
bb4:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fchan_2eInit_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t1, i32 0, i32 10
  %t5 = call i32 @pthread_mutex_init(ptr %t3, ptr null)
  store i32 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t6, i32 0, i32 11
  %t10 = call i32 @pthread_cond_init(ptr %t8, ptr null)
  store i32 %t10, ptr %l6
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t11, i32 0, i32 12
  %t15 = call i32 @pthread_cond_init(ptr %t13, ptr null)
  store i32 %t15, ptr %l9
  br label %bb3
bb3:
  br label %ret
ret:
  ret void
}

define dso_local { i32, i64 } @std_2fchan_2eRecv_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l11 = alloca i1
  %l20 = alloca i32
  %l21 = alloca ptr
  %l29 = alloca i32
  %l32 = alloca i64
  %l35 = alloca i32
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t1, i32 0, i32 10
  %t5 = call i32 @pthread_mutex_lock(ptr %t3)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l5, !tbaa !29
  %t8 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t7, i32 0, i32 9
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = add i64 %t9, 1
  %t13 = load ptr, ptr %l5, !tbaa !29
  %t14 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t13, i32 0, i32 9
  store i64 %t11, ptr %t14, !tbaa !24
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t15, i32 0, i32 4
  %t18 = load i64, ptr %t17, !tbaa !24
  %t20 = icmp eq i64 %t18, 0
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t22, i32 0, i32 8
  %t25 = load i1, ptr %t24, !tbaa !21
  %t27 = xor i1 %t25, true
  store i1 %t27, ptr %l11, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l11, !tbaa !21
  %t30 = xor i1 %t29, true
  br i1 %t30, label %bb6, label %bb7
bb6:
  br label %bb11
bb7:
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t32, i32 0, i32 11
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t35, i32 0, i32 10
  %t40 = call i32 @pthread_cond_wait(ptr %t34, ptr %t37)
  store i32 %t40, ptr %l20
  br label %bb9
bb9:
  br label %bb10
bb10:
  br label %bb2
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l21, !tbaa !29
  %t42 = load ptr, ptr %l21, !tbaa !29
  %t43 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t42, i32 0, i32 9
  %t44 = load i64, ptr %t43, !tbaa !24
  %t46 = sub i64 %t44, 1
  %t48 = load ptr, ptr %l21, !tbaa !29
  %t49 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t48, i32 0, i32 9
  store i64 %t46, ptr %t49, !tbaa !24
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t50, i32 0, i32 4
  %t53 = load i64, ptr %t52, !tbaa !24
  %t55 = icmp eq i64 %t53, 0
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t57, i32 0, i32 10
  %t61 = call i32 @pthread_mutex_unlock(ptr %t59)
  store i32 %t61, ptr %l29
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t63 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t63, ptr %rv
  br label %ret
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = call i64 @std_2fchan_2eoldest_3cI64_3e(ptr %v0, ptr %t64)
  store i64 %t66, ptr %l32
  br label %bb16
bb16:
  %t67 = load i64, ptr %l32, !tbaa !24
  store i64 %t67, ptr %l1, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t68, i32 0, i32 10
  %t72 = call i32 @pthread_mutex_unlock(ptr %t70)
  store i32 %t72, ptr %l35
  br label %bb17
bb17:
  %t73 = load i64, ptr %l1, !tbaa !24
  %t75 = insertvalue { i32, i64 } zeroinitializer, i64 %t73, 1
  store { i32, i64 } %t75, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i32 @std_2fchan_2eSend_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i32
  %l11 = alloca i1
  %l20 = alloca i32
  %l22 = alloca i32
  %l26 = alloca i64
  %l29 = alloca i1
  %l34 = alloca i1
  %l43 = alloca i32
  %l46 = alloca i1
  %l53 = alloca i32
  %l57 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t1, i32 0, i32 10
  %t5 = call i32 @pthread_mutex_lock(ptr %t3)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  br label %bb2
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t6, i32 0, i32 4
  %t9 = load i64, ptr %t8, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t10, i32 0, i32 0
  %t13 = load i64, ptr %t12, !tbaa !24
  %t16 = icmp eq i64 %t9, %t13
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t18, i32 0, i32 8
  %t21 = load i1, ptr %t20, !tbaa !21
  %t23 = xor i1 %t21, true
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l11, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb6, label %bb7
bb6:
  br label %bb11
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t28, i32 0, i32 12
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t31, i32 0, i32 10
  %t36 = call i32 @pthread_cond_wait(ptr %t30, ptr %t33)
  store i32 %t36, ptr %l20
  br label %bb9
bb9:
  br label %bb10
bb10:
  br label %bb2
bb11:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = call i32 @std_2fchan_2esendOpen_3cI64_3e(ptr %v0, ptr %t37)
  store i32 %t39, ptr %l22
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb13, label %ok.41, !prof !99
ok.41:
  br label %bb12
bb12:
  br label %bb14
bb13:
  %t42 = load i32, ptr %l22, !tbaa !23
  %t43 = lshr i32 %t42, 16
  %t44 = and i32 %t42, 65535
  %t45 = icmp eq i32 %t43, 1
  %t46 = select i1 %t45, i32 1, i32 0
  %t47 = icmp eq i32 %t42, 0
  %t48 = shl i32 %t46, 16
  %t49 = or i32 %t48, %t44
  %t50 = select i1 %t47, i32 0, i32 %t49
  store i32 %t50, ptr %rv
  br label %ret
bb14:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t56 = call i64 @std_2fchan_2eplace_3cI64_3e(ptr %v0, ptr %t52, i64 %a1)
  store i64 %t56, ptr %l26
  br label %bb15
bb15:
  %t57 = load i64, ptr %l26, !tbaa !24
  store i64 %t57, ptr %l2, !tbaa !24
  br label %bb16
bb16:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t58, i32 0, i32 5
  %t61 = load i1, ptr %t60, !tbaa !21
  br i1 %t61, label %bb17, label %bb18
bb17:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t63, i32 0, i32 7
  %t66 = load i64, ptr %t65, !tbaa !24
  %t67 = load i64, ptr %l2, !tbaa !24
  %t70 = icmp sle i64 %t66, %t67
  store i1 %t70, ptr %l29, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb19
bb19:
  %t72 = load i1, ptr %l29, !tbaa !21
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t73, i32 0, i32 8
  %t76 = load i1, ptr %t75, !tbaa !21
  %t78 = xor i1 %t76, true
  store i1 %t78, ptr %l34, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb22
bb22:
  %t80 = load i1, ptr %l34, !tbaa !21
  %t81 = xor i1 %t80, true
  br i1 %t81, label %bb23, label %bb24
bb23:
  br label %bb28
bb24:
  br label %bb25
bb25:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t83, i32 0, i32 12
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t86, i32 0, i32 10
  %t91 = call i32 @pthread_cond_wait(ptr %t85, ptr %t88)
  store i32 %t91, ptr %l43
  br label %bb26
bb26:
  br label %bb27
bb27:
  br label %bb16
bb28:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t92, i32 0, i32 5
  %t95 = load i1, ptr %t94, !tbaa !21
  br i1 %t95, label %bb29, label %bb30
bb29:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t97, i32 0, i32 7
  %t100 = load i64, ptr %t99, !tbaa !24
  %t101 = load i64, ptr %l2, !tbaa !24
  %t104 = icmp sle i64 %t100, %t101
  store i1 %t104, ptr %l46, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb31
bb31:
  %t106 = load i1, ptr %l46, !tbaa !21
  br i1 %t106, label %bb32, label %bb33
bb32:
  %t107 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fchan_2ewithdraw_3cI64_3e(ptr %v0, ptr %t107)
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = call i32 @std_2fchan_2esendOpen_3cI64_3e(ptr %v0, ptr %t109)
  store i32 %t111, ptr %l53
  %t112 = icmp ne i32 %t111, 0
  br i1 %t112, label %bb36, label %ok.113, !prof !99
ok.113:
  br label %bb35
bb35:
  br label %bb37
bb36:
  %t114 = load i32, ptr %l53, !tbaa !23
  %t115 = lshr i32 %t114, 16
  %t116 = and i32 %t114, 65535
  %t117 = icmp eq i32 %t115, 1
  %t118 = select i1 %t117, i32 1, i32 0
  %t119 = icmp eq i32 %t114, 0
  %t120 = shl i32 %t118, 16
  %t121 = or i32 %t120, %t116
  %t122 = select i1 %t119, i32 0, i32 %t121
  store i32 %t122, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t124, i32 0, i32 10
  %t128 = call i32 @pthread_mutex_unlock(ptr %t126)
  store i32 %t128, ptr %l57
  br label %bb39
bb39:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @std_2fchan_2eoldest_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l24 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t5, i32 0, i32 2
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr i64, ptr %t11, i64 %t8
  %t13 = load i64, ptr %t12, !tbaa !34
  store i64 %t13, ptr %l1, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t16, i32 0, i32 2
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t22, i32 0, i32 0
  %t25 = load i64, ptr %t24, !tbaa !24
  %t28 = srem i64 %t21, %t25
  %t31 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t15, i32 0, i32 2
  store i64 %t28, ptr %t31, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t33, i32 0, i32 4
  %t36 = load i64, ptr %t35, !tbaa !24
  %t38 = sub i64 %t36, 1
  %t41 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t32, i32 0, i32 4
  store i64 %t38, ptr %t41, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t43, i32 0, i32 7
  %t46 = load i64, ptr %t45, !tbaa !24
  %t48 = add i64 %t46, 1
  %t51 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t42, i32 0, i32 7
  store i64 %t48, ptr %t51, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t52, i32 0, i32 12
  %t56 = call i32 @pthread_cond_broadcast(ptr %t54)
  store i32 %t56, ptr %l24
  br label %bb1
bb1:
  %t57 = load i64, ptr %l1, !tbaa !24
  store i64 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fchan_2eplace_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca { i64, ptr }
  %l35 = alloca i32
  %rv = alloca i64
  %t26 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l6, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t11, i32 0, i32 0
  %t14 = load i64, ptr %t13, !tbaa !24
  store i64 %t14, ptr %l8, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  store i64 %t15, ptr %l9, !tbaa !24
  %t16 = load i64, ptr %l8, !tbaa !24
  %t17 = icmp sge i64 %t16, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t19 = load i64, ptr %l8, !tbaa !24
  %t20 = icmp sle i64 %t19, 1152921504606846975
  br i1 %t20, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_8b1ab3db35ebb480_65ad3ecc104fb344)
  unreachable
bb5:
  %t22 = load i64, ptr %l8, !tbaa !24
  %t23 = mul i64 %t22, 8
  %t24 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t23)
  %t25 = load i64, ptr %l9, !tbaa !24
  store i64 0, ptr %t26
  br label %fill.27
fill.27:
  %t30 = load i64, ptr %t26
  %t31 = icmp slt i64 %t30, %t22
  br i1 %t31, label %fillb.28, label %filld.29
fillb.28:
  %t32 = getelementptr i64, ptr %t24, i64 %t30
  store i64 %t25, ptr %t32
  %t33 = add i64 %t30, 1
  store i64 %t33, ptr %t26
  br label %fill.27
filld.29:
  %t34 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t24, 1
  %t37 = load ptr, ptr %l6, !tbaa !29
  %t38 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t37, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t38, !tbaa !27
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_8b1ab3db35ebb480_65ad3ecc104fb344)
  unreachable
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t39, i32 0, i32 1
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l14, !tbaa !27
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t43, i32 0, i32 3
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = load i64, ptr %l1, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i64, ptr %t51, i64 %t46
  store i64 %t47, ptr %t52, !tbaa !34
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t54, i32 0, i32 3
  %t57 = load i64, ptr %t56, !tbaa !24
  %t59 = add i64 %t57, 1
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t60, i32 0, i32 0
  %t63 = load i64, ptr %t62, !tbaa !24
  %t66 = srem i64 %t59, %t63
  %t69 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t53, i32 0, i32 3
  store i64 %t66, ptr %t69, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t71, i32 0, i32 4
  %t74 = load i64, ptr %t73, !tbaa !24
  %t76 = add i64 %t74, 1
  %t79 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t70, i32 0, i32 4
  store i64 %t76, ptr %t79, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t81, i32 0, i32 6
  %t84 = load i64, ptr %t83, !tbaa !24
  %t86 = add i64 %t84, 1
  %t89 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t80, i32 0, i32 6
  store i64 %t86, ptr %t89, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t90, i32 0, i32 11
  %t94 = call i32 @pthread_cond_broadcast(ptr %t92)
  store i32 %t94, ptr %l35
  br label %bb8
bb8:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t95, i32 0, i32 6
  %t98 = load i64, ptr %t97, !tbaa !24
  %t100 = sub i64 %t98, 1
  store i64 %t100, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @std_2fchan_2esendOpen_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t1, i32 0, i32 8
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t6, i32 0, i32 10
  %t10 = call i32 @pthread_mutex_unlock(ptr %t8)
  store i32 %t10, ptr %l5
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i32 65536, ptr %rv
  br label %ret
bb4:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i64 } @std_2fchan_2estd_2fchan_3aChan_3cI64_3e_2eNext_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l6 = alloca i1
  %rv = alloca { i32, i64 }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i32, i64 } @std_2fchan_2eRecv_3cI64_3e(ptr %v0, ptr %a0)
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l4
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l3
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  store i64 %t8, ptr %l1, !tbaa !24
  br label %bb4
bb2:
  %t9 = load i32, ptr %l4, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t14 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t14, ptr %rv
  br label %ret
bb4:
  %t15 = load i64, ptr %l1, !tbaa !24
  %t16 = insertvalue { i32, i64 } zeroinitializer, i64 %t15, 1
  store { i32, i64 } %t16, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local void @std_2fchan_2ewithdraw_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t1, i32 0, i32 3
  store i64 0, ptr %t3, !tbaa !24
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t4, i32 0, i32 4
  store i64 0, ptr %t6, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t8, i32 0, i32 6
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = sub i64 %t11, 1
  %t16 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t7, i32 0, i32 6
  store i64 %t13, ptr %t16, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t17, i32 0, i32 12
  %t21 = call i32 @pthread_cond_broadcast(ptr %t19)
  store i32 %t21, ptr %l9
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fchan_3aChan_3cI64_3e_2ector(ptr %out, ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca %"<pthread.h>:pthread_mutex_t"
  %l12 = alloca %"<pthread.h>:pthread_cond_t"
  %l16 = alloca i64
  %l23 = alloca %"<pthread.h>:pthread_mutex_t"
  %l24 = alloca %"<pthread.h>:pthread_cond_t"
  %l25 = alloca %"<pthread.h>:pthread_cond_t"
  %l26 = alloca %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19"
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 1, ptr %l16, !tbaa !24
  br label %bb3
bb2:
  %t5 = load i64, ptr %l0, !tbaa !24
  store i64 %t5, ptr %l16, !tbaa !24
  br label %bb3
bb3:
  %t7 = load i64, ptr %l16, !tbaa !24
  store i64 %t7, ptr %l1, !tbaa !24
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = icmp sle i64 0, 1152921504606846975
  br i1 %t10, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_bfa795281152369c_da61951da24f83c0)
  unreachable
bb6:
  %t12 = mul i64 0, 8
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l0, !tbaa !24
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l6, !tbaa !21
  store i64 0, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  store i1 false, ptr %l9, !tbaa !21
  store i64 0, ptr %l10, !tbaa !24
  %t20 = call %"<pthread.h>:pthread_mutex_t" @olang_2emir_2eHelperKind_2eZero_2e_3cpthread_2eh_3e_3apthread__mutex__t()
  store %"<pthread.h>:pthread_mutex_t" %t20, ptr %l23
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_bfa795281152369c_da61951da24f83c0)
  unreachable
bb8:
  %t21 = load %"<pthread.h>:pthread_mutex_t", ptr %l23
  store %"<pthread.h>:pthread_mutex_t" %t21, ptr %l11
  %t22 = call %"<pthread.h>:pthread_cond_t" @olang_2emir_2eHelperKind_2eZero_2e_3cpthread_2eh_3e_3apthread__cond__t()
  store %"<pthread.h>:pthread_cond_t" %t22, ptr %l24
  br label %bb9
bb9:
  %t23 = load %"<pthread.h>:pthread_cond_t", ptr %l24
  store %"<pthread.h>:pthread_cond_t" %t23, ptr %l12
  %t24 = call %"<pthread.h>:pthread_cond_t" @olang_2emir_2eHelperKind_2eZero_2e_3cpthread_2eh_3e_3apthread__cond__t()
  store %"<pthread.h>:pthread_cond_t" %t24, ptr %l25
  br label %bb10
bb10:
  %t25 = load %"<pthread.h>:pthread_cond_t", ptr %l25
  %t26 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 0
  %t27 = load i64, ptr %l1, !tbaa !24
  store i64 %t27, ptr %t26, !tbaa !24
  %t28 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t29, ptr %t28, !tbaa !27
  %t30 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 2
  %t31 = load i64, ptr %l3, !tbaa !24
  store i64 %t31, ptr %t30, !tbaa !24
  %t32 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 3
  %t33 = load i64, ptr %l4, !tbaa !24
  store i64 %t33, ptr %t32, !tbaa !24
  %t34 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 4
  %t35 = load i64, ptr %l5, !tbaa !24
  store i64 %t35, ptr %t34, !tbaa !24
  %t36 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 5
  %t37 = load i1, ptr %l6, !tbaa !21
  store i1 %t37, ptr %t36, !tbaa !21
  %t38 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 6
  %t39 = load i64, ptr %l7, !tbaa !24
  store i64 %t39, ptr %t38, !tbaa !24
  %t40 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 7
  %t41 = load i64, ptr %l8, !tbaa !24
  store i64 %t41, ptr %t40, !tbaa !24
  %t42 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 8
  %t43 = load i1, ptr %l9, !tbaa !21
  store i1 %t43, ptr %t42, !tbaa !21
  %t44 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 9
  %t45 = load i64, ptr %l10, !tbaa !24
  store i64 %t45, ptr %t44, !tbaa !24
  %t46 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 10
  %t47 = load %"<pthread.h>:pthread_mutex_t", ptr %l11
  store %"<pthread.h>:pthread_mutex_t" %t47, ptr %t46
  %t48 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 11
  %t49 = load %"<pthread.h>:pthread_cond_t", ptr %l12
  store %"<pthread.h>:pthread_cond_t" %t49, ptr %t48
  %t50 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %l26, i32 0, i32 12
  store %"<pthread.h>:pthread_cond_t" %t25, ptr %t50
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l26, i64 224, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp slt i64 %t3, 2
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { ptr, ptr } %pg1, 0
  %t12 = extractvalue { ptr, ptr } %pg1, 1
  call void @std_2fprelude_2farray_2esortMergeBuffered_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t7, ptr %t11, ptr %t12)
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eCountOf_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = add i64 %t9, 1
  store i64 %t11, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t22 = sub i64 %t16, %t19
  %t25 = icmp sle i64 %t13, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb5, label %bb6
bb5:
  br label %bb21
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb8
bb8:
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t35 = icmp slt i64 %t29, %t32
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t37, ptr %l24, !tbaa !27
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = add i64 %t38, %t39
  %t44 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i8, ptr %t45, i64 %t42
  %t47 = load i8, ptr %t46, !tbaa !32
  %t48 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t48, ptr %l29, !tbaa !27
  %t49 = load i64, ptr %l4, !tbaa !24
  %t51 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i8, ptr %t52, i64 %t49
  %t54 = load i8, ptr %t53, !tbaa !32
  %t57 = icmp eq i8 %t47, %t54
  store i1 %t57, ptr %l23, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t59 = load i1, ptr %l23, !tbaa !21
  %t60 = xor i1 %t59, true
  br i1 %t60, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t62 = load i64, ptr %l4, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l4, !tbaa !24
  br label %bb15
bb15:
  br label %bb8
bb16:
  %t66 = load i64, ptr %l4, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t72 = icmp eq i64 %t66, %t69
  br i1 %t72, label %bb17, label %bb18
bb17:
  %t74 = load i64, ptr %l2, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l2, !tbaa !24
  %t78 = load i64, ptr %l3, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t84 = add i64 %t78, %t81
  store i64 %t84, ptr %l3, !tbaa !24
  br label %bb19
bb18:
  %t86 = load i64, ptr %l3, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l3, !tbaa !24
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb4
bb21:
  %t90 = load i64, ptr %l2, !tbaa !24
  store i64 %t90, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l24 = alloca i64
  %l36 = alloca i1
  %l43 = alloca i1
  %l44 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call i64 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eCountOf_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %t1, { i64, ptr } %t2)
  store i64 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i64, ptr %l14, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t19 = sub i64 %t13, %t16
  %t22 = mul i64 %t6, %t19
  %t25 = add i64 %t9, %t22
  store i64 %t25, ptr %l24, !tbaa !24
  %t26 = load i64, ptr %l24, !tbaa !24
  %t27 = icmp sge i64 %t26, 0
  br i1 %t27, label %bb2, label %bb3
bb2:
  %t29 = load i64, ptr %l24, !tbaa !24
  %t30 = mul i64 %t29, 1
  %t31 = call ptr @__olang_scope_alloc_zeroed(ptr %v3, i64 %t30)
  %t32 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store ptr %t34, ptr %lp4
  %t36 = load ptr, ptr %lp4
  store { i64, ptr } %t33, ptr %t36, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_9ac06bd1685c6a0e_7032635af5bb7b02)
  unreachable
bb4:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t43 = icmp sle i64 %t37, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb5, label %bb6
bb5:
  br label %bb36
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t53 = icmp slt i64 %t47, %t50
  br i1 %t53, label %bb9, label %bb10
bb9:
  %t55 = load i64, ptr %l6, !tbaa !24
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t60 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t65 = icmp slt i64 %t59, %t62
  store i1 %t65, ptr %l36, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb11
bb11:
  %t67 = load i1, ptr %l36, !tbaa !21
  br i1 %t67, label %bb12, label %bb13
bb12:
  %t68 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t68, ptr %l44, !tbaa !27
  %t69 = load i64, ptr %l6, !tbaa !24
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = add i64 %t69, %t70
  %t75 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i8, ptr %t76, i64 %t73
  %t78 = load i8, ptr %t77, !tbaa !32
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t79, ptr %l49, !tbaa !27
  %t80 = load i64, ptr %l7, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i8, ptr %t83, i64 %t80
  %t85 = load i8, ptr %t84, !tbaa !32
  %t88 = icmp eq i8 %t78, %t85
  store i1 %t88, ptr %l43, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb14
bb14:
  %t90 = load i1, ptr %l43, !tbaa !21
  %t91 = xor i1 %t90, true
  br i1 %t91, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l7, !tbaa !24
  br label %bb18
bb18:
  br label %bb8
bb19:
  %t97 = load i64, ptr %l7, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t103 = icmp eq i64 %t97, %t100
  br i1 %t103, label %bb20, label %bb21
bb20:
  %t105 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t105, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 0
  store i64 %t109, ptr %l10, !tbaa !24
  br label %bb22
bb21:
  br label %bb31
bb22:
  %t111 = load i64, ptr %l9, !tbaa !24
  %t112 = load i64, ptr %l10, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t119 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t119, ptr %l67, !tbaa !27
  %t120 = load i64, ptr %l9, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr i8, ptr %t123, i64 %t120
  %t125 = load i8, ptr %t124, !tbaa !32
  %t127 = load i64, ptr %l5, !tbaa !24
  %t130 = load ptr, ptr %lp4
  %t132 = getelementptr { i64, ptr }, ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr i8, ptr %t133, i64 %t127
  store i8 %t125, ptr %t134, !tbaa !32
  %t135 = load i64, ptr %l5, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l5, !tbaa !24
  br label %bb26
bb26:
  %t139 = load i64, ptr %l9, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l9, !tbaa !24
  br label %bb22
bb27:
  %t143 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t147 = icmp sgt i64 %t145, 0
  br i1 %t147, label %bb28, label %bb29
bb28:
  %t149 = load i64, ptr %l6, !tbaa !24
  %t150 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t150, 0
  %t155 = add i64 %t149, %t152
  store i64 %t155, ptr %l6, !tbaa !24
  br label %bb35
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t157 = load i64, ptr %l6, !tbaa !24
  %t158 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t163 = icmp eq i64 %t157, %t160
  br i1 %t163, label %bb32, label %bb33
bb32:
  br label %bb36
bb33:
  br label %bb34
bb34:
  %t165 = load i64, ptr %l5, !tbaa !24
  %t166 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t166, ptr %l88, !tbaa !27
  %t167 = load i64, ptr %l6, !tbaa !24
  %t169 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr i8, ptr %t170, i64 %t167
  %t172 = load i8, ptr %t171, !tbaa !32
  %t174 = load ptr, ptr %lp4
  %t176 = getelementptr { i64, ptr }, ptr %t174, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr i8, ptr %t177, i64 %t165
  store i8 %t172, ptr %t178, !tbaa !32
  %t179 = load i64, ptr %l5, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l5, !tbaa !24
  %t183 = load i64, ptr %l6, !tbaa !24
  %t185 = add i64 %t183, 1
  store i64 %t185, ptr %l6, !tbaa !24
  br label %bb35
bb35:
  br label %bb4
bb36:
  %t187 = load ptr, ptr %lp4
  %t188 = load { i64, ptr }, ptr %t187, !tbaa !27
  store { i64, ptr } %t188, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H2ab12f44ffbd18d099d1f5a69642975a(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %t7, i64 %a1
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !37
  store { i64, ptr } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l26 = alloca i64
  %l29 = alloca i64
  %l47 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t37 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t10 = icmp sle i64 0, 576460752303423487
  br i1 %t10, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_da59c7d8c597efe4_403a3926fe1e900)
  unreachable
bb5:
  %t12 = mul i64 0, 16
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_da59c7d8c597efe4_403a3926fe1e900)
  unreachable
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l15, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 0
  %t23 = getelementptr { i64, ptr }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %t24, i64 0
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !37
  store { i64, ptr } %t26, ptr %l17, !tbaa !27
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = icmp sle i64 %t30, 576460752303423487
  br i1 %t31, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_da8028beccd66af1_6af34333739c302d)
  unreachable
bb10:
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = mul i64 %t33, 16
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = load { i64, ptr }, ptr %l17, !tbaa !27
  store i64 0, ptr %t37
  br label %fill.38
fill.38:
  %t41 = load i64, ptr %t37
  %t42 = icmp slt i64 %t41, %t33
  br i1 %t42, label %fillb.39, label %filld.40
fillb.39:
  %t43 = getelementptr { i64, ptr }, ptr %t35, i64 %t41
  store { i64, ptr } %t36, ptr %t43
  %t44 = add i64 %t41, 1
  store i64 %t44, ptr %t37
  br label %fill.38
filld.40:
  %t45 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t35, 1
  store { i64, ptr } %t46, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 1
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l2, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  br i1 %t57, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_da8028beccd66af1_6af34333739c302d)
  unreachable
bb12:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb17
bb14:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t64 = load i64, ptr %l2, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t68 = load i64, ptr %l4, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = sub i64 %t71, 1
  %t74 = load i64, ptr %l4, !tbaa !24
  %t77 = sdiv i64 %t73, %t74
  store i64 %t77, ptr %l29, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l29, !tbaa !24
  store i64 %t79, ptr %l26, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l26, !tbaa !24
  store i64 %t80, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = load i64, ptr %l5, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t89 = load i64, ptr %l2, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  store i64 %t97, ptr %l7, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t99, ptr %l47, !tbaa !27
  %t100 = load i64, ptr %l7, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t101, i32 0, i32 0
  %t106 = getelementptr { i64, ptr }, ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %t107, i64 %t102
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !37
  %t112 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { i64, ptr }, ptr %t113, i64 %t100
  store { i64, ptr } %t109, ptr %t114, !tbaa !37
  br label %bb22
bb22:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb18
bb23:
  %t119 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t119, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hb1a5028c6bc2f3f498513e9ea3d798c5(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l51 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp sle i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp slt i64 %t17, 4
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = mul i64 %t26, 2
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l3, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t59, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l37, !tbaa !24
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sle i64 0, %t68
  br i1 %t69, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_5361441d00e64430_e1fd50fc102bc4d4)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_5361441d00e64430_e1fd50fc102bc4d4)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 16
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_5361441d00e64430_e1fd50fc102bc4d4)
  unreachable
bb19:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t97 = icmp slt i64 %t91, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t101, ptr %l51, !tbaa !27
  %t102 = load i64, ptr %l6, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %t105, i64 %t102
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !37
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr { i64, ptr }, ptr %t111, i64 %t109
  store { i64, ptr } %t107, ptr %t112, !tbaa !37
  %t113 = load i64, ptr %l45, !tbaa !24
  %t114 = add i64 %t113, 1
  store i64 %t114, ptr %l45, !tbaa !24
  br label %bb23
bb23:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb19
bb24:
  %t119 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t120 = load ptr, ptr %l33, !tbaa !29
  %t121 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t120, i32 0, i32 0
  store { i64, ptr } %t119, ptr %t121, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hb1a5028c6bc2f3f498513e9ea3d798c5(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %t35, i64 %t28
  store { i64, ptr } %a1, ptr %t36, !tbaa !37
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l16, !tbaa !29
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i64, ptr %t7, i64 %a1
  %t9 = load i64, ptr %t8, !tbaa !34
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eroom_3cI64_3e(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i64, ptr %t35, i64 %t28
  store i64 %a1, ptr %t36, !tbaa !34
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l16, !tbaa !29
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l47 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t37 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t10 = icmp sle i64 0, 1152921504606846975
  br i1 %t10, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_4d945ec18b41639d_846c036da6ee75b9)
  unreachable
bb5:
  %t12 = mul i64 0, 8
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_4d945ec18b41639d_846c036da6ee75b9)
  unreachable
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l15, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 0
  %t23 = getelementptr { i64, ptr }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i64, ptr %t24, i64 0
  %t26 = load i64, ptr %t25, !tbaa !34
  store i64 %t26, ptr %l17, !tbaa !24
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = icmp sle i64 %t30, 1152921504606846975
  br i1 %t31, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_10c8bc13a6db10f0_81f1e7574e9afc2c)
  unreachable
bb10:
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = mul i64 %t33, 8
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = load i64, ptr %l17, !tbaa !24
  store i64 0, ptr %t37
  br label %fill.38
fill.38:
  %t41 = load i64, ptr %t37
  %t42 = icmp slt i64 %t41, %t33
  br i1 %t42, label %fillb.39, label %filld.40
fillb.39:
  %t43 = getelementptr i64, ptr %t35, i64 %t41
  store i64 %t36, ptr %t43
  %t44 = add i64 %t41, 1
  store i64 %t44, ptr %t37
  br label %fill.38
filld.40:
  %t45 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t35, 1
  store { i64, ptr } %t46, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 1
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l2, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  br i1 %t57, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_10c8bc13a6db10f0_81f1e7574e9afc2c)
  unreachable
bb12:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb17
bb14:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t64 = load i64, ptr %l2, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t68 = load i64, ptr %l4, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = sub i64 %t71, 1
  %t74 = load i64, ptr %l4, !tbaa !24
  %t77 = sdiv i64 %t73, %t74
  store i64 %t77, ptr %l29, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l29, !tbaa !24
  store i64 %t79, ptr %l26, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l26, !tbaa !24
  store i64 %t80, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = load i64, ptr %l5, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t89 = load i64, ptr %l2, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  store i64 %t97, ptr %l7, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t99, ptr %l47, !tbaa !27
  %t100 = load i64, ptr %l7, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t101, i32 0, i32 0
  %t106 = getelementptr { i64, ptr }, ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i64, ptr %t107, i64 %t102
  %t109 = load i64, ptr %t108, !tbaa !34
  %t112 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i64, ptr %t113, i64 %t100
  store i64 %t109, ptr %t114, !tbaa !34
  br label %bb22
bb22:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb18
bb23:
  %t119 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t119, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eroom_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l51 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp sle i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp slt i64 %t17, 4
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = mul i64 %t26, 2
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l3, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t59, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l37, !tbaa !24
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sle i64 0, %t68
  br i1 %t69, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_c71720b651c4be46_5c3ed0b2298ea3a)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_c71720b651c4be46_5c3ed0b2298ea3a)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr i64, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 8
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_c71720b651c4be46_5c3ed0b2298ea3a)
  unreachable
bb19:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t97 = icmp slt i64 %t91, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t101, ptr %l51, !tbaa !27
  %t102 = load i64, ptr %l6, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i64, ptr %t105, i64 %t102
  %t107 = load i64, ptr %t106, !tbaa !34
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i64, ptr %t111, i64 %t109
  store i64 %t107, ptr %t112, !tbaa !34
  %t113 = load i64, ptr %l45, !tbaa !24
  %t114 = add i64 %t113, 1
  store i64 %t114, ptr %l45, !tbaa !24
  br label %bb23
bb23:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb19
bb24:
  %t119 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t120 = load ptr, ptr %l33, !tbaa !29
  %t121 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t120, i32 0, i32 0
  store { i64, ptr } %t119, ptr %t121, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/build:Unit"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/build:Unit", ptr %t7, i64 %a1
  %t9 = load %"compiler/build:Unit", ptr %t8
  store %"compiler/build:Unit" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/build:Unit", ptr %rv
  ret %"compiler/build:Unit" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ePush_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/build:Unit" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eroom_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr %"compiler/build:Unit", ptr %t35, i64 %t28
  store %"compiler/build:Unit" %a1, ptr %t36
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l16, !tbaa !29
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eroom_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l51 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp sle i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp slt i64 %t17, 4
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = mul i64 %t26, 2
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l3, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t59, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l37, !tbaa !24
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sle i64 0, %t68
  br i1 %t69, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_9239c628ffdb401e_693e7e2c7dea3692)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_9239c628ffdb401e_693e7e2c7dea3692)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/build:Unit", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 56
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_9239c628ffdb401e_693e7e2c7dea3692)
  unreachable
bb19:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t97 = icmp slt i64 %t91, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t101, ptr %l51, !tbaa !27
  %t102 = load i64, ptr %l6, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr %"compiler/build:Unit", ptr %t105, i64 %t102
  %t107 = load %"compiler/build:Unit", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/build:Unit", ptr %t111, i64 %t109
  store %"compiler/build:Unit" %t107, ptr %t112
  %t113 = load i64, ptr %l45, !tbaa !24
  %t114 = add i64 %t113, 1
  store i64 %t114, ptr %l45, !tbaa !24
  br label %bb23
bb23:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb19
bb24:
  %t119 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t120 = load ptr, ptr %l33, !tbaa !29
  %t121 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t120, i32 0, i32 0
  store { i64, ptr } %t119, ptr %t121, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l38 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t10 = icmp sgt i64 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp sgt i64 %t12, 0
  br i1 %t14, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb3:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t20 = sub i64 %t16, %t17
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = add i64 %t20, %t21
  %t26 = sub i64 %t24, 1
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = sdiv i64 %t26, %t27
  store i64 %t30, ptr %l16, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t32 = load i64, ptr %l16, !tbaa !24
  store i64 %t32, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l13, !tbaa !24
  store i64 %t33, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t42 = load i64, ptr %l2, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = mul i64 %t43, %t44
  %t50 = add i64 %t42, %t47
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t52, i32 0, i32 0
  %t57 = getelementptr { i64, ptr }, ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %t58, i64 %t50
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !37
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t60, { i64, ptr } %a1)
  store i1 %t64, ptr %l38
  br label %bb11
bb11:
  %t65 = load i1, ptr %l38, !tbaa !21
  br i1 %t65, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t67 = load i64, ptr %l6, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l6, !tbaa !24
  br label %bb7
bb16:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  store ptr %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  store i64 %t5, ptr %l4, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l5, !tbaa !24
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sle i64 0, %t12
  br i1 %t13, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_3930a330b99048b_60f181b178defbf)
  unreachable
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_3930a330b99048b_60f181b178defbf)
  unreachable
bb5:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  %t31 = extractvalue { ptr, ptr } %pg1, 0
  %t32 = extractvalue { ptr, ptr } %pg1, 1
  call void @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eSort_3cstd_2fprelu_H425a408f665c1f34766f6a10dd38435a(ptr %v0, ptr %v1, { i64, ptr } %t27, ptr %t31, ptr %t32)
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_3930a330b99048b_60f181b178defbf)
  unreachable
bb7:
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52 = dso_local alias { i64, ptr } (ptr, ptr, ptr, i64), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274
@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45 = dso_local alias void (ptr, ptr, ptr, { i64, ptr }), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22
@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H61995da051b71d0288119da2cdc12cdc = dso_local alias void (ptr, ptr, i64), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hb1a5028c6bc2f3f498513e9ea3d798c5
@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451 = dso_local alias { i64, ptr } (ptr, ptr, ptr), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122
define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

declare i32 @pthread_mutex_lock(ptr)
declare i32 @pthread_cond_broadcast(ptr)
declare i32 @pthread_mutex_unlock(ptr)
declare i32 @pthread_mutex_init(ptr, ptr)
declare i32 @pthread_cond_init(ptr, ptr)
declare i32 @pthread_cond_wait(ptr, ptr)
declare void @__olang_check_failed(ptr) cold noreturn
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
@__olang_empty_array = external constant [16 x i64]
define linkonce_odr %"<pthread.h>:pthread_mutex_t" @olang_2emir_2eHelperKind_2eZero_2e_3cpthread_2eh_3e_3apthread__mutex__t() #0 {
entry:
  %l0 = alloca %"<pthread.h>:pthread_mutex_t"
  %rv = alloca %"<pthread.h>:pthread_mutex_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<pthread.h>:pthread_mutex_t" @_3cpthread_2eh_3e_3apthread__mutex__t_2ector(ptr %t1)
  store %"<pthread.h>:pthread_mutex_t" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<pthread.h>:pthread_mutex_t", ptr %l0
  store %"<pthread.h>:pthread_mutex_t" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:pthread_mutex_t", ptr %rv
  ret %"<pthread.h>:pthread_mutex_t" %rr
}

define linkonce_odr %"<pthread.h>:pthread_cond_t" @olang_2emir_2eHelperKind_2eZero_2e_3cpthread_2eh_3e_3apthread__cond__t() #0 {
entry:
  %l0 = alloca %"<pthread.h>:pthread_cond_t"
  %rv = alloca %"<pthread.h>:pthread_cond_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<pthread.h>:pthread_cond_t" @_3cpthread_2eh_3e_3apthread__cond__t_2ector(ptr %t1)
  store %"<pthread.h>:pthread_cond_t" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<pthread.h>:pthread_cond_t", ptr %l0
  store %"<pthread.h>:pthread_cond_t" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:pthread_cond_t", ptr %rv
  ret %"<pthread.h>:pthread_cond_t" %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@__olang_prog_scope = external thread_local(initialexec) global ptr
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@olang_loc_8b1ab3db35ebb480_65ad3ecc104fb344 = external constant [0 x i8]
@olang_loc_bfa795281152369c_da61951da24f83c0 = external constant [0 x i8]
declare void @std_2fprelude_2farray_2esortMergeBuffered_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
@olang_loc_9ac06bd1685c6a0e_7032635af5bb7b02 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
@olang_loc_da59c7d8c597efe4_403a3926fe1e900 = external constant [0 x i8]
@olang_loc_da8028beccd66af1_6af34333739c302d = external constant [0 x i8]
@olang_loc_5361441d00e64430_e1fd50fc102bc4d4 = external constant [0 x i8]
@olang_loc_4d945ec18b41639d_846c036da6ee75b9 = external constant [0 x i8]
@olang_loc_10c8bc13a6db10f0_81f1e7574e9afc2c = external constant [0 x i8]
@olang_loc_c71720b651c4be46_5c3ed0b2298ea3a = external constant [0 x i8]
@olang_loc_9239c628ffdb401e_693e7e2c7dea3692 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_3930a330b99048b_60f181b178defbf = external constant [0 x i8]
declare void @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eSort_3cstd_2fprelu_H425a408f665c1f34766f6a10dd38435a(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
declare %"<pthread.h>:pthread_mutex_t" @_3cpthread_2eh_3e_3apthread__mutex__t_2ector(ptr %v0)
declare %"<pthread.h>:pthread_cond_t" @_3cpthread_2eh_3e_3apthread__cond__t_2ector(ptr %v0)

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
