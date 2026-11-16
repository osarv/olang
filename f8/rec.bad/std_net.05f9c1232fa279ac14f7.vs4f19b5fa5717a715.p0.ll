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
%"std/net:Addr" = type { %"std/net:IP", i16 }
%"std/net:IP" = type { i1, [16 x i8] }
%"std/net:Conn" = type { i32 }
%"std/net:Listener" = type { i32 }
%"<netdb.h>:addrinfo" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"<poll.h>:pollfd" = type { i32, i16, i16 }
%"std/net:UDP" = type { i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
@G_2estd_2fnet_2eafInet = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2estd_2fnet_2eafInet6 = constant <{ [4 x i8] }> <{ [4 x i8] c"\0A\00\00\00" }>, align 8
@G_2estd_2fnet_2eipprotoIpv6 = constant <{ [4 x i8] }> <{ [4 x i8] c"\29\00\00\00" }>, align 8
@G_2estd_2fnet_2eipv6V6only = constant <{ [4 x i8] }> <{ [4 x i8] c"\1A\00\00\00" }>, align 8
@G_2estd_2fnet_2emsgNosignal = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\40\00\00" }>, align 8
@G_2estd_2fnet_2eshutWr = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2estd_2fnet_2esoRcvtimeo = constant <{ [4 x i8] }> <{ [4 x i8] c"\14\00\00\00" }>, align 8
@G_2estd_2fnet_2esoReuseaddr = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2estd_2fnet_2esoSndtimeo = constant <{ [4 x i8] }> <{ [4 x i8] c"\15\00\00\00" }>, align 8
@G_2estd_2fnet_2esockCloexec = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\08\00" }>, align 8
@G_2estd_2fnet_2esockDgram = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2estd_2fnet_2esockStream = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2estd_2fnet_2esolSocket = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
define dso_local { i32, %"std/net:Addr" } @std_2fnet_2eAddr_2eParse(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/net:Addr"
  %l3 = alloca %"std/net:Addr"
  %l4 = alloca i32
  %l6 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, [2 x i64] }
  %l12 = alloca i64
  %l14 = alloca { i64, [2 x i64] }
  %s1 = alloca %olang.scope
  %rv = alloca { i32, %"std/net:Addr" }
  %t28 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, %"std/net:Addr" } @std_2fnet_2eAddr_2ehostPort(ptr %v0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, %"std/net:Addr" } %t3, 1
  %t5 = extractvalue { i32, %"std/net:Addr" } %t3, 0
  store i32 %t5, ptr %l4
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store %"std/net:Addr" %t4, ptr %l3
  br label %bb1
bb1:
  %t8 = load %"std/net:Addr", ptr %l3
  store %"std/net:Addr" %t8, ptr %l1
  br label %bb5
bb2:
  %t9 = load i32, ptr %l4, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t13, ptr %l8, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l9, !tbaa !24
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = mul i64 %t17, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l10, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l9, !tbaa !24
  %t27 = mul i64 %t26, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t23, ptr %t25, i64 %t27, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [2 x i64] }, ptr %t28, i32 0, i32 0
  store i64 5, ptr %t29
  %t30 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t31 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t30, 0
  %t32 = getelementptr { i64, [2 x i64] }, ptr %t28, i32 0, i32 1
  store { { i64, ptr } } %t31, ptr %t32
  %t33 = load { i64, [2 x i64] }, ptr %t28
  store { i64, [2 x i64] } %t33, ptr %l11
  %t34 = call ptr @__olang_errpay_push()
  %t35 = ptrtoint ptr %t34 to i64
  store i64 %t35, ptr %l12, !tbaa !24
  %t36 = load i64, ptr %l12
  %t37 = inttoptr i64 %t36 to ptr
  %t39 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t37, ptr %l11)
  store { i64, [2 x i64] } %t39, ptr %l14
  br label %bb4
bb4:
  %t40 = load { i64, [2 x i64] }, ptr %l14
  %t41 = load i64, ptr %l12
  %t42 = inttoptr i64 %t41 to ptr
  %t43 = call ptr @__olang_scope_alloc_a(ptr %t42, i64 24, i64 8)
  store { i64, [2 x i64] } %t40, ptr %t43
  call void @__olang_errpay_set(ptr %t43)
  call void @__olang_scope_close(ptr %s1)
  %t46 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 65541, 0
  store { i32, %"std/net:Addr" } %t46, ptr %rv
  br label %ret
bb5:
  %t47 = load %"std/net:Addr", ptr %l1
  %t48 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, %"std/net:Addr" %t47, 1
  store { i32, %"std/net:Addr" } %t48, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:Addr" }, ptr %rv
  ret { i32, %"std/net:Addr" } %rr
}

define dso_local { i32, %"std/net:Addr" } @std_2fnet_2eAddr_2eResolve(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, i64 }
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l13 = alloca %"std/net:Addr"
  %l15 = alloca %"std/net:Addr"
  %l16 = alloca i32
  %l18 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i32
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, [2 x i64] }
  %l27 = alloca i64
  %l29 = alloca { i64, [2 x i64] }
  %l32 = alloca { i64, i64 }
  %l36 = alloca { i64, i64 }
  %l37 = alloca i32
  %l39 = alloca i1
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, [2 x i64] }
  %l45 = alloca i64
  %l47 = alloca { i64, [2 x i64] }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, [2 x i64] }
  %l61 = alloca i64
  %l63 = alloca { i64, [2 x i64] }
  %l66 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca i64
  %l69 = alloca i64
  %l74 = alloca { i64, ptr }
  %l75 = alloca i32
  %l80 = alloca %"std/net:Addr"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i32, %"std/net:Addr" }
  %t60 = alloca { i64, [2 x i64] }, align 8
  %t111 = alloca { i64, [2 x i64] }, align 8
  %t160 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l10, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i8, ptr %t9, i64 0
  %t11 = load i8, ptr %t10, !tbaa !32
  %t13 = icmp eq i8 %t11, 91
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l9, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t18 = call { i32, %"std/net:Addr" } @std_2fnet_2eAddr_2eParse(ptr %v0, { i64, ptr } %t16)
  %t19 = extractvalue { i32, %"std/net:Addr" } %t18, 1
  %t20 = extractvalue { i32, %"std/net:Addr" } %t18, 0
  store i32 %t20, ptr %l16
  %t21 = icmp ne i32 %t20, 0
  br i1 %t21, label %bb7, label %ok.22, !prof !99
ok.22:
  store %"std/net:Addr" %t19, ptr %l15
  br label %bb6
bb5:
  br label %bb9
bb6:
  %t23 = load %"std/net:Addr", ptr %l15
  store %"std/net:Addr" %t23, ptr %l13
  br label %bb8
bb7:
  %t24 = load i32, ptr %l16, !tbaa !23
  %t25 = lshr i32 %t24, 16
  %t26 = and i32 %t24, 65535
  %t27 = icmp eq i32 %t25, 1
  %t28 = select i1 %t27, i32 1, i32 0
  %t29 = icmp eq i32 %t24, 0
  %t30 = shl i32 %t28, 16
  %t31 = or i32 %t30, %t26
  %t32 = select i1 %t29, i32 0, i32 %t31
  call void @__olang_scope_close(ptr %s0)
  %t34 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 %t32, 0
  store { i32, %"std/net:Addr" } %t34, ptr %rv
  br label %ret
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t35 = load %"std/net:Addr", ptr %l13
  %t36 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, %"std/net:Addr" %t35, 1
  store { i32, %"std/net:Addr" } %t36, ptr %rv
  br label %ret
bb9:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t39 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t37, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) })
  %t40 = extractvalue { i32, i64 } %t39, 1
  %t41 = extractvalue { i32, i64 } %t39, 0
  store i32 %t41, ptr %l21
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb11, label %ok.43, !prof !99
ok.43:
  store i64 %t40, ptr %l20
  br label %bb10
bb10:
  %t44 = load i64, ptr %l20, !tbaa !24
  store i64 %t44, ptr %l18, !tbaa !24
  br label %bb14
bb11:
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t45, ptr %l23, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  store i64 %t48, ptr %l24, !tbaa !24
  %t49 = load i64, ptr %l24, !tbaa !24
  %t50 = mul i64 %t49, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t50)
  %t52 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  store { i64, ptr } %t53, ptr %l25, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = load i64, ptr %l24, !tbaa !24
  %t59 = mul i64 %t58, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t55, ptr %t57, i64 %t59, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t60
  %t61 = getelementptr { i64, [2 x i64] }, ptr %t60, i32 0, i32 0
  store i64 5, ptr %t61
  %t62 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t63 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t62, 0
  %t64 = getelementptr { i64, [2 x i64] }, ptr %t60, i32 0, i32 1
  store { { i64, ptr } } %t63, ptr %t64
  %t65 = load { i64, [2 x i64] }, ptr %t60
  store { i64, [2 x i64] } %t65, ptr %l26
  %t66 = call ptr @__olang_errpay_push()
  %t67 = ptrtoint ptr %t66 to i64
  store i64 %t67, ptr %l27, !tbaa !24
  %t68 = load i64, ptr %l27
  %t69 = inttoptr i64 %t68 to ptr
  %t71 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t69, ptr %l26)
  store { i64, [2 x i64] } %t71, ptr %l29
  br label %bb13
bb13:
  %t72 = load { i64, [2 x i64] }, ptr %l29
  %t73 = load i64, ptr %l27
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = call ptr @__olang_scope_alloc_a(ptr %t74, i64 24, i64 8)
  store { i64, [2 x i64] } %t72, ptr %t75
  call void @__olang_errpay_set(ptr %t75)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t78 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 65541, 0
  store { i32, %"std/net:Addr" } %t78, ptr %rv
  br label %ret
bb14:
  %t79 = load i64, ptr %l18, !tbaa !24
  store i64 %t79, ptr %l1, !tbaa !24
  %t80 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t81 = load i64, ptr %l1, !tbaa !24
  %t83 = add i64 %t81, 1
  %t86 = call { i32, { i64, i64 } } @std_2fnet_2edecimalAt(ptr %v0, { i64, ptr } %t80, i64 %t83, i64 65535)
  %t87 = extractvalue { i32, { i64, i64 } } %t86, 1
  %t88 = extractvalue { i32, { i64, i64 } } %t86, 0
  store i32 %t88, ptr %l37
  %t89 = icmp ne i32 %t88, 0
  br i1 %t89, label %bb16, label %ok.90, !prof !99
ok.90:
  store { i64, i64 } %t87, ptr %l36
  br label %bb15
bb15:
  %t91 = load { i64, i64 }, ptr %l36
  store { i64, i64 } %t91, ptr %l32
  br label %bb19
bb16:
  %t92 = load i32, ptr %l37, !tbaa !23
  %t93 = ashr i32 %t92, 16
  %t95 = icmp eq i32 %t93, 1
  store i1 %t95, ptr %l39, !tbaa !21
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t96 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t96, ptr %l41, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  store i64 %t99, ptr %l42, !tbaa !24
  %t100 = load i64, ptr %l42, !tbaa !24
  %t101 = mul i64 %t100, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t101)
  %t103 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  store { i64, ptr } %t104, ptr %l43, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = load i64, ptr %l42, !tbaa !24
  %t110 = mul i64 %t109, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t106, ptr %t108, i64 %t110, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t111
  %t112 = getelementptr { i64, [2 x i64] }, ptr %t111, i32 0, i32 0
  store i64 5, ptr %t112
  %t113 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t114 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t113, 0
  %t115 = getelementptr { i64, [2 x i64] }, ptr %t111, i32 0, i32 1
  store { { i64, ptr } } %t114, ptr %t115
  %t116 = load { i64, [2 x i64] }, ptr %t111
  store { i64, [2 x i64] } %t116, ptr %l44
  %t117 = call ptr @__olang_errpay_push()
  %t118 = ptrtoint ptr %t117 to i64
  store i64 %t118, ptr %l45, !tbaa !24
  %t119 = load i64, ptr %l45
  %t120 = inttoptr i64 %t119 to ptr
  %t122 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t120, ptr %l44)
  store { i64, [2 x i64] } %t122, ptr %l47
  br label %bb18
bb18:
  %t123 = load { i64, [2 x i64] }, ptr %l47
  %t124 = load i64, ptr %l45
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = call ptr @__olang_scope_alloc_a(ptr %t125, i64 24, i64 8)
  store { i64, [2 x i64] } %t123, ptr %t126
  call void @__olang_errpay_set(ptr %t126)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t129 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 65541, 0
  store { i32, %"std/net:Addr" } %t129, ptr %rv
  br label %ret
bb19:
  %t130 = load { i64, i64 }, ptr %l32
  store { i64, i64 } %t130, ptr %l2
  %t131 = getelementptr { i64, i64 }, ptr %l2, i32 0, i32 0
  %t132 = load i64, ptr %t131, !tbaa !24
  store i64 %t132, ptr %l3, !tbaa !24
  %t134 = getelementptr { i64, i64 }, ptr %l2, i32 0, i32 1
  %t135 = load i64, ptr %t134, !tbaa !24
  %t138 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t143 = icmp ne i64 %t135, %t140
  br i1 %t143, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t145 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t145, ptr %l57, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  store i64 %t148, ptr %l58, !tbaa !24
  %t149 = load i64, ptr %l58, !tbaa !24
  %t150 = mul i64 %t149, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  store { i64, ptr } %t153, ptr %l59, !tbaa !27
  %t154 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = load i64, ptr %l58, !tbaa !24
  %t159 = mul i64 %t158, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t155, ptr %t157, i64 %t159, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t160
  %t161 = getelementptr { i64, [2 x i64] }, ptr %t160, i32 0, i32 0
  store i64 5, ptr %t161
  %t162 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t163 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t162, 0
  %t164 = getelementptr { i64, [2 x i64] }, ptr %t160, i32 0, i32 1
  store { { i64, ptr } } %t163, ptr %t164
  %t165 = load { i64, [2 x i64] }, ptr %t160
  store { i64, [2 x i64] } %t165, ptr %l60
  %t166 = call ptr @__olang_errpay_push()
  %t167 = ptrtoint ptr %t166 to i64
  store i64 %t167, ptr %l61, !tbaa !24
  %t168 = load i64, ptr %l61
  %t169 = inttoptr i64 %t168 to ptr
  %t171 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t169, ptr %l60)
  store { i64, [2 x i64] } %t171, ptr %l63
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t172 = load { i64, [2 x i64] }, ptr %l63
  %t173 = load i64, ptr %l61
  %t174 = inttoptr i64 %t173 to ptr
  %t175 = call ptr @__olang_scope_alloc_a(ptr %t174, i64 24, i64 8)
  store { i64, [2 x i64] } %t172, ptr %t175
  call void @__olang_errpay_set(ptr %t175)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t178 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 65541, 0
  store { i32, %"std/net:Addr" } %t178, ptr %rv
  br label %ret
bb23:
  %t179 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t179, ptr %l67, !tbaa !27
  %t180 = load i64, ptr %l1, !tbaa !24
  store i64 %t180, ptr %l68, !tbaa !24
  %t181 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 0
  store i64 %t182, ptr %l69, !tbaa !24
  %t183 = icmp sge i64 0, 0
  br i1 %t183, label %bb24, label %bb25
bb24:
  %t185 = load i64, ptr %l68, !tbaa !24
  %t186 = icmp sle i64 0, %t185
  br i1 %t186, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_f1d1c13cf3902f30_d152dc4ae276584)
  unreachable
bb26:
  %t188 = load i64, ptr %l68, !tbaa !24
  %t189 = load i64, ptr %l69, !tbaa !24
  %t190 = icmp sle i64 %t188, %t189
  br i1 %t190, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_f1d1c13cf3902f30_d152dc4ae276584)
  unreachable
bb28:
  %t192 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = load i64, ptr %l68, !tbaa !24
  %t195 = getelementptr i8, ptr %t193, i64 0
  %t196 = sub i64 %t194, 0
  %t197 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t195, 1
  %t200 = call { i32, { i64, ptr } } @std_2fnet_2eLookup(ptr %v0, ptr %s0, { i64, ptr } %t198)
  %t201 = extractvalue { i32, { i64, ptr } } %t200, 1
  %t202 = extractvalue { i32, { i64, ptr } } %t200, 0
  store i32 %t202, ptr %l75
  %t203 = icmp ne i32 %t202, 0
  br i1 %t203, label %bb31, label %ok.204, !prof !99
ok.204:
  store { i64, ptr } %t201, ptr %l74
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_f1d1c13cf3902f30_d152dc4ae276584)
  unreachable
bb30:
  %t205 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t205, ptr %l66, !tbaa !27
  br label %bb32
bb31:
  %t206 = load i32, ptr %l75, !tbaa !23
  %t207 = lshr i32 %t206, 16
  %t208 = and i32 %t206, 65535
  %t209 = icmp eq i32 %t207, 1
  %t210 = select i1 %t209, i32 1, i32 0
  %t211 = icmp eq i32 %t206, 0
  %t212 = shl i32 %t210, 16
  %t213 = or i32 %t212, %t208
  %t214 = select i1 %t211, i32 0, i32 %t213
  call void @__olang_scope_close(ptr %s0)
  %t216 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 %t214, 0
  store { i32, %"std/net:Addr" } %t216, ptr %rv
  br label %ret
bb32:
  %t217 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t217, ptr %l5, !tbaa !27
  %t218 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr %"std/net:IP", ptr %t219, i64 0
  %t221 = load %"std/net:IP", ptr %t220
  %t222 = load i64, ptr %l3, !tbaa !24
  %t224 = trunc i64 %t222 to i16
  %t227 = call %"std/net:Addr" @std_2fnet_3aAddr_2ector(ptr %s0, %"std/net:IP" %t221, i16 %t224)
  store %"std/net:Addr" %t227, ptr %l80
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s0)
  %t228 = load %"std/net:Addr", ptr %l80
  %t229 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, %"std/net:Addr" %t228, 1
  store { i32, %"std/net:Addr" } %t229, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:Addr" }, ptr %rv
  ret { i32, %"std/net:Addr" } %rr
}

define dso_local %"std/net:Addr" @std_2fnet_2eAddr_2efromSockaddr(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i16
  %l3 = alloca %"std/net:IP"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l29 = alloca %"std/net:IP"
  %l33 = alloca i64
  %l36 = alloca i64
  %l55 = alloca { i64, ptr }
  %l63 = alloca %"std/net:Addr"
  %l64 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l72 = alloca %"std/net:IP"
  %l74 = alloca %"std/net:Addr"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca %"std/net:Addr"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l10, !tbaa !27
  %t2 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t3 = load ptr, ptr %t2, !tbaa !27
  %t4 = getelementptr i8, ptr %t3, i64 0
  %t5 = load i8, ptr %t4, !tbaa !32
  %t7 = zext i8 %t5 to i32
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t8, ptr %l13, !tbaa !27
  %t9 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !27
  %t11 = getelementptr i8, ptr %t10, i64 1
  %t12 = load i8, ptr %t11, !tbaa !32
  %t14 = zext i8 %t12 to i32
  %t16 = shl i32 %t14, 8
  %t19 = or i32 %t7, %t16
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t21, ptr %l18, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i8, ptr %t23, i64 2
  %t25 = load i8, ptr %t24, !tbaa !32
  %t27 = zext i8 %t25 to i16
  %t29 = shl i16 %t27, 8
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t30, ptr %l22, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i8, ptr %t32, i64 3
  %t34 = load i8, ptr %t33, !tbaa !32
  %t36 = zext i8 %t34 to i16
  %t39 = or i16 %t29, %t36
  store i16 %t39, ptr %l2, !tbaa !63
  %t42 = load i32, ptr @G_2estd_2fnet_2eafInet6, !tbaa !23
  %t45 = icmp eq i32 %t19, %t42
  br i1 %t45, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t47 = call %"std/net:IP" @std_2fnet_3aIP_2ector(ptr %s1, i1 true)
  store %"std/net:IP" %t47, ptr %l29
  br label %bb3
bb2:
  br label %bb17
bb3:
  %t48 = load %"std/net:IP", ptr %l29
  store %"std/net:IP" %t48, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  store i64 16, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l5, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = icmp sgt i64 %t49, %t50
  br i1 %t53, label %bb4, label %bb5
bb4:
  %t55 = load i64, ptr %l6, !tbaa !24
  %t57 = icmp sgt i64 %t55, 0
  br i1 %t57, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb9
bb6:
  %t59 = load i64, ptr %l5, !tbaa !24
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = sub i64 %t59, %t60
  %t64 = load i64, ptr %l6, !tbaa !24
  %t67 = add i64 %t63, %t64
  %t69 = sub i64 %t67, 1
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = sdiv i64 %t69, %t70
  store i64 %t73, ptr %l36, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb8
bb8:
  %t75 = load i64, ptr %l36, !tbaa !24
  store i64 %t75, ptr %l33, !tbaa !24
  br label %bb9
bb9:
  %t76 = load i64, ptr %l33, !tbaa !24
  store i64 %t76, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  %t77 = load i64, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  %t81 = icmp slt i64 %t77, %t78
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t85 = load i64, ptr %l4, !tbaa !24
  %t86 = load i64, ptr %l8, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t90 = mul i64 %t86, %t87
  %t93 = add i64 %t85, %t90
  store i64 %t93, ptr %l9, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t96, ptr %l55, !tbaa !27
  %t97 = load i64, ptr %l9, !tbaa !24
  %t99 = add i64 8, %t97
  %t101 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i8, ptr %t102, i64 %t99
  %t104 = load i8, ptr %t103, !tbaa !32
  %t106 = getelementptr %"std/net:IP", ptr %l3, i32 0, i32 1
  %t108 = getelementptr [16 x i8], ptr %t106, i64 0, i64 %t95
  store i8 %t104, ptr %t108, !tbaa !32
  br label %bb14
bb14:
  %t109 = load i64, ptr %l8, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l8, !tbaa !24
  br label %bb10
bb15:
  %t113 = load %"std/net:IP", ptr %l3
  %t114 = load i16, ptr %l2, !tbaa !63
  %t117 = call %"std/net:Addr" @std_2fnet_3aAddr_2ector(ptr %s1, %"std/net:IP" %t113, i16 %t114)
  store %"std/net:Addr" %t117, ptr %l63
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t118 = load %"std/net:Addr", ptr %l63
  store %"std/net:Addr" %t118, ptr %rv
  br label %ret
bb17:
  %t119 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t119, ptr %l64, !tbaa !27
  %t120 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr i8, ptr %t121, i64 4
  %t123 = load i8, ptr %t122, !tbaa !32
  %t124 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t124, ptr %l66, !tbaa !27
  %t125 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr i8, ptr %t126, i64 5
  %t128 = load i8, ptr %t127, !tbaa !32
  %t129 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t129, ptr %l68, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i8, ptr %t131, i64 6
  %t133 = load i8, ptr %t132, !tbaa !32
  %t134 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t134, ptr %l70, !tbaa !27
  %t135 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i8, ptr %t136, i64 7
  %t138 = load i8, ptr %t137, !tbaa !32
  %t143 = call %"std/net:IP" @std_2fnet_2eIP_2eIPv4(i8 %t123, i8 %t128, i8 %t133, i8 %t138)
  store %"std/net:IP" %t143, ptr %l72
  br label %bb18
bb18:
  %t144 = load i16, ptr %l2, !tbaa !63
  %t145 = load %"std/net:IP", ptr %l72
  %t147 = call %"std/net:Addr" @std_2fnet_3aAddr_2ector(ptr %s0, %"std/net:IP" %t145, i16 %t144)
  store %"std/net:Addr" %t147, ptr %l74
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t148 = load %"std/net:Addr", ptr %l74
  store %"std/net:Addr" %t148, ptr %rv
  br label %ret
ret:
  %rr = load %"std/net:Addr", ptr %rv
  ret %"std/net:Addr" %rr
}

define dso_local { i32, %"std/net:Addr" } @std_2fnet_2eAddr_2ehostPort(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca %"std/net:IP"
  %l3 = alloca { i64, i64 }
  %l4 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/net:IP"
  %l8 = alloca { i64, i64 }
  %l9 = alloca i64
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l18 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i32
  %l29 = alloca i1
  %l30 = alloca { i64, ptr }
  %l36 = alloca %"std/net:IP"
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l44 = alloca %"std/net:IP"
  %l45 = alloca i32
  %l47 = alloca { i64, i64 }
  %l51 = alloca { i64, i64 }
  %l52 = alloca i32
  %l64 = alloca %"std/net:Addr"
  %l65 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i32
  %l70 = alloca %"std/net:IP"
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca i64
  %l78 = alloca %"std/net:IP"
  %l79 = alloca i32
  %l87 = alloca { i64, i64 }
  %l91 = alloca { i64, i64 }
  %l92 = alloca i32
  %l104 = alloca %"std/net:Addr"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i32, %"std/net:Addr" }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l15, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i8, ptr %t9, i64 0
  %t11 = load i8, ptr %t10, !tbaa !32
  %t13 = icmp eq i8 %t11, 91
  store i1 %t13, ptr %l14, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l14, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t16, i8 93)
  %t20 = extractvalue { i32, i64 } %t19, 1
  %t21 = extractvalue { i32, i64 } %t19, 0
  store i32 %t21, ptr %l22
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb7, label %ok.23, !prof !99
ok.23:
  store i64 %t20, ptr %l21
  br label %bb6
bb5:
  br label %bb32
bb6:
  %t24 = load i64, ptr %l21, !tbaa !24
  store i64 %t24, ptr %l18, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t26 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:Addr" } %t26, ptr %rv
  br label %ret
bb9:
  %t27 = load i64, ptr %l18, !tbaa !24
  store i64 %t27, ptr %l1, !tbaa !24
  %t28 = load i64, ptr %l1, !tbaa !24
  %t30 = add i64 %t28, 1
  %t31 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t36 = icmp sge i64 %t30, %t33
  br i1 %t36, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb12
bb11:
  %t38 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t38, ptr %l30, !tbaa !27
  %t39 = load i64, ptr %l1, !tbaa !24
  %t41 = add i64 %t39, 1
  %t43 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i8, ptr %t44, i64 %t41
  %t46 = load i8, ptr %t45, !tbaa !32
  %t48 = icmp ne i8 %t46, 58
  store i1 %t48, ptr %l29, !tbaa !21
  br label %bb12
bb12:
  %t50 = load i1, ptr %l29, !tbaa !21
  br i1 %t50, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t52 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:Addr" } %t52, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t53 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t53, ptr %l37, !tbaa !27
  %t54 = load i64, ptr %l1, !tbaa !24
  store i64 %t54, ptr %l38, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  store i64 %t56, ptr %l39, !tbaa !24
  %t57 = icmp sge i64 1, 0
  br i1 %t57, label %bb16, label %bb17
bb16:
  %t59 = load i64, ptr %l38, !tbaa !24
  %t60 = icmp sle i64 1, %t59
  br i1 %t60, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_7b75bbc114d81c9_eaa9ae6a6f8e790d)
  unreachable
bb18:
  %t62 = load i64, ptr %l38, !tbaa !24
  %t63 = load i64, ptr %l39, !tbaa !24
  %t64 = icmp sle i64 %t62, %t63
  br i1 %t64, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_7b75bbc114d81c9_eaa9ae6a6f8e790d)
  unreachable
bb20:
  %t66 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = load i64, ptr %l38, !tbaa !24
  %t69 = getelementptr i8, ptr %t67, i64 1
  %t70 = sub i64 %t68, 1
  %t71 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t69, 1
  %t74 = call { i32, %"std/net:IP" } @std_2fnet_2eIP_2eparse6(ptr %v0, { i64, ptr } %t72)
  %t75 = extractvalue { i32, %"std/net:IP" } %t74, 1
  %t76 = extractvalue { i32, %"std/net:IP" } %t74, 0
  store i32 %t76, ptr %l45
  %t77 = icmp ne i32 %t76, 0
  br i1 %t77, label %bb23, label %ok.78, !prof !99
ok.78:
  store %"std/net:IP" %t75, ptr %l44
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_7b75bbc114d81c9_eaa9ae6a6f8e790d)
  unreachable
bb22:
  %t79 = load %"std/net:IP", ptr %l44
  store %"std/net:IP" %t79, ptr %l36
  br label %bb24
bb23:
  %t80 = load i32, ptr %l45, !tbaa !23
  %t81 = lshr i32 %t80, 16
  %t82 = and i32 %t80, 65535
  %t83 = icmp eq i32 %t81, 1
  %t84 = select i1 %t83, i32 1, i32 0
  %t85 = icmp eq i32 %t80, 0
  %t86 = shl i32 %t84, 16
  %t87 = or i32 %t86, %t82
  %t88 = select i1 %t85, i32 0, i32 %t87
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t90 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 %t88, 0
  store { i32, %"std/net:Addr" } %t90, ptr %rv
  br label %ret
bb24:
  %t91 = load %"std/net:IP", ptr %l36
  store %"std/net:IP" %t91, ptr %l2
  %t92 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t93 = load i64, ptr %l1, !tbaa !24
  %t95 = add i64 %t93, 2
  %t98 = call { i32, { i64, i64 } } @std_2fnet_2edecimalAt(ptr %v0, { i64, ptr } %t92, i64 %t95, i64 65535)
  %t99 = extractvalue { i32, { i64, i64 } } %t98, 1
  %t100 = extractvalue { i32, { i64, i64 } } %t98, 0
  store i32 %t100, ptr %l52
  %t101 = icmp ne i32 %t100, 0
  br i1 %t101, label %bb26, label %ok.102, !prof !99
ok.102:
  store { i64, i64 } %t99, ptr %l51
  br label %bb25
bb25:
  %t103 = load { i64, i64 }, ptr %l51
  store { i64, i64 } %t103, ptr %l47
  br label %bb27
