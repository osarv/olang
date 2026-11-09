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
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19" = type { i64, { i64, ptr }, i64, i64, i64, i1, i64, i64, i1, i64, %"<pthread.h>:pthread_mutex_t", %"<pthread.h>:pthread_cond_t", %"<pthread.h>:pthread_cond_t" }
%"<pthread.h>:pthread_mutex_t" = type { [5 x i64] }
%"<pthread.h>:pthread_cond_t" = type { [6 x i64] }
%"compiler/build:Config" = type { { i64, ptr }, { i64, ptr }, %"compiler/target:Target", %"compiler/cond:Consts", i1, i1, i1, i1, i1, i1, { i64, ptr }, i64, i1, i1, i1, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, { i64, ptr }, { i64, ptr }, i64, i64, i1, { i64, ptr }, { i64, ptr } }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/build:compiles" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:Program" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:Unit" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/build:Sha256" = type { [8 x i32], [64 x i8], i64, i64 }
%"compiler/build:Code" = type { { i64, ptr }, { i64, ptr }, i64, { i64, ptr } }
%"compiler/build:Listed" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local { i64, ptr } @compiler_2fbuild_2eLibName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i8
  %l8 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l20 = alloca %"std/prelude/text:StringBuilder"
  %l28 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l33 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l37 = alloca i1
  %l40 = alloca i8
  %l45 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store { i64, ptr } %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t7, ptr %l10
  br label %bb2
bb2:
  %t8 = load i1, ptr %l10, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t9, ptr %l11, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t14 = sub i64 %t12, 6
  store i64 %t14, ptr %l14, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l15, !tbaa !24
  %t17 = icmp sge i64 0, 0
  br i1 %t17, label %bb5, label %bb6
bb4:
  br label %bb11
bb5:
  %t19 = load i64, ptr %l14, !tbaa !24
  %t20 = icmp sle i64 0, %t19
  br i1 %t20, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_807a392292b9ae5a_fba630df00719f06)
  unreachable
bb7:
  %t22 = load i64, ptr %l14, !tbaa !24
  %t23 = load i64, ptr %l15, !tbaa !24
  %t24 = icmp sle i64 %t22, %t23
  br i1 %t24, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_807a392292b9ae5a_fba630df00719f06)
  unreachable
bb9:
  %t26 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = getelementptr i8, ptr %t27, i64 0
  %t30 = sub i64 %t28, 0
  %t31 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t29, 1
  store { i64, ptr } %t32, ptr %l1, !tbaa !27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_807a392292b9ae5a_fba630df00719f06)
  unreachable
bb11:
  %t34 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t34, ptr %l20
  br label %bb12
bb12:
  %t35 = load %"std/prelude/text:StringBuilder", ptr %l20
  store %"std/prelude/text:StringBuilder" %t35, ptr %l2
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t36, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l5, !tbaa !24
  br label %bb13
bb13:
  %t42 = load i64, ptr %l4, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb14, label %bb15
bb14:
  br label %bb30
bb15:
  br label %bb16
bb16:
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t50, ptr %l28, !tbaa !27
  %t51 = load i64, ptr %l4, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i8, ptr %t54, i64 %t51
  %t56 = load i8, ptr %t55, !tbaa !32
  store i8 %t56, ptr %l6, !tbaa !22
  store ptr %l2, ptr %l31, !tbaa !29
  %t58 = load i8, ptr %l6, !tbaa !22
  %t60 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t58)
  store i1 %t60, ptr %l33
  br label %bb17
bb17:
  %t61 = load i1, ptr %l33, !tbaa !21
  br i1 %t61, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb21
bb19:
  %t62 = load i8, ptr %l6, !tbaa !22
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t62)
  store i1 %t64, ptr %l36
  br label %bb20
bb20:
  %t65 = load i1, ptr %l36, !tbaa !21
  store i1 %t65, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t66 = load i1, ptr %l34, !tbaa !21
  br i1 %t66, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb24
bb23:
  %t67 = load i8, ptr %l6, !tbaa !22
  %t69 = icmp eq i8 %t67, 95
  store i1 %t69, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t71 = load i1, ptr %l37, !tbaa !21
  br i1 %t71, label %bb25, label %bb26
bb25:
  %t72 = load i8, ptr %l6, !tbaa !22
  store i8 %t72, ptr %l40, !tbaa !22
  br label %bb27
bb26:
  store i8 95, ptr %l40, !tbaa !22
  br label %bb27
bb27:
  %t74 = load ptr, ptr %l31, !tbaa !29
  %t75 = load i8, ptr %l40, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t74, i8 %t75)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t76 = load i64, ptr %l4, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l4, !tbaa !24
  br label %bb13
bb30:
  %t81 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t81, ptr %l45
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t82 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t82, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l19 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i8
  %l34 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb22
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t17, ptr %l14, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  store i8 %t23, ptr %l5, !tbaa !22
  store ptr %l1, ptr %l17, !tbaa !29
  %t25 = load i8, ptr %l5, !tbaa !22
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t25)
  store i1 %t27, ptr %l19
  br label %bb6
bb6:
  %t28 = load i1, ptr %l19, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb10
bb8:
  %t29 = load i8, ptr %l5, !tbaa !22
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t29)
  store i1 %t31, ptr %l22
  br label %bb9
bb9:
  %t32 = load i1, ptr %l22, !tbaa !21
  store i1 %t32, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t33 = load i1, ptr %l20, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb13
bb12:
  %t34 = load i8, ptr %l5, !tbaa !22
  %t36 = icmp eq i8 %t34, 95
  store i1 %t36, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t38 = load i1, ptr %l23, !tbaa !21
  br i1 %t38, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb16
bb15:
  %t39 = load i8, ptr %l5, !tbaa !22
  %t41 = icmp eq i8 %t39, 45
  store i1 %t41, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t43 = load i1, ptr %l26, !tbaa !21
  br i1 %t43, label %bb17, label %bb18
bb17:
  %t44 = load i8, ptr %l5, !tbaa !22
  store i8 %t44, ptr %l29, !tbaa !22
  br label %bb19
bb18:
  store i8 95, ptr %l29, !tbaa !22
  br label %bb19
bb19:
  %t46 = load ptr, ptr %l17, !tbaa !29
  %t47 = load i8, ptr %l29, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t46, i8 %t47)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t48 = load i64, ptr %l3, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l3, !tbaa !24
  br label %bb2
bb22:
  %t53 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t53, ptr %l34
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t54, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l1, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t6 = sub i64 %t4, 2
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = icmp sge i64 0, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = icmp sle i64 0, %t11
  br i1 %t12, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_cca858d13f2cc89a_874b1ca570aaca06)
  unreachable
bb3:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = icmp sle i64 %t14, %t15
  br i1 %t16, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_cca858d13f2cc89a_874b1ca570aaca06)
  unreachable
bb5:
  %t18 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr i8, ptr %t19, i64 0
  %t22 = sub i64 %t20, 0
  %t23 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t21, 1
  %t26 = extractvalue { i64, ptr } %t24, 1
  %t27 = extractvalue { i64, ptr } %t24, 0
  %t28 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t26, i64 %t27)
  %t32 = getelementptr i8, ptr %t31, i64 %t27
  call void @olang_textcopy(ptr %t32, ptr %t28, i64 %t29)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t31, 1
  store { i64, ptr } %t34, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_cca858d13f2cc89a_874b1ca570aaca06)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { { i64, ptr }, { i64, ptr } } @compiler_2fbuild_2eRunAll(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l31 = alloca i64
  %l41 = alloca { { i64, ptr }, { i64, ptr } }
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %l88 = alloca %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19"
  %l98 = alloca { i64, ptr }
  %l103 = alloca i32
  %l105 = alloca i1
  %l111 = alloca i64
  %l118 = alloca i64
  %l121 = alloca i64
  %l150 = alloca { { i64, ptr }, { i64, ptr } }
  %l151 = alloca { i64, ptr }
  %l152 = alloca i64
  %l153 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l155 = alloca i64
  %l156 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %jh10 = alloca ptr
  %rv = alloca { { i64, ptr }, { i64, ptr } }
  %t28 = alloca i64
  %t168 = alloca { { i64, ptr }, ptr }, align 8
  %t179 = alloca %"std/chan:Chan.1f61752bf3a3e88b047d9d8b456b8f19", align 8
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l27, !tbaa !24
  %t6 = load i64, ptr %l27, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l27, !tbaa !24
  %t10 = icmp sle i64 %t9, 2305843009213693951
  br i1 %t10, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_2b4b55182e30c5b8_1dd1254afca8c384)
  unreachable
bb3:
  %t12 = load i64, ptr %l27, !tbaa !24
  %t13 = mul i64 %t12, 4
  %t14 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  store i64 %t18, ptr %l31, !tbaa !24
  %t19 = load i64, ptr %l31, !tbaa !24
  %t20 = icmp sge i64 %t19, 0
  br i1 %t20, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_2b4b55182e30c5b8_1dd1254afca8c384)
  unreachable
bb5:
  %t22 = load i64, ptr %l31, !tbaa !24
  %t23 = icmp sle i64 %t22, 576460752303423487
  br i1 %t23, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_3fd1be9bff2cc025_306b5f0bb3e84491)
  unreachable
bb7:
  %t25 = load i64, ptr %l31, !tbaa !24
  %t26 = mul i64 %t25, 16
  %t27 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t26)
  store i64 0, ptr %t28
  br label %fill.29
fill.29:
  %t32 = load i64, ptr %t28
  %t33 = icmp slt i64 %t32, %t25
  br i1 %t33, label %fillb.30, label %filld.31
fillb.30:
  %t34 = getelementptr { i64, ptr }, ptr %t27, i64 %t32
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %t34
  %t35 = add i64 %t32, 1
  store i64 %t35, ptr %t28
  br label %fill.29
filld.31:
  %t36 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t27, 1
  store { i64, ptr } %t37, ptr %l5, !tbaa !27
  %t39 = load i64, ptr %l3, !tbaa !24
  %t41 = icmp eq i64 %t39, 0
  br i1 %t41, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3fd1be9bff2cc025_306b5f0bb3e84491)
  unreachable
bb9:
  %t43 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t48 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t43, 0
  %t50 = insertvalue { { i64, ptr }, { i64, ptr } } %t48, { i64, ptr } %t45, 1
  store { { i64, ptr }, { i64, ptr } } %t50, ptr %l41
  %t51 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l41, i32 0, i32 0
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  store { i64, ptr } %t52, ptr %l42, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 0
  store i64 %t54, ptr %l43, !tbaa !24
  %t55 = load i64, ptr %l43, !tbaa !24
  %t56 = mul i64 %t55, 4
  %t57 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t56)
  %t58 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  store { i64, ptr } %t59, ptr %l44, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = load i64, ptr %l43, !tbaa !24
  %t65 = mul i64 %t64, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t61, ptr %t63, i64 %t65, i1 false)
  %t66 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t67 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l41, i32 0, i32 0
  store { i64, ptr } %t66, ptr %t67, !tbaa !27
  %t68 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l41, i32 0, i32 1
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l45, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 0
  store i64 %t71, ptr %l46, !tbaa !24
  %t72 = load i64, ptr %l46, !tbaa !24
  %t73 = mul i64 %t72, 16
  %t74 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t73)
  %t75 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l47, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l46, !tbaa !24
  %t82 = mul i64 %t81, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t78, ptr %t80, i64 %t82, i1 false)
  %t83 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t84 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l41, i32 0, i32 1
  store { i64, ptr } %t83, ptr %t84, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t85 = load { { i64, ptr }, { i64, ptr } }, ptr %l41
  store { { i64, ptr }, { i64, ptr } } %t85, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t86 = load i64, ptr %l3, !tbaa !24
  store i64 %t86, ptr %l48, !tbaa !24
  %t87 = load i64, ptr %l48, !tbaa !24
  %t88 = icmp sge i64 %t87, 0
  br i1 %t88, label %bb12, label %bb13
bb12:
  %t90 = load i64, ptr %l48, !tbaa !24
  %t91 = icmp sle i64 %t90, 1152921504606846975
  br i1 %t91, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_bc625dc042a99e06_c0b5fdead4ea6272)
  unreachable
bb14:
  %t93 = load i64, ptr %l48, !tbaa !24
  %t94 = mul i64 %t93, 8
  %t95 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t94)
  %t96 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  store { i64, ptr } %t97, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t99 = load i64, ptr %l3, !tbaa !24
  store i64 %t99, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t101 = load i64, ptr %l8, !tbaa !24
  %t102 = load i64, ptr %l7, !tbaa !24
  %t105 = icmp sgt i64 %t101, %t102
  br i1 %t105, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_bc625dc042a99e06_c0b5fdead4ea6272)
  unreachable
bb16:
  %t107 = load i64, ptr %l9, !tbaa !24
  %t109 = icmp sgt i64 %t107, 0
  br i1 %t109, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb21
bb18:
  %t111 = load i64, ptr %l8, !tbaa !24
  %t112 = load i64, ptr %l7, !tbaa !24
  %t115 = sub i64 %t111, %t112
  %t116 = load i64, ptr %l9, !tbaa !24
  %t119 = add i64 %t115, %t116
  %t121 = sub i64 %t119, 1
  %t122 = load i64, ptr %l9, !tbaa !24
  %t125 = sdiv i64 %t121, %t122
  store i64 %t125, ptr %l59, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb20
bb20:
  %t127 = load i64, ptr %l59, !tbaa !24
  store i64 %t127, ptr %l56, !tbaa !24
  br label %bb21
bb21:
  %t128 = load i64, ptr %l56, !tbaa !24
  store i64 %t128, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb22
bb22:
  %t129 = load i64, ptr %l11, !tbaa !24
  %t130 = load i64, ptr %l10, !tbaa !24
  %t133 = icmp slt i64 %t129, %t130
  %t135 = xor i1 %t133, true
  br i1 %t135, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t137 = load i64, ptr %l7, !tbaa !24
  %t138 = load i64, ptr %l11, !tbaa !24
  %t139 = load i64, ptr %l9, !tbaa !24
  %t142 = mul i64 %t138, %t139
  %t145 = add i64 %t137, %t142
  store i64 %t145, ptr %l12, !tbaa !24
  %t147 = load i64, ptr %l12, !tbaa !24
  %t148 = load i64, ptr %l12, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr i64, ptr %t152, i64 %t147
  store i64 %t148, ptr %t153, !tbaa !34
  br label %bb26
bb26:
  %t154 = load i64, ptr %l11, !tbaa !24
  %t156 = add i64 %t154, 1
  store i64 %t156, ptr %l11, !tbaa !24
  br label %bb22
bb27:
  %t158 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t162 = icmp sgt i64 %t160, 0
  br i1 %t162, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t164 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t165 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t166 = getelementptr { { i64, ptr }, ptr }, ptr null, i32 1
  %t167 = ptrtoint ptr %t166 to i64
  %t169 = getelementptr { { i64, ptr }, ptr }, ptr %t168, i32 0, i32 0
  store { i64, ptr } %t165, ptr %t169, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t171 = getelementptr { { i64, ptr }, ptr }, ptr %t168, i32 0, i32 1
  store ptr %v1, ptr %t171, !tbaa !28
  %t172 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_3, 0
  %t173 = insertvalue { ptr, ptr } %t172, ptr %t168, 1
  %t176 = extractvalue { ptr, ptr } %t173, 0
  %t177 = extractvalue { ptr, ptr } %t173, 1
  call void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s5, { i64, ptr } %t164, ptr %t176, ptr %t177)
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_scope_close(ptr %s5)
  br label %bb31
bb31:
  %t178 = load i64, ptr %l3, !tbaa !24
  call void @std_2fchan_3aChan_3cI64_3e_2ector(ptr %t179, ptr %s0, i64 %t178)
  call void @llvm.memmove.p0.p0.i64(ptr %l88, ptr %t179, i64 224, i1 false)
  br label %bb32
bb32:
  %t181 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 224, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t181, ptr %l88, i64 224, i1 false)
  store ptr %t181, ptr %l13, !tbaa !29
  %t183 = load ptr, ptr %l13, !tbaa !29
  call void @std_2fchan_2eInit_3cI64_3e(ptr %s0, ptr %t183)
  br label %bb33
bb33:
  %t185 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t185, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t187 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t187, 0
  store i64 %t189, ptr %l16, !tbaa !24
  br label %bb34
bb34:
  %t191 = load i64, ptr %l15, !tbaa !24
  %t192 = load i64, ptr %l16, !tbaa !24
  %t195 = icmp slt i64 %t191, %t192
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb35, label %bb36
bb35:
  br label %bb43
bb36:
  br label %bb37
bb37:
  %t199 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t199, ptr %l98, !tbaa !27
  %t200 = load i64, ptr %l15, !tbaa !24
  %t202 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr i64, ptr %t203, i64 %t200
  %t205 = load i64, ptr %t204, !tbaa !34
  %t207 = load ptr, ptr %l13, !tbaa !29
  %t211 = call i32 @std_2fchan_2eSend_3cI64_3e(ptr %s0, ptr %t207, i64 %t205)
  store i32 %t211, ptr %l103
  %t212 = icmp ne i32 %t211, 0
  br i1 %t212, label %bb39, label %ok.213, !prof !99
ok.213:
  br label %bb38
bb38:
  br label %bb41
bb39:
  %t214 = load i32, ptr %l103, !tbaa !23
  %t215 = ashr i32 %t214, 16
  %t217 = icmp eq i32 %t215, 1
  store i1 %t217, ptr %l105, !tbaa !21
  br label %bb40
bb40:
  call void @__olang_check_failed(ptr @olang_loc_1359a9f97975288c_a8d4abcb606172b0)
  unreachable
bb41:
  br label %bb42
bb42:
  %t218 = load i64, ptr %l15, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l15, !tbaa !24
  br label %bb34
bb43:
  %t222 = load i64, ptr %l1, !tbaa !24
  %t223 = load i64, ptr %l3, !tbaa !24
  %t226 = icmp slt i64 %t222, %t223
  br i1 %t226, label %bb44, label %bb45
bb44:
  %t228 = load i64, ptr %l1, !tbaa !24
  store i64 %t228, ptr %l111, !tbaa !24
  br label %bb46
bb45:
  %t230 = load i64, ptr %l3, !tbaa !24
  store i64 %t230, ptr %l111, !tbaa !24
  br label %bb46
bb46:
  %t232 = load i64, ptr %l111, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s10
  store ptr null, ptr %jh10
  store i64 0, ptr %l19, !tbaa !24
  store i64 %t232, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t235 = load i64, ptr %l20, !tbaa !24
  %t236 = load i64, ptr %l19, !tbaa !24
  %t239 = icmp sgt i64 %t235, %t236
  br i1 %t239, label %bb47, label %bb48
bb47:
  %t241 = load i64, ptr %l21, !tbaa !24
  %t243 = icmp sgt i64 %t241, 0
  br i1 %t243, label %bb49, label %bb50
bb48:
  store i64 0, ptr %l118, !tbaa !24
  br label %bb52
bb49:
  %t245 = load i64, ptr %l20, !tbaa !24
  %t246 = load i64, ptr %l19, !tbaa !24
  %t249 = sub i64 %t245, %t246
  %t250 = load i64, ptr %l21, !tbaa !24
  %t253 = add i64 %t249, %t250
  %t255 = sub i64 %t253, 1
  %t256 = load i64, ptr %l21, !tbaa !24
  %t259 = sdiv i64 %t255, %t256
  store i64 %t259, ptr %l121, !tbaa !24
  br label %bb51
bb50:
  store i64 0, ptr %l121, !tbaa !24
  br label %bb51
bb51:
  %t261 = load i64, ptr %l121, !tbaa !24
  store i64 %t261, ptr %l118, !tbaa !24
  br label %bb52
bb52:
  %t262 = load i64, ptr %l118, !tbaa !24
  store i64 %t262, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb53
bb53:
  %t263 = load i64, ptr %l23, !tbaa !24
  %t264 = load i64, ptr %l22, !tbaa !24
  %t267 = icmp slt i64 %t263, %t264
  %t269 = xor i1 %t267, true
  br i1 %t269, label %bb54, label %bb55
bb54:
  br label %bb58
bb55:
  br label %bb56
bb56:
  %t271 = load i64, ptr %l19, !tbaa !24
  %t272 = load i64, ptr %l23, !tbaa !24
  %t273 = load i64, ptr %l21, !tbaa !24
  %t276 = mul i64 %t272, %t273
  %t279 = add i64 %t271, %t276
  store i64 %t279, ptr %l24, !tbaa !24
  %t281 = load ptr, ptr %l13, !tbaa !29
  %t282 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t283 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t284 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t289 = call ptr @__olang_standin(ptr %s0)
  %t290 = call ptr @__olang_standin(ptr %v0)
  %t291 = call ptr @__olang_standin(ptr %s0)
  %t292 = call ptr @__olang_standin(ptr %v2)
  %t293 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr null, i32 1
  %t294 = ptrtoint ptr %t293 to i64
  %t295 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 %t294, i64 8)
  %t296 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t295, i32 0, i32 0
  store ptr %t281, ptr %t296
  %t297 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t295, i32 0, i32 1
  store { i64, ptr } %t282, ptr %t297
  %t298 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t295, i32 0, i32 2
  store { i64, ptr } %t283, ptr %t298
  %t299 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t295, i32 0, i32 3
  store { i64, ptr } %t284, ptr %t299
  %t300 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t295, i32 0, i32 4
  store ptr %t289, ptr %t300
  %t301 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t295, i32 0, i32 5
  store ptr %t290, ptr %t301
  %t302 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t295, i32 0, i32 6
  store ptr %t291, ptr %t302
  %t303 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t295, i32 0, i32 7
  store ptr %t292, ptr %t303
  %t304 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 40, i64 8)
  %t305 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 16, i64 8)
  store ptr null, ptr %t305
  %t306 = getelementptr { ptr, ptr }, ptr %t305, i32 0, i32 1
  store ptr %t289, ptr %t306
  %t307 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 16, i64 8)
  store ptr %t305, ptr %t307
  %t308 = getelementptr { ptr, ptr }, ptr %t307, i32 0, i32 1
  store ptr %t290, ptr %t308
  %t309 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 16, i64 8)
  store ptr %t307, ptr %t309
  %t310 = getelementptr { ptr, ptr }, ptr %t309, i32 0, i32 1
  store ptr %t291, ptr %t310
  %t311 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 16, i64 8)
  store ptr %t309, ptr %t311
  %t312 = getelementptr { ptr, ptr }, ptr %t311, i32 0, i32 1
  store ptr %t292, ptr %t312
  %t313 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t304, i32 0, i32 2
  store ptr %t311, ptr %t313
  %t314 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t304, i32 0, i32 1
  store i64 0, ptr %t314
  %t315 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t304, i32 0, i32 3
  store i64 0, ptr %t315
  %t316 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t304, i32 0, i32 4
  store ptr null, ptr %t316
  %t317 = call ptr @__olang_worker_get()
  call void @__olang_worker_start(ptr %t317, ptr @olang_task4, ptr %t295, ptr %t304)
  %t318 = load ptr, ptr %jh10
  store ptr %t318, ptr %t304
  store ptr %t304, ptr %jh10
  br label %bb57
bb57:
  %t319 = load i64, ptr %l23, !tbaa !24
  %t321 = add i64 %t319, 1
  store i64 %t321, ptr %l23, !tbaa !24
  br label %bb53
bb58:
  %t323 = load ptr, ptr %l13, !tbaa !29
  call void @std_2fchan_2eClose_3cI64_3e(ptr %s0, ptr %t323)
  br label %bb59
bb59:
  %t325 = call i64 @__olang_join_tasks_keep(ptr %jh10, i1 false)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s10)
  br label %bb61
bb61:
  %t326 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t328 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t331 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t326, 0
  %t333 = insertvalue { { i64, ptr }, { i64, ptr } } %t331, { i64, ptr } %t328, 1
  store { { i64, ptr }, { i64, ptr } } %t333, ptr %l150
  %t334 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l150, i32 0, i32 0
  %t335 = load { i64, ptr }, ptr %t334, !tbaa !27
  store { i64, ptr } %t335, ptr %l151, !tbaa !27
  %t336 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t337 = extractvalue { i64, ptr } %t336, 0
  store i64 %t337, ptr %l152, !tbaa !24
  %t338 = load i64, ptr %l152, !tbaa !24
  %t339 = mul i64 %t338, 4
  %t340 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t339)
  %t341 = insertvalue { i64, ptr } undef, i64 %t338, 0
  %t342 = insertvalue { i64, ptr } %t341, ptr %t340, 1
  store { i64, ptr } %t342, ptr %l153, !tbaa !27
  %t343 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !27
  %t345 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !27
  %t347 = load i64, ptr %l152, !tbaa !24
  %t348 = mul i64 %t347, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t344, ptr %t346, i64 %t348, i1 false)
  %t349 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t350 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l150, i32 0, i32 0
  store { i64, ptr } %t349, ptr %t350, !tbaa !27
  %t351 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l150, i32 0, i32 1
  %t352 = load { i64, ptr }, ptr %t351, !tbaa !27
  store { i64, ptr } %t352, ptr %l154, !tbaa !27
  %t353 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t354 = extractvalue { i64, ptr } %t353, 0
  store i64 %t354, ptr %l155, !tbaa !24
  %t355 = load i64, ptr %l155, !tbaa !24
  %t356 = mul i64 %t355, 16
  %t357 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t356)
  %t358 = insertvalue { i64, ptr } undef, i64 %t355, 0
  %t359 = insertvalue { i64, ptr } %t358, ptr %t357, 1
  store { i64, ptr } %t359, ptr %l156, !tbaa !27
  %t360 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t361 = load ptr, ptr %t360, !tbaa !27
  %t362 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !27
  %t364 = load i64, ptr %l155, !tbaa !24
  %t365 = mul i64 %t364, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t361, ptr %t363, i64 %t365, i1 false)
  %t366 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t367 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l150, i32 0, i32 1
  store { i64, ptr } %t366, ptr %t367, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t368 = load { { i64, ptr }, { i64, ptr } }, ptr %l150
  store { { i64, ptr }, { i64, ptr } } %t368, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eDataFlags(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca { i64, ptr }
  %l18 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %s1, ptr %a0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l7
  br label %bb2
bb2:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t9 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %t9
  store ptr %t9, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l9, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s1, ptr %t12)
  store i64 %t14, ptr %l11
  br label %bb4
bb4:
  %t15 = load i64, ptr %l9, !tbaa !24
  %t16 = load i64, ptr %l11, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s1, ptr %s1, ptr %t21, i64 %t22)
  store { i64, ptr } %t25, ptr %l16
  br label %bb8
bb8:
  %t26 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s2, { i64, ptr } %t27, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t29, ptr %l18
  br label %bb9
bb9:
  %t30 = load i1, ptr %l18, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t35 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s2, { i64, ptr } %t33, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t35, ptr %l22
  br label %bb12
bb11:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb13
bb12:
  %t36 = load i1, ptr %l22, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  %t39 = load i1, ptr %l20, !tbaa !21
  br i1 %t39, label %bb14, label %bb15
bb14:
  %t40 = load ptr, ptr %lp1
  store ptr %t40, ptr %l24, !tbaa !29
  %t41 = ptrtoint ptr %v1 to i64
  store i64 %t41, ptr %l25, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t42, label %bb16, label %bb17
bb15:
  br label %bb19
bb16:
  %t44 = call ptr @__olang_region_make(ptr %v1)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l25, !tbaa !24
  br label %bb17
bb17:
  %t46 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 1
  %t49 = extractvalue { i64, ptr } %t46, 0
  %t50 = load i64, ptr %l25
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call ptr @__olang_scope_alloc(ptr %t51, i64 %t49)
  call void @olang_textcopy(ptr %t52, ptr %t48, i64 %t49)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  %t56 = load i64, ptr %l25
  %t57 = inttoptr i64 %t56 to ptr
  %t58 = extractvalue { i64, ptr } %t54, 0
  %t59 = extractvalue { i64, ptr } %t54, 1
  %t60 = mul i64 %t58, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %t57, i64 %t60)
  call void @llvm.memcpy.p0.p0.i64(ptr %t61, ptr %t59, i64 %t60, i1 false)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  %t64 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t64, { i64, ptr } %t63)
  br label %bb18
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb20:
  %t66 = load i64, ptr %l3, !tbaa !24
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l3, !tbaa !24
  br label %bb3
