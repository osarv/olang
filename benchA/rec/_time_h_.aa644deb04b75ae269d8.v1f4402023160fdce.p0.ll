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
%"<time.h>:c___locale_struct" = type { [13 x ptr], ptr, ptr, ptr, [13 x ptr] }
%"<time.h>:itimerspec" = type { %"<time.h>:timespec", %"<time.h>:timespec" }
%"<time.h>:timespec" = type { i64, i64 }
%"<time.h>:timeval" = type { i64, i64 }
%"<time.h>:timex" = type { [26 x i64] }
@G_2e_3ctime_2eh_3e_2eADJ__ESTERROR = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eADJ__FREQUENCY = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eADJ__MAXERROR = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eADJ__MICRO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eADJ__NANO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eADJ__OFFSET = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eADJ__OFFSET__SINGLESHOT = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\80\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eADJ__OFFSET__SS__READ = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\A0\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eADJ__SETOFFSET = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eADJ__STATUS = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eADJ__TAI = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eADJ__TICK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eADJ__TIMECONST = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eCLOCKS__PER__SEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\42\0F\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eCLOCK__BOOTTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eCLOCK__BOOTTIME__ALARM = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eCLOCK__MONOTONIC = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eCLOCK__MONOTONIC__COARSE = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eCLOCK__MONOTONIC__RAW = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eCLOCK__PROCESS__CPUTIME__ID = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eCLOCK__REALTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eCLOCK__REALTIME__ALARM = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eCLOCK__REALTIME__COARSE = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eCLOCK__TAI = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eCLOCK__THREAD__CPUTIME__ID = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eMOD__CLKA = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\80\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eMOD__CLKB = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eMOD__ESTERROR = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eMOD__FREQUENCY = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eMOD__MAXERROR = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eMOD__MICRO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eMOD__NANO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eMOD__OFFSET = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eMOD__STATUS = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eMOD__TAI = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eMOD__TIMECONST = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__CLK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\80\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__CLOCKERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__DEL = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__FLL = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__FREQHOLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__INS = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__MODE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__NANO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__PLL = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__PPSERROR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__PPSFREQ = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__PPSJITTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__PPSSIGNAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__PPSTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__PPSWANDER = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__RONLY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\FF\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eSTA__UNSYNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eTIMER__ABSTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3ctime_2eh_3e_2eTIME__UTC = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
define dso_local void @_3ctime_2eh_3e_3ac______locale__struct_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l7 = alloca %"<time.h>:c___locale_struct"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [13 x ptr] undef, ptr null, 0
  %t2 = insertvalue [13 x ptr] %t1, ptr null, 1
  %t3 = insertvalue [13 x ptr] %t2, ptr null, 2
  %t4 = insertvalue [13 x ptr] %t3, ptr null, 3
  %t5 = insertvalue [13 x ptr] %t4, ptr null, 4
  %t6 = insertvalue [13 x ptr] %t5, ptr null, 5
  %t7 = insertvalue [13 x ptr] %t6, ptr null, 6
  %t8 = insertvalue [13 x ptr] %t7, ptr null, 7
  %t9 = insertvalue [13 x ptr] %t8, ptr null, 8
  %t10 = insertvalue [13 x ptr] %t9, ptr null, 9
  %t11 = insertvalue [13 x ptr] %t10, ptr null, 10
  %t12 = insertvalue [13 x ptr] %t11, ptr null, 11
  %t13 = insertvalue [13 x ptr] %t12, ptr null, 12
  %t15 = insertvalue [13 x ptr] undef, ptr null, 0
  %t16 = insertvalue [13 x ptr] %t15, ptr null, 1
  %t17 = insertvalue [13 x ptr] %t16, ptr null, 2
  %t18 = insertvalue [13 x ptr] %t17, ptr null, 3
  %t19 = insertvalue [13 x ptr] %t18, ptr null, 4
  %t20 = insertvalue [13 x ptr] %t19, ptr null, 5
  %t21 = insertvalue [13 x ptr] %t20, ptr null, 6
  %t22 = insertvalue [13 x ptr] %t21, ptr null, 7
  %t23 = insertvalue [13 x ptr] %t22, ptr null, 8
  %t24 = insertvalue [13 x ptr] %t23, ptr null, 9
  %t25 = insertvalue [13 x ptr] %t24, ptr null, 10
  %t26 = insertvalue [13 x ptr] %t25, ptr null, 11
  %t27 = insertvalue [13 x ptr] %t26, ptr null, 12
  %t29 = getelementptr %"<time.h>:c___locale_struct", ptr %l7, i32 0, i32 0
  store [13 x ptr] %t13, ptr %t29
  %t31 = getelementptr %"<time.h>:c___locale_struct", ptr %l7, i32 0, i32 1
  store ptr null, ptr %t31, !tbaa !29
  %t33 = getelementptr %"<time.h>:c___locale_struct", ptr %l7, i32 0, i32 2
  store ptr null, ptr %t33, !tbaa !29
  %t35 = getelementptr %"<time.h>:c___locale_struct", ptr %l7, i32 0, i32 3
  store ptr null, ptr %t35, !tbaa !29
  %t37 = getelementptr %"<time.h>:c___locale_struct", ptr %l7, i32 0, i32 4
  store [13 x ptr] %t27, ptr %t37
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l7, i64 232, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"<time.h>:itimerspec" @_3ctime_2eh_3e_3aitimerspec_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"<time.h>:timespec"
  %l2 = alloca %"<time.h>:timespec"
  %l3 = alloca %"<time.h>:timespec"
  %rv = alloca %"<time.h>:itimerspec"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"<time.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3ctime_2eh_3e_3atimespec()
  store %"<time.h>:timespec" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"<time.h>:timespec", ptr %l2
  store %"<time.h>:timespec" %t2, ptr %l0
  %t3 = call %"<time.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3ctime_2eh_3e_3atimespec()
  store %"<time.h>:timespec" %t3, ptr %l3
  br label %bb2
