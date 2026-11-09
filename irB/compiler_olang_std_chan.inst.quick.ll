source_filename = "compiler_olang_std_chan.inst.quick.ll"
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
%"std/chan:reading" = type { i32, double }
define dso_local void @std_2fchan_2eClose_3cI32_3e(ptr %v0, ptr %a0) #0 {
entry:
  tail call void @std_2fchan_2eClose_3cI64_3e(ptr %v0, ptr %a0)
  ret void
}

define dso_local { i32, i32 } @std_2fchan_2eRecvUntil_3cI32_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca [2 x i64]
  %l3 = alloca i32
  %l7 = alloca i32
  %l11 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i32
  %l22 = alloca i32
  %l27 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca ptr
  %l44 = alloca i32
  %l47 = alloca i32
  %l50 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = insertvalue [2 x i64] undef, i64 0, 0
  %t2 = insertvalue [2 x i64] %t1, i64 0, 1
  store [2 x i64] %t2, ptr %l2
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t4, i32 0, i32 10
  %t8 = call i32 @pthread_mutex_lock(ptr %t6)
  store i32 %t8, ptr %l7
  br label %bb1
bb1:
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t9, i32 0, i32 4
  %t12 = load i64, ptr %t11, !tbaa !24
  %t14 = icmp eq i64 %t12, 0
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t16, i32 0, i32 8
  %t19 = load i1, ptr %t18, !tbaa !21
  %t21 = xor i1 %t19, true
  store i1 %t21, ptr %l11, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l11, !tbaa !21
  %t24 = xor i1 %t23, true
  br i1 %t24, label %bb6, label %bb7
bb6:
  br label %bb20
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = call i1 @std_2fcancel_2estd_2fcancel_3aToken_2eCancelled(ptr %v1, ptr %t26)
  store i1 %t28, ptr %l17
  br label %bb9
bb9:
  %t29 = load i1, ptr %l17, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t30, i32 0, i32 10
  %t34 = call i32 @pthread_mutex_unlock(ptr %t32)
  store i32 %t34, ptr %l20
  br label %bb12
bb11:
  br label %bb16
bb12:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = call i32 @std_2fcancel_2estd_2fcancel_3aToken_2eReason(ptr %v1, ptr %t35)
  store i32 %t37, ptr %l22
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb14, label %ok.39, !prof !99
ok.39:
  br label %bb13
bb13:
  br label %bb15
bb14:
  %t40 = load i32, ptr %l22, !tbaa !23
  %t41 = lshr i32 %t40, 16
  %t42 = and i32 %t40, 65535
  %t43 = icmp eq i32 %t41, 1
  %t44 = select i1 %t43, i32 1, i32 0
  %t45 = icmp eq i32 %t40, 0
  %t46 = shl i32 %t44, 16
  %t47 = or i32 %t46, %t42
  %t48 = select i1 %t45, i32 0, i32 %t47
  call void @__olang_scope_close(ptr %s0)
  %t50 = insertvalue { i32, i32 } zeroinitializer, i32 %t48, 0
  store { i32, i32 } %t50, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = insertvalue { i64, ptr } undef, i64 2, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %l2, 1
  call void @std_2fcancel_2estd_2fcancel_3aToken_2eWakeAt(ptr %v1, ptr %s0, ptr %t51, { i64, ptr } %t54)
  br label %bb17
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l27, !tbaa !29
  %t58 = load ptr, ptr %l27, !tbaa !29
  %t59 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t58, i32 0, i32 9
  %t60 = load i64, ptr %t59, !tbaa !24
  %t62 = add i64 %t60, 1
  %t64 = load ptr, ptr %l27, !tbaa !29
  %t65 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t64, i32 0, i32 9
  store i64 %t62, ptr %t65, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t66, i32 0, i32 11
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t69, i32 0, i32 10
  %t75 = call i32 @pthread_cond_timedwait(ptr %t68, ptr %t71, ptr %l2)
  store i32 %t75, ptr %l35
  br label %bb18
