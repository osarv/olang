source_filename = "_sys_wait_h_.quick.ll"
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
%"<sys/wait.h>:_fpreg" = type { [4 x i16], i16 }
%"<sys/wait.h>:_fpxreg" = type { [4 x i16], i16, [3 x i16] }
%"<sys/wait.h>:_xmmreg" = type { [4 x i32] }
%"<sys/wait.h>:_fpstate" = type { i16, i16, i16, i16, i64, i64, i32, i32, [8 x %"<sys/wait.h>:_fpxreg"], [16 x %"<sys/wait.h>:_xmmreg"], [24 x i32] }
%"<sys/wait.h>:_fpx_sw_bytes" = type { i32, i32, i64, i32, [7 x i32] }
%"<sys/wait.h>:_libc_fpxreg" = type { [4 x i16], i16, [3 x i16] }
%"<sys/wait.h>:_libc_xmmreg" = type { [4 x i32] }
%"<sys/wait.h>:_libc_fpstate" = type { i16, i16, i16, i16, i64, i64, i32, i32, [8 x %"<sys/wait.h>:_libc_fpxreg"], [16 x %"<sys/wait.h>:_libc_xmmreg"], [24 x i32] }
%"<sys/wait.h>:_xsave_hdr" = type { i64, [2 x i64], [5 x i64] }
%"<sys/wait.h>:_ymmh_state" = type { [64 x i32] }
%"<sys/wait.h>:_xstate" = type { %"<sys/wait.h>:_fpstate", %"<sys/wait.h>:_xsave_hdr", %"<sys/wait.h>:_ymmh_state" }
%"<sys/wait.h>:c___atomic_wide_counter" = type { [1 x i64] }
%"<sys/wait.h>:c___pthread_internal_list" = type { ptr, ptr }
%"<sys/wait.h>:c___pthread_internal_slist" = type { ptr }
%"<sys/wait.h>:c___sigset_t" = type { [16 x i64] }
%"<sys/wait.h>:mcontext_t" = type { [23 x i64], ptr, [8 x i64] }
%"<sys/wait.h>:pthread_attr_t" = type { [7 x i64] }
%"<sys/wait.h>:pthread_barrier_t" = type { [4 x i64] }
%"<sys/wait.h>:pthread_barrierattr_t" = type { [1 x i32] }
%"<sys/wait.h>:pthread_cond_t" = type { [6 x i64] }
%"<sys/wait.h>:pthread_condattr_t" = type { [1 x i32] }
%"<sys/wait.h>:pthread_mutex_t" = type { [5 x i64] }
%"<sys/wait.h>:pthread_mutexattr_t" = type { [1 x i32] }
%"<sys/wait.h>:pthread_rwlock_t" = type { [7 x i64] }
%"<sys/wait.h>:pthread_rwlockattr_t" = type { [1 x i64] }
%"<sys/wait.h>:sigaction_t" = type { [19 x i64] }
%"<sys/wait.h>:sigcontext" = type { [32 x i64] }
%"<sys/wait.h>:sigevent_t" = type { [8 x i64] }
%"<sys/wait.h>:siginfo_t" = type { [16 x i64] }
%"<sys/wait.h>:sigstack_t" = type { ptr, i32 }
%"<sys/wait.h>:sigval" = type { [1 x i64] }
%"<sys/wait.h>:stack_t" = type { ptr, i32, i64 }
%"<sys/wait.h>:timespec" = type { i64, i64 }
%"<sys/wait.h>:ucontext_t" = type { i64, ptr, %"<sys/wait.h>:stack_t", %"<sys/wait.h>:mcontext_t", %"<sys/wait.h>:c___sigset_t", %"<sys/wait.h>:_libc_fpstate", [4 x i64] }
@G_2e_3csys_2fwait_2eh_3e_2eBUS__ADRALN = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eBUS__ADRERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eBUS__MCEERR__AO = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eBUS__MCEERR__AR = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eBUS__OBJERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eCLD__CONTINUED = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eCLD__DUMPED = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eCLD__EXITED = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eCLD__KILLED = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eCLD__STOPPED = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eCLD__TRAPPED = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eCLOSE__RANGE__CLOEXEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eCLOSE__RANGE__UNSHARE = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFPE__CONDTRAP = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFPE__FLTDIV = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFPE__FLTINV = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFPE__FLTOVF = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFPE__FLTRES = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFPE__FLTSUB = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFPE__FLTUND = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFPE__FLTUNK = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFPE__INTDIV = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFPE__INTOVF = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFP__XSTATE__MAGIC1 = constant <{ [4 x i8] }> <{ [4 x i8] c"\53\58\50\46" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFP__XSTATE__MAGIC2 = constant <{ [4 x i8] }> <{ [4 x i8] c"\45\58\50\46" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eFP__XSTATE__MAGIC2__SIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eF__LOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eF__OK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eF__TEST = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eF__TLOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eF__ULOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eILL__BADIADDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eILL__BADSTK = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eILL__COPROC = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eILL__ILLADR = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eILL__ILLOPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eILL__ILLOPN = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eILL__ILLTRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eILL__PRVOPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eILL__PRVREG = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eL__INCR = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eL__SET = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eL__XTND = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eNGREG = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eNSIG = constant <{ [4 x i8] }> <{ [4 x i8] c"\41\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2ePOLL__ERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2ePOLL__HUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2ePOLL__IN = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2ePOLL__MSG = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2ePOLL__OUT = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2ePOLL__PRI = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eP__ALL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eP__PGID = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eP__PID = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eP__PIDFD = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__CR2 = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__CSGSFS = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__EFL = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__ERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__OLDMASK = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__R10 = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__R11 = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__R12 = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__R13 = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__R14 = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__R15 = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__R8 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__R9 = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__RAX = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__RBP = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__RBX = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__RCX = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__RDI = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__RDX = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__RIP = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__RSI = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__RSP = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eREG__TRAPNO = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eR__OK = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSA__INTERRUPT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\20" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSA__NOCLDSTOP = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSA__NOCLDWAIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSA__NODEFER = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\40" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSA__NOMASK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\40" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSA__ONESHOT = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\80\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSA__ONSTACK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\08" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSA__RESETHAND = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\80\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSA__RESTART = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\10" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSA__SIGINFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSA__STACK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\08" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEEK__CUR = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEEK__DATA = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEEK__END = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEEK__HOLE = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEEK__SET = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEGV__ACCADI = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEGV__ACCERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEGV__ADIDERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEGV__ADIPERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEGV__BNDERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEGV__CPERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEGV__MAPERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEGV__MTEAERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEGV__MTESERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSEGV__PKUERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGABRT = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGALRM = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGBUS = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGCHLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGCLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGCONT = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGEV__NONE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGEV__SIGNAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGEV__THREAD = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGEV__THREAD__ID = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGFPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGHUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGILL = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGINT = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGIO = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGIOT = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGKILL = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGPIPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGPOLL = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGPROF = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGPWR = constant <{ [4 x i8] }> <{ [4 x i8] c"\1E\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGQUIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGSEGV = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGSTKFLT = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGSTOP = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGSYS = constant <{ [4 x i8] }> <{ [4 x i8] c"\1F\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGTERM = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGTRAP = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGTSTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGTTIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGTTOU = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGURG = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGUSR1 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGUSR2 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGVTALRM = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGWINCH = constant <{ [4 x i8] }> <{ [4 x i8] c"\1C\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGXCPU = constant <{ [4 x i8] }> <{ [4 x i8] c"\18\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIGXFSZ = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIG__BLOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIG__SETMASK = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSIG__UNBLOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSI__ASYNCIO = constant <{ [4 x i8] }> <{ [4 x i8] c"\FC\FF\FF\FF" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSI__ASYNCNL = constant <{ [4 x i8] }> <{ [4 x i8] c"\C4\FF\FF\FF" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSI__DETHREAD = constant <{ [4 x i8] }> <{ [4 x i8] c"\F9\FF\FF\FF" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSI__KERNEL = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSI__MESGQ = constant <{ [4 x i8] }> <{ [4 x i8] c"\FD\FF\FF\FF" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSI__QUEUE = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSI__SIGIO = constant <{ [4 x i8] }> <{ [4 x i8] c"\FB\FF\FF\FF" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSI__TIMER = constant <{ [4 x i8] }> <{ [4 x i8] c"\FE\FF\FF\FF" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSI__TKILL = constant <{ [4 x i8] }> <{ [4 x i8] c"\FA\FF\FF\FF" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSI__USER = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSS__DISABLE = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSS__ONSTACK = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSTDERR__FILENO = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSTDIN__FILENO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eSTDOUT__FILENO = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eTRAP__BRANCH = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eTRAP__BRKPT = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eTRAP__HWBKPT = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eTRAP__TRACE = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eTRAP__UNK = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eWAIT__ANY = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eWAIT__MYPGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eWCONTINUED = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eWCOREFLAG = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eWEXITED = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eWNOHANG = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eWNOWAIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\01" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eWSTOPPED = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eWUNTRACED = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eW__OK = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fwait_2eh_3e_2eX__OK = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
define dso_local %"<sys/wait.h>:_fpreg" @_3csys_2fwait_2eh_3e_3a__fpreg_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:_fpreg"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i16] undef, i16 0, 0
  %t2 = insertvalue [4 x i16] %t1, i16 0, 1
  %t3 = insertvalue [4 x i16] %t2, i16 0, 2
  %t4 = insertvalue [4 x i16] %t3, i16 0, 3
  %t7 = insertvalue %"<sys/wait.h>:_fpreg" undef, [4 x i16] %t4, 0
  %t9 = insertvalue %"<sys/wait.h>:_fpreg" %t7, i16 0, 1
  store %"<sys/wait.h>:_fpreg" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:_fpreg", ptr %rv
  ret %"<sys/wait.h>:_fpreg" %rr
}

define dso_local void @_3csys_2fwait_2eh_3e_3a__fpstate_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca i16
  %l1 = alloca i16
  %l2 = alloca i16
  %l3 = alloca i16
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca [8 x %"<sys/wait.h>:_fpxreg"]
  %l9 = alloca [16 x %"<sys/wait.h>:_xmmreg"]
  %l11 = alloca %"<sys/wait.h>:_fpxreg"
  %l13 = alloca %"<sys/wait.h>:_fpxreg"
  %l15 = alloca %"<sys/wait.h>:_xmmreg"
  %l17 = alloca %"<sys/wait.h>:_xmmreg"
  %l18 = alloca [16 x %"<sys/wait.h>:_xmmreg"]
  %l19 = alloca [24 x i32]
  %l20 = alloca %"<sys/wait.h>:_fpstate"
  br label %start
start:
  br label %bb0
bb0:
  store i16 0, ptr %l0, !tbaa !63
  store i16 0, ptr %l1, !tbaa !63
  store i16 0, ptr %l2, !tbaa !63
  store i16 0, ptr %l3, !tbaa !63
  store i64 0, ptr %l4, !tbaa !65
  store i64 0, ptr %l5, !tbaa !65
  store i32 0, ptr %l6, !tbaa !64
  store i32 0, ptr %l7, !tbaa !64
  store %"<sys/wait.h>:_fpxreg" zeroinitializer, ptr %l11
  %t1 = icmp sgt i64 8, 0
  br i1 %t1, label %bb1, label %bb2
bb1:
  %t3 = call %"<sys/wait.h>:_fpxreg" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__fpxreg()
  store %"<sys/wait.h>:_fpxreg" %t3, ptr %l13
  br label %bb3
bb2:
  %t4 = load %"<sys/wait.h>:_fpxreg", ptr %l11
  %t5 = insertvalue [8 x %"<sys/wait.h>:_fpxreg"] undef, %"<sys/wait.h>:_fpxreg" %t4, 0
  %t6 = load %"<sys/wait.h>:_fpxreg", ptr %l11
  %t7 = insertvalue [8 x %"<sys/wait.h>:_fpxreg"] %t5, %"<sys/wait.h>:_fpxreg" %t6, 1
  %t8 = load %"<sys/wait.h>:_fpxreg", ptr %l11
  %t9 = insertvalue [8 x %"<sys/wait.h>:_fpxreg"] %t7, %"<sys/wait.h>:_fpxreg" %t8, 2
  %t10 = load %"<sys/wait.h>:_fpxreg", ptr %l11
  %t11 = insertvalue [8 x %"<sys/wait.h>:_fpxreg"] %t9, %"<sys/wait.h>:_fpxreg" %t10, 3
  %t12 = load %"<sys/wait.h>:_fpxreg", ptr %l11
  %t13 = insertvalue [8 x %"<sys/wait.h>:_fpxreg"] %t11, %"<sys/wait.h>:_fpxreg" %t12, 4
  %t14 = load %"<sys/wait.h>:_fpxreg", ptr %l11
  %t15 = insertvalue [8 x %"<sys/wait.h>:_fpxreg"] %t13, %"<sys/wait.h>:_fpxreg" %t14, 5
  %t16 = load %"<sys/wait.h>:_fpxreg", ptr %l11
  %t17 = insertvalue [8 x %"<sys/wait.h>:_fpxreg"] %t15, %"<sys/wait.h>:_fpxreg" %t16, 6
  %t18 = load %"<sys/wait.h>:_fpxreg", ptr %l11
  %t19 = insertvalue [8 x %"<sys/wait.h>:_fpxreg"] %t17, %"<sys/wait.h>:_fpxreg" %t18, 7
  store [8 x %"<sys/wait.h>:_fpxreg"] %t19, ptr %l8
  store %"<sys/wait.h>:_xmmreg" zeroinitializer, ptr %l15
  %t21 = icmp sgt i64 16, 0
  br i1 %t21, label %bb4, label %bb5
bb3:
  %t23 = load %"<sys/wait.h>:_fpxreg", ptr %l13
  store %"<sys/wait.h>:_fpxreg" %t23, ptr %l11
  br label %bb2
bb4:
  %t24 = call %"<sys/wait.h>:_xmmreg" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__xmmreg()
  store %"<sys/wait.h>:_xmmreg" %t24, ptr %l17
  br label %bb6
bb5:
  %t25 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 0
  %t26 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t26, ptr %t25
  %t27 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 1
  %t28 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t28, ptr %t27
  %t29 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 2
  %t30 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t30, ptr %t29
  %t31 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 3
  %t32 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t32, ptr %t31
  %t33 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 4
  %t34 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t34, ptr %t33
  %t35 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 5
  %t36 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t36, ptr %t35
  %t37 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 6
  %t38 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t38, ptr %t37
  %t39 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 7
  %t40 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t40, ptr %t39
  %t41 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 8
  %t42 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t42, ptr %t41
  %t43 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 9
  %t44 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t44, ptr %t43
  %t45 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 10
  %t46 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t46, ptr %t45
  %t47 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 11
  %t48 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t48, ptr %t47
  %t49 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 12
  %t50 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t50, ptr %t49
  %t51 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 13
  %t52 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t52, ptr %t51
  %t53 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 14
  %t54 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t54, ptr %t53
  %t55 = getelementptr [16 x %"<sys/wait.h>:_xmmreg"], ptr %l18, i64 0, i64 15
  %t56 = load %"<sys/wait.h>:_xmmreg", ptr %l15
  store %"<sys/wait.h>:_xmmreg" %t56, ptr %t55
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l18, i64 256, i1 false)
  br label %fill.60
fill.60:
  br label %fill.57
fill.57:
  %t61 = phi i64 [ 0, %fill.60 ], [ %t62, %fill.58 ]
  %t63 = icmp slt i64 %t61, 24
  br i1 %t63, label %fill.58, label %fill.59
fill.58:
  %t64 = getelementptr [24 x i32], ptr %l19, i64 0, i64 %t61
  store i32 0, ptr %t64
  %t62 = add i64 %t61, 1
  br label %fill.57
fill.59:
  %t65 = load [24 x i32], ptr %l19
  %t66 = getelementptr %"<sys/wait.h>:_fpstate", ptr %l20, i32 0, i32 0
  %t67 = load i16, ptr %l0, !tbaa !63
  store i16 %t67, ptr %t66, !tbaa !63
  %t68 = getelementptr %"<sys/wait.h>:_fpstate", ptr %l20, i32 0, i32 1
  %t69 = load i16, ptr %l1, !tbaa !63
  store i16 %t69, ptr %t68, !tbaa !63
  %t70 = getelementptr %"<sys/wait.h>:_fpstate", ptr %l20, i32 0, i32 2
  %t71 = load i16, ptr %l2, !tbaa !63
  store i16 %t71, ptr %t70, !tbaa !63
  %t72 = getelementptr %"<sys/wait.h>:_fpstate", ptr %l20, i32 0, i32 3
  %t73 = load i16, ptr %l3, !tbaa !63
  store i16 %t73, ptr %t72, !tbaa !63
  %t74 = getelementptr %"<sys/wait.h>:_fpstate", ptr %l20, i32 0, i32 4
  %t75 = load i64, ptr %l4, !tbaa !65
  store i64 %t75, ptr %t74, !tbaa !65
  %t76 = getelementptr %"<sys/wait.h>:_fpstate", ptr %l20, i32 0, i32 5
  %t77 = load i64, ptr %l5, !tbaa !65
  store i64 %t77, ptr %t76, !tbaa !65
  %t78 = getelementptr %"<sys/wait.h>:_fpstate", ptr %l20, i32 0, i32 6
  %t79 = load i32, ptr %l6, !tbaa !64
  store i32 %t79, ptr %t78, !tbaa !64
  %t80 = getelementptr %"<sys/wait.h>:_fpstate", ptr %l20, i32 0, i32 7
  %t81 = load i32, ptr %l7, !tbaa !64
  store i32 %t81, ptr %t80, !tbaa !64
  %t82 = getelementptr %"<sys/wait.h>:_fpstate", ptr %l20, i32 0, i32 8
  %t83 = load [8 x %"<sys/wait.h>:_fpxreg"], ptr %l8
  store [8 x %"<sys/wait.h>:_fpxreg"] %t83, ptr %t82
  %t84 = getelementptr %"<sys/wait.h>:_fpstate", ptr %l20, i32 0, i32 9
  call void @llvm.memmove.p0.p0.i64(ptr %t84, ptr %l9, i64 256, i1 false)
  %t85 = getelementptr %"<sys/wait.h>:_fpstate", ptr %l20, i32 0, i32 10
  store [24 x i32] %t65, ptr %t85
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l20, i64 512, i1 false)
  br label %ret
bb6:
  %t87 = load %"<sys/wait.h>:_xmmreg", ptr %l17
  store %"<sys/wait.h>:_xmmreg" %t87, ptr %l15
  br label %bb5
ret:
  ret void
}

define dso_local %"<sys/wait.h>:_fpx_sw_bytes" @_3csys_2fwait_2eh_3e_3a__fpx__sw__bytes_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:_fpx_sw_bytes"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [7 x i32] undef, i32 0, 0
  %t2 = insertvalue [7 x i32] %t1, i32 0, 1
  %t3 = insertvalue [7 x i32] %t2, i32 0, 2
  %t4 = insertvalue [7 x i32] %t3, i32 0, 3
  %t5 = insertvalue [7 x i32] %t4, i32 0, 4
  %t6 = insertvalue [7 x i32] %t5, i32 0, 5
  %t7 = insertvalue [7 x i32] %t6, i32 0, 6
  %t10 = insertvalue %"<sys/wait.h>:_fpx_sw_bytes" undef, i32 0, 0
  %t12 = insertvalue %"<sys/wait.h>:_fpx_sw_bytes" %t10, i32 0, 1
  %t14 = insertvalue %"<sys/wait.h>:_fpx_sw_bytes" %t12, i64 0, 2
  %t16 = insertvalue %"<sys/wait.h>:_fpx_sw_bytes" %t14, i32 0, 3
  %t18 = insertvalue %"<sys/wait.h>:_fpx_sw_bytes" %t16, [7 x i32] %t7, 4
  store %"<sys/wait.h>:_fpx_sw_bytes" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:_fpx_sw_bytes", ptr %rv
  ret %"<sys/wait.h>:_fpx_sw_bytes" %rr
}

