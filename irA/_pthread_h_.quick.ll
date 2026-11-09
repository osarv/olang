source_filename = "_pthread_h_.quick.ll"
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
%"<pthread.h>:_pthread_cleanup_buffer" = type { ptr, ptr, i32, ptr }
%"<pthread.h>:c___atomic_wide_counter" = type { [1 x i64] }
%"<pthread.h>:c___cancel_jmp_buf_tag" = type { [8 x i64], i32 }
%"<pthread.h>:c___locale_struct" = type { [13 x ptr], ptr, ptr, ptr, [13 x ptr] }
%"<pthread.h>:c___pthread_internal_list" = type { ptr, ptr }
%"<pthread.h>:c___pthread_internal_slist" = type { ptr }
%"<pthread.h>:c___sigset_t" = type { [16 x i64] }
%"<pthread.h>:itimerspec" = type { %"<pthread.h>:timespec", %"<pthread.h>:timespec" }
%"<pthread.h>:timespec" = type { i64, i64 }
%"<pthread.h>:pthread_attr_t" = type { [7 x i64] }
%"<pthread.h>:pthread_barrier_t" = type { [4 x i64] }
%"<pthread.h>:pthread_barrierattr_t" = type { [1 x i32] }
%"<pthread.h>:pthread_cond_t" = type { [6 x i64] }
%"<pthread.h>:pthread_condattr_t" = type { [1 x i32] }
%"<pthread.h>:pthread_mutex_t" = type { [5 x i64] }
%"<pthread.h>:pthread_mutexattr_t" = type { [1 x i32] }
%"<pthread.h>:pthread_rwlock_t" = type { [7 x i64] }
%"<pthread.h>:pthread_rwlockattr_t" = type { [1 x i64] }
%"<pthread.h>:sched_param" = type { i32 }
%"<pthread.h>:timeval" = type { i64, i64 }
%"<pthread.h>:timex" = type { [26 x i64] }
@G_2e_3cpthread_2eh_3e_2eADJ__ESTERROR = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eADJ__FREQUENCY = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eADJ__MAXERROR = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eADJ__MICRO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eADJ__NANO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eADJ__OFFSET = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eADJ__OFFSET__SINGLESHOT = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\80\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eADJ__OFFSET__SS__READ = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\A0\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eADJ__SETOFFSET = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eADJ__STATUS = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eADJ__TAI = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eADJ__TICK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eADJ__TIMECONST = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLOCKS__PER__SEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\42\0F\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLOCK__BOOTTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLOCK__BOOTTIME__ALARM = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLOCK__MONOTONIC = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLOCK__MONOTONIC__COARSE = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLOCK__MONOTONIC__RAW = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLOCK__PROCESS__CPUTIME__ID = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLOCK__REALTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLOCK__REALTIME__ALARM = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLOCK__REALTIME__COARSE = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLOCK__TAI = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLOCK__THREAD__CPUTIME__ID = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__CHILD__CLEARTID = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\20\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__CHILD__SETTID = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\01" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__DETACHED = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\40\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__FILES = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__FS = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__IO = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\80\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__NEWCGROUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\02" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__NEWIPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\08" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__NEWNET = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\40" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__NEWNS = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\02\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__NEWPID = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\20" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__NEWTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__NEWUSER = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\10" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__NEWUTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\04" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__PARENT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\80\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__PARENT__SETTID = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\10\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__PIDFD = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__PTRACE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__SETTLS = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\08\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__SIGHAND = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__SYSVSEM = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\04\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__THREAD = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\01\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__UNTRACED = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\80\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__VFORK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCLONE__VM = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCPU__SETSIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eCSIGNAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eMOD__CLKA = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\80\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eMOD__CLKB = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eMOD__ESTERROR = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eMOD__FREQUENCY = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eMOD__MAXERROR = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eMOD__MICRO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eMOD__NANO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eMOD__OFFSET = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eMOD__STATUS = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eMOD__TAI = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eMOD__TIMECONST = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__ATTR__NO__SIGMASK__NP = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__BARRIER__SERIAL__THREAD = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__CANCEL__ASYNCHRONOUS = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__CANCEL__DEFERRED = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__CANCEL__DISABLE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__CANCEL__ENABLE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__CREATE__DETACHED = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__CREATE__JOINABLE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__EXPLICIT__SCHED = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__INHERIT__SCHED = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__ADAPTIVE__NP = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__DEFAULT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__ERRORCHECK = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__ERRORCHECK__NP = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__FAST__NP = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__NORMAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__RECURSIVE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__RECURSIVE__NP = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__ROBUST = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__ROBUST__NP = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__STALLED = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__STALLED__NP = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__MUTEX__TIMED__NP = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__ONCE__INIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__PRIO__INHERIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__PRIO__NONE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__PRIO__PROTECT = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__PROCESS__PRIVATE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__PROCESS__SHARED = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__RWLOCK__DEFAULT__NP = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__RWLOCK__PREFER__READER__NP = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__RWLOCK__PREFER__WRITER__NONRECURSIVE__NP = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__RWLOCK__PREFER__WRITER__NP = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__SCOPE__PROCESS = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2ePTHREAD__SCOPE__SYSTEM = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSCHED__BATCH = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSCHED__DEADLINE = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSCHED__FIFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSCHED__IDLE = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSCHED__ISO = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSCHED__OTHER = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSCHED__RESET__ON__FORK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\40" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSCHED__RR = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__CLK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\80\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__CLOCKERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__DEL = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__FLL = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__FREQHOLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__INS = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__MODE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__NANO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__PLL = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__PPSERROR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__PPSFREQ = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__PPSJITTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__PPSSIGNAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__PPSTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__PPSWANDER = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__RONLY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\FF\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eSTA__UNSYNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eTIMER__ABSTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpthread_2eh_3e_2eTIME__UTC = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
define dso_local %"<pthread.h>:_pthread_cleanup_buffer" @_3cpthread_2eh_3e_3a__pthread__cleanup__buffer_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:_pthread_cleanup_buffer"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<pthread.h>:_pthread_cleanup_buffer" undef, ptr null, 0
  %t4 = insertvalue %"<pthread.h>:_pthread_cleanup_buffer" %t2, ptr null, 1
  %t6 = insertvalue %"<pthread.h>:_pthread_cleanup_buffer" %t4, i32 0, 2
  %t8 = insertvalue %"<pthread.h>:_pthread_cleanup_buffer" %t6, ptr null, 3
  store %"<pthread.h>:_pthread_cleanup_buffer" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:_pthread_cleanup_buffer", ptr %rv
  ret %"<pthread.h>:_pthread_cleanup_buffer" %rr
}

