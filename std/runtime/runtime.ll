; olang's runtime: the LLVM IR a program links once, as an object of its own (compiler/DESIGN.md section 1.10) - the
; arena allocator and its chunk pool (O2, O8b), regions (docs/memory.md 3.4), the worker cache behind spawn and join (P1e), the
; checks' failure paths and the test unwinding (S18, P1d), text rendering (E11a, E11c), and what std reaches through
; "extern fn": the process, the file system and processes (X6), a call on a stack of its own and crash messages (S1,
; S2). Two parts beside it: san.ll, the scope sanitizer (B2f), compiled into the same object under -s; and dyncall.ll,
; the dynamic call over libffi (S3), an object of its own linked only into a program declaring it.
;
; The compiler reads these files when it builds - found as std is, under OLANG_STD or <compiler>/../std - and fills
; in two things before clang compiles them (bootstrap/runtime.c):
;   @@NAME@@         a fact about the target's C library, the size of a structure or where a field of it is (STAT_BYTES,
;                    JMP_BUF_BYTES, ...) - the row for the target's architecture, the host's checked against its headers;
;   ; @if COND       the lines up to "; @else" or "; @end" are kept only where COND holds, and those after "; @else"
;   ; @else          only where it does not. COND is "san" (a -s build) or an architecture ("x86_64", "aarch64"),
;   ; @end           or either after "!". Not nested.
; Each function is then given the build's attributes - the target's CPU and features, and sanitize_thread under -r -
; as each function the compiler generates is (B12, P7). The constants the kernel and the C library define alike on
; every architecture here - errno values, signal numbers, the S_IF* kinds, mmap's, sigaction's and sigaltstack's flags,
; sysconf's names - are written as numbers, named in a comment beside them and checked against the compiler's own
; headers (bootstrap/runtime.c).
;
; Every definition here exists once in a program; a module's code reaches it through declarations the compiler derives
; from this text, so a name defined here is a declaration in every module, and an "extern fn" naming one refers to it
; (X7). Under LTO - every build but -d and -r - the allocator still inlines into the code calling it.
;
; What follows first: a check the language guarantees failing, and the error return trace. A failed check either longjmps back
; to a test harness's recovery point (when @__olang_jmp_target is set) or hard-aborts (outside a test, where it is
; always null).
; P9: the target is thread_local, so it is null on every task thread and a failing assert there aborts rather than
; longjmping. A recovery point belongs to the stack that set it up, and a longjmp from a task would restore the
; SPAWNER's stack pointer onto the task's thread while the spawner itself is still parked in pthread_join on that very
; stack - two threads on one stack, which happened to appear to work. There is nowhere on a task thread to recover to
; (P6) - unlike an error, which a task hands to its join as a value (P4b), a failed check is a jump, and a jump has to
; land on the stack it was set up on.

declare i32 @printf(ptr, ...)
declare i32 @fputs(ptr, ptr)
declare i32 @fprintf(ptr, ptr, ...)
declare i32 @fflush(ptr)
declare i32 @snprintf(ptr, i64, ptr, ...)
declare double @strtod(ptr, ptr)
declare i64 @strtol(ptr, ptr, i32)
declare void @abort() noreturn
declare void @exit(i32) noreturn
declare ptr @malloc(i64)
declare ptr @aligned_alloc(i64, i64)
declare void @free(ptr)
declare ptr @mmap(ptr, i64, i32, i32, i32, i64)
declare i32 @munmap(ptr, i64)
declare void @llvm.memset.p0.i64(ptr, i8, i64, i1)
declare i64 @llvm.ctlz.i64(i64, i1)
declare i128 @llvm.cttz.i128(i128, i1)
; O8b: the chunk pool's budget, an eighth of the machine's memory
declare i64 @sysconf(i32)
declare double @llvm.arithmetic.fence.f64(double)
; X8: the exact functions of the C math library, as LLVM's intrinsics (cgExternFuncCall)
declare double @llvm.sqrt.f64(double)
declare float @llvm.sqrt.f32(float)
declare double @llvm.fma.f64(double, double, double)
declare float @llvm.fma.f32(float, float, float)
declare double @llvm.floor.f64(double)
declare float @llvm.floor.f32(float)
declare double @llvm.ceil.f64(double)
declare float @llvm.ceil.f32(float)
declare double @llvm.trunc.f64(double)
declare float @llvm.trunc.f32(float)
declare double @llvm.round.f64(double)
declare float @llvm.round.f32(float)
declare double @llvm.roundeven.f64(double)
declare float @llvm.roundeven.f32(float)
declare double @llvm.fabs.f64(double)
declare float @llvm.fabs.f32(float)
declare double @llvm.copysign.f64(double, double)
declare float @llvm.copysign.f32(float, float)
declare i32 @pthread_create(ptr, ptr, ptr, ptr)
declare i32 @pthread_detach(i64)
; no pthread_mutex_init/pthread_cond_init here on purpose: a program may declare either as an
; "extern fn" of its own (chan.olang does, with an i64 attr argument where this would want a
; ptr), and two declares of one symbol with different signatures is invalid IR. The worker's pair
; is zeroed instead, which IS the initialized state - glibc's PTHREAD_MUTEX_INITIALIZER and
; PTHREAD_COND_INITIALIZER are both all-zero. The same glibc dependency chan.olang already carries.
; The four below are declared identically by any extern that names them, so they never clash.
declare i32 @pthread_mutex_lock(ptr)
declare i32 @pthread_mutex_unlock(ptr)
declare i32 @pthread_cond_wait(ptr, ptr)
declare i32 @pthread_cond_broadcast(ptr)
declare i32 @setjmp(ptr) returns_twice
@stderr = external global ptr
@stdout = external global ptr
declare i64 @fwrite(ptr, i64, i64, ptr)
declare i32 @fputc(i32, ptr)
declare void @longjmp(ptr, i32) noreturn

; initialexec, not the default general-dynamic: LLVM's default lowers every access to a
; "call __tls_get_addr@PLT", which put a PLT call in the middle of the allocator's hot loop. The
; initial-exec model is a direct %fs-relative load instead, and costs nothing here because these
; are only ever linked into an executable, never dlopen'd.
@__olang_jmp_target = thread_local(initialexec) global ptr null
; S18b/P1d: the chain of scopes currently open on THIS thread, innermost first, spanning frames.
; thread_local for the same reason the jump target is - a scope belongs to one thread.
@__olang_unwind_top = thread_local(initialexec) global ptr null
; where that chain stood when the running test's setjmp was taken, so a longjmp knows how far to
; unwind. Only ever set on a test thread, since that is the only thread a longjmp happens on (P6).
@__olang_unwind_mark = thread_local(initialexec) global ptr null
; each check names what actually failed - they all used to print "assertion failed", including the
; two that are not assertions. NUL-terminated, which the old one was not: it was exactly 17 bytes
; for 16 characters plus a newline, so fputs/printf read past the end of the array looking for one.
@__olang_msg_oom = unnamed_addr constant [15 x i8] c"out of memory\0A\00"
@__olang_msg_spawn = unnamed_addr constant [22 x i8] c"could not start task\0A\00"
@__olang_msg_stack = unnamed_addr constant [42 x i8] c"could not start a thread with that stack\0A\00"

; S18d: the error return trace, kept in test builds and -d builds only - each place the error being returned went, its
; raise first: an "error" statement or a check failing under "checked" raises it (the trace starts again), each "try"
; that passes it on adds its place, and a clause that takes it clears the trace. The last 32 places are kept, as
; pointers to constant "FILE:LINE: what\n" lines; nothing is recorded on the success path.
@__olang_ert = thread_local(initialexec) global [32 x ptr] zeroinitializer
@__olang_ert_n = thread_local(initialexec) global i64 0
; S16: the error that ended the running test, "Type.WORD", for the harness's FAIL line (null for any other failure)
@__olang_fail_error = thread_local(initialexec) global ptr null
@__olang_ert_dropped = unnamed_addr constant [32 x i8] c"(%lld earlier places not kept)\0A\00"

define void @__olang_ert_raise(ptr %site) {
entry:
  store i64 0, ptr @__olang_ert_n
  call void @__olang_ert_pass(ptr %site)
  ret void
}

define void @__olang_ert_pass(ptr %site) {
entry:
  %n = load i64, ptr @__olang_ert_n
  %i = and i64 %n, 31
  %p = getelementptr [32 x ptr], ptr @__olang_ert, i64 0, i64 %i
  store ptr %site, ptr %p
  %n1 = add i64 %n, 1
  store i64 %n1, ptr @__olang_ert_n
  ret void
}

define void @__olang_ert_clear() {
entry:
  store i64 0, ptr @__olang_ert_n
  ret void
}

; the trace, oldest first, to the stream given
define void @__olang_ert_print(ptr %stream) {
entry:
  %n = load i64, ptr @__olang_ert_n
  %over = icmp ugt i64 %n, 32
  br i1 %over, label %drop, label %start
drop:
  %d = sub i64 %n, 32
  call i32 (ptr, ptr, ...) @fprintf(ptr %stream, ptr @__olang_ert_dropped, i64 %d)
  br label %start
start:
  %from = phi i64 [ 0, %entry ], [ %d, %drop ]
  br label %loop
loop:
  %i = phi i64 [ %from, %start ], [ %i1, %body ]
  %more = icmp ult i64 %i, %n
  br i1 %more, label %body, label %done
body:
  %k = and i64 %i, 31
  %p = getelementptr [32 x ptr], ptr @__olang_ert, i64 0, i64 %k
  %line = load ptr, ptr %p
  call i32 @fputs(ptr %line, ptr %stream)
  %i1 = add i64 %i, 1
  br label %loop
done:
  store i64 0, ptr @__olang_ert_n
  ret void
}

; E35: a "!" took an error - its message ("FILE:LINE: Type.WORD\n"), then the trace that led there, then the end a failed
; check makes
define void @__olang_bang_failed(ptr %msg) {
entry:
  %stream = call ptr @__olang_check_stream()
  call i32 @fputs(ptr %msg, ptr %stream)
  call void @__olang_ert_print(ptr %stream)
  call void @__olang_check_end()
  unreachable
}

; S16: an error left a test body - the test fails, its FAIL line naming the error ("Type.WORD") and the trace following
define void @__olang_test_error(ptr %name) {
entry:
  store ptr %name, ptr @__olang_fail_error
  call void @__olang_check_end()
  unreachable
}

; S16: the harness's FAIL line for a test an error ended: "FAIL - name: Type.WORD", then the trace; else "FAIL - name"
@__olang_fail_fmt = unnamed_addr constant [11 x i8] c"FAIL - %s\0A\00"
@__olang_fail_err_fmt = unnamed_addr constant [15 x i8] c"FAIL - %s: %s\0A\00"
define void @__olang_test_failed(ptr %desc) {
entry:
  %e = load ptr, ptr @__olang_fail_error
  %none = icmp eq ptr %e, null
  br i1 %none, label %plain, label %witherr
plain:
  call i32 (ptr, ...) @printf(ptr @__olang_fail_fmt, ptr %desc)
  call void @__olang_ert_clear()
  ret void
witherr:
  call i32 (ptr, ...) @printf(ptr @__olang_fail_err_fmt, ptr %desc, ptr %e)
  store ptr null, ptr @__olang_fail_error
  %out = load ptr, ptr @stdout
  call void @__olang_ert_print(ptr %out)
  ret void
}

; a runtime check the language guarantees has failed: a failed assert, an out-of-range slice bound,
; an array length out of range. Distinct from os.Exit, which is the program's own orderly decision -
; this one aborts, so it leaves a core dump and skips atexit, which is what you want for a broken
; invariant. Under a test it is recoverable, exactly as S18 says.
define void @__olang_check_failed(ptr %msg) {
entry:
  %stream = call ptr @__olang_check_stream()
  call i32 @fputs(ptr %msg, ptr %stream)
  call void @__olang_check_end()
  unreachable
}

; S18a: "assert cond, message" - its location's prefix, then the program's own text and a line end
define void @__olang_check_failed_text(ptr %where, { i64, ptr } %text) {
entry:
  %stream = call ptr @__olang_check_stream()
  call i32 @fputs(ptr %where, ptr %stream)
  %len = extractvalue { i64, ptr } %text, 0
  %data = extractvalue { i64, ptr } %text, 1
  call i64 @fwrite(ptr %data, i64 1, i64 %len, ptr %stream)
  call i32 @fputc(i32 10, ptr %stream)
  call void @__olang_check_end()
  unreachable
}

; where a failed check says what failed: stderr outside a test - not printf: stdout is block-buffered whenever
; it is not a terminal, so abort() discarded the message exactly when the output was being captured, and the
; unhandled-error path writes there too - and stdout inside one, beside the "FAIL - " line the harness prints
define ptr @__olang_check_stream() {
entry:
  %tgt = load ptr, ptr @__olang_jmp_target
  %isnull = icmp eq ptr %tgt, null
  %errs = load ptr, ptr @stderr
  %outs = load ptr, ptr @stdout
  %stream = select i1 %isnull, ptr %errs, ptr %outs
  ret ptr %stream
}

define void @__olang_check_end() {
entry:
  %tgt = load ptr, ptr @__olang_jmp_target
  %isnull = icmp eq ptr %tgt, null
  br i1 %isnull, label %hard, label %soft
hard:
  call void @abort()
  unreachable
soft:
  ; S18b/P1d: unwind BEFORE the jump, not after. A close emitted at the landing block is provably a
  ; no-op on the only CFG edge LLVM can see into it (the one from before the setjmp, where the
  ; scopes are still zeroed), so it gets deleted at -O3 - correct reasoning about a CFG that lies,
  ; since longjmp's edge is not modelled. Here the frames are all still live and the chain is real.
  %mk = load ptr, ptr @__olang_unwind_mark
  call void @__olang_unwind_to(ptr %mk)
  call void @longjmp(ptr %tgt, i32 1)
  unreachable
}

; P1c: "spawn" guarantees the call runs, so a thread the OS declines to create is a broken
; guarantee, not a condition to report - and pthread_create's result used to be discarded
; entirely. The thread-id slot is pre-zeroed, so a failure left 0 there, the work silently never
; happened, and __olang_join_tasks then handed 0 to pthread_join, which dereferences it. Running
; the call inline instead would look like graceful degradation and is not: two tasks that talk to
; each other through a channel deadlock the moment one of them runs to completion before the other
; starts. The cost is one compare per spawn, against ~51us to create the thread.
define void @__olang_alloc_check(ptr %p) {
entry:
  %ok = icmp ne ptr %p, null
  br i1 %ok, label %done, label %bad
bad:
  call void @__olang_check_failed(ptr @__olang_msg_oom)
  br label %done
done:
  ret void
}

define void @__olang_task_started(i32 %rc) {
entry:
  %ok = icmp eq i32 %rc, 0
  br i1 %ok, label %done, label %bad
bad:
  call void @__olang_check_failed(ptr @__olang_msg_spawn)
  br label %done
done:
  ret void
}


; the real backing for every scope (O2): a growable, chunked bump allocator. A chunk is a 64-byte header followed by
; cap bytes of data; a scope is a chunk-list head, lazily null until first use. Allocating only ever bumps a cursor or
; links on one more chunk - nothing is ever freed individually. Closing a scope gives its chunks to this thread's
; pool (O8b), where the next scope needing one takes it without asking the system again.
;
; The pool is a set of size classes, so any chunk big enough is found, not only the one on top. It used to be one
; list taken from its head: a closing scope gives its chunks back newest first, so a scope that took a large chunk and
; then a smaller one left the large one under the small one - the next call found the small one at the head, mapped
; another large one, and the old one was never taken again (std/linalg's Gemm lost a B panel per product that way). A
; class holds chunks of one size, four classes per power of two from 4KB up (4096, 5120, 6144, 7168, 8192, 10240, ...),
; and a new chunk is made at its class's size, so every chunk of a class holds whatever the class is asked for. A
; request takes the newest chunk of the smallest non-empty class that holds it, up to two powers of two above its own
; - one count of trailing zeros, over a bit per class saying which are non-empty - and asks the system only when
; there is none. Further up is left for a request its size: a small one would pin a large chunk in a scope that may
; live long.
;
; What the pool keeps is bounded, per thread, by an eighth of the machine's memory: a chunk given back beyond that
; returns the pool's least recently given back chunks to the system first (munmap, or free for one from
; aligned_alloc), or goes back itself when it alone is larger. So a phase that needed much memory gives it back once
; later ones do not use it, and a computation repeated in a loop takes the same chunks every time.
;
; A worker whose task has finished (P1e) keeps at most 1MB of its pool while it waits for the next: the rest goes, least
; recently given back first, into one pool every thread shares - shaped and bounded as a thread's own, behind a lock -
; which a thread looks in when its own has nothing that fits, before asking the system, taking up to 1MB of the size
; it found at once. (1MB, or a 64th of a pool's bound where that is less.) A parked worker's pool used to
; stay its own, up to the per-thread bound, reachable by nothing but the next task to run on it: four tasks of 200MB
; left 783MB with their parked workers, and the main thread mapped new memory for the same work. The shared pool's lock
; is taken only on that slow path, and only when a relaxed atomic read says the shared pool holds something; nothing
; on the paths every allocation and every scope's close take is shared or atomic.
; next, used, cap, the length mmap gave it (0 for one from aligned_alloc), whether it is fresh from the system and
; zero above "used" (__olang_scope_alloc_zeroed), its class, then the pool's: prev (a class is a circular list
; through next and prev) and the stamp ordering chunks by when they were given back. 64 bytes, so the data area
; after it is 64-aligned like the chunk itself (O8a)
%olang.chunk = type { ptr, i64, i64, i64, i64, i64, ptr, i64 }
; a pool of chunks (O8b): a list per class, by its newest chunk; bit k of the mask set when class k holds one; what
; the pool holds, in bytes of whole chunks; the bound on that - an eighth of the machine's memory, read when the
; pool first reaches it, 0 until then; and a clock, one more for every chunk given to the pool, so a smaller stamp
; was given back earlier
%olang.pool = type { [128 x ptr], i128, i64, i64, i64 }
%olang.dtornode = type { ptr, ptr, ptr }
; P1: one node per task, bump-allocated from the join block's own scope - which is exactly the
; lifetime the bookkeeping needs, since the join happens before that scope is reclaimed. An alloca
; would not do: a join block inside a loop would grow the stack by a node per task.
%olang.unwind = type { ptr, ptr, ptr }
; prev frame's node, this block's scope, its join head
%olang.task = type { ptr, i64, ptr, i64 }
; next, done flag, merge list, error code (P4b: 0 when none)
; P1e: a cached worker thread. It owns the mutex/condvar it parks on, so waiting for one task
; never blocks another. glibc's PTHREAD_MUTEX_INITIALIZER is all-zero, which is what lets the
; free-list lock below be a plain zeroinitializer; a worker's own pair is explicitly init'd.
; state: 0 fresh, 1 has work, 2 finished and waiting to be handed more.
%olang.worker = type { ptr, ptr, ptr, i64, ptr, [40 x i8], [48 x i8] }
%olang.merge = type { ptr, ptr }
; P2: next, a task's stand-in to fold back at the join (null: none)
; head chunk, head dtor-list node, TAIL chunk (all null if unused), owner, parts, parent. The tail is tracked so a
; task's stand-in can be spliced into what it stands in for in O(1) (P2) - chunks are PREPENDED, so the tail is
; whichever chunk this scope allocated first, set once when the list goes from empty to non-empty and never
; touched again. The owner, parts and parent are P2's, for a scope another thread reaches through a closure:
;  owner - the thread that builds into this scope itself (@__olang_self's value there); null until the scope is
;          first reached from another thread, so it is its opener's; @__olang_global_scope for a part of the
;          program's scope; @__olang_fwd_chunk once a stand-in has been folded and forwards
;  parts - on a scope with no parent, the PARTS other threads build into it through, one per thread, each a
;          scope of its own linked here and closed with it; on a part, the next part
;  parent - what a stand-in stands in for, or the scope a part is part of; null on any other scope
%olang.scope = type { ptr, ptr, ptr, ptr, ptr, ptr }
; P1: a thread's pool is thread_local, so two threads never take from or give to the same one. A scope belongs to
; exactly one thread, and so do the chunks it takes and gives back, which is what makes a per-thread pool
; correct rather than merely faster
@__olang_pool = thread_local(initialexec) global %olang.pool zeroinitializer
; one 4KB chunk kept beside the classes, outside their bookkeeping: what a block scope allocating a little on
; every pass of a loop takes and gives back, each time
@__olang_pool_spare = thread_local(initialexec) global ptr null
; O8b/P1e: the pool every thread shares - what a worker gives up as its task finishes, which any thread takes from
; before it asks the system for more. Guarded by its lock, and bounded as a thread's own is; holds is its byte
; count where a thread may read it without the lock (atomically, relaxed), so that one finding it empty takes no
; lock at all - a program that never spawns never takes it
@__olang_shared_pool = global %olang.pool zeroinitializer
@__olang_shared_lock = global [40 x i8] zeroinitializer
@__olang_shared_holds = global i64 0
; P2: a task's stand-in for a scope, once folded back at the join, FORWARDS to the scope it stood in for - a
; closure the task made, or was handed, may still hold it. Its head is this chunk, which has no room, so the
; allocation's fast path is the same as ever and fails on it, and the slow path finds the scope in its tail slot
@__olang_fwd_chunk = global %olang.chunk zeroinitializer
; O1b: the program's own scope - what a global's initializer allocates into. Never closed, so what
; it holds lives as long as the program. Its owner word marks it, and every part of it, as the program's
@__olang_global_scope = global %olang.scope { ptr null, ptr null, ptr null, ptr @__olang_global_scope, ptr null, ptr null }
; O1b/P2: the program's scope as this thread reaches it - the scope itself on the main thread, and on a worker a part
; of its own, made when the worker starts and kept for every task it runs (never closed, as the program's scope is
; not) - so no two threads ever bump one at once. A thread RunOnStack makes reaches it as its caller does
@__olang_prog_scope = thread_local(initialexec) global ptr @__olang_global_scope
; P2: who this thread is, to a scope's owner word - a number no other thread has had (an odd one, so never the
; address of anything), set as the thread starts; a thread RunOnStack makes is its caller, which waits for it.
; Not an address of the thread's own: a thread's storage is reused for the next one, which would then take a part
; made for the one before, or a stand-in it claimed, for its own
@__olang_self = thread_local(initialexec) global ptr null
; the region releases under way on this thread, and the stack of those deferred until the 256th has closed
; (__olang_region_free) - its entries, its room, how many it holds
@__olang_rel_depth = thread_local(initialexec) global i64 0
@__olang_rel_stack = thread_local(initialexec) global ptr null
@__olang_rel_cap = thread_local(initialexec) global i64 0
@__olang_rel_len = thread_local(initialexec) global i64 0
@__olang_thread_next = global i64 1

