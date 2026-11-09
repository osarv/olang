source_filename = "_fcntl_h_.quick.ll"
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
%"<fcntl.h>:f_owner_ex" = type { i32, i32 }
%"<fcntl.h>:file_handle" = type { i32, i32, [0 x i8] }
%"<fcntl.h>:flock64" = type { i16, i16, i64, i64, i32 }
%"<fcntl.h>:flock" = type { i16, i16, i64, i64, i32 }
%"<fcntl.h>:iovec" = type { ptr, i64 }
%"<fcntl.h>:timespec" = type { i64, i64 }
%"<fcntl.h>:stat64" = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %"<fcntl.h>:timespec", %"<fcntl.h>:timespec", %"<fcntl.h>:timespec", [3 x i64] }
%"<fcntl.h>:stat" = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %"<fcntl.h>:timespec", %"<fcntl.h>:timespec", %"<fcntl.h>:timespec", [3 x i64] }
@G_2e_3cfcntl_2eh_3e_2eAT__EACCESS = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eAT__EMPTY__PATH = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eAT__FDCWD = constant <{ [4 x i8] }> <{ [4 x i8] c"\9C\FF\FF\FF" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eAT__HANDLE__FID = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eAT__NO__AUTOMOUNT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eAT__RECURSIVE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\80\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eAT__REMOVEDIR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eAT__STATX__DONT__SYNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eAT__STATX__FORCE__SYNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eAT__STATX__SYNC__AS__STAT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eAT__STATX__SYNC__TYPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\60\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eAT__SYMLINK__FOLLOW = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eAT__SYMLINK__NOFOLLOW = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eDN__ACCESS = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eDN__ATTRIB = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eDN__CREATE = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eDN__DELETE = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eDN__MODIFY = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eDN__MULTISHOT = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\80\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eDN__RENAME = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFALLOC__FL__ALLOCATE__RANGE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFALLOC__FL__COLLAPSE__RANGE = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFALLOC__FL__INSERT__RANGE = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFALLOC__FL__KEEP__SIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFALLOC__FL__NO__HIDE__STALE = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFALLOC__FL__PUNCH__HOLE = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFALLOC__FL__UNSHARE__RANGE = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFALLOC__FL__ZERO__RANGE = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFAPPEND = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFASYNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFD__CLOEXEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFFSYNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\10\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFNDELAY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eFNONBLOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__ADD__SEALS = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__DUPFD = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__DUPFD__CLOEXEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__EXLCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__GETFD = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__GETFL = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__GETLEASE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__GETLK = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__GETLK64 = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__GETOWN = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__GETOWN__EX = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__GETPIPE__SZ = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__GETSIG = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__GET__FILE__RW__HINT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__GET__RW__HINT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__GET__SEALS = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__LOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__NOTIFY = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__OFD__GETLK = constant <{ [4 x i8] }> <{ [4 x i8] c"\24\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__OFD__SETLK = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__OFD__SETLKW = constant <{ [4 x i8] }> <{ [4 x i8] c"\26\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__OK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__OWNER__GID = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__OWNER__PGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__OWNER__PID = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__OWNER__TID = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__RDLCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SEAL__EXEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SEAL__FUTURE__WRITE = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SEAL__GROW = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SEAL__SEAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SEAL__SHRINK = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SEAL__WRITE = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SETFD = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SETFL = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SETLEASE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SETLK = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SETLK64 = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SETLKW = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SETLKW64 = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SETOWN = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SETOWN__EX = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SETPIPE__SZ = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SETSIG = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SET__FILE__RW__HINT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SET__RW__HINT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__SHLCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__TEST = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__TLOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__ULOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__UNLCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eF__WRLCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eLOCK__EX = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eLOCK__MAND = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eLOCK__NB = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eLOCK__READ = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eLOCK__RW = constant <{ [4 x i8] }> <{ [4 x i8] c"\C0\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eLOCK__SH = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eLOCK__UN = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eLOCK__WRITE = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eMAX__HANDLE__SZ = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__ACCMODE = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__APPEND = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__ASYNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__CLOEXEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\08\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__CREAT = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__DIRECT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__DIRECTORY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\01\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__DSYNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__EXCL = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__FSYNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\10\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__LARGEFILE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__NDELAY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__NOATIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\04\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__NOCTTY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__NOFOLLOW = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\02\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__NONBLOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__PATH = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\20\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__RDONLY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__RDWR = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__RSYNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\10\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__SYNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\10\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__TMPFILE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\41\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__TRUNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eO__WRONLY = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2ePOSIX__FADV__DONTNEED = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2ePOSIX__FADV__NOREUSE = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2ePOSIX__FADV__NORMAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2ePOSIX__FADV__RANDOM = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2ePOSIX__FADV__SEQUENTIAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2ePOSIX__FADV__WILLNEED = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eRWF__WRITE__LIFE__NOT__SET = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eRWH__WRITE__LIFE__EXTREME = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eRWH__WRITE__LIFE__LONG = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eRWH__WRITE__LIFE__MEDIUM = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eRWH__WRITE__LIFE__NONE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eRWH__WRITE__LIFE__NOT__SET = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eRWH__WRITE__LIFE__SHORT = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eR__OK = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eSEEK__CUR = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eSEEK__END = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eSEEK__SET = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eSPLICE__F__GIFT = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eSPLICE__F__MORE = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eSPLICE__F__MOVE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eSPLICE__F__NONBLOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eSYNC__FILE__RANGE__WAIT__AFTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eSYNC__FILE__RANGE__WAIT__BEFORE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eSYNC__FILE__RANGE__WRITE = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eSYNC__FILE__RANGE__WRITE__AND__WAIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IFBLK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\60\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IFCHR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IFDIR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IFIFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IFLNK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\A0\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IFMT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\F0\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IFREG = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\80\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IFSOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\C0\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IRGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IROTH = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IRUSR = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IRWXG = constant <{ [4 x i8] }> <{ [4 x i8] c"\38\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IRWXO = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IRWXU = constant <{ [4 x i8] }> <{ [4 x i8] c"\C0\01\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__ISGID = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__ISUID = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__ISVTX = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IWGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IWOTH = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IWUSR = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IXGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IXOTH = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eS__IXUSR = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eUTIME__NOW = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\3F" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eUTIME__OMIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\FE\FF\FF\3F" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eW__OK = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cfcntl_2eh_3e_2eX__OK = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
define dso_local %"<fcntl.h>:f_owner_ex" @_3cfcntl_2eh_3e_3af__owner__ex_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<fcntl.h>:f_owner_ex"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<fcntl.h>:f_owner_ex" undef, i32 0, 0
  %t4 = insertvalue %"<fcntl.h>:f_owner_ex" %t2, i32 0, 1
  store %"<fcntl.h>:f_owner_ex" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<fcntl.h>:f_owner_ex", ptr %rv
  ret %"<fcntl.h>:f_owner_ex" %rr
}

define dso_local %"<fcntl.h>:file_handle" @_3cfcntl_2eh_3e_3afile__handle_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<fcntl.h>:file_handle"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = insertvalue %"<fcntl.h>:file_handle" undef, i32 0, 0
  %t5 = insertvalue %"<fcntl.h>:file_handle" %t3, i32 0, 1
  %t7 = insertvalue %"<fcntl.h>:file_handle" %t5, [0 x i8] zeroinitializer, 2
  store %"<fcntl.h>:file_handle" %t7, ptr %rv
  br label %ret
ret:
  %rr = load %"<fcntl.h>:file_handle", ptr %rv
  ret %"<fcntl.h>:file_handle" %rr
}

define dso_local %"<fcntl.h>:flock64" @_3cfcntl_2eh_3e_3aflock64_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<fcntl.h>:flock64"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<fcntl.h>:flock64" undef, i16 0, 0
  %t4 = insertvalue %"<fcntl.h>:flock64" %t2, i16 0, 1
  %t6 = insertvalue %"<fcntl.h>:flock64" %t4, i64 0, 2
  %t8 = insertvalue %"<fcntl.h>:flock64" %t6, i64 0, 3
  %t10 = insertvalue %"<fcntl.h>:flock64" %t8, i32 0, 4
  store %"<fcntl.h>:flock64" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<fcntl.h>:flock64", ptr %rv
  ret %"<fcntl.h>:flock64" %rr
}

define dso_local %"<fcntl.h>:flock" @_3cfcntl_2eh_3e_3aflock_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<fcntl.h>:flock"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<fcntl.h>:flock" undef, i16 0, 0
  %t4 = insertvalue %"<fcntl.h>:flock" %t2, i16 0, 1
  %t6 = insertvalue %"<fcntl.h>:flock" %t4, i64 0, 2
  %t8 = insertvalue %"<fcntl.h>:flock" %t6, i64 0, 3
  %t10 = insertvalue %"<fcntl.h>:flock" %t8, i32 0, 4
  store %"<fcntl.h>:flock" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<fcntl.h>:flock", ptr %rv
  ret %"<fcntl.h>:flock" %rr
}

