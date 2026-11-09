source_filename = "olang_dyncall.3e9ad0db2452d661.quick.ll"
target triple = "x86_64-pc-linux-gnu"

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
declare i64 @read(i32, ptr, i64)
declare i64 @syscall(i64, ...)
declare i64 @llvm.ctlz.i64(i64, i1)
declare i128 @llvm.cttz.i128(i128, i1)
declare i64 @sysconf(i32)
declare double @llvm.arithmetic.fence.f64(double)
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
@__olang_jmp_target = external thread_local(initialexec) global ptr
@__olang_unwind_top = external thread_local(initialexec) global ptr
@__olang_unwind_mark = external thread_local(initialexec) global ptr
@__olang_msg_oom = external constant [15 x i8]
@__olang_msg_high = external constant [57 x i8]
@__olang_msg_spawn = external constant [22 x i8]
@__olang_msg_stack = external constant [42 x i8]
@__olang_ert = external thread_local(initialexec) global [32 x ptr]
@__olang_ert_n = external thread_local(initialexec) global i64
@__olang_fail_error = external thread_local(initialexec) global ptr
@__olang_ert_dropped = external constant [32 x i8]
declare void @__olang_ert_raise(ptr)
declare void @__olang_ert_pass(ptr)
declare void @__olang_ert_clear()
declare void @__olang_ert_print(ptr)
declare void @__olang_bang_failed(ptr) cold noreturn
@__olang_msg_debughint = external constant [47 x i8]
declare void @__olang_debug_hint(ptr)
declare void @__olang_bang_failed_plain(ptr) cold noreturn
declare void @__olang_test_error(ptr) cold noreturn
declare void @__olang_bang_failed_text(ptr, { i64, ptr }, i1) cold noreturn
@__olang_msg_unhandled = external constant [18 x i8]
declare void @__olang_unhandled_text({ i64, ptr }, i1) cold noreturn
declare void @__olang_test_error_text({ i64, ptr }) cold noreturn
@__olang_fail_fmt = external constant [11 x i8]
@__olang_fail_err_fmt = external constant [15 x i8]
declare void @__olang_test_failed(ptr)
declare void @__olang_check_failed(ptr) cold noreturn
declare void @__olang_check_failed_text(ptr, { i64, ptr }) cold noreturn
declare ptr @__olang_check_stream()
declare void @__olang_check_end() cold noreturn
declare void @__olang_alloc_check(ptr)
define available_externally void @__olang_gen_count(ptr %p, i64 %by) alwaysinline #0 {
entry:
  %none = icmp eq ptr %p, null
  br i1 %none, label %done, label %go
go:
  %h = getelementptr i8, ptr %p, i64 -8
  %w = load atomic i64, ptr %h monotonic, align 8
  %c0 = lshr i64 %w, 16
  %c = and i64 %c0, 3
  %pinned = icmp eq i64 %c, 3
  br i1 %pinned, label %done, label %update
update:
  %n0 = add i64 %c, %by
  %neg = icmp slt i64 %n0, 0
  %n1 = select i1 %neg, i64 0, i64 %n0
  %big = icmp ugt i64 %n1, 3
  %n2 = select i1 %big, i64 3, i64 %n1
  %clear = and i64 %w, -196609
  %n3 = shl i64 %n2, 16
  %w2 = or i64 %clear, %n3
  store atomic i64 %w2, ptr %h monotonic, align 8
  br label %done
done:
  ret void
}
define available_externally ptr @__olang_weak_read(ptr %w) alwaysinline #0 {
entry:
  %wi = ptrtoint ptr %w to i64
  %pi = and i64 %wi, 281474976710655
  %none = icmp eq i64 %pi, 0
  br i1 %none, label %null, label %go
go:
  %p = inttoptr i64 %pi to ptr
  %h = getelementptr i8, ptr %p, i64 -8
  %hw = load atomic i64, ptr %h monotonic, align 8
  %g = and i64 %hw, 65535
  %wg = lshr i64 %wi, 48
  %same = icmp eq i64 %g, %wg
  %held = and i64 %hw, 196608
  %some = icmp ne i64 %held, 0
  %ok = and i1 %same, %some
  %r = select i1 %ok, ptr %p, ptr null
  ret ptr %r
null:
  ret ptr null
}
define available_externally ptr @__olang_weak_word(ptr %p) alwaysinline #0 {
entry:
  %none = icmp eq ptr %p, null
  br i1 %none, label %null, label %go
