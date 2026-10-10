/* the runtime: the LLVM IR every object carries beside the code generated for its module - the arena allocator and
 * its chunk pool (O2, O8b), the worker cache behind spawn and join (P1e), the checks' failure paths and the test
 * unwinding (S18, P1d), text rendering (E11a), and what std reaches through "extern fn": the process, the file system
 * and processes (X6), a call on a stack of its own and crash messages (S1, S2), and a dynamic call over libffi (S3).
 * Text only: every definition is linkonce_odr (or a declaration), so the linker keeps one copy however many objects
 * carry it. codegen.c decides which parts an object gets. */
#define _GNU_SOURCE
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <unistd.h>
#include <stddef.h>
#include <dirent.h>
#include <errno.h>
#include <spawn.h>
#include <setjmp.h>
#include <signal.h>
#include <pthread.h>
#include <dlfcn.h>
#include <ffi.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <ucontext.h>
#include "util.h"
#include "comptime.h"
#include "runtime.h"

static void emitScopeRuntime(FILE* out, bool san);
static void emitScopeSanRuntime(FILE* out, const char* arch);
static void emitOsRuntime(FILE* out, const char* arch);
static void emitStackRuntime(FILE* out, const char* arch, bool san);

/* runtime support, always emitted (harmless if unused): assert()'s failure path can either longjmp back
 * to a test harness's recovery point (when @__olang_jmp_target is set) or hard-abort (outside test mode,
 * where it's always null). The jmp_buf is sized by this compiler's own C library, since a test build is for this
 * machine (B12a).
 * P9: the target is thread_local, so it is null on every task thread and a failing assert there aborts
 * rather than longjmping. A recovery point belongs to the stack that set it up, and a longjmp from a task
 * would restore the SPAWNER's stack pointer onto the task's thread while the spawner itself is still
 * parked in pthread_join on that very stack - two threads on one stack, which happened to appear to work.
 * There is nowhere on a task thread to recover to, for exactly the reason P4 gives for errors. */
