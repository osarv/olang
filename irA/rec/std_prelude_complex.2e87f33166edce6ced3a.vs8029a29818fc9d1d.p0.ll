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
%"std/prelude/complex:C16" = type { half, half }
%"std/prelude/complex:C32" = type { float, float }
%"std/prelude/complex:C64" = type { double, double }
define dso_local %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC16_2eConj(%"std/prelude/complex:C16" %a0) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C16"
  %l4 = alloca %"std/prelude/complex:C16"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C16"
  store %"std/prelude/complex:C16" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 0
  %t2 = load half, ptr %t1, !tbaa !66
  %t3 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 1
  %t4 = load half, ptr %t3, !tbaa !66
  %t6 = fneg half %t4
  %t9 = call %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_3aC16_2ector(ptr %s0, half %t2, half %t6)
  store %"std/prelude/complex:C16" %t9, ptr %l4
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t10 = load %"std/prelude/complex:C16", ptr %l4
  store %"std/prelude/complex:C16" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C16", ptr %rv
  ret %"std/prelude/complex:C16" %rr
}

define dso_local %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC16_2eDiv(%"std/prelude/complex:C16" %a0, %"std/prelude/complex:C16" %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C16"
  %l1 = alloca %"std/prelude/complex:C16"
  %l2 = alloca double
  %l3 = alloca double
  %l4 = alloca double
  %l5 = alloca double
  %l6 = alloca double
  %l42 = alloca %"std/prelude/complex:C16"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C16"
  store %"std/prelude/complex:C16" %a0, ptr %l0
  store %"std/prelude/complex:C16" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 0
  %t2 = load half, ptr %t1, !tbaa !66
  %t4 = fpext half %t2 to double
  store double %t4, ptr %l2, !tbaa !26
  %t6 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 1
  %t7 = load half, ptr %t6, !tbaa !66
  %t9 = fpext half %t7 to double
  store double %t9, ptr %l3, !tbaa !26
  %t11 = getelementptr %"std/prelude/complex:C16", ptr %l1, i32 0, i32 0
  %t12 = load half, ptr %t11, !tbaa !66
  %t14 = fpext half %t12 to double
  store double %t14, ptr %l4, !tbaa !26
  %t16 = getelementptr %"std/prelude/complex:C16", ptr %l1, i32 0, i32 1
  %t17 = load half, ptr %t16, !tbaa !66
  %t19 = fpext half %t17 to double
  store double %t19, ptr %l5, !tbaa !26
  %t21 = load double, ptr %l4, !tbaa !26
  %t22 = load double, ptr %l4, !tbaa !26
  %t25 = fmul double %t21, %t22
  %t26 = load double, ptr %l5, !tbaa !26
  %t27 = load double, ptr %l5, !tbaa !26
  %t30 = fmul double %t26, %t27
  %t33 = fadd double %t25, %t30
  store double %t33, ptr %l6, !tbaa !26
  %t35 = load double, ptr %l2, !tbaa !26
  %t36 = load double, ptr %l4, !tbaa !26
  %t39 = fmul double %t35, %t36
  %t40 = load double, ptr %l3, !tbaa !26
  %t41 = load double, ptr %l5, !tbaa !26
  %t44 = fmul double %t40, %t41
  %t47 = fadd double %t39, %t44
  %t48 = load double, ptr %l6, !tbaa !26
  %t51 = fdiv double %t47, %t48
  %t53 = fptrunc double %t51 to half
  %t54 = load double, ptr %l3, !tbaa !26
  %t55 = load double, ptr %l4, !tbaa !26
  %t58 = fmul double %t54, %t55
  %t59 = load double, ptr %l2, !tbaa !26
  %t60 = load double, ptr %l5, !tbaa !26
  %t63 = fmul double %t59, %t60
  %t66 = fsub double %t58, %t63
  %t67 = load double, ptr %l6, !tbaa !26
  %t70 = fdiv double %t66, %t67
  %t72 = fptrunc double %t70 to half
  %t75 = call %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_3aC16_2ector(ptr %s0, half %t53, half %t72)
  store %"std/prelude/complex:C16" %t75, ptr %l42
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t76 = load %"std/prelude/complex:C16", ptr %l42
  store %"std/prelude/complex:C16" %t76, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C16", ptr %rv
  ret %"std/prelude/complex:C16" %rr
}

define dso_local %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC16_2eMinus(%"std/prelude/complex:C16" %a0, %"std/prelude/complex:C16" %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C16"
  %l1 = alloca %"std/prelude/complex:C16"
  %l8 = alloca %"std/prelude/complex:C16"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C16"
  store %"std/prelude/complex:C16" %a0, ptr %l0
  store %"std/prelude/complex:C16" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 0
  %t2 = load half, ptr %t1, !tbaa !66
  %t3 = getelementptr %"std/prelude/complex:C16", ptr %l1, i32 0, i32 0
  %t4 = load half, ptr %t3, !tbaa !66
  %t7 = fsub half %t2, %t4
  %t8 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 1
  %t9 = load half, ptr %t8, !tbaa !66
  %t10 = getelementptr %"std/prelude/complex:C16", ptr %l1, i32 0, i32 1
  %t11 = load half, ptr %t10, !tbaa !66
  %t14 = fsub half %t9, %t11
  %t17 = call %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_3aC16_2ector(ptr %s0, half %t7, half %t14)
  store %"std/prelude/complex:C16" %t17, ptr %l8
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load %"std/prelude/complex:C16", ptr %l8
  store %"std/prelude/complex:C16" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C16", ptr %rv
  ret %"std/prelude/complex:C16" %rr
}

