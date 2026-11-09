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
@G_2estd_2fprelude_2fnumber_2eEuler = constant <{ [8 x i8] }> <{ [8 x i8] c"\69\57\14\8B\0A\BF\05\40" }>, align 8
@G_2estd_2fprelude_2fnumber_2eInf = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\F0\7F" }>, align 8
@G_2estd_2fprelude_2fnumber_2eNaN = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\F8\7F" }>, align 8
@G_2estd_2fprelude_2fnumber_2ePi = constant <{ [8 x i8] }> <{ [8 x i8] c"\18\2D\44\54\FB\21\09\40" }>, align 8
define dso_local { i32, i16 } @std_2fprelude_2fnumber_2eI16_2eSqrt(i16 %a0) #0 {
entry:
  %l0 = alloca i16
  %l6 = alloca i64
  %rv = alloca { i32, i16 }
  store i16 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i16, ptr %l0, !tbaa !62
  %t3 = icmp slt i16 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t6 = insertvalue { i32, i16 } zeroinitializer, i32 65536, 0
  store { i32, i16 } %t6, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load i16, ptr %l0, !tbaa !62
  %t9 = sext i16 %t7 to i64
  %t11 = call i64 @std_2fprelude_2fnumber_2esqrtU64(i64 %t9)
  store i64 %t11, ptr %l6
  br label %bb4
bb4:
  %t12 = load i64, ptr %l6, !tbaa !65
  %t13 = trunc i64 %t12 to i16
  %t15 = insertvalue { i32, i16 } zeroinitializer, i16 %t13, 1
  store { i32, i16 } %t15, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i16 }, ptr %rv
  ret { i32, i16 } %rr
}

define dso_local { i32, i32 } @std_2fprelude_2fnumber_2eI32_2eSqrt(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l6 = alloca i64
  %rv = alloca { i32, i32 }
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  %t3 = icmp slt i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t6 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t6, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load i32, ptr %l0, !tbaa !23
  %t9 = sext i32 %t7 to i64
  %t11 = call i64 @std_2fprelude_2fnumber_2esqrtU64(i64 %t9)
  store i64 %t11, ptr %l6
  br label %bb4
bb4:
  %t12 = load i64, ptr %l6, !tbaa !65
  %t13 = trunc i64 %t12 to i32
  %t15 = insertvalue { i32, i32 } zeroinitializer, i32 %t13, 1
  store { i32, i32 } %t15, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local { i32, i64 } @std_2fprelude_2fnumber_2eI64_2eSqrt(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l6 = alloca i64
  %rv = alloca { i32, i64 }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t6 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t6, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load i64, ptr %l0, !tbaa !24
  %t10 = call i64 @std_2fprelude_2fnumber_2esqrtU64(i64 %t7)
  store i64 %t10, ptr %l6
  br label %bb4
bb4:
  %t11 = load i64, ptr %l6, !tbaa !65
  %t13 = insertvalue { i32, i64 } zeroinitializer, i64 %t11, 1
  store { i32, i64 } %t13, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i32, i8 } @std_2fprelude_2fnumber_2eI8_2eSqrt(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l6 = alloca i64
  %rv = alloca { i32, i8 }
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !61
  %t3 = icmp slt i8 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t6 = insertvalue { i32, i8 } zeroinitializer, i32 65536, 0
  store { i32, i8 } %t6, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load i8, ptr %l0, !tbaa !61
  %t9 = sext i8 %t7 to i64
  %t11 = call i64 @std_2fprelude_2fnumber_2esqrtU64(i64 %t9)
  store i64 %t11, ptr %l6
  br label %bb4
bb4:
  %t12 = load i64, ptr %l6, !tbaa !65
  %t13 = trunc i64 %t12 to i8
  %t15 = insertvalue { i32, i8 } zeroinitializer, i8 %t13, 1
  store { i32, i8 } %t15, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i8 }, ptr %rv
  ret { i32, i8 } %rr
}