define dso_local %"<fcntl.h>:iovec" @_3cfcntl_2eh_3e_3aiovec_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<fcntl.h>:iovec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<fcntl.h>:iovec" undef, ptr null, 0
  %t4 = insertvalue %"<fcntl.h>:iovec" %t2, i64 0, 1
  store %"<fcntl.h>:iovec" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<fcntl.h>:iovec", ptr %rv
  ret %"<fcntl.h>:iovec" %rr
}

define dso_local void @_3cfcntl_2eh_3e_3astat64_2ector(ptr %out, ptr %v0) #0 {
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
  %l11 = alloca %"<fcntl.h>:timespec"
  %l12 = alloca %"<fcntl.h>:timespec"
  %l15 = alloca %"<fcntl.h>:timespec"
  %l16 = alloca %"<fcntl.h>:timespec"
  %l17 = alloca %"<fcntl.h>:timespec"
  %l19 = alloca %"<fcntl.h>:stat64"
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
  %t1 = call %"<fcntl.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3cfcntl_2eh_3e_3atimespec()
  store %"<fcntl.h>:timespec" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = load %"<fcntl.h>:timespec", ptr %l15
  store %"<fcntl.h>:timespec" %t2, ptr %l11
  %t3 = call %"<fcntl.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3cfcntl_2eh_3e_3atimespec()
  store %"<fcntl.h>:timespec" %t3, ptr %l16
  br label %bb2
