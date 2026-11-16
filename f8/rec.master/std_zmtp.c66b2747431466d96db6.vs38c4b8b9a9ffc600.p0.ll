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
%"std/zmtp:Socket" = type { %"std/net:Conn", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1 }
%"std/net:Conn" = type { i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
define dso_local { i32, %"std/zmtp:Socket" } @std_2fzmtp_2eSocket_2eAccept(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %lp2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca i64
  %l6 = alloca %"std/net:Conn"
  %l8 = alloca %"std/net:Conn"
  %l9 = alloca i32
  %l13 = alloca %"std/zmtp:Socket"
  %l14 = alloca %"std/zmtp:Socket"
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i32
  %l22 = alloca i32
  %l25 = alloca %"std/zmtp:Socket"
  %l27 = alloca %"std/zmtp:Socket"
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"std/zmtp:Socket" }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2estd_2fzmtp_3aSocket_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t8 = call { i32, %"std/net:Conn" } @std_2fnet_2estd_2fnet_3aListener_2eAccept(ptr %v0, ptr %a0)
  %t9 = extractvalue { i32, %"std/net:Conn" } %t8, 1
  %t10 = extractvalue { i32, %"std/net:Conn" } %t8, 0
  store i32 %t10, ptr %l9
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb4, label %ok.12, !prof !99
ok.12:
  store %"std/net:Conn" %t9, ptr %l8
  br label %bb3
bb3:
  %t13 = load %"std/net:Conn", ptr %l8
  store %"std/net:Conn" %t13, ptr %l6
  br label %bb5
bb4:
  %t14 = load i32, ptr %l9, !tbaa !23
  %t15 = lshr i32 %t14, 16
  %t16 = and i32 %t14, 65535
  %t17 = icmp eq i32 %t15, 1
  %t18 = select i1 %t17, i32 1, i32 0
  %t19 = icmp eq i32 %t14, 0
  %t20 = shl i32 %t18, 16
  %t21 = or i32 %t20, %t16
  %t22 = select i1 %t19, i32 0, i32 %t21
  call void @__olang_scope_close(ptr %s0)
  %t24 = insertvalue { i32, %"std/zmtp:Socket" } zeroinitializer, i32 %t22, 0
  store { i32, %"std/zmtp:Socket" } %t24, ptr %rv
  br label %ret
bb5:
  %t27 = extractvalue { i64, ptr } %a1, 1
  %t28 = extractvalue { i64, ptr } %a1, 0
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t27, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i64, ptr %l4
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = load %"std/net:Conn", ptr %l6
  %t36 = call %"std/zmtp:Socket" @std_2fzmtp_3aSocket_2ector(ptr %t33, %"std/net:Conn" %t34, { i64, ptr } %t31)
  store %"std/zmtp:Socket" %t36, ptr %l13
  br label %bb6
bb6:
  %t37 = load %"std/zmtp:Socket", ptr %l13
  store %"std/zmtp:Socket" %t37, ptr %l14
  %t38 = getelementptr %"std/zmtp:Socket", ptr %l14, i32 0, i32 1
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  store { i64, ptr } %t39, ptr %l15, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l16, !tbaa !24
  %t42 = load i64, ptr %l16, !tbaa !24
  %t43 = mul i64 %t42, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t43)
  %t45 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  store { i64, ptr } %t46, ptr %l17, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = load i64, ptr %l16, !tbaa !24
  %t52 = mul i64 %t51, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t48, ptr %t50, i64 %t52, i1 false)
  %t53 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t54 = getelementptr %"std/zmtp:Socket", ptr %l14, i32 0, i32 1
  store { i64, ptr } %t53, ptr %t54, !tbaa !27
  %t55 = getelementptr %"std/zmtp:Socket", ptr %l14, i32 0, i32 2
  %t56 = load i64, ptr %l4
  %t57 = inttoptr i64 %t56 to ptr
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cU8_3e(ptr %t57, ptr %t55)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l19
  br label %bb7
bb7:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t61 = getelementptr %"std/zmtp:Socket", ptr %l14, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %t61
  %t62 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t62, ptr %lp2
  %t63 = load %"std/zmtp:Socket", ptr %l14
  %t64 = load ptr, ptr %lp2
  store %"std/zmtp:Socket" %t63, ptr %t64
  store i1 true, ptr %l3, !tbaa !21
  %t65 = load ptr, ptr %lp2
  %t67 = call i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2ehello(ptr %v2, ptr %t65, i1 true)
  store i32 %t67, ptr %l21
  %t68 = icmp ne i32 %t67, 0
  br i1 %t68, label %bb9, label %ok.69, !prof !99
ok.69:
  br label %bb8
bb8:
  br label %bb13
bb9:
  %t70 = load i32, ptr %l21, !tbaa !23
  %t71 = lshr i32 %t70, 16
  %t72 = and i32 %t70, 65535
  %t73 = icmp eq i32 %t71, 1
  %t74 = select i1 %t73, i32 1, i32 0
  %t75 = icmp eq i32 %t70, 0
  %t76 = shl i32 %t74, 16
  %t77 = or i32 %t76, %t72
  %t78 = select i1 %t75, i32 0, i32 %t77
  store i32 %t78, ptr %l22, !tbaa !23
  %t79 = load i1, ptr %l3, !tbaa !21
  br i1 %t79, label %bb10, label %bb11
bb10:
  %t81 = load ptr, ptr %lp2
  call void @__olang_scope_register_dtor(ptr %v2, ptr %t81, ptr @olang_2emir_2eHelperKind_2eDrop_2estd_2fzmtp_3aSocket_rt)
  store i1 false, ptr %l3, !tbaa !21
  br label %bb12
bb11:
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t83 = load i32, ptr %l22, !tbaa !23
  %t84 = insertvalue { i32, %"std/zmtp:Socket" } zeroinitializer, i32 %t83, 0
  store { i32, %"std/zmtp:Socket" } %t84, ptr %rv
  br label %ret
bb13:
  store i1 false, ptr %l3, !tbaa !21
  %t85 = load ptr, ptr %lp2
  %t86 = load %"std/zmtp:Socket", ptr %t85
  store %"std/zmtp:Socket" %t86, ptr %l25
  %t88 = call %"std/zmtp:Socket" @olang_2emir_2eHelperKind_2eCopy_2estd_2fzmtp_3aSocket(ptr %v2, ptr %l25)
  store %"std/zmtp:Socket" %t88, ptr %l27
  br label %bb14
bb14:
  %t89 = load %"std/zmtp:Socket", ptr %l27
  store %"std/zmtp:Socket" %t89, ptr %l25
  %t90 = load i1, ptr %l3, !tbaa !21
  br i1 %t90, label %bb15, label %bb16
bb15:
  %t92 = load ptr, ptr %lp2
  call void @__olang_scope_register_dtor(ptr %v2, ptr %t92, ptr @olang_2emir_2eHelperKind_2eDrop_2estd_2fzmtp_3aSocket_rt)
  store i1 false, ptr %l3, !tbaa !21
  br label %bb17