go:
  %h = getelementptr i8, ptr %p, i64 -8
  %hw = load atomic i64, ptr %h monotonic, align 8
  %g = and i64 %hw, 65535
  %gs = shl i64 %g, 48
  %pi = ptrtoint ptr %p to i64
  %wi = or i64 %pi, %gs
  %r = inttoptr i64 %wi to ptr
  ret ptr %r
null:
  ret ptr null
}
declare void @__olang_task_started(i32)
%olang.chunk = type { ptr, i64, i64, i64, i64, i64, ptr, i64 }
@__olang_slot_base = external global i64
@__olang_slot_end = external global i64
@__olang_slot_next = external global i64
@__olang_slot_rw = external global i64
@__olang_slot_tried = external global i64
@__olang_slot_free = external global ptr
@__olang_slot_lock = external global [40 x i8]
@__olang_large = external global ptr
@__olang_large_n = external global i64
@__olang_large_cap = external global i64
@__olang_large_lock = external global [40 x i8]
declare i32 @mprotect(ptr, i64, i32)
declare i32 @madvise(ptr, i64, i32)
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
%olang.pool = type { [128 x ptr], i128, i64, i64, i64 }
%olang.dtornode = type { ptr, ptr, ptr, ptr, ptr }
%olang.unwind = type { ptr, ptr, ptr }
%olang.task = type { ptr, i64, ptr, i64, ptr }
%olang.worker = type { ptr, ptr, ptr, i64, ptr, [40 x i8], [48 x i8] }
%olang.merge = type { ptr, ptr }
%olang.scope = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%olang.region = type { %olang.scope, %olang.scope, ptr, ptr, ptr, ptr, ptr }
@__olang_pool = external thread_local(initialexec) global %olang.pool
@__olang_pool_spare = external thread_local(initialexec) global ptr
@__olang_shared_pool = external global %olang.pool
@__olang_shared_lock = external global [40 x i8]
@__olang_shared_holds = external global i64
@__olang_fwd_chunk = external global %olang.chunk
@__olang_global_scope = external global %olang.scope
@__olang_prog_scope = external thread_local(initialexec) global ptr
@__olang_self = external thread_local(initialexec) global ptr
@__olang_thread_next = external global i64
declare ptr @__olang_new_chunk(i64) noinline
declare ptr @__olang_pool_take(ptr, i64, i64)
declare i64 @__olang_pool_batch()
declare void @__olang_shared_refill(ptr) noinline
declare void @__olang_shared_publish()
declare void @__olang_pool_unlink(ptr, ptr)
declare void @__olang_chunk_release(ptr)
declare void @__olang_pool_put(ptr, ptr)
declare void @__olang_pool_keep(ptr, ptr)
declare void @__olang_pool_give(ptr)
declare void @__olang_pool_give_list(ptr) noinline
declare ptr @__olang_pool_oldest(ptr)
declare i1 @__olang_pool_make_room(ptr, i64) noinline
declare void @__olang_pool_share() noinline
declare i64 @__olang_pool_measure()
define available_externally i1 @__olang_in_slots(i64 %a) alwaysinline #0 {
entry:
  %base = load atomic i64, ptr @__olang_slot_base monotonic, align 8
  %end = load atomic i64, ptr @__olang_slot_end monotonic, align 8
  %off = sub i64 %a, %base
  %span = sub i64 %end, %base
  %in = icmp ult i64 %off, %span
  ret i1 %in
}
declare void @__olang_slot_reserve() noinline
declare ptr @__olang_slot_take() noinline
declare void @__olang_slot_give(ptr) noinline
declare i64 @__olang_large_after(ptr, i64, i64)
declare void @__olang_large_add(ptr, i64) noinline
declare void @__olang_large_remove(ptr) noinline
declare ptr @__olang_large_find(i64) noinline
declare ptr @__olang_chunk_of(ptr)
declare ptr @__olang_scope_of(ptr, ptr) noinline
declare ptr @__olang_scope_or(ptr, ptr)
@__olang_empty_array = external constant [16 x i64]
define available_externally noalias ptr @__olang_scope_alloc(ptr %scope, i64 %rawsize) alwaysinline #0 {
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
define available_externally noalias ptr @__olang_scope_alloc_min(ptr %scope, i64 %rawsize, i64 %minaln) alwaysinline #0 {
entry:
  %sizeup = add i64 %rawsize, 7
  %size8 = and i64 %sizeup, -8
  %a32 = icmp uge i64 %size8, 32
  %a64 = icmp uge i64 %size8, 64
  %alnA = select i1 %a32, i64 32, i64 8
  %alnB = select i1 %a64, i64 64, i64 %alnA
  %wider = icmp ugt i64 %minaln, %alnB
  %aln = select i1 %wider, i64 %minaln, i64 %alnB
  %p = call ptr @__olang_scope_alloc_a(ptr %scope, i64 %rawsize, i64 %aln)
  ret ptr %p
}
define available_externally noalias ptr @__olang_scope_alloc_a(ptr %scope, i64 %rawsize, i64 %aln) alwaysinline #0 {
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
  ; B19b: a benchmark build counts what this thread allocates - here and at the slow path's own bump, so each
  ; allocation is counted once wherever it is made (a region's and a forwarded scope's come back through here)