define dso_local %"<pthread.h>:c___atomic_wide_counter" @_3cpthread_2eh_3e_3ac______atomic__wide__counter_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:c___atomic_wide_counter"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i64] undef, i64 0, 0
  %t4 = insertvalue %"<pthread.h>:c___atomic_wide_counter" undef, [1 x i64] %t1, 0
  store %"<pthread.h>:c___atomic_wide_counter" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:c___atomic_wide_counter", ptr %rv
  ret %"<pthread.h>:c___atomic_wide_counter" %rr
}

define dso_local %"<pthread.h>:c___cancel_jmp_buf_tag" @_3cpthread_2eh_3e_3ac______cancel__jmp__buf__tag_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:c___cancel_jmp_buf_tag"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [8 x i64] undef, i64 0, 0
  %t2 = insertvalue [8 x i64] %t1, i64 0, 1
  %t3 = insertvalue [8 x i64] %t2, i64 0, 2
  %t4 = insertvalue [8 x i64] %t3, i64 0, 3
  %t5 = insertvalue [8 x i64] %t4, i64 0, 4
  %t6 = insertvalue [8 x i64] %t5, i64 0, 5
  %t7 = insertvalue [8 x i64] %t6, i64 0, 6
  %t8 = insertvalue [8 x i64] %t7, i64 0, 7
  %t11 = insertvalue %"<pthread.h>:c___cancel_jmp_buf_tag" undef, [8 x i64] %t8, 0
  %t13 = insertvalue %"<pthread.h>:c___cancel_jmp_buf_tag" %t11, i32 0, 1
  store %"<pthread.h>:c___cancel_jmp_buf_tag" %t13, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:c___cancel_jmp_buf_tag", ptr %rv
  ret %"<pthread.h>:c___cancel_jmp_buf_tag" %rr
}

define dso_local void @_3cpthread_2eh_3e_3ac______locale__struct_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l7 = alloca %"<pthread.h>:c___locale_struct"
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
  %t29 = getelementptr %"<pthread.h>:c___locale_struct", ptr %l7, i32 0, i32 0
  store [13 x ptr] %t13, ptr %t29
  %t31 = getelementptr %"<pthread.h>:c___locale_struct", ptr %l7, i32 0, i32 1
  store ptr null, ptr %t31, !tbaa !29
  %t33 = getelementptr %"<pthread.h>:c___locale_struct", ptr %l7, i32 0, i32 2
  store ptr null, ptr %t33, !tbaa !29
  %t35 = getelementptr %"<pthread.h>:c___locale_struct", ptr %l7, i32 0, i32 3
  store ptr null, ptr %t35, !tbaa !29
  %t37 = getelementptr %"<pthread.h>:c___locale_struct", ptr %l7, i32 0, i32 4
  store [13 x ptr] %t27, ptr %t37
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l7, i64 232, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"<pthread.h>:c___pthread_internal_list" @_3cpthread_2eh_3e_3ac______pthread__internal__list_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:c___pthread_internal_list"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<pthread.h>:c___pthread_internal_list" undef, ptr null, 0
  %t4 = insertvalue %"<pthread.h>:c___pthread_internal_list" %t2, ptr null, 1
  store %"<pthread.h>:c___pthread_internal_list" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:c___pthread_internal_list", ptr %rv
  ret %"<pthread.h>:c___pthread_internal_list" %rr
}

