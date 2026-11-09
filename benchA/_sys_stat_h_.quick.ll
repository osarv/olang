source_filename = "_sys_stat_h_.quick.ll"
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
%"<sys/stat.h>:timespec" = type { i64, i64 }
%"<sys/stat.h>:stat64_t" = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %"<sys/stat.h>:timespec", %"<sys/stat.h>:timespec", %"<sys/stat.h>:timespec", [3 x i64] }
%"<sys/stat.h>:stat_t" = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %"<sys/stat.h>:timespec", %"<sys/stat.h>:timespec", %"<sys/stat.h>:timespec", [3 x i64] }
%"<sys/stat.h>:statx_timestamp" = type { i64, i32, i32 }
%"<sys/stat.h>:statx_t" = type { i32, i32, i64, i32, i32, i32, i16, [1 x i16], i64, i64, i64, i64, %"<sys/stat.h>:statx_timestamp", %"<sys/stat.h>:statx_timestamp", %"<sys/stat.h>:statx_timestamp", %"<sys/stat.h>:statx_timestamp", i32, i32, i32, i32, i64, i32, i32, [12 x i64] }
@G_2e_3csys_2fstat_2eh_3e_2eACCESSPERMS = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\01\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eALLPERMS = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\0F\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eDEFFILEMODE = constant <{ [4 x i8] }> <{ [4 x i8] c"\B6\01\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__ALL = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\0F\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__ATIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__ATTR__APPEND = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__ATTR__AUTOMOUNT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__ATTR__COMPRESSED = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__ATTR__DAX = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\20\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__ATTR__ENCRYPTED = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__ATTR__IMMUTABLE = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__ATTR__MOUNT__ROOT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__ATTR__NODUMP = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__ATTR__VERITY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\10\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__BASIC__STATS = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\07\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__BLOCKS = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__BTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__CTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__DIOALIGN = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__GID = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__INO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__MNT__ID = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__MNT__ID__UNIQUE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__MODE = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__MTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__NLINK = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__SIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__TYPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX__UID = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eSTATX____RESERVED = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\80\00\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__BLKSIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IEXEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IFBLK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\60\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IFCHR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IFDIR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IFIFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IFLNK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\A0\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IFMT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\F0\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IFREG = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\80\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IFSOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\C0\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IREAD = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IRGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IROTH = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IRUSR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IRWXG = constant <{ [4 x i8] }> <{ [4 x i8] c"\38\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IRWXO = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IRWXU = constant <{ [4 x i8] }> <{ [4 x i8] c"\C0\01\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__ISGID = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__ISUID = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__ISVTX = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IWGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IWOTH = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IWRITE = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IWUSR = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IXGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IXOTH = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eS__IXUSR = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eUTIME__NOW = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\3F" }>, align 8
@G_2e_3csys_2fstat_2eh_3e_2eUTIME__OMIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\FE\FF\FF\3F" }>, align 8
define dso_local void @_3csys_2fstat_2eh_3e_3astat64__t_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"<sys/stat.h>:timespec"
  %l12 = alloca %"<sys/stat.h>:timespec"
  %l15 = alloca %"<sys/stat.h>:timespec"
  %l16 = alloca %"<sys/stat.h>:timespec"
  %l17 = alloca %"<sys/stat.h>:timespec"
  %l19 = alloca %"<sys/stat.h>:stat64_t"
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l0, !tbaa !65
  store i64 0, ptr %l1, !tbaa !65
  store i64 0, ptr %l2, !tbaa !65
  store i32 0, ptr %l3, !tbaa !64
  store i32 0, ptr %l4, !tbaa !64
  store i32 0, ptr %l5, !tbaa !64
  store i32 0, ptr %l6, !tbaa !23
  store i64 0, ptr %l7, !tbaa !65
  store i64 0, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t1 = call %"<sys/stat.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fstat_2eh_3e_3atimespec()
  store %"<sys/stat.h>:timespec" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = load %"<sys/stat.h>:timespec", ptr %l15
  store %"<sys/stat.h>:timespec" %t2, ptr %l11
  %t3 = call %"<sys/stat.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fstat_2eh_3e_3atimespec()
  store %"<sys/stat.h>:timespec" %t3, ptr %l16
  br label %bb2
bb2:
  %t4 = load %"<sys/stat.h>:timespec", ptr %l16
  store %"<sys/stat.h>:timespec" %t4, ptr %l12
  %t5 = call %"<sys/stat.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fstat_2eh_3e_3atimespec()
  store %"<sys/stat.h>:timespec" %t5, ptr %l17
  br label %bb3
bb3:
  %t6 = load %"<sys/stat.h>:timespec", ptr %l17
  %t7 = insertvalue [3 x i64] undef, i64 0, 0
  %t8 = insertvalue [3 x i64] %t7, i64 0, 1
  %t9 = insertvalue [3 x i64] %t8, i64 0, 2
  %t11 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 0
  %t12 = load i64, ptr %l0, !tbaa !65
  store i64 %t12, ptr %t11, !tbaa !65
  %t13 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 1
  %t14 = load i64, ptr %l1, !tbaa !65
  store i64 %t14, ptr %t13, !tbaa !65
  %t15 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 2
  %t16 = load i64, ptr %l2, !tbaa !65
  store i64 %t16, ptr %t15, !tbaa !65
  %t17 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 3
  %t18 = load i32, ptr %l3, !tbaa !64
  store i32 %t18, ptr %t17, !tbaa !64
  %t19 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 4
  %t20 = load i32, ptr %l4, !tbaa !64
  store i32 %t20, ptr %t19, !tbaa !64
  %t21 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 5
  %t22 = load i32, ptr %l5, !tbaa !64
  store i32 %t22, ptr %t21, !tbaa !64
  %t23 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 6
  %t24 = load i32, ptr %l6, !tbaa !23
  store i32 %t24, ptr %t23, !tbaa !23
  %t25 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 7
  %t26 = load i64, ptr %l7, !tbaa !65
  store i64 %t26, ptr %t25, !tbaa !65
  %t27 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 8
  %t28 = load i64, ptr %l8, !tbaa !24
  store i64 %t28, ptr %t27, !tbaa !24
  %t29 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 9
  %t30 = load i64, ptr %l9, !tbaa !24
  store i64 %t30, ptr %t29, !tbaa !24
  %t31 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 10
  %t32 = load i64, ptr %l10, !tbaa !24
  store i64 %t32, ptr %t31, !tbaa !24
  %t33 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 11
  %t34 = load %"<sys/stat.h>:timespec", ptr %l11
  store %"<sys/stat.h>:timespec" %t34, ptr %t33
  %t35 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 12
  %t36 = load %"<sys/stat.h>:timespec", ptr %l12
  store %"<sys/stat.h>:timespec" %t36, ptr %t35
  %t37 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 13
  store %"<sys/stat.h>:timespec" %t6, ptr %t37
  %t39 = getelementptr %"<sys/stat.h>:stat64_t", ptr %l19, i32 0, i32 14
  store [3 x i64] %t9, ptr %t39
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l19, i64 144, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @_3csys_2fstat_2eh_3e_3astat__t_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"<sys/stat.h>:timespec"
  %l12 = alloca %"<sys/stat.h>:timespec"
  %l15 = alloca %"<sys/stat.h>:timespec"
  %l16 = alloca %"<sys/stat.h>:timespec"
  %l17 = alloca %"<sys/stat.h>:timespec"
  %l19 = alloca %"<sys/stat.h>:stat_t"
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l0, !tbaa !65
  store i64 0, ptr %l1, !tbaa !65
  store i64 0, ptr %l2, !tbaa !65
  store i32 0, ptr %l3, !tbaa !64
  store i32 0, ptr %l4, !tbaa !64
  store i32 0, ptr %l5, !tbaa !64
  store i32 0, ptr %l6, !tbaa !23
  store i64 0, ptr %l7, !tbaa !65
  store i64 0, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t1 = call %"<sys/stat.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fstat_2eh_3e_3atimespec()
  store %"<sys/stat.h>:timespec" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = load %"<sys/stat.h>:timespec", ptr %l15
  store %"<sys/stat.h>:timespec" %t2, ptr %l11
  %t3 = call %"<sys/stat.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fstat_2eh_3e_3atimespec()
  store %"<sys/stat.h>:timespec" %t3, ptr %l16
  br label %bb2
bb2:
  %t4 = load %"<sys/stat.h>:timespec", ptr %l16
  store %"<sys/stat.h>:timespec" %t4, ptr %l12
  %t5 = call %"<sys/stat.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fstat_2eh_3e_3atimespec()
  store %"<sys/stat.h>:timespec" %t5, ptr %l17
  br label %bb3
bb3:
  %t6 = load %"<sys/stat.h>:timespec", ptr %l17
  %t7 = insertvalue [3 x i64] undef, i64 0, 0
  %t8 = insertvalue [3 x i64] %t7, i64 0, 1
  %t9 = insertvalue [3 x i64] %t8, i64 0, 2
  %t11 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 0
  %t12 = load i64, ptr %l0, !tbaa !65
  store i64 %t12, ptr %t11, !tbaa !65
  %t13 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 1
  %t14 = load i64, ptr %l1, !tbaa !65
  store i64 %t14, ptr %t13, !tbaa !65
  %t15 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 2
  %t16 = load i64, ptr %l2, !tbaa !65
  store i64 %t16, ptr %t15, !tbaa !65
  %t17 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 3
  %t18 = load i32, ptr %l3, !tbaa !64
  store i32 %t18, ptr %t17, !tbaa !64
  %t19 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 4
  %t20 = load i32, ptr %l4, !tbaa !64
  store i32 %t20, ptr %t19, !tbaa !64
  %t21 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 5
  %t22 = load i32, ptr %l5, !tbaa !64
  store i32 %t22, ptr %t21, !tbaa !64
  %t23 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 6
  %t24 = load i32, ptr %l6, !tbaa !23
  store i32 %t24, ptr %t23, !tbaa !23
  %t25 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 7
  %t26 = load i64, ptr %l7, !tbaa !65
  store i64 %t26, ptr %t25, !tbaa !65
  %t27 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 8
  %t28 = load i64, ptr %l8, !tbaa !24
  store i64 %t28, ptr %t27, !tbaa !24
  %t29 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 9
  %t30 = load i64, ptr %l9, !tbaa !24
  store i64 %t30, ptr %t29, !tbaa !24
  %t31 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 10
  %t32 = load i64, ptr %l10, !tbaa !24
  store i64 %t32, ptr %t31, !tbaa !24
  %t33 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 11
  %t34 = load %"<sys/stat.h>:timespec", ptr %l11
  store %"<sys/stat.h>:timespec" %t34, ptr %t33
  %t35 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 12
  %t36 = load %"<sys/stat.h>:timespec", ptr %l12
  store %"<sys/stat.h>:timespec" %t36, ptr %t35
  %t37 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 13
  store %"<sys/stat.h>:timespec" %t6, ptr %t37
  %t39 = getelementptr %"<sys/stat.h>:stat_t", ptr %l19, i32 0, i32 14
  store [3 x i64] %t9, ptr %t39
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l19, i64 144, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @_3csys_2fstat_2eh_3e_3astatx__t_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i16
  %l7 = alloca [1 x i16]
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"<sys/stat.h>:statx_timestamp"
  %l13 = alloca %"<sys/stat.h>:statx_timestamp"
  %l14 = alloca %"<sys/stat.h>:statx_timestamp"
  %l25 = alloca %"<sys/stat.h>:statx_timestamp"
  %l26 = alloca %"<sys/stat.h>:statx_timestamp"
  %l27 = alloca %"<sys/stat.h>:statx_timestamp"
  %l28 = alloca %"<sys/stat.h>:statx_timestamp"
  %l30 = alloca %"<sys/stat.h>:statx_t"
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l0, !tbaa !64
  store i32 0, ptr %l1, !tbaa !64
  store i64 0, ptr %l2, !tbaa !65
  store i32 0, ptr %l3, !tbaa !64
  store i32 0, ptr %l4, !tbaa !64
  store i32 0, ptr %l5, !tbaa !64
  store i16 0, ptr %l6, !tbaa !63
  %t1 = insertvalue [1 x i16] undef, i16 0, 0
  store [1 x i16] %t1, ptr %l7
  store i64 0, ptr %l8, !tbaa !65
  store i64 0, ptr %l9, !tbaa !65
  store i64 0, ptr %l10, !tbaa !65
  store i64 0, ptr %l11, !tbaa !65
  %t3 = call %"<sys/stat.h>:statx_timestamp" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fstat_2eh_3e_3astatx__timestamp()
  store %"<sys/stat.h>:statx_timestamp" %t3, ptr %l25
  br label %bb1
bb1:
  %t4 = load %"<sys/stat.h>:statx_timestamp", ptr %l25
  store %"<sys/stat.h>:statx_timestamp" %t4, ptr %l12
  %t5 = call %"<sys/stat.h>:statx_timestamp" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fstat_2eh_3e_3astatx__timestamp()
  store %"<sys/stat.h>:statx_timestamp" %t5, ptr %l26
  br label %bb2
bb2:
  %t6 = load %"<sys/stat.h>:statx_timestamp", ptr %l26
  store %"<sys/stat.h>:statx_timestamp" %t6, ptr %l13
  %t7 = call %"<sys/stat.h>:statx_timestamp" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fstat_2eh_3e_3astatx__timestamp()
  store %"<sys/stat.h>:statx_timestamp" %t7, ptr %l27
  br label %bb3
bb3:
  %t8 = load %"<sys/stat.h>:statx_timestamp", ptr %l27
  store %"<sys/stat.h>:statx_timestamp" %t8, ptr %l14
  %t9 = call %"<sys/stat.h>:statx_timestamp" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fstat_2eh_3e_3astatx__timestamp()
  store %"<sys/stat.h>:statx_timestamp" %t9, ptr %l28
  br label %bb4
bb4:
  %t10 = load %"<sys/stat.h>:statx_timestamp", ptr %l28
  %t11 = insertvalue [12 x i64] undef, i64 0, 0
  %t12 = insertvalue [12 x i64] %t11, i64 0, 1
  %t13 = insertvalue [12 x i64] %t12, i64 0, 2
  %t14 = insertvalue [12 x i64] %t13, i64 0, 3
  %t15 = insertvalue [12 x i64] %t14, i64 0, 4
  %t16 = insertvalue [12 x i64] %t15, i64 0, 5
  %t17 = insertvalue [12 x i64] %t16, i64 0, 6
  %t18 = insertvalue [12 x i64] %t17, i64 0, 7
  %t19 = insertvalue [12 x i64] %t18, i64 0, 8
  %t20 = insertvalue [12 x i64] %t19, i64 0, 9
  %t21 = insertvalue [12 x i64] %t20, i64 0, 10
  %t22 = insertvalue [12 x i64] %t21, i64 0, 11
  %t24 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 0
  %t25 = load i32, ptr %l0, !tbaa !64
  store i32 %t25, ptr %t24, !tbaa !64
  %t26 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 1
  %t27 = load i32, ptr %l1, !tbaa !64
  store i32 %t27, ptr %t26, !tbaa !64
  %t28 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 2
  %t29 = load i64, ptr %l2, !tbaa !65
  store i64 %t29, ptr %t28, !tbaa !65
  %t30 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 3
  %t31 = load i32, ptr %l3, !tbaa !64
  store i32 %t31, ptr %t30, !tbaa !64
  %t32 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 4
  %t33 = load i32, ptr %l4, !tbaa !64
  store i32 %t33, ptr %t32, !tbaa !64
  %t34 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 5
  %t35 = load i32, ptr %l5, !tbaa !64
  store i32 %t35, ptr %t34, !tbaa !64
  %t36 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 6
  %t37 = load i16, ptr %l6, !tbaa !63
  store i16 %t37, ptr %t36, !tbaa !63
  %t38 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 7
  %t39 = load [1 x i16], ptr %l7
  store [1 x i16] %t39, ptr %t38
  %t40 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 8
  %t41 = load i64, ptr %l8, !tbaa !65
  store i64 %t41, ptr %t40, !tbaa !65
  %t42 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 9
  %t43 = load i64, ptr %l9, !tbaa !65
  store i64 %t43, ptr %t42, !tbaa !65
  %t44 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 10
  %t45 = load i64, ptr %l10, !tbaa !65
  store i64 %t45, ptr %t44, !tbaa !65
  %t46 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 11
  %t47 = load i64, ptr %l11, !tbaa !65
  store i64 %t47, ptr %t46, !tbaa !65
  %t48 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 12
  %t49 = load %"<sys/stat.h>:statx_timestamp", ptr %l12
  store %"<sys/stat.h>:statx_timestamp" %t49, ptr %t48
  %t50 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 13
  %t51 = load %"<sys/stat.h>:statx_timestamp", ptr %l13
  store %"<sys/stat.h>:statx_timestamp" %t51, ptr %t50
  %t52 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 14
  %t53 = load %"<sys/stat.h>:statx_timestamp", ptr %l14
  store %"<sys/stat.h>:statx_timestamp" %t53, ptr %t52
  %t54 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 15
  store %"<sys/stat.h>:statx_timestamp" %t10, ptr %t54
  %t56 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 16
  store i32 0, ptr %t56, !tbaa !64
  %t58 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 17
  store i32 0, ptr %t58, !tbaa !64
  %t60 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 18
  store i32 0, ptr %t60, !tbaa !64
  %t62 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 19
  store i32 0, ptr %t62, !tbaa !64
  %t64 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 20
  store i64 0, ptr %t64, !tbaa !65
  %t66 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 21
  store i32 0, ptr %t66, !tbaa !64
  %t68 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 22
  store i32 0, ptr %t68, !tbaa !64
  %t70 = getelementptr %"<sys/stat.h>:statx_t", ptr %l30, i32 0, i32 23
  store [12 x i64] %t22, ptr %t70
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l30, i64 256, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"<sys/stat.h>:statx_timestamp" @_3csys_2fstat_2eh_3e_3astatx__timestamp_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/stat.h>:statx_timestamp"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/stat.h>:statx_timestamp" undef, i64 0, 0
  %t4 = insertvalue %"<sys/stat.h>:statx_timestamp" %t2, i32 0, 1
  %t6 = insertvalue %"<sys/stat.h>:statx_timestamp" %t4, i32 0, 2
  store %"<sys/stat.h>:statx_timestamp" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/stat.h>:statx_timestamp", ptr %rv
  ret %"<sys/stat.h>:statx_timestamp" %rr
}