bb21:
  call void @__olang_scope_close(ptr %s1)
  %t70 = load ptr, ptr %lp1
  %t71 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eTestHeader(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 22
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %a1, 1
  %t14 = extractvalue { i64, ptr } %a1, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t19 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t18)
  call void @olang_textcopy(ptr %t19, ptr %t10, i64 %t11)
  %t20 = getelementptr i8, ptr %t19, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = getelementptr i8, ptr %t20, i64 %t14
  call void @olang_textcopy(ptr %t21, ptr %t16, i64 %t17)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t19, 1
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t26 = extractvalue { i64, ptr } %t23, 1
  %t27 = mul i64 %t25, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t27)
  call void @llvm.memcpy.p0.p0.i64(ptr %t28, ptr %t26, i64 %t27, i1 false)
  %t29 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  %t33 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s1, ptr %s1, ptr %s1, ptr %t8, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, { i64, ptr } %t30)
  store { i64, ptr } %t33, ptr %l9
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t34 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  %t36 = extractvalue { i64, ptr } %t34, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  call void @compiler_2fbuild_2esayln(ptr %s1, { i64, ptr } %t40)
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ebitcodeText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca { { i64, ptr }, { i64, ptr } }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i32
  %l30 = alloca i1
  %l43 = alloca { i64, ptr }
  %l47 = alloca i1
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca ptr
  %l52 = alloca i64
  %l60 = alloca ptr
  %l61 = alloca i64
  %l70 = alloca i64
  %l76 = alloca [9 x { i64, ptr }]
  %l87 = alloca ptr
  %l88 = alloca i64
  %l95 = alloca ptr
  %l96 = alloca i64
  %l99 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l105 = alloca i64
  %l109 = alloca { { i64, ptr }, { i64, ptr } }
  %l110 = alloca { i64, ptr }
  %l111 = alloca i64
  %l112 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l114 = alloca i64
  %l115 = alloca { i64, ptr }
  %l121 = alloca i64
  %l124 = alloca i64
  %l147 = alloca ptr
  %l148 = alloca { i64, [3 x i64] }
  %l151 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l159 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca i32
  %t369 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l24
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v1, ptr %s0, { i64, ptr } %t3)
  %t6 = extractvalue { i32, { i64, ptr } } %t5, 1
  %t7 = extractvalue { i32, { i64, ptr } } %t5, 0
  store i32 %t7, ptr %l28
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb3, label %ok.9, !prof !99
ok.9:
  store { i64, ptr } %t6, ptr %l27
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t10, ptr %l25, !tbaa !27
  br label %bb11
bb3:
  %t11 = load i32, ptr %l28, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l30, !tbaa !21
  %t15 = load i32, ptr %l28, !tbaa !23
  %t16 = ashr i32 %t15, 16
  %t18 = icmp eq i32 %t16, 1
  br i1 %t18, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t20 = icmp sge i64 0, 0
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t22 = icmp sle i64 0, 576460752303423487
  br i1 %t22, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_ed85b58552229ad2_db88a25435ad515e)
  unreachable
bb9:
  %t24 = mul i64 0, 16
  %t25 = insertvalue { i64, ptr } undef, i64 0, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t26, ptr %l25, !tbaa !27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_ed85b58552229ad2_db88a25435ad515e)
  unreachable
bb11:
  %t28 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t28, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  store i64 %t33, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb46
bb14:
  br label %bb15
bb15:
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t43, ptr %l43, !tbaa !27
  %t44 = load i64, ptr %l6, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %t47, i64 %t44
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !37
  store { i64, ptr } %t49, ptr %l8, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t53 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s2, { i64, ptr } %t51, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t53, ptr %l47
  br label %bb16
bb16:
  %t54 = load i1, ptr %l47, !tbaa !21
  %t55 = xor i1 %t54, true
  br i1 %t55, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb45
bb18:
  br label %bb19
bb19:
  %t57 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l49
  br label %bb20
bb20:
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  %t59 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %t59
  store ptr %t59, ptr %l9, !tbaa !29
  %t61 = load ptr, ptr %l9, !tbaa !29
  store ptr %t61, ptr %l51, !tbaa !29
  %t62 = ptrtoint ptr %s0 to i64
  store i64 %t62, ptr %l52, !tbaa !24
  %t63 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t63, label %bb21, label %bb22
bb21:
  %t65 = call ptr @__olang_region_make(ptr %s0)
  %t66 = ptrtoint ptr %t65 to i64
  store i64 %t66, ptr %l52, !tbaa !24
  br label %bb22
bb22:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/build:Config", ptr %t67, i32 0, i32 1
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t70, 1
  %t73 = extractvalue { i64, ptr } %t70, 0
  %t74 = load i64, ptr %l52
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = call ptr @__olang_scope_alloc(ptr %t75, i64 %t73)
  call void @olang_textcopy(ptr %t76, ptr %t72, i64 %t73)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  %t80 = load i64, ptr %l52
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = extractvalue { i64, ptr } %t78, 0
  %t83 = extractvalue { i64, ptr } %t78, 1
  %t84 = mul i64 %t82, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %t81, i64 %t84)
  call void @llvm.memcpy.p0.p0.i64(ptr %t85, ptr %t83, i64 %t84, i1 false)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  %t88 = load ptr, ptr %l51, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t88, { i64, ptr } %t87)
  br label %bb23
bb23:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/build:Config", ptr %t90, i32 0, i32 2
  %t93 = getelementptr %"compiler/target:Target", ptr %t92, i32 0, i32 9
  %t94 = load i1, ptr %t93, !tbaa !21
  br i1 %t94, label %bb24, label %bb25
bb24:
  %t96 = load ptr, ptr %l9, !tbaa !29
  store ptr %t96, ptr %l60, !tbaa !29
  %t97 = ptrtoint ptr %s0 to i64
  store i64 %t97, ptr %l61, !tbaa !24
  %t98 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t98, label %bb26, label %bb27
bb25:
  br label %bb29
bb26:
  %t100 = call ptr @__olang_region_make(ptr %s0)
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l61, !tbaa !24
  br label %bb27
bb27:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/build:Config", ptr %t102, i32 0, i32 2
  %t105 = getelementptr %"compiler/target:Target", ptr %t104, i32 0, i32 1
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  %t107 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t110 = extractvalue { i64, ptr } %t106, 1
  %t111 = extractvalue { i64, ptr } %t106, 0
  %t112 = add i64 %t108, %t111
  %t113 = load i64, ptr %l61
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = call ptr @__olang_scope_alloc(ptr %t114, i64 %t112)
  call void @olang_textcopy(ptr %t115, ptr %t107, i64 %t108)
  %t116 = getelementptr i8, ptr %t115, i64 %t108
  call void @olang_textcopy(ptr %t116, ptr %t110, i64 %t111)
  %t117 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t115, 1
  %t120 = load i64, ptr %l61
  %t121 = inttoptr i64 %t120 to ptr
  %t122 = extractvalue { i64, ptr } %t118, 0
  %t123 = extractvalue { i64, ptr } %t118, 1
  %t124 = mul i64 %t122, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %t121, i64 %t124)
  call void @llvm.memcpy.p0.p0.i64(ptr %t125, ptr %t123, i64 %t124, i1 false)
  %t126 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  %t128 = load ptr, ptr %l60, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t128, { i64, ptr } %t127)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t130 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t130, 1
  %t134 = extractvalue { i64, ptr } %t130, 0
  %t135 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t137 = add i64 %t134, %t136
  %t139 = extractvalue { i64, ptr } %t131, 1
  %t140 = extractvalue { i64, ptr } %t131, 0
  %t141 = add i64 %t137, %t140
  %t142 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t141)
  call void @olang_textcopy(ptr %t142, ptr %t133, i64 %t134)
  %t143 = getelementptr i8, ptr %t142, i64 %t134
  call void @olang_textcopy(ptr %t143, ptr %t135, i64 %t136)
  %t144 = getelementptr i8, ptr %t143, i64 %t136
  call void @olang_textcopy(ptr %t144, ptr %t139, i64 %t140)
  %t145 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t142, 1
  store { i64, ptr } %t146, ptr %l10, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s8
  %t148 = ptrtoint ptr %s8 to i64
  store i64 %t148, ptr %l70, !tbaa !24
  %t149 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_209_3e_2e_2d1
  br i1 %t149, label %bb30, label %bb31
bb30:
  %t151 = call ptr @__olang_region_make(ptr %s8)
  %t152 = ptrtoint ptr %t151 to i64
  store i64 %t152, ptr %l70, !tbaa !24
  br label %bb31
bb31:
  %t153 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t153, 1
  %t156 = extractvalue { i64, ptr } %t153, 0
  %t157 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t158 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t159 = add i64 %t156, %t158
  %t160 = load i64, ptr %l70
  %t161 = inttoptr i64 %t160 to ptr
  %t162 = call ptr @__olang_scope_alloc(ptr %t161, i64 %t159)
  call void @olang_textcopy(ptr %t162, ptr %t155, i64 %t156)
  %t163 = getelementptr i8, ptr %t162, i64 %t156
  call void @olang_textcopy(ptr %t163, ptr %t157, i64 %t158)
  %t164 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t162, 1
  %t167 = load i64, ptr %l70
  %t168 = inttoptr i64 %t167 to ptr
  %t169 = extractvalue { i64, ptr } %t165, 0
  %t170 = extractvalue { i64, ptr } %t165, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %t168, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t176 = getelementptr [9 x { i64, ptr }], ptr %l76, i64 0, i64 0
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %t176, !tbaa !37
  %t177 = getelementptr [9 x { i64, ptr }], ptr %l76, i64 0, i64 1
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %t177, !tbaa !37
  %t178 = getelementptr [9 x { i64, ptr }], ptr %l76, i64 0, i64 2
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %t178, !tbaa !37
  %t179 = getelementptr [9 x { i64, ptr }], ptr %l76, i64 0, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %t179, !tbaa !37
  %t180 = getelementptr [9 x { i64, ptr }], ptr %l76, i64 0, i64 4
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %t180, !tbaa !37
  %t181 = getelementptr [9 x { i64, ptr }], ptr %l76, i64 0, i64 5
  store { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %t181, !tbaa !37
  %t182 = getelementptr [9 x { i64, ptr }], ptr %l76, i64 0, i64 6
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %t182, !tbaa !37
  %t183 = getelementptr [9 x { i64, ptr }], ptr %l76, i64 0, i64 7
  store { i64, ptr } %t174, ptr %t183, !tbaa !37
  %t185 = getelementptr [9 x { i64, ptr }], ptr %l76, i64 0, i64 8
  store { i64, ptr } %t175, ptr %t185, !tbaa !37
  %t187 = call ptr @__olang_scope_alloc_a(ptr %s8, i64 144, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t187, ptr %l76, i64 144, i1 false)
  store ptr %t187, ptr %l11
  store i64 0, ptr %l12, !tbaa !24
  %t189 = load ptr, ptr %l11
  store i64 9, ptr %l13, !tbaa !24
  br label %bb32
bb32:
  %t192 = load i64, ptr %l12, !tbaa !24
  %t193 = load i64, ptr %l13, !tbaa !24
  %t196 = icmp slt i64 %t192, %t193
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb33, label %bb34
bb33:
  br label %bb40
bb34:
  br label %bb35
bb35:
  %t200 = load ptr, ptr %l11
  %t201 = load i64, ptr %l12, !tbaa !24
  %t204 = getelementptr [9 x { i64, ptr }], ptr %t200, i64 0, i64 %t201
  %t205 = load { i64, ptr }, ptr %t204, !tbaa !37
  store { i64, ptr } %t205, ptr %l14, !tbaa !27
  %t207 = load ptr, ptr %l9, !tbaa !29
  store ptr %t207, ptr %l87, !tbaa !29
  %t208 = ptrtoint ptr %s0 to i64
  store i64 %t208, ptr %l88, !tbaa !24
  %t209 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t209, label %bb36, label %bb37
bb36:
  %t211 = call ptr @__olang_region_make(ptr %s0)
  %t212 = ptrtoint ptr %t211 to i64
  store i64 %t212, ptr %l88, !tbaa !24
  br label %bb37
bb37:
  %t213 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t213, 1
  %t216 = extractvalue { i64, ptr } %t213, 0
  %t217 = load i64, ptr %l88
  %t218 = inttoptr i64 %t217 to ptr
  %t219 = call ptr @__olang_scope_alloc(ptr %t218, i64 %t216)
  call void @olang_textcopy(ptr %t219, ptr %t215, i64 %t216)
  %t220 = insertvalue { i64, ptr } undef, i64 %t216, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t219, 1
  %t223 = load i64, ptr %l88
  %t224 = inttoptr i64 %t223 to ptr
  %t225 = extractvalue { i64, ptr } %t221, 0
  %t226 = extractvalue { i64, ptr } %t221, 1
  %t227 = mul i64 %t225, 1
  %t228 = call ptr @__olang_scope_alloc(ptr %t224, i64 %t227)
  call void @llvm.memcpy.p0.p0.i64(ptr %t228, ptr %t226, i64 %t227, i1 false)
  %t229 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t230 = insertvalue { i64, ptr } %t229, ptr %t228, 1
  %t231 = load ptr, ptr %l87, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t231, { i64, ptr } %t230)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t233 = load i64, ptr %l12, !tbaa !24
  %t235 = add i64 %t233, 1
  store i64 %t235, ptr %l12, !tbaa !24
  br label %bb32
bb40:
  call void @__olang_scope_close(ptr %s8)
  store ptr %l3, ptr %l95, !tbaa !29
  %t237 = ptrtoint ptr %s0 to i64
  store i64 %t237, ptr %l96, !tbaa !24
  %t238 = load i1, ptr @olang_2esole_2eArray_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2e_2d1
  br i1 %t238, label %bb41, label %bb42
bb41:
  %t240 = call ptr @__olang_region_make(ptr %s0)
  %t241 = ptrtoint ptr %t240 to i64
  store i64 %t241, ptr %l96, !tbaa !24
  br label %bb42
bb42:
  %t242 = load ptr, ptr %l9, !tbaa !29
  %t243 = load i64, ptr %l96
  %t244 = inttoptr i64 %t243 to ptr
  %t246 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %t244, ptr %t242)
  store { i64, ptr } %t246, ptr %l99
  br label %bb43
bb43:
  %t247 = load ptr, ptr %l95, !tbaa !29
  %t248 = load { i64, ptr }, ptr %l99, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %s0, ptr %s0, ptr %t247, { i64, ptr } %t248)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s2)
  br label %bb45
bb45:
  %t249 = load i64, ptr %l6, !tbaa !24
  %t251 = add i64 %t249, 1
  store i64 %t251, ptr %l6, !tbaa !24
  br label %bb12
bb46:
  %t254 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t254, ptr %l103
  br label %bb47
bb47:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = call i64 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewidth(ptr %v0, ptr %t255)
  store i64 %t257, ptr %l105
  br label %bb48
bb48:
  %t258 = icmp sge i64 0, 0
  br i1 %t258, label %bb49, label %bb50
bb49:
  %t260 = icmp sle i64 0, 1152921504606846975
  br i1 %t260, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_39c6cdce0ac4fdc7_621aa1b204fc2693)
  unreachable
bb51:
  %t262 = mul i64 0, 8
  %t263 = insertvalue { i64, ptr } undef, i64 0, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t265 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t266 = load i64, ptr %l105, !tbaa !24
  %t268 = call { { i64, ptr }, { i64, ptr } } @compiler_2fbuild_2eRunAll(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t265, i64 %t266, { i64, ptr } %t264)
  store { { i64, ptr }, { i64, ptr } } %t268, ptr %l109
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_39c6cdce0ac4fdc7_621aa1b204fc2693)
  unreachable
bb53:
  %t269 = load { { i64, ptr }, { i64, ptr } }, ptr %l109
  store { { i64, ptr }, { i64, ptr } } %t269, ptr %l15
  %t270 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l15, i32 0, i32 0
  %t271 = load { i64, ptr }, ptr %t270, !tbaa !27
  store { i64, ptr } %t271, ptr %l110, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t272, 0
  store i64 %t273, ptr %l111, !tbaa !24
  %t274 = load i64, ptr %l111, !tbaa !24
  %t275 = mul i64 %t274, 4
  %t276 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t275)
  %t277 = insertvalue { i64, ptr } undef, i64 %t274, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  store { i64, ptr } %t278, ptr %l112, !tbaa !27
  %t279 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t280 = load ptr, ptr %t279, !tbaa !27
  %t281 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = load i64, ptr %l111, !tbaa !24
  %t284 = mul i64 %t283, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t280, ptr %t282, i64 %t284, i1 false)
  %t285 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t285, ptr %l16, !tbaa !27
  %t286 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l15, i32 0, i32 1
  %t287 = load { i64, ptr }, ptr %t286, !tbaa !27
  store { i64, ptr } %t287, ptr %l113, !tbaa !27
  %t288 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t289 = extractvalue { i64, ptr } %t288, 0
  store i64 %t289, ptr %l114, !tbaa !24
  %t290 = load i64, ptr %l114, !tbaa !24
  %t291 = mul i64 %t290, 16
  %t292 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t291)
  %t293 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t294 = insertvalue { i64, ptr } %t293, ptr %t292, 1
  store { i64, ptr } %t294, ptr %l115, !tbaa !27
  %t295 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t298 = load ptr, ptr %t297, !tbaa !27
  %t299 = load i64, ptr %l114, !tbaa !24
  %t300 = mul i64 %t299, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t296, ptr %t298, i64 %t300, i1 false)
  %t301 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t301, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t302 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t302, 0
  store i64 %t304, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t306 = load i64, ptr %l19, !tbaa !24
  %t307 = load i64, ptr %l18, !tbaa !24
  %t310 = icmp sgt i64 %t306, %t307
  br i1 %t310, label %bb54, label %bb55
bb54:
  %t312 = load i64, ptr %l20, !tbaa !24
  %t314 = icmp sgt i64 %t312, 0
  br i1 %t314, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l121, !tbaa !24
  br label %bb59
bb56:
  %t316 = load i64, ptr %l19, !tbaa !24
  %t317 = load i64, ptr %l18, !tbaa !24
  %t320 = sub i64 %t316, %t317
  %t321 = load i64, ptr %l20, !tbaa !24
  %t324 = add i64 %t320, %t321
  %t326 = sub i64 %t324, 1
  %t327 = load i64, ptr %l20, !tbaa !24
  %t330 = sdiv i64 %t326, %t327
  store i64 %t330, ptr %l124, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb58
bb58:
  %t332 = load i64, ptr %l124, !tbaa !24
  store i64 %t332, ptr %l121, !tbaa !24
  br label %bb59
bb59:
  %t333 = load i64, ptr %l121, !tbaa !24
  store i64 %t333, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb60
bb60:
  store %olang.scope zeroinitializer, ptr %s15
  %t334 = load i64, ptr %l22, !tbaa !24
  %t335 = load i64, ptr %l21, !tbaa !24
  %t338 = icmp slt i64 %t334, %t335
  %t340 = xor i1 %t338, true
  br i1 %t340, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s15)
  br label %bb73
bb62:
  br label %bb63
bb63:
  %t342 = load i64, ptr %l18, !tbaa !24
  %t343 = load i64, ptr %l22, !tbaa !24
  %t344 = load i64, ptr %l20, !tbaa !24
  %t347 = mul i64 %t343, %t344
  %t350 = add i64 %t342, %t347
  store i64 %t350, ptr %l23, !tbaa !24
  %t352 = load i64, ptr %l23, !tbaa !24
  %t354 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t355 = load ptr, ptr %t354, !tbaa !27
  %t356 = getelementptr i32, ptr %t355, i64 %t352
  %t357 = load i32, ptr %t356, !tbaa !33
  %t359 = icmp eq i32 %t357, 0
  br i1 %t359, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s15)
  br label %bb72
bb65:
  br label %bb66
bb66:
  %t361 = load i64, ptr %l23, !tbaa !24
  %t363 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t364 = load ptr, ptr %t363, !tbaa !27
  %t365 = getelementptr { i64, ptr }, ptr %t364, i64 %t361
  %t366 = load { i64, ptr }, ptr %t365, !tbaa !37
  call void @compiler_2fbuild_2esayErr(ptr %s0, { i64, ptr } %t366)
  br label %bb67
bb67:
  store ptr %a2, ptr %l147, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t369
  %t370 = getelementptr { i64, [3 x i64] }, ptr %t369, i32 0, i32 0
  store i64 0, ptr %t370
  %t371 = load { i64, [3 x i64] }, ptr %t369
  store { i64, [3 x i64] } %t371, ptr %l148
  %t372 = load i64, ptr %l23, !tbaa !24
  %t375 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %l3, i64 %t372)
  store { i64, ptr } %t375, ptr %l151
  br label %bb68
bb68:
  %t376 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t376, ptr %l152, !tbaa !27
  %t377 = load i64, ptr %l23, !tbaa !24
  %t380 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s15, ptr %l3, i64 %t377)
  store { i64, ptr } %t380, ptr %l155
  br label %bb69
bb69:
  %t381 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t382 = extractvalue { i64, ptr } %t381, 0
  %t384 = sub i64 %t382, 1
  %t386 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t387 = load ptr, ptr %t386, !tbaa !27
  %t388 = getelementptr { i64, ptr }, ptr %t387, i64 %t384
  %t389 = load { i64, ptr }, ptr %t388, !tbaa !37
  %t391 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eClangFailed(ptr %s0, ptr %s15, { i64, ptr } %t389)
  store %"compiler/diagmsg:Msg" %t391, ptr %l159
  br label %bb70
bb70:
  %t392 = load ptr, ptr %l147, !tbaa !29
  %t393 = load { i64, [3 x i64] }, ptr %l148
  %t394 = load %"compiler/diagmsg:Msg", ptr %l159
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v2, ptr %s15, ptr %t392, { i64, [3 x i64] } %t393, %"compiler/diagmsg:Msg" %t394)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb72:
  %t396 = load i64, ptr %l22, !tbaa !24
  %t398 = add i64 %t396, 1
  store i64 %t398, ptr %l22, !tbaa !24
  br label %bb60
bb73:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eclangVersion(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/os:Output"
  %l4 = alloca i1
  %l5 = alloca %"std/os:Output"
  %l6 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"std/os:Output"
  %l14 = alloca i32
  %l16 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i64
  %l26 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 29
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t6, ptr %l4
  br label %bb1
bb1:
  %t7 = load i1, ptr %l4, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = ptrtoint ptr %s1 to i64
  store i64 %t8, ptr %l6, !tbaa !24
  %t9 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t9, label %bb4, label %bb5
bb3:
  br label %bb16
bb4:
  %t11 = call ptr @__olang_region_make(ptr %s1)
  %t12 = ptrtoint ptr %t11 to i64
  store i64 %t12, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/build:Config", ptr %t13, i32 0, i32 1
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 1
  %t19 = extractvalue { i64, ptr } %t16, 0
  %t20 = load i64, ptr %l6
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t19)
  call void @olang_textcopy(ptr %t22, ptr %t18, i64 %t19)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  %t26 = load i64, ptr %l6
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = mul i64 2, 16
  %t35 = call ptr @__olang_scope_alloc_zeroed(ptr %s1, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 2, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l12, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %t40, i64 0
  store { i64, ptr } %t33, ptr %t41, !tbaa !37
  %t42 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %t43, i64 1
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %t44, !tbaa !37
  %t45 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t46 = call { i32, %"std/os:Output" } @compiler_2ftarget_2eClangSays(ptr %s1, ptr %s1, ptr %s1, { i64, ptr } %t45, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, i1 true)
  %t47 = extractvalue { i32, %"std/os:Output" } %t46, 1
  %t48 = extractvalue { i32, %"std/os:Output" } %t46, 0
  store i32 %t48, ptr %l14
  %t49 = icmp ne i32 %t48, 0
  br i1 %t49, label %bb7, label %ok.50, !prof !99
ok.50:
  store %"std/os:Output" %t47, ptr %l13
  br label %bb6
bb6:
  %t51 = load %"std/os:Output", ptr %l13
  store %"std/os:Output" %t51, ptr %l5
  br label %bb11
bb7:
  %t52 = load i32, ptr %l14, !tbaa !23
  %t53 = ashr i32 %t52, 16
  %t55 = icmp eq i32 %t53, 1
  store i1 %t55, ptr %l16, !tbaa !21
  %t56 = load i32, ptr %l14, !tbaa !23
  %t57 = ashr i32 %t56, 16
  %t59 = icmp eq i32 %t57, 1
  br i1 %t59, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb10
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t61 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t61, ptr %rv
  br label %ret
bb11:
  %t62 = load %"std/os:Output", ptr %l5
  store %"std/os:Output" %t62, ptr %l1
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l20, !tbaa !29
  %t64 = ptrtoint ptr %v0 to i64
  store i64 %t64, ptr %l21, !tbaa !24
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e29
  br i1 %t65, label %bb12, label %bb13
bb12:
  %t67 = call ptr @__olang_region_make(ptr %v0)
  %t68 = ptrtoint ptr %t67 to i64
  store i64 %t68, ptr %l21, !tbaa !24
  br label %bb13
bb13:
  %t69 = getelementptr %"std/os:Output", ptr %l1, i32 0, i32 1
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t70, 1
  %t73 = extractvalue { i64, ptr } %t70, 0
  %t74 = load i64, ptr %l21
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = call ptr @__olang_scope_alloc(ptr %t75, i64 %t73)
  call void @olang_textcopy(ptr %t76, ptr %t72, i64 %t73)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  %t80 = load i64, ptr %l21
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = extractvalue { i64, ptr } %t78, 0
  %t83 = extractvalue { i64, ptr } %t78, 1
  %t84 = mul i64 %t82, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %t81, i64 %t84)
  call void @llvm.memcpy.p0.p0.i64(ptr %t85, ptr %t83, i64 %t84, i1 false)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  %t88 = load ptr, ptr %l20, !tbaa !29
  %t89 = getelementptr %"compiler/build:Config", ptr %t88, i32 0, i32 29
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  store { i64, ptr } %t90, ptr %l26, !tbaa !27
  %t92 = load ptr, ptr %l20, !tbaa !29
  %t93 = getelementptr %"compiler/build:Config", ptr %t92, i32 0, i32 29
  store { i64, ptr } %t87, ptr %t93, !tbaa !27
  %t94 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e29
  br i1 %t94, label %bb14, label %bb15
bb14:
  %t96 = load { i64, ptr }, ptr %l26
  %t97 = extractvalue { i64, ptr } %t96, 1
  call void @__olang_region_release(ptr %t97)
  store { i64, ptr } zeroinitializer, ptr %l26
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s1)
  br label %bb16
bb16:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/build:Config", ptr %t98, i32 0, i32 29
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t101, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ecompile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { { i64, ptr }, { i64, ptr } }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca { { i64, ptr }, { i64, ptr } }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i64
  %l35 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l66 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l71 = alloca i32
  %l73 = alloca i1
  %l83 = alloca ptr
  %l84 = alloca { i64, [3 x i64] }
  %l88 = alloca { i64, ptr }
  %l89 = alloca %"compiler/diagmsg:Msg"
  %l93 = alloca { i64, ptr }
  %l94 = alloca i32
  %l96 = alloca i1
  %l102 = alloca { i64, ptr }
  %l103 = alloca i1
  %l108 = alloca { i64, ptr }
  %l109 = alloca i32
  %l111 = alloca i1
  %l116 = alloca i1
  %l123 = alloca { i64, ptr }
  %l124 = alloca i1
  %l129 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l136 = alloca i32
  %l138 = alloca i1
  %l146 = alloca { i64, ptr }
  %l147 = alloca { i64, ptr }
  %l148 = alloca { i64, ptr }
  %l149 = alloca %"compiler/diagmsg:Msg"
  %l151 = alloca ptr
  %l155 = alloca { i64, ptr }
  %l156 = alloca { i64, ptr }
  %l161 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l166 = alloca i32
  %l168 = alloca i1
  %l176 = alloca { i64, ptr }
  %l177 = alloca %"compiler/diagmsg:Msg"
  %l179 = alloca ptr
  %l183 = alloca { i64, ptr }
  %l188 = alloca i64
  %l190 = alloca i64
  %l195 = alloca { i64, ptr }
  %l197 = alloca i32
  %l199 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca i32
  %t165 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/build:compiles", ptr %t1, i32 0, i32 0
  %t5 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %v1, ptr %v1, ptr %t3)
  store { i64, ptr } %t5, ptr %l18
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewidth(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l20
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/build:compiles", ptr %t9, i32 0, i32 6
  %t13 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v1, ptr %s0, ptr %t11)
  store { i64, ptr } %t13, ptr %l23
  br label %bb3