; @bench %bna = load i64, ptr @__olang_bench_allocs
; @bench %bna1 = add i64 %bna, 1
; @bench store i64 %bna1, ptr @__olang_bench_allocs
; @bench %bnb = load i64, ptr @__olang_bench_bytes
; @bench %bnb1 = add i64 %bnb, %size
; @bench store i64 %bnb1, ptr @__olang_bench_bytes
  ret ptr %result
needchunk:
  %slow = tail call ptr @__olang_scope_alloc_slow(ptr %scope, i64 %rawsize, i64 %aln)
  ret ptr %slow
}
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare noalias ptr @__olang_scope_alloc_zeroed_min(ptr, i64, i64)
@__olang_fmt_g = external constant [6 x i8]
@__olang_pow10 = external constant [20 x i64]
@__olang_digits2 = external constant [200 x i8]
declare i64 @__olang_fmt_u64(ptr, i64)
declare i64 @__olang_fmt_i64(ptr, i64)
declare i64 @__olang_fmt_u128(ptr, i128)
declare i64 @__olang_fmt_i128(ptr, i128)
declare bfloat @__olang_int_bf16(i64, i1)
declare void @__olang_rd_put(ptr, i64, ptr, i64)
declare i64 @__olang_rd_quote(ptr, i64, ptr, i64, i8)
declare void @__olang_pool_drain()
@__olang_worker_free = external global ptr
@__olang_worker_lock = external global [40 x i8]
@__olang_task_lock = external global [40 x i8]
@__olang_task_cv = external global [48 x i8]
@__olang_worker_idle = external global i64
declare ptr @__olang_worker_get()
declare void @__olang_worker_start(ptr, ptr, ptr, ptr)
declare void @__olang_task_wait(ptr)
declare i64 @__olang_join_tasks(ptr)
declare i64 @__olang_join_tasks_keep(ptr, i1)
declare void @__olang_thread_init()
define available_externally ptr @__olang_scope_mine(ptr %s) alwaysinline #0 {
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
define available_externally ptr @__olang_capture_scope(ptr %s) alwaysinline #0 {
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
declare ptr @__olang_scope_mine_slow(ptr) noinline
declare ptr @__olang_scope_part(ptr, ptr) noinline
define available_externally void @__olang_scope_escape(ptr %s) alwaysinline #0 {
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
declare ptr @__olang_standin(ptr)
declare void @__olang_chunks_own(ptr, ptr)
declare { ptr, ptr, ptr } @__olang_scope_fold_parts(ptr, ptr, ptr, ptr) noinline
declare void @__olang_unwind_to(ptr)
declare void @__olang_scope_register_dtor(ptr, ptr, ptr)
declare void @__olang_region_register_dtor(ptr, ptr, ptr) noinline
define available_externally void @__olang_dtor_head(ptr %node, ptr %at) alwaysinline #0 {
entry:
  %has = icmp ne ptr %node, null
  br i1 %has, label %fix, label %done
fix:
  %ppp = getelementptr %olang.dtornode, ptr %node, i32 0, i32 3
  store ptr %at, ptr %ppp
  br label %done
