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
%"std/cancel:Token" = type { i32, i64 }
%"std/cancel:spinCount" = type { i64 }
%"std/cancel:stopCount" = type { i64, i32 }
%"<time.h>:timespec" = type { i64, i64 }
@G_2estd_2fcancel_2eClockMonotonic = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2estd_2fcancel_2eClockRealtime = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2estd_2fcancel_2ePollNs = constant <{ [8 x i8] }> <{ [8 x i8] c"\80\96\98\00\00\00\00\00" }>, align 8
define dso_local i64 @std_2fcancel_2eNowNs() #0 {
entry:
  %l0 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i64 @std_2ftime_2eNow()
  store i64 %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load i64, ptr %l0, !tbaa !24
  store i64 %t2, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @std_2fcancel_2eToken_2eAfter(ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %l5 = alloca %"std/cancel:Token"
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i64 @std_2fcancel_2eNowNs()
  store i64 %t1, ptr %l1
  br label %bb1
bb1:
  %t4 = mul i64 %a0, 1000000
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = add i64 %t5, %t4
  %t9 = call %"std/cancel:Token" @std_2fcancel_3aToken_2ector(ptr %v0, i64 %t7)
  store %"std/cancel:Token" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/cancel:Token", ptr %l5
  %t11 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store %"std/cancel:Token" %t10, ptr %t11
  store ptr %t11, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @std_2fcancel_2ecancelOnExit(ptr %v0, i1 %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %jh1 = alloca ptr
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call ptr @std_2fcancel_2eToken_2eAfter(ptr %s0, i64 5000)
  store ptr %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load ptr, ptr %l3, !tbaa !29
  store ptr %t2, ptr %l2, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s1
  store ptr null, ptr %jh1
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t7 = call ptr @__olang_standin(ptr %s0)
  %t8 = call ptr @__olang_standin(ptr %v0)
  %t9 = getelementptr { ptr, ptr, ptr, ptr }, ptr null, i32 1
  %t10 = ptrtoint ptr %t9 to i64
  %t11 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 %t10, i64 8)
  %t12 = getelementptr { ptr, ptr, ptr, ptr }, ptr %t11, i32 0, i32 0
  store ptr %t3, ptr %t12
  %t13 = getelementptr { ptr, ptr, ptr, ptr }, ptr %t11, i32 0, i32 1
  store ptr %a1, ptr %t13
  %t14 = getelementptr { ptr, ptr, ptr, ptr }, ptr %t11, i32 0, i32 2
  store ptr %t7, ptr %t14
  %t15 = getelementptr { ptr, ptr, ptr, ptr }, ptr %t11, i32 0, i32 3
  store ptr %t8, ptr %t15
  %t16 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 40, i64 8)
  %t17 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 16, i64 8)
  store ptr null, ptr %t17
  %t18 = getelementptr { ptr, ptr }, ptr %t17, i32 0, i32 1
  store ptr %t7, ptr %t18
  %t19 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 16, i64 8)
  store ptr %t17, ptr %t19
  %t20 = getelementptr { ptr, ptr }, ptr %t19, i32 0, i32 1
  store ptr %t8, ptr %t20
  %t21 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t16, i32 0, i32 2
  store ptr %t19, ptr %t21
  %t22 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t16, i32 0, i32 1
  store i64 0, ptr %t22
  %t23 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t16, i32 0, i32 3
  store i64 0, ptr %t23
  %t24 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t16, i32 0, i32 4
  store ptr null, ptr %t24
  %t25 = call ptr @__olang_worker_get()
  call void @__olang_worker_start(ptr %t25, ptr @olang_task0, ptr %t11, ptr %t16)
  %t26 = load ptr, ptr %jh1
  store ptr %t26, ptr %t16
  store ptr %t16, ptr %jh1
  br i1 %a0, label %bb2, label %bb3