bb26:
  %t104 = load i32, ptr %l52, !tbaa !23
  %t105 = lshr i32 %t104, 16
  %t106 = and i32 %t104, 65535
  %t107 = icmp eq i32 %t105, 1
  %t108 = select i1 %t107, i32 1, i32 0
  %t109 = icmp eq i32 %t104, 0
  %t110 = shl i32 %t108, 16
  %t111 = or i32 %t110, %t106
  %t112 = select i1 %t109, i32 0, i32 %t111
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t114 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 %t112, 0
  store { i32, %"std/net:Addr" } %t114, ptr %rv
  br label %ret
bb27:
  %t115 = load { i64, i64 }, ptr %l47
  store { i64, i64 } %t115, ptr %l3
  %t116 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 0
  %t117 = load i64, ptr %t116, !tbaa !24
  store i64 %t117, ptr %l4, !tbaa !24
  %t119 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 1
  %t120 = load i64, ptr %t119, !tbaa !24
  %t123 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t123, 0
  %t128 = icmp ne i64 %t120, %t125
  br i1 %t128, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t131 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:Addr" } %t131, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t132 = load %"std/net:IP", ptr %l2
  %t133 = load i64, ptr %l4, !tbaa !24
  %t135 = trunc i64 %t133 to i16
  %t138 = call %"std/net:Addr" @std_2fnet_3aAddr_2ector(ptr %s1, %"std/net:IP" %t132, i16 %t135)
  store %"std/net:Addr" %t138, ptr %l64
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t139 = load %"std/net:Addr", ptr %l64
  %t140 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, %"std/net:Addr" %t139, 1
  store { i32, %"std/net:Addr" } %t140, ptr %rv
  br label %ret
bb32:
  %t141 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t143 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t141, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) })
  %t144 = extractvalue { i32, i64 } %t143, 1
  %t145 = extractvalue { i32, i64 } %t143, 0
  store i32 %t145, ptr %l68
  %t146 = icmp ne i32 %t145, 0
  br i1 %t146, label %bb34, label %ok.147, !prof !99
ok.147:
  store i64 %t144, ptr %l67
  br label %bb33
bb33:
  %t148 = load i64, ptr %l67, !tbaa !24
  store i64 %t148, ptr %l65, !tbaa !24
  br label %bb36
bb34:
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t150 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:Addr" } %t150, ptr %rv
  br label %ret
bb36:
  %t151 = load i64, ptr %l65, !tbaa !24
  store i64 %t151, ptr %l6, !tbaa !24
  %t152 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t152, ptr %l71, !tbaa !27
  %t153 = load i64, ptr %l6, !tbaa !24
  store i64 %t153, ptr %l72, !tbaa !24
  %t154 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 0
  store i64 %t155, ptr %l73, !tbaa !24
  %t156 = icmp sge i64 0, 0
  br i1 %t156, label %bb37, label %bb38
bb37:
  %t158 = load i64, ptr %l72, !tbaa !24
  %t159 = icmp sle i64 0, %t158
  br i1 %t159, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_890a129ff0c26c5c_548b75716a348c30)
  unreachable
bb39:
  %t161 = load i64, ptr %l72, !tbaa !24
  %t162 = load i64, ptr %l73, !tbaa !24
  %t163 = icmp sle i64 %t161, %t162
  br i1 %t163, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_890a129ff0c26c5c_548b75716a348c30)
  unreachable
bb41:
  %t165 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = load i64, ptr %l72, !tbaa !24
  %t168 = getelementptr i8, ptr %t166, i64 0
  %t169 = sub i64 %t167, 0
  %t170 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t168, 1
  %t173 = call { i32, %"std/net:IP" } @std_2fnet_2eIP_2eParse(ptr %v0, { i64, ptr } %t171)
  %t174 = extractvalue { i32, %"std/net:IP" } %t173, 1
  %t175 = extractvalue { i32, %"std/net:IP" } %t173, 0
  store i32 %t175, ptr %l79
  %t176 = icmp ne i32 %t175, 0
  br i1 %t176, label %bb44, label %ok.177, !prof !99
ok.177:
  store %"std/net:IP" %t174, ptr %l78
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_890a129ff0c26c5c_548b75716a348c30)
  unreachable
bb43:
  %t178 = load %"std/net:IP", ptr %l78
  store %"std/net:IP" %t178, ptr %l70
  br label %bb50
bb44:
  %t179 = load i32, ptr %l79, !tbaa !23
  %t180 = icmp eq i32 %t179, 65541
  br i1 %t180, label %bb45, label %bb46
bb45:
  %t182 = load i32, ptr %l79, !tbaa !23
  %t183 = ashr i32 %t182, 16
  %t185 = icmp eq i32 %t183, 1
  br i1 %t185, label %bb47, label %bb48
bb46:
  %t187 = load i32, ptr %l79, !tbaa !23
  %t188 = lshr i32 %t187, 16
  %t189 = and i32 %t187, 65535
  %t190 = icmp eq i32 %t188, 1
  %t191 = select i1 %t190, i32 0, i32 0
  %t192 = icmp eq i32 %t187, 0
  %t193 = shl i32 %t191, 16
  %t194 = or i32 %t193, %t189
  %t195 = select i1 %t192, i32 0, i32 %t194
  call void @__olang_scope_close(ptr %s0)
  %t197 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 %t195, 0
  store { i32, %"std/net:Addr" } %t197, ptr %rv
  br label %ret
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  %t199 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:Addr" } %t199, ptr %rv
  br label %ret
bb50:
  %t200 = load %"std/net:IP", ptr %l70
  store %"std/net:IP" %t200, ptr %l7
  %t201 = getelementptr %"std/net:IP", ptr %l7, i32 0, i32 0
  %t202 = load i1, ptr %t201, !tbaa !21
  br i1 %t202, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s0)
  %t205 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:Addr" } %t205, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t206 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t207 = load i64, ptr %l6, !tbaa !24
  %t209 = add i64 %t207, 1
  %t212 = call { i32, { i64, i64 } } @std_2fnet_2edecimalAt(ptr %v0, { i64, ptr } %t206, i64 %t209, i64 65535)
  %t213 = extractvalue { i32, { i64, i64 } } %t212, 1
  %t214 = extractvalue { i32, { i64, i64 } } %t212, 0
  store i32 %t214, ptr %l92
  %t215 = icmp ne i32 %t214, 0
  br i1 %t215, label %bb55, label %ok.216, !prof !99
ok.216:
  store { i64, i64 } %t213, ptr %l91
  br label %bb54
bb54:
  %t217 = load { i64, i64 }, ptr %l91
  store { i64, i64 } %t217, ptr %l87
  br label %bb56
bb55:
  %t218 = load i32, ptr %l92, !tbaa !23
  %t219 = lshr i32 %t218, 16
  %t220 = and i32 %t218, 65535
  %t221 = icmp eq i32 %t219, 1
  %t222 = select i1 %t221, i32 1, i32 0
  %t223 = icmp eq i32 %t218, 0
  %t224 = shl i32 %t222, 16
  %t225 = or i32 %t224, %t220
  %t226 = select i1 %t223, i32 0, i32 %t225
  call void @__olang_scope_close(ptr %s0)
  %t228 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 %t226, 0
  store { i32, %"std/net:Addr" } %t228, ptr %rv
  br label %ret
bb56:
  %t229 = load { i64, i64 }, ptr %l87
  store { i64, i64 } %t229, ptr %l8
  %t230 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 0
  %t231 = load i64, ptr %t230, !tbaa !24
  store i64 %t231, ptr %l9, !tbaa !24
  %t233 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 1
  %t234 = load i64, ptr %t233, !tbaa !24
  %t237 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t237, 0
  %t242 = icmp ne i64 %t234, %t239
  br i1 %t242, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s0)
  %t245 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:Addr" } %t245, ptr %rv
  br label %ret
bb58:
  br label %bb59
bb59:
  %t246 = load %"std/net:IP", ptr %l7
  %t247 = load i64, ptr %l9, !tbaa !24
  %t249 = trunc i64 %t247 to i16
  %t252 = call %"std/net:Addr" @std_2fnet_3aAddr_2ector(ptr %s0, %"std/net:IP" %t246, i16 %t249)
  store %"std/net:Addr" %t252, ptr %l104
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  %t253 = load %"std/net:Addr", ptr %l104
  %t254 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, %"std/net:Addr" %t253, 1
  store { i32, %"std/net:Addr" } %t254, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:Addr" }, ptr %rv
  ret { i32, %"std/net:Addr" } %rr
}

define dso_local { i32, %"std/net:Addr" } @std_2fnet_2eAddr_2enameOf(i32 %a0, i1 %a1) #0 {
entry:
  %l0 = alloca i32
  %l2 = alloca [28 x i8]
  %l3 = alloca [1 x i32]
  %l5 = alloca [28 x i8]
  %l8 = alloca i32
  %l13 = alloca i32
  %l18 = alloca i32
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l24 = alloca i32
  %l28 = alloca %"std/net:Addr"
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"std/net:Addr" }
  store i32 %a0, ptr %l0
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
  %t7 = icmp slt i64 %t5, 28
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [28 x i8], ptr %l5, i64 0, i64 %t5
  store i8 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  %t9 = load [28 x i8], ptr %l5
  store [28 x i8] %t9, ptr %l2
  %t10 = insertvalue [1 x i32] undef, i32 28, 0
  store [1 x i32] %t10, ptr %l3
  br i1 %a1, label %bb1, label %bb2
bb1:
  %t14 = load i32, ptr %l0, !tbaa !23
  %t16 = insertvalue { i64, ptr } undef, i64 1, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %l3, 1
  %t21 = extractvalue { i64, ptr } %t17, 1
  %t22 = extractvalue { i64, ptr } %t17, 0
  %t23 = call i32 @getpeername(i32 %t14, ptr %l2, ptr %t21)
  store i32 %t23, ptr %l13
  br label %bb3
bb2:
  %t24 = load i32, ptr %l0, !tbaa !23
  %t26 = insertvalue { i64, ptr } undef, i64 1, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %l3, 1
  %t31 = extractvalue { i64, ptr } %t27, 1
  %t32 = extractvalue { i64, ptr } %t27, 0
  %t33 = call i32 @getsockname(i32 %t24, ptr %l2, ptr %t31)
  store i32 %t33, ptr %l18
  br label %bb4
bb3:
  %t34 = load i32, ptr %l13, !tbaa !23
  store i32 %t34, ptr %l8, !tbaa !23
  br label %bb5
bb4:
  %t35 = load i32, ptr %l18, !tbaa !23
  store i32 %t35, ptr %l8, !tbaa !23
  br label %bb5
bb5:
  %t36 = load i32, ptr %l8, !tbaa !23
  %t39 = icmp slt i32 %t36, 0
  br i1 %t39, label %bb6, label %bb7
bb6:
  %t41 = call i32 @__olang_err()
  store i32 %t41, ptr %l21
  br label %bb8
bb7:
  br label %bb12
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t43 = load i32, ptr %l21, !tbaa !23
  %t45 = call i32 @std_2fnet_2eraise(i32 %t43, { i64, ptr } %t42)
  store i32 %t45, ptr %l24
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb10, label %ok.47, !prof !99
ok.47:
  br label %bb9
bb9:
  br label %bb11
bb10:
  %t48 = load i32, ptr %l24, !tbaa !23
  %t49 = lshr i32 %t48, 16
  %t50 = and i32 %t48, 65535
  %t51 = icmp eq i32 %t49, 1
  %t52 = select i1 %t51, i32 1, i32 0
  %t53 = icmp eq i32 %t48, 0
  %t54 = shl i32 %t52, 16
  %t55 = or i32 %t54, %t50
  %t56 = select i1 %t53, i32 0, i32 %t55
  call void @__olang_scope_close(ptr %s0)
  %t58 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 %t56, 0
  store { i32, %"std/net:Addr" } %t58, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t60 = insertvalue { i64, ptr } undef, i64 28, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %l2, 1
  %t63 = call %"std/net:Addr" @std_2fnet_2eAddr_2efromSockaddr(ptr %s0, { i64, ptr } %t61)
  store %"std/net:Addr" %t63, ptr %l28
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t64 = load %"std/net:Addr", ptr %l28
  %t65 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, %"std/net:Addr" %t64, 1
  store { i32, %"std/net:Addr" } %t65, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:Addr" }, ptr %rv
  ret { i32, %"std/net:Addr" } %rr
}

define dso_local { i32, %"std/net:Conn" } @std_2fnet_2eConn_2eDial(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l19 = alloca i32
  %l21 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca i32
  %l31 = alloca %"std/net:Conn"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %rv = alloca { i32, %"std/net:Conn" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr @G_2estd_2fnet_2esockStream, !tbaa !23
  %t5 = call { i32, i32 } @std_2fnet_2eopen(ptr %v0, ptr %t1, i32 %t2)
  %t6 = extractvalue { i32, i32 } %t5, 1
  %t7 = extractvalue { i32, i32 } %t5, 0
  store i32 %t7, ptr %l8
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i32 %t6, ptr %l7
  br label %bb1
bb1:
  %t10 = load i32, ptr %l7, !tbaa !23
  store i32 %t10, ptr %l4, !tbaa !23
  br label %bb3
bb2:
  %t11 = load i32, ptr %l8, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t11, 0
  %t17 = shl i32 %t15, 16
  %t18 = or i32 %t17, %t13
  %t19 = select i1 %t16, i32 0, i32 %t18
  call void @__olang_scope_close(ptr %s0)
  %t21 = insertvalue { i32, %"std/net:Conn" } zeroinitializer, i32 %t19, 0
  store { i32, %"std/net:Conn" } %t21, ptr %rv
  br label %ret
bb3:
  %t22 = load i32, ptr %l4, !tbaa !23
  store i32 %t22, ptr %l1, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call { i64, ptr } @std_2fnet_2esockaddr(ptr %v0, ptr %s0, ptr %t23)
  store { i64, ptr } %t25, ptr %l11
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  store i64 %t27, ptr %l12, !tbaa !24
  %t28 = load i64, ptr %l12, !tbaa !24
  %t29 = mul i64 %t28, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t29)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  store { i64, ptr } %t32, ptr %l13, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = load i64, ptr %l12, !tbaa !24
  %t38 = mul i64 %t37, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t34, ptr %t36, i64 %t38, i1 false)
  %t39 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t39, ptr %l2, !tbaa !27
  %t40 = load i32, ptr %l1, !tbaa !23
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = trunc i64 %t44 to i32
  %t49 = extractvalue { i64, ptr } %t41, 1
  %t50 = extractvalue { i64, ptr } %t41, 0
  %t52 = call i32 @connect(i32 %t40, ptr %t49, i32 %t46)
  store i32 %t52, ptr %l19
  br label %bb5
bb5:
  %t53 = load i32, ptr %l19, !tbaa !23
  %t54 = icmp slt i32 %t53, 0
  br i1 %t54, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t56 = call i32 @__olang_err()
  store i32 %t56, ptr %l21
  br label %bb8
bb7:
  br label %bb14
bb8:
  %t57 = load i32, ptr %l21, !tbaa !23
  store i32 %t57, ptr %l3, !tbaa !23
  %t58 = load i32, ptr %l1, !tbaa !23
  %t60 = call i32 @close(i32 %t58)
  store i32 %t60, ptr %l23
  br label %bb9
bb9:
  %t61 = load i32, ptr %l3, !tbaa !23
  store i32 %t61, ptr %l24, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l25, !tbaa !29
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  call void @olang_2emir_2eHelperKind_2eRender_2estd_2fnet_3aAddr_26(ptr %s2, ptr %l25, i64 0)
  br label %bb10
bb10:
  %t64 = load ptr, ptr %s2
  %t65 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t66 = load i64, ptr %t65
  %t67 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t66)
  call void @olang_textcopy(ptr %t67, ptr %t64, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l27, !tbaa !27
  %t70 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t71 = load ptr, ptr %t70
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %sbgrew.73, label %sbdone.74
sbgrew.73:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.74
sbdone.74:
  %t75 = load i32, ptr %l24, !tbaa !23
  %t76 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t77 = call i32 @std_2fnet_2eraise(i32 %t75, { i64, ptr } %t76)
  store i32 %t77, ptr %l28
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb12, label %ok.79, !prof !99
ok.79:
  br label %bb11
bb11:
  br label %bb13
bb12:
  %t80 = load i32, ptr %l28, !tbaa !23
  %t81 = lshr i32 %t80, 16
  %t82 = and i32 %t80, 65535
  %t83 = icmp eq i32 %t81, 1
  %t84 = select i1 %t83, i32 1, i32 0
  %t85 = icmp eq i32 %t80, 0
  %t86 = shl i32 %t84, 16
  %t87 = or i32 %t86, %t82
  %t88 = select i1 %t85, i32 0, i32 %t87
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t90 = insertvalue { i32, %"std/net:Conn" } zeroinitializer, i32 %t88, 0
  store { i32, %"std/net:Conn" } %t90, ptr %rv
  br label %ret
bb13:
  call void @__olang_scope_close(ptr %s1)
  br label %bb14
bb14:
  %t91 = load i32, ptr %l1, !tbaa !23
  %t93 = call %"std/net:Conn" @std_2fnet_3aConn_2ector(ptr %s0, i32 %t91)
  store %"std/net:Conn" %t93, ptr %l31
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t94 = load %"std/net:Conn", ptr %l31
  %t95 = insertvalue { i32, %"std/net:Conn" } zeroinitializer, %"std/net:Conn" %t94, 1
  store { i32, %"std/net:Conn" } %t95, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:Conn" }, ptr %rv
  ret { i32, %"std/net:Conn" } %rr
}

define dso_local %"std/net:IP" @std_2fnet_2eIP_2eAny4() #0 {
entry:
  %l0 = alloca %"std/net:IP"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/net:IP"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/net:IP" @std_2fnet_3aIP_2ector(ptr %s0, i1 false)
  store %"std/net:IP" %t1, ptr %l0
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t2 = load %"std/net:IP", ptr %l0
  store %"std/net:IP" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/net:IP", ptr %rv
  ret %"std/net:IP" %rr
}

define dso_local %"std/net:IP" @std_2fnet_2eIP_2eAny6() #0 {
entry:
  %l0 = alloca %"std/net:IP"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/net:IP"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/net:IP" @std_2fnet_3aIP_2ector(ptr %s0, i1 true)
  store %"std/net:IP" %t1, ptr %l0
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t2 = load %"std/net:IP", ptr %l0
  store %"std/net:IP" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/net:IP", ptr %rv
  ret %"std/net:IP" %rr
}

define dso_local %"std/net:IP" @std_2fnet_2eIP_2eIPv4(i8 %a0, i8 %a1, i8 %a2, i8 %a3) #0 {
entry:
  %l4 = alloca %"std/net:IP"
  %l5 = alloca %"std/net:IP"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/net:IP"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/net:IP" @std_2fnet_3aIP_2ector(ptr %s0, i1 false)
  store %"std/net:IP" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/net:IP", ptr %l5
  store %"std/net:IP" %t2, ptr %l4
  %t5 = getelementptr %"std/net:IP", ptr %l4, i32 0, i32 1
  %t6 = getelementptr [16 x i8], ptr %t5, i64 0, i64 0
  store i8 %a0, ptr %t6, !tbaa !32
  %t9 = getelementptr %"std/net:IP", ptr %l4, i32 0, i32 1
  %t10 = getelementptr [16 x i8], ptr %t9, i64 0, i64 1
  store i8 %a1, ptr %t10, !tbaa !32
  %t13 = getelementptr %"std/net:IP", ptr %l4, i32 0, i32 1
  %t14 = getelementptr [16 x i8], ptr %t13, i64 0, i64 2
  store i8 %a2, ptr %t14, !tbaa !32
  %t17 = getelementptr %"std/net:IP", ptr %l4, i32 0, i32 1
  %t18 = getelementptr [16 x i8], ptr %t17, i64 0, i64 3
  store i8 %a3, ptr %t18, !tbaa !32
  %t19 = load %"std/net:IP", ptr %l4
  call void @__olang_scope_close(ptr %s0)
  store %"std/net:IP" %t19, ptr %rv
  br label %ret
ret:
  %rr = load %"std/net:IP", ptr %rv
  ret %"std/net:IP" %rr
}

define dso_local { i32, %"std/net:IP" } @std_2fnet_2eIP_2eIPv6(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/net:IP"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i64
  %l17 = alloca { i64, [2 x i64] }
  %l20 = alloca %"std/net:IP"
  %l24 = alloca i64
  %l27 = alloca i64
  %l46 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %rv = alloca { i32, %"std/net:IP" }
  %t20 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp ne i64 %t3, 16
  br i1 %t5, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l11, !tbaa !27
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  call void @olang_2emir_2eHelperKind_2eRender_2eArray_3cU8_3e_26(ptr %s2, ptr %l11, i64 0)
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t9 = load ptr, ptr %s2
  %t10 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t11 = load i64, ptr %t10
  %t12 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t11)
  call void @olang_textcopy(ptr %t12, ptr %t9, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l13, !tbaa !27
  %t15 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t16 = load ptr, ptr %t15
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %sbgrew.18, label %sbdone.19
sbgrew.18:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.19
sbdone.19:
  store { i64, [2 x i64] } zeroinitializer, ptr %t20
  %t21 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 0
  store i64 5, ptr %t21
  %t22 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t23 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t22, 0
  %t24 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 1
  store { { i64, ptr } } %t23, ptr %t24
  %t25 = load { i64, [2 x i64] }, ptr %t20
  store { i64, [2 x i64] } %t25, ptr %l14
  %t26 = call ptr @__olang_errpay_push()
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l15, !tbaa !24
  %t28 = load i64, ptr %l15
  %t29 = inttoptr i64 %t28 to ptr
  %t31 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t29, ptr %l14)
  store { i64, [2 x i64] } %t31, ptr %l17
  br label %bb4
bb4:
  %t32 = load { i64, [2 x i64] }, ptr %l17
  %t33 = load i64, ptr %l15
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call ptr @__olang_scope_alloc_a(ptr %t34, i64 24, i64 8)
  store { i64, [2 x i64] } %t32, ptr %t35
  call void @__olang_errpay_set(ptr %t35)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t38 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 65541, 0
  store { i32, %"std/net:IP" } %t38, ptr %rv
  br label %ret
bb5:
  %t39 = call %"std/net:IP" @std_2fnet_3aIP_2ector(ptr %s0, i1 true)
  store %"std/net:IP" %t39, ptr %l20
  br label %bb6
bb6:
  %t40 = load %"std/net:IP", ptr %l20
  store %"std/net:IP" %t40, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  store i64 16, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  br i1 %t45, label %bb7, label %bb8
bb7:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb12
bb9:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t52 = load i64, ptr %l2, !tbaa !24
  %t55 = sub i64 %t51, %t52
  %t56 = load i64, ptr %l4, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l4, !tbaa !24
  %t65 = sdiv i64 %t61, %t62
  store i64 %t65, ptr %l27, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb11
bb11:
  %t67 = load i64, ptr %l27, !tbaa !24
  store i64 %t67, ptr %l24, !tbaa !24
  br label %bb12
bb12:
  %t68 = load i64, ptr %l24, !tbaa !24
  store i64 %t68, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  %t69 = load i64, ptr %l6, !tbaa !24
  %t70 = load i64, ptr %l5, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t77 = load i64, ptr %l2, !tbaa !24
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l4, !tbaa !24
  %t82 = mul i64 %t78, %t79
  %t85 = add i64 %t77, %t82
  store i64 %t85, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l7, !tbaa !24
  %t88 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t88, ptr %l46, !tbaa !27
  %t89 = load i64, ptr %l7, !tbaa !24
  %t91 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr i8, ptr %t92, i64 %t89
  %t94 = load i8, ptr %t93, !tbaa !32
  %t96 = getelementptr %"std/net:IP", ptr %l1, i32 0, i32 1
  %t98 = getelementptr [16 x i8], ptr %t96, i64 0, i64 %t87
  store i8 %t94, ptr %t98, !tbaa !32
  br label %bb17
bb17:
  %t99 = load i64, ptr %l6, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l6, !tbaa !24
  br label %bb13
bb18:
  %t103 = load %"std/net:IP", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  %t105 = insertvalue { i32, %"std/net:IP" } zeroinitializer, %"std/net:IP" %t103, 1
  store { i32, %"std/net:IP" } %t105, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:IP" }, ptr %rv
  ret { i32, %"std/net:IP" } %rr
}

define dso_local %"std/net:IP" @std_2fnet_2eIP_2eLoopback4() #0 {
entry:
  %l0 = alloca %"std/net:IP"
  %rv = alloca %"std/net:IP"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/net:IP" @std_2fnet_2eIP_2eIPv4(i8 127, i8 0, i8 0, i8 1)
  store %"std/net:IP" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/net:IP", ptr %l0
  store %"std/net:IP" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/net:IP", ptr %rv
  ret %"std/net:IP" %rr
}

define dso_local %"std/net:IP" @std_2fnet_2eIP_2eLoopback6() #0 {
entry:
  %l0 = alloca %"std/net:IP"
  %l1 = alloca %"std/net:IP"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/net:IP"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/net:IP" @std_2fnet_3aIP_2ector(ptr %s0, i1 true)
  store %"std/net:IP" %t1, ptr %l1
  br label %bb1
bb1:
  %t2 = load %"std/net:IP", ptr %l1
  store %"std/net:IP" %t2, ptr %l0
  %t3 = getelementptr %"std/net:IP", ptr %l0, i32 0, i32 1
  %t4 = getelementptr [16 x i8], ptr %t3, i64 0, i64 15
  store i8 1, ptr %t4, !tbaa !32
  %t5 = load %"std/net:IP", ptr %l0
  call void @__olang_scope_close(ptr %s0)
  store %"std/net:IP" %t5, ptr %rv
  br label %ret
ret:
  %rr = load %"std/net:IP", ptr %rv
  ret %"std/net:IP" %rr
}

define dso_local { i32, %"std/net:IP" } @std_2fnet_2eIP_2eParse(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i1
  %l3 = alloca i1
  %l4 = alloca %"std/net:IP"
  %l5 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l11 = alloca %"std/net:IP"
  %l13 = alloca %"std/net:IP"
  %l14 = alloca i32
  %l16 = alloca i1
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, [2 x i64] }
  %l22 = alloca i64
  %l24 = alloca { i64, [2 x i64] }
  %l27 = alloca %"std/net:IP"
  %l29 = alloca %"std/net:IP"
  %l30 = alloca i32
  %l32 = alloca i1
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, [2 x i64] }
  %l38 = alloca i64
  %l40 = alloca { i64, [2 x i64] }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i32, %"std/net:IP" }
  %t46 = alloca { i64, [2 x i64] }, align 8
  %t94 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = call %"std/net:IP" @std_2fnet_2eIP_2eLoopback4()
  store %"std/net:IP" %t5, ptr %l4
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t6 = load %"std/net:IP", ptr %l4
  %t7 = insertvalue { i32, %"std/net:IP" } zeroinitializer, %"std/net:IP" %t6, 1
  store { i32, %"std/net:IP" } %t7, ptr %rv
  br label %ret
bb5:
  store i1 true, ptr %l1, !tbaa !21
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t8, i8 58)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l9
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb7, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l8
  br label %bb6
bb6:
  %t16 = load i64, ptr %l8, !tbaa !24
  store i64 %t16, ptr %l5, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb9
bb9:
  %t17 = load i1, ptr %l1, !tbaa !21
  br i1 %t17, label %bb10, label %bb11
bb10:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = call { i32, %"std/net:IP" } @std_2fnet_2eIP_2eparse6(ptr %v0, { i64, ptr } %t19)
  %t22 = extractvalue { i32, %"std/net:IP" } %t21, 1
  %t23 = extractvalue { i32, %"std/net:IP" } %t21, 0
  store i32 %t23, ptr %l14
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb13, label %ok.25, !prof !99
ok.25:
  store %"std/net:IP" %t22, ptr %l13
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t26 = load %"std/net:IP", ptr %l13
  store %"std/net:IP" %t26, ptr %l11
  br label %bb16
bb13:
  %t27 = load i32, ptr %l14, !tbaa !23
  %t28 = ashr i32 %t27, 16
  %t30 = icmp eq i32 %t28, 1
  store i1 %t30, ptr %l16, !tbaa !21
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t31 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t31, ptr %l18, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l19, !tbaa !24
  %t35 = load i64, ptr %l19, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l20, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l19, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t46
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t46, i32 0, i32 0
  store i64 5, ptr %t47
  %t48 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t49 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t48, 0
  %t50 = getelementptr { i64, [2 x i64] }, ptr %t46, i32 0, i32 1
  store { { i64, ptr } } %t49, ptr %t50
  %t51 = load { i64, [2 x i64] }, ptr %t46
  store { i64, [2 x i64] } %t51, ptr %l21
  %t52 = call ptr @__olang_errpay_push()
  %t53 = ptrtoint ptr %t52 to i64
  store i64 %t53, ptr %l22, !tbaa !24
  %t54 = load i64, ptr %l22
  %t55 = inttoptr i64 %t54 to ptr
  %t57 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t55, ptr %l21)
  store { i64, [2 x i64] } %t57, ptr %l24
  br label %bb15
bb15:
  %t58 = load { i64, [2 x i64] }, ptr %l24
  %t59 = load i64, ptr %l22
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = call ptr @__olang_scope_alloc_a(ptr %t60, i64 24, i64 8)
  store { i64, [2 x i64] } %t58, ptr %t61
  call void @__olang_errpay_set(ptr %t61)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t64 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 65541, 0
  store { i32, %"std/net:IP" } %t64, ptr %rv
  br label %ret
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t65 = load %"std/net:IP", ptr %l11
  %t66 = insertvalue { i32, %"std/net:IP" } zeroinitializer, %"std/net:IP" %t65, 1
  store { i32, %"std/net:IP" } %t66, ptr %rv
  br label %ret
