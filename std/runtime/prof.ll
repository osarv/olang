; olang's runtime, the sampling profiler's part (B20): linked, in the same object as runtime.ll, only into a build
; "olang profile" makes - a build without it carries none of this, and runtime.ll's "; @if prof" lines (a thread's
; start and end, a failed check's abort) are where the rest of the runtime calls it. How the compiler reads this file:
; runtime.ll's header.
;
; The program's main calls __olang_prof_start first (the compiler writes that call into a profile build's main). With
; OLANG_PROFILE set in the environment - the file the samples go to, which olang profile names - it reserves the sample
; buffer, installs the handler for SIGPROF and makes the main thread's timer; without it, it does nothing and the
; program runs as any other. Every thread the runtime starts - a task's worker, os.RunOnStack's thread - makes its own
; timer as it starts and deletes it as it ends (__olang_prof_thread, __olang_prof_thread_end), so each thread is
; sampled by the CPU time it uses, PeriodNs at a time (CLOCK_THREAD_CPUTIME_ID, signalled to that very thread:
; SIGEV_THREAD_ID - samples of different threads never merge into one pending signal, as a process-wide setitimer's
; do). A thread C code starts is not sampled.
;
; The handler (__olang_prof_handler) is async-signal-safe: it calls nothing. It reads the interrupted pc, frame pointer
; and stack pointer from the signal's context (@@UC_PC@@, @@UC_FP@@, @@UC_SP@@ - where the C library's ucontext_t holds
; them on the architecture), walks the frame pointers - every function of a profile build keeps one ("frame-pointer"
; ="all") - from the interrupted frame up to the frame its thread started in (__olang_prof_top: never above it, never
; below the stack pointer, so it reads only the thread's own stack whatever a C function left in the register), at most
; MaxDepth return addresses, and copies the stack into the buffer as one record: a header word (the frame count, and
; above bit 8 the periods the sample stands for - 1 plus the timer's overrun, the expirations the kernel's tick folded
; into this signal) then the addresses, leaf first. A record's space is reserved with one atomic add, and its header
; is stored last (release), so a record is complete once its header is not zero. A full buffer drops what follows,
; counted. Nothing is allocated, nothing locked.
;
; At exit - main returning, os.Exit, an error escaping main (all three through exit(), so atexit), a failed check's
; abort (runtime.ll's hook), or SIGINT, SIGTERM or SIGHUP where the program has left them to end it (an interrupt typed
; at the terminal) - __olang_prof_stop writes the file with open/write/close alone (so it may run where a signal
; arrived): a header - "OLPROF01", the period in nanoseconds, the words of records, the samples dropped, the threads
; sampled - then the records, then /proc/self/maps as it reads at that moment, which olang profile needs to find each
; address's file. Only the process that started the profile writes it: a child it forks inherits the atexit, not the
; timers. A crash (SIGSEGV) writes nothing.
declare i32 @atexit(ptr)
declare i32 @open(ptr, i32, ...)
declare i64 @read(i32, ptr, i64)
declare i32 @close(i32)
declare i32 @gettid()
declare i32 @getpid()
declare i32 @timer_create(i32, ptr, ptr)
declare i32 @timer_settime(ptr, i32, ptr, ptr)
declare i32 @timer_delete(ptr)

; the buffer (mmap'd, its pages taken as they are written) and its size in words, the words reserved so far, the samples
; dropped, whether sampling is on, the threads given a timer, and the file the samples go to
@__olang_prof_buf = global ptr null
@__olang_prof_cap = global i64 0
@__olang_prof_used = global i64 0
@__olang_prof_dropped = global i64 0
@__olang_prof_on = global i32 0
@__olang_prof_threads = global i64 0
@__olang_prof_pid = global i32 0
@__olang_prof_path = global [4096 x i8] zeroinitializer
; this thread's top frame (the frame address of the function it started in: frames at or above it are the C library's)
; and its timer
@__olang_prof_top = thread_local(initialexec) global i64 0
@__olang_prof_timer = thread_local(initialexec) global ptr null
@__olang_prof_env = unnamed_addr constant [14 x i8] c"OLANG_PROFILE\00"
@__olang_prof_maps = unnamed_addr constant [16 x i8] c"/proc/self/maps\00"
@__olang_prof_magic = unnamed_addr constant [8 x i8] c"OLPROF01"

; PeriodNs: a sample per millisecond of a thread's CPU time (1000 a second, as the kernel's tick allows - a coarser tick
; folds several periods into one signal, which the overrun counts); MaxDepth: the frames a sample keeps (128); the
; buffer: 32M words (256MB of address space, reserved but not committed - about 25 minutes of CPU time at a typical
; depth of 20)