define dso_local %"<pthread.h>:c___pthread_internal_slist" @_3cpthread_2eh_3e_3ac______pthread__internal__slist_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:c___pthread_internal_slist"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<pthread.h>:c___pthread_internal_slist" undef, ptr null, 0
  store %"<pthread.h>:c___pthread_internal_slist" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:c___pthread_internal_slist", ptr %rv
  ret %"<pthread.h>:c___pthread_internal_slist" %rr
}

define dso_local %"<pthread.h>:c___sigset_t" @_3cpthread_2eh_3e_3ac______sigset__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:c___sigset_t"
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
  %t19 = insertvalue %"<pthread.h>:c___sigset_t" undef, [16 x i64] %t16, 0
  store %"<pthread.h>:c___sigset_t" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:c___sigset_t", ptr %rv
  ret %"<pthread.h>:c___sigset_t" %rr
}

define dso_local %"<pthread.h>:itimerspec" @_3cpthread_2eh_3e_3aitimerspec_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"<pthread.h>:timespec"
  %l2 = alloca %"<pthread.h>:timespec"
  %l3 = alloca %"<pthread.h>:timespec"
  %rv = alloca %"<pthread.h>:itimerspec"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"<pthread.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3cpthread_2eh_3e_3atimespec()
  store %"<pthread.h>:timespec" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"<pthread.h>:timespec", ptr %l2
  store %"<pthread.h>:timespec" %t2, ptr %l0
  %t3 = call %"<pthread.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3cpthread_2eh_3e_3atimespec()
  store %"<pthread.h>:timespec" %t3, ptr %l3
  br label %bb2
bb2:
  %t4 = load %"<pthread.h>:timespec", ptr %l3
  %t5 = load %"<pthread.h>:timespec", ptr %l0
  %t6 = insertvalue %"<pthread.h>:itimerspec" undef, %"<pthread.h>:timespec" %t5, 0
  %t8 = insertvalue %"<pthread.h>:itimerspec" %t6, %"<pthread.h>:timespec" %t4, 1
  store %"<pthread.h>:itimerspec" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:itimerspec", ptr %rv
  ret %"<pthread.h>:itimerspec" %rr
}

define dso_local %"<pthread.h>:pthread_attr_t" @_3cpthread_2eh_3e_3apthread__attr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:pthread_attr_t"
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
  %t10 = insertvalue %"<pthread.h>:pthread_attr_t" undef, [7 x i64] %t7, 0
  store %"<pthread.h>:pthread_attr_t" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:pthread_attr_t", ptr %rv
  ret %"<pthread.h>:pthread_attr_t" %rr
}

define dso_local %"<pthread.h>:pthread_barrier_t" @_3cpthread_2eh_3e_3apthread__barrier__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:pthread_barrier_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i64] undef, i64 0, 0
  %t2 = insertvalue [4 x i64] %t1, i64 0, 1
  %t3 = insertvalue [4 x i64] %t2, i64 0, 2
  %t4 = insertvalue [4 x i64] %t3, i64 0, 3
  %t7 = insertvalue %"<pthread.h>:pthread_barrier_t" undef, [4 x i64] %t4, 0
  store %"<pthread.h>:pthread_barrier_t" %t7, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:pthread_barrier_t", ptr %rv
  ret %"<pthread.h>:pthread_barrier_t" %rr
}

define dso_local %"<pthread.h>:pthread_barrierattr_t" @_3cpthread_2eh_3e_3apthread__barrierattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:pthread_barrierattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<pthread.h>:pthread_barrierattr_t" undef, [1 x i32] %t1, 0
  store %"<pthread.h>:pthread_barrierattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:pthread_barrierattr_t", ptr %rv
  ret %"<pthread.h>:pthread_barrierattr_t" %rr
}

define dso_local %"<pthread.h>:pthread_cond_t" @_3cpthread_2eh_3e_3apthread__cond__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:pthread_cond_t"
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
  %t9 = insertvalue %"<pthread.h>:pthread_cond_t" undef, [6 x i64] %t6, 0
  store %"<pthread.h>:pthread_cond_t" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:pthread_cond_t", ptr %rv
  ret %"<pthread.h>:pthread_cond_t" %rr
}