bb18:
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l36, !tbaa !29
  %t77 = load ptr, ptr %l36, !tbaa !29
  %t78 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t77, i32 0, i32 9
  %t79 = load i64, ptr %t78, !tbaa !24
  %t81 = sub i64 %t79, 1
  %t83 = load ptr, ptr %l36, !tbaa !29
  %t84 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t83, i32 0, i32 9
  store i64 %t81, ptr %t84, !tbaa !24
  br label %bb19
bb19:
  br label %bb2
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t85, i32 0, i32 4
  %t88 = load i64, ptr %t87, !tbaa !24
  %t90 = icmp eq i64 %t88, 0
  br i1 %t90, label %bb21, label %bb22
bb21:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t92, i32 0, i32 10
  %t96 = call i32 @pthread_mutex_unlock(ptr %t94)
  store i32 %t96, ptr %l44
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t98 = insertvalue { i32, i32 } zeroinitializer, i32 131072, 0
  store { i32, i32 } %t98, ptr %rv
  br label %ret
bb24:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = call i32 @std_2fchan_2eoldest_3cI32_3e(ptr %v0, ptr %t99)
  store i32 %t101, ptr %l47
  br label %bb25
bb25:
  %t102 = load i32, ptr %l47, !tbaa !23
  store i32 %t102, ptr %l3, !tbaa !23
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t103, i32 0, i32 10
  %t107 = call i32 @pthread_mutex_unlock(ptr %t105)
  store i32 %t107, ptr %l50
  br label %bb26
bb26:
  %t108 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t110 = insertvalue { i32, i32 } zeroinitializer, i32 %t108, 1
  store { i32, i32 } %t110, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local { i32, i32 } @std_2fchan_2eRecv_3cI32_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l11 = alloca i1
  %l20 = alloca i32
  %l21 = alloca ptr
  %l29 = alloca i32
  %l32 = alloca i32
  %l35 = alloca i32
  %rv = alloca { i32, i32 }
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
  %t63 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t63, ptr %rv
  br label %ret
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = call i32 @std_2fchan_2eoldest_3cI32_3e(ptr %v0, ptr %t64)
  store i32 %t66, ptr %l32
  br label %bb16
bb16:
  %t67 = load i32, ptr %l32, !tbaa !23
  store i32 %t67, ptr %l1, !tbaa !23
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t68, i32 0, i32 10
  %t72 = call i32 @pthread_mutex_unlock(ptr %t70)
  store i32 %t72, ptr %l35
  br label %bb17
bb17:
  %t73 = load i32, ptr %l1, !tbaa !23
  %t75 = insertvalue { i32, i32 } zeroinitializer, i32 %t73, 1
  store { i32, i32 } %t75, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local { i32, %"std/chan:reading" } @std_2fchan_2eRecv_3cstd_2fchan_3areading_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/chan:reading"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l11 = alloca i1
  %l20 = alloca i32
  %l21 = alloca ptr
  %l29 = alloca i32
  %l32 = alloca %"std/chan:reading"
  %l35 = alloca i32
  %rv = alloca { i32, %"std/chan:reading" }
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
  %t63 = insertvalue { i32, %"std/chan:reading" } zeroinitializer, i32 65536, 0
  store { i32, %"std/chan:reading" } %t63, ptr %rv
  br label %ret
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = call %"std/chan:reading" @std_2fchan_2eoldest_3cstd_2fchan_3areading_3e(ptr %v0, ptr %t64)
  store %"std/chan:reading" %t66, ptr %l32
  br label %bb16
bb16:
  %t67 = load %"std/chan:reading", ptr %l32
  store %"std/chan:reading" %t67, ptr %l1
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t68, i32 0, i32 10
  %t72 = call i32 @pthread_mutex_unlock(ptr %t70)
  store i32 %t72, ptr %l35
  br label %bb17
bb17:
  %t73 = load %"std/chan:reading", ptr %l1
  %t75 = insertvalue { i32, %"std/chan:reading" } zeroinitializer, %"std/chan:reading" %t73, 1
  store { i32, %"std/chan:reading" } %t75, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/chan:reading" }, ptr %rv
  ret { i32, %"std/chan:reading" } %rr
}