void emitRuntimeDecls(FILE* out, const char* arch, bool scopeSan) {
    fputs(
        "declare i32 @printf(ptr, ...)\n"
        "declare i32 @fputs(ptr, ptr)\n"
        "declare i32 @fflush(ptr)\n"
        "declare i32 @snprintf(ptr, i64, ptr, ...)\n"
        "declare double @strtod(ptr, ptr)\n"
        "declare i64 @strtol(ptr, ptr, i32)\n"
        "declare void @abort() noreturn\n"
        "declare void @exit(i32) noreturn\n"
        "declare ptr @malloc(i64)\n"
        "declare ptr @aligned_alloc(i64, i64)\n"
        "declare void @free(ptr)\n"
        "declare ptr @mmap(ptr, i64, i32, i32, i32, i64)\n"
        "declare i32 @munmap(ptr, i64)\n"
        "declare void @llvm.memset.p0.i64(ptr, i8, i64, i1)\n"
        "declare i64 @llvm.ctlz.i64(i64, i1)\n"
        "declare i128 @llvm.cttz.i128(i128, i1)\n"
        //O8b: the chunk pool's budget, an eighth of the machine's memory
        "declare i64 @sysconf(i32)\n"
        "declare double @llvm.arithmetic.fence.f64(double)\n", out);
    //X8: the exact functions of the C math library, as LLVM's intrinsics (cgExternFuncCall)
    fputs("declare double @llvm.sqrt.f64(double)\n"
        "declare float @llvm.sqrt.f32(float)\n"
        "declare double @llvm.fma.f64(double, double, double)\n"
        "declare float @llvm.fma.f32(float, float, float)\n"
        "declare double @llvm.floor.f64(double)\n"
        "declare float @llvm.floor.f32(float)\n"
        "declare double @llvm.ceil.f64(double)\n"
        "declare float @llvm.ceil.f32(float)\n"
        "declare double @llvm.trunc.f64(double)\n"
        "declare float @llvm.trunc.f32(float)\n"
        "declare double @llvm.round.f64(double)\n"
        "declare float @llvm.round.f32(float)\n"
        "declare double @llvm.roundeven.f64(double)\n"
        "declare float @llvm.roundeven.f32(float)\n"
        "declare double @llvm.fabs.f64(double)\n"
        "declare float @llvm.fabs.f32(float)\n"
        "declare double @llvm.copysign.f64(double, double)\n"
        "declare float @llvm.copysign.f32(float, float)\n"
        "declare i32 @pthread_create(ptr, ptr, ptr, ptr)\n"
        "declare i32 @pthread_detach(i64)\n"
        //no pthread_mutex_init/pthread_cond_init here on purpose: a program may declare either as an
        //"extern fn" of its own (chan.olang does, with an i64 attr argument where this would want a
        //ptr), and two declares of one symbol with different signatures is invalid IR. The worker's pair
        //is zeroed instead, which IS the initialized state - glibc's PTHREAD_MUTEX_INITIALIZER and
        //PTHREAD_COND_INITIALIZER are both all-zero. The same glibc dependency chan.olang already carries.
        //The four below are declared identically by any extern that names them, so they never clash.
        "declare i32 @pthread_mutex_lock(ptr)\n"
        "declare i32 @pthread_mutex_unlock(ptr)\n"
        "declare i32 @pthread_cond_wait(ptr, ptr)\n"
        "declare i32 @pthread_cond_broadcast(ptr)\n"
        "declare i32 @setjmp(ptr) returns_twice\n"
        "@stderr = external global ptr\n"
        "@stdout = external global ptr\n"
        "declare i64 @fwrite(ptr, i64, i64, ptr)\n"
        "declare i32 @fputc(i32, ptr)\n"
        "declare void @longjmp(ptr, i32) noreturn\n"
        "\n"
        //initialexec, not the default general-dynamic: LLVM's default lowers every access to a
        //"call __tls_get_addr@PLT", which put a PLT call in the middle of the allocator's hot loop. The
        //initial-exec model is a direct %fs-relative load instead, and costs nothing here because these
        //are only ever linked into an executable, never dlopen'd.
        "@__olang_jmp_target = linkonce_odr thread_local(initialexec) global ptr null\n"
        //S18b/P1d: the chain of scopes currently open on THIS thread, innermost first, spanning frames.
        //thread_local for the same reason the jump target is - a scope belongs to one thread.
        "@__olang_unwind_top = linkonce_odr thread_local(initialexec) global ptr null\n"
        //where that chain stood when the running test's setjmp was taken, so a longjmp knows how far to
        //unwind. Only ever set on a test thread, since that is the only thread a longjmp happens on (P6).
        "@__olang_unwind_mark = linkonce_odr thread_local(initialexec) global ptr null\n"
        //each check names what actually failed - they all used to print "assertion failed", including the
        //two that are not assertions. NUL-terminated, which the old one was not: it was exactly 17 bytes
        //for 16 characters plus a newline, so fputs/printf read past the end of the array looking for one.
        "@__olang_msg_oom = linkonce_odr unnamed_addr constant [15 x i8] c\"out of memory\\0A\\00\"\n"
        "@__olang_msg_spawn = linkonce_odr unnamed_addr constant [22 x i8] c\"could not start task\\0A\\00\"\n"
        "@__olang_msg_stack = linkonce_odr unnamed_addr constant [42 x i8] c\"could not start a thread with that stack\\0A\\00\"\n"
        "\n"
        //S16a: "done" and "fail" end the innermost thing that can end - the current test if one is
        //running, the process otherwise. status 0 is done, 1 is fail; under a test they become setjmp
        //values 2 (passed) and 1 (failed), which is the same channel a failed check uses for the latter.
        "define linkonce_odr void @__olang_end(i32 %status) {\n"
        "entry:\n"
        "  %etgt = load ptr, ptr @__olang_jmp_target\n"
        "  %enull = icmp eq ptr %etgt, null\n"
        "  br i1 %enull, label %process, label %intest\n"
        "process:\n"
        "  call void @exit(i32 %status)\n"
        "  unreachable\n"
        "intest:\n"
        "  %isok = icmp eq i32 %status, 0\n"
        "  %jv = select i1 %isok, i32 2, i32 1\n"
        //"done"/"fail" leave a test the same way a failed check does, so they unwind the same way
        "  %emk = load ptr, ptr @__olang_unwind_mark\n"
        "  call void @__olang_unwind_to(ptr %emk)\n"
        "  call void @longjmp(ptr %etgt, i32 %jv)\n"
        "  unreachable\n"
        "}\n\n"
        //a runtime check the language guarantees has failed: a failed assert, an out-of-range slice bound,
        //an array length out of range. Distinct from "fail", which is the program's own orderly decision -
        //this one aborts, so it leaves a core dump and skips atexit, which is what you want for a broken
        //invariant. Under a test it is recoverable, exactly as S18 says.
        "define linkonce_odr void @__olang_check_failed(ptr %msg) {\n"
        "entry:\n"
        "  %stream = call ptr @__olang_check_stream()\n"
        "  call i32 @fputs(ptr %msg, ptr %stream)\n"
        "  call void @__olang_check_end()\n"
        "  unreachable\n"
        "}\n\n"
        , out);
    fputs(
        //S18a: "assert cond, message" - its location's prefix, then the program's own text and a line end
        "define linkonce_odr void @__olang_check_failed_text(ptr %where, { i64, ptr } %text) {\n"
        "entry:\n"
        "  %stream = call ptr @__olang_check_stream()\n"
        "  call i32 @fputs(ptr %where, ptr %stream)\n"
        "  %len = extractvalue { i64, ptr } %text, 0\n"
        "  %data = extractvalue { i64, ptr } %text, 1\n"
        "  call i64 @fwrite(ptr %data, i64 1, i64 %len, ptr %stream)\n"
        "  call i32 @fputc(i32 10, ptr %stream)\n"
        "  call void @__olang_check_end()\n"
        "  unreachable\n"
        "}\n\n"
        //where a failed check says what failed: stderr outside a test - not printf: stdout is block-buffered whenever
        //it is not a terminal, so abort() discarded the message exactly when the output was being captured, and the
        //unhandled-error path writes there too - and stdout inside one, beside the "FAIL - " line the harness prints
        "define linkonce_odr ptr @__olang_check_stream() {\n"
        "entry:\n"
        "  %tgt = load ptr, ptr @__olang_jmp_target\n"
        "  %isnull = icmp eq ptr %tgt, null\n"
        "  %errs = load ptr, ptr @stderr\n"
        "  %outs = load ptr, ptr @stdout\n"
        "  %stream = select i1 %isnull, ptr %errs, ptr %outs\n"
        "  ret ptr %stream\n"
        "}\n\n"
        "define linkonce_odr void @__olang_check_end() {\n"
        "entry:\n"
        "  %tgt = load ptr, ptr @__olang_jmp_target\n"
        "  %isnull = icmp eq ptr %tgt, null\n"
        "  br i1 %isnull, label %hard, label %soft\n"
        "hard:\n"
        "  call void @abort()\n"
        "  unreachable\n"
        "soft:\n"
        //S18b/P1d: unwind BEFORE the jump, not after. A close emitted at the landing block is provably a
        //no-op on the only CFG edge LLVM can see into it (the one from before the setjmp, where the
        //scopes are still zeroed), so it gets deleted at -O3 - correct reasoning about a CFG that lies,
        //since longjmp's edge is not modelled. Here the frames are all still live and the chain is real.
        "  %mk = load ptr, ptr @__olang_unwind_mark\n"
        "  call void @__olang_unwind_to(ptr %mk)\n"
        "  call void @longjmp(ptr %tgt, i32 1)\n"
        "  unreachable\n"
        "}\n\n"

        //P1c: "spawn" guarantees the call runs, so a thread the OS declines to create is a broken
        //guarantee, not a condition to report - and pthread_create's result used to be discarded
        //entirely. The thread-id slot is pre-zeroed, so a failure left 0 there, the work silently never
        //happened, and __olang_join_tasks then handed 0 to pthread_join, which dereferences it. Running
        //the call inline instead would look like graceful degradation and is not: two tasks that talk to
        //each other through a channel deadlock the moment one of them runs to completion before the other
        //starts. The cost is one compare per spawn, against ~51us to create the thread.
        "define linkonce_odr void @__olang_alloc_check(ptr %p) {\n"
        "entry:\n"
        "  %ok = icmp ne ptr %p, null\n"
        "  br i1 %ok, label %done, label %bad\n"
        "bad:\n"
        "  call void @__olang_check_failed(ptr @__olang_msg_oom)\n"
        "  br label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        "define linkonce_odr void @__olang_task_started(i32 %rc) {\n"
        "entry:\n"
        "  %ok = icmp eq i32 %rc, 0\n"
        "  br i1 %ok, label %done, label %bad\n"
        "bad:\n"
        "  call void @__olang_check_failed(ptr @__olang_msg_spawn)\n"
        "  br label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n", out);
    emitScopeRuntime(out, scopeSan);
    emitOsRuntime(out, arch);
    emitStackRuntime(out, arch, scopeSan);
    if (scopeSan) emitScopeSanRuntime(out, arch);
}

/* the real backing for every scope (O2): a growable, chunked bump allocator. A chunk is a 64-byte header followed by
 * cap bytes of data; a scope is a chunk-list head, lazily null until first use. Allocating only ever bumps a cursor or
 * links on one more chunk - nothing is ever freed individually. Closing a scope gives its chunks to this thread's
 * pool (O8b), where the next scope needing one takes it without asking the system again.
 *
 * The pool is a set of size classes, so any chunk big enough is found, not only the one on top. It used to be one
 * list taken from its head: a closing scope gives its chunks back newest first, so a scope that took a large chunk and
 * then a smaller one left the large one under the small one - the next call found the small one at the head, mapped
 * another large one, and the old one was never taken again (std/linalg's Gemm lost a B panel per product that way). A
 * class holds chunks of one size, four classes per power of two from 4KB up (4096, 5120, 6144, 7168, 8192, 10240, ...),
 * and a new chunk is made at its class's size, so every chunk of a class holds whatever the class is asked for. A
 * request takes the newest chunk of the smallest non-empty class that holds it, up to two powers of two above its own
 * - one count of trailing zeros, over a bit per class saying which are non-empty - and asks the system only when
 * there is none. Further up is left for a request its size: a small one would pin a large chunk in a scope that may
 * live long.
 *
 * What the pool keeps is bounded, per thread, by an eighth of the machine's memory: a chunk given back beyond that
 * returns the pool's least recently given back chunks to the system first (munmap, or free for one from
 * aligned_alloc), or goes back itself when it alone is larger. So a phase that needed much memory gives it back once
 * later ones do not use it, and a computation repeated in a loop takes the same chunks every time.
 *
 * A worker whose task has finished (P1e) keeps at most 1MB of its pool while it waits for the next: the rest goes, least
 * recently given back first, into one pool every thread shares - shaped and bounded as a thread's own, behind a lock -
 * which a thread looks in when its own has nothing that fits, before asking the system, taking up to 1MB of the size
 * it found at once. (1MB, or a 64th of a pool's bound where that is less.) A parked worker's pool used to
 * stay its own, up to the per-thread bound, reachable by nothing but the next task to run on it: four tasks of 200MB
 * left 783MB with their parked workers, and the main thread mapped new memory for the same work. The shared pool's lock
 * is taken only on that slow path, and only when a relaxed atomic read says the shared pool holds something; nothing
 * on the paths every allocation and every scope's close take is shared or atomic. */
static void emitScopeRuntime(FILE* out, bool san) {
    fputs(
        //next, used, cap, the length mmap gave it (0 for one from aligned_alloc), whether it is fresh from the system and
        //zero above "used" (__olang_scope_alloc_zeroed), its class, then the pool's: prev (a class is a circular list
        //through next and prev) and the stamp ordering chunks by when they were given back. 64 bytes, so the data area
        //after it is 64-aligned like the chunk itself (O8a)
        "%olang.chunk = type { ptr, i64, i64, i64, i64, i64, ptr, i64 }\n"
        //a pool of chunks (O8b): a list per class, by its newest chunk; bit k of the mask set when class k holds one; what
        //the pool holds, in bytes of whole chunks; the bound on that - an eighth of the machine's memory, read when the
        //pool first reaches it, 0 until then; and a clock, one more for every chunk given to the pool, so a smaller stamp
        //was given back earlier
        "%olang.pool = type { [128 x ptr], i128, i64, i64, i64 }\n"
        "%olang.dtornode = type { ptr, ptr, ptr }\n"
        //P1: one node per task, bump-allocated from the join block's own scope - which is exactly the
        //lifetime the bookkeeping needs, since the join happens before that scope is reclaimed. An alloca
        //would not do: a join block inside a loop would grow the stack by a node per task.
        "%olang.unwind = type { ptr, ptr, ptr }\n" //prev frame's node, this block's scope, its join head
        "%olang.task = type { ptr, i64, ptr }\n"   //next, done flag, merge list
        //P1e: a cached worker thread. It owns the mutex/condvar it parks on, so waiting for one task
        //never blocks another. glibc's PTHREAD_MUTEX_INITIALIZER is all-zero, which is what lets the
        //free-list lock below be a plain zeroinitializer; a worker's own pair is explicitly init'd.
        //state: 0 fresh, 1 has work, 2 finished and waiting to be handed more.
        "%olang.worker = type { ptr, ptr, ptr, i64, ptr, [40 x i8], [48 x i8] }\n"
        "%olang.merge = type { ptr, ptr }\n" //P2: next, a task's stand-in to fold back at the join (null: none)
        //head chunk, head dtor-list node, TAIL chunk (all null if unused), owner, parts, parent. The tail is tracked so a
        //task's stand-in can be spliced into what it stands in for in O(1) (P2) - chunks are PREPENDED, so the tail is
        //whichever chunk this scope allocated first, set once when the list goes from empty to non-empty and never
        //touched again. The owner, parts and parent are P2's, for a scope another thread reaches through a closure:
        //  owner - the thread that builds into this scope itself (@__olang_self's value there); null until the scope is
        //          first reached from another thread, so it is its opener's; @__olang_global_scope for a part of the
        //          program's scope; @__olang_fwd_chunk once a stand-in has been folded and forwards
        //  parts - on a scope with no parent, the PARTS other threads build into it through, one per thread, each a
        //          scope of its own linked here and closed with it; on a part, the next part
        //  parent - what a stand-in stands in for, or the scope a part is part of; null on any other scope
        "%olang.scope = type { ptr, ptr, ptr, ptr, ptr, ptr }\n"
        //P1: a thread's pool is thread_local, so two threads never take from or give to the same one. A scope belongs to
        //exactly one thread, and so do the chunks it takes and gives back, which is what makes a per-thread pool
        //correct rather than merely faster
        "@__olang_pool = linkonce_odr thread_local(initialexec) global %olang.pool zeroinitializer\n"
        //one 4KB chunk kept beside the classes, outside their bookkeeping: what a block scope allocating a little on
        //every pass of a loop takes and gives back, each time
        "@__olang_pool_spare = linkonce_odr thread_local(initialexec) global ptr null\n"
        //O8b/P1e: the pool every thread shares - what a worker gives up as its task finishes, which any thread takes from
        //before it asks the system for more. Guarded by its lock, and bounded as a thread's own is; holds is its byte
        //count where a thread may read it without the lock (atomically, relaxed), so that one finding it empty takes no
        //lock at all - a program that never spawns never takes it
        "@__olang_shared_pool = linkonce_odr global %olang.pool zeroinitializer\n"
        "@__olang_shared_lock = linkonce_odr global [40 x i8] zeroinitializer\n"
        "@__olang_shared_holds = linkonce_odr global i64 0\n"
        //P2: a task's stand-in for a scope, once folded back at the join, FORWARDS to the scope it stood in for - a
        //closure the task made, or was handed, may still hold it. Its head is this chunk, which has no room, so the
        //allocation's fast path is the same as ever and fails on it, and the slow path finds the scope in its tail slot
        "@__olang_fwd_chunk = linkonce_odr global %olang.chunk zeroinitializer\n"
        //O1b: the program's own scope - what a global's initializer allocates into. Never closed, so what
        //it holds lives as long as the program. Its owner word marks it, and every part of it, as the program's
        "@__olang_global_scope = linkonce_odr global %olang.scope { ptr null, ptr null, ptr null, ptr @__olang_global_scope, ptr null, ptr null }\n"
        //O1b/P2: the program's scope as this thread reaches it - the scope itself on the main thread, and on a worker a part
        //of its own, made when the worker starts and kept for every task it runs (never closed, as the program's scope is
        //not) - so no two threads ever bump one at once. A thread RunOnStack makes reaches it as its caller does
        "@__olang_prog_scope = linkonce_odr thread_local(initialexec) global ptr @__olang_global_scope\n"
        //P2: who this thread is, to a scope's owner word - a number no other thread has had (an odd one, so never the
        //address of anything), set as the thread starts; a thread RunOnStack makes is its caller, which waits for it.
        //Not an address of the thread's own: a thread's storage is reused for the next one, which would then take a part
        //made for the one before, or a stand-in it claimed, for its own
        "@__olang_self = linkonce_odr thread_local(initialexec) global ptr null\n"
        "@__olang_thread_next = linkonce_odr global i64 1\n"
        "\n"
        "", out);
    fputs(
        //an empty chunk whose data holds at least size bytes, when the spare will not do (__olang_scope_alloc takes that
        //itself): the newest chunk of the smallest class in this thread's pool that holds size bytes, no more than eight
        //classes (two powers of two) above the request's own, else the same from the shared pool, else a new one of its
        //class's size - mapped from 128KB up, where glibc's malloc itself turns to mmap, and taken from aligned_alloc
        //below. Never inlined, so __olang_scope_alloc stays small enough to inline wherever a scope allocates
        "define linkonce_odr ptr @__olang_new_chunk(i64 %size) noinline {\n"
        "entry:\n", out);
    //-s: a size no chunk can have, read out of storage a closed scope gave back - the length of an array whose
    //descriptor holds the poison (__olang_san_poison) - is said to be that, where "out of memory" would mislead
    if (san) fputs("  call void @__olang_san_check_size(i64 %size)\n", out);
    fputs(
        "  %small = icmp ule i64 %size, 4096\n"
        "  br i1 %small, label %search, label %sized\n"
        //the class of a size s above 4KB: with e the top bit of s - 1 and q the two bits below it plus 4 (4 to 7),
        //the class is 4(e - 11) + q - 7 and holds (q + 1) 2^(e - 2) bytes. 4096 itself is class 0; nothing smaller is
        //made. The last class takes every size beyond it, which is why a chunk taken is still measured
        "sized:\n"
        "  %x = sub i64 %size, 1\n"
        "  %lz = call i64 @llvm.ctlz.i64(i64 %x, i1 true)\n"
        "  %e = sub i64 63, %lz\n"
        "  %sh = sub i64 %e, 2\n"
        "  %q = lshr i64 %x, %sh\n"
        "  %e4 = shl i64 %e, 2\n"
        "  %c0 = add i64 %e4, %q\n"
        "  %c1 = sub i64 %c0, 51\n"
        "  %q1 = add i64 %q, 1\n"
        "  %csz = shl i64 %q1, %sh\n"
        "  %past = icmp ugt i64 %c1, 127\n"
        "  %c = select i1 %past, i64 127, i64 %c1\n"
        "  br label %search\n"
        "search:\n"
        "  %class = phi i64 [ 0, %entry ], [ %c, %sized ]\n"
        "  %classsize = phi i64 [ 4096, %entry ], [ %csz, %sized ]\n"
        "  %own = call ptr @__olang_pool_take(ptr @__olang_pool, i64 %class, i64 %size)\n"
        "  %hasown = icmp ne ptr %own, null\n"
        "  br i1 %hasown, label %take, label %shared\n"
        //the shared pool, locked only when it holds something: read without the lock, a stale answer costs at most a
        //chunk made that could have been taken, or a lock taken for nothing
        "shared:\n"
        "  %held = load atomic i64, ptr @__olang_shared_holds monotonic, align 8\n"
        "  %anyheld = icmp ne i64 %held, 0\n"
        "  br i1 %anyheld, label %lock, label %make\n"
        "lock:\n"
        "  call i32 @pthread_mutex_lock(ptr @__olang_shared_lock)\n"
        "  %shared.c = call ptr @__olang_pool_take(ptr @__olang_shared_pool, i64 %class, i64 %size)\n"
        "  %hasshared = icmp ne ptr %shared.c, null\n"
        "  br i1 %hasshared, label %refill, label %unlock\n"
        "refill:\n"
        "  call void @__olang_shared_refill(ptr %shared.c)\n"
        "  br label %unlock\n"
        "unlock:\n"
        "  call void @__olang_shared_publish()\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_shared_lock)\n"
        "  br i1 %hasshared, label %take, label %make\n"
        "take:\n"
        "  %c.p = phi ptr [ %own, %search ], [ %shared.c, %unlock ]\n"
        "  %usedptr.p = getelementptr %olang.chunk, ptr %c.p, i32 0, i32 1\n"
        "  store i64 0, ptr %usedptr.p\n"
        //it has been used: what it holds is whatever its last scope left there
        "  %freshptr.p = getelementptr %olang.chunk, ptr %c.p, i32 0, i32 4\n"
        "  store i64 0, ptr %freshptr.p\n"
        "  ret ptr %c.p\n"
        "make:\n"
        "  %hdrsize = ptrtoint ptr getelementptr (%olang.chunk, ptr null, i32 1) to i64\n"
        "  %total0 = add i64 %hdrsize, %classsize\n"
        //D13c: a mapped chunk comes zeroed, which __olang_scope_alloc_zeroed relies on to skip clearing it again
        "", out);
    //-s: every chunk is mapped, whatever its size, so that a closed scope's can be protected while it is quarantined
    //(__olang_san_quarantine) - and one the system will not map is taken from aligned_alloc after all, poisoned only
    fputs(san ? "  br label %map\n"
              : "  %huge = icmp uge i64 %classsize, 131072\n"
                "  br i1 %huge, label %map, label %heap\n", out);
    fputs(
        "map:\n"
        "  %mt1 = add i64 %total0, 4095\n"
        "  %mtotal = and i64 %mt1, -4096\n"
        //PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS (Linux)
        "  %m = call ptr @mmap(ptr null, i64 %mtotal, i32 3, i32 34, i32 -1, i64 0)\n"
        "  %mfailed = icmp eq ptr %m, inttoptr (i64 -1 to ptr)\n"
        "  %mchunk = select i1 %mfailed, ptr null, ptr %m\n", out);
    fputs(san ? "  br i1 %mfailed, label %heap, label %got\n" : "  br label %got\n", out);
    fputs(
        "heap:\n"
        //aligned_alloc requires a size that is a multiple of the alignment
        "  %total1 = add i64 %total0, 63\n"
        "  %htotal = and i64 %total1, -64\n"
        "  %h = call ptr @aligned_alloc(i64 64, i64 %htotal)\n"
        "  br label %got\n"
        "got:\n"
        "  %new = phi ptr [ %mchunk, %map ], [ %h, %heap ]\n"
        "  %total = phi i64 [ %mtotal, %map ], [ %htotal, %heap ]\n"
        "  %maplen = phi i64 [ %mtotal, %map ], [ 0, %heap ]\n"
        "  %zeroed = phi i64 [ 1, %map ], [ 0, %heap ]\n"
        //the allocator declining is a broken guarantee, as a thread that will not start is (P1c): reported, never
        //written through - a null chunk used to be filled in as though it were one
        "  call void @__olang_alloc_check(ptr %new)\n"
        "  %usedptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 1\n"
        "  store i64 0, ptr %usedptr.n\n"
        "  %capptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 2\n"
        "  %realcap = sub i64 %total, %hdrsize\n"
        "  store i64 %realcap, ptr %capptr.n\n"
        "  %mapptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 3\n"
        "  store i64 %maplen, ptr %mapptr.n\n"
        "  %freshptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 4\n"
        "  store i64 %zeroed, ptr %freshptr.n\n"
        "  %classptr.n = getelementptr %olang.chunk, ptr %new, i32 0, i32 5\n"
        "  store i64 %class, ptr %classptr.n\n"
        "  ret ptr %new\n"
        "}\n\n"
        "", out);
    fputs(
        //the newest chunk of the smallest class of pool P that holds size bytes, no more than eight classes above class,
        //taken out of P - or null when P has none
        "define linkonce_odr ptr @__olang_pool_take(ptr %P, i64 %class, i64 %size) {\n"
        "entry:\n"
        "  %maskptr = getelementptr %olang.pool, ptr %P, i32 0, i32 1\n"
        "  %mask = load i128, ptr %maskptr\n"
        "  %class128 = zext i64 %class to i128\n"
        "  %above = lshr i128 %mask, %class128\n"
        "  %window = and i128 %above, 511\n"
        "  %none = icmp eq i128 %window, 0\n"
        "  br i1 %none, label %no, label %found\n"
        "found:\n"
        "  %tz = call i128 @llvm.cttz.i128(i128 %window, i1 true)\n"
        "  %tz64 = trunc i128 %tz to i64\n"
        "  %k = add i64 %class, %tz64\n"
        "  %slot = getelementptr %olang.pool, ptr %P, i32 0, i32 0, i64 %k\n"
        "  %c = load ptr, ptr %slot\n"
        "  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2\n"
        "  %cap = load i64, ptr %capptr\n"
        "  %fits = icmp uge i64 %cap, %size\n"
        "  br i1 %fits, label %take, label %no\n"
        "take:\n"
        "  call void @__olang_pool_unlink(ptr %P, ptr %c)\n"
        "  ret ptr %c\n"
        "no:\n"
        "  ret ptr null\n"
        "}\n\n"
        "", out);
    fputs(
        //what a parked worker keeps of its pool, and what a thread takes from the shared pool at once: 1MB, or a 64th of a
        //pool's bound where that is less (a machine of less than 512MB) - read from this thread's own pool, its bound
        //measured here when it has not been yet
        "define linkonce_odr i64 @__olang_pool_batch() {\n"
        "entry:\n"
        "  %limitptr = getelementptr %olang.pool, ptr @__olang_pool, i32 0, i32 3\n"
        "  %limit0 = load i64, ptr %limitptr\n"
        "  %known = icmp ne i64 %limit0, 0\n"
        "  br i1 %known, label %got, label %measure\n"
        "measure:\n"
        "  %measured = call i64 @__olang_pool_measure()\n"
        "  store i64 %measured, ptr %limitptr\n"
        "  br label %got\n"
        "got:\n"
        "  %limit = phi i64 [ %limit0, %entry ], [ %measured, %measure ]\n"
        "  %part = lshr i64 %limit, 6\n"
        "  %less = icmp ult i64 %part, 1048576\n"
        "  %batch = select i1 %less, i64 %part, i64 1048576\n"
        "  ret i64 %batch\n"
        "}\n\n"
        //with the shared pool's lock held, after chunk first was taken from it: more of first's class into this thread's
        //pool, until a batch (__olang_pool_batch, 1MB) has moved with first or the class is empty - so a thread making many
        //chunks of one size takes the lock once a megabyte of them rather than once a chunk
        "define linkonce_odr void @__olang_shared_refill(ptr %first) noinline {\n"
        "entry:\n"
        "  %batch = call i64 @__olang_pool_batch()\n"
        "  %classptr = getelementptr %olang.chunk, ptr %first, i32 0, i32 5\n"
        "  %k = load i64, ptr %classptr\n"
        "  %slot = getelementptr %olang.pool, ptr @__olang_shared_pool, i32 0, i32 0, i64 %k\n"
        "  %capptr0 = getelementptr %olang.chunk, ptr %first, i32 0, i32 2\n"
        "  %cap0 = load i64, ptr %capptr0\n"
        "  %moved0 = add i64 %cap0, 64\n"
        "  br label %next\n"
        "next:\n"
        "  %moved = phi i64 [ %moved0, %entry ], [ %moved2, %move ]\n"
        "  %c = load ptr, ptr %slot\n"
        "  %empty = icmp eq ptr %c, null\n"
        "  %enough = icmp uge i64 %moved, %batch\n"
        "  %stop = or i1 %empty, %enough\n"
        "  br i1 %stop, label %done, label %move\n"
        "move:\n"
        "  call void @__olang_pool_unlink(ptr @__olang_shared_pool, ptr %c)\n"
        "  call void @__olang_pool_keep(ptr @__olang_pool, ptr %c)\n"
        "  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2\n"
        "  %cap = load i64, ptr %capptr\n"
        "  %more = add i64 %cap, 64\n"
        "  %moved2 = add i64 %moved, %more\n"
        "  br label %next\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        //the shared pool's byte count where a thread may read it without the lock; called with the lock held
        "define linkonce_odr void @__olang_shared_publish() {\n"
        "entry:\n"
        "  %bytesptr = getelementptr %olang.pool, ptr @__olang_shared_pool, i32 0, i32 2\n"
        "  %bytes = load i64, ptr %bytesptr\n"
        "  store atomic i64 %bytes, ptr @__olang_shared_holds monotonic, align 8\n"
        "  ret void\n"
        "}\n\n"
        //takes chunk c out of its class's circular list in pool P: the class is emptied when c was all it held, and its
        //newest chunk is the one after c when c was the newest
        "define linkonce_odr void @__olang_pool_unlink(ptr %P, ptr %c) {\n"
        "entry:\n"
        "  %classptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 5\n"
        "  %k = load i64, ptr %classptr\n"
        "  %slot = getelementptr %olang.pool, ptr %P, i32 0, i32 0, i64 %k\n"
        "  %nextptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 0\n"
        "  %next = load ptr, ptr %nextptr\n"
        "  %alone = icmp eq ptr %next, %c\n"
        "  br i1 %alone, label %empty, label %link\n"
        "empty:\n"
        "  store ptr null, ptr %slot\n"
        "  %maskptr = getelementptr %olang.pool, ptr %P, i32 0, i32 1\n"
        "  %mask = load i128, ptr %maskptr\n"
        "  %k128 = zext i64 %k to i128\n"
        "  %bit = shl i128 1, %k128\n"
        "  %keep = xor i128 %bit, -1\n"
        "  %mask2 = and i128 %mask, %keep\n"
        "  store i128 %mask2, ptr %maskptr\n"
        "  br label %count\n"
        "link:\n"
        "  %prevptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 6\n"
        "  %prev = load ptr, ptr %prevptr\n"
        "  %pnextptr = getelementptr %olang.chunk, ptr %prev, i32 0, i32 0\n"
        "  store ptr %next, ptr %pnextptr\n"
        "  %nprevptr = getelementptr %olang.chunk, ptr %next, i32 0, i32 6\n"
        "  store ptr %prev, ptr %nprevptr\n"
        "  %head = load ptr, ptr %slot\n"
        "  %washead = icmp eq ptr %head, %c\n"
        "  %head2 = select i1 %washead, ptr %next, ptr %head\n"
        "  store ptr %head2, ptr %slot\n"
        "  br label %count\n"
        "count:\n"
        "  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2\n"
        "  %cap = load i64, ptr %capptr\n"
        "  %bytesptr = getelementptr %olang.pool, ptr %P, i32 0, i32 2\n"
        "  %bytes = load i64, ptr %bytesptr\n"
        "  %less = sub i64 %bytes, %cap\n"
        "  %hdr = sub i64 %less, 64\n"
        "  store i64 %hdr, ptr %bytesptr\n"
        "  ret void\n"
        "}\n\n"
        //chunk c back to the system it came from: munmap for a mapped one, free for one from aligned_alloc
        "define linkonce_odr void @__olang_chunk_release(ptr %c) {\n"
        "entry:\n"
        "  %mapptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 3\n"
        "  %maplen = load i64, ptr %mapptr\n"
        "  %mapped = icmp ne i64 %maplen, 0\n"
        "  br i1 %mapped, label %unmap, label %release\n"
        "unmap:\n"
        "  %r = call i32 @munmap(ptr %c, i64 %maplen)\n"
        "  ret void\n"
        "release:\n"
        "  call void @free(ptr %c)\n"
        "  ret void\n"
        "}\n\n"
        "", out);
    fputs(
        //O8b: chunk c into pool P, as the newest of its class, stamped by P's clock - with no regard to P's bound
        "define linkonce_odr void @__olang_pool_put(ptr %P, ptr %c) {\n"
        "entry:\n"
        "  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2\n"
        "  %cap = load i64, ptr %capptr\n"
        "  %need = add i64 %cap, 64\n"
        "  %bytesptr = getelementptr %olang.pool, ptr %P, i32 0, i32 2\n"
        "  %bytes = load i64, ptr %bytesptr\n"
        "  %after = add i64 %bytes, %need\n"
        "  store i64 %after, ptr %bytesptr\n"
        "  %clockptr = getelementptr %olang.pool, ptr %P, i32 0, i32 4\n"
        "  %clock = load i64, ptr %clockptr\n"
        "  %tick = add i64 %clock, 1\n"
        "  store i64 %tick, ptr %clockptr\n"
        "  %cstampptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 7\n"
        "  store i64 %tick, ptr %cstampptr\n"
        "  %classptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 5\n"
        "  %class = load i64, ptr %classptr\n"
        "  %cslot = getelementptr %olang.pool, ptr %P, i32 0, i32 0, i64 %class\n"
        "  %head = load ptr, ptr %cslot\n"
        "  store ptr %c, ptr %cslot\n"
        "  %cnextptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 0\n"
        "  %cprevptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 6\n"
        "  %first = icmp eq ptr %head, null\n"
        "  br i1 %first, label %alone, label %link\n"
        "alone:\n"
        "  store ptr %c, ptr %cnextptr\n"
        "  store ptr %c, ptr %cprevptr\n"
        "  %maskptr = getelementptr %olang.pool, ptr %P, i32 0, i32 1\n"
        "  %pmask = load i128, ptr %maskptr\n"
        "  %class128 = zext i64 %class to i128\n"
        "  %bit = shl i128 1, %class128\n"
        "  %pmask2 = or i128 %pmask, %bit\n"
        "  store i128 %pmask2, ptr %maskptr\n"
        "  ret void\n"
        "link:\n"
        "  %hprevptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 6\n"
        "  %tail.l = load ptr, ptr %hprevptr\n"
        "  store ptr %head, ptr %cnextptr\n"
        "  store ptr %tail.l, ptr %cprevptr\n"
        "  %tnextptr = getelementptr %olang.chunk, ptr %tail.l, i32 0, i32 0\n"
        "  store ptr %c, ptr %tnextptr\n"
        "  store ptr %c, ptr %hprevptr\n"
        "  ret void\n"
        "}\n\n"
        //O8b: chunk c into pool P - once there is room for it under P's bound, which __olang_pool_make_room makes out of
        //line, or c itself goes back to the system when it alone is larger
        "define linkonce_odr void @__olang_pool_keep(ptr %P, ptr %c) {\n"
        "entry:\n"
        "  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2\n"
        "  %cap = load i64, ptr %capptr\n"
        "  %need = add i64 %cap, 64\n"
        "  %bytesptr = getelementptr %olang.pool, ptr %P, i32 0, i32 2\n"
        "  %bytes = load i64, ptr %bytesptr\n"
        "  %after = add i64 %bytes, %need\n"
        "  %limitptr = getelementptr %olang.pool, ptr %P, i32 0, i32 3\n"
        "  %limit = load i64, ptr %limitptr\n"
        "  %over = icmp ugt i64 %after, %limit\n"
        "  br i1 %over, label %bound, label %put\n"
        "bound:\n"
        "  %room = call i1 @__olang_pool_make_room(ptr %P, i64 %need)\n"
        "  br i1 %room, label %put, label %drop\n"
        "drop:\n"
        "  call void @__olang_chunk_release(ptr %c)\n"
        "  ret void\n"
        "put:\n"
        "  call void @__olang_pool_put(ptr %P, ptr %c)\n"
        "  ret void\n"
        "}\n\n"
        //a chunk a closing scope gives back, into this thread's pool: a 4KB one becomes the spare, the newest of its class,
        //and the one it replaces goes into the class
        "define linkonce_odr void @__olang_pool_give(ptr %given) {\n"
        "entry:\n"
        "  %classptr0 = getelementptr %olang.chunk, ptr %given, i32 0, i32 5\n"
        "  %class0 = load i64, ptr %classptr0\n"
        "  %small = icmp eq i64 %class0, 0\n"
        "  br i1 %small, label %spare, label %pool\n"
        "spare:\n"
        "  %s = load ptr, ptr @__olang_pool_spare\n"
        "  store ptr %given, ptr @__olang_pool_spare\n"
        "  %free = icmp eq ptr %s, null\n"
        "  br i1 %free, label %done, label %pool\n"
        "done:\n"
        "  ret void\n"
        "pool:\n"
        "  %c = phi ptr [ %given, %entry ], [ %s, %spare ]\n"
        "  call void @__olang_pool_keep(ptr @__olang_pool, ptr %c)\n"
        "  ret void\n"
        "}\n\n"
        "", out);
    fputs(
        //each chunk of a closed scope's list to the pool - a chunk's next is read before it is given, since giving relinks
        //it
        "define linkonce_odr void @__olang_pool_give_list(ptr %head) noinline {\n"
        "entry:\n"
        "  br label %each\n"
        "each:\n"
        "  %cur = phi ptr [ %head, %entry ], [ %next, %each ]\n"
        "  %nextptr = getelementptr %olang.chunk, ptr %cur, i32 0, i32 0\n"
        "  %next = load ptr, ptr %nextptr\n"
        "  call void @__olang_pool_give(ptr %cur)\n"
        "  %atend = icmp eq ptr %next, null\n"
        "  br i1 %atend, label %done, label %each\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        "", out);
    fputs(
        //the least recently given chunk of pool P, null when P holds none: the oldest of a class is the one before its
        //newest, and the oldest of all the oldest of some class, so a pass over the non-empty classes finds it
        "define linkonce_odr ptr @__olang_pool_oldest(ptr %P) {\n"
        "entry:\n"
        "  %maskptr = getelementptr %olang.pool, ptr %P, i32 0, i32 1\n"
        "  %mask = load i128, ptr %maskptr\n"
        "  %anyleft = icmp ne i128 %mask, 0\n"
        "  br i1 %anyleft, label %scan, label %none\n"
        "scan:\n"
        "  %m = phi i128 [ %mask, %entry ], [ %mrest, %scan ]\n"
        "  %best = phi ptr [ null, %entry ], [ %best2, %scan ]\n"
        "  %beststamp = phi i64 [ -1, %entry ], [ %beststamp2, %scan ]\n"
        "  %tz = call i128 @llvm.cttz.i128(i128 %m, i1 true)\n"
        "  %k = trunc i128 %tz to i64\n"
        "  %slot = getelementptr %olang.pool, ptr %P, i32 0, i32 0, i64 %k\n"
        "  %newest = load ptr, ptr %slot\n"
        "  %tailptr = getelementptr %olang.chunk, ptr %newest, i32 0, i32 6\n"
        "  %tail = load ptr, ptr %tailptr\n"
        "  %stampptr = getelementptr %olang.chunk, ptr %tail, i32 0, i32 7\n"
        "  %stamp = load i64, ptr %stampptr\n"
        "  %older = icmp ult i64 %stamp, %beststamp\n"
        "  %best2 = select i1 %older, ptr %tail, ptr %best\n"
        "  %beststamp2 = select i1 %older, i64 %stamp, i64 %beststamp\n"
        "  %m1 = sub i128 %m, 1\n"
        "  %mrest = and i128 %m, %m1\n"
        "  %more = icmp ne i128 %mrest, 0\n"
        "  br i1 %more, label %scan, label %found\n"
        "found:\n"
        "  ret ptr %best2\n"
        "none:\n"
        "  ret ptr null\n"
        "}\n\n"
        //makes room in pool P for need more bytes, false when need alone is beyond the bound: gives the least recently
        //given back chunks to the system until the rest and need fit. The bound is measured here the first time it is
        //reached (0 until then)
        "define linkonce_odr i1 @__olang_pool_make_room(ptr %P, i64 %need) noinline {\n"
        "entry:\n"
        "  %bytesptr = getelementptr %olang.pool, ptr %P, i32 0, i32 2\n"
        "  %limitptr = getelementptr %olang.pool, ptr %P, i32 0, i32 3\n"
        "  br label %room\n"
        "room:\n"
        "  %bytes = load i64, ptr %bytesptr\n"
        "  %after = add i64 %bytes, %need\n"
        "  %limit = load i64, ptr %limitptr\n"
        "  %over = icmp ugt i64 %after, %limit\n"
        "  br i1 %over, label %bound, label %yes\n"
        "bound:\n"
        "  %known = icmp ne i64 %limit, 0\n"
        "  br i1 %known, label %evict, label %measure\n"
        "measure:\n"
        "  %measured = call i64 @__olang_pool_measure()\n"
        "  store i64 %measured, ptr %limitptr\n"
        "  br label %room\n"
        "evict:\n"
        "  %toobig = icmp ugt i64 %need, %limit\n"
        "  br i1 %toobig, label %no, label %oldest\n"
        "oldest:\n"
        "  %victim = call ptr @__olang_pool_oldest(ptr %P)\n"
        "  %gone = icmp eq ptr %victim, null\n"
        "  br i1 %gone, label %no, label %release\n"
        "release:\n"
        "  call void @__olang_pool_unlink(ptr %P, ptr %victim)\n"
        "  call void @__olang_chunk_release(ptr %victim)\n"
        "  br label %room\n"
        "yes:\n"
        "  ret i1 1\n"
        "no:\n"
        "  ret i1 0\n"
        "}\n\n"
        //P1e/O8b: a worker whose task has finished moves its pool into the shared one, least recently given back first,
        //until it keeps at most a batch (__olang_pool_batch, 1MB): what it gives up then serves any thread, where a parked
        //worker's pool would serve only the task that runs on it next. Nothing is locked when it keeps no more than that
        //already - the common case, a task that allocated little. The spare stays: it is outside the count
        "define linkonce_odr void @__olang_pool_share() noinline {\n"
        "entry:\n"
        "  %keep = call i64 @__olang_pool_batch()\n"
        "  %bytesptr = getelementptr %olang.pool, ptr @__olang_pool, i32 0, i32 2\n"
        "  %bytes0 = load i64, ptr %bytesptr\n"
        "  %over = icmp ugt i64 %bytes0, %keep\n"
        "  br i1 %over, label %lock, label %done\n"
        "lock:\n"
        "  call i32 @pthread_mutex_lock(ptr @__olang_shared_lock)\n"
        "  br label %move\n"
        //the pool holds more than keep, so it holds a chunk
        "move:\n"
        "  %c = call ptr @__olang_pool_oldest(ptr @__olang_pool)\n"
        "  call void @__olang_pool_unlink(ptr @__olang_pool, ptr %c)\n"
        "  call void @__olang_pool_keep(ptr @__olang_shared_pool, ptr %c)\n"
        "  %bytes = load i64, ptr %bytesptr\n"
        "  %more = icmp ugt i64 %bytes, %keep\n"
        "  br i1 %more, label %move, label %unlock\n"
        "unlock:\n"
        "  call void @__olang_shared_publish()\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_shared_lock)\n"
        "  br label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        "", out);
    //the pool's bound: an eighth of the machine's memory, from sysconf, or 1GB where it will not say. The names are the
    //C library's own constants, read from the compiler's headers - sound while the target is the host, as the rest of
    //the runtime's use of them (X6)
    fprintf(out,
        "define linkonce_odr i64 @__olang_pool_measure() {\n"
        "entry:\n"
        "  %%pages = call i64 @sysconf(i32 %d)\n"
        "  %%psize = call i64 @sysconf(i32 %d)\n"
        "  %%pagesok = icmp sgt i64 %%pages, 0\n"
        "  %%psizeok = icmp sgt i64 %%psize, 0\n"
        "  %%ok = and i1 %%pagesok, %%psizeok\n"
        "  %%ram = mul i64 %%pages, %%psize\n"
        "  %%eighth = lshr i64 %%ram, 3\n"
        "  %%limit = select i1 %%ok, i64 %%eighth, i64 1073741824\n"
        "  ret i64 %%limit\n"
        "}\n\n", (int)_SC_PHYS_PAGES, (int)_SC_PAGESIZE);
    fputs(
        //O8a: an array's storage, or anything else that is not one aggregate - aligned by its own size, so a large array
        //is ready for the widest vector loads: 8 bytes below 32, 32 below 64, and 64 from 64 up. Two selects, no
        //branch; with the size known while compiling, as it mostly is, they fold away
        "define linkonce_odr noalias ptr @__olang_scope_alloc(ptr %scope, i64 %rawsize) alwaysinline {\n"
        "entry:\n"
        "  %sizeup = add i64 %rawsize, 7\n"
        "  %size8 = and i64 %sizeup, -8\n"
        "  %a32 = icmp uge i64 %size8, 32\n"
        "  %a64 = icmp uge i64 %size8, 64\n"
        "  %alnA = select i1 %a32, i64 32, i64 8\n"
        "  %aln = select i1 %a64, i64 64, i64 %alnA\n"
        "  %p = call ptr @__olang_scope_alloc_a(ptr %scope, i64 %rawsize, i64 %aln)\n"
        "  ret ptr %p\n"
        "}\n\n"
        //bump-allocates size bytes from scope, aligned to aln (a power of two, at least 8), growing (linking on one more
        //chunk) if the current one doesn't have room. O8a: a struct's or an enum's storage takes its own alignment
        //(cgAllocAlign) - the size class an array's takes would leave a 40-byte struct 64 bytes apart from the next
        "define linkonce_odr noalias ptr @__olang_scope_alloc_a(ptr %scope, i64 %rawsize, i64 %aln) {\n"
        "entry:\n"
        //every allocation is rounded up to 8 bytes so the NEXT one starts 8-aligned. The bump offset is a
        //raw byte sum, so without this a 12-byte "Array<I32>(3)" left the following allocation at offset 12 -
        //fine for an i32 but misaligned for any i64 or pointer field, which is UB at the LLVM level even
        //where the hardware tolerates it. Latent before; the dtor nodes below (24 bytes, three pointers,
        //one per registered instance) made it near-certain to be hit. The chunk's own data area is
        //already 64-aligned (O8a): the chunk is, and its header is 64 bytes.
        "  %sizeup = add i64 %rawsize, 7\n"
        "  %size8 = and i64 %sizeup, -8\n"
        //E10: an allocation of nothing still gets storage of its own, so two of them are two instances (an empty array
        //made twice, a struct with no fields built twice) - a zero size bumped nothing, and handed both the same address
        "  %size0 = icmp eq i64 %size8, 0\n"
        "  %size = select i1 %size0, i64 8, i64 %size8\n"
        "  %alnm1 = sub i64 %aln, 1\n"
        "  %alnmask = sub i64 0, %aln\n"
        //every offset is a multiple of 8 already (every size is), so an 8-aligned allocation - every aggregate, and every
        //array under 32 bytes, decided while compiling where the size is known - takes the offset as it is
        "  %round = icmp ugt i64 %aln, 8\n"
        "  %headptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 0\n"
        "  %head = load ptr, ptr %headptr\n"
        "  %headnull = icmp eq ptr %head, null\n"
        "  br i1 %headnull, label %needchunk, label %checkspace\n"
        "checkspace:\n"
        "  %csusedptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 1\n"
        "  %csused = load i64, ptr %csusedptr\n"
        "  %cscapptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 2\n"
        "  %cscap = load i64, ptr %cscapptr\n"
        "  %csup = add i64 %csused, %alnm1\n"
        "  %csrounded = and i64 %csup, %alnmask\n"
        "  %csaligned = select i1 %round, i64 %csrounded, i64 %csused\n"
        "  %remaining = sub i64 %cscap, %csaligned\n"
        "  %fits = icmp uge i64 %remaining, %size\n"
        "  br i1 %fits, label %bump, label %needchunk\n"
        //the common case, complete in itself: the offset just computed, bumped
        "bump:\n"
        "  %dataptr = getelementptr %olang.chunk, ptr %head, i32 1\n"
        "  %result = getelementptr i8, ptr %dataptr, i64 %csaligned\n"
        "  %newused = add i64 %csaligned, %size\n"
        "  store i64 %newused, ptr %csusedptr\n"
        "  ret ptr %result\n"
        //the pool's spare 4KB chunk when it is there and holds this (O8b) - what a block allocating a little on each pass
        //of a loop takes every time, taken here; anything else is __olang_new_chunk's
        "needchunk:\n"
        "  %isfwd = icmp eq ptr %head, @__olang_fwd_chunk\n"
        "  br i1 %isfwd, label %forward, label %fresh\n"
        "forward:\n"
        "  %fwdptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 2\n"
        "  %fwd = load ptr, ptr %fwdptr\n"
        "  %viafwd = tail call ptr @__olang_scope_alloc_a(ptr %fwd, i64 %rawsize, i64 %aln)\n"
        "  ret ptr %viafwd\n"
        "fresh:\n"
        "  %small = icmp ule i64 %size, 4096\n"
        "  %spare = load ptr, ptr @__olang_pool_spare\n"
        "  %hasspare = icmp ne ptr %spare, null\n"
        "  %quick = and i1 %small, %hasspare\n"
        "  br i1 %quick, label %usespare, label %callnew\n"
        //it has been used: what it holds is whatever its last scope left there
        "usespare:\n"
        "  store ptr null, ptr @__olang_pool_spare\n"
        "  %sparefresh = getelementptr %olang.chunk, ptr %spare, i32 0, i32 4\n"
        "  store i64 0, ptr %sparefresh\n"
        "  br label %link\n"
        "callnew:\n"
        "  %made = call ptr @__olang_new_chunk(i64 %size)\n"
        "  br label %link\n"
        "link:\n"
        "  %newchunk = phi ptr [ %spare, %usespare ], [ %made, %callnew ]\n"
        "  %oldhead = load ptr, ptr %headptr\n"
        "  %newnextptr = getelementptr %olang.chunk, ptr %newchunk, i32 0, i32 0\n"
        "  store ptr %oldhead, ptr %newnextptr\n"
        "  store ptr %newchunk, ptr %headptr\n"
        //first chunk in this scope: it is the tail, and stays the tail for the scope's whole life, since
        //every later chunk is prepended ahead of it
        "  %wasempty = icmp eq ptr %oldhead, null\n"
        "  br i1 %wasempty, label %settail, label %first\n"
        "settail:\n"
        "  %tailptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 2\n"
        "  store ptr %newchunk, ptr %tailptr\n"
        "  br label %first\n"
        //a chunk from __olang_new_chunk is empty (its offset 0) and its data area 64-aligned, so this allocation is its
        //first bytes, whatever alignment it wants
        "first:\n"
        "  %ncusedptr = getelementptr %olang.chunk, ptr %newchunk, i32 0, i32 1\n"
        "  store i64 %size, ptr %ncusedptr\n"
        "  %ncdata = getelementptr %olang.chunk, ptr %newchunk, i32 1\n"
        "  ret ptr %ncdata\n"
        "}\n\n", out);
    fputs(
        //D13c: size bytes of ZEROS from scope - an "Array<T>(n)" with no fill. Bumped as any allocation is, then cleared -
        //unless it came from a chunk the system has just handed over (__olang_new_chunk maps a large one, and mapped memory
        //is zero) that no scope has used before: there, everything at or above the chunk's bump offset has never been
        //handed out, so it is still zero and its pages are first touched by the program's own writes. A chunk that comes
        //back through the pool is dirty and is cleared as any other.
        "define linkonce_odr noalias ptr @__olang_scope_alloc_zeroed(ptr %scope, i64 %rawsize) {\n"
        "entry:\n"
        "  %p = call ptr @__olang_scope_alloc(ptr %scope, i64 %rawsize)\n"
        "  %big = icmp uge i64 %rawsize, 4096\n"
        "  br i1 %big, label %check, label %clear\n"
        "check:\n"
        //the chunk p was bumped from is the scope's head: __olang_scope_alloc takes it from there or puts a new one there
        "  %headptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 0\n"
        "  %head = load ptr, ptr %headptr\n"
        "  %freshptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 4\n"
        "  %fresh = load i64, ptr %freshptr\n"
        "  %untouched = icmp ne i64 %fresh, 0\n"
        "  br i1 %untouched, label %done, label %clear\n"
        "clear:\n"
        "  call void @llvm.memset.p0.i64(ptr %p, i8 0, i64 %rawsize, i1 false)\n"
        "  br label %done\n"
        "done:\n"
        "  ret ptr %p\n"
        "}\n\n", out);
    fputs(
        //E11a: an integer in decimal - the length it takes (a digit count: the bit length gives the count to within
        //one, a power of ten settles it), and with a destination, the digits written there, two at a time from a
        //table, last first. No snprintf: measuring is a few instructions, and writing is no more than it has to be.
        //A null destination only measures, as every rendering's contract says (E11a); a real one has the room the
        //measurement said, and nothing is written past it. A float's rendering is @__olang_fmt_float's, below.
        "@__olang_fmt_g = linkonce_odr unnamed_addr constant [6 x i8] c\"%.17g\\00\"\n"
        "@__olang_pow10 = linkonce_odr unnamed_addr constant [20 x i64] [i64 1, i64 10, i64 100, i64 1000, i64 10000, "
            "i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, "
            "i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, "
            "i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616]\n"
        "@__olang_digits2 = linkonce_odr unnamed_addr constant [200 x i8] c\""
            "00010203040506070809101112131415161718192021222324252627282930313233343536373839"
            "40414243444546474849505152535455565758596061626364656667686970717273747576777879"
            "8081828384858687888990919293949596979899\"\n"
        "define linkonce_odr i64 @__olang_fmt_u64(ptr %buf, i64 %v) {\n"
        "entry:\n"
        "  %v1 = or i64 %v, 1\n"
        "  %lz = call i64 @llvm.ctlz.i64(i64 %v1, i1 true)\n"
        "  %bits = sub i64 64, %lz\n"
        "  %t0 = mul i64 %bits, 1233\n"
        "  %t = lshr i64 %t0, 12\n"
        "  %pp = getelementptr [20 x i64], ptr @__olang_pow10, i64 0, i64 %t\n"
        "  %pw = load i64, ptr %pp\n"
        "  %below = icmp ult i64 %v1, %pw\n"
        "  %belowi = zext i1 %below to i64\n"
        "  %t1 = add i64 %t, 1\n"
        "  %len = sub i64 %t1, %belowi\n"
        "  %measure = icmp eq ptr %buf, null\n"
        "  br i1 %measure, label %done, label %write\n"
        "write:\n"
        "  %end = getelementptr i8, ptr %buf, i64 %len\n"
        "  br label %pairs\n"
        "pairs:\n"
        "  %m = phi i64 [ %v, %write ], [ %q, %pair ]\n"
        "  %p = phi ptr [ %end, %write ], [ %p2, %pair ]\n"
        "  %big = icmp uge i64 %m, 100\n"
        "  br i1 %big, label %pair, label %last\n"
        "pair:\n"
        "  %q = udiv i64 %m, 100\n"
        "  %q100 = mul i64 %q, 100\n"
        "  %r = sub i64 %m, %q100\n"
        "  %ri = shl i64 %r, 1\n"
        "  %src = getelementptr i8, ptr @__olang_digits2, i64 %ri\n"
        "  %d = load i16, ptr %src, align 1\n"
        "  %p2 = getelementptr i8, ptr %p, i64 -2\n"
        "  store i16 %d, ptr %p2, align 1\n"
        "  br label %pairs\n"
        "last:\n"
        "  %two = icmp uge i64 %m, 10\n"
        "  br i1 %two, label %lasttwo, label %lastone\n"
        "lasttwo:\n"
        "  %li = shl i64 %m, 1\n"
        "  %lsrc = getelementptr i8, ptr @__olang_digits2, i64 %li\n"
        "  %ld = load i16, ptr %lsrc, align 1\n"
        "  %lp = getelementptr i8, ptr %p, i64 -2\n"
        "  store i16 %ld, ptr %lp, align 1\n"
        "  br label %done\n"
        "lastone:\n"
        "  %c = add i64 %m, 48\n"
        "  %c8 = trunc i64 %c to i8\n"
        "  %op = getelementptr i8, ptr %p, i64 -1\n"
        "  store i8 %c8, ptr %op\n"
        "  br label %done\n"
        "done:\n"
        "  ret i64 %len\n"
        "}\n\n"
        //a signed one: a '-', then the magnitude - "0 - v" is the magnitude as an unsigned number for every v, the
        //most negative included, since the subtraction wraps (E6c)
        "define linkonce_odr i64 @__olang_fmt_i64(ptr %buf, i64 %v) {\n"
        "entry:\n"
        "  %neg = icmp slt i64 %v, 0\n"
        "  br i1 %neg, label %minus, label %plain\n"
        "plain:\n"
        "  %n = call i64 @__olang_fmt_u64(ptr %buf, i64 %v)\n"
        "  ret i64 %n\n"
        "minus:\n"
        "  %mag = sub i64 0, %v\n"
        "  %measure = icmp eq ptr %buf, null\n"
        "  br i1 %measure, label %count, label %sign\n"
        "sign:\n"
        "  store i8 45, ptr %buf\n"
        "  br label %count\n"
        "count:\n"
        "  %after = getelementptr i8, ptr %buf, i64 1\n"
        "  %rest = select i1 %measure, ptr null, ptr %after\n"
        "  %k = call i64 @__olang_fmt_u64(ptr %rest, i64 %mag)\n"
        "  %k1 = add i64 %k, 1\n"
        "  ret i64 %k1\n"
        "}\n\n"
        //T4: an integer - negative when %neg, of magnitude %m - as a BF16, rounded ONCE to its 8 significant bits, ties
        //to even. LLVM's own "sitofp ... to bfloat" goes through a float at -O0, rounding twice, and so came out one
        //step off where -O3 and the evaluator did not: the magnitude is cut to its top 8 bits here, in integers
        "define linkonce_odr bfloat @__olang_int_bf16(i64 %m, i1 %neg) {\n"
        "entry:\n"
        "  %lz = call i64 @llvm.ctlz.i64(i64 %m, i1 false)\n"
        "  %bits = sub i64 64, %lz\n"
        "  %big = icmp ugt i64 %bits, 8\n"
        "  %shr = sub i64 %bits, 8\n"
        "  %sh = select i1 %big, i64 %shr, i64 0\n"
        "  %q = lshr i64 %m, %sh\n"
        "  %one = shl i64 1, %sh\n"
        "  %mask = sub i64 %one, 1\n"
        "  %rem = and i64 %m, %mask\n"
        "  %half = lshr i64 %one, 1\n"
        "  %gt = icmp ugt i64 %rem, %half\n"
        "  %eq = icmp eq i64 %rem, %half\n"
        "  %odd = trunc i64 %q to i1\n"
        "  %tie = and i1 %eq, %odd\n"
        "  %up0 = or i1 %gt, %tie\n"
        "  %up = and i1 %up0, %big\n"
        "  %upi = zext i1 %up to i64\n"
        "  %q2 = add i64 %q, %upi\n"
        "  %lsh = sub i64 8, %bits\n"
        "  %lsh2 = select i1 %big, i64 0, i64 %lsh\n"
        "  %q3 = shl i64 %q2, %lsh2\n"
        "  %carry = icmp eq i64 %q3, 256\n"
        "  %q4 = select i1 %carry, i64 128, i64 %q3\n"
        "  %e0 = sub i64 %bits, 1\n"
        "  %ce = zext i1 %carry to i64\n"
        "  %e1 = add i64 %e0, %ce\n"
        "  %be = add i64 %e1, 127\n"
        "  %mant = and i64 %q4, 127\n"
        "  %ebits = shl i64 %be, 7\n"
        "  %mag16 = or i64 %ebits, %mant\n"
        "  %nz = icmp ne i64 %m, 0\n"
        "  %mag = select i1 %nz, i64 %mag16, i64 0\n"
        "  %sign = select i1 %neg, i64 32768, i64 0\n"
        "  %all = or i64 %mag, %sign\n"
        "  %w = trunc i64 %all to i16\n"
        "  %r = bitcast i16 %w to bfloat\n"
        "  ret bfloat %r\n"
        "}\n\n"
        "", out);
    fputs(
        //E11a: appends n bytes at dst+at, or nothing while a rendering is only being measured (dst null)
        "define linkonce_odr void @__olang_rd_put(ptr %dst, i64 %at, ptr %src, i64 %n) {\n"
        "entry:\n"
        "  %measure = icmp eq ptr %dst, null\n"
        "  br i1 %measure, label %done, label %write\n"
        "write:\n"
        "  %p = getelementptr i8, ptr %dst, i64 %at\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %p, ptr %src, i64 %n, i1 false)\n"
        "  br label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        //E11a: nested text between quotes q, escaped the way a literal writes it (\n \t \r \0 \\ and q
        //itself); returns the bytes it takes, writing nothing while measuring (dst null)
        "define linkonce_odr i64 @__olang_rd_quote(ptr %dst, i64 %at, ptr %src, i64 %n, i8 %q) {\n"
        "entry:\n"
        "  %measure = icmp eq ptr %dst, null\n"
        "  %base = getelementptr i8, ptr %dst, i64 %at\n"
        "  br i1 %measure, label %loop, label %wopen\n"
        "wopen:\n"
        "  store i8 %q, ptr %base\n"
        "  br label %loop\n"
        "loop:\n"
        "  %i = phi i64 [ 0, %entry ], [ 0, %wopen ], [ %i1, %next ]\n"
        "  %o = phi i64 [ 1, %entry ], [ 1, %wopen ], [ %o1, %next ]\n"
        "  %more = icmp slt i64 %i, %n\n"
        "  br i1 %more, label %body, label %close\n"
        "body:\n"
        "  %cp = getelementptr i8, ptr %src, i64 %i\n"
        "  %c = load i8, ptr %cp\n"
        "  switch i8 %c, label %plain [ i8 10, label %en i8 9, label %et i8 13, label %er i8 0, label %ez i8 92, label %eb ]\n"
        "en:\n  br label %esc\n"
        "et:\n  br label %esc\n"
        "er:\n  br label %esc\n"
        "ez:\n  br label %esc\n"
        "eb:\n  br label %esc\n"
        "plain:\n"
        "  %isq = icmp eq i8 %c, %q\n"
        "  br i1 %isq, label %eq, label %raw\n"
        "eq:\n  br label %esc\n"
        "esc:\n"
        "  %e = phi i8 [ 110, %en ], [ 116, %et ], [ 114, %er ], [ 48, %ez ], [ 92, %eb ], [ %q, %eq ]\n"
        "  br i1 %measure, label %escdone, label %wesc\n"
        "wesc:\n"
        "  %ep = getelementptr i8, ptr %base, i64 %o\n"
        "  store i8 92, ptr %ep\n"
        "  %ep2 = getelementptr i8, ptr %ep, i64 1\n"
        "  store i8 %e, ptr %ep2\n"
        "  br label %escdone\n"
        "escdone:\n"
        "  %oe = add i64 %o, 2\n"
        "  br label %next\n"
        "raw:\n"
        "  br i1 %measure, label %rawdone, label %wraw\n"
        "wraw:\n"
        "  %rp = getelementptr i8, ptr %base, i64 %o\n"
        "  store i8 %c, ptr %rp\n"
        "  br label %rawdone\n"
        "rawdone:\n"
        "  %or = add i64 %o, 1\n"
        "  br label %next\n"
        "next:\n"
        "  %o1 = phi i64 [ %oe, %escdone ], [ %or, %rawdone ]\n"
        "  %i1 = add i64 %i, 1\n"
        "  br label %loop\n"
        "close:\n"
        "  br i1 %measure, label %done, label %wclose\n"
        "wclose:\n"
        "  %cl = getelementptr i8, ptr %base, i64 %o\n"
        "  store i8 %q, ptr %cl\n"
        "  br label %done\n"
        "done:\n"
        "  %total = add i64 %o, 1\n"
        "  ret i64 %total\n"
        "}\n\n"
        //P2a: gives this thread's whole chunk pool back to the system - a worker retiring (P1f), whose pool would
        //otherwise be lost with its thread. Every chunk in the pool came from a scope that has already closed, so
        //nothing refers to it; a task's sub-scope's chunks are never here, having been spliced into the parent at the
        //join rather than given back by their own thread
        "define linkonce_odr void @__olang_pool_drain() {\n"
        "entry:\n"
        "  %s = load ptr, ptr @__olang_pool_spare\n"
        "  store ptr null, ptr @__olang_pool_spare\n"
        "  %nospare = icmp eq ptr %s, null\n"
        "  br i1 %nospare, label %classes, label %spare\n"
        "spare:\n"
        "  call void @__olang_chunk_release(ptr %s)\n"
        "  br label %classes\n"
        "classes:\n"
        "  %maskptr = getelementptr %olang.pool, ptr @__olang_pool, i32 0, i32 1\n"
        "  %mask = load i128, ptr %maskptr\n"
        "  store i128 0, ptr %maskptr\n"
        "  %bytesptr = getelementptr %olang.pool, ptr @__olang_pool, i32 0, i32 2\n"
        "  store i64 0, ptr %bytesptr\n"
        "  %empty = icmp eq i128 %mask, 0\n"
        "  br i1 %empty, label %done, label %class\n"
        "class:\n"
        "  %m = phi i128 [ %mask, %classes ], [ %mrest, %nextclass ]\n"
        "  %tz = call i128 @llvm.cttz.i128(i128 %m, i1 true)\n"
        "  %k = trunc i128 %tz to i64\n"
        "  %slot = getelementptr %olang.pool, ptr @__olang_pool, i32 0, i32 0, i64 %k\n"
        "  %newest = load ptr, ptr %slot\n"
        "  store ptr null, ptr %slot\n"
        "  br label %walk\n"
        //round the circle once, from the newest back to it
        "walk:\n"
        "  %cur = phi ptr [ %newest, %class ], [ %next, %walk ]\n"
        "  %nextptr = getelementptr %olang.chunk, ptr %cur, i32 0, i32 0\n"
        "  %next = load ptr, ptr %nextptr\n"
        "  call void @__olang_chunk_release(ptr %cur)\n"
        "  %round = icmp eq ptr %next, %newest\n"
        "  br i1 %round, label %nextclass, label %walk\n"
        "nextclass:\n"
        "  %m1 = sub i128 %m, 1\n"
        "  %mrest = and i128 %m, %m1\n"
        "  %more = icmp ne i128 %mrest, 0\n"
        "  br i1 %more, label %class, label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        "", out);
    fputs(
        //P1: waits for every task on this join block's list, innermost-first is irrelevant here since
        //they are concurrent - then folds each task's sub-scopes into the scopes they stood in for (P2),
        //which is safe only now that the thread is known to be finished with them.
        //P1e: the worker cache. A spawn used to create a thread and the join used to destroy it - ~51us
        //and ~8.4KB each, with the stack held until the join, so a join block's peak grew with the TOTAL
        //number of spawns run through it rather than with how many were live at once. A finished worker
        //parks on a free list instead and the next spawn takes it, so a thread is created once per peak
        //concurrency. Every task still gets a thread of its own - this is a cache, not a fixed-size pool,
        //which is what keeps a task that blocks (on a nested join, on a mutex) from starving anyone.
        //A worker returns itself the moment its task FINISHES, not when the join gets round to noticing.
        //Returning at the join frees nothing until the block ends, so a fan-out reuses nothing at all:
        //measured at 225s for 100,000 spawns against 5.1s for a fresh thread each time, because 100,000
        //workers then sit parked and alive where plain threads had already exited. So the completion flag
        //lives in the TASK node, not in the worker, and these two guard it.
        "@__olang_worker_free = linkonce_odr global ptr null\n"
        "@__olang_worker_lock = linkonce_odr global [40 x i8] zeroinitializer\n"
        "@__olang_task_lock = linkonce_odr global [40 x i8] zeroinitializer\n"
        "@__olang_task_cv = linkonce_odr global [48 x i8] zeroinitializer\n"
        //P1f: how many workers are parked, guarded by @__olang_worker_lock with the list itself. The cap
        //is on the CACHE, never on concurrency: __olang_worker_get still creates a thread unconditionally
        //when none is parked, so a live task is never refused one and 1:1 is untouched. That is the whole
        //difference from the fixed-size pool this design rejected - a pool bounds how many tasks can RUN,
        //which deadlocks on a nested join or a blocking channel; this bounds only how many idle threads
        //are kept, which nothing can wait on. 64 is deliberately generous: an ordinary parallel workload
        //never reaches it (a 100,000-task fan-out settles at 9 workers), so it clips burst residue only,
        //and a tighter cap would thrash - destroying a worker only to recreate it costs the ~51us the
        //cache exists to avoid. Accessed atomically (relaxed), always under the lock but for the one read a
        //finishing worker makes without it, to guess whether it will park (__olang_pool_share)
        "@__olang_worker_idle = linkonce_odr global i64 0\n\n"
        //the parked loop: take work, run it, report finished, park again. It never exits but by retiring (P1f),
        //which is why the chunk pool is not drained per task - the next task on this worker reuses what it keeps.
        "define internal ptr @__olang_worker_loop(ptr %w) {\n"
        "entry:\n"
        "  call void @__olang_thread_init()\n"
        //O1b/P2: this worker's part of the program's scope - every task it runs builds there, and it outlives the worker
        "  %prog = call ptr @malloc(i64 48)\n"
        "  call void @__olang_alloc_check(ptr %prog)\n"
        "  store %olang.scope { ptr null, ptr null, ptr null, ptr @__olang_global_scope, ptr null, ptr null }, ptr %prog\n"
        "  store ptr %prog, ptr @__olang_prog_scope\n"
        "  %m = getelementptr %olang.worker, ptr %w, i32 0, i32 5\n"
        "  %c = getelementptr %olang.worker, ptr %w, i32 0, i32 6\n"
        "  %st = getelementptr %olang.worker, ptr %w, i32 0, i32 3\n"
        "  call i32 @pthread_mutex_lock(ptr %m)\n"
        "  br label %check\n"
        "check:\n"
        "  %s = load i64, ptr %st\n"
        "  %haswork = icmp eq i64 %s, 1\n"
        "  br i1 %haswork, label %run, label %park\n"
        "park:\n"
        "  call i32 @pthread_cond_wait(ptr %c, ptr %m)\n"
        "  br label %check\n"
        "run:\n"
        "  %fnp = getelementptr %olang.worker, ptr %w, i32 0, i32 1\n"
        "  %fn = load ptr, ptr %fnp\n"
        "  %envp = getelementptr %olang.worker, ptr %w, i32 0, i32 2\n"
        "  %env = load ptr, ptr %envp\n"
        "  %tkp = getelementptr %olang.worker, ptr %w, i32 0, i32 4\n"
        "  %tk = load ptr, ptr %tkp\n"
        "  call i32 @pthread_mutex_unlock(ptr %m)\n"
        //S2: a crash in the task is reported as on any thread, a stack overflow included - once OnCrash has run
        "  call void @__olang_alt_stack()\n"
        "  call ptr %fn(ptr %env)\n"
        //O8b: a worker about to park keeps at most a batch of its pool (1MB), the rest going where every thread can take
        //it - before the task is reported finished, so that what the task gave back is there for whoever its join lets
        //go on. Not a worker about to retire (P1f), which gives its pool back to the system instead: the load that made
        //it has passed. Which it will do is decided below, under the lock; this reads the count without it, and a wrong
        //guess either way only moves a little memory to the other place
        "  %peek = load atomic i64, ptr @__olang_worker_idle monotonic, align 8\n"
        "  %willpark = icmp slt i64 %peek, 64\n"
        "  br i1 %willpark, label %share, label %done\n"
        "share:\n"
        "  call void @__olang_pool_share()\n"
        "  br label %done\n"
        //the task is finished the moment its call returns - report that first, so a joiner can proceed
        "done:\n"
        "  call i32 @pthread_mutex_lock(ptr @__olang_task_lock)\n"
        "  %dp = getelementptr %olang.task, ptr %tk, i32 0, i32 1\n"
        "  store i64 1, ptr %dp\n"
        "  call i32 @pthread_cond_broadcast(ptr @__olang_task_cv)\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_task_lock)\n"
        //then hand this worker straight back, so the very next spawn can have it. Taking the free-list
        //lock while still holding our own is what stops a spawner racing ahead of the park below: it
        //needs this mutex to hand over work, and the predicate is re-tested under it either way. The
        //state is cleared before the list lock is taken for the same reason - push first and a spawner
        //could hand us work that this store would then wipe, parking us forever with a task lost.
        "  call i32 @pthread_mutex_lock(ptr %m)\n"
        "  store i64 0, ptr %st\n"
        "  call i32 @pthread_mutex_lock(ptr @__olang_worker_lock)\n"
        "  %nidle = load atomic i64, ptr @__olang_worker_idle monotonic, align 8\n"
        "  %full = icmp sge i64 %nidle, 64\n"
        "  br i1 %full, label %retire, label %stay\n"
        //P1f: enough are parked already, so this one goes away rather than being held for a load that
        //has passed. Nothing references it - the task node carries the completion flag, not a worker
        //pointer - so once it is off the list it is ours to release. Its chunk pool goes back to the system
        //here and nowhere else, which is the one place P2a's drain is still needed now that a worker
        //normally keeps a little of its pool for the next task and shares the rest.
        "retire:\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_worker_lock)\n"
        "  call i32 @pthread_mutex_unlock(ptr %m)\n"
        "  call void @__olang_pool_drain()\n"
        "  call void @__olang_alt_stack_free()\n"
        "  call void @free(ptr %w)\n"
        "  ret ptr null\n"
        "stay:\n"
        "  %oldf = load ptr, ptr @__olang_worker_free\n"
        "  %selfn = getelementptr %olang.worker, ptr %w, i32 0, i32 0\n"
        "  store ptr %oldf, ptr %selfn\n"
        "  store ptr %w, ptr @__olang_worker_free\n"
        "  %nidle1 = add i64 %nidle, 1\n"
        "  store atomic i64 %nidle1, ptr @__olang_worker_idle monotonic, align 8\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_worker_lock)\n"
        "  br label %check\n"
        "}\n\n"
        //takes a parked worker, or builds one. P1c lives here now: a thread the OS declines to create is
        //still a broken guarantee, and this is the only place one is created.
        "define linkonce_odr ptr @__olang_worker_get() {\n"
        "entry:\n"
        "  call i32 @pthread_mutex_lock(ptr @__olang_worker_lock)\n"
        //O2c: entry block, though this path returns straight after it - every alloca this compiler emits
        //is in an entry block, which is worth being an invariant that can be checked mechanically rather
        //than a rule with an argued-safe exception in it
        "  %tid = alloca i64\n"
        "  %top = load ptr, ptr @__olang_worker_free\n"
        "  %none = icmp eq ptr %top, null\n"
        "  br i1 %none, label %fresh, label %reuse\n"
        "reuse:\n"
        "  %np = getelementptr %olang.worker, ptr %top, i32 0, i32 0\n"
        "  %nx = load ptr, ptr %np\n"
        "  store ptr %nx, ptr @__olang_worker_free\n"
        "  %ni = load atomic i64, ptr @__olang_worker_idle monotonic, align 8\n"
        "  %ni1 = sub i64 %ni, 1\n"
        "  store atomic i64 %ni1, ptr @__olang_worker_idle monotonic, align 8\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_worker_lock)\n"
        "  ret ptr %top\n"
        "fresh:\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_worker_lock)\n"
        "  %w = call ptr @malloc(i64 128)\n"
        "  call void @__olang_alloc_check(ptr %w)\n"
        "  call void @llvm.memset.p0.i64(ptr %w, i8 0, i64 128, i1 false)\n"
        "  %rc = call i32 @pthread_create(ptr %tid, ptr null, ptr @__olang_worker_loop, ptr %w)\n"
        "  call void @__olang_task_started(i32 %rc)\n"
        //nothing ever joins a worker - it parks forever - so detach it rather than leak the descriptor
        "  %tv = load i64, ptr %tid\n"
        "  call i32 @pthread_detach(i64 %tv)\n"
        "  ret ptr %w\n"
        "}\n\n", out);
    //split here only to stay under C99's 4095-character string-literal limit
    fputs(
        "define linkonce_odr void @__olang_worker_start(ptr %w, ptr %fn, ptr %env, ptr %tk) {\n"
        "entry:\n"
        "  %m = getelementptr %olang.worker, ptr %w, i32 0, i32 5\n"
        "  %c = getelementptr %olang.worker, ptr %w, i32 0, i32 6\n"
        "  call i32 @pthread_mutex_lock(ptr %m)\n"
        "  %fp = getelementptr %olang.worker, ptr %w, i32 0, i32 1\n"
        "  store ptr %fn, ptr %fp\n"
        "  %ep = getelementptr %olang.worker, ptr %w, i32 0, i32 2\n"
        "  store ptr %env, ptr %ep\n"
        "  %tp = getelementptr %olang.worker, ptr %w, i32 0, i32 4\n"
        "  store ptr %tk, ptr %tp\n"
        "  %sp = getelementptr %olang.worker, ptr %w, i32 0, i32 3\n"
        "  store i64 1, ptr %sp\n"
        "  call i32 @pthread_cond_broadcast(ptr %c)\n"
        "  call i32 @pthread_mutex_unlock(ptr %m)\n"
        "  ret void\n"
        "}\n\n"
        //waits for ONE task to finish. This is what replaced pthread_join: a cached worker never exits,
        //so there is nothing to join and completion is signalled explicitly. It waits on the task rather
        //than on the worker because the worker has very likely been handed to somebody else by now.
        "define linkonce_odr void @__olang_task_wait(ptr %tk) {\n"
        "entry:\n"
        "  %dp = getelementptr %olang.task, ptr %tk, i32 0, i32 1\n"
        "  call i32 @pthread_mutex_lock(ptr @__olang_task_lock)\n"
        "  br label %check\n"
        "check:\n"
        "  %d = load i64, ptr %dp\n"
        "  %fin = icmp eq i64 %d, 1\n"
        "  br i1 %fin, label %got, label %wait\n"
        "wait:\n"
        "  call i32 @pthread_cond_wait(ptr @__olang_task_cv, ptr @__olang_task_lock)\n"
        "  br label %check\n"
        "got:\n"
        "  call i32 @pthread_mutex_unlock(ptr @__olang_task_lock)\n"
        "  ret void\n"
        "}\n\n"
        "define linkonce_odr void @__olang_join_tasks(ptr %headslot) {\n"
        "entry:\n"
        "  %head = load ptr, ptr %headslot\n"
        "  store ptr null, ptr %headslot\n"
        "  %nonone = icmp eq ptr %head, null\n"
        "  br i1 %nonone, label %done, label %task\n"
        "task:\n"
        "  %cur = phi ptr [ %head, %entry ], [ %tnext, %aftermerge ]\n"
        "  call void @__olang_task_wait(ptr %cur)\n"
        "  %mheadptr = getelementptr %olang.task, ptr %cur, i32 0, i32 2\n"
        "  %mhead = load ptr, ptr %mheadptr\n"
        "  %nomerge = icmp eq ptr %mhead, null\n"
        "  br i1 %nomerge, label %aftermerge, label %merge\n"
        "merge:\n"
        "  %m = phi ptr [ %mhead, %task ], [ %mnext, %merge ]\n"
        "  %srcptr = getelementptr %olang.merge, ptr %m, i32 0, i32 1\n"
        "  %src = load ptr, ptr %srcptr\n"
        "  call void @__olang_scope_merge(ptr %src)\n"
        "  %mnextptr = getelementptr %olang.merge, ptr %m, i32 0, i32 0\n"
        "  %mnext = load ptr, ptr %mnextptr\n"
        "  %matend = icmp eq ptr %mnext, null\n"
        "  br i1 %matend, label %aftermerge, label %merge\n"
        "aftermerge:\n"
        "  %tnextptr = getelementptr %olang.task, ptr %cur, i32 0, i32 0\n"
        "  %tnext = load ptr, ptr %tnextptr\n"
        "  %tatend = icmp eq ptr %tnext, null\n"
        "  br i1 %tatend, label %done, label %task\n"
        "done:\n"
        "  ret void\n"
        "}\n\n", out);
    fputs(
        //P2: a scope belongs to the thread that builds into it (its owner word). Every scope another thread can reach reaches
        //it through a function value - a closure's captured scopes, a Call adapter's instance - or is the program's: a
        //task's own scopes are stand-ins, and a scope it is handed is a stand-in too. So a closure that may build into a
        //scope it captured asks for it here as its call starts, and builds into what it is given: the scope itself on its
        //owner's thread, and anywhere else this thread's own PART of it - a scope linked to the one it is part of and closed
        //with it, made the first time this thread builds there (__olang_scope_part). Nothing is checked per allocation, and
        //a closure that only reads what it captured asks nothing. The program's scope, or a part of it, is this thread's
        //own part of it (@__olang_prog_scope); a stand-in folded already is followed to what it forwards to
        "define linkonce_odr void @__olang_thread_init() {\n"
        "entry:\n"
        "  %n = atomicrmw add ptr @__olang_thread_next, i64 2 monotonic, align 8\n"
        "  %id = inttoptr i64 %n to ptr\n"
        "  store ptr %id, ptr @__olang_self\n"
        "  ret void\n"
        "}\n\n"
        "define linkonce_odr ptr @__olang_scope_mine(ptr %s) alwaysinline {\n"
        "entry:\n"
        "  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3\n"
        "  %o = load atomic ptr, ptr %op monotonic, align 8\n"
        "  %me = load ptr, ptr @__olang_self\n"
        "  %own = icmp eq ptr %o, %me\n"
        "  br i1 %own, label %mine, label %slow\n"
        "mine:\n"
        "  ret ptr %s\n"
        "slow:\n"
        "  %r = call ptr @__olang_scope_mine_slow(ptr %s)\n"
        "  ret ptr %r\n"
        "}\n\n"
        //a closure's captured scope as its call starts (cgFunctionIn): null is the program's (cgClosure)
        "define linkonce_odr ptr @__olang_capture_scope(ptr %s) alwaysinline {\n"
        "entry:\n"
        "  %isprog = icmp eq ptr %s, null\n"
        "  br i1 %isprog, label %prog, label %mine\n"
        "prog:\n"
        "  %p = load ptr, ptr @__olang_prog_scope\n"
        "  ret ptr %p\n"
        "mine:\n"
        "  %m = call ptr @__olang_scope_mine(ptr %s)\n"
        "  ret ptr %m\n"
        "}\n\n", out);
    fputs(
        "define linkonce_odr ptr @__olang_scope_mine_slow(ptr %s0) noinline {\n"
        "entry:\n"
        "  %me = load ptr, ptr @__olang_self\n"
        "  br label %loop\n"
        "loop:\n"
        "  %s = phi ptr [ %s0, %entry ], [ %fwd, %forward ]\n"
        "  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3\n"
        "  %o = load atomic ptr, ptr %op acquire, align 8\n"
        "  %own = icmp eq ptr %o, %me\n"
        "  br i1 %own, label %mine, label %c1\n"
        "mine:\n"
        "  ret ptr %s\n"
        //reached from no other thread yet: its opener's, which is this one - a scope only ever reaches another thread
        //once its owner is set (__olang_scope_escape, __olang_standin)
        "c1:\n"
        "  %unclaimed = icmp eq ptr %o, null\n"
        "  br i1 %unclaimed, label %claim, label %c2\n"
        "claim:\n"
        "  store atomic ptr %me, ptr %op monotonic, align 8\n"
        "  ret ptr %s\n"
        "c2:\n"
        "  %isprog = icmp eq ptr %o, @__olang_global_scope\n"
        "  br i1 %isprog, label %prog, label %c3\n"
        "prog:\n"
        "  %p = load ptr, ptr @__olang_prog_scope\n"
        "  ret ptr %p\n"
        "c3:\n"
        "  %isfwd = icmp eq ptr %o, @__olang_fwd_chunk\n"
        "  br i1 %isfwd, label %forward, label %up\n"
        "forward:\n"
        "  %tp = getelementptr %olang.scope, ptr %s, i32 0, i32 2\n"
        "  %fwd = load ptr, ptr %tp\n"
        "  br label %loop\n"
        //another thread's: the scope at the top of what it stands in for or is part of, which is closed last
        "up:\n"
        "  %r = phi ptr [ %s, %c3 ], [ %rp, %up ]\n"
        "  %pp = getelementptr %olang.scope, ptr %r, i32 0, i32 5\n"
        "  %rp = load ptr, ptr %pp\n"
        "  %top = icmp eq ptr %rp, null\n"
        "  br i1 %top, label %atroot, label %up\n"
        "atroot:\n"
        "  %rop = getelementptr %olang.scope, ptr %r, i32 0, i32 3\n"
        "  %ro = load atomic ptr, ptr %rop acquire, align 8\n"
        "  %rown = icmp eq ptr %ro, %me\n"
        "  br i1 %rown, label %rootmine, label %rootprog\n"
        "rootmine:\n"
        "  ret ptr %r\n"
        "rootprog:\n" //(no stand-in is made for the program's scope - __olang_standin - so none is reached here)
        "  %risprog = icmp eq ptr %ro, @__olang_global_scope\n"
        "  br i1 %risprog, label %prog, label %part\n"
        "part:\n"
        "  %f = call ptr @__olang_scope_part(ptr %r, ptr %me)\n"
        "  ret ptr %f\n"
        "}\n\n", out);
    fputs(
        //this thread's part of r, made and linked the first time: the parts are a list only ever pushed onto until r closes,
        //so finding one takes no lock
        "define linkonce_odr ptr @__olang_scope_part(ptr %r, ptr %me) noinline {\n"
        "entry:\n"
        "  %lp = getelementptr %olang.scope, ptr %r, i32 0, i32 4\n"
        "  %first = load atomic ptr, ptr %lp acquire, align 8\n"
        "  br label %look\n"
        "look:\n"
        "  %n = phi ptr [ %first, %entry ], [ %nn, %next ]\n"
        "  %end = icmp eq ptr %n, null\n"
        "  br i1 %end, label %make, label %check\n"
        "check:\n"
        "  %nop = getelementptr %olang.scope, ptr %n, i32 0, i32 3\n"
        "  %no = load atomic ptr, ptr %nop monotonic, align 8\n"
        "  %hit = icmp eq ptr %no, %me\n"
        "  br i1 %hit, label %found, label %next\n"
        "found:\n"
        "  ret ptr %n\n"
        "next:\n"
        "  %nlp = getelementptr %olang.scope, ptr %n, i32 0, i32 4\n"
        "  %nn = load ptr, ptr %nlp\n"
        "  br label %look\n"
        "make:\n"
        "  %f = call ptr @malloc(i64 48)\n"
        "  call void @__olang_alloc_check(ptr %f)\n"
        "  store %olang.scope zeroinitializer, ptr %f\n"
        "  %fo = getelementptr %olang.scope, ptr %f, i32 0, i32 3\n"
        "  store atomic ptr %me, ptr %fo monotonic, align 8\n"
        "  %fp = getelementptr %olang.scope, ptr %f, i32 0, i32 5\n"
        "  store ptr %r, ptr %fp\n"
        "  %fl = getelementptr %olang.scope, ptr %f, i32 0, i32 4\n"
        "  br label %push\n"
        "push:\n"
        "  %old = load atomic ptr, ptr %lp monotonic, align 8\n"
        "  store ptr %old, ptr %fl\n"
        "  %pair = cmpxchg ptr %lp, ptr %old, ptr %f release monotonic\n"
        "  %ok = extractvalue { ptr, i1 } %pair, 1\n"
        "  br i1 %ok, label %done, label %push\n"
        "done:\n"
        "  ret ptr %f\n"
        "}\n\n"
        //a closure is being made capturing s, or a Call adapter for an instance in it (cgClosure): s may now reach
        //another thread, so it is claimed for this one - its opener, or the task a stand-in was made for
        "define linkonce_odr void @__olang_scope_escape(ptr %s) alwaysinline {\n"
        "entry:\n"
        "  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3\n"
        "  %o = load atomic ptr, ptr %op monotonic, align 8\n"
        "  %un = icmp eq ptr %o, null\n"
        "  br i1 %un, label %claim, label %done\n"
        "claim:\n"
        "  %me = load ptr, ptr @__olang_self\n"
        "  store atomic ptr %me, ptr %op monotonic, align 8\n"
        "  br label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n", out);
    fputs(
        //a task's private stand-in for parent, made in parent itself on the spawner's thread: a closure the task makes may
        //hold it past the join, where it forwards to parent (__olang_scope_merge), so it lives as long as parent does.
        //None for the program's scope: a task builds into its worker's own part of that (null, which the task's
        //trampoline reads as the program's scope as the worker reaches it)
        "define linkonce_odr ptr @__olang_standin(ptr %parent0) {\n"
        "entry:\n"
        "  %p = call ptr @__olang_scope_mine(ptr %parent0)\n"
        "  %op = getelementptr %olang.scope, ptr %p, i32 0, i32 3\n"
        "  %o = load atomic ptr, ptr %op monotonic, align 8\n"
        "  %isprog = icmp eq ptr %o, @__olang_global_scope\n"
        "  br i1 %isprog, label %prog, label %make\n"
        "prog:\n"
        "  ret ptr null\n"
        "make:\n"
        "  %sub = call ptr @__olang_scope_alloc_a(ptr %p, i64 48, i64 8)\n"
        "  store %olang.scope zeroinitializer, ptr %sub\n"
        "  %pp = getelementptr %olang.scope, ptr %sub, i32 0, i32 5\n"
        "  store ptr %p, ptr %pp\n"
        "  ret ptr %sub\n"
        "}\n\n", out);
    fputs(
        //P2: every part other threads made of a scope closing - their destructors ahead of the scope's own, their chunks
        //with its: spliced into what the scope holds (which it then reclaims as ever), each part's header freed. Takes and
        //gives back the scope's lists as values, so that the scope's header never escapes into the call
        "define linkonce_odr { ptr, ptr, ptr } @__olang_scope_fold_parts(ptr %first, ptr %dh0, ptr %h0, ptr %t0) noinline {\n"
        "entry:\n"
        "  br label %part\n"
        "part:\n"
        "  %n = phi ptr [ %first, %entry ], [ %nn, %chunked ]\n"
        "  %dh = phi ptr [ %dh0, %entry ], [ %dh2, %chunked ]\n"
        "  %h = phi ptr [ %h0, %entry ], [ %h2, %chunked ]\n"
        "  %t = phi ptr [ %t0, %entry ], [ %t2, %chunked ]\n"
        "  %nlp = getelementptr %olang.scope, ptr %n, i32 0, i32 4\n"
        "  %nn = load ptr, ptr %nlp\n"
        "  %ndp = getelementptr %olang.scope, ptr %n, i32 0, i32 1\n"
        "  %nd = load ptr, ptr %ndp\n"
        "  %nodt = icmp eq ptr %nd, null\n"
        "  br i1 %nodt, label %dtored, label %dwalk\n"
        "dwalk:\n"
        "  %dc = phi ptr [ %nd, %part ], [ %dnx, %dwalk ]\n"
        "  %dnp = getelementptr %olang.dtornode, ptr %dc, i32 0, i32 0\n"
        "  %dnx = load ptr, ptr %dnp\n"
        "  %dend = icmp eq ptr %dnx, null\n"
        "  br i1 %dend, label %dsplice, label %dwalk\n"
        "dsplice:\n"
        "  store ptr %dh, ptr %dnp\n"
        "  br label %dtored\n"
        "dtored:\n"
        "  %dh2 = phi ptr [ %dh, %part ], [ %nd, %dsplice ]\n"
        "  %nhp = getelementptr %olang.scope, ptr %n, i32 0, i32 0\n"
        "  %nh = load ptr, ptr %nhp\n"
        "  %noch = icmp eq ptr %nh, null\n"
        "  br i1 %noch, label %chunked, label %csplice\n"
        "csplice:\n"
        "  %ntp = getelementptr %olang.scope, ptr %n, i32 0, i32 2\n"
        "  %nt = load ptr, ptr %ntp\n"
        "  %ntn = getelementptr %olang.chunk, ptr %nt, i32 0, i32 0\n"
        "  store ptr %h, ptr %ntn\n"
        "  %wasempty = icmp eq ptr %h, null\n"
        "  %tn = select i1 %wasempty, ptr %nt, ptr %t\n"
        "  br label %chunked\n"
        "chunked:\n"
        "  %h2 = phi ptr [ %h, %dtored ], [ %nh, %csplice ]\n"
        "  %t2 = phi ptr [ %t, %dtored ], [ %tn, %csplice ]\n"
        "  call void @free(ptr %n)\n"
        "  %more = icmp ne ptr %nn, null\n"
        "  br i1 %more, label %part, label %out\n"
        "out:\n"
        "  %r0 = insertvalue { ptr, ptr, ptr } undef, ptr %dh2, 0\n"
        "  %r1 = insertvalue { ptr, ptr, ptr } %r0, ptr %h2, 1\n"
        "  %r2 = insertvalue { ptr, ptr, ptr } %r1, ptr %t2, 2\n"
        "  ret { ptr, ptr, ptr } %r2\n"
        "}\n\n", out);
    fputs(
        //walks the open-scope chain down to %mark, waiting for each join block's tasks before reclaiming
        //the arena they may still be holding (P1b), then running that scope's destructors. Closing a
        //scope that was never entered is a no-op, and so is joining a null task list, so nothing here
        //needs to know which blocks were actually reached.
        "define linkonce_odr void @__olang_unwind_to(ptr %mark) {\n"
        "entry:\n"
        "  br label %loop\n"
        "loop:\n"
        "  %cur = load ptr, ptr @__olang_unwind_top\n"
        "  %atmark = icmp eq ptr %cur, %mark\n"
        "  %atnull = icmp eq ptr %cur, null\n"
        "  %stop = or i1 %atmark, %atnull\n"
        "  br i1 %stop, label %done, label %step\n"
        "step:\n"
        "  %jslot = getelementptr %olang.unwind, ptr %cur, i32 0, i32 2\n"
        "  %j = load ptr, ptr %jslot\n"
        "  %nojoin = icmp eq ptr %j, null\n"
        "  br i1 %nojoin, label %closeit, label %joinit\n"
        "joinit:\n"
        "  call void @__olang_join_tasks(ptr %j)\n"
        "  br label %closeit\n"
        "closeit:\n"
        "  %sslot = getelementptr %olang.unwind, ptr %cur, i32 0, i32 1\n"
        "  %s = load ptr, ptr %sslot\n"
        "  call void @__olang_scope_close(ptr %s)\n"
        "  %pslot = getelementptr %olang.unwind, ptr %cur, i32 0, i32 0\n"
        "  %p = load ptr, ptr %pslot\n"
        "  store ptr %p, ptr @__olang_unwind_top\n"
        "  br label %loop\n"
        "done:\n"
        "  ret void\n"
        "}\n\n", out);
    fputs(
        //prepends one { instance, dtorFn } node onto scope's own dtor list - walked in
        //@__olang_scope_close below, in the same LIFO order registration happens in, right before that
        //scope's chunks are reclaimed. The node is bump-allocated out of the scope's OWN arena rather than
        //given its own @malloc: the arena strictly outlives every node it holds (the dtor walk runs before
        //any chunk is reclaimed) and is returned to the pool wholesale, so this turns a malloc/free pair
        //per registered instance into a pointer bump and nothing at all. LLVM cannot make this change
        //itself - the node escapes into a list reachable from the scope, so it can prove nothing about it.
        "define linkonce_odr void @__olang_scope_register_dtor(ptr %scope0, ptr %instance, ptr %dtorFn) {\n"
        "entry:\n"
        "  %scope = call ptr @__olang_scope_mine(ptr %scope0)\n"
        "  %node = call ptr @__olang_scope_alloc_a(ptr %scope, i64 24, i64 8)\n"
        "  %dheadptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 1\n"
        "  %oldhead = load ptr, ptr %dheadptr\n"
        "  %nextptr = getelementptr %olang.dtornode, ptr %node, i32 0, i32 0\n"
        "  store ptr %oldhead, ptr %nextptr\n"
        "  %instptr = getelementptr %olang.dtornode, ptr %node, i32 0, i32 1\n"
        "  store ptr %instance, ptr %instptr\n"
        "  %fnptr = getelementptr %olang.dtornode, ptr %node, i32 0, i32 2\n"
        "  store ptr %dtorFn, ptr %fnptr\n"
        "  store ptr %node, ptr %dheadptr\n"
        "  ret void\n"
        "}\n\n"
        //P2: folds a task's sub-scope back into the scope it stands for, on the spawner's thread, after
        //the join - so the only thread that ever bumps a given arena is the one that owns it. Nothing is
        //copied or moved: the two chunk lists are relinked, and the sub-scope's dtor nodes (which live in
        //its own chunks) go in FRONT of the parent's, so instances a task built are destructed before the
        //ones that were already there when it was spawned - the same LIFO order a sequential call gives.
        //The chunk splice is O(1) off the recorded tail; the dtor splice walks the sub-scope's own nodes
        //only, of which there is one per destructor-bearing instance the task constructed.
        //What it folds into is what it stands in for as this thread reaches it now: one that was itself a stand-in folded
        //already is followed to what it forwards to (a closure a task handed back may hold one, and a later task's
        //stand-in then has it for its parent) - spliced into the forwarder, the chunks and destructors would sit in a
        //header no one closes, and it would stop forwarding. Null: no stand-in (the program's scope, __olang_standin)
        "define linkonce_odr void @__olang_scope_merge(ptr %src) {\n"
        "entry:\n"
        "  %none = icmp eq ptr %src, null\n"
        "  br i1 %none, label %ret, label %go\n"
        "ret:\n"
        "  ret void\n"
        "go:\n"
        "  %parentp = getelementptr %olang.scope, ptr %src, i32 0, i32 5\n"
        "  %parent = load ptr, ptr %parentp\n"
        "  %dst = call ptr @__olang_scope_mine(ptr %parent)\n"
        "  %sdheadptr = getelementptr %olang.scope, ptr %src, i32 0, i32 1\n"
        "  %sdhead = load ptr, ptr %sdheadptr\n"
        "  %nodtors = icmp eq ptr %sdhead, null\n"
        "  br i1 %nodtors, label %chunks, label %dwalk\n"
        "dwalk:\n"
        "  %dcur = phi ptr [ %sdhead, %go ], [ %dnext, %dwalk ]\n"
        "  %dnextptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 0\n"
        "  %dnext = load ptr, ptr %dnextptr\n"
        "  %dattail = icmp eq ptr %dnext, null\n"
        "  br i1 %dattail, label %dsplice, label %dwalk\n"
        "dsplice:\n"
        "  %ddheadptr = getelementptr %olang.scope, ptr %dst, i32 0, i32 1\n"
        "  %ddhead = load ptr, ptr %ddheadptr\n"
        "  %dtailnextptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 0\n"
        "  store ptr %ddhead, ptr %dtailnextptr\n"
        "  store ptr %sdhead, ptr %ddheadptr\n"
        "  store ptr null, ptr %sdheadptr\n"
        "  br label %chunks\n"
        "chunks:\n"
        "  %sheadptr = getelementptr %olang.scope, ptr %src, i32 0, i32 0\n"
        "  %shead = load ptr, ptr %sheadptr\n"
        "  %nochunks = icmp eq ptr %shead, null\n"
        "  br i1 %nochunks, label %done, label %splice\n"
        "splice:\n"
        "  %stailptr = getelementptr %olang.scope, ptr %src, i32 0, i32 2\n"
        "  %stail = load ptr, ptr %stailptr\n"
        "  %dheadptr = getelementptr %olang.scope, ptr %dst, i32 0, i32 0\n"
        "  %dhead = load ptr, ptr %dheadptr\n"
        "  %stailnextptr = getelementptr %olang.chunk, ptr %stail, i32 0, i32 0\n"
        "  store ptr %dhead, ptr %stailnextptr\n"
        "  store ptr %shead, ptr %dheadptr\n"
        "  store ptr null, ptr %sheadptr\n"
        "  store ptr null, ptr %stailptr\n"
        //the parent's tail is the oldest chunk it holds, so it only changes when the parent had none
        "  %dstwasempty = icmp eq ptr %dhead, null\n"
        "  br i1 %dstwasempty, label %settail, label %done\n"
        "settail:\n"
        "  %dtailptr = getelementptr %olang.scope, ptr %dst, i32 0, i32 2\n"
        "  store ptr %stail, ptr %dtailptr\n"
        "  br label %done\n"
        //...and from now on forwards to it: a closure made on the task, or the environment copy it was handed, may hold it
        //past the join (its header lives as long as dst does - it was made there)
        "done:\n"
        "  %fheadptr = getelementptr %olang.scope, ptr %src, i32 0, i32 0\n"
        "  store ptr @__olang_fwd_chunk, ptr %fheadptr\n"
        "  %ftailptr = getelementptr %olang.scope, ptr %src, i32 0, i32 2\n"
        "  store ptr %dst, ptr %ftailptr\n"
        "  %fownp = getelementptr %olang.scope, ptr %src, i32 0, i32 3\n"
        "  store atomic ptr @__olang_fwd_chunk, ptr %fownp release, align 8\n"
        "  ret void\n"
        "}\n\n"
        //walks and calls this scope's own dtor-node list first, LIFO - most-recently-registered first, the order a stack
        //unwind would give - then gives each of its chunks to the pool (O8b) and resets the scope to empty
        "", out);
    fputs(
        //(P2: first, every part other threads made of it - __olang_scope_fold_parts)
        "define linkonce_odr void @__olang_scope_close(ptr %scope) alwaysinline {\n"
        "entry:\n"
        "  %fptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 4\n"
        "  %f = load ptr, ptr %fptr\n"
        "  %hasf = icmp ne ptr %f, null\n"
        "  br i1 %hasf, label %parts, label %start\n"
        "parts:\n"
        "  %pdp = getelementptr %olang.scope, ptr %scope, i32 0, i32 1\n"
        "  %pd = load ptr, ptr %pdp\n"
        "  %php = getelementptr %olang.scope, ptr %scope, i32 0, i32 0\n"
        "  %ph = load ptr, ptr %php\n"
        "  %ptp = getelementptr %olang.scope, ptr %scope, i32 0, i32 2\n"
        "  %pt = load ptr, ptr %ptp\n"
        "  %folded = call { ptr, ptr, ptr } @__olang_scope_fold_parts(ptr %f, ptr %pd, ptr %ph, ptr %pt)\n"
        "  %fd = extractvalue { ptr, ptr, ptr } %folded, 0\n"
        "  store ptr %fd, ptr %pdp\n"
        "  %fh = extractvalue { ptr, ptr, ptr } %folded, 1\n"
        "  store ptr %fh, ptr %php\n"
        "  %ft = extractvalue { ptr, ptr, ptr } %folded, 2\n"
        "  store ptr %ft, ptr %ptp\n"
        "  store ptr null, ptr %fptr\n"
        "  br label %start\n"
        "start:\n"
        "  %dheadptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 1\n"
        "  %dhead = load ptr, ptr %dheadptr\n"
        "  store ptr null, ptr %dheadptr\n"
        "  %dempty = icmp eq ptr %dhead, null\n"
        "  br i1 %dempty, label %chunks, label %dwalk\n"
        //C9a: a destructor's own top level is this scope - its instance's, alive until every destructor has run - so
        //what it builds through its instance's fields lives where they lead, and is reclaimed with the rest below. A
        //destructor it registered there (a value it built) runs as it returns, as one in a function's own scope would,
        //before the next of this scope's: those nodes are put in front of the rest of the walk
        "dwalk:\n"
        "  %dcur = phi ptr [ %dhead, %start ], [ %dnext, %dcont ], [ %dmore, %dlink ]\n"
        "  %instptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 1\n"
        "  %inst = load ptr, ptr %instptr\n"
        "  %fnptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 2\n"
        "  %fn = load ptr, ptr %fnptr\n"
        "  call void %fn(ptr %inst, ptr %scope)\n"
        "  %dnextptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 0\n"
        "  %dnext = load ptr, ptr %dnextptr\n"
        //no free: the node lives in this scope's own arena and goes back to the pool with its chunk below
        "  %dmore = load ptr, ptr %dheadptr\n"
        "  %dnone = icmp eq ptr %dmore, null\n"
        "  br i1 %dnone, label %dcont, label %dsplice\n"
        "dsplice:\n"
        "  store ptr null, ptr %dheadptr\n"
        "  br label %dtail\n"
        "dtail:\n"
        "  %dt = phi ptr [ %dmore, %dsplice ], [ %dtn, %dtail ]\n"
        "  %dtnp = getelementptr %olang.dtornode, ptr %dt, i32 0, i32 0\n"
        "  %dtn = load ptr, ptr %dtnp\n"
        "  %dtend = icmp eq ptr %dtn, null\n"
        "  br i1 %dtend, label %dlink, label %dtail\n"
        "dlink:\n"
        "  store ptr %dnext, ptr %dtnp\n"
        "  br label %dwalk\n"
        "dcont:\n"
        "  %datend = icmp eq ptr %dnext, null\n"
        "  br i1 %datend, label %chunks, label %dwalk\n"
        "chunks:\n"
        "  %headptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 0\n"
        "  %head = load ptr, ptr %headptr\n"
        "  %empty = icmp eq ptr %head, null\n"
        "  br i1 %empty, label %done, label %give\n"
        //every chunk to the pool, out of line, so that what is left here is small; and this is always inlined, so a
        //scope's header never escapes into a call and one allocating nothing on a path costs nothing there - its header
        //kept in registers, the close folded away (LLVM's own estimate put it past the threshold for a cold call, and a
        //loop's body scope then cost two stores and two tests every pass). The tail needs no reset: it is read only
        //while the list is not empty, and set when the list next stops being empty
        "give:\n"
        "  store ptr null, ptr %headptr\n", out);
    //-s: no chunk a scope gives back is reused at once - it is poisoned and held out of reach for a while
    if (san) {
        fputs("  call void @__olang_san_quarantine_list(ptr %head)\n"
              "  br label %done\n"
              "done:\n"
              "  ret void\n"
              "}\n\n", out);
        return;
    }
    fputs(
        //one 4KB chunk, and no spare: it becomes the spare, here
        "  %hnextptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 0\n"
        "  %hnext = load ptr, ptr %hnextptr\n"
        "  %single = icmp eq ptr %hnext, null\n"
        "  %hclassptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 5\n"
        "  %hclass = load i64, ptr %hclassptr\n"
        "  %hsmall = icmp eq i64 %hclass, 0\n"
        "  %spare = load ptr, ptr @__olang_pool_spare\n"
        "  %nospare = icmp eq ptr %spare, null\n"
        "  %one = and i1 %single, %hsmall\n"
        "  %quick = and i1 %one, %nospare\n"
        "  br i1 %quick, label %tospare, label %list\n"
        "tospare:\n"
        "  store ptr %head, ptr @__olang_pool_spare\n"
        "  br label %done\n"
        "list:\n"
        "  call void @__olang_pool_give_list(ptr %head)\n"
        "  br label %done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n", out);
}

//E11a: a float's text (@__olang_fmt_float and what it needs, the powers of ten among them) - written only into an object
//that renders a float, since the powers alone are 11KB of data no other object reads
void emitFloatTextRuntime(FILE* out) {
    fputs(
        //E11a: a float's text by trying - the fewest digits p for which "%.*e" (p - 1) reads back, rounded to the type,
        //as v; then laid out as "%.17g" would. An infinity or a NaN is "%.17g"'s own. v - v is 0 exactly when v is
        //finite. Up to seventeen tries, so @__olang_fmt_float (below) computes the digits directly and comes here only
        //for the tiniest values, where the two agree - floatShortestByTries in util.c is this in C
        "@__olang_fmt_e = linkonce_odr unnamed_addr constant [5 x i8] c\"%.*e\\00\"\n"
        "@__olang_fmt_s = linkonce_odr unnamed_addr constant [3 x i8] c\"%s\\00\"\n"
        "@__olang_fmt_fpad = linkonce_odr unnamed_addr constant [15 x i8] c\"%.*s%c%.*s%.*s\\00\"\n"
        "@__olang_fmt_fmid = linkonce_odr unnamed_addr constant [16 x i8] c\"%.*s%c%.*s.%.*s\\00\"\n"
        "@__olang_fmt_fsmall = linkonce_odr unnamed_addr constant [17 x i8] c\"%.*s0.%.*s%c%.*s\\00\"\n"
        "@__olang_fmt_minus = linkonce_odr unnamed_addr constant [2 x i8] c\"-\\00\"\n"
        "@__olang_fmt_zeros = linkonce_odr unnamed_addr constant [20 x i8] c\"0000000000000000000\\00\"\n"
        "define linkonce_odr i64 @__olang_fmt_float_tries(ptr %buf, i64 %cap, double %v, i32 %kind) {\n"
        "entry:\n"
        "  %e = alloca [40 x i8]\n"
        "  %vv = fsub double %v, %v\n"
        "  %fin = fcmp oeq double %vv, 0.0\n"
        "  br i1 %fin, label %try, label %special\n"
        //every NaN renders as "nan": snprintf would print the sign, which for a NaN an operation made is unspecified
        //(E33a) - LLVM folds 0/0 to +NaN where x86 computes -NaN
        "special:\n"
        "  %isnan = fcmp uno double %v, %v\n"
        "  %w = select i1 %isnan, double 0x7FF8000000000000, double %v\n"
        "  %ns = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_g, double %w)\n"
        "  %ns64 = sext i32 %ns to i64\n"
        "  ret i64 %ns64\n"
        "try:\n"
        "  %p = phi i32 [ 1, %entry ], [ %p1, %next ]\n"
        "  %pm1 = sub i32 %p, 1\n"
        "  %ne = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %e, i64 40, ptr @__olang_fmt_e, i32 %pm1, double %v)\n"
        "  %back = call double @strtod(ptr %e, ptr null)\n"
        "  switch i32 %kind, label %r64 [ i32 1, label %r32 i32 2, label %r16 i32 3, label %rb16 ]\n"
        "r32:\n"
        "  %t32 = fptrunc double %back to float\n"
        "  %w32 = fpext float %t32 to double\n"
        "  br label %cmp\n"
        "r16:\n"
        "  %t16 = fptrunc double %back to half\n"
        "  %w16 = fpext half %t16 to double\n"
        "  br label %cmp\n"
        "rb16:\n"
        "  %tb16 = fptrunc double %back to bfloat\n"
        "  %wb16 = fpext bfloat %tb16 to double\n"
        "  br label %cmp\n"
        "r64:\n"
        "  br label %cmp\n"
        "cmp:\n"
        "  %r = phi double [ %w32, %r32 ], [ %w16, %r16 ], [ %wb16, %rb16 ], [ %back, %r64 ]\n"
        "  %same = fcmp oeq double %r, %v\n"
        "  %last = icmp sge i32 %p, 17\n"
        "  %stop = or i1 %same, %last\n"
        "  br i1 %stop, label %found, label %next\n"
        "next:\n"
        "  %p1 = add i32 %p, 1\n"
        "  br label %try\n"
        //e is "[-]d[.ddd]e+XX" with p digits: the sign, the first digit, the rest from s + 2, the exponent after the e
        "found:\n"
        "  %c0 = load i8, ptr %e\n"
        "  %neg = icmp eq i8 %c0, 45\n"
        "  %negi = zext i1 %neg to i32\n"
        "  %neg64 = zext i1 %neg to i64\n"
        "  %s = getelementptr i8, ptr %e, i64 %neg64\n"
        "  %d1 = load i8, ptr %s\n"
        "  %d1i = zext i8 %d1 to i32\n"
        "  %rest = getelementptr i8, ptr %s, i64 2\n"
        "  %onedig = icmp eq i32 %p, 1\n"
        "  %p64 = sext i32 %p to i64\n"
        "  %pp1 = add i64 %p64, 1\n"
        "  %eoff = select i1 %onedig, i64 1, i64 %pp1\n"
        "  %eat = getelementptr i8, ptr %s, i64 %eoff\n"
        "  %xat = getelementptr i8, ptr %eat, i64 1\n"
        "  %x64 = call i64 @strtol(ptr %xat, ptr null, i32 10)\n"
        "  %x = trunc i64 %x64 to i32\n"
        "  %xlo = icmp slt i32 %x, -4\n"
        "  %xhi = icmp sge i32 %x, 17\n"
        "  %sci = or i1 %xlo, %xhi\n"
        "  br i1 %sci, label %wsci, label %fixed\n"
        "wsci:\n"
        "  %n1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_s, ptr %e)\n"
        "  br label %out\n"
        "fixed:\n"
        "  %pad = icmp sge i32 %x, %pm1\n"
        "  br i1 %pad, label %wpad, label %notpad\n"
        "wpad:\n"
        "  %z = sub i32 %x, %pm1\n"
        "  %n2 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_fpad, i32 %negi, "
            "ptr @__olang_fmt_minus, i32 %d1i, i32 %pm1, ptr %rest, i32 %z, ptr @__olang_fmt_zeros)\n"
        "  br label %out\n"
        "notpad:\n"
        "  %pos = icmp sge i32 %x, 0\n"
        "  br i1 %pos, label %wmid, label %wsmall\n"
        "wmid:\n"
        "  %xs = sext i32 %x to i64\n"
        "  %tail = getelementptr i8, ptr %rest, i64 %xs\n"
        "  %tn = sub i32 %pm1, %x\n"
        "  %n3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_fmid, i32 %negi, "
            "ptr @__olang_fmt_minus, i32 %d1i, i32 %x, ptr %rest, i32 %tn, ptr %tail)\n"
        "  br label %out\n"
        "wsmall:\n"
        "  %nz = sub i32 -1, %x\n"
        "  %n4 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %buf, i64 %cap, ptr @__olang_fmt_fsmall, i32 %negi, "
            "ptr @__olang_fmt_minus, i32 %nz, ptr @__olang_fmt_zeros, i32 %d1i, i32 %pm1, ptr %rest)\n"
        "  br label %out\n"
        "out:\n"
        "  %n = phi i32 [ %n1, %wsci ], [ %n2, %wpad ], [ %n3, %wmid ], [ %n4, %wsmall ]\n"
        "  %n64 = sext i32 %n to i64\n"
        "  ret i64 %n64\n"
        "}\n\n", out);
    fputs("@__olang_pow10m = linkonce_odr unnamed_addr constant [1392 x i64] [", out);
    for (int i = 0; i < 1392; i++) fprintf(out, "%si64 %lld", i ? ", " : "", (long long)FloatPow10[i]);
    fputs("]\n", out);
    fputs(
        //E11a: Schubfach (Giulietti) - FloatSchubfach (util.c) written in IR, with the same powers of ten, so the run
        //time and the evaluator compute the same digits. The rounded-to-odd top bits of g * cp, g = g1 * 2^63 + g0:
        "define linkonce_odr i64 @__olang_rop(i64 %g1, i64 %g0, i64 %cp) {\n"
        "entry:\n"
        "  %g0w = zext i64 %g0 to i128\n"
        "  %cpw = zext i64 %cp to i128\n"
        "  %x = mul i128 %g0w, %cpw\n"
        "  %xs = lshr i128 %x, 64\n"
        "  %x1 = trunc i128 %xs to i64\n"
        "  %g1w = zext i64 %g1 to i128\n"
        "  %y = mul i128 %g1w, %cpw\n"
        "  %ys = lshr i128 %y, 64\n"
        "  %y1 = trunc i128 %ys to i64\n"
        "  %y0 = trunc i128 %y to i64\n"
        "  %y0s = lshr i64 %y0, 1\n"
        "  %z = add i64 %y0s, %x1\n"
        "  %z63 = lshr i64 %z, 63\n"
        "  %vbp = add i64 %y1, %z63\n"
        "  %zm = and i64 %z, 9223372036854775807\n"
        "  %zp = add i64 %zm, 9223372036854775807\n"
        "  %st = lshr i64 %zp, 63\n"
        "  %r = or i64 %vbp, %st\n"
        "  ret i64 %r\n"
        "}\n\n"
        , out);
    fputs(
        //the shortest decimal f * 10^e in the rounding interval of c * 2^q (p significant bits, qmin the subnormals'
        //exponent), the closest to it of those - { f, e, true } - else, for the tiniest c, { _, _, false }
        "define linkonce_odr { i64, i32, i1 } @__olang_shortest(i64 %c, i32 %q, i32 %p, i32 %qmin) {\n"
        "entry:\n"
        "  %tiny = icmp ult i64 %c, 8\n"
        "  br i1 %tiny, label %fail, label %go\n"
        "go:\n"
        "  %out = and i64 %c, 1\n"
        "  %cb = shl i64 %c, 2\n"
        "  %cbr = add i64 %cb, 2\n"
        "  %pm1 = sub i32 %p, 1\n"
        "  %pm1w = zext i32 %pm1 to i64\n"
        "  %pow = shl i64 1, %pm1w\n"
        "  %ispow = icmp eq i64 %c, %pow\n"
        "  %notmin = icmp ne i32 %q, %qmin\n"
        "  %lop = and i1 %ispow, %notmin\n"
        "  %q64 = sext i32 %q to i64\n"
        "  %qk = mul i64 %q64, 661971961083\n"
        "  %qk2 = sub i64 %qk, 274743187321\n"
        "  %kin = select i1 %lop, i64 %qk2, i64 %qk\n"
        "  %k = ashr i64 %kin, 41\n"
        "  %cbl1 = sub i64 %cb, 2\n"
        "  %cbl2 = sub i64 %cb, 1\n"
        "  %cbl = select i1 %lop, i64 %cbl2, i64 %cbl1\n"
        "  %nk = sub i64 0, %k\n"
        "  %hk = mul i64 %nk, 913124641741\n"
        "  %hk2 = ashr i64 %hk, 38\n"
        "  %h0 = add i64 %q64, %hk2\n"
        "  %h = add i64 %h0, 2\n"
        "  %rowa = sub i64 348, %k\n"
        "  %row = shl i64 %rowa, 1\n"
        "  %hp = getelementptr [1392 x i64], ptr @__olang_pow10m, i64 0, i64 %row\n"
        "  %hi = load i64, ptr %hp\n"
        "  %row1 = add i64 %row, 1\n"
        "  %lp = getelementptr [1392 x i64], ptr @__olang_pow10m, i64 0, i64 %row1\n"
        "  %lo = load i64, ptr %lp\n"
        "  %gh0 = lshr i64 %hi, 2\n"
        "  %lo2 = lshr i64 %lo, 2\n"
        "  %hi62 = shl i64 %hi, 62\n"
        "  %gl0 = or i64 %lo2, %hi62\n"
        "  %gl = add i64 %gl0, 1\n"
        "  %glz = icmp eq i64 %gl, 0\n"
        "  %ghc = zext i1 %glz to i64\n"
        "  %gh = add i64 %gh0, %ghc\n"
        "  %gh1 = shl i64 %gh, 1\n"
        "  %gl63 = lshr i64 %gl, 63\n"
        "  %g1 = or i64 %gh1, %gl63\n"
        "  %g0 = and i64 %gl, 9223372036854775807\n"
        "  %cbh = shl i64 %cb, %h\n"
        "  %cblh = shl i64 %cbl, %h\n"
        "  %cbrh = shl i64 %cbr, %h\n"
        "  %vb = call i64 @__olang_rop(i64 %g1, i64 %g0, i64 %cbh)\n"
        "  %vbl = call i64 @__olang_rop(i64 %g1, i64 %g0, i64 %cblh)\n"
        "  %vbr = call i64 @__olang_rop(i64 %g1, i64 %g0, i64 %cbrh)\n"
        "  %vblo = add i64 %vbl, %out\n"
        "  %s = lshr i64 %vb, 2\n"
        "  %big = icmp uge i64 %s, 10\n"
        "  br i1 %big, label %ten, label %one\n"
        //one digit fewer: the multiples of ten either side of v
        "ten:\n"
        "  %s10 = udiv i64 %s, 10\n"
        "  %sp10 = mul i64 %s10, 10\n"
        "  %tp10 = add i64 %sp10, 10\n"
        "  %sp4 = shl i64 %sp10, 2\n"
        "  %upin = icmp ule i64 %vblo, %sp4\n"
        "  %tp4 = shl i64 %tp10, 2\n"
        "  %tp4o = add i64 %tp4, %out\n"
        "  %wpin = icmp ule i64 %tp4o, %vbr\n"
        "  %both = and i1 %upin, %wpin\n"
        "  br i1 %both, label %fail, label %ten2\n"
        "ten2:\n"
        "  %either = or i1 %upin, %wpin\n"
        "  br i1 %either, label %tenok, label %one\n"
        "tenok:\n"
        "  %ften = select i1 %upin, i64 %sp10, i64 %tp10\n"
        "  br label %found\n"
        "one:\n"
        "  %t = add i64 %s, 1\n"
        "  %s4 = shl i64 %s, 2\n"
        "  %uin = icmp ule i64 %vblo, %s4\n"
        "  %t4 = shl i64 %t, 2\n"
        "  %t4o = add i64 %t4, %out\n"
        "  %win = icmp ule i64 %t4o, %vbr\n"
        "  %st = add i64 %s, %t\n"
        "  %st2 = shl i64 %st, 1\n"
        "  %cmp = sub i64 %vb, %st2\n"
        "  %clt = icmp slt i64 %cmp, 0\n"
        "  %ceq = icmp eq i64 %cmp, 0\n"
        "  %so = and i64 %s, 1\n"
        "  %se = icmp eq i64 %so, 0\n"
        "  %ctie = and i1 %ceq, %se\n"
        "  %low1 = or i1 %clt, %ctie\n"
        "  %ok1 = or i1 %uin, %win\n"
        "  %oneof = xor i1 %uin, %win\n"
        "  %pick = select i1 %oneof, i1 %uin, i1 %low1\n"
        "  %fone = select i1 %pick, i64 %s, i64 %t\n"
        "  br i1 %ok1, label %found, label %fail\n"
        "found:\n"
        "  %f = phi i64 [ %ften, %tenok ], [ %fone, %one ]\n"
        "  %k32 = trunc i64 %k to i32\n"
        "  %r0 = insertvalue { i64, i32, i1 } undef, i64 %f, 0\n"
        "  %r1 = insertvalue { i64, i32, i1 } %r0, i32 %k32, 1\n"
        "  %r2 = insertvalue { i64, i32, i1 } %r1, i1 true, 2\n"
        "  ret { i64, i32, i1 } %r2\n"
        "fail:\n"
        "  ret { i64, i32, i1 } { i64 0, i32 0, i1 false }\n"
        "}\n\n"
        , out);
    fputs(
        //E11a: a float as the shortest text reading back as it in its own type (kind: 0 F64, 1 F32, 2 F16, 3 BF16 -
        //enum floatKind): its significand and exponent in that type, Schubfach's digits, then laid out as "%.17g" lays
        //a number out - positional for a decimal exponent in [-4, 17), "d.ddde+XX" otherwise. For the tiniest values,
        //and an infinity or a NaN, @__olang_fmt_float_tries. snprintf's contract:
        //the length is returned, and with a buffer of cap bytes as much as fits is written, then a NUL
        "define linkonce_odr i64 @__olang_fmt_float(ptr %buf, i64 %cap, double %v, i32 %kind) {\n"
        "entry:\n"
        "  %d = alloca [24 x i8]\n"
        "  %o = alloca [48 x i8]\n"
        "  %vv = fsub double %v, %v\n"
        "  %fin = fcmp oeq double %vv, 0.0\n"
        "  br i1 %fin, label %finite, label %tries\n"
        "tries:\n"
        "  %tn = call i64 @__olang_fmt_float_tries(ptr %buf, i64 %cap, double %v, i32 %kind)\n"
        "  ret i64 %tn\n"
        "finite:\n"
        "  %bits = bitcast double %v to i64\n"
        "  %neg = icmp slt i64 %bits, 0\n"
        "  %negi = zext i1 %neg to i64\n"
        "  store i8 45, ptr %o\n"
        "  %isz = fcmp oeq double %v, 0.0\n"
        "  br i1 %isz, label %zero, label %parts\n"
        "zero:\n"
        "  %oz0 = getelementptr i8, ptr %o, i64 %negi\n"
        "  store i8 48, ptr %oz0\n"
        "  %zlen = add i64 %negi, 1\n"
        "  br label %copy\n"
        "parts:\n"
        "  switch i32 %kind, label %k64 [ i32 1, label %k32 i32 2, label %k16 i32 3, label %kb16 ]\n"
        "k64:\n"
        "  %e64s = lshr i64 %bits, 52\n"
        "  %e64 = and i64 %e64s, 2047\n"
        "  %m64 = and i64 %bits, 4503599627370495\n"
        "  br label %kc\n"
        "k32:\n"
        "  %f32 = fptrunc double %v to float\n"
        "  %b32 = bitcast float %f32 to i32\n"
        "  %b32w = zext i32 %b32 to i64\n"
        "  %e32s = lshr i64 %b32w, 23\n"
        "  %e32 = and i64 %e32s, 255\n"
        "  %m32 = and i64 %b32w, 8388607\n"
        "  br label %kc\n"
        "k16:\n"
        "  %f16 = fptrunc double %v to half\n"
        "  %b16 = bitcast half %f16 to i16\n"
        "  %b16w = zext i16 %b16 to i64\n"
        "  %e16s = lshr i64 %b16w, 10\n"
        "  %e16 = and i64 %e16s, 31\n"
        "  %m16 = and i64 %b16w, 1023\n"
        "  br label %kc\n"
        "kb16:\n"
        "  %fb16 = fptrunc double %v to bfloat\n"
        "  %bb16 = bitcast bfloat %fb16 to i16\n"
        "  %bb16w = zext i16 %bb16 to i64\n"
        "  %eb16s = lshr i64 %bb16w, 7\n"
        "  %eb16 = and i64 %eb16s, 255\n"
        "  %mb16 = and i64 %bb16w, 127\n"
        "  br label %kc\n"
        , out);
    fputs(
        //the type's exponent field, its fraction, its implicit bit, its bias plus its fraction's width, the
        //subnormals' exponent and its precision
        "kc:\n"
        "  %ex = phi i64 [ %e64, %k64 ], [ %e32, %k32 ], [ %e16, %k16 ], [ %eb16, %kb16 ]\n"
        "  %mn = phi i64 [ %m64, %k64 ], [ %m32, %k32 ], [ %m16, %k16 ], [ %mb16, %kb16 ]\n"
        "  %impl = phi i64 [ 4503599627370496, %k64 ], [ 8388608, %k32 ], [ 1024, %k16 ], [ 128, %kb16 ]\n"
        "  %off = phi i64 [ 1075, %k64 ], [ 150, %k32 ], [ 25, %k16 ], [ 134, %kb16 ]\n"
        "  %qmin = phi i32 [ -1074, %k64 ], [ -149, %k32 ], [ -24, %k16 ], [ -133, %kb16 ]\n"
        "  %prec = phi i32 [ 53, %k64 ], [ 24, %k32 ], [ 11, %k16 ], [ 8, %kb16 ]\n"
        "  %sub = icmp eq i64 %ex, 0\n"
        "  %cn = or i64 %mn, %impl\n"
        "  %c = select i1 %sub, i64 %mn, i64 %cn\n"
        "  %ex1 = select i1 %sub, i64 1, i64 %ex\n"
        "  %q64 = sub i64 %ex1, %off\n"
        "  %q = trunc i64 %q64 to i32\n"
        "  %r = call { i64, i32, i1 } @__olang_shortest(i64 %c, i32 %q, i32 %prec, i32 %qmin)\n"
        "  %ok = extractvalue { i64, i32, i1 } %r, 2\n"
        "  br i1 %ok, label %strip, label %tries\n"
        "strip:\n"
        "  %f0 = extractvalue { i64, i32, i1 } %r, 0\n"
        "  %e0 = extractvalue { i64, i32, i1 } %r, 1\n"
        "  br label %sloop\n"
        "sloop:\n"
        "  %f = phi i64 [ %f0, %strip ], [ %fq, %sdiv ]\n"
        "  %e = phi i32 [ %e0, %strip ], [ %e1, %sdiv ]\n"
        "  %fq = udiv i64 %f, 10\n"
        "  %fr = mul i64 %fq, 10\n"
        "  %zr = icmp eq i64 %fr, %f\n"
        "  br i1 %zr, label %sdiv, label %digits\n"
        "sdiv:\n"
        "  %e1 = add i32 %e, 1\n"
        "  br label %sloop\n"
        , out);
    fputs(
        //d holds the n digits; x is the decimal exponent of the first
        "digits:\n"
        "  %n64 = call i64 @__olang_fmt_u64(ptr %d, i64 %f)\n"
        "  %n = trunc i64 %n64 to i32\n"
        "  %nm1 = sub i32 %n, 1\n"
        "  %x = add i32 %e, %nm1\n"
        "  %xlo = icmp slt i32 %x, -4\n"
        "  %xhi = icmp sge i32 %x, 17\n"
        "  %sci = or i1 %xlo, %xhi\n"
        "  br i1 %sci, label %wsci, label %fixed\n"
        "wsci:\n"
        "  %o1 = getelementptr i8, ptr %o, i64 %negi\n"
        "  %d0 = load i8, ptr %d\n"
        "  store i8 %d0, ptr %o1\n"
        "  %w1 = add i64 %negi, 1\n"
        "  %many = icmp sgt i32 %n, 1\n"
        "  br i1 %many, label %sfrac, label %sexp\n"
        "sfrac:\n"
        "  %o2 = getelementptr i8, ptr %o, i64 %w1\n"
        "  store i8 46, ptr %o2\n"
        "  %w2 = add i64 %w1, 1\n"
        "  %o3 = getelementptr i8, ptr %o, i64 %w2\n"
        "  %d1 = getelementptr i8, ptr %d, i64 1\n"
        "  %nm164 = zext i32 %nm1 to i64\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %o3, ptr %d1, i64 %nm164, i1 false)\n"
        "  %w3 = add i64 %w2, %nm164\n"
        "  br label %sexp\n"
        "sexp:\n"
        "  %ws = phi i64 [ %w1, %wsci ], [ %w3, %sfrac ]\n"
        "  %oe = getelementptr i8, ptr %o, i64 %ws\n"
        "  store i8 101, ptr %oe\n"
        "  %xneg = icmp slt i32 %x, 0\n"
        "  %sgn = select i1 %xneg, i8 45, i8 43\n"
        "  %ws1 = add i64 %ws, 1\n"
        "  %osg = getelementptr i8, ptr %o, i64 %ws1\n"
        "  store i8 %sgn, ptr %osg\n"
        "  %ws2 = add i64 %ws, 2\n"
        "  %xn = sub i32 0, %x\n"
        "  %ax = select i1 %xneg, i32 %xn, i32 %x\n"
        "  %ax64 = zext i32 %ax to i64\n"
        "  %small = icmp ult i32 %ax, 10\n"
        "  br i1 %small, label %epad, label %enum\n"
        "epad:\n"
        "  %oz = getelementptr i8, ptr %o, i64 %ws2\n"
        "  store i8 48, ptr %oz\n"
        "  %ws3 = add i64 %ws2, 1\n"
        "  br label %enum\n"
        "enum:\n"
        "  %wx = phi i64 [ %ws2, %sexp ], [ %ws3, %epad ]\n"
        "  %ox = getelementptr i8, ptr %o, i64 %wx\n"
        "  %nx = call i64 @__olang_fmt_u64(ptr %ox, i64 %ax64)\n"
        "  %wend1 = add i64 %wx, %nx\n"
        "  br label %copy\n"
        "fixed:\n"
        "  %pad = icmp sge i32 %x, %nm1\n"
        "  br i1 %pad, label %wpad, label %notpad\n"
        , out);
    fputs(
        //the digits, then x + 1 - n zeros
        "wpad:\n"
        "  %op = getelementptr i8, ptr %o, i64 %negi\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %op, ptr %d, i64 %n64, i1 false)\n"
        "  %wp = add i64 %negi, %n64\n"
        "  %zc = sub i32 %x, %nm1\n"
        "  %zc64 = zext i32 %zc to i64\n"
        "  %oz2 = getelementptr i8, ptr %o, i64 %wp\n"
        "  call void @llvm.memset.p0.i64(ptr %oz2, i8 48, i64 %zc64, i1 false)\n"
        "  %wend2 = add i64 %wp, %zc64\n"
        "  br label %copy\n"
        "notpad:\n"
        "  %pos = icmp sge i32 %x, 0\n"
        "  br i1 %pos, label %wmid, label %wsmall\n"
        //the first x + 1 digits, a point, the rest
        "wmid:\n"
        "  %x1 = add i32 %x, 1\n"
        "  %x164 = zext i32 %x1 to i64\n"
        "  %om = getelementptr i8, ptr %o, i64 %negi\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %om, ptr %d, i64 %x164, i1 false)\n"
        "  %wm = add i64 %negi, %x164\n"
        "  %odot = getelementptr i8, ptr %o, i64 %wm\n"
        "  store i8 46, ptr %odot\n"
        "  %wm1 = add i64 %wm, 1\n"
        "  %rest = sub i64 %n64, %x164\n"
        "  %drest = getelementptr i8, ptr %d, i64 %x164\n"
        "  %om2 = getelementptr i8, ptr %o, i64 %wm1\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %om2, ptr %drest, i64 %rest, i1 false)\n"
        "  %wend3 = add i64 %wm1, %rest\n"
        "  br label %copy\n"
        //"0.", then -x - 1 zeros, then the digits
        "wsmall:\n"
        "  %os = getelementptr i8, ptr %o, i64 %negi\n"
        "  store i8 48, ptr %os\n"
        "  %wsa = add i64 %negi, 1\n"
        "  %osd = getelementptr i8, ptr %o, i64 %wsa\n"
        "  store i8 46, ptr %osd\n"
        "  %wsb = add i64 %negi, 2\n"
        "  %zs = sub i32 -1, %x\n"
        "  %zs64 = zext i32 %zs to i64\n"
        "  %osz = getelementptr i8, ptr %o, i64 %wsb\n"
        "  call void @llvm.memset.p0.i64(ptr %osz, i8 48, i64 %zs64, i1 false)\n"
        "  %wsc = add i64 %wsb, %zs64\n"
        "  %osdg = getelementptr i8, ptr %o, i64 %wsc\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %osdg, ptr %d, i64 %n64, i1 false)\n"
        "  %wend4 = add i64 %wsc, %n64\n"
        "  br label %copy\n"
        "copy:\n"
        "  %len = phi i64 [ %zlen, %zero ], [ %wend1, %enum ], [ %wend2, %wpad ], [ %wend3, %wmid ], [ %wend4, %wsmall ]\n"
        "  %hasbuf = icmp ne ptr %buf, null\n"
        "  %hascap = icmp ne i64 %cap, 0\n"
        "  %wr = and i1 %hasbuf, %hascap\n"
        "  br i1 %wr, label %write, label %done\n"
        "write:\n"
        "  %capm1 = sub i64 %cap, 1\n"
        "  %fits = icmp ult i64 %len, %cap\n"
        "  %cnt = select i1 %fits, i64 %len, i64 %capm1\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %buf, ptr %o, i64 %cnt, i1 false)\n"
        "  %nul = getelementptr i8, ptr %buf, i64 %cnt\n"
        "  store i8 0, ptr %nul\n"
        "  br label %done\n"
        "done:\n"
        "  ret i64 %len\n"
        "}\n\n"
        "", out);
}

//a number of `bytes` bytes at `off` in the struct at %base, as an i64 named %name - sign- or zero-extended as the C
//field is signed or not
static void cgOsLoadField(FILE* out, const char* name, const char* base, size_t off, size_t bytes, bool isSigned) {
    int bits = (int)bytes * 8;
    fprintf(out, "  %%%s.p = getelementptr i8, ptr %%%s, i64 %zu\n", name, base, off);
    fprintf(out, "  %%%s.v = load i%d, ptr %%%s.p\n", name, bits, name);
    if (bits == 64) fprintf(out, "  %%%s = add i64 %%%s.v, 0\n", name, name);
    else fprintf(out, "  %%%s = %s i%d %%%s.v to i64\n", name, isSigned ? "sext" : "zext", bits, name);
}

/* §11 X6, B12a: what the runtime reads of the C library's structures, on each architecture it builds for - Linux with
 * the GNU C library, 64-bit: struct stat (its size, and where st_mode, st_size and st_mtim's two parts are), where
 * struct dirent's d_name is, and the size of a posix_spawn_file_actions_t. The constants the runtime uses besides - the
 * S_IF* file kinds, the errno values (OsErrClasses) and EINVAL - are the kernel's, one set for every architecture here.
 * Written down rather than taken from this compiler's own headers, which describe only the machine it runs on - and
 * checked against them for that machine, below, so the row a build for this machine uses is the C library's own. */
struct cgLibcLayout {
    const char* arch;
    size_t statSize, mode, modeSize, size, mtimSec, mtimNsec, direntName, spawnActions;
    //S1, S2: a pthread_attr_t's size, a jmp_buf's, a struct sigaction's and where its sa_flags are
    size_t attrSize, jmpBuf, sigactionSize, saFlags;
    //S3: libffi's default calling convention (FFI_DEFAULT_ABI), whose number is the architecture's
    int ffiAbi;
};
static const struct cgLibcLayout cgLibcLayouts[] = {
    { "x86_64", 144, 24, 4, 48, 88, 96, 19, 80, 56, 200, 152, 136, 2 },
    { "aarch64", 128, 16, 4, 48, 88, 96, 19, 80, 64, 312, 152, 136, 1 },
};
#if defined(__x86_64__) && defined(__linux__) && defined(__GLIBC__)
#define CG_HOST_LAYOUT 0
#elif defined(__aarch64__) && defined(__linux__) && defined(__GLIBC__)
#define CG_HOST_LAYOUT 1
#endif
#ifdef CG_HOST_LAYOUT
_Static_assert(sizeof(struct stat) == (CG_HOST_LAYOUT ? 128 : 144), "struct stat's size");
_Static_assert(offsetof(struct stat, st_mode) == (CG_HOST_LAYOUT ? 16 : 24), "st_mode's offset");
_Static_assert(sizeof(((struct stat*)0)->st_mode) == 4, "st_mode's size");
_Static_assert(offsetof(struct stat, st_size) == 48 && sizeof(((struct stat*)0)->st_size) == 8, "st_size");
_Static_assert(offsetof(struct stat, st_mtim) + offsetof(struct timespec, tv_sec) == 88, "st_mtim.tv_sec");
_Static_assert(offsetof(struct stat, st_mtim) + offsetof(struct timespec, tv_nsec) == 96, "st_mtim.tv_nsec");
_Static_assert(sizeof(((struct stat*)0)->st_mtim.tv_sec) == 8 && sizeof(((struct stat*)0)->st_mtim.tv_nsec) == 8, "st_mtim");
_Static_assert(offsetof(struct dirent, d_name) == 19, "d_name's offset");
_Static_assert(sizeof(posix_spawn_file_actions_t) == 80, "posix_spawn_file_actions_t's size");
_Static_assert(S_IFMT == 0170000 && S_IFREG == 0100000 && S_IFDIR == 0040000 && EINVAL == 22, "the kernel's constants");
_Static_assert(sizeof(pthread_attr_t) == (CG_HOST_LAYOUT ? 64 : 56) && sizeof(pthread_t) == 8, "pthread_attr_t, pthread_t");
_Static_assert(sizeof(jmp_buf) == (CG_HOST_LAYOUT ? 312 : 200), "jmp_buf's size");
_Static_assert(sizeof(struct sigaction) == 152 && offsetof(struct sigaction, sa_flags) == 136
               && sizeof(((struct sigaction*)0)->sa_flags) == 4, "struct sigaction");
_Static_assert(sizeof(stack_t) == 24 && offsetof(stack_t, ss_flags) == 8 && offsetof(stack_t, ss_size) == 16, "stack_t");
_Static_assert(FFI_DEFAULT_ABI == (CG_HOST_LAYOUT ? 1 : 2) && sizeof(ffi_cif) <= 64 && FFI_OK == 0
               && sizeof(ffi_arg) == 8, "libffi's ABI number, an ffi_cif's size");
_Static_assert(RTLD_NOW == 2 && RTLD_GLOBAL == 0x100, "dlopen's flags"); //RTLD_DEFAULT is a null handle on glibc
#endif
//the kernel's and the C library's constants, one set for every architecture here (asm-generic's): the fatal signals
//an OnCrash handler takes, the handler's flags, SS_DISABLE, and sysconf's name for the least stack a thread may have
_Static_assert(SIGILL == 4 && SIGABRT == 6 && SIGBUS == 7 && SIGFPE == 8 && SIGSEGV == 11, "the fatal signals");
_Static_assert(SA_ONSTACK == 0x08000000 && (unsigned)SA_RESETHAND == 0x80000000u && SA_NODEFER == 0x40000000
               && SS_DISABLE == 2, "the handler's flags");

//the row of cgLibcLayouts for architecture arch (TargetArch) - the first, x86_64's, for one it does not list
static const struct cgLibcLayout* cgLibcLayoutFor(const char* arch) {
    const struct cgLibcLayout* L = &cgLibcLayouts[0];
    for (size_t i = 0; i < sizeof(cgLibcLayouts) / sizeof(cgLibcLayouts[0]); i++) {
        if (!strcmp(cgLibcLayouts[i].arch, arch)) L = &cgLibcLayouts[i];
    }
    return L;
}

/* §11 X6 / B4a: what the runtime keeps of the process and offers std through "extern fn" - its command line, its
 * environment, the error the last failing system call left, and the system calls whose C interface hands back a
 * pointer or a struct, which X2 cannot receive. Each copies what it has into a buffer its caller supplies and returns
 * a length (snprintf's contract: the whole length, whatever fitted), so nothing is ever handed back by address. A
 * structure's offsets are the target's (cgLibcLayouts, B12a). -i has its own version of each (comptime.c), since these
 * live in the built program and not in the compiler's process. */
static void emitOsRuntime(FILE* out, const char* arch) {
    const struct cgLibcLayout* L = cgLibcLayoutFor(arch);
    fputs(
        //the command line, saved by "main" before anything else runs - a global initializer may read it (B5a)
        "@__olang_argc = linkonce_odr global i32 0\n"
        "@__olang_argv = linkonce_odr global ptr null\n"
        "declare i64 @strlen(ptr)\n"
        "declare ptr @getenv(ptr)\n"
        "declare ptr @__errno_location()\n"
        "declare i32 @stat(ptr, ptr)\n"
        "declare ptr @opendir(ptr)\n"
        "declare ptr @readdir(ptr)\n"
        "declare i32 @closedir(ptr)\n"
        "declare ptr @realpath(ptr, ptr)\n"
        "declare ptr @mkdtemp(ptr)\n\n"
        //up to cap bytes of the NUL-terminated s into buf, and s's whole length
        "define linkonce_odr i64 @__olang_copy_cstr(ptr %s, ptr %buf, i64 %cap) {\n"
        "entry:\n"
        "  %len = call i64 @strlen(ptr %s)\n"
        "  %pos = icmp sgt i64 %cap, 0\n"
        "  %c = select i1 %pos, i64 %cap, i64 0\n"
        "  %fits = icmp ult i64 %len, %c\n"
        "  %n = select i1 %fits, i64 %len, i64 %c\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %buf, ptr %s, i64 %n, i1 false)\n"
        "  ret i64 %len\n"
        "}\n\n"
        "define linkonce_odr i64 @__olang_arg_count() {\n"
        "entry:\n"
        "  %n = load i32, ptr @__olang_argc\n"
        "  %w = sext i32 %n to i64\n"
        "  ret i64 %w\n"
        "}\n\n"
        //argument i, or -1 past the last
        "define linkonce_odr i64 @__olang_arg(i64 %i, ptr %buf, i64 %cap) {\n"
        "entry:\n"
        "  %n = load i32, ptr @__olang_argc\n"
        "  %w = sext i32 %n to i64\n"
        "  %ok = icmp ult i64 %i, %w\n"
        "  br i1 %ok, label %have, label %none\n"
        "have:\n"
        "  %argv = load ptr, ptr @__olang_argv\n"
        "  %slot = getelementptr ptr, ptr %argv, i64 %i\n"
        "  %s = load ptr, ptr %slot\n"
        "  %len = call i64 @__olang_copy_cstr(ptr %s, ptr %buf, i64 %cap)\n"
        "  ret i64 %len\n"
        "none:\n"
        "  ret i64 -1\n"
        "}\n\n"
        //the variable "name" (NUL-terminated), or -1 when it is not set
        "define linkonce_odr i64 @__olang_env(ptr %name, ptr %buf, i64 %cap) {\n"
        "entry:\n"
        "  %s = call ptr @getenv(ptr %name)\n"
        "  %unset = icmp eq ptr %s, null\n"
        "  br i1 %unset, label %none, label %have\n"
        "have:\n"
        "  %len = call i64 @__olang_copy_cstr(ptr %s, ptr %buf, i64 %cap)\n"
        "  ret i64 %len\n"
        "none:\n"
        "  ret i64 -1\n"
        "}\n\n"
        //the real path of "path" - absolute, with every symbolic link resolved - or -1 (errno says why)
        "define linkonce_odr i64 @__olang_realpath(ptr %path, ptr %buf, i64 %cap) {\n"
        "entry:\n"
        "  %r = call ptr @realpath(ptr %path, ptr null)\n"
        "  %bad = icmp eq ptr %r, null\n"
        "  br i1 %bad, label %fail, label %have\n"
        "have:\n"
        "  %len = call i64 @__olang_copy_cstr(ptr %r, ptr %buf, i64 %cap)\n"
        "  call void @free(ptr %r)\n"
        "  ret i64 %len\n"
        "fail:\n"
        "  ret i64 -1\n"
        "}\n\n"
        //S4: a new directory, named by the NUL-terminated template ending in six X's, which mkdtemp replaces with what
        //makes the name unused - written over the template in place; 0, or -1 when it fails (errno says why)
        "define linkonce_odr i32 @__olang_mkdtemp(ptr %template) {\n"
        "entry:\n"
        "  %r = call ptr @mkdtemp(ptr %template)\n"
        "  %bad = icmp eq ptr %r, null\n"
        "  %v = select i1 %bad, i32 -1, i32 0\n"
        "  ret i32 %v\n"
        "}\n\n", out);

    //the class of the error the last failing call on this thread left in errno - the table -i reads too
    fputs("define linkonce_odr i32 @__olang_err() {\n"
          "entry:\n"
          "  %p = call ptr @__errno_location()\n"
          "  %e = load i32, ptr %p\n", out);
    fputs("  %r0 = add i32 0, 0\n", out);
    for (int i = 0; i < OsErrClassCount; i++) {
        fprintf(out, "  %%is%d = icmp eq i32 %%e, %d\n", i, OsErrClasses[i].errnoVal);
        fprintf(out, "  %%r%d = select i1 %%is%d, i32 %d, i32 %%r%d\n", i + 1, i, OsErrClasses[i].cls, i);
    }
    fprintf(out, "  ret i32 %%r%d\n}\n\n", OsErrClassCount);

    //stat(path) into out: out[0] the kind (1 a file, 2 a directory, 0 anything else), out[1] the size in bytes,
    //out[2] the modification time in nanoseconds since the epoch; 0, or -1 when stat fails (errno says why)
    fprintf(out, "define linkonce_odr i32 @__olang_stat(ptr %%path, ptr %%out) {\n"
                 "entry:\n"
                 "  %%st = alloca [%zu x i8], align 16\n"
                 "  %%rc = call i32 @stat(ptr %%path, ptr %%st)\n"
                 "  %%ok = icmp eq i32 %%rc, 0\n"
                 "  br i1 %%ok, label %%have, label %%fail\n"
                 "have:\n", L->statSize);
    cgOsLoadField(out, "mode", "st", L->mode, L->modeSize, false);
    cgOsLoadField(out, "size", "st", L->size, 8, true);
    cgOsLoadField(out, "sec", "st", L->mtimSec, 8, true);
    cgOsLoadField(out, "nsec", "st", L->mtimNsec, 8, true);
    fprintf(out, "  %%fmt = and i64 %%mode, %d\n"
                 "  %%isreg = icmp eq i64 %%fmt, %d\n"
                 "  %%isdir = icmp eq i64 %%fmt, %d\n"
                 "  %%k1 = select i1 %%isdir, i64 2, i64 0\n"
                 "  %%kind = select i1 %%isreg, i64 1, i64 %%k1\n"
                 "  store i64 %%kind, ptr %%out\n"
                 "  %%o1 = getelementptr i64, ptr %%out, i64 1\n"
                 "  store i64 %%size, ptr %%o1\n"
                 "  %%ns = mul i64 %%sec, 1000000000\n"
                 "  %%t = add i64 %%ns, %%nsec\n"
                 "  %%o2 = getelementptr i64, ptr %%out, i64 2\n"
                 "  store i64 %%t, ptr %%o2\n"
                 "  ret i32 0\n"
                 "fail:\n"
                 "  ret i32 -1\n"
                 "}\n\n", 0170000, 0100000, 0040000);

    //the names in directory "path" - "." and ".." left out, each followed by a NUL, in the order the directory
    //gives them - as many whole names as fit in cap bytes, and the bytes all of them take; -1 when it cannot be
    //opened (errno says why)
    fprintf(out, "define linkonce_odr i64 @__olang_dir(ptr %%path, ptr %%buf, i64 %%cap) {\n"
                 "entry:\n"
                 "  %%d = call ptr @opendir(ptr %%path)\n"
                 "  %%bad = icmp eq ptr %%d, null\n"
                 "  br i1 %%bad, label %%fail, label %%loop\n"
                 "loop:\n"
                 "  %%at = phi i64 [ 0, %%entry ], [ %%at, %%skip ], [ %%after, %%next ]\n"
                 "  %%e = call ptr @readdir(ptr %%d)\n"
                 "  %%end = icmp eq ptr %%e, null\n"
                 "  br i1 %%end, label %%done, label %%one\n"
                 "one:\n"
                 "  %%name = getelementptr i8, ptr %%e, i64 %zu\n"
                 "  %%c0 = load i8, ptr %%name\n"
                 "  %%dot0 = icmp eq i8 %%c0, 46\n"
                 "  br i1 %%dot0, label %%dot1, label %%keep\n"
                 "dot1:\n"
                 "  %%p1 = getelementptr i8, ptr %%name, i64 1\n"
                 "  %%c1 = load i8, ptr %%p1\n"
                 "  %%nul1 = icmp eq i8 %%c1, 0\n"
                 "  br i1 %%nul1, label %%skip, label %%dot2\n"
                 "dot2:\n"
                 "  %%isdot1 = icmp eq i8 %%c1, 46\n"
                 "  br i1 %%isdot1, label %%dot3, label %%keep\n"
                 "dot3:\n"
                 "  %%p2 = getelementptr i8, ptr %%name, i64 2\n"
                 "  %%c2 = load i8, ptr %%p2\n"
                 "  %%nul2 = icmp eq i8 %%c2, 0\n"
                 "  br i1 %%nul2, label %%skip, label %%keep\n"
                 "skip:\n"
                 "  br label %%loop\n"
                 "keep:\n"
                 "  %%len = call i64 @strlen(ptr %%name)\n"
                 "  %%len1 = add i64 %%len, 1\n"
                 "  %%after = add i64 %%at, %%len1\n"
                 "  %%fits = icmp sle i64 %%after, %%cap\n"
                 "  br i1 %%fits, label %%copy, label %%next\n"
                 "copy:\n"
                 "  %%dst = getelementptr i8, ptr %%buf, i64 %%at\n"
                 "  call void @llvm.memcpy.p0.p0.i64(ptr %%dst, ptr %%name, i64 %%len1, i1 false)\n"
                 "  br label %%next\n"
                 "next:\n"
                 "  br label %%loop\n"
                 "done:\n"
                 "  call i32 @closedir(ptr %%d)\n"
                 "  ret i64 %%at\n"
                 "fail:\n"
                 "  ret i64 -1\n"
                 "}\n\n", L->direntName);

    //the program named by the count NUL-terminated entries of args, started with them as its command line - the first
    //looked up through PATH as posix_spawnp does - and with in, out and err (each -1 for this process's own) as its
    //standard input, output and error, in the directory dir (NUL-terminated; empty for this process's own), without a
    //shell; its process id, or -1 when it could not be started (errno says why - posix_spawnp gives its error as its
    //result, which is put where __olang_err looks). The directory is changed to in the child, after the descriptors are
    //set, by glibc's posix_spawn_file_actions_addchdir_np (2.29 and later; declared weak, so a C library without it
    //still links) - and without it, by running the program through /bin/sh as 'cd -- "$0" && exec "$@"', the one place
    //a shell stands between: the directory and the arguments are its arguments, never its script, so they reach the
    //program as they are
    fprintf(out, "declare i32 @posix_spawn_file_actions_init(ptr)\n"
                 "declare i32 @posix_spawn_file_actions_destroy(ptr)\n"
                 "declare i32 @posix_spawn_file_actions_adddup2(ptr, i32, i32)\n"
                 "declare extern_weak i32 @posix_spawn_file_actions_addchdir_np(ptr, ptr)\n"
                 "declare i32 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)\n"
                 "declare i32 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)\n"
                 "@environ = external global ptr\n"
                 "@__olang_sh = linkonce_odr constant [8 x i8] c\"/bin/sh\\00\"\n"
                 "@__olang_sh_c = linkonce_odr constant [3 x i8] c\"-c\\00\"\n"
                 "@__olang_sh_cd = linkonce_odr constant [24 x i8] c\"cd -- \\22$0\\22 && exec \\22$@\\22\\00\"\n\n"
                 "define linkonce_odr i32 @__olang_spawn(ptr %%args, i64 %%count, i32 %%in, i32 %%out, i32 %%err, ptr %%dir) {\n"
                 "entry:\n"
                 "  %%fa = alloca [%zu x i8], align 16\n"
                 "  %%pid = alloca i32\n"
                 "  %%none = icmp slt i64 %%count, 1\n"
                 "  br i1 %%none, label %%inval, label %%start\n"
                 "inval:\n"
                 "  %%ep0 = call ptr @__errno_location()\n"
                 "  store i32 %d, ptr %%ep0\n"
                 "  ret i32 -1\n"
                 "start:\n"
                 "  %%n1 = add i64 %%count, 1\n"
                 "  %%bytes = mul i64 %%n1, 8\n"
                 "  %%argv = call ptr @malloc(i64 %%bytes)\n"
                 "  br label %%loop\n"
                 "loop:\n"
                 "  %%i = phi i64 [ 0, %%start ], [ %%i1, %%step ]\n"
                 "  %%p = phi ptr [ %%args, %%start ], [ %%p1, %%step ]\n"
                 "  %%more = icmp slt i64 %%i, %%count\n"
                 "  br i1 %%more, label %%step, label %%built\n"
                 "step:\n"
                 "  %%slot = getelementptr ptr, ptr %%argv, i64 %%i\n"
                 "  store ptr %%p, ptr %%slot\n"
                 "  %%len = call i64 @strlen(ptr %%p)\n"
                 "  %%len1 = add i64 %%len, 1\n"
                 "  %%p1 = getelementptr i8, ptr %%p, i64 %%len1\n"
                 "  %%i1 = add i64 %%i, 1\n"
                 "  br label %%loop\n"
                 "built:\n"
                 "  %%end = getelementptr ptr, ptr %%argv, i64 %%count\n"
                 "  store ptr null, ptr %%end\n"
                 "  %%fi = call i32 @posix_spawn_file_actions_init(ptr %%fa)\n"
                 "  %%hasIn = icmp sge i32 %%in, 0\n"
                 "  br i1 %%hasIn, label %%dupIn, label %%doneIn\n"
                 "dupIn:\n"
                 "  %%d0 = call i32 @posix_spawn_file_actions_adddup2(ptr %%fa, i32 %%in, i32 0)\n"
                 "  br label %%doneIn\n"
                 "doneIn:\n"
                 "  %%hasOut = icmp sge i32 %%out, 0\n"
                 "  br i1 %%hasOut, label %%dupOut, label %%doneOut\n"
                 "dupOut:\n"
                 "  %%d1 = call i32 @posix_spawn_file_actions_adddup2(ptr %%fa, i32 %%out, i32 1)\n"
                 "  br label %%doneOut\n"
                 "doneOut:\n"
                 "  %%hasErr = icmp sge i32 %%err, 0\n"
                 "  br i1 %%hasErr, label %%dupErr, label %%doneErr\n"
                 "dupErr:\n"
                 "  %%d2 = call i32 @posix_spawn_file_actions_adddup2(ptr %%fa, i32 %%err, i32 2)\n"
                 "  br label %%doneErr\n"
                 "doneErr:\n"
                 "  %%env = load ptr, ptr @environ\n"
                 "  %%prog = load ptr, ptr %%argv\n"
                 "  %%dir0 = load i8, ptr %%dir\n"
                 "  %%here = icmp eq i8 %%dir0, 0\n"
                 "  br i1 %%here, label %%direct, label %%moved\n"
                 "moved:\n"
                 "  %%canChdir = icmp ne ptr @posix_spawn_file_actions_addchdir_np, null\n"
                 "  br i1 %%canChdir, label %%chdir, label %%viaShell\n"
                 "chdir:\n"
                 "  %%dc = call i32 @posix_spawn_file_actions_addchdir_np(ptr %%fa, ptr %%dir)\n"
                 "  br label %%direct\n"
                 "direct:\n"
                 "  %%rc1 = call i32 @posix_spawnp(ptr %%pid, ptr %%prog, ptr %%fa, ptr null, ptr %%argv, ptr %%env)\n"
                 "  br label %%spawned\n"
                 "viaShell:\n"
                 "  %%n5 = add i64 %%count, 5\n"
                 "  %%bytes5 = mul i64 %%n5, 8\n"
                 "  %%argv5 = call ptr @malloc(i64 %%bytes5)\n"
                 "  store ptr @__olang_sh, ptr %%argv5\n"
                 "  %%s1 = getelementptr ptr, ptr %%argv5, i64 1\n"
                 "  store ptr @__olang_sh_c, ptr %%s1\n"
                 "  %%s2 = getelementptr ptr, ptr %%argv5, i64 2\n"
                 "  store ptr @__olang_sh_cd, ptr %%s2\n"
                 "  %%s3 = getelementptr ptr, ptr %%argv5, i64 3\n"
                 "  store ptr %%dir, ptr %%s3\n"
                 "  %%s4 = getelementptr ptr, ptr %%argv5, i64 4\n"
                 "  call void @llvm.memcpy.p0.p0.i64(ptr %%s4, ptr %%argv, i64 %%bytes, i1 false)\n"
                 "  %%rc2 = call i32 @posix_spawn(ptr %%pid, ptr @__olang_sh, ptr %%fa, ptr null, ptr %%argv5, ptr %%env)\n"
                 "  call void @free(ptr %%argv5)\n"
                 "  br label %%spawned\n"
                 "spawned:\n"
                 "  %%rc = phi i32 [ %%rc1, %%direct ], [ %%rc2, %%viaShell ]\n"
                 "  %%fd = call i32 @posix_spawn_file_actions_destroy(ptr %%fa)\n"
                 "  call void @free(ptr %%argv)\n"
                 "  %%ok = icmp eq i32 %%rc, 0\n"
                 "  br i1 %%ok, label %%started, label %%failed\n"
                 "started:\n"
                 "  %%v = load i32, ptr %%pid\n"
                 "  ret i32 %%v\n"
                 "failed:\n"
                 "  %%ep = call ptr @__errno_location()\n"
                 "  store i32 %%rc, ptr %%ep\n"
                 "  ret i32 -1\n"
                 "}\n\n", L->spawnActions, 22);
}

/* S1, S2 (§11 X6): a call on a stack of a given size, and a message for a crash. os.RunOnStack runs a function value
 * - its code, taking its environment as its one argument (X3) - on a thread of its own made with that stack, and waits
 * for it, so it is the call f() would be, on a bigger stack: nothing runs beside it. In a test the thread has a
 * recovery point of its own, and a check failing, a "done" or a "fail" on it ends there and is passed on to the
 * caller's, which unwinds and jumps as it would have had f run on its own thread; so f behaves as it would called
 * directly. The thread's chunk pool goes where every thread reuses it (O8b) when it ends, and the rest back to the
 * system.
 * os.OnCrash keeps a copy of its message and handles the fatal signals: on an alternate stack - one per thread, made
 * when a thread the runtime runs olang code on starts after OnCrash, or at OnCrash for the thread calling it - so even
 * a stack overflow is reported; the handler writes the message with write() and nothing else, then raises the signal
 * again with the default action restored, so the process ends as it would have, status and core dump included. */
static void emitStackRuntime(FILE* out, const char* arch, bool san) {
    const struct cgLibcLayout* L = cgLibcLayoutFor(arch);
    fprintf(out,
        "declare i32 @pthread_attr_init(ptr)\n"
        "declare i32 @pthread_attr_destroy(ptr)\n"
        "declare i32 @pthread_attr_setstacksize(ptr, i64)\n"
        "declare i32 @pthread_join(i64, ptr)\n"
        "declare i32 @sigaction(i32, ptr, ptr)\n"
        "declare i32 @sigaltstack(ptr, ptr)\n"
        "declare i32 @raise(i32)\n"
        "declare i64 @write(i32, ptr, i64)\n"
        "declare ptr @dlsym(ptr, ptr)\n"
        //code, environment, whether a test is running, the value a jump out of the thread carried (0: none), the
        //program's scope as the caller reaches it (O1b: a worker's part of it), and who the caller is (P2)
        "%%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }\n"
        //glibc's own answer to the least stack a thread may have - its guard, its static TLS and PTHREAD_STACK_MIN
        //- found at run time, as Rust's std finds it: a private symbol, so never linked against
        "@__olang_minstack_name = linkonce_odr unnamed_addr constant [23 x i8] c\"__pthread_get_minstack\\00\"\n"
        //OnCrash's message, its length first, and this thread's alternate stack
        "@__olang_crash_msg = linkonce_odr global ptr null\n"
        "@__olang_crash_stack = linkonce_odr thread_local(initialexec) global ptr null\n\n"
        "define linkonce_odr void @__olang_run_on_stack(i64 %%bytes, ptr %%code, ptr %%env) {\n"
        "entry:\n"
        "  %%attr = alloca [%zu x i8], align 16\n"
        "  %%tid = alloca i64\n"
        "  %%run = alloca %%olang.stackrun, align 8\n"
        "  %%codep = getelementptr %%olang.stackrun, ptr %%run, i32 0, i32 0\n"
        "  store ptr %%code, ptr %%codep\n"
        "  %%envp = getelementptr %%olang.stackrun, ptr %%run, i32 0, i32 1\n"
        "  store ptr %%env, ptr %%envp\n"
        //P2: the thread is the caller as far as any scope can tell - the caller waits for it, so the two never build at once
        "  %%selfp = getelementptr %%olang.stackrun, ptr %%run, i32 0, i32 5\n"
        "  %%me = load ptr, ptr @__olang_self\n"
        "  store ptr %%me, ptr %%selfp\n"
        "  %%tgt = load ptr, ptr @__olang_jmp_target\n"
        "  %%intest = icmp ne ptr %%tgt, null\n"
        "  %%t = zext i1 %%intest to i32\n"
        "  %%testp = getelementptr %%olang.stackrun, ptr %%run, i32 0, i32 2\n"
        "  store i32 %%t, ptr %%testp\n"
        "  %%leftp = getelementptr %%olang.stackrun, ptr %%run, i32 0, i32 3\n"
        "  store i32 0, ptr %%leftp\n"
        "  %%progp = getelementptr %%olang.stackrun, ptr %%run, i32 0, i32 4\n"
        "  %%prog = load ptr, ptr @__olang_prog_scope\n"
        "  store ptr %%prog, ptr %%progp\n"
        //a size below the least a thread may have is raised to it: what glibc says it needs, which counts the static
        //TLS the stack also holds - else the system's PTHREAD_STACK_MIN, at least 16KB
        "  %%ai = call i32 @pthread_attr_init(ptr %%attr)\n"
        "  %%min = call i64 @sysconf(i32 %d)\n"
        "  %%minok = icmp sgt i64 %%min, 16384\n"
        "  %%floor = select i1 %%minok, i64 %%min, i64 16384\n"
        "  %%gm = call ptr @dlsym(ptr null, ptr @__olang_minstack_name)\n"
        "  %%hasgm = icmp ne ptr %%gm, null\n"
        "  br i1 %%hasgm, label %%askglibc, label %%sized\n"
        "askglibc:\n"
        "  %%gmv = call i64 %%gm(ptr %%attr)\n"
        "  br label %%sized\n"
        "sized:\n"
        "  %%need = phi i64 [ %%floor, %%entry ], [ %%gmv, %%askglibc ]\n"
        "  %%needmore = icmp sgt i64 %%need, %%floor\n"
        "  %%least = select i1 %%needmore, i64 %%need, i64 %%floor\n"
        "  %%small = icmp slt i64 %%bytes, %%least\n"
        "  %%size = select i1 %%small, i64 %%least, i64 %%bytes\n"
        "  %%ss = call i32 @pthread_attr_setstacksize(ptr %%attr, i64 %%size)\n"
        "  %%ssok = icmp eq i32 %%ss, 0\n"
        "  br i1 %%ssok, label %%create, label %%refused\n"
        "create:\n"
        "  %%rc = call i32 @pthread_create(ptr %%tid, ptr %%attr, ptr @__olang_stack_main, ptr %%run)\n"
        "  %%ad = call i32 @pthread_attr_destroy(ptr %%attr)\n"
        "  %%rcok = icmp eq i32 %%rc, 0\n"
        "  br i1 %%rcok, label %%started, label %%failed\n"
        "refused:\n"
        "  %%ad2 = call i32 @pthread_attr_destroy(ptr %%attr)\n"
        "  br label %%failed\n"
        //a thread the system will not make with that stack: a guarantee broken, as P1c's task
        "failed:\n"
        "  call void @__olang_check_failed(ptr @__olang_msg_stack)\n"
        "  ret void\n"
        "started:\n"
        "  %%tv = load i64, ptr %%tid\n"
        "  %%jr = call i32 @pthread_join(i64 %%tv, ptr null)\n"
        "  %%left = load i32, ptr %%leftp\n"
        "  %%stayed = icmp eq i32 %%left, 0\n"
        "  br i1 %%stayed, label %%done, label %%onward\n"
        //f left its test on its own thread: the caller's test leaves the same way, its scopes unwound first (P1d)
        "onward:\n"
        "  %%mk = load ptr, ptr @__olang_unwind_mark\n"
        "  call void @__olang_unwind_to(ptr %%mk)\n"
        "  call void @longjmp(ptr %%tgt, i32 %%left)\n"
        "  unreachable\n"
        "done:\n"
        "  ret void\n"
        "}\n\n",
        L->attrSize, (int)_SC_THREAD_STACK_MIN);
    fprintf(out,
        //the thread: f run, behind a recovery point of its own while a test is running, then its pool given back.
        //Nothing is written between the setjmp and a jump to it but by the thread's own code (the volatile question X3b
        //answers for the harness): %%run is read after the landing, and set before the setjmp
        "define linkonce_odr ptr @__olang_stack_main(ptr %%run) {\n"
        "entry:\n"
        "  %%jb = alloca [%zu x i8], align 16\n"
        "  call void @__olang_alt_stack()\n"
        //the program's scope is reached as the caller reaches it - through a worker's part of it when a task called (O1b):
        //this thread starts with the real one, which another task, or the thread the join lets go on, may be using - and
        //every scope as the caller would (P2): the caller is parked until this thread is done
        "  %%progp = getelementptr %%olang.stackrun, ptr %%run, i32 0, i32 4\n"
        "  %%prog = load ptr, ptr %%progp\n"
        "  store ptr %%prog, ptr @__olang_prog_scope\n"
        "  %%selfp = getelementptr %%olang.stackrun, ptr %%run, i32 0, i32 5\n"
        "  %%caller = load ptr, ptr %%selfp\n"
        "  store ptr %%caller, ptr @__olang_self\n"
        "  %%codep = getelementptr %%olang.stackrun, ptr %%run, i32 0, i32 0\n"
        "  %%code = load ptr, ptr %%codep\n"
        "  %%envp = getelementptr %%olang.stackrun, ptr %%run, i32 0, i32 1\n"
        "  %%env = load ptr, ptr %%envp\n"
        "  %%testp = getelementptr %%olang.stackrun, ptr %%run, i32 0, i32 2\n"
        "  %%test = load i32, ptr %%testp\n"
        "  %%intest = icmp ne i32 %%test, 0\n"
        "  br i1 %%intest, label %%guard, label %%plain\n"
        "plain:\n"
        "  call void %%code(ptr %%env)\n"
        "  br label %%out\n"
        "guard:\n"
        "  store ptr %%jb, ptr @__olang_jmp_target\n"
        "  %%r = call i32 @setjmp(ptr %%jb)\n"
        "  %%first = icmp eq i32 %%r, 0\n"
        "  br i1 %%first, label %%call, label %%landed\n"
        "call:\n"
        "  call void %%code(ptr %%env)\n"
        "  br label %%cleared\n"
        "landed:\n"
        "  %%leftp = getelementptr %%olang.stackrun, ptr %%run, i32 0, i32 3\n"
        "  store i32 %%r, ptr %%leftp\n"
        "  br label %%cleared\n"
        "cleared:\n"
        "  store ptr null, ptr @__olang_jmp_target\n"
        "  br label %%out\n"
        "out:\n"
        "  call void @__olang_pool_share()\n"
        "  call void @__olang_pool_drain()\n"
        "  call void @__olang_alt_stack_free()\n"
        "  ret ptr null\n"
        "}\n\n",
        L->jmpBuf);
    fprintf(out,
        //S2: this thread's alternate stack, made once OnCrash has said what to write - 64KB, room for the signal frame
        //of the widest vector registers and the handler's few calls
        "define linkonce_odr void @__olang_alt_stack() {\n"
        "entry:\n"
        "  %%ss = alloca [24 x i8], align 8\n"
        "  %%have = load ptr, ptr @__olang_crash_stack\n"
        "  %%made = icmp ne ptr %%have, null\n"
        "  br i1 %%made, label %%done, label %%check\n"
        "check:\n"
        "  %%m = load atomic ptr, ptr @__olang_crash_msg acquire, align 8\n"
        "  %%none = icmp eq ptr %%m, null\n"
        "  br i1 %%none, label %%done, label %%make\n"
        "make:\n"
        "  %%mem = call ptr @malloc(i64 65536)\n"
        "  %%got = icmp ne ptr %%mem, null\n"
        "  br i1 %%got, label %%set, label %%done\n"
        "set:\n"
        "  store ptr %%mem, ptr %%ss\n"
        "  %%fp = getelementptr i8, ptr %%ss, i64 8\n"
        "  store i32 0, ptr %%fp\n"
        "  %%zp = getelementptr i8, ptr %%ss, i64 16\n"
        "  store i64 65536, ptr %%zp\n"
        "  %%rc = call i32 @sigaltstack(ptr %%ss, ptr null)\n"
        "  store ptr %%mem, ptr @__olang_crash_stack\n"
        "  br label %%done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        //a thread that ends gives its alternate stack back: switched off first, then freed
        "define linkonce_odr void @__olang_alt_stack_free() {\n"
        "entry:\n"
        "  %%ss = alloca [24 x i8], align 8\n"
        "  %%have = load ptr, ptr @__olang_crash_stack\n"
        "  %%none = icmp eq ptr %%have, null\n"
        "  br i1 %%none, label %%done, label %%off\n"
        "off:\n"
        "  call void @llvm.memset.p0.i64(ptr %%ss, i8 0, i64 24, i1 false)\n"
        "  %%fp = getelementptr i8, ptr %%ss, i64 8\n"
        "  store i32 %d, ptr %%fp\n"
        "  %%rc = call i32 @sigaltstack(ptr %%ss, ptr null)\n"
        "  call void @free(ptr %%have)\n"
        "  store ptr null, ptr @__olang_crash_stack\n"
        "  br label %%done\n"
        "done:\n"
        "  ret void\n"
        "}\n\n"
        //the handler: the message written, as much of it as write() takes, then the signal again - its action reset
        //to the default before this ran (SA_RESETHAND), so the process ends as the signal ends it
        "define linkonce_odr void @__olang_crash_handler(i32 %%sig) {\n"
        "entry:\n"
        "  %%m = load atomic ptr, ptr @__olang_crash_msg acquire, align 8\n"
        "  %%none = icmp eq ptr %%m, null\n"
        "  br i1 %%none, label %%again, label %%say\n"
        "say:\n"
        "  %%n = load i64, ptr %%m\n"
        "  %%data = getelementptr i8, ptr %%m, i64 8\n"
        "  br label %%loop\n"
        "loop:\n"
        "  %%p = phi ptr [ %%data, %%say ], [ %%p1, %%more ]\n"
        "  %%left = phi i64 [ %%n, %%say ], [ %%left1, %%more ]\n"
        "  %%all = icmp sle i64 %%left, 0\n"
        "  br i1 %%all, label %%again, label %%put\n"
        "put:\n"
        "  %%w = call i64 @write(i32 2, ptr %%p, i64 %%left)\n"
        "  %%wrote = icmp sgt i64 %%w, 0\n"
        "  br i1 %%wrote, label %%more, label %%again\n"
        "more:\n"
        "  %%p1 = getelementptr i8, ptr %%p, i64 %%w\n"
        "  %%left1 = sub i64 %%left, %%w\n"
        "  br label %%loop\n"
        "again:\n"
        "  %%r = call i32 @raise(i32 %%sig)\n"
        "  ret void\n"
        "}\n\n",
        SS_DISABLE);
    fprintf(out,
        //S2: the message kept (a copy: the text it came from belongs to a scope), the alternate stack of this thread
        //made, and the handler installed for the fatal signals. Called again, the message is replaced
        "define linkonce_odr void @__olang_on_crash(ptr %%msg, i64 %%len) {\n"
        "entry:\n"
        "  %%sa = alloca [%zu x i8], align 16\n"
        "  %%pos = icmp sgt i64 %%len, 0\n"
        "  %%n = select i1 %%pos, i64 %%len, i64 0\n"
        "  %%bytes = add i64 %%n, 8\n"
        "  %%copy = call ptr @malloc(i64 %%bytes)\n"
        "  call void @__olang_alloc_check(ptr %%copy)\n"
        "  store i64 %%n, ptr %%copy\n"
        "  %%data = getelementptr i8, ptr %%copy, i64 8\n"
        "  call void @llvm.memcpy.p0.p0.i64(ptr %%data, ptr %%msg, i64 %%n, i1 false)\n"
        "  store atomic ptr %%copy, ptr @__olang_crash_msg release, align 8\n"
        "  call void @__olang_alt_stack()\n"
        "  call void @llvm.memset.p0.i64(ptr %%sa, i8 0, i64 %zu, i1 false)\n"
        "  store ptr @__olang_crash_handler, ptr %%sa\n"
        "  %%flagsp = getelementptr i8, ptr %%sa, i64 %zu\n"
        "  store i32 %d, ptr %%flagsp\n",
        L->sigactionSize, L->sigactionSize, L->saFlags, (int)(SA_ONSTACK | SA_RESETHAND | SA_NODEFER));
    int sigs[] = { SIGSEGV, SIGBUS, SIGFPE, SIGILL, SIGABRT };
    for (size_t i = 0; i < sizeof(sigs) / sizeof(sigs[0]); i++) {
        //B2f: under -s the sanitizer's handler keeps SIGSEGV, and this action becomes what it falls back to for a fault
        //that is not its own - so a use after a scope closed is still reported as one, and any other fault as before
        if (san && sigs[i] == SIGSEGV)
            fprintf(out, "  call void @llvm.memcpy.p0.p0.i64(ptr @__olang_san_old, ptr %%sa, i64 %zu, i1 false)\n",
                    L->sigactionSize);
        else fprintf(out, "  %%s%zu = call i32 @sigaction(i32 %d, ptr %%sa, ptr null)\n", i, sigs[i]);
    }
    fputs("  ret void\n}\n\n", out);
}

/* B2f, the scope sanitizer (-s): a scope that closes gives its chunks to a quarantine rather than to the pool, so that a
 * program reading storage after its scope closed - a use after free the static check (§8) let through - reads something
 * unmistakable instead of whatever the next scope put there. Every chunk of a closed scope is
 *   - poisoned: what was used of it is overwritten with SAN_POISON, a 64-bit word chosen so that every view of it is
 *     wrong at once: as a pointer it is non-canonical (x86-64 and AArch64 alike), so following a reference read out of
 *     poisoned storage faults on the spot; as any float it is a NaN (F64, and each half as F32, each quarter as F16 or
 *     BF16), which a computation carries to its result; as an integer it is near the type's maximum (I64 9.2e18, I32
 *     2.1e9, I16 32757), so a length read from it makes a loop run on into the poisoned pointer, and an allocation of
 *     that length asks for more than any machine has (__olang_san_check_size) - never a plausible 0, 1 or -1;
 *   - protected: every chunk is mapped under -s (__olang_new_chunk), so it is made inaccessible (PROT_NONE) for as long
 *     as it is quarantined, and any read or write of it at all faults at once, wherever the reference came from;
 *   - quarantined: held out of reuse, first in first out, until SAN_QUARANTINE_CHUNKS chunks or SAN_QUARANTINE_BYTES
 *     bytes are held - only then is the oldest made accessible again and given to the pool, still poisoned where it was
 *     used. One quarantine for the process, behind a lock: a chunk is reused by whichever thread closes the scope that
 *     pushes it out, which the lock orders for the program and for ThreadSanitizer alike (P7).
 * A chunk the system will not map is taken from aligned_alloc and only poisoned; a mapped chunk of more than 1MB is
 * poisoned only in its first page and the rest of its pages given back to the system (madvise), so a quarantine of
 * large arrays costs address space, not memory. The fault is the sanitizer's own report (__olang_san_handler): a
 * use after a scope closed is a failed check (S18) - a test fails, a program aborts - saying so; any other fault is
 * left to the action it replaced. Emitted only under -s: a build without it carries none of this. */
#define SAN_POISON "9220416504501469173"      //0x7FF57FF57FF57FF5
#define SAN_POISON_HI "2146795509"            //its upper half, 0x7FF57FF5
#define SAN_QUARANTINE_CHUNKS 16384           //a power of two: the ring's index is masked
#define SAN_QUARANTINE_BYTES "268435456"      //256MB - ASan's quarantine
_Static_assert(PROT_NONE == 0 && (PROT_READ | PROT_WRITE) == 3 && MADV_DONTNEED == 4 && SA_SIGINFO == 4
               && SI_KERNEL == 0x80, "the sanitizer's constants");
#if defined(__x86_64__) && defined(__linux__)
_Static_assert(offsetof(siginfo_t, si_code) == 8 && offsetof(ucontext_t, uc_mcontext.gregs) == 40
               && REG_RIP == 16, "where a fault's code and registers are");
#endif

//a message the sanitizer's report prints, NUL-terminated, a line end before it
static void sanMessage(FILE* out, const char* name, const char* text) {
    fprintf(out, "@%s = linkonce_odr unnamed_addr constant [%zu x i8] c\"%s\\0A\\00\"\n", name, strlen(text) + 2, text);
}

static void emitScopeSanRuntime(FILE* out, const char* arch) {
    const struct cgLibcLayout* L = cgLibcLayoutFor(arch);
    fputs("declare i32 @mprotect(ptr, i64, i32)\n"
          "declare i32 @madvise(ptr, i64, i32)\n"
          //a quarantined chunk: the chunk, how much of it is protected (0: none, when the system refused or it is not
          //mapped), and the bytes it counts against the bound
          "%olang.sanq = type { ptr, i64, i64 }\n", out);
    fprintf(out, "@__olang_san_ring = linkonce_odr global [%d x %%olang.sanq] zeroinitializer\n", SAN_QUARANTINE_CHUNKS);
    fputs(//the oldest entry's index, how many there are, and the bytes they count
          "@__olang_san_first = linkonce_odr global i64 0\n"
          "@__olang_san_count = linkonce_odr global i64 0\n"
          "@__olang_san_bytes = linkonce_odr global i64 0\n"
          "@__olang_san_lock = linkonce_odr global [40 x i8] zeroinitializer\n", out);
    //the action the sanitizer's handler replaced, for a fault that is not its own
    fprintf(out, "@__olang_san_old = linkonce_odr global [%zu x i8] zeroinitializer\n", L->sigactionSize);
    sanMessage(out, "__olang_msg_san_mem", "use after scope closed: storage a closed scope gave back was read or written");
    sanMessage(out, "__olang_msg_san_ref", "use after scope closed: a reference read from storage a closed scope gave back "
               "was followed");
    sanMessage(out, "__olang_msg_san_len", "use after scope closed: an allocation of more than 2^60 bytes - a length "
               "read from storage a closed scope gave back");
    fputs("\n", out);

    //what a closing scope gives back (__olang_scope_close): each of its chunks into the quarantine
    fputs("define linkonce_odr void @__olang_san_quarantine_list(ptr %head) noinline {\n"
          "entry:\n"
          "  br label %each\n"
          "each:\n"
          "  %cur = phi ptr [ %head, %entry ], [ %next, %each ]\n"
          "  %nextptr = getelementptr %olang.chunk, ptr %cur, i32 0, i32 0\n"
          "  %next = load ptr, ptr %nextptr\n"
          "  call void @__olang_san_quarantine(ptr %cur)\n"
          "  %atend = icmp eq ptr %next, null\n"
          "  br i1 %atend, label %done, label %each\n"
          "done:\n"
          "  ret void\n"
          "}\n\n"
          //n bytes at p (a multiple of 8, 8-aligned) overwritten with the poison
          "define linkonce_odr void @__olang_san_poison(ptr %p, i64 %n) {\n"
          "entry:\n"
          "  %words = lshr i64 %n, 3\n"
          "  %none = icmp eq i64 %words, 0\n"
          "  br i1 %none, label %done, label %loop\n"
          "loop:\n"
          "  %i = phi i64 [ 0, %entry ], [ %i1, %loop ]\n"
          "  %q = getelementptr i64, ptr %p, i64 %i\n"
          "  store i64 " SAN_POISON ", ptr %q\n"
          "  %i1 = add i64 %i, 1\n"
          "  %more = icmp ult i64 %i1, %words\n"
          "  br i1 %more, label %loop, label %done\n"
          "done:\n"
          "  ret void\n"
          "}\n\n", out);
    fprintf(out,
          //chunk c, which a closed scope held, poisoned, protected and put in the quarantine - after the oldest have been
          //taken out until it fits under the bounds (all of them, for a chunk larger than the bound alone)
          "define linkonce_odr void @__olang_san_quarantine(ptr %%c) {\n"
          "entry:\n"
          "  %%usedptr = getelementptr %%olang.chunk, ptr %%c, i32 0, i32 1\n"
          "  %%used = load i64, ptr %%usedptr\n"
          "  %%capptr = getelementptr %%olang.chunk, ptr %%c, i32 0, i32 2\n"
          "  %%cap = load i64, ptr %%capptr\n"
          "  %%mapptr = getelementptr %%olang.chunk, ptr %%c, i32 0, i32 3\n"
          "  %%maplen = load i64, ptr %%mapptr\n"
          "  %%data = getelementptr %%olang.chunk, ptr %%c, i32 1\n"
          "  %%mapped = icmp ne i64 %%maplen, 0\n"
          "  %%large = icmp ugt i64 %%maplen, 1048576\n"
          "  %%discard = and i1 %%mapped, %%large\n"
          //what was used, or of one whose pages are given back, what of it lies in its first page
          "  %%firstpage = select i1 %%discard, i64 4032, i64 %%used\n"
          "  %%short = icmp ult i64 %%used, %%firstpage\n"
          "  %%pn = select i1 %%short, i64 %%used, i64 %%firstpage\n"
          "  call void @__olang_san_poison(ptr %%data, i64 %%pn)\n"
          "  %%whole = add i64 %%cap, 64\n"
          "  %%held = select i1 %%discard, i64 4096, i64 %%whole\n"
          "  br i1 %%mapped, label %%protect, label %%push\n"
          "protect:\n"
          "  %%pr = call i32 @mprotect(ptr %%c, i64 %%maplen, i32 0)\n"
          "  %%prok = icmp eq i32 %%pr, 0\n"
          "  %%plen.p = select i1 %%prok, i64 %%maplen, i64 0\n"
          "  %%drop = and i1 %%discard, %%prok\n"
          "  br i1 %%drop, label %%release, label %%push\n"
          "release:\n"
          "  %%rest = getelementptr i8, ptr %%c, i64 4096\n"
          "  %%restlen = sub i64 %%maplen, 4096\n"
          "  %%dr = call i32 @madvise(ptr %%rest, i64 %%restlen, i32 4)\n"
          "  br label %%push\n"
          "push:\n"
          "  %%plen = phi i64 [ 0, %%entry ], [ %%plen.p, %%protect ], [ %%plen.p, %%release ]\n"
          "  %%l0 = call i32 @pthread_mutex_lock(ptr @__olang_san_lock)\n"
          "  br label %%room\n"
          "room:\n"
          "  %%count = load i64, ptr @__olang_san_count\n"
          "  %%bytes = load i64, ptr @__olang_san_bytes\n"
          "  %%full = icmp uge i64 %%count, %d\n"
          "  %%after = add i64 %%bytes, %%held\n"
          "  %%heavy = icmp ugt i64 %%after, " SAN_QUARANTINE_BYTES "\n"
          "  %%over = or i1 %%full, %%heavy\n"
          "  %%any = icmp ne i64 %%count, 0\n"
          "  %%evict = and i1 %%over, %%any\n"
          "  br i1 %%evict, label %%pop, label %%put\n"
          //the oldest out, its entry cleared first so that the handler no longer takes a fault there for its own
          "pop:\n"
          "  %%first = load i64, ptr @__olang_san_first\n"
          "  %%e = getelementptr [%d x %%olang.sanq], ptr @__olang_san_ring, i64 0, i64 %%first\n"
          "  %%ecp = getelementptr %%olang.sanq, ptr %%e, i32 0, i32 0\n"
          "  %%ec = load ptr, ptr %%ecp\n"
          "  %%elp = getelementptr %%olang.sanq, ptr %%e, i32 0, i32 1\n"
          "  %%el = load i64, ptr %%elp\n"
          "  %%ehp = getelementptr %%olang.sanq, ptr %%e, i32 0, i32 2\n"
          "  %%eh = load i64, ptr %%ehp\n"
          "  store i64 0, ptr %%elp\n"
          "  store ptr null, ptr %%ecp\n"
          "  %%first1 = add i64 %%first, 1\n"
          "  %%firstw = and i64 %%first1, %d\n"
          "  store i64 %%firstw, ptr @__olang_san_first\n"
          "  %%count1 = sub i64 %%count, 1\n"
          "  store i64 %%count1, ptr @__olang_san_count\n"
          "  %%bytes1 = sub i64 %%bytes, %%eh\n"
          "  store i64 %%bytes1, ptr @__olang_san_bytes\n"
          "  %%u0 = call i32 @pthread_mutex_unlock(ptr @__olang_san_lock)\n"
          "  call void @__olang_san_release(ptr %%ec, i64 %%el)\n"
          "  %%l1 = call i32 @pthread_mutex_lock(ptr @__olang_san_lock)\n"
          "  br label %%room\n"
          "put:\n"
          "  %%firstp = load i64, ptr @__olang_san_first\n"
          "  %%at0 = add i64 %%firstp, %%count\n"
          "  %%at = and i64 %%at0, %d\n"
          "  %%slot = getelementptr [%d x %%olang.sanq], ptr @__olang_san_ring, i64 0, i64 %%at\n"
          "  %%scp = getelementptr %%olang.sanq, ptr %%slot, i32 0, i32 0\n"
          "  store ptr %%c, ptr %%scp\n"
          "  %%slp = getelementptr %%olang.sanq, ptr %%slot, i32 0, i32 1\n"
          "  store i64 %%plen, ptr %%slp\n"
          "  %%shp = getelementptr %%olang.sanq, ptr %%slot, i32 0, i32 2\n"
          "  store i64 %%held, ptr %%shp\n"
          "  %%count2 = add i64 %%count, 1\n"
          "  store i64 %%count2, ptr @__olang_san_count\n"
          "  store i64 %%after, ptr @__olang_san_bytes\n"
          "  %%u1 = call i32 @pthread_mutex_unlock(ptr @__olang_san_lock)\n"
          "  ret void\n"
          "}\n\n"
          //a chunk leaving the quarantine: accessible again, and to this thread's pool - or, when the system will not
          //make it accessible, never touched again
          "define linkonce_odr void @__olang_san_release(ptr %%c, i64 %%plen) {\n"
          "entry:\n"
          "  %%prot = icmp ne i64 %%plen, 0\n"
          "  br i1 %%prot, label %%open, label %%give\n"
          "open:\n"
          "  %%r = call i32 @mprotect(ptr %%c, i64 %%plen, i32 3)\n"
          "  %%ok = icmp eq i32 %%r, 0\n"
          "  br i1 %%ok, label %%give, label %%lost\n"
          "lost:\n"
          "  ret void\n"
          "give:\n"
          "  call void @__olang_pool_give(ptr %%c)\n"
          "  ret void\n"
          "}\n\n",
          SAN_QUARANTINE_CHUNKS, SAN_QUARANTINE_CHUNKS, SAN_QUARANTINE_CHUNKS - 1, SAN_QUARANTINE_CHUNKS - 1,
          SAN_QUARANTINE_CHUNKS);
    fputs(//a size no allocation can have - 2^60 bytes or more - asked of the allocator: a length read out of poisoned storage
          "define linkonce_odr void @__olang_san_check_size(i64 %size) {\n"
          "entry:\n"
          "  %bad = icmp uge i64 %size, 1152921504606846976\n"
          "  br i1 %bad, label %say, label %ok\n"
          "say:\n"
          "  call void @__olang_san_report(i32 3)\n"
          "  br label %ok\n"
          "ok:\n"
          "  ret void\n"
          "}\n\n"
          //a use after a scope closed, found: a failed check (S18) - in a test, that test fails; otherwise the process
          //aborts. 1: storage in quarantine was reached, 2: a poisoned reference was followed, 3: a poisoned length
          "define linkonce_odr void @__olang_san_report(i32 %kind) {\n"
          "entry:\n"
          "  %is1 = icmp eq i32 %kind, 1\n"
          "  %is2 = icmp eq i32 %kind, 2\n"
          "  %m2 = select i1 %is2, ptr @__olang_msg_san_ref, ptr @__olang_msg_san_len\n"
          "  %m = select i1 %is1, ptr @__olang_msg_san_mem, ptr %m2\n"
          "  call void @__olang_check_failed(ptr %m)\n"
          "  ret void\n"
          "}\n\n", out);
    fprintf(out,
          //the handler, for SIGSEGV: a fault at an address in a chunk the quarantine holds, or at an address that is the
          //poison (where the fault reports one: AArch64), or - x86-64, where following a non-canonical address faults
          //with no address (SI_KERNEL) - with the poison in a general register, is a use after a scope closed. Anything
          //else is not the sanitizer's: the action it replaced is put back, and the fault, made again on return, meets it
          "define linkonce_odr void @__olang_san_handler(i32 %%sig, ptr %%info, ptr %%uc) {\n"
          "entry:\n"
          "  %%ap = getelementptr i8, ptr %%info, i64 16\n"
          "  %%addr = load ptr, ptr %%ap\n"
          "  %%a = ptrtoint ptr %%addr to i64\n"
          "  br label %%scan\n"
          "scan:\n"
          "  %%i = phi i64 [ 0, %%entry ], [ %%i1, %%next ]\n"
          "  %%e = getelementptr [%d x %%olang.sanq], ptr @__olang_san_ring, i64 0, i64 %%i\n"
          "  %%cp = getelementptr %%olang.sanq, ptr %%e, i32 0, i32 0\n"
          "  %%c = load ptr, ptr %%cp\n"
          "  %%lp = getelementptr %%olang.sanq, ptr %%e, i32 0, i32 1\n"
          "  %%len = load i64, ptr %%lp\n"
          "  %%ci = ptrtoint ptr %%c to i64\n"
          "  %%off = sub i64 %%a, %%ci\n"
          "  %%in = icmp ult i64 %%off, %%len\n"
          "  br i1 %%in, label %%closed, label %%next\n"
          "next:\n"
          "  %%i1 = add i64 %%i, 1\n"
          "  %%more = icmp ult i64 %%i1, %d\n"
          "  br i1 %%more, label %%scan, label %%poison\n"
          "closed:\n"
          "  call void @__olang_san_report(i32 1)\n"
          "  ret void\n"
          "poison:\n"
          "  %%ahi = lshr i64 %%a, 32\n"
          "  %%apois = icmp eq i64 %%ahi, " SAN_POISON_HI "\n"
          "  br i1 %%apois, label %%followed, label %%regs\n"
          "followed:\n"
          "  call void @__olang_san_report(i32 2)\n"
          "  ret void\n"
          "regs:\n",
          SAN_QUARANTINE_CHUNKS, SAN_QUARANTINE_CHUNKS);
    if (!strcmp(arch, "x86_64")) {
        //uc_mcontext.gregs, at 40 in a ucontext_t: the sixteen general registers come first, the instruction pointer
        //after them
        fputs("  %codep = getelementptr i8, ptr %info, i64 8\n"
              "  %code = load i32, ptr %codep\n"
              "  %kernel = icmp eq i32 %code, 128\n"
              "  br i1 %kernel, label %rscan, label %notours\n"
              "rscan:\n"
              "  %k = phi i64 [ 0, %regs ], [ %k1, %rnext ]\n"
              "  %ri = add i64 %k, 5\n"
              "  %rp = getelementptr i64, ptr %uc, i64 %ri\n"
              "  %r = load i64, ptr %rp\n"
              "  %rhi = lshr i64 %r, 32\n"
              "  %rpois = icmp eq i64 %rhi, " SAN_POISON_HI "\n"
              "  br i1 %rpois, label %followed, label %rnext\n"
              "rnext:\n"
              "  %k1 = add i64 %k, 1\n"
              "  %rmore = icmp ult i64 %k1, 16\n"
              "  br i1 %rmore, label %rscan, label %notours\n", out);
    } else {
        fputs("  br label %notours\n", out);
    }
    fputs("notours:\n"
          "  %back = call i32 @sigaction(i32 %sig, ptr @__olang_san_old, ptr null)\n"
          "  ret void\n"
          "}\n\n", out);
    fprintf(out,
          //at the start of main - a program's or a test build's: the handler installed for SIGSEGV, the action it
          //replaces kept. SA_SIGINFO for the address and the registers, SA_NODEFER since a report in a test leaves the
          //handler by a jump (S18), and SA_ONSTACK so that it runs on a thread's alternate stack where one is set (S2)
          "define linkonce_odr void @__olang_san_init() {\n"
          "entry:\n"
          "  %%sa = alloca [%zu x i8], align 16\n"
          "  call void @llvm.memset.p0.i64(ptr %%sa, i8 0, i64 %zu, i1 false)\n"
          "  store ptr @__olang_san_handler, ptr %%sa\n"
          "  %%flagsp = getelementptr i8, ptr %%sa, i64 %zu\n"
          "  store i32 %d, ptr %%flagsp\n"
          "  %%r = call i32 @sigaction(i32 %d, ptr %%sa, ptr @__olang_san_old)\n"
          "  ret void\n"
          "}\n\n",
          L->sigactionSize, L->sigactionSize, L->saFlags, (int)(SA_SIGINFO | SA_NODEFER | SA_ONSTACK), SIGSEGV);
}

/* S3 (§11 X6): a C function called by its name, chosen while the program runs - what an interpreter needs to call the
 * externs of the program it runs. A separate part of the runtime, over the C library's dlsym and libffi, emitted only
 * into the object of a module declaring one of the two functions below, and linked, with -lffi -ldl, only into a
 * program holding such a module.
 * A call is described by bytes, its kinds: one per argument and a 0 after the last, each a number type's code - I8 1,
 * I16 2, I32 3, I64 4, U8 5, U16 6, U32 7, U64 8, F16 9, BF16 10, F32 11, F64 12 - with 0x80 added for an array of
 * them; and the result's code, 0 for none. Its values are 64-bit words, in order: a number is one word, holding its
 * bits from the lowest; an array is a word holding its length, then its elements' bytes packed into as many words as
 * they fill. The function is handed a pointer to those bytes, so what it writes into the array is in the words after
 * the call - the copy in and out an interpreter makes of the array it holds. A 16-bit float is passed only in an array
 * (libffi has no such type), and nothing else is passed at all, which is X2's vocabulary. */
void emitDyncallRuntime(FILE* out, const char* arch) {
    const struct cgLibcLayout* L = cgLibcLayoutFor(arch);
    fputs(
        "declare ptr @dlopen(ptr, i32)\n"
        "declare i32 @ffi_prep_cif(ptr, i32, i32, ptr, ptr)\n"
        "declare void @ffi_call(ptr, ptr, ptr, ptr)\n"
        "@ffi_type_void = external global i8\n"
        "@ffi_type_uint8 = external global i8\n"
        "@ffi_type_sint8 = external global i8\n"
        "@ffi_type_uint16 = external global i8\n"
        "@ffi_type_sint16 = external global i8\n"
        "@ffi_type_uint32 = external global i8\n"
        "@ffi_type_sint32 = external global i8\n"
        "@ffi_type_uint64 = external global i8\n"
        "@ffi_type_sint64 = external global i8\n"
        "@ffi_type_float = external global i8\n"
        "@ffi_type_double = external global i8\n"
        "@ffi_type_pointer = external global i8\n"
        "@__olang_libm = linkonce_odr global ptr null\n"
        "@__olang_libm_name = linkonce_odr unnamed_addr constant [10 x i8] c\"libm.so.6\\00\"\n"
        "@__olang_msg_dyncall = linkonce_odr unnamed_addr constant [55 x i8] c\"dynamic call of a function not found, or not callable\\0A\\00\"\n"
        //the bytes one element of kind k (an array's) takes, and the libffi type a value of kind k is passed as: a
        //pointer for an array, null for what cannot be passed (a 16-bit float alone, an unknown code)
        "@__olang_kind_size = linkonce_odr unnamed_addr constant [13 x i64] [i64 0, i64 1, i64 2, i64 4, i64 8, i64 1, "
            "i64 2, i64 4, i64 8, i64 2, i64 2, i64 4, i64 8]\n"
        "@__olang_kind_type = linkonce_odr unnamed_addr constant [13 x ptr] [ptr null, ptr @ffi_type_sint8, "
            "ptr @ffi_type_sint16, ptr @ffi_type_sint32, ptr @ffi_type_sint64, ptr @ffi_type_uint8, ptr @ffi_type_uint16, "
            "ptr @ffi_type_uint32, ptr @ffi_type_uint64, ptr null, ptr null, ptr @ffi_type_float, ptr @ffi_type_double]\n\n"
        "define linkonce_odr ptr @__olang_ffi_type(i8 %k) {\n"
        "entry:\n"
        "  %arr = icmp uge i8 %k, -128\n"
        "  %code = and i8 %k, 127\n"
        "  %c = zext i8 %code to i64\n"
        "  %known = icmp ult i64 %c, 13\n"
        "  %zero = icmp eq i64 %c, 0\n"
        "  br i1 %known, label %look, label %none\n"
        "look:\n"
        "  br i1 %zero, label %none, label %have\n"
        "have:\n"
        "  br i1 %arr, label %array, label %scalar\n"
        "array:\n"
        "  ret ptr @ffi_type_pointer\n"
        "scalar:\n"
        "  %slot = getelementptr [13 x ptr], ptr @__olang_kind_type, i64 0, i64 %c\n"
        "  %t = load ptr, ptr %slot\n"
        "  ret ptr %t\n"
        "none:\n"
        "  ret ptr null\n"
        "}\n\n", out);
    fputs(
        //the function "name" names: among what the process has loaded, else in the C math library, opened once
        "define linkonce_odr ptr @__olang_dynsym(ptr %name) {\n"
        "entry:\n"
        "  %s = call ptr @dlsym(ptr null, ptr %name)\n"
        "  %found = icmp ne ptr %s, null\n"
        "  br i1 %found, label %done, label %libm\n"
        "libm:\n"
        "  %h0 = load atomic ptr, ptr @__olang_libm monotonic, align 8\n"
        "  %closed = icmp eq ptr %h0, null\n"
        "  br i1 %closed, label %open, label %look\n"
        "open:\n"
        "  %h1 = call ptr @dlopen(ptr @__olang_libm_name, i32 258)\n"
        "  store atomic ptr %h1, ptr @__olang_libm monotonic, align 8\n"
        "  br label %look\n"
        "look:\n"
        "  %h = phi ptr [ %h0, %libm ], [ %h1, %open ]\n"
        "  %none = icmp eq ptr %h, null\n"
        "  br i1 %none, label %done, label %inlibm\n"
        "inlibm:\n"
        "  %s2 = call ptr @dlsym(ptr %h, ptr %name)\n"
        "  br label %done\n"
        "done:\n"
        "  %r = phi ptr [ %s, %entry ], [ null, %look ], [ %s2, %inlibm ]\n"
        "  ret ptr %r\n"
        "}\n\n"
        //how many kinds there are before their 0
        "define linkonce_odr i64 @__olang_dyncall_count(ptr %kinds) {\n"
        "entry:\n"
        "  br label %loop\n"
        "loop:\n"
        "  %n = phi i64 [ 0, %entry ], [ %n1, %next ]\n"
        "  %p = getelementptr i8, ptr %kinds, i64 %n\n"
        "  %k = load i8, ptr %p\n"
        "  %end = icmp eq i8 %k, 0\n"
        "  br i1 %end, label %done, label %next\n"
        "next:\n"
        "  %n1 = add i64 %n, 1\n"
        "  br label %loop\n"
        "done:\n"
        "  ret i64 %n\n"
        "}\n\n", out);
    fprintf(out,
        //0 when "name" can be called with these n kinds and that result - its call interface prepared in %cif, the
        //argument types in %types, the function in %fnslot - 1 when there is no such function, 2 when a kind is one
        //that cannot be passed
        "define linkonce_odr i32 @__olang_dyncall_ready(ptr %%name, ptr %%kinds, i64 %%n, i8 %%ret, ptr %%cif, ptr %%types, ptr %%fnslot) {\n"
        "entry:\n"
        "  %%void = icmp eq i8 %%ret, 0\n"
        "  %%isarr = icmp uge i8 %%ret, -128\n"
        "  br i1 %%isarr, label %%cannot, label %%rtype\n"
        "rtype:\n"
        "  %%rt0 = call ptr @__olang_ffi_type(i8 %%ret)\n"
        "  %%rt = select i1 %%void, ptr @ffi_type_void, ptr %%rt0\n"
        "  %%rtnone = icmp eq ptr %%rt, null\n"
        "  br i1 %%rtnone, label %%cannot, label %%loop\n"
        "loop:\n"
        "  %%i = phi i64 [ 0, %%rtype ], [ %%i1, %%next ]\n"
        "  %%more = icmp slt i64 %%i, %%n\n"
        "  br i1 %%more, label %%one, label %%find\n"
        "one:\n"
        "  %%kp = getelementptr i8, ptr %%kinds, i64 %%i\n"
        "  %%k = load i8, ptr %%kp\n"
        "  %%t = call ptr @__olang_ffi_type(i8 %%k)\n"
        "  %%tnone = icmp eq ptr %%t, null\n"
        "  br i1 %%tnone, label %%cannot, label %%next\n"
        "next:\n"
        "  %%tp = getelementptr ptr, ptr %%types, i64 %%i\n"
        "  store ptr %%t, ptr %%tp\n"
        "  %%i1 = add i64 %%i, 1\n"
        "  br label %%loop\n"
        "find:\n"
        "  %%fn = call ptr @__olang_dynsym(ptr %%name)\n"
        "  %%fnnone = icmp eq ptr %%fn, null\n"
        "  br i1 %%fnnone, label %%missing, label %%prep\n"
        "prep:\n"
        "  store ptr %%fn, ptr %%fnslot\n"
        "  %%n32 = trunc i64 %%n to i32\n"
        "  %%st = call i32 @ffi_prep_cif(ptr %%cif, i32 %d, i32 %%n32, ptr %%rt, ptr %%types)\n"
        "  %%ok = icmp eq i32 %%st, 0\n"
        "  %%r = select i1 %%ok, i32 0, i32 2\n"
        "  ret i32 %%r\n"
        "missing:\n"
        "  ret i32 1\n"
        "cannot:\n"
        "  ret i32 2\n"
        "}\n\n"
        //0 when the call "name" with these kinds and result can be made, 1 when there is no such function, 2 when a
        //kind is one that cannot be passed
        "define linkonce_odr i32 @__olang_dyncall_check(ptr %%name, ptr %%kinds, i8 %%ret) {\n"
        "entry:\n"
        "  %%cif = alloca [64 x i8], align 16\n"
        "  %%fnslot = alloca ptr\n"
        "  %%n = call i64 @__olang_dyncall_count(ptr %%kinds)\n"
        "  %%n1 = add i64 %%n, 1\n"
        "  %%bytes = mul i64 %%n1, 8\n"
        "  %%types = call ptr @malloc(i64 %%bytes)\n"
        "  call void @__olang_alloc_check(ptr %%types)\n"
        "  %%r = call i32 @__olang_dyncall_ready(ptr %%name, ptr %%kinds, i64 %%n, i8 %%ret, ptr %%cif, ptr %%types, ptr %%fnslot)\n"
        "  call void @free(ptr %%types)\n"
        "  ret i32 %%r\n"
        "}\n\n", L->ffiAbi);
    fputs(
        //the call made: each number passed from its word, each array as a pointer to the words after its length, and
        //the result's bits returned, an integer's extended as its type extends. A call that cannot be made - the
        //caller asks __olang_dyncall_check first - stops the program as a failed check does
        "define linkonce_odr i64 @__olang_dyncall(ptr %name, ptr %kinds, ptr %words, i8 %ret) {\n"
        "entry:\n"
        "  %cif = alloca [64 x i8], align 16\n"
        "  %fnslot = alloca ptr\n"
        "  %rv = alloca i64, align 16\n"
        "  store i64 0, ptr %rv\n"
        "  %n = call i64 @__olang_dyncall_count(ptr %kinds)\n"
        "  %n1 = add i64 %n, 1\n"
        "  %bytes = mul i64 %n1, 8\n"
        "  %types = call ptr @malloc(i64 %bytes)\n"
        "  call void @__olang_alloc_check(ptr %types)\n"
        "  %values = call ptr @malloc(i64 %bytes)\n"
        "  call void @__olang_alloc_check(ptr %values)\n"
        "  %ptrs = call ptr @malloc(i64 %bytes)\n"
        "  call void @__olang_alloc_check(ptr %ptrs)\n"
        "  %ready = call i32 @__olang_dyncall_ready(ptr %name, ptr %kinds, i64 %n, i8 %ret, ptr %cif, ptr %types, ptr %fnslot)\n"
        "  %ok = icmp eq i32 %ready, 0\n"
        "  br i1 %ok, label %loop, label %refused\n"
        "refused:\n"
        "  call void @__olang_check_failed(ptr @__olang_msg_dyncall)\n"
        "  ret i64 0\n"
        "loop:\n"
        "  %i = phi i64 [ 0, %entry ], [ %i1, %next ]\n"
        "  %at = phi i64 [ 0, %entry ], [ %at1, %next ]\n"
        "  %more = icmp slt i64 %i, %n\n"
        "  br i1 %more, label %one, label %call\n"
        "one:\n"
        "  %kp = getelementptr i8, ptr %kinds, i64 %i\n"
        "  %k = load i8, ptr %kp\n"
        "  %wp = getelementptr i64, ptr %words, i64 %at\n"
        "  %vp = getelementptr ptr, ptr %values, i64 %i\n"
        "  %isarr = icmp uge i8 %k, -128\n"
        "  br i1 %isarr, label %array, label %scalar\n"
        "scalar:\n"
        "  store ptr %wp, ptr %vp\n"
        "  %ats = add i64 %at, 1\n"
        "  br label %next\n"
        "array:\n"
        "  %len = load i64, ptr %wp\n"
        "  %code = and i8 %k, 127\n"
        "  %c = zext i8 %code to i64\n"
        "  %szp = getelementptr [13 x i64], ptr @__olang_kind_size, i64 0, i64 %c\n"
        "  %sz = load i64, ptr %szp\n"
        "  %nb = mul i64 %len, %sz\n"
        "  %nb7 = add i64 %nb, 7\n"
        "  %nw = lshr i64 %nb7, 3\n"
        "  %data = getelementptr i64, ptr %wp, i64 1\n"
        "  %pp = getelementptr ptr, ptr %ptrs, i64 %i\n"
        "  store ptr %data, ptr %pp\n"
        "  store ptr %pp, ptr %vp\n"
        "  %ata0 = add i64 %at, 1\n"
        "  %ata = add i64 %ata0, %nw\n"
        "  br label %next\n"
        "next:\n"
        "  %at1 = phi i64 [ %ats, %scalar ], [ %ata, %array ]\n"
        "  %i1 = add i64 %i, 1\n"
        "  br label %loop\n"
        "call:\n"
        "  %fn = load ptr, ptr %fnslot\n"
        "  call void @ffi_call(ptr %cif, ptr %fn, ptr %rv, ptr %values)\n"
        "  call void @free(ptr %types)\n"
        "  call void @free(ptr %values)\n"
        "  call void @free(ptr %ptrs)\n"
        "  %raw = load i64, ptr %rv\n"
        //an integer narrower than a word: its own bits, extended as its type extends (libffi widens it, but says the
        //caller should read it so)
        "  switch i8 %ret, label %whole [ i8 1, label %s8 i8 2, label %s16 i8 3, label %s32 i8 5, label %u8 "
            "i8 6, label %u16 i8 7, label %u32 i8 11, label %f32 ]\n"
        "s8:\n"
        "  %t8 = trunc i64 %raw to i8\n"
        "  %e8 = sext i8 %t8 to i64\n"
        "  ret i64 %e8\n"
        "s16:\n"
        "  %t16 = trunc i64 %raw to i16\n"
        "  %e16 = sext i16 %t16 to i64\n"
        "  ret i64 %e16\n"
        "s32:\n"
        "  %t32 = trunc i64 %raw to i32\n"
        "  %e32 = sext i32 %t32 to i64\n"
        "  ret i64 %e32\n"
        "u8:\n"
        "  %v8 = and i64 %raw, 255\n"
        "  ret i64 %v8\n"
        "u16:\n"
        "  %v16 = and i64 %raw, 65535\n"
        "  ret i64 %v16\n"
        "u32:\n"
        "  %v32 = and i64 %raw, 4294967295\n"
        "  ret i64 %v32\n"
        //an F32's bits are the first four bytes libffi wrote
        "f32:\n"
        "  %fbits = load i32, ptr %rv\n"
        "  %fw = zext i32 %fbits to i64\n"
        "  ret i64 %fw\n"
        "whole:\n"
        "  ret i64 %raw\n"
        "}\n\n", out);
}