bb2:
  %t4 = load %"<time.h>:timespec", ptr %l3
  %t5 = load %"<time.h>:timespec", ptr %l0
  %t6 = insertvalue %"<time.h>:itimerspec" undef, %"<time.h>:timespec" %t5, 0
  %t8 = insertvalue %"<time.h>:itimerspec" %t6, %"<time.h>:timespec" %t4, 1
  store %"<time.h>:itimerspec" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"<time.h>:itimerspec", ptr %rv
  ret %"<time.h>:itimerspec" %rr
}

define dso_local %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<time.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<time.h>:timespec" undef, i64 0, 0
  %t4 = insertvalue %"<time.h>:timespec" %t2, i64 0, 1
  store %"<time.h>:timespec" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<time.h>:timespec", ptr %rv
  ret %"<time.h>:timespec" %rr
}

define dso_local %"<time.h>:timeval" @_3ctime_2eh_3e_3atimeval_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<time.h>:timeval"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<time.h>:timeval" undef, i64 0, 0
  %t4 = insertvalue %"<time.h>:timeval" %t2, i64 0, 1
  store %"<time.h>:timeval" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<time.h>:timeval", ptr %rv
  ret %"<time.h>:timeval" %rr
}

define dso_local void @_3ctime_2eh_3e_3atimex_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca [26 x i64]
  %l1 = alloca [26 x i64]
  %l2 = alloca %"<time.h>:timex"
  br label %start
start:
  br label %bb0
bb0:
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 26
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [26 x i64], ptr %l1, i64 0, i64 %t5
  store i64 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %l1, i64 208, i1 false)
  %t9 = getelementptr %"<time.h>:timex", ptr %l2, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %t9, ptr %l0, i64 208, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l2, i64 208, i1 false)
  br label %ret
ret:
  ret void
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr %"<time.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3ctime_2eh_3e_3atimespec() #0 {
entry:
  %l0 = alloca %"<time.h>:timespec"
  %rv = alloca %"<time.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %t1)
  store %"<time.h>:timespec" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<time.h>:timespec", ptr %l0
  store %"<time.h>:timespec" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<time.h>:timespec", ptr %rv
  ret %"<time.h>:timespec" %rr
}

@__olang_prog_scope = external thread_local(initialexec) global ptr

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