; an empty chunk whose data holds at least size bytes, when the spare will not do (__olang_scope_alloc takes that
; itself): the newest chunk of the smallest class in this thread's pool that holds size bytes, no more than eight
; classes (two powers of two) above the request's own, else the same from the shared pool, else a new one of its
; class's size - mapped from 128KB up, where glibc's malloc itself turns to mmap, and taken from aligned_alloc
; below. Never inlined, so __olang_scope_alloc stays small enough to inline wherever a scope allocates
define ptr @__olang_new_chunk(i64 %size) noinline {
entry:
  ; -s: a size no chunk can have, read out of storage a closed scope gave back - the length of an array whose
  ; descriptor holds the poison (__olang_san_poison) - is said to be that, where "out of memory" would mislead
; @if san
  call void @__olang_san_check_size(i64 %size)
; @end
  %small = icmp ule i64 %size, 4096
  br i1 %small, label %search, label %sized
  ; the class of a size s above 4KB: with e the top bit of s - 1 and q the two bits below it plus 4 (4 to 7),
  ; the class is 4(e - 11) + q - 7 and holds (q + 1) 2^(e - 2) bytes. 4096 itself is class 0; nothing smaller is
  ; made. The last class takes every size beyond it, which is why a chunk taken is still measured
sized:
  %x = sub i64 %size, 1
  %lz = call i64 @llvm.ctlz.i64(i64 %x, i1 true)
  %e = sub i64 63, %lz
  %sh = sub i64 %e, 2
  %q = lshr i64 %x, %sh
  %e4 = shl i64 %e, 2
  %c0 = add i64 %e4, %q
  %c1 = sub i64 %c0, 51
  %q1 = add i64 %q, 1
  %csz = shl i64 %q1, %sh
  %past = icmp ugt i64 %c1, 127
  %c = select i1 %past, i64 127, i64 %c1
  br label %search
search:
  %class = phi i64 [ 0, %entry ], [ %c, %sized ]
  %classsize = phi i64 [ 4096, %entry ], [ %csz, %sized ]
  %own = call ptr @__olang_pool_take(ptr @__olang_pool, i64 %class, i64 %size)
  %hasown = icmp ne ptr %own, null
  br i1 %hasown, label %take, label %shared
  ; the shared pool, locked only when it holds something: read without the lock, a stale answer costs at most a
  ; chunk made that could have been taken, or a lock taken for nothing
shared:
  %held = load atomic i64, ptr @__olang_shared_holds monotonic, align 8
  %anyheld = icmp ne i64 %held, 0
  br i1 %anyheld, label %lock, label %make
lock:
  call i32 @pthread_mutex_lock(ptr @__olang_shared_lock)
  %shared.c = call ptr @__olang_pool_take(ptr @__olang_shared_pool, i64 %class, i64 %size)
  %hasshared = icmp ne ptr %shared.c, null
  br i1 %hasshared, label %refill, label %unlock
refill:
  call void @__olang_shared_refill(ptr %shared.c)
  br label %unlock
unlock:
  call void @__olang_shared_publish()
  call i32 @pthread_mutex_unlock(ptr @__olang_shared_lock)
  br i1 %hasshared, label %take, label %make
take:
  %c.p = phi ptr [ %own, %search ], [ %shared.c, %unlock ]
  %usedptr.p = getelementptr %olang.chunk, ptr %c.p, i32 0, i32 1
  store i64 0, ptr %usedptr.p
  ; it has been used: what it holds is whatever its last scope left there
  %freshptr.p = getelementptr %olang.chunk, ptr %c.p, i32 0, i32 4
  store i64 0, ptr %freshptr.p
  ret ptr %c.p
make:
  %hdrsize = ptrtoint ptr getelementptr (%olang.chunk, ptr null, i32 1) to i64
  %total0 = add i64 %hdrsize, %classsize
  ; D13c: a mapped chunk comes zeroed, which __olang_scope_alloc_zeroed relies on to skip clearing it again
  ; -s: every chunk is mapped, whatever its size, so that a closed scope's can be protected while it is quarantined
  ; (__olang_san_quarantine) - and one the system will not map is taken from aligned_alloc after all, poisoned only
; @if !san
  %huge = icmp uge i64 %classsize, 131072
  br i1 %huge, label %map, label %heap
; @else
  br label %map
; @end
map:
  %mt1 = add i64 %total0, 4095
  %mtotal = and i64 %mt1, -4096
  ; PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS (Linux)
  %m = call ptr @mmap(ptr null, i64 %mtotal, i32 3, i32 34, i32 -1, i64 0)
  %mfailed = icmp eq ptr %m, inttoptr (i64 -1 to ptr)
  %mchunk = select i1 %mfailed, ptr null, ptr %m
; @if !san
  br label %got
; @else
  br i1 %mfailed, label %heap, label %got
; @end
heap:
  ; aligned_alloc requires a size that is a multiple of the alignment
  %total1 = add i64 %total0, 63
  %htotal = and i64 %total1, -64
  %h = call ptr @aligned_alloc(i64 64, i64 %htotal)
  br label %got
got:
  %new = phi ptr [ %mchunk, %map ], [ %h, %heap ]
  %total = phi i64 [ %mtotal, %map ], [ %htotal, %heap ]
  %maplen = phi i64 [ %mtotal, %map ], [ 0, %heap ]
  %zeroed = phi i64 [ 1, %map ], [ 0, %heap ]
  ; the allocator declining is a broken guarantee, as a thread that will not start is (P1c): reported, never
  ; written through - a null chunk used to be filled in as though it were one
  call void @__olang_alloc_check(ptr %new)
  %usedptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 1
  store i64 0, ptr %usedptr.n
  %capptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 2
  %realcap = sub i64 %total, %hdrsize
  store i64 %realcap, ptr %capptr.n
  %mapptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 3
  store i64 %maplen, ptr %mapptr.n
  %freshptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 4
  store i64 %zeroed, ptr %freshptr.n
  %classptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 5
  store i64 %class, ptr %classptr.n
  ret ptr %new
}

; the newest chunk of the smallest class of pool P that holds size bytes, no more than eight classes above class,
; taken out of P - or null when P has none
define ptr @__olang_pool_take(ptr %P, i64 %class, i64 %size) {
entry:
  %maskptr = getelementptr %olang.pool, ptr %P, i32 0, i32 1
  %mask = load i128, ptr %maskptr
  %class128 = zext i64 %class to i128
  %above = lshr i128 %mask, %class128
  %window = and i128 %above, 511
  %none = icmp eq i128 %window, 0
  br i1 %none, label %no, label %found
found:
  %tz = call i128 @llvm.cttz.i128(i128 %window, i1 true)
  %tz64 = trunc i128 %tz to i64
  %k = add i64 %class, %tz64
  %slot = getelementptr %olang.pool, ptr %P, i32 0, i32 0, i64 %k
  %c = load ptr, ptr %slot
  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2
  %cap = load i64, ptr %capptr
  %fits = icmp uge i64 %cap, %size
  br i1 %fits, label %take, label %no
take:
  call void @__olang_pool_unlink(ptr %P, ptr %c)
  ret ptr %c
no:
  ret ptr null
}

; what a parked worker keeps of its pool, and what a thread takes from the shared pool at once: 1MB, or a 64th of a
; pool's bound where that is less (a machine of less than 512MB) - read from this thread's own pool, its bound
; measured here when it has not been yet
define i64 @__olang_pool_batch() {
entry:
  %limitptr = getelementptr %olang.pool, ptr @__olang_pool, i32 0, i32 3
  %limit0 = load i64, ptr %limitptr
  %known = icmp ne i64 %limit0, 0
  br i1 %known, label %got, label %measure
measure:
  %measured = call i64 @__olang_pool_measure()
  store i64 %measured, ptr %limitptr
  br label %got
got:
  %limit = phi i64 [ %limit0, %entry ], [ %measured, %measure ]
  %part = lshr i64 %limit, 6
  %less = icmp ult i64 %part, 1048576
  %batch = select i1 %less, i64 %part, i64 1048576
  ret i64 %batch
}

; with the shared pool's lock held, after chunk first was taken from it: more of first's class into this thread's
; pool, until a batch (__olang_pool_batch, 1MB) has moved with first or the class is empty - so a thread making many
; chunks of one size takes the lock once a megabyte of them rather than once a chunk
define void @__olang_shared_refill(ptr %first) noinline {
entry:
  %batch = call i64 @__olang_pool_batch()
  %classptr = getelementptr %olang.chunk, ptr %first, i32 0, i32 5
  %k = load i64, ptr %classptr
  %slot = getelementptr %olang.pool, ptr @__olang_shared_pool, i32 0, i32 0, i64 %k
  %capptr0 = getelementptr %olang.chunk, ptr %first, i32 0, i32 2
  %cap0 = load i64, ptr %capptr0
  %moved0 = add i64 %cap0, 64
  br label %next
next:
  %moved = phi i64 [ %moved0, %entry ], [ %moved2, %move ]
  %c = load ptr, ptr %slot
  %empty = icmp eq ptr %c, null
  %enough = icmp uge i64 %moved, %batch
  %stop = or i1 %empty, %enough
  br i1 %stop, label %done, label %move
move:
  call void @__olang_pool_unlink(ptr @__olang_shared_pool, ptr %c)
  call void @__olang_pool_keep(ptr @__olang_pool, ptr %c)
  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2
  %cap = load i64, ptr %capptr
  %more = add i64 %cap, 64
  %moved2 = add i64 %moved, %more
  br label %next
done:
  ret void
}

; the shared pool's byte count where a thread may read it without the lock; called with the lock held
define void @__olang_shared_publish() {
entry:
  %bytesptr = getelementptr %olang.pool, ptr @__olang_shared_pool, i32 0, i32 2
  %bytes = load i64, ptr %bytesptr
  store atomic i64 %bytes, ptr @__olang_shared_holds monotonic, align 8
  ret void
}

; takes chunk c out of its class's circular list in pool P: the class is emptied when c was all it held, and its
; newest chunk is the one after c when c was the newest
define void @__olang_pool_unlink(ptr %P, ptr %c) {
entry:
  %classptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 5
  %k = load i64, ptr %classptr
  %slot = getelementptr %olang.pool, ptr %P, i32 0, i32 0, i64 %k
  %nextptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 0
  %next = load ptr, ptr %nextptr
  %alone = icmp eq ptr %next, %c
  br i1 %alone, label %empty, label %link
empty:
  store ptr null, ptr %slot
  %maskptr = getelementptr %olang.pool, ptr %P, i32 0, i32 1
  %mask = load i128, ptr %maskptr
  %k128 = zext i64 %k to i128
  %bit = shl i128 1, %k128
  %keep = xor i128 %bit, -1
  %mask2 = and i128 %mask, %keep
  store i128 %mask2, ptr %maskptr
  br label %count
link:
  %prevptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 6
  %prev = load ptr, ptr %prevptr
  %pnextptr = getelementptr %olang.chunk, ptr %prev, i32 0, i32 0
  store ptr %next, ptr %pnextptr
  %nprevptr = getelementptr %olang.chunk, ptr %next, i32 0, i32 6
  store ptr %prev, ptr %nprevptr
  %head = load ptr, ptr %slot
  %washead = icmp eq ptr %head, %c
  %head2 = select i1 %washead, ptr %next, ptr %head
  store ptr %head2, ptr %slot
  br label %count
count:
  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2
  %cap = load i64, ptr %capptr
  %bytesptr = getelementptr %olang.pool, ptr %P, i32 0, i32 2
  %bytes = load i64, ptr %bytesptr
  %less = sub i64 %bytes, %cap
  %hdr = sub i64 %less, 64
  store i64 %hdr, ptr %bytesptr
  ret void
}

; chunk c back to the system it came from: munmap for a mapped one, free for one from aligned_alloc
define void @__olang_chunk_release(ptr %c) {
entry:
  %mapptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 3
  %maplen = load i64, ptr %mapptr
  %mapped = icmp ne i64 %maplen, 0
  br i1 %mapped, label %unmap, label %release
unmap:
  %r = call i32 @munmap(ptr %c, i64 %maplen)
  ret void
release:
  call void @free(ptr %c)
  ret void
}

; O8b: chunk c into pool P, as the newest of its class, stamped by P's clock - with no regard to P's bound
define void @__olang_pool_put(ptr %P, ptr %c) {
entry:
  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2
  %cap = load i64, ptr %capptr
  %need = add i64 %cap, 64
  %bytesptr = getelementptr %olang.pool, ptr %P, i32 0, i32 2
  %bytes = load i64, ptr %bytesptr
  %after = add i64 %bytes, %need
  store i64 %after, ptr %bytesptr
  %clockptr = getelementptr %olang.pool, ptr %P, i32 0, i32 4
  %clock = load i64, ptr %clockptr
  %tick = add i64 %clock, 1
  store i64 %tick, ptr %clockptr
  %cstampptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 7
  store i64 %tick, ptr %cstampptr
  %classptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 5
  %class = load i64, ptr %classptr
  %cslot = getelementptr %olang.pool, ptr %P, i32 0, i32 0, i64 %class
  %head = load ptr, ptr %cslot
  store ptr %c, ptr %cslot
  %cnextptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 0
  %cprevptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 6
  %first = icmp eq ptr %head, null
  br i1 %first, label %alone, label %link
alone:
  store ptr %c, ptr %cnextptr
  store ptr %c, ptr %cprevptr
  %maskptr = getelementptr %olang.pool, ptr %P, i32 0, i32 1
  %pmask = load i128, ptr %maskptr
  %class128 = zext i64 %class to i128
  %bit = shl i128 1, %class128
  %pmask2 = or i128 %pmask, %bit
  store i128 %pmask2, ptr %maskptr
  ret void
link:
  %hprevptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 6
  %tail.l = load ptr, ptr %hprevptr
  store ptr %head, ptr %cnextptr
  store ptr %tail.l, ptr %cprevptr
  %tnextptr = getelementptr %olang.chunk, ptr %tail.l, i32 0, i32 0
  store ptr %c, ptr %tnextptr
  store ptr %c, ptr %hprevptr
  ret void
}

; O8b: chunk c into pool P - once there is room for it under P's bound, which __olang_pool_make_room makes out of
; line, or c itself goes back to the system when it alone is larger
define void @__olang_pool_keep(ptr %P, ptr %c) {
entry:
  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2
  %cap = load i64, ptr %capptr
  %need = add i64 %cap, 64
  %bytesptr = getelementptr %olang.pool, ptr %P, i32 0, i32 2
  %bytes = load i64, ptr %bytesptr
  %after = add i64 %bytes, %need
  %limitptr = getelementptr %olang.pool, ptr %P, i32 0, i32 3
  %limit = load i64, ptr %limitptr
  %over = icmp ugt i64 %after, %limit
  br i1 %over, label %bound, label %put
bound:
  %room = call i1 @__olang_pool_make_room(ptr %P, i64 %need)
  br i1 %room, label %put, label %drop
drop:
  call void @__olang_chunk_release(ptr %c)
  ret void
put:
  call void @__olang_pool_put(ptr %P, ptr %c)
  ret void
}

; a chunk a closing scope gives back, into this thread's pool: a 4KB one becomes the spare, the newest of its class,
; and the one it replaces goes into the class
define void @__olang_pool_give(ptr %given) {
entry:
  %classptr0 = getelementptr %olang.chunk, ptr %given, i32 0, i32 5
  %class0 = load i64, ptr %classptr0
  %small = icmp eq i64 %class0, 0
  br i1 %small, label %spare, label %pool
spare:
  %s = load ptr, ptr @__olang_pool_spare
  store ptr %given, ptr @__olang_pool_spare
  %free = icmp eq ptr %s, null
  br i1 %free, label %done, label %pool
done:
  ret void
pool:
  %c = phi ptr [ %given, %entry ], [ %s, %spare ]
  call void @__olang_pool_keep(ptr @__olang_pool, ptr %c)
  ret void
}

; each chunk of a closed scope's list to the pool - a chunk's next is read before it is given, since giving relinks
; it
define void @__olang_pool_give_list(ptr %head) noinline {
entry:
  br label %each
each:
  %cur = phi ptr [ %head, %entry ], [ %next, %each ]
  %nextptr = getelementptr %olang.chunk, ptr %cur, i32 0, i32 0
  %next = load ptr, ptr %nextptr
  call void @__olang_pool_give(ptr %cur)
  %atend = icmp eq ptr %next, null
  br i1 %atend, label %done, label %each
done:
  ret void
}

; the least recently given chunk of pool P, null when P holds none: the oldest of a class is the one before its
; newest, and the oldest of all the oldest of some class, so a pass over the non-empty classes finds it
define ptr @__olang_pool_oldest(ptr %P) {
entry:
  %maskptr = getelementptr %olang.pool, ptr %P, i32 0, i32 1
  %mask = load i128, ptr %maskptr
  %anyleft = icmp ne i128 %mask, 0
  br i1 %anyleft, label %scan, label %none
scan:
  %m = phi i128 [ %mask, %entry ], [ %mrest, %scan ]
  %best = phi ptr [ null, %entry ], [ %best2, %scan ]
  %beststamp = phi i64 [ -1, %entry ], [ %beststamp2, %scan ]
  %tz = call i128 @llvm.cttz.i128(i128 %m, i1 true)
  %k = trunc i128 %tz to i64
  %slot = getelementptr %olang.pool, ptr %P, i32 0, i32 0, i64 %k
  %newest = load ptr, ptr %slot
  %tailptr = getelementptr %olang.chunk, ptr %newest, i32 0, i32 6
  %tail = load ptr, ptr %tailptr
  %stampptr = getelementptr %olang.chunk, ptr %tail, i32 0, i32 7
  %stamp = load i64, ptr %stampptr
  %older = icmp ult i64 %stamp, %beststamp
  %best2 = select i1 %older, ptr %tail, ptr %best
  %beststamp2 = select i1 %older, i64 %stamp, i64 %beststamp
  %m1 = sub i128 %m, 1
  %mrest = and i128 %m, %m1
  %more = icmp ne i128 %mrest, 0
  br i1 %more, label %scan, label %found
found:
  ret ptr %best2
none:
  ret ptr null
}

; makes room in pool P for need more bytes, false when need alone is beyond the bound: gives the least recently
; given back chunks to the system until the rest and need fit. The bound is measured here the first time it is
; reached (0 until then)
define i1 @__olang_pool_make_room(ptr %P, i64 %need) noinline {
entry:
  %bytesptr = getelementptr %olang.pool, ptr %P, i32 0, i32 2
  %limitptr = getelementptr %olang.pool, ptr %P, i32 0, i32 3
  br label %room
room:
  %bytes = load i64, ptr %bytesptr
  %after = add i64 %bytes, %need
  %limit = load i64, ptr %limitptr
  %over = icmp ugt i64 %after, %limit
  br i1 %over, label %bound, label %yes
bound:
  %known = icmp ne i64 %limit, 0
  br i1 %known, label %evict, label %measure
measure:
  %measured = call i64 @__olang_pool_measure()
  store i64 %measured, ptr %limitptr
  br label %room
evict:
  %toobig = icmp ugt i64 %need, %limit
  br i1 %toobig, label %no, label %oldest
oldest:
  %victim = call ptr @__olang_pool_oldest(ptr %P)
  %gone = icmp eq ptr %victim, null
  br i1 %gone, label %no, label %release
release:
  call void @__olang_pool_unlink(ptr %P, ptr %victim)
  call void @__olang_chunk_release(ptr %victim)
  br label %room
yes:
  ret i1 1
no:
  ret i1 0
}

; P1e/O8b: a worker whose task has finished moves its pool into the shared one, least recently given back first,
; until it keeps at most a batch (__olang_pool_batch, 1MB): what it gives up then serves any thread, where a parked
; worker's pool would serve only the task that runs on it next. Nothing is locked when it keeps no more than that
; already - the common case, a task that allocated little. The spare stays: it is outside the count
define void @__olang_pool_share() noinline {
entry:
  %keep = call i64 @__olang_pool_batch()
  %bytesptr = getelementptr %olang.pool, ptr @__olang_pool, i32 0, i32 2
  %bytes0 = load i64, ptr %bytesptr
  %over = icmp ugt i64 %bytes0, %keep
  br i1 %over, label %lock, label %done
lock:
  call i32 @pthread_mutex_lock(ptr @__olang_shared_lock)
  br label %move
  ; the pool holds more than keep, so it holds a chunk
move:
  %c = call ptr @__olang_pool_oldest(ptr @__olang_pool)
  call void @__olang_pool_unlink(ptr @__olang_pool, ptr %c)
  call void @__olang_pool_keep(ptr @__olang_shared_pool, ptr %c)
  %bytes = load i64, ptr %bytesptr
  %more = icmp ugt i64 %bytes, %keep
  br i1 %more, label %move, label %unlock
unlock:
  call void @__olang_shared_publish()
  call i32 @pthread_mutex_unlock(ptr @__olang_shared_lock)
  br label %done
done:
  ret void
}

; the pool's bound: an eighth of the machine's memory, from sysconf, or 1GB where it will not say. The names are the
; C library's own constants, read from the compiler's headers - sound while the target is the host, as the rest of
; the runtime's use of them (X6)
define i64 @__olang_pool_measure() {
entry:
  %pages = call i64 @sysconf(i32 85) ; _SC_PHYS_PAGES
  %psize = call i64 @sysconf(i32 30) ; _SC_PAGESIZE
  %pagesok = icmp sgt i64 %pages, 0
  %psizeok = icmp sgt i64 %psize, 0
  %ok = and i1 %pagesok, %psizeok
  %ram = mul i64 %pages, %psize
  %eighth = lshr i64 %ram, 3
  %limit = select i1 %ok, i64 %eighth, i64 1073741824
  ret i64 %limit
}