define dso_local %"<sys/wait.h>:_fpxreg" @_3csys_2fwait_2eh_3e_3a__fpxreg_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:_fpxreg"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i16] undef, i16 0, 0
  %t2 = insertvalue [4 x i16] %t1, i16 0, 1
  %t3 = insertvalue [4 x i16] %t2, i16 0, 2
  %t4 = insertvalue [4 x i16] %t3, i16 0, 3
  %t6 = insertvalue [3 x i16] undef, i16 0, 0
  %t7 = insertvalue [3 x i16] %t6, i16 0, 1
  %t8 = insertvalue [3 x i16] %t7, i16 0, 2
  %t11 = insertvalue %"<sys/wait.h>:_fpxreg" undef, [4 x i16] %t4, 0
  %t13 = insertvalue %"<sys/wait.h>:_fpxreg" %t11, i16 0, 1
  %t15 = insertvalue %"<sys/wait.h>:_fpxreg" %t13, [3 x i16] %t8, 2
  store %"<sys/wait.h>:_fpxreg" %t15, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:_fpxreg", ptr %rv
  ret %"<sys/wait.h>:_fpxreg" %rr
}

define dso_local void @_3csys_2fwait_2eh_3e_3a__libc__fpstate_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca i16
  %l1 = alloca i16
  %l2 = alloca i16
  %l3 = alloca i16
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca [8 x %"<sys/wait.h>:_libc_fpxreg"]
  %l9 = alloca [16 x %"<sys/wait.h>:_libc_xmmreg"]
  %l11 = alloca %"<sys/wait.h>:_libc_fpxreg"
  %l13 = alloca %"<sys/wait.h>:_libc_fpxreg"
  %l15 = alloca %"<sys/wait.h>:_libc_xmmreg"
  %l17 = alloca %"<sys/wait.h>:_libc_xmmreg"
  %l18 = alloca [16 x %"<sys/wait.h>:_libc_xmmreg"]
  %l19 = alloca [24 x i32]
  %l20 = alloca %"<sys/wait.h>:_libc_fpstate"
  br label %start
