source_filename = "_dlfcn_h_.quick.ll"
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
%"<dlfcn.h>:Dl_info" = type { ptr, ptr, ptr, ptr }
%"<dlfcn.h>:Dl_serinfo" = type { [4 x i64] }
%"<dlfcn.h>:Dl_serpath" = type { ptr, i32 }
%"<dlfcn.h>:dl_find_object" = type { i64, ptr, ptr, ptr, ptr, [7 x i64] }
@G_2e_3cdlfcn_2eh_3e_2eDLFO__STRUCT__HAS__EH__COUNT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eDLFO__STRUCT__HAS__EH__DBASE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eLM__ID__BASE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eLM__ID__NEWLM = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__BINDING__MASK = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DEEPBIND = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DI__CONFIGADDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\03\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DI__LINKMAP = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DI__LMID = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DI__MAX = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DI__ORIGIN = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DI__PHDR = constant <{ [4 x i8] }> <{ [4 x i8] c"\0B\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DI__PROFILENAME = constant <{ [4 x i8] }> <{ [4 x i8] c"\07\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DI__PROFILEOUT = constant <{ [4 x i8] }> <{ [4 x i8] c"\08\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DI__SERINFO = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DI__SERINFOSIZE = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DI__TLS__DATA = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DI__TLS__MODID = constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DL__LINKMAP = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__DL__SYMENT = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__GLOBAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\01\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__LAZY = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__LOCAL = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__NODELETE = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\10\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__NOLOAD = constant <{ [4 x i8] }> <{ [4 x i8] c"\04\00\00\00" }>, align 8
@G_2e_3cdlfcn_2eh_3e_2eRTLD__NOW = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
define dso_local %"<dlfcn.h>:Dl_info" @_3cdlfcn_2eh_3e_3aDl__info_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<dlfcn.h>:Dl_info"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<dlfcn.h>:Dl_info" undef, ptr null, 0
  %t4 = insertvalue %"<dlfcn.h>:Dl_info" %t2, ptr null, 1
  %t6 = insertvalue %"<dlfcn.h>:Dl_info" %t4, ptr null, 2
  %t8 = insertvalue %"<dlfcn.h>:Dl_info" %t6, ptr null, 3
  store %"<dlfcn.h>:Dl_info" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"<dlfcn.h>:Dl_info", ptr %rv
  ret %"<dlfcn.h>:Dl_info" %rr
}

define dso_local %"<dlfcn.h>:Dl_serinfo" @_3cdlfcn_2eh_3e_3aDl__serinfo_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<dlfcn.h>:Dl_serinfo"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i64] undef, i64 0, 0
  %t2 = insertvalue [4 x i64] %t1, i64 0, 1
  %t3 = insertvalue [4 x i64] %t2, i64 0, 2
  %t4 = insertvalue [4 x i64] %t3, i64 0, 3
  %t7 = insertvalue %"<dlfcn.h>:Dl_serinfo" undef, [4 x i64] %t4, 0
  store %"<dlfcn.h>:Dl_serinfo" %t7, ptr %rv
  br label %ret
ret:
  %rr = load %"<dlfcn.h>:Dl_serinfo", ptr %rv
  ret %"<dlfcn.h>:Dl_serinfo" %rr
}

define dso_local %"<dlfcn.h>:Dl_serpath" @_3cdlfcn_2eh_3e_3aDl__serpath_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<dlfcn.h>:Dl_serpath"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"<dlfcn.h>:Dl_serpath" undef, ptr null, 0
  %t4 = insertvalue %"<dlfcn.h>:Dl_serpath" %t2, i32 0, 1
  store %"<dlfcn.h>:Dl_serpath" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"<dlfcn.h>:Dl_serpath", ptr %rv
  ret %"<dlfcn.h>:Dl_serpath" %rr
}

define dso_local %"<dlfcn.h>:dl_find_object" @_3cdlfcn_2eh_3e_3adl__find__object_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"<dlfcn.h>:dl_find_object"
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
  %t10 = insertvalue %"<dlfcn.h>:dl_find_object" undef, i64 0, 0
  %t12 = insertvalue %"<dlfcn.h>:dl_find_object" %t10, ptr null, 1
  %t14 = insertvalue %"<dlfcn.h>:dl_find_object" %t12, ptr null, 2
  %t16 = insertvalue %"<dlfcn.h>:dl_find_object" %t14, ptr null, 3
  %t18 = insertvalue %"<dlfcn.h>:dl_find_object" %t16, ptr null, 4
  %t20 = insertvalue %"<dlfcn.h>:dl_find_object" %t18, [7 x i64] %t7, 5
  store %"<dlfcn.h>:dl_find_object" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"<dlfcn.h>:dl_find_object", ptr %rv
  ret %"<dlfcn.h>:dl_find_object" %rr
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