define dso_local %"<pthread.h>:pthread_condattr_t" @_3cpthread_2eh_3e_3apthread__condattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:pthread_condattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<pthread.h>:pthread_condattr_t" undef, [1 x i32] %t1, 0
  store %"<pthread.h>:pthread_condattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:pthread_condattr_t", ptr %rv
  ret %"<pthread.h>:pthread_condattr_t" %rr
}

define dso_local %"<pthread.h>:pthread_mutex_t" @_3cpthread_2eh_3e_3apthread__mutex__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:pthread_mutex_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [5 x i64] undef, i64 0, 0
  %t2 = insertvalue [5 x i64] %t1, i64 0, 1
  %t3 = insertvalue [5 x i64] %t2, i64 0, 2
  %t4 = insertvalue [5 x i64] %t3, i64 0, 3
  %t5 = insertvalue [5 x i64] %t4, i64 0, 4
  %t8 = insertvalue %"<pthread.h>:pthread_mutex_t" undef, [5 x i64] %t5, 0
  store %"<pthread.h>:pthread_mutex_t" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:pthread_mutex_t", ptr %rv
  ret %"<pthread.h>:pthread_mutex_t" %rr
}

define dso_local %"<pthread.h>:pthread_mutexattr_t" @_3cpthread_2eh_3e_3apthread__mutexattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:pthread_mutexattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<pthread.h>:pthread_mutexattr_t" undef, [1 x i32] %t1, 0
  store %"<pthread.h>:pthread_mutexattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:pthread_mutexattr_t", ptr %rv
  ret %"<pthread.h>:pthread_mutexattr_t" %rr
}

define dso_local %"<pthread.h>:pthread_rwlock_t" @_3cpthread_2eh_3e_3apthread__rwlock__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:pthread_rwlock_t"
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
  %t10 = insertvalue %"<pthread.h>:pthread_rwlock_t" undef, [7 x i64] %t7, 0
  store %"<pthread.h>:pthread_rwlock_t" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:pthread_rwlock_t", ptr %rv
  ret %"<pthread.h>:pthread_rwlock_t" %rr
}

define dso_local %"<pthread.h>:pthread_rwlockattr_t" @_3cpthread_2eh_3e_3apthread__rwlockattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:pthread_rwlockattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i64] undef, i64 0, 0
  %t4 = insertvalue %"<pthread.h>:pthread_rwlockattr_t" undef, [1 x i64] %t1, 0
  store %"<pthread.h>:pthread_rwlockattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:pthread_rwlockattr_t", ptr %rv
  ret %"<pthread.h>:pthread_rwlockattr_t" %rr
}

define dso_local %"<pthread.h>:sched_param" @_3cpthread_2eh_3e_3asched__param_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:sched_param"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<pthread.h>:sched_param" undef, i32 0, 0
  store %"<pthread.h>:sched_param" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:sched_param", ptr %rv
  ret %"<pthread.h>:sched_param" %rr
}

define dso_local %"<pthread.h>:timespec" @_3cpthread_2eh_3e_3atimespec_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<pthread.h>:timespec" undef, i64 0, 0
  %t4 = insertvalue %"<pthread.h>:timespec" %t2, i64 0, 1
  store %"<pthread.h>:timespec" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:timespec", ptr %rv
  ret %"<pthread.h>:timespec" %rr
}

define dso_local %"<pthread.h>:timeval" @_3cpthread_2eh_3e_3atimeval_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<pthread.h>:timeval"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<pthread.h>:timeval" undef, i64 0, 0
  %t4 = insertvalue %"<pthread.h>:timeval" %t2, i64 0, 1
  store %"<pthread.h>:timeval" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:timeval", ptr %rv
  ret %"<pthread.h>:timeval" %rr
}

define dso_local void @_3cpthread_2eh_3e_3atimex_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca [26 x i64]
  %l1 = alloca [26 x i64]
  %l2 = alloca %"<pthread.h>:timex"
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
  %t9 = getelementptr %"<pthread.h>:timex", ptr %l2, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %t9, ptr %l0, i64 208, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l2, i64 208, i1 false)
  br label %ret
ret:
  ret void
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr %"<pthread.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3cpthread_2eh_3e_3atimespec() #0 {
entry:
  %l0 = alloca %"<pthread.h>:timespec"
  %rv = alloca %"<pthread.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<pthread.h>:timespec" @_3cpthread_2eh_3e_3atimespec_2ector(ptr %t1)
  store %"<pthread.h>:timespec" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<pthread.h>:timespec", ptr %l0
  store %"<pthread.h>:timespec" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<pthread.h>:timespec", ptr %rv
  ret %"<pthread.h>:timespec" %rr
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