start:
  br label %bb0
bb0:
  store i16 0, ptr %l0, !tbaa !63
  store i16 0, ptr %l1, !tbaa !63
  store i16 0, ptr %l2, !tbaa !63
  store i16 0, ptr %l3, !tbaa !63
  store i64 0, ptr %l4, !tbaa !65
  store i64 0, ptr %l5, !tbaa !65
  store i32 0, ptr %l6, !tbaa !64
  store i32 0, ptr %l7, !tbaa !64
  store %"<sys/wait.h>:_libc_fpxreg" zeroinitializer, ptr %l11
  %t1 = icmp sgt i64 8, 0
  br i1 %t1, label %bb1, label %bb2
bb1:
  %t3 = call %"<sys/wait.h>:_libc_fpxreg" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__libc__fpxreg()
  store %"<sys/wait.h>:_libc_fpxreg" %t3, ptr %l13
  br label %bb3
bb2:
  %t4 = load %"<sys/wait.h>:_libc_fpxreg", ptr %l11
  %t5 = insertvalue [8 x %"<sys/wait.h>:_libc_fpxreg"] undef, %"<sys/wait.h>:_libc_fpxreg" %t4, 0
  %t6 = load %"<sys/wait.h>:_libc_fpxreg", ptr %l11
  %t7 = insertvalue [8 x %"<sys/wait.h>:_libc_fpxreg"] %t5, %"<sys/wait.h>:_libc_fpxreg" %t6, 1
  %t8 = load %"<sys/wait.h>:_libc_fpxreg", ptr %l11
  %t9 = insertvalue [8 x %"<sys/wait.h>:_libc_fpxreg"] %t7, %"<sys/wait.h>:_libc_fpxreg" %t8, 2
  %t10 = load %"<sys/wait.h>:_libc_fpxreg", ptr %l11
  %t11 = insertvalue [8 x %"<sys/wait.h>:_libc_fpxreg"] %t9, %"<sys/wait.h>:_libc_fpxreg" %t10, 3
  %t12 = load %"<sys/wait.h>:_libc_fpxreg", ptr %l11
  %t13 = insertvalue [8 x %"<sys/wait.h>:_libc_fpxreg"] %t11, %"<sys/wait.h>:_libc_fpxreg" %t12, 4
  %t14 = load %"<sys/wait.h>:_libc_fpxreg", ptr %l11
  %t15 = insertvalue [8 x %"<sys/wait.h>:_libc_fpxreg"] %t13, %"<sys/wait.h>:_libc_fpxreg" %t14, 5
  %t16 = load %"<sys/wait.h>:_libc_fpxreg", ptr %l11
  %t17 = insertvalue [8 x %"<sys/wait.h>:_libc_fpxreg"] %t15, %"<sys/wait.h>:_libc_fpxreg" %t16, 6
  %t18 = load %"<sys/wait.h>:_libc_fpxreg", ptr %l11
  %t19 = insertvalue [8 x %"<sys/wait.h>:_libc_fpxreg"] %t17, %"<sys/wait.h>:_libc_fpxreg" %t18, 7
  store [8 x %"<sys/wait.h>:_libc_fpxreg"] %t19, ptr %l8
  store %"<sys/wait.h>:_libc_xmmreg" zeroinitializer, ptr %l15
  %t21 = icmp sgt i64 16, 0
  br i1 %t21, label %bb4, label %bb5