bb16:
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t94 = load %"std/zmtp:Socket", ptr %l25
  %t95 = insertvalue { i32, %"std/zmtp:Socket" } zeroinitializer, %"std/zmtp:Socket" %t94, 1
  store { i32, %"std/zmtp:Socket" } %t95, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/zmtp:Socket" }, ptr %rv
  ret { i32, %"std/zmtp:Socket" } %rr
}

define dso_local { i32, %"std/zmtp:Socket" } @std_2fzmtp_2eSocket_2eDial(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %lp2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca i64
  %l6 = alloca %"std/net:Conn"
  %l8 = alloca %"std/net:Conn"
  %l9 = alloca i32
  %l13 = alloca %"std/zmtp:Socket"
  %l14 = alloca %"std/zmtp:Socket"
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i32
  %l22 = alloca i32
  %l25 = alloca %"std/zmtp:Socket"
  %l27 = alloca %"std/zmtp:Socket"
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"std/zmtp:Socket" }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l4, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2estd_2fzmtp_3aSocket_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t8 = call { i32, %"std/net:Conn" } @std_2fnet_2eConn_2eDial(ptr %v0, ptr %a0)
  %t9 = extractvalue { i32, %"std/net:Conn" } %t8, 1
  %t10 = extractvalue { i32, %"std/net:Conn" } %t8, 0
  store i32 %t10, ptr %l9
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb4, label %ok.12, !prof !99
ok.12:
  store %"std/net:Conn" %t9, ptr %l8
  br label %bb3
bb3:
  %t13 = load %"std/net:Conn", ptr %l8
  store %"std/net:Conn" %t13, ptr %l6
  br label %bb5
bb4:
  %t14 = load i32, ptr %l9, !tbaa !23
  %t15 = lshr i32 %t14, 16
  %t16 = and i32 %t14, 65535
  %t17 = icmp eq i32 %t15, 1
  %t18 = select i1 %t17, i32 1, i32 0
  %t19 = icmp eq i32 %t14, 0
  %t20 = shl i32 %t18, 16
  %t21 = or i32 %t20, %t16
  %t22 = select i1 %t19, i32 0, i32 %t21
  call void @__olang_scope_close(ptr %s0)
  %t24 = insertvalue { i32, %"std/zmtp:Socket" } zeroinitializer, i32 %t22, 0
  store { i32, %"std/zmtp:Socket" } %t24, ptr %rv
  br label %ret
bb5:
  %t27 = extractvalue { i64, ptr } %a1, 1
  %t28 = extractvalue { i64, ptr } %a1, 0
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t27, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load i64, ptr %l4
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = load %"std/net:Conn", ptr %l6
  %t36 = call %"std/zmtp:Socket" @std_2fzmtp_3aSocket_2ector(ptr %t33, %"std/net:Conn" %t34, { i64, ptr } %t31)
  store %"std/zmtp:Socket" %t36, ptr %l13
  br label %bb6
bb6:
  %t37 = load %"std/zmtp:Socket", ptr %l13
  store %"std/zmtp:Socket" %t37, ptr %l14
  %t38 = getelementptr %"std/zmtp:Socket", ptr %l14, i32 0, i32 1
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  store { i64, ptr } %t39, ptr %l15, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l16, !tbaa !24
  %t42 = load i64, ptr %l16, !tbaa !24
  %t43 = mul i64 %t42, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t43)
  %t45 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  store { i64, ptr } %t46, ptr %l17, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = load i64, ptr %l16, !tbaa !24
  %t52 = mul i64 %t51, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t48, ptr %t50, i64 %t52, i1 false)
  %t53 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t54 = getelementptr %"std/zmtp:Socket", ptr %l14, i32 0, i32 1
  store { i64, ptr } %t53, ptr %t54, !tbaa !27
  %t55 = getelementptr %"std/zmtp:Socket", ptr %l14, i32 0, i32 2
  %t56 = load i64, ptr %l4
  %t57 = inttoptr i64 %t56 to ptr
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cU8_3e(ptr %t57, ptr %t55)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l19
  br label %bb7
bb7:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t61 = getelementptr %"std/zmtp:Socket", ptr %l14, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %t61
  %t62 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t62, ptr %lp2
  %t63 = load %"std/zmtp:Socket", ptr %l14
  %t64 = load ptr, ptr %lp2
  store %"std/zmtp:Socket" %t63, ptr %t64
  store i1 true, ptr %l3, !tbaa !21
  %t65 = load ptr, ptr %lp2
  %t67 = call i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2ehello(ptr %v2, ptr %t65, i1 false)
  store i32 %t67, ptr %l21
  %t68 = icmp ne i32 %t67, 0
  br i1 %t68, label %bb9, label %ok.69, !prof !99
ok.69:
  br label %bb8
bb8:
  br label %bb13
bb9:
  %t70 = load i32, ptr %l21, !tbaa !23
  %t71 = lshr i32 %t70, 16
  %t72 = and i32 %t70, 65535
  %t73 = icmp eq i32 %t71, 1
  %t74 = select i1 %t73, i32 1, i32 0
  %t75 = icmp eq i32 %t70, 0
  %t76 = shl i32 %t74, 16
  %t77 = or i32 %t76, %t72
  %t78 = select i1 %t75, i32 0, i32 %t77
  store i32 %t78, ptr %l22, !tbaa !23
  %t79 = load i1, ptr %l3, !tbaa !21
  br i1 %t79, label %bb10, label %bb11
bb10:
  %t81 = load ptr, ptr %lp2
  call void @__olang_scope_register_dtor(ptr %v2, ptr %t81, ptr @olang_2emir_2eHelperKind_2eDrop_2estd_2fzmtp_3aSocket_rt)
  store i1 false, ptr %l3, !tbaa !21
  br label %bb12
bb11:
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t83 = load i32, ptr %l22, !tbaa !23
  %t84 = insertvalue { i32, %"std/zmtp:Socket" } zeroinitializer, i32 %t83, 0
  store { i32, %"std/zmtp:Socket" } %t84, ptr %rv
  br label %ret
bb13:
  store i1 false, ptr %l3, !tbaa !21
  %t85 = load ptr, ptr %lp2
  %t86 = load %"std/zmtp:Socket", ptr %t85
  store %"std/zmtp:Socket" %t86, ptr %l25
  %t88 = call %"std/zmtp:Socket" @olang_2emir_2eHelperKind_2eCopy_2estd_2fzmtp_3aSocket(ptr %v2, ptr %l25)
  store %"std/zmtp:Socket" %t88, ptr %l27
  br label %bb14
bb14:
  %t89 = load %"std/zmtp:Socket", ptr %l27
  store %"std/zmtp:Socket" %t89, ptr %l25
  %t90 = load i1, ptr %l3, !tbaa !21
  br i1 %t90, label %bb15, label %bb16
bb15:
  %t92 = load ptr, ptr %lp2
  call void @__olang_scope_register_dtor(ptr %v2, ptr %t92, ptr @olang_2emir_2eHelperKind_2eDrop_2estd_2fzmtp_3aSocket_rt)
  store i1 false, ptr %l3, !tbaa !21
  br label %bb17