; O8a: an array's storage, or anything else that is not one aggregate - aligned by its own size, so a large array
; is ready for the widest vector loads: 8 bytes below 32, 32 below 64, and 64 from 64 up. Two selects, no
; branch; with the size known while compiling, as it mostly is, they fold away
define noalias ptr @__olang_scope_alloc(ptr %scope, i64 %rawsize) alwaysinline {
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

; bump-allocates size bytes from scope, aligned to aln (a power of two, at least 8), growing (linking on one more
; chunk) if the current one doesn't have room. O8a: a struct's or an enum's storage takes its own alignment
; (cgAllocAlign) - the size class an array's takes would leave a 40-byte struct 64 bytes apart from the next
define noalias ptr @__olang_scope_alloc_a(ptr %scope, i64 %rawsize, i64 %aln) {
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
  ret ptr %result
  ; the pool's spare 4KB chunk when it is there and holds this (O8b) - what a block allocating a little on each pass
  ; of a loop takes every time, taken here; anything else is __olang_new_chunk's
needchunk:
  %isfwd = icmp eq ptr %head, @__olang_fwd_chunk
  br i1 %isfwd, label %forward, label %fresh
forward:
  %fwdptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 2
  %fwd = load ptr, ptr %fwdptr, !tbaa !59
  %viafwd = tail call ptr @__olang_scope_alloc_a(ptr %fwd, i64 %rawsize, i64 %aln)
  ret ptr %viafwd
fresh:
  %small = icmp ule i64 %size, 4096
  %spare = load ptr, ptr @__olang_pool_spare
  %hasspare = icmp ne ptr %spare, null
  %quick = and i1 %small, %hasspare
  br i1 %quick, label %usespare, label %callnew
  ; it has been used: what it holds is whatever its last scope left there
usespare:
  store ptr null, ptr @__olang_pool_spare
  %sparefresh = getelementptr %olang.chunk, ptr %spare, i32 0, i32 4
  store i64 0, ptr %sparefresh
  br label %link
callnew:
  %made = call ptr @__olang_new_chunk(i64 %size)
  br label %link
link:
  %newchunk = phi ptr [ %spare, %usespare ], [ %made, %callnew ]
  %oldhead = load ptr, ptr %headptr, !tbaa !59
  %newnextptr = getelementptr %olang.chunk, ptr %newchunk, i32 0, i32 0
  store ptr %oldhead, ptr %newnextptr, !tbaa !60
  store ptr %newchunk, ptr %headptr, !tbaa !59
  ; first chunk in this scope: it is the tail, and stays the tail for the scope's whole life, since
  ; every later chunk is prepended ahead of it
  %wasempty = icmp eq ptr %oldhead, null
  br i1 %wasempty, label %settail, label %first
settail:
  %tailptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 2
  store ptr %newchunk, ptr %tailptr, !tbaa !59
  br label %first
  ; a chunk from __olang_new_chunk is empty (its offset 0) and its data area 64-aligned, so this allocation is its
  ; first bytes, whatever alignment it wants
first:
  %ncusedptr = getelementptr %olang.chunk, ptr %newchunk, i32 0, i32 1
  store i64 %size, ptr %ncusedptr, !tbaa !60
  %ncdata = getelementptr %olang.chunk, ptr %newchunk, i32 1
  ret ptr %ncdata
}

; D13c: size bytes of ZEROS from scope - an "Array<T>(n)" with no fill. Bumped as any allocation is, then cleared -
; unless it came from a chunk the system has just handed over (__olang_new_chunk maps a large one, and mapped memory
; is zero) that no scope has used before: there, everything at or above the chunk's bump offset has never been
; handed out, so it is still zero and its pages are first touched by the program's own writes. A chunk that comes
; back through the pool is dirty and is cleared as any other.
define noalias ptr @__olang_scope_alloc_zeroed(ptr %scope, i64 %rawsize) {
entry:
  %p = call ptr @__olang_scope_alloc(ptr %scope, i64 %rawsize)
  %big = icmp uge i64 %rawsize, 4096
  br i1 %big, label %check, label %clear
check:
  ; the chunk p was bumped from is the scope's head: __olang_scope_alloc takes it from there or puts a new one there
  %headptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 0
  %head = load ptr, ptr %headptr
  %freshptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 4
  %fresh = load i64, ptr %freshptr
  %untouched = icmp ne i64 %fresh, 0
  br i1 %untouched, label %done, label %clear
clear:
  call void @llvm.memset.p0.i64(ptr %p, i8 0, i64 %rawsize, i1 false)
  br label %done
done:
  ret ptr %p
}

; E11a: an integer in decimal - the length it takes (a digit count: the bit length gives the count to within
; one, a power of ten settles it), and with a destination, the digits written there, two at a time from a
; table, last first. No snprintf: measuring is a few instructions, and writing is no more than it has to be.
; A null destination only measures, as every rendering's contract says (E11a); a real one has the room the
; measurement said, and nothing is written past it. A float's rendering is @__olang_fmt_float's, below.
@__olang_fmt_g = unnamed_addr constant [6 x i8] c"%.17g\00"
@__olang_pow10 = unnamed_addr constant [20 x i64] [i64 1, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616]
@__olang_digits2 = unnamed_addr constant [200 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
define i64 @__olang_fmt_u64(ptr %buf, i64 %v) {
entry:
  %v1 = or i64 %v, 1
  %lz = call i64 @llvm.ctlz.i64(i64 %v1, i1 true)
  %bits = sub i64 64, %lz
  %t0 = mul i64 %bits, 1233
  %t = lshr i64 %t0, 12
  %pp = getelementptr [20 x i64], ptr @__olang_pow10, i64 0, i64 %t
  %pw = load i64, ptr %pp
  %below = icmp ult i64 %v1, %pw
  %belowi = zext i1 %below to i64
  %t1 = add i64 %t, 1
  %len = sub i64 %t1, %belowi
  %measure = icmp eq ptr %buf, null
  br i1 %measure, label %done, label %write
write:
  %end = getelementptr i8, ptr %buf, i64 %len
  br label %pairs
pairs:
  %m = phi i64 [ %v, %write ], [ %q, %pair ]
  %p = phi ptr [ %end, %write ], [ %p2, %pair ]
  %big = icmp uge i64 %m, 100
  br i1 %big, label %pair, label %last
pair:
  %q = udiv i64 %m, 100
  %q100 = mul i64 %q, 100
  %r = sub i64 %m, %q100
  %ri = shl i64 %r, 1
  %src = getelementptr i8, ptr @__olang_digits2, i64 %ri
  %d = load i16, ptr %src, align 1
  %p2 = getelementptr i8, ptr %p, i64 -2
  store i16 %d, ptr %p2, align 1
  br label %pairs
last:
  %two = icmp uge i64 %m, 10
  br i1 %two, label %lasttwo, label %lastone
lasttwo:
  %li = shl i64 %m, 1
  %lsrc = getelementptr i8, ptr @__olang_digits2, i64 %li
  %ld = load i16, ptr %lsrc, align 1
  %lp = getelementptr i8, ptr %p, i64 -2
  store i16 %ld, ptr %lp, align 1
  br label %done
lastone:
  %c = add i64 %m, 48
  %c8 = trunc i64 %c to i8
  %op = getelementptr i8, ptr %p, i64 -1
  store i8 %c8, ptr %op
  br label %done
done:
  ret i64 %len
}

; a signed one: a '-', then the magnitude - "0 - v" is the magnitude as an unsigned number for every v, the
; most negative included, since the subtraction wraps (E6c)
define i64 @__olang_fmt_i64(ptr %buf, i64 %v) {
entry:
  %neg = icmp slt i64 %v, 0
  br i1 %neg, label %minus, label %plain
plain:
  %n = call i64 @__olang_fmt_u64(ptr %buf, i64 %v)
  ret i64 %n
minus:
  %mag = sub i64 0, %v
  %measure = icmp eq ptr %buf, null
  br i1 %measure, label %count, label %sign
sign:
  store i8 45, ptr %buf
  br label %count
count:
  %after = getelementptr i8, ptr %buf, i64 1
  %rest = select i1 %measure, ptr null, ptr %after
  %k = call i64 @__olang_fmt_u64(ptr %rest, i64 %mag)
  %k1 = add i64 %k, 1
  ret i64 %k1
}

; T4: an integer - negative when %neg, of magnitude %m - as a BF16, rounded ONCE to its 8 significant bits, ties
; to even. LLVM's own "sitofp ... to bfloat" goes through a float at -O0, rounding twice, and so came out one
; step off where -O3 and the evaluator did not: the magnitude is cut to its top 8 bits here, in integers
define bfloat @__olang_int_bf16(i64 %m, i1 %neg) {
entry:
  %lz = call i64 @llvm.ctlz.i64(i64 %m, i1 false)
  %bits = sub i64 64, %lz
  %big = icmp ugt i64 %bits, 8
  %shr = sub i64 %bits, 8
  %sh = select i1 %big, i64 %shr, i64 0
  %q = lshr i64 %m, %sh
  %one = shl i64 1, %sh
  %mask = sub i64 %one, 1
  %rem = and i64 %m, %mask
  %half = lshr i64 %one, 1
  %gt = icmp ugt i64 %rem, %half
  %eq = icmp eq i64 %rem, %half
  %odd = trunc i64 %q to i1
  %tie = and i1 %eq, %odd
  %up0 = or i1 %gt, %tie
  %up = and i1 %up0, %big
  %upi = zext i1 %up to i64
  %q2 = add i64 %q, %upi
  %lsh = sub i64 8, %bits
  %lsh2 = select i1 %big, i64 0, i64 %lsh
  %q3 = shl i64 %q2, %lsh2
  %carry = icmp eq i64 %q3, 256
  %q4 = select i1 %carry, i64 128, i64 %q3
  %e0 = sub i64 %bits, 1
  %ce = zext i1 %carry to i64
  %e1 = add i64 %e0, %ce
  %be = add i64 %e1, 127
  %mant = and i64 %q4, 127
  %ebits = shl i64 %be, 7
  %mag16 = or i64 %ebits, %mant
  %nz = icmp ne i64 %m, 0
  %mag = select i1 %nz, i64 %mag16, i64 0
  %sign = select i1 %neg, i64 32768, i64 0
  %all = or i64 %mag, %sign
  %w = trunc i64 %all to i16
  %r = bitcast i16 %w to bfloat
  ret bfloat %r
}

; E11a: appends n bytes at dst+at, or nothing while a rendering is only being measured (dst null)
define void @__olang_rd_put(ptr %dst, i64 %at, ptr %src, i64 %n) {
entry:
  %measure = icmp eq ptr %dst, null
  br i1 %measure, label %done, label %write
write:
  %p = getelementptr i8, ptr %dst, i64 %at
  call void @llvm.memcpy.p0.p0.i64(ptr %p, ptr %src, i64 %n, i1 false)
  br label %done
done:
  ret void
}

; E11a: nested text between quotes q, escaped the way a literal writes it (\n \t \r \0 \\ and q
; itself); returns the bytes it takes, writing nothing while measuring (dst null)
define i64 @__olang_rd_quote(ptr %dst, i64 %at, ptr %src, i64 %n, i8 %q) {
entry:
  %measure = icmp eq ptr %dst, null
  %base = getelementptr i8, ptr %dst, i64 %at
  br i1 %measure, label %loop, label %wopen
wopen:
  store i8 %q, ptr %base
  br label %loop
loop:
  %i = phi i64 [ 0, %entry ], [ 0, %wopen ], [ %i1, %next ]
  %o = phi i64 [ 1, %entry ], [ 1, %wopen ], [ %o1, %next ]
  %more = icmp slt i64 %i, %n
  br i1 %more, label %body, label %close
body:
  %cp = getelementptr i8, ptr %src, i64 %i
  %c = load i8, ptr %cp
  switch i8 %c, label %plain [ i8 10, label %en i8 9, label %et i8 13, label %er i8 0, label %ez i8 92, label %eb ]
en:
  br label %esc
et:
  br label %esc
er:
  br label %esc
ez:
  br label %esc
eb:
  br label %esc
plain:
  %isq = icmp eq i8 %c, %q
  br i1 %isq, label %eq, label %raw
eq:
  br label %esc
esc:
  %e = phi i8 [ 110, %en ], [ 116, %et ], [ 114, %er ], [ 48, %ez ], [ 92, %eb ], [ %q, %eq ]
  br i1 %measure, label %escdone, label %wesc
wesc:
  %ep = getelementptr i8, ptr %base, i64 %o
  store i8 92, ptr %ep
  %ep2 = getelementptr i8, ptr %ep, i64 1
  store i8 %e, ptr %ep2
  br label %escdone
escdone:
  %oe = add i64 %o, 2
  br label %next
raw:
  br i1 %measure, label %rawdone, label %wraw
wraw:
  %rp = getelementptr i8, ptr %base, i64 %o
  store i8 %c, ptr %rp
  br label %rawdone
rawdone:
  %or = add i64 %o, 1
  br label %next
next:
  %o1 = phi i64 [ %oe, %escdone ], [ %or, %rawdone ]
  %i1 = add i64 %i, 1
  br label %loop
close:
  br i1 %measure, label %done, label %wclose
wclose:
  %cl = getelementptr i8, ptr %base, i64 %o
  store i8 %q, ptr %cl
  br label %done
done:
  %total = add i64 %o, 1
  ret i64 %total
}

; P2a: gives this thread's whole chunk pool back to the system - a worker retiring (P1f), whose pool would
; otherwise be lost with its thread. Every chunk in the pool came from a scope that has already closed, so
; nothing refers to it; a task's sub-scope's chunks are never here, having been spliced into the parent at the
; join rather than given back by their own thread
define void @__olang_pool_drain() {
entry:
  %s = load ptr, ptr @__olang_pool_spare
  store ptr null, ptr @__olang_pool_spare
  %nospare = icmp eq ptr %s, null
  br i1 %nospare, label %classes, label %spare
spare:
  call void @__olang_chunk_release(ptr %s)
  br label %classes
classes:
  %maskptr = getelementptr %olang.pool, ptr @__olang_pool, i32 0, i32 1
  %mask = load i128, ptr %maskptr
  store i128 0, ptr %maskptr
  %bytesptr = getelementptr %olang.pool, ptr @__olang_pool, i32 0, i32 2
  store i64 0, ptr %bytesptr
  %empty = icmp eq i128 %mask, 0
  br i1 %empty, label %done, label %class
class:
  %m = phi i128 [ %mask, %classes ], [ %mrest, %nextclass ]
  %tz = call i128 @llvm.cttz.i128(i128 %m, i1 true)
  %k = trunc i128 %tz to i64
  %slot = getelementptr %olang.pool, ptr @__olang_pool, i32 0, i32 0, i64 %k
  %newest = load ptr, ptr %slot
  store ptr null, ptr %slot
  br label %walk
  ; round the circle once, from the newest back to it
walk:
  %cur = phi ptr [ %newest, %class ], [ %next, %walk ]
  %nextptr = getelementptr %olang.chunk, ptr %cur, i32 0, i32 0
  %next = load ptr, ptr %nextptr
  call void @__olang_chunk_release(ptr %cur)
  %round = icmp eq ptr %next, %newest
  br i1 %round, label %nextclass, label %walk
nextclass:
  %m1 = sub i128 %m, 1
  %mrest = and i128 %m, %m1
  %more = icmp ne i128 %mrest, 0
  br i1 %more, label %class, label %done
done:
  ret void
}

; P1: waits for every task on this join block's list, innermost-first is irrelevant here since
; they are concurrent - then folds each task's sub-scopes into the scopes they stood in for (P2),
; which is safe only now that the thread is known to be finished with them.
; P1e: the worker cache. A spawn used to create a thread and the join used to destroy it - ~51us
; and ~8.4KB each, with the stack held until the join, so a join block's peak grew with the TOTAL
; number of spawns run through it rather than with how many were live at once. A finished worker
; parks on a free list instead and the next spawn takes it, so a thread is created once per peak
; concurrency. Every task still gets a thread of its own - this is a cache, not a fixed-size pool,
; which is what keeps a task that blocks (on a nested join, on a mutex) from starving anyone.
; A worker returns itself the moment its task FINISHES, not when the join gets round to noticing.
; Returning at the join frees nothing until the block ends, so a fan-out reuses nothing at all:
; measured at 225s for 100,000 spawns against 5.1s for a fresh thread each time, because 100,000
; workers then sit parked and alive where plain threads had already exited. So the completion flag
; lives in the TASK node, not in the worker, and these two guard it.
@__olang_worker_free = global ptr null
@__olang_worker_lock = global [40 x i8] zeroinitializer
@__olang_task_lock = global [40 x i8] zeroinitializer
@__olang_task_cv = global [48 x i8] zeroinitializer
; P1f: how many workers are parked, guarded by @__olang_worker_lock with the list itself. The cap
; is on the CACHE, never on concurrency: __olang_worker_get still creates a thread unconditionally
; when none is parked, so a live task is never refused one and 1:1 is untouched. That is the whole
; difference from the fixed-size pool this design rejected - a pool bounds how many tasks can RUN,
; which deadlocks on a nested join or a blocking channel; this bounds only how many idle threads
; are kept, which nothing can wait on. 64 is deliberately generous: an ordinary parallel workload
; never reaches it (a 100,000-task fan-out settles at 9 workers), so it clips burst residue only,
; and a tighter cap would thrash - destroying a worker only to recreate it costs the ~51us the
; cache exists to avoid. Accessed atomically (relaxed), always under the lock but for the one read a
; finishing worker makes without it, to guess whether it will park (__olang_pool_share)
@__olang_worker_idle = global i64 0

; the parked loop: take work, run it, report finished, park again. It never exits but by retiring (P1f),
; which is why the chunk pool is not drained per task - the next task on this worker reuses what it keeps.
define internal ptr @__olang_worker_loop(ptr %w) {
entry:
  call void @__olang_thread_init()
  ; O1b/P2: this worker's part of the program's scope - every task it runs builds there, and it outlives the worker
  %prog = call ptr @malloc(i64 48)
  call void @__olang_alloc_check(ptr %prog)
  store %olang.scope { ptr null, ptr null, ptr null, ptr @__olang_global_scope, ptr null, ptr null }, ptr %prog
  store ptr %prog, ptr @__olang_prog_scope
  %m = getelementptr %olang.worker, ptr %w, i32 0, i32 5
  %c = getelementptr %olang.worker, ptr %w, i32 0, i32 6
  %st = getelementptr %olang.worker, ptr %w, i32 0, i32 3
  call i32 @pthread_mutex_lock(ptr %m)
  br label %check
check:
  %s = load i64, ptr %st
  %haswork = icmp eq i64 %s, 1
  br i1 %haswork, label %run, label %park
park:
  call i32 @pthread_cond_wait(ptr %c, ptr %m)
  br label %check
run:
  %fnp = getelementptr %olang.worker, ptr %w, i32 0, i32 1
  %fn = load ptr, ptr %fnp
  %envp = getelementptr %olang.worker, ptr %w, i32 0, i32 2
  %env = load ptr, ptr %envp
  %tkp = getelementptr %olang.worker, ptr %w, i32 0, i32 4
  %tk = load ptr, ptr %tkp
  call i32 @pthread_mutex_unlock(ptr %m)
  ; S2: a crash in the task is reported as on any thread, a stack overflow included - once OnCrash has run
  call void @__olang_alt_stack()
  ; P4b: what the task's trampoline returns is the error it lets through to its join (0: none), stored with the
  ; done flag below, under the lock that orders it for the joiner (P8)
  %rv = call ptr %fn(ptr %env)
  %rc = ptrtoint ptr %rv to i64
  ; O8b: a worker about to park keeps at most a batch of its pool (1MB), the rest going where every thread can take
  ; it - before the task is reported finished, so that what the task gave back is there for whoever its join lets
  ; go on. Not a worker about to retire (P1f), which gives its pool back to the system instead: the load that made
  ; it has passed. Which it will do is decided below, under the lock; this reads the count without it, and a wrong
  ; guess either way only moves a little memory to the other place
  %peek = load atomic i64, ptr @__olang_worker_idle monotonic, align 8
  %willpark = icmp slt i64 %peek, 64
  br i1 %willpark, label %share, label %done
share:
  call void @__olang_pool_share()
  br label %done
  ; the task is finished the moment its call returns - report that first, so a joiner can proceed
done:
  call i32 @pthread_mutex_lock(ptr @__olang_task_lock)
  %ep = getelementptr %olang.task, ptr %tk, i32 0, i32 3
  store i64 %rc, ptr %ep
  %dp = getelementptr %olang.task, ptr %tk, i32 0, i32 1
  store i64 1, ptr %dp
  call i32 @pthread_cond_broadcast(ptr @__olang_task_cv)
  call i32 @pthread_mutex_unlock(ptr @__olang_task_lock)
  ; then hand this worker straight back, so the very next spawn can have it. Taking the free-list
  ; lock while still holding our own is what stops a spawner racing ahead of the park below: it
  ; needs this mutex to hand over work, and the predicate is re-tested under it either way. The
  ; state is cleared before the list lock is taken for the same reason - push first and a spawner
  ; could hand us work that this store would then wipe, parking us forever with a task lost.
  call i32 @pthread_mutex_lock(ptr %m)
  store i64 0, ptr %st
  call i32 @pthread_mutex_lock(ptr @__olang_worker_lock)
  %nidle = load atomic i64, ptr @__olang_worker_idle monotonic, align 8
  %full = icmp sge i64 %nidle, 64
  br i1 %full, label %retire, label %stay
  ; P1f: enough are parked already, so this one goes away rather than being held for a load that
  ; has passed. Nothing references it - the task node carries the completion flag, not a worker
  ; pointer - so once it is off the list it is ours to release. Its chunk pool goes back to the system
  ; here and nowhere else, which is the one place P2a's drain is still needed now that a worker
  ; normally keeps a little of its pool for the next task and shares the rest.
retire:
  call i32 @pthread_mutex_unlock(ptr @__olang_worker_lock)
  call i32 @pthread_mutex_unlock(ptr %m)
  call void @__olang_pool_drain()
  call void @__olang_alt_stack_free()
  call void @free(ptr %w)
  ret ptr null
stay:
  %oldf = load ptr, ptr @__olang_worker_free
  %selfn = getelementptr %olang.worker, ptr %w, i32 0, i32 0
  store ptr %oldf, ptr %selfn
  store ptr %w, ptr @__olang_worker_free
  %nidle1 = add i64 %nidle, 1
  store atomic i64 %nidle1, ptr @__olang_worker_idle monotonic, align 8
  call i32 @pthread_mutex_unlock(ptr @__olang_worker_lock)
  br label %check
}

; takes a parked worker, or builds one. P1c lives here now: a thread the OS declines to create is
; still a broken guarantee, and this is the only place one is created.
define ptr @__olang_worker_get() {
entry:
  call i32 @pthread_mutex_lock(ptr @__olang_worker_lock)
  ; O2c: entry block, though this path returns straight after it - every alloca this compiler emits
  ; is in an entry block, which is worth being an invariant that can be checked mechanically rather
  ; than a rule with an argued-safe exception in it
  %tid = alloca i64
  %top = load ptr, ptr @__olang_worker_free
  %none = icmp eq ptr %top, null
  br i1 %none, label %fresh, label %reuse
reuse:
  %np = getelementptr %olang.worker, ptr %top, i32 0, i32 0
  %nx = load ptr, ptr %np
  store ptr %nx, ptr @__olang_worker_free
  %ni = load atomic i64, ptr @__olang_worker_idle monotonic, align 8
  %ni1 = sub i64 %ni, 1
  store atomic i64 %ni1, ptr @__olang_worker_idle monotonic, align 8
  call i32 @pthread_mutex_unlock(ptr @__olang_worker_lock)
  ret ptr %top
fresh:
  call i32 @pthread_mutex_unlock(ptr @__olang_worker_lock)
  %w = call ptr @malloc(i64 128)
  call void @__olang_alloc_check(ptr %w)
  call void @llvm.memset.p0.i64(ptr %w, i8 0, i64 128, i1 false)
  %rc = call i32 @pthread_create(ptr %tid, ptr null, ptr @__olang_worker_loop, ptr %w)
  call void @__olang_task_started(i32 %rc)
  ; nothing ever joins a worker - it parks forever - so detach it rather than leak the descriptor
  %tv = load i64, ptr %tid
  call i32 @pthread_detach(i64 %tv)
  ret ptr %w
}

; split here only to stay under C99's 4095-character string-literal limit
define void @__olang_worker_start(ptr %w, ptr %fn, ptr %env, ptr %tk) {
entry:
  %m = getelementptr %olang.worker, ptr %w, i32 0, i32 5
  %c = getelementptr %olang.worker, ptr %w, i32 0, i32 6
  call i32 @pthread_mutex_lock(ptr %m)
  %fp = getelementptr %olang.worker, ptr %w, i32 0, i32 1
  store ptr %fn, ptr %fp
  %ep = getelementptr %olang.worker, ptr %w, i32 0, i32 2
  store ptr %env, ptr %ep
  %tp = getelementptr %olang.worker, ptr %w, i32 0, i32 4
  store ptr %tk, ptr %tp
  %sp = getelementptr %olang.worker, ptr %w, i32 0, i32 3
  store i64 1, ptr %sp
  call i32 @pthread_cond_broadcast(ptr %c)
  call i32 @pthread_mutex_unlock(ptr %m)
  ret void
}

; waits for ONE task to finish. This is what replaced pthread_join: a cached worker never exits,
; so there is nothing to join and completion is signalled explicitly. It waits on the task rather
; than on the worker because the worker has very likely been handed to somebody else by now.
define void @__olang_task_wait(ptr %tk) {
entry:
  %dp = getelementptr %olang.task, ptr %tk, i32 0, i32 1
  call i32 @pthread_mutex_lock(ptr @__olang_task_lock)
  br label %check
check:
  %d = load i64, ptr %dp
  %fin = icmp eq i64 %d, 1
  br i1 %fin, label %got, label %wait
wait:
  call i32 @pthread_cond_wait(ptr @__olang_task_cv, ptr @__olang_task_lock)
  br label %check
got:
  call i32 @pthread_mutex_unlock(ptr @__olang_task_lock)
  ret void
}

; P4b: returns the error of the task spawned earliest among those that failed, 0 when none did. The list is
; newest first, so the last failure the walk meets is that one
define i64 @__olang_join_tasks(ptr %headslot) {
entry:
  %head = load ptr, ptr %headslot
  store ptr null, ptr %headslot
  %nonone = icmp eq ptr %head, null
  br i1 %nonone, label %done, label %task
task:
  %cur = phi ptr [ %head, %entry ], [ %tnext, %aftermerge ]
  %acc = phi i64 [ 0, %entry ], [ %acc1, %aftermerge ]
  call void @__olang_task_wait(ptr %cur)
  %errp = getelementptr %olang.task, ptr %cur, i32 0, i32 3
  %err = load i64, ptr %errp
  %failed = icmp ne i64 %err, 0
  %acc1 = select i1 %failed, i64 %err, i64 %acc
  %mheadptr = getelementptr %olang.task, ptr %cur, i32 0, i32 2
  %mhead = load ptr, ptr %mheadptr
  %nomerge = icmp eq ptr %mhead, null
  br i1 %nomerge, label %aftermerge, label %merge
merge:
  %m = phi ptr [ %mhead, %task ], [ %mnext, %merge ]
  %srcptr = getelementptr %olang.merge, ptr %m, i32 0, i32 1
  %src = load ptr, ptr %srcptr
  call void @__olang_scope_merge(ptr %src)
  %mnextptr = getelementptr %olang.merge, ptr %m, i32 0, i32 0
  %mnext = load ptr, ptr %mnextptr
  %matend = icmp eq ptr %mnext, null
  br i1 %matend, label %aftermerge, label %merge
aftermerge:
  %tnextptr = getelementptr %olang.task, ptr %cur, i32 0, i32 0
  %tnext = load ptr, ptr %tnextptr
  %tatend = icmp eq ptr %tnext, null
  br i1 %tatend, label %done, label %task
done:
  %res = phi i64 [ 0, %entry ], [ %acc1, %aftermerge ]
  ret i64 %res
}

; P2: a scope belongs to the thread that builds into it (its owner word). Every scope another thread can reach reaches
; it through a function value - a closure's captured scopes, a Call adapter's instance - or is the program's: a
; task's own scopes are stand-ins, and a scope it is handed is a stand-in too. So a closure that may build into a
; scope it captured asks for it here as its call starts, and builds into what it is given: the scope itself on its
; owner's thread, and anywhere else this thread's own PART of it - a scope linked to the one it is part of and closed
; with it, made the first time this thread builds there (__olang_scope_part). Nothing is checked per allocation, and
; a closure that only reads what it captured asks nothing. The program's scope, or a part of it, is this thread's
; own part of it (@__olang_prog_scope); a stand-in folded already is followed to what it forwards to
define void @__olang_thread_init() {
entry:
  %n = atomicrmw add ptr @__olang_thread_next, i64 2 monotonic, align 8
  %id = inttoptr i64 %n to ptr
  store ptr %id, ptr @__olang_self
  ret void
}

define ptr @__olang_scope_mine(ptr %s) alwaysinline {
entry:
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %me = load ptr, ptr @__olang_self
  %own = icmp eq ptr %o, %me
  br i1 %own, label %mine, label %slow
mine:
  ret ptr %s
slow:
  %r = call ptr @__olang_scope_mine_slow(ptr %s)
  ret ptr %r
}

; a closure's captured scope as its call starts (cgFunctionIn): null is the program's (cgClosure)
define ptr @__olang_capture_scope(ptr %s) alwaysinline {
entry:
  %isprog = icmp eq ptr %s, null
  br i1 %isprog, label %prog, label %mine
prog:
  %p = load ptr, ptr @__olang_prog_scope
  ret ptr %p
mine:
  %m = call ptr @__olang_scope_mine(ptr %s)
  ret ptr %m
}

define ptr @__olang_scope_mine_slow(ptr %s0) noinline {
entry:
  %me = load ptr, ptr @__olang_self
  br label %loop
loop:
  %s = phi ptr [ %s0, %entry ], [ %fwd, %forward ]
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op acquire, align 8
  %own = icmp eq ptr %o, %me
  br i1 %own, label %mine, label %c1
mine:
  ret ptr %s
  ; reached from no other thread yet: its opener's, which is this one - a scope only ever reaches another thread
  ; once its owner is set (__olang_scope_escape, __olang_standin)
c1:
  %unclaimed = icmp eq ptr %o, null
  br i1 %unclaimed, label %claim, label %c2
claim:
  store atomic ptr %me, ptr %op monotonic, align 8
  ret ptr %s
c2:
  %isprog = icmp eq ptr %o, @__olang_global_scope
  br i1 %isprog, label %prog, label %c3
prog:
  %p = load ptr, ptr @__olang_prog_scope
  ret ptr %p
c3:
  %isfwd = icmp eq ptr %o, @__olang_fwd_chunk
  br i1 %isfwd, label %forward, label %up
forward:
  %tp = getelementptr %olang.scope, ptr %s, i32 0, i32 2
  %fwd = load ptr, ptr %tp
  br label %loop
  ; another thread's: the scope at the top of what it stands in for or is part of, which is closed last
up:
  %r = phi ptr [ %s, %c3 ], [ %rp, %up ]
  %pp = getelementptr %olang.scope, ptr %r, i32 0, i32 5
  %rp = load ptr, ptr %pp
  %top = icmp eq ptr %rp, null
  br i1 %top, label %atroot, label %up
atroot:
  %rop = getelementptr %olang.scope, ptr %r, i32 0, i32 3
  %ro = load atomic ptr, ptr %rop acquire, align 8
  %rown = icmp eq ptr %ro, %me
  br i1 %rown, label %rootmine, label %rootprog
rootmine:
  ret ptr %r
rootprog:
  ; (no stand-in is made for the program's scope - __olang_standin - so none is reached here)
  %risprog = icmp eq ptr %ro, @__olang_global_scope
  br i1 %risprog, label %prog, label %part
part:
  %f = call ptr @__olang_scope_part(ptr %r, ptr %me)
  ret ptr %f
}

; this thread's part of r, made and linked the first time: the parts are a list only ever pushed onto until r closes,
; so finding one takes no lock
define ptr @__olang_scope_part(ptr %r, ptr %me) noinline {
entry:
  %lp = getelementptr %olang.scope, ptr %r, i32 0, i32 4
  %first = load atomic ptr, ptr %lp acquire, align 8
  br label %look
look:
  %n = phi ptr [ %first, %entry ], [ %nn, %next ]
  %end = icmp eq ptr %n, null
  br i1 %end, label %make, label %check
check:
  %nop = getelementptr %olang.scope, ptr %n, i32 0, i32 3
  %no = load atomic ptr, ptr %nop monotonic, align 8
  %hit = icmp eq ptr %no, %me
  br i1 %hit, label %found, label %next
found:
  ret ptr %n
next:
  %nlp = getelementptr %olang.scope, ptr %n, i32 0, i32 4
  %nn = load ptr, ptr %nlp
  br label %look
make:
  %f = call ptr @malloc(i64 48)
  call void @__olang_alloc_check(ptr %f)
  store %olang.scope zeroinitializer, ptr %f
  %fo = getelementptr %olang.scope, ptr %f, i32 0, i32 3
  store atomic ptr %me, ptr %fo monotonic, align 8
  %fp = getelementptr %olang.scope, ptr %f, i32 0, i32 5
  store ptr %r, ptr %fp
  %fl = getelementptr %olang.scope, ptr %f, i32 0, i32 4
  br label %push
push:
  %old = load atomic ptr, ptr %lp monotonic, align 8
  store ptr %old, ptr %fl
  %pair = cmpxchg ptr %lp, ptr %old, ptr %f release monotonic
  %ok = extractvalue { ptr, i1 } %pair, 1
  br i1 %ok, label %done, label %push
done:
  ret ptr %f
}

; a closure is being made capturing s, or a Call adapter for an instance in it (cgClosure): s may now reach
; another thread, so it is claimed for this one - its opener, or the task a stand-in was made for
define void @__olang_scope_escape(ptr %s) alwaysinline {
entry:
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %un = icmp eq ptr %o, null
  br i1 %un, label %claim, label %done
claim:
  %me = load ptr, ptr @__olang_self
  store atomic ptr %me, ptr %op monotonic, align 8
  br label %done
done:
  ret void
}

; a task's private stand-in for parent, made in parent itself on the spawner's thread: a closure the task makes may
; hold it past the join, where it forwards to parent (__olang_scope_merge), so it lives as long as parent does.
; None for the program's scope: a task builds into its worker's own part of that (null, which the task's
; trampoline reads as the program's scope as the worker reaches it)
define ptr @__olang_standin(ptr %parent0) {
entry:
  %p = call ptr @__olang_scope_mine(ptr %parent0)
  %op = getelementptr %olang.scope, ptr %p, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %isprog = icmp eq ptr %o, @__olang_global_scope
  br i1 %isprog, label %prog, label %make
prog:
  ret ptr null
make:
  %sub = call ptr @__olang_scope_alloc_a(ptr %p, i64 48, i64 8)
  store %olang.scope zeroinitializer, ptr %sub
  %pp = getelementptr %olang.scope, ptr %sub, i32 0, i32 5
  store ptr %p, ptr %pp
  ret ptr %sub
}

; P2: every part other threads made of a scope closing - their destructors ahead of the scope's own, their chunks
; with its: spliced into what the scope holds (which it then reclaims as ever), each part's header freed. Takes and
; gives back the scope's lists as values, so that the scope's header never escapes into the call
define { ptr, ptr, ptr } @__olang_scope_fold_parts(ptr %first, ptr %dh0, ptr %h0, ptr %t0) noinline {
entry:
  br label %part
part:
  %n = phi ptr [ %first, %entry ], [ %nn, %chunked ]
  %dh = phi ptr [ %dh0, %entry ], [ %dh2, %chunked ]
  %h = phi ptr [ %h0, %entry ], [ %h2, %chunked ]
  %t = phi ptr [ %t0, %entry ], [ %t2, %chunked ]
  %nlp = getelementptr %olang.scope, ptr %n, i32 0, i32 4
  %nn = load ptr, ptr %nlp
  %ndp = getelementptr %olang.scope, ptr %n, i32 0, i32 1
  %nd = load ptr, ptr %ndp
  %nodt = icmp eq ptr %nd, null
  br i1 %nodt, label %dtored, label %dwalk
dwalk:
  %dc = phi ptr [ %nd, %part ], [ %dnx, %dwalk ]
  %dnp = getelementptr %olang.dtornode, ptr %dc, i32 0, i32 0
  %dnx = load ptr, ptr %dnp
  %dend = icmp eq ptr %dnx, null
  br i1 %dend, label %dsplice, label %dwalk
dsplice:
  store ptr %dh, ptr %dnp
  br label %dtored
dtored:
  %dh2 = phi ptr [ %dh, %part ], [ %nd, %dsplice ]
  %nhp = getelementptr %olang.scope, ptr %n, i32 0, i32 0
  %nh = load ptr, ptr %nhp
  %noch = icmp eq ptr %nh, null
  br i1 %noch, label %chunked, label %csplice
csplice:
  %ntp = getelementptr %olang.scope, ptr %n, i32 0, i32 2
  %nt = load ptr, ptr %ntp
  %ntn = getelementptr %olang.chunk, ptr %nt, i32 0, i32 0
  store ptr %h, ptr %ntn
  %wasempty = icmp eq ptr %h, null
  %tn = select i1 %wasempty, ptr %nt, ptr %t
  br label %chunked
chunked:
  %h2 = phi ptr [ %h, %dtored ], [ %nh, %csplice ]
  %t2 = phi ptr [ %t, %dtored ], [ %tn, %csplice ]
  call void @free(ptr %n)
  %more = icmp ne ptr %nn, null
  br i1 %more, label %part, label %out
out:
  %r0 = insertvalue { ptr, ptr, ptr } undef, ptr %dh2, 0
  %r1 = insertvalue { ptr, ptr, ptr } %r0, ptr %h2, 1
  %r2 = insertvalue { ptr, ptr, ptr } %r1, ptr %t2, 2
  ret { ptr, ptr, ptr } %r2
}

; walks the open-scope chain down to %mark, waiting for each join block's tasks before reclaiming
; the arena they may still be holding (P1b), then running that scope's destructors. Closing a
; scope that was never entered is a no-op, and so is joining a null task list, so nothing here
; needs to know which blocks were actually reached.
define void @__olang_unwind_to(ptr %mark) {
entry:
  ; a release the jump abandons is abandoned with what it deferred (__olang_region_free), so the ones after start afresh
  store i64 0, ptr @__olang_rel_depth
  store i64 0, ptr @__olang_rel_len
  br label %loop
loop:
  %cur = load ptr, ptr @__olang_unwind_top
  %atmark = icmp eq ptr %cur, %mark
  %atnull = icmp eq ptr %cur, null
  %stop = or i1 %atmark, %atnull
  br i1 %stop, label %done, label %step
step:
  %jslot = getelementptr %olang.unwind, ptr %cur, i32 0, i32 2
  %j = load ptr, ptr %jslot
  %nojoin = icmp eq ptr %j, null
  br i1 %nojoin, label %closeit, label %joinit
joinit:
  call i64 @__olang_join_tasks(ptr %j)
  br label %closeit
closeit:
  %sslot = getelementptr %olang.unwind, ptr %cur, i32 0, i32 1
  %s = load ptr, ptr %sslot
  call void @__olang_scope_close(ptr %s)
  %pslot = getelementptr %olang.unwind, ptr %cur, i32 0, i32 0
  %p = load ptr, ptr %pslot
  store ptr %p, ptr @__olang_unwind_top
  br label %loop
done:
  ret void
}

; prepends one { instance, dtorFn } node onto scope's own dtor list - walked in
; @__olang_scope_close below, in the same LIFO order registration happens in, right before that
; scope's chunks are reclaimed. The node is bump-allocated out of the scope's OWN arena rather than
; given its own @malloc: the arena strictly outlives every node it holds (the dtor walk runs before
; any chunk is reclaimed) and is returned to the pool wholesale, so this turns a malloc/free pair
; per registered instance into a pointer bump and nothing at all. LLVM cannot make this change
; itself - the node escapes into a list reachable from the scope, so it can prove nothing about it.
define void @__olang_scope_register_dtor(ptr %scope0, ptr %instance, ptr %dtorFn) {
entry:
  %scope = call ptr @__olang_scope_mine(ptr %scope0)
  %node = call ptr @__olang_scope_alloc_a(ptr %scope, i64 24, i64 8)
  call void @__olang_scope_push_dtor(ptr %scope, ptr %node, ptr %instance, ptr %dtorFn)
  ret void
}

; ...the node given: a region's object made with room for its nodes before its word (__olang_region_new), so
; registering it allocates nothing - a region of one small object stays one allocation
define void @__olang_scope_push_dtor(ptr %scope0, ptr %node, ptr %instance, ptr %dtorFn) {
entry:
  %scope = call ptr @__olang_scope_mine(ptr %scope0)
  %dheadptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 1
  %oldhead = load ptr, ptr %dheadptr
  %nextptr = getelementptr %olang.dtornode, ptr %node, i32 0, i32 0
  store ptr %oldhead, ptr %nextptr
  %instptr = getelementptr %olang.dtornode, ptr %node, i32 0, i32 1
  store ptr %instance, ptr %instptr
  %fnptr = getelementptr %olang.dtornode, ptr %node, i32 0, i32 2
  store ptr %dtorFn, ptr %fnptr
  store ptr %node, ptr %dheadptr
  ret void
}

; REGIONS (docs/memory.md 3.3-3.4): an object in a region of its own, freed at once when the one place holding it lets
; go of it - what the self-hosted compiler's early freeing is to call; nothing stage 0 emits uses them, and a test of
; checks/checks.olang drives them from C. A region is a scope whose 48-byte header is made here (malloc'd, so
; it outlives every chunk the region takes), the word before the object holding it. The object is the region's
; first allocation, at its own alignment (at least 8: the word before it); what it builds into itself lands in the
; same scope - the constructor's %here is the region. %nodes destructor nodes (24 bytes each: the release of the regions
; it holds, its destructor) are reserved just before the word, for __olang_scope_push_dtor
define ptr @__olang_region_new(i64 %size, i64 %aln0, i64 %nodes) noinline {
entry:
  %small = icmp ult i64 %aln0, 8
  %aln = select i1 %small, i64 8, i64 %aln0
  %neg = sub i64 0, %aln
  %nodeb = mul i64 %nodes, 24
  %pre0 = add i64 %aln, 7
  %pre1 = add i64 %pre0, %nodeb
  %pre = and i64 %pre1, %neg
  ; a small object - 2KB or less - is one allocation of the C allocator's own size classes: the region's header,
  ; its destructor nodes, the word, the object, so a region costs about what malloc does rather than a 4KB chunk (a
  ; million small regions: 4.2GB as chunks, about 0.1GB this way); what it builds later takes
  ; chunks as any scope does, and __olang_region_free's free of the header frees the object with it. Under -s every region
  ; takes a chunk, which a release poisons and holds back (B2f)
; @if !san
  %fits = icmp ule i64 %size, 2048
  br i1 %fits, label %one, label %chunk
one:
  %h1 = add i64 %pre1, 48
  %off = and i64 %h1, %neg
  %tot = add i64 %off, %size
  %plain = icmp ule i64 %aln, 16
  br i1 %plain, label %viamalloc, label %viaaligned
viamalloc:
  %pm = call ptr @malloc(i64 %tot)
  br label %got1
viaaligned:
  %tr0 = add i64 %tot, %aln
  %tr1 = sub i64 %tr0, 1
  %tr = and i64 %tr1, %neg
  %pa = call ptr @aligned_alloc(i64 %aln, i64 %tr)
  br label %got1
got1:
  %blk = phi ptr [ %pm, %viamalloc ], [ %pa, %viaaligned ]
  %bnull = icmp eq ptr %blk, null
  br i1 %bnull, label %oom, label %ok1
ok1:
  call void @llvm.memset.p0.i64(ptr %blk, i8 0, i64 48, i1 false)
  %obj1 = getelementptr i8, ptr %blk, i64 %off
  %word1 = getelementptr i8, ptr %obj1, i64 -8
  store ptr %blk, ptr %word1
  ret ptr %obj1
; @else
  br label %chunk
; @end
chunk:
  %hdr = call ptr @malloc(i64 48)
  %hnull = icmp eq ptr %hdr, null
  br i1 %hnull, label %oom, label %ok
oom:
  call void @__olang_check_failed(ptr @__olang_msg_oom)
  unreachable
ok:
  call void @llvm.memset.p0.i64(ptr %hdr, i8 0, i64 48, i1 false)
  %total = add i64 %size, %pre
  %raw = call ptr @__olang_scope_alloc_a(ptr %hdr, i64 %total, i64 %aln)
  %obj = getelementptr i8, ptr %raw, i64 %pre
  %word = getelementptr i8, ptr %obj, i64 -8
  store ptr %hdr, ptr %word
  ret ptr %obj
}

; releases the region of the object at obj - nothing for null - by closing it (__olang_region_close). The region's
; destructors release the regions the object holds, each in turn, so releasing a chain of regions nests as deep as
; the chain is long: up to 256 releases deep it is done right there, and beyond that a release is pushed on this
; thread's stack of deferred ones, which the 256th release drains once its own region has closed - each batch a
; release defers reversed, so they are finished in the order made, depth first. A chain of any length is released
; with constant stack (a million regions linked through their objects overflowed it)
define void @__olang_region_free(ptr %obj) noinline {
entry:
  %none = icmp eq ptr %obj, null
  br i1 %none, label %ret, label %go
go:
  %word = getelementptr i8, ptr %obj, i64 -8
  %hdr = load ptr, ptr %word
  %d = load i64, ptr @__olang_rel_depth
  %deep = icmp uge i64 %d, 256
  br i1 %deep, label %defer, label %now
defer:
  call void @__olang_rel_push(ptr %hdr)
  br label %ret
now:
  %d1 = add i64 %d, 1
  store i64 %d1, ptr @__olang_rel_depth
  call void @__olang_region_close(ptr %hdr)
  %bottom = icmp eq i64 %d1, 256
  br i1 %bottom, label %drain, label %done
drain:
  call void @__olang_rel_drain()
  br label %done
done:
  store i64 %d, ptr @__olang_rel_depth
  br label %ret
ret:
  ret void
}

; a region closed: its destructors run, its chunks go back to the pool (or, under -s, are poisoned and held back),
; and its header - with, for a small object, the object - is freed
define void @__olang_region_close(ptr %hdr) {
entry:
  call void @__olang_scope_close(ptr %hdr)
  call void @free(ptr %hdr)
  ret void
}

define void @__olang_rel_push(ptr %h) noinline {
entry:
  %len = load i64, ptr @__olang_rel_len
  %cap = load i64, ptr @__olang_rel_cap
  %full = icmp eq i64 %len, %cap
  br i1 %full, label %grow, label %put
grow:
  %c2 = shl i64 %cap, 1
  %z = icmp eq i64 %cap, 0
  %nc = select i1 %z, i64 64, i64 %c2
  %bytes = shl i64 %nc, 3
  %nb = call ptr @malloc(i64 %bytes)
  %nn = icmp eq ptr %nb, null
  br i1 %nn, label %oom, label %grown
oom:
  call void @__olang_check_failed(ptr @__olang_msg_oom)
  unreachable
grown:
  br i1 %z, label %install, label %copy
copy:
  %old = load ptr, ptr @__olang_rel_stack
  %ob = shl i64 %len, 3
  call void @llvm.memcpy.p0.p0.i64(ptr %nb, ptr %old, i64 %ob, i1 false)
  call void @free(ptr %old)
  br label %install
install:
  store ptr %nb, ptr @__olang_rel_stack
  store i64 %nc, ptr @__olang_rel_cap
  br label %put
put:
  %st = load ptr, ptr @__olang_rel_stack
  %sl = getelementptr ptr, ptr %st, i64 %len
  store ptr %h, ptr %sl
  %l1 = add i64 %len, 1
  store i64 %l1, ptr @__olang_rel_len
  ret void
}

; the deferred releases from position from up, reversed in place
define void @__olang_rel_reverse(i64 %from) {
entry:
  %len = load i64, ptr @__olang_rel_len
  %st = load ptr, ptr @__olang_rel_stack
  %hi0 = sub i64 %len, 1
  br label %loop
loop:
  %lo = phi i64 [ %from, %entry ], [ %lo1, %swap ]
  %hi = phi i64 [ %hi0, %entry ], [ %hi1, %swap ]
  %more = icmp slt i64 %lo, %hi
  br i1 %more, label %swap, label %done
swap:
  %pl = getelementptr ptr, ptr %st, i64 %lo
  %ph = getelementptr ptr, ptr %st, i64 %hi
  %vl = load ptr, ptr %pl
  %vh = load ptr, ptr %ph
  store ptr %vh, ptr %pl
  store ptr %vl, ptr %ph
  %lo1 = add i64 %lo, 1
  %hi1 = sub i64 %hi, 1
  br label %loop
done:
  ret void
}

define void @__olang_rel_drain() noinline {
entry:
  call void @__olang_rel_reverse(i64 0)
  br label %loop
loop:
  %len = load i64, ptr @__olang_rel_len
  %empty = icmp eq i64 %len, 0
  br i1 %empty, label %done, label %pop
pop:
  %n = sub i64 %len, 1
  store i64 %n, ptr @__olang_rel_len
  %st = load ptr, ptr @__olang_rel_stack
  %sl = getelementptr ptr, ptr %st, i64 %n
  %h = load ptr, ptr %sl
  call void @__olang_region_close(ptr %h)
  call void @__olang_rel_reverse(i64 %n)
  br label %loop
done:
  ret void
}

; a slot holding a region's object, released as its block's scope closes (a destructor node's function: the slot is
; its "instance") - what it holds then, null when it was moved on
define void @__olang_region_drop_slot(ptr %slot, ptr %scope) {
entry:
  %obj = load ptr, ptr %slot
  store ptr null, ptr %slot
  call void @__olang_region_free(ptr %obj)
  ret void
}

; ...an array's whose buffer is a region: the pointer half of the slot's { len, ptr }
define void @__olang_region_drop_aslot(ptr %slot, ptr %scope) {
entry:
  %a = load { i64, ptr }, ptr %slot
  store { i64, ptr } zeroinitializer, ptr %slot
  %obj = extractvalue { i64, ptr } %a, 1
  call void @__olang_region_free(ptr %obj)
  ret void
}

; a held slot { object, registered }, released as its scope closes - what it holds then, the mark cleared so a hold
; evaluated again after the scope's next opening registers again
define void @__olang_region_drop_held(ptr %slot, ptr %scope) {
entry:
  %obj = load ptr, ptr %slot
  store { ptr, i64 } zeroinitializer, ptr %slot
  %some = icmp ne ptr %obj, null
  br i1 %some, label %free, label %done
free:
  call void @__olang_region_free(ptr %obj)
  br label %done
done:
  ret void
}

define void @__olang_region_drop_aheld(ptr %slot, ptr %scope) {
entry:
  %a = load { i64, ptr }, ptr %slot
  store { { i64, ptr }, i64 } zeroinitializer, ptr %slot
  %obj = extractvalue { i64, ptr } %a, 1
  %some = icmp ne ptr %obj, null
  br i1 %some, label %free, label %done
free:
  call void @__olang_region_free(ptr %obj)
  br label %done
done:
  ret void
}

; the region a reference's referent is in, for building there - the word before the object; a null reference's is
; read from here instead (null: a build into it traps, as reading through the null itself does, T2b)
@__olang_region_nullhdr = global ptr null
; P2: folds a task's sub-scope back into the scope it stands for, on the spawner's thread, after
; the join - so the only thread that ever bumps a given arena is the one that owns it. Nothing is
; copied or moved: the two chunk lists are relinked, and the sub-scope's dtor nodes (which live in
; its own chunks) go in FRONT of the parent's, so instances a task built are destructed before the
; ones that were already there when it was spawned - the same LIFO order a sequential call gives.
; The chunk splice is O(1) off the recorded tail; the dtor splice walks the sub-scope's own nodes
; only, of which there is one per destructor-bearing instance the task constructed.
; What it folds into is what it stands in for as this thread reaches it now: one that was itself a stand-in folded
; already is followed to what it forwards to (a closure a task handed back may hold one, and a later task's
; stand-in then has it for its parent) - spliced into the forwarder, the chunks and destructors would sit in a
; header no one closes, and it would stop forwarding. Null: no stand-in (the program's scope, __olang_standin)
define void @__olang_scope_merge(ptr %src) {
entry:
  %none = icmp eq ptr %src, null
  br i1 %none, label %ret, label %go
ret:
  ret void
go:
  %parentp = getelementptr %olang.scope, ptr %src, i32 0, i32 5
  %parent = load ptr, ptr %parentp
  %dst = call ptr @__olang_scope_mine(ptr %parent)
  %sdheadptr = getelementptr %olang.scope, ptr %src, i32 0, i32 1
  %sdhead = load ptr, ptr %sdheadptr
  %nodtors = icmp eq ptr %sdhead, null
  br i1 %nodtors, label %chunks, label %dwalk
dwalk:
  %dcur = phi ptr [ %sdhead, %go ], [ %dnext, %dwalk ]
  %dnextptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 0
  %dnext = load ptr, ptr %dnextptr
  %dattail = icmp eq ptr %dnext, null
  br i1 %dattail, label %dsplice, label %dwalk
dsplice:
  %ddheadptr = getelementptr %olang.scope, ptr %dst, i32 0, i32 1
  %ddhead = load ptr, ptr %ddheadptr
  %dtailnextptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 0
  store ptr %ddhead, ptr %dtailnextptr
  store ptr %sdhead, ptr %ddheadptr
  store ptr null, ptr %sdheadptr
  br label %chunks
chunks:
  %sheadptr = getelementptr %olang.scope, ptr %src, i32 0, i32 0
  %shead = load ptr, ptr %sheadptr
  %nochunks = icmp eq ptr %shead, null
  br i1 %nochunks, label %done, label %splice
splice:
  %stailptr = getelementptr %olang.scope, ptr %src, i32 0, i32 2
  %stail = load ptr, ptr %stailptr
  %dheadptr = getelementptr %olang.scope, ptr %dst, i32 0, i32 0
  %dhead = load ptr, ptr %dheadptr
  %stailnextptr = getelementptr %olang.chunk, ptr %stail, i32 0, i32 0
  store ptr %dhead, ptr %stailnextptr
  store ptr %shead, ptr %dheadptr
  store ptr null, ptr %sheadptr
  store ptr null, ptr %stailptr
  ; the parent's tail is the oldest chunk it holds, so it only changes when the parent had none
  %dstwasempty = icmp eq ptr %dhead, null
  br i1 %dstwasempty, label %settail, label %done
settail:
  %dtailptr = getelementptr %olang.scope, ptr %dst, i32 0, i32 2
  store ptr %stail, ptr %dtailptr
  br label %done
  ; ...and from now on forwards to it: a closure made on the task, or the environment copy it was handed, may hold it
  ; past the join (its header lives as long as dst does - it was made there)
done:
  %fheadptr = getelementptr %olang.scope, ptr %src, i32 0, i32 0
  store ptr @__olang_fwd_chunk, ptr %fheadptr
  %ftailptr = getelementptr %olang.scope, ptr %src, i32 0, i32 2
  store ptr %dst, ptr %ftailptr
  %fownp = getelementptr %olang.scope, ptr %src, i32 0, i32 3
  store atomic ptr @__olang_fwd_chunk, ptr %fownp release, align 8
  ret void
}

; walks and calls this scope's own dtor-node list first, LIFO - most-recently-registered first, the order a stack
; unwind would give - then gives each of its chunks to the pool (O8b) and resets the scope to empty
; (P2: first, every part other threads made of it - __olang_scope_fold_parts)
define void @__olang_scope_close(ptr %scope) alwaysinline {
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
  %wfh = extractvalue { ptr, ptr, ptr } %wfolded, 1
  store ptr %wfh, ptr %whp, !tbaa !59
  %wft = extractvalue { ptr, ptr, ptr } %wfolded, 2
  store ptr %wft, ptr %wtp, !tbaa !59
  store ptr null, ptr %fptr, !tbaa !59
  br label %dloop
chunks:
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
; @if !san
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
; @else
  call void @__olang_san_quarantine_list(ptr %head)
; @end
  br label %done
done:
  ret void
}

; the command line, saved by "main" before anything else runs - a global initializer may read it (B5a)

; §11 X6 / B4a: what the runtime keeps of the process and offers std through "extern fn" - its command line, its
; environment, the error the last failing system call left, and the system calls whose C interface hands back a
; pointer or a struct, which X2 cannot receive. Each copies what it has into a buffer its caller supplies and returns
; a length (snprintf's contract: the whole length, whatever fitted), so nothing is ever handed back by address. A
; structure's offsets are the target's (cgLibcLayouts, B12a). -i has its own version of each (comptime.c), since these
; live in the built program and not in the compiler's process.
@__olang_argc = global i32 0
@__olang_argv = global ptr null
declare i64 @strlen(ptr)
declare ptr @getenv(ptr)
declare ptr @__errno_location()
declare i32 @stat(ptr, ptr)
declare ptr @opendir(ptr)
declare ptr @readdir(ptr)
declare i32 @closedir(ptr)
declare ptr @realpath(ptr, ptr)
declare ptr @mkdtemp(ptr)

; up to cap bytes of the NUL-terminated s into buf, and s's whole length
define i64 @__olang_copy_cstr(ptr %s, ptr %buf, i64 %cap) {
entry:
  %len = call i64 @strlen(ptr %s)
  %pos = icmp sgt i64 %cap, 0
  %c = select i1 %pos, i64 %cap, i64 0
  %fits = icmp ult i64 %len, %c
  %n = select i1 %fits, i64 %len, i64 %c
  call void @llvm.memcpy.p0.p0.i64(ptr %buf, ptr %s, i64 %n, i1 false)
  ret i64 %len
}

define i64 @__olang_arg_count() {
entry:
  %n = load i32, ptr @__olang_argc
  %w = sext i32 %n to i64
  ret i64 %w
}

; argument i, or -1 past the last
define i64 @__olang_arg(i64 %i, ptr %buf, i64 %cap) {
entry:
  %n = load i32, ptr @__olang_argc
  %w = sext i32 %n to i64
  %ok = icmp ult i64 %i, %w
  br i1 %ok, label %have, label %none
have:
  %argv = load ptr, ptr @__olang_argv
  %slot = getelementptr ptr, ptr %argv, i64 %i
  %s = load ptr, ptr %slot
  %len = call i64 @__olang_copy_cstr(ptr %s, ptr %buf, i64 %cap)
  ret i64 %len
none:
  ret i64 -1
}

; the variable "name" (NUL-terminated), or -1 when it is not set
define i64 @__olang_env(ptr %name, ptr %buf, i64 %cap) {
entry:
  %s = call ptr @getenv(ptr %name)
  %unset = icmp eq ptr %s, null
  br i1 %unset, label %none, label %have
have:
  %len = call i64 @__olang_copy_cstr(ptr %s, ptr %buf, i64 %cap)
  ret i64 %len
none:
  ret i64 -1
}

; the real path of "path" - absolute, with every symbolic link resolved - or -1 (errno says why)
define i64 @__olang_realpath(ptr %path, ptr %buf, i64 %cap) {
entry:
  %r = call ptr @realpath(ptr %path, ptr null)
  %bad = icmp eq ptr %r, null
  br i1 %bad, label %fail, label %have
have:
  %len = call i64 @__olang_copy_cstr(ptr %r, ptr %buf, i64 %cap)
  call void @free(ptr %r)
  ret i64 %len
fail:
  ret i64 -1
}

; S4: a new directory, named by the NUL-terminated template ending in six X's, which mkdtemp replaces with what
; makes the name unused - written over the template in place; 0, or -1 when it fails (errno says why)
define i32 @__olang_mkdtemp(ptr %template) {
entry:
  %r = call ptr @mkdtemp(ptr %template)
  %bad = icmp eq ptr %r, null
  %v = select i1 %bad, i32 -1, i32 0
  ret i32 %v
}

; the class of the error the last failing call on this thread left in errno, as std/os's OsError numbers them -
; ENOENT 2: 1 (NOT_FOUND), EEXIST 17: 2, EACCES 13 and EPERM 1: 3, ENOTDIR 20: 4, EISDIR 21: 5, ENOTEMPTY 39: 6, and 0
; for any other. -i classifies by the same table (comptime.c, OsErrClasses), which is to be kept in step with this
define i32 @__olang_err() {
entry:
  %p = call ptr @__errno_location()
  %e = load i32, ptr %p
  %r0 = add i32 0, 0
  %is0 = icmp eq i32 %e, 2
  %r1 = select i1 %is0, i32 1, i32 %r0
  %is1 = icmp eq i32 %e, 17
  %r2 = select i1 %is1, i32 2, i32 %r1
  %is2 = icmp eq i32 %e, 13
  %r3 = select i1 %is2, i32 3, i32 %r2
  %is3 = icmp eq i32 %e, 1
  %r4 = select i1 %is3, i32 3, i32 %r3
  %is4 = icmp eq i32 %e, 20
  %r5 = select i1 %is4, i32 4, i32 %r4
  %is5 = icmp eq i32 %e, 21
  %r6 = select i1 %is5, i32 5, i32 %r5
  %is6 = icmp eq i32 %e, 39
  %r7 = select i1 %is6, i32 6, i32 %r6
  ret i32 %r7
}

; stat(path) into out: out[0] the kind (1 a file, 2 a directory, 0 anything else), out[1] the size in bytes,
; out[2] the modification time in nanoseconds since the epoch; 0, or -1 when stat fails (errno says why)
define i32 @__olang_stat(ptr %path, ptr %out) {
entry:
  %st = alloca [@@STAT_BYTES@@ x i8], align 16
  %rc = call i32 @stat(ptr %path, ptr %st)
  %ok = icmp eq i32 %rc, 0
  br i1 %ok, label %have, label %fail
have:
  %mode.p = getelementptr i8, ptr %st, i64 @@STAT_MODE@@
  %mode.v = load i32, ptr %mode.p
  %mode = zext i32 %mode.v to i64
  %size.p = getelementptr i8, ptr %st, i64 @@STAT_SIZE@@
  %size.v = load i64, ptr %size.p
  %size = add i64 %size.v, 0
  %sec.p = getelementptr i8, ptr %st, i64 @@STAT_MTIM_SEC@@
  %sec.v = load i64, ptr %sec.p
  %sec = add i64 %sec.v, 0
  %nsec.p = getelementptr i8, ptr %st, i64 @@STAT_MTIM_NSEC@@
  %nsec.v = load i64, ptr %nsec.p
  %nsec = add i64 %nsec.v, 0
  %fmt = and i64 %mode, 61440 ; S_IFMT
  %isreg = icmp eq i64 %fmt, 32768 ; S_IFREG
  %isdir = icmp eq i64 %fmt, 16384 ; S_IFDIR
  %k1 = select i1 %isdir, i64 2, i64 0
  %kind = select i1 %isreg, i64 1, i64 %k1
  store i64 %kind, ptr %out
  %o1 = getelementptr i64, ptr %out, i64 1
  store i64 %size, ptr %o1
  %ns = mul i64 %sec, 1000000000
  %t = add i64 %ns, %nsec
  %o2 = getelementptr i64, ptr %out, i64 2
  store i64 %t, ptr %o2
  ret i32 0
fail:
  ret i32 -1
}

; the names in directory "path" - "." and ".." left out, each followed by a NUL, in the order the directory
; gives them - as many whole names as fit in cap bytes, and the bytes all of them take; -1 when it cannot be
; opened (errno says why)
define i64 @__olang_dir(ptr %path, ptr %buf, i64 %cap) {
entry:
  %d = call ptr @opendir(ptr %path)
  %bad = icmp eq ptr %d, null
  br i1 %bad, label %fail, label %loop
loop:
  %at = phi i64 [ 0, %entry ], [ %at, %skip ], [ %after, %next ]
  %e = call ptr @readdir(ptr %d)
  %end = icmp eq ptr %e, null
  br i1 %end, label %done, label %one
one:
  %name = getelementptr i8, ptr %e, i64 @@DIRENT_NAME@@
  %c0 = load i8, ptr %name
  %dot0 = icmp eq i8 %c0, 46
  br i1 %dot0, label %dot1, label %keep
dot1:
  %p1 = getelementptr i8, ptr %name, i64 1
  %c1 = load i8, ptr %p1
  %nul1 = icmp eq i8 %c1, 0
  br i1 %nul1, label %skip, label %dot2
dot2:
  %isdot1 = icmp eq i8 %c1, 46
  br i1 %isdot1, label %dot3, label %keep
dot3:
  %p2 = getelementptr i8, ptr %name, i64 2
  %c2 = load i8, ptr %p2
  %nul2 = icmp eq i8 %c2, 0
  br i1 %nul2, label %skip, label %keep
skip:
  br label %loop
keep:
  %len = call i64 @strlen(ptr %name)
  %len1 = add i64 %len, 1
  %after = add i64 %at, %len1
  %fits = icmp sle i64 %after, %cap
  br i1 %fits, label %copy, label %next
copy:
  %dst = getelementptr i8, ptr %buf, i64 %at
  call void @llvm.memcpy.p0.p0.i64(ptr %dst, ptr %name, i64 %len1, i1 false)
  br label %next
next:
  br label %loop
done:
  call i32 @closedir(ptr %d)
  ret i64 %at
fail:
  ret i64 -1
}

; the program named by the count NUL-terminated entries of args, started with them as its command line - the first
; looked up through PATH as posix_spawnp does - and with in, out and err (each -1 for this process's own) as its
; standard input, output and error, in the directory dir (NUL-terminated; empty for this process's own), without a
; shell; its process id, or -1 when it could not be started (errno says why - posix_spawnp gives its error as its
; result, which is put where __olang_err looks). The directory is changed to in the child, after the descriptors are
; set, by glibc's posix_spawn_file_actions_addchdir_np (2.29 and later; declared weak, so a C library without it
; still links) - and without it, by running the program through /bin/sh as 'cd -- "$0" && exec "$@"', the one place
; a shell stands between: the directory and the arguments are its arguments, never its script, so they reach the
; program as they are
declare i32 @posix_spawn_file_actions_init(ptr)
declare i32 @posix_spawn_file_actions_destroy(ptr)
declare i32 @posix_spawn_file_actions_adddup2(ptr, i32, i32)
declare extern_weak i32 @posix_spawn_file_actions_addchdir_np(ptr, ptr)
declare i32 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)
declare i32 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)
@environ = external global ptr
@__olang_sh = constant [8 x i8] c"/bin/sh\00"
@__olang_sh_c = constant [3 x i8] c"-c\00"
@__olang_sh_cd = constant [24 x i8] c"cd -- \22$0\22 && exec \22$@\22\00"

define i32 @__olang_spawn(ptr %args, i64 %count, i32 %in, i32 %out, i32 %err, ptr %dir) {
entry:
  %fa = alloca [@@SPAWN_FILE_ACTIONS_BYTES@@ x i8], align 16
  %pid = alloca i32
  %none = icmp slt i64 %count, 1
  br i1 %none, label %inval, label %start
inval:
  %ep0 = call ptr @__errno_location()
  store i32 22, ptr %ep0 ; EINVAL
  ret i32 -1
start:
  %n1 = add i64 %count, 1
  %bytes = mul i64 %n1, 8
  %argv = call ptr @malloc(i64 %bytes)
  br label %loop
loop:
  %i = phi i64 [ 0, %start ], [ %i1, %step ]
  %p = phi ptr [ %args, %start ], [ %p1, %step ]
  %more = icmp slt i64 %i, %count
  br i1 %more, label %step, label %built
step:
  %slot = getelementptr ptr, ptr %argv, i64 %i
  store ptr %p, ptr %slot
  %len = call i64 @strlen(ptr %p)
  %len1 = add i64 %len, 1
  %p1 = getelementptr i8, ptr %p, i64 %len1
  %i1 = add i64 %i, 1
  br label %loop
built:
  %end = getelementptr ptr, ptr %argv, i64 %count
  store ptr null, ptr %end
  %fi = call i32 @posix_spawn_file_actions_init(ptr %fa)
  %hasIn = icmp sge i32 %in, 0
  br i1 %hasIn, label %dupIn, label %doneIn
dupIn:
  %d0 = call i32 @posix_spawn_file_actions_adddup2(ptr %fa, i32 %in, i32 0)
  br label %doneIn
doneIn:
  %hasOut = icmp sge i32 %out, 0
  br i1 %hasOut, label %dupOut, label %doneOut
dupOut:
  %d1 = call i32 @posix_spawn_file_actions_adddup2(ptr %fa, i32 %out, i32 1)
  br label %doneOut
doneOut:
  %hasErr = icmp sge i32 %err, 0
  br i1 %hasErr, label %dupErr, label %doneErr
dupErr:
  %d2 = call i32 @posix_spawn_file_actions_adddup2(ptr %fa, i32 %err, i32 2)
  br label %doneErr
doneErr:
  %env = load ptr, ptr @environ
  %prog = load ptr, ptr %argv
  %dir0 = load i8, ptr %dir
  %here = icmp eq i8 %dir0, 0
  br i1 %here, label %direct, label %moved
moved:
  %canChdir = icmp ne ptr @posix_spawn_file_actions_addchdir_np, null
  br i1 %canChdir, label %chdir, label %viaShell
chdir:
  %dc = call i32 @posix_spawn_file_actions_addchdir_np(ptr %fa, ptr %dir)
  br label %direct
direct:
  %rc1 = call i32 @posix_spawnp(ptr %pid, ptr %prog, ptr %fa, ptr null, ptr %argv, ptr %env)
  br label %spawned
viaShell:
  %n5 = add i64 %count, 5
  %bytes5 = mul i64 %n5, 8
  %argv5 = call ptr @malloc(i64 %bytes5)
  store ptr @__olang_sh, ptr %argv5
  %s1 = getelementptr ptr, ptr %argv5, i64 1
  store ptr @__olang_sh_c, ptr %s1
  %s2 = getelementptr ptr, ptr %argv5, i64 2
  store ptr @__olang_sh_cd, ptr %s2
  %s3 = getelementptr ptr, ptr %argv5, i64 3
  store ptr %dir, ptr %s3
  %s4 = getelementptr ptr, ptr %argv5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr %s4, ptr %argv, i64 %bytes, i1 false)
  %rc2 = call i32 @posix_spawn(ptr %pid, ptr @__olang_sh, ptr %fa, ptr null, ptr %argv5, ptr %env)
  call void @free(ptr %argv5)
  br label %spawned
spawned:
  %rc = phi i32 [ %rc1, %direct ], [ %rc2, %viaShell ]
  %fd = call i32 @posix_spawn_file_actions_destroy(ptr %fa)
  call void @free(ptr %argv)
  %ok = icmp eq i32 %rc, 0
  br i1 %ok, label %started, label %failed
started:
  %v = load i32, ptr %pid
  ret i32 %v
failed:
  %ep = call ptr @__errno_location()
  store i32 %rc, ptr %ep
  ret i32 -1
}


; S1, S2 (§11 X6): a call on a stack of a given size, and a message for a crash. os.RunOnStack runs a function value
; - its code, taking its environment as its one argument (X3) - on a thread of its own made with that stack, and waits
; for it, so it is the call f() would be, on a bigger stack: nothing runs beside it. In a test the thread has a
; recovery point of its own, and a check failing, an "unreachable" or a "!" on it ends there and is passed on to the
; caller's, which unwinds and jumps as it would have had f run on its own thread; so f behaves as it would called
; directly. The thread's chunk pool goes where every thread reuses it (O8b) when it ends, and the rest back to the
; system.
; os.OnCrash keeps a copy of its message and handles the fatal signals: on an alternate stack - one per thread, made
; when a thread the runtime runs olang code on starts after OnCrash, or at OnCrash for the thread calling it - so even
; a stack overflow is reported; the handler writes the message with write() and nothing else, then raises the signal
; again with the default action restored, so the process ends as it would have, status and core dump included.
declare i32 @pthread_attr_init(ptr)
declare i32 @pthread_attr_destroy(ptr)
declare i32 @pthread_attr_setstacksize(ptr, i64)
declare i32 @pthread_join(i64, ptr)
declare i32 @sigaction(i32, ptr, ptr)
declare i32 @sigaltstack(ptr, ptr)
declare i32 @raise(i32)
declare i64 @write(i32, ptr, i64)
declare ptr @dlsym(ptr, ptr)
; code, environment, whether a test is running, the value a jump out of the thread carried (0: none), the
; program's scope as the caller reaches it (O1b: a worker's part of it), and who the caller is (P2)
%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }
; glibc's own answer to the least stack a thread may have - its guard, its static TLS and PTHREAD_STACK_MIN
; - found at run time, as Rust's std finds it: a private symbol, so never linked against
@__olang_minstack_name = unnamed_addr constant [23 x i8] c"__pthread_get_minstack\00"
; OnCrash's message, its length first, and this thread's alternate stack
@__olang_crash_msg = global ptr null
@__olang_crash_stack = thread_local(initialexec) global ptr null