; the profile's start, from main: nothing unless OLANG_PROFILE names a file. %top is main's frame address
define void @__olang_prof_start(ptr %top) {
entry:
  %sa = alloca [@@SIGACTION_BYTES@@ x i8], align 16
  %path = call ptr @getenv(ptr @__olang_prof_env)
  %none = icmp eq ptr %path, null
  br i1 %none, label %off, label %named
named:
  %len = call i64 @strlen(ptr %path)
  %empty = icmp eq i64 %len, 0
  %long = icmp ugt i64 %len, 4095
  %bad = or i1 %empty, %long
  br i1 %bad, label %off, label %copy
copy:
  %n1 = add i64 %len, 1
  call void @llvm.memcpy.p0.p0.i64(ptr @__olang_prof_path, ptr %path, i64 %n1, i1 false)
  ; PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS|MAP_NORESERVE
  %buf = call ptr @mmap(ptr null, i64 268435456, i32 3, i32 16418, i32 -1, i64 0)
  %failed = icmp eq ptr %buf, inttoptr (i64 -1 to ptr)
  br i1 %failed, label %off, label %mapped
mapped:
  store ptr %buf, ptr @__olang_prof_buf
  store i64 33554432, ptr @__olang_prof_cap
  call void @llvm.memset.p0.i64(ptr %sa, i8 0, i64 @@SIGACTION_BYTES@@, i1 false)
  store ptr @__olang_prof_handler, ptr %sa
  %flagsp = getelementptr i8, ptr %sa, i64 @@SIGACTION_FLAGS@@
  ; SA_SIGINFO | SA_RESTART: the handler is given the context, and a system call it interrupts goes on
  store i32 268435460, ptr %flagsp
  %sr = call i32 @sigaction(i32 27, ptr %sa, ptr null) ; SIGPROF
  %pid = call i32 @getpid()
  store i32 %pid, ptr @__olang_prof_pid
  call void @__olang_prof_on_end(i32 2)  ; SIGINT
  call void @__olang_prof_on_end(i32 15) ; SIGTERM
  call void @__olang_prof_on_end(i32 1)  ; SIGHUP
  store atomic i32 1, ptr @__olang_prof_on release, align 4
  %ar = call i32 @atexit(ptr @__olang_prof_stop)
  call void @__olang_prof_thread(ptr %top)
  ret void
off:
  ret void
}

; sig made to write the samples before it ends the program as it would have - where nothing else handles it: its
; handler runs once (SA_RESETHAND), then sends the signal again, now to its default action
define internal void @__olang_prof_on_end(i32 %sig) {
entry:
  %old = alloca [@@SIGACTION_BYTES@@ x i8], align 16
  %sa = alloca [@@SIGACTION_BYTES@@ x i8], align 16
  %got = call i32 @sigaction(i32 %sig, ptr null, ptr %old)
  %h = load ptr, ptr %old
  %dfl = icmp eq ptr %h, null
  br i1 %dfl, label %take, label %out
take:
  call void @llvm.memset.p0.i64(ptr %sa, i8 0, i64 @@SIGACTION_BYTES@@, i1 false)
  store ptr @__olang_prof_ended, ptr %sa
  %flagsp = getelementptr i8, ptr %sa, i64 @@SIGACTION_FLAGS@@
  store i32 -2147483648, ptr %flagsp ; SA_RESETHAND
  %r = call i32 @sigaction(i32 %sig, ptr %sa, ptr null)
  br label %out
out:
  ret void
}

define internal void @__olang_prof_ended(i32 %sig) {
entry:
  call void @__olang_prof_stop()
  %r = call i32 @raise(i32 %sig)
  ret void
}