define dso_local %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC16_2eMul(%"std/prelude/complex:C16" %a0, %"std/prelude/complex:C16" %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C16"
  %l1 = alloca %"std/prelude/complex:C16"
  %l16 = alloca %"std/prelude/complex:C16"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C16"
  store %"std/prelude/complex:C16" %a0, ptr %l0
  store %"std/prelude/complex:C16" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 0
  %t2 = load half, ptr %t1, !tbaa !66
  %t3 = getelementptr %"std/prelude/complex:C16", ptr %l1, i32 0, i32 0
  %t4 = load half, ptr %t3, !tbaa !66
  %t7 = fmul half %t2, %t4
  %t8 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 1
  %t9 = load half, ptr %t8, !tbaa !66
  %t10 = getelementptr %"std/prelude/complex:C16", ptr %l1, i32 0, i32 1
  %t11 = load half, ptr %t10, !tbaa !66
  %t14 = fmul half %t9, %t11
  %t17 = fsub half %t7, %t14
  %t18 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 0
  %t19 = load half, ptr %t18, !tbaa !66
  %t20 = getelementptr %"std/prelude/complex:C16", ptr %l1, i32 0, i32 1
  %t21 = load half, ptr %t20, !tbaa !66
  %t24 = fmul half %t19, %t21
  %t25 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 1
  %t26 = load half, ptr %t25, !tbaa !66
  %t27 = getelementptr %"std/prelude/complex:C16", ptr %l1, i32 0, i32 0
  %t28 = load half, ptr %t27, !tbaa !66
  %t31 = fmul half %t26, %t28
  %t34 = fadd half %t24, %t31
  %t37 = call %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_3aC16_2ector(ptr %s0, half %t17, half %t34)
  store %"std/prelude/complex:C16" %t37, ptr %l16
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t38 = load %"std/prelude/complex:C16", ptr %l16
  store %"std/prelude/complex:C16" %t38, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C16", ptr %rv
  ret %"std/prelude/complex:C16" %rr
}

define dso_local %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC16_2eNeg(%"std/prelude/complex:C16" %a0) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C16"
  %l5 = alloca %"std/prelude/complex:C16"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C16"
  store %"std/prelude/complex:C16" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 0
  %t2 = load half, ptr %t1, !tbaa !66
  %t4 = fneg half %t2
  %t5 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 1
  %t6 = load half, ptr %t5, !tbaa !66
  %t8 = fneg half %t6
  %t11 = call %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_3aC16_2ector(ptr %s0, half %t4, half %t8)
  store %"std/prelude/complex:C16" %t11, ptr %l5
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t12 = load %"std/prelude/complex:C16", ptr %l5
  store %"std/prelude/complex:C16" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C16", ptr %rv
  ret %"std/prelude/complex:C16" %rr
}

define dso_local half @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC16_2eNorm(%"std/prelude/complex:C16" %a0) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C16"
  %rv = alloca half
  store %"std/prelude/complex:C16" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 0
  %t2 = load half, ptr %t1, !tbaa !66
  %t3 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 0
  %t4 = load half, ptr %t3, !tbaa !66
  %t7 = fmul half %t2, %t4
  %t8 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 1
  %t9 = load half, ptr %t8, !tbaa !66
  %t10 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 1
  %t11 = load half, ptr %t10, !tbaa !66
  %t14 = fmul half %t9, %t11
  %t17 = fadd half %t7, %t14
  store half %t17, ptr %rv
  br label %ret
ret:
  %rr = load half, ptr %rv
  ret half %rr
}

define dso_local %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC16_2ePlus(%"std/prelude/complex:C16" %a0, %"std/prelude/complex:C16" %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C16"
  %l1 = alloca %"std/prelude/complex:C16"
  %l8 = alloca %"std/prelude/complex:C16"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C16"
  store %"std/prelude/complex:C16" %a0, ptr %l0
  store %"std/prelude/complex:C16" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 0
  %t2 = load half, ptr %t1, !tbaa !66
  %t3 = getelementptr %"std/prelude/complex:C16", ptr %l1, i32 0, i32 0
  %t4 = load half, ptr %t3, !tbaa !66
  %t7 = fadd half %t2, %t4
  %t8 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 1
  %t9 = load half, ptr %t8, !tbaa !66
  %t10 = getelementptr %"std/prelude/complex:C16", ptr %l1, i32 0, i32 1
  %t11 = load half, ptr %t10, !tbaa !66
  %t14 = fadd half %t9, %t11
  %t17 = call %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_3aC16_2ector(ptr %s0, half %t7, half %t14)
  store %"std/prelude/complex:C16" %t17, ptr %l8
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load %"std/prelude/complex:C16", ptr %l8
  store %"std/prelude/complex:C16" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C16", ptr %rv
  ret %"std/prelude/complex:C16" %rr
}