bb3:
  %t23 = load %"<sys/wait.h>:_libc_fpxreg", ptr %l13
  store %"<sys/wait.h>:_libc_fpxreg" %t23, ptr %l11
  br label %bb2
bb4:
  %t24 = call %"<sys/wait.h>:_libc_xmmreg" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__libc__xmmreg()
  store %"<sys/wait.h>:_libc_xmmreg" %t24, ptr %l17
  br label %bb6
bb5:
  %t25 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 0
  %t26 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t26, ptr %t25
  %t27 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 1
  %t28 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t28, ptr %t27
  %t29 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 2
  %t30 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t30, ptr %t29
  %t31 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 3
  %t32 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t32, ptr %t31
  %t33 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 4
  %t34 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t34, ptr %t33
  %t35 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 5
  %t36 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t36, ptr %t35
  %t37 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 6
  %t38 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t38, ptr %t37
  %t39 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 7
  %t40 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t40, ptr %t39
  %t41 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 8
  %t42 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t42, ptr %t41
  %t43 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 9
  %t44 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t44, ptr %t43
  %t45 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 10
  %t46 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t46, ptr %t45
  %t47 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 11
  %t48 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t48, ptr %t47
  %t49 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 12
  %t50 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t50, ptr %t49
  %t51 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 13
  %t52 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t52, ptr %t51
  %t53 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 14
  %t54 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t54, ptr %t53
  %t55 = getelementptr [16 x %"<sys/wait.h>:_libc_xmmreg"], ptr %l18, i64 0, i64 15
  %t56 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l15
  store %"<sys/wait.h>:_libc_xmmreg" %t56, ptr %t55
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l18, i64 256, i1 false)
  br label %fill.60
fill.60:
  br label %fill.57
fill.57:
  %t61 = phi i64 [ 0, %fill.60 ], [ %t62, %fill.58 ]
  %t63 = icmp slt i64 %t61, 24
  br i1 %t63, label %fill.58, label %fill.59
fill.58:
  %t64 = getelementptr [24 x i32], ptr %l19, i64 0, i64 %t61
  store i32 0, ptr %t64
  %t62 = add i64 %t61, 1
  br label %fill.57
fill.59:
  %t65 = load [24 x i32], ptr %l19
  %t66 = getelementptr %"<sys/wait.h>:_libc_fpstate", ptr %l20, i32 0, i32 0
  %t67 = load i16, ptr %l0, !tbaa !63
  store i16 %t67, ptr %t66, !tbaa !63
  %t68 = getelementptr %"<sys/wait.h>:_libc_fpstate", ptr %l20, i32 0, i32 1
  %t69 = load i16, ptr %l1, !tbaa !63
  store i16 %t69, ptr %t68, !tbaa !63
  %t70 = getelementptr %"<sys/wait.h>:_libc_fpstate", ptr %l20, i32 0, i32 2
  %t71 = load i16, ptr %l2, !tbaa !63
  store i16 %t71, ptr %t70, !tbaa !63
  %t72 = getelementptr %"<sys/wait.h>:_libc_fpstate", ptr %l20, i32 0, i32 3
  %t73 = load i16, ptr %l3, !tbaa !63
  store i16 %t73, ptr %t72, !tbaa !63
  %t74 = getelementptr %"<sys/wait.h>:_libc_fpstate", ptr %l20, i32 0, i32 4
  %t75 = load i64, ptr %l4, !tbaa !65
  store i64 %t75, ptr %t74, !tbaa !65
  %t76 = getelementptr %"<sys/wait.h>:_libc_fpstate", ptr %l20, i32 0, i32 5
  %t77 = load i64, ptr %l5, !tbaa !65
  store i64 %t77, ptr %t76, !tbaa !65
  %t78 = getelementptr %"<sys/wait.h>:_libc_fpstate", ptr %l20, i32 0, i32 6
  %t79 = load i32, ptr %l6, !tbaa !64
  store i32 %t79, ptr %t78, !tbaa !64
  %t80 = getelementptr %"<sys/wait.h>:_libc_fpstate", ptr %l20, i32 0, i32 7
  %t81 = load i32, ptr %l7, !tbaa !64
  store i32 %t81, ptr %t80, !tbaa !64
  %t82 = getelementptr %"<sys/wait.h>:_libc_fpstate", ptr %l20, i32 0, i32 8
  %t83 = load [8 x %"<sys/wait.h>:_libc_fpxreg"], ptr %l8
  store [8 x %"<sys/wait.h>:_libc_fpxreg"] %t83, ptr %t82
  %t84 = getelementptr %"<sys/wait.h>:_libc_fpstate", ptr %l20, i32 0, i32 9
  call void @llvm.memmove.p0.p0.i64(ptr %t84, ptr %l9, i64 256, i1 false)
  %t85 = getelementptr %"<sys/wait.h>:_libc_fpstate", ptr %l20, i32 0, i32 10
  store [24 x i32] %t65, ptr %t85
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l20, i64 512, i1 false)
  br label %ret