bb2:
  %t4 = load %"<fcntl.h>:timespec", ptr %l16
  store %"<fcntl.h>:timespec" %t4, ptr %l12
  %t5 = call %"<fcntl.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3cfcntl_2eh_3e_3atimespec()
  store %"<fcntl.h>:timespec" %t5, ptr %l17
  br label %bb3
bb3:
  %t6 = load %"<fcntl.h>:timespec", ptr %l17
  %t7 = insertvalue [3 x i64] undef, i64 0, 0
  %t8 = insertvalue [3 x i64] %t7, i64 0, 1
  %t9 = insertvalue [3 x i64] %t8, i64 0, 2
  %t11 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 0
  %t12 = load i64, ptr %l0, !tbaa !65
  store i64 %t12, ptr %t11, !tbaa !65
  %t13 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 1
  %t14 = load i64, ptr %l1, !tbaa !65
  store i64 %t14, ptr %t13, !tbaa !65
  %t15 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 2
  %t16 = load i64, ptr %l2, !tbaa !65
  store i64 %t16, ptr %t15, !tbaa !65
  %t17 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 3
  %t18 = load i32, ptr %l3, !tbaa !64
  store i32 %t18, ptr %t17, !tbaa !64
  %t19 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 4
  %t20 = load i32, ptr %l4, !tbaa !64
  store i32 %t20, ptr %t19, !tbaa !64
  %t21 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 5
  %t22 = load i32, ptr %l5, !tbaa !64
  store i32 %t22, ptr %t21, !tbaa !64
  %t23 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 6
  %t24 = load i32, ptr %l6, !tbaa !23
  store i32 %t24, ptr %t23, !tbaa !23
  %t25 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 7
  %t26 = load i64, ptr %l7, !tbaa !65
  store i64 %t26, ptr %t25, !tbaa !65
  %t27 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 8
  %t28 = load i64, ptr %l8, !tbaa !24
  store i64 %t28, ptr %t27, !tbaa !24
  %t29 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 9
  %t30 = load i64, ptr %l9, !tbaa !24
  store i64 %t30, ptr %t29, !tbaa !24
  %t31 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 10
  %t32 = load i64, ptr %l10, !tbaa !24
  store i64 %t32, ptr %t31, !tbaa !24
  %t33 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 11
  %t34 = load %"<fcntl.h>:timespec", ptr %l11
  store %"<fcntl.h>:timespec" %t34, ptr %t33
  %t35 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 12
  %t36 = load %"<fcntl.h>:timespec", ptr %l12
  store %"<fcntl.h>:timespec" %t36, ptr %t35
  %t37 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 13
  store %"<fcntl.h>:timespec" %t6, ptr %t37
  %t39 = getelementptr %"<fcntl.h>:stat64", ptr %l19, i32 0, i32 14
  store [3 x i64] %t9, ptr %t39
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l19, i64 144, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @_3cfcntl_2eh_3e_3astat_2ector(ptr %out, ptr %v0) #0 {
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
  %l11 = alloca %"<fcntl.h>:timespec"
  %l12 = alloca %"<fcntl.h>:timespec"
  %l15 = alloca %"<fcntl.h>:timespec"
  %l16 = alloca %"<fcntl.h>:timespec"
  %l17 = alloca %"<fcntl.h>:timespec"
  %l19 = alloca %"<fcntl.h>:stat"
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
  %t1 = call %"<fcntl.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3cfcntl_2eh_3e_3atimespec()
  store %"<fcntl.h>:timespec" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = load %"<fcntl.h>:timespec", ptr %l15
  store %"<fcntl.h>:timespec" %t2, ptr %l11
  %t3 = call %"<fcntl.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3cfcntl_2eh_3e_3atimespec()
  store %"<fcntl.h>:timespec" %t3, ptr %l16
  br label %bb2