define void @__olang_run_on_stack(i64 %bytes, ptr %code, ptr %env) {
entry:
  %attr = alloca [@@PTHREAD_ATTR_BYTES@@ x i8], align 16
  %tid = alloca i64
  %run = alloca %olang.stackrun, align 8
  %codep = getelementptr %olang.stackrun, ptr %run, i32 0, i32 0
  store ptr %code, ptr %codep
  %envp = getelementptr %olang.stackrun, ptr %run, i32 0, i32 1
  store ptr %env, ptr %envp
  ; P2: the thread is the caller as far as any scope can tell - the caller waits for it, so the two never build at once
  %selfp = getelementptr %olang.stackrun, ptr %run, i32 0, i32 5
  %me = load ptr, ptr @__olang_self
  store ptr %me, ptr %selfp
  %tgt = load ptr, ptr @__olang_jmp_target
  %intest = icmp ne ptr %tgt, null
  %t = zext i1 %intest to i32
  %testp = getelementptr %olang.stackrun, ptr %run, i32 0, i32 2
  store i32 %t, ptr %testp
  %leftp = getelementptr %olang.stackrun, ptr %run, i32 0, i32 3
  store i32 0, ptr %leftp
  %progp = getelementptr %olang.stackrun, ptr %run, i32 0, i32 4
  %prog = load ptr, ptr @__olang_prog_scope
  store ptr %prog, ptr %progp
  ; a size below the least a thread may have is raised to it: what glibc says it needs, which counts the static
  ; TLS the stack also holds - else the system's PTHREAD_STACK_MIN, at least 16KB
  %ai = call i32 @pthread_attr_init(ptr %attr)
  %min = call i64 @sysconf(i32 75) ; _SC_THREAD_STACK_MIN
  %minok = icmp sgt i64 %min, 16384
  %floor = select i1 %minok, i64 %min, i64 16384
  %gm = call ptr @dlsym(ptr null, ptr @__olang_minstack_name)
  %hasgm = icmp ne ptr %gm, null
  br i1 %hasgm, label %askglibc, label %sized
askglibc:
  %gmv = call i64 %gm(ptr %attr)
  br label %sized
sized:
  %need = phi i64 [ %floor, %entry ], [ %gmv, %askglibc ]
  %needmore = icmp sgt i64 %need, %floor
  %least = select i1 %needmore, i64 %need, i64 %floor
  %small = icmp slt i64 %bytes, %least
  %size = select i1 %small, i64 %least, i64 %bytes
  %ss = call i32 @pthread_attr_setstacksize(ptr %attr, i64 %size)
  %ssok = icmp eq i32 %ss, 0
  br i1 %ssok, label %create, label %refused
create:
  %rc = call i32 @pthread_create(ptr %tid, ptr %attr, ptr @__olang_stack_main, ptr %run)
  %ad = call i32 @pthread_attr_destroy(ptr %attr)
  %rcok = icmp eq i32 %rc, 0
  br i1 %rcok, label %started, label %failed
refused:
  %ad2 = call i32 @pthread_attr_destroy(ptr %attr)
  br label %failed
  ; a thread the system will not make with that stack: a guarantee broken, as P1c's task
failed:
  call void @__olang_check_failed(ptr @__olang_msg_stack)
  ret void
started:
  %tv = load i64, ptr %tid
  %jr = call i32 @pthread_join(i64 %tv, ptr null)
  %left = load i32, ptr %leftp
  %stayed = icmp eq i32 %left, 0
  br i1 %stayed, label %done, label %onward
  ; f left its test on its own thread: the caller's test leaves the same way, its scopes unwound first (P1d)
onward:
  %mk = load ptr, ptr @__olang_unwind_mark
  call void @__olang_unwind_to(ptr %mk)
  call void @longjmp(ptr %tgt, i32 %left)
  unreachable
done:
  ret void
}