bb6:
  %t87 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l17
  store %"<sys/wait.h>:_libc_xmmreg" %t87, ptr %l15
  br label %bb5
ret:
  ret void
}

define dso_local %"<sys/wait.h>:_libc_fpxreg" @_3csys_2fwait_2eh_3e_3a__libc__fpxreg_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:_libc_fpxreg"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i16] undef, i16 0, 0
  %t2 = insertvalue [4 x i16] %t1, i16 0, 1
  %t3 = insertvalue [4 x i16] %t2, i16 0, 2
  %t4 = insertvalue [4 x i16] %t3, i16 0, 3
  %t6 = insertvalue [3 x i16] undef, i16 0, 0
  %t7 = insertvalue [3 x i16] %t6, i16 0, 1
  %t8 = insertvalue [3 x i16] %t7, i16 0, 2
  %t11 = insertvalue %"<sys/wait.h>:_libc_fpxreg" undef, [4 x i16] %t4, 0
  %t13 = insertvalue %"<sys/wait.h>:_libc_fpxreg" %t11, i16 0, 1
  %t15 = insertvalue %"<sys/wait.h>:_libc_fpxreg" %t13, [3 x i16] %t8, 2
  store %"<sys/wait.h>:_libc_fpxreg" %t15, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:_libc_fpxreg", ptr %rv
  ret %"<sys/wait.h>:_libc_fpxreg" %rr
}

define dso_local %"<sys/wait.h>:_libc_xmmreg" @_3csys_2fwait_2eh_3e_3a__libc__xmmreg_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:_libc_xmmreg"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i32] undef, i32 0, 0
  %t2 = insertvalue [4 x i32] %t1, i32 0, 1
  %t3 = insertvalue [4 x i32] %t2, i32 0, 2
  %t4 = insertvalue [4 x i32] %t3, i32 0, 3
  %t7 = insertvalue %"<sys/wait.h>:_libc_xmmreg" undef, [4 x i32] %t4, 0
  store %"<sys/wait.h>:_libc_xmmreg" %t7, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:_libc_xmmreg", ptr %rv
  ret %"<sys/wait.h>:_libc_xmmreg" %rr
}

define dso_local %"<sys/wait.h>:_xmmreg" @_3csys_2fwait_2eh_3e_3a__xmmreg_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:_xmmreg"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i32] undef, i32 0, 0
  %t2 = insertvalue [4 x i32] %t1, i32 0, 1
  %t3 = insertvalue [4 x i32] %t2, i32 0, 2
  %t4 = insertvalue [4 x i32] %t3, i32 0, 3
  %t7 = insertvalue %"<sys/wait.h>:_xmmreg" undef, [4 x i32] %t4, 0
  store %"<sys/wait.h>:_xmmreg" %t7, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:_xmmreg", ptr %rv
  ret %"<sys/wait.h>:_xmmreg" %rr
}

define dso_local %"<sys/wait.h>:_xsave_hdr" @_3csys_2fwait_2eh_3e_3a__xsave__hdr_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:_xsave_hdr"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [2 x i64] undef, i64 0, 0
  %t2 = insertvalue [2 x i64] %t1, i64 0, 1
  %t4 = insertvalue [5 x i64] undef, i64 0, 0
  %t5 = insertvalue [5 x i64] %t4, i64 0, 1
  %t6 = insertvalue [5 x i64] %t5, i64 0, 2
  %t7 = insertvalue [5 x i64] %t6, i64 0, 3
  %t8 = insertvalue [5 x i64] %t7, i64 0, 4
  %t11 = insertvalue %"<sys/wait.h>:_xsave_hdr" undef, i64 0, 0
  %t13 = insertvalue %"<sys/wait.h>:_xsave_hdr" %t11, [2 x i64] %t2, 1
  %t15 = insertvalue %"<sys/wait.h>:_xsave_hdr" %t13, [5 x i64] %t8, 2
  store %"<sys/wait.h>:_xsave_hdr" %t15, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:_xsave_hdr", ptr %rv
  ret %"<sys/wait.h>:_xsave_hdr" %rr
}

define dso_local void @_3csys_2fwait_2eh_3e_3a__xstate_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"<sys/wait.h>:_fpstate"
  %l1 = alloca %"<sys/wait.h>:_xsave_hdr"
  %l2 = alloca %"<sys/wait.h>:_ymmh_state"
  %l3 = alloca %"<sys/wait.h>:_fpstate"
  %l4 = alloca %"<sys/wait.h>:_xsave_hdr"
  %l5 = alloca %"<sys/wait.h>:_ymmh_state"
  %l6 = alloca %"<sys/wait.h>:_xstate"
  %t1 = alloca %"<sys/wait.h>:_fpstate", align 8
  %t4 = alloca %"<sys/wait.h>:_ymmh_state", align 4
  br label %start
start:
  br label %bb0
bb0:
  call void @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__fpstate(ptr %t1)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %t1, i64 512, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %l3, i64 512, i1 false)
  %t2 = call %"<sys/wait.h>:_xsave_hdr" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__xsave__hdr()
  store %"<sys/wait.h>:_xsave_hdr" %t2, ptr %l4
  br label %bb2
bb2:
  %t3 = load %"<sys/wait.h>:_xsave_hdr", ptr %l4
  store %"<sys/wait.h>:_xsave_hdr" %t3, ptr %l1
  call void @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__ymmh__state(ptr %t4)
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %t4, i64 256, i1 false)
  br label %bb3
bb3:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l5, i64 256, i1 false)
  %t5 = getelementptr %"<sys/wait.h>:_xstate", ptr %l6, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %t5, ptr %l0, i64 512, i1 false)
  %t6 = getelementptr %"<sys/wait.h>:_xstate", ptr %l6, i32 0, i32 1
  %t7 = load %"<sys/wait.h>:_xsave_hdr", ptr %l1
  store %"<sys/wait.h>:_xsave_hdr" %t7, ptr %t6
  %t8 = getelementptr %"<sys/wait.h>:_xstate", ptr %l6, i32 0, i32 2
  call void @llvm.memmove.p0.p0.i64(ptr %t8, ptr %l2, i64 256, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l6, i64 832, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @_3csys_2fwait_2eh_3e_3a__ymmh__state_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca [64 x i32]
  %l1 = alloca [64 x i32]
  %l2 = alloca %"<sys/wait.h>:_ymmh_state"
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
  %t8 = getelementptr [64 x i32], ptr %l1, i64 0, i64 %t5
  store i32 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %l1, i64 256, i1 false)
  %t9 = getelementptr %"<sys/wait.h>:_ymmh_state", ptr %l2, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %t9, ptr %l0, i64 256, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l2, i64 256, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"<sys/wait.h>:c___atomic_wide_counter" @_3csys_2fwait_2eh_3e_3ac______atomic__wide__counter_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:c___atomic_wide_counter"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i64] undef, i64 0, 0
  %t4 = insertvalue %"<sys/wait.h>:c___atomic_wide_counter" undef, [1 x i64] %t1, 0
  store %"<sys/wait.h>:c___atomic_wide_counter" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:c___atomic_wide_counter", ptr %rv
  ret %"<sys/wait.h>:c___atomic_wide_counter" %rr
}