define dso_local %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC16_2eScale(%"std/prelude/complex:C16" %a0, half %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C16"
  %l1 = alloca half
  %l8 = alloca %"std/prelude/complex:C16"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C16"
  store %"std/prelude/complex:C16" %a0, ptr %l0
  store half %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 0
  %t2 = load half, ptr %t1, !tbaa !66
  %t3 = load half, ptr %l1, !tbaa !66
  %t6 = fmul half %t2, %t3
  %t7 = getelementptr %"std/prelude/complex:C16", ptr %l0, i32 0, i32 1
  %t8 = load half, ptr %t7, !tbaa !66
  %t9 = load half, ptr %l1, !tbaa !66
  %t12 = fmul half %t8, %t9
  %t15 = call %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_3aC16_2ector(ptr %s0, half %t6, half %t12)
  store %"std/prelude/complex:C16" %t15, ptr %l8
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t16 = load %"std/prelude/complex:C16", ptr %l8
  store %"std/prelude/complex:C16" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C16", ptr %rv
  ret %"std/prelude/complex:C16" %rr
}

define dso_local %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC32_2eConj(%"std/prelude/complex:C32" %a0) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C32"
  %l4 = alloca %"std/prelude/complex:C32"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C32"
  store %"std/prelude/complex:C32" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 0
  %t2 = load float, ptr %t1, !tbaa !25
  %t3 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 1
  %t4 = load float, ptr %t3, !tbaa !25
  %t6 = fneg float %t4
  %t9 = call %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_3aC32_2ector(ptr %s0, float %t2, float %t6)
  store %"std/prelude/complex:C32" %t9, ptr %l4
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t10 = load %"std/prelude/complex:C32", ptr %l4
  store %"std/prelude/complex:C32" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C32", ptr %rv
  ret %"std/prelude/complex:C32" %rr
}

define dso_local %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC32_2eDiv(%"std/prelude/complex:C32" %a0, %"std/prelude/complex:C32" %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C32"
  %l1 = alloca %"std/prelude/complex:C32"
  %l2 = alloca double
  %l3 = alloca double
  %l4 = alloca double
  %l5 = alloca double
  %l6 = alloca double
  %l42 = alloca %"std/prelude/complex:C32"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C32"
  store %"std/prelude/complex:C32" %a0, ptr %l0
  store %"std/prelude/complex:C32" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 0
  %t2 = load float, ptr %t1, !tbaa !25
  %t4 = fpext float %t2 to double
  store double %t4, ptr %l2, !tbaa !26
  %t6 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 1
  %t7 = load float, ptr %t6, !tbaa !25
  %t9 = fpext float %t7 to double
  store double %t9, ptr %l3, !tbaa !26
  %t11 = getelementptr %"std/prelude/complex:C32", ptr %l1, i32 0, i32 0
  %t12 = load float, ptr %t11, !tbaa !25
  %t14 = fpext float %t12 to double
  store double %t14, ptr %l4, !tbaa !26
  %t16 = getelementptr %"std/prelude/complex:C32", ptr %l1, i32 0, i32 1
  %t17 = load float, ptr %t16, !tbaa !25
  %t19 = fpext float %t17 to double
  store double %t19, ptr %l5, !tbaa !26
  %t21 = load double, ptr %l4, !tbaa !26
  %t22 = load double, ptr %l4, !tbaa !26
  %t25 = fmul double %t21, %t22
  %t26 = load double, ptr %l5, !tbaa !26
  %t27 = load double, ptr %l5, !tbaa !26
  %t30 = fmul double %t26, %t27
  %t33 = fadd double %t25, %t30
  store double %t33, ptr %l6, !tbaa !26
  %t35 = load double, ptr %l2, !tbaa !26
  %t36 = load double, ptr %l4, !tbaa !26
  %t39 = fmul double %t35, %t36
  %t40 = load double, ptr %l3, !tbaa !26
  %t41 = load double, ptr %l5, !tbaa !26
  %t44 = fmul double %t40, %t41
  %t47 = fadd double %t39, %t44
  %t48 = load double, ptr %l6, !tbaa !26
  %t51 = fdiv double %t47, %t48
  %t53 = fptrunc double %t51 to float
  %t54 = load double, ptr %l3, !tbaa !26
  %t55 = load double, ptr %l4, !tbaa !26
  %t58 = fmul double %t54, %t55
  %t59 = load double, ptr %l2, !tbaa !26
  %t60 = load double, ptr %l5, !tbaa !26
  %t63 = fmul double %t59, %t60
  %t66 = fsub double %t58, %t63
  %t67 = load double, ptr %l6, !tbaa !26
  %t70 = fdiv double %t66, %t67
  %t72 = fptrunc double %t70 to float
  %t75 = call %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_3aC32_2ector(ptr %s0, float %t53, float %t72)
  store %"std/prelude/complex:C32" %t75, ptr %l42
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t76 = load %"std/prelude/complex:C32", ptr %l42
  store %"std/prelude/complex:C32" %t76, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C32", ptr %rv
  ret %"std/prelude/complex:C32" %rr
}