bb17:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t69 = call { i32, %"std/net:IP" } @std_2fnet_2eIP_2eparse4(ptr %v0, { i64, ptr } %t67)
  %t70 = extractvalue { i32, %"std/net:IP" } %t69, 1
  %t71 = extractvalue { i32, %"std/net:IP" } %t69, 0
  store i32 %t71, ptr %l30
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb19, label %ok.73, !prof !99
ok.73:
  store %"std/net:IP" %t70, ptr %l29
  br label %bb18
bb18:
  %t74 = load %"std/net:IP", ptr %l29
  store %"std/net:IP" %t74, ptr %l27
  br label %bb22
bb19:
  %t75 = load i32, ptr %l30, !tbaa !23
  %t76 = ashr i32 %t75, 16
  %t78 = icmp eq i32 %t76, 1
  store i1 %t78, ptr %l32, !tbaa !21
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t79 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t79, ptr %l34, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  store i64 %t82, ptr %l35, !tbaa !24
  %t83 = load i64, ptr %l35, !tbaa !24
  %t84 = mul i64 %t83, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t84)
  %t86 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  store { i64, ptr } %t87, ptr %l36, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = load i64, ptr %l35, !tbaa !24
  %t93 = mul i64 %t92, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t89, ptr %t91, i64 %t93, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [2 x i64] }, ptr %t94, i32 0, i32 0
  store i64 5, ptr %t95
  %t96 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t97 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t96, 0
  %t98 = getelementptr { i64, [2 x i64] }, ptr %t94, i32 0, i32 1
  store { { i64, ptr } } %t97, ptr %t98
  %t99 = load { i64, [2 x i64] }, ptr %t94
  store { i64, [2 x i64] } %t99, ptr %l37
  %t100 = call ptr @__olang_errpay_push()
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l38, !tbaa !24
  %t102 = load i64, ptr %l38
  %t103 = inttoptr i64 %t102 to ptr
  %t105 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t103, ptr %l37)
  store { i64, [2 x i64] } %t105, ptr %l40
  br label %bb21
bb21:
  %t106 = load { i64, [2 x i64] }, ptr %l40
  %t107 = load i64, ptr %l38
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = call ptr @__olang_scope_alloc_a(ptr %t108, i64 24, i64 8)
  store { i64, [2 x i64] } %t106, ptr %t109
  call void @__olang_errpay_set(ptr %t109)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t112 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 65541, 0
  store { i32, %"std/net:IP" } %t112, ptr %rv
  br label %ret
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t113 = load %"std/net:IP", ptr %l27
  %t114 = insertvalue { i32, %"std/net:IP" } zeroinitializer, %"std/net:IP" %t113, 1
  store { i32, %"std/net:IP" } %t114, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:IP" }, ptr %rv
  ret { i32, %"std/net:IP" } %rr
}

define dso_local { i32, %"std/net:IP" } @std_2fnet_2eIP_2eparse4(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/net:IP"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, i64 }
  %l12 = alloca %"std/net:IP"
  %l16 = alloca i64
  %l19 = alloca i64
  %l43 = alloca i1
  %l44 = alloca { i64, ptr }
  %l51 = alloca { i64, i64 }
  %l54 = alloca { i64, i64 }
  %l55 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"std/net:IP" }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/net:IP" @std_2fnet_3aIP_2ector(ptr %s0, i1 false)
  store %"std/net:IP" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/net:IP", ptr %l12
  store %"std/net:IP" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 4, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t3 = load i64, ptr %l4, !tbaa !24
  %t4 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb7
bb4:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l19, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t29 = load i64, ptr %l19, !tbaa !24
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb7
bb7:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t31 = load i64, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb9, label %bb10
bb9:
  br label %bb25
bb10:
  br label %bb11
bb11:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t51 = icmp sgt i64 %t49, 0
  br i1 %t51, label %bb12, label %bb13
bb12:
  %t53 = load i64, ptr %l2, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t59 = icmp sge i64 %t53, %t56
  br i1 %t59, label %bb14, label %bb15
bb13:
  br label %bb20
bb14:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb16
bb15:
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t61, ptr %l44, !tbaa !27
  %t62 = load i64, ptr %l2, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i8, ptr %t65, i64 %t62
  %t67 = load i8, ptr %t66, !tbaa !32
  %t69 = icmp ne i8 %t67, 46
  store i1 %t69, ptr %l43, !tbaa !21
  br label %bb16
bb16:
  %t71 = load i1, ptr %l43, !tbaa !21
  br i1 %t71, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t73 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:IP" } %t73, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t74 = load i64, ptr %l2, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l2, !tbaa !24
  br label %bb20
bb20:
  %t78 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t79 = load i64, ptr %l2, !tbaa !24
  %t82 = call { i32, { i64, i64 } } @std_2fnet_2edecimalAt(ptr %v0, { i64, ptr } %t78, i64 %t79, i64 255)
  %t83 = extractvalue { i32, { i64, i64 } } %t82, 1
  %t84 = extractvalue { i32, { i64, i64 } } %t82, 0
  store i32 %t84, ptr %l55
  %t85 = icmp ne i32 %t84, 0
  br i1 %t85, label %bb22, label %ok.86, !prof !99
ok.86:
  store { i64, i64 } %t83, ptr %l54
  br label %bb21
bb21:
  %t87 = load { i64, i64 }, ptr %l54
  store { i64, i64 } %t87, ptr %l51
  br label %bb23
bb22:
  %t88 = load i32, ptr %l55, !tbaa !23
  %t89 = lshr i32 %t88, 16
  %t90 = and i32 %t88, 65535
  %t91 = icmp eq i32 %t89, 1
  %t92 = select i1 %t91, i32 1, i32 0
  %t93 = icmp eq i32 %t88, 0
  %t94 = shl i32 %t92, 16
  %t95 = or i32 %t94, %t90
  %t96 = select i1 %t93, i32 0, i32 %t95
  call void @__olang_scope_close(ptr %s0)
  %t98 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 %t96, 0
  store { i32, %"std/net:IP" } %t98, ptr %rv
  br label %ret
bb23:
  %t99 = load { i64, i64 }, ptr %l51
  store { i64, i64 } %t99, ptr %l9
  %t100 = getelementptr { i64, i64 }, ptr %l9, i32 0, i32 0
  %t101 = load i64, ptr %t100, !tbaa !24
  %t103 = getelementptr { i64, i64 }, ptr %l9, i32 0, i32 1
  %t104 = load i64, ptr %t103, !tbaa !24
  %t106 = load i64, ptr %l8, !tbaa !24
  %t109 = trunc i64 %t101 to i8
  %t111 = getelementptr %"std/net:IP", ptr %l1, i32 0, i32 1
  %t113 = getelementptr [16 x i8], ptr %t111, i64 0, i64 %t106
  store i8 %t109, ptr %t113, !tbaa !32
  store i64 %t104, ptr %l2, !tbaa !24
  br label %bb24
bb24:
  %t116 = load i64, ptr %l7, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l7, !tbaa !24
  br label %bb8
bb25:
  %t120 = load i64, ptr %l2, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t121, 0
  %t126 = icmp ne i64 %t120, %t123
  br i1 %t126, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t129 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:IP" } %t129, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t130 = load %"std/net:IP", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  %t132 = insertvalue { i32, %"std/net:IP" } zeroinitializer, %"std/net:IP" %t130, 1
  store { i32, %"std/net:IP" } %t132, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:IP" }, ptr %rv
  ret { i32, %"std/net:IP" } %rr
}

define dso_local { i32, %"std/net:IP" } @std_2fnet_2eIP_2eparse6(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca [8 x i64]
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/net:IP"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/net:IP"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i1
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i32
  %l44 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i32
  %l60 = alloca i1
  %l63 = alloca i1
  %l70 = alloca %"std/net:IP"
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l81 = alloca %"std/net:IP"
  %l82 = alloca i32
  %l108 = alloca i1
  %l109 = alloca { i64, ptr }
  %l112 = alloca i64
  %l114 = alloca i1
  %l121 = alloca i64
  %l122 = alloca { i64, ptr }
  %l125 = alloca i64
  %l141 = alloca { i64, ptr }
  %l152 = alloca i1
  %l153 = alloca { i64, ptr }
  %l170 = alloca i1
  %l173 = alloca i1
  %l176 = alloca i1
  %l180 = alloca %"std/net:IP"
  %l187 = alloca i64
  %l190 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"std/net:IP" }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = insertvalue [8 x i64] undef, i64 0, 0
  %t2 = insertvalue [8 x i64] %t1, i64 0, 1
  %t3 = insertvalue [8 x i64] %t2, i64 0, 2
  %t4 = insertvalue [8 x i64] %t3, i64 0, 3
  %t5 = insertvalue [8 x i64] %t4, i64 0, 4
  %t6 = insertvalue [8 x i64] %t5, i64 0, 5
  %t7 = insertvalue [8 x i64] %t6, i64 0, 6
  %t8 = insertvalue [8 x i64] %t7, i64 0, 7
  store [8 x i64] %t8, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  store i64 -1, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t12, ptr %l21
  br label %bb1
bb1:
  %t13 = load i1, ptr %l21, !tbaa !21
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i64 0, ptr %l3, !tbaa !24
  store i64 2, ptr %l4, !tbaa !24
  br label %bb4
bb3:
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t20 = icmp slt i64 %t14, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb6, label %bb7
bb6:
  br label %bb89
bb7:
  br label %bb8
bb8:
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = icmp eq i64 %t24, 8
  br i1 %t26, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t29 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:IP" } %t29, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t30, ptr %l31, !tbaa !27
  %t31 = load i64, ptr %l4, !tbaa !24
  store i64 %t31, ptr %l32, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t32, 0
  store i64 %t35, ptr %l35, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  store i64 %t37, ptr %l36, !tbaa !24
  %t38 = load i64, ptr %l32, !tbaa !24
  %t39 = icmp sge i64 %t38, 0
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load i64, ptr %l32, !tbaa !24
  %t42 = load i64, ptr %l35, !tbaa !24
  %t43 = icmp sle i64 %t41, %t42
  br i1 %t43, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_f002e9158933fedd_16edb23c552ec181)
  unreachable
bb14:
  %t45 = load i64, ptr %l35, !tbaa !24
  %t46 = load i64, ptr %l36, !tbaa !24
  %t47 = icmp sle i64 %t45, %t46
  br i1 %t47, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_f002e9158933fedd_16edb23c552ec181)
  unreachable
bb16:
  %t49 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = load i64, ptr %l32, !tbaa !24
  %t52 = load i64, ptr %l35, !tbaa !24
  %t53 = getelementptr i8, ptr %t50, i64 %t51
  %t54 = sub i64 %t52, %t51
  %t55 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t53, 1
  %t59 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t56, i8 46)
  %t60 = extractvalue { i32, i64 } %t59, 1
  %t61 = extractvalue { i32, i64 } %t59, 0
  store i32 %t61, ptr %l43
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb19, label %ok.63, !prof !99
ok.63:
  store i64 %t60, ptr %l42
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_f002e9158933fedd_16edb23c552ec181)
  unreachable
bb18:
  %t64 = load i64, ptr %l42, !tbaa !24
  store i64 %t64, ptr %l30, !tbaa !24
  br label %bb21
bb19:
  br label %bb20
bb20:
  store i64 -1, ptr %l30, !tbaa !24
  br label %bb21
bb21:
  %t65 = load i64, ptr %l30, !tbaa !24
  store i64 %t65, ptr %l5, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t66, ptr %l45, !tbaa !27
  %t67 = load i64, ptr %l4, !tbaa !24
  store i64 %t67, ptr %l46, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t68, 0
  store i64 %t71, ptr %l49, !tbaa !24
  %t72 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  store i64 %t73, ptr %l50, !tbaa !24
  %t74 = load i64, ptr %l46, !tbaa !24
  %t75 = icmp sge i64 %t74, 0
  br i1 %t75, label %bb22, label %bb23
bb22:
  %t77 = load i64, ptr %l46, !tbaa !24
  %t78 = load i64, ptr %l49, !tbaa !24
  %t79 = icmp sle i64 %t77, %t78
  br i1 %t79, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_ab8b57281d5db880_ee039328189ec414)
  unreachable
bb24:
  %t81 = load i64, ptr %l49, !tbaa !24
  %t82 = load i64, ptr %l50, !tbaa !24
  %t83 = icmp sle i64 %t81, %t82
  br i1 %t83, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_ab8b57281d5db880_ee039328189ec414)
  unreachable
bb26:
  %t85 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l46, !tbaa !24
  %t88 = load i64, ptr %l49, !tbaa !24
  %t89 = getelementptr i8, ptr %t86, i64 %t87
  %t90 = sub i64 %t88, %t87
  %t91 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t89, 1
  %t95 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t92, i8 58)
  %t96 = extractvalue { i32, i64 } %t95, 1
  %t97 = extractvalue { i32, i64 } %t95, 0
  store i32 %t97, ptr %l57
  %t98 = icmp ne i32 %t97, 0
  br i1 %t98, label %bb29, label %ok.99, !prof !99
ok.99:
  store i64 %t96, ptr %l56
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_ab8b57281d5db880_ee039328189ec414)
  unreachable
bb28:
  %t100 = load i64, ptr %l56, !tbaa !24
  store i64 %t100, ptr %l44, !tbaa !24
  br label %bb31
bb29:
  br label %bb30
bb30:
  store i64 -1, ptr %l44, !tbaa !24
  br label %bb31
bb31:
  %t101 = load i64, ptr %l44, !tbaa !24
  store i64 %t101, ptr %l6, !tbaa !24
  %t102 = load i64, ptr %l5, !tbaa !24
  %t104 = icmp sge i64 %t102, 0
  br i1 %t104, label %bb32, label %bb33
bb32:
  %t106 = load i64, ptr %l6, !tbaa !24
  %t108 = icmp slt i64 %t106, 0
  br i1 %t108, label %bb34, label %bb35
bb33:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb37
bb34:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb36
bb35:
  %t110 = load i64, ptr %l5, !tbaa !24
  %t111 = load i64, ptr %l6, !tbaa !24
  %t114 = icmp slt i64 %t110, %t111
  store i1 %t114, ptr %l63, !tbaa !21
  br label %bb36
bb36:
  %t116 = load i1, ptr %l63, !tbaa !21
  store i1 %t116, ptr %l60, !tbaa !21
  br label %bb37
bb37:
  %t117 = load i1, ptr %l60, !tbaa !21
  br i1 %t117, label %bb38, label %bb39
bb38:
  %t118 = load i64, ptr %l2, !tbaa !24
  %t120 = icmp sgt i64 %t118, 6
  br i1 %t120, label %bb40, label %bb41
bb39:
  br label %bb52
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t123 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:IP" } %t123, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t124 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t124, ptr %l71, !tbaa !27
  %t125 = load i64, ptr %l4, !tbaa !24
  store i64 %t125, ptr %l72, !tbaa !24
  %t126 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t126, 0
  store i64 %t129, ptr %l75, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 0
  store i64 %t131, ptr %l76, !tbaa !24
  %t132 = load i64, ptr %l72, !tbaa !24
  %t133 = icmp sge i64 %t132, 0
  br i1 %t133, label %bb43, label %bb44
bb43:
  %t135 = load i64, ptr %l72, !tbaa !24
  %t136 = load i64, ptr %l75, !tbaa !24
  %t137 = icmp sle i64 %t135, %t136
  br i1 %t137, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_5cec024583c1c07b_b48952299688f87f)
  unreachable
bb45:
  %t139 = load i64, ptr %l75, !tbaa !24
  %t140 = load i64, ptr %l76, !tbaa !24
  %t141 = icmp sle i64 %t139, %t140
  br i1 %t141, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_5cec024583c1c07b_b48952299688f87f)
  unreachable
bb47:
  %t143 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = load i64, ptr %l72, !tbaa !24
  %t146 = load i64, ptr %l75, !tbaa !24
  %t147 = getelementptr i8, ptr %t144, i64 %t145
  %t148 = sub i64 %t146, %t145
  %t149 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t147, 1
  %t152 = call { i32, %"std/net:IP" } @std_2fnet_2eIP_2eparse4(ptr %v0, { i64, ptr } %t150)
  %t153 = extractvalue { i32, %"std/net:IP" } %t152, 1
  %t154 = extractvalue { i32, %"std/net:IP" } %t152, 0
  store i32 %t154, ptr %l82
  %t155 = icmp ne i32 %t154, 0
  br i1 %t155, label %bb50, label %ok.156, !prof !99
ok.156:
  store %"std/net:IP" %t153, ptr %l81
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_5cec024583c1c07b_b48952299688f87f)
  unreachable
bb49:
  %t157 = load %"std/net:IP", ptr %l81
  store %"std/net:IP" %t157, ptr %l70
  br label %bb51
bb50:
  %t158 = load i32, ptr %l82, !tbaa !23
  %t159 = lshr i32 %t158, 16
  %t160 = and i32 %t158, 65535
  %t161 = icmp eq i32 %t159, 1
  %t162 = select i1 %t161, i32 1, i32 0
  %t163 = icmp eq i32 %t158, 0
  %t164 = shl i32 %t162, 16
  %t165 = or i32 %t164, %t160
  %t166 = select i1 %t163, i32 0, i32 %t165
  call void @__olang_scope_close(ptr %s0)
  %t168 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 %t166, 0
  store { i32, %"std/net:IP" } %t168, ptr %rv
  br label %ret
bb51:
  %t169 = load %"std/net:IP", ptr %l70
  store %"std/net:IP" %t169, ptr %l7
  %t170 = load i64, ptr %l2, !tbaa !24
  %t171 = getelementptr %"std/net:IP", ptr %l7, i32 0, i32 1
  %t172 = getelementptr [16 x i8], ptr %t171, i64 0, i64 0
  %t173 = load i8, ptr %t172, !tbaa !32
  %t175 = zext i8 %t173 to i64
  %t177 = shl i64 %t175, 8
  %t178 = getelementptr %"std/net:IP", ptr %l7, i32 0, i32 1
  %t179 = getelementptr [16 x i8], ptr %t178, i64 0, i64 1
  %t180 = load i8, ptr %t179, !tbaa !32
  %t182 = zext i8 %t180 to i64
  %t185 = or i64 %t177, %t182
  %t188 = getelementptr [8 x i64], ptr %l1, i64 0, i64 %t170
  store i64 %t185, ptr %t188, !tbaa !34
  %t189 = load i64, ptr %l2, !tbaa !24
  %t191 = add i64 %t189, 1
  %t192 = getelementptr %"std/net:IP", ptr %l7, i32 0, i32 1
  %t193 = getelementptr [16 x i8], ptr %t192, i64 0, i64 2
  %t194 = load i8, ptr %t193, !tbaa !32
  %t196 = zext i8 %t194 to i64
  %t198 = shl i64 %t196, 8
  %t199 = getelementptr %"std/net:IP", ptr %l7, i32 0, i32 1
  %t200 = getelementptr [16 x i8], ptr %t199, i64 0, i64 3
  %t201 = load i8, ptr %t200, !tbaa !32
  %t203 = zext i8 %t201 to i64
  %t206 = or i64 %t198, %t203
  %t209 = getelementptr [8 x i64], ptr %l1, i64 0, i64 %t191
  store i64 %t206, ptr %t209, !tbaa !34
  %t210 = load i64, ptr %l2, !tbaa !24
  %t212 = add i64 %t210, 2
  store i64 %t212, ptr %l2, !tbaa !24
  %t214 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t214, 0
  store i64 %t216, ptr %l4, !tbaa !24
  br label %bb89
bb52:
  store i64 0, ptr %l8, !tbaa !24
  %t218 = load i64, ptr %l4, !tbaa !24
  store i64 %t218, ptr %l9, !tbaa !24
  br label %bb53
bb53:
  %t220 = load i64, ptr %l4, !tbaa !24
  %t221 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t221, 0
  %t226 = icmp slt i64 %t220, %t223
  br i1 %t226, label %bb54, label %bb55
bb54:
  %t228 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t228, ptr %l109, !tbaa !27
  %t229 = load i64, ptr %l4, !tbaa !24
  %t231 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr i8, ptr %t232, i64 %t229
  %t234 = load i8, ptr %t233, !tbaa !32
  %t236 = call i64 @std_2fnet_2ehexDigit(i8 %t234)
  store i64 %t236, ptr %l112
  br label %bb56
bb55:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb57
bb56:
  %t237 = load i64, ptr %l112, !tbaa !24
  %t238 = icmp sge i64 %t237, 0
  store i1 %t238, ptr %l108, !tbaa !21
  br label %bb57
bb57:
  %t240 = load i1, ptr %l108, !tbaa !21
  br i1 %t240, label %bb58, label %bb59
bb58:
  %t241 = load i64, ptr %l4, !tbaa !24
  %t242 = load i64, ptr %l9, !tbaa !24
  %t245 = sub i64 %t241, %t242
  %t247 = icmp slt i64 %t245, 4
  store i1 %t247, ptr %l114, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb60
bb60:
  %t249 = load i1, ptr %l114, !tbaa !21
  %t250 = xor i1 %t249, true
  br i1 %t250, label %bb61, label %bb62
bb61:
  br label %bb66
bb62:
  br label %bb63
bb63:
  %t252 = load i64, ptr %l8, !tbaa !24
  %t254 = mul i64 %t252, 16
  store i64 %t254, ptr %l121, !tbaa !24
  %t255 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t255, ptr %l122, !tbaa !27
  %t256 = load i64, ptr %l4, !tbaa !24
  %t258 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr i8, ptr %t259, i64 %t256
  %t261 = load i8, ptr %t260, !tbaa !32
  %t263 = call i64 @std_2fnet_2ehexDigit(i8 %t261)
  store i64 %t263, ptr %l125
  br label %bb64
bb64:
  %t264 = load i64, ptr %l121, !tbaa !24
  %t265 = load i64, ptr %l125, !tbaa !24
  %t266 = add i64 %t264, %t265
  store i64 %t266, ptr %l8, !tbaa !24
  %t268 = load i64, ptr %l4, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l4, !tbaa !24
  br label %bb65
bb65:
  br label %bb53
bb66:
  %t272 = load i64, ptr %l4, !tbaa !24
  %t273 = load i64, ptr %l9, !tbaa !24
  %t276 = icmp eq i64 %t272, %t273
  br i1 %t276, label %bb67, label %bb68
bb67:
  call void @__olang_scope_close(ptr %s0)
  %t279 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:IP" } %t279, ptr %rv
  br label %ret
bb68:
  br label %bb69
bb69:
  %t280 = load i64, ptr %l2, !tbaa !24
  %t281 = load i64, ptr %l8, !tbaa !24
  %t284 = getelementptr [8 x i64], ptr %l1, i64 0, i64 %t280
  store i64 %t281, ptr %t284, !tbaa !34
  %t285 = load i64, ptr %l2, !tbaa !24
  %t287 = add i64 %t285, 1
  store i64 %t287, ptr %l2, !tbaa !24
  %t289 = load i64, ptr %l4, !tbaa !24
  %t290 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t290, 0
  %t295 = icmp eq i64 %t289, %t292
  br i1 %t295, label %bb70, label %bb71
bb70:
  br label %bb89
bb71:
  br label %bb72
bb72:
  %t297 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t297, ptr %l141, !tbaa !27
  %t298 = load i64, ptr %l4, !tbaa !24
  %t300 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !27
  %t302 = getelementptr i8, ptr %t301, i64 %t298
  %t303 = load i8, ptr %t302, !tbaa !32
  %t305 = icmp ne i8 %t303, 58
  br i1 %t305, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s0)
  %t308 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:IP" } %t308, ptr %rv
  br label %ret
bb74:
  br label %bb75
bb75:
  %t309 = load i64, ptr %l4, !tbaa !24
  %t311 = add i64 %t309, 1
  store i64 %t311, ptr %l4, !tbaa !24
  %t313 = load i64, ptr %l4, !tbaa !24
  %t314 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t314, 0
  %t319 = icmp slt i64 %t313, %t316
  br i1 %t319, label %bb76, label %bb77
bb76:
  %t321 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t321, ptr %l153, !tbaa !27
  %t322 = load i64, ptr %l4, !tbaa !24
  %t324 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !27
  %t326 = getelementptr i8, ptr %t325, i64 %t322
  %t327 = load i8, ptr %t326, !tbaa !32
  %t329 = icmp eq i8 %t327, 58
  store i1 %t329, ptr %l152, !tbaa !21
  br label %bb78
bb77:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb78
bb78:
  %t331 = load i1, ptr %l152, !tbaa !21
  br i1 %t331, label %bb79, label %bb80
bb79:
  %t332 = load i64, ptr %l3, !tbaa !24
  %t334 = icmp sge i64 %t332, 0
  br i1 %t334, label %bb81, label %bb82
bb80:
  %t336 = load i64, ptr %l4, !tbaa !24
  %t337 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t339 = extractvalue { i64, ptr } %t337, 0
  %t342 = icmp eq i64 %t336, %t339
  br i1 %t342, label %bb84, label %bb85
bb81:
  call void @__olang_scope_close(ptr %s0)
  %t345 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:IP" } %t345, ptr %rv
  br label %ret
bb82:
  br label %bb83
bb83:
  %t346 = load i64, ptr %l2, !tbaa !24
  store i64 %t346, ptr %l3, !tbaa !24
  %t348 = load i64, ptr %l4, !tbaa !24
  %t350 = add i64 %t348, 1
  store i64 %t350, ptr %l4, !tbaa !24
  br label %bb87
bb84:
  call void @__olang_scope_close(ptr %s0)
  %t353 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:IP" } %t353, ptr %rv
  br label %ret
bb85:
  br label %bb86
bb86:
  br label %bb87
bb87:
  br label %bb88
bb88:
  br label %bb5
bb89:
  %t354 = load i64, ptr %l3, !tbaa !24
  %t356 = icmp slt i64 %t354, 0
  br i1 %t356, label %bb90, label %bb91
bb90:
  %t358 = load i64, ptr %l2, !tbaa !24
  %t360 = icmp ne i64 %t358, 8
  store i1 %t360, ptr %l170, !tbaa !21
  br label %bb92
bb91:
  store i1 false, ptr %l170, !tbaa !21
  br label %bb92
bb92:
  %t362 = load i1, ptr %l170, !tbaa !21
  br i1 %t362, label %bb93, label %bb94
bb93:
  store i1 true, ptr %l173, !tbaa !21
  br label %bb98
bb94:
  %t363 = load i64, ptr %l3, !tbaa !24
  %t365 = icmp sge i64 %t363, 0
  br i1 %t365, label %bb95, label %bb96
bb95:
  %t367 = load i64, ptr %l2, !tbaa !24
  %t369 = icmp eq i64 %t367, 8
  store i1 %t369, ptr %l176, !tbaa !21
  br label %bb97
bb96:
  store i1 false, ptr %l176, !tbaa !21
  br label %bb97
bb97:
  %t371 = load i1, ptr %l176, !tbaa !21
  store i1 %t371, ptr %l173, !tbaa !21
  br label %bb98
bb98:
  %t372 = load i1, ptr %l173, !tbaa !21
  br i1 %t372, label %bb99, label %bb100
bb99:
  call void @__olang_scope_close(ptr %s0)
  %t374 = insertvalue { i32, %"std/net:IP" } zeroinitializer, i32 65536, 0
  store { i32, %"std/net:IP" } %t374, ptr %rv
  br label %ret
bb100:
  br label %bb101
bb101:
  %t375 = call %"std/net:IP" @std_2fnet_3aIP_2ector(ptr %s0, i1 true)
  store %"std/net:IP" %t375, ptr %l180
  br label %bb102
bb102:
  %t376 = load %"std/net:IP", ptr %l180
  store %"std/net:IP" %t376, ptr %l10
  %t377 = load i64, ptr %l2, !tbaa !24
  %t379 = sub i64 8, %t377
  store i64 %t379, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  %t381 = load i64, ptr %l2, !tbaa !24
  store i64 %t381, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t383 = load i64, ptr %l14, !tbaa !24
  %t384 = load i64, ptr %l13, !tbaa !24
  %t387 = icmp sgt i64 %t383, %t384
  br i1 %t387, label %bb103, label %bb104
bb103:
  %t389 = load i64, ptr %l15, !tbaa !24
  %t391 = icmp sgt i64 %t389, 0
  br i1 %t391, label %bb105, label %bb106
bb104:
  store i64 0, ptr %l187, !tbaa !24
  br label %bb108
bb105:
  %t393 = load i64, ptr %l14, !tbaa !24
  %t394 = load i64, ptr %l13, !tbaa !24
  %t397 = sub i64 %t393, %t394
  %t398 = load i64, ptr %l15, !tbaa !24
  %t401 = add i64 %t397, %t398
  %t403 = sub i64 %t401, 1
  %t404 = load i64, ptr %l15, !tbaa !24
  %t407 = sdiv i64 %t403, %t404
  store i64 %t407, ptr %l190, !tbaa !24
  br label %bb107
bb106:
  store i64 0, ptr %l190, !tbaa !24
  br label %bb107
bb107:
  %t409 = load i64, ptr %l190, !tbaa !24
  store i64 %t409, ptr %l187, !tbaa !24
  br label %bb108
bb108:
  %t410 = load i64, ptr %l187, !tbaa !24
  store i64 %t410, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb109
bb109:
  %t411 = load i64, ptr %l17, !tbaa !24
  %t412 = load i64, ptr %l16, !tbaa !24
  %t415 = icmp slt i64 %t411, %t412
  %t417 = xor i1 %t415, true
  br i1 %t417, label %bb110, label %bb111
bb110:
  br label %bb117
bb111:
  br label %bb112