done:
  ret void
}
declare void @__olang_dtor_unlink(ptr)
declare void @__olang_scope_push_dtor(ptr, ptr, ptr, ptr)
@__olang_region_chunk = external global %olang.chunk
@__olang_rfree_hdr = external thread_local(initialexec) global ptr
@__olang_rfree_nhdr = external thread_local(initialexec) global i64
@__olang_rfree_blk = external thread_local(initialexec) global [32 x ptr]
declare ptr @__olang_region_hdr_new()
declare void @__olang_region_hdr_free(ptr)
@__olang_slab_cur = external thread_local(initialexec) global [32 x ptr]
@__olang_rshared_blk = external global [32 x ptr]
declare ptr @__olang_region_blk_new(i64)
declare void @__olang_region_blk_free(ptr)
declare void @__olang_region_lists_drain()
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_alloc(ptr, i64, i64) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_release(ptr) noinline
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@__olang_errpay_top = external thread_local(initialexec) global ptr
@__olang_errpay_parent = external thread_local(initialexec) global %olang.scope
declare ptr @__olang_errpay_push() cold
declare void @__olang_errpay_set(ptr) cold
declare ptr @__olang_errpay_top_get()
declare void @__olang_errpay_pop()
@__olang_errpay_out = external thread_local(initialexec) global ptr
declare void @__olang_errpay_detach() cold
declare ptr @__olang_errpay_taken()
declare void @__olang_errpay_attach(ptr, i1)
declare void @__olang_close_kids(ptr) noinline
declare void @__olang_scope_merge(ptr)
define available_externally void @__olang_scope_close(ptr %scope) alwaysinline #0 {
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
  call void @__olang_dtor_head(ptr %fd, ptr %pdp)
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
  %dhasnext = icmp ne ptr %dnext, null
  br i1 %dhasnext, label %dfixpp, label %drun
dfixpp:
  %dnpp = getelementptr %olang.dtornode, ptr %dnext, i32 0, i32 3
  store ptr %dheadptr, ptr %dnpp
  br label %drun
drun:
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
  call void @__olang_dtor_head(ptr %wfd, ptr %dheadptr)
  %wfh = extractvalue { ptr, ptr, ptr } %wfolded, 1
  store ptr %wfh, ptr %whp, !tbaa !59
  %wft = extractvalue { ptr, ptr, ptr } %wfolded, 2
  store ptr %wft, ptr %wtp, !tbaa !59
  store ptr null, ptr %fptr, !tbaa !59
  br label %dloop
  ; the regions made in this scope (O8d), after its destructors - which may read what this scope's objects hold there -
  ; and before its chunks: given the list, not the header, so the header does not escape into the call
chunks:
  %kidsptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 6
  %kids = load ptr, ptr %kidsptr, !tbaa !59
  %haskids = icmp ne ptr %kids, null
  br i1 %haskids, label %closekids, label %ownchunks
closekids:
  store ptr null, ptr %kidsptr, !tbaa !59
  call void @__olang_close_kids(ptr %kids)
  br label %ownchunks
ownchunks:
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
  br label %done
