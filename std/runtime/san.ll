; olang's runtime, the scope sanitizer's part (B2f): linked, in the same object as runtime.ll, only into a -s build - a
; build without -s carries none of this. runtime.ll's "; @if san" lines are where the rest of the runtime calls it.
; How the compiler reads this file: runtime.ll's header.
;
; A scope that closes under -s gives its chunks to a quarantine rather than to the pool, so that a program reading
; storage after its scope closed - a use after free the static check (section 8) let through - reads something
; unmistakable instead of whatever the next scope put there. Every chunk of a closed scope is
;   - poisoned: what was used of it is overwritten with the poison, 0x7FF57FF57FF57FF5 (9220416504501469173; its upper
;     half 0x7FF57FF5, 2146795509), a 64-bit word chosen so that every view of it is wrong at once: as a pointer it is
;     non-canonical (x86-64 and AArch64 alike), so following a reference read out of poisoned storage faults on the
;     spot; as any float it is a NaN (F64, and each half as F32, each quarter as F16 or BF16), which a computation
;     carries to its result; as an integer it is near the type's maximum (I64 9.2e18, I32 2.1e9, I16 32757), so a length
;     read from it makes a loop run on into the poisoned pointer, and an allocation of that length asks for more than
;     any machine has (__olang_san_check_size) - never a plausible 0, 1 or -1;
;   - protected: every chunk is mapped under -s (__olang_new_chunk), so it is made inaccessible (PROT_NONE) for as long
;     as it is quarantined, and any read or write of it at all faults at once, wherever the reference came from;
;   - quarantined: held out of reuse, first in first out, until 16384 chunks (a power of two: the ring's index is
;     masked) or 256MB (ASan's quarantine) are held - only then is the oldest made accessible again and given to the
;     pool, still poisoned where it was used. One quarantine for the process, behind a lock: a chunk is reused by
;     whichever thread closes the scope that pushes it out, which the lock orders for the program and for
;     ThreadSanitizer alike (P7).
; A chunk the system will not map is taken from aligned_alloc and only poisoned; a mapped chunk of more than 1MB is
; poisoned only in its first page and the rest of its pages given back to the system (madvise), so a quarantine of
; large arrays costs address space, not memory. The fault is the sanitizer's own report (__olang_san_handler): a
; use after a scope closed is a failed check (S18) - a test fails, a program aborts - saying so; any other fault is
; left to the action it replaced.
declare i32 @mprotect(ptr, i64, i32)
declare i32 @madvise(ptr, i64, i32)
; a quarantined chunk: the chunk, how much of it is protected (0: none, when the system refused or it is not
; mapped), and the bytes it counts against the bound
%olang.sanq = type { ptr, i64, i64 }
@__olang_san_ring = global [16384 x %olang.sanq] zeroinitializer
; the oldest entry's index, how many there are, and the bytes they count
@__olang_san_first = global i64 0
@__olang_san_count = global i64 0
@__olang_san_bytes = global i64 0
@__olang_san_lock = global [40 x i8] zeroinitializer
; the action the sanitizer's handler replaced, for a fault that is not its own
@__olang_san_old = global [@@SIGACTION_BYTES@@ x i8] zeroinitializer
@__olang_msg_san_mem = unnamed_addr constant [78 x i8] c"use after scope closed: storage a closed scope gave back was read or written\0A\00"
@__olang_msg_san_ref = unnamed_addr constant [93 x i8] c"use after scope closed: a reference read from storage a closed scope gave back was followed\0A\00"
@__olang_msg_san_len = unnamed_addr constant [117 x i8] c"use after scope closed: an allocation of more than 2^60 bytes - a length read from storage a closed scope gave back\0A\00"

; what a closing scope gives back (__olang_scope_close): each of its chunks into the quarantine
define void @__olang_san_quarantine_list(ptr %head) noinline {
entry:
  br label %each
each:
  %cur = phi ptr [ %head, %entry ], [ %next, %each ]
  %nextptr = getelementptr %olang.chunk, ptr %cur, i32 0, i32 0
  %next = load ptr, ptr %nextptr
  call void @__olang_san_quarantine(ptr %cur)
  %atend = icmp eq ptr %next, null
  br i1 %atend, label %done, label %each
done:
  ret void
}

; n bytes at p (a multiple of 8, 8-aligned) overwritten with the poison
define void @__olang_san_poison(ptr %p, i64 %n) {
entry:
  %words = lshr i64 %n, 3
  %none = icmp eq i64 %words, 0
  br i1 %none, label %done, label %loop
loop:
  %i = phi i64 [ 0, %entry ], [ %i1, %loop ]
  %q = getelementptr i64, ptr %p, i64 %i
  store i64 9220416504501469173, ptr %q
  %i1 = add i64 %i, 1
  %more = icmp ult i64 %i1, %words
  br i1 %more, label %loop, label %done
done:
  ret void
}

; chunk c, which a closed scope held, poisoned, protected and put in the quarantine - after the oldest have been
; taken out until it fits under the bounds (all of them, for a chunk larger than the bound alone)
define void @__olang_san_quarantine(ptr %c) {
entry:
  %usedptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 1
  %used = load i64, ptr %usedptr
  %capptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 2
  %cap = load i64, ptr %capptr
  %mapptr = getelementptr %olang.chunk, ptr %c, i32 0, i32 3
  %maplen = load i64, ptr %mapptr
  %data = getelementptr %olang.chunk, ptr %c, i32 1
  %mapped = icmp ne i64 %maplen, 0
  %large = icmp ugt i64 %maplen, 1048576
  %discard = and i1 %mapped, %large
  ; what was used, or of one whose pages are given back, what of it lies in its first page
  %firstpage = select i1 %discard, i64 4032, i64 %used
  %short = icmp ult i64 %used, %firstpage
  %pn = select i1 %short, i64 %used, i64 %firstpage
  call void @__olang_san_poison(ptr %data, i64 %pn)
  %whole = add i64 %cap, 64
  %held = select i1 %discard, i64 4096, i64 %whole
  br i1 %mapped, label %protect, label %push
protect:
  %pr = call i32 @mprotect(ptr %c, i64 %maplen, i32 0)
  %prok = icmp eq i32 %pr, 0
  %plen.p = select i1 %prok, i64 %maplen, i64 0
  %drop = and i1 %discard, %prok
  br i1 %drop, label %release, label %push
release:
  %rest = getelementptr i8, ptr %c, i64 4096
  %restlen = sub i64 %maplen, 4096
  %dr = call i32 @madvise(ptr %rest, i64 %restlen, i32 4)
  br label %push
push:
  %plen = phi i64 [ 0, %entry ], [ %plen.p, %protect ], [ %plen.p, %release ]
  %l0 = call i32 @pthread_mutex_lock(ptr @__olang_san_lock)
  br label %room
room:
  %count = load i64, ptr @__olang_san_count
  %bytes = load i64, ptr @__olang_san_bytes
  %full = icmp uge i64 %count, 16384
  %after = add i64 %bytes, %held
  %heavy = icmp ugt i64 %after, 268435456
  %over = or i1 %full, %heavy
  %any = icmp ne i64 %count, 0
  %evict = and i1 %over, %any
  br i1 %evict, label %pop, label %put
  ; the oldest out, its entry cleared first so that the handler no longer takes a fault there for its own
pop:
  %first = load i64, ptr @__olang_san_first
  %e = getelementptr [16384 x %olang.sanq], ptr @__olang_san_ring, i64 0, i64 %first
  %ecp = getelementptr %olang.sanq, ptr %e, i32 0, i32 0
  %ec = load ptr, ptr %ecp
  %elp = getelementptr %olang.sanq, ptr %e, i32 0, i32 1
  %el = load i64, ptr %elp
  %ehp = getelementptr %olang.sanq, ptr %e, i32 0, i32 2
  %eh = load i64, ptr %ehp
  store i64 0, ptr %elp
  store ptr null, ptr %ecp
  %first1 = add i64 %first, 1
  %firstw = and i64 %first1, 16383
  store i64 %firstw, ptr @__olang_san_first
  %count1 = sub i64 %count, 1
  store i64 %count1, ptr @__olang_san_count
  %bytes1 = sub i64 %bytes, %eh
  store i64 %bytes1, ptr @__olang_san_bytes
  %u0 = call i32 @pthread_mutex_unlock(ptr @__olang_san_lock)
  call void @__olang_san_release(ptr %ec, i64 %el)
  %l1 = call i32 @pthread_mutex_lock(ptr @__olang_san_lock)
  br label %room
put:
  %firstp = load i64, ptr @__olang_san_first
  %at0 = add i64 %firstp, %count
  %at = and i64 %at0, 16383
  %slot = getelementptr [16384 x %olang.sanq], ptr @__olang_san_ring, i64 0, i64 %at
  %scp = getelementptr %olang.sanq, ptr %slot, i32 0, i32 0
  store ptr %c, ptr %scp
  %slp = getelementptr %olang.sanq, ptr %slot, i32 0, i32 1
  store i64 %plen, ptr %slp
  %shp = getelementptr %olang.sanq, ptr %slot, i32 0, i32 2
  store i64 %held, ptr %shp
  %count2 = add i64 %count, 1
  store i64 %count2, ptr @__olang_san_count
  store i64 %after, ptr @__olang_san_bytes
  %u1 = call i32 @pthread_mutex_unlock(ptr @__olang_san_lock)
  ret void
}

; a chunk leaving the quarantine: accessible again, and to this thread's pool - or, when the system will not
; make it accessible, never touched again
define void @__olang_san_release(ptr %c, i64 %plen) {
entry:
  %prot = icmp ne i64 %plen, 0
  br i1 %prot, label %open, label %give
open:
  %r = call i32 @mprotect(ptr %c, i64 %plen, i32 3)
  %ok = icmp eq i32 %r, 0
  br i1 %ok, label %give, label %lost
lost:
  ret void
give:
  call void @__olang_pool_give(ptr %c)
  ret void
}

; a size no allocation can have - 2^60 bytes or more - asked of the allocator: a length read out of poisoned storage
define void @__olang_san_check_size(i64 %size) {
entry:
  %bad = icmp uge i64 %size, 1152921504606846976
  br i1 %bad, label %say, label %ok
say:
  call void @__olang_san_report(i32 3)
  br label %ok
ok:
  ret void
}

; a use after a scope closed, found: a failed check (S18) - in a test, that test fails; otherwise the process
; aborts. 1: storage in quarantine was reached, 2: a poisoned reference was followed, 3: a poisoned length
define void @__olang_san_report(i32 %kind) {
entry:
  %is1 = icmp eq i32 %kind, 1
  %is2 = icmp eq i32 %kind, 2
  %m2 = select i1 %is2, ptr @__olang_msg_san_ref, ptr @__olang_msg_san_len
  %m = select i1 %is1, ptr @__olang_msg_san_mem, ptr %m2
  call void @__olang_check_failed(ptr %m)
  ret void
}

; the handler, for SIGSEGV: a fault at an address in a chunk the quarantine holds, or at an address that is the
; poison (where the fault reports one: AArch64), or - x86-64, where following a non-canonical address faults
; with no address (SI_KERNEL) - with the poison in a general register, is a use after a scope closed. Anything
; else is not the sanitizer's: the action it replaced is put back, and the fault, made again on return, meets it
define void @__olang_san_handler(i32 %sig, ptr %info, ptr %uc) {
entry:
  %ap = getelementptr i8, ptr %info, i64 16
  %addr = load ptr, ptr %ap
  %a = ptrtoint ptr %addr to i64
  br label %scan
scan:
  %i = phi i64 [ 0, %entry ], [ %i1, %next ]
  %e = getelementptr [16384 x %olang.sanq], ptr @__olang_san_ring, i64 0, i64 %i
  %cp = getelementptr %olang.sanq, ptr %e, i32 0, i32 0
  %c = load ptr, ptr %cp
  %lp = getelementptr %olang.sanq, ptr %e, i32 0, i32 1
  %len = load i64, ptr %lp
  %ci = ptrtoint ptr %c to i64
  %off = sub i64 %a, %ci
  %in = icmp ult i64 %off, %len
  br i1 %in, label %closed, label %next
next:
  %i1 = add i64 %i, 1
  %more = icmp ult i64 %i1, 16384
  br i1 %more, label %scan, label %poison
closed:
  call void @__olang_san_report(i32 1)
  ret void
poison:
  %ahi = lshr i64 %a, 32
  %apois = icmp eq i64 %ahi, 2146795509
  br i1 %apois, label %followed, label %regs
followed:
  call void @__olang_san_report(i32 2)
  ret void
regs:
; @if x86_64
  ; uc_mcontext.gregs, at 40 in a ucontext_t: the sixteen general registers come first, the instruction pointer
  ; after them
  %codep = getelementptr i8, ptr %info, i64 8
  %code = load i32, ptr %codep
  %kernel = icmp eq i32 %code, 128
  br i1 %kernel, label %rscan, label %notours
rscan:
  %k = phi i64 [ 0, %regs ], [ %k1, %rnext ]
  %ri = add i64 %k, 5
  %rp = getelementptr i64, ptr %uc, i64 %ri
  %r = load i64, ptr %rp
  %rhi = lshr i64 %r, 32
  %rpois = icmp eq i64 %rhi, 2146795509
  br i1 %rpois, label %followed, label %rnext
rnext:
  %k1 = add i64 %k, 1
  %rmore = icmp ult i64 %k1, 16
  br i1 %rmore, label %rscan, label %notours
; @else
  br label %notours
; @end
notours:
  %back = call i32 @sigaction(i32 %sig, ptr @__olang_san_old, ptr null)
  ret void
}

; at the start of main - a program's or a test build's: the handler installed for SIGSEGV, the action it
; replaces kept. SA_SIGINFO for the address and the registers, SA_NODEFER since a report in a test leaves the
; handler by a jump (S18), and SA_ONSTACK so that it runs on a thread's alternate stack where one is set (S2)
define void @__olang_san_init() {
entry:
  %sa = alloca [@@SIGACTION_BYTES@@ x i8], align 16
  call void @llvm.memset.p0.i64(ptr %sa, i8 0, i64 @@SIGACTION_BYTES@@, i1 false)
  store ptr @__olang_san_handler, ptr %sa
  %flagsp = getelementptr i8, ptr %sa, i64 @@SIGACTION_FLAGS@@
  store i32 1207959556, ptr %flagsp ; SA_SIGINFO | SA_NODEFER | SA_ONSTACK
  %r = call i32 @sigaction(i32 11, ptr %sa, ptr @__olang_san_old) ; SIGSEGV
  ret void
}