bb3:
  %t14 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t15 = load i64, ptr %l20, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t17 = call { { i64, ptr }, { i64, ptr } } @compiler_2fbuild_2eRunAll(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t14, i64 %t15, { i64, ptr } %t16)
  store { { i64, ptr }, { i64, ptr } } %t17, ptr %l24
  br label %bb4
bb4:
  %t18 = load { { i64, ptr }, { i64, ptr } }, ptr %l24
  store { { i64, ptr }, { i64, ptr } } %t18, ptr %l3
  %t19 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l3, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l25, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  store i64 %t22, ptr %l26, !tbaa !24
  %t23 = load i64, ptr %l26, !tbaa !24
  %t24 = mul i64 %t23, 4
  %t25 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l27, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l26, !tbaa !24
  %t33 = mul i64 %t32, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %t31, i64 %t33, i1 false)
  %t34 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t34, ptr %l4, !tbaa !27
  %t35 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l3, i32 0, i32 1
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l28, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l29, !tbaa !24
  %t39 = load i64, ptr %l29, !tbaa !24
  %t40 = mul i64 %t39, 16
  %t41 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t40)
  %t42 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  store { i64, ptr } %t43, ptr %l30, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = load i64, ptr %l29, !tbaa !24
  %t49 = mul i64 %t48, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t45, ptr %t47, i64 %t49, i1 false)
  %t50 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t50, ptr %l5, !tbaa !27
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l31, !tbaa !29
  %t52 = load ptr, ptr %l31, !tbaa !29
  %t53 = getelementptr %"compiler/build:Config", ptr %t52, i32 0, i32 25
  %t54 = load i64, ptr %t53, !tbaa !24
  store i64 %t54, ptr %l32, !tbaa !24
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr %"compiler/build:compiles", ptr %t55, i32 0, i32 0
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H2ab12f44ffbd18d099d1f5a69642975a(ptr %v1, ptr %t57)
  store i64 %t59, ptr %l35
  br label %bb5
bb5:
  %t60 = load i64, ptr %l32, !tbaa !24
  %t61 = load i64, ptr %l35, !tbaa !24
  %t62 = add i64 %t60, %t61
  %t64 = load ptr, ptr %l31, !tbaa !29
  %t65 = getelementptr %"compiler/build:Config", ptr %t64, i32 0, i32 25
  store i64 %t62, ptr %t65, !tbaa !24
  store i1 false, ptr %l6, !tbaa !21
  store i64 0, ptr %l7, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l8, !tbaa !24
  %t71 = load i64, ptr %l7, !tbaa !24
  %t74 = icmp sgt i64 %t70, %t71
  br i1 %t74, label %bb6, label %bb7
bb6:
  %t76 = load i64, ptr %l9, !tbaa !24
  %t78 = icmp sgt i64 %t76, 0
  br i1 %t78, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb11
bb8:
  %t80 = load i64, ptr %l8, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = sub i64 %t80, %t81
  %t85 = load i64, ptr %l9, !tbaa !24
  %t88 = add i64 %t84, %t85
  %t90 = sub i64 %t88, 1
  %t91 = load i64, ptr %l9, !tbaa !24
  %t94 = sdiv i64 %t90, %t91
  store i64 %t94, ptr %l45, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb10
bb10:
  %t96 = load i64, ptr %l45, !tbaa !24
  store i64 %t96, ptr %l42, !tbaa !24
  br label %bb11
bb11:
  %t97 = load i64, ptr %l42, !tbaa !24
  store i64 %t97, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t98 = load i64, ptr %l11, !tbaa !24
  %t99 = load i64, ptr %l10, !tbaa !24
  %t102 = icmp slt i64 %t98, %t99
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb99
bb14:
  br label %bb15
bb15:
  %t106 = load i64, ptr %l7, !tbaa !24
  %t107 = load i64, ptr %l11, !tbaa !24
  %t108 = load i64, ptr %l9, !tbaa !24
  %t111 = mul i64 %t107, %t108
  %t114 = add i64 %t106, %t111
  store i64 %t114, ptr %l12, !tbaa !24
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr %"compiler/build:compiles", ptr %t116, i32 0, i32 4
  %t119 = load i64, ptr %l12, !tbaa !24
  %t122 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t118, i64 %t119)
  store { i64, ptr } %t122, ptr %l66
  br label %bb16
bb16:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/build:compiles", ptr %t123, i32 0, i32 3
  %t126 = load i64, ptr %l12, !tbaa !24
  %t129 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t125, i64 %t126)
  store { i64, ptr } %t129, ptr %l70
  br label %bb17
bb17:
  %t130 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t132 = call i32 @std_2fos_2eRename(ptr %v1, ptr %v1, { i64, ptr } %t130, { i64, ptr } %t131)
  store i32 %t132, ptr %l71
  %t133 = icmp ne i32 %t132, 0
  br i1 %t133, label %bb19, label %ok.134, !prof !99
ok.134:
  br label %bb18
bb18:
  br label %bb23
bb19:
  %t135 = load i32, ptr %l71, !tbaa !23
  %t136 = ashr i32 %t135, 16
  %t138 = icmp eq i32 %t136, 1
  store i1 %t138, ptr %l73, !tbaa !21
  %t139 = load i32, ptr %l71, !tbaa !23
  %t140 = ashr i32 %t139, 16
  %t142 = icmp eq i32 %t140, 1
  br i1 %t142, label %bb20, label %bb21
bb20:
  call void @__olang_errpay_pop()
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t144 = load i64, ptr %l12, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i32, ptr %t147, i64 %t144
  %t149 = load i32, ptr %t148, !tbaa !33
  %t151 = icmp ne i32 %t149, 0
  br i1 %t151, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t153 = load i64, ptr %l12, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr { i64, ptr }, ptr %t156, i64 %t153
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !37
  call void @compiler_2fbuild_2esayErr(ptr %s0, { i64, ptr } %t158)
  br label %bb26
bb25:
  br label %bb52
bb26:
  %t160 = load i1, ptr %l6, !tbaa !21
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t164 = load ptr, ptr %l2, !tbaa !29
  store ptr %t164, ptr %l83, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t165
  %t166 = getelementptr { i64, [3 x i64] }, ptr %t165, i32 0, i32 0
  store i64 0, ptr %t166
  %t167 = load { i64, [3 x i64] }, ptr %t165
  store { i64, [3 x i64] } %t167, ptr %l84
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr %"compiler/build:compiles", ptr %t168, i32 0, i32 3
  %t171 = load i64, ptr %l12, !tbaa !24
  %t174 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t170, i64 %t171)
  store { i64, ptr } %t174, ptr %l88
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t175 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t176 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eClangFailed(ptr %v1, ptr %s5, { i64, ptr } %t175)
  store %"compiler/diagmsg:Msg" %t176, ptr %l89
  br label %bb30
bb30:
  %t177 = load ptr, ptr %l83, !tbaa !29
  %t178 = load { i64, [3 x i64] }, ptr %l84
  %t179 = load %"compiler/diagmsg:Msg", ptr %l89
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v2, ptr %s5, ptr %t177, { i64, [3 x i64] } %t178, %"compiler/diagmsg:Msg" %t179)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s5)
  br label %bb32
bb32:
  store i1 true, ptr %l6, !tbaa !21
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = getelementptr %"compiler/build:compiles", ptr %t180, i32 0, i32 1
  %t183 = load i64, ptr %l12, !tbaa !24
  %t186 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t182, i64 %t183)
  store { i64, ptr } %t186, ptr %l93
  br label %bb33
bb33:
  %t187 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t188 = call i32 @std_2fos_2eRemove(ptr %v1, { i64, ptr } %t187)
  store i32 %t188, ptr %l94
  %t189 = icmp ne i32 %t188, 0
  br i1 %t189, label %bb35, label %ok.190, !prof !99
ok.190:
  br label %bb34
bb34:
  br label %bb39
bb35:
  %t191 = load i32, ptr %l94, !tbaa !23
  %t192 = ashr i32 %t191, 16
  %t194 = icmp eq i32 %t192, 1
  store i1 %t194, ptr %l96, !tbaa !21
  %t195 = load i32, ptr %l94, !tbaa !23
  %t196 = ashr i32 %t195, 16
  %t198 = icmp eq i32 %t196, 1
  br i1 %t198, label %bb36, label %bb37
bb36:
  call void @__olang_errpay_pop()
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t202 = getelementptr %"compiler/build:compiles", ptr %t200, i32 0, i32 5
  %t203 = load i64, ptr %l12, !tbaa !24
  %t206 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t202, i64 %t203)
  store { i64, ptr } %t206, ptr %l102
  br label %bb40
bb40:
  %t207 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t208 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s4, { i64, ptr } %t207, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t208, ptr %l103
  br label %bb41
bb41:
  %t209 = load i1, ptr %l103, !tbaa !21
  %t210 = xor i1 %t209, true
  br i1 %t210, label %bb42, label %bb43
bb42:
  %t212 = load ptr, ptr %l1, !tbaa !29
  %t214 = getelementptr %"compiler/build:compiles", ptr %t212, i32 0, i32 5
  %t215 = load i64, ptr %l12, !tbaa !24
  %t218 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t214, i64 %t215)
  store { i64, ptr } %t218, ptr %l108
  br label %bb44
bb43:
  br label %bb51
bb44:
  %t219 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t220 = call i32 @std_2fos_2eRemove(ptr %v1, { i64, ptr } %t219)
  store i32 %t220, ptr %l109
  %t221 = icmp ne i32 %t220, 0
  br i1 %t221, label %bb46, label %ok.222, !prof !99
ok.222:
  br label %bb45
bb45:
  br label %bb50
bb46:
  %t223 = load i32, ptr %l109, !tbaa !23
  %t224 = ashr i32 %t223, 16
  %t226 = icmp eq i32 %t224, 1
  store i1 %t226, ptr %l111, !tbaa !21
  %t227 = load i32, ptr %l109, !tbaa !23
  %t228 = ashr i32 %t227, 16
  %t230 = icmp eq i32 %t228, 1
  br i1 %t230, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb98
bb52:
  %t232 = load i64, ptr %l12, !tbaa !24
  %t234 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = getelementptr { i64, ptr }, ptr %t235, i64 %t232
  %t237 = load { i64, ptr }, ptr %t236, !tbaa !37
  %t239 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t237, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t239, ptr %l116
  br label %bb53
bb53:
  %t240 = load i1, ptr %l116, !tbaa !21
  %t241 = xor i1 %t240, true
  br i1 %t241, label %bb54, label %bb55
bb54:
  %t243 = load i64, ptr %l12, !tbaa !24
  %t245 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr { i64, ptr }, ptr %t246, i64 %t243
  %t248 = load { i64, ptr }, ptr %t247, !tbaa !37
  call void @compiler_2fbuild_2esayErr(ptr %s0, { i64, ptr } %t248)
  br label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb57
bb57:
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t252 = getelementptr %"compiler/build:compiles", ptr %t250, i32 0, i32 5
  %t253 = load i64, ptr %l12, !tbaa !24
  %t256 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t252, i64 %t253)
  store { i64, ptr } %t256, ptr %l123
  br label %bb58
bb58:
  %t257 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t258 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t257, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t258, ptr %l124
  br label %bb59
bb59:
  %t259 = load i1, ptr %l124, !tbaa !21
  %t260 = xor i1 %t259, true
  br i1 %t260, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s10
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t264 = getelementptr %"compiler/build:compiles", ptr %t262, i32 0, i32 5
  %t265 = load i64, ptr %l12, !tbaa !24
  %t268 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t264, i64 %t265)
  store { i64, ptr } %t268, ptr %l129
  br label %bb62
bb61:
  br label %bb81
bb62:
  %t269 = load ptr, ptr %l1, !tbaa !29
  %t271 = getelementptr %"compiler/build:compiles", ptr %t269, i32 0, i32 2
  %t272 = load i64, ptr %l12, !tbaa !24
  %t275 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t271, i64 %t272)
  store { i64, ptr } %t275, ptr %l133
  br label %bb63
bb63:
  %t276 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t277 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v1, ptr %s10, { i64, ptr } %t276)
  store { i64, ptr } %t277, ptr %l134
  br label %bb64
bb64:
  %t278 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t278, 0
  %t280 = extractvalue { i64, ptr } %t278, 1
  %t281 = mul i64 %t279, 1
  %t282 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t281)
  call void @llvm.memcpy.p0.p0.i64(ptr %t282, ptr %t280, i64 %t281, i1 false)
  %t283 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t282, 1
  %t285 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t287 = call i32 @std_2fos_2eRename(ptr %v1, ptr %s10, { i64, ptr } %t285, { i64, ptr } %t284)
  store i32 %t287, ptr %l136
  %t288 = icmp ne i32 %t287, 0
  br i1 %t288, label %bb66, label %ok.289, !prof !99
ok.289:
  br label %bb65
bb65:
  br label %bb77
bb66:
  %t290 = load i32, ptr %l136, !tbaa !23
  %t291 = ashr i32 %t290, 16
  %t293 = icmp eq i32 %t291, 1
  store i1 %t293, ptr %l138, !tbaa !21
  %t294 = load i32, ptr %l136, !tbaa !23
  %t295 = ashr i32 %t294, 16
  %t297 = icmp eq i32 %t295, 1
  br i1 %t297, label %bb67, label %bb68
bb67:
  call void @__olang_errpay_pop()
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t299 = load i1, ptr %l6, !tbaa !21
  %t301 = xor i1 %t299, true
  br i1 %t301, label %bb70, label %bb71
bb70:
  store %olang.scope zeroinitializer, ptr %s12
  %t303 = load ptr, ptr %l1, !tbaa !29
  %t305 = getelementptr %"compiler/build:compiles", ptr %t303, i32 0, i32 2
  %t306 = load i64, ptr %l12, !tbaa !24
  %t309 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t305, i64 %t306)
  store { i64, ptr } %t309, ptr %l146
  br label %bb72
bb71:
  br label %bb76
bb72:
  %t310 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t311 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v1, ptr %s12, { i64, ptr } %t310)
  store { i64, ptr } %t311, ptr %l147
  br label %bb73
bb73:
  %t312 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t312, 0
  %t314 = extractvalue { i64, ptr } %t312, 1
  %t315 = mul i64 %t313, 1
  %t316 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t315)
  call void @llvm.memcpy.p0.p0.i64(ptr %t316, ptr %t314, i64 %t315, i1 false)
  %t317 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t316, 1
  store { i64, ptr } %t318, ptr %l148, !tbaa !27
  %t319 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %s12)
  store %"compiler/diagmsg:Msg" %t319, ptr %l149
  br label %bb74
bb74:
  %t320 = load ptr, ptr %l2, !tbaa !29
  %t321 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t322 = load %"compiler/diagmsg:Msg", ptr %l149
  call void @compiler_2fbuild_2efileFatal(ptr %s12, ptr %s12, ptr %v2, { i64, ptr } %t321, %"compiler/diagmsg:Msg" %t322, ptr %t320)
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s12)
  br label %bb76
bb76:
  store i1 true, ptr %l6, !tbaa !21
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s2)
  br label %bb98
bb77:
  %t324 = load ptr, ptr %l0, !tbaa !29
  store ptr %t324, ptr %l151, !tbaa !29
  %t325 = load ptr, ptr %l1, !tbaa !29
  %t327 = getelementptr %"compiler/build:compiles", ptr %t325, i32 0, i32 2
  %t328 = load i64, ptr %l12, !tbaa !24
  %t331 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t327, i64 %t328)
  store { i64, ptr } %t331, ptr %l155
  br label %bb78
bb78:
  %t332 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t333 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v1, ptr %s10, { i64, ptr } %t332)
  store { i64, ptr } %t333, ptr %l156
  br label %bb79
bb79:
  %t334 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t335 = extractvalue { i64, ptr } %t334, 0
  %t336 = extractvalue { i64, ptr } %t334, 1
  %t337 = mul i64 %t335, 1
  %t338 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t337)
  call void @llvm.memcpy.p0.p0.i64(ptr %t338, ptr %t336, i64 %t337, i1 false)
  %t339 = insertvalue { i64, ptr } undef, i64 %t335, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t338, 1
  %t341 = load ptr, ptr %l151, !tbaa !29
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ekeep(ptr %v0, ptr %s10, ptr %t341, { i64, ptr } %t340)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s10)
  br label %bb81
bb81:
  %t343 = load ptr, ptr %l1, !tbaa !29
  %t345 = getelementptr %"compiler/build:compiles", ptr %t343, i32 0, i32 1
  %t346 = load i64, ptr %l12, !tbaa !24
  %t349 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t345, i64 %t346)
  store { i64, ptr } %t349, ptr %l161
  br label %bb82
bb82:
  %t350 = load ptr, ptr %l1, !tbaa !29
  %t352 = getelementptr %"compiler/build:compiles", ptr %t350, i32 0, i32 2
  %t353 = load i64, ptr %l12, !tbaa !24
  %t356 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t352, i64 %t353)
  store { i64, ptr } %t356, ptr %l165
  br label %bb83
bb83:
  %t357 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t358 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t359 = call i32 @std_2fos_2eRename(ptr %v1, ptr %v1, { i64, ptr } %t357, { i64, ptr } %t358)
  store i32 %t359, ptr %l166
  %t360 = icmp ne i32 %t359, 0
  br i1 %t360, label %bb85, label %ok.361, !prof !99
ok.361:
  br label %bb84
bb84:
  br label %bb95
bb85:
  %t362 = load i32, ptr %l166, !tbaa !23
  %t363 = ashr i32 %t362, 16
  %t365 = icmp eq i32 %t363, 1
  store i1 %t365, ptr %l168, !tbaa !21
  %t366 = load i32, ptr %l166, !tbaa !23
  %t367 = ashr i32 %t366, 16
  %t369 = icmp eq i32 %t367, 1
  br i1 %t369, label %bb86, label %bb87
bb86:
  call void @__olang_errpay_pop()
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t371 = load i1, ptr %l6, !tbaa !21
  %t373 = xor i1 %t371, true
  br i1 %t373, label %bb89, label %bb90
bb89:
  store %olang.scope zeroinitializer, ptr %s14
  %t375 = load ptr, ptr %l1, !tbaa !29
  %t377 = getelementptr %"compiler/build:compiles", ptr %t375, i32 0, i32 2
  %t378 = load i64, ptr %l12, !tbaa !24
  %t381 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t377, i64 %t378)
  store { i64, ptr } %t381, ptr %l176
  br label %bb91
bb90:
  br label %bb94
bb91:
  %t382 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %s14)
  store %"compiler/diagmsg:Msg" %t382, ptr %l177
  br label %bb92
bb92:
  %t383 = load ptr, ptr %l2, !tbaa !29
  %t384 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t385 = load %"compiler/diagmsg:Msg", ptr %l177
  call void @compiler_2fbuild_2efileFatal(ptr %v1, ptr %s14, ptr %v2, { i64, ptr } %t384, %"compiler/diagmsg:Msg" %t385, ptr %t383)
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s14)
  br label %bb94
bb94:
  store i1 true, ptr %l6, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb98
bb95:
  %t387 = load ptr, ptr %l0, !tbaa !29
  store ptr %t387, ptr %l179, !tbaa !29
  %t388 = load ptr, ptr %l1, !tbaa !29
  %t390 = getelementptr %"compiler/build:compiles", ptr %t388, i32 0, i32 2
  %t391 = load i64, ptr %l12, !tbaa !24
  %t394 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t390, i64 %t391)
  store { i64, ptr } %t394, ptr %l183
  br label %bb96
bb96:
  %t395 = load ptr, ptr %l179, !tbaa !29
  %t396 = load { i64, ptr }, ptr %l183, !tbaa !27
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ekeep(ptr %v0, ptr %v1, ptr %t395, { i64, ptr } %t396)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s2)
  br label %bb98
bb98:
  %t397 = load i64, ptr %l11, !tbaa !24
  %t399 = add i64 %t397, 1
  store i64 %t399, ptr %l11, !tbaa !24
  br label %bb12
bb99:
  %t401 = load ptr, ptr %l1, !tbaa !29
  %t403 = getelementptr %"compiler/build:compiles", ptr %t401, i32 0, i32 7
  store ptr %t403, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb100
bb100:
  %t405 = load i64, ptr %l14, !tbaa !24
  store i64 %t405, ptr %l188, !tbaa !24
  %t406 = load ptr, ptr %l13, !tbaa !29
  %t408 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t406)
  store i64 %t408, ptr %l190
  br label %bb101
bb101:
  %t409 = load i64, ptr %l188, !tbaa !24
  %t410 = load i64, ptr %l190, !tbaa !24
  %t411 = icmp slt i64 %t409, %t410
  %t413 = xor i1 %t411, true
  br i1 %t413, label %bb102, label %bb103
bb102:
  br label %bb113
bb103:
  br label %bb104
bb104:
  %t415 = load ptr, ptr %l13, !tbaa !29
  %t416 = load i64, ptr %l14, !tbaa !24
  %t419 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t415, i64 %t416)
  store { i64, ptr } %t419, ptr %l195
  br label %bb105
bb105:
  %t420 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t423 = call i32 @std_2fos_2eRemoveAll(ptr %v1, { i64, ptr } %t420)
  store i32 %t423, ptr %l197
  %t424 = icmp ne i32 %t423, 0
  br i1 %t424, label %bb107, label %ok.425, !prof !99
ok.425:
  br label %bb106
bb106:
  br label %bb111
bb107:
  %t426 = load i32, ptr %l197, !tbaa !23
  %t427 = ashr i32 %t426, 16
  %t429 = icmp eq i32 %t427, 1
  store i1 %t429, ptr %l199, !tbaa !21
  %t430 = load i32, ptr %l197, !tbaa !23
  %t431 = ashr i32 %t430, 16
  %t433 = icmp eq i32 %t431, 1
  br i1 %t433, label %bb108, label %bb109
bb108:
  call void @__olang_errpay_pop()
  br label %bb109
bb109:
  br label %bb110
bb110:
  br label %bb111
bb111:
  br label %bb112
bb112:
  %t435 = load i64, ptr %l14, !tbaa !24
  %t437 = add i64 %t435, 1
  store i64 %t437, ptr %l14, !tbaa !24
  br label %bb100
bb113:
  %t439 = load i1, ptr %l6, !tbaa !21
  br i1 %t439, label %bb114, label %bb115
bb114:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb115:
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eensureDir(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l6 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"compiler/diagmsg:Msg"
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %t4)
  store i32 %t6, ptr %l4
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  br label %bb1
bb1:
  br label %bb8
bb2:
  %t9 = load i32, ptr %l4, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l6, !tbaa !21
  %t13 = load i32, ptr %l4, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/build:Config", ptr %t18, i32 0, i32 0
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l10, !tbaa !27
  %t22 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %s1)
  store %"compiler/diagmsg:Msg" %t22, ptr %l11
  br label %bb6
bb6:
  %t24 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t25 = load %"compiler/diagmsg:Msg", ptr %l11
  call void @compiler_2fbuild_2efileFatal(ptr %v0, ptr %s1, ptr %v1, { i64, ptr } %t24, %"compiler/diagmsg:Msg" %t25, ptr %a1)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  store i32 65536, ptr %rv
  br label %ret
bb8:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ekeep(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l6 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l13 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l24 = alloca i1
  %l27 = alloca i32
  %l29 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca i32
  %l37 = alloca i32
  %l39 = alloca i1
  %l44 = alloca i32
  %l46 = alloca i1
  %l50 = alloca i32
  %l52 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 28
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load i1, ptr %l6, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/build:Config", ptr %t8, i32 0, i32 28
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l8, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t12, ptr %l9, !tbaa !27
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/build:Config", ptr %t13, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = add i64 %t18, 1
  store i64 %t20, ptr %l13, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t21, 0
  store i64 %t24, ptr %l16, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l17, !tbaa !24
  %t27 = load i64, ptr %l13, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = load i64, ptr %l13, !tbaa !24
  %t31 = load i64, ptr %l16, !tbaa !24
  %t32 = icmp sle i64 %t30, %t31
  br i1 %t32, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_3ba7d2bc4f70132e_88e22ea564bfc3e2)
  unreachable
bb7:
  %t34 = load i64, ptr %l16, !tbaa !24
  %t35 = load i64, ptr %l17, !tbaa !24
  %t36 = icmp sle i64 %t34, %t35
  br i1 %t36, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3ba7d2bc4f70132e_88e22ea564bfc3e2)
  unreachable
bb9:
  %t38 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l13, !tbaa !24
  %t41 = load i64, ptr %l16, !tbaa !24
  %t42 = getelementptr i8, ptr %t39, i64 %t40
  %t43 = sub i64 %t41, %t40
  %t44 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  %t46 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t53 = extractvalue { i64, ptr } %t45, 1
  %t54 = extractvalue { i64, ptr } %t45, 0
  %t55 = add i64 %t51, %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t47, i64 %t48)
  %t57 = getelementptr i8, ptr %t56, i64 %t48
  call void @olang_textcopy(ptr %t57, ptr %t49, i64 %t50)
  %t58 = getelementptr i8, ptr %t57, i64 %t50
  call void @olang_textcopy(ptr %t58, ptr %t53, i64 %t54)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t56, 1
  store { i64, ptr } %t60, ptr %l2, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t64 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t62)
  store i1 %t64, ptr %l24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_3ba7d2bc4f70132e_88e22ea564bfc3e2)
  unreachable
bb11:
  %t65 = load i1, ptr %l24, !tbaa !21
  br i1 %t65, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/build:Config", ptr %t66, i32 0, i32 28
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t71 = call i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %t69)
  store i32 %t71, ptr %l27
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb16, label %ok.73, !prof !99
ok.73:
  br label %bb15
bb15:
  br label %bb20
bb16:
  %t74 = load i32, ptr %l27, !tbaa !23
  %t75 = ashr i32 %t74, 16
  %t77 = icmp eq i32 %t75, 1
  store i1 %t77, ptr %l29, !tbaa !21
  %t78 = load i32, ptr %l27, !tbaa !23
  %t79 = ashr i32 %t78, 16
  %t81 = icmp eq i32 %t79, 1
  br i1 %t81, label %bb17, label %bb18
bb17:
  call void @__olang_errpay_pop()
  br label %bb18
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb20:
  %t83 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t83, ptr %l32, !tbaa !27
  %t84 = call i32 @getpid()
  store i32 %t84, ptr %l33
  br label %bb21
bb21:
  %t85 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t90 = add i64 %t87, %t89
  %t91 = load i32, ptr %l33, !tbaa !23
  %t92 = sext i32 %t91 to i64
  %t93 = call i64 @__olang_fmt_i64(ptr null, i64 %t92)
  %t94 = add i64 %t90, %t93
  %t95 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t97 = add i64 %t94, %t96
  %t98 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t97)
  call void @olang_textcopy(ptr %t98, ptr %t86, i64 %t87)
  %t99 = getelementptr i8, ptr %t98, i64 %t87
  call void @olang_textcopy(ptr %t99, ptr %t88, i64 %t89)
  %t100 = getelementptr i8, ptr %t99, i64 %t89
  %t101 = call i64 @__olang_fmt_i64(ptr %t100, i64 %t92)
  %t102 = getelementptr i8, ptr %t100, i64 %t93
  call void @olang_textcopy(ptr %t102, ptr %t95, i64 %t96)
  %t103 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t98, 1
  store { i64, ptr } %t104, ptr %l3, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t110 = call i32 @std_2fos_2eLink(ptr %v1, ptr %s0, { i64, ptr } %t106, { i64, ptr } %t107)
  store i32 %t110, ptr %l37
  %t111 = icmp ne i32 %t110, 0
  br i1 %t111, label %bb23, label %ok.112, !prof !99