; the thread: f run, behind a recovery point of its own while a test is running, then its pool given back.
; Nothing is written between the setjmp and a jump to it but by the thread's own code (the volatile question X3b
; answers for the harness): %%run is read after the landing, and set before the setjmp
define ptr @__olang_stack_main(ptr %run) {
entry:
  %jb = alloca [@@JMP_BUF_BYTES@@ x i8], align 16
  call void @__olang_alt_stack()
  ; the program's scope is reached as the caller reaches it - through a worker's part of it when a task called (O1b):
  ; this thread starts with the real one, which another task, or the thread the join lets go on, may be using - and
  ; every scope as the caller would (P2): the caller is parked until this thread is done
  %progp = getelementptr %olang.stackrun, ptr %run, i32 0, i32 4
  %prog = load ptr, ptr %progp
  store ptr %prog, ptr @__olang_prog_scope
  %selfp = getelementptr %olang.stackrun, ptr %run, i32 0, i32 5
  %caller = load ptr, ptr %selfp
  store ptr %caller, ptr @__olang_self
  %codep = getelementptr %olang.stackrun, ptr %run, i32 0, i32 0
  %code = load ptr, ptr %codep
  %envp = getelementptr %olang.stackrun, ptr %run, i32 0, i32 1
  %env = load ptr, ptr %envp
  %testp = getelementptr %olang.stackrun, ptr %run, i32 0, i32 2
  %test = load i32, ptr %testp
  %intest = icmp ne i32 %test, 0
  br i1 %intest, label %guard, label %plain
plain:
  call void %code(ptr %env)
  br label %out
guard:
  store ptr %jb, ptr @__olang_jmp_target
  %r = call i32 @setjmp(ptr %jb)
  %first = icmp eq i32 %r, 0
  br i1 %first, label %call, label %landed
call:
  call void %code(ptr %env)
  br label %cleared
landed:
  %leftp = getelementptr %olang.stackrun, ptr %run, i32 0, i32 3
  store i32 %r, ptr %leftp
  br label %cleared
cleared:
  store ptr null, ptr @__olang_jmp_target
  br label %out
out:
  call void @__olang_pool_share()
  call void @__olang_pool_drain()
  call void @__olang_alt_stack_free()
  ret ptr null
}

