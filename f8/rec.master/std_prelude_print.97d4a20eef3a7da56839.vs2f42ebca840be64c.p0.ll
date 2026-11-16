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
define dso_local i32 @std_2fprelude_2fprint_2ewriteOut(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l23 = alloca i64
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t7 = icmp slt i64 %t1, %t4
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %bb19
bb3:
  br label %bb4
bb4:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l9, !tbaa !27
  %t12 = load i64, ptr %l1, !tbaa !24
  store i64 %t12, ptr %l10, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t13, 0
  store i64 %t16, ptr %l13, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l14, !tbaa !24
  %t19 = load i64, ptr %l10, !tbaa !24
  %t20 = icmp sge i64 %t19, 0
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load i64, ptr %l10, !tbaa !24
  %t23 = load i64, ptr %l13, !tbaa !24
  %t24 = icmp sle i64 %t22, %t23
  br i1 %t24, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_9799f17155897ea8_ecf4214bd60fd3c4)
  unreachable
bb7:
  %t26 = load i64, ptr %l13, !tbaa !24
  %t27 = load i64, ptr %l14, !tbaa !24
  %t28 = icmp sle i64 %t26, %t27
  br i1 %t28, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_9799f17155897ea8_ecf4214bd60fd3c4)
  unreachable
bb9:
  %t30 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l10, !tbaa !24
  %t33 = load i64, ptr %l13, !tbaa !24
  %t34 = getelementptr i8, ptr %t31, i64 %t32
  %t35 = sub i64 %t33, %t32
  %t36 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t34, 1
  store { i64, ptr } %t37, ptr %l2, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t45 = extractvalue { i64, ptr } %t39, 1
  %t46 = extractvalue { i64, ptr } %t39, 0
  %t48 = call i64 @write(i32 1, ptr %t45, i64 %t42)
  store i64 %t48, ptr %l23
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_9799f17155897ea8_ecf4214bd60fd3c4)
  unreachable
bb11:
  %t49 = load i64, ptr %l23, !tbaa !24
  store i64 %t49, ptr %l3, !tbaa !24
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = icmp slt i64 %t50, 0
  br i1 %t52, label %bb12, label %bb13
bb12:
  store i32 65536, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t55 = load i64, ptr %l3, !tbaa !24
  %t57 = icmp eq i64 %t55, 0
  br i1 %t57, label %bb15, label %bb16
bb15:
  store i32 65537, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t60 = load i64, ptr %l1, !tbaa !24
  %t61 = load i64, ptr %l3, !tbaa !24
  %t64 = add i64 %t60, %t61
  store i64 %t64, ptr %l1, !tbaa !24
  br label %bb18
bb18:
  br label %bb1
bb19:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
declare i64 @write(i32, ptr, i64)
@olang_loc_9799f17155897ea8_ecf4214bd60fd3c4 = external constant [0 x i8]

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