ok.112:
  br label %bb22
bb22:
  br label %bb27
bb23:
  %t113 = load i32, ptr %l37, !tbaa !23
  %t114 = ashr i32 %t113, 16
  %t116 = icmp eq i32 %t114, 1
  store i1 %t116, ptr %l39, !tbaa !21
  %t117 = load i32, ptr %l37, !tbaa !23
  %t118 = ashr i32 %t117, 16
  %t120 = icmp eq i32 %t118, 1
  br i1 %t120, label %bb24, label %bb25
bb24:
  call void @__olang_errpay_pop()
  br label %bb25
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb27:
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t126 = call i32 @std_2fos_2eRename(ptr %s0, ptr %s0, { i64, ptr } %t122, { i64, ptr } %t123)
  store i32 %t126, ptr %l44
  %t127 = icmp ne i32 %t126, 0
  br i1 %t127, label %bb29, label %ok.128, !prof !99
ok.128:
  br label %bb28
bb28:
  br label %bb39
bb29:
  %t129 = load i32, ptr %l44, !tbaa !23
  %t130 = ashr i32 %t129, 16
  %t132 = icmp eq i32 %t130, 1
  store i1 %t132, ptr %l46, !tbaa !21
  %t133 = load i32, ptr %l44, !tbaa !23
  %t134 = ashr i32 %t133, 16
  %t136 = icmp eq i32 %t134, 1
  br i1 %t136, label %bb30, label %bb31
bb30:
  call void @__olang_errpay_pop()
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t138 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t140 = call i32 @std_2fos_2eRemove(ptr %s0, { i64, ptr } %t138)
  store i32 %t140, ptr %l50
  %t141 = icmp ne i32 %t140, 0
  br i1 %t141, label %bb34, label %ok.142, !prof !99
ok.142:
  br label %bb33
bb33:
  br label %bb38
bb34:
  %t143 = load i32, ptr %l50, !tbaa !23
  %t144 = ashr i32 %t143, 16
  %t146 = icmp eq i32 %t144, 1
  store i1 %t146, ptr %l52, !tbaa !21
  %t147 = load i32, ptr %l50, !tbaa !23
  %t148 = ashr i32 %t147, 16
  %t150 = icmp eq i32 %t148, 1
  br i1 %t150, label %bb35, label %bb36
bb35:
  call void @__olang_errpay_pop()
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2elibrary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca [2 x { i64, ptr }]
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l13 = alloca i1
  %l15 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l47 = alloca i1
  %l53 = alloca i32
  %l55 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca { i64, [3 x i64] }
  %l59 = alloca %"compiler/diagmsg:Msg"
  %l61 = alloca i32
  %l66 = alloca i32
  %l68 = alloca i1
  %l71 = alloca { i64, ptr }
  %l72 = alloca %"compiler/diagmsg:Msg"
  %l75 = alloca i32
  %l76 = alloca ptr
  %l77 = alloca i64
  %l82 = alloca { i64, ptr }
  %l87 = alloca ptr
  %l89 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i32
  %t144 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @compiler_2fbuild_2eLibName(ptr %v3, ptr %s0, { i64, ptr } %a3)
  store { i64, ptr } %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/build:Config", ptr %t5, i32 0, i32 23
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t8, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t10, ptr %l13
  br label %bb2
bb2:
  %t11 = load i1, ptr %l13, !tbaa !21
  %t12 = xor i1 %t11, true
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/build:Config", ptr %t14, i32 0, i32 23
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 1
  %t20 = extractvalue { i64, ptr } %t17, 0
  %t21 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t20)
  call void @olang_textcopy(ptr %t21, ptr %t19, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l15, !tbaa !27
  br label %bb7
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/build:Config", ptr %t25, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l20, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t29, ptr %l21, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2emodeSuffix(ptr %v0, ptr %s0, ptr %t30)
  store { i64, ptr } %t32, ptr %l23
  br label %bb5
bb5:
  %t33 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t36 = extractvalue { i64, ptr } %t33, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l26, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t44 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t40, { i64, ptr } %t42, { i64, ptr } %t43)
  store { i64, ptr } %t44, ptr %l28
  br label %bb6
bb6:
  %t45 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t49 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t52 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t55 = add i64 %t51, %t54
  %t57 = extractvalue { i64, ptr } %t45, 1
  %t58 = extractvalue { i64, ptr } %t45, 0
  %t59 = add i64 %t55, %t58
  %t60 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t61 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t62 = add i64 %t59, %t61
  %t63 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t62)
  call void @olang_textcopy(ptr %t63, ptr %t47, i64 %t48)
  %t64 = getelementptr i8, ptr %t63, i64 %t48
  call void @olang_textcopy(ptr %t64, ptr %t49, i64 %t50)
  %t65 = getelementptr i8, ptr %t64, i64 %t50
  call void @olang_textcopy(ptr %t65, ptr %t53, i64 %t54)
  %t66 = getelementptr i8, ptr %t65, i64 %t54
  call void @olang_textcopy(ptr %t66, ptr %t57, i64 %t58)
  %t67 = getelementptr i8, ptr %t66, i64 %t58
  call void @olang_textcopy(ptr %t67, ptr %t60, i64 %t61)
  %t68 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t63, 1
  store { i64, ptr } %t69, ptr %l15, !tbaa !27
  br label %bb7
bb7:
  %t71 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t71, ptr %l6, !tbaa !27
  %t72 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t74 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %s0, ptr %s0, { i64, ptr } %t72)
  store { i64, ptr } %t74, ptr %l32
  br label %bb8
bb8:
  %t75 = ptrtoint ptr %s0 to i64
  store i64 %t75, ptr %l33, !tbaa !24
  %t76 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t76, label %bb9, label %bb10
bb9:
  %t78 = call ptr @__olang_region_make(ptr %s0)
  %t79 = ptrtoint ptr %t78 to i64
  store i64 %t79, ptr %l33, !tbaa !24
  br label %bb10
bb10:
  %t80 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = extractvalue { i64, ptr } %t80, 0
  %t84 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t86 = add i64 %t83, %t85
  %t87 = load i64, ptr %l33
  %t88 = inttoptr i64 %t87 to ptr
  %t89 = call ptr @__olang_scope_alloc(ptr %t88, i64 %t86)
  call void @olang_textcopy(ptr %t89, ptr %t82, i64 %t83)
  %t90 = getelementptr i8, ptr %t89, i64 %t83
  call void @olang_textcopy(ptr %t90, ptr %t84, i64 %t85)
  %t91 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t89, 1
  %t94 = load i64, ptr %l33
  %t95 = inttoptr i64 %t94 to ptr
  %t96 = extractvalue { i64, ptr } %t92, 0
  %t97 = extractvalue { i64, ptr } %t92, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %t95, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t102 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t103 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t102, 0
  %t105 = insertvalue [2 x { i64, ptr }] %t103, { i64, ptr } %t101, 1
  store [2 x { i64, ptr }] %t105, ptr %l7
  %t108 = insertvalue { i64, ptr } undef, i64 2, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %l7, 1
  %t111 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t109)
  store { i64, ptr } %t111, ptr %l41
  br label %bb11
bb11:
  %t112 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t112, ptr %l8, !tbaa !27
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l42, !tbaa !29
  store ptr %a2, ptr %l43, !tbaa !29
  %t115 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t115, ptr %l44, !tbaa !27
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr %"compiler/build:Program", ptr %t116, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t121 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t119, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t121, ptr %l47
  br label %bb12
bb12:
  %t122 = load i1, ptr %l47, !tbaa !21
  %t123 = xor i1 %t122, true
  %t124 = load ptr, ptr %l1, !tbaa !29
  %t126 = getelementptr %"compiler/build:Program", ptr %t124, i32 0, i32 3
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr %"compiler/build:Program", ptr %t127, i32 0, i32 4
  %t130 = load ptr, ptr %l42, !tbaa !29
  %t131 = load ptr, ptr %l43, !tbaa !29
  %t132 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t136 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eLink(ptr %v0, ptr %v2, ptr %s0, ptr %v1, ptr %v1, ptr %t130, ptr %t131, { i64, ptr } %t132, i1 %t123, ptr %t126, ptr %t129)
  store i32 %t136, ptr %l53
  %t137 = icmp ne i32 %t136, 0
  br i1 %t137, label %bb14, label %ok.138, !prof !99
ok.138:
  br label %bb13
bb13:
  br label %bb19
bb14:
  %t139 = load i32, ptr %l53, !tbaa !23
  %t140 = ashr i32 %t139, 16
  %t142 = icmp eq i32 %t140, 1
  store i1 %t142, ptr %l55, !tbaa !21
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t143 = load ptr, ptr %l4, !tbaa !29
  store ptr %t143, ptr %l56, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t144
  %t145 = getelementptr { i64, [3 x i64] }, ptr %t144, i32 0, i32 0
  store i64 0, ptr %t145
  %t146 = load { i64, [3 x i64] }, ptr %t144
  store { i64, [3 x i64] } %t146, ptr %l57
  %t147 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t149 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %s0, ptr %s4, { i64, ptr } %t147)
  store %"compiler/diagmsg:Msg" %t149, ptr %l59
  br label %bb16
bb16:
  %t150 = load ptr, ptr %l56, !tbaa !29
  %t151 = load { i64, [3 x i64] }, ptr %l57
  %t152 = load %"compiler/diagmsg:Msg", ptr %l59
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v4, ptr %s4, ptr %t150, { i64, [3 x i64] } %t151, %"compiler/diagmsg:Msg" %t152)
  br label %bb17
bb17:
  %t153 = load ptr, ptr %l4, !tbaa !29
  %t155 = call i32 @compiler_2fbuild_2efinish(ptr %v4, ptr %t153)
  store i32 %t155, ptr %l61
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t156 = load i32, ptr %l61, !tbaa !23
  store i32 %t156, ptr %rv
  br label %ret
bb19:
  call void @compiler_2fbuild_2ePhase(ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d39, i32 0, i32 1) })
  br label %bb20
bb20:
  %t157 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t158 = load ptr, ptr %l1, !tbaa !29
  %t160 = getelementptr %"compiler/build:Program", ptr %t158, i32 0, i32 5
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  %t165 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %v1, { i64, ptr } %t157, { i64, ptr } %t161)
  store i32 %t165, ptr %l66
  %t166 = icmp ne i32 %t165, 0
  br i1 %t166, label %bb22, label %ok.167, !prof !99
ok.167:
  br label %bb21
bb21:
  br label %bb29
bb22:
  %t168 = load i32, ptr %l66, !tbaa !23
  %t169 = ashr i32 %t168, 16
  %t171 = icmp eq i32 %t169, 1
  store i1 %t171, ptr %l68, !tbaa !21
  %t172 = load i32, ptr %l66, !tbaa !23
  %t173 = ashr i32 %t172, 16
  %t175 = icmp eq i32 %t173, 1
  br i1 %t175, label %bb23, label %bb24
bb23:
  call void @__olang_errpay_pop()
  br label %bb24
bb24:
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t177 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t177, ptr %l71, !tbaa !27
  %t178 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOutputCannotWrite(ptr %s5)
  store %"compiler/diagmsg:Msg" %t178, ptr %l72
  br label %bb26
bb26:
  %t179 = load ptr, ptr %l4, !tbaa !29
  %t180 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t181 = load %"compiler/diagmsg:Msg", ptr %l72
  call void @compiler_2fbuild_2efileFatal(ptr %s0, ptr %s5, ptr %v4, { i64, ptr } %t180, %"compiler/diagmsg:Msg" %t181, ptr %t179)
  br label %bb27
bb27:
  %t183 = load ptr, ptr %l4, !tbaa !29
  %t185 = call i32 @compiler_2fbuild_2efinish(ptr %v4, ptr %t183)
  store i32 %t185, ptr %l75
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t186 = load i32, ptr %l75, !tbaa !23
  store i32 %t186, ptr %rv
  br label %ret
bb29:
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l76, !tbaa !29
  %t188 = ptrtoint ptr %v0 to i64
  store i64 %t188, ptr %l77, !tbaa !24
  %t189 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e24
  br i1 %t189, label %bb30, label %bb31
bb30:
  %t191 = call ptr @__olang_region_make(ptr %v0)
  %t192 = ptrtoint ptr %t191 to i64
  store i64 %t192, ptr %l77, !tbaa !24
  br label %bb31
bb31:
  %t193 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t193, 1
  %t196 = extractvalue { i64, ptr } %t193, 0
  %t197 = load i64, ptr %l77
  %t198 = inttoptr i64 %t197 to ptr
  %t199 = call ptr @__olang_scope_alloc(ptr %t198, i64 %t196)
  call void @olang_textcopy(ptr %t199, ptr %t195, i64 %t196)
  %t200 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  %t203 = load i64, ptr %l77
  %t204 = inttoptr i64 %t203 to ptr
  %t205 = extractvalue { i64, ptr } %t201, 0
  %t206 = extractvalue { i64, ptr } %t201, 1
  %t207 = mul i64 %t205, 1
  %t208 = call ptr @__olang_scope_alloc(ptr %t204, i64 %t207)
  call void @llvm.memcpy.p0.p0.i64(ptr %t208, ptr %t206, i64 %t207, i1 false)
  %t209 = insertvalue { i64, ptr } undef, i64 %t205, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t208, 1
  %t211 = load ptr, ptr %l76, !tbaa !29
  %t212 = getelementptr %"compiler/build:Config", ptr %t211, i32 0, i32 24
  %t213 = load { i64, ptr }, ptr %t212, !tbaa !27
  store { i64, ptr } %t213, ptr %l82, !tbaa !27
  %t215 = load ptr, ptr %l76, !tbaa !29
  %t216 = getelementptr %"compiler/build:Config", ptr %t215, i32 0, i32 24
  store { i64, ptr } %t210, ptr %t216, !tbaa !27
  %t217 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e24
  br i1 %t217, label %bb32, label %bb33
bb32:
  %t219 = load { i64, ptr }, ptr %l82
  %t220 = extractvalue { i64, ptr } %t219, 1
  call void @__olang_region_release(ptr %t220)
  store { i64, ptr } zeroinitializer, ptr %l82
  br label %bb33
bb33:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/build:Config", ptr %t221, i32 0, i32 22
  %t224 = load i1, ptr %t223, !tbaa !21
  %t226 = xor i1 %t224, true
  br i1 %t226, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l87, !tbaa !29
  %t229 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t231 = call { i64, ptr } @compiler_2fbuild_2eShown(ptr %s0, ptr %s7, { i64, ptr } %t229)
  store { i64, ptr } %t231, ptr %l89
  br label %bb36
bb35:
  br label %bb40
bb36:
  %t232 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t234 = call { i64, ptr } @compiler_2fbuild_2eShown(ptr %s0, ptr %s7, { i64, ptr } %t232)
  store { i64, ptr } %t234, ptr %l91
  br label %bb37
bb37:
  %t235 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t237 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t237, 1
  %t239 = extractvalue { i64, ptr } %t237, 0
  %t240 = add i64 %t236, %t239
  %t241 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t243 = add i64 %t240, %t242
  %t244 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t244, 1
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t247 = add i64 %t243, %t246
  %t248 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t247)
  call void @olang_textcopy(ptr %t248, ptr %t235, i64 %t236)
  %t249 = getelementptr i8, ptr %t248, i64 %t236
  call void @olang_textcopy(ptr %t249, ptr %t238, i64 %t239)
  %t250 = getelementptr i8, ptr %t249, i64 %t239
  call void @olang_textcopy(ptr %t250, ptr %t241, i64 %t242)
  %t251 = getelementptr i8, ptr %t250, i64 %t242
  call void @olang_textcopy(ptr %t251, ptr %t245, i64 %t246)
  %t252 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t248, 1
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t256 = extractvalue { i64, ptr } %t253, 1
  %t257 = mul i64 %t255, 1
  %t258 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t257)
  call void @llvm.memcpy.p0.p0.i64(ptr %t258, ptr %t256, i64 %t257, i1 false)
  %t259 = insertvalue { i64, ptr } undef, i64 %t255, 0
  %t260 = insertvalue { i64, ptr } %t259, ptr %t258, 1
  %t261 = load ptr, ptr %l87, !tbaa !29
  %t263 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s7, ptr %s7, ptr %s7, ptr %t261, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) }, { i64, ptr } %t260)
  store { i64, ptr } %t263, ptr %l94
  br label %bb38
bb38:
  %t264 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t264, 0
  %t266 = extractvalue { i64, ptr } %t264, 1
  %t267 = mul i64 %t265, 1
  %t268 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t267)
  call void @llvm.memcpy.p0.p0.i64(ptr %t268, ptr %t266, i64 %t267, i1 false)
  %t269 = insertvalue { i64, ptr } undef, i64 %t265, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr %t268, 1
  call void @compiler_2fbuild_2esayln(ptr %s7, { i64, ptr } %t270)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s7)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2elistQuick(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/build:Unit"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca { { i64, ptr }, { i64, ptr } }
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca i64
  %l53 = alloca i64
  %l58 = alloca %"compiler/build:Unit"
  %l68 = alloca i1
  %l75 = alloca i1
  %l82 = alloca i1
  %l84 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l86 = alloca i64
  %l88 = alloca i64
  %l93 = alloca { i64, ptr }
  %l94 = alloca ptr
  %l95 = alloca i64
  %l98 = alloca { i64, ptr }
  %l102 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l104 = alloca i64
  %l106 = alloca i64
  %l111 = alloca { i64, ptr }
  %l118 = alloca ptr
  %l119 = alloca i64
  %l124 = alloca ptr
  %l126 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l131 = alloca i1
  %l137 = alloca i32
  %l139 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l140 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l142 = alloca i64
  %l144 = alloca i64
  %l150 = alloca { i64, ptr }
  %l157 = alloca i32
  %l159 = alloca i1
  %l162 = alloca { i64, ptr }
  %l163 = alloca %"compiler/diagmsg:Msg"
  %l166 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l168 = alloca ptr
  %l169 = alloca i64
  %l177 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l179 = alloca i64
  %l181 = alloca i64
  %l186 = alloca { i64, ptr }
  %l187 = alloca ptr
  %l188 = alloca i64
  %l198 = alloca i64
  %l200 = alloca { i64, ptr }
  %l201 = alloca i64
  %l203 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l206 = alloca { i64, ptr }
  %l207 = alloca i64
  %l224 = alloca ptr
  %l225 = alloca i64
  %l232 = alloca ptr
  %l233 = alloca i64
  %l236 = alloca { i64, ptr }
  %l243 = alloca { i64, ptr }
  %l245 = alloca i64
  %l247 = alloca { i64, ptr }
  %l248 = alloca { { i64, ptr }, { i64, ptr } }
  %l249 = alloca { i64, ptr }
  %l250 = alloca i64
  %l251 = alloca { i64, ptr }
  %l252 = alloca { i64, ptr }
  %l253 = alloca i64
  %l254 = alloca { i64, ptr }
  %l255 = alloca ptr
  %l256 = alloca i64
  %l258 = alloca i64
  %l265 = alloca i64
  %l268 = alloca i64
  %l291 = alloca ptr
  %l292 = alloca { i64, [3 x i64] }
  %l297 = alloca %"compiler/diagmsg:Msg"
  %l302 = alloca i64
  %l306 = alloca i64
  %l309 = alloca i64
  %l331 = alloca i32
  %l333 = alloca i1
  %l345 = alloca i32
  %l347 = alloca i1
  %s0 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %rv = alloca i32
  %t660 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i1 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l48
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l6
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/build:Program", ptr %t3, i32 0, i32 0
  store ptr %t5, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l8, !tbaa !24
  store i64 %t7, ptr %l51, !tbaa !24
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l53
  br label %bb3
bb3:
  %t11 = load i64, ptr %l51, !tbaa !24
  %t12 = load i64, ptr %l53, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb13
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l7, !tbaa !29
  %t18 = load i64, ptr %l8, !tbaa !24
  %t21 = call %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %v1, ptr %t17, i64 %t18)
  store %"compiler/build:Unit" %t21, ptr %l58
  br label %bb7
bb7:
  %t22 = load %"compiler/build:Unit", ptr %l58
  store %"compiler/build:Unit" %t22, ptr %l9
  %t23 = getelementptr %"compiler/build:Unit", ptr %l9, i32 0, i32 1
  %t24 = load i32, ptr %t23, !range !{i32 0, i32 5}
  %t26 = trunc i64 4 to i32
  %t27 = icmp eq i32 %t24, %t26
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t31 = getelementptr %"compiler/build:Unit", ptr %l9, i32 0, i32 2
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l6, { i64, ptr } %t32)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t35 = load i64, ptr %l8, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l8, !tbaa !24
  br label %bb2
bb13:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr %"compiler/build:Program", ptr %t39, i32 0, i32 1
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t44 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t44, ptr %l68
  br label %bb14
bb14:
  %t45 = load i1, ptr %l68, !tbaa !21
  %t46 = xor i1 %t45, true
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr %"compiler/build:Program", ptr %t48, i32 0, i32 1
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l6, { i64, ptr } %t51)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/build:Program", ptr %t54, i32 0, i32 2
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t59, ptr %l75
  br label %bb19
bb19:
  %t60 = load i1, ptr %l75, !tbaa !21
  %t61 = xor i1 %t60, true
  br i1 %t61, label %bb20, label %bb21
bb20:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/build:Program", ptr %t63, i32 0, i32 2
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l6, { i64, ptr } %t66)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/build:Config", ptr %t69, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t74 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t72, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t74, ptr %l82
  br label %bb24
bb24:
  %t75 = load i1, ptr %l82, !tbaa !21
  br i1 %t75, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i32 65537, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t77 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %l84
  br label %bb28
bb28:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l10
  store ptr %l6, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb29
bb29:
  %t80 = load i64, ptr %l12, !tbaa !24
  store i64 %t80, ptr %l86, !tbaa !24
  %t81 = load ptr, ptr %l11, !tbaa !29
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t81)
  store i64 %t83, ptr %l88
  br label %bb30
bb30:
  %t84 = load i64, ptr %l86, !tbaa !24
  %t85 = load i64, ptr %l88, !tbaa !24
  %t86 = icmp slt i64 %t84, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb31, label %bb32
bb31:
  br label %bb50
bb32:
  br label %bb33
bb33:
  %t90 = load ptr, ptr %l11, !tbaa !29
  %t91 = load i64, ptr %l12, !tbaa !24
  %t94 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t90, i64 %t91)
  store { i64, ptr } %t94, ptr %l93
  br label %bb34
bb34:
  %t95 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t95, ptr %l13, !tbaa !27
  store ptr %l10, ptr %l94, !tbaa !29
  %t96 = ptrtoint ptr %s0 to i64
  store i64 %t96, ptr %l95, !tbaa !24
  %t97 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t97, label %bb35, label %bb36
bb35:
  %t99 = call ptr @__olang_region_make(ptr %s0)
  %t100 = ptrtoint ptr %t99 to i64
  store i64 %t100, ptr %l95, !tbaa !24
  br label %bb36
bb36:
  %t101 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t102 = load i64, ptr %l95
  %t103 = inttoptr i64 %t102 to ptr
  %t105 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %s0, ptr %t103, { i64, ptr } %t101)
  store { i64, ptr } %t105, ptr %l98
  br label %bb37
bb37:
  %t106 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t107 = load i64, ptr %l95
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = extractvalue { i64, ptr } %t106, 0
  %t110 = extractvalue { i64, ptr } %t106, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %t108, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t115 = load ptr, ptr %l94, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t115, { i64, ptr } %t114)
  br label %bb38
bb38:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t121 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCompileFlags(ptr %v0, ptr %s0, ptr %s0, ptr %t117, { i64, ptr } %t118)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t121, ptr %l102
  br label %bb39
bb39:
  %t122 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102
  %t123 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t122, ptr %t123
  store ptr %t123, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb40
bb40:
  %t125 = load i64, ptr %l15, !tbaa !24
  store i64 %t125, ptr %l104, !tbaa !24
  %t126 = load ptr, ptr %l14, !tbaa !29
  %t128 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t126)
  store i64 %t128, ptr %l106
  br label %bb41
bb41:
  %t129 = load i64, ptr %l104, !tbaa !24
  %t130 = load i64, ptr %l106, !tbaa !24
  %t131 = icmp slt i64 %t129, %t130
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb42, label %bb43
bb42:
  br label %bb48
bb43:
  br label %bb44
bb44:
  %t135 = load ptr, ptr %l14, !tbaa !29
  %t136 = load i64, ptr %l15, !tbaa !24
  %t139 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t135, i64 %t136)
  store { i64, ptr } %t139, ptr %l111
  br label %bb45
bb45:
  %t140 = load { i64, ptr }, ptr %l111, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } %t140)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t144 = load i64, ptr %l15, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l15, !tbaa !24
  br label %bb40
bb48:
  br label %bb49
bb49:
  %t148 = load i64, ptr %l12, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l12, !tbaa !24
  br label %bb29
bb50:
  store ptr %l10, ptr %l118, !tbaa !29
  %t152 = ptrtoint ptr %s0 to i64
  store i64 %t152, ptr %l119, !tbaa !24
  %t153 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t153, label %bb51, label %bb52
bb51:
  %t155 = call ptr @__olang_region_make(ptr %s0)
  %t156 = ptrtoint ptr %t155 to i64
  store i64 %t156, ptr %l119, !tbaa !24
  br label %bb52
bb52:
  %t157 = load i1, ptr %l3, !tbaa !21
  %t159 = select i1 %t157, ptr @.c46, ptr @.c47
  %t160 = select i1 %t157, i64 4, i64 5
  %t161 = load i64, ptr %l119
  %t162 = inttoptr i64 %t161 to ptr
  %t163 = call ptr @__olang_scope_alloc(ptr %t162, i64 %t160)
  call void @olang_textcopy(ptr %t163, ptr %t159, i64 %t160)
  %t164 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  %t167 = load i64, ptr %l119
  %t168 = inttoptr i64 %t167 to ptr
  %t169 = extractvalue { i64, ptr } %t165, 0
  %t170 = extractvalue { i64, ptr } %t165, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %t168, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load ptr, ptr %l118, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t175, { i64, ptr } %t174)
  br label %bb53
bb53:
  store ptr %l10, ptr %l124, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eclangVersion(ptr %v0, ptr %v0, ptr %t177)
  store { i64, ptr } %t179, ptr %l126
  br label %bb54
bb54:
  %t180 = load ptr, ptr %l124, !tbaa !29
  %t181 = load { i64, ptr }, ptr %l126, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %t180, { i64, ptr } %t181)
  br label %bb55
bb55:
  %t183 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s0, ptr %s0, ptr %l10)
  store { i64, ptr } %t183, ptr %l128
  br label %bb56
bb56:
  %t184 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t184, ptr %l17, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t189 = call i1 @compiler_2fbuild_2emadeBefore(ptr %v2, ptr %s0, { i64, ptr } %t185, { i64, ptr } %t186)
  store i1 %t189, ptr %l131
  br label %bb57
bb57:
  %t190 = load i1, ptr %l131, !tbaa !21
  br i1 %t190, label %bb58, label %bb59
bb58:
  %t191 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t192 = load i1, ptr %l3, !tbaa !21
  %t193 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fbuild_2elistFiles(ptr %v2, ptr %v3, { i64, ptr } %t191, i1 %t192, ptr %t193)
  br label %bb60
bb59:
  br label %bb61
bb60:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb61:
  %t197 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t198 = load ptr, ptr %l5, !tbaa !29
  %t201 = call i32 @compiler_2fbuild_2eafresh(ptr %v2, ptr %v4, { i64, ptr } %t197, ptr %t198)
  store i32 %t201, ptr %l137
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb63, label %ok.203, !prof !99
ok.203:
  br label %bb62
bb62:
  br label %bb64
bb63:
  %t204 = load i32, ptr %l137, !tbaa !23
  %t205 = lshr i32 %t204, 16
  %t206 = and i32 %t204, 65535
  %t207 = icmp eq i32 %t205, 1
  %t208 = select i1 %t207, i32 1, i32 0
  %t209 = icmp eq i32 %t204, 0
  %t210 = shl i32 %t208, 16
  %t211 = or i32 %t210, %t206
  %t212 = select i1 %t209, i32 0, i32 %t211
  call void @__olang_scope_close(ptr %s0)
  store i32 %t212, ptr %rv
  br label %ret
