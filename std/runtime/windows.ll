; B12f: the runtime's Windows part (compiler/runtime.olang, Windows): appended to runtime.ll filled in for x86-64, each
; function defined here replacing the definition and the declarations of the same name there. What runtime.ll asks of
; glibc and POSIX is given here over kernel32 and msvcrt (mingw-w64's import libraries): memory mapping over
; VirtualAlloc, pthread's threads, mutexes, condition variables and read-write locks over Win32's threads, SRW locks and
; condition variables (all three are a zeroed pointer-sized word when ready, as glibc's initializers are zero), the
; clocks over the system time and the performance counter. A program's own C imports of pthread.h and time.h reach these
; too, so std's locks and timed waits work unchanged.

declare ptr @VirtualAlloc(ptr, i64, i32, i32)
declare i32 @VirtualFree(ptr, i64, i32)
declare i32 @GlobalMemoryStatusEx(ptr)
declare ptr @CreateThread(ptr, i64, ptr, ptr, i32, ptr)
declare i32 @WaitForSingleObject(ptr, i32)
declare i32 @CloseHandle(ptr)
declare void @AcquireSRWLockExclusive(ptr)
declare void @ReleaseSRWLockExclusive(ptr)
declare i32 @SleepConditionVariableSRW(ptr, ptr, i32, i32)
declare void @WakeAllConditionVariable(ptr)
declare void @WakeConditionVariable(ptr)
declare ptr @SetUnhandledExceptionFilter(ptr)
declare void @GetSystemTimePreciseAsFileTime(ptr)
declare i32 @QueryPerformanceCounter(ptr)
declare i32 @QueryPerformanceFrequency(ptr)
declare void @Sleep(i32)
declare i32 @SwitchToThread()
declare i32 @GetLastError()
declare ptr @_errno()
declare ptr @__acrt_iob_func(i32)
declare i32 @_read(i32, ptr, i32)
declare i32 @_write(i32, ptr, i32)
declare i64 @strtoll(ptr, ptr, i32)
declare ptr @_aligned_malloc(i64, i64)
declare void @_aligned_free(ptr)
declare i32 @_stat64(ptr, ptr)
declare ptr @_fullpath(ptr, ptr, i64)
declare ptr @_mktemp(ptr)
declare i32 @_mkdir(ptr)

; ---- memory ----

; mmap(2) of anonymous memory: address space reserved (PROT_NONE) or reserved and committed (read and write). Windows
; has no lazily committed memory, so a writable mapping that asks for none to be charged (MAP_NORESERVE, 0x4000) is
; refused, and the runtime falls back to reserving and committing as it carves (its slots' strict mode)
define internal ptr @mmap(ptr %addr, i64 %len, i32 %prot, i32 %flags, i32 %fd, i64 %off) {
entry:
  %nores = and i32 %flags, 16384
  %lazy = icmp ne i32 %nores, 0
  %rw = icmp ne i32 %prot, 0
  %refuse = and i1 %lazy, %rw
  br i1 %refuse, label %fail, label %map
map:
  %type = select i1 %rw, i32 12288, i32 8192 ; MEM_RESERVE | MEM_COMMIT, MEM_RESERVE
  %access = select i1 %rw, i32 4, i32 1      ; PAGE_READWRITE, PAGE_NOACCESS
  %p = call ptr @VirtualAlloc(ptr null, i64 %len, i32 %type, i32 %access)
  %none = icmp eq ptr %p, null
  br i1 %none, label %fail, label %ok
ok:
  ret ptr %p
fail:
  ret ptr inttoptr (i64 -1 to ptr)
}

; munmap(2): a reservation released whole from its start; anything else decommitted
define internal i32 @munmap(ptr %p, i64 %len) {
entry:
  %r = call i32 @VirtualFree(ptr %p, i64 0, i32 32768) ; MEM_RELEASE
  %ok = icmp ne i32 %r, 0
  br i1 %ok, label %done, label %part
part:
  %d = call i32 @VirtualFree(ptr %p, i64 %len, i32 16384) ; MEM_DECOMMIT
  br label %done
done:
  ret i32 0
}

; mprotect(2) over reserved address space: readable and writable is committed, PROT_NONE decommitted
define internal i32 @mprotect(ptr %p, i64 %len, i32 %prot) {
entry:
  %none = icmp eq i32 %prot, 0
  br i1 %none, label %decommit, label %commit
decommit:
  %d = call i32 @VirtualFree(ptr %p, i64 %len, i32 16384)
  ret i32 0
commit:
  %c = call ptr @VirtualAlloc(ptr %p, i64 %len, i32 4096, i32 4) ; MEM_COMMIT, PAGE_READWRITE
  %failed = icmp eq ptr %c, null
  %r = select i1 %failed, i32 -1, i32 0
  ret i32 %r
}

; madvise(2): MADV_DONTNEED (4) gives the pages back, zero when next touched and still usable - decommitted and
; committed again; a core dump's marks mean nothing here
define internal i32 @madvise(ptr %p, i64 %len, i32 %advice) {
entry:
  %dontneed = icmp eq i32 %advice, 4
  br i1 %dontneed, label %drop, label %done
drop:
  %d = call i32 @VirtualFree(ptr %p, i64 %len, i32 16384)
  %c = call ptr @VirtualAlloc(ptr %p, i64 %len, i32 4096, i32 4)
  br label %done
done:
  ret i32 0
}

; aligned_alloc(3) as msvcrt has it, given back by _aligned_free (runtime.Windows rewrites the one free of such a chunk)
define internal ptr @aligned_alloc(i64 %align, i64 %size) {
entry:
  %p = call ptr @_aligned_malloc(i64 %size, i64 %align)
  ret ptr %p
}

; sysconf(3) for the three names the runtime asks, by glibc's numbers: _SC_PHYS_PAGES (85), _SC_PAGESIZE (30),
; _SC_THREAD_STACK_MIN (75)
define internal i64 @sysconf(i32 %name) {
entry:
  %ms = alloca [64 x i8], align 8
  %pages = icmp eq i32 %name, 85
  br i1 %pages, label %phys, label %other
phys:
  store i32 64, ptr %ms
  %ok = call i32 @GlobalMemoryStatusEx(ptr %ms)
  %totp = getelementptr i8, ptr %ms, i64 8
  %tot = load i64, ptr %totp
  %n = lshr i64 %tot, 12
  %good = icmp ne i32 %ok, 0
  %r = select i1 %good, i64 %n, i64 -1
  ret i64 %r
other:
  %size = icmp eq i32 %name, 30
  %r2 = select i1 %size, i64 4096, i64 65536
  ret i64 %r2
}

; getrlimit(2): Windows sets no limit on the address space (RLIM_INFINITY)
define internal i32 @getrlimit(i32 %res, ptr %lim) {
entry:
  store i64 -1, ptr %lim
  %maxp = getelementptr i64, ptr %lim, i64 1
  store i64 -1, ptr %maxp
  ret i32 0
}

; dlsym(3) for glibc's private least stack: no such symbol here
define internal ptr @dlsym(ptr %h, ptr %name) {
entry:
  ret ptr null
}

; syscall(2) (a benchmark build's counters): none here
define internal i64 @syscall(i64 %n, ...) {
entry:
  ret i64 -1
}

; read(2) and write(2) on a descriptor, through msvcrt's (whose count is 32 bits wide)
define internal i64 @read(i32 %fd, ptr %buf, i64 %n) {
entry:
  %big = icmp ugt i64 %n, 1073741824
  %m = select i1 %big, i64 1073741824, i64 %n
  %m32 = trunc i64 %m to i32
  %r = call i32 @_read(i32 %fd, ptr %buf, i32 %m32)
  %r64 = sext i32 %r to i64
  ret i64 %r64
}

define internal i64 @write(i32 %fd, ptr %buf, i64 %n) {
entry:
  %big = icmp ugt i64 %n, 1073741824
  %m = select i1 %big, i64 1073741824, i64 %n
  %m32 = trunc i64 %m to i32
  %r = call i32 @_write(i32 %fd, ptr %buf, i32 %m32)
  %r64 = sext i32 %r to i64
  ret i64 %r64
}

; strtol(3), whose long is 32 bits here: strtoll
define internal i64 @strtol(ptr %s, ptr %end, i32 %base) {
entry:
  %r = call i64 @strtoll(ptr %s, ptr %end, i32 %base)
  ret i64 %r
}

; ---- signals ----

; sigaction(2) for the fatal signals os.OnCrash handles: its handler (glibc's layout, at 0) run from the filter for an
; exception nothing handles - a fault, an illegal instruction, a division - as SIGSEGV's; the others' actions are kept
@__olang_win_crash = internal global ptr null

define internal i32 @__olang_win_filter(ptr %info) {
entry:
  %h = load ptr, ptr @__olang_win_crash
  %none = icmp eq ptr %h, null
  br i1 %none, label %pass, label %call
call:
  call void %h(i32 11)
  br label %pass
pass:
  ret i32 0 ; EXCEPTION_CONTINUE_SEARCH
}

define internal i32 @sigaction(i32 %sig, ptr %act, ptr %old) {
entry:
  %segv = icmp eq i32 %sig, 11
  %has = icmp ne ptr %act, null
  %set = and i1 %segv, %has
  br i1 %set, label %install, label %done
install:
  %h = load ptr, ptr %act
  store ptr %h, ptr @__olang_win_crash
  %prev = call ptr @SetUnhandledExceptionFilter(ptr @__olang_win_filter)
  br label %done
done:
  ret i32 0
}

; sigaltstack(2): a filter runs on the faulting thread's own stack
define internal i32 @sigaltstack(ptr %ss, ptr %old) {
entry:
  ret i32 0
}

; ---- threads ----

; pthread_create(3) over CreateThread: the start routine and its argument handed to a trampoline in a block of their
; own; the stack size an attribute set (its first word) reserved, not committed. pthread_t is the thread's handle
define internal i32 @__olang_win_thread_start(ptr %block) {
entry:
  %f = load ptr, ptr %block
  %ap = getelementptr ptr, ptr %block, i64 1
  %a = load ptr, ptr %ap
  call void @free(ptr %block)
  %r = call ptr %f(ptr %a)
  ret i32 0
}

define i32 @pthread_create(ptr %tid, ptr %attr, ptr %start, ptr %arg) {
entry:
  %block = call ptr @malloc(i64 16)
  store ptr %start, ptr %block
  %ap = getelementptr ptr, ptr %block, i64 1
  store ptr %arg, ptr %ap
  %hasattr = icmp ne ptr %attr, null
  br i1 %hasattr, label %sized, label %make
sized:
  %s = load i64, ptr %attr
  br label %make
make:
  %stack = phi i64 [ 0, %entry ], [ %s, %sized ]
  %h = call ptr @CreateThread(ptr null, i64 %stack, ptr @__olang_win_thread_start, ptr %block, i32 65536, ptr null)
  %failed = icmp eq ptr %h, null
  br i1 %failed, label %fail, label %ok
ok:
  store ptr %h, ptr %tid
  ret i32 0
fail:
  call void @free(ptr %block)
  ret i32 11 ; EAGAIN
}

define i32 @pthread_join(i64 %t, ptr %ret) {
entry:
  %h = inttoptr i64 %t to ptr
  %w = call i32 @WaitForSingleObject(ptr %h, i32 -1)
  %c = call i32 @CloseHandle(ptr %h)
  %want = icmp ne ptr %ret, null
  br i1 %want, label %clear, label %done
clear:
  store ptr null, ptr %ret
  br label %done
done:
  ret i32 0
}

define i32 @pthread_detach(i64 %t) {
entry:
  %h = inttoptr i64 %t to ptr
  %c = call i32 @CloseHandle(ptr %h)
  ret i32 0
}

define i32 @pthread_attr_init(ptr %attr) {
entry:
  store i64 0, ptr %attr
  ret i32 0
}

define i32 @pthread_attr_destroy(ptr %attr) {
entry:
  ret i32 0
}

define i32 @pthread_attr_setstacksize(ptr %attr, i64 %size) {
entry:
  store i64 %size, ptr %attr
  ret i32 0
}

; mutexes and read-write locks as SRW locks held exclusively (a read-write lock's readers too: unlocking says not
; which way it was held), conditions as condition variables - each a zero word when ready
define i32 @pthread_mutex_init(ptr %m, ptr %attr) {
entry:
  store ptr null, ptr %m
  ret i32 0
}

define i32 @pthread_mutex_destroy(ptr %m) {
entry:
  ret i32 0
}

define i32 @pthread_mutex_lock(ptr %m) {
entry:
  call void @AcquireSRWLockExclusive(ptr %m)
  ret i32 0
}

define i32 @pthread_mutex_unlock(ptr %m) {
entry:
  call void @ReleaseSRWLockExclusive(ptr %m)
  ret i32 0
}

define i32 @pthread_rwlock_rdlock(ptr %m) {
entry:
  call void @AcquireSRWLockExclusive(ptr %m)
  ret i32 0
}

define i32 @pthread_rwlock_wrlock(ptr %m) {
entry:
  call void @AcquireSRWLockExclusive(ptr %m)
  ret i32 0
}

define i32 @pthread_rwlock_unlock(ptr %m) {
entry:
  call void @ReleaseSRWLockExclusive(ptr %m)
  ret i32 0
}

define i32 @pthread_cond_init(ptr %c, ptr %attr) {
entry:
  store ptr null, ptr %c
  ret i32 0
}

define i32 @pthread_cond_destroy(ptr %c) {
entry:
  ret i32 0
}

define i32 @pthread_cond_wait(ptr %c, ptr %m) {
entry:
  %r = call i32 @SleepConditionVariableSRW(ptr %c, ptr %m, i32 -1, i32 0)
  ret i32 0
}

define i32 @pthread_cond_broadcast(ptr %c) {
entry:
  call void @WakeAllConditionVariable(ptr %c)
  ret i32 0
}

define i32 @pthread_cond_signal(ptr %c) {
entry:
  call void @WakeConditionVariable(ptr %c)
  ret i32 0
}

; a wait until the wall-clock time abs (a timespec: seconds, then nanoseconds), ETIMEDOUT (mingw's 138) once it passes
define i32 @pthread_cond_timedwait(ptr %c, ptr %m, ptr %abs) {
entry:
  %sec = load i64, ptr %abs
  %nsp = getelementptr i8, ptr %abs, i64 8
  %ns32 = load i32, ptr %nsp
  %ns = sext i32 %ns32 to i64
  %secns = mul i64 %sec, 1000000000
  %deadline = add i64 %secns, %ns
  %now = call i64 @__olang_win_realtime()
  %left = sub i64 %deadline, %now
  %past = icmp slt i64 %left, 0
  %left0 = select i1 %past, i64 0, i64 %left
  %up = add i64 %left0, 999999
  %ms = udiv i64 %up, 1000000
  %big = icmp ugt i64 %ms, 4294967294
  %ms1 = select i1 %big, i64 4294967294, i64 %ms
  %ms32 = trunc i64 %ms1 to i32
  %r = call i32 @SleepConditionVariableSRW(ptr %c, ptr %m, i32 %ms32, i32 0)
  %woke = icmp ne i32 %r, 0
  %v = select i1 %woke, i32 0, i32 138
  ret i32 %v
}

define i32 @sched_yield() {
entry:
  %r = call i32 @SwitchToThread()
  ret i32 0
}

; ---- clocks ----

; nanoseconds since the epoch: the system time (100 ns since 1601) moved to 1970
define internal i64 @__olang_win_realtime() {
entry:
  %ft = alloca i64, align 8
  call void @GetSystemTimePreciseAsFileTime(ptr %ft)
  %t = load i64, ptr %ft
  %since = sub i64 %t, 116444736000000000
  %ns = mul i64 %since, 100
  ret i64 %ns
}

; nanoseconds of the performance counter, which never goes back
define internal i64 @__olang_win_monotonic() {
entry:
  %cp = alloca i64, align 8
  %fp = alloca i64, align 8
  %a = call i32 @QueryPerformanceCounter(ptr %cp)
  %b = call i32 @QueryPerformanceFrequency(ptr %fp)
  %c = load i64, ptr %cp
  %f = load i64, ptr %fp
  %s = udiv i64 %c, %f
  %r = urem i64 %c, %f
  %sns = mul i64 %s, 1000000000
  %rns0 = mul i64 %r, 1000000000
  %rns = udiv i64 %rns0, %f
  %ns = add i64 %sns, %rns
  ret i64 %ns
}

; clock_gettime(3) into mingw's timespec (64-bit seconds, then a 32-bit long of nanoseconds): CLOCK_REALTIME (0) the
; system time, any other clock the performance counter
define i32 @clock_gettime(i32 %clock, ptr %ts) {
entry:
  %real = icmp eq i32 %clock, 0
  br i1 %real, label %wall, label %mono
wall:
  %w = call i64 @__olang_win_realtime()
  br label %put
mono:
  %m = call i64 @__olang_win_monotonic()
  br label %put
put:
  %ns = phi i64 [ %w, %wall ], [ %m, %mono ]
  %sec = sdiv i64 %ns, 1000000000
  %frac = srem i64 %ns, 1000000000
  store i64 %sec, ptr %ts
  %np = getelementptr i8, ptr %ts, i64 8
  %frac32 = trunc i64 %frac to i32
  store i32 %frac32, ptr %np
  ret i32 0
}

; nanosleep(2): Sleep for whole milliseconds, rounded up; nothing is left over
define i32 @nanosleep(ptr %req, ptr %rem) {
entry:
  %sec = load i64, ptr %req
  %nsp = getelementptr i8, ptr %req, i64 8
  %ns32 = load i32, ptr %nsp
  %ns = sext i32 %ns32 to i64
  %secms = mul i64 %sec, 1000
  %nsup = add i64 %ns, 999999
  %nsms = sdiv i64 %nsup, 1000000
  %ms = add i64 %secms, %nsms
  %ms32 = trunc i64 %ms to i32
  call void @Sleep(i32 %ms32)
  %want = icmp ne ptr %rem, null
  br i1 %want, label %clear, label %done
clear:
  store i64 0, ptr %rem
  %rnp = getelementptr i8, ptr %rem, i64 8
  store i32 0, ptr %rnp
  br label %done
done:
  ret i32 0
}

; ---- files and processes ----

; the class of the error errno holds, as runtime.ll's __olang_err gives it, by msvcrt's and mingw-w64's numbers:
; ENOENT 2: 1, EEXIST 17: 2, EACCES 13 and EPERM 1: 3, ENOTDIR 20: 4, EISDIR 21: 5, ENOTEMPTY 41: 6, ECONNREFUSED
; 107: 7, EADDRINUSE 100: 8, ETIMEDOUT 138 and EAGAIN 11: 9, ECONNRESET 108, ECONNABORTED 106, EPIPE 32 and ENOTCONN
; 126: 10, ENETUNREACH 118 and EHOSTUNREACH 110: 11, EADDRNOTAVAIL 101 and EAFNOSUPPORT 102: 12, EINTR 4: 13
@__olang_win_errs = internal constant [24 x i32] [i32 2, i32 17, i32 13, i32 1, i32 20, i32 21, i32 41, i32 107, i32 100, i32 138, i32 11, i32 108, i32 106, i32 32, i32 126, i32 118, i32 110, i32 101, i32 102, i32 4, i32 0, i32 0, i32 0, i32 0]
@__olang_win_class = internal constant [24 x i32] [i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 0, i32 0, i32 0, i32 0]

define i32 @__olang_err() {
entry:
  %p = call ptr @_errno()
  %e = load i32, ptr %p
  br label %loop
loop:
  %i = phi i64 [ 0, %entry ], [ %i1, %next ]
  %end = icmp eq i64 %i, 20
  br i1 %end, label %none, label %look
look:
  %ep = getelementptr [24 x i32], ptr @__olang_win_errs, i64 0, i64 %i
  %ev = load i32, ptr %ep
  %hit = icmp eq i32 %ev, %e
  br i1 %hit, label %found, label %next
next:
  %i1 = add i64 %i, 1
  br label %loop
found:
  %cp = getelementptr [24 x i32], ptr @__olang_win_class, i64 0, i64 %i
  %c = load i32, ptr %cp
  ret i32 %c
none:
  ret i32 0
}

; stat(path) into out as runtime.ll's __olang_stat: msvcrt's struct _stat64 - st_mode (16 bits) at 6, st_size at 24,
; st_mtime (seconds) at 40
define i32 @__olang_stat(ptr %path, ptr %out) {
entry:
  %st = alloca [64 x i8], align 16
  %rc = call i32 @_stat64(ptr %path, ptr %st)
  %ok = icmp eq i32 %rc, 0
  br i1 %ok, label %have, label %fail
have:
  %mode.p = getelementptr i8, ptr %st, i64 6
  %mode.v = load i16, ptr %mode.p
  %mode = zext i16 %mode.v to i64
  %size.p = getelementptr i8, ptr %st, i64 24
  %size = load i64, ptr %size.p
  %sec.p = getelementptr i8, ptr %st, i64 40
  %sec = load i64, ptr %sec.p
  %fmt = and i64 %mode, 61440 ; S_IFMT
  %isreg = icmp eq i64 %fmt, 32768 ; S_IFREG
  %isdir = icmp eq i64 %fmt, 16384 ; S_IFDIR
  %k1 = select i1 %isdir, i64 2, i64 0
  %kind = select i1 %isreg, i64 1, i64 %k1
  store i64 %kind, ptr %out
  %o1 = getelementptr i64, ptr %out, i64 1
  store i64 %size, ptr %o1
  %t = mul i64 %sec, 1000000000
  %o2 = getelementptr i64, ptr %out, i64 2
  store i64 %t, ptr %o2
  ret i32 0
fail:
  ret i32 -1
}

; the absolute path of "path" (_fullpath: no symbolic links to resolve), or -1
define i64 @__olang_realpath(ptr %path, ptr %buf, i64 %cap) {
entry:
  %r = call ptr @_fullpath(ptr null, ptr %path, i64 0)
  %bad = icmp eq ptr %r, null
  br i1 %bad, label %fail, label %have
have:
  %len = call i64 @__olang_copy_cstr(ptr %r, ptr %buf, i64 %cap)
  call void @free(ptr %r)
  ret i64 %len
fail:
  ret i64 -1
}

; S4's new directory from a template ending in six X's: _mktemp's unused name, then made - tried again where another
; process made it first
define i32 @__olang_mkdtemp(ptr %template) {
entry:
  %len = call i64 @strlen(ptr %template)
  %xs = sub i64 %len, 6
  %tail = getelementptr i8, ptr %template, i64 %xs
  br label %try
try:
  %n = phi i32 [ 0, %entry ], [ %n1, %again ]
  call void @llvm.memset.p0.i64(ptr %tail, i8 88, i64 6, i1 false)
  %name = call ptr @_mktemp(ptr %template)
  %none = icmp eq ptr %name, null
  br i1 %none, label %fail, label %make
make:
  %rc = call i32 @_mkdir(ptr %template)
  %ok = icmp eq i32 %rc, 0
  br i1 %ok, label %done, label %again
again:
  %n1 = add i32 %n, 1
  %more = icmp slt i32 %n1, 100
  br i1 %more, label %try, label %fail
done:
  ret i32 0
fail:
  ret i32 -1
}

; a program started: not yet on Windows (ENOSYS, 40)
define i32 @__olang_spawn_as(ptr %path, ptr %args, i64 %count, i32 %in, i32 %out, i32 %err, ptr %dir) {
entry:
  %ep = call ptr @_errno()
  store i32 40, ptr %ep
  ret i32 -1
}