bb16:
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t94 = load %"std/zmtp:Socket", ptr %l25
  %t95 = insertvalue { i32, %"std/zmtp:Socket" } zeroinitializer, %"std/zmtp:Socket" %t94, 1
  store { i32, %"std/zmtp:Socket" } %t95, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/zmtp:Socket" }, ptr %rv
  ret { i32, %"std/zmtp:Socket" } %rr
}

define dso_local void @std_2fzmtp_2eframe(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l54 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sgt i64 %t3, 255
  store i1 %t5, ptr %l4, !tbaa !21
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l14, !tbaa !29
  br i1 %a2, label %bb1, label %bb2
bb1:
  store i64 1, ptr %l16, !tbaa !24
  br label %bb3
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb3
bb3:
  %t10 = load i1, ptr %l4, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  store i64 2, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t12 = load i64, ptr %l16, !tbaa !24
  %t13 = load i64, ptr %l18, !tbaa !24
  %t14 = or i64 %t12, %t13
  store i64 %t14, ptr %l19, !tbaa !24
  br i1 %a3, label %bb7, label %bb8
bb7:
  store i64 4, ptr %l21, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t17 = load i64, ptr %l19, !tbaa !24
  %t18 = load i64, ptr %l21, !tbaa !24
  %t19 = or i64 %t17, %t18
  %t21 = trunc i64 %t19 to i8
  %t22 = load ptr, ptr %l14, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t22, i8 %t21)
  br label %bb10
bb10:
  %t24 = load i1, ptr %l4, !tbaa !21
  br i1 %t24, label %bb11, label %bb12
bb11:
  store i64 0, ptr %l5, !tbaa !24
  store i64 8, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb13, label %bb14
bb12:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t37 = trunc i64 %t35 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t32, i8 %t37)
  br label %bb26
bb13:
  %t40 = load i64, ptr %l7, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb18
bb15:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l31, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb17
bb17:
  %t60 = load i64, ptr %l31, !tbaa !24
  store i64 %t60, ptr %l28, !tbaa !24
  br label %bb18
bb18:
  %t61 = load i64, ptr %l28, !tbaa !24
  store i64 %t61, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb19
bb19:
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb20, label %bb21
bb20:
  br label %bb25
bb21:
  br label %bb22
bb22:
  %t70 = load i64, ptr %l5, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l7, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t86 = mul i64 8, %t78
  %t88 = sub i64 56, %t86
  store i64 %t88, ptr %l54, !tbaa !24
  %t90 = load i64, ptr %l54, !tbaa !24
  %t91 = load i64, ptr %l54, !tbaa !24
  %t92 = ashr i64 %t83, %t91
  %t94 = and i64 %t92, 255
  %t96 = trunc i64 %t94 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t80, i8 %t96)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t99 = load i64, ptr %l9, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l9, !tbaa !24
  br label %bb19
bb25:
  br label %bb27
bb26:
  br label %bb27
bb27:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %v0, ptr %v1, ptr %t103, { i64, ptr } %t104)
  br label %bb28
bb28:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fzmtp_2eproperty(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l45 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t6 = trunc i64 %t4 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t1, i8 %t6)
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %v0, ptr %v1, ptr %t9, { i64, ptr } %t10)
  br label %bb2
bb2:
  store i64 0, ptr %l3, !tbaa !24
  store i64 4, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb3, label %bb4
bb3:
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb5:
  %t24 = load i64, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l22, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l22, !tbaa !24
  store i64 %t40, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l19, !tbaa !24
  store i64 %t41, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t66 = mul i64 8, %t58
  %t68 = sub i64 24, %t66
  store i64 %t68, ptr %l45, !tbaa !24
  %t70 = load i64, ptr %l45, !tbaa !24
  %t71 = load i64, ptr %l45, !tbaa !24
  %t72 = ashr i64 %t63, %t71
  %t74 = and i64 %t72, 255
  %t76 = trunc i64 %t74 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t60, i8 %t76)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t79 = load i64, ptr %l7, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l7, !tbaa !24
  br label %bb9
bb15:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %v0, ptr %v2, ptr %t83, { i64, ptr } %t84)
  br label %bb16
bb16:
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fzmtp_2esizeAt(ptr %v0, { i64, ptr } %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca { i64, ptr }
  %l20 = alloca i64
  %l23 = alloca i64
  %l43 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = xor i1 %a2, true
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t5, ptr %l12, !tbaa !27
  %t6 = load i64, ptr %l1, !tbaa !24
  %t8 = add i64 %t6, 1
  %t10 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr i8, ptr %t11, i64 %t8
  %t13 = load i8, ptr %t12, !tbaa !32
  %t15 = zext i8 %t13 to i64
  store i64 %t15, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 8, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb9
bb6:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l23, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb8
bb8:
  %t43 = load i64, ptr %l23, !tbaa !24
  store i64 %t43, ptr %l20, !tbaa !24
  br label %bb9
bb9:
  %t44 = load i64, ptr %l20, !tbaa !24
  store i64 %t44, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  %t63 = load i64, ptr %l3, !tbaa !24
  %t65 = shl i64 %t63, 8
  %t66 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t66, ptr %l43, !tbaa !27
  %t67 = load i64, ptr %l1, !tbaa !24
  %t69 = add i64 %t67, 1
  %t73 = add i64 %t69, %t61
  %t75 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i8, ptr %t76, i64 %t73
  %t78 = load i8, ptr %t77, !tbaa !32
  %t80 = zext i8 %t78 to i64
  %t83 = or i64 %t65, %t80
  store i64 %t83, ptr %l3, !tbaa !24
  br label %bb14
bb14:
  %t85 = load i64, ptr %l8, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l8, !tbaa !24
  br label %bb10
bb15:
  %t89 = load i64, ptr %l3, !tbaa !24
  store i64 %t89, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eFd(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/zmtp:Socket", ptr %a0, i32 0, i32 0
  %t5 = call i32 @std_2fnet_2estd_2fnet_3aConn_2eFd(ptr %v0, ptr %t3)
  store i32 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i32, ptr %l3, !tbaa !23
  store i32 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eFill(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca [65536 x i8]
  %l2 = alloca { i64, ptr }
  %l3 = alloca [65536 x i8]
  %l4 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l13 = alloca i64
  %l16 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 65536
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [65536 x i8], ptr %l3, i64 0, i64 %t5
  store i8 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %l3, i64 65536, i1 false)
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/zmtp:Socket", ptr %t9, i32 0, i32 0
  %t13 = insertvalue { i64, ptr } undef, i64 65536, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %l1, 1
  %t17 = call { i32, { i64, ptr } } @std_2fnet_2estd_2fnet_3aConn_2eRead(ptr %v0, ptr %s0, ptr %s0, ptr %t11, { i64, ptr } %t14)
  %t18 = extractvalue { i32, { i64, ptr } } %t17, 1
  %t19 = extractvalue { i32, { i64, ptr } } %t17, 0
  store i32 %t19, ptr %l10
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb2, label %ok.21, !prof !99
ok.21:
  store { i64, ptr } %t18, ptr %l9
  br label %bb1
bb1:
  %t22 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t22, ptr %l4, !tbaa !27
  br label %bb3
bb2:
  %t23 = load i32, ptr %l10, !tbaa !23
  %t24 = lshr i32 %t23, 16
  %t25 = and i32 %t23, 65535
  %t26 = icmp eq i32 %t24, 1
  %t27 = select i1 %t26, i32 1, i32 0
  %t28 = icmp eq i32 %t23, 0
  %t29 = shl i32 %t27, 16
  %t30 = or i32 %t29, %t25
  %t31 = select i1 %t28, i32 0, i32 %t30
  call void @__olang_scope_close(ptr %s0)
  store i32 %t31, ptr %rv
  br label %ret
bb3:
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t33, ptr %l2, !tbaa !27
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"std/zmtp:Socket", ptr %t34, i32 0, i32 3
  %t37 = load i64, ptr %t36, !tbaa !24
  store i64 %t37, ptr %l13, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"std/zmtp:Socket", ptr %t38, i32 0, i32 2
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l16
  br label %bb4
bb4:
  %t43 = load i64, ptr %l13, !tbaa !24
  %t44 = load i64, ptr %l16, !tbaa !24
  %t45 = icmp eq i64 %t43, %t44
  br i1 %t45, label %bb5, label %bb6
bb5:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"std/zmtp:Socket", ptr %t47, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eClear_3cU8_3e(ptr %v0, ptr %t49)
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"std/zmtp:Socket", ptr %t51, i32 0, i32 3
  store i64 0, ptr %t53, !tbaa !24
  br label %bb8
bb8:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"std/zmtp:Socket", ptr %t54, i32 0, i32 2
  %t57 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %v0, ptr %s0, ptr %t56, { i64, ptr } %t57)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, ptr } } @std_2fzmtp_2estd_2fzmtp_3aSocket_2eNext(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, i64 }
  %l3 = alloca i64
  %l4 = alloca i64
  %lp5 = alloca ptr
  %l11 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l22 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l34 = alloca i1
  %l38 = alloca i1
  %l42 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i64
  %l49 = alloca [4 x i8]
  %l50 = alloca { i64, ptr }
  %l52 = alloca i1
  %l55 = alloca ptr
  %l60 = alloca { i64, i64 }
  %l69 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/zmtp:Socket", ptr %t1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"std/zmtp:Socket", ptr %t8, i32 0, i32 2
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l11
  br label %bb4