bb64:
  %t214 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t214, ptr %l139
  br label %bb65
bb65:
  %t215 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l139
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t215, ptr %l18
  %t216 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t216, ptr %l140
  br label %bb66
bb66:
  %t217 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l140
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t217, ptr %l19
  store ptr %l6, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb67
bb67:
  store %olang.scope zeroinitializer, ptr %s17
  %t219 = load i64, ptr %l21, !tbaa !24
  store i64 %t219, ptr %l142, !tbaa !24
  %t220 = load ptr, ptr %l20, !tbaa !29
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t220)
  store i64 %t222, ptr %l144
  br label %bb68
bb68:
  %t223 = load i64, ptr %l142, !tbaa !24
  %t224 = load i64, ptr %l144, !tbaa !24
  %t225 = icmp slt i64 %t223, %t224
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb69, label %bb70
bb69:
  call void @__olang_scope_close(ptr %s17)
  br label %bb124
bb70:
  br label %bb71
bb71:
  %t229 = load i64, ptr %l21, !tbaa !24
  store i64 %t229, ptr %l22, !tbaa !24
  %t231 = load ptr, ptr %l20, !tbaa !29
  %t232 = load i64, ptr %l21, !tbaa !24
  %t235 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t231, i64 %t232)
  store { i64, ptr } %t235, ptr %l150
  br label %bb72
bb72:
  %t236 = load { i64, ptr }, ptr %l150, !tbaa !27
  store { i64, ptr } %t236, ptr %l23, !tbaa !27
  %t237 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t238 = load i64, ptr %l22, !tbaa !24
  %t240 = extractvalue { i64, ptr } %t237, 1
  %t241 = extractvalue { i64, ptr } %t237, 0
  %t242 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t243 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t244 = add i64 %t241, %t243
  %t246 = call i64 @__olang_fmt_i64(ptr null, i64 %t238)
  %t247 = add i64 %t244, %t246
  %t248 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t249 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t250 = add i64 %t247, %t249
  %t251 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t250)
  call void @olang_textcopy(ptr %t251, ptr %t240, i64 %t241)
  %t252 = getelementptr i8, ptr %t251, i64 %t241
  call void @olang_textcopy(ptr %t252, ptr %t242, i64 %t243)
  %t253 = getelementptr i8, ptr %t252, i64 %t243
  %t254 = call i64 @__olang_fmt_i64(ptr %t253, i64 %t238)
  %t255 = getelementptr i8, ptr %t253, i64 %t246
  call void @olang_textcopy(ptr %t255, ptr %t248, i64 %t249)
  %t256 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t251, 1
  store { i64, ptr } %t257, ptr %l24, !tbaa !27
  %t259 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t260 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t264 = call i32 @std_2fos_2eWriteFile(ptr %s17, ptr %s0, { i64, ptr } %t259, { i64, ptr } %t260)
  store i32 %t264, ptr %l157
  %t265 = icmp ne i32 %t264, 0
  br i1 %t265, label %bb74, label %ok.266, !prof !99
ok.266:
  br label %bb73
bb73:
  br label %bb80
bb74:
  %t267 = load i32, ptr %l157, !tbaa !23
  %t268 = ashr i32 %t267, 16
  %t270 = icmp eq i32 %t268, 1
  store i1 %t270, ptr %l159, !tbaa !21
  %t271 = load i32, ptr %l157, !tbaa !23
  %t272 = ashr i32 %t271, 16
  %t274 = icmp eq i32 %t272, 1
  br i1 %t274, label %bb75, label %bb76
bb75:
  call void @__olang_errpay_pop()
  br label %bb76
bb76:
  br label %bb77
bb77:
  store %olang.scope zeroinitializer, ptr %s19
  %t276 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t276, ptr %l162, !tbaa !27
  %t277 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %s19)
  store %"compiler/diagmsg:Msg" %t277, ptr %l163
  br label %bb78
bb78:
  %t278 = load ptr, ptr %l5, !tbaa !29
  %t279 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t280 = load %"compiler/diagmsg:Msg", ptr %l163
  call void @compiler_2fbuild_2efileFatal(ptr %s17, ptr %s19, ptr %v4, { i64, ptr } %t279, %"compiler/diagmsg:Msg" %t280, ptr %t278)
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb80:
  %t283 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t283, ptr %l166
  br label %bb81
bb81:
  %t284 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l166
  %t285 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t284, ptr %t285
  store ptr %t285, ptr %l25, !tbaa !29
  %t287 = load ptr, ptr %l25, !tbaa !29
  store ptr %t287, ptr %l168, !tbaa !29
  %t288 = ptrtoint ptr %s0 to i64
  store i64 %t288, ptr %l169, !tbaa !24
  %t289 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t289, label %bb82, label %bb83
bb82:
  %t291 = call ptr @__olang_region_make(ptr %s0)
  %t292 = ptrtoint ptr %t291 to i64
  store i64 %t292, ptr %l169, !tbaa !24
  br label %bb83
bb83:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/build:Config", ptr %t293, i32 0, i32 1
  %t296 = load { i64, ptr }, ptr %t295, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t296, 1
  %t299 = extractvalue { i64, ptr } %t296, 0
  %t300 = load i64, ptr %l169
  %t301 = inttoptr i64 %t300 to ptr
  %t302 = call ptr @__olang_scope_alloc(ptr %t301, i64 %t299)
  call void @olang_textcopy(ptr %t302, ptr %t298, i64 %t299)
  %t303 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t302, 1
  %t306 = load i64, ptr %l169
  %t307 = inttoptr i64 %t306 to ptr
  %t308 = extractvalue { i64, ptr } %t304, 0
  %t309 = extractvalue { i64, ptr } %t304, 1
  %t310 = mul i64 %t308, 1
  %t311 = call ptr @__olang_scope_alloc(ptr %t307, i64 %t310)
  call void @llvm.memcpy.p0.p0.i64(ptr %t311, ptr %t309, i64 %t310, i1 false)
  %t312 = insertvalue { i64, ptr } undef, i64 %t308, 0
  %t313 = insertvalue { i64, ptr } %t312, ptr %t311, 1
  %t314 = load ptr, ptr %l168, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t314, { i64, ptr } %t313)
  br label %bb84
bb84:
  store %olang.scope zeroinitializer, ptr %s21
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t317 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t320 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCompileFlags(ptr %v0, ptr %s0, ptr %s21, ptr %t316, { i64, ptr } %t317)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t320, ptr %l177
  br label %bb85
bb85:
  %t321 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l177
  %t322 = call ptr @__olang_scope_alloc_a(ptr %s21, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t321, ptr %t322
  store ptr %t322, ptr %l26, !tbaa !29
  store i64 0, ptr %l27, !tbaa !24
  br label %bb86
bb86:
  %t324 = load i64, ptr %l27, !tbaa !24
  store i64 %t324, ptr %l179, !tbaa !24
  %t325 = load ptr, ptr %l26, !tbaa !29
  %t327 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s21, ptr %t325)
  store i64 %t327, ptr %l181
  br label %bb87
bb87:
  %t328 = load i64, ptr %l179, !tbaa !24
  %t329 = load i64, ptr %l181, !tbaa !24
  %t330 = icmp slt i64 %t328, %t329
  %t332 = xor i1 %t330, true
  br i1 %t332, label %bb88, label %bb89
bb88:
  br label %bb96
bb89:
  br label %bb90
bb90:
  %t334 = load ptr, ptr %l26, !tbaa !29
  %t335 = load i64, ptr %l27, !tbaa !24
  %t338 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s21, ptr %s21, ptr %t334, i64 %t335)
  store { i64, ptr } %t338, ptr %l186
  br label %bb91
bb91:
  %t339 = load { i64, ptr }, ptr %l186, !tbaa !27
  store { i64, ptr } %t339, ptr %l28, !tbaa !27
  %t340 = load ptr, ptr %l25, !tbaa !29
  store ptr %t340, ptr %l187, !tbaa !29
  %t341 = ptrtoint ptr %s0 to i64
  store i64 %t341, ptr %l188, !tbaa !24
  %t342 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t342, label %bb92, label %bb93
bb92:
  %t344 = call ptr @__olang_region_make(ptr %s0)
  %t345 = ptrtoint ptr %t344 to i64
  store i64 %t345, ptr %l188, !tbaa !24
  br label %bb93
bb93:
  %t346 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t348 = extractvalue { i64, ptr } %t346, 1
  %t349 = extractvalue { i64, ptr } %t346, 0
  %t350 = load i64, ptr %l188
  %t351 = inttoptr i64 %t350 to ptr
  %t352 = call ptr @__olang_scope_alloc(ptr %t351, i64 %t349)
  call void @olang_textcopy(ptr %t352, ptr %t348, i64 %t349)
  %t353 = insertvalue { i64, ptr } undef, i64 %t349, 0
  %t354 = insertvalue { i64, ptr } %t353, ptr %t352, 1
  %t356 = load i64, ptr %l188
  %t357 = inttoptr i64 %t356 to ptr
  %t358 = extractvalue { i64, ptr } %t354, 0
  %t359 = extractvalue { i64, ptr } %t354, 1
  %t360 = mul i64 %t358, 1
  %t361 = call ptr @__olang_scope_alloc(ptr %t357, i64 %t360)
  call void @llvm.memcpy.p0.p0.i64(ptr %t361, ptr %t359, i64 %t360, i1 false)
  %t362 = insertvalue { i64, ptr } undef, i64 %t358, 0
  %t363 = insertvalue { i64, ptr } %t362, ptr %t361, 1
  %t364 = load ptr, ptr %l187, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t364, { i64, ptr } %t363)
  br label %bb94
bb94:
  br label %bb95
bb95:
  %t366 = load i64, ptr %l27, !tbaa !24
  %t368 = add i64 %t366, 1
  store i64 %t368, ptr %l27, !tbaa !24
  br label %bb86
bb96:
  call void @__olang_scope_close(ptr %s21)
  %t370 = load ptr, ptr %l25, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t370, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) })
  br label %bb97
bb97:
  %t372 = load i1, ptr %l3, !tbaa !21
  br i1 %t372, label %bb98, label %bb99
bb98:
  %t374 = load ptr, ptr %l25, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t374, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d51, i32 0, i32 1) })
  br label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb101
bb101:
  store %olang.scope zeroinitializer, ptr %s26
  %t376 = ptrtoint ptr %s26 to i64
  store i64 %t376, ptr %l198, !tbaa !24
  %t377 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_204_3e_2e_2d1
  br i1 %t377, label %bb102, label %bb103
bb102:
  %t379 = call ptr @__olang_region_make(ptr %s26)
  %t380 = ptrtoint ptr %t379 to i64
  store i64 %t380, ptr %l198, !tbaa !24
  br label %bb103
bb103:
  %t381 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t381, ptr %l200, !tbaa !27
  %t382 = load i64, ptr %l22, !tbaa !24
  store i64 %t382, ptr %l201, !tbaa !24
  %t383 = load i1, ptr %l3, !tbaa !21
  br i1 %t383, label %bb104, label %bb105
bb104:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l203, !tbaa !27
  br label %bb106
bb105:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l203, !tbaa !27
  br label %bb106
bb106:
  %t385 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t386 = extractvalue { i64, ptr } %t385, 1
  %t387 = extractvalue { i64, ptr } %t385, 0
  %t388 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t389 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t390 = add i64 %t387, %t389
  %t391 = load i64, ptr %l201, !tbaa !24
  %t392 = call i64 @__olang_fmt_i64(ptr null, i64 %t391)
  %t393 = add i64 %t390, %t392
  %t394 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t395 = extractvalue { i64, ptr } %t394, 1
  %t396 = extractvalue { i64, ptr } %t394, 0
  %t397 = add i64 %t393, %t396
  %t398 = load i64, ptr %l198
  %t399 = inttoptr i64 %t398 to ptr
  %t400 = call ptr @__olang_scope_alloc(ptr %t399, i64 %t397)
  call void @olang_textcopy(ptr %t400, ptr %t386, i64 %t387)
  %t401 = getelementptr i8, ptr %t400, i64 %t387
  call void @olang_textcopy(ptr %t401, ptr %t388, i64 %t389)
  %t402 = getelementptr i8, ptr %t401, i64 %t389
  %t403 = call i64 @__olang_fmt_i64(ptr %t402, i64 %t391)
  %t404 = getelementptr i8, ptr %t402, i64 %t392
  call void @olang_textcopy(ptr %t404, ptr %t395, i64 %t396)
  %t405 = insertvalue { i64, ptr } undef, i64 %t397, 0
  %t406 = insertvalue { i64, ptr } %t405, ptr %t400, 1
  %t408 = load i64, ptr %l198
  %t409 = inttoptr i64 %t408 to ptr
  %t410 = extractvalue { i64, ptr } %t406, 0
  %t411 = extractvalue { i64, ptr } %t406, 1
  %t412 = mul i64 %t410, 1
  %t413 = call ptr @__olang_scope_alloc(ptr %t409, i64 %t412)
  call void @llvm.memcpy.p0.p0.i64(ptr %t413, ptr %t411, i64 %t412, i1 false)
  %t414 = insertvalue { i64, ptr } undef, i64 %t410, 0
  %t415 = insertvalue { i64, ptr } %t414, ptr %t413, 1
  store { i64, ptr } %t415, ptr %l205, !tbaa !27
  %t416 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t416, ptr %l206, !tbaa !27
  %t417 = ptrtoint ptr %s26 to i64
  store i64 %t417, ptr %l207, !tbaa !24
  %t418 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_204_3e_2e_2d1
  br i1 %t418, label %bb107, label %bb108
bb107:
  %t420 = call ptr @__olang_region_make(ptr %s26)
  %t421 = ptrtoint ptr %t420 to i64
  store i64 %t421, ptr %l207, !tbaa !24
  br label %bb108
bb108:
  %t422 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t423 = load i64, ptr %l22, !tbaa !24
  %t424 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t425 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t427 = extractvalue { i64, ptr } %t422, 1
  %t428 = extractvalue { i64, ptr } %t422, 0
  %t429 = add i64 %t425, %t428
  %t430 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t431 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t432 = add i64 %t429, %t431
  %t434 = call i64 @__olang_fmt_i64(ptr null, i64 %t423)
  %t435 = add i64 %t432, %t434
  %t436 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t437 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t438 = add i64 %t435, %t437
  %t439 = load i64, ptr %l207
  %t440 = inttoptr i64 %t439 to ptr
  %t441 = call ptr @__olang_scope_alloc(ptr %t440, i64 %t438)
  call void @olang_textcopy(ptr %t441, ptr %t424, i64 %t425)
  %t442 = getelementptr i8, ptr %t441, i64 %t425
  call void @olang_textcopy(ptr %t442, ptr %t427, i64 %t428)
  %t443 = getelementptr i8, ptr %t442, i64 %t428
  call void @olang_textcopy(ptr %t443, ptr %t430, i64 %t431)
  %t444 = getelementptr i8, ptr %t443, i64 %t431
  %t445 = call i64 @__olang_fmt_i64(ptr %t444, i64 %t423)
  %t446 = getelementptr i8, ptr %t444, i64 %t434
  call void @olang_textcopy(ptr %t446, ptr %t436, i64 %t437)
  %t447 = insertvalue { i64, ptr } undef, i64 %t438, 0
  %t448 = insertvalue { i64, ptr } %t447, ptr %t441, 1
  %t450 = load i64, ptr %l207
  %t451 = inttoptr i64 %t450 to ptr
  %t452 = extractvalue { i64, ptr } %t448, 0
  %t453 = extractvalue { i64, ptr } %t448, 1
  %t454 = mul i64 %t452, 1
  %t455 = call ptr @__olang_scope_alloc(ptr %t451, i64 %t454)
  call void @llvm.memcpy.p0.p0.i64(ptr %t455, ptr %t453, i64 %t454, i1 false)
  %t456 = insertvalue { i64, ptr } undef, i64 %t452, 0
  %t457 = insertvalue { i64, ptr } %t456, ptr %t455, 1
  %t458 = insertvalue [4 x { i64, ptr }] undef, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t459 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t460 = insertvalue [4 x { i64, ptr }] %t458, { i64, ptr } %t459, 1
  %t461 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t462 = insertvalue [4 x { i64, ptr }] %t460, { i64, ptr } %t461, 2
  %t464 = insertvalue [4 x { i64, ptr }] %t462, { i64, ptr } %t457, 3
  %t466 = call ptr @__olang_scope_alloc_a(ptr %s26, i64 64, i64 8)
  store [4 x { i64, ptr }] %t464, ptr %t466
  store ptr %t466, ptr %l29
  store i64 0, ptr %l30, !tbaa !24
  %t468 = load ptr, ptr %l29
  store i64 4, ptr %l31, !tbaa !24
  br label %bb109
bb109:
  %t471 = load i64, ptr %l30, !tbaa !24
  %t472 = load i64, ptr %l31, !tbaa !24
  %t475 = icmp slt i64 %t471, %t472
  %t477 = xor i1 %t475, true
  br i1 %t477, label %bb110, label %bb111
bb110:
  br label %bb117
bb111:
  br label %bb112
bb112:
  %t479 = load ptr, ptr %l29
  %t480 = load i64, ptr %l30, !tbaa !24
  %t483 = getelementptr [4 x { i64, ptr }], ptr %t479, i64 0, i64 %t480
  %t484 = load { i64, ptr }, ptr %t483, !tbaa !37
  store { i64, ptr } %t484, ptr %l32, !tbaa !27
  %t486 = load ptr, ptr %l25, !tbaa !29
  store ptr %t486, ptr %l224, !tbaa !29
  %t487 = ptrtoint ptr %s0 to i64
  store i64 %t487, ptr %l225, !tbaa !24
  %t488 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t488, label %bb113, label %bb114
bb113:
  %t490 = call ptr @__olang_region_make(ptr %s0)
  %t491 = ptrtoint ptr %t490 to i64
  store i64 %t491, ptr %l225, !tbaa !24
  br label %bb114
bb114:
  %t492 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t494 = extractvalue { i64, ptr } %t492, 1
  %t495 = extractvalue { i64, ptr } %t492, 0
  %t496 = load i64, ptr %l225
  %t497 = inttoptr i64 %t496 to ptr
  %t498 = call ptr @__olang_scope_alloc(ptr %t497, i64 %t495)
  call void @olang_textcopy(ptr %t498, ptr %t494, i64 %t495)
  %t499 = insertvalue { i64, ptr } undef, i64 %t495, 0
  %t500 = insertvalue { i64, ptr } %t499, ptr %t498, 1
  %t502 = load i64, ptr %l225
  %t503 = inttoptr i64 %t502 to ptr
  %t504 = extractvalue { i64, ptr } %t500, 0
  %t505 = extractvalue { i64, ptr } %t500, 1
  %t506 = mul i64 %t504, 1
  %t507 = call ptr @__olang_scope_alloc(ptr %t503, i64 %t506)
  call void @llvm.memcpy.p0.p0.i64(ptr %t507, ptr %t505, i64 %t506, i1 false)
  %t508 = insertvalue { i64, ptr } undef, i64 %t504, 0
  %t509 = insertvalue { i64, ptr } %t508, ptr %t507, 1
  %t510 = load ptr, ptr %l224, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t510, { i64, ptr } %t509)
  br label %bb115
bb115:
  br label %bb116
bb116:
  %t512 = load i64, ptr %l30, !tbaa !24
  %t514 = add i64 %t512, 1
  store i64 %t514, ptr %l30, !tbaa !24
  br label %bb109
bb117:
  call void @__olang_scope_close(ptr %s26)
  store ptr %l18, ptr %l232, !tbaa !29
  %t516 = ptrtoint ptr %s0 to i64
  store i64 %t516, ptr %l233, !tbaa !24
  %t517 = load i1, ptr @olang_2esole_2eArray_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2e_2d1
  br i1 %t517, label %bb118, label %bb119
bb118:
  %t519 = call ptr @__olang_region_make(ptr %s0)
  %t520 = ptrtoint ptr %t519 to i64
  store i64 %t520, ptr %l233, !tbaa !24
  br label %bb119
bb119:
  %t521 = load ptr, ptr %l25, !tbaa !29
  %t522 = load i64, ptr %l233
  %t523 = inttoptr i64 %t522 to ptr
  %t525 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %t523, ptr %t521)
  store { i64, ptr } %t525, ptr %l236
  br label %bb120
bb120:
  %t526 = load ptr, ptr %l232, !tbaa !29
  %t527 = load { i64, ptr }, ptr %l236, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %s0, ptr %s0, ptr %t526, { i64, ptr } %t527)
  br label %bb121
bb121:
  %t528 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t530 = extractvalue { i64, ptr } %t528, 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l19, i64 %t530)
  br label %bb122
bb122:
  call void @__olang_scope_close(ptr %s17)
  br label %bb123
bb123:
  %t533 = load i64, ptr %l21, !tbaa !24
  %t535 = add i64 %t533, 1
  store i64 %t535, ptr %l21, !tbaa !24
  br label %bb67
bb124:
  %t538 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %l18)
  store { i64, ptr } %t538, ptr %l243
  br label %bb125
bb125:
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t541 = call i64 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewidth(ptr %v0, ptr %t539)
  store i64 %t541, ptr %l245
  br label %bb126
bb126:
  %t543 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l19)
  store { i64, ptr } %t543, ptr %l247
  br label %bb127
bb127:
  %t544 = load { i64, ptr }, ptr %l243, !tbaa !27
  %t545 = load i64, ptr %l245, !tbaa !24
  %t546 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t547 = call { { i64, ptr }, { i64, ptr } } @compiler_2fbuild_2eRunAll(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t544, i64 %t545, { i64, ptr } %t546)
  store { { i64, ptr }, { i64, ptr } } %t547, ptr %l248
  br label %bb128
bb128:
  %t548 = load { { i64, ptr }, { i64, ptr } }, ptr %l248
  store { { i64, ptr }, { i64, ptr } } %t548, ptr %l33
  %t549 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l33, i32 0, i32 0
  %t550 = load { i64, ptr }, ptr %t549, !tbaa !27
  store { i64, ptr } %t550, ptr %l249, !tbaa !27
  %t551 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t552 = extractvalue { i64, ptr } %t551, 0
  store i64 %t552, ptr %l250, !tbaa !24
  %t553 = load i64, ptr %l250, !tbaa !24
  %t554 = mul i64 %t553, 4
  %t555 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t554)
  %t556 = insertvalue { i64, ptr } undef, i64 %t553, 0
  %t557 = insertvalue { i64, ptr } %t556, ptr %t555, 1
  store { i64, ptr } %t557, ptr %l251, !tbaa !27
  %t558 = getelementptr { i64, ptr }, ptr %l251, i32 0, i32 1
  %t559 = load ptr, ptr %t558, !tbaa !27
  %t560 = getelementptr { i64, ptr }, ptr %l249, i32 0, i32 1
  %t561 = load ptr, ptr %t560, !tbaa !27
  %t562 = load i64, ptr %l250, !tbaa !24
  %t563 = mul i64 %t562, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t559, ptr %t561, i64 %t563, i1 false)
  %t564 = load { i64, ptr }, ptr %l251, !tbaa !27
  store { i64, ptr } %t564, ptr %l34, !tbaa !27
  %t565 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l33, i32 0, i32 1
  %t566 = load { i64, ptr }, ptr %t565, !tbaa !27
  store { i64, ptr } %t566, ptr %l252, !tbaa !27
  %t567 = load { i64, ptr }, ptr %l252, !tbaa !27
  %t568 = extractvalue { i64, ptr } %t567, 0
  store i64 %t568, ptr %l253, !tbaa !24
  %t569 = load i64, ptr %l253, !tbaa !24
  %t570 = mul i64 %t569, 16
  %t571 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t570)
  %t572 = insertvalue { i64, ptr } undef, i64 %t569, 0
  %t573 = insertvalue { i64, ptr } %t572, ptr %t571, 1
  store { i64, ptr } %t573, ptr %l254, !tbaa !27
  %t574 = getelementptr { i64, ptr }, ptr %l254, i32 0, i32 1
  %t575 = load ptr, ptr %t574, !tbaa !27
  %t576 = getelementptr { i64, ptr }, ptr %l252, i32 0, i32 1
  %t577 = load ptr, ptr %t576, !tbaa !27
  %t578 = load i64, ptr %l253, !tbaa !24
  %t579 = mul i64 %t578, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t575, ptr %t577, i64 %t579, i1 false)
  %t580 = load { i64, ptr }, ptr %l254, !tbaa !27
  store { i64, ptr } %t580, ptr %l35, !tbaa !27
  %t581 = load ptr, ptr %l0, !tbaa !29
  store ptr %t581, ptr %l255, !tbaa !29
  %t582 = load ptr, ptr %l255, !tbaa !29
  %t583 = getelementptr %"compiler/build:Config", ptr %t582, i32 0, i32 25
  %t584 = load i64, ptr %t583, !tbaa !24
  store i64 %t584, ptr %l256, !tbaa !24
  %t586 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H2ab12f44ffbd18d099d1f5a69642975a(ptr %s0, ptr %l18)
  store i64 %t586, ptr %l258
  br label %bb129
bb129:
  %t587 = load i64, ptr %l256, !tbaa !24
  %t588 = load i64, ptr %l258, !tbaa !24
  %t589 = add i64 %t587, %t588
  %t591 = load ptr, ptr %l255, !tbaa !29
  %t592 = getelementptr %"compiler/build:Config", ptr %t591, i32 0, i32 25
  store i64 %t589, ptr %t592, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  %t593 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t595 = extractvalue { i64, ptr } %t593, 0
  store i64 %t595, ptr %l37, !tbaa !24
  store i64 1, ptr %l38, !tbaa !24
  %t597 = load i64, ptr %l37, !tbaa !24
  %t598 = load i64, ptr %l36, !tbaa !24
  %t601 = icmp sgt i64 %t597, %t598
  br i1 %t601, label %bb130, label %bb131
bb130:
  %t603 = load i64, ptr %l38, !tbaa !24
  %t605 = icmp sgt i64 %t603, 0
  br i1 %t605, label %bb132, label %bb133
bb131:
  store i64 0, ptr %l265, !tbaa !24
  br label %bb135
bb132:
  %t607 = load i64, ptr %l37, !tbaa !24
  %t608 = load i64, ptr %l36, !tbaa !24
  %t611 = sub i64 %t607, %t608
  %t612 = load i64, ptr %l38, !tbaa !24
  %t615 = add i64 %t611, %t612
  %t617 = sub i64 %t615, 1
  %t618 = load i64, ptr %l38, !tbaa !24
  %t621 = sdiv i64 %t617, %t618
  store i64 %t621, ptr %l268, !tbaa !24
  br label %bb134
bb133:
  store i64 0, ptr %l268, !tbaa !24
  br label %bb134
bb134:
  %t623 = load i64, ptr %l268, !tbaa !24
  store i64 %t623, ptr %l265, !tbaa !24
  br label %bb135
bb135:
  %t624 = load i64, ptr %l265, !tbaa !24
  store i64 %t624, ptr %l39, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  br label %bb136
bb136:
  store %olang.scope zeroinitializer, ptr %s34
  %t625 = load i64, ptr %l40, !tbaa !24
  %t626 = load i64, ptr %l39, !tbaa !24
  %t629 = icmp slt i64 %t625, %t626
  %t631 = xor i1 %t629, true
  br i1 %t631, label %bb137, label %bb138
bb137:
  call void @__olang_scope_close(ptr %s34)
  br label %bb147
bb138:
  br label %bb139
bb139:
  %t633 = load i64, ptr %l36, !tbaa !24
  %t634 = load i64, ptr %l40, !tbaa !24
  %t635 = load i64, ptr %l38, !tbaa !24
  %t638 = mul i64 %t634, %t635
  %t641 = add i64 %t633, %t638
  store i64 %t641, ptr %l41, !tbaa !24
  %t643 = load i64, ptr %l41, !tbaa !24
  %t645 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t646 = load ptr, ptr %t645, !tbaa !27
  %t647 = getelementptr i32, ptr %t646, i64 %t643
  %t648 = load i32, ptr %t647, !tbaa !33
  %t650 = icmp eq i32 %t648, 0
  br i1 %t650, label %bb140, label %bb141