bb2:
  store i32 65536, ptr %l7, !tbaa !23
  %t29 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fcancel_2estd_2fcancel_3aToken_2eCancel(ptr %s0, ptr %t29)
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t31 = call i64 @__olang_join_tasks_keep(ptr %jh1, i1 false)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t32 = load i32, ptr %l7, !tbaa !23
  store i32 %t32, ptr %rv
  br label %ret
bb6:
  %t33 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fcancel_2estd_2fcancel_3aToken_2eCancel(ptr %s0, ptr %t33)
  br label %bb7
bb7:
  %t35 = call i64 @__olang_join_tasks_keep(ptr %jh1, i1 false)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @std_2fcancel_2espin(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l3 = alloca i1
  %l8 = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t3 = call i1 @std_2fcancel_2estd_2fcancel_3aToken_2eCancelled(ptr %v0, ptr %a0)
  store i1 %t3, ptr %l3
  br label %bb2
bb2:
  %t4 = load i1, ptr %l3, !tbaa !21
  %t5 = xor i1 %t4, true
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb3, label %bb4
bb3:
  br label %bb7
bb4:
  br label %bb5
bb5:
  %t11 = getelementptr %"std/cancel:spinCount", ptr %a1, i32 0, i32 0
  %t13 = atomicrmw add ptr %t11, i64 1 seq_cst
  store i64 %t13, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  br label %bb1
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fcancel_2espinRecord(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca ptr
  %l9 = alloca ptr
  %l11 = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @std_2fcancel_2estd_2fcancel_3aToken_2eCancelled(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l3
  br label %bb2
bb2:
  %t4 = load i1, ptr %l3, !tbaa !21
  %t5 = xor i1 %t4, true
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb3, label %bb4
bb3:
  br label %bb7
bb4:
  br label %bb5
bb5:
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %l6, !tbaa !29
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t11 = getelementptr %"std/cancel:stopCount", ptr %t10, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t14 = add i64 %t12, 1
  %t16 = load ptr, ptr %l6, !tbaa !29
  %t17 = getelementptr %"std/cancel:stopCount", ptr %t16, i32 0, i32 0
  store i64 %t14, ptr %t17, !tbaa !24
  br label %bb6
bb6:
  br label %bb1
bb7:
  %t18 = load ptr, ptr %l1, !tbaa !29
  store ptr %t18, ptr %l9, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call i32 @std_2fcancel_2estd_2fcancel_3aToken_2eWhy(ptr %v0, ptr %t19)
  store i32 %t21, ptr %l11
  br label %bb8
bb8:
  %t22 = load i32, ptr %l11, !tbaa !23
  %t23 = load ptr, ptr %l9, !tbaa !29
  %t24 = getelementptr %"std/cancel:stopCount", ptr %t23, i32 0, i32 1
  store i32 %t22, ptr %t24, !tbaa !23
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fcancel_2estd_2fcancel_3aToken_2eCancel(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/cancel:Token", ptr %a0, i32 0, i32 0
  store atomic i32 1, ptr %t3 seq_cst, align 4
  br label %ret
ret:
  ret void
}

define dso_local i1 @std_2fcancel_2estd_2fcancel_3aToken_2eCancelled(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @std_2fcancel_2estd_2fcancel_3aToken_2eWhy(ptr %v0, ptr %a0)
  store i32 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i32, ptr %l2, !tbaa !23
  %t5 = icmp ne i32 %t4, 0
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @std_2fcancel_2estd_2fcancel_3aToken_2eReason(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @std_2fcancel_2estd_2fcancel_3aToken_2eWhy(ptr %v0, ptr %a0)
  store i32 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i32, ptr %l2, !tbaa !23
  %t5 = icmp eq i32 %t4, 1
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i32 65536, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i32 65537, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @std_2fcancel_2estd_2fcancel_3aToken_2eWakeAt(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i1
  %l10 = alloca i1
  %l13 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l35 = alloca i64
  %l38 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/cancel:Token", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp ne i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call i1 @std_2ftime_2eIsVirtual()
  store i1 %t8, ptr %l10
  br label %bb3
bb2:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb4
bb3:
  %t9 = load i1, ptr %l10, !tbaa !21
  store i1 %t9, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t10 = load i1, ptr %l9, !tbaa !21
  br i1 %t10, label %bb5, label %bb6
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"std/cancel:Token", ptr %t11, i32 0, i32 1
  %t14 = load i64, ptr %t13, !tbaa !24
  call void @std_2ftime_2eReach(i64 %t14)
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t16 = call i64 @std_2fcancel_2ewallNs()
  store i64 %t16, ptr %l13
  br label %bb8
bb8:
  %t17 = load i64, ptr %l13, !tbaa !24
  %t18 = add i64 %t17, 1000000
  store i64 %t18, ptr %l2, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t20, ptr %l15, !tbaa !27
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = sdiv i64 %t21, 1000000000
  %t25 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr i64, ptr %t26, i64 0
  store i64 %t23, ptr %t27, !tbaa !34
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t28, ptr %l18, !tbaa !27
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = srem i64 %t29, 1000000000
  %t33 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i64, ptr %t34, i64 1
  store i64 %t31, ptr %t35, !tbaa !34
  br label %ret
bb9:
  %t36 = load i64, ptr @G_2estd_2fcancel_2ePollNs, !tbaa !24
  store i64 %t36, ptr %l3, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"std/cancel:Token", ptr %t38, i32 0, i32 1
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = icmp ne i64 %t41, 0
  br i1 %t43, label %bb10, label %bb11
bb10:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"std/cancel:Token", ptr %t45, i32 0, i32 1
  %t48 = load i64, ptr %t47, !tbaa !24
  store i64 %t48, ptr %l26, !tbaa !24
  %t49 = call i64 @std_2fcancel_2eNowNs()
  store i64 %t49, ptr %l27
  br label %bb12
bb11:
  br label %bb19
bb12:
  %t50 = load i64, ptr %l26, !tbaa !24
  %t51 = load i64, ptr %l27, !tbaa !24
  %t52 = sub i64 %t50, %t51
  store i64 %t52, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l3, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  br i1 %t58, label %bb13, label %bb14
bb13:
  %t60 = load i64, ptr %l4, !tbaa !24
  store i64 %t60, ptr %l3, !tbaa !24
  br label %bb15
bb14:
  br label %bb15
bb15:
  %t62 = load i64, ptr %l3, !tbaa !24
  %t64 = icmp slt i64 %t62, 0
  br i1 %t64, label %bb16, label %bb17
bb16:
  store i64 0, ptr %l3, !tbaa !24
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t66 = call i64 @std_2fcancel_2ewallNs()
  store i64 %t66, ptr %l35
  br label %bb20
bb20:
  %t67 = load i64, ptr %l3, !tbaa !24
  %t68 = load i64, ptr %l35, !tbaa !24
  %t70 = add i64 %t68, %t67
  store i64 %t70, ptr %l5, !tbaa !24
  %t72 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t72, ptr %l38, !tbaa !27
  %t73 = load i64, ptr %l5, !tbaa !24
  %t75 = sdiv i64 %t73, 1000000000
  %t77 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i64, ptr %t78, i64 0
  store i64 %t75, ptr %t79, !tbaa !34
  %t80 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t80, ptr %l41, !tbaa !27
  %t81 = load i64, ptr %l5, !tbaa !24
  %t83 = srem i64 %t81, 1000000000
  %t85 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i64, ptr %t86, i64 1
  store i64 %t83, ptr %t87, !tbaa !34
  br label %ret
ret:
  ret void
}

define dso_local i32 @std_2fcancel_2estd_2fcancel_3aToken_2eWhy(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/cancel:Token", ptr %t1, i32 0, i32 0
  %t5 = load atomic i32, ptr %t3 seq_cst, align 4
  %t7 = icmp ne i32 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i32 1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/cancel:Token", ptr %t10, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = icmp ne i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = call i64 @std_2fcancel_2eNowNs()
  store i64 %t17, ptr %l10
  br label %bb6
bb5:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"std/cancel:Token", ptr %t18, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  %t22 = load i64, ptr %l10, !tbaa !24
  %t24 = icmp sge i64 %t22, %t21
  store i1 %t24, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l9, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i32 2, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @std_2fcancel_2ewallNs() #0 {
entry:
  %l0 = alloca %"<time.h>:timespec"
  %l1 = alloca %"<time.h>:timespec"
  %l4 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %s0)
  store %"<time.h>:timespec" %t1, ptr %l1
  br label %bb1
bb1:
  %t2 = load %"<time.h>:timespec", ptr %l1
  store %"<time.h>:timespec" %t2, ptr %l0
  %t3 = load i32, ptr @G_2estd_2fcancel_2eClockRealtime, !tbaa !23
  %t6 = call i32 @clock_gettime(i32 %t3, ptr %l0)
  store i32 %t6, ptr %l4
  br label %bb2
bb2:
  %t7 = getelementptr %"<time.h>:timespec", ptr %l0, i32 0, i32 0
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = mul i64 %t8, 1000000000
  %t11 = getelementptr %"<time.h>:timespec", ptr %l0, i32 0, i32 1
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = add i64 %t10, %t12
  call void @__olang_scope_close(ptr %s0)
  store i64 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/cancel:Token" @std_2fcancel_3aToken_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %rv = alloca %"std/cancel:Token"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/cancel:Token" undef, i32 0, 0
  %t6 = insertvalue %"std/cancel:Token" %t4, i64 %a0, 1
  store %"std/cancel:Token" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"std/cancel:Token", ptr %rv
  ret %"std/cancel:Token" %rr
}

define dso_local %"std/cancel:spinCount" @std_2fcancel_3aspinCount_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"std/cancel:spinCount"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"std/cancel:spinCount" undef, i64 0, 0
  store %"std/cancel:spinCount" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/cancel:spinCount", ptr %rv
  ret %"std/cancel:spinCount" %rr
}

define dso_local %"std/cancel:stopCount" @std_2fcancel_3astopCount_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"std/cancel:stopCount"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"std/cancel:stopCount" undef, i64 0, 0
  %t4 = insertvalue %"std/cancel:stopCount" %t2, i32 0, 1
  store %"std/cancel:stopCount" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"std/cancel:stopCount", ptr %rv
  ret %"std/cancel:stopCount" %rr
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
declare ptr @__olang_standin(ptr)
declare ptr @__olang_worker_get()
declare void @__olang_worker_start(ptr, ptr, ptr, ptr)
define internal ptr @olang_task0(ptr %env) #0 {
entry:
  %f0 = getelementptr { ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  %f1 = getelementptr { ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %f2 = getelementptr { ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %f3 = getelementptr { ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %sc0 = load ptr, ptr %f2
  %sn0 = icmp eq ptr %sc0, null
  %sg0 = load ptr, ptr @__olang_prog_scope
  %ss0 = select i1 %sn0, ptr %sg0, ptr %sc0
  %sc1 = load ptr, ptr %f3
  %sn1 = icmp eq ptr %sc1, null
  %sg1 = load ptr, ptr @__olang_prog_scope
  %ss1 = select i1 %sn1, ptr %sg1, ptr %sc1
  %a0 = load ptr, ptr %f0
  %a1 = load ptr, ptr %f1
  call void @std_2fcancel_2espinRecord(ptr %ss0, ptr %ss1, ptr %a0, ptr %a1)
  ret ptr null
}

declare i64 @__olang_join_tasks_keep(ptr, i1)
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
declare i32 @clock_gettime(i32, ptr)
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@__olang_prog_scope = external thread_local(initialexec) global ptr
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
declare i64 @std_2ftime_2eNow()
declare i1 @std_2ftime_2eIsVirtual()
declare void @std_2ftime_2eReach(i64 %a0)
declare %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %v0)

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