define dso_local i16 @std_2fprelude_2fnumber_2eU16_2eSqrt(i16 %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i16
  br label %start
start:
  br label %bb0
bb0:
  %t3 = zext i16 %a0 to i64
  %t5 = call i64 @std_2fprelude_2fnumber_2esqrtU64(i64 %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !65
  %t7 = trunc i64 %t6 to i16
  store i16 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i16, ptr %rv
  ret i16 %rr
}

define dso_local i32 @std_2fprelude_2fnumber_2eU32_2eSqrt(i32 %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = zext i32 %a0 to i64
  %t5 = call i64 @std_2fprelude_2fnumber_2esqrtU64(i64 %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !65
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @std_2fprelude_2fnumber_2eU64_2eSqrt(i64 %a0) #0 {
entry:
  %l2 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i64 @std_2fprelude_2fnumber_2esqrtU64(i64 %a0)
  store i64 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i64, ptr %l2, !tbaa !65
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i8 @std_2fprelude_2fnumber_2eU8_2eSqrt(i8 %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i8
  br label %start
start:
  br label %bb0
bb0:
  %t3 = zext i8 %a0 to i64
  %t5 = call i64 @std_2fprelude_2fnumber_2esqrtU64(i64 %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !65
  %t7 = trunc i64 %t6 to i8
  store i8 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local i128 @std_2fprelude_2fnumber_2esqrtU128(i128 %a0) #0 {
entry:
  %l0 = alloca i128
  %l1 = alloca i128
  %l2 = alloca i128
  %l8 = alloca i64
  %l12 = alloca double
  %rv = alloca i128
  store i128 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i128, ptr %l0
  %t2 = shl i128 1, 64
  %t5 = icmp ult i128 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i128, ptr %l0
  %t9 = trunc i128 %t7 to i64
  %t11 = call i64 @std_2fprelude_2fnumber_2esqrtU64(i64 %t9)
  store i64 %t11, ptr %l8
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t12 = load i64, ptr %l8, !tbaa !65
  %t13 = zext i64 %t12 to i128
  store i128 %t13, ptr %rv
  br label %ret
bb4:
  %t15 = load i128, ptr %l0
  %t17 = uitofp i128 %t15 to double
  %t19 = call double @llvm.sqrt.f64(double %t17)
  store double %t19, ptr %l12
  br label %bb5
bb5:
  %t20 = load double, ptr %l12, !tbaa !26
  %t21 = fptoui double %t20 to i128
  %t23 = add i128 %t21, 4096
  store i128 %t23, ptr %l1
  br label %bb6
bb6:
  %t25 = load i128, ptr %l1
  %t26 = load i128, ptr %l0
  %t27 = load i128, ptr %l1
  %t30 = udiv i128 %t26, %t27
  %t33 = add i128 %t25, %t30
  %t35 = udiv i128 %t33, 2
  store i128 %t35, ptr %l2
  %t37 = load i128, ptr %l2
  %t38 = load i128, ptr %l1
  %t41 = icmp uge i128 %t37, %t38
  br i1 %t41, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t43 = load i128, ptr %l2
  store i128 %t43, ptr %l1
  br label %bb10
bb10:
  br label %bb6
bb11:
  br label %bb12
bb12:
  %t45 = load i128, ptr %l1
  %t46 = load i128, ptr %l0
  %t47 = load i128, ptr %l1
  %t50 = udiv i128 %t46, %t47
  %t53 = icmp ugt i128 %t45, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t57 = load i128, ptr %l1
  %t59 = sub i128 %t57, 1
  store i128 %t59, ptr %l1
  br label %bb16
bb16:
  br label %bb12
bb17:
  br label %bb18
bb18:
  %t61 = load i128, ptr %l1
  %t63 = add i128 %t61, 1
  %t64 = load i128, ptr %l0
  %t65 = load i128, ptr %l1
  %t67 = add i128 %t65, 1
  %t70 = udiv i128 %t64, %t67
  %t73 = icmp ule i128 %t63, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t77 = load i128, ptr %l1
  %t79 = add i128 %t77, 1
  store i128 %t79, ptr %l1
  br label %bb22
bb22:
  br label %bb18
bb23:
  %t81 = load i128, ptr %l1
  store i128 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i128, ptr %rv
  ret i128 %rr
}

define dso_local i64 @std_2fprelude_2fnumber_2esqrtU64(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l7 = alloca double
  %l21 = alloca i1
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !65
  %t3 = icmp ult i64 %t1, 2
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l0, !tbaa !65
  store i64 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load i64, ptr %l0, !tbaa !65
  %t9 = uitofp i64 %t7 to double
  %t11 = call double @llvm.sqrt.f64(double %t9)
  store double %t11, ptr %l7
  br label %bb4
bb4:
  %t12 = load double, ptr %l7, !tbaa !26
  %t13 = fptoui double %t12 to i64
  store i64 %t13, ptr %l1, !tbaa !65
  %t15 = load i64, ptr %l1, !tbaa !65
  %t17 = icmp ugt i64 %t15, 4294967295
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i64 4294967295, ptr %l1, !tbaa !65
  br label %bb7
bb6:
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t19 = load i64, ptr %l1, !tbaa !65
  %t20 = load i64, ptr %l1, !tbaa !65
  %t23 = mul i64 %t19, %t20
  %t24 = load i64, ptr %l0, !tbaa !65
  %t27 = icmp ugt i64 %t23, %t24
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb9, label %bb10
bb9:
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t31 = load i64, ptr %l1, !tbaa !65
  %t33 = sub i64 %t31, 1
  store i64 %t33, ptr %l1, !tbaa !65
  br label %bb12
bb12:
  br label %bb8
bb13:
  br label %bb14
bb14:
  %t35 = load i64, ptr %l1, !tbaa !65
  %t37 = icmp ult i64 %t35, 4294967295
  br i1 %t37, label %bb15, label %bb16
bb15:
  %t39 = load i64, ptr %l1, !tbaa !65
  %t41 = add i64 %t39, 1
  %t42 = load i64, ptr %l1, !tbaa !65
  %t44 = add i64 %t42, 1
  %t47 = mul i64 %t41, %t44
  %t48 = load i64, ptr %l0, !tbaa !65
  %t51 = icmp ule i64 %t47, %t48
  store i1 %t51, ptr %l21, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb17
bb17:
  %t53 = load i1, ptr %l21, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t56 = load i64, ptr %l1, !tbaa !65
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l1, !tbaa !65
  br label %bb21
bb21:
  br label %bb14
bb22:
  %t60 = load i64, ptr %l1, !tbaa !65
  store i64 %t60, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

declare double @llvm.sqrt.f64(double)

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