define dso_local %"<sys/wait.h>:c___pthread_internal_list" @_3csys_2fwait_2eh_3e_3ac______pthread__internal__list_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:c___pthread_internal_list"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/wait.h>:c___pthread_internal_list" undef, ptr null, 0
  %t4 = insertvalue %"<sys/wait.h>:c___pthread_internal_list" %t2, ptr null, 1
  store %"<sys/wait.h>:c___pthread_internal_list" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:c___pthread_internal_list", ptr %rv
  ret %"<sys/wait.h>:c___pthread_internal_list" %rr
}

define dso_local %"<sys/wait.h>:c___pthread_internal_slist" @_3csys_2fwait_2eh_3e_3ac______pthread__internal__slist_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:c___pthread_internal_slist"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/wait.h>:c___pthread_internal_slist" undef, ptr null, 0
  store %"<sys/wait.h>:c___pthread_internal_slist" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:c___pthread_internal_slist", ptr %rv
  ret %"<sys/wait.h>:c___pthread_internal_slist" %rr
}

define dso_local %"<sys/wait.h>:c___sigset_t" @_3csys_2fwait_2eh_3e_3ac______sigset__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:c___sigset_t"
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
  %t19 = insertvalue %"<sys/wait.h>:c___sigset_t" undef, [16 x i64] %t16, 0
  store %"<sys/wait.h>:c___sigset_t" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:c___sigset_t", ptr %rv
  ret %"<sys/wait.h>:c___sigset_t" %rr
}

define dso_local void @_3csys_2fwait_2eh_3e_3amcontext__t_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca [23 x i64]
  %l3 = alloca [23 x i64]
  %l5 = alloca %"<sys/wait.h>:mcontext_t"
  br label %start
start:
  br label %bb0
bb0:
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 23
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [23 x i64], ptr %l3, i64 0, i64 %t5
  store i64 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %l3, i64 184, i1 false)
  %t9 = insertvalue [8 x i64] undef, i64 0, 0
  %t10 = insertvalue [8 x i64] %t9, i64 0, 1
  %t11 = insertvalue [8 x i64] %t10, i64 0, 2
  %t12 = insertvalue [8 x i64] %t11, i64 0, 3
  %t13 = insertvalue [8 x i64] %t12, i64 0, 4
  %t14 = insertvalue [8 x i64] %t13, i64 0, 5
  %t15 = insertvalue [8 x i64] %t14, i64 0, 6
  %t16 = insertvalue [8 x i64] %t15, i64 0, 7
  %t18 = getelementptr %"<sys/wait.h>:mcontext_t", ptr %l5, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %l0, i64 184, i1 false)
  %t19 = getelementptr %"<sys/wait.h>:mcontext_t", ptr %l5, i32 0, i32 1
  store ptr null, ptr %t19, !tbaa !29
  %t21 = getelementptr %"<sys/wait.h>:mcontext_t", ptr %l5, i32 0, i32 2
  store [8 x i64] %t16, ptr %t21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l5, i64 256, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"<sys/wait.h>:pthread_attr_t" @_3csys_2fwait_2eh_3e_3apthread__attr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:pthread_attr_t"
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
  %t10 = insertvalue %"<sys/wait.h>:pthread_attr_t" undef, [7 x i64] %t7, 0
  store %"<sys/wait.h>:pthread_attr_t" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:pthread_attr_t", ptr %rv
  ret %"<sys/wait.h>:pthread_attr_t" %rr
}

define dso_local %"<sys/wait.h>:pthread_barrier_t" @_3csys_2fwait_2eh_3e_3apthread__barrier__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:pthread_barrier_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i64] undef, i64 0, 0
  %t2 = insertvalue [4 x i64] %t1, i64 0, 1
  %t3 = insertvalue [4 x i64] %t2, i64 0, 2
  %t4 = insertvalue [4 x i64] %t3, i64 0, 3
  %t7 = insertvalue %"<sys/wait.h>:pthread_barrier_t" undef, [4 x i64] %t4, 0
  store %"<sys/wait.h>:pthread_barrier_t" %t7, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:pthread_barrier_t", ptr %rv
  ret %"<sys/wait.h>:pthread_barrier_t" %rr
}

define dso_local %"<sys/wait.h>:pthread_barrierattr_t" @_3csys_2fwait_2eh_3e_3apthread__barrierattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:pthread_barrierattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<sys/wait.h>:pthread_barrierattr_t" undef, [1 x i32] %t1, 0
  store %"<sys/wait.h>:pthread_barrierattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:pthread_barrierattr_t", ptr %rv
  ret %"<sys/wait.h>:pthread_barrierattr_t" %rr
}

define dso_local %"<sys/wait.h>:pthread_cond_t" @_3csys_2fwait_2eh_3e_3apthread__cond__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:pthread_cond_t"
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
  %t9 = insertvalue %"<sys/wait.h>:pthread_cond_t" undef, [6 x i64] %t6, 0
  store %"<sys/wait.h>:pthread_cond_t" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:pthread_cond_t", ptr %rv
  ret %"<sys/wait.h>:pthread_cond_t" %rr
}

define dso_local %"<sys/wait.h>:pthread_condattr_t" @_3csys_2fwait_2eh_3e_3apthread__condattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:pthread_condattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<sys/wait.h>:pthread_condattr_t" undef, [1 x i32] %t1, 0
  store %"<sys/wait.h>:pthread_condattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:pthread_condattr_t", ptr %rv
  ret %"<sys/wait.h>:pthread_condattr_t" %rr
}

define dso_local %"<sys/wait.h>:pthread_mutex_t" @_3csys_2fwait_2eh_3e_3apthread__mutex__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:pthread_mutex_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [5 x i64] undef, i64 0, 0
  %t2 = insertvalue [5 x i64] %t1, i64 0, 1
  %t3 = insertvalue [5 x i64] %t2, i64 0, 2
  %t4 = insertvalue [5 x i64] %t3, i64 0, 3
  %t5 = insertvalue [5 x i64] %t4, i64 0, 4
  %t8 = insertvalue %"<sys/wait.h>:pthread_mutex_t" undef, [5 x i64] %t5, 0
  store %"<sys/wait.h>:pthread_mutex_t" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:pthread_mutex_t", ptr %rv
  ret %"<sys/wait.h>:pthread_mutex_t" %rr
}

define dso_local %"<sys/wait.h>:pthread_mutexattr_t" @_3csys_2fwait_2eh_3e_3apthread__mutexattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:pthread_mutexattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<sys/wait.h>:pthread_mutexattr_t" undef, [1 x i32] %t1, 0
  store %"<sys/wait.h>:pthread_mutexattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:pthread_mutexattr_t", ptr %rv
  ret %"<sys/wait.h>:pthread_mutexattr_t" %rr
}