define dso_local %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC32_2eMinus(%"std/prelude/complex:C32" %a0, %"std/prelude/complex:C32" %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C32"
  %l1 = alloca %"std/prelude/complex:C32"
  %l8 = alloca %"std/prelude/complex:C32"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C32"
  store %"std/prelude/complex:C32" %a0, ptr %l0
  store %"std/prelude/complex:C32" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 0
  %t2 = load float, ptr %t1, !tbaa !25
  %t3 = getelementptr %"std/prelude/complex:C32", ptr %l1, i32 0, i32 0
  %t4 = load float, ptr %t3, !tbaa !25
  %t7 = fsub float %t2, %t4
  %t8 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 1
  %t9 = load float, ptr %t8, !tbaa !25
  %t10 = getelementptr %"std/prelude/complex:C32", ptr %l1, i32 0, i32 1
  %t11 = load float, ptr %t10, !tbaa !25
  %t14 = fsub float %t9, %t11
  %t17 = call %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_3aC32_2ector(ptr %s0, float %t7, float %t14)
  store %"std/prelude/complex:C32" %t17, ptr %l8
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load %"std/prelude/complex:C32", ptr %l8
  store %"std/prelude/complex:C32" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C32", ptr %rv
  ret %"std/prelude/complex:C32" %rr
}

define dso_local %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC32_2eMul(%"std/prelude/complex:C32" %a0, %"std/prelude/complex:C32" %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C32"
  %l1 = alloca %"std/prelude/complex:C32"
  %l16 = alloca %"std/prelude/complex:C32"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C32"
  store %"std/prelude/complex:C32" %a0, ptr %l0
  store %"std/prelude/complex:C32" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 0
  %t2 = load float, ptr %t1, !tbaa !25
  %t3 = getelementptr %"std/prelude/complex:C32", ptr %l1, i32 0, i32 0
  %t4 = load float, ptr %t3, !tbaa !25
  %t7 = fmul float %t2, %t4
  %t8 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 1
  %t9 = load float, ptr %t8, !tbaa !25
  %t10 = getelementptr %"std/prelude/complex:C32", ptr %l1, i32 0, i32 1
  %t11 = load float, ptr %t10, !tbaa !25
  %t14 = fmul float %t9, %t11
  %t17 = fsub float %t7, %t14
  %t18 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 0
  %t19 = load float, ptr %t18, !tbaa !25
  %t20 = getelementptr %"std/prelude/complex:C32", ptr %l1, i32 0, i32 1
  %t21 = load float, ptr %t20, !tbaa !25
  %t24 = fmul float %t19, %t21
  %t25 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 1
  %t26 = load float, ptr %t25, !tbaa !25
  %t27 = getelementptr %"std/prelude/complex:C32", ptr %l1, i32 0, i32 0
  %t28 = load float, ptr %t27, !tbaa !25
  %t31 = fmul float %t26, %t28
  %t34 = fadd float %t24, %t31
  %t37 = call %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_3aC32_2ector(ptr %s0, float %t17, float %t34)
  store %"std/prelude/complex:C32" %t37, ptr %l16
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t38 = load %"std/prelude/complex:C32", ptr %l16
  store %"std/prelude/complex:C32" %t38, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C32", ptr %rv
  ret %"std/prelude/complex:C32" %rr
}

define dso_local %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC32_2eNeg(%"std/prelude/complex:C32" %a0) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C32"
  %l5 = alloca %"std/prelude/complex:C32"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C32"
  store %"std/prelude/complex:C32" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 0
  %t2 = load float, ptr %t1, !tbaa !25
  %t4 = fneg float %t2
  %t5 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 1
  %t6 = load float, ptr %t5, !tbaa !25
  %t8 = fneg float %t6
  %t11 = call %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_3aC32_2ector(ptr %s0, float %t4, float %t8)
  store %"std/prelude/complex:C32" %t11, ptr %l5
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t12 = load %"std/prelude/complex:C32", ptr %l5
  store %"std/prelude/complex:C32" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C32", ptr %rv
  ret %"std/prelude/complex:C32" %rr
}

define dso_local float @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC32_2eNorm(%"std/prelude/complex:C32" %a0) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C32"
  %rv = alloca float
  store %"std/prelude/complex:C32" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 0
  %t2 = load float, ptr %t1, !tbaa !25
  %t3 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 0
  %t4 = load float, ptr %t3, !tbaa !25
  %t7 = fmul float %t2, %t4
  %t8 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 1
  %t9 = load float, ptr %t8, !tbaa !25
  %t10 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 1
  %t11 = load float, ptr %t10, !tbaa !25
  %t14 = fmul float %t9, %t11
  %t17 = fadd float %t7, %t14
  store float %t17, ptr %rv
  br label %ret