bb112:
  %t419 = load i64, ptr %l13, !tbaa !24
  %t420 = load i64, ptr %l17, !tbaa !24
  %t421 = load i64, ptr %l15, !tbaa !24
  %t424 = mul i64 %t420, %t421
  %t427 = add i64 %t419, %t424
  store i64 %t427, ptr %l18, !tbaa !24
  %t429 = load i64, ptr %l18, !tbaa !24
  %t430 = load i64, ptr %l3, !tbaa !24
  %t433 = icmp eq i64 %t429, %t430
  br i1 %t433, label %bb113, label %bb114
bb113:
  %t435 = load i64, ptr %l12, !tbaa !24
  %t436 = load i64, ptr %l11, !tbaa !24
  %t439 = add i64 %t435, %t436
  store i64 %t439, ptr %l12, !tbaa !24
  br label %bb115
bb114:
  br label %bb115
bb115:
  %t441 = load i64, ptr %l12, !tbaa !24
  %t443 = mul i64 2, %t441
  %t444 = load i64, ptr %l18, !tbaa !24
  %t446 = getelementptr [8 x i64], ptr %l1, i64 0, i64 %t444
  %t447 = load i64, ptr %t446, !tbaa !34
  %t449 = ashr i64 %t447, 8
  %t451 = trunc i64 %t449 to i8
  %t453 = getelementptr %"std/net:IP", ptr %l10, i32 0, i32 1
  %t455 = getelementptr [16 x i8], ptr %t453, i64 0, i64 %t443
  store i8 %t451, ptr %t455, !tbaa !32
  %t456 = load i64, ptr %l12, !tbaa !24
  %t458 = mul i64 2, %t456
  %t460 = add i64 %t458, 1
  %t461 = load i64, ptr %l18, !tbaa !24
  %t463 = getelementptr [8 x i64], ptr %l1, i64 0, i64 %t461
  %t464 = load i64, ptr %t463, !tbaa !34
  %t466 = and i64 %t464, 255
  %t468 = trunc i64 %t466 to i8
  %t470 = getelementptr %"std/net:IP", ptr %l10, i32 0, i32 1
  %t472 = getelementptr [16 x i8], ptr %t470, i64 0, i64 %t460
  store i8 %t468, ptr %t472, !tbaa !32
  %t473 = load i64, ptr %l12, !tbaa !24
  %t475 = add i64 %t473, 1
  store i64 %t475, ptr %l12, !tbaa !24
  br label %bb116
bb116:
  %t477 = load i64, ptr %l17, !tbaa !24
  %t479 = add i64 %t477, 1
  store i64 %t479, ptr %l17, !tbaa !24
  br label %bb109
bb117:
  %t481 = load %"std/net:IP", ptr %l10
  call void @__olang_scope_close(ptr %s0)
  %t483 = insertvalue { i32, %"std/net:IP" } zeroinitializer, %"std/net:IP" %t481, 1
  store { i32, %"std/net:IP" } %t483, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:IP" }, ptr %rv
  ret { i32, %"std/net:IP" } %rr
}

define dso_local { i32, %"std/net:Listener" } @std_2fnet_2eListener_2eListen(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l28 = alloca i32
  %l30 = alloca i1
  %l33 = alloca i32
  %l35 = alloca i32
  %l37 = alloca i32
  %l38 = alloca i32
  %l39 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l42 = alloca i32
  %l45 = alloca %"std/net:Listener"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.builder
  %s3room = alloca [64 x i8], align 8
  %rv = alloca { i32, %"std/net:Listener" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr @G_2estd_2fnet_2esockStream, !tbaa !23
  %t5 = call { i32, i32 } @std_2fnet_2eopen(ptr %v0, ptr %t1, i32 %t2)
  %t6 = extractvalue { i32, i32 } %t5, 1
  %t7 = extractvalue { i32, i32 } %t5, 0
  store i32 %t7, ptr %l9
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i32 %t6, ptr %l8
  br label %bb1
bb1:
  %t10 = load i32, ptr %l8, !tbaa !23
  store i32 %t10, ptr %l5, !tbaa !23
  br label %bb3
bb2:
  %t11 = load i32, ptr %l9, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t11, 0
  %t17 = shl i32 %t15, 16
  %t18 = or i32 %t17, %t13
  %t19 = select i1 %t16, i32 0, i32 %t18
  call void @__olang_scope_close(ptr %s0)
  %t21 = insertvalue { i32, %"std/net:Listener" } zeroinitializer, i32 %t19, 0
  store { i32, %"std/net:Listener" } %t21, ptr %rv
  br label %ret
bb3:
  %t22 = load i32, ptr %l5, !tbaa !23
  store i32 %t22, ptr %l2, !tbaa !23
  %t23 = load i32, ptr %l2, !tbaa !23
  %t24 = load i32, ptr @G_2estd_2fnet_2esolSocket, !tbaa !23
  %t25 = load i32, ptr @G_2estd_2fnet_2esoReuseaddr, !tbaa !23
  call void @std_2fnet_2esetInt(i32 %t23, i32 %t24, i32 %t25, i32 1)
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"std/net:Addr", ptr %t29, i32 0, i32 0
  %t32 = getelementptr %"std/net:IP", ptr %t31, i32 0, i32 0
  %t33 = load i1, ptr %t32, !tbaa !21
  br i1 %t33, label %bb5, label %bb6
bb5:
  %t35 = load i32, ptr %l2, !tbaa !23
  %t36 = load i32, ptr @G_2estd_2fnet_2eipprotoIpv6, !tbaa !23
  %t37 = load i32, ptr @G_2estd_2fnet_2eipv6V6only, !tbaa !23
  call void @std_2fnet_2esetInt(i32 %t35, i32 %t36, i32 %t37, i32 0)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call { i64, ptr } @std_2fnet_2esockaddr(ptr %v0, ptr %s0, ptr %t41)
  store { i64, ptr } %t43, ptr %l20
  br label %bb9
bb9:
  %t44 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 0
  store i64 %t45, ptr %l21, !tbaa !24
  %t46 = load i64, ptr %l21, !tbaa !24
  %t47 = mul i64 %t46, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l22, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = load i64, ptr %l21, !tbaa !24
  %t56 = mul i64 %t55, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t52, ptr %t54, i64 %t56, i1 false)
  %t57 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t57, ptr %l3, !tbaa !27
  %t58 = load i32, ptr %l2, !tbaa !23
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t64 = trunc i64 %t62 to i32
  %t67 = extractvalue { i64, ptr } %t59, 1
  %t68 = extractvalue { i64, ptr } %t59, 0
  %t70 = call i32 @bind(i32 %t58, ptr %t67, i32 %t64)
  store i32 %t70, ptr %l28
  br label %bb10
bb10:
  %t71 = load i32, ptr %l28, !tbaa !23
  %t72 = icmp slt i32 %t71, 0
  br i1 %t72, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb14
bb12:
  %t74 = load i32, ptr %l2, !tbaa !23
  %t78 = call i32 @listen(i32 %t74, i32 %a1)
  store i32 %t78, ptr %l33
  br label %bb13
bb13:
  %t79 = load i32, ptr %l33, !tbaa !23
  %t80 = icmp slt i32 %t79, 0
  store i1 %t80, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t82 = load i1, ptr %l30, !tbaa !21
  br i1 %t82, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t83 = call i32 @__olang_err()
  store i32 %t83, ptr %l35
  br label %bb17
bb16:
  br label %bb23
bb17:
  %t84 = load i32, ptr %l35, !tbaa !23
  store i32 %t84, ptr %l4, !tbaa !23
  %t85 = load i32, ptr %l2, !tbaa !23
  %t87 = call i32 @close(i32 %t85)
  store i32 %t87, ptr %l37
  br label %bb18
bb18:
  %t88 = load i32, ptr %l4, !tbaa !23
  store i32 %t88, ptr %l38, !tbaa !23
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l39, !tbaa !29
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s3
  store ptr %s3room, ptr %s3
  call void @olang_2emir_2eHelperKind_2eRender_2estd_2fnet_3aAddr_26(ptr %s3, ptr %l39, i64 0)
  br label %bb19
bb19:
  %t91 = load ptr, ptr %s3
  %t92 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t93 = load i64, ptr %t92
  %t94 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t93)
  call void @olang_textcopy(ptr %t94, ptr %t91, i64 %t93)
  %t95 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  store { i64, ptr } %t96, ptr %l41, !tbaa !27
  %t97 = getelementptr %olang.builder, ptr %s3, i32 0, i32 3
  %t98 = load ptr, ptr %t97
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %sbgrew.100, label %sbdone.101
sbgrew.100:
  call void @__olang_sb_done(ptr %s3)
  br label %sbdone.101
sbdone.101:
  %t102 = load i32, ptr %l38, !tbaa !23
  %t103 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t104 = call i32 @std_2fnet_2eraise(i32 %t102, { i64, ptr } %t103)
  store i32 %t104, ptr %l42
  %t105 = icmp ne i32 %t104, 0
  br i1 %t105, label %bb21, label %ok.106, !prof !99
ok.106:
  br label %bb20
bb20:
  br label %bb22
bb21:
  %t107 = load i32, ptr %l42, !tbaa !23
  %t108 = lshr i32 %t107, 16
  %t109 = and i32 %t107, 65535
  %t110 = icmp eq i32 %t108, 1
  %t111 = select i1 %t110, i32 1, i32 0
  %t112 = icmp eq i32 %t107, 0
  %t113 = shl i32 %t111, 16
  %t114 = or i32 %t113, %t109
  %t115 = select i1 %t112, i32 0, i32 %t114
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t117 = insertvalue { i32, %"std/net:Listener" } zeroinitializer, i32 %t115, 0
  store { i32, %"std/net:Listener" } %t117, ptr %rv
  br label %ret
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb23:
  %t118 = load i32, ptr %l2, !tbaa !23
  %t120 = call %"std/net:Listener" @std_2fnet_3aListener_2ector(ptr %s0, i32 %t118)
  store %"std/net:Listener" %t120, ptr %l45
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t121 = load %"std/net:Listener", ptr %l45
  %t122 = insertvalue { i32, %"std/net:Listener" } zeroinitializer, %"std/net:Listener" %t121, 1
  store { i32, %"std/net:Listener" } %t122, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:Listener" }, ptr %rv
  ret { i32, %"std/net:Listener" } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fnet_2eLookup(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i1
  %l2 = alloca %"std/net:IP"
  %l3 = alloca %"<netdb.h>:addrinfo"
  %l4 = alloca [1 x ptr]
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca ptr
  %l9 = alloca %"<netdb.h>:addrinfo"
  %l10 = alloca [28 x i8]
  %l11 = alloca ptr
  %l12 = alloca %"std/net:IP"
  %l15 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, [2 x i64] }
  %l21 = alloca i64
  %l23 = alloca { i64, [2 x i64] }
  %l27 = alloca i1
  %l29 = alloca %"std/net:IP"
  %l31 = alloca %"std/net:IP"
  %l32 = alloca i32
  %l35 = alloca %"std/net:IP"
  %l38 = alloca [1 x %"std/net:IP"]
  %l39 = alloca { i64, ptr }
  %l40 = alloca %"<netdb.h>:addrinfo"
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l49 = alloca i32
  %l54 = alloca i32
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca %"<netdb.h>:addrinfo"
  %l66 = alloca ptr
  %l67 = alloca [28 x i8]
  %l72 = alloca i1
  %l76 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca ptr
  %l83 = alloca i32
  %l85 = alloca ptr
  %l88 = alloca %"std/net:Addr"
  %l93 = alloca i1
  %l103 = alloca i64
  %l106 = alloca { i64, ptr }
  %l107 = alloca i64
  %l108 = alloca { i64, ptr }
  %l109 = alloca { i64, [2 x i64] }
  %l110 = alloca i64
  %l112 = alloca { i64, [2 x i64] }
  %l116 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %l118 = alloca i64
  %l119 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t20 = alloca { i64, [2 x i64] }, align 8
  %t240 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t3, ptr %l15
  br label %bb1
bb1:
  %t4 = load i1, ptr %l15, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t5, ptr %l17, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l18, !tbaa !24
  %t9 = load i64, ptr %l18, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l19, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l18, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t20
  %t21 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 0
  store i64 6, ptr %t21
  %t22 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t23 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t22, 0
  %t24 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 1
  store { { i64, ptr } } %t23, ptr %t24
  %t25 = load { i64, [2 x i64] }, ptr %t20
  store { i64, [2 x i64] } %t25, ptr %l20
  %t26 = call ptr @__olang_errpay_push()
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l21, !tbaa !24
  %t28 = load i64, ptr %l21
  %t29 = inttoptr i64 %t28 to ptr
  %t31 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t29, ptr %l20)
  store { i64, [2 x i64] } %t31, ptr %l23
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t32 = load { i64, [2 x i64] }, ptr %l23
  %t33 = load i64, ptr %l21
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call ptr @__olang_scope_alloc_a(ptr %t34, i64 24, i64 8)
  store { i64, [2 x i64] } %t32, ptr %t35
  call void @__olang_errpay_set(ptr %t35)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t38 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65542, 0
  store { i32, { i64, ptr } } %t38, ptr %rv
  br label %ret
bb5:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t39, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t41, ptr %l27
  br label %bb6
bb6:
  %t42 = load i1, ptr %l27, !tbaa !21
  %t43 = xor i1 %t42, true
  br i1 %t43, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  store i1 true, ptr %l1, !tbaa !21
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = call { i32, %"std/net:IP" } @std_2fnet_2eIP_2eParse(ptr %v0, { i64, ptr } %t45)
  %t48 = extractvalue { i32, %"std/net:IP" } %t47, 1
  %t49 = extractvalue { i32, %"std/net:IP" } %t47, 0
  store i32 %t49, ptr %l32
  %t50 = icmp ne i32 %t49, 0
  br i1 %t50, label %bb10, label %ok.51, !prof !99
ok.51:
  store %"std/net:IP" %t48, ptr %l31
  br label %bb9
bb8:
  br label %bb19
bb9:
  %t52 = load %"std/net:IP", ptr %l31
  store %"std/net:IP" %t52, ptr %l29
  br label %bb15
bb10:
  %t53 = load i32, ptr %l32, !tbaa !23
  %t54 = ashr i32 %t53, 16
  %t56 = icmp eq i32 %t54, 1
  br i1 %t56, label %bb11, label %bb12
bb11:
  call void @__olang_errpay_pop()
  br label %bb12
bb12:
  br label %bb13
bb13:
  store i1 false, ptr %l1, !tbaa !21
  %t58 = call %"std/net:IP" @std_2fnet_3aIP_2ector(ptr %s2, i1 false)
  store %"std/net:IP" %t58, ptr %l35
  br label %bb14
bb14:
  %t59 = load %"std/net:IP", ptr %l35
  store %"std/net:IP" %t59, ptr %l29
  br label %bb15
bb15:
  %t60 = load %"std/net:IP", ptr %l29
  store %"std/net:IP" %t60, ptr %l2
  %t61 = load i1, ptr %l1, !tbaa !21
  br i1 %t61, label %bb16, label %bb17
bb16:
  %t63 = load %"std/net:IP", ptr %l2
  %t65 = insertvalue [1 x %"std/net:IP"] undef, %"std/net:IP" %t63, 0
  store [1 x %"std/net:IP"] %t65, ptr %l38
  %t66 = mul i64 1, 17
  %t67 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 1, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l39, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = mul i64 1, 17
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %l38, i64 %t72, i1 false)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t73 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t74 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t73, 1
  store { i32, { i64, ptr } } %t74, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t75 = call %"<netdb.h>:addrinfo" @_3cnetdb_2eh_3e_3aaddrinfo_2ector(ptr %s0)
  store %"<netdb.h>:addrinfo" %t75, ptr %l40
  br label %bb20
bb20:
  %t76 = load %"<netdb.h>:addrinfo", ptr %l40
  store %"<netdb.h>:addrinfo" %t76, ptr %l3
  %t77 = load i32, ptr @G_2estd_2fnet_2esockStream, !tbaa !23
  %t79 = getelementptr %"<netdb.h>:addrinfo", ptr %l3, i32 0, i32 2
  store i32 %t77, ptr %t79, !tbaa !23
  %t80 = insertvalue [1 x ptr] undef, ptr null, 0
  store [1 x ptr] %t80, ptr %l4
  %t82 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t84 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToC(ptr %v0, ptr %s0, { i64, ptr } %t82)
  store { i64, ptr } %t84, ptr %l44
  br label %bb21
bb21:
  %t85 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToC(ptr %s0, ptr %s0, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store { i64, ptr } %t85, ptr %l45
  br label %bb22
bb22:
  %t87 = insertvalue { i64, ptr } undef, i64 1, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %l4, 1
  %t89 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t97 = extractvalue { i64, ptr } %t88, 1
  %t98 = extractvalue { i64, ptr } %t88, 0
  %t99 = call i32 @getaddrinfo(ptr %t90, ptr %t93, ptr %l3, ptr %t97)
  store i32 %t99, ptr %l49
  br label %bb23
bb23:
  %t100 = load i32, ptr %l49, !tbaa !23
  store i32 %t100, ptr %l5, !tbaa !23
  %t101 = load i32, ptr %l5, !tbaa !23
  %t103 = icmp ne i32 %t101, 0
  br i1 %t103, label %bb24, label %bb25
bb24:
  %t105 = load i32, ptr %l5, !tbaa !23
  %t106 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t109 = call i32 @std_2fnet_2elookupFailed(ptr %v0, i32 %t105, { i64, ptr } %t106)
  store i32 %t109, ptr %l54
  %t110 = icmp ne i32 %t109, 0
  br i1 %t110, label %bb27, label %ok.111, !prof !99
ok.111:
  br label %bb26
bb25:
  br label %bb29
bb26:
  br label %bb28
bb27:
  %t112 = load i32, ptr %l54, !tbaa !23
  %t113 = lshr i32 %t112, 16
  %t114 = and i32 %t112, 65535
  %t115 = icmp eq i32 %t113, 1
  %t116 = select i1 %t115, i32 1, i32 0
  %t117 = icmp eq i32 %t112, 0
  %t118 = shl i32 %t116, 16
  %t119 = or i32 %t118, %t114
  %t120 = select i1 %t117, i32 0, i32 %t119
  call void @__olang_scope_close(ptr %s0)
  %t122 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t120, 0
  store { i32, { i64, ptr } } %t122, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t123 = getelementptr [1 x ptr], ptr %l4, i64 0, i64 0
  %t124 = load ptr, ptr %t123, !tbaa !39
  store ptr %t124, ptr %l6, !tbaa !29
  %t126 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fnet_3aIP_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l57
  br label %bb30
bb30:
  %t127 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t127, ptr %l7
  %t128 = load ptr, ptr %l6, !tbaa !29
  store ptr %t128, ptr %l8, !tbaa !29
  br label %bb31
bb31:
  store %olang.scope zeroinitializer, ptr %s6
  %t130 = load ptr, ptr %l8, !tbaa !29
  %t132 = icmp eq ptr %t130, null
  %t134 = xor i1 %t132, true
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s6)
  br label %bb55
bb33:
  br label %bb34
bb34:
  %t138 = call %"<netdb.h>:addrinfo" @_3cnetdb_2eh_3e_3aaddrinfo_2ector(ptr %s6)
  store %"<netdb.h>:addrinfo" %t138, ptr %l63
  br label %bb35
bb35:
  %t139 = load %"<netdb.h>:addrinfo", ptr %l63
  store %"<netdb.h>:addrinfo" %t139, ptr %l9
  %t140 = load ptr, ptr %l8, !tbaa !29
  %t143 = call ptr @memcpy(ptr %l9, ptr %t140, i64 48)
  store ptr %t143, ptr %l66
  br label %bb36
bb36:
  br label %fill.147
fill.147:
  br label %fill.144
fill.144:
  %t148 = phi i64 [ 0, %fill.147 ], [ %t149, %fill.145 ]
  %t150 = icmp slt i64 %t148, 28
  br i1 %t150, label %fill.145, label %fill.146
fill.145:
  %t151 = getelementptr [28 x i8], ptr %l67, i64 0, i64 %t148
  store i8 0, ptr %t151
  %t149 = add i64 %t148, 1
  br label %fill.144
fill.146:
  %t152 = load [28 x i8], ptr %l67
  store [28 x i8] %t152, ptr %l10
  %t153 = getelementptr %"<netdb.h>:addrinfo", ptr %l9, i32 0, i32 5
  %t154 = load ptr, ptr %t153, !tbaa !29
  store ptr %t154, ptr %l11, !tbaa !29
  %t156 = load ptr, ptr %l11, !tbaa !29
  %t158 = icmp eq ptr %t156, null
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb37, label %bb38
bb37:
  %t162 = getelementptr %"<netdb.h>:addrinfo", ptr %l9, i32 0, i32 1
  %t163 = load i32, ptr %t162, !tbaa !23
  %t164 = load i32, ptr @G_2estd_2fnet_2eafInet, !tbaa !23
  %t167 = icmp eq i32 %t163, %t164
  br i1 %t167, label %bb39, label %bb40
bb38:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb42
bb39:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb41
bb40:
  %t169 = getelementptr %"<netdb.h>:addrinfo", ptr %l9, i32 0, i32 1
  %t170 = load i32, ptr %t169, !tbaa !23
  %t171 = load i32, ptr @G_2estd_2fnet_2eafInet6, !tbaa !23
  %t174 = icmp eq i32 %t170, %t171
  store i1 %t174, ptr %l76, !tbaa !21
  br label %bb41
bb41:
  %t176 = load i1, ptr %l76, !tbaa !21
  store i1 %t176, ptr %l72, !tbaa !21
  br label %bb42
bb42:
  %t177 = load i1, ptr %l72, !tbaa !21
  br i1 %t177, label %bb43, label %bb44
bb43:
  store ptr %l10, ptr %l80
  %t178 = load ptr, ptr %l11, !tbaa !29
  store ptr %t178, ptr %l81, !tbaa !29
  %t179 = getelementptr %"<netdb.h>:addrinfo", ptr %l9, i32 0, i32 4
  %t180 = load i32, ptr %t179, !tbaa !64
  %t182 = call i32 @std_2fprelude_2fnumber_2eU32_2eMin_3cU32_3e(i32 %t180, i32 28)
  store i32 %t182, ptr %l83
  br label %bb45
bb44:
  br label %bb53
bb45:
  %t183 = load i32, ptr %l83, !tbaa !64
  %t184 = zext i32 %t183 to i64
  %t185 = load ptr, ptr %l80
  %t186 = load ptr, ptr %l81, !tbaa !29
  %t188 = call ptr @memmove(ptr %t185, ptr %t186, i64 %t184)
  store ptr %t188, ptr %l85
  br label %bb46
bb46:
  %t190 = insertvalue { i64, ptr } undef, i64 28, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %l10, 1
  %t193 = call %"std/net:Addr" @std_2fnet_2eAddr_2efromSockaddr(ptr %s6, { i64, ptr } %t191)
  store %"std/net:Addr" %t193, ptr %l88
  br label %bb47
bb47:
  %t194 = getelementptr %"std/net:Addr", ptr %l88, i32 0, i32 0
  %t195 = load %"std/net:IP", ptr %t194
  store %"std/net:IP" %t195, ptr %l12
  %t197 = load %"std/net:IP", ptr %l12
  %t202 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aIP_3e_2eHas_3cstd_2fnet_3aIP_3e(ptr %s0, ptr %l7, %"std/net:IP" %t197)
  store i1 %t202, ptr %l93
  br label %bb48
bb48:
  %t203 = load i1, ptr %l93, !tbaa !21
  %t204 = xor i1 %t203, true
  br i1 %t204, label %bb49, label %bb50
bb49:
  %t206 = load %"std/net:IP", ptr %l12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aIP_3e_2ePush_3cstd_2fnet_3aIP_3e(ptr %s0, ptr %l7, %"std/net:IP" %t206)
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t209 = getelementptr %"<netdb.h>:addrinfo", ptr %l9, i32 0, i32 7
  %t210 = load ptr, ptr %t209, !tbaa !29
  store ptr %t210, ptr %l8, !tbaa !29
  call void @__olang_scope_close(ptr %s6)
  br label %bb54
bb54:
  br label %bb31
bb55:
  %t212 = load ptr, ptr %l6, !tbaa !29
  %t214 = icmp eq ptr %t212, null
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb56, label %bb57
bb56:
  %t218 = load ptr, ptr %l6, !tbaa !29
  call void @freeaddrinfo(ptr %t218)
  br label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb59
bb59:
  %t221 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aIP_3e_2eLen_3cstd_2fnet_3aIP_3e(ptr %s0, ptr %l7)
  store i64 %t221, ptr %l103
  br label %bb60
bb60:
  %t222 = load i64, ptr %l103, !tbaa !24
  %t223 = icmp eq i64 %t222, 0
  br i1 %t223, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s10
  %t225 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t225, ptr %l106, !tbaa !27
  %t227 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t227, 0
  store i64 %t228, ptr %l107, !tbaa !24
  %t229 = load i64, ptr %l107, !tbaa !24
  %t230 = mul i64 %t229, 1
  %t231 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t230)
  %t232 = insertvalue { i64, ptr } undef, i64 %t229, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr %t231, 1
  store { i64, ptr } %t233, ptr %l108, !tbaa !27
  %t234 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !27
  %t238 = load i64, ptr %l107, !tbaa !24
  %t239 = mul i64 %t238, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t235, ptr %t237, i64 %t239, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t240
  %t241 = getelementptr { i64, [2 x i64] }, ptr %t240, i32 0, i32 0
  store i64 6, ptr %t241
  %t242 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t243 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t242, 0
  %t244 = getelementptr { i64, [2 x i64] }, ptr %t240, i32 0, i32 1
  store { { i64, ptr } } %t243, ptr %t244
  %t245 = load { i64, [2 x i64] }, ptr %t240
  store { i64, [2 x i64] } %t245, ptr %l109
  %t246 = call ptr @__olang_errpay_push()
  %t247 = ptrtoint ptr %t246 to i64
  store i64 %t247, ptr %l110, !tbaa !24
  %t248 = load i64, ptr %l110
  %t249 = inttoptr i64 %t248 to ptr
  %t251 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t249, ptr %l109)
  store { i64, [2 x i64] } %t251, ptr %l112
  br label %bb63
bb62:
  br label %bb64
bb63:
  %t252 = load { i64, [2 x i64] }, ptr %l112
  %t253 = load i64, ptr %l110
  %t254 = inttoptr i64 %t253 to ptr
  %t255 = call ptr @__olang_scope_alloc_a(ptr %t254, i64 24, i64 8)
  store { i64, [2 x i64] } %t252, ptr %t255
  call void @__olang_errpay_set(ptr %t255)
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t258 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65542, 0
  store { i32, { i64, ptr } } %t258, ptr %rv
  br label %ret
bb64:
  %t260 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aIP_3e_2eToArray_3cstd_2fnet_3aIP_3e(ptr %s0, ptr %s0, ptr %l7)
  store { i64, ptr } %t260, ptr %l116
  br label %bb65
bb65:
  %t261 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t261, ptr %l117, !tbaa !27
  %t262 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t263 = extractvalue { i64, ptr } %t262, 0
  store i64 %t263, ptr %l118, !tbaa !24
  %t264 = load i64, ptr %l118, !tbaa !24
  %t265 = mul i64 %t264, 17
  %t266 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t265)
  %t267 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t266, 1
  store { i64, ptr } %t268, ptr %l119, !tbaa !27
  %t269 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !27
  %t273 = load i64, ptr %l118, !tbaa !24
  %t274 = mul i64 %t273, 17
  call void @llvm.memmove.p0.p0.i64(ptr %t270, ptr %t272, i64 %t274, i1 false)
  %t275 = load { i64, ptr }, ptr %l119, !tbaa !27
  store { i64, ptr } %t275, ptr %l117, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t276 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t277 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t276, 1
  store { i32, { i64, ptr } } %t277, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @std_2fnet_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"<poll.h>:pollfd"
  %l18 = alloca %"<poll.h>:pollfd"
  %l30 = alloca { i64, ptr }
  %l46 = alloca i32
  %l48 = alloca i1
  %l49 = alloca i1
  %l56 = alloca i64
  %l59 = alloca i64
  %l69 = alloca { i64, ptr }
  %l70 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t19 = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l15, !tbaa !24
  store %"<poll.h>:pollfd" zeroinitializer, ptr %l16
  %t4 = load i64, ptr %l15, !tbaa !24
  %t5 = icmp sgt i64 %t4, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = call %"<poll.h>:pollfd" @olang_2emir_2eHelperKind_2eZero_2e_3cpoll_2eh_3e_3apollfd()
  store %"<poll.h>:pollfd" %t7, ptr %l18
  br label %bb3
bb2:
  %t8 = load i64, ptr %l15, !tbaa !24
  %t9 = icmp sge i64 %t8, 0
  br i1 %t9, label %bb4, label %bb5
bb3:
  %t11 = load %"<poll.h>:pollfd", ptr %l18
  store %"<poll.h>:pollfd" %t11, ptr %l16
  br label %bb2
bb4:
  %t12 = load i64, ptr %l15, !tbaa !24
  %t13 = icmp sle i64 %t12, 1152921504606846975
  br i1 %t13, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_823ed4750cf5b81d_e4e7fec6767cf5a1)
  unreachable
bb6:
  %t15 = load i64, ptr %l15, !tbaa !24
  %t16 = mul i64 %t15, 8
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  %t18 = load %"<poll.h>:pollfd", ptr %l16
  store i64 0, ptr %t19
  br label %fill.20
fill.20:
  %t23 = load i64, ptr %t19
  %t24 = icmp slt i64 %t23, %t15
  br i1 %t24, label %fillb.21, label %filld.22
fillb.21:
  %t25 = getelementptr %"<poll.h>:pollfd", ptr %t17, i64 %t23
  store %"<poll.h>:pollfd" %t18, ptr %t25
  %t26 = add i64 %t23, 1
  store i64 %t26, ptr %t19
  br label %fill.20