define dso_local i32 @std_2fchan_2eSend_3cI32_3e(ptr %v0, ptr %a0, i32 %a1) #0 {
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
  %t56 = call i64 @std_2fchan_2eplace_3cI32_3e(ptr %v0, ptr %t52, i32 %a1)
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

define dso_local i32 @std_2fchan_2eSend_3cstd_2fchan_3areading_3e(ptr %v0, ptr %a0, %"std/chan:reading" %a1) #0 {
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
  %t56 = call i64 @std_2fchan_2eplace_3cstd_2fchan_3areading_3e(ptr %v0, ptr %t52, %"std/chan:reading" %a1)
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

define dso_local i32 @std_2fchan_2eoldest_3cI32_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, ptr }
  %l24 = alloca i32
  %rv = alloca i32
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
  %t12 = getelementptr i32, ptr %t11, i64 %t8
  %t13 = load i32, ptr %t12, !tbaa !33
  store i32 %t13, ptr %l1, !tbaa !23
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
  %t57 = load i32, ptr %l1, !tbaa !23
  store i32 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"std/chan:reading" @std_2fchan_2eoldest_3cstd_2fchan_3areading_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/chan:reading"
  %l3 = alloca { i64, ptr }
  %l24 = alloca i32
  %rv = alloca %"std/chan:reading"
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
  %t12 = getelementptr %"std/chan:reading", ptr %t11, i64 %t8
  %t13 = load %"std/chan:reading", ptr %t12
  store %"std/chan:reading" %t13, ptr %l1
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
  %t57 = load %"std/chan:reading", ptr %l1
  store %"std/chan:reading" %t57, ptr %rv
  br label %ret
ret:
  %rr = load %"std/chan:reading", ptr %rv
  ret %"std/chan:reading" %rr
}

define dso_local i64 @std_2fchan_2eplace_3cI32_3e(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i32
  %l14 = alloca { i64, ptr }
  %l35 = alloca i32
  %rv = alloca i64
  %t26 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  %t15 = load i32, ptr %l1, !tbaa !23
  store i32 %t15, ptr %l9, !tbaa !23
  %t16 = load i64, ptr %l8, !tbaa !24
  %t17 = icmp sge i64 %t16, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t19 = load i64, ptr %l8, !tbaa !24
  %t20 = icmp sle i64 %t19, 2305843009213693951
  br i1 %t20, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_f51c3b74f2d4a8af_eaf8dafb70d5bb93)
  unreachable
bb5:
  %t22 = load i64, ptr %l8, !tbaa !24
  %t23 = mul i64 %t22, 4
  %t24 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t23)
  %t25 = load i32, ptr %l9, !tbaa !23
  store i64 0, ptr %t26
  br label %fill.27
fill.27:
  %t30 = load i64, ptr %t26
  %t31 = icmp slt i64 %t30, %t22
  br i1 %t31, label %fillb.28, label %filld.29
fillb.28:
  %t32 = getelementptr i32, ptr %t24, i64 %t30
  store i32 %t25, ptr %t32
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
  call void @__olang_check_failed(ptr @olang_loc_f51c3b74f2d4a8af_eaf8dafb70d5bb93)
  unreachable
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t39, i32 0, i32 1
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l14, !tbaa !27
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t43, i32 0, i32 3
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = load i32, ptr %l1, !tbaa !23
  %t50 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i32, ptr %t51, i64 %t46
  store i32 %t47, ptr %t52, !tbaa !33
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

define dso_local i64 @std_2fchan_2eplace_3cstd_2fchan_3areading_3e(ptr %v0, ptr %a0, %"std/chan:reading" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/chan:reading"
  %l6 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"std/chan:reading"
  %l14 = alloca { i64, ptr }
  %l35 = alloca i32
  %rv = alloca i64
  %t26 = alloca i64
  store ptr %a0, ptr %l0
  store %"std/chan:reading" %a1, ptr %l1
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
  %t15 = load %"std/chan:reading", ptr %l1
  store %"std/chan:reading" %t15, ptr %l9
  %t16 = load i64, ptr %l8, !tbaa !24
  %t17 = icmp sge i64 %t16, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t19 = load i64, ptr %l8, !tbaa !24
  %t20 = icmp sle i64 %t19, 576460752303423487
  br i1 %t20, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_772c54764e337a02_1b08b3073a69a3ee)
  unreachable