bb3:
  br label %bb34
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"std/zmtp:Socket", ptr %t13, i32 0, i32 3
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = load i64, ptr %l11, !tbaa !24
  %t19 = sub i64 %t17, %t16
  %t21 = icmp slt i64 %t19, 64
  br i1 %t21, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  %t24 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t24, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/zmtp:Socket", ptr %t25, i32 0, i32 2
  %t29 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %v0, ptr %v0, ptr %t27)
  store { i64, ptr } %t29, ptr %l19
  br label %bb8
bb8:
  %t30 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t30, ptr %l20, !tbaa !27
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"std/zmtp:Socket", ptr %t31, i32 0, i32 3
  %t34 = load i64, ptr %t33, !tbaa !24
  store i64 %t34, ptr %l22, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"std/zmtp:Socket", ptr %t35, i32 0, i32 3
  %t38 = load i64, ptr %t37, !tbaa !24
  %t40 = add i64 %t38, 64
  store i64 %t40, ptr %l25, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l26, !tbaa !24
  %t43 = load i64, ptr %l22, !tbaa !24
  %t44 = icmp sge i64 %t43, 0
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t46 = load i64, ptr %l22, !tbaa !24
  %t47 = load i64, ptr %l25, !tbaa !24
  %t48 = icmp sle i64 %t46, %t47
  br i1 %t48, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_ae9a882ac7c9c3e7_127a36597258840b)
  unreachable
bb11:
  %t50 = load i64, ptr %l25, !tbaa !24
  %t51 = load i64, ptr %l26, !tbaa !24
  %t52 = icmp sle i64 %t50, %t51
  br i1 %t52, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_ae9a882ac7c9c3e7_127a36597258840b)
  unreachable
bb13:
  %t54 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = load i64, ptr %l22, !tbaa !24
  %t57 = load i64, ptr %l25, !tbaa !24
  %t58 = getelementptr i8, ptr %t55, i64 %t56
  store ptr %t58, ptr %l1
  %t60 = load ptr, ptr %l1
  %t62 = getelementptr [64 x i8], ptr %t60, i64 0, i64 0
  %t63 = load i8, ptr %t62, !tbaa !32
  %t65 = icmp ne i8 %t63, -1
  br i1 %t65, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_ae9a882ac7c9c3e7_127a36597258840b)
  unreachable
bb15:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb17
bb16:
  %t67 = load ptr, ptr %l1
  %t69 = getelementptr [64 x i8], ptr %t67, i64 0, i64 9
  %t70 = load i8, ptr %t69, !tbaa !32
  %t72 = icmp ne i8 %t70, 127
  store i1 %t72, ptr %l34, !tbaa !21
  br label %bb17
bb17:
  %t74 = load i1, ptr %l34, !tbaa !21
  br i1 %t74, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb20
bb19:
  %t75 = load ptr, ptr %l1
  %t77 = getelementptr [64 x i8], ptr %t75, i64 0, i64 10
  %t78 = load i8, ptr %t77, !tbaa !32
  %t80 = icmp ult i8 %t78, 3
  store i1 %t80, ptr %l38, !tbaa !21
  br label %bb20
bb20:
  %t82 = load i1, ptr %l38, !tbaa !21
  br i1 %t82, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb30
bb22:
  %t83 = load ptr, ptr %l1
  store ptr %t83, ptr %l43
  %t84 = load ptr, ptr %l43
  %t85 = load [64 x i8], ptr %t84
  store i64 64, ptr %l44, !tbaa !24
  %t86 = icmp sge i64 12, 0
  br i1 %t86, label %bb23, label %bb24
bb23:
  %t88 = icmp sle i64 12, 16
  br i1 %t88, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_ce6aff91bca6310a_8709f628085e380e)
  unreachable
bb25:
  %t90 = load i64, ptr %l44, !tbaa !24
  %t91 = icmp sle i64 16, %t90
  br i1 %t91, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_ce6aff91bca6310a_8709f628085e380e)
  unreachable
bb27:
  %t93 = load ptr, ptr %l43
  %t94 = getelementptr i8, ptr %t93, i64 12
  %t96 = load [4 x i8], ptr %t94
  store [4 x i8] %t96, ptr %l49
  %t97 = mul i64 4, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t97)
  %t99 = insertvalue { i64, ptr } undef, i64 4, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l50, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = mul i64 4, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t102, ptr %l49, i64 %t103, i1 false)
  %t104 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t106 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t104, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t106, ptr %l52
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_ce6aff91bca6310a_8709f628085e380e)
  unreachable