define dso_local %"<sys/stat.h>:timespec" @_3csys_2fstat_2eh_3e_3atimespec_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/stat.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/stat.h>:timespec" undef, i64 0, 0
  %t4 = insertvalue %"<sys/stat.h>:timespec" %t2, i64 0, 1
  store %"<sys/stat.h>:timespec" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/stat.h>:timespec", ptr %rv
  ret %"<sys/stat.h>:timespec" %rr
}

define linkonce_odr %"<sys/stat.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fstat_2eh_3e_3atimespec() #0 {
entry:
  %l0 = alloca %"<sys/stat.h>:timespec"
  %rv = alloca %"<sys/stat.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<sys/stat.h>:timespec" @_3csys_2fstat_2eh_3e_3atimespec_2ector(ptr %t1)
  store %"<sys/stat.h>:timespec" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<sys/stat.h>:timespec", ptr %l0
  store %"<sys/stat.h>:timespec" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/stat.h>:timespec", ptr %rv
  ret %"<sys/stat.h>:timespec" %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr %"<sys/stat.h>:statx_timestamp" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fstat_2eh_3e_3astatx__timestamp() #0 {
entry:
  %l0 = alloca %"<sys/stat.h>:statx_timestamp"
  %rv = alloca %"<sys/stat.h>:statx_timestamp"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<sys/stat.h>:statx_timestamp" @_3csys_2fstat_2eh_3e_3astatx__timestamp_2ector(ptr %t1)
  store %"<sys/stat.h>:statx_timestamp" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<sys/stat.h>:statx_timestamp", ptr %l0
  store %"<sys/stat.h>:statx_timestamp" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/stat.h>:statx_timestamp", ptr %rv
  ret %"<sys/stat.h>:statx_timestamp" %rr
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