ret:
  %rr = load float, ptr %rv
  ret float %rr
}

define dso_local %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC32_2ePlus(%"std/prelude/complex:C32" %a0, %"std/prelude/complex:C32" %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C32"
  %l1 = alloca %"std/prelude/complex:C32"
  %l8 = alloca %"std/prelude/complex:C32"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C32"
  store %"std/prelude/complex:C32" %a0, ptr %l0
  store %"std/prelude/complex:C32" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 0
  %t2 = load float, ptr %t1, !tbaa !25
  %t3 = getelementptr %"std/prelude/complex:C32", ptr %l1, i32 0, i32 0
  %t4 = load float, ptr %t3, !tbaa !25
  %t7 = fadd float %t2, %t4
  %t8 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 1
  %t9 = load float, ptr %t8, !tbaa !25
  %t10 = getelementptr %"std/prelude/complex:C32", ptr %l1, i32 0, i32 1
  %t11 = load float, ptr %t10, !tbaa !25
  %t14 = fadd float %t9, %t11
  %t17 = call %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_3aC32_2ector(ptr %s0, float %t7, float %t14)
  store %"std/prelude/complex:C32" %t17, ptr %l8
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load %"std/prelude/complex:C32", ptr %l8
  store %"std/prelude/complex:C32" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C32", ptr %rv
  ret %"std/prelude/complex:C32" %rr
}

define dso_local %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC32_2eScale(%"std/prelude/complex:C32" %a0, float %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C32"
  %l1 = alloca float
  %l8 = alloca %"std/prelude/complex:C32"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C32"
  store %"std/prelude/complex:C32" %a0, ptr %l0
  store float %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 0
  %t2 = load float, ptr %t1, !tbaa !25
  %t3 = load float, ptr %l1, !tbaa !25
  %t6 = fmul float %t2, %t3
  %t7 = getelementptr %"std/prelude/complex:C32", ptr %l0, i32 0, i32 1
  %t8 = load float, ptr %t7, !tbaa !25
  %t9 = load float, ptr %l1, !tbaa !25
  %t12 = fmul float %t8, %t9
  %t15 = call %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_3aC32_2ector(ptr %s0, float %t6, float %t12)
  store %"std/prelude/complex:C32" %t15, ptr %l8
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t16 = load %"std/prelude/complex:C32", ptr %l8
  store %"std/prelude/complex:C32" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C32", ptr %rv
  ret %"std/prelude/complex:C32" %rr
}

define dso_local %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC64_2eConj(%"std/prelude/complex:C64" %a0) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C64"
  %l4 = alloca %"std/prelude/complex:C64"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C64"
  store %"std/prelude/complex:C64" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t2 = load double, ptr %t1, !tbaa !26
  %t3 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t4 = load double, ptr %t3, !tbaa !26
  %t6 = fneg double %t4
  %t9 = call %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_3aC64_2ector(ptr %s0, double %t2, double %t6)
  store %"std/prelude/complex:C64" %t9, ptr %l4
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t10 = load %"std/prelude/complex:C64", ptr %l4
  store %"std/prelude/complex:C64" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C64", ptr %rv
  ret %"std/prelude/complex:C64" %rr
}