bb29:
  %t107 = load i1, ptr %l52, !tbaa !21
  %t108 = xor i1 %t107, true
  store i1 %t108, ptr %l42, !tbaa !21
  br label %bb30
bb30:
  %t110 = load i1, ptr %l42, !tbaa !21
  br i1 %t110, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s2)
  %t112 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 131072, 0
  store { i32, { i64, ptr } } %t112, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l55, !tbaa !29
  %t114 = load ptr, ptr %l55, !tbaa !29
  %t115 = getelementptr %"std/zmtp:Socket", ptr %t114, i32 0, i32 3
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = add i64 %t116, 64
  %t120 = load ptr, ptr %l55, !tbaa !29
  %t121 = getelementptr %"std/zmtp:Socket", ptr %t120, i32 0, i32 3
  store i64 %t118, ptr %t121, !tbaa !24
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"std/zmtp:Socket", ptr %t122, i32 0, i32 4
  store i1 true, ptr %t124, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb34:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = call { i64, i64 } @std_2fzmtp_2estd_2fzmtp_3aSocket_2ewhole(ptr %v0, ptr %t125)
  store { i64, i64 } %t127, ptr %l60
  br label %bb35
bb35:
  %t128 = load { i64, i64 }, ptr %l60
  store { i64, i64 } %t128, ptr %l2
  %t129 = getelementptr { i64, i64 }, ptr %l2, i32 0, i32 0
  %t130 = load i64, ptr %t129, !tbaa !24
  store i64 %t130, ptr %l3, !tbaa !24
  %t132 = getelementptr { i64, i64 }, ptr %l2, i32 0, i32 1
  %t133 = load i64, ptr %t132, !tbaa !24
  store i64 %t133, ptr %l4, !tbaa !24
  %t135 = load i64, ptr %l4, !tbaa !24
  %t137 = icmp slt i64 %t135, 0
  br i1 %t137, label %bb36, label %bb37
bb36:
  %t140 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t140, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i64, ptr %l3, !tbaa !24
  %t143 = load i64, ptr %l4, !tbaa !24
  %t147 = call { i64, ptr } @std_2fzmtp_2estd_2fzmtp_3aSocket_2eframes(ptr %v0, ptr %v1, ptr %t141, i64 %t142, i64 %t143)
  store { i64, ptr } %t147, ptr %l69
  br label %bb39
bb39:
  %t148 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t148, ptr %lp5
  %t149 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t150 = load ptr, ptr %lp5
  store { i64, ptr } %t149, ptr %t150, !tbaa !27
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i64, ptr %l3, !tbaa !24
  %t155 = getelementptr %"std/zmtp:Socket", ptr %t151, i32 0, i32 3
  store i64 %t152, ptr %t155, !tbaa !24
  %t156 = load ptr, ptr %lp5
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t161 = icmp sgt i64 %t159, 0
  br i1 %t161, label %bb40, label %bb41
bb40:
  %t163 = load ptr, ptr %lp5
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  %t166 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t164, 1
  store { i32, { i64, ptr } } %t166, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb1
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fzmtp_2estd_2fzmtp_3aSocket_2eRecv(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l10 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i32, { i64, ptr } } @std_2fzmtp_2estd_2fzmtp_3aSocket_2eNext(ptr %v0, ptr %v1, ptr %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb3, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l4
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  br label %bb10
bb3:
  %t9 = load i32, ptr %l5, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  br i1 %t12, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  %t14 = load i32, ptr %l5, !tbaa !23
  %t15 = lshr i32 %t14, 16
  %t16 = and i32 %t14, 65535
  %t17 = icmp eq i32 %t15, 1
  %t18 = select i1 %t17, i32 0, i32 0
  %t19 = icmp eq i32 %t15, 2
  %t20 = select i1 %t19, i32 2, i32 %t18
  %t21 = icmp eq i32 %t14, 0
  %t22 = shl i32 %t20, 16
  %t23 = or i32 %t22, %t16
  %t24 = select i1 %t21, i32 0, i32 %t23
  %t26 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t24, 0
  store { i32, { i64, ptr } } %t26, ptr %rv
  br label %ret
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eFill(ptr %v0, ptr %t27)
  store i32 %t29, ptr %l10
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb8, label %ok.31, !prof !99
ok.31:
  br label %bb7
bb7:
  br label %bb9
bb8:
  %t32 = load i32, ptr %l10, !tbaa !23
  %t33 = lshr i32 %t32, 16
  %t34 = and i32 %t32, 65535
  %t35 = icmp eq i32 %t33, 1
  %t36 = select i1 %t35, i32 1, i32 0
  %t37 = icmp eq i32 %t32, 0
  %t38 = shl i32 %t36, 16
  %t39 = or i32 %t38, %t34
  %t40 = select i1 %t37, i32 0, i32 %t39
  %t42 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t40, 0
  store { i32, { i64, ptr } } %t42, ptr %rv
  br label %ret
bb9:
  br label %bb11
bb10:
  %t43 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t43, ptr %lp1
  %t44 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t45 = load ptr, ptr %lp1
  store { i64, ptr } %t44, ptr %t45, !tbaa !27
  %t46 = load ptr, ptr %lp1
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t49 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t47, 1
  store { i32, { i64, ptr } } %t49, ptr %rv
  br label %ret
bb11:
  br label %bb1
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2eSend(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l34 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t3, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %t23, i64 %t20
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !37
  %t31 = add i64 %t17, 1
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t37 = icmp slt i64 %t31, %t34
  call void @std_2fzmtp_2eframe(ptr %s0, ptr %v1, ptr %l2, { i64, ptr } %t25, i1 %t37, i1 false)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l4, !tbaa !24
  br label %bb2
bb8:
  %t47 = getelementptr %"std/zmtp:Socket", ptr %a0, i32 0, i32 0
  store ptr %t47, ptr %l31, !tbaa !29
  %t49 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t49, ptr %l33
  br label %bb9
bb9:
  %t50 = load ptr, ptr %l31, !tbaa !29
  %t51 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t52 = call i32 @std_2fnet_2estd_2fnet_3aConn_2eWrite(ptr %v0, ptr %s0, ptr %t50, { i64, ptr } %t51)
  store i32 %t52, ptr %l34
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb11, label %ok.54, !prof !99
ok.54:
  br label %bb10
bb10:
  br label %bb12
bb11:
  %t55 = load i32, ptr %l34, !tbaa !23
  %t56 = lshr i32 %t55, 16
  %t57 = and i32 %t55, 65535
  %t58 = icmp eq i32 %t56, 1
  %t59 = select i1 %t58, i32 1, i32 0
  %t60 = icmp eq i32 %t55, 0
  %t61 = shl i32 %t59, 16
  %t62 = or i32 %t61, %t57
  %t63 = select i1 %t60, i32 0, i32 %t62
  call void @__olang_scope_close(ptr %s0)
  store i32 %t63, ptr %rv
  br label %ret
bb12:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @std_2fzmtp_2estd_2fzmtp_3aSocket_2eframes(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %lp11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l24 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l42 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %l78 = alloca { i64, ptr }
  %l87 = alloca i64
  %l90 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a2, ptr %l18, !tbaa !24
  %t2 = load i64, ptr %l18, !tbaa !24
  %t3 = icmp sge i64 %t2, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l18, !tbaa !24
  %t6 = icmp sle i64 %t5, 576460752303423487
  br i1 %t6, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_4bbdaade106d973e_8ca98eac508a18fa)
  unreachable
bb3:
  %t8 = load i64, ptr %l18, !tbaa !24
  %t9 = mul i64 %t8, 16
  %t10 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  %t13 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t13, ptr %lp3
  %t15 = load ptr, ptr %lp3
  store { i64, ptr } %t12, ptr %t15, !tbaa !27
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/zmtp:Socket", ptr %t16, i32 0, i32 2
  %t20 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %v0, ptr %v0, ptr %t18)
  store { i64, ptr } %t20, ptr %l24
  br label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_4bbdaade106d973e_8ca98eac508a18fa)
  unreachable