define dso_local %"<sys/wait.h>:pthread_rwlock_t" @_3csys_2fwait_2eh_3e_3apthread__rwlock__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:pthread_rwlock_t"
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
  %t10 = insertvalue %"<sys/wait.h>:pthread_rwlock_t" undef, [7 x i64] %t7, 0
  store %"<sys/wait.h>:pthread_rwlock_t" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:pthread_rwlock_t", ptr %rv
  ret %"<sys/wait.h>:pthread_rwlock_t" %rr
}

define dso_local %"<sys/wait.h>:pthread_rwlockattr_t" @_3csys_2fwait_2eh_3e_3apthread__rwlockattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:pthread_rwlockattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i64] undef, i64 0, 0
  %t4 = insertvalue %"<sys/wait.h>:pthread_rwlockattr_t" undef, [1 x i64] %t1, 0
  store %"<sys/wait.h>:pthread_rwlockattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:pthread_rwlockattr_t", ptr %rv
  ret %"<sys/wait.h>:pthread_rwlockattr_t" %rr
}

define dso_local void @_3csys_2fwait_2eh_3e_3asigaction__t_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca [19 x i64]
  %l1 = alloca [19 x i64]
  %l2 = alloca %"<sys/wait.h>:sigaction_t"
  br label %start
start:
  br label %bb0
bb0:
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 19
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [19 x i64], ptr %l1, i64 0, i64 %t5
  store i64 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %l1, i64 152, i1 false)
  %t9 = getelementptr %"<sys/wait.h>:sigaction_t", ptr %l2, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %t9, ptr %l0, i64 152, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l2, i64 152, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @_3csys_2fwait_2eh_3e_3asigcontext_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca [32 x i64]
  %l1 = alloca [32 x i64]
  %l2 = alloca %"<sys/wait.h>:sigcontext"
  br label %start
start:
  br label %bb0
bb0:
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 32
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [32 x i64], ptr %l1, i64 0, i64 %t5
  store i64 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %l1, i64 256, i1 false)
  %t9 = getelementptr %"<sys/wait.h>:sigcontext", ptr %l2, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %t9, ptr %l0, i64 256, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l2, i64 256, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"<sys/wait.h>:sigevent_t" @_3csys_2fwait_2eh_3e_3asigevent__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:sigevent_t"
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
  %t11 = insertvalue %"<sys/wait.h>:sigevent_t" undef, [8 x i64] %t8, 0
  store %"<sys/wait.h>:sigevent_t" %t11, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:sigevent_t", ptr %rv
  ret %"<sys/wait.h>:sigevent_t" %rr
}

define dso_local %"<sys/wait.h>:siginfo_t" @_3csys_2fwait_2eh_3e_3asiginfo__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:siginfo_t"
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
  %t19 = insertvalue %"<sys/wait.h>:siginfo_t" undef, [16 x i64] %t16, 0
  store %"<sys/wait.h>:siginfo_t" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:siginfo_t", ptr %rv
  ret %"<sys/wait.h>:siginfo_t" %rr
}

define dso_local %"<sys/wait.h>:sigstack_t" @_3csys_2fwait_2eh_3e_3asigstack__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:sigstack_t"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/wait.h>:sigstack_t" undef, ptr null, 0
  %t4 = insertvalue %"<sys/wait.h>:sigstack_t" %t2, i32 0, 1
  store %"<sys/wait.h>:sigstack_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:sigstack_t", ptr %rv
  ret %"<sys/wait.h>:sigstack_t" %rr
}

define dso_local %"<sys/wait.h>:sigval" @_3csys_2fwait_2eh_3e_3asigval_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:sigval"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i64] undef, i64 0, 0
  %t4 = insertvalue %"<sys/wait.h>:sigval" undef, [1 x i64] %t1, 0
  store %"<sys/wait.h>:sigval" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:sigval", ptr %rv
  ret %"<sys/wait.h>:sigval" %rr
}

define dso_local %"<sys/wait.h>:stack_t" @_3csys_2fwait_2eh_3e_3astack__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:stack_t"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/wait.h>:stack_t" undef, ptr null, 0
  %t4 = insertvalue %"<sys/wait.h>:stack_t" %t2, i32 0, 1
  %t6 = insertvalue %"<sys/wait.h>:stack_t" %t4, i64 0, 2
  store %"<sys/wait.h>:stack_t" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:stack_t", ptr %rv
  ret %"<sys/wait.h>:stack_t" %rr
}

define dso_local %"<sys/wait.h>:timespec" @_3csys_2fwait_2eh_3e_3atimespec_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/wait.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/wait.h>:timespec" undef, i64 0, 0
  %t4 = insertvalue %"<sys/wait.h>:timespec" %t2, i64 0, 1
  store %"<sys/wait.h>:timespec" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:timespec", ptr %rv
  ret %"<sys/wait.h>:timespec" %rr
}

define dso_local void @_3csys_2fwait_2eh_3e_3aucontext__t_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca ptr
  %l2 = alloca %"<sys/wait.h>:stack_t"
  %l3 = alloca %"<sys/wait.h>:mcontext_t"
  %l4 = alloca %"<sys/wait.h>:c___sigset_t"
  %l5 = alloca %"<sys/wait.h>:_libc_fpstate"
  %l7 = alloca %"<sys/wait.h>:stack_t"
  %l8 = alloca %"<sys/wait.h>:mcontext_t"
  %l9 = alloca %"<sys/wait.h>:c___sigset_t"
  %l10 = alloca %"<sys/wait.h>:_libc_fpstate"
  %l12 = alloca %"<sys/wait.h>:ucontext_t"
  %t3 = alloca %"<sys/wait.h>:mcontext_t", align 8
  %t6 = alloca %"<sys/wait.h>:_libc_fpstate", align 8
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l0, !tbaa !65
  store ptr null, ptr %l1, !tbaa !29
  %t1 = call %"<sys/wait.h>:stack_t" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3astack__t()
  store %"<sys/wait.h>:stack_t" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"<sys/wait.h>:stack_t", ptr %l7
  store %"<sys/wait.h>:stack_t" %t2, ptr %l2
  call void @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3amcontext__t(ptr %t3)
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %t3, i64 256, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l8, i64 256, i1 false)
  %t4 = call %"<sys/wait.h>:c___sigset_t" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3ac______sigset__t()
  store %"<sys/wait.h>:c___sigset_t" %t4, ptr %l9
  br label %bb3
bb3:
  %t5 = load %"<sys/wait.h>:c___sigset_t", ptr %l9
  store %"<sys/wait.h>:c___sigset_t" %t5, ptr %l4
  call void @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__libc__fpstate(ptr %t6)
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %t6, i64 512, i1 false)
  br label %bb4
bb4:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l10, i64 512, i1 false)
  %t7 = insertvalue [4 x i64] undef, i64 0, 0
  %t8 = insertvalue [4 x i64] %t7, i64 0, 1
  %t9 = insertvalue [4 x i64] %t8, i64 0, 2
  %t10 = insertvalue [4 x i64] %t9, i64 0, 3
  %t12 = getelementptr %"<sys/wait.h>:ucontext_t", ptr %l12, i32 0, i32 0
  %t13 = load i64, ptr %l0, !tbaa !65
  store i64 %t13, ptr %t12, !tbaa !65
  %t14 = getelementptr %"<sys/wait.h>:ucontext_t", ptr %l12, i32 0, i32 1
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %t14, !tbaa !29
  %t16 = getelementptr %"<sys/wait.h>:ucontext_t", ptr %l12, i32 0, i32 2
  %t17 = load %"<sys/wait.h>:stack_t", ptr %l2
  store %"<sys/wait.h>:stack_t" %t17, ptr %t16
  %t18 = getelementptr %"<sys/wait.h>:ucontext_t", ptr %l12, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %l3, i64 256, i1 false)
  %t19 = getelementptr %"<sys/wait.h>:ucontext_t", ptr %l12, i32 0, i32 4
  %t20 = load %"<sys/wait.h>:c___sigset_t", ptr %l4
  store %"<sys/wait.h>:c___sigset_t" %t20, ptr %t19
  %t21 = getelementptr %"<sys/wait.h>:ucontext_t", ptr %l12, i32 0, i32 5
  call void @llvm.memmove.p0.p0.i64(ptr %t21, ptr %l5, i64 512, i1 false)
  %t22 = getelementptr %"<sys/wait.h>:ucontext_t", ptr %l12, i32 0, i32 6
  store [4 x i64] %t10, ptr %t22
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l12, i64 968, i1 false)
  br label %ret