; S2: this thread's alternate stack, made once OnCrash has said what to write - 64KB, room for the signal frame
; of the widest vector registers and the handler's few calls
define void @__olang_alt_stack() {
entry:
  %ss = alloca [24 x i8], align 8
  %have = load ptr, ptr @__olang_crash_stack
  %made = icmp ne ptr %have, null
  br i1 %made, label %done, label %check
check:
  %m = load atomic ptr, ptr @__olang_crash_msg acquire, align 8
  %none = icmp eq ptr %m, null
  br i1 %none, label %done, label %make
make:
  %mem = call ptr @malloc(i64 65536)
  %got = icmp ne ptr %mem, null
  br i1 %got, label %set, label %done
set:
  store ptr %mem, ptr %ss
  %fp = getelementptr i8, ptr %ss, i64 8
  store i32 0, ptr %fp
  %zp = getelementptr i8, ptr %ss, i64 16
  store i64 65536, ptr %zp
  %rc = call i32 @sigaltstack(ptr %ss, ptr null)
  store ptr %mem, ptr @__olang_crash_stack
  br label %done
done:
  ret void
}

; a thread that ends gives its alternate stack back: switched off first, then freed
define void @__olang_alt_stack_free() {
entry:
  %ss = alloca [24 x i8], align 8
  %have = load ptr, ptr @__olang_crash_stack
  %none = icmp eq ptr %have, null
  br i1 %none, label %done, label %off
off:
  call void @llvm.memset.p0.i64(ptr %ss, i8 0, i64 24, i1 false)
  %fp = getelementptr i8, ptr %ss, i64 8
  store i32 2, ptr %fp ; SS_DISABLE
  %rc = call i32 @sigaltstack(ptr %ss, ptr null)
  call void @free(ptr %have)
  store ptr null, ptr @__olang_crash_stack
  br label %done
done:
  ret void
}

; the handler: the message written, as much of it as write() takes, then the signal again - its action reset
; to the default before this ran (SA_RESETHAND), so the process ends as the signal ends it
define void @__olang_crash_handler(i32 %sig) {
entry:
  %m = load atomic ptr, ptr @__olang_crash_msg acquire, align 8
  %none = icmp eq ptr %m, null
  br i1 %none, label %again, label %say
say:
  %n = load i64, ptr %m
  %data = getelementptr i8, ptr %m, i64 8
  br label %loop
loop:
  %p = phi ptr [ %data, %say ], [ %p1, %more ]
  %left = phi i64 [ %n, %say ], [ %left1, %more ]
  %all = icmp sle i64 %left, 0
  br i1 %all, label %again, label %put
put:
  %w = call i64 @write(i32 2, ptr %p, i64 %left)
  %wrote = icmp sgt i64 %w, 0
  br i1 %wrote, label %more, label %again
more:
  %p1 = getelementptr i8, ptr %p, i64 %w
  %left1 = sub i64 %left, %w
  br label %loop
again:
  %r = call i32 @raise(i32 %sig)
  ret void
}

; S2: the message kept (a copy: the text it came from belongs to a scope), the alternate stack of this thread
; made, and the handler installed for the fatal signals. Called again, the message is replaced
define void @__olang_on_crash(ptr %msg, i64 %len) {
entry:
  %sa = alloca [@@SIGACTION_BYTES@@ x i8], align 16
  %pos = icmp sgt i64 %len, 0
  %n = select i1 %pos, i64 %len, i64 0
  %bytes = add i64 %n, 8
  %copy = call ptr @malloc(i64 %bytes)
  call void @__olang_alloc_check(ptr %copy)
  store i64 %n, ptr %copy
  %data = getelementptr i8, ptr %copy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr %data, ptr %msg, i64 %n, i1 false)
  store atomic ptr %copy, ptr @__olang_crash_msg release, align 8
  call void @__olang_alt_stack()
  call void @llvm.memset.p0.i64(ptr %sa, i8 0, i64 @@SIGACTION_BYTES@@, i1 false)
  store ptr @__olang_crash_handler, ptr %sa
  %flagsp = getelementptr i8, ptr %sa, i64 @@SIGACTION_FLAGS@@
  store i32 -939524096, ptr %flagsp ; SA_ONSTACK | SA_RESETHAND | SA_NODEFER
  ; the fatal signals: SIGSEGV 11, SIGBUS 7, SIGFPE 8, SIGILL 4, SIGABRT 6
  ; B2f: under -s the sanitizer's handler keeps SIGSEGV, and this action becomes what it falls back to for a fault
  ; that is not its own - so a use after a scope closed is still reported as one, and any other fault as before
; @if !san
  %s0 = call i32 @sigaction(i32 11, ptr %sa, ptr null)
; @else
  call void @llvm.memcpy.p0.p0.i64(ptr @__olang_san_old, ptr %sa, i64 @@SIGACTION_BYTES@@, i1 false)
; @end
  %s1 = call i32 @sigaction(i32 7, ptr %sa, ptr null)
  %s2 = call i32 @sigaction(i32 8, ptr %sa, ptr null)
  %s3 = call i32 @sigaction(i32 4, ptr %sa, ptr null)
  %s4 = call i32 @sigaction(i32 6, ptr %sa, ptr null)
  ret void
}



; E11c: a rendering built in one pass - text that grows as it is written, { ptr data, i64 len, i64 cap, ptr scope,
; ptr node }: data starts in a small room beside the builder and, once it outgrows that, grows in a scope of the builder's
; own - made on that first growth, so a frame that never outgrows its room keeps no header (@__olang_sb_scratch), and
; closed when the text is copied out (@__olang_sb_done). While a test runs the scope is the frame's, made with the
; builder and pushed on the unwind chain where the builder is made (node: its unwind node, null outside a test build), so
; a test left part way through a rendering reclaims its chunks, and the chain stays in the order frames are in
;
; room for need more bytes past what it holds - the place they go: inline where it fits, else grown
define ptr @__olang_sb_room(ptr %sb, i64 %need) alwaysinline {
entry:
  %lenp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 1
  %capp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 2
  %len = load i64, ptr %lenp
  %cap = load i64, ptr %capp
  %want = add i64 %len, %need
  %fits = icmp ule i64 %want, %cap
  br i1 %fits, label %ok, label %grow
ok:
  %data = load ptr, ptr %sb
  %p = getelementptr i8, ptr %data, i64 %len
  ret ptr %p
grow:
  %g = call ptr @__olang_sb_grow(ptr %sb, i64 %need)
  ret ptr %g
}

; ...grown: in the arena of the builder's scope, at least doubling, so building n bytes copies fewer than 2n and
; leaves fewer than 2n behind there
define ptr @__olang_sb_grow(ptr %sb, i64 %need) noinline {
entry:
  %lenp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 1
  %capp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 2
  %len = load i64, ptr %lenp
  %cap = load i64, ptr %capp
  %data = load ptr, ptr %sb
  %want = add i64 %len, %need
  %dbl = shl i64 %cap, 1
  %more = icmp ugt i64 %dbl, %want
  %nc = select i1 %more, i64 %dbl, i64 %want
  %scopep = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 3
  %scope0 = load ptr, ptr %scopep
  %none = icmp eq ptr %scope0, null
  br i1 %none, label %mk, label %have
mk:
  %made = call ptr @__olang_sb_scratch(ptr %scopep)
  br label %have
have:
  %scope = phi ptr [ %scope0, %entry ], [ %made, %mk ]
  %nd = call ptr @__olang_scope_alloc(ptr %scope, i64 %nc)
  call void @llvm.memcpy.p0.p0.i64(ptr %nd, ptr %data, i64 %len, i1 false)
  store ptr %nd, ptr %sb
  store i64 %nc, ptr %capp
  %p = getelementptr i8, ptr %nd, i64 %len
  ret ptr %p
}

; the builder's own scope, on its first growth outside a test build (in one the frame's is made with the builder)
define ptr @__olang_sb_scratch(ptr %scopep) noinline {
entry:
  %h = call ptr @malloc(i64 48)
  call void @__olang_alloc_check(ptr %h)
  store %olang.scope zeroinitializer, ptr %h
  store ptr %h, ptr %scopep
  ret ptr %h
}

; the text copied out: the builder's own scope, if it has one, closed - and freed, made by @__olang_sb_scratch
; (the frame's, in a test build, is popped off the unwind chain where the builder was made)
define void @__olang_sb_done(ptr %sb) {
entry:
  %scopep = getelementptr { ptr, i64, i64, ptr, ptr }, ptr %sb, i32 0, i32 3
  %h = load ptr, ptr %scopep
  %none = icmp eq ptr %h, null
  br i1 %none, label %done, label %close
close:
  call void @__olang_scope_close(ptr %h)
  %nodep = getelementptr { ptr, i64, i64, ptr, ptr }, ptr %sb, i32 0, i32 4
  %node = load ptr, ptr %nodep
  %inframe = icmp ne ptr %node, null
  br i1 %inframe, label %done, label %free
free:
  call void @free(ptr %h)
  br label %done
done:
  ret void
}

; k more bytes written where @__olang_sb_room said
define void @__olang_sb_add(ptr %sb, i64 %k) {
entry:
  %lenp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 1
  %len = load i64, ptr %lenp
  %l2 = add i64 %len, %k
  store i64 %l2, ptr %lenp
  ret void
}

; n bytes from src appended
define void @__olang_sb_put(ptr %sb, ptr %src, i64 %n) {
entry:
  %p = call ptr @__olang_sb_room(ptr %sb, i64 %n)
  call void @llvm.memcpy.p0.p0.i64(ptr %p, ptr %src, i64 %n, i1 false)
  call void @__olang_sb_add(ptr %sb, i64 %n)
  ret void
}



; E11a: a float's text (@__olang_fmt_float and what it needs, the powers of ten among them). Under LTO a program that
; renders no float keeps none of it, the 11KB of powers included
;
; E11a: a float's text by trying - the fewest digits p for which "%.*e" (p - 1) reads back, rounded to the type,
; as v; then laid out as "%.17g" would. An infinity or a NaN is "%.17g"'s own. v - v is 0 exactly when v is
; finite. Up to seventeen tries, so @__olang_fmt_float (below) computes the digits directly and comes here only
; for the tiniest values, where the two agree - floatShortestByTries in util.c is this in C
@__olang_fmt_e = unnamed_addr constant [5 x i8] c"%.*e\00"
@__olang_fmt_s = unnamed_addr constant [3 x i8] c"%s\00"
@__olang_fmt_fpad = unnamed_addr constant [15 x i8] c"%.*s%c%.*s%.*s\00"
@__olang_fmt_fmid = unnamed_addr constant [16 x i8] c"%.*s%c%.*s.%.*s\00"
@__olang_fmt_fsmall = unnamed_addr constant [17 x i8] c"%.*s0.%.*s%c%.*s\00"
@__olang_fmt_minus = unnamed_addr constant [2 x i8] c"-\00"
@__olang_fmt_zeros = unnamed_addr constant [20 x i8] c"0000000000000000000\00"
define i64 @__olang_fmt_float_tries(ptr %buf, i64 %cap, double %v, i32 %kind) {
entry:
  %e = alloca [40 x i8]
  %vv = fsub double %v, %v
  %fin = fcmp oeq double %vv, 0.0
  br i1 %fin, label %try, label %special
  ; every NaN renders as "nan": snprintf would print the sign, which for a NaN an operation made is unspecified
  ; (E33a) - LLVM folds 0/0 to +NaN where x86 computes -NaN
special:
  %isnan = fcmp uno double %v, %v
  %w = select i1 %isnan, double 0x7FF8000000000000, double %v
  %ns = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_g, double %w)
  %ns64 = sext i32 %ns to i64
  ret i64 %ns64
try:
  %p = phi i32 [ 1, %entry ], [ %p1, %next ]
  %pm1 = sub i32 %p, 1
  %ne = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %e, i64 40, ptr @__olang_fmt_e, i32 %pm1, double %v)
  %back = call double @strtod(ptr %e, ptr null)
  switch i32 %kind, label %r64 [ i32 1, label %r32 i32 2, label %r16 i32 3, label %rb16 ]
r32:
  %t32 = fptrunc double %back to float
  %w32 = fpext float %t32 to double
  br label %cmp
r16:
  %t16 = fptrunc double %back to half
  %w16 = fpext half %t16 to double
  br label %cmp
rb16:
  %tb16 = fptrunc double %back to bfloat
  %wb16 = fpext bfloat %tb16 to double
  br label %cmp
r64:
  br label %cmp
cmp:
  %r = phi double [ %w32, %r32 ], [ %w16, %r16 ], [ %wb16, %rb16 ], [ %back, %r64 ]
  %same = fcmp oeq double %r, %v
  %last = icmp sge i32 %p, 17
  %stop = or i1 %same, %last
  br i1 %stop, label %found, label %next
next:
  %p1 = add i32 %p, 1
  br label %try
  ; e is "[-]d[.ddd]e+XX" with p digits: the sign, the first digit, the rest from s + 2, the exponent after the e
found:
  %c0 = load i8, ptr %e
  %neg = icmp eq i8 %c0, 45
  %negi = zext i1 %neg to i32
  %neg64 = zext i1 %neg to i64
  %s = getelementptr i8, ptr %e, i64 %neg64
  %d1 = load i8, ptr %s
  %d1i = zext i8 %d1 to i32
  %rest = getelementptr i8, ptr %s, i64 2
  %onedig = icmp eq i32 %p, 1
  %p64 = sext i32 %p to i64
  %pp1 = add i64 %p64, 1
  %eoff = select i1 %onedig, i64 1, i64 %pp1
  %eat = getelementptr i8, ptr %s, i64 %eoff
  %xat = getelementptr i8, ptr %eat, i64 1
  %x64 = call i64 @strtol(ptr %xat, ptr null, i32 10)
  %x = trunc i64 %x64 to i32
  %xlo = icmp slt i32 %x, -4
  %xhi = icmp sge i32 %x, 17
  %sci = or i1 %xlo, %xhi
  br i1 %sci, label %wsci, label %fixed
wsci:
  %n1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_s, ptr %e)
  br label %out
fixed:
  %pad = icmp sge i32 %x, %pm1
  br i1 %pad, label %wpad, label %notpad
wpad:
  %z = sub i32 %x, %pm1
  %n2 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_fpad, i32 %negi, ptr @__olang_fmt_minus, i32 %d1i, i32 %pm1, ptr %rest, i32 %z, ptr @__olang_fmt_zeros)
  br label %out
notpad:
  %pos = icmp sge i32 %x, 0
  br i1 %pos, label %wmid, label %wsmall
wmid:
  %xs = sext i32 %x to i64
  %tail = getelementptr i8, ptr %rest, i64 %xs
  %tn = sub i32 %pm1, %x
  %n3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_fmid, i32 %negi, ptr @__olang_fmt_minus, i32 %d1i, i32 %x, ptr %rest, i32 %tn, ptr %tail)
  br label %out
wsmall:
  %nz = sub i32 -1, %x
  %n4 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_fsmall, i32 %negi, ptr @__olang_fmt_minus, i32 %nz, ptr @__olang_fmt_zeros, i32 %d1i, i32 %pm1, ptr %rest)
  br label %out
out:
  %n = phi i32 [ %n1, %wsci ], [ %n2, %wpad ], [ %n3, %wmid ], [ %n4, %wsmall ]
  %n64 = sext i32 %n to i64
  ret i64 %n64
}