bb5:
  %t21 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t21, ptr %l4, !tbaa !27
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/zmtp:Socket", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t31 = icmp slt i64 %t27, %a1
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb7, label %bb8
bb7:
  br label %bb34
bb8:
  br label %bb9
bb9:
  %t35 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t35, ptr %l31, !tbaa !27
  %t36 = load i64, ptr %l5, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i8, ptr %t39, i64 %t36
  %t41 = load i8, ptr %t40, !tbaa !32
  %t43 = and i8 %t41, 2
  %t45 = icmp ne i8 %t43, 0
  store i1 %t45, ptr %l7, !tbaa !21
  %t47 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t47, ptr %l36, !tbaa !27
  %t48 = load i64, ptr %l5, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i8, ptr %t51, i64 %t48
  %t53 = load i8, ptr %t52, !tbaa !32
  %t55 = and i8 %t53, 4
  %t57 = icmp ne i8 %t55, 0
  store i1 %t57, ptr %l8, !tbaa !21
  %t59 = load i1, ptr %l7, !tbaa !21
  br i1 %t59, label %bb10, label %bb11
bb10:
  store i64 9, ptr %l42, !tbaa !24
  br label %bb12
bb11:
  store i64 2, ptr %l42, !tbaa !24
  br label %bb12
bb12:
  %t61 = load i64, ptr %l42, !tbaa !24
  store i64 %t61, ptr %l9, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t63 = load i64, ptr %l5, !tbaa !24
  %t64 = load i1, ptr %l7, !tbaa !21
  %t68 = call i64 @std_2fzmtp_2esizeAt(ptr %v0, { i64, ptr } %t62, i64 %t63, i1 %t64)
  store i64 %t68, ptr %l46
  br label %bb13
bb13:
  %t69 = load i64, ptr %l46, !tbaa !24
  store i64 %t69, ptr %l10, !tbaa !24
  %t70 = load i1, ptr %l8, !tbaa !21
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb14, label %bb15
bb14:
  %t74 = load i64, ptr %l10, !tbaa !24
  store i64 %t74, ptr %l49, !tbaa !24
  %t75 = load i64, ptr %l49, !tbaa !24
  %t76 = icmp sge i64 %t75, 0
  br i1 %t76, label %bb16, label %bb17
bb15:
  br label %bb32
bb16:
  %t78 = load i64, ptr %l49, !tbaa !24
  %t79 = mul i64 %t78, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t79)
  %t81 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  %t83 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t83, ptr %lp11
  %t85 = load ptr, ptr %lp11
  store { i64, ptr } %t82, ptr %t85, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t86 = load i64, ptr %l10, !tbaa !24
  store i64 %t86, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t88 = load i64, ptr %l13, !tbaa !24
  %t89 = load i64, ptr %l12, !tbaa !24
  %t92 = icmp sgt i64 %t88, %t89
  br i1 %t92, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_237751653b136673_36a383b697e3f04f)
  unreachable
bb18:
  %t94 = load i64, ptr %l14, !tbaa !24
  %t96 = icmp sgt i64 %t94, 0
  br i1 %t96, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb23
bb20:
  %t98 = load i64, ptr %l13, !tbaa !24
  %t99 = load i64, ptr %l12, !tbaa !24
  %t102 = sub i64 %t98, %t99
  %t103 = load i64, ptr %l14, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t108 = sub i64 %t106, 1
  %t109 = load i64, ptr %l14, !tbaa !24
  %t112 = sdiv i64 %t108, %t109
  store i64 %t112, ptr %l59, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb22
bb22:
  %t114 = load i64, ptr %l59, !tbaa !24
  store i64 %t114, ptr %l56, !tbaa !24
  br label %bb23
bb23:
  %t115 = load i64, ptr %l56, !tbaa !24
  store i64 %t115, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb24
bb24:
  %t116 = load i64, ptr %l16, !tbaa !24
  %t117 = load i64, ptr %l15, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb25, label %bb26
bb25:
  br label %bb29
bb26:
  br label %bb27
bb27:
  %t124 = load i64, ptr %l12, !tbaa !24
  %t125 = load i64, ptr %l16, !tbaa !24
  %t126 = load i64, ptr %l14, !tbaa !24
  %t129 = mul i64 %t125, %t126
  %t132 = add i64 %t124, %t129
  store i64 %t132, ptr %l17, !tbaa !24
  %t134 = load i64, ptr %l17, !tbaa !24
  %t135 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t135, ptr %l78, !tbaa !27
  %t136 = load i64, ptr %l5, !tbaa !24
  %t137 = load i64, ptr %l9, !tbaa !24
  %t140 = add i64 %t136, %t137
  %t141 = load i64, ptr %l17, !tbaa !24
  %t144 = add i64 %t140, %t141
  %t146 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i8, ptr %t147, i64 %t144
  %t149 = load i8, ptr %t148, !tbaa !32
  %t151 = load ptr, ptr %lp11
  %t153 = getelementptr { i64, ptr }, ptr %t151, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i8, ptr %t154, i64 %t134
  store i8 %t149, ptr %t155, !tbaa !32
  br label %bb28
bb28:
  %t156 = load i64, ptr %l16, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l16, !tbaa !24
  br label %bb24
bb29:
  %t160 = load i64, ptr %l6, !tbaa !24
  store i64 %t160, ptr %l87, !tbaa !24
  %t161 = load ptr, ptr %lp11
  %t162 = load { i64, ptr }, ptr %t161, !tbaa !27
  %t164 = load ptr, ptr %lp3
  %t165 = load i64, ptr %l87, !tbaa !24
  %t166 = getelementptr { i64, ptr }, ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr { i64, ptr }, ptr %t167, i64 %t165
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !37
  store { i64, ptr } %t169, ptr %l90, !tbaa !27
  %t171 = load ptr, ptr %lp3
  %t172 = load i64, ptr %l87, !tbaa !24
  %t173 = getelementptr { i64, ptr }, ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr { i64, ptr }, ptr %t174, i64 %t172
  store { i64, ptr } %t162, ptr %t175, !tbaa !37
  %t176 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_3e_2e_2d1
  br i1 %t176, label %bb30, label %bb31