filld.22:
  %t27 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t17, 1
  store { i64, ptr } %t28, ptr %l2, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t30, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  store i64 %t34, ptr %l5, !tbaa !24
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_823ed4750cf5b81d_e4e7fec6767cf5a1)
  unreachable
bb8:
  %t36 = load i64, ptr %l4, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb9, label %bb10
bb9:
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t44 = load i64, ptr %l4, !tbaa !24
  store i64 %t44, ptr %l6, !tbaa !24
  %t46 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t46, ptr %l30, !tbaa !27
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i32, ptr %t50, i64 %t47
  %t52 = load i32, ptr %t51, !tbaa !33
  %t54 = load i64, ptr %l6, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr %"<poll.h>:pollfd", ptr %t59, i64 %t54
  %t61 = getelementptr %"<poll.h>:pollfd", ptr %t60, i32 0, i32 0
  store i32 %t52, ptr %t61, !tbaa !23
  %t62 = load i64, ptr %l6, !tbaa !24
  %t63 = load i32, ptr @G_2e_3cpoll_2eh_3e_2ePOLLIN, !tbaa !23
  %t65 = trunc i32 %t63 to i16
  %t68 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr %"<poll.h>:pollfd", ptr %t69, i64 %t62
  %t71 = getelementptr %"<poll.h>:pollfd", ptr %t70, i32 0, i32 1
  store i16 %t65, ptr %t71, !tbaa !62
  br label %bb12
bb12:
  %t72 = load i64, ptr %l4, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l4, !tbaa !24
  br label %bb8
bb13:
  br label %bb14
bb14:
  %t76 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t77, 0
  %t83 = trunc i64 %a1 to i32
  %t85 = extractvalue { i64, ptr } %t76, 1
  %t86 = extractvalue { i64, ptr } %t76, 0
  %t89 = call i32 @poll(ptr %t85, i64 %t79, i32 %t83)
  store i32 %t89, ptr %l46
  br label %bb15
bb15:
  %t90 = load i32, ptr %l46, !tbaa !23
  %t91 = icmp slt i32 %t90, 0
  br i1 %t91, label %bb16, label %bb17
bb16:
  %t93 = call i1 @std_2fnet_2einterrupted()
  store i1 %t93, ptr %l49
  br label %bb18
bb17:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb19
bb18:
  %t94 = load i1, ptr %l49, !tbaa !21
  store i1 %t94, ptr %l48, !tbaa !21
  br label %bb19
bb19:
  %t95 = load i1, ptr %l48, !tbaa !21
  %t96 = xor i1 %t95, true
  br i1 %t96, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb14
bb24:
  store i64 0, ptr %l8, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 0
  store i64 %t100, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t102 = load i64, ptr %l9, !tbaa !24
  %t103 = load i64, ptr %l8, !tbaa !24
  %t106 = icmp sgt i64 %t102, %t103
  br i1 %t106, label %bb25, label %bb26
bb25:
  %t108 = load i64, ptr %l10, !tbaa !24
  %t110 = icmp sgt i64 %t108, 0
  br i1 %t110, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb30
bb27:
  %t112 = load i64, ptr %l9, !tbaa !24
  %t113 = load i64, ptr %l8, !tbaa !24
  %t116 = sub i64 %t112, %t113
  %t117 = load i64, ptr %l10, !tbaa !24
  %t120 = add i64 %t116, %t117
  %t122 = sub i64 %t120, 1
  %t123 = load i64, ptr %l10, !tbaa !24
  %t126 = sdiv i64 %t122, %t123
  store i64 %t126, ptr %l59, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb29
bb29:
  %t128 = load i64, ptr %l59, !tbaa !24
  store i64 %t128, ptr %l56, !tbaa !24
  br label %bb30
bb30:
  %t129 = load i64, ptr %l56, !tbaa !24
  store i64 %t129, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t130 = load i64, ptr %l11, !tbaa !24
  %t132 = mul i64 %t130, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t132)
  %t134 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  store { i64, ptr } %t135, ptr %l69, !tbaa !27
  store i64 0, ptr %l70, !tbaa !24
  br label %bb31
bb31:
  %t136 = load i64, ptr %l12, !tbaa !24
  %t137 = load i64, ptr %l11, !tbaa !24
  %t140 = icmp slt i64 %t136, %t137
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb32, label %bb33
bb32:
  br label %bb36
bb33:
  br label %bb34
bb34:
  %t144 = load i64, ptr %l8, !tbaa !24
  %t145 = load i64, ptr %l12, !tbaa !24
  %t146 = load i64, ptr %l10, !tbaa !24
  %t149 = mul i64 %t145, %t146
  %t152 = add i64 %t144, %t149
  %t156 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr %"<poll.h>:pollfd", ptr %t157, i64 %t152
  %t159 = getelementptr %"<poll.h>:pollfd", ptr %t158, i32 0, i32 2
  %t160 = load i16, ptr %t159, !tbaa !62
  %t162 = icmp ne i16 %t160, 0
  %t164 = load i64, ptr %l70, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i1, ptr %t166, i64 %t164
  store i1 %t162, ptr %t167, !tbaa !31
  %t168 = load i64, ptr %l70, !tbaa !24
  %t169 = add i64 %t168, 1
  store i64 %t169, ptr %l70, !tbaa !24
  br label %bb35
bb35:
  %t170 = load i64, ptr %l12, !tbaa !24
  %t172 = add i64 %t170, 1
  store i64 %t172, ptr %l12, !tbaa !24
  br label %bb31
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t174 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t174, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, %"std/net:UDP" } @std_2fnet_2eUDP_2eListen(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l24 = alloca i32
  %l26 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca i32
  %l36 = alloca %"std/net:UDP"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.builder
  %s3room = alloca [64 x i8], align 8
  %rv = alloca { i32, %"std/net:UDP" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr @G_2estd_2fnet_2esockDgram, !tbaa !23
  %t5 = call { i32, i32 } @std_2fnet_2eopen(ptr %v0, ptr %t1, i32 %t2)
  %t6 = extractvalue { i32, i32 } %t5, 1
  %t7 = extractvalue { i32, i32 } %t5, 0
  store i32 %t7, ptr %l8
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i32 %t6, ptr %l7
  br label %bb1
bb1:
  %t10 = load i32, ptr %l7, !tbaa !23
  store i32 %t10, ptr %l4, !tbaa !23
  br label %bb3
bb2:
  %t11 = load i32, ptr %l8, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t11, 0
  %t17 = shl i32 %t15, 16
  %t18 = or i32 %t17, %t13
  %t19 = select i1 %t16, i32 0, i32 %t18
  call void @__olang_scope_close(ptr %s0)
  %t21 = insertvalue { i32, %"std/net:UDP" } zeroinitializer, i32 %t19, 0
  store { i32, %"std/net:UDP" } %t21, ptr %rv
  br label %ret
bb3:
  %t22 = load i32, ptr %l4, !tbaa !23
  store i32 %t22, ptr %l1, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"std/net:Addr", ptr %t23, i32 0, i32 0
  %t26 = getelementptr %"std/net:IP", ptr %t25, i32 0, i32 0
  %t27 = load i1, ptr %t26, !tbaa !21
  br i1 %t27, label %bb4, label %bb5
bb4:
  %t29 = load i32, ptr %l1, !tbaa !23
  %t30 = load i32, ptr @G_2estd_2fnet_2eipprotoIpv6, !tbaa !23
  %t31 = load i32, ptr @G_2estd_2fnet_2eipv6V6only, !tbaa !23
  call void @std_2fnet_2esetInt(i32 %t29, i32 %t30, i32 %t31, i32 0)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call { i64, ptr } @std_2fnet_2esockaddr(ptr %v0, ptr %s0, ptr %t35)
  store { i64, ptr } %t37, ptr %l16
  br label %bb8
bb8:
  %t38 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l17, !tbaa !24
  %t40 = load i64, ptr %l17, !tbaa !24
  %t41 = mul i64 %t40, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l18, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l17, !tbaa !24
  %t50 = mul i64 %t49, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t46, ptr %t48, i64 %t50, i1 false)
  %t51 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t51, ptr %l2, !tbaa !27
  %t52 = load i32, ptr %l1, !tbaa !23
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t58 = trunc i64 %t56 to i32
  %t61 = extractvalue { i64, ptr } %t53, 1
  %t62 = extractvalue { i64, ptr } %t53, 0
  %t64 = call i32 @bind(i32 %t52, ptr %t61, i32 %t58)
  store i32 %t64, ptr %l24
  br label %bb9
bb9:
  %t65 = load i32, ptr %l24, !tbaa !23
  %t66 = icmp slt i32 %t65, 0
  br i1 %t66, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t68 = call i32 @__olang_err()
  store i32 %t68, ptr %l26
  br label %bb12
bb11:
  br label %bb18
bb12:
  %t69 = load i32, ptr %l26, !tbaa !23
  store i32 %t69, ptr %l3, !tbaa !23
  %t70 = load i32, ptr %l1, !tbaa !23
  %t72 = call i32 @close(i32 %t70)
  store i32 %t72, ptr %l28
  br label %bb13
bb13:
  %t73 = load i32, ptr %l3, !tbaa !23
  store i32 %t73, ptr %l29, !tbaa !23
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l30, !tbaa !29
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s3
  store ptr %s3room, ptr %s3
  call void @olang_2emir_2eHelperKind_2eRender_2estd_2fnet_3aAddr_26(ptr %s3, ptr %l30, i64 0)
  br label %bb14
bb14:
  %t76 = load ptr, ptr %s3
  %t77 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t78 = load i64, ptr %t77
  %t79 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t78)
  call void @olang_textcopy(ptr %t79, ptr %t76, i64 %t78)
  %t80 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  store { i64, ptr } %t81, ptr %l32, !tbaa !27
  %t82 = getelementptr %olang.builder, ptr %s3, i32 0, i32 3
  %t83 = load ptr, ptr %t82
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %sbgrew.85, label %sbdone.86
sbgrew.85:
  call void @__olang_sb_done(ptr %s3)
  br label %sbdone.86
sbdone.86:
  %t87 = load i32, ptr %l29, !tbaa !23
  %t88 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t89 = call i32 @std_2fnet_2eraise(i32 %t87, { i64, ptr } %t88)
  store i32 %t89, ptr %l33
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb16, label %ok.91, !prof !99
ok.91:
  br label %bb15
bb15:
  br label %bb17
bb16:
  %t92 = load i32, ptr %l33, !tbaa !23
  %t93 = lshr i32 %t92, 16
  %t94 = and i32 %t92, 65535
  %t95 = icmp eq i32 %t93, 1
  %t96 = select i1 %t95, i32 1, i32 0
  %t97 = icmp eq i32 %t92, 0
  %t98 = shl i32 %t96, 16
  %t99 = or i32 %t98, %t94
  %t100 = select i1 %t97, i32 0, i32 %t99
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t102 = insertvalue { i32, %"std/net:UDP" } zeroinitializer, i32 %t100, 0
  store { i32, %"std/net:UDP" } %t102, ptr %rv
  br label %ret
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t103 = load i32, ptr %l1, !tbaa !23
  %t105 = call %"std/net:UDP" @std_2fnet_3aUDP_2ector(ptr %s0, i32 %t103)
  store %"std/net:UDP" %t105, ptr %l36
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t106 = load %"std/net:UDP", ptr %l36
  %t107 = insertvalue { i32, %"std/net:UDP" } zeroinitializer, %"std/net:UDP" %t106, 1
  store { i32, %"std/net:UDP" } %t107, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:UDP" }, ptr %rv
  ret { i32, %"std/net:UDP" } %rr
}

define dso_local { i32, { i64, i64 } } @std_2fnet_2edecimalAt(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l14 = alloca i1
  %l15 = alloca i1
  %l23 = alloca { i64, ptr }
  %l34 = alloca i1
  %l38 = alloca i1
  %l43 = alloca i1
  %l44 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, i64 } }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp slt i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l11, !tbaa !27
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t17)
  store i1 %t19, ptr %l14
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb5
bb4:
  %t20 = load i1, ptr %l14, !tbaa !21
  store i1 %t20, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l10, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t28 = icmp slt i64 %t26, 5
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l15, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb9, label %bb10
bb9:
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = mul i64 %t33, 10
  %t36 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t36, ptr %l23, !tbaa !27
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i8, ptr %t40, i64 %t37
  %t42 = load i8, ptr %t41, !tbaa !32
  %t44 = sub i8 %t42, 48
  %t46 = zext i8 %t44 to i64
  %t49 = add i64 %t35, %t46
  store i64 %t49, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l4, !tbaa !24
  br label %bb12
bb12:
  br label %bb1
bb13:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t56 = load i64, ptr %l1, !tbaa !24
  %t59 = icmp eq i64 %t55, %t56
  br i1 %t59, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb16
bb15:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t65 = icmp sgt i64 %t61, %a2
  store i1 %t65, ptr %l34, !tbaa !21
  br label %bb16
bb16:
  %t67 = load i1, ptr %l34, !tbaa !21
  br i1 %t67, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb22
bb18:
  %t68 = load i64, ptr %l4, !tbaa !24
  %t69 = load i64, ptr %l1, !tbaa !24
  %t72 = sub i64 %t68, %t69
  %t74 = icmp sgt i64 %t72, 1
  br i1 %t74, label %bb19, label %bb20
bb19:
  %t76 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t76, ptr %l44, !tbaa !27
  %t77 = load i64, ptr %l1, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i8, ptr %t80, i64 %t77
  %t82 = load i8, ptr %t81, !tbaa !32
  %t84 = icmp eq i8 %t82, 48
  store i1 %t84, ptr %l43, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb21
bb21:
  %t86 = load i1, ptr %l43, !tbaa !21
  store i1 %t86, ptr %l38, !tbaa !21
  br label %bb22
bb22:
  %t87 = load i1, ptr %l38, !tbaa !21
  br i1 %t87, label %bb23, label %bb24
bb23:
  %t89 = insertvalue { i32, { i64, i64 } } zeroinitializer, i32 65536, 0
  store { i32, { i64, i64 } } %t89, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t90 = load i64, ptr %l3, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  %t93 = insertvalue { i64, i64 } undef, i64 %t90, 0
  %t95 = insertvalue { i64, i64 } %t93, i64 %t91, 1
  %t97 = insertvalue { i32, { i64, i64 } } zeroinitializer, { i64, i64 } %t95, 1
  store { i32, { i64, i64 } } %t97, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, i64 } }, ptr %rv
  ret { i32, { i64, i64 } } %rr
}

define dso_local i64 @std_2fnet_2ehexDigit(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l2 = alloca i1
  %l8 = alloca i1
  %l17 = alloca i1
  %rv = alloca i64
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = sub i8 %t5, 48
  %t9 = zext i8 %t7 to i64
  store i64 %t9, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load i8, ptr %l0, !tbaa !22
  %t13 = icmp uge i8 %t11, 97
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t15 = load i8, ptr %l0, !tbaa !22
  %t17 = icmp ule i8 %t15, 102
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t19 = load i1, ptr %l8, !tbaa !21
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t20 = load i8, ptr %l0, !tbaa !22
  %t22 = sub i8 %t20, 97
  %t24 = zext i8 %t22 to i64
  %t26 = add i64 %t24, 10
  store i64 %t26, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t28 = load i8, ptr %l0, !tbaa !22
  %t30 = icmp uge i8 %t28, 65
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t32 = load i8, ptr %l0, !tbaa !22
  %t34 = icmp ule i8 %t32, 70
  store i1 %t34, ptr %l17, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb13
bb13:
  %t36 = load i1, ptr %l17, !tbaa !21
  br i1 %t36, label %bb14, label %bb15
bb14:
  %t37 = load i8, ptr %l0, !tbaa !22
  %t39 = sub i8 %t37, 65
  %t41 = zext i8 %t39 to i64
  %t43 = add i64 %t41, 10
  store i64 %t43, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @std_2fnet_2einterrupted() #0 {
entry:
  %l0 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i32 @__olang_err()
  store i32 %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load i32, ptr %l0, !tbaa !23
  %t3 = icmp eq i32 %t2, 13
  store i1 %t3, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @std_2fnet_2elookupFailed(ptr %v0, i32 %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i64
  %l17 = alloca { i64, [2 x i64] }
  %l22 = alloca { i64, [2 x i64] }
  %l23 = alloca i64
  %l25 = alloca { i64, [2 x i64] }
  %l28 = alloca { i64, [2 x i64] }
  %l29 = alloca i64
  %l31 = alloca { i64, [2 x i64] }
  %s1 = alloca %olang.scope
  %rv = alloca i32
  %t32 = alloca { i64, [2 x i64] }, align 8
  %t54 = alloca { i64, [2 x i64] }, align 8
  %t69 = alloca { i64, [2 x i64] }, align 8
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  %t3 = icmp eq i32 %t1, -2
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb9
bb2:
  %t5 = load i32, ptr %l0, !tbaa !23
  %t7 = icmp eq i32 %t5, -5
  br i1 %t7, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t9 = load i32, ptr %l0, !tbaa !23
  %t11 = icmp eq i32 %t9, -4
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  %t13 = load i32, ptr %l0, !tbaa !23
  %t15 = icmp eq i32 %t13, -9
  br i1 %t15, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb11
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  store { i64, ptr } %a1, ptr %l11, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  store i64 %t20, ptr %l12, !tbaa !24
  %t21 = load i64, ptr %l12, !tbaa !24
  %t22 = mul i64 %t21, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l13, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l12, !tbaa !24
  %t31 = mul i64 %t30, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t27, ptr %t29, i64 %t31, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 0
  store i64 6, ptr %t33
  %t34 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t35 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t34, 0
  %t36 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 1
  store { { i64, ptr } } %t35, ptr %t36
  %t37 = load { i64, [2 x i64] }, ptr %t32
  store { i64, [2 x i64] } %t37, ptr %l14
  %t38 = call ptr @__olang_errpay_push()
  %t39 = ptrtoint ptr %t38 to i64
  store i64 %t39, ptr %l15, !tbaa !24
  %t40 = load i64, ptr %l15
  %t41 = inttoptr i64 %t40 to ptr
  %t43 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t41, ptr %l14)
  store { i64, [2 x i64] } %t43, ptr %l17
  br label %bb10
bb10:
  %t44 = load { i64, [2 x i64] }, ptr %l17
  %t45 = load i64, ptr %l15
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = call ptr @__olang_scope_alloc_a(ptr %t46, i64 24, i64 8)
  store { i64, [2 x i64] } %t44, ptr %t47
  call void @__olang_errpay_set(ptr %t47)
  call void @__olang_scope_close(ptr %s1)
  store i32 65542, ptr %rv
  br label %ret
bb11:
  %t50 = load i32, ptr %l0, !tbaa !23
  %t52 = icmp eq i32 %t50, -3
  br i1 %t52, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb16
bb14:
  store { i64, [2 x i64] } zeroinitializer, ptr %t54
  %t55 = getelementptr { i64, [2 x i64] }, ptr %t54, i32 0, i32 0
  store i64 4, ptr %t55
  %t56 = load { i64, [2 x i64] }, ptr %t54
  store { i64, [2 x i64] } %t56, ptr %l22
  %t57 = call ptr @__olang_errpay_push()
  %t58 = ptrtoint ptr %t57 to i64
  store i64 %t58, ptr %l23, !tbaa !24
  %t59 = load i64, ptr %l23
  %t60 = inttoptr i64 %t59 to ptr
  %t62 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t60, ptr %l22)
  store { i64, [2 x i64] } %t62, ptr %l25
  br label %bb15
bb15:
  %t63 = load { i64, [2 x i64] }, ptr %l25
  %t64 = load i64, ptr %l23
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = call ptr @__olang_scope_alloc_a(ptr %t65, i64 24, i64 8)
  store { i64, [2 x i64] } %t63, ptr %t66
  call void @__olang_errpay_set(ptr %t66)
  store i32 65540, ptr %rv
  br label %ret
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  store { i64, [2 x i64] } zeroinitializer, ptr %t69
  %t70 = getelementptr { i64, [2 x i64] }, ptr %t69, i32 0, i32 0
  store i64 9, ptr %t70
  %t71 = load { i64, [2 x i64] }, ptr %t69
  store { i64, [2 x i64] } %t71, ptr %l28
  %t72 = call ptr @__olang_errpay_push()
  %t73 = ptrtoint ptr %t72 to i64
  store i64 %t73, ptr %l29, !tbaa !24
  %t74 = load i64, ptr %l29
  %t75 = inttoptr i64 %t74 to ptr
  %t77 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t75, ptr %l28)
  store { i64, [2 x i64] } %t77, ptr %l31
  br label %bb20
bb20:
  %t78 = load { i64, [2 x i64] }, ptr %l31
  %t79 = load i64, ptr %l29
  %t80 = inttoptr i64 %t79 to ptr
  %t81 = call ptr @__olang_scope_alloc_a(ptr %t80, i64 24, i64 8)
  store { i64, [2 x i64] } %t78, ptr %t81
  call void @__olang_errpay_set(ptr %t81)
  store i32 65545, ptr %rv
  br label %ret
bb21:
  call void @__olang_check_failed(ptr @olang_loc_8981c24167caedc7_91d5c812394e4ba3)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i32 } @std_2fnet_2eopen(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l11 = alloca i32
  %l14 = alloca i32
  %l15 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/net:Addr", ptr %t1, i32 0, i32 0
  %t4 = getelementptr %"std/net:IP", ptr %t3, i32 0, i32 0
  %t5 = load i1, ptr %t4, !tbaa !21
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i32, ptr @G_2estd_2fnet_2eafInet6, !tbaa !23
  store i32 %t7, ptr %l5, !tbaa !23
  br label %bb3
bb2:
  %t9 = load i32, ptr @G_2estd_2fnet_2eafInet, !tbaa !23
  store i32 %t9, ptr %l5, !tbaa !23
  br label %bb3
bb3:
  %t12 = load i32, ptr @G_2estd_2fnet_2esockCloexec, !tbaa !23
  %t15 = or i32 %a1, %t12
  %t16 = load i32, ptr %l5, !tbaa !23
  %t18 = call i32 @socket(i32 %t16, i32 %t15, i32 0)
  store i32 %t18, ptr %l11
  br label %bb4
bb4:
  %t19 = load i32, ptr %l11, !tbaa !23
  store i32 %t19, ptr %l2, !tbaa !23
  %t20 = load i32, ptr %l2, !tbaa !23
  %t22 = icmp slt i32 %t20, 0
  br i1 %t22, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t24 = call i32 @__olang_err()
  store i32 %t24, ptr %l14
  br label %bb7
bb6:
  br label %bb12
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l15, !tbaa !29
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  call void @olang_2emir_2eHelperKind_2eRender_2estd_2fnet_3aAddr_26(ptr %s2, ptr %l15, i64 0)
  br label %bb8
bb8:
  %t27 = load ptr, ptr %s2
  %t28 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t29 = load i64, ptr %t28
  %t30 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t29)
  call void @olang_textcopy(ptr %t30, ptr %t27, i64 %t29)
  %t31 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  store { i64, ptr } %t32, ptr %l17, !tbaa !27
  %t33 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t34 = load ptr, ptr %t33
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %sbgrew.36, label %sbdone.37
sbgrew.36:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.37
sbdone.37:
  %t38 = load i32, ptr %l14, !tbaa !23
  %t39 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t40 = call i32 @std_2fnet_2eraise(i32 %t38, { i64, ptr } %t39)
  store i32 %t40, ptr %l18
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb10, label %ok.42, !prof !99
ok.42:
  br label %bb9
bb9:
  br label %bb11
bb10:
  %t43 = load i32, ptr %l18, !tbaa !23
  %t44 = lshr i32 %t43, 16
  %t45 = and i32 %t43, 65535
  %t46 = icmp eq i32 %t44, 1
  %t47 = select i1 %t46, i32 1, i32 0
  %t48 = icmp eq i32 %t43, 0
  %t49 = shl i32 %t47, 16
  %t50 = or i32 %t49, %t45
  %t51 = select i1 %t48, i32 0, i32 %t50
  call void @__olang_scope_close(ptr %s1)
  %t53 = insertvalue { i32, i32 } zeroinitializer, i32 %t51, 0
  store { i32, i32 } %t53, ptr %rv
  br label %ret
bb11:
  call void @__olang_scope_close(ptr %s1)
  br label %bb12
bb12:
  %t54 = load i32, ptr %l2, !tbaa !23
  %t56 = insertvalue { i32, i32 } zeroinitializer, i32 %t54, 1
  store { i32, i32 } %t56, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i32 @std_2fnet_2eraise(i32 %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca i32
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l7 = alloca { i64, [2 x i64] }
  %l12 = alloca { i64, [2 x i64] }
  %l13 = alloca i64
  %l15 = alloca { i64, [2 x i64] }
  %l20 = alloca { i64, [2 x i64] }
  %l21 = alloca i64
  %l23 = alloca { i64, [2 x i64] }
  %l28 = alloca { i64, [2 x i64] }
  %l29 = alloca i64
  %l31 = alloca { i64, [2 x i64] }
  %l36 = alloca { i64, [2 x i64] }
  %l37 = alloca i64
  %l39 = alloca { i64, [2 x i64] }
  %l44 = alloca { i64, [2 x i64] }
  %l45 = alloca i64
  %l47 = alloca { i64, [2 x i64] }
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, [2 x i64] }
  %l56 = alloca i64
  %l58 = alloca { i64, [2 x i64] }
  %l61 = alloca { i64, [2 x i64] }
  %l62 = alloca i64
  %l64 = alloca { i64, [2 x i64] }
  %s7 = alloca %olang.scope
  %rv = alloca i32
  %t5 = alloca { i64, [2 x i64] }, align 8
  %t24 = alloca { i64, [2 x i64] }, align 8
  %t43 = alloca { i64, [2 x i64] }, align 8
  %t62 = alloca { i64, [2 x i64] }, align 8
  %t81 = alloca { i64, [2 x i64] }, align 8
  %t100 = alloca { i64, [2 x i64] }, align 8
  %t133 = alloca { i64, [2 x i64] }, align 8
  %t151 = alloca { i64, [2 x i64] }, align 8
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  %t3 = icmp eq i32 %t1, 3
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb5
bb3:
  store { i64, [2 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 0
  store i64 8, ptr %t6
  %t7 = load { i64, [2 x i64] }, ptr %t5
  store { i64, [2 x i64] } %t7, ptr %l4
  %t8 = call ptr @__olang_errpay_push()
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l5
  %t11 = inttoptr i64 %t10 to ptr
  %t13 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t11, ptr %l4)
  store { i64, [2 x i64] } %t13, ptr %l7
  br label %bb4
bb4:
  %t14 = load { i64, [2 x i64] }, ptr %l7
  %t15 = load i64, ptr %l5
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = call ptr @__olang_scope_alloc_a(ptr %t16, i64 24, i64 8)
  store { i64, [2 x i64] } %t14, ptr %t17
  call void @__olang_errpay_set(ptr %t17)
  store i32 65544, ptr %rv
  br label %ret
bb5:
  %t20 = load i32, ptr %l0, !tbaa !23
  %t22 = icmp eq i32 %t20, 7
  br i1 %t22, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb10
bb8:
  store { i64, [2 x i64] } zeroinitializer, ptr %t24
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t24, i32 0, i32 0
  store i64 0, ptr %t25
  %t26 = load { i64, [2 x i64] }, ptr %t24
  store { i64, [2 x i64] } %t26, ptr %l12
  %t27 = call ptr @__olang_errpay_push()
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l13, !tbaa !24
  %t29 = load i64, ptr %l13
  %t30 = inttoptr i64 %t29 to ptr
  %t32 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t30, ptr %l12)
  store { i64, [2 x i64] } %t32, ptr %l15
  br label %bb9
bb9:
  %t33 = load { i64, [2 x i64] }, ptr %l15
  %t34 = load i64, ptr %l13
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = call ptr @__olang_scope_alloc_a(ptr %t35, i64 24, i64 8)
  store { i64, [2 x i64] } %t33, ptr %t36
  call void @__olang_errpay_set(ptr %t36)
  store i32 65536, ptr %rv
  br label %ret
bb10:
  %t39 = load i32, ptr %l0, !tbaa !23
  %t41 = icmp eq i32 %t39, 8
  br i1 %t41, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb15
bb13:
  store { i64, [2 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [2 x i64] }, ptr %t43, i32 0, i32 0
  store i64 1, ptr %t44
  %t45 = load { i64, [2 x i64] }, ptr %t43
  store { i64, [2 x i64] } %t45, ptr %l20
  %t46 = call ptr @__olang_errpay_push()
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l21, !tbaa !24
  %t48 = load i64, ptr %l21
  %t49 = inttoptr i64 %t48 to ptr
  %t51 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t49, ptr %l20)
  store { i64, [2 x i64] } %t51, ptr %l23
  br label %bb14
bb14:
  %t52 = load { i64, [2 x i64] }, ptr %l23
  %t53 = load i64, ptr %l21
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = call ptr @__olang_scope_alloc_a(ptr %t54, i64 24, i64 8)
  store { i64, [2 x i64] } %t52, ptr %t55
  call void @__olang_errpay_set(ptr %t55)
  store i32 65537, ptr %rv
  br label %ret
bb15:
  %t58 = load i32, ptr %l0, !tbaa !23
  %t60 = icmp eq i32 %t58, 9
  br i1 %t60, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb20
bb18:
  store { i64, [2 x i64] } zeroinitializer, ptr %t62
  %t63 = getelementptr { i64, [2 x i64] }, ptr %t62, i32 0, i32 0
  store i64 2, ptr %t63
  %t64 = load { i64, [2 x i64] }, ptr %t62
  store { i64, [2 x i64] } %t64, ptr %l28
  %t65 = call ptr @__olang_errpay_push()
  %t66 = ptrtoint ptr %t65 to i64
  store i64 %t66, ptr %l29, !tbaa !24
  %t67 = load i64, ptr %l29
  %t68 = inttoptr i64 %t67 to ptr
  %t70 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t68, ptr %l28)
  store { i64, [2 x i64] } %t70, ptr %l31
  br label %bb19