@__olang_pow10m = unnamed_addr constant [1392 x i64] [i64 -391859759250406776, i64 1671618768450675795, i64 -7162441377172586091, i64 1044761730281672372, i64 -4341365703038344710, i64 5917638181279478369, i64 -815021110370542984, i64 -1826324310255427847, i64 -7426917221622671221, i64 -8058981721550724260, i64 -4671960508600951122, i64 8373016921771146291, i64 -1228264617323800998, i64 1242899115359157055, i64 -7685194413468457480, i64 5388497965526861063, i64 -4994806998408183946, i64 6735622456908576329, i64 -1631822729582842029, i64 -803843965719055396, i64 -7937418233630358124, i64 8720969558280366185, i64 -5310086773610559751, i64 -7545532125859093884, i64 -2025922448585811785, i64 -208543120469091547, i64 -8183730558007214222, i64 -130339450293182217, i64 -5617977179081629873, i64 -4774610331293865675, i64 -2410785455424649437, i64 -5968262914117332094, i64 -8424269937281487754, i64 5493207715531443249, i64 -5918651403174471789, i64 -2356862392440471747, i64 -2786628235540701832, i64 -2946077990550589683, i64 -8659171674854020501, i64 -8758827771735200408, i64 -6212278575140137722, i64 7498209359040551106, i64 -3153662200497784248, i64 149389661945913074, i64 -8888567902952197011, i64 93368538716195671, i64 -6499023860262858360, i64 4728396691822632493, i64 -3512093806901185046, i64 5910495864778290617, i64 -9112587656954322510, i64 8305745933913819539, i64 -6779048552765515233, i64 1158810380537498616, i64 -3862124672529506138, i64 -3163173042755514634, i64 -215969822234494768, i64 -8565652321871781196, i64 -7052510166537641086, i64 6175682344898606512, i64 -4203951689744663454, i64 -1503769105731517667, i64 -643253593753441413, i64 -6491397400591784988, i64 -7319562523736982739, i64 5166248661484910190, i64 -4537767136243840520, i64 -7377247228426025974, i64 -1060522901877412746, i64 -4609873017105144563, i64 -7580355841314464822, i64 4036358391950366504, i64 -4863758783215693124, i64 -4177924046916817678, i64 -1468012460592228501, i64 -610719040218634194, i64 -7835036815511224669, i64 8841672636718129437, i64 -5182110000961642932, i64 6440404777470273892, i64 -1865951482774665761, i64 8050505971837842365, i64 -8083748704375247957, i64 -6497648813669818282, i64 -5492999862041672042, i64 -8122061017087272852, i64 -2254563809124702148, i64 3682481783923072647, i64 -8326631408344020699, i64 -6921820921902855404, i64 -5796603242002637969, i64 571095884476206553, i64 -2634068034075909558, i64 -3897816162832129712, i64 -8563821548938525330, i64 -4741978110983775022, i64 -6093090917745768758, i64 7907585416552444934, i64 -3004677628754823043, i64 661109733835780360, i64 -8795452545612846258, i64 2719036592861056677, i64 -6382629663588669919, i64 -5824576295778454962, i64 -3366601061058449494, i64 1942651667131707105, i64 -9021654690802612790, i64 5825843310384704845, i64 -6665382345075878084, i64 -1941067898873894752, i64 -3720041912917459700, i64 2185351144835019464, i64 -38366372719436721, i64 2731688931043774330, i64 -6941508010590729807, i64 8624834609543440812, i64 -4065198994811024355, i64 -3054014793352862697, i64 -469812725086392539, i64 5405853545163697437, i64 -7211161980820077193, i64 5684501474941004850, i64 -4402266457597708587, i64 2493940825248868159, i64 -891147053569747830, i64 7729112049988473103, i64 -7474495936122174250, i64 -9004363024039368023, i64 -4731433901725329908, i64 2579604275232953683, i64 -1302606358729274481, i64 3224505344041192104, i64 -7731658001846878407, i64 8932844867666826921, i64 -5052886483881210105, i64 -2669001970698630061, i64 -1704422086424124727, i64 -3336252463373287576, i64 -7982792831656159810, i64 2526528228819083169, i64 -5366805021142811859, i64 -6065211750830921846, i64 -2096820258001126919, i64 1641857348316123500, i64 -8228041688891786181, i64 -5891368184943504669, i64 -5673366092687344822, i64 -7364210231179380836, i64 -2480021597431793123, i64 4629795266307937667, i64 -8467542526035952558, i64 5199465050656154994, i64 -5972742139117552794, i64 -2724040723534582065, i64 -2854241655469553088, i64 -8016736922845615486, i64 -8701430062309552536, i64 6518754469289960081, i64 -6265101559459552766, i64 8148443086612450102, i64 -3219690930897053053, i64 962181821410786819, i64 -8929835859451740015, i64 -1704479370831952190, i64 -6550608805887287114, i64 7092772823314835570, i64 -3576574988931720989, i64 -357406007711231345, i64 -9152888395723407474, i64 8999993282035256217, i64 -6829424476226871438, i64 2026619565689294464, i64 -3925094576856201394, i64 -6690097579743157728, i64 -294682202642863838, i64 5472436080603216552, i64 -7101705404292871755, i64 8031958568804398249, i64 -4265445736938701790, i64 -3795109844276665901, i64 -720121152745989333, i64 9091170749936331336, i64 -7367604748107325189, i64 3376138709496513133, i64 -4597819916706768583, i64 -391512631556746488, i64 -1135588877456072824, i64 8733981247408842698, i64 -7627272076051127371, i64 5458738279630526686, i64 -4922404076636521310, i64 -7011635205744005354, i64 -1541319077368263733, i64 5070514048102157020, i64 -7880853450996246689, i64 863228270850154185, i64 -5239380795317920458, i64 -3532650679864695173, i64 -1937539975720012668, i64 -9027499368258256870, i64 -8128491512466089774, i64 -3336344095947716592, i64 -5548928372155224313, i64 -8782116138362033643, i64 -2324474446766642487, i64 7469098900757009562, i64 -8370325556870233411, i64 -2249342214667950880, i64 -5851220927660403859, i64 6411694268519837208, i64 -2702340141148116920, i64 -5820440219632367202, i64 -8606491615858654931, i64 7891439908798240259, i64 -6146428501395930760, i64 -3970758169284363389, i64 -3071349608317525546, i64 -351761693178066332, i64 -8837122532839535322, i64 6697677969404790399, i64 -6434717147622031249, i64 -851274575098787810, i64 -3431710416100151157, i64 -1064093218873484762, i64 -9062348037703676329, i64 8558313775058847832, i64 -6716249028702207507, i64 6086206200396171886, i64 -3783625267450371480, i64 -6227300304786948855, i64 -117845565885576446, i64 -3172439362556298164, i64 -6991182506319567135, i64 -4288617610811380305, i64 -4127292114472071014, i64 3862600023340550427, i64 -547429124662700864, i64 -4395122007679087774, i64 -7259672230555269896, i64 8782263791269039901, i64 -4462904269766699466, i64 -7468914334623251740, i64 -966944318780986428, i64 4498915137003099037, i64 -7521869226879198374, i64 -6411550076227838910, i64 -4790650515171610063, i64 5820620459997365075, i64 -1376627125537124675, i64 -6559282480285457368, i64 -7777920981101784778, i64 -8711237568605798759, i64 -5110715207949843068, i64 2946011094524915263, i64 -1776707991509915931, i64 3682513868156144079, i64 -8027971522334779313, i64 4607414176811284001, i64 -5423278384491086237, i64 1147581702586717097, i64 -2167411962186469893, i64 -3177208890193991532, i64 -8272161504007625539, i64 7237616480483531100, i64 -5728515861582144020, i64 -4788037454677749837, i64 -2548958808550292121, i64 -1373360799919799392, i64 -8510628282985014432, i64 -858350499949874620, i64 -6026599335303880135, i64 3538747893490044629, i64 -2921563150702462265, i64 9035120885289943691, i64 -8743505996830120772, i64 -5882264492762254953, i64 -6317696477610263061, i64 -2741144597525430788, i64 -3285434578585440922, i64 -3426430746906788485, i64 -8970925639256982432, i64 4776009810824339053, i64 -6601971030643840136, i64 5970012263530423816, i64 -3640777769877412266, i64 7462515329413029771, i64 -9193015133814464522, i64 52386062455755702, i64 -6879582898840692749, i64 -9157889458785081180, i64 -3987792605123478032, i64 6999382250228200141, i64 -373054737976959636, i64 8749227812785250177, i64 -7150688238876681629, i64 -3755104653863994448, i64 -4326674280168464132, i64 -4693880817329993060, i64 -796656831783192261, i64 -1255665003235103420, i64 -7415439547505577019, i64 8438581409832836170, i64 -4657613415954583370, i64 -3286831292991118499, i64 -1210330751515841308, i64 -8720225134666286028, i64 -7673985747338482674, i64 -3144297699952734816, i64 -4980796165745715438, i64 -8542058143368306423, i64 -1614309188754756393, i64 3157485376071780683, i64 -7926472270612804602, i64 8890957387685944783, i64 -5296404319838617848, i64 1890324697752655170, i64 -2008819381370884406, i64 2362905872190818963, i64 -8173041140997884610, i64 6088502188546649756, i64 -5604615407819967859, i64 -1612744301171463613, i64 -2394083241347571919, i64 7207441660390446292, i64 -8413831053483314306, i64 -2412877989897052924, i64 -5905602798426754978, i64 -7627783505798704059, i64 -2770317479606055818, i64 4300328673033783639, i64 -8648977452394866743, i64 -1923980597781273130, i64 -6199535797066195524, i64 6818396289628184396, i64 -3137733727905356501, i64 8522995362035230495, i64 -8878612607581929669, i64 3021029092058325107, i64 -6486579741050024183, i64 -835399653354481520, i64 -3496538657885142324, i64 8179122470161673908, i64 -9102865688819295809, i64 -4111420493003729616, i64 -6766896092596731857, i64 -5139275616254662020, i64 -3846934097318526917, i64 -6424094520318327524, i64 -196981603220770742, i64 -8030118150397909405, i64 -7040642529654063570, i64 -7324666853212387330, i64 -4189117143640191558, i64 4679224488766679549, i64 -624710411122851544, i64 -3374341425896426372, i64 -7307973034592864071, i64 -9026492418826348338, i64 -4523280274813692185, i64 -2059743486678159615, i64 -1042414325089727327, i64 -2574679358347699519, i64 -7569037980822161435, i64 3002511419460075705, i64 -4849611457600313890, i64 8364825292752482535, i64 -1450328303573004458, i64 1232659579085827361, i64 -7823984217374209643, i64 -3841273781498745804, i64 -5168294253290374149, i64 4421779809981343554, i64 -1848681798185579782, i64 915538744049291538, i64 -8072955151507069220, i64 5183897733458195115, i64 -5479507920956448621, i64 6479872166822743894, i64 -2237698882768172872, i64 3488154190101041964, i64 -8316090829371189901, i64 2180096368813151227, i64 -5783427518286599473, i64 -1886565557410948870, i64 -2617598379430861437, i64 -2358206946763686087, i64 -8553528014785370254, i64 7749492695127472003, i64 -6080224000054324913, i64 463493832054564196, i64 -2988593981640518238, i64 -4032318728359182659, i64 -8785400266166405755, i64 -4826042214438183114, i64 -6370064314280619289, i64 3190819268807046916, i64 -3350894374423386208, i64 -623161932418579259, i64 -9011838011655698236, i64 -7307005235402693893, i64 -6653111496142234891, i64 -4522070525825979462, i64 -3704703351750405709, i64 3570783879572301480, i64 -19193171260619233, i64 -148206168962011054, i64 -6929524759678968877, i64 -92628855601256909, i64 -4050219931171323192, i64 -115786069501571136, i64 -451088895536766085, i64 4466953431550423984, i64 -7199459587351560659, i64 486002885505321038, i64 -4387638465762062920, i64 5219189625309039202, i64 -872862063775190746, i64 6523987031636299002, i64 -7463067817500576073, i64 -534194123654701028, i64 -4717148753448332187, i64 -667742654568376285, i64 -1284749923383027329, i64 8388693718644305452, i64 -7720497729755473937, i64 -6286281471915778852, i64 -5038936143766954517, i64 -7857851839894723565, i64 -1686984161281305242, i64 8624429273841147159, i64 -7971894128441897632, i64 778582277723329070, i64 -5353181642124984136, i64 973227847154161338, i64 -2079791034228842266, i64 1216534808942701673, i64 -8217398424034108273, i64 -3851351762838199359, i64 -5660062011615247437, i64 -4814189703547749198, i64 -2463391496091671392, i64 -6017737129434686498, i64 -8457148712698376476, i64 7768129340171790699, i64 -5959749872445582691, i64 -8736582398494813242, i64 -2838001322129590460, i64 -1697355961263740745, i64 -8691279853972075893, i64 1244995533423855986, i64 -6252413799037706963, i64 -3055441601647567921, i64 -3203831230369745799, i64 5404070034795315907, i64 -8919923546622172981, i64 -3539985255894009414, i64 -6538218414850328322, i64 -4424981569867511768, i64 -3561087000135522498, i64 8303831092947774002, i64 -9143208402725783417, i64 578208414664970847, i64 -6817324484979841368, i64 -3888925500096174345, i64 -3909969587797413806, i64 -249470856692830027, i64 -275775966319379353, i64 -4923524589293425438, i64 -7089889006590693952, i64 -3077202868308390899, i64 -4250675239810979535, i64 765182433041899281, i64 -701658031336336515, i64 5568164059729762005, i64 -7356065297226292178, i64 5785945546544795205, i64 -4583395603105477319, i64 -1990940103673781802, i64 -1117558485454458744, i64 6734696907262548556, i64 -7616003081050118571, i64 4209185567039092847, i64 -4908317832885260310, i64 -8573576096483297653, i64 -1523711272679187483, i64 3118087934678041646, i64 -7869848573065574033, i64 4254647968387469981, i64 -5225624697904579637, i64 706623942056949572, i64 -1920344853953336643, i64 -3728406090856200939, i64 -8117744561361917258, i64 -6941939825212513491, i64 -5535494683275008668, i64 5157633273766521849, i64 -2307682335666372931, i64 6447041592208152311, i64 -8359830487432564938, i64 6335244004343789146, i64 -5838102090863318269, i64 -1304317031425039375, i64 -2685941595151759932, i64 -1630396289281299219, i64 -8596242524610931813, i64 1286845328412881940, i64 -6133617137336276863, i64 -3003129357911285479, i64 -3055335403242958174, i64 5469460339465668959, i64 -8827113654667930715, i64 8030098730593431003, i64 -6422206049907525490, i64 -3797434642040374958, i64 -3416071543957018958, i64 9088264752731695015, i64 -9052573742614218705, i64 -8154892584824854328, i64 -6704031159840385477, i64 8253128342678483706, i64 -3768352931373093942, i64 5704724409920716729, i64 -98755145788979524, i64 -2092466524453879896, i64 -6979250993759194058, i64 998051431430019017, i64 -4112377723771604669, i64 -7975807747567252037, i64 -528786136287117932, i64 8476984389250486570, i64 -7248020362820530564, i64 -3925256793573221702, i64 -4448339435098275301, i64 -294884973539139224, i64 -948738275445456222, i64 -368606216923924029, i64 -7510490449794491995, i64 -2536221894791146470, i64 -4776427043815727089, i64 6053094668365842720, i64 -1358847786342270957, i64 2954682317029915496, i64 -7766808894105001205, i64 -459166561069996767, i64 -5096825099203863602, i64 -573958201337495959, i64 -1759345355577441598, i64 -5329133770099257852, i64 -8017119874876982855, i64 -5636551615525730110, i64 -5409713825168840664, i64 2177682517447613171, i64 -2150456263033662926, i64 2722103146809516464, i64 -8261564192037121185, i64 6313000485183335694, i64 -5715269221619013577, i64 3279564588051781713, i64 -2532400508596379068, i64 -512230283362660763, i64 -8500279345513818773, i64 1985699082112030975, i64 -6013663163464885563, i64 -2129562165787349185, i64 -2905392935903719049, i64 6561419329620589327, i64 -8733399612580906262, i64 -7428327965055601431, i64 -6305063497298744923, i64 4549648098962661924, i64 -3269643353196043250, i64 -8147997931578836307, i64 -8961056123388608887, i64 1825030320404309164, i64 -6589634135808373205, i64 6892973918932774359, i64 -3625356651333078602, i64 4004531380238580045, i64 -9183376934724255983, i64 -2108853905778275376, i64 -6867535149977932074, i64 6587304654631931588, i64 -3972732919045027189, i64 -989241218564861323, i64 -354230130378896082, i64 -1236551523206076654, i64 -7138922859127891907, i64 6144684325637283947, i64 -4311967555482476980, i64 -6154202648235558778, i64 -778273425925708321, i64 -3081067291867060568, i64 -7403949918844649557, i64 -1925667057416912855, i64 -4643251380128424042, i64 -2407083821771141069, i64 -1192378206733142148, i64 -7620540795641314240, i64 -7662765406849295699, i64 -2456994988062127448, i64 -4966770740134231719, i64 6152128301777116498, i64 -1596777406740401745, i64 -6144897678060768090, i64 -7915514906853832947, i64 -3840561048787980056, i64 -5282707615139903279, i64 4422670725869800738, i64 -1991698500497491195, i64 -8306719647944912790, i64 -8162340590452013853, i64 8643358275316593218, i64 -5591239719637629412, i64 6192511825718353619, i64 -2377363631119648861, i64 7740639782147942024, i64 -8403381297090862394, i64 2532056854628769813, i64 -5892540602936190089, i64 -6058300968568813542, i64 -2753989735242849707, i64 -7572876210711016927, i64 -8638772612167862923, i64 9102010423587778132, i64 -6186779746782440750, i64 -2457545025797441047, i64 -3121788665050663033, i64 -7683617300674189212, i64 -8868646943297746252, i64 -4802260812921368258, i64 -6474122660694794911, i64 -1391139997724322418, i64 -3480967307441105734, i64 7484447039699372786, i64 -9093133594791772940, i64 -9157278655470055721, i64 -6754730975062328271, i64 -6834912300910181747, i64 -3831727700400522434, i64 679731660717048624, i64 -177973607073265139, i64 -8373707460958465028, i64 -7028762532061872568, i64 8601490892183123069, i64 -4174267146649952806, i64 -7694880458480647779, i64 -606147914885053103, i64 4216457482181353988, i64 -7296371474444240046, i64 -4282243101277735614, i64 -4508778324627912153, i64 8482254178684994195, i64 -1024286887357502287, i64 5991131704928854840, i64 -7557708332239520786, i64 -3173071712060547581, i64 -4835449396872013078, i64 -8578025658503072380, i64 -1432625727662628443, i64 3112525982153323237, i64 -7812920107430224633, i64 4251171748059520975, i64 -5154464115860392887, i64 702278666647013314, i64 -1831394126398103205, i64 5489534351736154547, i64 -8062150356639896359, i64 1125115960621402640, i64 -5466001927372482545, i64 6018080969204141204, i64 -2220816390788215277, i64 2910915193077788601, i64 -8305539271883716405, i64 -486521013540076077, i64 -5770238071427257602, i64 -608151266925095096, i64 -2601111570856684098, i64 -5371875102083756773, i64 -8543223759426509417, i64 3560107088838733872, i64 -6067343680855748868, i64 -161552157378970563, i64 -2972493582642298180, i64 4409745821703674700, i64 -8775337516792518219, i64 -6467280898289979121, i64 -6357485877563259869, i64 1139270913992301907, i64 -3335171328526686933, i64 -3187597375937010520, i64 -9002011107970261189, i64 7231123676894144233, i64 -6640827866535438582, i64 4427218577690292387, i64 -3689348814741910324, i64 -3689348814741910324, i64 -9223372036854775808, i64 0, i64 -6917529027641081856, i64 0, i64 -4035225266123964416, i64 0, i64 -432345564227567616, i64 0, i64 -7187745005283311616, i64 0, i64 -4372995238176751616, i64 0, i64 -854558029293551616, i64 0, i64 -7451627795949551616, i64 0, i64 -4702848726509551616, i64 0, i64 -1266874889709551616, i64 0, i64 -7709325833709551616, i64 0, i64 -5024971273709551616, i64 0, i64 -1669528073709551616, i64 0, i64 -7960984073709551616, i64 0, i64 -5339544073709551616, i64 0, i64 -2062744073709551616, i64 0, i64 -8206744073709551616, i64 0, i64 -5646744073709551616, i64 0, i64 -2446744073709551616, i64 0, i64 -8446744073709551616, i64 0, i64 -5946744073709551616, i64 0, i64 -2821744073709551616, i64 0, i64 -8681119073709551616, i64 0, i64 -6239712823709551616, i64 0, i64 -3187955011209551616, i64 0, i64 -8910000909647051616, i64 0, i64 -6525815118631426616, i64 0, i64 -3545582879861895366, i64 0, i64 -9133518327554766460, i64 4611686018427387904, i64 -6805211891016070171, i64 5764607523034234880, i64 -3894828845342699810, i64 -6629298651489370112, i64 -256850038250986858, i64 5548434740920451072, i64 -7078060301547948643, i64 -1143914305352105984, i64 -4235889358507547899, i64 7793479155164643328, i64 -683175679707046970, i64 -4093209111326359552, i64 -7344513827457986212, i64 4359273333062107136, i64 -4568956265895094861, i64 5449091666327633920, i64 -1099509313941480672, i64 2199678564482154496, i64 -7604722348854507276, i64 1374799102801346560, i64 -4894216917640746191, i64 1718498878501683200, i64 -1506085128623544835, i64 6759809616554491904, i64 -7858832233030797378, i64 6530724019560251392, i64 -5211854272861108819, i64 -1059967012404461568, i64 -1903131822648998119, i64 7898413271349198848, i64 -8106986416796705681, i64 -1981020733047832576, i64 -5522047002568494197, i64 -2476275916309790720, i64 -2290872734783229842, i64 -3095344895387238400, i64 -8349324486880600507, i64 4982938468024057856, i64 -5824969590173362730, i64 -7606384970252091392, i64 -2669525969289315508, i64 4327076842467049472, i64 -8585982758446904049, i64 -6518949010312869888, i64 -6120792429631242157, i64 -8148686262891087360, i64 -3039304518611664792, i64 8260886245095692416, i64 -8817094351773372351, i64 5163053903184807760, i64 -6409681921289327535, i64 -7381240676301154012, i64 -3400416383184271515, i64 -3178808521666707, i64 -9042789267131251553, i64 -4613672773753429596, i64 -6691800565486676537, i64 -5767090967191786995, i64 -3753064688430957767, i64 -7208863708989733744, i64 -79644842111309304, i64 212292400617608628, i64 -6967307053960650171, i64 132682750386005392, i64 -4097447799023424810, i64 4777539456409894645, i64 -510123730351893109, i64 -3251447716342407502, i64 -7236356359111015049, i64 7191217214140771119, i64 -4433759430461380907, i64 4377335499248575995, i64 -930513269649338230, i64 -8363388681221443718, i64 -7499099821171918250, i64 -7532960934977096276, i64 -4762188758037509908, i64 4418856886560793367, i64 -1341049929119499481, i64 5523571108200991709, i64 -7755685233340769032, i64 -8076983103442849942, i64 -5082920523248573386, i64 -5484542860876174524, i64 -1741964635633328828, i64 6979379479186945558, i64 -8006256924911912374, i64 -4861259862362934835, i64 -5396135137712502563, i64 7758483227328495169, i64 -2133482903713240300, i64 -4136954021121544751, i64 -8250955842461857044, i64 -279753253987271518, i64 -5702008784649933400, i64 4261994450943298507, i64 -2515824962385028846, i64 5327493063679123134, i64 -8489919629131724885, i64 7941369183226839863, i64 -6000713517987268202, i64 5315025460606161924, i64 -2889205879056697349, i64 -2579590211097073402, i64 -8723282702051517699, i64 7611128154919104931, i64 -6292417359137009220, i64 -4321147861633282548, i64 -3253835680493873621, i64 -789748808614215280, i64 -8951176327949752869, i64 8729779031470891258, i64 -6577284391509803182, i64 6300537770911226168, i64 -3609919470959866074, i64 -1347699823215743098, i64 -9173728696990998152, i64 6075216638131242420, i64 -6855474852811359786, i64 7594020797664053025, i64 -3957657547586811828, i64 269153960225290473, i64 -335385916056126881, i64 336442450281613091, i64 -7127145225176161157, i64 7127805559067090038, i64 -4297245513042813542, i64 4298070930406474644, i64 -759870872876129024, i64 -3850783373846682503, i64 -7392448323188662496, i64 9122475437414293195, i64 -4628874385558440216, i64 -7043649776941685122, i64 -1174406963520662366, i64 -4192876202749718498, i64 -7651533379841495835, i64 -4926390635932268014, i64 -4952730706374481889, i64 3065383741939440791, i64 -1579227364540714458, i64 -779956341003086915, i64 -7904546130479028392, i64 6430056314514152534, i64 -5268996644671397586, i64 8037570393142690668, i64 -1974559787411859078, i64 823590954573587527, i64 -8151628894773493780, i64 5126430365035880108, i64 -5577850100039479321, i64 6408037956294850135, i64 -2360626606621961247, i64 3398361426941174765, i64 -8392920656779807636, i64 -4793553135802847628, i64 -5879464802547371641, i64 -1380255401326171631, i64 -2737644984756826647, i64 -1725319251657714539, i64 -8628557143114098510, i64 3533361486141316317, i64 -6174010410465235234, i64 -4806670179178130411, i64 -3105826994654156138, i64 7826720331309500698, i64 -8858670899299929442, i64 280014188641050032, i64 -6461652605697523899, i64 -8873354301053463268, i64 -3465379738694516970, i64 -1868320839462053277, i64 -9083391364325154962, i64 5749828502977298558, i64 -6742553186979055799, i64 -2036086408133152611, i64 -3816505465296431844, i64 6678264026688335045, i64 -158945813193151901, i64 8347830033360418806, i64 -7016870160886801794, i64 2911550761636567802, i64 -4159401682681114339, i64 -5583933584809066056, i64 -587566084924005019, i64 2243455055843443238, i64 -7284757830718584993, i64 3708002419115845976, i64 -4494261269970843337, i64 23317005467419566, i64 -1006140569036166268, i64 -4582539761593113446, i64 -7546366883288685774, i64 -558244341782001952, i64 -4821272585683469313, i64 -5309491445654890344, i64 -1414904713676948737, i64 -6636864307068612930, i64 -7801844473689174817, i64 -4148040191917883081, i64 -5140619573684080617, i64 -5185050239897353852, i64 -1814088448677712867, i64 -6481312799871692315, i64 -8051334308064652398, i64 -8662506518347195601, i64 -5452481866653427593, i64 3006924907348169211, i64 -2203916314889396588, i64 -853029884242176390, i64 -8294976724446954723, i64 1772699331562333708, i64 -5757034887131305500, i64 6827560182880305039, i64 -2584607590486743971, i64 8534450228600381299, i64 -8532908771695296838, i64 7639874402088932264, i64 -6054449946191733143, i64 326470965756389522, i64 -2956376414312278525, i64 5019774725622874806, i64 -8765264286586255934, i64 831516194300602802, i64 -6344894339805432014, i64 -8183976793979022306, i64 -3319431906329402113, i64 3605087062808385830, i64 -8992173969096958177, i64 9170708441896323000, i64 -6628531442943809817, i64 6851699533943015846, i64 -3673978285252374367, i64 3952938399001381903, i64 -9213765455923815836, i64 -4446942528265218167, i64 -6905520801477381891, i64 -946992141904134804, i64 -4020214983419339459, i64 8039631859474607303, i64 -413582710846786420, i64 -3785518230938904583, i64 -7176018221920323369, i64 -60105885123121413, i64 -4358336758973016307, i64 -75132356403901766, i64 -836234930288882479, i64 9129456591349898601, i64 -7440175859071633406, i64 -1211618658047395231, i64 -4688533805412153853, i64 -6126209340986631942, i64 -1248981238337804412, i64 -7657761676233289928, i64 -7698142301602209614, i64 -2480258038432112253, i64 -5010991858575374113, i64 -7712008566467528220, i64 -1652053804791829737, i64 8806733365625141341, i64 -7950062655635975442, i64 -6025006692552756422, i64 -5325892301117581398, i64 6303799689591218185, i64 -2045679357969588844, i64 -1343622424865753077, i64 -8196078626372074883, i64 1466078993672598279, i64 -5633412264537705700, i64 6444284760518135752, i64 -2430079312244744221, i64 8055355950647669691, i64 -8436328597794046994, i64 2728754459941099604, i64 -5933724728815170839, i64 -5812428961928401302, i64 -2805469892591575644, i64 1957835834444274180, i64 -8670947710510816634, i64 -7999724640327104446, i64 -6226998619711132888, i64 3835402254873283155, i64 -3172062256211528206, i64 4794252818591603944, i64 -8900067937773286985, i64 7608094030047140369, i64 -6513398903789220827, i64 4898431519131537557, i64 -3530062611309138130, i64 -7712018656367741765, i64 -9123818159709293187, i64 2097517367411243253, i64 -6793086681209228580, i64 7233582727691441970, i64 -3879672333084147821, i64 9041978409614302462, i64 -237904397927796872, i64 6690786993590490174, i64 -7066219276345954901, i64 4181741870994056359, i64 -4221088077005055722, i64 615491320315182544, i64 -664674077828931749, i64 -8454007886460797627, i64 -7332950326284164199, i64 3939617107816777291, i64 -4554501889427817345, i64 -8910536670511192099, i64 -1081441343357383777, i64 7308573235570561493, i64 -7593429867239446717, i64 -6961356773836868827, i64 -4880101315621920492, i64 -8701695967296086034, i64 -1488440626100012711, i64 -6265433940692719638, i64 -7847804418953589800, i64 695789805494438130, i64 -5198069505264599346, i64 869737256868047663, i64 -1885900863153361279, i64 -8136200465769716230, i64 -8096217067111932656, i64 -473439272678684740, i64 -5508585315462527915, i64 4019886927579031980, i64 -2274045625900771990, i64 -8810199395808373737, i64 -8338807543829064350, i64 -7812217631593927538, i64 -5811823411358942533, i64 4069786015789754290, i64 -2653093245771290262, i64 475546501309804958, i64 -8575712306248138270, i64 4908902581746016003, i64 -6107954364382784934, i64 -3087243809672255805, i64 -3023256937051093263, i64 -8470740780517707660, i64 -8807064613298015146, i64 -682526969396179383, i64 -6397144748195131028, i64 -5464844730172612133, i64 -3384744916816525881, i64 -2219369894288377262, i64 -9032994600651410532, i64 -1387106183930235789, i64 -6679557232386875260, i64 2877803288514593168, i64 -3737760522056206171, i64 3597254110643241460, i64 -60514634142869810, i64 9108253656731439729, i64 -6955350673980375487, i64 1080972517029761926, i64 -4082502324048081455, i64 5962901664714590312, i64 -491441886632713915, i64 -6381430974388925822, i64 -7224680206786528053, i64 -8600080377420466543, i64 -4419164240055772162, i64 7696643601933968437, i64 -912269281642327298, i64 397432465562684739, i64 -7487697328667536418, i64 -4363290727450709942, i64 -4747935642407032618, i64 8380944645968776284, i64 -1323233534581402868, i64 1252808770606194547, i64 -7744549986754458649, i64 -8440366555225904216, i64 -5069001465015685407, i64 7896285879677171346, i64 -1724565812842218855, i64 -3964700705685699529, i64 -7995382660667468640, i64 2133748077373825698, i64 -5382542307406947896, i64 2667185096717282123, i64 -2116491865831296966, i64 3333981370896602653, i64 -8240336443785642460, i64 6695424375237764562, i64 -5688734536304665171, i64 8369280469047205703, i64 -2499232151953443560, i64 -3373457468973156583, i64 -8479549122611984081, i64 -9025939945749304721, i64 -5987750384837592197, i64 7164319141522920715, i64 -2873001962619602342, i64 4343712908476262990, i64 -8713155254278333320, i64 7326506586225052273, i64 -6279758049420528746, i64 9158133232781315341, i64 -3238011543348273028, i64 2224294504121868368, i64 -8941286242233752499, i64 -7833187971778608078, i64 -6564921784364802720, i64 -568112927868484289, i64 -3594466212028615495, i64 3901544858591782542, i64 -9164070410158966541, i64 -4479063491021217767, i64 -6843401994271320272, i64 -5598829363776522209, i64 -3942566474411762436, i64 -2386850686293264857, i64 -316522074587315140, i64 1628122660560806833, i64 -7115355324258153819, i64 -8205795374004271538, i64 -4282508136895304370, i64 -1033872180650563614, i64 -741449152691742558, i64 -5904026244240592421, i64 -7380934748073420955, i64 -5995859411864064215, i64 -4614482416664388289, i64 1728547772024695539, i64 -1156417002403097458, i64 -2451001303396518480, i64 -7640289654143017767, i64 5385653213018257806, i64 -4938676049251384305, i64 -7102991539009341455, i64 -1561659043136842477, i64 -8878739423761676819, i64 -7893565929601608404, i64 3674159897003727796, i64 -5255271393574622601, i64 4592699871254659745, i64 -1957403223540890347, i64 1129188820640936778, i64 -8140906042354138323, i64 3011586022114279438, i64 -5564446534515285000, i64 8376168546070237202, i64 -2343872149716718346, i64 -7976533391121755114, i64 -8382449121214030822, i64 1932195658189984910, i64 -5866375383090150624, i64 -6808127464117294671, i64 -2721283210435300376, i64 -3898473311719230434, i64 -8618331034163144591, i64 9092669226243950738, i64 -6161227774276542835, i64 -2469221522477225289, i64 -3089848699418290639, i64 6136845133758244197, i64 -8848684464777513506, i64 -3082000819042179233, i64 -6449169562544503978, i64 -8464187042230111945, i64 -3449775934753242068, i64 3254824252494523781, i64 -9073638986861858149, i64 -7189106879045698445, i64 -6730362715149934782, i64 -8986383598807123057, i64 -3801267375510030573, i64 2602078556773259891, i64 -139898200960150313, i64 -1359087822460813040, i64 -7004965403241175802, i64 -849429889038008150, i64 -4144520735624081848, i64 -5673473379724898091, i64 -568964901102714406, i64 -2480155706228734710, i64 -7273132090830278360, i64 -3855940325606653146, i64 -4479729095110460046, i64 -208239388580928528, i64 -987975350460687153, i64 -4871985254153548564, i64 -7535013621679011327, i64 -3044990783845967853, i64 -4807081008671376254, i64 5417133557047315992, i64 -1397165242411832414, i64 -2451955090545630818, i64 -7790757304148477115, i64 -3838314940804713213, i64 -5126760611758208489, i64 4425478360848884291, i64 -1796764746270372707, i64 920161932633717460, i64 -8040506994060064798, i64 2880944217109767365, i64 -5438947724147693094, i64 -5622191765467566602, i64 -2186998636757228463, i64 6807318348447705459, i64 -8284403175614349646, i64 -2662955059861265944, i64 -5743817951090549153, i64 -7940379843253970334, i64 -2568086420435798537, i64 8521269269642088699, i64 -8522583040413455942, i64 -6203421752542164323, i64 -6041542782089432023, i64 6080780864604458308, i64 -2940242459184402125, i64 -6234081974526590827, i64 -8755180564631333184, i64 5327070802775656541, i64 -6332289687361778576, i64 6658838503469570676, i64 -3303676090774835316, i64 8323548129336963345, i64 -8982326584375353929, i64 -4021154456019173717, i64 -6616222212041804507, i64 -5026443070023967147, i64 -3658591746624867729, i64 2940318199324816875, i64 -9204148869281624187, i64 8755227902219092403, i64 -6893500068174642330, i64 -2891023177508298209, i64 -4005189066790915008, i64 -8225464990312760665, i64 -394800315061255856, i64 -5670145219463562927, i64 -7164279224554366766, i64 7985374283903742931, i64 -4343663012265570553, i64 758345818024902856, i64 -817892746904575288, i64 -3663753745896259334, i64 -7428711994456441411, i64 -9207375118826243940, i64 -4674203974643163860, i64 -2285846861678029117, i64 -1231068949876566920, i64 1754377441329851508, i64 -7686947121313936181, i64 1096485900831157192, i64 -4996997883215032323, i64 -3241078642388441414, i64 -1634561335591402499, i64 5172023733869224041, i64 -7939129862385708418, i64 5538357842881958977, i64 -5312226309554747619, i64 -2300424733252327086, i64 -2028596868516046619, i64 6347841120289366950, i64 -8185402070463610993, i64 6273243709394548296, i64 -5620066569652125837, i64 3229868618315797466, i64 -2413397193637769393, i64 -574350245532641071, i64 -8425902273664687727, i64 -358968903457900670, i64 -5920691823653471754, i64 8774660907532399971, i64 -2789178761139451788, i64 1744954097560724156, i64 -8660765753353239224, i64 -8132775725879323211, i64 -6214271173264161126, i64 -5554283638921766110, i64 -3156152948152813503, i64 6892203506629956075, i64 -8890124620236590296, i64 -2609901835997359309, i64 -6500969756868349965, i64 1349308723430688768, i64 -3514526177658049553, i64 -2925050114139026944, i64 -9114107888677362827, i64 -1828156321336891840, i64 -6780948842419315629, i64 6938176635183661008, i64 -3864500034596756632, i64 4061034775552188356, i64 -218939024818557886, i64 5076293469440235445, i64 -7054365918152680535, i64 7784369436827535057, i64 -4206271379263462765, i64 -4104596259247744891, i64 -646153205651940552, i64 -5130745324059681113, i64 -7321374781173544701, i64 8322499218531169064, i64 -4540032458039542972, i64 5791438004736573426, i64 -1063354554122040811, i64 7239297505920716783, i64 -7582125623967357363, i64 6830403950414141941, i64 -4865971011531808800, i64 -5297053117264486286, i64 -1470777745987373096, i64 -2009630378153219953, i64 -7836765118883190041, i64 -8173548013986844327, i64 -5184270380176599647, i64 8229809056225996208, i64 -1868651956793361655, i64 -3547796734999668452, i64 -8085436500636932890, i64 2394313059052595121, i64 -5495109607368778209, i64 -6230480713039031907, i64 -2257200990783584857, i64 -7788100891298789883, i64 -8328279646880822392, i64 -4867563057061743677, i64 -5798663540173640086, i64 -1472767802899791692, i64 -2636643406789662203, i64 -6452645772052127519, i64 -8565431156884620733, i64 -8644589625959967604, i64 -6095102927678388012, i64 7641007041259592112, i64 -3007192641170597111, i64 -8895485272135061476, i64 -8797024428372705051, i64 -947992276657025519, i64 -6384594517038493409, i64 8038381691033493909, i64 -3369057127870728857, i64 5436291095364479483]
; E11a: Schubfach (Giulietti) - FloatSchubfach (util.c) written in IR, with the same powers of ten, so the run
; time and the evaluator compute the same digits. The rounded-to-odd top bits of g * cp, g = g1 * 2^63 + g0:
define i64 @__olang_rop(i64 %g1, i64 %g0, i64 %cp) {
entry:
  %g0w = zext i64 %g0 to i128
  %cpw = zext i64 %cp to i128
  %x = mul i128 %g0w, %cpw
  %xs = lshr i128 %x, 64
  %x1 = trunc i128 %xs to i64
  %g1w = zext i64 %g1 to i128
  %y = mul i128 %g1w, %cpw
  %ys = lshr i128 %y, 64
  %y1 = trunc i128 %ys to i64
  %y0 = trunc i128 %y to i64
  %y0s = lshr i64 %y0, 1
  %z = add i64 %y0s, %x1
  %z63 = lshr i64 %z, 63
  %vbp = add i64 %y1, %z63
  %zm = and i64 %z, 9223372036854775807
  %zp = add i64 %zm, 9223372036854775807
  %st = lshr i64 %zp, 63
  %r = or i64 %vbp, %st
  ret i64 %r
}

