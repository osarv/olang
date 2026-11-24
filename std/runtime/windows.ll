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

; errno from the last Win32 call's error, by the classes __olang_err names: not found (2, 3: ENOENT), denied (5: EACCES),
; exists (80, 183: EEXIST), not a directory (267: ENOTDIR), not empty (145: ENOTEMPTY), anything else EIO
define void @__olang_win_errno() {
entry:
  %e = call i32 @GetLastError()
  %nf = icmp eq i32 %e, 2
  %np = icmp eq i32 %e, 3
  %notfound = or i1 %nf, %np
  %v1 = select i1 %notfound, i32 2, i32 5
  %den = icmp eq i32 %e, 5
  %v2 = select i1 %den, i32 13, i32 %v1
  %ex1 = icmp eq i32 %e, 80
  %ex2 = icmp eq i32 %e, 183
  %exists = or i1 %ex1, %ex2
  %v3 = select i1 %exists, i32 17, i32 %v2
  %nd = icmp eq i32 %e, 267
  %v4 = select i1 %nd, i32 20, i32 %v3
  %ne = icmp eq i32 %e, 145
  %v5 = select i1 %ne, i32 41, i32 %v4
  %p = call ptr @_errno()
  store i32 %v5, ptr %p
  ret void
}

declare i32 @CreateProcessA(ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr)
declare ptr @GetStdHandle(i32)
declare i64 @_get_osfhandle(i32)
declare i32 @SetHandleInformation(ptr, i32, i32)
declare ptr @OpenProcess(i32, i32, i32)
declare i32 @GetExitCodeProcess(ptr, ptr)
declare i32 @TerminateProcess(ptr, i32)
declare i32 @GetTempPathA(i32, ptr)
declare i32 @GetTempFileNameA(ptr, ptr, i32, ptr)
declare i32 @_open(ptr, i32, ...)
declare i32 @MoveFileExA(ptr, ptr, i32)
declare i32 @CreateHardLinkA(ptr, ptr, ptr)
declare void @ExitProcess(i32) noreturn

; the handle a child is given for one of its standard streams: descriptor fd's, or this process's own (std, a
; GetStdHandle number) where fd is -1 - made inheritable, as STARTF_USESTDHANDLES needs
define internal ptr @__olang_win_handle(i32 %fd, i32 %std) {
entry:
  %own = icmp slt i32 %fd, 0
  br i1 %own, label %mine, label %theirs
mine:
  %s = call ptr @GetStdHandle(i32 %std)
  br label %set
theirs:
  %o = call i64 @_get_osfhandle(i32 %fd)
  %op = inttoptr i64 %o to ptr
  br label %set
set:
  %h = phi ptr [ %s, %mine ], [ %op, %theirs ]
  %r = call i32 @SetHandleInformation(ptr %h, i32 1, i32 1) ; HANDLE_FLAG_INHERIT
  ret ptr %h
}