bb19:
  %t71 = load { i64, [2 x i64] }, ptr %l31
  %t72 = load i64, ptr %l29
  %t73 = inttoptr i64 %t72 to ptr
  %t74 = call ptr @__olang_scope_alloc_a(ptr %t73, i64 24, i64 8)
  store { i64, [2 x i64] } %t71, ptr %t74
  call void @__olang_errpay_set(ptr %t74)
  store i32 65538, ptr %rv
  br label %ret
bb20:
  %t77 = load i32, ptr %l0, !tbaa !23
  %t79 = icmp eq i32 %t77, 10
  br i1 %t79, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb25
bb23:
  store { i64, [2 x i64] } zeroinitializer, ptr %t81
  %t82 = getelementptr { i64, [2 x i64] }, ptr %t81, i32 0, i32 0
  store i64 3, ptr %t82
  %t83 = load { i64, [2 x i64] }, ptr %t81
  store { i64, [2 x i64] } %t83, ptr %l36
  %t84 = call ptr @__olang_errpay_push()
  %t85 = ptrtoint ptr %t84 to i64
  store i64 %t85, ptr %l37, !tbaa !24
  %t86 = load i64, ptr %l37
  %t87 = inttoptr i64 %t86 to ptr
  %t89 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t87, ptr %l36)
  store { i64, [2 x i64] } %t89, ptr %l39
  br label %bb24
bb24:
  %t90 = load { i64, [2 x i64] }, ptr %l39
  %t91 = load i64, ptr %l37
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = call ptr @__olang_scope_alloc_a(ptr %t92, i64 24, i64 8)
  store { i64, [2 x i64] } %t90, ptr %t93
  call void @__olang_errpay_set(ptr %t93)
  store i32 65539, ptr %rv
  br label %ret
bb25:
  %t96 = load i32, ptr %l0, !tbaa !23
  %t98 = icmp eq i32 %t96, 11
  br i1 %t98, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb30
bb28:
  store { i64, [2 x i64] } zeroinitializer, ptr %t100
  %t101 = getelementptr { i64, [2 x i64] }, ptr %t100, i32 0, i32 0
  store i64 4, ptr %t101
  %t102 = load { i64, [2 x i64] }, ptr %t100
  store { i64, [2 x i64] } %t102, ptr %l44
  %t103 = call ptr @__olang_errpay_push()
  %t104 = ptrtoint ptr %t103 to i64
  store i64 %t104, ptr %l45, !tbaa !24
  %t105 = load i64, ptr %l45
  %t106 = inttoptr i64 %t105 to ptr
  %t108 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t106, ptr %l44)
  store { i64, [2 x i64] } %t108, ptr %l47
  br label %bb29
bb29:
  %t109 = load { i64, [2 x i64] }, ptr %l47
  %t110 = load i64, ptr %l45
  %t111 = inttoptr i64 %t110 to ptr
  %t112 = call ptr @__olang_scope_alloc_a(ptr %t111, i64 24, i64 8)
  store { i64, [2 x i64] } %t109, ptr %t112
  call void @__olang_errpay_set(ptr %t112)
  store i32 65540, ptr %rv
  br label %ret
bb30:
  %t115 = load i32, ptr %l0, !tbaa !23
  %t117 = icmp eq i32 %t115, 12
  br i1 %t117, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb35
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  store { i64, ptr } %a1, ptr %l52, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 0
  store i64 %t121, ptr %l53, !tbaa !24
  %t122 = load i64, ptr %l53, !tbaa !24
  %t123 = mul i64 %t122, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t123)
  %t125 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  store { i64, ptr } %t126, ptr %l54, !tbaa !27
  %t127 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = load i64, ptr %l53, !tbaa !24
  %t132 = mul i64 %t131, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t128, ptr %t130, i64 %t132, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [2 x i64] }, ptr %t133, i32 0, i32 0
  store i64 5, ptr %t134
  %t135 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t136 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t135, 0
  %t137 = getelementptr { i64, [2 x i64] }, ptr %t133, i32 0, i32 1
  store { { i64, ptr } } %t136, ptr %t137
  %t138 = load { i64, [2 x i64] }, ptr %t133
  store { i64, [2 x i64] } %t138, ptr %l55
  %t139 = call ptr @__olang_errpay_push()
  %t140 = ptrtoint ptr %t139 to i64
  store i64 %t140, ptr %l56, !tbaa !24
  %t141 = load i64, ptr %l56
  %t142 = inttoptr i64 %t141 to ptr
  %t144 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t142, ptr %l55)
  store { i64, [2 x i64] } %t144, ptr %l58
  br label %bb34
bb34:
  %t145 = load { i64, [2 x i64] }, ptr %l58
  %t146 = load i64, ptr %l56
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = call ptr @__olang_scope_alloc_a(ptr %t147, i64 24, i64 8)
  store { i64, [2 x i64] } %t145, ptr %t148
  call void @__olang_errpay_set(ptr %t148)
  call void @__olang_scope_close(ptr %s7)
  store i32 65541, ptr %rv
  br label %ret
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb40
bb38:
  store { i64, [2 x i64] } zeroinitializer, ptr %t151
  %t152 = getelementptr { i64, [2 x i64] }, ptr %t151, i32 0, i32 0
  store i64 9, ptr %t152
  %t153 = load { i64, [2 x i64] }, ptr %t151
  store { i64, [2 x i64] } %t153, ptr %l61
  %t154 = call ptr @__olang_errpay_push()
  %t155 = ptrtoint ptr %t154 to i64
  store i64 %t155, ptr %l62, !tbaa !24
  %t156 = load i64, ptr %l62
  %t157 = inttoptr i64 %t156 to ptr
  %t159 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t157, ptr %l61)
  store { i64, [2 x i64] } %t159, ptr %l64
  br label %bb39
bb39:
  %t160 = load { i64, [2 x i64] }, ptr %l64
  %t161 = load i64, ptr %l62
  %t162 = inttoptr i64 %t161 to ptr
  %t163 = call ptr @__olang_scope_alloc_a(ptr %t162, i64 24, i64 8)
  store { i64, [2 x i64] } %t160, ptr %t163
  call void @__olang_errpay_set(ptr %t163)
  store i32 65545, ptr %rv
  br label %ret
bb40:
  call void @__olang_check_failed(ptr @olang_loc_bc64e253b1e7f486_2f7ea114c0e9c0f2)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @std_2fnet_2esetInt(i32 %a0, i32 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca [4 x i8]
  %l25 = alloca i32
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [4 x i8] undef, i8 0, 0
  %t2 = insertvalue [4 x i8] %t1, i8 0, 1
  %t3 = insertvalue [4 x i8] %t2, i8 0, 2
  %t4 = insertvalue [4 x i8] %t3, i8 0, 3
  store [4 x i8] %t4, ptr %l4
  %t6 = load i32, ptr %l3, !tbaa !23
  %t8 = and i32 %t6, 255
  %t10 = trunc i32 %t8 to i8
  %t12 = getelementptr [4 x i8], ptr %l4, i64 0, i64 0
  store i8 %t10, ptr %t12, !tbaa !32
  %t13 = load i32, ptr %l3, !tbaa !23
  %t15 = ashr i32 %t13, 8
  %t17 = and i32 %t15, 255
  %t19 = trunc i32 %t17 to i8
  %t21 = getelementptr [4 x i8], ptr %l4, i64 0, i64 1
  store i8 %t19, ptr %t21, !tbaa !32
  %t22 = load i32, ptr %l3, !tbaa !23
  %t24 = ashr i32 %t22, 16
  %t26 = and i32 %t24, 255
  %t28 = trunc i32 %t26 to i8
  %t30 = getelementptr [4 x i8], ptr %l4, i64 0, i64 2
  store i8 %t28, ptr %t30, !tbaa !32
  %t31 = load i32, ptr %l3, !tbaa !23
  %t33 = ashr i32 %t31, 24
  %t35 = and i32 %t33, 255
  %t37 = trunc i32 %t35 to i8
  %t39 = getelementptr [4 x i8], ptr %l4, i64 0, i64 3
  store i8 %t37, ptr %t39, !tbaa !32
  %t47 = call i32 @setsockopt(i32 %a0, i32 %a1, i32 %a2, ptr %l4, i32 4)
  store i32 %t47, ptr %l25
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @std_2fnet_2esockaddr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
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
  %l17 = alloca i64
  %l22 = alloca i32
  %l44 = alloca i64
  %l47 = alloca i64
  %l75 = alloca i64
  %l78 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/net:Addr", ptr %t1, i32 0, i32 0
  %t4 = getelementptr %"std/net:IP", ptr %t3, i32 0, i32 0
  %t5 = load i1, ptr %t4, !tbaa !21
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i64 28, ptr %l17, !tbaa !24
  br label %bb3
bb2:
  store i64 16, ptr %l17, !tbaa !24
  br label %bb3
bb3:
  %t7 = load i64, ptr %l17, !tbaa !24
  %t8 = icmp sge i64 %t7, 0
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load i64, ptr %l17, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t15 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t15, ptr %lp1
  %t17 = load ptr, ptr %lp1
  store { i64, ptr } %t14, ptr %t17, !tbaa !27
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"std/net:Addr", ptr %t18, i32 0, i32 0
  %t21 = getelementptr %"std/net:IP", ptr %t20, i32 0, i32 0
  %t22 = load i1, ptr %t21, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_f53fdd983c71e658_198e9c3d6c980e94)
  unreachable
bb6:
  %t24 = load i32, ptr @G_2estd_2fnet_2eafInet6, !tbaa !23
  store i32 %t24, ptr %l22, !tbaa !23
  br label %bb8
bb7:
  %t26 = load i32, ptr @G_2estd_2fnet_2eafInet, !tbaa !23
  store i32 %t26, ptr %l22, !tbaa !23
  br label %bb8
bb8:
  %t28 = load i32, ptr %l22, !tbaa !23
  store i32 %t28, ptr %l2, !tbaa !23
  %t29 = load i32, ptr %l2, !tbaa !23
  %t31 = and i32 %t29, 255
  %t33 = trunc i32 %t31 to i8
  %t35 = load ptr, ptr %lp1
  %t36 = getelementptr { i64, ptr }, ptr %t35, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i8, ptr %t37, i64 0
  store i8 %t33, ptr %t38, !tbaa !32
  %t39 = load i32, ptr %l2, !tbaa !23
  %t41 = ashr i32 %t39, 8
  %t43 = trunc i32 %t41 to i8
  %t45 = load ptr, ptr %lp1
  %t46 = getelementptr { i64, ptr }, ptr %t45, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i8, ptr %t47, i64 1
  store i8 %t43, ptr %t48, !tbaa !32
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"std/net:Addr", ptr %t49, i32 0, i32 1
  %t52 = load i16, ptr %t51, !tbaa !63
  %t54 = lshr i16 %t52, 8
  %t56 = trunc i16 %t54 to i8
  %t58 = load ptr, ptr %lp1
  %t59 = getelementptr { i64, ptr }, ptr %t58, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i8, ptr %t60, i64 2
  store i8 %t56, ptr %t61, !tbaa !32
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"std/net:Addr", ptr %t62, i32 0, i32 1
  %t65 = load i16, ptr %t64, !tbaa !63
  %t67 = and i16 %t65, 255
  %t69 = trunc i16 %t67 to i8
  %t71 = load ptr, ptr %lp1
  %t72 = getelementptr { i64, ptr }, ptr %t71, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i8, ptr %t73, i64 3
  store i8 %t69, ptr %t74, !tbaa !32
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"std/net:Addr", ptr %t75, i32 0, i32 0
  %t78 = getelementptr %"std/net:IP", ptr %t77, i32 0, i32 0
  %t79 = load i1, ptr %t78, !tbaa !21
  br i1 %t79, label %bb9, label %bb10
bb9:
  store i64 0, ptr %l3, !tbaa !24
  store i64 16, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t81 = load i64, ptr %l4, !tbaa !24
  %t82 = load i64, ptr %l3, !tbaa !24
  %t85 = icmp sgt i64 %t81, %t82
  br i1 %t85, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l9, !tbaa !24
  store i64 4, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t87 = load i64, ptr %l10, !tbaa !24
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = icmp sgt i64 %t87, %t88
  br i1 %t91, label %bb23, label %bb24
bb11:
  %t93 = load i64, ptr %l5, !tbaa !24
  %t95 = icmp sgt i64 %t93, 0
  br i1 %t95, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb16
bb13:
  %t97 = load i64, ptr %l4, !tbaa !24
  %t98 = load i64, ptr %l3, !tbaa !24
  %t101 = sub i64 %t97, %t98
  %t102 = load i64, ptr %l5, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t107 = sub i64 %t105, 1
  %t108 = load i64, ptr %l5, !tbaa !24
  %t111 = sdiv i64 %t107, %t108
  store i64 %t111, ptr %l47, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb15
bb15:
  %t113 = load i64, ptr %l47, !tbaa !24
  store i64 %t113, ptr %l44, !tbaa !24
  br label %bb16
bb16:
  %t114 = load i64, ptr %l44, !tbaa !24
  store i64 %t114, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t115 = load i64, ptr %l7, !tbaa !24
  %t116 = load i64, ptr %l6, !tbaa !24
  %t119 = icmp slt i64 %t115, %t116
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t123 = load i64, ptr %l3, !tbaa !24
  %t124 = load i64, ptr %l7, !tbaa !24
  %t125 = load i64, ptr %l5, !tbaa !24
  %t128 = mul i64 %t124, %t125
  %t131 = add i64 %t123, %t128
  store i64 %t131, ptr %l8, !tbaa !24
  %t133 = load i64, ptr %l8, !tbaa !24
  %t135 = add i64 8, %t133
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i64, ptr %l8, !tbaa !24
  %t139 = getelementptr %"std/net:Addr", ptr %t136, i32 0, i32 0
  %t140 = getelementptr %"std/net:IP", ptr %t139, i32 0, i32 1
  %t142 = getelementptr [16 x i8], ptr %t140, i64 0, i64 %t137
  %t143 = load i8, ptr %t142, !tbaa !32
  %t145 = load ptr, ptr %lp1
  %t147 = getelementptr { i64, ptr }, ptr %t145, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i8, ptr %t148, i64 %t135
  store i8 %t143, ptr %t149, !tbaa !32
  br label %bb21
bb21:
  %t150 = load i64, ptr %l7, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l7, !tbaa !24
  br label %bb17
bb22:
  br label %bb35
bb23:
  %t154 = load i64, ptr %l11, !tbaa !24
  %t156 = icmp sgt i64 %t154, 0
  br i1 %t156, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb28
bb25:
  %t158 = load i64, ptr %l10, !tbaa !24
  %t159 = load i64, ptr %l9, !tbaa !24
  %t162 = sub i64 %t158, %t159
  %t163 = load i64, ptr %l11, !tbaa !24
  %t166 = add i64 %t162, %t163
  %t168 = sub i64 %t166, 1
  %t169 = load i64, ptr %l11, !tbaa !24
  %t172 = sdiv i64 %t168, %t169
  store i64 %t172, ptr %l78, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l78, !tbaa !24
  br label %bb27
bb27:
  %t174 = load i64, ptr %l78, !tbaa !24
  store i64 %t174, ptr %l75, !tbaa !24
  br label %bb28
bb28:
  %t175 = load i64, ptr %l75, !tbaa !24
  store i64 %t175, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb29
bb29:
  %t176 = load i64, ptr %l13, !tbaa !24
  %t177 = load i64, ptr %l12, !tbaa !24
  %t180 = icmp slt i64 %t176, %t177
  %t182 = xor i1 %t180, true
  br i1 %t182, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  br label %bb32
bb32:
  %t184 = load i64, ptr %l9, !tbaa !24
  %t185 = load i64, ptr %l13, !tbaa !24
  %t186 = load i64, ptr %l11, !tbaa !24
  %t189 = mul i64 %t185, %t186
  %t192 = add i64 %t184, %t189
  store i64 %t192, ptr %l14, !tbaa !24
  %t194 = load i64, ptr %l14, !tbaa !24
  %t196 = add i64 4, %t194
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load i64, ptr %l14, !tbaa !24
  %t200 = getelementptr %"std/net:Addr", ptr %t197, i32 0, i32 0
  %t201 = getelementptr %"std/net:IP", ptr %t200, i32 0, i32 1
  %t203 = getelementptr [16 x i8], ptr %t201, i64 0, i64 %t198
  %t204 = load i8, ptr %t203, !tbaa !32
  %t206 = load ptr, ptr %lp1
  %t208 = getelementptr { i64, ptr }, ptr %t206, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr i8, ptr %t209, i64 %t196
  store i8 %t204, ptr %t210, !tbaa !32
  br label %bb33
bb33:
  %t211 = load i64, ptr %l13, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l13, !tbaa !24
  br label %bb29
bb34:
  br label %bb35
bb35:
  %t215 = load ptr, ptr %lp1
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !27
  store { i64, ptr } %t216, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fnet_2estd_2fnet_3aAddr_2eStr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca %"std/net:IP"
  %l6 = alloca i16
  %l8 = alloca { i64, ptr }
  %l10 = alloca %"std/net:IP"
  %l12 = alloca i16
  %l14 = alloca { i64, ptr }
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %s3 = alloca %olang.builder
  %s3room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/net:Addr", ptr %t1, i32 0, i32 0
  %t4 = getelementptr %"std/net:IP", ptr %t3, i32 0, i32 0
  %t5 = load i1, ptr %t4, !tbaa !21
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/net:Addr", ptr %t7, i32 0, i32 0
  %t10 = load %"std/net:IP", ptr %t9
  store %"std/net:IP" %t10, ptr %l4
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"std/net:Addr", ptr %t11, i32 0, i32 1
  %t14 = load i16, ptr %t13, !tbaa !63
  store i16 %t14, ptr %l6, !tbaa !63
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t15, i64 %t16)
  call void @olang_2emir_2eHelperKind_2eRender_2estd_2fnet_3aIP(ptr %s2, ptr %l4, i64 0)
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t18 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t18, i64 %t19)
  %t20 = load i16, ptr %l6, !tbaa !63
  %t21 = zext i16 %t20 to i64
  %t22 = call ptr @__olang_sb_room(ptr %s2, i64 24)
  %t23 = call i64 @__olang_fmt_u64(ptr %t22, i64 %t21)
  call void @__olang_sb_add(ptr %s2, i64 %t23)
  %t24 = load ptr, ptr %s2
  %t25 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t26 = load i64, ptr %t25
  %t27 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t24, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l8, !tbaa !27
  %t30 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t31 = load ptr, ptr %t30
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %sbgrew.33, label %sbdone.34
sbgrew.33:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.34
sbdone.34:
  %t35 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t35, ptr %rv
  br label %ret
bb4:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"std/net:Addr", ptr %t36, i32 0, i32 0
  %t39 = load %"std/net:IP", ptr %t38
  store %"std/net:IP" %t39, ptr %l10
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/net:Addr", ptr %t40, i32 0, i32 1
  %t43 = load i16, ptr %t42, !tbaa !63
  store i16 %t43, ptr %l12, !tbaa !63
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s3
  store ptr %s3room, ptr %s3
  call void @olang_2emir_2eHelperKind_2eRender_2estd_2fnet_3aIP(ptr %s3, ptr %l10, i64 0)
  br label %bb5
bb5:
  %t45 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t45, i64 %t46)
  %t47 = load i16, ptr %l12, !tbaa !63
  %t48 = zext i16 %t47 to i64
  %t49 = call ptr @__olang_sb_room(ptr %s3, i64 24)
  %t50 = call i64 @__olang_fmt_u64(ptr %t49, i64 %t48)
  call void @__olang_sb_add(ptr %s3, i64 %t50)
  %t51 = load ptr, ptr %s3
  %t52 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t53 = load i64, ptr %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t53)
  call void @olang_textcopy(ptr %t54, ptr %t51, i64 %t53)
  %t55 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l14, !tbaa !27
  %t57 = getelementptr %olang.builder, ptr %s3, i32 0, i32 3
  %t58 = load ptr, ptr %t57
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %sbgrew.60, label %sbdone.61
sbgrew.60:
  call void @__olang_sb_done(ptr %s3)
  br label %sbdone.61
sbdone.61:
  %t62 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t62, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fnet_2estd_2fnet_3aConn_2eCloseWrite(ptr %v0, ptr %a0) #0 {
entry:
  %l4 = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/net:Conn", ptr %a0, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t5 = load i32, ptr @G_2estd_2fnet_2eshutWr, !tbaa !23
  %t8 = call i32 @shutdown(i32 %t4, i32 %t5)
  store i32 %t8, ptr %l4
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i32 @std_2fnet_2estd_2fnet_3aConn_2eFd(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/net:Conn", ptr %a0, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  store i32 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, %"std/net:Addr" } @std_2fnet_2estd_2fnet_3aConn_2eLocal(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/net:Addr"
  %l4 = alloca %"std/net:Addr"
  %l5 = alloca i32
  %rv = alloca { i32, %"std/net:Addr" }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/net:Conn", ptr %a0, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = call { i32, %"std/net:Addr" } @std_2fnet_2eAddr_2enameOf(i32 %t4, i1 false)
  %t7 = extractvalue { i32, %"std/net:Addr" } %t6, 1
  %t8 = extractvalue { i32, %"std/net:Addr" } %t6, 0
  store i32 %t8, ptr %l5
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store %"std/net:Addr" %t7, ptr %l4
  br label %bb1
bb1:
  %t11 = load %"std/net:Addr", ptr %l4
  store %"std/net:Addr" %t11, ptr %l1
  br label %bb3
bb2:
  %t12 = load i32, ptr %l5, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  %t22 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 %t20, 0
  store { i32, %"std/net:Addr" } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load %"std/net:Addr", ptr %l1
  %t24 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, %"std/net:Addr" %t23, 1
  store { i32, %"std/net:Addr" } %t24, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:Addr" }, ptr %rv
  ret { i32, %"std/net:Addr" } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fnet_2estd_2fnet_3aConn_2eRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l19 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l31 = alloca { i64, [2 x i64] }
  %l32 = alloca i64
  %l34 = alloca { i64, [2 x i64] }
  %l37 = alloca i1
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l42 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  %t71 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l6, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l7, !tbaa !24
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb3, label %bb4
bb2:
  br label %bb9
bb3:
  %t12 = icmp sle i64 0, 0
  br i1 %t12, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_3e2092b4cdfb76b1_123327579653ae5d)
  unreachable
bb5:
  %t14 = load i64, ptr %l7, !tbaa !24
  %t15 = icmp sle i64 0, %t14
  br i1 %t15, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_3e2092b4cdfb76b1_123327579653ae5d)
  unreachable
bb7:
  %t17 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr i8, ptr %t18, i64 0
  %t21 = insertvalue { i64, ptr } undef, i64 0, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t19, 1
  %t24 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t22, 1
  store { i32, { i64, ptr } } %t24, ptr %rv
  br label %ret
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3e2092b4cdfb76b1_123327579653ae5d)
  unreachable
bb9:
  br label %bb10
bb10:
  %t27 = getelementptr %"std/net:Conn", ptr %a0, i32 0, i32 0
  %t28 = load i32, ptr %t27, !tbaa !23
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t36 = extractvalue { i64, ptr } %t29, 1
  %t37 = extractvalue { i64, ptr } %t29, 0
  %t39 = call i64 @recv(i32 %t28, ptr %t36, i64 %t32, i32 0)
  store i64 %t39, ptr %l19
  br label %bb11
bb11:
  %t40 = load i64, ptr %l19, !tbaa !24
  store i64 %t40, ptr %l2, !tbaa !24
  %t41 = load i64, ptr %l2, !tbaa !24
  %t43 = icmp sgt i64 %t41, 0
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t45 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t45, ptr %l22, !tbaa !27
  %t46 = load i64, ptr %l2, !tbaa !24
  store i64 %t46, ptr %l23, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  store i64 %t48, ptr %l24, !tbaa !24
  %t49 = icmp sge i64 0, 0
  br i1 %t49, label %bb14, label %bb15
bb13:
  br label %bb20
bb14:
  %t51 = load i64, ptr %l23, !tbaa !24
  %t52 = icmp sle i64 0, %t51
  br i1 %t52, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_185ce8e381582544_cdbb956a2a7d6800)
  unreachable
bb16:
  %t54 = load i64, ptr %l23, !tbaa !24
  %t55 = load i64, ptr %l24, !tbaa !24
  %t56 = icmp sle i64 %t54, %t55
  br i1 %t56, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_185ce8e381582544_cdbb956a2a7d6800)
  unreachable
bb18:
  %t58 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = load i64, ptr %l23, !tbaa !24
  %t61 = getelementptr i8, ptr %t59, i64 0
  %t62 = sub i64 %t60, 0
  %t63 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t61, 1
  %t66 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t64, 1
  store { i32, { i64, ptr } } %t66, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_185ce8e381582544_cdbb956a2a7d6800)
  unreachable
bb20:
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = icmp eq i64 %t67, 0
  br i1 %t69, label %bb21, label %bb22
bb21:
  store { i64, [2 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [2 x i64] }, ptr %t71, i32 0, i32 0
  store i64 7, ptr %t72
  %t73 = load { i64, [2 x i64] }, ptr %t71
  store { i64, [2 x i64] } %t73, ptr %l31
  %t74 = call ptr @__olang_errpay_push()
  %t75 = ptrtoint ptr %t74 to i64
  store i64 %t75, ptr %l32, !tbaa !24
  %t76 = load i64, ptr %l32
  %t77 = inttoptr i64 %t76 to ptr
  %t79 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %t77, ptr %l31)
  store { i64, [2 x i64] } %t79, ptr %l34
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t80 = load { i64, [2 x i64] }, ptr %l34
  %t81 = load i64, ptr %l32
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = call ptr @__olang_scope_alloc_a(ptr %t82, i64 24, i64 8)
  store { i64, [2 x i64] } %t80, ptr %t83
  call void @__olang_errpay_set(ptr %t83)
  %t86 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65543, 0
  store { i32, { i64, ptr } } %t86, ptr %rv
  br label %ret
bb24:
  %t87 = call i1 @std_2fnet_2einterrupted()
  store i1 %t87, ptr %l37
  br label %bb25
bb25:
  %t88 = load i1, ptr %l37, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb26, label %bb27
bb26:
  %t91 = call i32 @__olang_err()
  store i32 %t91, ptr %l39
  br label %bb28
bb27:
  br label %bb32
bb28:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t93 = load i32, ptr %l39, !tbaa !23
  %t95 = call i32 @std_2fnet_2eraise(i32 %t93, { i64, ptr } %t92)
  store i32 %t95, ptr %l42
  %t96 = icmp ne i32 %t95, 0
  br i1 %t96, label %bb30, label %ok.97, !prof !99
ok.97:
  br label %bb29
bb29:
  br label %bb31
bb30:
  %t98 = load i32, ptr %l42, !tbaa !23
  %t99 = lshr i32 %t98, 16
  %t100 = and i32 %t98, 65535
  %t101 = icmp eq i32 %t99, 1
  %t102 = select i1 %t101, i32 1, i32 0
  %t103 = icmp eq i32 %t98, 0
  %t104 = shl i32 %t102, 16
  %t105 = or i32 %t104, %t100
  %t106 = select i1 %t103, i32 0, i32 %t105
  %t108 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t106, 0
  store { i32, { i64, ptr } } %t108, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  br label %bb10
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, %"std/net:Addr" } @std_2fnet_2estd_2fnet_3aConn_2eRemote(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/net:Addr"
  %l4 = alloca %"std/net:Addr"
  %l5 = alloca i32
  %rv = alloca { i32, %"std/net:Addr" }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/net:Conn", ptr %a0, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = call { i32, %"std/net:Addr" } @std_2fnet_2eAddr_2enameOf(i32 %t4, i1 true)
  %t7 = extractvalue { i32, %"std/net:Addr" } %t6, 1
  %t8 = extractvalue { i32, %"std/net:Addr" } %t6, 0
  store i32 %t8, ptr %l5
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store %"std/net:Addr" %t7, ptr %l4
  br label %bb1
bb1:
  %t11 = load %"std/net:Addr", ptr %l4
  store %"std/net:Addr" %t11, ptr %l1
  br label %bb3
bb2:
  %t12 = load i32, ptr %l5, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  %t22 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 %t20, 0
  store { i32, %"std/net:Addr" } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load %"std/net:Addr", ptr %l1
  %t24 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, %"std/net:Addr" %t23, 1
  store { i32, %"std/net:Addr" } %t24, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:Addr" }, ptr %rv
  ret { i32, %"std/net:Addr" } %rr
}