; the shortest decimal f * 10^e in the rounding interval of c * 2^q (p significant bits, qmin the subnormals'
; exponent), the closest to it of those - { f, e, true } - else, for the tiniest c, { _, _, false }
define { i64, i32, i1 } @__olang_shortest(i64 %c, i32 %q, i32 %p, i32 %qmin) {
entry:
  %tiny = icmp ult i64 %c, 8
  br i1 %tiny, label %fail, label %go
go:
  %out = and i64 %c, 1
  %cb = shl i64 %c, 2
  %cbr = add i64 %cb, 2
  %pm1 = sub i32 %p, 1
  %pm1w = zext i32 %pm1 to i64
  %pow = shl i64 1, %pm1w
  %ispow = icmp eq i64 %c, %pow
  %notmin = icmp ne i32 %q, %qmin
  %lop = and i1 %ispow, %notmin
  %q64 = sext i32 %q to i64
  %qk = mul i64 %q64, 661971961083
  %qk2 = sub i64 %qk, 274743187321
  %kin = select i1 %lop, i64 %qk2, i64 %qk
  %k = ashr i64 %kin, 41
  %cbl1 = sub i64 %cb, 2
  %cbl2 = sub i64 %cb, 1
  %cbl = select i1 %lop, i64 %cbl2, i64 %cbl1
  %nk = sub i64 0, %k
  %hk = mul i64 %nk, 913124641741
  %hk2 = ashr i64 %hk, 38
  %h0 = add i64 %q64, %hk2
  %h = add i64 %h0, 2
  %rowa = sub i64 348, %k
  %row = shl i64 %rowa, 1
  %hp = getelementptr [1392 x i64], ptr @__olang_pow10m, i64 0, i64 %row
  %hi = load i64, ptr %hp
  %row1 = add i64 %row, 1
  %lp = getelementptr [1392 x i64], ptr @__olang_pow10m, i64 0, i64 %row1
  %lo = load i64, ptr %lp
  %gh0 = lshr i64 %hi, 2
  %lo2 = lshr i64 %lo, 2
  %hi62 = shl i64 %hi, 62
  %gl0 = or i64 %lo2, %hi62
  %gl = add i64 %gl0, 1
  %glz = icmp eq i64 %gl, 0
  %ghc = zext i1 %glz to i64
  %gh = add i64 %gh0, %ghc
  %gh1 = shl i64 %gh, 1
  %gl63 = lshr i64 %gl, 63
  %g1 = or i64 %gh1, %gl63
  %g0 = and i64 %gl, 9223372036854775807
  %cbh = shl i64 %cb, %h
  %cblh = shl i64 %cbl, %h
  %cbrh = shl i64 %cbr, %h
  %vb = call i64 @__olang_rop(i64 %g1, i64 %g0, i64 %cbh)
  %vbl = call i64 @__olang_rop(i64 %g1, i64 %g0, i64 %cblh)
  %vbr = call i64 @__olang_rop(i64 %g1, i64 %g0, i64 %cbrh)
  %vblo = add i64 %vbl, %out
  %s = lshr i64 %vb, 2
  %big = icmp uge i64 %s, 10
  br i1 %big, label %ten, label %one
  ; one digit fewer: the multiples of ten either side of v
ten:
  %s10 = udiv i64 %s, 10
  %sp10 = mul i64 %s10, 10
  %tp10 = add i64 %sp10, 10
  %sp4 = shl i64 %sp10, 2
  %upin = icmp ule i64 %vblo, %sp4
  %tp4 = shl i64 %tp10, 2
  %tp4o = add i64 %tp4, %out
  %wpin = icmp ule i64 %tp4o, %vbr
  %both = and i1 %upin, %wpin
  br i1 %both, label %fail, label %ten2
ten2:
  %either = or i1 %upin, %wpin
  br i1 %either, label %tenok, label %one
tenok:
  %ften = select i1 %upin, i64 %sp10, i64 %tp10
  br label %found
one:
  %t = add i64 %s, 1
  %s4 = shl i64 %s, 2
  %uin = icmp ule i64 %vblo, %s4
  %t4 = shl i64 %t, 2
  %t4o = add i64 %t4, %out
  %win = icmp ule i64 %t4o, %vbr
  %st = add i64 %s, %t
  %st2 = shl i64 %st, 1
  %cmp = sub i64 %vb, %st2
  %clt = icmp slt i64 %cmp, 0
  %ceq = icmp eq i64 %cmp, 0
  %so = and i64 %s, 1
  %se = icmp eq i64 %so, 0
  %ctie = and i1 %ceq, %se
  %low1 = or i1 %clt, %ctie
  %ok1 = or i1 %uin, %win
  %oneof = xor i1 %uin, %win
  %pick = select i1 %oneof, i1 %uin, i1 %low1
  %fone = select i1 %pick, i64 %s, i64 %t
  br i1 %ok1, label %found, label %fail
found:
  %f = phi i64 [ %ften, %tenok ], [ %fone, %one ]
  %k32 = trunc i64 %k to i32
  %r0 = insertvalue { i64, i32, i1 } undef, i64 %f, 0
  %r1 = insertvalue { i64, i32, i1 } %r0, i32 %k32, 1
  %r2 = insertvalue { i64, i32, i1 } %r1, i1 true, 2
  ret { i64, i32, i1 } %r2
fail:
  ret { i64, i32, i1 } { i64 0, i32 0, i1 false }
}

; E11a: a float as the shortest text reading back as it in its own type (kind: 0 F64, 1 F32, 2 F16, 3 BF16 -
; enum floatKind): its significand and exponent in that type, Schubfach's digits, then laid out as "%.17g" lays
; a number out - positional for a decimal exponent in [-4, 17), "d.ddde+XX" otherwise. For the tiniest values,
; and an infinity or a NaN, @__olang_fmt_float_tries. snprintf's contract:
; the length is returned, and with a buffer of cap bytes as much as fits is written, then a NUL
define i64 @__olang_fmt_float(ptr %buf, i64 %cap, double %v, i32 %kind) {
entry:
  %d = alloca [24 x i8]
  %o = alloca [48 x i8]
  %vv = fsub double %v, %v
  %fin = fcmp oeq double %vv, 0.0
  br i1 %fin, label %finite, label %tries
tries:
  %tn = call i64 @__olang_fmt_float_tries(ptr %buf, i64 %cap, double %v, i32 %kind)
  ret i64 %tn
finite:
  %bits = bitcast double %v to i64
  %neg = icmp slt i64 %bits, 0
  %negi = zext i1 %neg to i64
  store i8 45, ptr %o
  %isz = fcmp oeq double %v, 0.0
  br i1 %isz, label %zero, label %parts
zero:
  %oz0 = getelementptr i8, ptr %o, i64 %negi
  store i8 48, ptr %oz0
  %zlen = add i64 %negi, 1
  br label %copy
parts:
  switch i32 %kind, label %k64 [ i32 1, label %k32 i32 2, label %k16 i32 3, label %kb16 ]
k64:
  %e64s = lshr i64 %bits, 52
  %e64 = and i64 %e64s, 2047
  %m64 = and i64 %bits, 4503599627370495
  br label %kc
k32:
  %f32 = fptrunc double %v to float
  %b32 = bitcast float %f32 to i32
  %b32w = zext i32 %b32 to i64
  %e32s = lshr i64 %b32w, 23
  %e32 = and i64 %e32s, 255
  %m32 = and i64 %b32w, 8388607
  br label %kc
k16:
  %f16 = fptrunc double %v to half
  %b16 = bitcast half %f16 to i16
  %b16w = zext i16 %b16 to i64
  %e16s = lshr i64 %b16w, 10
  %e16 = and i64 %e16s, 31
  %m16 = and i64 %b16w, 1023
  br label %kc
kb16:
  %fb16 = fptrunc double %v to bfloat
  %bb16 = bitcast bfloat %fb16 to i16
  %bb16w = zext i16 %bb16 to i64
  %eb16s = lshr i64 %bb16w, 7
  %eb16 = and i64 %eb16s, 255
  %mb16 = and i64 %bb16w, 127
  br label %kc
  ; the type's exponent field, its fraction, its implicit bit, its bias plus its fraction's width, the
  ; subnormals' exponent and its precision
kc:
  %ex = phi i64 [ %e64, %k64 ], [ %e32, %k32 ], [ %e16, %k16 ], [ %eb16, %kb16 ]
  %mn = phi i64 [ %m64, %k64 ], [ %m32, %k32 ], [ %m16, %k16 ], [ %mb16, %kb16 ]
  %impl = phi i64 [ 4503599627370496, %k64 ], [ 8388608, %k32 ], [ 1024, %k16 ], [ 128, %kb16 ]
  %off = phi i64 [ 1075, %k64 ], [ 150, %k32 ], [ 25, %k16 ], [ 134, %kb16 ]
  %qmin = phi i32 [ -1074, %k64 ], [ -149, %k32 ], [ -24, %k16 ], [ -133, %kb16 ]
  %prec = phi i32 [ 53, %k64 ], [ 24, %k32 ], [ 11, %k16 ], [ 8, %kb16 ]
  %sub = icmp eq i64 %ex, 0
  %cn = or i64 %mn, %impl
  %c = select i1 %sub, i64 %mn, i64 %cn
  %ex1 = select i1 %sub, i64 1, i64 %ex
  %q64 = sub i64 %ex1, %off
  %q = trunc i64 %q64 to i32
  %r = call { i64, i32, i1 } @__olang_shortest(i64 %c, i32 %q, i32 %prec, i32 %qmin)
  %ok = extractvalue { i64, i32, i1 } %r, 2
  br i1 %ok, label %strip, label %tries
strip:
  %f0 = extractvalue { i64, i32, i1 } %r, 0
  %e0 = extractvalue { i64, i32, i1 } %r, 1
  br label %sloop
sloop:
  %f = phi i64 [ %f0, %strip ], [ %fq, %sdiv ]
  %e = phi i32 [ %e0, %strip ], [ %e1, %sdiv ]
  %fq = udiv i64 %f, 10
  %fr = mul i64 %fq, 10
  %zr = icmp eq i64 %fr, %f
  br i1 %zr, label %sdiv, label %digits
sdiv:
  %e1 = add i32 %e, 1
  br label %sloop
  ; d holds the n digits; x is the decimal exponent of the first
digits:
  %n64 = call i64 @__olang_fmt_u64(ptr %d, i64 %f)
  %n = trunc i64 %n64 to i32
  %nm1 = sub i32 %n, 1
  %x = add i32 %e, %nm1
  %xlo = icmp slt i32 %x, -4
  %xhi = icmp sge i32 %x, 17
  %sci = or i1 %xlo, %xhi
  br i1 %sci, label %wsci, label %fixed
wsci:
  %o1 = getelementptr i8, ptr %o, i64 %negi
  %d0 = load i8, ptr %d
  store i8 %d0, ptr %o1
  %w1 = add i64 %negi, 1
  %many = icmp sgt i32 %n, 1
  br i1 %many, label %sfrac, label %sexp
sfrac:
  %o2 = getelementptr i8, ptr %o, i64 %w1
  store i8 46, ptr %o2
  %w2 = add i64 %w1, 1
  %o3 = getelementptr i8, ptr %o, i64 %w2
  %d1 = getelementptr i8, ptr %d, i64 1
  %nm164 = zext i32 %nm1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr %o3, ptr %d1, i64 %nm164, i1 false)
  %w3 = add i64 %w2, %nm164
  br label %sexp
sexp:
  %ws = phi i64 [ %w1, %wsci ], [ %w3, %sfrac ]
  %oe = getelementptr i8, ptr %o, i64 %ws
  store i8 101, ptr %oe
  %xneg = icmp slt i32 %x, 0
  %sgn = select i1 %xneg, i8 45, i8 43
  %ws1 = add i64 %ws, 1
  %osg = getelementptr i8, ptr %o, i64 %ws1
  store i8 %sgn, ptr %osg
  %ws2 = add i64 %ws, 2
  %xn = sub i32 0, %x
  %ax = select i1 %xneg, i32 %xn, i32 %x
  %ax64 = zext i32 %ax to i64
  %small = icmp ult i32 %ax, 10
  br i1 %small, label %epad, label %enum
epad:
  %oz = getelementptr i8, ptr %o, i64 %ws2
  store i8 48, ptr %oz
  %ws3 = add i64 %ws2, 1
  br label %enum
enum:
  %wx = phi i64 [ %ws2, %sexp ], [ %ws3, %epad ]
  %ox = getelementptr i8, ptr %o, i64 %wx
  %nx = call i64 @__olang_fmt_u64(ptr %ox, i64 %ax64)
  %wend1 = add i64 %wx, %nx
  br label %copy
fixed:
  %pad = icmp sge i32 %x, %nm1
  br i1 %pad, label %wpad, label %notpad
  ; the digits, then x + 1 - n zeros
wpad:
  %op = getelementptr i8, ptr %o, i64 %negi
  call void @llvm.memcpy.p0.p0.i64(ptr %op, ptr %d, i64 %n64, i1 false)
  %wp = add i64 %negi, %n64
  %zc = sub i32 %x, %nm1
  %zc64 = zext i32 %zc to i64
  %oz2 = getelementptr i8, ptr %o, i64 %wp
  call void @llvm.memset.p0.i64(ptr %oz2, i8 48, i64 %zc64, i1 false)
  %wend2 = add i64 %wp, %zc64
  br label %copy
notpad:
  %pos = icmp sge i32 %x, 0
  br i1 %pos, label %wmid, label %wsmall
  ; the first x + 1 digits, a point, the rest
wmid:
  %x1 = add i32 %x, 1
  %x164 = zext i32 %x1 to i64
  %om = getelementptr i8, ptr %o, i64 %negi
  call void @llvm.memcpy.p0.p0.i64(ptr %om, ptr %d, i64 %x164, i1 false)
  %wm = add i64 %negi, %x164
  %odot = getelementptr i8, ptr %o, i64 %wm
  store i8 46, ptr %odot
  %wm1 = add i64 %wm, 1
  %rest = sub i64 %n64, %x164
  %drest = getelementptr i8, ptr %d, i64 %x164
  %om2 = getelementptr i8, ptr %o, i64 %wm1
  call void @llvm.memcpy.p0.p0.i64(ptr %om2, ptr %drest, i64 %rest, i1 false)
  %wend3 = add i64 %wm1, %rest
  br label %copy
  ; "0.", then -x - 1 zeros, then the digits
wsmall:
  %os = getelementptr i8, ptr %o, i64 %negi
  store i8 48, ptr %os
  %wsa = add i64 %negi, 1
  %osd = getelementptr i8, ptr %o, i64 %wsa
  store i8 46, ptr %osd
  %wsb = add i64 %negi, 2
  %zs = sub i32 -1, %x
  %zs64 = zext i32 %zs to i64
  %osz = getelementptr i8, ptr %o, i64 %wsb
  call void @llvm.memset.p0.i64(ptr %osz, i8 48, i64 %zs64, i1 false)
  %wsc = add i64 %wsb, %zs64
  %osdg = getelementptr i8, ptr %o, i64 %wsc
  call void @llvm.memcpy.p0.p0.i64(ptr %osdg, ptr %d, i64 %n64, i1 false)
  %wend4 = add i64 %wsc, %n64
  br label %copy
copy:
  %len = phi i64 [ %zlen, %zero ], [ %wend1, %enum ], [ %wend2, %wpad ], [ %wend3, %wmid ], [ %wend4, %wsmall ]
  %hasbuf = icmp ne ptr %buf, null
  %hascap = icmp ne i64 %cap, 0
  %wr = and i1 %hasbuf, %hascap
  br i1 %wr, label %write, label %done
write:
  %capm1 = sub i64 %cap, 1
  %fits = icmp ult i64 %len, %cap
  %cnt = select i1 %fits, i64 %len, i64 %capm1
  call void @llvm.memcpy.p0.p0.i64(ptr %buf, ptr %o, i64 %cnt, i1 false)
  %nul = getelementptr i8, ptr %buf, i64 %cnt
  store i8 0, ptr %nul
  br label %done
done:
  ret i64 %len
}

; T36: the scope and chunk headers' own families - the same nodes as every module's (emitTbaaTypeTree), so an element
; store, a number's or a reference's, never aliases a header access: a loop body's scope that allocates nothing then
; folds away whole, its header kept in registers, even where the body calls a method taking a hidden scope argument
!20 = !{!"olang"}
!49 = !{!"scopehdr", !20, i64 0}
!50 = !{!"chunkhdr", !20, i64 0}
!59 = !{!49, !49, i64 0}
!60 = !{!50, !50, i64 0}
