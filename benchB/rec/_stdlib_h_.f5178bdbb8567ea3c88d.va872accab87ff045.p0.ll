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
%"<stdlib.h>:c___atomic_wide_counter" = type { [1 x i64] }
%"<stdlib.h>:c___locale_struct" = type { [13 x ptr], ptr, ptr, ptr, [13 x ptr] }
%"<stdlib.h>:c___pthread_internal_list" = type { ptr, ptr }
%"<stdlib.h>:c___pthread_internal_slist" = type { ptr }
%"<stdlib.h>:c___sigset_t" = type { [16 x i64] }
%"<stdlib.h>:div_t" = type { i32, i32 }
%"<stdlib.h>:drand48_data" = type { [3 x i16], [3 x i16], i16, i16, i64 }
%"<stdlib.h>:fd_set" = type { [16 x i64] }
%"<stdlib.h>:ldiv_t" = type { i64, i64 }
%"<stdlib.h>:lldiv_t" = type { i64, i64 }
%"<stdlib.h>:pthread_attr_t" = type { [7 x i64] }
%"<stdlib.h>:pthread_barrier_t" = type { [4 x i64] }
%"<stdlib.h>:pthread_barrierattr_t" = type { [1 x i32] }
%"<stdlib.h>:pthread_cond_t" = type { [6 x i64] }
%"<stdlib.h>:pthread_condattr_t" = type { [1 x i32] }
%"<stdlib.h>:pthread_mutex_t" = type { [5 x i64] }
%"<stdlib.h>:pthread_mutexattr_t" = type { [1 x i32] }
%"<stdlib.h>:pthread_rwlock_t" = type { [7 x i64] }
%"<stdlib.h>:pthread_rwlockattr_t" = type { [1 x i64] }
%"<stdlib.h>:random_data" = type { ptr, ptr, ptr, i32, i32, i32, ptr }
%"<stdlib.h>:timespec" = type { i64, i64 }
%"<stdlib.h>:timeval" = type { i64, i64 }
@G_2e_3cstdlib_2eh_3e_2eBIG__ENDIAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\E1\10\00\00" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eBYTE__ORDER = constant <{ [4 x i8] }> <{ [4 x i8] c"\D2\04\00\00" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eEXIT__FAILURE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eEXIT__SUCCESS = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eFD__SETSIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eLITTLE__ENDIAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\D2\04\00\00" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eNFDBITS = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3cstdlib_2eh_3e_2ePDP__ENDIAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\54\0D\00\00" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eRAND__MAX = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\7F" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eWCONTINUED = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eWEXITED = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eWNOHANG = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eWNOWAIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\01" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eWSTOPPED = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cstdlib_2eh_3e_2eWUNTRACED = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
define dso_local %"<stdlib.h>:c___atomic_wide_counter" @_3cstdlib_2eh_3e_3ac______atomic__wide__counter_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:c___atomic_wide_counter"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i64] undef, i64 0, 0
  %t4 = insertvalue %"<stdlib.h>:c___atomic_wide_counter" undef, [1 x i64] %t1, 0
  store %"<stdlib.h>:c___atomic_wide_counter" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:c___atomic_wide_counter", ptr %rv
  ret %"<stdlib.h>:c___atomic_wide_counter" %rr
}

define dso_local void @_3cstdlib_2eh_3e_3ac______locale__struct_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l7 = alloca %"<stdlib.h>:c___locale_struct"
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
  %t29 = getelementptr %"<stdlib.h>:c___locale_struct", ptr %l7, i32 0, i32 0
  store [13 x ptr] %t13, ptr %t29
  %t31 = getelementptr %"<stdlib.h>:c___locale_struct", ptr %l7, i32 0, i32 1
  store ptr null, ptr %t31, !tbaa !29
  %t33 = getelementptr %"<stdlib.h>:c___locale_struct", ptr %l7, i32 0, i32 2
  store ptr null, ptr %t33, !tbaa !29
  %t35 = getelementptr %"<stdlib.h>:c___locale_struct", ptr %l7, i32 0, i32 3
  store ptr null, ptr %t35, !tbaa !29
  %t37 = getelementptr %"<stdlib.h>:c___locale_struct", ptr %l7, i32 0, i32 4
  store [13 x ptr] %t27, ptr %t37
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l7, i64 232, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"<stdlib.h>:c___pthread_internal_list" @_3cstdlib_2eh_3e_3ac______pthread__internal__list_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:c___pthread_internal_list"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<stdlib.h>:c___pthread_internal_list" undef, ptr null, 0
  %t4 = insertvalue %"<stdlib.h>:c___pthread_internal_list" %t2, ptr null, 1
  store %"<stdlib.h>:c___pthread_internal_list" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:c___pthread_internal_list", ptr %rv
  ret %"<stdlib.h>:c___pthread_internal_list" %rr
}

