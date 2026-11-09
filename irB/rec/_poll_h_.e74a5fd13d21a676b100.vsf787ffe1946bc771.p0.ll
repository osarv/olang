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
%"<poll.h>:c___sigset_t" = type { [16 x i64] }
%"<poll.h>:pollfd" = type { i32, i16, i16 }
%"<poll.h>:timespec" = type { i64, i64 }
@G_2e_3cpoll_2eh_3e_2ePOLLERR = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLHUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLMSG = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\04\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLNVAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\20\00\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLOUT = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLPRI = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLRDBAND = constant <{ [4 x i8] }> <{ [4 x i8] c"\80\00\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLRDHUP = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\20\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLRDNORM = constant <{ [4 x i8] }> <{ [4 x i8] c"\40\00\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLREMOVE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLWRBAND = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\02\00\00" }>, align 8
@G_2e_3cpoll_2eh_3e_2ePOLLWRNORM = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
define dso_local %"<poll.h>:c___sigset_t" @_3cpoll_2eh_3e_3ac______sigset__t_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<poll.h>:c___sigset_t"
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
  %t19 = insertvalue %"<poll.h>:c___sigset_t" undef, [16 x i64] %t16, 0
  store %"<poll.h>:c___sigset_t" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"<poll.h>:c___sigset_t", ptr %rv
  ret %"<poll.h>:c___sigset_t" %rr
}

define dso_local %"<poll.h>:pollfd" @_3cpoll_2eh_3e_3apollfd_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<poll.h>:pollfd"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<poll.h>:pollfd" undef, i32 0, 0
  %t4 = insertvalue %"<poll.h>:pollfd" %t2, i16 0, 1
  %t6 = insertvalue %"<poll.h>:pollfd" %t4, i16 0, 2
  store %"<poll.h>:pollfd" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"<poll.h>:pollfd", ptr %rv
  ret %"<poll.h>:pollfd" %rr
}

define dso_local %"<poll.h>:timespec" @_3cpoll_2eh_3e_3atimespec_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<poll.h>:timespec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<poll.h>:timespec" undef, i64 0, 0
  %t4 = insertvalue %"<poll.h>:timespec" %t2, i64 0, 1
  store %"<poll.h>:timespec" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<poll.h>:timespec", ptr %rv
  ret %"<poll.h>:timespec" %rr
}


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
