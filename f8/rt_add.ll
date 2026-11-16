
; O8f round 8: __olang_gen_buf's own work inline, for what a module builds through a slot scope - a copy's text above
; all, a string a slot each: the class of a size up to 256 bytes (header and padding room included) is arithmetic, the
; slot a pop from its scope part's free list or a bump (__olang_gen_alloc, inline too), its header and its record
; written here; anything larger is __olang_gen_buf's call. The same allocation as gen_buf makes, to the byte
define noalias ptr @__olang_slot_alloc(ptr %ss, i64 %rawsize) alwaysinline {
entry:
  %up = add i64 %rawsize, 7
  %s8 = and i64 %up, -8
  %z = icmp eq i64 %s8, 0
  %size = select i1 %z, i64 8, i64 %s8
  %need = add i64 %size, 16
  %small = icmp ule i64 %need, 256
  br i1 %small, label %fast, label %call
call:
  %big = call ptr @__olang_gen_buf(ptr %ss, i64 %rawsize, i64 8)
  ret ptr %big
fast:
  %n15 = add i64 %need, 15
  %q = lshr i64 %n15, 4
  %cls = sub i64 %q, 1
  %csize = shl i64 %q, 4
  %tp = getelementptr %olang.scope, ptr %ss, i32 0, i32 2
  %real = load ptr, ptr %tp
  %x = call ptr @__olang_gen_alloc(ptr %real, i64 %cls, i64 %csize)
  %xi = ptrtoint ptr %x to i64
  %mis = and i64 %xi, 15
  %pad = icmp ne i64 %mis, 0
  %cb = shl i64 %q, 24
  br i1 %pad, label %padded, label %own
own:
  %hp = getelementptr i8, ptr %x, i64 -8
  %hw = load i64, ptr %hp
  %hw1 = or i64 %hw, %cb
  store i64 %hw1, ptr %hp
  br label %rec
padded:
  %pw = or i64 %cb, 8388608
  store i64 %pw, ptr %x
  %x16 = getelementptr i8, ptr %x, i64 8
  br label %rec
rec:
  %p = phi ptr [ %x, %own ], [ %x16, %padded ]
  %np = getelementptr %olang.slotscope, ptr %ss, i32 0, i32 1
  %n = load i64, ptr %np
  %room = icmp ult i64 %n, 8
  br i1 %room, label %put, label %done
put:
  %ep = getelementptr %olang.slotscope, ptr %ss, i32 0, i32 2, i64 %n
  store ptr %p, ptr %ep
  %n1 = add i64 %n, 1
  store i64 %n1, ptr %np
  br label %done
done:
  ret ptr %p
}

; __olang_scope_alloc_a for a scope a function holds in a local (mir.ScopeRef.Held: a region, a part, a slot scope, a
; scope handed over): a slot scope's allocation inline (__olang_slot_alloc), any other the bump. Only such scopes test
; their head here, so no other allocation grows
define noalias ptr @__olang_held_alloc_a(ptr %scope, i64 %rawsize, i64 %aln) alwaysinline {
entry:
  %head = load ptr, ptr %scope, !tbaa !59
  %isslot = icmp eq ptr %head, @__olang_slot_chunk
  br i1 %isslot, label %slot, label %plain
slot:
  %s = call ptr @__olang_slot_alloc(ptr %scope, i64 %rawsize)
  ret ptr %s
plain:
  %p = call ptr @__olang_scope_alloc_a(ptr %scope, i64 %rawsize, i64 %aln)
  ret ptr %p
}

; __olang_scope_alloc and __olang_scope_alloc_min in a held scope (__olang_held_alloc_a)
define noalias ptr @__olang_held_alloc(ptr %scope, i64 %rawsize) alwaysinline {
entry:
  %sizeup = add i64 %rawsize, 7
  %size8 = and i64 %sizeup, -8
  %a32 = icmp uge i64 %size8, 32
  %a64 = icmp uge i64 %size8, 64
  %alnA = select i1 %a32, i64 32, i64 8
  %aln = select i1 %a64, i64 64, i64 %alnA
  %p = call ptr @__olang_held_alloc_a(ptr %scope, i64 %rawsize, i64 %aln)
  ret ptr %p
}

define noalias ptr @__olang_held_alloc_min(ptr %scope, i64 %rawsize, i64 %minaln) alwaysinline {
entry:
  %sizeup = add i64 %rawsize, 7
  %size8 = and i64 %sizeup, -8
  %a32 = icmp uge i64 %size8, 32
  %a64 = icmp uge i64 %size8, 64
  %alnA = select i1 %a32, i64 32, i64 8
  %alnB = select i1 %a64, i64 64, i64 %alnA
  %wider = icmp ugt i64 %minaln, %alnB
  %aln = select i1 %wider, i64 %minaln, i64 %alnB
  %p = call ptr @__olang_held_alloc_a(ptr %scope, i64 %rawsize, i64 %aln)
  ret ptr %p
}