define dso_local %"<stdlib.h>:c___pthread_internal_slist" @_3cstdlib_2eh_3e_3ac______pthread__internal__slist_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:c___pthread_internal_slist"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<stdlib.h>:c___pthread_internal_slist" undef, ptr null, 0
  store %"<stdlib.h>:c___pthread_internal_slist" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:c___pthread_internal_slist", ptr %rv
  ret %"<stdlib.h>:c___pthread_internal_slist" %rr
}

define dso_local %"<stdlib.h>:c___sigset_t" @_3cstdlib_2eh_3e_3ac______sigset__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:c___sigset_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [16 x i64] undef, i64 0, 0
  %t2 = insertvalue [16 x i64] %t1, i64 0, 1
  %t3 = insertvalue [16 x i64] %t2, i64 0, 2
  %t4 = insertvalue [16 x i64] %t3, i64 0, 3
  %t5 = insertvalue [16 x i64] %t4, i64 0, 4
  %t6 = insertvalue [16 x i64] %t5, i64 0, 5
  %t7 = insertvalue [16 x i64] %t6, i64 0, 6
  %t8 = insertvalue [16 x i64] %t7, i64 0, 7
  %t9 = insertvalue [16 x i64] %t8, i64 0, 8
  %t10 = insertvalue [16 x i64] %t9, i64 0, 9
  %t11 = insertvalue [16 x i64] %t10, i64 0, 10
  %t12 = insertvalue [16 x i64] %t11, i64 0, 11
  %t13 = insertvalue [16 x i64] %t12, i64 0, 12
  %t14 = insertvalue [16 x i64] %t13, i64 0, 13
  %t15 = insertvalue [16 x i64] %t14, i64 0, 14
  %t16 = insertvalue [16 x i64] %t15, i64 0, 15
  %t19 = insertvalue %"<stdlib.h>:c___sigset_t" undef, [16 x i64] %t16, 0
  store %"<stdlib.h>:c___sigset_t" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:c___sigset_t", ptr %rv
  ret %"<stdlib.h>:c___sigset_t" %rr
}

define dso_local %"<stdlib.h>:div_t" @_3cstdlib_2eh_3e_3adiv__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:div_t"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<stdlib.h>:div_t" undef, i32 0, 0
  %t4 = insertvalue %"<stdlib.h>:div_t" %t2, i32 0, 1
  store %"<stdlib.h>:div_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:div_t", ptr %rv
  ret %"<stdlib.h>:div_t" %rr
}

define dso_local %"<stdlib.h>:drand48_data" @_3cstdlib_2eh_3e_3adrand48__data_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:drand48_data"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [3 x i16] undef, i16 0, 0
  %t2 = insertvalue [3 x i16] %t1, i16 0, 1
  %t3 = insertvalue [3 x i16] %t2, i16 0, 2
  %t5 = insertvalue [3 x i16] undef, i16 0, 0
  %t6 = insertvalue [3 x i16] %t5, i16 0, 1
  %t7 = insertvalue [3 x i16] %t6, i16 0, 2
  %t10 = insertvalue %"<stdlib.h>:drand48_data" undef, [3 x i16] %t3, 0
  %t12 = insertvalue %"<stdlib.h>:drand48_data" %t10, [3 x i16] %t7, 1
  %t14 = insertvalue %"<stdlib.h>:drand48_data" %t12, i16 0, 2
  %t16 = insertvalue %"<stdlib.h>:drand48_data" %t14, i16 0, 3
  %t18 = insertvalue %"<stdlib.h>:drand48_data" %t16, i64 0, 4
  store %"<stdlib.h>:drand48_data" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:drand48_data", ptr %rv
  ret %"<stdlib.h>:drand48_data" %rr
}

define dso_local %"<stdlib.h>:fd_set" @_3cstdlib_2eh_3e_3afd__set_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:fd_set"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [16 x i64] undef, i64 0, 0
  %t2 = insertvalue [16 x i64] %t1, i64 0, 1
  %t3 = insertvalue [16 x i64] %t2, i64 0, 2
  %t4 = insertvalue [16 x i64] %t3, i64 0, 3
  %t5 = insertvalue [16 x i64] %t4, i64 0, 4
  %t6 = insertvalue [16 x i64] %t5, i64 0, 5
  %t7 = insertvalue [16 x i64] %t6, i64 0, 6
  %t8 = insertvalue [16 x i64] %t7, i64 0, 7
  %t9 = insertvalue [16 x i64] %t8, i64 0, 8
  %t10 = insertvalue [16 x i64] %t9, i64 0, 9
  %t11 = insertvalue [16 x i64] %t10, i64 0, 10
  %t12 = insertvalue [16 x i64] %t11, i64 0, 11
  %t13 = insertvalue [16 x i64] %t12, i64 0, 12
  %t14 = insertvalue [16 x i64] %t13, i64 0, 13
  %t15 = insertvalue [16 x i64] %t14, i64 0, 14
  %t16 = insertvalue [16 x i64] %t15, i64 0, 15
  %t19 = insertvalue %"<stdlib.h>:fd_set" undef, [16 x i64] %t16, 0
  store %"<stdlib.h>:fd_set" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:fd_set", ptr %rv
  ret %"<stdlib.h>:fd_set" %rr
}