define dso_local %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC64_2eDiv(%"std/prelude/complex:C64" %a0, %"std/prelude/complex:C64" %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C64"
  %l1 = alloca %"std/prelude/complex:C64"
  %l2 = alloca double
  %l4 = alloca double
  %l5 = alloca double
  %l6 = alloca double
  %l7 = alloca double
  %l10 = alloca double
  %l16 = alloca double
  %l47 = alloca %"std/prelude/complex:C64"
  %l66 = alloca %"std/prelude/complex:C64"
  %l91 = alloca %"std/prelude/complex:C64"
  %l110 = alloca %"std/prelude/complex:C64"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C64"
  store %"std/prelude/complex:C64" %a0, ptr %l0
  store %"std/prelude/complex:C64" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t2 = load double, ptr %t1, !tbaa !26
  %t4 = fcmp oge double %t2, 0x0000000000000000
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t7 = load double, ptr %t6, !tbaa !26
  store double %t7, ptr %l10, !tbaa !26
  br label %bb3
bb2:
  %t9 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t10 = load double, ptr %t9, !tbaa !26
  %t12 = fneg double %t10
  store double %t12, ptr %l10, !tbaa !26
  br label %bb3
bb3:
  %t14 = load double, ptr %l10, !tbaa !26
  store double %t14, ptr %l2, !tbaa !26
  %t15 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t16 = load double, ptr %t15, !tbaa !26
  %t18 = fcmp oge double %t16, 0x0000000000000000
  br i1 %t18, label %bb4, label %bb5
bb4:
  %t20 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t21 = load double, ptr %t20, !tbaa !26
  store double %t21, ptr %l16, !tbaa !26
  br label %bb6
bb5:
  %t23 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t24 = load double, ptr %t23, !tbaa !26
  %t26 = fneg double %t24
  store double %t26, ptr %l16, !tbaa !26
  br label %bb6
bb6:
  %t28 = load double, ptr %l16, !tbaa !26
  %t29 = load double, ptr %l2, !tbaa !26
  %t33 = fcmp oge double %t29, %t28
  br i1 %t33, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  %t35 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t36 = load double, ptr %t35, !tbaa !26
  %t37 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t38 = load double, ptr %t37, !tbaa !26
  %t41 = fdiv double %t36, %t38
  store double %t41, ptr %l4, !tbaa !26
  %t43 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t44 = load double, ptr %t43, !tbaa !26
  %t45 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t46 = load double, ptr %t45, !tbaa !26
  %t47 = load double, ptr %l4, !tbaa !26
  %t50 = fmul double %t46, %t47
  %t53 = fadd double %t44, %t50
  store double %t53, ptr %l5, !tbaa !26
  %t55 = load double, ptr %l4, !tbaa !26
  %t57 = fcmp une double %t55, 0x0000000000000000
  br i1 %t57, label %bb9, label %bb10
bb8:
  br label %bb14
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t59 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t60 = load double, ptr %t59, !tbaa !26
  %t61 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t62 = load double, ptr %t61, !tbaa !26
  %t63 = load double, ptr %l4, !tbaa !26
  %t66 = fmul double %t62, %t63
  %t69 = fadd double %t60, %t66
  %t70 = load double, ptr %l5, !tbaa !26
  %t73 = fdiv double %t69, %t70
  %t74 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t75 = load double, ptr %t74, !tbaa !26
  %t76 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t77 = load double, ptr %t76, !tbaa !26
  %t78 = load double, ptr %l4, !tbaa !26
  %t81 = fmul double %t77, %t78
  %t84 = fsub double %t75, %t81
  %t85 = load double, ptr %l5, !tbaa !26
  %t88 = fdiv double %t84, %t85
  %t91 = call %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_3aC64_2ector(ptr %s2, double %t73, double %t88)
  store %"std/prelude/complex:C64" %t91, ptr %l47
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t92 = load %"std/prelude/complex:C64", ptr %l47
  store %"std/prelude/complex:C64" %t92, ptr %rv
  br label %ret
bb12:
  %t93 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t94 = load double, ptr %t93, !tbaa !26
  %t95 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t96 = load double, ptr %t95, !tbaa !26
  %t97 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t98 = load double, ptr %t97, !tbaa !26
  %t99 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t100 = load double, ptr %t99, !tbaa !26
  %t103 = fdiv double %t98, %t100
  %t106 = fmul double %t96, %t103
  %t109 = fadd double %t94, %t106
  %t110 = load double, ptr %l5, !tbaa !26
  %t113 = fdiv double %t109, %t110
  %t114 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t115 = load double, ptr %t114, !tbaa !26
  %t116 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t117 = load double, ptr %t116, !tbaa !26
  %t118 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t119 = load double, ptr %t118, !tbaa !26
  %t120 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t121 = load double, ptr %t120, !tbaa !26
  %t124 = fdiv double %t119, %t121
  %t127 = fmul double %t117, %t124
  %t130 = fsub double %t115, %t127
  %t131 = load double, ptr %l5, !tbaa !26
  %t134 = fdiv double %t130, %t131
  %t137 = call %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_3aC64_2ector(ptr %s1, double %t113, double %t134)
  store %"std/prelude/complex:C64" %t137, ptr %l66
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t138 = load %"std/prelude/complex:C64", ptr %l66
  store %"std/prelude/complex:C64" %t138, ptr %rv
  br label %ret
bb14:
  %t139 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t140 = load double, ptr %t139, !tbaa !26
  %t141 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t142 = load double, ptr %t141, !tbaa !26
  %t145 = fdiv double %t140, %t142
  store double %t145, ptr %l6, !tbaa !26
  %t147 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t148 = load double, ptr %t147, !tbaa !26
  %t149 = load double, ptr %l6, !tbaa !26
  %t152 = fmul double %t148, %t149
  %t153 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t154 = load double, ptr %t153, !tbaa !26
  %t157 = fadd double %t152, %t154
  store double %t157, ptr %l7, !tbaa !26
  %t159 = load double, ptr %l6, !tbaa !26
  %t161 = fcmp une double %t159, 0x0000000000000000
  br i1 %t161, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t163 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t164 = load double, ptr %t163, !tbaa !26
  %t165 = load double, ptr %l6, !tbaa !26
  %t168 = fmul double %t164, %t165
  %t169 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t170 = load double, ptr %t169, !tbaa !26
  %t173 = fadd double %t168, %t170
  %t174 = load double, ptr %l7, !tbaa !26
  %t177 = fdiv double %t173, %t174
  %t178 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t179 = load double, ptr %t178, !tbaa !26
  %t180 = load double, ptr %l6, !tbaa !26
  %t183 = fmul double %t179, %t180
  %t184 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t185 = load double, ptr %t184, !tbaa !26
  %t188 = fsub double %t183, %t185
  %t189 = load double, ptr %l7, !tbaa !26
  %t192 = fdiv double %t188, %t189
  %t195 = call %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_3aC64_2ector(ptr %s3, double %t177, double %t192)
  store %"std/prelude/complex:C64" %t195, ptr %l91
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t196 = load %"std/prelude/complex:C64", ptr %l91
  store %"std/prelude/complex:C64" %t196, ptr %rv
  br label %ret
bb18:
  %t197 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t198 = load double, ptr %t197, !tbaa !26
  %t199 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t200 = load double, ptr %t199, !tbaa !26
  %t201 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t202 = load double, ptr %t201, !tbaa !26
  %t205 = fdiv double %t200, %t202
  %t208 = fmul double %t198, %t205
  %t209 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t210 = load double, ptr %t209, !tbaa !26
  %t213 = fadd double %t208, %t210
  %t214 = load double, ptr %l7, !tbaa !26
  %t217 = fdiv double %t213, %t214
  %t218 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t219 = load double, ptr %t218, !tbaa !26
  %t220 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t221 = load double, ptr %t220, !tbaa !26
  %t222 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t223 = load double, ptr %t222, !tbaa !26
  %t226 = fdiv double %t221, %t223
  %t229 = fmul double %t219, %t226
  %t230 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t231 = load double, ptr %t230, !tbaa !26
  %t234 = fsub double %t229, %t231
  %t235 = load double, ptr %l7, !tbaa !26
  %t238 = fdiv double %t234, %t235
  %t241 = call %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_3aC64_2ector(ptr %s0, double %t217, double %t238)
  store %"std/prelude/complex:C64" %t241, ptr %l110
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t242 = load %"std/prelude/complex:C64", ptr %l110
  store %"std/prelude/complex:C64" %t242, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C64", ptr %rv
  ret %"std/prelude/complex:C64" %rr
}

