source_filename = "_sys_utsname_h_.quick.ll"
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
%"<sys/utsname.h>:utsname" = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
@G_2e_3csys_2futsname_2eh_3e_2eSYS__NMLN = constant <{ [4 x i8] }> <{ [4 x i8] c"\41\00\00\00" }>, align 8
define dso_local void @_3csys_2futsname_2eh_3e_3autsname_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca [65 x i8]
  %l1 = alloca [65 x i8]
  %l2 = alloca [65 x i8]
  %l3 = alloca [65 x i8]
  %l4 = alloca [65 x i8]
  %l6 = alloca [65 x i8]
  %l7 = alloca [65 x i8]
  %l8 = alloca [65 x i8]
  %l9 = alloca [65 x i8]
  %l10 = alloca [65 x i8]
  %l11 = alloca [65 x i8]
  %l12 = alloca %"<sys/utsname.h>:utsname"
  br label %start
start:
  br label %bb0
bb0:
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 65
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [65 x i8], ptr %l6, i64 0, i64 %t5
  store i8 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  %t9 = load [65 x i8], ptr %l6
  store [65 x i8] %t9, ptr %l0
  br label %fill.13
fill.13:
  br label %fill.10
fill.10:
  %t14 = phi i64 [ 0, %fill.13 ], [ %t15, %fill.11 ]
  %t16 = icmp slt i64 %t14, 65
  br i1 %t16, label %fill.11, label %fill.12
fill.11:
  %t17 = getelementptr [65 x i8], ptr %l7, i64 0, i64 %t14
  store i8 0, ptr %t17
  %t15 = add i64 %t14, 1
  br label %fill.10
fill.12:
  %t18 = load [65 x i8], ptr %l7
  store [65 x i8] %t18, ptr %l1
  br label %fill.22
fill.22:
  br label %fill.19
fill.19:
  %t23 = phi i64 [ 0, %fill.22 ], [ %t24, %fill.20 ]
  %t25 = icmp slt i64 %t23, 65
  br i1 %t25, label %fill.20, label %fill.21
fill.20:
  %t26 = getelementptr [65 x i8], ptr %l8, i64 0, i64 %t23
  store i8 0, ptr %t26
  %t24 = add i64 %t23, 1
  br label %fill.19
fill.21:
  %t27 = load [65 x i8], ptr %l8
  store [65 x i8] %t27, ptr %l2
  br label %fill.31
fill.31:
  br label %fill.28
fill.28:
  %t32 = phi i64 [ 0, %fill.31 ], [ %t33, %fill.29 ]
  %t34 = icmp slt i64 %t32, 65
  br i1 %t34, label %fill.29, label %fill.30
fill.29:
  %t35 = getelementptr [65 x i8], ptr %l9, i64 0, i64 %t32
  store i8 0, ptr %t35
  %t33 = add i64 %t32, 1
  br label %fill.28
fill.30:
  %t36 = load [65 x i8], ptr %l9
  store [65 x i8] %t36, ptr %l3
  br label %fill.40
fill.40:
  br label %fill.37
fill.37:
  %t41 = phi i64 [ 0, %fill.40 ], [ %t42, %fill.38 ]
  %t43 = icmp slt i64 %t41, 65
  br i1 %t43, label %fill.38, label %fill.39
fill.38:
  %t44 = getelementptr [65 x i8], ptr %l10, i64 0, i64 %t41
  store i8 0, ptr %t44
  %t42 = add i64 %t41, 1
  br label %fill.37
fill.39:
  %t45 = load [65 x i8], ptr %l10
  store [65 x i8] %t45, ptr %l4
  br label %fill.49
fill.49:
  br label %fill.46
fill.46:
  %t50 = phi i64 [ 0, %fill.49 ], [ %t51, %fill.47 ]
  %t52 = icmp slt i64 %t50, 65
  br i1 %t52, label %fill.47, label %fill.48
fill.47:
  %t53 = getelementptr [65 x i8], ptr %l11, i64 0, i64 %t50
  store i8 0, ptr %t53
  %t51 = add i64 %t50, 1
  br label %fill.46
fill.48:
  %t54 = load [65 x i8], ptr %l11
  %t55 = getelementptr %"<sys/utsname.h>:utsname", ptr %l12, i32 0, i32 0
  %t56 = load [65 x i8], ptr %l0
  store [65 x i8] %t56, ptr %t55
  %t57 = getelementptr %"<sys/utsname.h>:utsname", ptr %l12, i32 0, i32 1
  %t58 = load [65 x i8], ptr %l1
  store [65 x i8] %t58, ptr %t57
  %t59 = getelementptr %"<sys/utsname.h>:utsname", ptr %l12, i32 0, i32 2
  %t60 = load [65 x i8], ptr %l2
  store [65 x i8] %t60, ptr %t59
  %t61 = getelementptr %"<sys/utsname.h>:utsname", ptr %l12, i32 0, i32 3
  %t62 = load [65 x i8], ptr %l3
  store [65 x i8] %t62, ptr %t61
  %t63 = getelementptr %"<sys/utsname.h>:utsname", ptr %l12, i32 0, i32 4
  %t64 = load [65 x i8], ptr %l4
  store [65 x i8] %t64, ptr %t63
  %t65 = getelementptr %"<sys/utsname.h>:utsname", ptr %l12, i32 0, i32 5
  store [65 x i8] %t54, ptr %t65
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l12, i64 390, i1 false)
  br label %ret
ret:
  ret void
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