ret:
  ret void
}

define linkonce_odr %"<sys/wait.h>:_fpxreg" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__fpxreg() #0 {
entry:
  %l0 = alloca %"<sys/wait.h>:_fpxreg"
  %rv = alloca %"<sys/wait.h>:_fpxreg"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<sys/wait.h>:_fpxreg" @_3csys_2fwait_2eh_3e_3a__fpxreg_2ector(ptr %t1)
  store %"<sys/wait.h>:_fpxreg" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<sys/wait.h>:_fpxreg", ptr %l0
  store %"<sys/wait.h>:_fpxreg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:_fpxreg", ptr %rv
  ret %"<sys/wait.h>:_fpxreg" %rr
}

define linkonce_odr %"<sys/wait.h>:_xmmreg" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__xmmreg() #0 {
entry:
  %l0 = alloca %"<sys/wait.h>:_xmmreg"
  %rv = alloca %"<sys/wait.h>:_xmmreg"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<sys/wait.h>:_xmmreg" @_3csys_2fwait_2eh_3e_3a__xmmreg_2ector(ptr %t1)
  store %"<sys/wait.h>:_xmmreg" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<sys/wait.h>:_xmmreg", ptr %l0
  store %"<sys/wait.h>:_xmmreg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:_xmmreg", ptr %rv
  ret %"<sys/wait.h>:_xmmreg" %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr %"<sys/wait.h>:_libc_fpxreg" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__libc__fpxreg() #0 {
entry:
  %l0 = alloca %"<sys/wait.h>:_libc_fpxreg"
  %rv = alloca %"<sys/wait.h>:_libc_fpxreg"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<sys/wait.h>:_libc_fpxreg" @_3csys_2fwait_2eh_3e_3a__libc__fpxreg_2ector(ptr %t1)
  store %"<sys/wait.h>:_libc_fpxreg" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<sys/wait.h>:_libc_fpxreg", ptr %l0
  store %"<sys/wait.h>:_libc_fpxreg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:_libc_fpxreg", ptr %rv
  ret %"<sys/wait.h>:_libc_fpxreg" %rr
}

define linkonce_odr %"<sys/wait.h>:_libc_xmmreg" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__libc__xmmreg() #0 {
entry:
  %l0 = alloca %"<sys/wait.h>:_libc_xmmreg"
  %rv = alloca %"<sys/wait.h>:_libc_xmmreg"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<sys/wait.h>:_libc_xmmreg" @_3csys_2fwait_2eh_3e_3a__libc__xmmreg_2ector(ptr %t1)
  store %"<sys/wait.h>:_libc_xmmreg" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<sys/wait.h>:_libc_xmmreg", ptr %l0
  store %"<sys/wait.h>:_libc_xmmreg" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:_libc_xmmreg", ptr %rv
  ret %"<sys/wait.h>:_libc_xmmreg" %rr
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__fpstate(ptr %out) #0 {
entry:
  %l0 = alloca %"<sys/wait.h>:_fpstate"
  %t1 = alloca %"<sys/wait.h>:_fpstate", align 8
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr @__olang_prog_scope
  call void @_3csys_2fwait_2eh_3e_3a__fpstate_2ector(ptr %t1, ptr %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 512, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 512, i1 false)
  br label %ret
ret:
  ret void
}

define linkonce_odr %"<sys/wait.h>:_xsave_hdr" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__xsave__hdr() #0 {
entry:
  %l0 = alloca %"<sys/wait.h>:_xsave_hdr"
  %rv = alloca %"<sys/wait.h>:_xsave_hdr"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<sys/wait.h>:_xsave_hdr" @_3csys_2fwait_2eh_3e_3a__xsave__hdr_2ector(ptr %t1)
  store %"<sys/wait.h>:_xsave_hdr" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<sys/wait.h>:_xsave_hdr", ptr %l0
  store %"<sys/wait.h>:_xsave_hdr" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:_xsave_hdr", ptr %rv
  ret %"<sys/wait.h>:_xsave_hdr" %rr
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__ymmh__state(ptr %out) #0 {
entry:
  %l0 = alloca %"<sys/wait.h>:_ymmh_state"
  %t1 = alloca %"<sys/wait.h>:_ymmh_state", align 4
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr @__olang_prog_scope
  call void @_3csys_2fwait_2eh_3e_3a__ymmh__state_2ector(ptr %t1, ptr %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 256, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 256, i1 false)
  br label %ret
ret:
  ret void
}

define linkonce_odr %"<sys/wait.h>:stack_t" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3astack__t() #0 {
entry:
  %l0 = alloca %"<sys/wait.h>:stack_t"
  %rv = alloca %"<sys/wait.h>:stack_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<sys/wait.h>:stack_t" @_3csys_2fwait_2eh_3e_3astack__t_2ector(ptr %t1)
  store %"<sys/wait.h>:stack_t" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<sys/wait.h>:stack_t", ptr %l0
  store %"<sys/wait.h>:stack_t" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:stack_t", ptr %rv
  ret %"<sys/wait.h>:stack_t" %rr
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3amcontext__t(ptr %out) #0 {
entry:
  %l0 = alloca %"<sys/wait.h>:mcontext_t"
  %t1 = alloca %"<sys/wait.h>:mcontext_t", align 8
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr @__olang_prog_scope
  call void @_3csys_2fwait_2eh_3e_3amcontext__t_2ector(ptr %t1, ptr %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 256, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 256, i1 false)
  br label %ret
ret:
  ret void
}

define linkonce_odr %"<sys/wait.h>:c___sigset_t" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3ac______sigset__t() #0 {
entry:
  %l0 = alloca %"<sys/wait.h>:c___sigset_t"
  %rv = alloca %"<sys/wait.h>:c___sigset_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<sys/wait.h>:c___sigset_t" @_3csys_2fwait_2eh_3e_3ac______sigset__t_2ector(ptr %t1)
  store %"<sys/wait.h>:c___sigset_t" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<sys/wait.h>:c___sigset_t", ptr %l0
  store %"<sys/wait.h>:c___sigset_t" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/wait.h>:c___sigset_t", ptr %rv
  ret %"<sys/wait.h>:c___sigset_t" %rr
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fwait_2eh_3e_3a__libc__fpstate(ptr %out) #0 {
entry:
  %l0 = alloca %"<sys/wait.h>:_libc_fpstate"
  %t1 = alloca %"<sys/wait.h>:_libc_fpstate", align 8
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr @__olang_prog_scope
  call void @_3csys_2fwait_2eh_3e_3a__libc__fpstate_2ector(ptr %t1, ptr %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 512, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 512, i1 false)
  br label %ret
ret:
  ret void
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
