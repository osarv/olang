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
define dso_local { i64, i64 } @std_2fprelude_2faxis_2estd_2fprelude_2faxis_3aAxis_2eBounds({ i64, [2 x i64] } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, [2 x i64] }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %rv = alloca { i64, i64 }
  store { i64, [2 x i64] } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t13 = add i64 %t11, 1
  %t15 = insertvalue { i64, i64 } undef, i64 %t10, 0
  %t17 = insertvalue { i64, i64 } %t15, i64 %t13, 1
  store { i64, i64 } %t17, ptr %rv
  br label %ret
bb4:
  %t19 = load { i64, [2 x i64] }, ptr %l0
  %t21 = extractvalue { i64, [2 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 1
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t25 = getelementptr { i64, i64 }, ptr %t24, i32 0, i32 0
  %t26 = load i64, ptr %t25
  store i64 %t26, ptr %l3, !tbaa !24
  %t28 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t29 = getelementptr { i64, i64 }, ptr %t28, i32 0, i32 1
  %t30 = load i64, ptr %t29
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb7
bb6:
  br label %bb11
bb7:
  %t32 = load i64, ptr %l3, !tbaa !24
  store i64 %t32, ptr %l16, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t35 = icmp eq i64 %t33, 9223372036854775807
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l19, !tbaa !24
  br label %bb10
bb9:
  %t39 = load i64, ptr %l4, !tbaa !24
  store i64 %t39, ptr %l19, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l16, !tbaa !24
  %t42 = insertvalue { i64, i64 } undef, i64 %t41, 0
  %t43 = load i64, ptr %l19, !tbaa !24
  %t44 = insertvalue { i64, i64 } %t42, i64 %t43, 1
  store { i64, i64 } %t44, ptr %rv
  br label %ret
bb11:
  %t46 = load { i64, [2 x i64] }, ptr %l0
  %t48 = extractvalue { i64, [2 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 2
  br i1 %t49, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t51 = load i64, ptr %l1, !tbaa !24
  %t52 = insertvalue { i64, i64 } undef, i64 0, 0
  %t54 = insertvalue { i64, i64 } %t52, i64 %t51, 1
  store { i64, i64 } %t54, ptr %rv
  br label %ret
bb15:
  call void @__olang_check_failed(ptr @olang_loc_4faaa7f9de26fcf4_7f72e248c84ee068)
  unreachable
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
@olang_loc_4faaa7f9de26fcf4_7f72e248c84ee068 = external constant [0 x i8]

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