define dso_local void @std_2fnet_2estd_2fnet_3aConn_2eSetTimeout(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca [16 x i8]
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca i64
  %l54 = alloca i64
  %l65 = alloca i32
  %l71 = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [16 x i8] undef, i8 0, 0
  %t2 = insertvalue [16 x i8] %t1, i8 0, 1
  %t3 = insertvalue [16 x i8] %t2, i8 0, 2
  %t4 = insertvalue [16 x i8] %t3, i8 0, 3
  %t5 = insertvalue [16 x i8] %t4, i8 0, 4
  %t6 = insertvalue [16 x i8] %t5, i8 0, 5
  %t7 = insertvalue [16 x i8] %t6, i8 0, 6
  %t8 = insertvalue [16 x i8] %t7, i8 0, 7
  %t9 = insertvalue [16 x i8] %t8, i8 0, 8
  %t10 = insertvalue [16 x i8] %t9, i8 0, 9
  %t11 = insertvalue [16 x i8] %t10, i8 0, 10
  %t12 = insertvalue [16 x i8] %t11, i8 0, 11
  %t13 = insertvalue [16 x i8] %t12, i8 0, 12
  %t14 = insertvalue [16 x i8] %t13, i8 0, 13
  %t15 = insertvalue [16 x i8] %t14, i8 0, 14
  %t16 = insertvalue [16 x i8] %t15, i8 0, 15
  store [16 x i8] %t16, ptr %l2
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = sdiv i64 %t18, 1000000000
  store i64 %t21, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = srem i64 %t23, 1000000000
  %t28 = sdiv i64 %t26, 1000
  store i64 %t28, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i64 8, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb1, label %bb2
bb1:
  %t36 = load i64, ptr %l7, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb3:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l25, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb5
bb5:
  %t56 = load i64, ptr %l25, !tbaa !24
  store i64 %t56, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t57 = load i64, ptr %l22, !tbaa !24
  store i64 %t57, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t58 = load i64, ptr %l9, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t66 = load i64, ptr %l5, !tbaa !24
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  store i64 %t74, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l10, !tbaa !24
  %t77 = load i64, ptr %l3, !tbaa !24
  %t78 = load i64, ptr %l10, !tbaa !24
  %t80 = mul i64 8, %t78
  store i64 %t80, ptr %l46, !tbaa !24
  %t82 = load i64, ptr %l46, !tbaa !24
  %t83 = load i64, ptr %l46, !tbaa !24
  %t84 = ashr i64 %t77, %t83
  %t86 = and i64 %t84, 255
  %t88 = trunc i64 %t86 to i8
  %t91 = getelementptr [16 x i8], ptr %l2, i64 0, i64 %t76
  store i8 %t88, ptr %t91, !tbaa !32
  %t92 = load i64, ptr %l10, !tbaa !24
  %t94 = add i64 8, %t92
  %t95 = load i64, ptr %l4, !tbaa !24
  %t96 = load i64, ptr %l10, !tbaa !24
  %t98 = mul i64 8, %t96
  store i64 %t98, ptr %l54, !tbaa !24
  %t100 = load i64, ptr %l54, !tbaa !24
  %t101 = load i64, ptr %l54, !tbaa !24
  %t102 = ashr i64 %t95, %t101
  %t104 = and i64 %t102, 255
  %t106 = trunc i64 %t104 to i8
  %t109 = getelementptr [16 x i8], ptr %l2, i64 0, i64 %t94
  store i8 %t106, ptr %t109, !tbaa !32
  br label %bb11
bb11:
  %t110 = load i64, ptr %l9, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l9, !tbaa !24
  br label %bb7
bb12:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"std/net:Conn", ptr %t114, i32 0, i32 0
  %t117 = load i32, ptr %t116, !tbaa !23
  %t118 = load i32, ptr @G_2estd_2fnet_2esolSocket, !tbaa !23
  %t119 = load i32, ptr @G_2estd_2fnet_2esoRcvtimeo, !tbaa !23
  %t124 = call i32 @setsockopt(i32 %t117, i32 %t118, i32 %t119, ptr %l2, i32 16)
  store i32 %t124, ptr %l65
  br label %bb13
bb13:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"std/net:Conn", ptr %t125, i32 0, i32 0
  %t128 = load i32, ptr %t127, !tbaa !23
  %t129 = load i32, ptr @G_2estd_2fnet_2esolSocket, !tbaa !23
  %t130 = load i32, ptr @G_2estd_2fnet_2esoSndtimeo, !tbaa !23
  %t135 = call i32 @setsockopt(i32 %t128, i32 %t129, i32 %t130, ptr %l2, i32 16)
  store i32 %t135, ptr %l71
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local i32 @std_2fnet_2estd_2fnet_3aConn_2eWrite(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l27 = alloca i64
  %l33 = alloca i1
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l38 = alloca i32
  %rv = alloca i32
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t7 = icmp slt i64 %t1, %t4
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %bb24
bb3:
  br label %bb4
bb4:
  %t13 = getelementptr %"std/net:Conn", ptr %a0, i32 0, i32 0
  %t14 = load i32, ptr %t13, !tbaa !23
  store i32 %t14, ptr %l10, !tbaa !23
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t15, ptr %l11, !tbaa !27
  %t16 = load i64, ptr %l2, !tbaa !24
  store i64 %t16, ptr %l12, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t17, 0
  store i64 %t20, ptr %l15, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  store i64 %t22, ptr %l16, !tbaa !24
  %t23 = load i64, ptr %l12, !tbaa !24
  %t24 = icmp sge i64 %t23, 0
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load i64, ptr %l12, !tbaa !24
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = icmp sle i64 %t26, %t27
  br i1 %t28, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_f586f295cd339b44_dfef29ed04e9a840)
  unreachable
bb7:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = load i64, ptr %l16, !tbaa !24
  %t32 = icmp sle i64 %t30, %t31
  br i1 %t32, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_f586f295cd339b44_dfef29ed04e9a840)
  unreachable
bb9:
  %t34 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = load i64, ptr %l12, !tbaa !24
  %t37 = load i64, ptr %l15, !tbaa !24
  %t38 = getelementptr i8, ptr %t35, i64 %t36
  %t39 = sub i64 %t37, %t36
  %t40 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t38, 1
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t50 = load i32, ptr @G_2estd_2fnet_2emsgNosignal, !tbaa !23
  %t51 = load i32, ptr %l10, !tbaa !23
  %t53 = extractvalue { i64, ptr } %t41, 1
  %t54 = extractvalue { i64, ptr } %t41, 0
  %t57 = call i64 @send(i32 %t51, ptr %t53, i64 %t48, i32 %t50)
  store i64 %t57, ptr %l27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_f586f295cd339b44_dfef29ed04e9a840)
  unreachable
bb11:
  %t58 = load i64, ptr %l27, !tbaa !24
  store i64 %t58, ptr %l3, !tbaa !24
  %t59 = load i64, ptr %l3, !tbaa !24
  %t61 = icmp sge i64 %t59, 0
  br i1 %t61, label %bb12, label %bb13
bb12:
  %t63 = load i64, ptr %l2, !tbaa !24
  %t64 = load i64, ptr %l3, !tbaa !24
  %t67 = add i64 %t63, %t64
  store i64 %t67, ptr %l2, !tbaa !24
  br label %bb22
bb13:
  %t69 = call i1 @std_2fnet_2einterrupted()
  store i1 %t69, ptr %l33
  br label %bb14
bb14:
  %t70 = load i1, ptr %l33, !tbaa !21
  %t71 = xor i1 %t70, true
  br i1 %t71, label %bb15, label %bb16
bb15:
  %t73 = call i32 @__olang_err()
  store i32 %t73, ptr %l35
  br label %bb17
bb16:
  br label %bb21
bb17:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t75 = load i32, ptr %l35, !tbaa !23
  %t77 = call i32 @std_2fnet_2eraise(i32 %t75, { i64, ptr } %t74)
  store i32 %t77, ptr %l38
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb19, label %ok.79, !prof !99
ok.79:
  br label %bb18
bb18:
  br label %bb20
bb19:
  %t80 = load i32, ptr %l38, !tbaa !23
  %t81 = lshr i32 %t80, 16
  %t82 = and i32 %t80, 65535
  %t83 = icmp eq i32 %t81, 1
  %t84 = select i1 %t83, i32 1, i32 0
  %t85 = icmp eq i32 %t80, 0
  %t86 = shl i32 %t84, 16
  %t87 = or i32 %t86, %t82
  %t88 = select i1 %t85, i32 0, i32 %t87
  store i32 %t88, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb1
bb24:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @std_2fnet_2estd_2fnet_3aIP_2eBytes(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/net:IP", ptr %t1, i32 0, i32 0
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i64 16, ptr %l10, !tbaa !24
  br label %bb3
bb2:
  store i64 4, ptr %l10, !tbaa !24
  br label %bb3
bb3:
  %t6 = load i64, ptr %l10, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load i64, ptr %l10, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  %t14 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t14, ptr %lp1
  %t16 = load ptr, ptr %lp1
  store { i64, ptr } %t13, ptr %t16, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t17 = load ptr, ptr %lp1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_c4c0099ed746cf61_f3a8188923e5ddc5)
  unreachable
bb6:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb11
bb8:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l21, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t48 = load i64, ptr %l21, !tbaa !24
  store i64 %t48, ptr %l18, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l18, !tbaa !24
  store i64 %t49, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t58 = load i64, ptr %l2, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = getelementptr %"std/net:IP", ptr %t69, i32 0, i32 1
  %t74 = getelementptr [16 x i8], ptr %t72, i64 0, i64 %t70
  %t75 = load i8, ptr %t74, !tbaa !32
  %t77 = load ptr, ptr %lp1
  %t79 = getelementptr { i64, ptr }, ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i8, ptr %t80, i64 %t68
  store i8 %t75, ptr %t81, !tbaa !32
  br label %bb16
bb16:
  %t82 = load i64, ptr %l6, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l6, !tbaa !24
  br label %bb12
bb17:
  %t86 = load ptr, ptr %lp1
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  store { i64, ptr } %t87, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @std_2fnet_2estd_2fnet_3aIP_2eIsLoopback(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/net:IP", ptr %t1, i32 0, i32 0
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"std/net:IP", ptr %t8, i32 0, i32 1
  %t11 = getelementptr [16 x i8], ptr %t10, i64 0, i64 0
  %t12 = load i8, ptr %t11, !tbaa !32
  %t14 = icmp eq i8 %t12, 127
  store i1 %t14, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l1, !tbaa !24
  store i64 15, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb9
bb6:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l3, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l19, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l19, !tbaa !24
  store i64 %t42, ptr %l16, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l16, !tbaa !24
  store i64 %t43, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb11, label %bb12
bb11:
  br label %bb18
bb12:
  br label %bb13
bb13:
  %t52 = load i64, ptr %l1, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t54 = load i64, ptr %l3, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"std/net:IP", ptr %t62, i32 0, i32 1
  %t67 = getelementptr [16 x i8], ptr %t65, i64 0, i64 %t60
  %t68 = load i8, ptr %t67, !tbaa !32
  %t70 = icmp ne i8 %t68, 0
  br i1 %t70, label %bb14, label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t73 = load i64, ptr %l5, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l5, !tbaa !24
  br label %bb10
bb18:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"std/net:IP", ptr %t77, i32 0, i32 1
  %t80 = getelementptr [16 x i8], ptr %t79, i64 0, i64 15
  %t81 = load i8, ptr %t80, !tbaa !32
  %t83 = icmp eq i8 %t81, 1
  store i1 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @std_2fnet_2estd_2fnet_3aIP_2eStr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca [8 x i64]
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"std/prelude/text:StringBuilder"
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l82 = alloca i1
  %l99 = alloca %"std/prelude/text:StringBuilder"
  %l103 = alloca i64
  %l106 = alloca i64
  %l130 = alloca i1
  %l134 = alloca i1
  %l142 = alloca i1
  %l149 = alloca ptr
  %l151 = alloca i64
  %l152 = alloca i64
  %l153 = alloca i32
  %l154 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/net:IP", ptr %t1, i32 0, i32 0
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"std/net:IP", ptr %t8, i32 0, i32 1
  %t11 = getelementptr [16 x i8], ptr %t10, i64 0, i64 0
  %t12 = load i8, ptr %t11, !tbaa !32
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"std/net:IP", ptr %t13, i32 0, i32 1
  %t16 = getelementptr [16 x i8], ptr %t15, i64 0, i64 1
  %t17 = load i8, ptr %t16, !tbaa !32
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"std/net:IP", ptr %t18, i32 0, i32 1
  %t21 = getelementptr [16 x i8], ptr %t20, i64 0, i64 2
  %t22 = load i8, ptr %t21, !tbaa !32
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"std/net:IP", ptr %t23, i32 0, i32 1
  %t26 = getelementptr [16 x i8], ptr %t25, i64 0, i64 3
  %t27 = load i8, ptr %t26, !tbaa !32
  %t29 = zext i8 %t12 to i64
  %t30 = call i64 @__olang_fmt_u64(ptr null, i64 %t29)
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t33 = add i64 %t30, %t32
  %t35 = zext i8 %t17 to i64
  %t36 = call i64 @__olang_fmt_u64(ptr null, i64 %t35)
  %t37 = add i64 %t33, %t36
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t40 = add i64 %t37, %t39
  %t42 = zext i8 %t22 to i64
  %t43 = call i64 @__olang_fmt_u64(ptr null, i64 %t42)
  %t44 = add i64 %t40, %t43
  %t45 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t49 = zext i8 %t27 to i64
  %t50 = call i64 @__olang_fmt_u64(ptr null, i64 %t49)
  %t51 = add i64 %t47, %t50
  %t52 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t51)
  %t53 = call i64 @__olang_fmt_u64(ptr %t52, i64 %t29)
  %t54 = getelementptr i8, ptr %t52, i64 %t30
  call void @olang_textcopy(ptr %t54, ptr %t31, i64 %t32)
  %t55 = getelementptr i8, ptr %t54, i64 %t32
  %t56 = call i64 @__olang_fmt_u64(ptr %t55, i64 %t35)
  %t57 = getelementptr i8, ptr %t55, i64 %t36
  call void @olang_textcopy(ptr %t57, ptr %t38, i64 %t39)
  %t58 = getelementptr i8, ptr %t57, i64 %t39
  %t59 = call i64 @__olang_fmt_u64(ptr %t58, i64 %t42)
  %t60 = getelementptr i8, ptr %t58, i64 %t43
  call void @olang_textcopy(ptr %t60, ptr %t45, i64 %t46)
  %t61 = getelementptr i8, ptr %t60, i64 %t46
  %t62 = call i64 @__olang_fmt_u64(ptr %t61, i64 %t49)
  %t63 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t52, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t64, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l2, !tbaa !24
  store i64 8, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t66 = load i64, ptr %l3, !tbaa !24
  %t67 = load i64, ptr %l2, !tbaa !24
  %t70 = icmp sgt i64 %t66, %t67
  br i1 %t70, label %bb4, label %bb5
bb4:
  %t72 = load i64, ptr %l4, !tbaa !24
  %t74 = icmp sgt i64 %t72, 0
  br i1 %t74, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb9
bb6:
  %t76 = load i64, ptr %l3, !tbaa !24
  %t77 = load i64, ptr %l2, !tbaa !24
  %t80 = sub i64 %t76, %t77
  %t81 = load i64, ptr %l4, !tbaa !24
  %t84 = add i64 %t80, %t81
  %t86 = sub i64 %t84, 1
  %t87 = load i64, ptr %l4, !tbaa !24
  %t90 = sdiv i64 %t86, %t87
  store i64 %t90, ptr %l37, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb8
bb8:
  %t92 = load i64, ptr %l37, !tbaa !24
  store i64 %t92, ptr %l34, !tbaa !24
  br label %bb9
bb9:
  %t93 = load i64, ptr %l34, !tbaa !24
  store i64 %t93, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb10
bb10:
  %t94 = load i64, ptr %l6, !tbaa !24
  %t95 = load i64, ptr %l5, !tbaa !24
  %t98 = icmp slt i64 %t94, %t95
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t102 = load i64, ptr %l2, !tbaa !24
  %t103 = load i64, ptr %l6, !tbaa !24
  %t104 = load i64, ptr %l4, !tbaa !24
  %t107 = mul i64 %t103, %t104
  %t110 = add i64 %t102, %t107
  store i64 %t110, ptr %l7, !tbaa !24
  %t112 = load i64, ptr %l7, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i64, ptr %l7, !tbaa !24
  %t116 = mul i64 2, %t114
  %t118 = getelementptr %"std/net:IP", ptr %t113, i32 0, i32 1
  %t120 = getelementptr [16 x i8], ptr %t118, i64 0, i64 %t116
  %t121 = load i8, ptr %t120, !tbaa !32
  %t123 = zext i8 %t121 to i64
  %t125 = shl i64 %t123, 8
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load i64, ptr %l7, !tbaa !24
  %t129 = mul i64 2, %t127
  %t131 = add i64 %t129, 1
  %t133 = getelementptr %"std/net:IP", ptr %t126, i32 0, i32 1
  %t135 = getelementptr [16 x i8], ptr %t133, i64 0, i64 %t131
  %t136 = load i8, ptr %t135, !tbaa !32
  %t138 = zext i8 %t136 to i64
  %t141 = or i64 %t125, %t138
  %t144 = getelementptr [8 x i64], ptr %l1, i64 0, i64 %t112
  store i64 %t141, ptr %t144, !tbaa !34
  br label %bb14
bb14:
  %t145 = load i64, ptr %l6, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l6, !tbaa !24
  br label %bb10
bb15:
  store i64 -1, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb16
bb16:
  %t149 = load i64, ptr %l10, !tbaa !24
  %t151 = icmp slt i64 %t149, 8
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb17, label %bb18
bb17:
  br label %bb36
bb18:
  br label %bb19
bb19:
  %t155 = load i64, ptr %l10, !tbaa !24
  %t157 = getelementptr [8 x i64], ptr %l1, i64 0, i64 %t155
  %t158 = load i64, ptr %t157, !tbaa !34
  %t160 = icmp ne i64 %t158, 0
  br i1 %t160, label %bb20, label %bb21
bb20:
  %t162 = load i64, ptr %l10, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l10, !tbaa !24
  br label %bb35
bb21:
  br label %bb22
bb22:
  %t166 = load i64, ptr %l10, !tbaa !24
  store i64 %t166, ptr %l11, !tbaa !24
  br label %bb23
bb23:
  %t168 = load i64, ptr %l11, !tbaa !24
  %t170 = icmp slt i64 %t168, 8
  br i1 %t170, label %bb24, label %bb25
bb24:
  %t172 = load i64, ptr %l11, !tbaa !24
  %t174 = getelementptr [8 x i64], ptr %l1, i64 0, i64 %t172
  %t175 = load i64, ptr %t174, !tbaa !34
  %t177 = icmp eq i64 %t175, 0
  store i1 %t177, ptr %l82, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb26
bb26:
  %t179 = load i1, ptr %l82, !tbaa !21
  %t180 = xor i1 %t179, true
  br i1 %t180, label %bb27, label %bb28
bb27:
  br label %bb31
bb28:
  br label %bb29
bb29:
  %t182 = load i64, ptr %l11, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l11, !tbaa !24
  br label %bb30
bb30:
  br label %bb23
bb31:
  %t186 = load i64, ptr %l11, !tbaa !24
  %t187 = load i64, ptr %l10, !tbaa !24
  %t190 = sub i64 %t186, %t187
  %t191 = load i64, ptr %l9, !tbaa !24
  %t194 = icmp sgt i64 %t190, %t191
  br i1 %t194, label %bb32, label %bb33
bb32:
  %t196 = load i64, ptr %l10, !tbaa !24
  store i64 %t196, ptr %l8, !tbaa !24
  %t198 = load i64, ptr %l11, !tbaa !24
  %t199 = load i64, ptr %l10, !tbaa !24
  %t202 = sub i64 %t198, %t199
  store i64 %t202, ptr %l9, !tbaa !24
  br label %bb34
bb33:
  br label %bb34
bb34:
  %t204 = load i64, ptr %l11, !tbaa !24
  store i64 %t204, ptr %l10, !tbaa !24
  br label %bb35
bb35:
  br label %bb16
bb36:
  %t206 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t206, ptr %l99
  br label %bb37
bb37:
  %t207 = load %"std/prelude/text:StringBuilder", ptr %l99
  store %"std/prelude/text:StringBuilder" %t207, ptr %l12
  store i64 0, ptr %l13, !tbaa !24
  store i64 8, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t208 = load i64, ptr %l14, !tbaa !24
  %t209 = load i64, ptr %l13, !tbaa !24
  %t212 = icmp sgt i64 %t208, %t209
  br i1 %t212, label %bb38, label %bb39
bb38:
  %t214 = load i64, ptr %l15, !tbaa !24
  %t216 = icmp sgt i64 %t214, 0
  br i1 %t216, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l103, !tbaa !24
  br label %bb43
bb40:
  %t218 = load i64, ptr %l14, !tbaa !24
  %t219 = load i64, ptr %l13, !tbaa !24
  %t222 = sub i64 %t218, %t219
  %t223 = load i64, ptr %l15, !tbaa !24
  %t226 = add i64 %t222, %t223
  %t228 = sub i64 %t226, 1
  %t229 = load i64, ptr %l15, !tbaa !24
  %t232 = sdiv i64 %t228, %t229
  store i64 %t232, ptr %l106, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l106, !tbaa !24
  br label %bb42
bb42:
  %t234 = load i64, ptr %l106, !tbaa !24
  store i64 %t234, ptr %l103, !tbaa !24
  br label %bb43
bb43:
  %t235 = load i64, ptr %l103, !tbaa !24
  store i64 %t235, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s11
  %t236 = load i64, ptr %l17, !tbaa !24
  %t237 = load i64, ptr %l16, !tbaa !24
  %t240 = icmp slt i64 %t236, %t237
  %t242 = xor i1 %t240, true
  br i1 %t242, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s11)
  br label %bb73
bb46:
  br label %bb47
bb47:
  %t244 = load i64, ptr %l13, !tbaa !24
  %t245 = load i64, ptr %l17, !tbaa !24
  %t246 = load i64, ptr %l15, !tbaa !24
  %t249 = mul i64 %t245, %t246
  %t252 = add i64 %t244, %t249
  store i64 %t252, ptr %l18, !tbaa !24
  %t254 = load i64, ptr %l18, !tbaa !24
  %t255 = load i64, ptr %l8, !tbaa !24
  %t258 = icmp eq i64 %t254, %t255
  br i1 %t258, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s12
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %l12, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) })
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s11)
  br label %bb72
bb51:
  %t261 = load i64, ptr %l8, !tbaa !24
  %t263 = icmp sge i64 %t261, 0
  br i1 %t263, label %bb52, label %bb53
bb52:
  %t265 = load i64, ptr %l18, !tbaa !24
  %t266 = load i64, ptr %l8, !tbaa !24
  %t269 = icmp sgt i64 %t265, %t266
  store i1 %t269, ptr %l130, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb54
bb54:
  %t271 = load i1, ptr %l130, !tbaa !21
  br i1 %t271, label %bb55, label %bb56
bb55:
  %t272 = load i64, ptr %l18, !tbaa !24
  %t273 = load i64, ptr %l8, !tbaa !24
  %t274 = load i64, ptr %l9, !tbaa !24
  %t277 = add i64 %t273, %t274
  %t280 = icmp slt i64 %t272, %t277
  store i1 %t280, ptr %l134, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb57
bb57:
  %t282 = load i1, ptr %l134, !tbaa !21
  br i1 %t282, label %bb58, label %bb59
bb58:
  call void @__olang_scope_close(ptr %s11)
  br label %bb72
bb59:
  br label %bb60
bb60:
  %t283 = load i64, ptr %l18, !tbaa !24
  %t285 = icmp sgt i64 %t283, 0
  br i1 %t285, label %bb61, label %bb62
bb61:
  %t287 = load i64, ptr %l18, !tbaa !24
  %t288 = load i64, ptr %l8, !tbaa !24
  %t289 = load i64, ptr %l9, !tbaa !24
  %t292 = add i64 %t288, %t289
  %t295 = icmp ne i64 %t287, %t292
  store i1 %t295, ptr %l142, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l142, !tbaa !21
  br label %bb63
bb63:
  %t297 = load i1, ptr %l142, !tbaa !21
  br i1 %t297, label %bb64, label %bb65
bb64:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l12, i8 58)
  br label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb67
bb67:
  store ptr %l12, ptr %l149, !tbaa !29
  %t299 = load i64, ptr %l18, !tbaa !24
  %t301 = getelementptr [8 x i64], ptr %l1, i64 0, i64 %t299
  %t302 = load i64, ptr %t301, !tbaa !34
  store i64 %t302, ptr %l151, !tbaa !24
  %t303 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s11, i64 16)
  %t304 = extractvalue { i32, i64 } %t303, 1
  %t305 = extractvalue { i32, i64 } %t303, 0
  store i32 %t305, ptr %l153
  %t306 = icmp ne i32 %t305, 0
  br i1 %t306, label %bb69, label %ok.307, !prof !99
ok.307:
  store i64 %t304, ptr %l152
  br label %bb68
bb68:
  %t308 = load i64, ptr %l151, !tbaa !24
  %t309 = load i64, ptr %l152, !tbaa !24
  %t310 = call { i64, ptr } @std_2fprelude_2ftext_2eI64_2eFormat(ptr %s11, i64 %t308, i64 %t309)
  store { i64, ptr } %t310, ptr %l154
  br label %bb70
bb69:
  call void @__olang_check_failed(ptr @olang_loc_2226b004e1161b9e_260abf21839543b2)
  unreachable
bb70:
  %t311 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t311, 0
  %t313 = extractvalue { i64, ptr } %t311, 1
  %t314 = mul i64 %t312, 1
  %t315 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t314)
  call void @llvm.memcpy.p0.p0.i64(ptr %t315, ptr %t313, i64 %t314, i1 false)
  %t316 = insertvalue { i64, ptr } undef, i64 %t312, 0
  %t317 = insertvalue { i64, ptr } %t316, ptr %t315, 1
  %t318 = load ptr, ptr %l149, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %t318, { i64, ptr } %t317)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s11)
  br label %bb72
bb72:
  %t320 = load i64, ptr %l17, !tbaa !24
  %t322 = add i64 %t320, 1
  store i64 %t322, ptr %l17, !tbaa !24
  br label %bb44
bb73:
  %t325 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l12)
  store { i64, ptr } %t325, ptr %l159
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s0)
  %t326 = load { i64, ptr }, ptr %l159, !tbaa !27
  store { i64, ptr } %t326, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, %"std/net:Conn" } @std_2fnet_2estd_2fnet_3aListener_2eAccept(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca [28 x i8]
  %l2 = alloca [1 x i32]
  %l3 = alloca i32
  %l4 = alloca [28 x i8]
  %l12 = alloca i32
  %l16 = alloca %"std/net:Conn"
  %l17 = alloca i1
  %l19 = alloca i32
  %l20 = alloca { i64, ptr }
  %l22 = alloca i32
  %s2 = alloca %olang.scope
  %rv = alloca { i32, %"std/net:Conn" }
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 28
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [28 x i8], ptr %l4, i64 0, i64 %t5
  store i8 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  %t9 = load [28 x i8], ptr %l4
  store [28 x i8] %t9, ptr %l1
  %t10 = insertvalue [1 x i32] undef, i32 28, 0
  store [1 x i32] %t10, ptr %l2
  %t14 = getelementptr %"std/net:Listener", ptr %a0, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  %t17 = insertvalue { i64, ptr } undef, i64 1, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %l2, 1
  %t19 = load i32, ptr @G_2estd_2fnet_2esockCloexec, !tbaa !23
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = extractvalue { i64, ptr } %t18, 0
  %t26 = call i32 @accept4(i32 %t15, ptr %l1, ptr %t23, i32 %t19)
  store i32 %t26, ptr %l12
  br label %bb2
bb2:
  %t27 = load i32, ptr %l12, !tbaa !23
  store i32 %t27, ptr %l3, !tbaa !23
  %t28 = load i32, ptr %l3, !tbaa !23
  %t30 = icmp sge i32 %t28, 0
  br i1 %t30, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t32 = load i32, ptr %l3, !tbaa !23
  %t34 = call %"std/net:Conn" @std_2fnet_3aConn_2ector(ptr %s2, i32 %t32)
  store %"std/net:Conn" %t34, ptr %l16
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  %t35 = load %"std/net:Conn", ptr %l16
  %t36 = insertvalue { i32, %"std/net:Conn" } zeroinitializer, %"std/net:Conn" %t35, 1
  store { i32, %"std/net:Conn" } %t36, ptr %rv
  br label %ret
bb6:
  %t37 = call i1 @std_2fnet_2einterrupted()
  store i1 %t37, ptr %l17
  br label %bb7
bb7:
  %t38 = load i1, ptr %l17, !tbaa !21
  %t39 = xor i1 %t38, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t41 = call i32 @__olang_err()
  store i32 %t41, ptr %l19
  br label %bb10
bb9:
  br label %bb14
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t43 = load i32, ptr %l19, !tbaa !23
  %t45 = call i32 @std_2fnet_2eraise(i32 %t43, { i64, ptr } %t42)
  store i32 %t45, ptr %l22
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb12, label %ok.47, !prof !99
ok.47:
  br label %bb11
bb11:
  br label %bb13
bb12:
  %t48 = load i32, ptr %l22, !tbaa !23
  %t49 = lshr i32 %t48, 16
  %t50 = and i32 %t48, 65535
  %t51 = icmp eq i32 %t49, 1
  %t52 = select i1 %t51, i32 1, i32 0
  %t53 = icmp eq i32 %t48, 0
  %t54 = shl i32 %t52, 16
  %t55 = or i32 %t54, %t50
  %t56 = select i1 %t53, i32 0, i32 %t55
  %t58 = insertvalue { i32, %"std/net:Conn" } zeroinitializer, i32 %t56, 0
  store { i32, %"std/net:Conn" } %t58, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb1
ret:
  %rr = load { i32, %"std/net:Conn" }, ptr %rv
  ret { i32, %"std/net:Conn" } %rr
}