define dso_local %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC64_2eMinus(%"std/prelude/complex:C64" %a0, %"std/prelude/complex:C64" %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C64"
  %l1 = alloca %"std/prelude/complex:C64"
  %l8 = alloca %"std/prelude/complex:C64"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C64"
  store %"std/prelude/complex:C64" %a0, ptr %l0
  store %"std/prelude/complex:C64" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t2 = load double, ptr %t1, !tbaa !26
  %t3 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t4 = load double, ptr %t3, !tbaa !26
  %t7 = fsub double %t2, %t4
  %t8 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t9 = load double, ptr %t8, !tbaa !26
  %t10 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t11 = load double, ptr %t10, !tbaa !26
  %t14 = fsub double %t9, %t11
  %t17 = call %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_3aC64_2ector(ptr %s0, double %t7, double %t14)
  store %"std/prelude/complex:C64" %t17, ptr %l8
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load %"std/prelude/complex:C64", ptr %l8
  store %"std/prelude/complex:C64" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C64", ptr %rv
  ret %"std/prelude/complex:C64" %rr
}

define dso_local %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC64_2eMul(%"std/prelude/complex:C64" %a0, %"std/prelude/complex:C64" %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C64"
  %l1 = alloca %"std/prelude/complex:C64"
  %l16 = alloca %"std/prelude/complex:C64"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C64"
  store %"std/prelude/complex:C64" %a0, ptr %l0
  store %"std/prelude/complex:C64" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t2 = load double, ptr %t1, !tbaa !26
  %t3 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t4 = load double, ptr %t3, !tbaa !26
  %t7 = fmul double %t2, %t4
  %t8 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t9 = load double, ptr %t8, !tbaa !26
  %t10 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t11 = load double, ptr %t10, !tbaa !26
  %t14 = fmul double %t9, %t11
  %t17 = fsub double %t7, %t14
  %t18 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t19 = load double, ptr %t18, !tbaa !26
  %t20 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t21 = load double, ptr %t20, !tbaa !26
  %t24 = fmul double %t19, %t21
  %t25 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t26 = load double, ptr %t25, !tbaa !26
  %t27 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t28 = load double, ptr %t27, !tbaa !26
  %t31 = fmul double %t26, %t28
  %t34 = fadd double %t24, %t31
  %t37 = call %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_3aC64_2ector(ptr %s0, double %t17, double %t34)
  store %"std/prelude/complex:C64" %t37, ptr %l16
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t38 = load %"std/prelude/complex:C64", ptr %l16
  store %"std/prelude/complex:C64" %t38, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C64", ptr %rv
  ret %"std/prelude/complex:C64" %rr
}