done:
  ret void
}
@__olang_argc = external global i32
@__olang_argv = external global ptr
declare i64 @strlen(ptr)
declare ptr @getenv(ptr)
declare ptr @__errno_location()
declare i32 @stat(ptr, ptr)
declare ptr @opendir(ptr)
declare ptr @readdir(ptr)
declare i32 @closedir(ptr)
declare ptr @realpath(ptr, ptr)
declare ptr @mkdtemp(ptr)
declare i64 @__olang_copy_cstr(ptr, ptr, i64)
declare i64 @__olang_arg_count()
declare i64 @__olang_arg(i64, ptr, i64)
@__olang_test_name = external global ptr
@__olang_test_file = external global ptr
@__olang_fuzz_data = external global ptr
@__olang_fuzz_size = external global i64
declare i64 @__olang_fuzz_input(ptr, i64)
declare i64 @__olang_test_running(ptr, i64)
declare i64 @__olang_test_source(ptr, i64)
declare void @__olang_test_detach()
@__olang_bench_allocs = external thread_local(initialexec) global i64
@__olang_bench_bytes = external thread_local(initialexec) global i64
@__olang_bench_perf = external thread_local(initialexec) global i32
declare i64 @__olang_bench_on()
declare i64 @__olang_bench_allocs_made()
declare i64 @__olang_bench_bytes_made()
define available_externally void @__olang_bench_keep(i64 %v) alwaysinline #0 {
entry:
  call void asm sideeffect "", "r"(i64 %v)
  ret void
}
declare i64 @__olang_bench_instructions()
declare i64 @__olang_env(ptr, ptr, i64)
declare i64 @__olang_realpath(ptr, ptr, i64)
declare i32 @__olang_mkdtemp(ptr)
declare i32 @__olang_err()
declare i32 @__olang_stat(ptr, ptr)
declare i64 @__olang_dir(ptr, ptr, i64)
declare i32 @posix_spawn_file_actions_init(ptr)
declare i32 @posix_spawn_file_actions_destroy(ptr)
declare i32 @posix_spawn_file_actions_adddup2(ptr, i32, i32)
declare extern_weak i32 @posix_spawn_file_actions_addchdir_np(ptr, ptr)
declare i32 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)
declare i32 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)
@environ = external global ptr
@__olang_sh = external constant [8 x i8]
@__olang_sh_c = external constant [3 x i8]
@__olang_sh_cd = external constant [24 x i8]
declare i32 @execv(ptr, ptr)
declare i32 @__olang_exec(ptr, ptr, i64)
declare i32 @__olang_spawn(ptr, i64, i32, i32, i32, ptr)
declare i32 @pthread_attr_init(ptr)
declare i32 @pthread_attr_destroy(ptr)
declare i32 @pthread_attr_setstacksize(ptr, i64)
declare i32 @pthread_join(i64, ptr)
declare i32 @sigaction(i32, ptr, ptr)
declare i32 @sigaltstack(ptr, ptr)
declare i32 @raise(i32)
declare i64 @write(i32, ptr, i64)
declare ptr @dlsym(ptr, ptr)
%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }
@__olang_minstack_name = external constant [23 x i8]
@__olang_crash_msg = external global ptr
@__olang_crash_stack = external thread_local(initialexec) global ptr
declare void @__olang_run_on_stack(i64, ptr, ptr)
declare ptr @__olang_stack_main(ptr)
declare void @__olang_alt_stack()
declare void @__olang_alt_stack_make()
declare void @__olang_alt_stack_free()
declare void @__olang_crash_handler(i32)
declare void @__olang_on_crash(ptr, i64)
define available_externally ptr @__olang_sb_room(ptr %sb, i64 %need) alwaysinline #0 {
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
declare ptr @__olang_sb_scratch(ptr) noinline
declare void @__olang_sb_done(ptr)
declare void @__olang_sb_add(ptr, i64)
declare void @__olang_sb_put(ptr, ptr, i64)
@__olang_fmt_e = external constant [5 x i8]
@__olang_fmt_s = external constant [3 x i8]
@__olang_fmt_fpad = external constant [15 x i8]
@__olang_fmt_fmid = external constant [16 x i8]
@__olang_fmt_fsmall = external constant [17 x i8]
@__olang_fmt_minus = external constant [2 x i8]
@__olang_fmt_zeros = external constant [20 x i8]
declare i64 @__olang_fmt_float_tries(ptr, i64, double, i32)
@__olang_pow10m = external constant [1392 x i64]
declare i64 @__olang_rop(i64, i64, i64)
declare { i64, i32, i1 } @__olang_shortest(i64, i32, i32, i32)
declare i64 @__olang_fmt_float(ptr, i64, double, i32)
declare void @__olang_thread_enter() noinline