define dso_local { i32, %"std/net:Addr" } @std_2fnet_2estd_2fnet_3aListener_2eAddr(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/net:Addr"
  %l4 = alloca %"std/net:Addr"
  %l5 = alloca i32
  %rv = alloca { i32, %"std/net:Addr" }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/net:Listener", ptr %a0, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = call { i32, %"std/net:Addr" } @std_2fnet_2eAddr_2enameOf(i32 %t4, i1 false)
  %t7 = extractvalue { i32, %"std/net:Addr" } %t6, 1
  %t8 = extractvalue { i32, %"std/net:Addr" } %t6, 0
  store i32 %t8, ptr %l5
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store %"std/net:Addr" %t7, ptr %l4
  br label %bb1
bb1:
  %t11 = load %"std/net:Addr", ptr %l4
  store %"std/net:Addr" %t11, ptr %l1
  br label %bb3
bb2:
  %t12 = load i32, ptr %l5, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  %t22 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 %t20, 0
  store { i32, %"std/net:Addr" } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load %"std/net:Addr", ptr %l1
  %t24 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, %"std/net:Addr" %t23, 1
  store { i32, %"std/net:Addr" } %t24, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:Addr" }, ptr %rv
  ret { i32, %"std/net:Addr" } %rr
}

define dso_local i32 @std_2fnet_2estd_2fnet_3aListener_2eFd(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/net:Listener", ptr %a0, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  store i32 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, %"std/net:Addr" } @std_2fnet_2estd_2fnet_3aUDP_2eLocal(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/net:Addr"
  %l4 = alloca %"std/net:Addr"
  %l5 = alloca i32
  %rv = alloca { i32, %"std/net:Addr" }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/net:UDP", ptr %a0, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = call { i32, %"std/net:Addr" } @std_2fnet_2eAddr_2enameOf(i32 %t4, i1 false)
  %t7 = extractvalue { i32, %"std/net:Addr" } %t6, 1
  %t8 = extractvalue { i32, %"std/net:Addr" } %t6, 0
  store i32 %t8, ptr %l5
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store %"std/net:Addr" %t7, ptr %l4
  br label %bb1
bb1:
  %t11 = load %"std/net:Addr", ptr %l4
  store %"std/net:Addr" %t11, ptr %l1
  br label %bb3
bb2:
  %t12 = load i32, ptr %l5, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  %t22 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, i32 %t20, 0
  store { i32, %"std/net:Addr" } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load %"std/net:Addr", ptr %l1
  %t24 = insertvalue { i32, %"std/net:Addr" } zeroinitializer, %"std/net:Addr" %t23, 1
  store { i32, %"std/net:Addr" } %t24, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/net:Addr" }, ptr %rv
  ret { i32, %"std/net:Addr" } %rr
}

define dso_local { i32, { { i64, ptr }, %"std/net:Addr" } } @std_2fnet_2estd_2fnet_3aUDP_2eRecvFrom(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca [28 x i8]
  %l3 = alloca [1 x i32]
  %l4 = alloca i64
  %l5 = alloca [28 x i8]
  %l16 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l25 = alloca { i64, ptr }
  %l28 = alloca %"std/net:Addr"
  %l30 = alloca i1
  %l32 = alloca i32
  %l33 = alloca { i64, ptr }
  %l35 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca { i32, { { i64, ptr }, %"std/net:Addr" } }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 28
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [28 x i8], ptr %l5, i64 0, i64 %t5
  store i8 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  %t9 = load [28 x i8], ptr %l5
  store [28 x i8] %t9, ptr %l2
  %t10 = insertvalue [1 x i32] undef, i32 28, 0
  store [1 x i32] %t10, ptr %l3
  %t14 = getelementptr %"std/net:UDP", ptr %a0, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t22 = insertvalue { i64, ptr } undef, i64 1, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %l3, 1
  %t26 = extractvalue { i64, ptr } %t16, 1
  %t27 = extractvalue { i64, ptr } %t16, 0
  %t31 = extractvalue { i64, ptr } %t23, 1
  %t32 = extractvalue { i64, ptr } %t23, 0
  %t33 = call i64 @recvfrom(i32 %t15, ptr %t26, i64 %t19, i32 0, ptr %l2, ptr %t31)
  store i64 %t33, ptr %l16
  br label %bb2
bb2:
  %t34 = load i64, ptr %l16, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp sge i64 %t35, 0
  br i1 %t37, label %bb3, label %bb4
bb3:
  %t39 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t39, ptr %l19, !tbaa !27
  %t40 = load i64, ptr %l4, !tbaa !24
  store i64 %t40, ptr %l20, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l21, !tbaa !24
  %t43 = icmp sge i64 0, 0
  br i1 %t43, label %bb5, label %bb6
bb4:
  br label %bb12
bb5:
  %t45 = load i64, ptr %l20, !tbaa !24
  %t46 = icmp sle i64 0, %t45
  br i1 %t46, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_4e1638ec2ac13854_38df9045e4ebdb28)
  unreachable
bb7:
  %t48 = load i64, ptr %l20, !tbaa !24
  %t49 = load i64, ptr %l21, !tbaa !24
  %t50 = icmp sle i64 %t48, %t49
  br i1 %t50, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_4e1638ec2ac13854_38df9045e4ebdb28)
  unreachable
bb9:
  %t52 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = load i64, ptr %l20, !tbaa !24
  %t55 = getelementptr i8, ptr %t53, i64 0
  %t56 = sub i64 %t54, 0
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  store { i64, ptr } %t58, ptr %l25, !tbaa !27
  %t60 = insertvalue { i64, ptr } undef, i64 28, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %l2, 1
  %t63 = call %"std/net:Addr" @std_2fnet_2eAddr_2efromSockaddr(ptr %s1, { i64, ptr } %t61)
  store %"std/net:Addr" %t63, ptr %l28
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_4e1638ec2ac13854_38df9045e4ebdb28)
  unreachable
bb11:
  %t64 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t65 = insertvalue { { i64, ptr }, %"std/net:Addr" } undef, { i64, ptr } %t64, 0
  %t66 = load %"std/net:Addr", ptr %l28
  %t67 = insertvalue { { i64, ptr }, %"std/net:Addr" } %t65, %"std/net:Addr" %t66, 1
  call void @__olang_scope_close(ptr %s1)
  %t69 = insertvalue { i32, { { i64, ptr }, %"std/net:Addr" } } zeroinitializer, { { i64, ptr }, %"std/net:Addr" } %t67, 1
  store { i32, { { i64, ptr }, %"std/net:Addr" } } %t69, ptr %rv
  br label %ret
bb12:
  %t70 = call i1 @std_2fnet_2einterrupted()
  store i1 %t70, ptr %l30
  br label %bb13
bb13:
  %t71 = load i1, ptr %l30, !tbaa !21
  %t72 = xor i1 %t71, true
  br i1 %t72, label %bb14, label %bb15
bb14:
  %t74 = call i32 @__olang_err()
  store i32 %t74, ptr %l32
  br label %bb16
bb15:
  br label %bb20
bb16:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t76 = load i32, ptr %l32, !tbaa !23
  %t78 = call i32 @std_2fnet_2eraise(i32 %t76, { i64, ptr } %t75)
  store i32 %t78, ptr %l35
  %t79 = icmp ne i32 %t78, 0
  br i1 %t79, label %bb18, label %ok.80, !prof !99
ok.80:
  br label %bb17
bb17:
  br label %bb19
bb18:
  %t81 = load i32, ptr %l35, !tbaa !23
  %t82 = lshr i32 %t81, 16
  %t83 = and i32 %t81, 65535
  %t84 = icmp eq i32 %t82, 1
  %t85 = select i1 %t84, i32 1, i32 0
  %t86 = icmp eq i32 %t81, 0
  %t87 = shl i32 %t85, 16
  %t88 = or i32 %t87, %t83
  %t89 = select i1 %t86, i32 0, i32 %t88
  call void @__olang_scope_close(ptr %s1)
  %t91 = insertvalue { i32, { { i64, ptr }, %"std/net:Addr" } } zeroinitializer, i32 %t89, 0
  store { i32, { { i64, ptr }, %"std/net:Addr" } } %t91, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb21:
  br label %bb1
ret:
  %rr = load { i32, { { i64, ptr }, %"std/net:Addr" } }, ptr %rv
  ret { i32, { { i64, ptr }, %"std/net:Addr" } } %rr
}

define dso_local i32 @std_2fnet_2estd_2fnet_3aUDP_2eSendTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l19 = alloca i64
  %l22 = alloca i1
  %l24 = alloca i32
  %l25 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.builder
  %s3room = alloca [64 x i8], align 8
  %rv = alloca i32
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call { i64, ptr } @std_2fnet_2esockaddr(ptr %v2, ptr %s0, ptr %t1)
  store { i64, ptr } %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = mul i64 %t6, 1
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  %t9 = insertvalue { i64, ptr } undef, i64 %t6, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  store { i64, ptr } %t10, ptr %l7, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = mul i64 %t15, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t12, ptr %t14, i64 %t16, i1 false)
  %t17 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t17, ptr %l3, !tbaa !27
  br label %bb2
bb2:
  %t20 = getelementptr %"std/net:UDP", ptr %a0, i32 0, i32 0
  %t21 = load i32, ptr %t20, !tbaa !23
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t27 = load i32, ptr @G_2estd_2fnet_2emsgNosignal, !tbaa !23
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t33 = trunc i64 %t31 to i32
  %t36 = extractvalue { i64, ptr } %t22, 1
  %t37 = extractvalue { i64, ptr } %t22, 0
  %t41 = extractvalue { i64, ptr } %t28, 1
  %t42 = extractvalue { i64, ptr } %t28, 0
  %t44 = call i64 @sendto(i32 %t21, ptr %t36, i64 %t25, i32 %t27, ptr %t41, i32 %t33)
  store i64 %t44, ptr %l19
  br label %bb3
bb3:
  %t45 = load i64, ptr %l19, !tbaa !24
  %t46 = icmp slt i64 %t45, 0
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb4, label %bb5
bb4:
  br label %bb17
bb5:
  br label %bb6
bb6:
  %t50 = call i1 @std_2fnet_2einterrupted()
  store i1 %t50, ptr %l22
  br label %bb7
bb7:
  %t51 = load i1, ptr %l22, !tbaa !21
  %t52 = xor i1 %t51, true
  br i1 %t52, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t54 = call i32 @__olang_err()
  store i32 %t54, ptr %l24
  br label %bb10
bb9:
  br label %bb15
bb10:
  %t55 = load ptr, ptr %l2, !tbaa !29
  store ptr %t55, ptr %l25, !tbaa !29
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s3
  store ptr %s3room, ptr %s3
  call void @olang_2emir_2eHelperKind_2eRender_2estd_2fnet_3aAddr_26(ptr %s3, ptr %l25, i64 0)
  br label %bb11
bb11:
  %t57 = load ptr, ptr %s3
  %t58 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t59 = load i64, ptr %t58
  %t60 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t59)
  call void @olang_textcopy(ptr %t60, ptr %t57, i64 %t59)
  %t61 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  store { i64, ptr } %t62, ptr %l27, !tbaa !27
  %t63 = getelementptr %olang.builder, ptr %s3, i32 0, i32 3
  %t64 = load ptr, ptr %t63
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %sbgrew.66, label %sbdone.67
sbgrew.66:
  call void @__olang_sb_done(ptr %s3)
  br label %sbdone.67
sbdone.67:
  %t68 = load i32, ptr %l24, !tbaa !23
  %t69 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t70 = call i32 @std_2fnet_2eraise(i32 %t68, { i64, ptr } %t69)
  store i32 %t70, ptr %l28
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb13, label %ok.72, !prof !99
ok.72:
  br label %bb12
bb12:
  br label %bb14
bb13:
  %t73 = load i32, ptr %l28, !tbaa !23
  %t74 = lshr i32 %t73, 16
  %t75 = and i32 %t73, 65535
  %t76 = icmp eq i32 %t74, 1
  %t77 = select i1 %t76, i32 1, i32 0
  %t78 = icmp eq i32 %t73, 0
  %t79 = shl i32 %t77, 16
  %t80 = or i32 %t79, %t75
  %t81 = select i1 %t78, i32 0, i32 %t80
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t81, ptr %rv
  br label %ret
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  br label %bb16
bb16:
  br label %bb2
bb17:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @std_2fnet_2estd_2fnet_3aUDP_2eSetTimeout(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca [16 x i8]
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca i64
  %l54 = alloca i64
  %l65 = alloca i32
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [16 x i8] undef, i8 0, 0
  %t2 = insertvalue [16 x i8] %t1, i8 0, 1
  %t3 = insertvalue [16 x i8] %t2, i8 0, 2
  %t4 = insertvalue [16 x i8] %t3, i8 0, 3
  %t5 = insertvalue [16 x i8] %t4, i8 0, 4
  %t6 = insertvalue [16 x i8] %t5, i8 0, 5
  %t7 = insertvalue [16 x i8] %t6, i8 0, 6
  %t8 = insertvalue [16 x i8] %t7, i8 0, 7
  %t9 = insertvalue [16 x i8] %t8, i8 0, 8
  %t10 = insertvalue [16 x i8] %t9, i8 0, 9
  %t11 = insertvalue [16 x i8] %t10, i8 0, 10
  %t12 = insertvalue [16 x i8] %t11, i8 0, 11
  %t13 = insertvalue [16 x i8] %t12, i8 0, 12
  %t14 = insertvalue [16 x i8] %t13, i8 0, 13
  %t15 = insertvalue [16 x i8] %t14, i8 0, 14
  %t16 = insertvalue [16 x i8] %t15, i8 0, 15
  store [16 x i8] %t16, ptr %l2
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = sdiv i64 %t18, 1000000000
  store i64 %t21, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = srem i64 %t23, 1000000000
  %t28 = sdiv i64 %t26, 1000
  store i64 %t28, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i64 8, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb1, label %bb2
bb1:
  %t36 = load i64, ptr %l7, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb3:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l25, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb5
bb5:
  %t56 = load i64, ptr %l25, !tbaa !24
  store i64 %t56, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t57 = load i64, ptr %l22, !tbaa !24
  store i64 %t57, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t58 = load i64, ptr %l9, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t66 = load i64, ptr %l5, !tbaa !24
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  store i64 %t74, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l10, !tbaa !24
  %t77 = load i64, ptr %l3, !tbaa !24
  %t78 = load i64, ptr %l10, !tbaa !24
  %t80 = mul i64 8, %t78
  store i64 %t80, ptr %l46, !tbaa !24
  %t82 = load i64, ptr %l46, !tbaa !24
  %t83 = load i64, ptr %l46, !tbaa !24
  %t84 = ashr i64 %t77, %t83
  %t86 = and i64 %t84, 255
  %t88 = trunc i64 %t86 to i8
  %t91 = getelementptr [16 x i8], ptr %l2, i64 0, i64 %t76
  store i8 %t88, ptr %t91, !tbaa !32
  %t92 = load i64, ptr %l10, !tbaa !24
  %t94 = add i64 8, %t92
  %t95 = load i64, ptr %l4, !tbaa !24
  %t96 = load i64, ptr %l10, !tbaa !24
  %t98 = mul i64 8, %t96
  store i64 %t98, ptr %l54, !tbaa !24
  %t100 = load i64, ptr %l54, !tbaa !24
  %t101 = load i64, ptr %l54, !tbaa !24
  %t102 = ashr i64 %t95, %t101
  %t104 = and i64 %t102, 255
  %t106 = trunc i64 %t104 to i8
  %t109 = getelementptr [16 x i8], ptr %l2, i64 0, i64 %t94
  store i8 %t106, ptr %t109, !tbaa !32
  br label %bb11
bb11:
  %t110 = load i64, ptr %l9, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l9, !tbaa !24
  br label %bb7
bb12:
  %t116 = getelementptr %"std/net:UDP", ptr %a0, i32 0, i32 0
  %t117 = load i32, ptr %t116, !tbaa !23
  %t118 = load i32, ptr @G_2estd_2fnet_2esolSocket, !tbaa !23
  %t119 = load i32, ptr @G_2estd_2fnet_2esoRcvtimeo, !tbaa !23
  %t124 = call i32 @setsockopt(i32 %t117, i32 %t118, i32 %t119, ptr %l2, i32 16)
  store i32 %t124, ptr %l65
  br label %bb13
bb13:
  br label %ret
ret:
  ret void
}

define dso_local %"std/net:Addr" @std_2fnet_3aAddr_2ector(ptr %v0, %"std/net:IP" %a0, i16 %a1) #0 {
entry:
  %rv = alloca %"std/net:Addr"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"std/net:Addr" undef, %"std/net:IP" %a0, 0
  %t8 = insertvalue %"std/net:Addr" %t6, i16 %a1, 1
  store %"std/net:Addr" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/net:Addr", ptr %rv
  ret %"std/net:Addr" %rr
}

define dso_local %"std/net:Conn" @std_2fnet_3aConn_2ector(ptr %v0, i32 %a0) #0 {
entry:
  %rv = alloca %"std/net:Conn"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/net:Conn" undef, i32 %a0, 0
  store %"std/net:Conn" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"std/net:Conn", ptr %rv
  ret %"std/net:Conn" %rr
}

define dso_local void @std_2fnet_3aConn_2edtor(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/net:Conn", ptr %a0, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = call i32 @close(i32 %t4)
  store i32 %t6, ptr %l3
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local %"std/net:IP" @std_2fnet_3aIP_2ector(ptr %v0, i1 %a0) #0 {
entry:
  %rv = alloca %"std/net:IP"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = insertvalue [16 x i8] undef, i8 0, 0
  %t4 = insertvalue [16 x i8] %t3, i8 0, 1
  %t5 = insertvalue [16 x i8] %t4, i8 0, 2
  %t6 = insertvalue [16 x i8] %t5, i8 0, 3
  %t7 = insertvalue [16 x i8] %t6, i8 0, 4
  %t8 = insertvalue [16 x i8] %t7, i8 0, 5
  %t9 = insertvalue [16 x i8] %t8, i8 0, 6
  %t10 = insertvalue [16 x i8] %t9, i8 0, 7
  %t11 = insertvalue [16 x i8] %t10, i8 0, 8
  %t12 = insertvalue [16 x i8] %t11, i8 0, 9
  %t13 = insertvalue [16 x i8] %t12, i8 0, 10
  %t14 = insertvalue [16 x i8] %t13, i8 0, 11
  %t15 = insertvalue [16 x i8] %t14, i8 0, 12
  %t16 = insertvalue [16 x i8] %t15, i8 0, 13
  %t17 = insertvalue [16 x i8] %t16, i8 0, 14
  %t18 = insertvalue [16 x i8] %t17, i8 0, 15
  %t21 = insertvalue %"std/net:IP" undef, i1 %a0, 0
  %t23 = insertvalue %"std/net:IP" %t21, [16 x i8] %t18, 1
  store %"std/net:IP" %t23, ptr %rv
  br label %ret
ret:
  %rr = load %"std/net:IP", ptr %rv
  ret %"std/net:IP" %rr
}

define dso_local %"std/net:Listener" @std_2fnet_3aListener_2ector(ptr %v0, i32 %a0) #0 {
entry:
  %rv = alloca %"std/net:Listener"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/net:Listener" undef, i32 %a0, 0
  store %"std/net:Listener" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"std/net:Listener", ptr %rv
  ret %"std/net:Listener" %rr
}

define dso_local void @std_2fnet_3aListener_2edtor(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/net:Listener", ptr %a0, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = call i32 @close(i32 %t4)
  store i32 %t6, ptr %l3
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local %"std/net:UDP" @std_2fnet_3aUDP_2ector(ptr %v0, i32 %a0) #0 {
entry:
  %rv = alloca %"std/net:UDP"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/net:UDP" undef, i32 %a0, 0
  store %"std/net:UDP" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"std/net:UDP", ptr %rv
  ret %"std/net:UDP" %rr
}

define dso_local void @std_2fnet_3aUDP_2edtor(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/net:UDP", ptr %a0, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = call i32 @close(i32 %t4)
  store i32 %t6, ptr %l3
  br label %bb1
bb1:
  br label %ret
ret:
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @__olang_errpay_push() cold
define linkonce_odr { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fnet_3aError_24payload(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %rv = alloca { i64, [2 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, [2 x i64] }, ptr %a0
  store { i64, [2 x i64] } %t2, ptr %l1
  %t3 = load i64, ptr %l1, !range !{i64 0, i64 10}
  switch i64 %t3, label %bb1 [ i64 5, label %bb2 i64 6, label %bb3 ]
bb1:
  %t5 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t5, ptr %rv
  br label %ret
bb2:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, ptr } }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t24 = getelementptr { { i64, ptr } }, ptr %t23, i32 0, i32 0
  store { i64, ptr } %t22, ptr %t24
  br label %bb1
bb3:
  %t25 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t26 = getelementptr { { i64, ptr } }, ptr %t25, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26
  store { i64, ptr } %t27, ptr %l6, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t31 = mul i64 %t30, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l8, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = mul i64 %t39, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t42 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t43 = getelementptr { { i64, ptr } }, ptr %t42, i32 0, i32 0
  store { i64, ptr } %t41, ptr %t43
  br label %bb1
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
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
declare void @__olang_errpay_set(ptr) cold
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
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare void @__olang_errpay_pop()
declare i32 @getpeername(i32, ptr, ptr)
declare i32 @getsockname(i32, ptr, ptr)
declare i32 @__olang_err()
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i32 @connect(i32, ptr, i32)
declare i32 @close(i32)
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2estd_2fnet_3aAddr_26(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %a0, !tbaa !29
  store ptr %t2, ptr %l2, !tbaa !29
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t4 = icmp ne ptr %t3, null
  br i1 %t4, label %bb1, label %bb3
bb1:
  %t6 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp sge i64 %t6, 8
  br i1 %t7, label %bb4, label %bb5
bb2:
  br label %ret
bb3:
  %t9 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb2
bb4:
  %t11 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb2
bb5:
  %t13 = load i64, ptr %l1, !tbaa !24
  %t14 = add i64 %t13, 1
  store i64 %t14, ptr %l5, !tbaa !24
  %t15 = load ptr, ptr %l2, !tbaa !29
  store ptr %t15, ptr %l6, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l6, !tbaa !29
  %t17 = call ptr @__olang_scope_of(ptr %t16, ptr null)
  %t18 = ptrtoint ptr %t17 to i64
  %t20 = inttoptr i64 %t18 to ptr
  %t21 = load ptr, ptr %l6, !tbaa !29
  %t22 = call { i64, ptr } @std_2fnet_2estd_2fnet_3aAddr_2eStr(ptr %t20, ptr %s1, ptr %t21)
  store { i64, ptr } %t22, ptr %l7
  br label %bb6
bb6:
  %t23 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 1
  %t25 = extractvalue { i64, ptr } %t23, 0
  call void @__olang_sb_put(ptr %v0, ptr %t24, i64 %t25)
  call void @__olang_scope_close(ptr %s1)
  br label %bb2
ret:
  ret void
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
declare void @__olang_sb_done(ptr)
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2eArray_3cU8_3e_26(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %a0, !tbaa !27
  store { i64, ptr } %t2, ptr %l2, !tbaa !27
  br label %bb1
bb1:
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = icmp sge i64 %t3, 8
  br i1 %t4, label %bb3, label %bb4
bb2:
  br label %ret
bb3:
  %t6 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  br label %bb2
bb4:
  %t8 = load i64, ptr %l1, !tbaa !24
  %t9 = add i64 %t8, 1
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @olang_2emir_2eHelperKind_2eRender_2eArray_3cU8_3e(ptr %v0, { i64, ptr } %t10, i64 %t9)
  br label %bb5
bb5:
  br label %bb2
ret:
  ret void
}

@.d3 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"localhost" }>, align 8
@.d4 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"::" }>, align 8
declare i32 @bind(i32, ptr, i32)
declare i32 @listen(i32, i32)
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"localhost" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
declare i32 @getaddrinfo(ptr, ptr, ptr, ptr)
declare ptr @memcpy(ptr, ptr, i64)
declare ptr @memmove(ptr, ptr, i64)
declare void @freeaddrinfo(ptr)
define linkonce_odr %"<poll.h>:pollfd" @olang_2emir_2eHelperKind_2eZero_2e_3cpoll_2eh_3e_3apollfd() #0 {
entry:
  %l0 = alloca %"<poll.h>:pollfd"
  %rv = alloca %"<poll.h>:pollfd"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<poll.h>:pollfd" @_3cpoll_2eh_3e_3apollfd_2ector(ptr %t1)
  store %"<poll.h>:pollfd" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<poll.h>:pollfd", ptr %l0
  store %"<poll.h>:pollfd" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<poll.h>:pollfd", ptr %rv
  ret %"<poll.h>:pollfd" %rr
}

declare i32 @poll(ptr, i64, i32)
declare i32 @socket(i32, i32, i32)
declare i32 @setsockopt(i32, i32, i32, ptr, i32)
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2estd_2fnet_3aIP(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s1
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = call ptr @__olang_scope_of(ptr %t2, ptr null)
  %t4 = ptrtoint ptr %t3 to i64
  %t6 = inttoptr i64 %t4 to ptr
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = call { i64, ptr } @std_2fnet_2estd_2fnet_3aIP_2eStr(ptr %t6, ptr %s1, ptr %t7)
  store { i64, ptr } %t8, ptr %l3
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 1
  %t11 = extractvalue { i64, ptr } %t9, 0
  call void @__olang_sb_put(ptr %v0, ptr %t10, i64 %t11)
  call void @__olang_scope_close(ptr %s1)
  br label %ret
ret:
  ret void
}

@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]:" }>, align 8
define available_externally ptr @__olang_sb_room(ptr %sb, i64 %need) alwaysinline {
entry:
  %lenp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 1
  %capp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 2
  %len = load i64, ptr %lenp
  %cap = load i64, ptr %capp
  %want = add i64 %len, %need
  %fits = icmp ule i64 %want, %cap
  br i1 %fits, label %ok, label %grow
ok:
  %data = load ptr, ptr %sb
  %p = getelementptr i8, ptr %data, i64 %len
  ret ptr %p
grow:
  %g = call ptr @__olang_sb_grow(ptr %sb, i64 %need)
  ret ptr %g
}
declare i64 @__olang_fmt_u64(ptr, i64)
declare void @__olang_sb_add(ptr, i64)
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare i32 @shutdown(i32, i32)
declare i64 @recv(i32, ptr, i64, i32)
declare i64 @send(i32, ptr, i64, i32)
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"::" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare i32 @accept4(i32, ptr, ptr, i32)
declare i64 @recvfrom(i32, ptr, i64, i32, ptr, ptr)
declare i64 @sendto(i32, ptr, i64, i32, ptr, i32)
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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
@.d13 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d14 = private unnamed_addr constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2eArray_3cU8_3e(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t2 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t1, i64 %t2)
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t3, 0
  store i64 %t4, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp slt i64 %t5, %t6
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = icmp eq i64 %t9, 0
  br i1 %t10, label %bb5, label %bb4
bb3:
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t12, i64 %t13)
  br label %ret
bb4:
  %t14 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t14, i64 %t15)
  br label %bb5
bb5:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr i8, ptr %t18, i64 %t16
  %t20 = load i8, ptr %t19, !tbaa !32
  %t22 = zext i8 %t20 to i64
  %t23 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t24 = call i64 @__olang_fmt_u64(ptr %t23, i64 %t22)
  call void @__olang_sb_add(ptr %v0, i64 %t24)
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = add i64 %t25, 1
  store i64 %t26, ptr %l3, !tbaa !24
  br label %bb1
ret:
  ret void
}

@__olang_prog_scope = external thread_local(initialexec) global ptr
declare ptr @__olang_sb_grow(ptr, i64) noinline
@.d15 = private unnamed_addr constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"Array<U8>[" }>, align 8
@.d16 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d17 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_f1d1c13cf3902f30_d152dc4ae276584 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_7b75bbc114d81c9_eaa9ae6a6f8e790d = external constant [0 x i8]
@olang_loc_890a129ff0c26c5c_548b75716a348c30 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_f002e9158933fedd_16edb23c552ec181 = external constant [0 x i8]
@olang_loc_ab8b57281d5db880_ee039328189ec414 = external constant [0 x i8]
@olang_loc_5cec024583c1c07b_b48952299688f87f = external constant [0 x i8]
declare %"<netdb.h>:addrinfo" @_3cnetdb_2eh_3e_3aaddrinfo_2ector(ptr %v0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToC(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fnet_3aIP_3e_2ector(ptr %v0, i64 %a0)
declare i32 @std_2fprelude_2fnumber_2eU32_2eMin_3cU32_3e(i32 %a0, i32 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aIP_3e_2eHas_3cstd_2fnet_3aIP_3e(ptr %v0, ptr %a0, %"std/net:IP" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aIP_3e_2ePush_3cstd_2fnet_3aIP_3e(ptr %v0, ptr %a0, %"std/net:IP" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aIP_3e_2eLen_3cstd_2fnet_3aIP_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fnet_3aIP_3e_2eToArray_3cstd_2fnet_3aIP_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_823ed4750cf5b81d_e4e7fec6767cf5a1 = external constant [0 x i8]
@G_2e_3cpoll_2eh_3e_2ePOLLIN = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_8981c24167caedc7_91d5c812394e4ba3 = external constant [0 x i8]
@olang_loc_bc64e253b1e7f486_2f7ea114c0e9c0f2 = external constant [0 x i8]
@olang_loc_f53fdd983c71e658_198e9c3d6c980e94 = external constant [0 x i8]
@olang_loc_3e2092b4cdfb76b1_123327579653ae5d = external constant [0 x i8]
@olang_loc_185ce8e381582544_cdbb956a2a7d6800 = external constant [0 x i8]
@olang_loc_f586f295cd339b44_dfef29ed04e9a840 = external constant [0 x i8]
@olang_loc_c4c0099ed746cf61_f3a8188923e5ddc5 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eI64_2eFormat(ptr %v0, i64 %a0, i64 %a1)
@olang_loc_2226b004e1161b9e_260abf21839543b2 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_4e1638ec2ac13854_38df9045e4ebdb28 = external constant [0 x i8]
declare %"<poll.h>:pollfd" @_3cpoll_2eh_3e_3apollfd_2ector(ptr %v0)

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