define dso_local %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC64_2eNeg(%"std/prelude/complex:C64" %a0) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C64"
  %l5 = alloca %"std/prelude/complex:C64"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C64"
  store %"std/prelude/complex:C64" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t2 = load double, ptr %t1, !tbaa !26
  %t4 = fneg double %t2
  %t5 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t6 = load double, ptr %t5, !tbaa !26
  %t8 = fneg double %t6
  %t11 = call %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_3aC64_2ector(ptr %s0, double %t4, double %t8)
  store %"std/prelude/complex:C64" %t11, ptr %l5
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t12 = load %"std/prelude/complex:C64", ptr %l5
  store %"std/prelude/complex:C64" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C64", ptr %rv
  ret %"std/prelude/complex:C64" %rr
}

define dso_local double @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC64_2eNorm(%"std/prelude/complex:C64" %a0) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C64"
  %rv = alloca double
  store %"std/prelude/complex:C64" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t2 = load double, ptr %t1, !tbaa !26
  %t3 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t4 = load double, ptr %t3, !tbaa !26
  %t7 = fmul double %t2, %t4
  %t8 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t9 = load double, ptr %t8, !tbaa !26
  %t10 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t11 = load double, ptr %t10, !tbaa !26
  %t14 = fmul double %t9, %t11
  %t17 = fadd double %t7, %t14
  store double %t17, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC64_2ePlus(%"std/prelude/complex:C64" %a0, %"std/prelude/complex:C64" %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C64"
  %l1 = alloca %"std/prelude/complex:C64"
  %l8 = alloca %"std/prelude/complex:C64"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C64"
  store %"std/prelude/complex:C64" %a0, ptr %l0
  store %"std/prelude/complex:C64" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t2 = load double, ptr %t1, !tbaa !26
  %t3 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 0
  %t4 = load double, ptr %t3, !tbaa !26
  %t7 = fadd double %t2, %t4
  %t8 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t9 = load double, ptr %t8, !tbaa !26
  %t10 = getelementptr %"std/prelude/complex:C64", ptr %l1, i32 0, i32 1
  %t11 = load double, ptr %t10, !tbaa !26
  %t14 = fadd double %t9, %t11
  %t17 = call %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_3aC64_2ector(ptr %s0, double %t7, double %t14)
  store %"std/prelude/complex:C64" %t17, ptr %l8
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load %"std/prelude/complex:C64", ptr %l8
  store %"std/prelude/complex:C64" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C64", ptr %rv
  ret %"std/prelude/complex:C64" %rr
}

define dso_local %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_2estd_2fprelude_2fcomplex_3aC64_2eScale(%"std/prelude/complex:C64" %a0, double %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/complex:C64"
  %l1 = alloca double
  %l8 = alloca %"std/prelude/complex:C64"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/complex:C64"
  store %"std/prelude/complex:C64" %a0, ptr %l0
  store double %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 0
  %t2 = load double, ptr %t1, !tbaa !26
  %t3 = load double, ptr %l1, !tbaa !26
  %t6 = fmul double %t2, %t3
  %t7 = getelementptr %"std/prelude/complex:C64", ptr %l0, i32 0, i32 1
  %t8 = load double, ptr %t7, !tbaa !26
  %t9 = load double, ptr %l1, !tbaa !26
  %t12 = fmul double %t8, %t9
  %t15 = call %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_3aC64_2ector(ptr %s0, double %t6, double %t12)
  store %"std/prelude/complex:C64" %t15, ptr %l8
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t16 = load %"std/prelude/complex:C64", ptr %l8
  store %"std/prelude/complex:C64" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C64", ptr %rv
  ret %"std/prelude/complex:C64" %rr
}

define dso_local %"std/prelude/complex:C16" @std_2fprelude_2fcomplex_3aC16_2ector(ptr %v0, half %a0, half %a1) #0 {
entry:
  %rv = alloca %"std/prelude/complex:C16"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"std/prelude/complex:C16" undef, half %a0, 0
  %t8 = insertvalue %"std/prelude/complex:C16" %t6, half %a1, 1
  store %"std/prelude/complex:C16" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C16", ptr %rv
  ret %"std/prelude/complex:C16" %rr
}

define dso_local %"std/prelude/complex:C32" @std_2fprelude_2fcomplex_3aC32_2ector(ptr %v0, float %a0, float %a1) #0 {
entry:
  %rv = alloca %"std/prelude/complex:C32"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"std/prelude/complex:C32" undef, float %a0, 0
  %t8 = insertvalue %"std/prelude/complex:C32" %t6, float %a1, 1
  store %"std/prelude/complex:C32" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C32", ptr %rv
  ret %"std/prelude/complex:C32" %rr
}

define dso_local %"std/prelude/complex:C64" @std_2fprelude_2fcomplex_3aC64_2ector(ptr %v0, double %a0, double %a1) #0 {
entry:
  %rv = alloca %"std/prelude/complex:C64"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"std/prelude/complex:C64" undef, double %a0, 0
  %t8 = insertvalue %"std/prelude/complex:C64" %t6, double %a1, 1
  store %"std/prelude/complex:C64" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/complex:C64", ptr %rv
  ret %"std/prelude/complex:C64" %rr
}

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
