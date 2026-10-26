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

define ptr @__olang_ffi_type(i8 %k) {
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
define ptr @__olang_dynsym(ptr %name) {
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
define i64 @__olang_dyncall_count(ptr %kinds) {
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
define i32 @__olang_dyncall_ready(ptr %name, ptr %kinds, i64 %n, i8 %ret, ptr %cif, ptr %types, ptr %fnslot, i64 %fixed) {
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
  %stv = call i32 @ffi_prep_cif_var(ptr %cif, i32 @@FFI_DEFAULT_ABI@@, i32 %f32, i32 %n32, ptr %rt, ptr %types)
  br label %prepped
prepfixed:
  %stf = call i32 @ffi_prep_cif(ptr %cif, i32 @@FFI_DEFAULT_ABI@@, i32 %n32, ptr %rt, ptr %types)
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
define i32 @__olang_dyncall_check(ptr %name, ptr %kinds, i8 %ret) {
entry:
  %r = call i32 @__olang_dyncall_var_check(ptr %name, ptr %kinds, i8 %ret, i64 -1)
  ret i32 %r
}

; as __olang_dyncall_check, for a function taking variable arguments after its first %fixed (X21)
define i32 @__olang_dyncall_var_check(ptr %name, ptr %kinds, i8 %ret, i64 %fixed) {
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
define i64 @__olang_dyncall(ptr %name, ptr %kinds, ptr %words, i8 %ret) {
entry:
  %r = call i64 @__olang_dyncall_var(ptr %name, ptr %kinds, ptr %words, i8 %ret, i64 -1)
  ret i64 %r
}

; as __olang_dyncall, for a function taking variable arguments after its first %fixed (X21): each already promoted
define i64 @__olang_dyncall_var(ptr %name, ptr %kinds, ptr %words, i8 %ret, i64 %fixed) {
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