; olang's runtime, the dynamic call's part (S3, section 11 X6): a C function called by its name, chosen while the program
; runs - what an interpreter needs to call the externs of the program it runs. Over the C library's dlsym and libffi,
; so an object of its own, linked - with -lffi - only into a program declaring __olang_dyncall or
; __olang_dyncall_check (std/ffi). How the compiler reads this file: runtime.ll's header. It is compiled after the
; declarations a module carries for runtime.ll, which is how it reaches the rest of the runtime; so it declares only what
; runtime.ll does not.
;
; A call is described by bytes, its kinds: one per argument and a 0 after the last, each a number type's code - I8 1,
; I16 2, I32 3, I64 4, U8 5, U16 6, U32 7, U64 8, F16 9, BF16 10, F32 11, F64 12 - with 0x80 added for an array of
; them; and the result's code, 0 for none. Its values are 64-bit words, in order: a number is one word, holding its
; bits from the lowest; an array is a word holding its length, then its elements' bytes packed into as many words as
; they fill. The function is handed a pointer to those bytes, so what it writes into the array is in the words after
; the call - the copy in and out an interpreter makes of the array it holds. A 16-bit float is passed only in an array
; (libffi has no such type), and nothing else is passed at all, which is X2's vocabulary. -i calls the same contract
; in its own process (comptime.c).
declare ptr @dlopen(ptr, i32)
declare i32 @ffi_prep_cif(ptr, i32, i32, ptr, ptr)
declare i32 @ffi_prep_cif_var(ptr, i32, i32, i32, ptr, ptr)
declare void @ffi_call(ptr, ptr, ptr, ptr)
@ffi_type_void = external global i8
@ffi_type_uint8 = external global i8
@ffi_type_sint8 = external global i8
@ffi_type_uint16 = external global i8
@ffi_type_sint16 = external global i8
@ffi_type_uint32 = external global i8
@ffi_type_sint32 = external global i8
@ffi_type_uint64 = external global i8
@ffi_type_sint64 = external global i8
@ffi_type_float = external global i8
@ffi_type_double = external global i8
@ffi_type_pointer = external global i8
@__olang_libm = global ptr null
@__olang_libm_name = unnamed_addr constant [10 x i8] c"libm.so.6\00"
@__olang_msg_dyncall = unnamed_addr constant [55 x i8] c"dynamic call of a function not found, or not callable\0A\00"
; the bytes one element of kind k (an array's) takes, and the libffi type a value of kind k is passed as: a
; pointer for an array, null for what cannot be passed (a 16-bit float alone, an unknown code)
@__olang_kind_size = unnamed_addr constant [13 x i64] [i64 0, i64 1, i64 2, i64 4, i64 8, i64 1, i64 2, i64 4, i64 8, i64 2, i64 2, i64 4, i64 8]
@__olang_kind_type = unnamed_addr constant [13 x ptr] [ptr null, ptr @ffi_type_sint8, ptr @ffi_type_sint16, ptr @ffi_type_sint32, ptr @ffi_type_sint64, ptr @ffi_type_uint8, ptr @ffi_type_uint16, ptr @ffi_type_uint32, ptr @ffi_type_uint64, ptr null, ptr null, ptr @ffi_type_float, ptr @ffi_type_double]

define ptr @__olang_ffi_type(i8 %k) #0 {
entry:
  %arr = icmp uge i8 %k, -128
  %code = and i8 %k, 127
  %c = zext i8 %code to i64
  %known = icmp ult i64 %c, 13
  %zero = icmp eq i64 %c, 0
  br i1 %known, label %look, label %none
look:
  br i1 %zero, label %none, label %have
have:
  br i1 %arr, label %array, label %scalar
array:
  ret ptr @ffi_type_pointer
scalar:
  %slot = getelementptr [13 x ptr], ptr @__olang_kind_type, i64 0, i64 %c
  %t = load ptr, ptr %slot
  ret ptr %t
none:
  ret ptr null
}

; the function "name" names: among what the process has loaded, else in the C math library, opened once
define ptr @__olang_dynsym(ptr %name) #0 {
entry:
  %s = call ptr @dlsym(ptr null, ptr %name)
  %found = icmp ne ptr %s, null
  br i1 %found, label %done, label %libm
libm:
  %h0 = load atomic ptr, ptr @__olang_libm monotonic, align 8
  %closed = icmp eq ptr %h0, null
  br i1 %closed, label %open, label %look
open:
  %h1 = call ptr @dlopen(ptr @__olang_libm_name, i32 258)
  store atomic ptr %h1, ptr @__olang_libm monotonic, align 8
  br label %look
look:
  %h = phi ptr [ %h0, %libm ], [ %h1, %open ]
  %none = icmp eq ptr %h, null
  br i1 %none, label %done, label %inlibm
inlibm:
  %s2 = call ptr @dlsym(ptr %h, ptr %name)
  br label %done
done:
  %r = phi ptr [ %s, %entry ], [ null, %look ], [ %s2, %inlibm ]
  ret ptr %r
}

; how many kinds there are before their 0
define i64 @__olang_dyncall_count(ptr %kinds) #0 {
entry:
  br label %loop
loop:
  %n = phi i64 [ 0, %entry ], [ %n1, %next ]
  %p = getelementptr i8, ptr %kinds, i64 %n
  %k = load i8, ptr %p
  %end = icmp eq i8 %k, 0
  br i1 %end, label %done, label %next
next:
  %n1 = add i64 %n, 1
  br label %loop
done:
  ret i64 %n
}

