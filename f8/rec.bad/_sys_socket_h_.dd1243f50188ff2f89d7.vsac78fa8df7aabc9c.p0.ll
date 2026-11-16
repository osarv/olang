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
%olang.region = type { %olang.scope, %olang.scope, ptr, ptr, ptr, ptr, ptr, i64 }
%olang.slotscope = type { %olang.scope, i64, [8 x ptr] }
%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }
%olang.builder = type { ptr, i64, i64, ptr, ptr }
%"<sys/socket.h>:c___atomic_wide_counter" = type { [1 x i64] }
%"<sys/socket.h>:c___pthread_internal_list" = type { ptr, ptr }
%"<sys/socket.h>:c___pthread_internal_slist" = type { ptr }
%"<sys/socket.h>:c___sigset_t" = type { [16 x i64] }
%"<sys/socket.h>:fd_set" = type { [16 x i64] }
%"<sys/socket.h>:iovec" = type { ptr, i64 }
%"<sys/socket.h>:linger" = type { i32, i32 }
%"<sys/socket.h>:mmsghdr" = type { %"<sys/socket.h>:msghdr", i32 }
%"<sys/socket.h>:msghdr" = type { ptr, i32, ptr, i64, ptr, i64, i32 }
%"<sys/socket.h>:osockaddr" = type { i16, [14 x i8] }
%"<sys/socket.h>:pthread_attr_t" = type { [7 x i64] }
%"<sys/socket.h>:pthread_barrier_t" = type { [4 x i64] }
%"<sys/socket.h>:pthread_barrierattr_t" = type { [1 x i32] }
%"<sys/socket.h>:pthread_cond_t" = type { [6 x i64] }
%"<sys/socket.h>:pthread_condattr_t" = type { [1 x i32] }
%"<sys/socket.h>:pthread_mutex_t" = type { [5 x i64] }
%"<sys/socket.h>:pthread_mutexattr_t" = type { [1 x i32] }
%"<sys/socket.h>:pthread_rwlock_t" = type { [7 x i64] }
%"<sys/socket.h>:pthread_rwlockattr_t" = type { [1 x i64] }
%"<sys/socket.h>:sockaddr" = type { i16, [14 x i8] }
%"<sys/socket.h>:sockaddr_storage" = type { i16, [118 x i8], i64 }
%"<sys/socket.h>:timespec" = type { i64, i64 }
%"<sys/socket.h>:timeval" = type { i64, i64 }
%"<sys/socket.h>:ucred" = type { i32, i32, i32 }
@G_2e_3csys_2fsocket_2eh_3e_2eAF__ALG = constant <{ [4 x i8] }> <{ [4 x i8] c"\26\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__APPLETALK = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__ASH = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__ATMPVC = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__ATMSVC = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__AX25 = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__BLUETOOTH = constant <{ [4 x i8] }> <{ [4 x i8] c"\1F\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__BRIDGE = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__CAIF = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__CAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__DECnet = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__ECONET = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__FILE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__IB = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__IEEE802154 = constant <{ [4 x i8] }> <{ [4 x i8] c"\24\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__INET = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__INET6 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__IPX = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__IRDA = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__ISDN = constant <{ [4 x i8] }> <{ [4 x i8] c"\22\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__IUCV = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__KCM = constant <{ [4 x i8] }> <{ [4 x i8] c"\29\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__KEY = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__LLC = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__LOCAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__MAX = constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__MCTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__MPLS = constant <{ [4 x i8] }> <{ [4 x i8] c"\1C\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__NETBEUI = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__NETLINK = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__NETROM = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__NFC = constant <{ [4 x i8] }> <{ [4 x i8] c"\27\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__PACKET = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__PHONET = constant <{ [4 x i8] }> <{ [4 x i8] c"\23\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__PPPOX = constant <{ [4 x i8] }> <{ [4 x i8] c"\18\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__QIPCRTR = constant <{ [4 x i8] }> <{ [4 x i8] c"\2A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__RDS = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__ROSE = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__ROUTE = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__RXRPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\21\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__SECURITY = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__SMC = constant <{ [4 x i8] }> <{ [4 x i8] c"\2B\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__SNA = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__TIPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\1E\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__UNIX = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__UNSPEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__VSOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\28\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__WANPIPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__X25 = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eAF__XDP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2C\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eBIG__ENDIAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\E1\10\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eBYTE__ORDER = constant <{ [4 x i8] }> <{ [4 x i8] c"\D2\04\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eFD__SETSIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eFIOGETOWN = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\89\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eFIOSETOWN = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\89\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eLITTLE__ENDIAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\D2\04\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__BATCH = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\04\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__CMSG__CLOEXEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\40" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__CONFIRM = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__CTRUNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__DONTROUTE = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__DONTWAIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__EOR = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__ERRQUEUE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__FASTOPEN = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\20" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__FIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__MORE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\80\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__NOSIGNAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__OOB = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__PEEK = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__PROXY = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__RST = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__SYN = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__TRUNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__TRYHARD = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__WAITALL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__WAITFORONE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\01\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eMSG__ZEROCOPY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\04" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eNFDBITS = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePDP__ENDIAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\54\0D\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__ALG = constant <{ [4 x i8] }> <{ [4 x i8] c"\26\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__APPLETALK = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__ASH = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__ATMPVC = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__ATMSVC = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__AX25 = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__BLUETOOTH = constant <{ [4 x i8] }> <{ [4 x i8] c"\1F\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__BRIDGE = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__CAIF = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__CAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__DECnet = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__ECONET = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__FILE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__IB = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__IEEE802154 = constant <{ [4 x i8] }> <{ [4 x i8] c"\24\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__INET = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__INET6 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__IPX = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__IRDA = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__ISDN = constant <{ [4 x i8] }> <{ [4 x i8] c"\22\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__IUCV = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__KCM = constant <{ [4 x i8] }> <{ [4 x i8] c"\29\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__KEY = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__LLC = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__LOCAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__MAX = constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__MCTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__MPLS = constant <{ [4 x i8] }> <{ [4 x i8] c"\1C\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__NETBEUI = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__NETLINK = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__NETROM = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__NFC = constant <{ [4 x i8] }> <{ [4 x i8] c"\27\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__PACKET = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__PHONET = constant <{ [4 x i8] }> <{ [4 x i8] c"\23\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__PPPOX = constant <{ [4 x i8] }> <{ [4 x i8] c"\18\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__QIPCRTR = constant <{ [4 x i8] }> <{ [4 x i8] c"\2A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__RDS = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__ROSE = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__ROUTE = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__RXRPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\21\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__SECURITY = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__SMC = constant <{ [4 x i8] }> <{ [4 x i8] c"\2B\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__SNA = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__TIPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\1E\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__UNIX = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__UNSPEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__VSOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\28\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__WANPIPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__X25 = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2ePF__XDP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2C\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSCM__CREDENTIALS = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSCM__PIDFD = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSCM__RIGHTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSCM__SECURITY = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSCM__TIMESTAMP = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSCM__TIMESTAMPING = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSCM__TIMESTAMPING__OPT__STATS = constant <{ [4 x i8] }> <{ [4 x i8] c"\36\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSCM__TIMESTAMPING__PKTINFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\3A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSCM__TIMESTAMPNS = constant <{ [4 x i8] }> <{ [4 x i8] c"\23\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSCM__TXTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\3D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSCM__WIFI__STATUS = constant <{ [4 x i8] }> <{ [4 x i8] c"\29\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSHUT__RD = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSHUT__RDWR = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSHUT__WR = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSIOCATMARK = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\89\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSIOCGPGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\89\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSIOCGSTAMPNS__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\89\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSIOCGSTAMP__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\89\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSIOCSPGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\89\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOCK__CLOEXEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\08\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOCK__DCCP = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOCK__DGRAM = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOCK__NONBLOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOCK__PACKET = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOCK__RAW = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOCK__RDM = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOCK__SEQPACKET = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOCK__STREAM = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__AAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__ALG = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__ATM = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__BLUETOOTH = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__CAIF = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__DCCP = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__DECNET = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__IRDA = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__IUCV = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__KCM = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__LLC = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__MCTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__MPTCP = constant <{ [4 x i8] }> <{ [4 x i8] c"\1C\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__NETBEUI = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__NETLINK = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__NFC = constant <{ [4 x i8] }> <{ [4 x i8] c"\18\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__PACKET = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__PNPIPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__PPPOL2TP = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__RAW = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__RDS = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__RXRPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__SMC = constant <{ [4 x i8] }> <{ [4 x i8] c"\1E\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__SOCKET = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__TIPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__TLS = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__X25 = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOL__XDP = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\01\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSOMAXCONN = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__ACCEPTCONN = constant <{ [4 x i8] }> <{ [4 x i8] c"\1E\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__ATTACH__BPF = constant <{ [4 x i8] }> <{ [4 x i8] c"\32\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__ATTACH__FILTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__ATTACH__REUSEPORT__CBPF = constant <{ [4 x i8] }> <{ [4 x i8] c"\33\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__ATTACH__REUSEPORT__EBPF = constant <{ [4 x i8] }> <{ [4 x i8] c"\34\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__BINDTODEVICE = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__BINDTOIFINDEX = constant <{ [4 x i8] }> <{ [4 x i8] c"\3E\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__BPF__EXTENSIONS = constant <{ [4 x i8] }> <{ [4 x i8] c"\30\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__BROADCAST = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__BSDCOMPAT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__BUF__LOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\48\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__BUSY__POLL = constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__BUSY__POLL__BUDGET = constant <{ [4 x i8] }> <{ [4 x i8] c"\46\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__CNX__ADVICE = constant <{ [4 x i8] }> <{ [4 x i8] c"\35\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__COOKIE = constant <{ [4 x i8] }> <{ [4 x i8] c"\39\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__DEBUG = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__DETACH__BPF = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__DETACH__FILTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__DETACH__REUSEPORT__BPF = constant <{ [4 x i8] }> <{ [4 x i8] c"\44\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__DOMAIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\27\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__DONTROUTE = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__ERROR = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__GET__FILTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__INCOMING__CPU = constant <{ [4 x i8] }> <{ [4 x i8] c"\31\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__INCOMING__NAPI__ID = constant <{ [4 x i8] }> <{ [4 x i8] c"\38\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__KEEPALIVE = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__LINGER = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__LOCK__FILTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\2C\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__MARK = constant <{ [4 x i8] }> <{ [4 x i8] c"\24\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__MAX__PACING__RATE = constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__MEMINFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\37\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__NETNS__COOKIE = constant <{ [4 x i8] }> <{ [4 x i8] c"\47\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__NOFCS = constant <{ [4 x i8] }> <{ [4 x i8] c"\2B\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__NO__CHECK = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__OOBINLINE = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__PASSCRED = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__PASSPIDFD = constant <{ [4 x i8] }> <{ [4 x i8] c"\4C\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__PASSSEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\22\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__PEEK__OFF = constant <{ [4 x i8] }> <{ [4 x i8] c"\2A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__PEERCRED = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__PEERGROUPS = constant <{ [4 x i8] }> <{ [4 x i8] c"\3B\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__PEERNAME = constant <{ [4 x i8] }> <{ [4 x i8] c"\1C\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__PEERPIDFD = constant <{ [4 x i8] }> <{ [4 x i8] c"\4D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__PEERSEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\1F\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__PREFER__BUSY__POLL = constant <{ [4 x i8] }> <{ [4 x i8] c"\45\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__PRIORITY = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__PROTOCOL = constant <{ [4 x i8] }> <{ [4 x i8] c"\26\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__RCVBUF = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__RCVBUFFORCE = constant <{ [4 x i8] }> <{ [4 x i8] c"\21\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__RCVLOWAT = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__RCVMARK = constant <{ [4 x i8] }> <{ [4 x i8] c"\4B\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__RCVTIMEO = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__RCVTIMEO__NEW = constant <{ [4 x i8] }> <{ [4 x i8] c"\42\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__RCVTIMEO__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__RESERVE__MEM = constant <{ [4 x i8] }> <{ [4 x i8] c"\49\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__REUSEADDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__REUSEPORT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__RXQ__OVFL = constant <{ [4 x i8] }> <{ [4 x i8] c"\28\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__SECURITY__AUTHENTICATION = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__SECURITY__ENCRYPTION__NETWORK = constant <{ [4 x i8] }> <{ [4 x i8] c"\18\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__SECURITY__ENCRYPTION__TRANSPORT = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__SELECT__ERR__QUEUE = constant <{ [4 x i8] }> <{ [4 x i8] c"\2D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__SNDBUF = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__SNDBUFFORCE = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__SNDLOWAT = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__SNDTIMEO = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__SNDTIMEO__NEW = constant <{ [4 x i8] }> <{ [4 x i8] c"\43\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__SNDTIMEO__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__TIMESTAMP = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__TIMESTAMPING = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__TIMESTAMPING__NEW = constant <{ [4 x i8] }> <{ [4 x i8] c"\41\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__TIMESTAMPING__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__TIMESTAMPNS = constant <{ [4 x i8] }> <{ [4 x i8] c"\23\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__TIMESTAMPNS__NEW = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__TIMESTAMPNS__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\23\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__TIMESTAMP__NEW = constant <{ [4 x i8] }> <{ [4 x i8] c"\3F\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__TIMESTAMP__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__TXREHASH = constant <{ [4 x i8] }> <{ [4 x i8] c"\4A\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__TXTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\3D\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__TYPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__WIFI__STATUS = constant <{ [4 x i8] }> <{ [4 x i8] c"\29\00\00\00" }>, align 8
@G_2e_3csys_2fsocket_2eh_3e_2eSO__ZEROCOPY = constant <{ [4 x i8] }> <{ [4 x i8] c"\3C\00\00\00" }>, align 8
define dso_local %"<sys/socket.h>:c___atomic_wide_counter" @_3csys_2fsocket_2eh_3e_3ac______atomic__wide__counter_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:c___atomic_wide_counter"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i64] undef, i64 0, 0
  %t4 = insertvalue %"<sys/socket.h>:c___atomic_wide_counter" undef, [1 x i64] %t1, 0
  store %"<sys/socket.h>:c___atomic_wide_counter" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:c___atomic_wide_counter", ptr %rv
  ret %"<sys/socket.h>:c___atomic_wide_counter" %rr
}

define dso_local %"<sys/socket.h>:c___pthread_internal_list" @_3csys_2fsocket_2eh_3e_3ac______pthread__internal__list_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:c___pthread_internal_list"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/socket.h>:c___pthread_internal_list" undef, ptr null, 0
  %t4 = insertvalue %"<sys/socket.h>:c___pthread_internal_list" %t2, ptr null, 1
  store %"<sys/socket.h>:c___pthread_internal_list" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:c___pthread_internal_list", ptr %rv
  ret %"<sys/socket.h>:c___pthread_internal_list" %rr
}

define dso_local %"<sys/socket.h>:c___pthread_internal_slist" @_3csys_2fsocket_2eh_3e_3ac______pthread__internal__slist_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:c___pthread_internal_slist"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/socket.h>:c___pthread_internal_slist" undef, ptr null, 0
  store %"<sys/socket.h>:c___pthread_internal_slist" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:c___pthread_internal_slist", ptr %rv
  ret %"<sys/socket.h>:c___pthread_internal_slist" %rr
}

define dso_local %"<sys/socket.h>:c___sigset_t" @_3csys_2fsocket_2eh_3e_3ac______sigset__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:c___sigset_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [16 x i64] undef, i64 0, 0
  %t2 = insertvalue [16 x i64] %t1, i64 0, 1
  %t3 = insertvalue [16 x i64] %t2, i64 0, 2
  %t4 = insertvalue [16 x i64] %t3, i64 0, 3
  %t5 = insertvalue [16 x i64] %t4, i64 0, 4
  %t6 = insertvalue [16 x i64] %t5, i64 0, 5
  %t7 = insertvalue [16 x i64] %t6, i64 0, 6
  %t8 = insertvalue [16 x i64] %t7, i64 0, 7
  %t9 = insertvalue [16 x i64] %t8, i64 0, 8
  %t10 = insertvalue [16 x i64] %t9, i64 0, 9
  %t11 = insertvalue [16 x i64] %t10, i64 0, 10
  %t12 = insertvalue [16 x i64] %t11, i64 0, 11
  %t13 = insertvalue [16 x i64] %t12, i64 0, 12
  %t14 = insertvalue [16 x i64] %t13, i64 0, 13
  %t15 = insertvalue [16 x i64] %t14, i64 0, 14
  %t16 = insertvalue [16 x i64] %t15, i64 0, 15
  %t19 = insertvalue %"<sys/socket.h>:c___sigset_t" undef, [16 x i64] %t16, 0
  store %"<sys/socket.h>:c___sigset_t" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:c___sigset_t", ptr %rv
  ret %"<sys/socket.h>:c___sigset_t" %rr
}

define dso_local %"<sys/socket.h>:fd_set" @_3csys_2fsocket_2eh_3e_3afd__set_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:fd_set"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [16 x i64] undef, i64 0, 0
  %t2 = insertvalue [16 x i64] %t1, i64 0, 1
  %t3 = insertvalue [16 x i64] %t2, i64 0, 2
  %t4 = insertvalue [16 x i64] %t3, i64 0, 3
  %t5 = insertvalue [16 x i64] %t4, i64 0, 4
  %t6 = insertvalue [16 x i64] %t5, i64 0, 5
  %t7 = insertvalue [16 x i64] %t6, i64 0, 6
  %t8 = insertvalue [16 x i64] %t7, i64 0, 7
  %t9 = insertvalue [16 x i64] %t8, i64 0, 8
  %t10 = insertvalue [16 x i64] %t9, i64 0, 9
  %t11 = insertvalue [16 x i64] %t10, i64 0, 10
  %t12 = insertvalue [16 x i64] %t11, i64 0, 11
  %t13 = insertvalue [16 x i64] %t12, i64 0, 12
  %t14 = insertvalue [16 x i64] %t13, i64 0, 13
  %t15 = insertvalue [16 x i64] %t14, i64 0, 14
  %t16 = insertvalue [16 x i64] %t15, i64 0, 15
  %t19 = insertvalue %"<sys/socket.h>:fd_set" undef, [16 x i64] %t16, 0
  store %"<sys/socket.h>:fd_set" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:fd_set", ptr %rv
  ret %"<sys/socket.h>:fd_set" %rr
}

define dso_local %"<sys/socket.h>:iovec" @_3csys_2fsocket_2eh_3e_3aiovec_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:iovec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/socket.h>:iovec" undef, ptr null, 0
  %t4 = insertvalue %"<sys/socket.h>:iovec" %t2, i64 0, 1
  store %"<sys/socket.h>:iovec" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:iovec", ptr %rv
  ret %"<sys/socket.h>:iovec" %rr
}

define dso_local %"<sys/socket.h>:linger" @_3csys_2fsocket_2eh_3e_3alinger_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:linger"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/socket.h>:linger" undef, i32 0, 0
  %t4 = insertvalue %"<sys/socket.h>:linger" %t2, i32 0, 1
  store %"<sys/socket.h>:linger" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:linger", ptr %rv
  ret %"<sys/socket.h>:linger" %rr
}

define dso_local %"<sys/socket.h>:mmsghdr" @_3csys_2fsocket_2eh_3e_3ammsghdr_2ector(ptr %v0) #0 {
entry:
  %l2 = alloca %"<sys/socket.h>:msghdr"
  %rv = alloca %"<sys/socket.h>:mmsghdr"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"<sys/socket.h>:msghdr" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fsocket_2eh_3e_3amsghdr()
  store %"<sys/socket.h>:msghdr" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"<sys/socket.h>:msghdr", ptr %l2
  %t4 = insertvalue %"<sys/socket.h>:mmsghdr" undef, %"<sys/socket.h>:msghdr" %t2, 0
  %t6 = insertvalue %"<sys/socket.h>:mmsghdr" %t4, i32 0, 1
  store %"<sys/socket.h>:mmsghdr" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:mmsghdr", ptr %rv
  ret %"<sys/socket.h>:mmsghdr" %rr
}

define dso_local %"<sys/socket.h>:msghdr" @_3csys_2fsocket_2eh_3e_3amsghdr_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:msghdr"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/socket.h>:msghdr" undef, ptr null, 0
  %t4 = insertvalue %"<sys/socket.h>:msghdr" %t2, i32 0, 1
  %t6 = insertvalue %"<sys/socket.h>:msghdr" %t4, ptr null, 2
  %t8 = insertvalue %"<sys/socket.h>:msghdr" %t6, i64 0, 3
  %t10 = insertvalue %"<sys/socket.h>:msghdr" %t8, ptr null, 4
  %t12 = insertvalue %"<sys/socket.h>:msghdr" %t10, i64 0, 5
  %t14 = insertvalue %"<sys/socket.h>:msghdr" %t12, i32 0, 6
  store %"<sys/socket.h>:msghdr" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:msghdr", ptr %rv
  ret %"<sys/socket.h>:msghdr" %rr
}

define dso_local %"<sys/socket.h>:osockaddr" @_3csys_2fsocket_2eh_3e_3aosockaddr_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:osockaddr"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [14 x i8] undef, i8 0, 0
  %t2 = insertvalue [14 x i8] %t1, i8 0, 1
  %t3 = insertvalue [14 x i8] %t2, i8 0, 2
  %t4 = insertvalue [14 x i8] %t3, i8 0, 3
  %t5 = insertvalue [14 x i8] %t4, i8 0, 4
  %t6 = insertvalue [14 x i8] %t5, i8 0, 5
  %t7 = insertvalue [14 x i8] %t6, i8 0, 6
  %t8 = insertvalue [14 x i8] %t7, i8 0, 7
  %t9 = insertvalue [14 x i8] %t8, i8 0, 8
  %t10 = insertvalue [14 x i8] %t9, i8 0, 9
  %t11 = insertvalue [14 x i8] %t10, i8 0, 10
  %t12 = insertvalue [14 x i8] %t11, i8 0, 11
  %t13 = insertvalue [14 x i8] %t12, i8 0, 12
  %t14 = insertvalue [14 x i8] %t13, i8 0, 13
  %t17 = insertvalue %"<sys/socket.h>:osockaddr" undef, i16 0, 0
  %t19 = insertvalue %"<sys/socket.h>:osockaddr" %t17, [14 x i8] %t14, 1
  store %"<sys/socket.h>:osockaddr" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:osockaddr", ptr %rv
  ret %"<sys/socket.h>:osockaddr" %rr
}

define dso_local %"<sys/socket.h>:pthread_attr_t" @_3csys_2fsocket_2eh_3e_3apthread__attr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:pthread_attr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [7 x i64] undef, i64 0, 0
  %t2 = insertvalue [7 x i64] %t1, i64 0, 1
  %t3 = insertvalue [7 x i64] %t2, i64 0, 2
  %t4 = insertvalue [7 x i64] %t3, i64 0, 3
  %t5 = insertvalue [7 x i64] %t4, i64 0, 4
  %t6 = insertvalue [7 x i64] %t5, i64 0, 5
  %t7 = insertvalue [7 x i64] %t6, i64 0, 6
  %t10 = insertvalue %"<sys/socket.h>:pthread_attr_t" undef, [7 x i64] %t7, 0
  store %"<sys/socket.h>:pthread_attr_t" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:pthread_attr_t", ptr %rv
  ret %"<sys/socket.h>:pthread_attr_t" %rr
}

define dso_local %"<sys/socket.h>:pthread_barrier_t" @_3csys_2fsocket_2eh_3e_3apthread__barrier__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:pthread_barrier_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i64] undef, i64 0, 0
  %t2 = insertvalue [4 x i64] %t1, i64 0, 1
  %t3 = insertvalue [4 x i64] %t2, i64 0, 2
  %t4 = insertvalue [4 x i64] %t3, i64 0, 3
  %t7 = insertvalue %"<sys/socket.h>:pthread_barrier_t" undef, [4 x i64] %t4, 0
  store %"<sys/socket.h>:pthread_barrier_t" %t7, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:pthread_barrier_t", ptr %rv
  ret %"<sys/socket.h>:pthread_barrier_t" %rr
}

define dso_local %"<sys/socket.h>:pthread_barrierattr_t" @_3csys_2fsocket_2eh_3e_3apthread__barrierattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:pthread_barrierattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<sys/socket.h>:pthread_barrierattr_t" undef, [1 x i32] %t1, 0
  store %"<sys/socket.h>:pthread_barrierattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:pthread_barrierattr_t", ptr %rv
  ret %"<sys/socket.h>:pthread_barrierattr_t" %rr
}

define dso_local %"<sys/socket.h>:pthread_cond_t" @_3csys_2fsocket_2eh_3e_3apthread__cond__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:pthread_cond_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [6 x i64] undef, i64 0, 0
  %t2 = insertvalue [6 x i64] %t1, i64 0, 1
  %t3 = insertvalue [6 x i64] %t2, i64 0, 2
  %t4 = insertvalue [6 x i64] %t3, i64 0, 3
  %t5 = insertvalue [6 x i64] %t4, i64 0, 4
  %t6 = insertvalue [6 x i64] %t5, i64 0, 5
  %t9 = insertvalue %"<sys/socket.h>:pthread_cond_t" undef, [6 x i64] %t6, 0
  store %"<sys/socket.h>:pthread_cond_t" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:pthread_cond_t", ptr %rv
  ret %"<sys/socket.h>:pthread_cond_t" %rr
}

define dso_local %"<sys/socket.h>:pthread_condattr_t" @_3csys_2fsocket_2eh_3e_3apthread__condattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:pthread_condattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<sys/socket.h>:pthread_condattr_t" undef, [1 x i32] %t1, 0
  store %"<sys/socket.h>:pthread_condattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:pthread_condattr_t", ptr %rv
  ret %"<sys/socket.h>:pthread_condattr_t" %rr
}

define dso_local %"<sys/socket.h>:pthread_mutex_t" @_3csys_2fsocket_2eh_3e_3apthread__mutex__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:pthread_mutex_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [5 x i64] undef, i64 0, 0
  %t2 = insertvalue [5 x i64] %t1, i64 0, 1
  %t3 = insertvalue [5 x i64] %t2, i64 0, 2
  %t4 = insertvalue [5 x i64] %t3, i64 0, 3
  %t5 = insertvalue [5 x i64] %t4, i64 0, 4
  %t8 = insertvalue %"<sys/socket.h>:pthread_mutex_t" undef, [5 x i64] %t5, 0
  store %"<sys/socket.h>:pthread_mutex_t" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:pthread_mutex_t", ptr %rv
  ret %"<sys/socket.h>:pthread_mutex_t" %rr
}

define dso_local %"<sys/socket.h>:pthread_mutexattr_t" @_3csys_2fsocket_2eh_3e_3apthread__mutexattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:pthread_mutexattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<sys/socket.h>:pthread_mutexattr_t" undef, [1 x i32] %t1, 0
  store %"<sys/socket.h>:pthread_mutexattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:pthread_mutexattr_t", ptr %rv
  ret %"<sys/socket.h>:pthread_mutexattr_t" %rr
}

define dso_local %"<sys/socket.h>:pthread_rwlock_t" @_3csys_2fsocket_2eh_3e_3apthread__rwlock__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:pthread_rwlock_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [7 x i64] undef, i64 0, 0
  %t2 = insertvalue [7 x i64] %t1, i64 0, 1
  %t3 = insertvalue [7 x i64] %t2, i64 0, 2
  %t4 = insertvalue [7 x i64] %t3, i64 0, 3
  %t5 = insertvalue [7 x i64] %t4, i64 0, 4
  %t6 = insertvalue [7 x i64] %t5, i64 0, 5
  %t7 = insertvalue [7 x i64] %t6, i64 0, 6
  %t10 = insertvalue %"<sys/socket.h>:pthread_rwlock_t" undef, [7 x i64] %t7, 0
  store %"<sys/socket.h>:pthread_rwlock_t" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:pthread_rwlock_t", ptr %rv
  ret %"<sys/socket.h>:pthread_rwlock_t" %rr
}

define dso_local %"<sys/socket.h>:pthread_rwlockattr_t" @_3csys_2fsocket_2eh_3e_3apthread__rwlockattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:pthread_rwlockattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i64] undef, i64 0, 0
  %t4 = insertvalue %"<sys/socket.h>:pthread_rwlockattr_t" undef, [1 x i64] %t1, 0
  store %"<sys/socket.h>:pthread_rwlockattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:pthread_rwlockattr_t", ptr %rv
  ret %"<sys/socket.h>:pthread_rwlockattr_t" %rr
}

define dso_local %"<sys/socket.h>:sockaddr" @_3csys_2fsocket_2eh_3e_3asockaddr_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:sockaddr"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [14 x i8] undef, i8 0, 0
  %t2 = insertvalue [14 x i8] %t1, i8 0, 1
  %t3 = insertvalue [14 x i8] %t2, i8 0, 2
  %t4 = insertvalue [14 x i8] %t3, i8 0, 3
  %t5 = insertvalue [14 x i8] %t4, i8 0, 4
  %t6 = insertvalue [14 x i8] %t5, i8 0, 5
  %t7 = insertvalue [14 x i8] %t6, i8 0, 6
  %t8 = insertvalue [14 x i8] %t7, i8 0, 7
  %t9 = insertvalue [14 x i8] %t8, i8 0, 8
  %t10 = insertvalue [14 x i8] %t9, i8 0, 9
  %t11 = insertvalue [14 x i8] %t10, i8 0, 10
  %t12 = insertvalue [14 x i8] %t11, i8 0, 11
  %t13 = insertvalue [14 x i8] %t12, i8 0, 12
  %t14 = insertvalue [14 x i8] %t13, i8 0, 13
  %t17 = insertvalue %"<sys/socket.h>:sockaddr" undef, i16 0, 0
  %t19 = insertvalue %"<sys/socket.h>:sockaddr" %t17, [14 x i8] %t14, 1
  store %"<sys/socket.h>:sockaddr" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:sockaddr", ptr %rv
  ret %"<sys/socket.h>:sockaddr" %rr
}

define dso_local %"<sys/socket.h>:sockaddr_storage" @_3csys_2fsocket_2eh_3e_3asockaddr__storage_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca i16
  %l3 = alloca [118 x i8]
  %rv = alloca %"<sys/socket.h>:sockaddr_storage"
  br label %start
start:
  br label %bb0
bb0:
  store i16 0, ptr %l0, !tbaa !63
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 118
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [118 x i8], ptr %l3, i64 0, i64 %t5
  store i8 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  %t9 = load [118 x i8], ptr %l3
  %t10 = load i16, ptr %l0, !tbaa !63
  %t11 = insertvalue %"<sys/socket.h>:sockaddr_storage" undef, i16 %t10, 0
  %t13 = insertvalue %"<sys/socket.h>:sockaddr_storage" %t11, [118 x i8] %t9, 1
  %t15 = insertvalue %"<sys/socket.h>:sockaddr_storage" %t13, i64 0, 2
  store %"<sys/socket.h>:sockaddr_storage" %t15, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:sockaddr_storage", ptr %rv
  ret %"<sys/socket.h>:sockaddr_storage" %rr
}

define dso_local %"<sys/socket.h>:timespec" @_3csys_2fsocket_2eh_3e_3atimespec_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/socket.h>:timespec" undef, i64 0, 0
  %t4 = insertvalue %"<sys/socket.h>:timespec" %t2, i64 0, 1
  store %"<sys/socket.h>:timespec" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:timespec", ptr %rv
  ret %"<sys/socket.h>:timespec" %rr
}

define dso_local %"<sys/socket.h>:timeval" @_3csys_2fsocket_2eh_3e_3atimeval_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:timeval"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/socket.h>:timeval" undef, i64 0, 0
  %t4 = insertvalue %"<sys/socket.h>:timeval" %t2, i64 0, 1
  store %"<sys/socket.h>:timeval" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:timeval", ptr %rv
  ret %"<sys/socket.h>:timeval" %rr
}

define dso_local %"<sys/socket.h>:ucred" @_3csys_2fsocket_2eh_3e_3aucred_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/socket.h>:ucred"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/socket.h>:ucred" undef, i32 0, 0
  %t4 = insertvalue %"<sys/socket.h>:ucred" %t2, i32 0, 1
  %t6 = insertvalue %"<sys/socket.h>:ucred" %t4, i32 0, 2
  store %"<sys/socket.h>:ucred" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:ucred", ptr %rv
  ret %"<sys/socket.h>:ucred" %rr
}

define linkonce_odr %"<sys/socket.h>:msghdr" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fsocket_2eh_3e_3amsghdr() #0 {
entry:
  %l0 = alloca %"<sys/socket.h>:msghdr"
  %rv = alloca %"<sys/socket.h>:msghdr"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<sys/socket.h>:msghdr" @_3csys_2fsocket_2eh_3e_3amsghdr_2ector(ptr %t1)
  store %"<sys/socket.h>:msghdr" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<sys/socket.h>:msghdr", ptr %l0
  store %"<sys/socket.h>:msghdr" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/socket.h>:msghdr", ptr %rv
  ret %"<sys/socket.h>:msghdr" %rr
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-ndd,-pconfig,-pku,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