bb2:
  %t4 = load %"<fcntl.h>:timespec", ptr %l16
  store %"<fcntl.h>:timespec" %t4, ptr %l12
  %t5 = call %"<fcntl.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3cfcntl_2eh_3e_3atimespec()
  store %"<fcntl.h>:timespec" %t5, ptr %l17
  br label %bb3
bb3:
  %t6 = load %"<fcntl.h>:timespec", ptr %l17
  %t7 = insertvalue [3 x i64] undef, i64 0, 0
  %t8 = insertvalue [3 x i64] %t7, i64 0, 1
  %t9 = insertvalue [3 x i64] %t8, i64 0, 2
  %t11 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 0
  %t12 = load i64, ptr %l0, !tbaa !65
  store i64 %t12, ptr %t11, !tbaa !65
  %t13 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 1
  %t14 = load i64, ptr %l1, !tbaa !65
  store i64 %t14, ptr %t13, !tbaa !65
  %t15 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 2
  %t16 = load i64, ptr %l2, !tbaa !65
  store i64 %t16, ptr %t15, !tbaa !65
  %t17 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 3
  %t18 = load i32, ptr %l3, !tbaa !64
  store i32 %t18, ptr %t17, !tbaa !64
  %t19 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 4
  %t20 = load i32, ptr %l4, !tbaa !64
  store i32 %t20, ptr %t19, !tbaa !64
  %t21 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 5
  %t22 = load i32, ptr %l5, !tbaa !64
  store i32 %t22, ptr %t21, !tbaa !64
  %t23 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 6
  %t24 = load i32, ptr %l6, !tbaa !23
  store i32 %t24, ptr %t23, !tbaa !23
  %t25 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 7
  %t26 = load i64, ptr %l7, !tbaa !65
  store i64 %t26, ptr %t25, !tbaa !65
  %t27 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 8
  %t28 = load i64, ptr %l8, !tbaa !24
  store i64 %t28, ptr %t27, !tbaa !24
  %t29 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 9
  %t30 = load i64, ptr %l9, !tbaa !24
  store i64 %t30, ptr %t29, !tbaa !24
  %t31 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 10
  %t32 = load i64, ptr %l10, !tbaa !24
  store i64 %t32, ptr %t31, !tbaa !24
  %t33 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 11
  %t34 = load %"<fcntl.h>:timespec", ptr %l11
  store %"<fcntl.h>:timespec" %t34, ptr %t33
  %t35 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 12
  %t36 = load %"<fcntl.h>:timespec", ptr %l12
  store %"<fcntl.h>:timespec" %t36, ptr %t35
  %t37 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 13
  store %"<fcntl.h>:timespec" %t6, ptr %t37
  %t39 = getelementptr %"<fcntl.h>:stat", ptr %l19, i32 0, i32 14
  store [3 x i64] %t9, ptr %t39
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l19, i64 144, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"<fcntl.h>:timespec" @_3cfcntl_2eh_3e_3atimespec_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<fcntl.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<fcntl.h>:timespec" undef, i64 0, 0
  %t4 = insertvalue %"<fcntl.h>:timespec" %t2, i64 0, 1
  store %"<fcntl.h>:timespec" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<fcntl.h>:timespec", ptr %rv
  ret %"<fcntl.h>:timespec" %rr
}

define linkonce_odr %"<fcntl.h>:timespec" @olang_2emir_2eHelperKind_2eZero_2e_3cfcntl_2eh_3e_3atimespec() #0 {
entry:
  %l0 = alloca %"<fcntl.h>:timespec"
  %rv = alloca %"<fcntl.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<fcntl.h>:timespec" @_3cfcntl_2eh_3e_3atimespec_2ector(ptr %t1)
  store %"<fcntl.h>:timespec" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<fcntl.h>:timespec", ptr %l0
  store %"<fcntl.h>:timespec" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<fcntl.h>:timespec", ptr %rv
  ret %"<fcntl.h>:timespec" %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