; a thread's start: its top frame kept and its CPU-time timer made, signalling SIGPROF to this thread each PeriodNs.
; Nothing while no profile is being taken
define void @__olang_prof_thread(ptr %top) {
entry:
  %ev = alloca [64 x i8], align 8
  %tm = alloca ptr, align 8
  %its = alloca [4 x i64], align 8
  %buf = load ptr, ptr @__olang_prof_buf
  %none = icmp eq ptr %buf, null
  br i1 %none, label %out, label %make
make:
  %t = ptrtoint ptr %top to i64
  store i64 %t, ptr @__olang_prof_top
  call void @llvm.memset.p0.i64(ptr %ev, i8 0, i64 64, i1 false)
  %signo = getelementptr i8, ptr %ev, i64 8
  store i32 27, ptr %signo ; SIGPROF
  %notify = getelementptr i8, ptr %ev, i64 12
  store i32 4, ptr %notify ; SIGEV_THREAD_ID
  %tidp = getelementptr i8, ptr %ev, i64 16
  %tid = call i32 @gettid()
  store i32 %tid, ptr %tidp
  %rc = call i32 @timer_create(i32 3, ptr %ev, ptr %tm) ; CLOCK_THREAD_CPUTIME_ID
  %made = icmp eq i32 %rc, 0
  br i1 %made, label %arm, label %out
arm:
  %timer = load ptr, ptr %tm
  ; every PeriodNs (1ms), the first after one
  store i64 0, ptr %its
  %i1 = getelementptr i64, ptr %its, i64 1
  store i64 1000000, ptr %i1
  %i2 = getelementptr i64, ptr %its, i64 2
  store i64 0, ptr %i2
  %i3 = getelementptr i64, ptr %its, i64 3
  store i64 1000000, ptr %i3
  %sr = call i32 @timer_settime(ptr %timer, i32 0, ptr %its, ptr null)
  store ptr %timer, ptr @__olang_prof_timer
  %th = atomicrmw add ptr @__olang_prof_threads, i64 1 monotonic, align 8
  br label %out
out:
  ret void
}

; a thread's end: its timer deleted, its top forgotten
define void @__olang_prof_thread_end() {
entry:
  %timer = load ptr, ptr @__olang_prof_timer
  %none = icmp eq ptr %timer, null
  br i1 %none, label %out, label %del
del:
  %r = call i32 @timer_delete(ptr %timer)
  store ptr null, ptr @__olang_prof_timer
  store i64 0, ptr @__olang_prof_top
  br label %out
out:
  ret void
}