bb140:
  call void @__olang_scope_close(ptr %s34)
  br label %bb146
bb141:
  br label %bb142
bb142:
  %t652 = load i64, ptr %l41, !tbaa !24
  %t654 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t655 = load ptr, ptr %t654, !tbaa !27
  %t656 = getelementptr { i64, ptr }, ptr %t655, i64 %t652
  %t657 = load { i64, ptr }, ptr %t656, !tbaa !37
  call void @compiler_2fbuild_2esayErr(ptr %s0, { i64, ptr } %t657)
  br label %bb143
bb143:
  %t659 = load ptr, ptr %l5, !tbaa !29
  store ptr %t659, ptr %l291, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t660
  %t661 = getelementptr { i64, [3 x i64] }, ptr %t660, i32 0, i32 0
  store i64 0, ptr %t661
  %t662 = load { i64, [3 x i64] }, ptr %t660
  store { i64, [3 x i64] } %t662, ptr %l292
  %t663 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t664 = load i64, ptr %l41, !tbaa !24
  %t666 = extractvalue { i64, ptr } %t663, 1
  %t667 = extractvalue { i64, ptr } %t663, 0
  %t668 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t669 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t670 = add i64 %t667, %t669
  %t672 = call i64 @__olang_fmt_i64(ptr null, i64 %t664)
  %t673 = add i64 %t670, %t672
  %t674 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t675 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t676 = add i64 %t673, %t675
  %t677 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t676)
  call void @olang_textcopy(ptr %t677, ptr %t666, i64 %t667)
  %t678 = getelementptr i8, ptr %t677, i64 %t667
  call void @olang_textcopy(ptr %t678, ptr %t668, i64 %t669)
  %t679 = getelementptr i8, ptr %t678, i64 %t669
  %t680 = call i64 @__olang_fmt_i64(ptr %t679, i64 %t664)
  %t681 = getelementptr i8, ptr %t679, i64 %t672
  call void @olang_textcopy(ptr %t681, ptr %t674, i64 %t675)
  %t682 = insertvalue { i64, ptr } undef, i64 %t676, 0
  %t683 = insertvalue { i64, ptr } %t682, ptr %t677, 1
  %t685 = extractvalue { i64, ptr } %t683, 0
  %t686 = extractvalue { i64, ptr } %t683, 1
  %t687 = mul i64 %t685, 1
  %t688 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t687)
  call void @llvm.memcpy.p0.p0.i64(ptr %t688, ptr %t686, i64 %t687, i1 false)
  %t689 = insertvalue { i64, ptr } undef, i64 %t685, 0
  %t690 = insertvalue { i64, ptr } %t689, ptr %t688, 1
  %t692 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eClangFailed(ptr %s34, ptr %s34, { i64, ptr } %t690)
  store %"compiler/diagmsg:Msg" %t692, ptr %l297
  br label %bb144
bb144:
  %t693 = load ptr, ptr %l291, !tbaa !29
  %t694 = load { i64, [3 x i64] }, ptr %l292
  %t695 = load %"compiler/diagmsg:Msg", ptr %l297
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v4, ptr %s34, ptr %t693, { i64, [3 x i64] } %t694, %"compiler/diagmsg:Msg" %t695)
  br label %bb145
bb145:
  call void @__olang_scope_close(ptr %s34)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb146:
  %t697 = load i64, ptr %l40, !tbaa !24
  %t699 = add i64 %t697, 1
  store i64 %t699, ptr %l40, !tbaa !24
  br label %bb136
bb147:
  store i64 0, ptr %l42, !tbaa !24
  %t702 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l6)
  store i64 %t702, ptr %l302
  br label %bb148
bb148:
  %t703 = load i64, ptr %l302, !tbaa !24
  store i64 %t703, ptr %l43, !tbaa !24
  store i64 1, ptr %l44, !tbaa !24
  %t704 = load i64, ptr %l43, !tbaa !24
  %t705 = load i64, ptr %l42, !tbaa !24
  %t708 = icmp sgt i64 %t704, %t705
  br i1 %t708, label %bb149, label %bb150
bb149:
  %t710 = load i64, ptr %l44, !tbaa !24
  %t712 = icmp sgt i64 %t710, 0
  br i1 %t712, label %bb151, label %bb152
bb150:
  store i64 0, ptr %l306, !tbaa !24
  br label %bb154
bb151:
  %t714 = load i64, ptr %l43, !tbaa !24
  %t715 = load i64, ptr %l42, !tbaa !24
  %t718 = sub i64 %t714, %t715
  %t719 = load i64, ptr %l44, !tbaa !24
  %t722 = add i64 %t718, %t719
  %t724 = sub i64 %t722, 1
  %t725 = load i64, ptr %l44, !tbaa !24
  %t728 = sdiv i64 %t724, %t725
  store i64 %t728, ptr %l309, !tbaa !24
  br label %bb153
bb152:
  store i64 0, ptr %l309, !tbaa !24
  br label %bb153
bb153:
  %t730 = load i64, ptr %l309, !tbaa !24
  store i64 %t730, ptr %l306, !tbaa !24
  br label %bb154
bb154:
  %t731 = load i64, ptr %l306, !tbaa !24
  store i64 %t731, ptr %l45, !tbaa !24
  store i64 0, ptr %l46, !tbaa !24
  br label %bb155
bb155:
  store %olang.scope zeroinitializer, ptr %s39
  %t732 = load i64, ptr %l46, !tbaa !24
  %t733 = load i64, ptr %l45, !tbaa !24
  %t736 = icmp slt i64 %t732, %t733
  %t738 = xor i1 %t736, true
  br i1 %t738, label %bb156, label %bb157
bb156:
  call void @__olang_scope_close(ptr %s39)
  br label %bb166
bb157:
  br label %bb158
bb158:
  %t740 = load i64, ptr %l42, !tbaa !24
  %t741 = load i64, ptr %l46, !tbaa !24
  %t742 = load i64, ptr %l44, !tbaa !24
  %t745 = mul i64 %t741, %t742
  %t748 = add i64 %t740, %t745
  %t750 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t753 = extractvalue { i64, ptr } %t750, 1
  %t754 = extractvalue { i64, ptr } %t750, 0
  %t755 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t756 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t757 = add i64 %t754, %t756
  %t759 = call i64 @__olang_fmt_i64(ptr null, i64 %t748)
  %t760 = add i64 %t757, %t759
  %t761 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t762 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t763 = add i64 %t760, %t762
  %t764 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t763)
  call void @olang_textcopy(ptr %t764, ptr %t753, i64 %t754)
  %t765 = getelementptr i8, ptr %t764, i64 %t754
  call void @olang_textcopy(ptr %t765, ptr %t755, i64 %t756)
  %t766 = getelementptr i8, ptr %t765, i64 %t756
  %t767 = call i64 @__olang_fmt_i64(ptr %t766, i64 %t748)
  %t768 = getelementptr i8, ptr %t766, i64 %t759
  call void @olang_textcopy(ptr %t768, ptr %t761, i64 %t762)
  %t769 = insertvalue { i64, ptr } undef, i64 %t763, 0
  %t770 = insertvalue { i64, ptr } %t769, ptr %t764, 1
  %t772 = extractvalue { i64, ptr } %t770, 0
  %t773 = extractvalue { i64, ptr } %t770, 1
  %t774 = mul i64 %t772, 1
  %t775 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t774)
  call void @llvm.memcpy.p0.p0.i64(ptr %t775, ptr %t773, i64 %t774, i1 false)
  %t776 = insertvalue { i64, ptr } undef, i64 %t772, 0
  %t777 = insertvalue { i64, ptr } %t776, ptr %t775, 1
  %t779 = call i32 @std_2fos_2eRemove(ptr %s39, { i64, ptr } %t777)
  store i32 %t779, ptr %l331
  %t780 = icmp ne i32 %t779, 0
  br i1 %t780, label %bb160, label %ok.781, !prof !99
ok.781:
  br label %bb159
bb159:
  br label %bb164
bb160:
  %t782 = load i32, ptr %l331, !tbaa !23
  %t783 = ashr i32 %t782, 16
  %t785 = icmp eq i32 %t783, 1
  store i1 %t785, ptr %l333, !tbaa !21
  %t786 = load i32, ptr %l331, !tbaa !23
  %t787 = ashr i32 %t786, 16
  %t789 = icmp eq i32 %t787, 1
  br i1 %t789, label %bb161, label %bb162
bb161:
  call void @__olang_errpay_pop()
  br label %bb162
bb162:
  br label %bb163
bb163:
  br label %bb164
bb164:
  call void @__olang_scope_close(ptr %s39)
  br label %bb165
bb165:
  %t791 = load i64, ptr %l46, !tbaa !24
  %t793 = add i64 %t791, 1
  store i64 %t793, ptr %l46, !tbaa !24
  br label %bb155
bb166:
  %t795 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t797 = extractvalue { i64, ptr } %t795, 1
  %t798 = extractvalue { i64, ptr } %t795, 0
  %t799 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t800 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t801 = add i64 %t798, %t800
  %t802 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t801)
  call void @olang_textcopy(ptr %t802, ptr %t797, i64 %t798)
  %t803 = getelementptr i8, ptr %t802, i64 %t798
  call void @olang_textcopy(ptr %t803, ptr %t799, i64 %t800)
  %t804 = insertvalue { i64, ptr } undef, i64 %t801, 0
  %t805 = insertvalue { i64, ptr } %t804, ptr %t802, 1
  %t807 = extractvalue { i64, ptr } %t805, 0
  %t808 = extractvalue { i64, ptr } %t805, 1
  %t809 = mul i64 %t807, 1
  %t810 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t809)
  call void @llvm.memcpy.p0.p0.i64(ptr %t810, ptr %t808, i64 %t809, i1 false)
  %t811 = insertvalue { i64, ptr } undef, i64 %t807, 0
  %t812 = insertvalue { i64, ptr } %t811, ptr %t810, 1
  %t813 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t815 = extractvalue { i64, ptr } %t813, 1
  %t816 = extractvalue { i64, ptr } %t813, 0
  %t817 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t818 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t819 = add i64 %t816, %t818
  %t820 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t819)
  call void @olang_textcopy(ptr %t820, ptr %t815, i64 %t816)
  %t821 = getelementptr i8, ptr %t820, i64 %t816
  call void @olang_textcopy(ptr %t821, ptr %t817, i64 %t818)
  %t822 = insertvalue { i64, ptr } undef, i64 %t819, 0
  %t823 = insertvalue { i64, ptr } %t822, ptr %t820, 1
  %t826 = extractvalue { i64, ptr } %t823, 0
  %t827 = extractvalue { i64, ptr } %t823, 1
  %t828 = mul i64 %t826, 1
  %t829 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t828)
  call void @llvm.memcpy.p0.p0.i64(ptr %t829, ptr %t827, i64 %t828, i1 false)
  %t830 = insertvalue { i64, ptr } undef, i64 %t826, 0
  %t831 = insertvalue { i64, ptr } %t830, ptr %t829, 1
  %t834 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t812, { i64, ptr } %t831)
  store i32 %t834, ptr %l345
  %t835 = icmp ne i32 %t834, 0
  br i1 %t835, label %bb168, label %ok.836, !prof !99
ok.836:
  br label %bb167
bb167:
  br label %bb172
bb168:
  %t837 = load i32, ptr %l345, !tbaa !23
  %t838 = ashr i32 %t837, 16
  %t840 = icmp eq i32 %t838, 1
  store i1 %t840, ptr %l347, !tbaa !21
  %t841 = load i32, ptr %l345, !tbaa !23
  %t842 = ashr i32 %t841, 16
  %t844 = icmp eq i32 %t842, 1
  br i1 %t844, label %bb169, label %bb170
bb169:
  call void @__olang_errpay_pop()
  br label %bb170
bb170:
  br label %bb171
bb171:
  br label %bb172
bb172:
  %t846 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t847 = load i1, ptr %l3, !tbaa !21
  %t848 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fbuild_2elistFiles(ptr %v2, ptr %v3, { i64, ptr } %t846, i1 %t847, ptr %t848)
  br label %bb173
bb173:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eunusable(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, %"compiler/diagmsg:Msg" %a2, ptr %a3) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fbuild_2efileError(ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %t1, %"compiler/diagmsg:Msg" %a2, ptr %t3)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l3, !tbaa !29
  %t9 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v3, ptr %s0, ptr %t7)
  store { i64, ptr } %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  %t12 = extractvalue { i64, ptr } %t10, 1
  %t13 = mul i64 %t11, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t13)
  call void @llvm.memcpy.p0.p0.i64(ptr %t14, ptr %t12, i64 %t13, i1 false)
  %t15 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  call void @compiler_2fbuild_2esay(ptr %s0, { i64, ptr } %t16)
  br label %bb3
bb3:
  %t19 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @olang_textcopy(ptr %t26, ptr %t21, i64 %t22)
  %t27 = getelementptr i8, ptr %t26, i64 %t22
  call void @olang_textcopy(ptr %t27, ptr %t23, i64 %t24)
  %t28 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t26, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = extractvalue { i64, ptr } %t29, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  %t39 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %a0, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d66, i32 0, i32 1) }, { i64, ptr } %t36)
  store { i64, ptr } %t39, ptr %l14
  br label %bb4
bb4:
  %t40 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  %t42 = extractvalue { i64, ptr } %t40, 1
  %t43 = mul i64 %t41, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t43)
  call void @llvm.memcpy.p0.p0.i64(ptr %t44, ptr %t42, i64 %t43, i1 false)
  %t45 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  call void @compiler_2fbuild_2esayln(ptr %s0, { i64, ptr } %t46)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2ecompress(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca [64 x i32]
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i32
  %l38 = alloca [64 x i32]
  %l42 = alloca i64
  %l45 = alloca i64
  %l68 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l98 = alloca i64
  %l101 = alloca i64
  %l122 = alloca i32
  %l126 = alloca i32
  %l136 = alloca i32
  %l140 = alloca i32
  %l180 = alloca i64
  %l183 = alloca i64
  %l202 = alloca i32
  %l204 = alloca i32
  %l205 = alloca i32
  %l207 = alloca i32
  %l229 = alloca i32
  %l231 = alloca i32
  %l232 = alloca i32
  %l234 = alloca i32
  %l263 = alloca ptr
  %l267 = alloca ptr
  %l271 = alloca ptr
  %l275 = alloca ptr
  %l279 = alloca ptr
  %l283 = alloca ptr
  %l287 = alloca ptr
  %l291 = alloca ptr
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 64
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [64 x i32], ptr %l38, i64 0, i64 %t5
  store i32 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l38, i64 256, i1 false)
  store i64 0, ptr %l4, !tbaa !24
  store i64 16, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb6
bb3:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l45, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb5
bb5:
  %t35 = load i64, ptr %l45, !tbaa !24
  store i64 %t35, ptr %l42, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l42, !tbaa !24
  store i64 %t36, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l8, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t45 = load i64, ptr %l4, !tbaa !24
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l9, !tbaa !24
  %t56 = load i64, ptr %l9, !tbaa !24
  %t58 = mul i64 %t56, 4
  %t61 = add i64 %a2, %t58
  store i64 %t61, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t64, ptr %l68, !tbaa !27
  %t65 = load i64, ptr %l10, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i8, ptr %t68, i64 %t65
  %t70 = load i8, ptr %t69, !tbaa !32
  %t72 = zext i8 %t70 to i32
  %t74 = shl i32 %t72, 24
  %t75 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t75, ptr %l73, !tbaa !27
  %t76 = load i64, ptr %l10, !tbaa !24
  %t78 = add i64 %t76, 1
  %t80 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i8, ptr %t81, i64 %t78
  %t83 = load i8, ptr %t82, !tbaa !32
  %t85 = zext i8 %t83 to i32
  %t87 = shl i32 %t85, 16
  %t90 = or i32 %t74, %t87
  %t91 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t91, ptr %l80, !tbaa !27
  %t92 = load i64, ptr %l10, !tbaa !24
  %t94 = add i64 %t92, 2
  %t96 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i8, ptr %t97, i64 %t94
  %t99 = load i8, ptr %t98, !tbaa !32
  %t101 = zext i8 %t99 to i32
  %t103 = shl i32 %t101, 8
  %t106 = or i32 %t90, %t103
  %t107 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t107, ptr %l87, !tbaa !27
  %t108 = load i64, ptr %l10, !tbaa !24
  %t110 = add i64 %t108, 3
  %t112 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i8, ptr %t113, i64 %t110
  %t115 = load i8, ptr %t114, !tbaa !32
  %t117 = zext i8 %t115 to i32
  %t120 = or i32 %t106, %t117
  %t123 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t63
  store i32 %t120, ptr %t123, !tbaa !84
  br label %bb11
bb11:
  %t124 = load i64, ptr %l8, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l8, !tbaa !24
  br label %bb7
bb12:
  store i64 16, ptr %l11, !tbaa !24
  store i64 64, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t128 = load i64, ptr %l12, !tbaa !24
  %t129 = load i64, ptr %l11, !tbaa !24
  %t132 = icmp sgt i64 %t128, %t129
  br i1 %t132, label %bb13, label %bb14
bb13:
  %t134 = load i64, ptr %l13, !tbaa !24
  %t136 = icmp sgt i64 %t134, 0
  br i1 %t136, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb18
bb15:
  %t138 = load i64, ptr %l12, !tbaa !24
  %t139 = load i64, ptr %l11, !tbaa !24
  %t142 = sub i64 %t138, %t139
  %t143 = load i64, ptr %l13, !tbaa !24
  %t146 = add i64 %t142, %t143
  %t148 = sub i64 %t146, 1
  %t149 = load i64, ptr %l13, !tbaa !24
  %t152 = sdiv i64 %t148, %t149
  store i64 %t152, ptr %l101, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb17
bb17:
  %t154 = load i64, ptr %l101, !tbaa !24
  store i64 %t154, ptr %l98, !tbaa !24
  br label %bb18
bb18:
  %t155 = load i64, ptr %l98, !tbaa !24
  store i64 %t155, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb19
bb19:
  %t156 = load i64, ptr %l15, !tbaa !24
  %t157 = load i64, ptr %l14, !tbaa !24
  %t160 = icmp slt i64 %t156, %t157
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb20, label %bb21
bb20:
  br label %bb28
bb21:
  br label %bb22
bb22:
  %t164 = load i64, ptr %l11, !tbaa !24
  %t165 = load i64, ptr %l15, !tbaa !24
  %t166 = load i64, ptr %l13, !tbaa !24
  %t169 = mul i64 %t165, %t166
  %t172 = add i64 %t164, %t169
  store i64 %t172, ptr %l16, !tbaa !24
  %t174 = load i64, ptr %l16, !tbaa !24
  %t176 = sub i64 %t174, 15
  %t178 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t176
  %t179 = load i32, ptr %t178, !tbaa !84
  %t181 = call i32 @compiler_2fbuild_2erotr(i32 %t179, i32 7)
  store i32 %t181, ptr %l122
  br label %bb23
bb23:
  %t182 = load i64, ptr %l16, !tbaa !24
  %t184 = sub i64 %t182, 15
  %t186 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t184
  %t187 = load i32, ptr %t186, !tbaa !84
  %t189 = call i32 @compiler_2fbuild_2erotr(i32 %t187, i32 18)
  store i32 %t189, ptr %l126
  br label %bb24
bb24:
  %t190 = load i32, ptr %l122, !tbaa !64
  %t191 = load i32, ptr %l126, !tbaa !64
  %t192 = xor i32 %t190, %t191
  %t193 = load i64, ptr %l16, !tbaa !24
  %t195 = sub i64 %t193, 15
  %t197 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t195
  %t198 = load i32, ptr %t197, !tbaa !84
  %t200 = lshr i32 %t198, 3
  %t203 = xor i32 %t192, %t200
  store i32 %t203, ptr %l17, !tbaa !64
  %t205 = load i64, ptr %l16, !tbaa !24
  %t207 = sub i64 %t205, 2
  %t209 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t207
  %t210 = load i32, ptr %t209, !tbaa !84
  %t212 = call i32 @compiler_2fbuild_2erotr(i32 %t210, i32 17)
  store i32 %t212, ptr %l136
  br label %bb25
bb25:
  %t213 = load i64, ptr %l16, !tbaa !24
  %t215 = sub i64 %t213, 2
  %t217 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t215
  %t218 = load i32, ptr %t217, !tbaa !84
  %t220 = call i32 @compiler_2fbuild_2erotr(i32 %t218, i32 19)
  store i32 %t220, ptr %l140
  br label %bb26
bb26:
  %t221 = load i32, ptr %l136, !tbaa !64
  %t222 = load i32, ptr %l140, !tbaa !64
  %t223 = xor i32 %t221, %t222
  %t224 = load i64, ptr %l16, !tbaa !24
  %t226 = sub i64 %t224, 2
  %t228 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t226
  %t229 = load i32, ptr %t228, !tbaa !84
  %t231 = lshr i32 %t229, 10
  %t234 = xor i32 %t223, %t231
  %t236 = load i64, ptr %l16, !tbaa !24
  %t237 = load i64, ptr %l16, !tbaa !24
  %t239 = sub i64 %t237, 16
  %t241 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t239
  %t242 = load i32, ptr %t241, !tbaa !84
  %t243 = load i32, ptr %l17, !tbaa !64
  %t246 = add i32 %t242, %t243
  %t247 = load i64, ptr %l16, !tbaa !24
  %t249 = sub i64 %t247, 7
  %t251 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t249
  %t252 = load i32, ptr %t251, !tbaa !84
  %t255 = add i32 %t246, %t252
  %t259 = add i32 %t255, %t234
  %t262 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t236
  store i32 %t259, ptr %t262, !tbaa !84
  br label %bb27
bb27:
  %t263 = load i64, ptr %l15, !tbaa !24
  %t265 = add i64 %t263, 1
  store i64 %t265, ptr %l15, !tbaa !24
  br label %bb19
bb28:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/build:Sha256", ptr %t267, i32 0, i32 0
  %t270 = getelementptr [8 x i32], ptr %t269, i64 0, i64 0
  %t271 = load i32, ptr %t270, !tbaa !84
  store i32 %t271, ptr %l19, !tbaa !64
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/build:Sha256", ptr %t273, i32 0, i32 0
  %t276 = getelementptr [8 x i32], ptr %t275, i64 0, i64 1
  %t277 = load i32, ptr %t276, !tbaa !84
  store i32 %t277, ptr %l20, !tbaa !64
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/build:Sha256", ptr %t279, i32 0, i32 0
  %t282 = getelementptr [8 x i32], ptr %t281, i64 0, i64 2
  %t283 = load i32, ptr %t282, !tbaa !84
  store i32 %t283, ptr %l21, !tbaa !64
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/build:Sha256", ptr %t285, i32 0, i32 0
  %t288 = getelementptr [8 x i32], ptr %t287, i64 0, i64 3
  %t289 = load i32, ptr %t288, !tbaa !84
  store i32 %t289, ptr %l22, !tbaa !64
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/build:Sha256", ptr %t291, i32 0, i32 0
  %t294 = getelementptr [8 x i32], ptr %t293, i64 0, i64 4
  %t295 = load i32, ptr %t294, !tbaa !84
  store i32 %t295, ptr %l23, !tbaa !64
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/build:Sha256", ptr %t297, i32 0, i32 0
  %t300 = getelementptr [8 x i32], ptr %t299, i64 0, i64 5
  %t301 = load i32, ptr %t300, !tbaa !84
  store i32 %t301, ptr %l24, !tbaa !64
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/build:Sha256", ptr %t303, i32 0, i32 0
  %t306 = getelementptr [8 x i32], ptr %t305, i64 0, i64 6
  %t307 = load i32, ptr %t306, !tbaa !84
  store i32 %t307, ptr %l25, !tbaa !64
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"compiler/build:Sha256", ptr %t309, i32 0, i32 0
  %t312 = getelementptr [8 x i32], ptr %t311, i64 0, i64 7
  %t313 = load i32, ptr %t312, !tbaa !84
  store i32 %t313, ptr %l26, !tbaa !64
  store i64 0, ptr %l27, !tbaa !24
  store i64 64, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t315 = load i64, ptr %l28, !tbaa !24
  %t316 = load i64, ptr %l27, !tbaa !24
  %t319 = icmp sgt i64 %t315, %t316
  br i1 %t319, label %bb29, label %bb30
bb29:
  %t321 = load i64, ptr %l29, !tbaa !24
  %t323 = icmp sgt i64 %t321, 0
  br i1 %t323, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l180, !tbaa !24
  br label %bb34
bb31:
  %t325 = load i64, ptr %l28, !tbaa !24
  %t326 = load i64, ptr %l27, !tbaa !24
  %t329 = sub i64 %t325, %t326
  %t330 = load i64, ptr %l29, !tbaa !24
  %t333 = add i64 %t329, %t330
  %t335 = sub i64 %t333, 1
  %t336 = load i64, ptr %l29, !tbaa !24
  %t339 = sdiv i64 %t335, %t336
  store i64 %t339, ptr %l183, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l183, !tbaa !24
  br label %bb33
bb33:
  %t341 = load i64, ptr %l183, !tbaa !24
  store i64 %t341, ptr %l180, !tbaa !24
  br label %bb34
bb34:
  %t342 = load i64, ptr %l180, !tbaa !24
  store i64 %t342, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb35
bb35:
  %t343 = load i64, ptr %l31, !tbaa !24
  %t344 = load i64, ptr %l30, !tbaa !24
  %t347 = icmp slt i64 %t343, %t344
  %t349 = xor i1 %t347, true
  br i1 %t349, label %bb36, label %bb37
bb36:
  br label %bb46
bb37:
  br label %bb38
bb38:
  %t351 = load i64, ptr %l27, !tbaa !24
  %t352 = load i64, ptr %l31, !tbaa !24
  %t353 = load i64, ptr %l29, !tbaa !24
  %t356 = mul i64 %t352, %t353
  %t359 = add i64 %t351, %t356
  store i64 %t359, ptr %l32, !tbaa !24
  %t361 = load i32, ptr %l23, !tbaa !64
  %t363 = call i32 @compiler_2fbuild_2erotr(i32 %t361, i32 6)
  store i32 %t363, ptr %l202
  br label %bb39
bb39:
  %t364 = load i32, ptr %l23, !tbaa !64
  %t366 = call i32 @compiler_2fbuild_2erotr(i32 %t364, i32 11)
  store i32 %t366, ptr %l204
  br label %bb40
bb40:
  %t367 = load i32, ptr %l202, !tbaa !64
  %t368 = load i32, ptr %l204, !tbaa !64
  %t369 = xor i32 %t367, %t368
  store i32 %t369, ptr %l205, !tbaa !64
  %t370 = load i32, ptr %l23, !tbaa !64
  %t372 = call i32 @compiler_2fbuild_2erotr(i32 %t370, i32 25)
  store i32 %t372, ptr %l207
  br label %bb41
bb41:
  %t373 = load i32, ptr %l205, !tbaa !64
  %t374 = load i32, ptr %l207, !tbaa !64
  %t375 = xor i32 %t373, %t374
  %t377 = load i32, ptr %l23, !tbaa !64
  %t378 = load i32, ptr %l24, !tbaa !64
  %t381 = and i32 %t377, %t378
  %t382 = load i32, ptr %l23, !tbaa !64
  %t384 = xor i32 %t382, -1
  %t385 = load i32, ptr %l25, !tbaa !64
  %t388 = and i32 %t384, %t385
  %t391 = xor i32 %t381, %t388
  %t393 = load i32, ptr %l26, !tbaa !64
  %t397 = add i32 %t393, %t375
  %t401 = add i32 %t397, %t391
  %t402 = load i64, ptr %l32, !tbaa !24
  %t404 = getelementptr [64 x i32], ptr @G_2ecompiler_2fbuild_2eShaK, i64 0, i64 %t402
  %t405 = load i32, ptr %t404, !tbaa !84
  %t408 = add i32 %t401, %t405
  %t409 = load i64, ptr %l32, !tbaa !24
  %t411 = getelementptr [64 x i32], ptr %l3, i64 0, i64 %t409
  %t412 = load i32, ptr %t411, !tbaa !84
  %t415 = add i32 %t408, %t412
  store i32 %t415, ptr %l35, !tbaa !64
  %t417 = load i32, ptr %l19, !tbaa !64
  %t419 = call i32 @compiler_2fbuild_2erotr(i32 %t417, i32 2)
  store i32 %t419, ptr %l229
  br label %bb42