; 0 when "name" can be called with these n kinds and that result - its call interface prepared in %cif, the
; argument types in %types, the function in %fnslot - 1 when there is no such function, 2 when a kind is one
; that cannot be passed. %fixed is how many of the arguments are C's named ones where the function takes variable ones
; after them (X21), -1 where it takes none
define i32 @__olang_dyncall_ready(ptr %name, ptr %kinds, i64 %n, i8 %ret, ptr %cif, ptr %types, ptr %fnslot, i64 %fixed) #0 {
entry:
  %void = icmp eq i8 %ret, 0
  %isarr = icmp uge i8 %ret, -128
  br i1 %isarr, label %cannot, label %rtype
rtype:
  %rt0 = call ptr @__olang_ffi_type(i8 %ret)
  %rt = select i1 %void, ptr @ffi_type_void, ptr %rt0
  %rtnone = icmp eq ptr %rt, null
  br i1 %rtnone, label %cannot, label %loop
loop:
  %i = phi i64 [ 0, %rtype ], [ %i1, %next ]
  %more = icmp slt i64 %i, %n
  br i1 %more, label %one, label %find
one:
  %kp = getelementptr i8, ptr %kinds, i64 %i
  %k = load i8, ptr %kp
  %t = call ptr @__olang_ffi_type(i8 %k)
  %tnone = icmp eq ptr %t, null
  br i1 %tnone, label %cannot, label %next
next:
  %tp = getelementptr ptr, ptr %types, i64 %i
  store ptr %t, ptr %tp
  %i1 = add i64 %i, 1
  br label %loop
find:
  %fn = call ptr @__olang_dynsym(ptr %name)
  %fnnone = icmp eq ptr %fn, null
  br i1 %fnnone, label %missing, label %prep
prep:
  store ptr %fn, ptr %fnslot
  %n32 = trunc i64 %n to i32
  %var = icmp sge i64 %fixed, 0
  br i1 %var, label %prepvar, label %prepfixed
prepvar:
  %f32 = trunc i64 %fixed to i32
  %stv = call i32 @ffi_prep_cif_var(ptr %cif, i32 2, i32 %f32, i32 %n32, ptr %rt, ptr %types)
  br label %prepped
prepfixed:
  %stf = call i32 @ffi_prep_cif(ptr %cif, i32 2, i32 %n32, ptr %rt, ptr %types)
  br label %prepped
prepped:
  %st = phi i32 [ %stv, %prepvar ], [ %stf, %prepfixed ]
  %ok = icmp eq i32 %st, 0
  %r = select i1 %ok, i32 0, i32 2
  ret i32 %r
missing:
  ret i32 1
cannot:
  ret i32 2
}

; 0 when the call "name" with these kinds and result can be made, 1 when there is no such function, 2 when a
; kind is one that cannot be passed
define i32 @__olang_dyncall_check(ptr %name, ptr %kinds, i8 %ret) #0 {
entry:
  %r = call i32 @__olang_dyncall_var_check(ptr %name, ptr %kinds, i8 %ret, i64 -1)
  ret i32 %r
}

; as __olang_dyncall_check, for a function taking variable arguments after its first %fixed (X21)
define i32 @__olang_dyncall_var_check(ptr %name, ptr %kinds, i8 %ret, i64 %fixed) #0 {
entry:
  %cif = alloca [64 x i8], align 16
  %fnslot = alloca ptr
  %n = call i64 @__olang_dyncall_count(ptr %kinds)
  %n1 = add i64 %n, 1
  %bytes = mul i64 %n1, 8
  %types = call ptr @malloc(i64 %bytes)
  call void @__olang_alloc_check(ptr %types)
  %r = call i32 @__olang_dyncall_ready(ptr %name, ptr %kinds, i64 %n, i8 %ret, ptr %cif, ptr %types, ptr %fnslot, i64 %fixed)
  call void @free(ptr %types)
  ret i32 %r
}

; the call made: each number passed from its word, each array as a pointer to the words after its length, and
; the result's bits returned, an integer's extended as its type extends. A call that cannot be made - the
; caller asks __olang_dyncall_check first - stops the program as a failed check does
define i64 @__olang_dyncall(ptr %name, ptr %kinds, ptr %words, i8 %ret) #0 {
entry:
  %r = call i64 @__olang_dyncall_var(ptr %name, ptr %kinds, ptr %words, i8 %ret, i64 -1)
  ret i64 %r
}