; SIGPROF: the interrupted stack, as a record in the buffer
define internal void @__olang_prof_handler(i32 %sig, ptr %info, ptr %uc) {
entry:
  %frames = alloca [128 x i64], align 8
  %on = load atomic i32, ptr @__olang_prof_on acquire, align 4
  %live = icmp ne i32 %on, 0
  br i1 %live, label %go, label %out
go:
  %pcp = getelementptr i8, ptr %uc, i64 @@UC_PC@@
  %pc = load i64, ptr %pcp
  %fpp = getelementptr i8, ptr %uc, i64 @@UC_FP@@
  %fp0 = load i64, ptr %fpp
  %spp = getelementptr i8, ptr %uc, i64 @@UC_SP@@
  %sp = load i64, ptr %spp
  %top = load i64, ptr @__olang_prof_top
  store i64 %pc, ptr %frames
  br label %walk
  ; a frame record is [the caller's frame pointer, the return address into the caller], on every architecture here
walk:
  %n = phi i64 [ 1, %go ], [ %n1, %up ]
  %fp = phi i64 [ %fp0, %go ], [ %next, %up ]
  %full = icmp uge i64 %n, 128
  %below = icmp ult i64 %fp, %sp
  %above = icmp uge i64 %fp, %top
  %mis = and i64 %fp, 7
  %odd = icmp ne i64 %mis, 0
  %s1 = or i1 %full, %below
  %s2 = or i1 %s1, %above
  %stop = or i1 %s2, %odd
  br i1 %stop, label %record, label %step
step:
  %fpptr = inttoptr i64 %fp to ptr
  %rap = getelementptr i8, ptr %fpptr, i64 8
  %ra = load i64, ptr %rap
  %next = load i64, ptr %fpptr
  %slot = getelementptr i64, ptr %frames, i64 %n
  store i64 %ra, ptr %slot
  %n1 = add i64 %n, 1
  ; a stack grows down: the caller's frame is above, so a pointer that does not rise ends the walk
  %rises = icmp ugt i64 %next, %fp
  br i1 %rises, label %up, label %last
up:
  br label %walk
last:
  br label %record
record:
  %cnt = phi i64 [ %n, %walk ], [ %n1, %last ]
  ; the periods it stands for: 1, plus the timer's overrun where a POSIX timer sent it (si_code SI_TIMER)
  %codep = getelementptr i8, ptr %info, i64 8
  %code = load i32, ptr %codep
  %timer = icmp eq i32 %code, -2
  %ovp = getelementptr i8, ptr %info, i64 20
  %ov = load i32, ptr %ovp
  %ovpos = icmp sgt i32 %ov, 0
  %useov = and i1 %timer, %ovpos
  %ovn = select i1 %useov, i32 %ov, i32 0
  %ov64 = zext i32 %ovn to i64
  %big = icmp ugt i64 %ov64, 16777214
  %ovc = select i1 %big, i64 16777214, i64 %ov64
  %weight = add i64 %ovc, 1
  %wsh = shl i64 %weight, 8
  %hdr = or i64 %wsh, %cnt
  %need = add i64 %cnt, 1
  %at = atomicrmw add ptr @__olang_prof_used, i64 %need monotonic, align 8
  %end = add i64 %at, %need
  %cap = load i64, ptr @__olang_prof_cap
  %fits = icmp ule i64 %end, %cap
  br i1 %fits, label %write, label %drop
drop:
  %dr = atomicrmw add ptr @__olang_prof_dropped, i64 1 monotonic, align 8
  br label %out
write:
  %buf = load ptr, ptr @__olang_prof_buf
  %rec = getelementptr i64, ptr %buf, i64 %at
  %body = getelementptr i64, ptr %rec, i64 1
  %bytes = shl i64 %cnt, 3
  call void @llvm.memcpy.p0.p0.i64(ptr %body, ptr %frames, i64 %bytes, i1 false)
  store atomic i64 %hdr, ptr %rec release, align 8
  br label %out
out:
  ret void
}

; n bytes from p written to fd, as many write calls as it takes; false where one fails
define internal i1 @__olang_prof_put(i32 %fd, ptr %p, i64 %n) {
entry:
  br label %loop
loop:
  %at = phi ptr [ %p, %entry ], [ %at1, %more ]
  %left = phi i64 [ %n, %entry ], [ %left1, %more ]
  %done = icmp sle i64 %left, 0
  br i1 %done, label %ok, label %put
put:
  %w = call i64 @write(i32 %fd, ptr %at, i64 %left)
  %wrote = icmp sgt i64 %w, 0
  br i1 %wrote, label %more, label %bad
more:
  %at1 = getelementptr i8, ptr %at, i64 %w
  %left1 = sub i64 %left, %w
  br label %loop
ok:
  ret i1 true
bad:
  ret i1 false
}

; the samples written to the file OLANG_PROFILE named, once: at exit, or before a failed check aborts
define void @__olang_prof_stop() {
entry:
  %hdr = alloca [5 x i64], align 8
  %chunk = alloca [4096 x i8], align 8
  %pid = call i32 @getpid()
  %starter = load i32, ptr @__olang_prof_pid
  %ours = icmp eq i32 %pid, %starter
  br i1 %ours, label %take, label %out
take:
  %was = atomicrmw xchg ptr @__olang_prof_on, i32 0 acq_rel, align 4
  %first = icmp ne i32 %was, 0
  br i1 %first, label %open, label %out
open:
  ; O_WRONLY | O_CREAT | O_TRUNC, mode 0644
  %fd = call i32 (ptr, i32, ...) @open(ptr @__olang_prof_path, i32 577, i32 420)
  %opened = icmp sge i32 %fd, 0
  br i1 %opened, label %head, label %out
head:
  %used = load atomic i64, ptr @__olang_prof_used monotonic, align 8
  %cap = load i64, ptr @__olang_prof_cap
  %over = icmp ugt i64 %used, %cap
  %words = select i1 %over, i64 %cap, i64 %used
  %magic = load i64, ptr @__olang_prof_magic, align 1
  store i64 %magic, ptr %hdr
  %h1 = getelementptr i64, ptr %hdr, i64 1
  store i64 1000000, ptr %h1
  %h2 = getelementptr i64, ptr %hdr, i64 2
  store i64 %words, ptr %h2
  %h3 = getelementptr i64, ptr %hdr, i64 3
  %dropped = load atomic i64, ptr @__olang_prof_dropped monotonic, align 8
  store i64 %dropped, ptr %h3
  %h4 = getelementptr i64, ptr %hdr, i64 4
  %threads = load atomic i64, ptr @__olang_prof_threads monotonic, align 8
  store i64 %threads, ptr %h4
  %ph = call i1 @__olang_prof_put(i32 %fd, ptr %hdr, i64 40)
  %buf = load ptr, ptr @__olang_prof_buf
  %bytes = shl i64 %words, 3
  %pb = call i1 @__olang_prof_put(i32 %fd, ptr %buf, i64 %bytes)
  %mfd = call i32 (ptr, i32, ...) @open(ptr @__olang_prof_maps, i32 0)
  %mopen = icmp sge i32 %mfd, 0
  br i1 %mopen, label %maps, label %closing
maps:
  %r = call i64 @read(i32 %mfd, ptr %chunk, i64 4096)
  %got = icmp sgt i64 %r, 0
  br i1 %got, label %copy, label %mapsdone
copy:
  %pm = call i1 @__olang_prof_put(i32 %fd, ptr %chunk, i64 %r)
  br label %maps
mapsdone:
  %mc = call i32 @close(i32 %mfd)
  br label %closing
closing:
  %c = call i32 @close(i32 %fd)
  br label %out
out:
  ret void
}