bb42:
  %t420 = load i32, ptr %l19, !tbaa !64
  %t422 = call i32 @compiler_2fbuild_2erotr(i32 %t420, i32 13)
  store i32 %t422, ptr %l231
  br label %bb43
bb43:
  %t423 = load i32, ptr %l229, !tbaa !64
  %t424 = load i32, ptr %l231, !tbaa !64
  %t425 = xor i32 %t423, %t424
  store i32 %t425, ptr %l232, !tbaa !64
  %t426 = load i32, ptr %l19, !tbaa !64
  %t428 = call i32 @compiler_2fbuild_2erotr(i32 %t426, i32 22)
  store i32 %t428, ptr %l234
  br label %bb44
bb44:
  %t429 = load i32, ptr %l232, !tbaa !64
  %t430 = load i32, ptr %l234, !tbaa !64
  %t431 = xor i32 %t429, %t430
  %t433 = load i32, ptr %l19, !tbaa !64
  %t434 = load i32, ptr %l20, !tbaa !64
  %t437 = and i32 %t433, %t434
  %t438 = load i32, ptr %l19, !tbaa !64
  %t439 = load i32, ptr %l21, !tbaa !64
  %t442 = and i32 %t438, %t439
  %t445 = xor i32 %t437, %t442
  %t446 = load i32, ptr %l20, !tbaa !64
  %t447 = load i32, ptr %l21, !tbaa !64
  %t450 = and i32 %t446, %t447
  %t453 = xor i32 %t445, %t450
  %t455 = load i32, ptr %l25, !tbaa !64
  store i32 %t455, ptr %l26, !tbaa !64
  %t457 = load i32, ptr %l24, !tbaa !64
  store i32 %t457, ptr %l25, !tbaa !64
  %t459 = load i32, ptr %l23, !tbaa !64
  store i32 %t459, ptr %l24, !tbaa !64
  %t461 = load i32, ptr %l22, !tbaa !64
  %t462 = load i32, ptr %l35, !tbaa !64
  %t465 = add i32 %t461, %t462
  store i32 %t465, ptr %l23, !tbaa !64
  %t467 = load i32, ptr %l21, !tbaa !64
  store i32 %t467, ptr %l22, !tbaa !64
  %t469 = load i32, ptr %l20, !tbaa !64
  store i32 %t469, ptr %l21, !tbaa !64
  %t471 = load i32, ptr %l19, !tbaa !64
  store i32 %t471, ptr %l20, !tbaa !64
  %t473 = load i32, ptr %l35, !tbaa !64
  %t477 = add i32 %t473, %t431
  %t481 = add i32 %t477, %t453
  store i32 %t481, ptr %l19, !tbaa !64
  br label %bb45
bb45:
  %t483 = load i64, ptr %l31, !tbaa !24
  %t485 = add i64 %t483, 1
  store i64 %t485, ptr %l31, !tbaa !24
  br label %bb35
bb46:
  %t487 = load ptr, ptr %l0, !tbaa !29
  store ptr %t487, ptr %l263, !tbaa !29
  %t488 = load ptr, ptr %l263, !tbaa !29
  %t489 = getelementptr %"compiler/build:Sha256", ptr %t488, i32 0, i32 0
  %t490 = getelementptr [8 x i32], ptr %t489, i64 0, i64 0
  %t491 = load i32, ptr %t490, !tbaa !84
  %t492 = load i32, ptr %l19, !tbaa !64
  %t495 = add i32 %t491, %t492
  %t497 = load ptr, ptr %l263, !tbaa !29
  %t498 = getelementptr %"compiler/build:Sha256", ptr %t497, i32 0, i32 0
  %t499 = getelementptr [8 x i32], ptr %t498, i64 0, i64 0
  store i32 %t495, ptr %t499, !tbaa !84
  %t500 = load ptr, ptr %l0, !tbaa !29
  store ptr %t500, ptr %l267, !tbaa !29
  %t501 = load ptr, ptr %l267, !tbaa !29
  %t502 = getelementptr %"compiler/build:Sha256", ptr %t501, i32 0, i32 0
  %t503 = getelementptr [8 x i32], ptr %t502, i64 0, i64 1
  %t504 = load i32, ptr %t503, !tbaa !84
  %t505 = load i32, ptr %l20, !tbaa !64
  %t508 = add i32 %t504, %t505
  %t510 = load ptr, ptr %l267, !tbaa !29
  %t511 = getelementptr %"compiler/build:Sha256", ptr %t510, i32 0, i32 0
  %t512 = getelementptr [8 x i32], ptr %t511, i64 0, i64 1
  store i32 %t508, ptr %t512, !tbaa !84
  %t513 = load ptr, ptr %l0, !tbaa !29
  store ptr %t513, ptr %l271, !tbaa !29
  %t514 = load ptr, ptr %l271, !tbaa !29
  %t515 = getelementptr %"compiler/build:Sha256", ptr %t514, i32 0, i32 0
  %t516 = getelementptr [8 x i32], ptr %t515, i64 0, i64 2
  %t517 = load i32, ptr %t516, !tbaa !84
  %t518 = load i32, ptr %l21, !tbaa !64
  %t521 = add i32 %t517, %t518
  %t523 = load ptr, ptr %l271, !tbaa !29
  %t524 = getelementptr %"compiler/build:Sha256", ptr %t523, i32 0, i32 0
  %t525 = getelementptr [8 x i32], ptr %t524, i64 0, i64 2
  store i32 %t521, ptr %t525, !tbaa !84
  %t526 = load ptr, ptr %l0, !tbaa !29
  store ptr %t526, ptr %l275, !tbaa !29
  %t527 = load ptr, ptr %l275, !tbaa !29
  %t528 = getelementptr %"compiler/build:Sha256", ptr %t527, i32 0, i32 0
  %t529 = getelementptr [8 x i32], ptr %t528, i64 0, i64 3
  %t530 = load i32, ptr %t529, !tbaa !84
  %t531 = load i32, ptr %l22, !tbaa !64
  %t534 = add i32 %t530, %t531
  %t536 = load ptr, ptr %l275, !tbaa !29
  %t537 = getelementptr %"compiler/build:Sha256", ptr %t536, i32 0, i32 0
  %t538 = getelementptr [8 x i32], ptr %t537, i64 0, i64 3
  store i32 %t534, ptr %t538, !tbaa !84
  %t539 = load ptr, ptr %l0, !tbaa !29
  store ptr %t539, ptr %l279, !tbaa !29
  %t540 = load ptr, ptr %l279, !tbaa !29
  %t541 = getelementptr %"compiler/build:Sha256", ptr %t540, i32 0, i32 0
  %t542 = getelementptr [8 x i32], ptr %t541, i64 0, i64 4
  %t543 = load i32, ptr %t542, !tbaa !84
  %t544 = load i32, ptr %l23, !tbaa !64
  %t547 = add i32 %t543, %t544
  %t549 = load ptr, ptr %l279, !tbaa !29
  %t550 = getelementptr %"compiler/build:Sha256", ptr %t549, i32 0, i32 0
  %t551 = getelementptr [8 x i32], ptr %t550, i64 0, i64 4
  store i32 %t547, ptr %t551, !tbaa !84
  %t552 = load ptr, ptr %l0, !tbaa !29
  store ptr %t552, ptr %l283, !tbaa !29
  %t553 = load ptr, ptr %l283, !tbaa !29
  %t554 = getelementptr %"compiler/build:Sha256", ptr %t553, i32 0, i32 0
  %t555 = getelementptr [8 x i32], ptr %t554, i64 0, i64 5
  %t556 = load i32, ptr %t555, !tbaa !84
  %t557 = load i32, ptr %l24, !tbaa !64
  %t560 = add i32 %t556, %t557
  %t562 = load ptr, ptr %l283, !tbaa !29
  %t563 = getelementptr %"compiler/build:Sha256", ptr %t562, i32 0, i32 0
  %t564 = getelementptr [8 x i32], ptr %t563, i64 0, i64 5
  store i32 %t560, ptr %t564, !tbaa !84
  %t565 = load ptr, ptr %l0, !tbaa !29
  store ptr %t565, ptr %l287, !tbaa !29
  %t566 = load ptr, ptr %l287, !tbaa !29
  %t567 = getelementptr %"compiler/build:Sha256", ptr %t566, i32 0, i32 0
  %t568 = getelementptr [8 x i32], ptr %t567, i64 0, i64 6
  %t569 = load i32, ptr %t568, !tbaa !84
  %t570 = load i32, ptr %l25, !tbaa !64
  %t573 = add i32 %t569, %t570
  %t575 = load ptr, ptr %l287, !tbaa !29
  %t576 = getelementptr %"compiler/build:Sha256", ptr %t575, i32 0, i32 0
  %t577 = getelementptr [8 x i32], ptr %t576, i64 0, i64 6
  store i32 %t573, ptr %t577, !tbaa !84
  %t578 = load ptr, ptr %l0, !tbaa !29
  store ptr %t578, ptr %l291, !tbaa !29
  %t579 = load ptr, ptr %l291, !tbaa !29
  %t580 = getelementptr %"compiler/build:Sha256", ptr %t579, i32 0, i32 0
  %t581 = getelementptr [8 x i32], ptr %t580, i64 0, i64 7
  %t582 = load i32, ptr %t581, !tbaa !84
  %t583 = load i32, ptr %l26, !tbaa !64
  %t586 = add i32 %t582, %t583
  %t588 = load ptr, ptr %l291, !tbaa !29
  %t589 = getelementptr %"compiler/build:Sha256", ptr %t588, i32 0, i32 0
  %t590 = getelementptr [8 x i32], ptr %t589, i64 0, i64 7
  store i32 %t586, ptr %t590, !tbaa !84
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3astubFrontend_2eExplain(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t2 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t3 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t5 = extractvalue { i64, ptr } %a2, 1
  %t6 = extractvalue { i64, ptr } %a2, 0
  %t7 = add i64 %t3, %t6
  %t8 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t10 = add i64 %t7, %t9
  %t11 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t10)
  call void @olang_textcopy(ptr %t11, ptr %t2, i64 %t3)
  %t12 = getelementptr i8, ptr %t11, i64 %t3
  call void @olang_textcopy(ptr %t12, ptr %t5, i64 %t6)
  %t13 = getelementptr i8, ptr %t12, i64 %t6
  call void @olang_textcopy(ptr %t13, ptr %t8, i64 %t9)
  %t14 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t11, 1
  %t17 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t15, 1
  store { i32, { i64, ptr } } %t17, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, i32 } @compiler_2fbuild_2ecompiler_2fbuild_3astubFrontend_2eInterpret(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, ptr } %a2, 0
  %t5 = trunc i64 %t3 to i32
  %t7 = insertvalue { i32, i32 } zeroinitializer, i32 %t5, 1
  store { i32, i32 } %t7, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local void @compiler_2fbuild_2efileError(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, %"compiler/diagmsg:Msg" %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca i64
  %l11 = alloca i64
  %t9 = alloca { i64, [3 x i64] }, align 8
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v2, ptr %v0, ptr %v2, ptr %t1, { i64, ptr } %a0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d69, i32 0, i32 1) }, i1 false)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l2, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [3 x i64] }, ptr %t9, i32 0, i32 0
  store i64 1, ptr %t10
  %t12 = insertvalue { i64 } undef, i64 %t6, 0
  %t13 = getelementptr { i64, [3 x i64] }, ptr %t9, i32 0, i32 1
  store { i64 } %t12, ptr %t13
  %t14 = load { i64, [3 x i64] }, ptr %t9
  %t19 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v2, ptr %v1, ptr %t7, { i64, [3 x i64] } %t14, %"compiler/diagmsg:Msg" %a1)
  store i64 %t19, ptr %l11
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbuild_2efileFatal(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, %"compiler/diagmsg:Msg" %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca i64
  %t9 = alloca { i64, [3 x i64] }, align 8
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v2, ptr %v0, ptr %v2, ptr %t1, { i64, ptr } %a0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d70, i32 0, i32 1) }, i1 false)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l2, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [3 x i64] }, ptr %t9, i32 0, i32 0
  store i64 1, ptr %t10
  %t12 = insertvalue { i64 } undef, i64 %t6, 0
  %t13 = getelementptr { i64, [3 x i64] }, ptr %t9, i32 0, i32 1
  store { i64 } %t12, ptr %t13
  %t14 = load { i64, [3 x i64] }, ptr %t9
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v2, ptr %v1, ptr %t7, { i64, [3 x i64] } %t14, %"compiler/diagmsg:Msg" %a1)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fbuild_2ehexOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"compiler/build:Sha256"
  %l2 = alloca %"compiler/build:Sha256"
  %l7 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/build:Sha256" @compiler_2fbuild_3aSha256_2ector(ptr %s0)
  store %"compiler/build:Sha256" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"compiler/build:Sha256", ptr %l2
  store %"compiler/build:Sha256" %t2, ptr %l1
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eWrite(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %a0)
  br label %bb2
bb2:
  %t8 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eSum(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t8, ptr %l7
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fbuild_2emadeBefore(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l9 = alloca i1
  %l15 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = extractvalue { i64, ptr } %a0, 1
  %t4 = extractvalue { i64, ptr } %a0, 0
  %t5 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = mul i64 %t13, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @llvm.memcpy.p0.p0.i64(ptr %t16, ptr %t14, i64 %t15, i1 false)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  %t20 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } %t18)
  %t21 = extractvalue { i32, { i64, ptr } } %t20, 1
  %t22 = extractvalue { i32, { i64, ptr } } %t20, 0
  store i32 %t22, ptr %l7
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb2, label %ok.24, !prof !99
ok.24:
  store { i64, ptr } %t21, ptr %l6
  br label %bb1
bb1:
  %t25 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t25, ptr %l2, !tbaa !27
  br label %bb6
bb2:
  %t26 = load i32, ptr %l7, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l9, !tbaa !21
  %t30 = load i32, ptr %l7, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb6
bb6:
  %t37 = extractvalue { i64, ptr } %a1, 1
  %t38 = extractvalue { i64, ptr } %a1, 0
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t41 = add i64 %t38, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t37, i64 %t38)
  %t43 = getelementptr i8, ptr %t42, i64 %t38
  call void @olang_textcopy(ptr %t43, ptr %t39, i64 %t40)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t48 = extractvalue { i64, ptr } %t45, 1
  %t49 = mul i64 %t47, 1
  %t50 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t49)
  call void @llvm.memcpy.p0.p0.i64(ptr %t50, ptr %t48, i64 %t49, i1 false)
  %t51 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t53, { i64, ptr } %t52)
  store i1 %t55, ptr %l15
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t56 = load i1, ptr %l15, !tbaa !21
  store i1 %t56, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2enoTestNamed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l53 = alloca i64
  %l55 = alloca i64
  %l60 = alloca { i64, ptr }
  %l63 = alloca i64
  %l66 = alloca i1
  %l67 = alloca i1
  %l73 = alloca { i64, ptr }
  %l75 = alloca i64
  %l82 = alloca i1
  %l84 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l19
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t3, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb10
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t17, ptr %l27, !tbaa !27
  %t18 = load i64, ptr %l5, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %t21, i64 %t18
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !37
  store { i64, ptr } %t23, ptr %l7, !tbaa !27
  store ptr %l3, ptr %l30, !tbaa !29
  %t25 = ptrtoint ptr %s0 to i64
  store i64 %t25, ptr %l31, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = call ptr @__olang_region_make(ptr %s0)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l31, !tbaa !24
  br label %bb7
bb7:
  %t30 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t34 = extractvalue { i64, ptr } %t30, 1
  %t35 = extractvalue { i64, ptr } %t30, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = load i64, ptr %l31
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t39)
  call void @olang_textcopy(ptr %t42, ptr %t31, i64 %t32)
  %t43 = getelementptr i8, ptr %t42, i64 %t32
  call void @olang_textcopy(ptr %t43, ptr %t34, i64 %t35)
  %t44 = getelementptr i8, ptr %t43, i64 %t35
  call void @olang_textcopy(ptr %t44, ptr %t37, i64 %t38)
  %t45 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t42, 1
  %t48 = load i64, ptr %l31
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = extractvalue { i64, ptr } %t46, 0
  %t51 = extractvalue { i64, ptr } %t46, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %t49, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t56 = load ptr, ptr %l30, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t56, { i64, ptr } %t55)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l5, !tbaa !24
  br label %bb2
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t62, ptr %l39, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l40, !tbaa !24
  %t65 = load i64, ptr %l40, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l41, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l40, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t76, ptr %l8, !tbaa !27
  store i64 1073741824, ptr %l9, !tbaa !24
  %t77 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t77, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  store i64 %t81, ptr %l12, !tbaa !24
  br label %bb11
bb11:
  %t83 = load i64, ptr %l11, !tbaa !24
  %t84 = load i64, ptr %l12, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb12, label %bb13
bb12:
  br label %bb35
bb13:
  br label %bb14
bb14:
  %t91 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t91, ptr %l49, !tbaa !27
  %t92 = load i64, ptr %l11, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %t95, i64 %t92
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !37
  store { i64, ptr } %t97, ptr %l13, !tbaa !27
  store ptr %a2, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb15
bb15:
  %t101 = load i64, ptr %l15, !tbaa !24
  store i64 %t101, ptr %l53, !tbaa !24
  %t102 = load ptr, ptr %l14, !tbaa !29
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t102)
  store i64 %t104, ptr %l55
  br label %bb16
bb16:
  %t105 = load i64, ptr %l53, !tbaa !24
  %t106 = load i64, ptr %l55, !tbaa !24
  %t107 = icmp slt i64 %t105, %t106
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb17, label %bb18
bb17:
  br label %bb33
bb18:
  br label %bb19
bb19:
  %t111 = load ptr, ptr %l14, !tbaa !29
  %t112 = load i64, ptr %l15, !tbaa !24
  %t115 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t111, i64 %t112)
  store { i64, ptr } %t115, ptr %l60
  br label %bb20
bb20:
  %t116 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t116, ptr %l16, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t121 = call i64 @compiler_2fbuild_2ecloseness(ptr %v1, ptr %v2, { i64, ptr } %t117, { i64, ptr } %t118)
  store i64 %t121, ptr %l63
  br label %bb21
bb21:
  %t122 = load i64, ptr %l63, !tbaa !24
  store i64 %t122, ptr %l17, !tbaa !24
  %t123 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t124 = load i64, ptr %l17, !tbaa !24
  %t127 = call i1 @compiler_2fmsgs_2eNear(ptr %v1, { i64, ptr } %t123, i64 %t124)
  store i1 %t127, ptr %l66
  br label %bb22
bb22:
  %t128 = load i1, ptr %l66, !tbaa !21
  br i1 %t128, label %bb23, label %bb24
bb23:
  %t129 = load i64, ptr %l17, !tbaa !24
  %t130 = load i64, ptr %l9, !tbaa !24
  %t133 = icmp slt i64 %t129, %t130
  store i1 %t133, ptr %l67, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb25
bb25:
  %t135 = load i1, ptr %l67, !tbaa !21
  br i1 %t135, label %bb26, label %bb27
bb26:
  %t136 = load i64, ptr %l17, !tbaa !24
  store i64 %t136, ptr %l9, !tbaa !24
  %t138 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 1
  %t141 = extractvalue { i64, ptr } %t138, 0
  %t142 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t141)
  call void @olang_textcopy(ptr %t142, ptr %t140, i64 %t141)
  %t143 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  store { i64, ptr } %t144, ptr %l73, !tbaa !27
  %t145 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  %t147 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  store i64 %t148, ptr %l75, !tbaa !24
  %t150 = load i64, ptr %l75, !tbaa !24
  %t151 = icmp eq i64 %t146, %t150
  br i1 %t151, label %bb28, label %bb29
bb27:
  br label %bb31
bb28:
  %t153 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = load i64, ptr %l75, !tbaa !24
  %t158 = mul i64 %t157, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t154, ptr %t156, i64 %t158, i1 false)
  br label %bb30
bb29:
  %t159 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t159, ptr %l8, !tbaa !27
  br label %bb30
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t160 = load i64, ptr %l15, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l15, !tbaa !24
  br label %bb15
bb33:
  br label %bb34
bb34:
  %t164 = load i64, ptr %l11, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l11, !tbaa !24
  br label %bb11
bb35:
  %t168 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t170 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t168, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d77, i32 0, i32 1) })
  store i1 %t170, ptr %l82
  br label %bb36
bb36:
  %t171 = load i1, ptr %l82, !tbaa !21
  %t172 = xor i1 %t171, true
  br i1 %t172, label %bb37, label %bb38
bb37:
  %t174 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t175 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t176 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t178 = extractvalue { i64, ptr } %t174, 1
  %t179 = extractvalue { i64, ptr } %t174, 0
  %t180 = add i64 %t176, %t179
  %t181 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t182 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t183 = add i64 %t180, %t182
  %t184 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t183)
  call void @olang_textcopy(ptr %t184, ptr %t175, i64 %t176)
  %t185 = getelementptr i8, ptr %t184, i64 %t176
  call void @olang_textcopy(ptr %t185, ptr %t178, i64 %t179)
  %t186 = getelementptr i8, ptr %t185, i64 %t179
  call void @olang_textcopy(ptr %t186, ptr %t181, i64 %t182)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t184, 1
  %t190 = extractvalue { i64, ptr } %t188, 0
  %t191 = extractvalue { i64, ptr } %t188, 1
  %t192 = mul i64 %t190, 1
  %t193 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t192)
  call void @llvm.memcpy.p0.p0.i64(ptr %t193, ptr %t191, i64 %t192, i1 false)
  %t194 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t193, 1
  store { i64, ptr } %t195, ptr %l84, !tbaa !27
  br label %bb39
bb38:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d80, i32 0, i32 1) }, ptr %l84, !tbaa !27
  br label %bb39
bb39:
  %t197 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t197, ptr %l18, !tbaa !27
  store { i64, ptr } %a0, ptr %l88, !tbaa !27
  %t200 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store { i64, ptr } %t200, ptr %l90
  br label %bb40
bb40:
  %t201 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t202, 1
  %t204 = extractvalue { i64, ptr } %t202, 0
  %t205 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t206 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t207 = add i64 %t204, %t206
  %t208 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t208, 1
  %t210 = extractvalue { i64, ptr } %t208, 0
  %t211 = add i64 %t207, %t210
  %t213 = extractvalue { i64, ptr } %t201, 1
  %t214 = extractvalue { i64, ptr } %t201, 0
  %t215 = add i64 %t211, %t214
  %t216 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t215)
  call void @olang_textcopy(ptr %t216, ptr %t203, i64 %t204)
  %t217 = getelementptr i8, ptr %t216, i64 %t204
  call void @olang_textcopy(ptr %t217, ptr %t205, i64 %t206)
  %t218 = getelementptr i8, ptr %t217, i64 %t206
  call void @olang_textcopy(ptr %t218, ptr %t209, i64 %t210)
  %t219 = getelementptr i8, ptr %t218, i64 %t210
  call void @olang_textcopy(ptr %t219, ptr %t213, i64 %t214)
  %t220 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t216, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t221, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fbuild_2erunner(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"std/os:Output"
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l13 = alloca i1
  %l14 = alloca %"std/os:Output"
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca %"std/os:Output"
  %l20 = alloca i32
  %l22 = alloca i1
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %s2 = alloca %olang.scope
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l4, !tbaa !29
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t3 = load ptr, ptr %l4, !tbaa !29
  %t5 = call { i32, i64 } @std_2fchan_2estd_2fchan_3aChan_3cI64_3e_2eNext_3cI64_3e(ptr %v0, ptr %t3)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l11
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb3, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l10
  br label %bb2
bb2:
  %t10 = load i64, ptr %l10, !tbaa !24
  store i64 %t10, ptr %l8, !tbaa !24
  br label %bb5
bb3:
  %t11 = load i32, ptr %l11, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l13, !tbaa !21
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb5:
  %t15 = load i64, ptr %l8, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t16, ptr %l15, !tbaa !27
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %t20, i64 %t17
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !37
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t25 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v1, ptr %s2, ptr %s2, ptr %s2, { i64, ptr } %t22, { i64, ptr } %t24, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d84, i32 0, i32 1) })
  %t26 = extractvalue { i32, %"std/os:Output" } %t25, 1
  %t27 = extractvalue { i32, %"std/os:Output" } %t25, 0
  store i32 %t27, ptr %l20
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb7, label %ok.29, !prof !99
ok.29:
  store %"std/os:Output" %t26, ptr %l19
  br label %bb6
bb6:
  %t30 = load %"std/os:Output", ptr %l19
  store %"std/os:Output" %t30, ptr %l14
  br label %bb13
bb7:
  %t31 = load i32, ptr %l20, !tbaa !23
  %t32 = ashr i32 %t31, 16
  %t34 = icmp eq i32 %t32, 1
  store i1 %t34, ptr %l22, !tbaa !21
  %t35 = load i32, ptr %l20, !tbaa !23
  %t36 = ashr i32 %t35, 16
  %t38 = icmp eq i32 %t36, 1
  br i1 %t38, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t40 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t40, ptr %l25, !tbaa !27
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i32, ptr %t44, i64 %t41
  store i32 127, ptr %t45, !tbaa !33
  %t46 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t46, ptr %l27, !tbaa !27
  %t47 = load i64, ptr %l5, !tbaa !24
  store i64 %t47, ptr %l28, !tbaa !24
  %t48 = ptrtoint ptr %v3 to i64
  store i64 %t48, ptr %l29, !tbaa !24
  %t49 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t51 = call ptr @__olang_region_make(ptr %v3)
  %t52 = ptrtoint ptr %t51 to i64
  store i64 %t52, ptr %l29, !tbaa !24
  br label %bb12
bb12:
  %t53 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t53, ptr %l31, !tbaa !27
  %t54 = load i64, ptr %l5, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %t57, i64 %t54
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !37
  store { i64, ptr } %t59, ptr %l33, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %t61, i64 0
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !37
  %t64 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t67 = extractvalue { i64, ptr } %t63, 1
  %t68 = extractvalue { i64, ptr } %t63, 0
  %t69 = add i64 %t65, %t68
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t72 = add i64 %t69, %t71
  %t73 = load i64, ptr %l29
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = call ptr @__olang_scope_alloc(ptr %t74, i64 %t72)
  call void @olang_textcopy(ptr %t75, ptr %t64, i64 %t65)
  %t76 = getelementptr i8, ptr %t75, i64 %t65
  call void @olang_textcopy(ptr %t76, ptr %t67, i64 %t68)
  %t77 = getelementptr i8, ptr %t76, i64 %t68
  call void @olang_textcopy(ptr %t77, ptr %t70, i64 %t71)
  %t78 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t75, 1
  %t81 = load i64, ptr %l29
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = extractvalue { i64, ptr } %t79, 0
  %t84 = extractvalue { i64, ptr } %t79, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %t82, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t90 = load i64, ptr %l28, !tbaa !24
  %t91 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %t92, i64 %t90
  store { i64, ptr } %t88, ptr %t93, !tbaa !37
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb13:
  %t94 = load %"std/os:Output", ptr %l14
  store %"std/os:Output" %t94, ptr %l6
  %t95 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t95, ptr %l37, !tbaa !27
  %t96 = load i64, ptr %l5, !tbaa !24
  %t97 = getelementptr %"std/os:Output", ptr %l6, i32 0, i32 0
  %t98 = load i32, ptr %t97, !tbaa !23
  %t101 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i32, ptr %t102, i64 %t96
  store i32 %t98, ptr %t103, !tbaa !33
  %t104 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t104, ptr %l40, !tbaa !27
  %t105 = load i64, ptr %l5, !tbaa !24
  store i64 %t105, ptr %l41, !tbaa !24
  %t106 = ptrtoint ptr %v3 to i64
  store i64 %t106, ptr %l42, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t107, label %bb14, label %bb15