; as __olang_dyncall, for a function taking variable arguments after its first %fixed (X21): each already promoted
define i64 @__olang_dyncall_var(ptr %name, ptr %kinds, ptr %words, i8 %ret, i64 %fixed) #0 {
entry:
  %cif = alloca [64 x i8], align 16
  %fnslot = alloca ptr
  %rv = alloca i64, align 16
  store i64 0, ptr %rv
  %n = call i64 @__olang_dyncall_count(ptr %kinds)
  %n1 = add i64 %n, 1
  %bytes = mul i64 %n1, 8
  %types = call ptr @malloc(i64 %bytes)
  call void @__olang_alloc_check(ptr %types)
  %values = call ptr @malloc(i64 %bytes)
  call void @__olang_alloc_check(ptr %values)
  %ptrs = call ptr @malloc(i64 %bytes)
  call void @__olang_alloc_check(ptr %ptrs)
  %ready = call i32 @__olang_dyncall_ready(ptr %name, ptr %kinds, i64 %n, i8 %ret, ptr %cif, ptr %types, ptr %fnslot, i64 %fixed)
  %ok = icmp eq i32 %ready, 0
  br i1 %ok, label %loop, label %refused
refused:
  call void @__olang_check_failed(ptr @__olang_msg_dyncall)
  ret i64 0
loop:
  %i = phi i64 [ 0, %entry ], [ %i1, %next ]
  %at = phi i64 [ 0, %entry ], [ %at1, %next ]
  %more = icmp slt i64 %i, %n
  br i1 %more, label %one, label %call
one:
  %kp = getelementptr i8, ptr %kinds, i64 %i
  %k = load i8, ptr %kp
  %wp = getelementptr i64, ptr %words, i64 %at
  %vp = getelementptr ptr, ptr %values, i64 %i
  %isarr = icmp uge i8 %k, -128
  br i1 %isarr, label %array, label %scalar
scalar:
  store ptr %wp, ptr %vp
  %ats = add i64 %at, 1
  br label %next
array:
  %len = load i64, ptr %wp
  %code = and i8 %k, 127
  %c = zext i8 %code to i64
  %szp = getelementptr [13 x i64], ptr @__olang_kind_size, i64 0, i64 %c
  %sz = load i64, ptr %szp
  %nb = mul i64 %len, %sz
  %nb7 = add i64 %nb, 7
  %nw = lshr i64 %nb7, 3
  %data = getelementptr i64, ptr %wp, i64 1
  %pp = getelementptr ptr, ptr %ptrs, i64 %i
  store ptr %data, ptr %pp
  store ptr %pp, ptr %vp
  %ata0 = add i64 %at, 1
  %ata = add i64 %ata0, %nw
  br label %next
next:
  %at1 = phi i64 [ %ats, %scalar ], [ %ata, %array ]
  %i1 = add i64 %i, 1
  br label %loop
call:
  %fn = load ptr, ptr %fnslot
  call void @ffi_call(ptr %cif, ptr %fn, ptr %rv, ptr %values)
  call void @free(ptr %types)
  call void @free(ptr %values)
  call void @free(ptr %ptrs)
  %raw = load i64, ptr %rv
  ; an integer narrower than a word: its own bits, extended as its type extends (libffi widens it, but says the
  ; caller should read it so)
  switch i8 %ret, label %whole [ i8 1, label %s8 i8 2, label %s16 i8 3, label %s32 i8 5, label %u8 i8 6, label %u16 i8 7, label %u32 i8 11, label %f32 ]
s8:
  %t8 = trunc i64 %raw to i8
  %e8 = sext i8 %t8 to i64
  ret i64 %e8
s16:
  %t16 = trunc i64 %raw to i16
  %e16 = sext i16 %t16 to i64
  ret i64 %e16
s32:
  %t32 = trunc i64 %raw to i32
  %e32 = sext i32 %t32 to i64
  ret i64 %e32
u8:
  %v8 = and i64 %raw, 255
  ret i64 %v8
u16:
  %v16 = and i64 %raw, 65535
  ret i64 %v16
u32:
  %v32 = and i64 %raw, 4294967295
  ret i64 %v32
  ; an F32's bits are the first four bytes libffi wrote
f32:
  %fbits = load i32, ptr %rv
  %fw = zext i32 %fbits to i64
  ret i64 %fw
whole:
  ret i64 %raw
}


!20 = !{!"olang"}
!49 = !{!"scopehdr", !20, i64 0}
!50 = !{!"chunkhdr", !20, i64 0}
!59 = !{!49, !49, i64 0}
!60 = !{!50, !50, i64 0}

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
attributes #1 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