bb5:
  %t22 = load i64, ptr %l8, !tbaa !24
  %t23 = mul i64 %t22, 16
  %t24 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t23)
  %t25 = load %"std/chan:reading", ptr %l9
  store i64 0, ptr %t26
  br label %fill.27
fill.27:
  %t30 = load i64, ptr %t26
  %t31 = icmp slt i64 %t30, %t22
  br i1 %t31, label %fillb.28, label %filld.29
fillb.28:
  %t32 = getelementptr %"std/chan:reading", ptr %t24, i64 %t30
  store %"std/chan:reading" %t25, ptr %t32
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
  call void @__olang_check_failed(ptr @olang_loc_772c54764e337a02_1b08b3073a69a3ee)
  unreachable
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t39, i32 0, i32 1
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l14, !tbaa !27
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", ptr %t43, i32 0, i32 3
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = load %"std/chan:reading", ptr %l1
  %t50 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr %"std/chan:reading", ptr %t51, i64 %t46
  store %"std/chan:reading" %t47, ptr %t52
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

define dso_local i32 @std_2fchan_2esendOpen_3cI32_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i32 @std_2fchan_2esendOpen_3cI64_3e(ptr %v0, ptr %a0)
  ret i32 %r
}

define dso_local i32 @std_2fchan_2esendOpen_3cstd_2fchan_3areading_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i32 @std_2fchan_2esendOpen_3cI64_3e(ptr %v0, ptr %a0)
  ret i32 %r
}

define dso_local { i32, i32 } @std_2fchan_2estd_2fchan_3aChan_3cI32_3e_2eNext_3cI32_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l6 = alloca i1
  %rv = alloca { i32, i32 }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i32, i32 } @std_2fchan_2eRecv_3cI32_3e(ptr %v0, ptr %a0)
  %t4 = extractvalue { i32, i32 } %t3, 1
  %t5 = extractvalue { i32, i32 } %t3, 0
  store i32 %t5, ptr %l4
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i32 %t4, ptr %l3
  br label %bb1
bb1:
  %t8 = load i32, ptr %l3, !tbaa !23
  store i32 %t8, ptr %l1, !tbaa !23
  br label %bb4
bb2:
  %t9 = load i32, ptr %l4, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t14 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t14, ptr %rv
  br label %ret
bb4:
  %t15 = load i32, ptr %l1, !tbaa !23
  %t16 = insertvalue { i32, i32 } zeroinitializer, i32 %t15, 1
  store { i32, i32 } %t16, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local void @std_2fchan_2ewithdraw_3cI32_3e(ptr %v0, ptr %a0) #0 {
entry:
  tail call void @std_2fchan_2ewithdraw_3cI64_3e(ptr %v0, ptr %a0)
  ret void
}

define dso_local void @std_2fchan_2ewithdraw_3cstd_2fchan_3areading_3e(ptr %v0, ptr %a0) #0 {
entry:
  tail call void @std_2fchan_2ewithdraw_3cI64_3e(ptr %v0, ptr %a0)
  ret void
}

declare i32 @pthread_mutex_lock(ptr)
declare i32 @pthread_mutex_unlock(ptr)
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
declare i32 @pthread_cond_timedwait(ptr, ptr, ptr)
declare i32 @pthread_cond_wait(ptr, ptr)
declare i32 @pthread_cond_broadcast(ptr)
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
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare void @std_2fchan_2eClose_3cI64_3e(ptr %v0, ptr %a0)
declare i1 @std_2fcancel_2estd_2fcancel_3aToken_2eCancelled(ptr %v0, ptr %a0)
declare i32 @std_2fcancel_2estd_2fcancel_3aToken_2eReason(ptr %v0, ptr %a0)
declare void @std_2fcancel_2estd_2fcancel_3aToken_2eWakeAt(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @std_2fchan_2esendOpen_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fchan_2ewithdraw_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_f51c3b74f2d4a8af_eaf8dafb70d5bb93 = external constant [0 x i8]
@olang_loc_772c54764e337a02_1b08b3073a69a3ee = external constant [0 x i8]

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
