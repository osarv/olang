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
%"<netdb.h>:addrinfo" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%"<netdb.h>:c___atomic_wide_counter" = type { [1 x i64] }
%"<netdb.h>:c___pthread_internal_list" = type { ptr, ptr }
%"<netdb.h>:c___pthread_internal_slist" = type { ptr }
%"<netdb.h>:c___sigset_t" = type { [16 x i64] }
%"<netdb.h>:fd_set" = type { [16 x i64] }
%"<netdb.h>:gaicb" = type { ptr, ptr, ptr, ptr, i32, [5 x i32] }
%"<netdb.h>:sockaddr_storage" = type { i16, [118 x i8], i64 }
%"<netdb.h>:group_filter" = type { i32, %"<netdb.h>:sockaddr_storage", i32, i32, [1 x %"<netdb.h>:sockaddr_storage"] }
%"<netdb.h>:group_req" = type { i32, %"<netdb.h>:sockaddr_storage" }
%"<netdb.h>:group_source_req" = type { i32, %"<netdb.h>:sockaddr_storage", %"<netdb.h>:sockaddr_storage" }
%"<netdb.h>:in6_pktinfo" = type { [5 x i32] }
%"<netdb.h>:in_addr" = type { i32 }
%"<netdb.h>:in_pktinfo" = type { i32, %"<netdb.h>:in_addr", %"<netdb.h>:in_addr" }
%"<netdb.h>:iovec" = type { ptr, i64 }
%"<netdb.h>:ip6_mtuinfo" = type { %"<netdb.h>:sockaddr_in6", i32 }
%"<netdb.h>:sockaddr_in6" = type { [7 x i32] }
%"<netdb.h>:ip_mreq" = type { %"<netdb.h>:in_addr", %"<netdb.h>:in_addr" }
%"<netdb.h>:ip_mreq_source" = type { %"<netdb.h>:in_addr", %"<netdb.h>:in_addr", %"<netdb.h>:in_addr" }
%"<netdb.h>:ip_mreqn" = type { %"<netdb.h>:in_addr", %"<netdb.h>:in_addr", i32 }
%"<netdb.h>:ip_msfilter" = type { %"<netdb.h>:in_addr", %"<netdb.h>:in_addr", i32, i32, [1 x %"<netdb.h>:in_addr"] }
%"<netdb.h>:ip_opts" = type { %"<netdb.h>:in_addr", [40 x i8] }
%"<netdb.h>:ipv6_mreq" = type { [5 x i32] }
%"<netdb.h>:linger" = type { i32, i32 }
%"<netdb.h>:mmsghdr" = type { %"<netdb.h>:msghdr", i32 }
%"<netdb.h>:msghdr" = type { ptr, i32, ptr, i64, ptr, i64, i32 }
%"<netdb.h>:osockaddr" = type { i16, [14 x i8] }
%"<netdb.h>:pthread_attr_t" = type { [7 x i64] }
%"<netdb.h>:pthread_barrier_t" = type { [4 x i64] }
%"<netdb.h>:pthread_barrierattr_t" = type { [1 x i32] }
%"<netdb.h>:pthread_cond_t" = type { [6 x i64] }
%"<netdb.h>:pthread_condattr_t" = type { [1 x i32] }
%"<netdb.h>:pthread_mutex_t" = type { [5 x i64] }
%"<netdb.h>:pthread_mutexattr_t" = type { [1 x i32] }
%"<netdb.h>:pthread_rwlock_t" = type { [7 x i64] }
%"<netdb.h>:pthread_rwlockattr_t" = type { [1 x i64] }
%"<netdb.h>:sigevent_t" = type { [8 x i64] }
%"<netdb.h>:sigval" = type { [1 x i64] }
%"<netdb.h>:sockaddr" = type { i16, [14 x i8] }
%"<netdb.h>:sockaddr_in" = type { i16, i16, %"<netdb.h>:in_addr", [8 x i8] }
%"<netdb.h>:timespec" = type { i64, i64 }
%"<netdb.h>:timeval" = type { i64, i64 }
%"<netdb.h>:ucred" = type { i32, i32, i32 }
@G_2e_3cnetdb_2eh_3e_2eAF__ALG = constant <{ [4 x i8] }> <{ [4 x i8] c"\26\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__APPLETALK = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__ASH = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__ATMPVC = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__ATMSVC = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__AX25 = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__BLUETOOTH = constant <{ [4 x i8] }> <{ [4 x i8] c"\1F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__BRIDGE = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__CAIF = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__CAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__DECnet = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__ECONET = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__FILE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__IB = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__IEEE802154 = constant <{ [4 x i8] }> <{ [4 x i8] c"\24\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__INET = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__INET6 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__IPX = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__IRDA = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__ISDN = constant <{ [4 x i8] }> <{ [4 x i8] c"\22\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__IUCV = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__KCM = constant <{ [4 x i8] }> <{ [4 x i8] c"\29\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__KEY = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__LLC = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__LOCAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__MAX = constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__MCTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__MPLS = constant <{ [4 x i8] }> <{ [4 x i8] c"\1C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__NETBEUI = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__NETLINK = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__NETROM = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__NFC = constant <{ [4 x i8] }> <{ [4 x i8] c"\27\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__PACKET = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__PHONET = constant <{ [4 x i8] }> <{ [4 x i8] c"\23\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__PPPOX = constant <{ [4 x i8] }> <{ [4 x i8] c"\18\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__QIPCRTR = constant <{ [4 x i8] }> <{ [4 x i8] c"\2A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__RDS = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__ROSE = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__ROUTE = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__RXRPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\21\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__SECURITY = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__SMC = constant <{ [4 x i8] }> <{ [4 x i8] c"\2B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__SNA = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__TIPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\1E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__UNIX = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__UNSPEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__VSOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\28\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__WANPIPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__X25 = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAF__XDP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAI__ADDRCONFIG = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAI__ALL = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAI__CANONIDN = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAI__CANONNAME = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAI__IDN = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAI__NUMERICHOST = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAI__NUMERICSERV = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAI__PASSIVE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eAI__V4MAPPED = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eBIG__ENDIAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\E1\10\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eBYTE__ORDER = constant <{ [4 x i8] }> <{ [4 x i8] c"\D2\04\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__ADDRFAMILY = constant <{ [4 x i8] }> <{ [4 x i8] c"\F7\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__AGAIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\FD\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__ALLDONE = constant <{ [4 x i8] }> <{ [4 x i8] c"\99\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__BADFLAGS = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__CANCELED = constant <{ [4 x i8] }> <{ [4 x i8] c"\9B\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__FAIL = constant <{ [4 x i8] }> <{ [4 x i8] c"\FC\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__FAMILY = constant <{ [4 x i8] }> <{ [4 x i8] c"\FA\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__IDN__ENCODE = constant <{ [4 x i8] }> <{ [4 x i8] c"\97\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__INPROGRESS = constant <{ [4 x i8] }> <{ [4 x i8] c"\9C\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__INTR = constant <{ [4 x i8] }> <{ [4 x i8] c"\98\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__MEMORY = constant <{ [4 x i8] }> <{ [4 x i8] c"\F6\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__NODATA = constant <{ [4 x i8] }> <{ [4 x i8] c"\FB\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__NONAME = constant <{ [4 x i8] }> <{ [4 x i8] c"\FE\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__NOTCANCELED = constant <{ [4 x i8] }> <{ [4 x i8] c"\9A\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__OVERFLOW = constant <{ [4 x i8] }> <{ [4 x i8] c"\F4\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__SERVICE = constant <{ [4 x i8] }> <{ [4 x i8] c"\F8\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__SOCKTYPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\F9\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eEAI__SYSTEM = constant <{ [4 x i8] }> <{ [4 x i8] c"\F5\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eFD__SETSIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eFIOGETOWN = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\89\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eFIOSETOWN = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\89\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eGAI__NOWAIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eGAI__WAIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eHOST__NOT__FOUND = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eINADDR__ALLHOSTS__GROUP = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\E0\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eINADDR__ALLRTRS__GROUP = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\E0\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eINADDR__ALLSNOOPERS__GROUP = constant <{ [8 x i8] }> <{ [8 x i8] c"\6A\00\00\E0\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eINADDR__ANY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eINADDR__BROADCAST = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eINADDR__DUMMY = constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\C0\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eINADDR__LOOPBACK = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\7F" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eINADDR__MAX__LOCAL__GROUP = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\00\00\E0\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eINADDR__NONE = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eINADDR__UNSPEC__GROUP = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\E0\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eINET6__ADDRSTRLEN = constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eINET__ADDRSTRLEN = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIN__CLASSA__HOST = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIN__CLASSA__MAX = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIN__CLASSA__NET = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\FF\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIN__CLASSA__NSHIFT = constant <{ [4 x i8] }> <{ [4 x i8] c"\18\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIN__CLASSB__HOST = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIN__CLASSB__MAX = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\01\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIN__CLASSB__NET = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\FF\FF\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIN__CLASSB__NSHIFT = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIN__CLASSC__HOST = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIN__CLASSC__NET = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\FF\FF\FF\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIN__CLASSC__NSHIFT = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIN__LOOPBACKNET = constant <{ [4 x i8] }> <{ [4 x i8] c"\7F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__BIFFUDP = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__CMDSERVER = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\02\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__DAYTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__DISCARD = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__ECHO = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__EFSSERVER = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\02\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__EXECSERVER = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__FINGER = constant <{ [4 x i8] }> <{ [4 x i8] c"\4F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__FTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__LOGINSERVER = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\02\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__MTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\39\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__NAMESERVER = constant <{ [4 x i8] }> <{ [4 x i8] c"\2A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__NETSTAT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__RESERVED = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__RJE = constant <{ [4 x i8] }> <{ [4 x i8] c"\4D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__ROUTESERVER = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\02\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__SMTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__SUPDUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\5F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__SYSTAT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__TELNET = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__TFTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\45\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__TIMESERVER = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__TTYLINK = constant <{ [4 x i8] }> <{ [4 x i8] c"\57\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__USERRESERVED = constant <{ [4 x i8] }> <{ [4 x i8] c"\88\13\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__WHOIS = constant <{ [4 x i8] }> <{ [4 x i8] c"\2B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPORT__WHOSERVER = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\02\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__AH = constant <{ [4 x i8] }> <{ [4 x i8] c"\33\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__BEETPH = constant <{ [4 x i8] }> <{ [4 x i8] c"\5E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__COMP = constant <{ [4 x i8] }> <{ [4 x i8] c"\6C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__DCCP = constant <{ [4 x i8] }> <{ [4 x i8] c"\21\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__DSTOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\3C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__EGP = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__ENCAP = constant <{ [4 x i8] }> <{ [4 x i8] c"\62\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__ESP = constant <{ [4 x i8] }> <{ [4 x i8] c"\32\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__ETHERNET = constant <{ [4 x i8] }> <{ [4 x i8] c"\8F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__FRAGMENT = constant <{ [4 x i8] }> <{ [4 x i8] c"\2C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__GRE = constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__HOPOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__ICMP = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__ICMPV6 = constant <{ [4 x i8] }> <{ [4 x i8] c"\3A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__IDP = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__IGMP = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__IP = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__IPIP = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__IPV6 = constant <{ [4 x i8] }> <{ [4 x i8] c"\29\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__L2TP = constant <{ [4 x i8] }> <{ [4 x i8] c"\73\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__MAX = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__MH = constant <{ [4 x i8] }> <{ [4 x i8] c"\87\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__MPLS = constant <{ [4 x i8] }> <{ [4 x i8] c"\89\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__MPTCP = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__MTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\5C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__NONE = constant <{ [4 x i8] }> <{ [4 x i8] c"\3B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__PIM = constant <{ [4 x i8] }> <{ [4 x i8] c"\67\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__PUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__RAW = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__ROUTING = constant <{ [4 x i8] }> <{ [4 x i8] c"\2B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__RSVP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__SCTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\84\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__TCP = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__TP = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__UDP = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPPROTO__UDPLITE = constant <{ [4 x i8] }> <{ [4 x i8] c"\88\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__2292DSTOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__2292HOPLIMIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__2292HOPOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__2292PKTINFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__2292PKTOPTIONS = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__2292RTHDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__ADDRFORM = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__ADDR__PREFERENCES = constant <{ [4 x i8] }> <{ [4 x i8] c"\48\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__ADD__MEMBERSHIP = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__AUTHHDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__AUTOFLOWLABEL = constant <{ [4 x i8] }> <{ [4 x i8] c"\46\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__CHECKSUM = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__DONTFRAG = constant <{ [4 x i8] }> <{ [4 x i8] c"\3E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__DROP__MEMBERSHIP = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__DSTOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\3B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__FREEBIND = constant <{ [4 x i8] }> <{ [4 x i8] c"\4E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__HDRINCL = constant <{ [4 x i8] }> <{ [4 x i8] c"\24\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__HOPLIMIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\34\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__HOPOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\36\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__IPSEC__POLICY = constant <{ [4 x i8] }> <{ [4 x i8] c"\22\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__JOIN__ANYCAST = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__JOIN__GROUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__LEAVE__ANYCAST = constant <{ [4 x i8] }> <{ [4 x i8] c"\1C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__LEAVE__GROUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__MINHOPCOUNT = constant <{ [4 x i8] }> <{ [4 x i8] c"\49\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__MTU = constant <{ [4 x i8] }> <{ [4 x i8] c"\18\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__MTU__DISCOVER = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__MULTICAST__ALL = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__MULTICAST__HOPS = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__MULTICAST__IF = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__MULTICAST__LOOP = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__NEXTHOP = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__ORIGDSTADDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\4A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__PATHMTU = constant <{ [4 x i8] }> <{ [4 x i8] c"\3D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__PKTINFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\32\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__PMTUDISC__DO = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__PMTUDISC__DONT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__PMTUDISC__INTERFACE = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__PMTUDISC__OMIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__PMTUDISC__PROBE = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__PMTUDISC__WANT = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RECVDSTOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\3A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RECVERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RECVERR__RFC4884 = constant <{ [4 x i8] }> <{ [4 x i8] c"\1F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RECVFRAGSIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\4D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RECVHOPLIMIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\33\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RECVHOPOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\35\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RECVORIGDSTADDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\4A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RECVPATHMTU = constant <{ [4 x i8] }> <{ [4 x i8] c"\3C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RECVPKTINFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\31\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RECVRTHDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\38\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RECVTCLASS = constant <{ [4 x i8] }> <{ [4 x i8] c"\42\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__ROUTER__ALERT = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__ROUTER__ALERT__ISOLATE = constant <{ [4 x i8] }> <{ [4 x i8] c"\1E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RTHDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\39\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RTHDRDSTOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\37\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RTHDR__LOOSE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RTHDR__STRICT = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RTHDR__TYPE__0 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RXDSTOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\3B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__RXHOPOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\36\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__TCLASS = constant <{ [4 x i8] }> <{ [4 x i8] c"\43\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__TRANSPARENT = constant <{ [4 x i8] }> <{ [4 x i8] c"\4B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__UNICAST__HOPS = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__UNICAST__IF = constant <{ [4 x i8] }> <{ [4 x i8] c"\4C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__V6ONLY = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIPV6__XFRM__POLICY = constant <{ [4 x i8] }> <{ [4 x i8] c"\23\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__ADD__MEMBERSHIP = constant <{ [4 x i8] }> <{ [4 x i8] c"\23\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__ADD__SOURCE__MEMBERSHIP = constant <{ [4 x i8] }> <{ [4 x i8] c"\27\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__BIND__ADDRESS__NO__PORT = constant <{ [4 x i8] }> <{ [4 x i8] c"\18\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__BLOCK__SOURCE = constant <{ [4 x i8] }> <{ [4 x i8] c"\26\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__CHECKSUM = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__DEFAULT__MULTICAST__LOOP = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__DEFAULT__MULTICAST__TTL = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__DROP__MEMBERSHIP = constant <{ [4 x i8] }> <{ [4 x i8] c"\24\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__DROP__SOURCE__MEMBERSHIP = constant <{ [4 x i8] }> <{ [4 x i8] c"\28\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__FREEBIND = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__HDRINCL = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__IPSEC__POLICY = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__LOCAL__PORT__RANGE = constant <{ [4 x i8] }> <{ [4 x i8] c"\33\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__MAX__MEMBERSHIPS = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__MINTTL = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__MSFILTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\29\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__MTU = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__MTU__DISCOVER = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__MULTICAST__ALL = constant <{ [4 x i8] }> <{ [4 x i8] c"\31\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__MULTICAST__IF = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__MULTICAST__LOOP = constant <{ [4 x i8] }> <{ [4 x i8] c"\22\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__MULTICAST__TTL = constant <{ [4 x i8] }> <{ [4 x i8] c"\21\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__NODEFRAG = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__OPTIONS = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__ORIGDSTADDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__PASSSEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__PKTINFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__PKTOPTIONS = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__PMTUDISC = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__PMTUDISC__DO = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__PMTUDISC__DONT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__PMTUDISC__INTERFACE = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__PMTUDISC__OMIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__PMTUDISC__PROBE = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__PMTUDISC__WANT = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__PROTOCOL = constant <{ [4 x i8] }> <{ [4 x i8] c"\34\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__RECVERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__RECVERR__RFC4884 = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__RECVFRAGSIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__RECVOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__RECVORIGDSTADDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__RECVRETOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__RECVTOS = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__RECVTTL = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__RETOPTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__ROUTER__ALERT = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__TOS = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__TRANSPARENT = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__TTL = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__UNBLOCK__SOURCE = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__UNICAST__IF = constant <{ [4 x i8] }> <{ [4 x i8] c"\32\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eIP__XFRM__POLICY = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eLITTLE__ENDIAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\D2\04\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMCAST__BLOCK__SOURCE = constant <{ [4 x i8] }> <{ [4 x i8] c"\2B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMCAST__EXCLUDE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMCAST__INCLUDE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMCAST__JOIN__GROUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMCAST__JOIN__SOURCE__GROUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMCAST__LEAVE__GROUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMCAST__LEAVE__SOURCE__GROUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMCAST__MSFILTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\30\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMCAST__UNBLOCK__SOURCE = constant <{ [4 x i8] }> <{ [4 x i8] c"\2C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__BATCH = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\04\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__CMSG__CLOEXEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\40" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__CONFIRM = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__CTRUNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__DONTROUTE = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__DONTWAIT = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__EOR = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__ERRQUEUE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__FASTOPEN = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\20" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__FIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__MORE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\80\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__NOSIGNAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__OOB = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__PEEK = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__PROXY = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__RST = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__SYN = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__TRUNC = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__TRYHARD = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__WAITALL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__WAITFORONE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\01\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eMSG__ZEROCOPY = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\04" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNETDB__INTERNAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNETDB__SUCCESS = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNFDBITS = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNI__DGRAM = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNI__IDN = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNI__MAXHOST = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\04\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNI__MAXSERV = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNI__NAMEREQD = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNI__NOFQDN = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNI__NUMERICHOST = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNI__NUMERICSERV = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNO__ADDRESS = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNO__DATA = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eNO__RECOVERY = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePDP__ENDIAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\54\0D\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__ALG = constant <{ [4 x i8] }> <{ [4 x i8] c"\26\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__APPLETALK = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__ASH = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__ATMPVC = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__ATMSVC = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__AX25 = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__BLUETOOTH = constant <{ [4 x i8] }> <{ [4 x i8] c"\1F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__BRIDGE = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__CAIF = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__CAN = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__DECnet = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__ECONET = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__FILE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__IB = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__IEEE802154 = constant <{ [4 x i8] }> <{ [4 x i8] c"\24\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__INET = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__INET6 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__IPX = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__IRDA = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__ISDN = constant <{ [4 x i8] }> <{ [4 x i8] c"\22\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__IUCV = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__KCM = constant <{ [4 x i8] }> <{ [4 x i8] c"\29\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__KEY = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__LLC = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__LOCAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__MAX = constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__MCTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__MPLS = constant <{ [4 x i8] }> <{ [4 x i8] c"\1C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__NETBEUI = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__NETLINK = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__NETROM = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__NFC = constant <{ [4 x i8] }> <{ [4 x i8] c"\27\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__PACKET = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__PHONET = constant <{ [4 x i8] }> <{ [4 x i8] c"\23\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__PPPOX = constant <{ [4 x i8] }> <{ [4 x i8] c"\18\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__QIPCRTR = constant <{ [4 x i8] }> <{ [4 x i8] c"\2A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__RDS = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__ROSE = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__ROUTE = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__RXRPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\21\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__SECURITY = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__SMC = constant <{ [4 x i8] }> <{ [4 x i8] c"\2B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__SNA = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__TIPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\1E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__UNIX = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__UNSPEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__VSOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\28\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__WANPIPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__X25 = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2ePF__XDP = constant <{ [4 x i8] }> <{ [4 x i8] c"\2C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSCM__CREDENTIALS = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSCM__PIDFD = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSCM__RIGHTS = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSCM__SECURITY = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSCM__TIMESTAMP = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSCM__TIMESTAMPING = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSCM__TIMESTAMPING__OPT__STATS = constant <{ [4 x i8] }> <{ [4 x i8] c"\36\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSCM__TIMESTAMPING__PKTINFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\3A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSCM__TIMESTAMPNS = constant <{ [4 x i8] }> <{ [4 x i8] c"\23\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSCM__TXTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\3D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSCM__WIFI__STATUS = constant <{ [4 x i8] }> <{ [4 x i8] c"\29\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSCOPE__DELIMITER = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSHUT__RD = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSHUT__RDWR = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSHUT__WR = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSIOCATMARK = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\89\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSIOCGPGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\89\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSIOCGSTAMPNS__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\89\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSIOCGSTAMP__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\89\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSIOCSPGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\89\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOCK__CLOEXEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\08\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOCK__DCCP = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOCK__DGRAM = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOCK__NONBLOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\08\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOCK__PACKET = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOCK__RAW = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOCK__RDM = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOCK__SEQPACKET = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOCK__STREAM = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__AAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__ALG = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__ATM = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__BLUETOOTH = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__CAIF = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__DCCP = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__DECNET = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__ICMPV6 = constant <{ [4 x i8] }> <{ [4 x i8] c"\3A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__IP = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__IPV6 = constant <{ [4 x i8] }> <{ [4 x i8] c"\29\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__IRDA = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__IUCV = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__KCM = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__LLC = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__MCTP = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__MPTCP = constant <{ [4 x i8] }> <{ [4 x i8] c"\1C\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__NETBEUI = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__NETLINK = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__NFC = constant <{ [4 x i8] }> <{ [4 x i8] c"\18\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__PACKET = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__PNPIPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__PPPOL2TP = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__RAW = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__RDS = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__RXRPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__SMC = constant <{ [4 x i8] }> <{ [4 x i8] c"\1E\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__SOCKET = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__TIPC = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__TLS = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__X25 = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOL__XDP = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\01\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSOMAXCONN = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__ACCEPTCONN = constant <{ [4 x i8] }> <{ [4 x i8] c"\1E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__ATTACH__BPF = constant <{ [4 x i8] }> <{ [4 x i8] c"\32\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__ATTACH__FILTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__ATTACH__REUSEPORT__CBPF = constant <{ [4 x i8] }> <{ [4 x i8] c"\33\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__ATTACH__REUSEPORT__EBPF = constant <{ [4 x i8] }> <{ [4 x i8] c"\34\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__BINDTODEVICE = constant <{ [4 x i8] }> <{ [4 x i8] c"\19\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__BINDTOIFINDEX = constant <{ [4 x i8] }> <{ [4 x i8] c"\3E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__BPF__EXTENSIONS = constant <{ [4 x i8] }> <{ [4 x i8] c"\30\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__BROADCAST = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__BSDCOMPAT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__BUF__LOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\48\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__BUSY__POLL = constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__BUSY__POLL__BUDGET = constant <{ [4 x i8] }> <{ [4 x i8] c"\46\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__CNX__ADVICE = constant <{ [4 x i8] }> <{ [4 x i8] c"\35\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__COOKIE = constant <{ [4 x i8] }> <{ [4 x i8] c"\39\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__DEBUG = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__DETACH__BPF = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__DETACH__FILTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\1B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__DETACH__REUSEPORT__BPF = constant <{ [4 x i8] }> <{ [4 x i8] c"\44\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__DOMAIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\27\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__DONTROUTE = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__ERROR = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__GET__FILTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__INCOMING__CPU = constant <{ [4 x i8] }> <{ [4 x i8] c"\31\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__INCOMING__NAPI__ID = constant <{ [4 x i8] }> <{ [4 x i8] c"\38\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__KEEPALIVE = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__LINGER = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__LOCK__FILTER = constant <{ [4 x i8] }> <{ [4 x i8] c"\2C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__MARK = constant <{ [4 x i8] }> <{ [4 x i8] c"\24\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__MAX__PACING__RATE = constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__MEMINFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\37\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__NETNS__COOKIE = constant <{ [4 x i8] }> <{ [4 x i8] c"\47\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__NOFCS = constant <{ [4 x i8] }> <{ [4 x i8] c"\2B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__NO__CHECK = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__OOBINLINE = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__PASSCRED = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__PASSPIDFD = constant <{ [4 x i8] }> <{ [4 x i8] c"\4C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__PASSSEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\22\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__PEEK__OFF = constant <{ [4 x i8] }> <{ [4 x i8] c"\2A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__PEERCRED = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__PEERGROUPS = constant <{ [4 x i8] }> <{ [4 x i8] c"\3B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__PEERNAME = constant <{ [4 x i8] }> <{ [4 x i8] c"\1C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__PEERPIDFD = constant <{ [4 x i8] }> <{ [4 x i8] c"\4D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__PEERSEC = constant <{ [4 x i8] }> <{ [4 x i8] c"\1F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__PREFER__BUSY__POLL = constant <{ [4 x i8] }> <{ [4 x i8] c"\45\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__PRIORITY = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__PROTOCOL = constant <{ [4 x i8] }> <{ [4 x i8] c"\26\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__RCVBUF = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__RCVBUFFORCE = constant <{ [4 x i8] }> <{ [4 x i8] c"\21\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__RCVLOWAT = constant <{ [4 x i8] }> <{ [4 x i8] c"\12\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__RCVMARK = constant <{ [4 x i8] }> <{ [4 x i8] c"\4B\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__RCVTIMEO = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__RCVTIMEO__NEW = constant <{ [4 x i8] }> <{ [4 x i8] c"\42\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__RCVTIMEO__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__RESERVE__MEM = constant <{ [4 x i8] }> <{ [4 x i8] c"\49\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__REUSEADDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__REUSEPORT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__RXQ__OVFL = constant <{ [4 x i8] }> <{ [4 x i8] c"\28\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__SECURITY__AUTHENTICATION = constant <{ [4 x i8] }> <{ [4 x i8] c"\16\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__SECURITY__ENCRYPTION__NETWORK = constant <{ [4 x i8] }> <{ [4 x i8] c"\18\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__SECURITY__ENCRYPTION__TRANSPORT = constant <{ [4 x i8] }> <{ [4 x i8] c"\17\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__SELECT__ERR__QUEUE = constant <{ [4 x i8] }> <{ [4 x i8] c"\2D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__SNDBUF = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__SNDBUFFORCE = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__SNDLOWAT = constant <{ [4 x i8] }> <{ [4 x i8] c"\13\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__SNDTIMEO = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__SNDTIMEO__NEW = constant <{ [4 x i8] }> <{ [4 x i8] c"\43\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__SNDTIMEO__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__TIMESTAMP = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__TIMESTAMPING = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__TIMESTAMPING__NEW = constant <{ [4 x i8] }> <{ [4 x i8] c"\41\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__TIMESTAMPING__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\25\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__TIMESTAMPNS = constant <{ [4 x i8] }> <{ [4 x i8] c"\23\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__TIMESTAMPNS__NEW = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__TIMESTAMPNS__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\23\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__TIMESTAMP__NEW = constant <{ [4 x i8] }> <{ [4 x i8] c"\3F\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__TIMESTAMP__OLD = constant <{ [4 x i8] }> <{ [4 x i8] c"\1D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__TXREHASH = constant <{ [4 x i8] }> <{ [4 x i8] c"\4A\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__TXTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\3D\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__TYPE = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__WIFI__STATUS = constant <{ [4 x i8] }> <{ [4 x i8] c"\29\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eSO__ZEROCOPY = constant <{ [4 x i8] }> <{ [4 x i8] c"\3C\00\00\00" }>, align 8
@G_2e_3cnetdb_2eh_3e_2eTRY__AGAIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
define dso_local %"<netdb.h>:addrinfo" @_3cnetdb_2eh_3e_3aaddrinfo_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:addrinfo"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<netdb.h>:addrinfo" undef, i32 0, 0
  %t4 = insertvalue %"<netdb.h>:addrinfo" %t2, i32 0, 1
  %t6 = insertvalue %"<netdb.h>:addrinfo" %t4, i32 0, 2
  %t8 = insertvalue %"<netdb.h>:addrinfo" %t6, i32 0, 3
  %t10 = insertvalue %"<netdb.h>:addrinfo" %t8, i32 0, 4
  %t12 = insertvalue %"<netdb.h>:addrinfo" %t10, ptr null, 5
  %t14 = insertvalue %"<netdb.h>:addrinfo" %t12, ptr null, 6
  %t16 = insertvalue %"<netdb.h>:addrinfo" %t14, ptr null, 7
  store %"<netdb.h>:addrinfo" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:addrinfo", ptr %rv
  ret %"<netdb.h>:addrinfo" %rr
}

define dso_local %"<netdb.h>:c___atomic_wide_counter" @_3cnetdb_2eh_3e_3ac______atomic__wide__counter_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:c___atomic_wide_counter"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i64] undef, i64 0, 0
  %t4 = insertvalue %"<netdb.h>:c___atomic_wide_counter" undef, [1 x i64] %t1, 0
  store %"<netdb.h>:c___atomic_wide_counter" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:c___atomic_wide_counter", ptr %rv
  ret %"<netdb.h>:c___atomic_wide_counter" %rr
}

define dso_local %"<netdb.h>:c___pthread_internal_list" @_3cnetdb_2eh_3e_3ac______pthread__internal__list_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:c___pthread_internal_list"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<netdb.h>:c___pthread_internal_list" undef, ptr null, 0
  %t4 = insertvalue %"<netdb.h>:c___pthread_internal_list" %t2, ptr null, 1
  store %"<netdb.h>:c___pthread_internal_list" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:c___pthread_internal_list", ptr %rv
  ret %"<netdb.h>:c___pthread_internal_list" %rr
}

define dso_local %"<netdb.h>:c___pthread_internal_slist" @_3cnetdb_2eh_3e_3ac______pthread__internal__slist_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:c___pthread_internal_slist"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<netdb.h>:c___pthread_internal_slist" undef, ptr null, 0
  store %"<netdb.h>:c___pthread_internal_slist" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:c___pthread_internal_slist", ptr %rv
  ret %"<netdb.h>:c___pthread_internal_slist" %rr
}

define dso_local %"<netdb.h>:c___sigset_t" @_3cnetdb_2eh_3e_3ac______sigset__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:c___sigset_t"
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
  %t19 = insertvalue %"<netdb.h>:c___sigset_t" undef, [16 x i64] %t16, 0
  store %"<netdb.h>:c___sigset_t" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:c___sigset_t", ptr %rv
  ret %"<netdb.h>:c___sigset_t" %rr
}

define dso_local %"<netdb.h>:fd_set" @_3cnetdb_2eh_3e_3afd__set_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:fd_set"
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
  %t19 = insertvalue %"<netdb.h>:fd_set" undef, [16 x i64] %t16, 0
  store %"<netdb.h>:fd_set" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:fd_set", ptr %rv
  ret %"<netdb.h>:fd_set" %rr
}

define dso_local %"<netdb.h>:gaicb" @_3cnetdb_2eh_3e_3agaicb_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:gaicb"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [5 x i32] undef, i32 0, 0
  %t2 = insertvalue [5 x i32] %t1, i32 0, 1
  %t3 = insertvalue [5 x i32] %t2, i32 0, 2
  %t4 = insertvalue [5 x i32] %t3, i32 0, 3
  %t5 = insertvalue [5 x i32] %t4, i32 0, 4
  %t8 = insertvalue %"<netdb.h>:gaicb" undef, ptr null, 0
  %t10 = insertvalue %"<netdb.h>:gaicb" %t8, ptr null, 1
  %t12 = insertvalue %"<netdb.h>:gaicb" %t10, ptr null, 2
  %t14 = insertvalue %"<netdb.h>:gaicb" %t12, ptr null, 3
  %t16 = insertvalue %"<netdb.h>:gaicb" %t14, i32 0, 4
  %t18 = insertvalue %"<netdb.h>:gaicb" %t16, [5 x i32] %t5, 5
  store %"<netdb.h>:gaicb" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:gaicb", ptr %rv
  ret %"<netdb.h>:gaicb" %rr
}

define dso_local void @_3cnetdb_2eh_3e_3agroup__filter_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca %"<netdb.h>:sockaddr_storage"
  %l2 = alloca i32
  %l3 = alloca i32
  %l5 = alloca %"<netdb.h>:sockaddr_storage"
  %l6 = alloca %"<netdb.h>:sockaddr_storage"
  %l8 = alloca %"<netdb.h>:sockaddr_storage"
  %l10 = alloca %"<netdb.h>:group_filter"
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l0, !tbaa !64
  %t1 = call %"<netdb.h>:sockaddr_storage" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3asockaddr__storage()
  store %"<netdb.h>:sockaddr_storage" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"<netdb.h>:sockaddr_storage", ptr %l5
  store %"<netdb.h>:sockaddr_storage" %t2, ptr %l1
  store i32 0, ptr %l2, !tbaa !64
  store i32 0, ptr %l3, !tbaa !64
  store %"<netdb.h>:sockaddr_storage" zeroinitializer, ptr %l6
  %t3 = icmp sgt i64 1, 0
  br i1 %t3, label %bb2, label %bb3
bb2:
  %t5 = call %"<netdb.h>:sockaddr_storage" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3asockaddr__storage()
  store %"<netdb.h>:sockaddr_storage" %t5, ptr %l8
  br label %bb4
bb3:
  %t6 = load %"<netdb.h>:sockaddr_storage", ptr %l6
  %t7 = insertvalue [1 x %"<netdb.h>:sockaddr_storage"] undef, %"<netdb.h>:sockaddr_storage" %t6, 0
  %t9 = getelementptr %"<netdb.h>:group_filter", ptr %l10, i32 0, i32 0
  %t10 = load i32, ptr %l0, !tbaa !64
  store i32 %t10, ptr %t9, !tbaa !64
  %t11 = getelementptr %"<netdb.h>:group_filter", ptr %l10, i32 0, i32 1
  %t12 = load %"<netdb.h>:sockaddr_storage", ptr %l1
  store %"<netdb.h>:sockaddr_storage" %t12, ptr %t11
  %t13 = getelementptr %"<netdb.h>:group_filter", ptr %l10, i32 0, i32 2
  %t14 = load i32, ptr %l2, !tbaa !64
  store i32 %t14, ptr %t13, !tbaa !64
  %t15 = getelementptr %"<netdb.h>:group_filter", ptr %l10, i32 0, i32 3
  %t16 = load i32, ptr %l3, !tbaa !64
  store i32 %t16, ptr %t15, !tbaa !64
  %t17 = getelementptr %"<netdb.h>:group_filter", ptr %l10, i32 0, i32 4
  store [1 x %"<netdb.h>:sockaddr_storage"] %t7, ptr %t17
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l10, i64 272, i1 false)
  br label %ret
bb4:
  %t19 = load %"<netdb.h>:sockaddr_storage", ptr %l8
  store %"<netdb.h>:sockaddr_storage" %t19, ptr %l6
  br label %bb3
ret:
  ret void
}

define dso_local void @_3cnetdb_2eh_3e_3agroup__req_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca i32
  %l2 = alloca %"<netdb.h>:sockaddr_storage"
  %l3 = alloca %"<netdb.h>:group_req"
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l0, !tbaa !64
  %t1 = call %"<netdb.h>:sockaddr_storage" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3asockaddr__storage()
  store %"<netdb.h>:sockaddr_storage" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"<netdb.h>:sockaddr_storage", ptr %l2
  %t3 = getelementptr %"<netdb.h>:group_req", ptr %l3, i32 0, i32 0
  %t4 = load i32, ptr %l0, !tbaa !64
  store i32 %t4, ptr %t3, !tbaa !64
  %t5 = getelementptr %"<netdb.h>:group_req", ptr %l3, i32 0, i32 1
  store %"<netdb.h>:sockaddr_storage" %t2, ptr %t5
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l3, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @_3cnetdb_2eh_3e_3agroup__source__req_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca %"<netdb.h>:sockaddr_storage"
  %l3 = alloca %"<netdb.h>:sockaddr_storage"
  %l4 = alloca %"<netdb.h>:sockaddr_storage"
  %l5 = alloca %"<netdb.h>:group_source_req"
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l0, !tbaa !64
  %t1 = call %"<netdb.h>:sockaddr_storage" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3asockaddr__storage()
  store %"<netdb.h>:sockaddr_storage" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"<netdb.h>:sockaddr_storage", ptr %l3
  store %"<netdb.h>:sockaddr_storage" %t2, ptr %l1
  %t3 = call %"<netdb.h>:sockaddr_storage" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3asockaddr__storage()
  store %"<netdb.h>:sockaddr_storage" %t3, ptr %l4
  br label %bb2
bb2:
  %t4 = load %"<netdb.h>:sockaddr_storage", ptr %l4
  %t5 = getelementptr %"<netdb.h>:group_source_req", ptr %l5, i32 0, i32 0
  %t6 = load i32, ptr %l0, !tbaa !64
  store i32 %t6, ptr %t5, !tbaa !64
  %t7 = getelementptr %"<netdb.h>:group_source_req", ptr %l5, i32 0, i32 1
  %t8 = load %"<netdb.h>:sockaddr_storage", ptr %l1
  store %"<netdb.h>:sockaddr_storage" %t8, ptr %t7
  %t9 = getelementptr %"<netdb.h>:group_source_req", ptr %l5, i32 0, i32 2
  store %"<netdb.h>:sockaddr_storage" %t4, ptr %t9
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l5, i64 264, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"<netdb.h>:in6_pktinfo" @_3cnetdb_2eh_3e_3ain6__pktinfo_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:in6_pktinfo"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [5 x i32] undef, i32 0, 0
  %t2 = insertvalue [5 x i32] %t1, i32 0, 1
  %t3 = insertvalue [5 x i32] %t2, i32 0, 2
  %t4 = insertvalue [5 x i32] %t3, i32 0, 3
  %t5 = insertvalue [5 x i32] %t4, i32 0, 4
  %t8 = insertvalue %"<netdb.h>:in6_pktinfo" undef, [5 x i32] %t5, 0
  store %"<netdb.h>:in6_pktinfo" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:in6_pktinfo", ptr %rv
  ret %"<netdb.h>:in6_pktinfo" %rr
}

define dso_local %"<netdb.h>:in_addr" @_3cnetdb_2eh_3e_3ain__addr_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:in_addr"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<netdb.h>:in_addr" undef, i32 0, 0
  store %"<netdb.h>:in_addr" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:in_addr", ptr %rv
  ret %"<netdb.h>:in_addr" %rr
}

define dso_local %"<netdb.h>:in_pktinfo" @_3cnetdb_2eh_3e_3ain__pktinfo_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca %"<netdb.h>:in_addr"
  %l3 = alloca %"<netdb.h>:in_addr"
  %l4 = alloca %"<netdb.h>:in_addr"
  %rv = alloca %"<netdb.h>:in_pktinfo"
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l0, !tbaa !23
  %t1 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"<netdb.h>:in_addr", ptr %l3
  store %"<netdb.h>:in_addr" %t2, ptr %l1
  %t3 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t3, ptr %l4
  br label %bb2
bb2:
  %t4 = load %"<netdb.h>:in_addr", ptr %l4
  %t5 = load i32, ptr %l0, !tbaa !23
  %t6 = insertvalue %"<netdb.h>:in_pktinfo" undef, i32 %t5, 0
  %t7 = load %"<netdb.h>:in_addr", ptr %l1
  %t8 = insertvalue %"<netdb.h>:in_pktinfo" %t6, %"<netdb.h>:in_addr" %t7, 1
  %t10 = insertvalue %"<netdb.h>:in_pktinfo" %t8, %"<netdb.h>:in_addr" %t4, 2
  store %"<netdb.h>:in_pktinfo" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:in_pktinfo", ptr %rv
  ret %"<netdb.h>:in_pktinfo" %rr
}

define dso_local %"<netdb.h>:iovec" @_3cnetdb_2eh_3e_3aiovec_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:iovec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<netdb.h>:iovec" undef, ptr null, 0
  %t4 = insertvalue %"<netdb.h>:iovec" %t2, i64 0, 1
  store %"<netdb.h>:iovec" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:iovec", ptr %rv
  ret %"<netdb.h>:iovec" %rr
}

define dso_local %"<netdb.h>:ip6_mtuinfo" @_3cnetdb_2eh_3e_3aip6__mtuinfo_2ector(ptr %v0) #0 {
entry:
  %l2 = alloca %"<netdb.h>:sockaddr_in6"
  %rv = alloca %"<netdb.h>:ip6_mtuinfo"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"<netdb.h>:sockaddr_in6" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3asockaddr__in6()
  store %"<netdb.h>:sockaddr_in6" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"<netdb.h>:sockaddr_in6", ptr %l2
  %t4 = insertvalue %"<netdb.h>:ip6_mtuinfo" undef, %"<netdb.h>:sockaddr_in6" %t2, 0
  %t6 = insertvalue %"<netdb.h>:ip6_mtuinfo" %t4, i32 0, 1
  store %"<netdb.h>:ip6_mtuinfo" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:ip6_mtuinfo", ptr %rv
  ret %"<netdb.h>:ip6_mtuinfo" %rr
}

define dso_local %"<netdb.h>:ip_mreq" @_3cnetdb_2eh_3e_3aip__mreq_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"<netdb.h>:in_addr"
  %l2 = alloca %"<netdb.h>:in_addr"
  %l3 = alloca %"<netdb.h>:in_addr"
  %rv = alloca %"<netdb.h>:ip_mreq"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"<netdb.h>:in_addr", ptr %l2
  store %"<netdb.h>:in_addr" %t2, ptr %l0
  %t3 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t3, ptr %l3
  br label %bb2
bb2:
  %t4 = load %"<netdb.h>:in_addr", ptr %l3
  %t5 = load %"<netdb.h>:in_addr", ptr %l0
  %t6 = insertvalue %"<netdb.h>:ip_mreq" undef, %"<netdb.h>:in_addr" %t5, 0
  %t8 = insertvalue %"<netdb.h>:ip_mreq" %t6, %"<netdb.h>:in_addr" %t4, 1
  store %"<netdb.h>:ip_mreq" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:ip_mreq", ptr %rv
  ret %"<netdb.h>:ip_mreq" %rr
}

define dso_local %"<netdb.h>:ip_mreq_source" @_3cnetdb_2eh_3e_3aip__mreq__source_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"<netdb.h>:in_addr"
  %l1 = alloca %"<netdb.h>:in_addr"
  %l3 = alloca %"<netdb.h>:in_addr"
  %l4 = alloca %"<netdb.h>:in_addr"
  %l5 = alloca %"<netdb.h>:in_addr"
  %rv = alloca %"<netdb.h>:ip_mreq_source"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"<netdb.h>:in_addr", ptr %l3
  store %"<netdb.h>:in_addr" %t2, ptr %l0
  %t3 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t3, ptr %l4
  br label %bb2
bb2:
  %t4 = load %"<netdb.h>:in_addr", ptr %l4
  store %"<netdb.h>:in_addr" %t4, ptr %l1
  %t5 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t5, ptr %l5
  br label %bb3
bb3:
  %t6 = load %"<netdb.h>:in_addr", ptr %l5
  %t7 = load %"<netdb.h>:in_addr", ptr %l0
  %t8 = insertvalue %"<netdb.h>:ip_mreq_source" undef, %"<netdb.h>:in_addr" %t7, 0
  %t9 = load %"<netdb.h>:in_addr", ptr %l1
  %t10 = insertvalue %"<netdb.h>:ip_mreq_source" %t8, %"<netdb.h>:in_addr" %t9, 1
  %t12 = insertvalue %"<netdb.h>:ip_mreq_source" %t10, %"<netdb.h>:in_addr" %t6, 2
  store %"<netdb.h>:ip_mreq_source" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:ip_mreq_source", ptr %rv
  ret %"<netdb.h>:ip_mreq_source" %rr
}

define dso_local %"<netdb.h>:ip_mreqn" @_3cnetdb_2eh_3e_3aip__mreqn_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"<netdb.h>:in_addr"
  %l3 = alloca %"<netdb.h>:in_addr"
  %l4 = alloca %"<netdb.h>:in_addr"
  %rv = alloca %"<netdb.h>:ip_mreqn"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"<netdb.h>:in_addr", ptr %l3
  store %"<netdb.h>:in_addr" %t2, ptr %l0
  %t3 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t3, ptr %l4
  br label %bb2
bb2:
  %t4 = load %"<netdb.h>:in_addr", ptr %l4
  %t5 = load %"<netdb.h>:in_addr", ptr %l0
  %t6 = insertvalue %"<netdb.h>:ip_mreqn" undef, %"<netdb.h>:in_addr" %t5, 0
  %t8 = insertvalue %"<netdb.h>:ip_mreqn" %t6, %"<netdb.h>:in_addr" %t4, 1
  %t10 = insertvalue %"<netdb.h>:ip_mreqn" %t8, i32 0, 2
  store %"<netdb.h>:ip_mreqn" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:ip_mreqn", ptr %rv
  ret %"<netdb.h>:ip_mreqn" %rr
}

define dso_local %"<netdb.h>:ip_msfilter" @_3cnetdb_2eh_3e_3aip__msfilter_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"<netdb.h>:in_addr"
  %l1 = alloca %"<netdb.h>:in_addr"
  %l2 = alloca i32
  %l3 = alloca i32
  %l5 = alloca %"<netdb.h>:in_addr"
  %l6 = alloca %"<netdb.h>:in_addr"
  %l7 = alloca %"<netdb.h>:in_addr"
  %l9 = alloca %"<netdb.h>:in_addr"
  %rv = alloca %"<netdb.h>:ip_msfilter"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"<netdb.h>:in_addr", ptr %l5
  store %"<netdb.h>:in_addr" %t2, ptr %l0
  %t3 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t3, ptr %l6
  br label %bb2
bb2:
  %t4 = load %"<netdb.h>:in_addr", ptr %l6
  store %"<netdb.h>:in_addr" %t4, ptr %l1
  store i32 0, ptr %l2, !tbaa !64
  store i32 0, ptr %l3, !tbaa !64
  store %"<netdb.h>:in_addr" zeroinitializer, ptr %l7
  %t5 = icmp sgt i64 1, 0
  br i1 %t5, label %bb3, label %bb4
bb3:
  %t7 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t7, ptr %l9
  br label %bb5
bb4:
  %t8 = load %"<netdb.h>:in_addr", ptr %l7
  %t9 = insertvalue [1 x %"<netdb.h>:in_addr"] undef, %"<netdb.h>:in_addr" %t8, 0
  %t11 = load %"<netdb.h>:in_addr", ptr %l0
  %t12 = insertvalue %"<netdb.h>:ip_msfilter" undef, %"<netdb.h>:in_addr" %t11, 0
  %t13 = load %"<netdb.h>:in_addr", ptr %l1
  %t14 = insertvalue %"<netdb.h>:ip_msfilter" %t12, %"<netdb.h>:in_addr" %t13, 1
  %t15 = load i32, ptr %l2, !tbaa !64
  %t16 = insertvalue %"<netdb.h>:ip_msfilter" %t14, i32 %t15, 2
  %t17 = load i32, ptr %l3, !tbaa !64
  %t18 = insertvalue %"<netdb.h>:ip_msfilter" %t16, i32 %t17, 3
  %t20 = insertvalue %"<netdb.h>:ip_msfilter" %t18, [1 x %"<netdb.h>:in_addr"] %t9, 4
  store %"<netdb.h>:ip_msfilter" %t20, ptr %rv
  br label %ret
bb5:
  %t22 = load %"<netdb.h>:in_addr", ptr %l9
  store %"<netdb.h>:in_addr" %t22, ptr %l7
  br label %bb4
ret:
  %rr = load %"<netdb.h>:ip_msfilter", ptr %rv
  ret %"<netdb.h>:ip_msfilter" %rr
}

define dso_local %"<netdb.h>:ip_opts" @_3cnetdb_2eh_3e_3aip__opts_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"<netdb.h>:in_addr"
  %l2 = alloca %"<netdb.h>:in_addr"
  %l3 = alloca [40 x i8]
  %rv = alloca %"<netdb.h>:ip_opts"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"<netdb.h>:in_addr", ptr %l2
  store %"<netdb.h>:in_addr" %t2, ptr %l0
  br label %fill.6
fill.6:
  br label %fill.3
fill.3:
  %t7 = phi i64 [ 0, %fill.6 ], [ %t8, %fill.4 ]
  %t9 = icmp slt i64 %t7, 40
  br i1 %t9, label %fill.4, label %fill.5
fill.4:
  %t10 = getelementptr [40 x i8], ptr %l3, i64 0, i64 %t7
  store i8 0, ptr %t10
  %t8 = add i64 %t7, 1
  br label %fill.3
fill.5:
  %t11 = load [40 x i8], ptr %l3
  %t12 = load %"<netdb.h>:in_addr", ptr %l0
  %t13 = insertvalue %"<netdb.h>:ip_opts" undef, %"<netdb.h>:in_addr" %t12, 0
  %t15 = insertvalue %"<netdb.h>:ip_opts" %t13, [40 x i8] %t11, 1
  store %"<netdb.h>:ip_opts" %t15, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:ip_opts", ptr %rv
  ret %"<netdb.h>:ip_opts" %rr
}

define dso_local %"<netdb.h>:ipv6_mreq" @_3cnetdb_2eh_3e_3aipv6__mreq_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:ipv6_mreq"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [5 x i32] undef, i32 0, 0
  %t2 = insertvalue [5 x i32] %t1, i32 0, 1
  %t3 = insertvalue [5 x i32] %t2, i32 0, 2
  %t4 = insertvalue [5 x i32] %t3, i32 0, 3
  %t5 = insertvalue [5 x i32] %t4, i32 0, 4
  %t8 = insertvalue %"<netdb.h>:ipv6_mreq" undef, [5 x i32] %t5, 0
  store %"<netdb.h>:ipv6_mreq" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:ipv6_mreq", ptr %rv
  ret %"<netdb.h>:ipv6_mreq" %rr
}

define dso_local %"<netdb.h>:linger" @_3cnetdb_2eh_3e_3alinger_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:linger"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<netdb.h>:linger" undef, i32 0, 0
  %t4 = insertvalue %"<netdb.h>:linger" %t2, i32 0, 1
  store %"<netdb.h>:linger" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:linger", ptr %rv
  ret %"<netdb.h>:linger" %rr
}

define dso_local %"<netdb.h>:mmsghdr" @_3cnetdb_2eh_3e_3ammsghdr_2ector(ptr %v0) #0 {
entry:
  %l2 = alloca %"<netdb.h>:msghdr"
  %rv = alloca %"<netdb.h>:mmsghdr"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"<netdb.h>:msghdr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3amsghdr()
  store %"<netdb.h>:msghdr" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"<netdb.h>:msghdr", ptr %l2
  %t4 = insertvalue %"<netdb.h>:mmsghdr" undef, %"<netdb.h>:msghdr" %t2, 0
  %t6 = insertvalue %"<netdb.h>:mmsghdr" %t4, i32 0, 1
  store %"<netdb.h>:mmsghdr" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:mmsghdr", ptr %rv
  ret %"<netdb.h>:mmsghdr" %rr
}

define dso_local %"<netdb.h>:msghdr" @_3cnetdb_2eh_3e_3amsghdr_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:msghdr"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<netdb.h>:msghdr" undef, ptr null, 0
  %t4 = insertvalue %"<netdb.h>:msghdr" %t2, i32 0, 1
  %t6 = insertvalue %"<netdb.h>:msghdr" %t4, ptr null, 2
  %t8 = insertvalue %"<netdb.h>:msghdr" %t6, i64 0, 3
  %t10 = insertvalue %"<netdb.h>:msghdr" %t8, ptr null, 4
  %t12 = insertvalue %"<netdb.h>:msghdr" %t10, i64 0, 5
  %t14 = insertvalue %"<netdb.h>:msghdr" %t12, i32 0, 6
  store %"<netdb.h>:msghdr" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:msghdr", ptr %rv
  ret %"<netdb.h>:msghdr" %rr
}

define dso_local %"<netdb.h>:osockaddr" @_3cnetdb_2eh_3e_3aosockaddr_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:osockaddr"
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
  %t17 = insertvalue %"<netdb.h>:osockaddr" undef, i16 0, 0
  %t19 = insertvalue %"<netdb.h>:osockaddr" %t17, [14 x i8] %t14, 1
  store %"<netdb.h>:osockaddr" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:osockaddr", ptr %rv
  ret %"<netdb.h>:osockaddr" %rr
}

define dso_local %"<netdb.h>:pthread_attr_t" @_3cnetdb_2eh_3e_3apthread__attr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:pthread_attr_t"
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
  %t10 = insertvalue %"<netdb.h>:pthread_attr_t" undef, [7 x i64] %t7, 0
  store %"<netdb.h>:pthread_attr_t" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:pthread_attr_t", ptr %rv
  ret %"<netdb.h>:pthread_attr_t" %rr
}

define dso_local %"<netdb.h>:pthread_barrier_t" @_3cnetdb_2eh_3e_3apthread__barrier__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:pthread_barrier_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i64] undef, i64 0, 0
  %t2 = insertvalue [4 x i64] %t1, i64 0, 1
  %t3 = insertvalue [4 x i64] %t2, i64 0, 2
  %t4 = insertvalue [4 x i64] %t3, i64 0, 3
  %t7 = insertvalue %"<netdb.h>:pthread_barrier_t" undef, [4 x i64] %t4, 0
  store %"<netdb.h>:pthread_barrier_t" %t7, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:pthread_barrier_t", ptr %rv
  ret %"<netdb.h>:pthread_barrier_t" %rr
}

define dso_local %"<netdb.h>:pthread_barrierattr_t" @_3cnetdb_2eh_3e_3apthread__barrierattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:pthread_barrierattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<netdb.h>:pthread_barrierattr_t" undef, [1 x i32] %t1, 0
  store %"<netdb.h>:pthread_barrierattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:pthread_barrierattr_t", ptr %rv
  ret %"<netdb.h>:pthread_barrierattr_t" %rr
}

define dso_local %"<netdb.h>:pthread_cond_t" @_3cnetdb_2eh_3e_3apthread__cond__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:pthread_cond_t"
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
  %t9 = insertvalue %"<netdb.h>:pthread_cond_t" undef, [6 x i64] %t6, 0
  store %"<netdb.h>:pthread_cond_t" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:pthread_cond_t", ptr %rv
  ret %"<netdb.h>:pthread_cond_t" %rr
}

define dso_local %"<netdb.h>:pthread_condattr_t" @_3cnetdb_2eh_3e_3apthread__condattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:pthread_condattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<netdb.h>:pthread_condattr_t" undef, [1 x i32] %t1, 0
  store %"<netdb.h>:pthread_condattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:pthread_condattr_t", ptr %rv
  ret %"<netdb.h>:pthread_condattr_t" %rr
}

define dso_local %"<netdb.h>:pthread_mutex_t" @_3cnetdb_2eh_3e_3apthread__mutex__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:pthread_mutex_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [5 x i64] undef, i64 0, 0
  %t2 = insertvalue [5 x i64] %t1, i64 0, 1
  %t3 = insertvalue [5 x i64] %t2, i64 0, 2
  %t4 = insertvalue [5 x i64] %t3, i64 0, 3
  %t5 = insertvalue [5 x i64] %t4, i64 0, 4
  %t8 = insertvalue %"<netdb.h>:pthread_mutex_t" undef, [5 x i64] %t5, 0
  store %"<netdb.h>:pthread_mutex_t" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:pthread_mutex_t", ptr %rv
  ret %"<netdb.h>:pthread_mutex_t" %rr
}

define dso_local %"<netdb.h>:pthread_mutexattr_t" @_3cnetdb_2eh_3e_3apthread__mutexattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:pthread_mutexattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i32] undef, i32 0, 0
  %t4 = insertvalue %"<netdb.h>:pthread_mutexattr_t" undef, [1 x i32] %t1, 0
  store %"<netdb.h>:pthread_mutexattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:pthread_mutexattr_t", ptr %rv
  ret %"<netdb.h>:pthread_mutexattr_t" %rr
}

define dso_local %"<netdb.h>:pthread_rwlock_t" @_3cnetdb_2eh_3e_3apthread__rwlock__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:pthread_rwlock_t"
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
  %t10 = insertvalue %"<netdb.h>:pthread_rwlock_t" undef, [7 x i64] %t7, 0
  store %"<netdb.h>:pthread_rwlock_t" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:pthread_rwlock_t", ptr %rv
  ret %"<netdb.h>:pthread_rwlock_t" %rr
}

define dso_local %"<netdb.h>:pthread_rwlockattr_t" @_3cnetdb_2eh_3e_3apthread__rwlockattr__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:pthread_rwlockattr_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i64] undef, i64 0, 0
  %t4 = insertvalue %"<netdb.h>:pthread_rwlockattr_t" undef, [1 x i64] %t1, 0
  store %"<netdb.h>:pthread_rwlockattr_t" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:pthread_rwlockattr_t", ptr %rv
  ret %"<netdb.h>:pthread_rwlockattr_t" %rr
}

define dso_local %"<netdb.h>:sigevent_t" @_3cnetdb_2eh_3e_3asigevent__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:sigevent_t"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [8 x i64] undef, i64 0, 0
  %t2 = insertvalue [8 x i64] %t1, i64 0, 1
  %t3 = insertvalue [8 x i64] %t2, i64 0, 2
  %t4 = insertvalue [8 x i64] %t3, i64 0, 3
  %t5 = insertvalue [8 x i64] %t4, i64 0, 4
  %t6 = insertvalue [8 x i64] %t5, i64 0, 5
  %t7 = insertvalue [8 x i64] %t6, i64 0, 6
  %t8 = insertvalue [8 x i64] %t7, i64 0, 7
  %t11 = insertvalue %"<netdb.h>:sigevent_t" undef, [8 x i64] %t8, 0
  store %"<netdb.h>:sigevent_t" %t11, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:sigevent_t", ptr %rv
  ret %"<netdb.h>:sigevent_t" %rr
}

define dso_local %"<netdb.h>:sigval" @_3cnetdb_2eh_3e_3asigval_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:sigval"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [1 x i64] undef, i64 0, 0
  %t4 = insertvalue %"<netdb.h>:sigval" undef, [1 x i64] %t1, 0
  store %"<netdb.h>:sigval" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:sigval", ptr %rv
  ret %"<netdb.h>:sigval" %rr
}

define dso_local %"<netdb.h>:sockaddr" @_3cnetdb_2eh_3e_3asockaddr_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:sockaddr"
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
  %t17 = insertvalue %"<netdb.h>:sockaddr" undef, i16 0, 0
  %t19 = insertvalue %"<netdb.h>:sockaddr" %t17, [14 x i8] %t14, 1
  store %"<netdb.h>:sockaddr" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:sockaddr", ptr %rv
  ret %"<netdb.h>:sockaddr" %rr
}

define dso_local %"<netdb.h>:sockaddr_in6" @_3cnetdb_2eh_3e_3asockaddr__in6_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:sockaddr_in6"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [7 x i32] undef, i32 0, 0
  %t2 = insertvalue [7 x i32] %t1, i32 0, 1
  %t3 = insertvalue [7 x i32] %t2, i32 0, 2
  %t4 = insertvalue [7 x i32] %t3, i32 0, 3
  %t5 = insertvalue [7 x i32] %t4, i32 0, 4
  %t6 = insertvalue [7 x i32] %t5, i32 0, 5
  %t7 = insertvalue [7 x i32] %t6, i32 0, 6
  %t10 = insertvalue %"<netdb.h>:sockaddr_in6" undef, [7 x i32] %t7, 0
  store %"<netdb.h>:sockaddr_in6" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:sockaddr_in6", ptr %rv
  ret %"<netdb.h>:sockaddr_in6" %rr
}

define dso_local %"<netdb.h>:sockaddr_in" @_3cnetdb_2eh_3e_3asockaddr__in_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca i16
  %l1 = alloca i16
  %l4 = alloca %"<netdb.h>:in_addr"
  %rv = alloca %"<netdb.h>:sockaddr_in"
  br label %start
start:
  br label %bb0
bb0:
  store i16 0, ptr %l0, !tbaa !63
  store i16 0, ptr %l1, !tbaa !63
  %t1 = call %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr()
  store %"<netdb.h>:in_addr" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"<netdb.h>:in_addr", ptr %l4
  %t3 = insertvalue [8 x i8] undef, i8 0, 0
  %t4 = insertvalue [8 x i8] %t3, i8 0, 1
  %t5 = insertvalue [8 x i8] %t4, i8 0, 2
  %t6 = insertvalue [8 x i8] %t5, i8 0, 3
  %t7 = insertvalue [8 x i8] %t6, i8 0, 4
  %t8 = insertvalue [8 x i8] %t7, i8 0, 5
  %t9 = insertvalue [8 x i8] %t8, i8 0, 6
  %t10 = insertvalue [8 x i8] %t9, i8 0, 7
  %t12 = load i16, ptr %l0, !tbaa !63
  %t13 = insertvalue %"<netdb.h>:sockaddr_in" undef, i16 %t12, 0
  %t14 = load i16, ptr %l1, !tbaa !63
  %t15 = insertvalue %"<netdb.h>:sockaddr_in" %t13, i16 %t14, 1
  %t17 = insertvalue %"<netdb.h>:sockaddr_in" %t15, %"<netdb.h>:in_addr" %t2, 2
  %t19 = insertvalue %"<netdb.h>:sockaddr_in" %t17, [8 x i8] %t10, 3
  store %"<netdb.h>:sockaddr_in" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:sockaddr_in", ptr %rv
  ret %"<netdb.h>:sockaddr_in" %rr
}

define dso_local %"<netdb.h>:sockaddr_storage" @_3cnetdb_2eh_3e_3asockaddr__storage_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca i16
  %l3 = alloca [118 x i8]
  %rv = alloca %"<netdb.h>:sockaddr_storage"
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
  %t11 = insertvalue %"<netdb.h>:sockaddr_storage" undef, i16 %t10, 0
  %t13 = insertvalue %"<netdb.h>:sockaddr_storage" %t11, [118 x i8] %t9, 1
  %t15 = insertvalue %"<netdb.h>:sockaddr_storage" %t13, i64 0, 2
  store %"<netdb.h>:sockaddr_storage" %t15, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:sockaddr_storage", ptr %rv
  ret %"<netdb.h>:sockaddr_storage" %rr
}

define dso_local %"<netdb.h>:timespec" @_3cnetdb_2eh_3e_3atimespec_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<netdb.h>:timespec" undef, i64 0, 0
  %t4 = insertvalue %"<netdb.h>:timespec" %t2, i64 0, 1
  store %"<netdb.h>:timespec" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:timespec", ptr %rv
  ret %"<netdb.h>:timespec" %rr
}

define dso_local %"<netdb.h>:timeval" @_3cnetdb_2eh_3e_3atimeval_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:timeval"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<netdb.h>:timeval" undef, i64 0, 0
  %t4 = insertvalue %"<netdb.h>:timeval" %t2, i64 0, 1
  store %"<netdb.h>:timeval" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:timeval", ptr %rv
  ret %"<netdb.h>:timeval" %rr
}

define dso_local %"<netdb.h>:ucred" @_3cnetdb_2eh_3e_3aucred_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<netdb.h>:ucred"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<netdb.h>:ucred" undef, i32 0, 0
  %t4 = insertvalue %"<netdb.h>:ucred" %t2, i32 0, 1
  %t6 = insertvalue %"<netdb.h>:ucred" %t4, i32 0, 2
  store %"<netdb.h>:ucred" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:ucred", ptr %rv
  ret %"<netdb.h>:ucred" %rr
}

define linkonce_odr %"<netdb.h>:sockaddr_storage" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3asockaddr__storage() #0 {
entry:
  %l0 = alloca %"<netdb.h>:sockaddr_storage"
  %rv = alloca %"<netdb.h>:sockaddr_storage"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<netdb.h>:sockaddr_storage" @_3cnetdb_2eh_3e_3asockaddr__storage_2ector(ptr %t1)
  store %"<netdb.h>:sockaddr_storage" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<netdb.h>:sockaddr_storage", ptr %l0
  store %"<netdb.h>:sockaddr_storage" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:sockaddr_storage", ptr %rv
  ret %"<netdb.h>:sockaddr_storage" %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr %"<netdb.h>:in_addr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3ain__addr() #0 {
entry:
  %l0 = alloca %"<netdb.h>:in_addr"
  %rv = alloca %"<netdb.h>:in_addr"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<netdb.h>:in_addr" @_3cnetdb_2eh_3e_3ain__addr_2ector(ptr %t1)
  store %"<netdb.h>:in_addr" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<netdb.h>:in_addr", ptr %l0
  store %"<netdb.h>:in_addr" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:in_addr", ptr %rv
  ret %"<netdb.h>:in_addr" %rr
}

define linkonce_odr %"<netdb.h>:sockaddr_in6" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3asockaddr__in6() #0 {
entry:
  %l0 = alloca %"<netdb.h>:sockaddr_in6"
  %rv = alloca %"<netdb.h>:sockaddr_in6"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<netdb.h>:sockaddr_in6" @_3cnetdb_2eh_3e_3asockaddr__in6_2ector(ptr %t1)
  store %"<netdb.h>:sockaddr_in6" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<netdb.h>:sockaddr_in6", ptr %l0
  store %"<netdb.h>:sockaddr_in6" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:sockaddr_in6", ptr %rv
  ret %"<netdb.h>:sockaddr_in6" %rr
}

define linkonce_odr %"<netdb.h>:msghdr" @olang_2emir_2eHelperKind_2eZero_2e_3cnetdb_2eh_3e_3amsghdr() #0 {
entry:
  %l0 = alloca %"<netdb.h>:msghdr"
  %rv = alloca %"<netdb.h>:msghdr"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<netdb.h>:msghdr" @_3cnetdb_2eh_3e_3amsghdr_2ector(ptr %t1)
  store %"<netdb.h>:msghdr" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<netdb.h>:msghdr", ptr %l0
  store %"<netdb.h>:msghdr" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<netdb.h>:msghdr", ptr %rv
  ret %"<netdb.h>:msghdr" %rr
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