bb14:
  %t109 = call ptr @__olang_region_make(ptr %v3)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l42, !tbaa !24
  br label %bb15
bb15:
  %t111 = getelementptr %"std/os:Output", ptr %l6, i32 0, i32 1
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  %t113 = getelementptr %"std/os:Output", ptr %l6, i32 0, i32 2
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t112, 1
  %t117 = extractvalue { i64, ptr } %t112, 0
  %t119 = extractvalue { i64, ptr } %t114, 1
  %t120 = extractvalue { i64, ptr } %t114, 0
  %t121 = add i64 %t117, %t120
  %t122 = load i64, ptr %l42
  %t123 = inttoptr i64 %t122 to ptr
  %t124 = call ptr @__olang_scope_alloc(ptr %t123, i64 %t121)
  call void @olang_textcopy(ptr %t124, ptr %t116, i64 %t117)
  %t125 = getelementptr i8, ptr %t124, i64 %t117
  call void @olang_textcopy(ptr %t125, ptr %t119, i64 %t120)
  %t126 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t124, 1
  %t129 = load i64, ptr %l42
  %t130 = inttoptr i64 %t129 to ptr
  %t131 = extractvalue { i64, ptr } %t127, 0
  %t132 = extractvalue { i64, ptr } %t127, 1
  %t133 = mul i64 %t131, 1
  %t134 = call ptr @__olang_scope_alloc(ptr %t130, i64 %t133)
  call void @llvm.memcpy.p0.p0.i64(ptr %t134, ptr %t132, i64 %t133, i1 false)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t134, 1
  %t138 = load i64, ptr %l41, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr { i64, ptr }, ptr %t140, i64 %t138
  store { i64, ptr } %t136, ptr %t141, !tbaa !37
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  br label %bb1
bb17:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbuild_2esayErr(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i32
  %l4 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0)
  store i32 %t3, ptr %l2
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t6 = load i32, ptr %l2, !tbaa !23
  %t7 = ashr i32 %t6, 16
  %t9 = icmp eq i32 %t7, 1
  store i1 %t9, ptr %l4, !tbaa !21
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/build:Code" @compiler_2fbuild_3aCode_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/build:Code"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/build:Code" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/build:Code" %t10, { i64, ptr } %a1, 1
  %t14 = insertvalue %"compiler/build:Code" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/build:Code" %t14, { i64, ptr } %a3, 3
  store %"compiler/build:Code" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/build:Code", ptr %rv
  ret %"compiler/build:Code" %rr
}

define dso_local %"compiler/build:Listed" @compiler_2fbuild_3aListed_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/build:Listed"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aListed_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l2
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l4
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aListed_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l2
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l0
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l6, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aListed_2e1
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l6
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t27, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l8
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aListed_2e1
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l6
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = icmp eq ptr %t38, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t39)
  br label %bb10
bb10:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t41 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  %t42 = insertvalue %"compiler/build:Listed" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t41, 0
  %t44 = insertvalue %"compiler/build:Listed" %t42, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, 1
  store %"compiler/build:Listed" %t44, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/build:Listed", ptr %rv
  ret %"compiler/build:Listed" %rr
}

define dso_local %"compiler/build:Sha256" @compiler_2fbuild_3aSha256_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca [8 x i32]
  %l5 = alloca [64 x i8]
  %rv = alloca %"compiler/build:Sha256"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [8 x i32] undef, i32 1779033703, 0
  %t2 = insertvalue [8 x i32] %t1, i32 -1150833019, 1
  %t3 = insertvalue [8 x i32] %t2, i32 1013904242, 2
  %t4 = insertvalue [8 x i32] %t3, i32 -1521486534, 3
  %t5 = insertvalue [8 x i32] %t4, i32 1359893119, 4
  %t6 = insertvalue [8 x i32] %t5, i32 -1694144372, 5
  %t7 = insertvalue [8 x i32] %t6, i32 528734635, 6
  %t8 = insertvalue [8 x i32] %t7, i32 1541459225, 7
  store [8 x i32] %t8, ptr %l0
  br label %fill.13
fill.13:
  br label %fill.10
fill.10:
  %t14 = phi i64 [ 0, %fill.13 ], [ %t15, %fill.11 ]
  %t16 = icmp slt i64 %t14, 64
  br i1 %t16, label %fill.11, label %fill.12
fill.11:
  %t17 = getelementptr [64 x i8], ptr %l5, i64 0, i64 %t14
  store i8 0, ptr %t17
  %t15 = add i64 %t14, 1
  br label %fill.10
fill.12:
  %t18 = load [64 x i8], ptr %l5
  %t19 = load [8 x i32], ptr %l0
  %t20 = insertvalue %"compiler/build:Sha256" undef, [8 x i32] %t19, 0
  %t22 = insertvalue %"compiler/build:Sha256" %t20, [64 x i8] %t18, 1
  %t24 = insertvalue %"compiler/build:Sha256" %t22, i64 0, 2
  %t26 = insertvalue %"compiler/build:Sha256" %t24, i64 0, 3
  store %"compiler/build:Sha256" %t26, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/build:Sha256", ptr %rv
  ret %"compiler/build:Sha256" %rr
}

@.d0 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
define available_externally void @__olang_scope_close(ptr %scope) alwaysinline {
entry:
  %fptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 4
  %f = load ptr, ptr %fptr, !tbaa !59
  %hasf = icmp ne ptr %f, null
  br i1 %hasf, label %parts, label %start
parts:
  %pdp = getelementptr %olang.scope, ptr %scope, i32 0, i32 1
  %pd = load ptr, ptr %pdp, !tbaa !59
  %php = getelementptr %olang.scope, ptr %scope, i32 0, i32 0
  %ph = load ptr, ptr %php, !tbaa !59
  %ptp = getelementptr %olang.scope, ptr %scope, i32 0, i32 2
  %pt = load ptr, ptr %ptp, !tbaa !59
  %folded = call { ptr, ptr, ptr } @__olang_scope_fold_parts(ptr %f, ptr %pd, ptr %ph, ptr %pt)
  %fd = extractvalue { ptr, ptr, ptr } %folded, 0
  store ptr %fd, ptr %pdp, !tbaa !59
  call void @__olang_dtor_head(ptr %fd, ptr %pdp)
  %fh = extractvalue { ptr, ptr, ptr } %folded, 1
  store ptr %fh, ptr %php, !tbaa !59
  %ft = extractvalue { ptr, ptr, ptr } %folded, 2
  store ptr %ft, ptr %ptp, !tbaa !59
  store ptr null, ptr %fptr, !tbaa !59
  br label %start
start:
  %dheadptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 1
  br label %dloop
  ; C9a: a destructor's own top level is this scope - its instance's, alive until every destructor has run - so
  ; what it builds through its instance's fields lives where they lead, and is reclaimed with the rest below. A
  ; destructor it registered there (a value it built) runs as it returns, as one in a function's own scope would,
  ; before the next of this scope's: registering puts it at the head of the list, ahead of what is left.
  ; Each node is taken off the list before its destructor runs, so the list always holds exactly what is left to
  ; run: a destructor that leaves by a failed check while a test runs (S18) leaves the rest here, and the unwind's
  ; close of this same scope (__olang_unwind_to) runs them - each destructor still exactly once (C10)
dloop:
  %dcur = load ptr, ptr %dheadptr, !tbaa !59
  %dempty = icmp eq ptr %dcur, null
  br i1 %dempty, label %chunks, label %dcall
dcall:
  %dnextptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 0
  %dnext = load ptr, ptr %dnextptr
  store ptr %dnext, ptr %dheadptr, !tbaa !59
  %dhasnext = icmp ne ptr %dnext, null
  br i1 %dhasnext, label %dfixpp, label %drun
dfixpp:
  %dnpp = getelementptr %olang.dtornode, ptr %dnext, i32 0, i32 3
  store ptr %dheadptr, ptr %dnpp
  br label %drun
drun:
  %instptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 1
  %inst = load ptr, ptr %instptr
  %fnptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 2
  %fn = load ptr, ptr %fnptr
  call void %fn(ptr %inst, ptr %scope)
  ; no free: the node lives in this scope's own arena and goes back to the pool with its chunk below.
  ; ...and what a task the destructor spawned built here, in a part of this scope it made while the destructor ran
  ; (P2), is folded in as the destructor returns - its join has waited for every such task - its destructors ahead
  ; of the ones the destructor registered itself, as the parts at entry are ahead of the scope's own
  %wp = load atomic ptr, ptr %fptr acquire, align 8
  %haswp = icmp ne ptr %wp, null
  br i1 %haswp, label %dparts, label %dloop
dparts:
  %wdh = load ptr, ptr %dheadptr, !tbaa !59
  %whp = getelementptr %olang.scope, ptr %scope, i32 0, i32 0
  %wh = load ptr, ptr %whp, !tbaa !59
  %wtp = getelementptr %olang.scope, ptr %scope, i32 0, i32 2
  %wt = load ptr, ptr %wtp, !tbaa !59
  %wfolded = call { ptr, ptr, ptr } @__olang_scope_fold_parts(ptr %wp, ptr %wdh, ptr %wh, ptr %wt)
  %wfd = extractvalue { ptr, ptr, ptr } %wfolded, 0
  store ptr %wfd, ptr %dheadptr, !tbaa !59
  call void @__olang_dtor_head(ptr %wfd, ptr %dheadptr)
  %wfh = extractvalue { ptr, ptr, ptr } %wfolded, 1
  store ptr %wfh, ptr %whp, !tbaa !59
  %wft = extractvalue { ptr, ptr, ptr } %wfolded, 2
  store ptr %wft, ptr %wtp, !tbaa !59
  store ptr null, ptr %fptr, !tbaa !59
  br label %dloop
  ; the regions made in this scope (O8d), after its destructors - which may read what this scope's objects hold there -
  ; and before its chunks: given the list, not the header, so the header does not escape into the call
chunks:
  %kidsptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 6
  %kids = load ptr, ptr %kidsptr, !tbaa !59
  %haskids = icmp ne ptr %kids, null
  br i1 %haskids, label %closekids, label %ownchunks
closekids:
  store ptr null, ptr %kidsptr, !tbaa !59
  call void @__olang_close_kids(ptr %kids)
  br label %ownchunks
ownchunks:
  %headptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 0
  %head = load ptr, ptr %headptr, !tbaa !59
  %empty = icmp eq ptr %head, null
  br i1 %empty, label %done, label %give
  ; every chunk to the pool, out of line, so that what is left here is small; and this is always inlined, so a
  ; scope's header never escapes into a call and one allocating nothing on a path costs nothing there - its header
  ; kept in registers, the close folded away (LLVM's own estimate put it past the threshold for a cold call, and a
  ; loop's body scope then cost two stores and two tests every pass). The tail needs no reset: it is read only
  ; while the list is not empty, and set when the list next stops being empty
give:
  store ptr null, ptr %headptr, !tbaa !59
  ; -s: no chunk a scope gives back is reused at once - it is poisoned and held out of reach for a while
  ; one 4KB chunk, and no spare: it becomes the spare, here
  %hnextptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 0
  %hnext = load ptr, ptr %hnextptr
  %single = icmp eq ptr %hnext, null
  %hclassptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 5
  %hclass = load i64, ptr %hclassptr
  %hsmall = icmp eq i64 %hclass, 0
  %spare = load ptr, ptr @__olang_pool_spare
  %nospare = icmp eq ptr %spare, null
  %one = and i1 %single, %hsmall
  %quick = and i1 %one, %nospare
  br i1 %quick, label %tospare, label %list
tospare:
  store ptr %head, ptr @__olang_pool_spare
  br label %done
list:
  call void @__olang_pool_give_list(ptr %head)
  br label %done
done:
  ret void
}
@.d1 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".yaml" }>, align 8
define available_externally noalias ptr @__olang_scope_alloc(ptr %scope, i64 %rawsize) alwaysinline {
entry:
  %sizeup = add i64 %rawsize, 7
  %size8 = and i64 %sizeup, -8
  %a32 = icmp uge i64 %size8, 32
  %a64 = icmp uge i64 %size8, 64
  %alnA = select i1 %a32, i64 32, i64 8
  %aln = select i1 %a64, i64 64, i64 %alnA
  %p = call ptr @__olang_scope_alloc_a(ptr %scope, i64 %rawsize, i64 %aln)
  ret ptr %p
}
define linkonce_odr hidden void @olang_textcopy(ptr %d, ptr %s, i64 %n) alwaysinline {
entry:
  %big = icmp ugt i64 %n, 16
  br i1 %big, label %call, label %s8
call:
  call void @llvm.memcpy.p0.p0.i64(ptr %d, ptr %s, i64 %n, i1 false)
  ret void
s8:
  %ge8 = icmp uge i64 %n, 8
  br i1 %ge8, label %w8, label %s4
w8:
  %e8 = sub i64 %n, 8
  %a8 = load i64, ptr %s, align 1
  %sb8 = getelementptr i8, ptr %s, i64 %e8
  %b8 = load i64, ptr %sb8, align 1
  store i64 %a8, ptr %d, align 1
  %db8 = getelementptr i8, ptr %d, i64 %e8
  store i64 %b8, ptr %db8, align 1
  ret void
s4:
  %ge4 = icmp uge i64 %n, 4
  br i1 %ge4, label %w4, label %s1
w4:
  %e4 = sub i64 %n, 4
  %a4 = load i32, ptr %s, align 1
  %sb4 = getelementptr i8, ptr %s, i64 %e4
  %b4 = load i32, ptr %sb4, align 1
  store i32 %a4, ptr %d, align 1
  %db4 = getelementptr i8, ptr %d, i64 %e4
  store i32 %b4, ptr %db4, align 1
  ret void
s1:
  %none = icmp eq i64 %n, 0
  br i1 %none, label %done, label %w1
w1:
  %h = lshr i64 %n, 1
  %e1 = sub i64 %n, 1
  %a1 = load i8, ptr %s
  %sh = getelementptr i8, ptr %s, i64 %h
  %m1 = load i8, ptr %sh
  %se = getelementptr i8, ptr %s, i64 %e1
  %z1 = load i8, ptr %se
  store i8 %a1, ptr %d
  %dh = getelementptr i8, ptr %d, i64 %h
  store i8 %m1, ptr %dh
  %de = getelementptr i8, ptr %d, i64 %e1
  store i8 %z1, ptr %de
  br label %done
done:
  ret void
}
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define available_externally void @__olang_scope_escape(ptr %s) alwaysinline {
entry:
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %un = icmp eq ptr %o, null
  br i1 %un, label %claim, label %done
claim:
  %me = load ptr, ptr @__olang_self
  store atomic ptr %me, ptr %op monotonic, align 8
  br label %done
done:
  ret void
}
define internal i1 @olang_lambda_3(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %rv = alloca i1
  %cp0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { i64, ptr }, ptr %cp0, !tbaa !28
  store { i64, ptr } %cv0, ptr %l2
  %vq0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  %t4 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr i64, ptr %t5, i64 %a0
  %t7 = load i64, ptr %t6, !tbaa !34
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t8, ptr %l6, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr i64, ptr %t12, i64 %a1
  %t14 = load i64, ptr %t13, !tbaa !34
  %t17 = icmp sgt i64 %t7, %t14
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define available_externally noalias ptr @__olang_scope_alloc_a(ptr %scope, i64 %rawsize, i64 %aln) alwaysinline {
entry:
  ; every allocation is rounded up to 8 bytes so the NEXT one starts 8-aligned. The bump offset is a
  ; raw byte sum, so without this a 12-byte "Array<I32>(3)" left the following allocation at offset 12 -
  ; fine for an i32 but misaligned for any i64 or pointer field, which is UB at the LLVM level even
  ; where the hardware tolerates it. Latent before; the dtor nodes below (24 bytes, three pointers,
  ; one per registered instance) made it near-certain to be hit. The chunk's own data area is
  ; already 64-aligned (O8a): the chunk is, and its header is 64 bytes.
  %sizeup = add i64 %rawsize, 7
  %size8 = and i64 %sizeup, -8
  ; E10: an allocation of nothing still gets storage of its own, so two of them are two instances (an empty array
  ; made twice, a struct with no fields built twice) - a zero size bumped nothing, and handed both the same address
  %size0 = icmp eq i64 %size8, 0
  %size = select i1 %size0, i64 8, i64 %size8
  %alnm1 = sub i64 %aln, 1
  %alnmask = sub i64 0, %aln
  ; every offset is a multiple of 8 already (every size is), so an 8-aligned allocation - every aggregate, and every
  ; array under 32 bytes, decided while compiling where the size is known - takes the offset as it is
  %round = icmp ugt i64 %aln, 8
  %headptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 0
  %head = load ptr, ptr %headptr, !tbaa !59
  %headnull = icmp eq ptr %head, null
  br i1 %headnull, label %needchunk, label %checkspace
checkspace:
  %csusedptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 1
  %csused = load i64, ptr %csusedptr, !tbaa !60
  %cscapptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 2
  %cscap = load i64, ptr %cscapptr, !tbaa !60
  %csup = add i64 %csused, %alnm1
  %csrounded = and i64 %csup, %alnmask
  %csaligned = select i1 %round, i64 %csrounded, i64 %csused
  %remaining = sub i64 %cscap, %csaligned
  %fits = icmp uge i64 %remaining, %size
  br i1 %fits, label %bump, label %needchunk
  ; the common case, complete in itself: the offset just computed, bumped
bump:
  %dataptr = getelementptr %olang.chunk, ptr %head, i32 1
  %result = getelementptr i8, ptr %dataptr, i64 %csaligned
  %newused = add i64 %csaligned, %size
  store i64 %newused, ptr %csusedptr, !tbaa !60
  ; B19b: a benchmark build counts what this thread allocates - here and at the slow path's own bump, so each
  ; allocation is counted once wherever it is made (a region's and a forwarded scope's come back through here)
; @bench %bna = load i64, ptr @__olang_bench_allocs
; @bench %bna1 = add i64 %bna, 1
; @bench store i64 %bna1, ptr @__olang_bench_allocs
; @bench %bnb = load i64, ptr @__olang_bench_bytes
; @bench %bnb1 = add i64 %bnb, %size
; @bench store i64 %bnb1, ptr @__olang_bench_bytes
  ret ptr %result
needchunk:
  %slow = tail call ptr @__olang_scope_alloc_slow(ptr %scope, i64 %rawsize, i64 %aln)
  ret ptr %slow
}
declare ptr @__olang_standin(ptr)
declare ptr @__olang_worker_get()
declare void @__olang_worker_start(ptr, ptr, ptr, ptr)
define internal ptr @olang_task4(ptr %env) #0 {
entry:
  %f0 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  %f1 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %f2 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %f3 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %f4 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 4
  %f5 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 5
  %f6 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 6
  %f7 = getelementptr { ptr, { i64, ptr }, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 7
  %sc0 = load ptr, ptr %f4
  %sn0 = icmp eq ptr %sc0, null
  %sg0 = load ptr, ptr @__olang_prog_scope
  %ss0 = select i1 %sn0, ptr %sg0, ptr %sc0
  %sc1 = load ptr, ptr %f5
  %sn1 = icmp eq ptr %sc1, null
  %sg1 = load ptr, ptr @__olang_prog_scope
  %ss1 = select i1 %sn1, ptr %sg1, ptr %sc1
  %sc2 = load ptr, ptr %f6
  %sn2 = icmp eq ptr %sc2, null
  %sg2 = load ptr, ptr @__olang_prog_scope
  %ss2 = select i1 %sn2, ptr %sg2, ptr %sc2
  %sc3 = load ptr, ptr %f7
  %sn3 = icmp eq ptr %sc3, null
  %sg3 = load ptr, ptr @__olang_prog_scope
  %ss3 = select i1 %sn3, ptr %sg3, ptr %sc3
  %a0 = load ptr, ptr %f0
  %a1 = load { i64, ptr }, ptr %f1
  %a2 = load { i64, ptr }, ptr %f2
  %a3 = load { i64, ptr }, ptr %f3
  call void @compiler_2fbuild_2erunner(ptr %ss0, ptr %ss1, ptr %ss2, ptr %ss3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
  ret ptr null
}

declare i64 @__olang_join_tasks_keep(ptr, i1)
@.d5 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-flto" }>, align 8
@.d6 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-flto=thin" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"== " }>, align 8
@.d8 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ==" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"36" }>, align 8
declare void @__olang_errpay_pop()
@__olang_empty_array = external constant [16 x i64]
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"code" }>, align 8
@.d11 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--target=" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_209_3e_2e_2d1 = weak hidden constant i1 false
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-S" }>, align 8
@.d15 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-emit-llvm" }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d17 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ir" }>, align 8
@.d18 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-Xclang" }>, align 8
@.d19 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"-disable-llvm-passes" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@olang_2esole_2eArray_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2e_2d1 = weak hidden constant i1 false
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1 = weak hidden constant i1 false
@.d22 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--version" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aConfig_2e29 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
declare i32 @getpid()
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".tmp" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".lib" }>, align 8
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"/lib" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".so" }>, align 8
@.d37 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".h" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"link" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aConfig_2e24 = weak hidden constant i1 false
@.d40 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"built " }>, align 8
@.d41 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" and " }>, align 8
@.d42 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"32" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.c46 = private unnamed_addr constant [5 x i8] c"true\00"
@.c47 = private unnamed_addr constant [6 x i8] c"false\00"
@.d48 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"/u" }>, align 8
@.d49 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".in.ll" }>, align 8
@.d50 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-S" }>, align 8
@.d51 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-emit-llvm" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_204_3e_2e_2d1 = weak hidden constant i1 false
@.d52 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
@.d53 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".s" }>, align 8
@.d54 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"/u" }>, align 8
@.d55 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"-foptimization-record-file=" }>, align 8
@.d56 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"/u" }>, align 8
@.d57 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".yaml" }>, align 8
@.d58 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d59 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"/u" }>, align 8
@.d60 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".in.ll" }>, align 8
@.d61 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"/u" }>, align 8
@.d62 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".in.ll" }>, align 8
@.d63 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/made" }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d65 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c": cannot be built, skipping" }>, align 8
@.d66 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d67 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d68 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"()\0A" }>, align 8
@.d69 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d70 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d71 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/made" }>, align 8
@.d72 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d76 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d77 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d78 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" - did you mean '" }>, align 8
@.d79 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'?" }>, align 8
@.d80 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d81 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d82 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c": no test is named by " }>, align 8
@.d83 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d84 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d85 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"cannot run " }>, align 8
@.d86 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aListed_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fbuild_3aListed_2e1 = weak hidden constant i1 false
declare { ptr, ptr, ptr } @__olang_scope_fold_parts(ptr, ptr, ptr, ptr) noinline
define available_externally void @__olang_dtor_head(ptr %node, ptr %at) alwaysinline {
entry:
  %has = icmp ne ptr %node, null
  br i1 %has, label %fix, label %done
fix:
  %ppp = getelementptr %olang.dtornode, ptr %node, i32 0, i32 3
  store ptr %at, ptr %ppp
  br label %done
done:
  ret void
}
declare void @__olang_close_kids(ptr) noinline
@__olang_pool_spare = external thread_local(initialexec) global ptr
declare void @__olang_pool_give_list(ptr) noinline
@__olang_self = external thread_local(initialexec) global ptr
define available_externally ptr @__olang_capture_scope(ptr %s) alwaysinline {
entry:
  %isprog = icmp eq ptr %s, null
  br i1 %isprog, label %prog, label %mine
prog:
  %p = load ptr, ptr @__olang_prog_scope
  ret ptr %p
mine:
  %m = call ptr @__olang_scope_mine(ptr %s)
  ret ptr %m
}
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@__olang_prog_scope = external thread_local(initialexec) global ptr
define available_externally ptr @__olang_scope_mine(ptr %s) alwaysinline {
entry:
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %me = load ptr, ptr @__olang_self
  %own = icmp eq ptr %o, %me
  br i1 %own, label %mine, label %slow
mine:
  ret ptr %s
slow:
  %r = call ptr @__olang_scope_mine_slow(ptr %s)
  ret ptr %r
}
declare ptr @__olang_scope_mine_slow(ptr) noinline
declare { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_807a392292b9ae5a_fba630df00719f06 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_cca858d13f2cc89a_874b1ca570aaca06 = external constant [0 x i8]
@olang_loc_2b4b55182e30c5b8_1dd1254afca8c384 = external constant [0 x i8]
@olang_loc_3fd1be9bff2cc025_306b5f0bb3e84491 = external constant [0 x i8]
@olang_loc_bc625dc042a99e06_c0b5fdead4ea6272 = external constant [0 x i8]
declare void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare void @std_2fchan_3aChan_3cI64_3e_2ector(ptr %out, ptr %v0, i64 %a0)
declare void @std_2fchan_2eInit_3cI64_3e(ptr %v0, ptr %a0)
declare i32 @std_2fchan_2eSend_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_1359a9f97975288c_a8d4abcb606172b0 = external constant [0 x i8]
declare void @std_2fchan_2eClose_3cI64_3e(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2fbuild_2esayln(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_ed85b58552229ad2_db88a25435ad515e = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewidth(ptr %v0, ptr %a0)
@olang_loc_39c6cdce0ac4fdc7_621aa1b204fc2693 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eClangFailed(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare { i32, %"std/os:Output" } @compiler_2ftarget_2eClangSays(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H2ab12f44ffbd18d099d1f5a69642975a(ptr %v0, ptr %a0)
declare i32 @std_2fos_2eRename(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRemove(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v0)
declare i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
@olang_loc_3ba7d2bc4f70132e_88e22ea564bfc3e2 = external constant [0 x i8]
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eLink(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2emodeSuffix(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eLink(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3, ptr %a4, ptr %a5)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fbuild_2efinish(ptr %v0, ptr %a0)
declare void @compiler_2fbuild_2ePhase(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOutputCannotWrite(ptr %v0)
declare { i64, ptr } @compiler_2fbuild_2eShown(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %a0)
declare %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCompileFlags(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fbuild_2elistFiles(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1, ptr %a2)
declare i32 @compiler_2fbuild_2eafresh(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fbuild_2esay(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fbuild_2erotr(i32 %a0, i32 %a1)
@G_2ecompiler_2fbuild_2eShaK = available_externally constant <{ [256 x i8] }> <{ [256 x i8] c"\98\2F\8A\42\91\44\37\71\CF\FB\C0\B5\A5\DB\B5\E9\5B\C2\56\39\F1\11\F1\59\A4\82\3F\92\D5\5E\1C\AB\98\AA\07\D8\01\5B\83\12\BE\85\31\24\C3\7D\0C\55\74\5D\BE\72\FE\B1\DE\80\A7\06\DC\9B\74\F1\9B\C1\C1\69\9B\E4\86\47\BE\EF\C6\9D\C1\0F\CC\A1\0C\24\6F\2C\E9\2D\AA\84\74\4A\DC\A9\B0\5C\DA\88\F9\76\52\51\3E\98\6D\C6\31\A8\C8\27\03\B0\C7\7F\59\BF\F3\0B\E0\C6\47\91\A7\D5\51\63\CA\06\67\29\29\14\85\0A\B7\27\38\21\1B\2E\FC\6D\2C\4D\13\0D\38\53\54\73\0A\65\BB\0A\6A\76\2E\C9\C2\81\85\2C\72\92\A1\E8\BF\A2\4B\66\1A\A8\70\8B\4B\C2\A3\51\6C\C7\19\E8\92\D1\24\06\99\D6\85\35\0E\F4\70\A0\6A\10\16\C1\A4\19\08\6C\37\1E\4C\77\48\27\B5\BC\B0\34\B3\0C\1C\39\4A\AA\D8\4E\4F\CA\9C\5B\F3\6F\2E\68\EE\82\8F\74\6F\63\A5\78\14\78\C8\84\08\02\C7\8C\FA\FF\BE\90\EB\6C\50\A4\F7\A3\F9\BE\F2\78\71\C6" }>, align 64
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eWrite(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eSum(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fbuild_2ecloseness(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fmsgs_2eNear(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fchan_2estd_2fchan_3aChan_3cI64_3e_2eNext_3cI64_3e(ptr %v0, ptr %a0)
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0)

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