; B12f: a program started by CreateProcess - app the program's path ("" to find the command line's first word as
; Windows does, through PATH, ".exe" added), cmd its whole command line (std/os quotes each argument as msvcrt's
; startup takes them apart), in, out and err its standard streams (-1: this process's), dir its working directory (""
; for this one's). Its process id, or -1 with errno set. The process's handle is kept, so the id names it until it is
; waited for
@__olang_win_pid0 = internal constant [1 x i8] zeroinitializer
define i32 @__olang_win_spawn(ptr %app, ptr %cmd, i32 %in, i32 %out, i32 %err, ptr %dir) {
entry:
  %si = alloca [104 x i8], align 8
  %pi = alloca [24 x i8], align 8
  call void @llvm.memset.p0.i64(ptr %si, i8 0, i64 104, i1 false)
  store i32 104, ptr %si
  %flagsp = getelementptr i8, ptr %si, i64 60
  store i32 256, ptr %flagsp ; STARTF_USESTDHANDLES
  %hin = call ptr @__olang_win_handle(i32 %in, i32 -10)
  %hout = call ptr @__olang_win_handle(i32 %out, i32 -11)
  %herr = call ptr @__olang_win_handle(i32 %err, i32 -12)
  %inp = getelementptr i8, ptr %si, i64 80
  store ptr %hin, ptr %inp
  %outp = getelementptr i8, ptr %si, i64 88
  store ptr %hout, ptr %outp
  %errp = getelementptr i8, ptr %si, i64 96
  store ptr %herr, ptr %errp
  %a0 = load i8, ptr %app
  %noapp = icmp eq i8 %a0, 0
  %appp = select i1 %noapp, ptr null, ptr %app
  %d0 = load i8, ptr %dir
  %nodir = icmp eq i8 %d0, 0
  %dirp = select i1 %nodir, ptr null, ptr %dir
  %ok = call i32 @CreateProcessA(ptr %appp, ptr %cmd, ptr null, ptr null, i32 1, i32 0, ptr null, ptr %dirp, ptr %si, ptr %pi)
  %failed = icmp eq i32 %ok, 0
  br i1 %failed, label %fail, label %started
started:
  %thp = getelementptr i8, ptr %pi, i64 8
  %th = load ptr, ptr %thp
  %c = call i32 @CloseHandle(ptr %th)
  %pidp = getelementptr i8, ptr %pi, i64 16
  %pid = load i32, ptr %pidp
  ret i32 %pid
fail:
  call void @__olang_win_errno()
  ret i32 -1
}

; the program with process id pid waited for (nohang: only asked whether it has ended): pid, with its exit code where
; a wait status keeps it (bits 8 to 15); 0 while it runs; -1 where there is no such program
define i32 @__olang_win_wait(i32 %pid, ptr %status, i32 %nohang) {
entry:
  %code = alloca i32, align 4
  %h = call ptr @OpenProcess(i32 1052672, i32 0, i32 %pid) ; SYNCHRONIZE | PROCESS_QUERY_LIMITED_INFORMATION
  %none = icmp eq ptr %h, null
  br i1 %none, label %fail, label %wait
wait:
  %poll = icmp ne i32 %nohang, 0
  %ms = select i1 %poll, i32 0, i32 -1
  %w = call i32 @WaitForSingleObject(ptr %h, i32 %ms)
  %running = icmp eq i32 %w, 258 ; WAIT_TIMEOUT
  br i1 %running, label %still, label %ended
still:
  %c0 = call i32 @CloseHandle(ptr %h)
  ret i32 0
ended:
  %g = call i32 @GetExitCodeProcess(ptr %h, ptr %code)
  %c1 = call i32 @CloseHandle(ptr %h)
  %v = load i32, ptr %code
  %low = and i32 %v, 255
  %st = shl i32 %low, 8
  store i32 %st, ptr %status
  ret i32 %pid
fail:
  %p = call ptr @_errno()
  store i32 10, ptr %p ; ECHILD
  ret i32 -1
}

; the program with process id pid ended now, with status 137 - what a shell says of one SIGKILL ended
define void @__olang_win_kill(i32 %pid) {
entry:
  %h = call ptr @OpenProcess(i32 1, i32 0, i32 %pid) ; PROCESS_TERMINATE
  %none = icmp eq ptr %h, null
  br i1 %none, label %done, label %kill
kill:
  %t = call i32 @TerminateProcess(ptr %h, i32 137)
  %c = call i32 @CloseHandle(ptr %h)
  br label %done
done:
  ret void
}

; a file with no name left once closed, read and written through its descriptor - os's memory file: a new file in the
; temporary directory, opened to be deleted when its last handle closes; -1 with errno set where it cannot be made
@__olang_win_tmppre = internal constant [4 x i8] c"olg\00"
define i32 @__olang_win_tempfd() {
entry:
  %dir = alloca [272 x i8], align 8
  %name = alloca [272 x i8], align 8
  %n = call i32 @GetTempPathA(i32 261, ptr %dir)
  %nodir = icmp eq i32 %n, 0
  br i1 %nodir, label %fail, label %make
make:
  %u = call i32 @GetTempFileNameA(ptr %dir, ptr @__olang_win_tmppre, i32 0, ptr %name)
  %nofile = icmp eq i32 %u, 0
  br i1 %nofile, label %fail, label %open
open:
  %fd = call i32 (ptr, i32, ...) @_open(ptr %name, i32 32834) ; _O_RDWR | _O_BINARY | _O_TEMPORARY
  ret i32 %fd
fail:
  call void @__olang_win_errno()
  ret i32 -1
}

; rename(2) as POSIX has it, replacing what is at to; and link(2)'s hard link: 0, or -1 with errno set
define i32 @__olang_win_rename(ptr %from, ptr %to) {
entry:
  %ok = call i32 @MoveFileExA(ptr %from, ptr %to, i32 3) ; MOVEFILE_REPLACE_EXISTING | MOVEFILE_COPY_ALLOWED
  %failed = icmp eq i32 %ok, 0
  br i1 %failed, label %fail, label %done
done:
  ret i32 0
fail:
  call void @__olang_win_errno()
  ret i32 -1
}

define i32 @__olang_win_link(ptr %from, ptr %to) {
entry:
  %ok = call i32 @CreateHardLinkA(ptr %to, ptr %from, ptr null)
  %failed = icmp eq i32 %ok, 0
  br i1 %failed, label %fail, label %done
done:
  ret i32 0
fail:
  call void @__olang_win_errno()
  ret i32 -1
}

; __olang_spawn_as (B19b's measuring, the evaluator's runs): the compiler's own, never on Windows
define i32 @__olang_spawn_as(ptr %path, ptr %args, i64 %count, i32 %in, i32 %out, i32 %err, ptr %dir) {
entry:
  %ep = call ptr @_errno()
  store i32 40, ptr %ep ; ENOSYS
  ret i32 -1
}

; ---- half and bfloat conversions ----

; LLVM converts to and from 16-bit floats by calling these where the CPU has no instruction for it, and mingw-w64's
; libgcc passes the 16-bit value otherwise than clang does (a conversion from it reads garbage) - so the runtime has
; its own, on the bits alone, rounding to nearest with ties to even as the instructions do. A NaN stays a NaN (quiet),
; its payload not kept
define float @__extendhfsf2(half %h) {
entry:
  %b = bitcast half %h to i16
  %x = zext i16 %b to i32
  %sign = and i32 %x, 32768
  %s = shl i32 %sign, 16
  %e = lshr i32 %x, 10
  %exp = and i32 %e, 31
  %man = and i32 %x, 1023
  %isinf = icmp eq i32 %exp, 31
  %iszero = icmp eq i32 %exp, 0
  br i1 %iszero, label %small, label %normal
normal:
  %e1 = add i32 %exp, 112
  %e2 = select i1 %isinf, i32 255, i32 %e1
  %eb = shl i32 %e2, 23
  %mb = shl i32 %man, 13
  %r0 = or i32 %eb, %mb
  %r1 = or i32 %r0, %s
  %f = bitcast i32 %r1 to float
  ret float %f
small:
  %mf = uitofp i32 %man to float
  %v = fmul float %mf, 0x3E70000000000000 ; 2^-24
  %vb = bitcast float %v to i32
  %vs = or i32 %vb, %s
  %g = bitcast i32 %vs to float
  ret float %g
}

define half @__truncsfhf2(float %f) {
entry:
  %x = bitcast float %f to i32
  %sign = and i32 %x, -2147483648
  %a = xor i32 %x, %sign
  %s16 = lshr i32 %sign, 16
  %big = icmp uge i32 %a, 1199570944 ; 0x47800000, 2^16
  br i1 %big, label %inf, label %finite
inf:
  %nan = icmp ugt i32 %a, 2139095040
  %ib = select i1 %nan, i32 32256, i32 31744
  br label %done
finite:
  %tiny = icmp ult i32 %a, 947912704 ; 0x38800000, 2^-14
  br i1 %tiny, label %sub, label %norm
sub:
  %af = bitcast i32 %a to float
  %sf = fadd float %af, 0.5
  %sb = bitcast float %sf to i32
  %sv = sub i32 %sb, 1056964608
  br label %done
norm:
  %sh = lshr i32 %a, 13
  %odd = and i32 %sh, 1
  %a1 = add i32 %a, -939520001 ; ((15 - 127) << 23) + 0xfff
  %a2 = add i32 %a1, %odd
  %nv = lshr i32 %a2, 13
  br label %done
done:
  %o = phi i32 [ %ib, %inf ], [ %sv, %sub ], [ %nv, %norm ]
  %r = or i32 %o, %s16
  %r16 = trunc i32 %r to i16
  %h = bitcast i16 %r16 to half
  ret half %h
}

define half @__truncdfhf2(double %d) {
entry:
  %x = bitcast double %d to i64
  %sign = and i64 %x, -9223372036854775808
  %a = xor i64 %x, %sign
  %s48 = lshr i64 %sign, 48
  %big = icmp uge i64 %a, 4679240012837945344 ; 0x40F0000000000000, 2^16
  br i1 %big, label %inf, label %finite
inf:
  %nan = icmp ugt i64 %a, 9218868437227405312
  %ib = select i1 %nan, i64 32256, i64 31744
  br label %done
finite:
  %tiny = icmp ult i64 %a, 4544132024016830464 ; 0x3F10000000000000, 2^-14
  br i1 %tiny, label %sub, label %norm
sub:
  %af = bitcast i64 %a to double
  %sf = fadd double %af, 0x41B0000000000000 ; 2^28, whose last place is 2^-24
  %sb = bitcast double %sf to i64
  %sv = sub i64 %sb, 4733283208366391296
  br label %done
norm:
  %sh = lshr i64 %a, 42
  %odd = and i64 %sh, 1
  %a1 = sub i64 %a, 4539628424389459968 ; (1023 - 15) << 52
  %a2 = add i64 %a1, 2199023255551 ; 2^41 - 1
  %a3 = add i64 %a2, %odd
  %nv = lshr i64 %a3, 42
  br label %done
done:
  %o = phi i64 [ %ib, %inf ], [ %sv, %sub ], [ %nv, %norm ]
  %r = or i64 %o, %s48
  %r16 = trunc i64 %r to i16
  %h = bitcast i16 %r16 to half
  ret half %h
}

define bfloat @__truncsfbf2(float %f) {
entry:
  %x = bitcast float %f to i32
  %nan = fcmp uno float %f, %f
  br i1 %nan, label %quiet, label %round
quiet:
  %q0 = lshr i32 %x, 16
  %q = or i32 %q0, 64
  br label %done
round:
  %hi = lshr i32 %x, 16
  %odd = and i32 %hi, 1
  %x1 = add i32 %x, 32767
  %x2 = add i32 %x1, %odd
  %r0 = lshr i32 %x2, 16
  br label %done
done:
  %r = phi i32 [ %q, %quiet ], [ %r0, %round ]
  %r16 = trunc i32 %r to i16
  %b = bitcast i16 %r16 to bfloat
  ret bfloat %b
}

define bfloat @__truncdfbf2(double %d) {
entry:
  %x = bitcast double %d to i64
  %sign = and i64 %x, -9223372036854775808
  %a = xor i64 %x, %sign
  %s48 = lshr i64 %sign, 48
  %big = icmp uge i64 %a, 5183643171103440896 ; 0x47F0000000000000, 2^128
  br i1 %big, label %inf, label %finite
inf:
  %nan = icmp ugt i64 %a, 9218868437227405312
  %ib = select i1 %nan, i64 32704, i64 32640
  br label %done
finite:
  %tiny = icmp ult i64 %a, 4039728865751334912 ; 0x3810000000000000, 2^-126
  br i1 %tiny, label %sub, label %norm
sub:
  %af = bitcast i64 %a to double
  %sf = fadd double %af, 0x3AE0000000000000 ; 2^-81, whose last place is 2^-133
  %sb = bitcast double %sf to i64
  %sv = sub i64 %sb, 4242390848983007232
  br label %done
norm:
  %sh = lshr i64 %a, 45
  %odd = and i64 %sh, 1
  %a1 = sub i64 %a, 4035225266123964416 ; (1023 - 127) << 52
  %a2 = add i64 %a1, 17592186044415 ; 2^44 - 1
  %a3 = add i64 %a2, %odd
  %nv = lshr i64 %a3, 45
  br label %done
done:
  %o = phi i64 [ %ib, %inf ], [ %sv, %sub ], [ %nv, %norm ]
  %r = or i64 %o, %s48
  %r16 = trunc i64 %r to i16
  %b = bitcast i16 %r16 to bfloat
  ret bfloat %b
}

; kept through LTO, which sees no call of them - code generation makes those after it - and would drop them
@llvm.used = appending global [5 x ptr] [ptr @__extendhfsf2, ptr @__truncsfhf2, ptr @__truncdfhf2, ptr @__truncsfbf2, ptr @__truncdfbf2], section "llvm.metadata"

; the standard streams in binary mode as the program starts, as every descriptor is on POSIX: msvcrt's text mode would
; write "\r\n" for each "\n" and end a read at a 0x1A byte
declare i32 @_setmode(i32, i32)
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 101, ptr @__olang_win_start, ptr null }]
define internal void @__olang_win_start() {
entry:
  %a = call i32 @_setmode(i32 0, i32 32768) ; _O_BINARY
  %b = call i32 @_setmode(i32 1, i32 32768)
  %c = call i32 @_setmode(i32 2, i32 32768)
  ret void
}