define dso_local %"<stdlib.h>:ldiv_t" @_3cstdlib_2eh_3e_3aldiv__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:ldiv_t"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<stdlib.h>:ldiv_t" undef, i64 0, 0
  %t4 = insertvalue %"<stdlib.h>:ldiv_t" %t2, i64 0, 1
  store %"<stdlib.h>:ldiv_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:ldiv_t", ptr %rv
  ret %"<stdlib.h>:ldiv_t" %rr
}

define dso_local %"<stdlib.h>:lldiv_t" @_3cstdlib_2eh_3e_3alldiv__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:lldiv_t"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<stdlib.h>:lldiv_t" undef, i64 0, 0
  %t4 = insertvalue %"<stdlib.h>:lldiv_t" %t2, i64 0, 1
  store %"<stdlib.h>:lldiv_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:lldiv_t", ptr %rv
  ret %"<stdlib.h>:lldiv_t" %rr
}

define dso_local %"<stdlib.h>:pthread_attr_t" @_3cstdlib_2eh_3e_3apthread__attr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:pthread_attr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [7 x i64] undef, i64 0, 0
  %t2 = insertvalue [7 x i64] %t1, i64 0, 1
  %t3 = insertvalue [7 x i64] %t2, i64 0, 2
  %t4 = insertvalue [7 x i64] %t3, i64 0, 3
  %t5 = insertvalue [7 x i64] %t4, i64 0, 4
  %t6 = insertvalue [7 x i64] %t5, i64 0, 5
  %t7 = insertvalue [7 x i64] %t6, i64 0, 6
  %t10 = insertvalue %"<stdlib.h>:pthread_attr_t" undef, [7 x i64] %t7, 0
  store %"<stdlib.h>:pthread_attr_t" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:pthread_attr_t", ptr %rv
  ret %"<stdlib.h>:pthread_attr_t" %rr
}

define dso_local %"<stdlib.h>:pthread_barrier_t" @_3cstdlib_2eh_3e_3apthread__barrier__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:pthread_barrier_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i64] undef, i64 0, 0
  %t2 = insertvalue [4 x i64] %t1, i64 0, 1
  %t3 = insertvalue [4 x i64] %t2, i64 0, 2
  %t4 = insertvalue [4 x i64] %t3, i64 0, 3
  %t7 = insertvalue %"<stdlib.h>:pthread_barrier_t" undef, [4 x i64] %t4, 0
  store %"<stdlib.h>:pthread_barrier_t" %t7, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:pthread_barrier_t", ptr %rv
  ret %"<stdlib.h>:pthread_barrier_t" %rr
}

define dso_local %"<stdlib.h>:pthread_barrierattr_t" @_3cstdlib_2eh_3e_3apthread__barrierattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:pthread_barrierattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<stdlib.h>:pthread_barrierattr_t" undef, [1 x i32] %t1, 0
  store %"<stdlib.h>:pthread_barrierattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:pthread_barrierattr_t", ptr %rv
  ret %"<stdlib.h>:pthread_barrierattr_t" %rr
}

define dso_local %"<stdlib.h>:pthread_cond_t" @_3cstdlib_2eh_3e_3apthread__cond__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:pthread_cond_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [6 x i64] undef, i64 0, 0
  %t2 = insertvalue [6 x i64] %t1, i64 0, 1
  %t3 = insertvalue [6 x i64] %t2, i64 0, 2
  %t4 = insertvalue [6 x i64] %t3, i64 0, 3
  %t5 = insertvalue [6 x i64] %t4, i64 0, 4
  %t6 = insertvalue [6 x i64] %t5, i64 0, 5
  %t9 = insertvalue %"<stdlib.h>:pthread_cond_t" undef, [6 x i64] %t6, 0
  store %"<stdlib.h>:pthread_cond_t" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:pthread_cond_t", ptr %rv
  ret %"<stdlib.h>:pthread_cond_t" %rr
}