bb30:
  %t178 = load { i64, ptr }, ptr %l90
  %t179 = extractvalue { i64, ptr } %t178, 1
  call void @__olang_slot_release(ptr %t179)
  store { i64, ptr } zeroinitializer, ptr %l90
  br label %bb31
bb31:
  %t180 = load i64, ptr %l6, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l6, !tbaa !24
  br label %bb32
bb32:
  %t184 = load i64, ptr %l5, !tbaa !24
  %t185 = load i64, ptr %l9, !tbaa !24
  %t186 = load i64, ptr %l10, !tbaa !24
  %t189 = add i64 %t185, %t186
  %t192 = add i64 %t184, %t189
  store i64 %t192, ptr %l5, !tbaa !24
  br label %bb33
bb33:
  br label %bb6
bb34:
  %t194 = load ptr, ptr %lp3
  %t195 = load { i64, ptr }, ptr %t194, !tbaa !27
  store { i64, ptr } %t195, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @std_2fzmtp_2estd_2fzmtp_3aSocket_2ehello(ptr %v0, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca [64 x i8]
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca [64 x i8]
  %l18 = alloca { i64, ptr }
  %l28 = alloca i8
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 64
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [64 x i8], ptr %l10, i64 0, i64 %t5
  store i8 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  %t9 = load [64 x i8], ptr %l10
  store [64 x i8] %t9, ptr %l2
  %t10 = getelementptr [64 x i8], ptr %l2, i64 0, i64 0
  store i8 -1, ptr %t10, !tbaa !32
  %t11 = getelementptr [64 x i8], ptr %l2, i64 0, i64 9
  store i8 127, ptr %t11, !tbaa !32
  %t12 = getelementptr [64 x i8], ptr %l2, i64 0, i64 10
  store i8 3, ptr %t12, !tbaa !32
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp slt i64 %t17, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t27, ptr %l18, !tbaa !27
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i8, ptr %t31, i64 %t28
  %t33 = load i8, ptr %t32, !tbaa !32
  %t37 = add i64 12, %t25
  %t42 = getelementptr [64 x i8], ptr %l2, i64 0, i64 %t37
  store i8 %t33, ptr %t42, !tbaa !32
  br label %bb5
bb5:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l4, !tbaa !24
  br label %bb1
bb6:
  br i1 %a1, label %bb7, label %bb8
bb7:
  store i8 1, ptr %l28, !tbaa !22
  br label %bb9
bb8:
  store i8 0, ptr %l28, !tbaa !22
  br label %bb9
bb9:
  %t49 = load i8, ptr %l28, !tbaa !22
  %t50 = getelementptr [64 x i8], ptr %l2, i64 0, i64 32
  store i8 %t49, ptr %t50, !tbaa !32
  %t51 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t51, ptr %l29
  br label %bb10
bb10:
  %t52 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l8
  %t54 = insertvalue { i64, ptr } undef, i64 64, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %l2, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %s0, ptr %s0, ptr %l8, { i64, ptr } %t55)
  br label %bb11
bb11:
  %t58 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l33
  br label %bb12
bb12:
  %t59 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %s0, ptr %l9, i8 5)
  br label %bb13
bb13:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l36, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %s0, ptr %s0, ptr %l9, { i64, ptr } %t62)
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"std/zmtp:Socket", ptr %t63, i32 0, i32 1
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  call void @std_2fzmtp_2eproperty(ptr %s0, ptr %s0, ptr %v0, ptr %l9, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d3, i32 0, i32 1) }, { i64, ptr } %t66)
  br label %bb15
bb15:
  store ptr %l8, ptr %l40, !tbaa !29
  %t70 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %s0, ptr %s0, ptr %l9)
  store { i64, ptr } %t70, ptr %l42
  br label %bb16
bb16:
  %t71 = load ptr, ptr %l40, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l42, !tbaa !27
  call void @std_2fzmtp_2eframe(ptr %s0, ptr %s0, ptr %t71, { i64, ptr } %t72, i1 false, i1 true)
  br label %bb17
bb17:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"std/zmtp:Socket", ptr %t73, i32 0, i32 0
  store ptr %t75, ptr %l44, !tbaa !29
  %t77 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %s0, ptr %s0, ptr %l8)
  store { i64, ptr } %t77, ptr %l46
  br label %bb18
bb18:
  %t78 = load ptr, ptr %l44, !tbaa !29
  %t79 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t80 = call i32 @std_2fnet_2estd_2fnet_3aConn_2eWrite(ptr %v0, ptr %s0, ptr %t78, { i64, ptr } %t79)
  store i32 %t80, ptr %l47
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb20, label %ok.82, !prof !99
ok.82:
  br label %bb19
bb19:
  br label %bb21
bb20:
  %t83 = load i32, ptr %l47, !tbaa !23
  %t84 = lshr i32 %t83, 16
  %t85 = and i32 %t83, 65535
  %t86 = icmp eq i32 %t84, 1
  %t87 = select i1 %t86, i32 1, i32 0
  %t88 = icmp eq i32 %t83, 0
  %t89 = shl i32 %t87, 16
  %t90 = or i32 %t89, %t85
  %t91 = select i1 %t88, i32 0, i32 %t90
  call void @__olang_scope_close(ptr %s0)
  store i32 %t91, ptr %rv
  br label %ret
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, i64 } @std_2fzmtp_2estd_2fzmtp_3aSocket_2ewhole(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i8
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l25 = alloca i64
  %l39 = alloca i64
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/zmtp:Socket", ptr %t1, i32 0, i32 2
  %t5 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %v0, ptr %v0, ptr %t3)
  store { i64, ptr } %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/zmtp:Socket", ptr %t7, i32 0, i32 3
  %t10 = load i64, ptr %t9, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = add i64 %t12, 2
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t20 = icmp sgt i64 %t14, %t17
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t24 = insertvalue { i64, i64 } undef, i64 %t22, 0
  %t25 = insertvalue { i64, i64 } %t24, i64 -1, 1
  store { i64, i64 } %t25, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t27, ptr %l19, !tbaa !27
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i8, ptr %t31, i64 %t28
  %t33 = load i8, ptr %t32, !tbaa !32
  store i8 %t33, ptr %l4, !tbaa !22
  %t35 = load i8, ptr %l4, !tbaa !22
  %t37 = and i8 %t35, 2
  %t39 = icmp ne i8 %t37, 0
  br i1 %t39, label %bb6, label %bb7
bb6:
  store i64 9, ptr %l25, !tbaa !24
  br label %bb8
bb7:
  store i64 2, ptr %l25, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l25, !tbaa !24
  store i64 %t41, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l2, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t52 = icmp sgt i64 %t46, %t49
  br i1 %t52, label %bb9, label %bb10
