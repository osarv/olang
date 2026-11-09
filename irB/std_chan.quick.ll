source_filename = "std_chan.quick.ll"
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
%"std/chan:sumBox" = type { i32 }
%"<time.h>:timespec" = type { i64, i64 }
%"std/chan:reading" = type { i32, double }
%"std/chan:Sent" = type { }
%"std/chan:idle" = type { }
define dso_local void @std_2fchan_2econsume(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i32
  %l34 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca i32
  %l39 = alloca i32
  %l40 = alloca i32
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l3, !tbaa !23
  store i32 %a1, ptr %l4, !tbaa !23
  store i32 1, ptr %l5, !tbaa !23
  %t3 = load i32, ptr %l4, !tbaa !23
  %t4 = load i32, ptr %l3, !tbaa !23
  %t7 = icmp sgt i32 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i32, ptr %l5, !tbaa !23
  %t11 = icmp sgt i32 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l13, !tbaa !23
  br label %bb6
bb3:
  %t13 = load i32, ptr %l4, !tbaa !23
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = sub i32 %t13, %t14
  %t18 = load i32, ptr %l5, !tbaa !23
  %t21 = add i32 %t17, %t18
  %t23 = sub i32 %t21, 1
  %t24 = load i32, ptr %l5, !tbaa !23
  %t27 = sdiv i32 %t23, %t24
  store i32 %t27, ptr %l16, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l16, !tbaa !23
  br label %bb5
bb5:
  %t29 = load i32, ptr %l16, !tbaa !23
  store i32 %t29, ptr %l13, !tbaa !23
  br label %bb6
bb6:
  %t30 = load i32, ptr %l13, !tbaa !23
  store i32 %t30, ptr %l6, !tbaa !23
  store i32 0, ptr %l7, !tbaa !23
  br label %bb7
bb7:
  %t31 = load i32, ptr %l7, !tbaa !23
  %t32 = load i32, ptr %l6, !tbaa !23
  %t35 = icmp slt i32 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t39 = load i32, ptr %l3, !tbaa !23
  %t40 = load i32, ptr %l7, !tbaa !23
  %t41 = load i32, ptr %l5, !tbaa !23
  %t44 = mul i32 %t40, %t41
  %t47 = add i32 %t39, %t44
  store i32 %t47, ptr %l8, !tbaa !23
  %t49 = load ptr, ptr %l2, !tbaa !29
  store ptr %t49, ptr %l34, !tbaa !29
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"std/chan:sumBox", ptr %t50, i32 0, i32 0
  %t53 = load i32, ptr %t52, !tbaa !23
  store i32 %t53, ptr %l36, !tbaa !23
  %t56 = call { i32, i32 } @std_2fchan_2eRecv_3cI32_3e(ptr %v0, ptr %a0)
  %t57 = extractvalue { i32, i32 } %t56, 1
  %t58 = extractvalue { i32, i32 } %t56, 0
  store i32 %t58, ptr %l40
  %t59 = icmp ne i32 %t58, 0
  br i1 %t59, label %bb12, label %ok.60, !prof !99
ok.60:
  store i32 %t57, ptr %l39
  br label %bb11
bb11:
  %t61 = load i32, ptr %l39, !tbaa !23
  store i32 %t61, ptr %l37, !tbaa !23
  br label %bb15
bb12:
  %t62 = load i32, ptr %l40, !tbaa !23
  %t63 = icmp eq i32 %t62, 65536
  br i1 %t63, label %bb13, label %bb14
bb13:
  call void @__olang_bang_failed_plain(ptr @olang_loc_a1af0d6c4dd8cd1d_1e212d48f267dbf9)
  unreachable
bb14:
  call void @__olang_bang_failed_plain(ptr @olang_loc_4acda35dc97a8041_dd5e97031313014d)
  unreachable
bb15:
  %t65 = load i32, ptr %l36, !tbaa !23
  %t66 = load i32, ptr %l37, !tbaa !23
  %t67 = add i32 %t65, %t66
  %t69 = load ptr, ptr %l34, !tbaa !29
  %t70 = getelementptr %"std/chan:sumBox", ptr %t69, i32 0, i32 0
  store i32 %t67, ptr %t70, !tbaa !23
  br label %bb16
bb16:
  %t71 = load i32, ptr %l7, !tbaa !23
  %t73 = add i32 %t71, 1
  store i32 %t73, ptr %l7, !tbaa !23
  br label %bb7
bb17:
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fchan_2eearliest(i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l11 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp eq i64 %t7, 0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l0, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t13 = load i64, ptr %l0, !tbaa !24
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  br i1 %t17, label %bb7, label %bb8
bb7:
  %t19 = load i64, ptr %l0, !tbaa !24
  store i64 %t19, ptr %l11, !tbaa !24
  br label %bb9
bb8:
  %t21 = load i64, ptr %l1, !tbaa !24
  store i64 %t21, ptr %l11, !tbaa !24
  br label %bb9
bb9:
  %t23 = load i64, ptr %l11, !tbaa !24
  store i64 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @std_2fchan_2efill(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l35 = alloca i32
  %l37 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 %a1, ptr %l3, !tbaa !24
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
  store i64 0, ptr %l12, !tbaa !24
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
  store i64 %t27, ptr %l15, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l15, !tbaa !24
  store i64 %t29, ptr %l12, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l12, !tbaa !24
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
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  %t53 = call i32 @std_2fchan_2eSend_3cI64_3e(ptr %v0, ptr %a0, i64 %t47)
  store i32 %t53, ptr %l35
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb12, label %ok.55, !prof !99
ok.55:
  br label %bb11
bb11:
  br label %bb14
bb12:
  %t56 = load i32, ptr %l35, !tbaa !23
  %t57 = ashr i32 %t56, 16
  %t59 = icmp eq i32 %t57, 1
  store i1 %t59, ptr %l37, !tbaa !21
  br label %bb13
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t60 = load i64, ptr %l6, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l6, !tbaa !24
  br label %bb7
bb16:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fchan_2epause(i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l9 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l25 = alloca i64
  %l29 = alloca i1
  %l30 = alloca i1
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp slt i64 %t1, 64
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = sub i64 %t5, 64
  %t9 = icmp slt i64 %t7, 7
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l0, !tbaa !24
  %t13 = sub i64 %t11, 64
  store i64 %t13, ptr %l9, !tbaa !24
  br label %bb6
bb5:
  store i64 7, ptr %l9, !tbaa !24
  br label %bb6
bb6:
  %t15 = load i64, ptr %l9, !tbaa !24
  %t16 = load i64, ptr %l9, !tbaa !24
  %t17 = shl i64 10000, %t16
  store i64 %t17, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp sgt i64 %t19, 1000000
  br i1 %t21, label %bb7, label %bb8
bb7:
  store i64 1000000, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t23 = load i64, ptr %l1, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb10, label %bb11
bb10:
  %t27 = load i64, ptr %l1, !tbaa !24
  store i64 %t27, ptr %l17, !tbaa !24
  %t28 = call i64 @std_2ftime_2eNow()
  store i64 %t28, ptr %l18
  br label %bb12
bb11:
  br label %bb19
bb12:
  %t29 = load i64, ptr %l17, !tbaa !24
  %t30 = load i64, ptr %l18, !tbaa !24
  %t31 = sub i64 %t29, %t30
  store i64 %t31, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t34 = load i64, ptr %l2, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  br i1 %t37, label %bb13, label %bb14
bb13:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t41 = icmp sgt i64 %t39, 0
  br i1 %t41, label %bb15, label %bb16
bb14:
  br label %bb18
bb15:
  %t43 = load i64, ptr %l3, !tbaa !24
  store i64 %t43, ptr %l25, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb17
bb17:
  %t45 = load i64, ptr %l25, !tbaa !24
  store i64 %t45, ptr %l2, !tbaa !24
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t46 = load i64, ptr %l1, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb20, label %bb21
bb20:
  %t50 = call i1 @std_2ftime_2eIsVirtual()
  store i1 %t50, ptr %l30
  br label %bb22
bb21:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb23
bb22:
  %t51 = load i1, ptr %l30, !tbaa !21
  store i1 %t51, ptr %l29, !tbaa !21
  br label %bb23
bb23:
  %t52 = load i1, ptr %l29, !tbaa !21
  br i1 %t52, label %bb24, label %bb25
bb24:
  %t53 = load i64, ptr %l1, !tbaa !24
  call void @std_2ftime_2eReach(i64 %t53)
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i64 1000000, ptr %l2, !tbaa !24
  br label %bb27
bb27:
  %t55 = load i64, ptr %l2, !tbaa !24
  call void @std_2fchan_2erealSleep(i64 %t55)
  br label %bb28
bb28:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fchan_2eproduce(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l35 = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l2, !tbaa !23
  store i32 %a1, ptr %l3, !tbaa !23
  store i32 1, ptr %l4, !tbaa !23
  %t3 = load i32, ptr %l3, !tbaa !23
  %t4 = load i32, ptr %l2, !tbaa !23
  %t7 = icmp sgt i32 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i32, ptr %l4, !tbaa !23
  %t11 = icmp sgt i32 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l12, !tbaa !23
  br label %bb6
bb3:
  %t13 = load i32, ptr %l3, !tbaa !23
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = sub i32 %t13, %t14
  %t18 = load i32, ptr %l4, !tbaa !23
  %t21 = add i32 %t17, %t18
  %t23 = sub i32 %t21, 1
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = sdiv i32 %t23, %t24
  store i32 %t27, ptr %l15, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l15, !tbaa !23
  br label %bb5
bb5:
  %t29 = load i32, ptr %l15, !tbaa !23
  store i32 %t29, ptr %l12, !tbaa !23
  br label %bb6
bb6:
  %t30 = load i32, ptr %l12, !tbaa !23
  store i32 %t30, ptr %l5, !tbaa !23
  store i32 0, ptr %l6, !tbaa !23
  br label %bb7
bb7:
  %t31 = load i32, ptr %l6, !tbaa !23
  %t32 = load i32, ptr %l5, !tbaa !23
  %t35 = icmp slt i32 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t39 = load i32, ptr %l2, !tbaa !23
  %t40 = load i32, ptr %l6, !tbaa !23
  %t41 = load i32, ptr %l4, !tbaa !23
  %t44 = mul i32 %t40, %t41
  %t47 = add i32 %t39, %t44
  %t53 = call i32 @std_2fchan_2eSend_3cI32_3e(ptr %v0, ptr %a0, i32 %t47)
  store i32 %t53, ptr %l35
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb12, label %ok.55, !prof !99
ok.55:
  br label %bb11
bb11:
  br label %bb14
bb12:
  br label %bb13
bb13:
  br label %ret
bb14:
  br label %bb15
bb15:
  %t56 = load i32, ptr %l6, !tbaa !23
  %t58 = add i32 %t56, 1
  store i32 %t58, ptr %l6, !tbaa !23
  br label %bb7
bb16:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fchan_2erealSleep(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca %"<time.h>:timespec"
  %l2 = alloca %"<time.h>:timespec"
  %l5 = alloca %"<time.h>:timespec"
  %l10 = alloca %"<time.h>:timespec"
  %l13 = alloca i32
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
  %t9 = sdiv i64 %t7, 1000000000
  %t11 = getelementptr %"<time.h>:timespec", ptr %l1, i32 0, i32 0
  store i64 %t9, ptr %t11, !tbaa !24
  %t12 = load i64, ptr %l0, !tbaa !24
  %t14 = srem i64 %t12, 1000000000
  %t16 = getelementptr %"<time.h>:timespec", ptr %l1, i32 0, i32 1
  store i64 %t14, ptr %t16, !tbaa !24
  %t17 = call %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %s0)
  store %"<time.h>:timespec" %t17, ptr %l10
  br label %bb5
bb5:
  %t18 = load %"<time.h>:timespec", ptr %l10
  store %"<time.h>:timespec" %t18, ptr %l2
  %t21 = call i32 @nanosleep(ptr %l1, ptr %l2)
  store i32 %t21, ptr %l13
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @std_2fchan_2erecvOrStop(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i64
  %l13 = alloca i32
  %s1 = alloca %olang.scope
  %jh1 = alloca ptr
  %rv = alloca i32
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l2, !tbaa !23
  %t1 = call i64 @std_2fcancel_2eNowNs()
  store i64 %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load i64, ptr %l4, !tbaa !24
  store i64 %t2, ptr %l3, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s1
  store ptr null, ptr %jh1
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t7 = call ptr @__olang_standin(ptr %v0)
  %t8 = call ptr @__olang_standin(ptr %v1)
  %t9 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr null, i32 1
  %t10 = ptrtoint ptr %t9 to i64
  %t11 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 %t10, i64 8)
  %t12 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %t11, i32 0, i32 0
  store ptr %a0, ptr %t12
  %t13 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %t11, i32 0, i32 1
  store ptr %t4, ptr %t13
  %t14 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %t11, i32 0, i32 2
  store ptr %t7, ptr %t14
  %t15 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %t11, i32 0, i32 3
  store ptr %t8, ptr %t15
  %t16 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %t11, i32 0, i32 4
  store ptr %l2, ptr %t16
  %t17 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 40, i64 8)
  %t18 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 16, i64 8)
  store ptr null, ptr %t18
  %t19 = getelementptr { ptr, ptr }, ptr %t18, i32 0, i32 1
  store ptr %t7, ptr %t19
  %t20 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 16, i64 8)
  store ptr %t18, ptr %t20
  %t21 = getelementptr { ptr, ptr }, ptr %t20, i32 0, i32 1
  store ptr %t8, ptr %t21
  %t22 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t17, i32 0, i32 2
  store ptr %t20, ptr %t22
  %t23 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t17, i32 0, i32 1
  store i64 0, ptr %t23
  %t24 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t17, i32 0, i32 3
  store i64 0, ptr %t24
  %t25 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t17, i32 0, i32 4
  store ptr null, ptr %t25
  %t26 = call ptr @__olang_worker_get()
  call void @__olang_worker_start(ptr %t26, ptr @olang_task0, ptr %t11, ptr %t17)
  %t27 = load ptr, ptr %jh1
  store ptr %t27, ptr %t17
  store ptr %t17, ptr %jh1
  br label %bb2
bb2:
  %t28 = call i64 @std_2fcancel_2eNowNs()
  store i64 %t28, ptr %l7
  br label %bb3
bb3:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t32 = sub i64 %t30, %t29
  %t34 = icmp slt i64 %t32, 5000000
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb4, label %bb5
bb4:
  br label %bb8
bb5:
  br label %bb6
bb6:
  br label %bb7
bb7:
  br label %bb2
bb8:
  %t38 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fcancel_2estd_2fcancel_3aToken_2eCancel(ptr %v1, ptr %t38)
  br label %bb9
bb9:
  %t40 = call i64 @__olang_join_tasks_keep(ptr %jh1, i1 true)
  %t41 = trunc i64 %t40 to i32
  store i32 %t41, ptr %l13
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb11, label %bb10
bb10:
  call void @__olang_scope_close(ptr %s1)
  br label %bb16
bb11:
  call void @__olang_scope_close(ptr %s1)
  %t43 = load i32, ptr %l13, !tbaa !23
  %t44 = icmp eq i32 %t43, 65536
  br i1 %t44, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i32 -1, ptr %rv
  br label %ret
bb15:
  store i32 -2, ptr %rv
  br label %ret
bb16:
  %t48 = load i32, ptr %l2, !tbaa !23
  store i32 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @std_2fchan_2esendCounting(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i32
  %l36 = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l3, !tbaa !23
  store i32 %a1, ptr %l4, !tbaa !23
  store i32 1, ptr %l5, !tbaa !23
  %t3 = load i32, ptr %l4, !tbaa !23
  %t4 = load i32, ptr %l3, !tbaa !23
  %t7 = icmp sgt i32 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i32, ptr %l5, !tbaa !23
  %t11 = icmp sgt i32 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l13, !tbaa !23
  br label %bb6
bb3:
  %t13 = load i32, ptr %l4, !tbaa !23
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = sub i32 %t13, %t14
  %t18 = load i32, ptr %l5, !tbaa !23
  %t21 = add i32 %t17, %t18
  %t23 = sub i32 %t21, 1
  %t24 = load i32, ptr %l5, !tbaa !23
  %t27 = sdiv i32 %t23, %t24
  store i32 %t27, ptr %l16, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l16, !tbaa !23
  br label %bb5
bb5:
  %t29 = load i32, ptr %l16, !tbaa !23
  store i32 %t29, ptr %l13, !tbaa !23
  br label %bb6
bb6:
  %t30 = load i32, ptr %l13, !tbaa !23
  store i32 %t30, ptr %l6, !tbaa !23
  store i32 0, ptr %l7, !tbaa !23
  br label %bb7
bb7:
  %t31 = load i32, ptr %l7, !tbaa !23
  %t32 = load i32, ptr %l6, !tbaa !23
  %t35 = icmp slt i32 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t39 = load i32, ptr %l3, !tbaa !23
  %t40 = load i32, ptr %l7, !tbaa !23
  %t41 = load i32, ptr %l5, !tbaa !23
  %t44 = mul i32 %t40, %t41
  %t47 = add i32 %t39, %t44
  %t53 = call i32 @std_2fchan_2eSend_3cI32_3e(ptr %v0, ptr %a0, i32 %t47)
  store i32 %t53, ptr %l36
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb12, label %ok.55, !prof !99
ok.55:
  br label %bb11
bb11:
  br label %bb14
bb12:
  br label %bb13
bb13:
  br label %ret
bb14:
  br label %bb15
bb15:
  %t56 = load i32, ptr %l7, !tbaa !23
  %t58 = add i32 %t56, 1
  store i32 %t58, ptr %l7, !tbaa !23
  br label %bb7
bb16:
  %t62 = getelementptr %"std/chan:sumBox", ptr %a2, i32 0, i32 0
  store i32 1, ptr %t62, !tbaa !23
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fchan_2esendReadings(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l33 = alloca ptr
  %l38 = alloca %"std/chan:reading"
  %l39 = alloca i32
  %s2 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l2, !tbaa !23
  store i32 %a1, ptr %l3, !tbaa !23
  store i32 1, ptr %l4, !tbaa !23
  %t3 = load i32, ptr %l3, !tbaa !23
  %t4 = load i32, ptr %l2, !tbaa !23
  %t7 = icmp sgt i32 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i32, ptr %l4, !tbaa !23
  %t11 = icmp sgt i32 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l12, !tbaa !23
  br label %bb6
bb3:
  %t13 = load i32, ptr %l3, !tbaa !23
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = sub i32 %t13, %t14
  %t18 = load i32, ptr %l4, !tbaa !23
  %t21 = add i32 %t17, %t18
  %t23 = sub i32 %t21, 1
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = sdiv i32 %t23, %t24
  store i32 %t27, ptr %l15, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l15, !tbaa !23
  br label %bb5
bb5:
  %t29 = load i32, ptr %l15, !tbaa !23
  store i32 %t29, ptr %l12, !tbaa !23
  br label %bb6
bb6:
  %t30 = load i32, ptr %l12, !tbaa !23
  store i32 %t30, ptr %l5, !tbaa !23
  store i32 0, ptr %l6, !tbaa !23
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t31 = load i32, ptr %l6, !tbaa !23
  %t32 = load i32, ptr %l5, !tbaa !23
  %t35 = icmp slt i32 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t39 = load i32, ptr %l2, !tbaa !23
  %t40 = load i32, ptr %l6, !tbaa !23
  %t41 = load i32, ptr %l4, !tbaa !23
  %t44 = mul i32 %t40, %t41
  %t47 = add i32 %t39, %t44
  store i32 %t47, ptr %l7, !tbaa !23
  store ptr %a0, ptr %l33, !tbaa !29
  %t50 = load i32, ptr %l7, !tbaa !23
  %t51 = load i32, ptr %l7, !tbaa !23
  %t53 = sitofp i32 %t51 to double
  %t55 = fmul double %t53, 0x3fe0000000000000
  %t58 = call %"std/chan:reading" @std_2fchan_3areading_2ector(ptr %s2, i32 %t50, double %t55)
  store %"std/chan:reading" %t58, ptr %l38
  br label %bb11
bb11:
  %t59 = load ptr, ptr %l33, !tbaa !29
  %t60 = load %"std/chan:reading", ptr %l38
  %t61 = call i32 @std_2fchan_2eSend_3cstd_2fchan_3areading_3e(ptr %v0, ptr %t59, %"std/chan:reading" %t60)
  store i32 %t61, ptr %l39
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb13, label %ok.63, !prof !99
ok.63:
  br label %bb12
bb12:
  br label %bb15
bb13:
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t64 = load i32, ptr %l6, !tbaa !23
  %t66 = add i32 %t64, 1
  store i32 %t66, ptr %l6, !tbaa !23
  br label %bb7
bb17:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fchan_2esendThenClose(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l35 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l2, !tbaa !23
  store i32 %a1, ptr %l3, !tbaa !23
  store i32 1, ptr %l4, !tbaa !23
  %t3 = load i32, ptr %l3, !tbaa !23
  %t4 = load i32, ptr %l2, !tbaa !23
  %t7 = icmp sgt i32 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i32, ptr %l4, !tbaa !23
  %t11 = icmp sgt i32 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l12, !tbaa !23
  br label %bb6
bb3:
  %t13 = load i32, ptr %l3, !tbaa !23
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = sub i32 %t13, %t14
  %t18 = load i32, ptr %l4, !tbaa !23
  %t21 = add i32 %t17, %t18
  %t23 = sub i32 %t21, 1
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = sdiv i32 %t23, %t24
  store i32 %t27, ptr %l15, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l15, !tbaa !23
  br label %bb5
bb5:
  %t29 = load i32, ptr %l15, !tbaa !23
  store i32 %t29, ptr %l12, !tbaa !23
  br label %bb6
bb6:
  %t30 = load i32, ptr %l12, !tbaa !23
  store i32 %t30, ptr %l5, !tbaa !23
  store i32 0, ptr %l6, !tbaa !23
  br label %bb7
bb7:
  %t31 = load i32, ptr %l6, !tbaa !23
  %t32 = load i32, ptr %l5, !tbaa !23
  %t35 = icmp slt i32 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t39 = load i32, ptr %l2, !tbaa !23
  %t40 = load i32, ptr %l6, !tbaa !23
  %t41 = load i32, ptr %l4, !tbaa !23
  %t44 = mul i32 %t40, %t41
  %t47 = add i32 %t39, %t44
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t53 = call i32 @std_2fchan_2eSend_3cI32_3e(ptr %v0, ptr %t49, i32 %t47)
  store i32 %t53, ptr %l35
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb12, label %ok.55, !prof !99
ok.55:
  br label %bb11
bb11:
  br label %bb14
bb12:
  br label %bb13
bb13:
  br label %ret
bb14:
  br label %bb15
bb15:
  %t56 = load i32, ptr %l6, !tbaa !23
  %t58 = add i32 %t56, 1
  store i32 %t58, ptr %l6, !tbaa !23
  br label %bb7
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fchan_2eClose_3cI32_3e(ptr %v0, ptr %t60)
  br label %bb17
bb17:
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fchan_2estd_2fchan_3aidle_2eDue(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, i32 } @std_2fchan_2estd_2fchan_3aidle_2eTryNow(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t2, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local void @std_2fchan_2esumReadings(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca %"std/chan:reading"
  %l14 = alloca i32
  %l17 = alloca i32
  %l35 = alloca %"std/chan:reading"
  %l37 = alloca %"std/chan:reading"
  %l38 = alloca i32
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l3, !tbaa !23
  store i32 %a1, ptr %l4, !tbaa !23
  store i32 1, ptr %l5, !tbaa !23
  %t3 = load i32, ptr %l4, !tbaa !23
  %t4 = load i32, ptr %l3, !tbaa !23
  %t7 = icmp sgt i32 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i32, ptr %l5, !tbaa !23
  %t11 = icmp sgt i32 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l14, !tbaa !23
  br label %bb6
bb3:
  %t13 = load i32, ptr %l4, !tbaa !23
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = sub i32 %t13, %t14
  %t18 = load i32, ptr %l5, !tbaa !23
  %t21 = add i32 %t17, %t18
  %t23 = sub i32 %t21, 1
  %t24 = load i32, ptr %l5, !tbaa !23
  %t27 = sdiv i32 %t23, %t24
  store i32 %t27, ptr %l17, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l17, !tbaa !23
  br label %bb5
bb5:
  %t29 = load i32, ptr %l17, !tbaa !23
  store i32 %t29, ptr %l14, !tbaa !23
  br label %bb6
bb6:
  %t30 = load i32, ptr %l14, !tbaa !23
  store i32 %t30, ptr %l6, !tbaa !23
  store i32 0, ptr %l7, !tbaa !23
  br label %bb7
bb7:
  %t31 = load i32, ptr %l7, !tbaa !23
  %t32 = load i32, ptr %l6, !tbaa !23
  %t35 = icmp slt i32 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t39 = load i32, ptr %l3, !tbaa !23
  %t40 = load i32, ptr %l7, !tbaa !23
  %t41 = load i32, ptr %l5, !tbaa !23
  %t44 = mul i32 %t40, %t41
  %t47 = add i32 %t39, %t44
  store i32 %t47, ptr %l8, !tbaa !23
  %t51 = call { i32, %"std/chan:reading" } @std_2fchan_2eRecv_3cstd_2fchan_3areading_3e(ptr %v0, ptr %a0)
  %t52 = extractvalue { i32, %"std/chan:reading" } %t51, 1
  %t53 = extractvalue { i32, %"std/chan:reading" } %t51, 0
  store i32 %t53, ptr %l38
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb12, label %ok.55, !prof !99
ok.55:
  store %"std/chan:reading" %t52, ptr %l37
  br label %bb11
bb11:
  %t56 = load %"std/chan:reading", ptr %l37
  store %"std/chan:reading" %t56, ptr %l35
  br label %bb15
bb12:
  %t57 = load i32, ptr %l38, !tbaa !23
  %t58 = icmp eq i32 %t57, 65536
  br i1 %t58, label %bb13, label %bb14
bb13:
  call void @__olang_bang_failed_plain(ptr @olang_loc_b97360bfa7248521_cee0e6fafdf7db85)
  unreachable
bb14:
  call void @__olang_bang_failed_plain(ptr @olang_loc_d16d2f12d2d21c95_5a6f2cc315fae0a9)
  unreachable
bb15:
  %t60 = load %"std/chan:reading", ptr %l35
  store %"std/chan:reading" %t60, ptr %l9
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t64 = getelementptr %"std/chan:sumBox", ptr %t62, i32 0, i32 0
  %t65 = load i32, ptr %t64, !tbaa !23
  %t66 = getelementptr %"std/chan:reading", ptr %l9, i32 0, i32 0
  %t67 = load i32, ptr %t66, !tbaa !23
  %t70 = add i32 %t65, %t67
  %t73 = getelementptr %"std/chan:sumBox", ptr %t61, i32 0, i32 0
  store i32 %t70, ptr %t73, !tbaa !23
  br label %bb16
bb16:
  %t74 = load i32, ptr %l7, !tbaa !23
  %t76 = add i32 %t74, 1
  store i32 %t76, ptr %l7, !tbaa !23
  br label %bb7
bb17:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fchan_2etake(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l8 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l2, !tbaa !29
  %t4 = call { i32, i64 } @std_2fchan_2eRecv_3cI64_3e(ptr %v0, ptr %a0)
  %t5 = extractvalue { i32, i64 } %t4, 1
  %t6 = extractvalue { i32, i64 } %t4, 0
  store i32 %t6, ptr %l6
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t9 = load i64, ptr %l5, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  %t10 = load i32, ptr %l6, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = trunc i64 %t14 to i32
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"std/chan:sumBox", ptr %t17, i32 0, i32 0
  store i32 %t15, ptr %t18, !tbaa !23
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fchan_2ewaitClosed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l4 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l14 = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t5 = call { i32, i32 } @std_2fchan_2eRecvUntil_3cI32_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
  %t6 = extractvalue { i32, i32 } %t5, 1
  %t7 = extractvalue { i32, i32 } %t5, 0
  store i32 %t7, ptr %l8
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb3, label %ok.9, !prof !99
ok.9:
  store i32 %t6, ptr %l7
  br label %bb2
bb2:
  %t10 = load i32, ptr %l7, !tbaa !23
  store i32 %t10, ptr %l4, !tbaa !23
  br label %bb10
bb3:
  %t11 = load i32, ptr %l8, !tbaa !23
  %t12 = icmp eq i32 %t11, 131072
  br i1 %t12, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  %t14 = load i32, ptr %l8, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  br i1 %t17, label %bb7, label %bb8
bb6:
  br label %bb12
bb7:
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_2a2fbd67b0b02d98_a1bf4b72498d5e4c)
  unreachable
bb9:
  br label %ret
bb10:
  %t21 = getelementptr %"std/chan:sumBox", ptr %a2, i32 0, i32 0
  %t23 = atomicrmw add ptr %t21, i32 1 seq_cst
  store i32 %t23, ptr %l14, !tbaa !23
  br label %bb11
bb11:
  br label %bb1
bb12:
  %t26 = getelementptr %"std/chan:sumBox", ptr %a3, i32 0, i32 0
  store i32 1, ptr %t26, !tbaa !23
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fchan_2ewaitFor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a2, ptr %l3, !tbaa !29
  %t6 = call { i32, i32 } @std_2fchan_2eRecvUntil_3cI32_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
  %t7 = extractvalue { i32, i32 } %t6, 1
  %t8 = extractvalue { i32, i32 } %t6, 0
  store i32 %t8, ptr %l8
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store i32 %t7, ptr %l7
  br label %bb1
bb1:
  %t11 = load i32, ptr %l7, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  br label %bb7
bb2:
  %t12 = load i32, ptr %l8, !tbaa !23
  %t13 = icmp eq i32 %t12, 65536
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i32 -1, ptr %l4, !tbaa !23
  br label %bb7
bb6:
  store i32 -2, ptr %l4, !tbaa !23
  br label %bb7
bb7:
  %t15 = load i32, ptr %l4, !tbaa !23
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr %"std/chan:sumBox", ptr %t16, i32 0, i32 0
  store i32 %t15, ptr %t17, !tbaa !23
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fchan_2ewalkCount(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l10 = alloca i1
  %l13 = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = call { i32, i32 } @std_2fchan_2estd_2fchan_3aChan_3cI32_3e_2eNext_3cI32_3e(ptr %v0, ptr %t3)
  %t6 = extractvalue { i32, i32 } %t5, 1
  %t7 = extractvalue { i32, i32 } %t5, 0
  store i32 %t7, ptr %l8
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb3, label %ok.9, !prof !99
ok.9:
  store i32 %t6, ptr %l7
  br label %bb2
bb2:
  %t10 = load i32, ptr %l7, !tbaa !23
  store i32 %t10, ptr %l5, !tbaa !23
  br label %bb5
bb3:
  %t11 = load i32, ptr %l8, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  br label %bb7
bb5:
  %t15 = load i32, ptr %l5, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  %t18 = getelementptr %"std/chan:sumBox", ptr %a1, i32 0, i32 0
  %t20 = atomicrmw add ptr %t18, i32 1 seq_cst
  store i32 %t20, ptr %l13, !tbaa !23
  br label %bb6
bb6:
  br label %bb1
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fchan_2ewalkSum(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l10 = alloca i1
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = call { i32, i32 } @std_2fchan_2estd_2fchan_3aChan_3cI32_3e_2eNext_3cI32_3e(ptr %v0, ptr %t3)
  %t6 = extractvalue { i32, i32 } %t5, 1
  %t7 = extractvalue { i32, i32 } %t5, 0
  store i32 %t7, ptr %l8
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb3, label %ok.9, !prof !99
ok.9:
  store i32 %t6, ptr %l7
  br label %bb2
bb2:
  %t10 = load i32, ptr %l7, !tbaa !23
  store i32 %t10, ptr %l5, !tbaa !23
  br label %bb5
bb3:
  %t11 = load i32, ptr %l8, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  br label %bb7
bb5:
  %t15 = load i32, ptr %l5, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"std/chan:sumBox", ptr %t17, i32 0, i32 0
  %t20 = load i32, ptr %t19, !tbaa !23
  %t24 = add i32 %t20, %t15
  %t27 = getelementptr %"std/chan:sumBox", ptr %t16, i32 0, i32 0
  store i32 %t24, ptr %t27, !tbaa !23
  br label %bb6
bb6:
  br label %bb1
bb7:
  br label %ret
ret:
  ret void
}

define dso_local %"std/chan:Sent" @std_2fchan_3aSent_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"std/chan:Sent"
  br label %start
start:
  br label %bb0
bb0:
  store %"std/chan:Sent" zeroinitializer, ptr %rv
  br label %ret
ret:
  %rr = load %"std/chan:Sent", ptr %rv
  ret %"std/chan:Sent" %rr
}

define dso_local %"std/chan:idle" @std_2fchan_3aidle_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"std/chan:idle"
  br label %start
start:
  br label %bb0
bb0:
  store %"std/chan:idle" zeroinitializer, ptr %rv
  br label %ret
ret:
  %rr = load %"std/chan:idle", ptr %rv
  ret %"std/chan:idle" %rr
}

define dso_local %"std/chan:reading" @std_2fchan_3areading_2ector(ptr %v0, i32 %a0, double %a1) #0 {
entry:
  %rv = alloca %"std/chan:reading"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"std/chan:reading" undef, i32 %a0, 0
  %t8 = insertvalue %"std/chan:reading" %t6, double %a1, 1
  store %"std/chan:reading" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/chan:reading", ptr %rv
  ret %"std/chan:reading" %rr
}

define dso_local %"std/chan:sumBox" @std_2fchan_3asumBox_2ector(ptr %v0, i32 %a0) #0 {
entry:
  %rv = alloca %"std/chan:sumBox"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/chan:sumBox" undef, i32 %a0, 0
  store %"std/chan:sumBox" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"std/chan:sumBox", ptr %rv
  ret %"std/chan:sumBox" %rr
}

declare void @__olang_bang_failed_plain(ptr) cold noreturn
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
declare i32 @nanosleep(ptr, ptr)
declare ptr @__olang_standin(ptr)
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
declare ptr @__olang_worker_get()
declare void @__olang_worker_start(ptr, ptr, ptr, ptr)
define internal ptr @olang_task0(ptr %env) #0 {
entry:
  %f0 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  %f1 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %f2 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %f3 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %f4 = getelementptr { ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 4
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
  %r = call { i32, i32 } @std_2fchan_2eRecvUntil_3cI32_3e(ptr %ss0, ptr %ss1, ptr %a0, ptr %a1)
  %v = extractvalue { i32, i32 } %r, 1
  %c = extractvalue { i32, i32 } %r, 0
  %bad = icmp ne i32 %c, 0
  br i1 %bad, label %fail, label %ok
fail:
  %rhi = lshr i32 %c, 16
  %rw = and i32 %c, 65535
  %rh0 = icmp eq i32 %rhi, 1
  %rp0 = select i1 %rh0, i32 1, i32 0
  %rh1 = icmp eq i32 %rhi, 2
  %rp1 = select i1 %rh1, i32 2, i32 %rp0
  %rs = shl i32 %rp1, 16
  %rv2 = or i32 %rs, %rw
  %rc64 = zext i32 %rv2 to i64
  %rp = inttoptr i64 %rc64 to ptr
  ret ptr %rp
ok:
  %d0 = load ptr, ptr %f4
  store i32 %v, ptr %d0
  ret ptr null
}

declare i64 @__olang_join_tasks_keep(ptr, i1)
declare void @__olang_check_failed(ptr) cold noreturn
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
@__olang_prog_scope = external thread_local(initialexec) global ptr
declare { i32, i32 } @std_2fchan_2eRecv_3cI32_3e(ptr %v0, ptr %a0)
@olang_loc_a1af0d6c4dd8cd1d_1e212d48f267dbf9 = external constant [0 x i8]
@olang_loc_4acda35dc97a8041_dd5e97031313014d = external constant [0 x i8]
declare i32 @std_2fchan_2eSend_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2ftime_2eNow()
declare i1 @std_2ftime_2eIsVirtual()
declare void @std_2ftime_2eReach(i64 %a0)
declare i32 @std_2fchan_2eSend_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %v0)
declare i64 @std_2fcancel_2eNowNs()
declare void @std_2fcancel_2estd_2fcancel_3aToken_2eCancel(ptr %v0, ptr %a0)
declare i32 @std_2fchan_2eSend_3cstd_2fchan_3areading_3e(ptr %v0, ptr %a0, %"std/chan:reading" %a1)
declare void @std_2fchan_2eClose_3cI32_3e(ptr %v0, ptr %a0)
declare { i32, %"std/chan:reading" } @std_2fchan_2eRecv_3cstd_2fchan_3areading_3e(ptr %v0, ptr %a0)
@olang_loc_b97360bfa7248521_cee0e6fafdf7db85 = external constant [0 x i8]
@olang_loc_d16d2f12d2d21c95_5a6f2cc315fae0a9 = external constant [0 x i8]
declare { i32, i64 } @std_2fchan_2eRecv_3cI64_3e(ptr %v0, ptr %a0)
declare { i32, i32 } @std_2fchan_2eRecvUntil_3cI32_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_2a2fbd67b0b02d98_a1bf4b72498d5e4c = external constant [0 x i8]
declare { i32, i32 } @std_2fchan_2estd_2fchan_3aChan_3cI32_3e_2eNext_3cI32_3e(ptr %v0, ptr %a0)

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
