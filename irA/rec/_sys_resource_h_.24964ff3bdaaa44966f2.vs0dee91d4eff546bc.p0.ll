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
%"<sys/resource.h>:rlimit64" = type { i64, i64 }
%"<sys/resource.h>:rlimit" = type { i64, i64 }
%"<sys/resource.h>:rusage" = type { [18 x i64] }
%"<sys/resource.h>:timeval" = type { i64, i64 }
@G_2e_3csys_2fresource_2eh_3e_2ePRIO__MAX = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2ePRIO__MIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\EC\FF\FF\FF" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2ePRIO__PGRP = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2ePRIO__PROCESS = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2ePRIO__USER = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__AS = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__CORE = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__CPU = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__DATA = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__FSIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__LOCKS = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__MEMLOCK = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__MSGQUEUE = constant <{ [4 x i8] }> <{ [4 x i8] c"\0C\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__NICE = constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__NLIMITS = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__NOFILE = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__NPROC = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__OFILE = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__RSS = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__RTPRIO = constant <{ [4 x i8] }> <{ [4 x i8] c"\0E\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__RTTIME = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__SIGPENDING = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__STACK = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRLIM__NLIMITS = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRUSAGE__CHILDREN = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRUSAGE__LWP = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRUSAGE__SELF = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3csys_2fresource_2eh_3e_2eRUSAGE__THREAD = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
define dso_local %"<sys/resource.h>:rlimit64" @_3csys_2fresource_2eh_3e_3arlimit64_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/resource.h>:rlimit64"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/resource.h>:rlimit64" undef, i64 0, 0
  %t4 = insertvalue %"<sys/resource.h>:rlimit64" %t2, i64 0, 1
  store %"<sys/resource.h>:rlimit64" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/resource.h>:rlimit64", ptr %rv
  ret %"<sys/resource.h>:rlimit64" %rr
}

define dso_local %"<sys/resource.h>:rlimit" @_3csys_2fresource_2eh_3e_3arlimit_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/resource.h>:rlimit"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/resource.h>:rlimit" undef, i64 0, 0
  %t4 = insertvalue %"<sys/resource.h>:rlimit" %t2, i64 0, 1
  store %"<sys/resource.h>:rlimit" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/resource.h>:rlimit", ptr %rv
  ret %"<sys/resource.h>:rlimit" %rr
}

define dso_local void @_3csys_2fresource_2eh_3e_3arusage_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca [18 x i64]
  %l1 = alloca [18 x i64]
  %l2 = alloca %"<sys/resource.h>:rusage"
  br label %start
start:
  br label %bb0
bb0:
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 18
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [18 x i64], ptr %l1, i64 0, i64 %t5
  store i64 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %l1, i64 144, i1 false)
  %t9 = getelementptr %"<sys/resource.h>:rusage", ptr %l2, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %t9, ptr %l0, i64 144, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l2, i64 144, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"<sys/resource.h>:timeval" @_3csys_2fresource_2eh_3e_3atimeval_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<sys/resource.h>:timeval"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<sys/resource.h>:timeval" undef, i64 0, 0
  %t4 = insertvalue %"<sys/resource.h>:timeval" %t2, i64 0, 1
  store %"<sys/resource.h>:timeval" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/resource.h>:timeval", ptr %rv
  ret %"<sys/resource.h>:timeval" %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)

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