bb9:
  %t54 = load i64, ptr %l2, !tbaa !24
  %t56 = insertvalue { i64, i64 } undef, i64 %t54, 0
  %t57 = insertvalue { i64, i64 } %t56, i64 -1, 1
  store { i64, i64 } %t57, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t59 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t60 = load i64, ptr %l2, !tbaa !24
  %t61 = load i8, ptr %l4, !tbaa !22
  %t63 = and i8 %t61, 2
  %t65 = icmp ne i8 %t63, 0
  %t69 = call i64 @std_2fzmtp_2esizeAt(ptr %v0, { i64, ptr } %t59, i64 %t60, i1 %t65)
  store i64 %t69, ptr %l39
  br label %bb12
bb12:
  %t70 = load i64, ptr %l39, !tbaa !24
  store i64 %t70, ptr %l6, !tbaa !24
  %t71 = load i64, ptr %l2, !tbaa !24
  %t72 = load i64, ptr %l5, !tbaa !24
  %t75 = add i64 %t71, %t72
  %t76 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t75, %t76
  %t80 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t85 = icmp sgt i64 %t79, %t82
  br i1 %t85, label %bb13, label %bb14
bb13:
  %t87 = load i64, ptr %l2, !tbaa !24
  %t89 = insertvalue { i64, i64 } undef, i64 %t87, 0
  %t90 = insertvalue { i64, i64 } %t89, i64 -1, 1
  store { i64, i64 } %t90, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t92 = load i64, ptr %l2, !tbaa !24
  %t93 = load i64, ptr %l5, !tbaa !24
  %t94 = load i64, ptr %l6, !tbaa !24
  %t97 = add i64 %t93, %t94
  %t100 = add i64 %t92, %t97
  store i64 %t100, ptr %l2, !tbaa !24
  %t102 = load i8, ptr %l4, !tbaa !22
  %t104 = and i8 %t102, 4
  %t106 = icmp ne i8 %t104, 0
  br i1 %t106, label %bb16, label %bb17
bb16:
  %t108 = load i64, ptr %l2, !tbaa !24
  %t109 = load i64, ptr %l3, !tbaa !24
  %t111 = insertvalue { i64, i64 } undef, i64 %t108, 0
  %t113 = insertvalue { i64, i64 } %t111, i64 %t109, 1
  store { i64, i64 } %t113, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t115 = load i64, ptr %l3, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l3, !tbaa !24
  %t119 = load i8, ptr %l4, !tbaa !22
  %t121 = and i8 %t119, 1
  %t123 = icmp eq i8 %t121, 0
  br i1 %t123, label %bb19, label %bb20
bb19:
  %t125 = load i64, ptr %l2, !tbaa !24
  %t126 = load i64, ptr %l3, !tbaa !24
  %t128 = insertvalue { i64, i64 } undef, i64 %t125, 0
  %t130 = insertvalue { i64, i64 } %t128, i64 %t126, 1
  store { i64, i64 } %t130, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb2
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local %"std/zmtp:Socket" @std_2fzmtp_3aSocket_2ector(ptr %v0, %"std/net:Conn" %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca %"std/net:Conn"
  %l3 = alloca { i64, ptr }
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/zmtp:Socket"
  br label %start
start:
  br label %bb0
bb0:
  store %"std/net:Conn" %a0, ptr %l2
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2estd_2fzmtp_3aSocket_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l9, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l9
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l11
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2estd_2fzmtp_3aSocket_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l9
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = call ptr @__olang_region_home(ptr %t20)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = icmp eq ptr %t23, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t24)
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t26 = load %"std/net:Conn", ptr %l2
  %t27 = insertvalue %"std/zmtp:Socket" undef, %"std/net:Conn" %t26, 0
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = insertvalue %"std/zmtp:Socket" %t27, { i64, ptr } %t28, 1
  %t31 = insertvalue %"std/zmtp:Socket" %t29, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, 2
  %t33 = insertvalue %"std/zmtp:Socket" %t31, i64 0, 3
  %t35 = insertvalue %"std/zmtp:Socket" %t33, i1 false, 4
  store %"std/zmtp:Socket" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"std/zmtp:Socket", ptr %rv
  ret %"std/zmtp:Socket" %rr
}

@olang_2esole_2estd_2fzmtp_3aSocket_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cU8_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 1
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
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
declare void @__olang_scope_register_dtor(ptr, ptr, ptr)
define linkonce_odr void @olang_2emir_2eHelperKind_2eDrop_2estd_2fzmtp_3aSocket_rt(ptr %inst, ptr %scope) #0 {
entry:
  call void @olang_2emir_2eHelperKind_2eDrop_2estd_2fzmtp_3aSocket(ptr %scope, ptr %inst)
  ret void
}

define linkonce_odr %"std/zmtp:Socket" @olang_2emir_2eHelperKind_2eCopy_2estd_2fzmtp_3aSocket(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/zmtp:Socket"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/zmtp:Socket"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/zmtp:Socket", ptr %a0
  store %"std/zmtp:Socket" %t2, ptr %l1
  %t3 = getelementptr %"std/zmtp:Socket", ptr %l1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 1
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/zmtp:Socket", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/zmtp:Socket", ptr %l1, i32 0, i32 2
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cU8_3e(ptr %v0, ptr %t20)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l6
  br label %bb1
bb1:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  %t24 = getelementptr %"std/zmtp:Socket", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %t24
  %t25 = load %"std/zmtp:Socket", ptr %l1
  store %"std/zmtp:Socket" %t25, ptr %rv
  br label %ret
ret:
  %rr = load %"std/zmtp:Socket", ptr %rv
  ret %"std/zmtp:Socket" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"NULL" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_3e_2e_2d1 = weak hidden constant i1 false
declare void @__olang_slot_release(ptr) noinline
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"NULL" }>, align 8
@.d2 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"READY" }>, align 8
@.d3 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"Socket-Type" }>, align 8
declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
define linkonce_odr void @olang_2emir_2eHelperKind_2eDrop_2estd_2fzmtp_3aSocket(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t2 = getelementptr %"std/zmtp:Socket", ptr %a0, i32 0, i32 0
  call void @olang_2emir_2eHelperKind_2eDrop_2estd_2fnet_3aConn(ptr %v0, ptr %t2)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eDrop_2estd_2fnet_3aConn(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @std_2fnet_3aConn_2edtor(ptr %v0, ptr %a0)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

declare { i32, %"std/net:Conn" } @std_2fnet_2estd_2fnet_3aListener_2eAccept(ptr %v0, ptr %a0)
declare { i32, %"std/net:Conn" } @std_2fnet_2eConn_2eDial(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %a0, i8 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @std_2fnet_2estd_2fnet_3aConn_2eFd(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @std_2fnet_2estd_2fnet_3aConn_2eRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eClear_3cU8_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_ae9a882ac7c9c3e7_127a36597258840b = external constant [0 x i8]
@olang_loc_ce6aff91bca6310a_8709f628085e380e = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %v0, i64 %a0)
declare i32 @std_2fnet_2estd_2fnet_3aConn_2eWrite(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_4bbdaade106d973e_8ca98eac508a18fa = external constant [0 x i8]
@olang_loc_237751653b136673_36a383b697e3f04f = external constant [0 x i8]
declare void @std_2fnet_3aConn_2edtor(ptr %v0, ptr %a0)

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