define dso_local %"<stdlib.h>:pthread_condattr_t" @_3cstdlib_2eh_3e_3apthread__condattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:pthread_condattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<stdlib.h>:pthread_condattr_t" undef, [1 x i32] %t1, 0
  store %"<stdlib.h>:pthread_condattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:pthread_condattr_t", ptr %rv
  ret %"<stdlib.h>:pthread_condattr_t" %rr
}

define dso_local %"<stdlib.h>:pthread_mutex_t" @_3cstdlib_2eh_3e_3apthread__mutex__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:pthread_mutex_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [5 x i64] undef, i64 0, 0
  %t2 = insertvalue [5 x i64] %t1, i64 0, 1
  %t3 = insertvalue [5 x i64] %t2, i64 0, 2
  %t4 = insertvalue [5 x i64] %t3, i64 0, 3
  %t5 = insertvalue [5 x i64] %t4, i64 0, 4
  %t8 = insertvalue %"<stdlib.h>:pthread_mutex_t" undef, [5 x i64] %t5, 0
  store %"<stdlib.h>:pthread_mutex_t" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:pthread_mutex_t", ptr %rv
  ret %"<stdlib.h>:pthread_mutex_t" %rr
}

define dso_local %"<stdlib.h>:pthread_mutexattr_t" @_3cstdlib_2eh_3e_3apthread__mutexattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:pthread_mutexattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<stdlib.h>:pthread_mutexattr_t" undef, [1 x i32] %t1, 0
  store %"<stdlib.h>:pthread_mutexattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:pthread_mutexattr_t", ptr %rv
  ret %"<stdlib.h>:pthread_mutexattr_t" %rr
}

define dso_local %"<stdlib.h>:pthread_rwlock_t" @_3cstdlib_2eh_3e_3apthread__rwlock__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:pthread_rwlock_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [7 x i64] undef, i64 0, 0
  %t2 = insertvalue [7 x i64] %t1, i64 0, 1
  %t3 = insertvalue [7 x i64] %t2, i64 0, 2
  %t4 = insertvalue [7 x i64] %t3, i64 0, 3
  %t5 = insertvalue [7 x i64] %t4, i64 0, 4
  %t6 = insertvalue [7 x i64] %t5, i64 0, 5
  %t7 = insertvalue [7 x i64] %t6, i64 0, 6
  %t10 = insertvalue %"<stdlib.h>:pthread_rwlock_t" undef, [7 x i64] %t7, 0
  store %"<stdlib.h>:pthread_rwlock_t" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:pthread_rwlock_t", ptr %rv
  ret %"<stdlib.h>:pthread_rwlock_t" %rr
}

define dso_local %"<stdlib.h>:pthread_rwlockattr_t" @_3cstdlib_2eh_3e_3apthread__rwlockattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:pthread_rwlockattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i64] undef, i64 0, 0
  %t4 = insertvalue %"<stdlib.h>:pthread_rwlockattr_t" undef, [1 x i64] %t1, 0
  store %"<stdlib.h>:pthread_rwlockattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:pthread_rwlockattr_t", ptr %rv
  ret %"<stdlib.h>:pthread_rwlockattr_t" %rr
}

define dso_local %"<stdlib.h>:random_data" @_3cstdlib_2eh_3e_3arandom__data_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:random_data"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<stdlib.h>:random_data" undef, ptr null, 0
  %t4 = insertvalue %"<stdlib.h>:random_data" %t2, ptr null, 1
  %t6 = insertvalue %"<stdlib.h>:random_data" %t4, ptr null, 2
  %t8 = insertvalue %"<stdlib.h>:random_data" %t6, i32 0, 3
  %t10 = insertvalue %"<stdlib.h>:random_data" %t8, i32 0, 4
  %t12 = insertvalue %"<stdlib.h>:random_data" %t10, i32 0, 5
  %t14 = insertvalue %"<stdlib.h>:random_data" %t12, ptr null, 6
  store %"<stdlib.h>:random_data" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:random_data", ptr %rv
  ret %"<stdlib.h>:random_data" %rr
}

define dso_local %"<stdlib.h>:timespec" @_3cstdlib_2eh_3e_3atimespec_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<stdlib.h>:timespec" undef, i64 0, 0
  %t4 = insertvalue %"<stdlib.h>:timespec" %t2, i64 0, 1
  store %"<stdlib.h>:timespec" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:timespec", ptr %rv
  ret %"<stdlib.h>:timespec" %rr
}

define dso_local %"<stdlib.h>:timeval" @_3cstdlib_2eh_3e_3atimeval_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<stdlib.h>:timeval"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<stdlib.h>:timeval" undef, i64 0, 0
  %t4 = insertvalue %"<stdlib.h>:timeval" %t2, i64 0, 1
  store %"<stdlib.h>:timeval" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<stdlib.h>:timeval", ptr %rv
  ret %"<stdlib.h>:timeval" %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)

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
