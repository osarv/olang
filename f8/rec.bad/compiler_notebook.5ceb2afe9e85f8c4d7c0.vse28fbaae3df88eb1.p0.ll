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
%"compiler/prompt:Session" = type { ptr, i64, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/eval:Snapshot", { ptr, ptr }, i1, i1, %"compiler/cells:Worker", %"compiler/build:Config", { i64, ptr } }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/eval:Snapshot" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/cells:Worker" = type { i1, i32, i32, i32, i32, i32, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:Config" = type { { i64, ptr }, { i64, ptr }, %"compiler/target:Target", %"compiler/cond:Consts", i1, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, i64, i1, i1, i1, i64, i1, { i64, ptr }, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, { i64, ptr }, { i64, ptr }, i64, i64, i1, i1, { i64, ptr }, { i64, ptr } }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/json:Object" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/jupyter:Capture" = type { i32, i32, i32 }
%"compiler/prompt:Reply" = type { i1, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local i32 @compiler_2fnotebook_2eRun(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i32, { i64, [2 x i64] } }
  %l6 = alloca { i32, { i64, [2 x i64] } }
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"compiler/prompt:Session"
  %l10 = alloca i64
  %l11 = alloca i1
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %lp18 = alloca ptr
  %l19 = alloca %"std/json:Object"
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i32, { i64, [2 x i64] } }
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i32
  %l28 = alloca i1
  %l29 = alloca { i32, { i64, [2 x i64] } }
  %l30 = alloca { i32, { i64, [2 x i64] } }
  %l31 = alloca i32
  %l36 = alloca { i32, { i64, [2 x i64] } }
  %l37 = alloca { i32, { i64, [2 x i64] } }
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i32, { i64, [2 x i64] } }
  %l43 = alloca { i32, { i64, [2 x i64] } }
  %l44 = alloca i32
  %l59 = alloca { i64, ptr }
  %l61 = alloca i32
  %l62 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca i32
  %l67 = alloca i1
  %l68 = alloca { i32, { i64, [2 x i64] } }
  %l69 = alloca { i32, { i64, [2 x i64] } }
  %l70 = alloca i32
  %l75 = alloca { i32, { i64, [2 x i64] } }
  %l76 = alloca { i32, { i64, [2 x i64] } }
  %l79 = alloca { i64, ptr }
  %l80 = alloca { i32, { i64, [2 x i64] } }
  %l82 = alloca { i32, { i64, [2 x i64] } }
  %l83 = alloca i32
  %l109 = alloca { i64, ptr }
  %l111 = alloca i32
  %l112 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l116 = alloca ptr
  %l117 = alloca i32
  %l119 = alloca i1
  %l122 = alloca { i64, ptr }
  %l123 = alloca i32
  %l125 = alloca i1
  %l131 = alloca i32
  %l133 = alloca %"compiler/prompt:Session"
  %l134 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l142 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l149 = alloca i1
  %l154 = alloca i1
  %l157 = alloca ptr
  %l164 = alloca { i64, [2 x i64] }
  %l167 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %l170 = alloca i1
  %l171 = alloca ptr
  %l178 = alloca { i64, [2 x i64] }
  %l182 = alloca ptr
  %l184 = alloca { i64, ptr }
  %l187 = alloca { i64, [2 x i64] }
  %l189 = alloca i1
  %l191 = alloca i1
  %l192 = alloca ptr
  %l198 = alloca { i64, [2 x i64] }
  %l203 = alloca ptr
  %l205 = alloca ptr
  %l206 = alloca i32
  %l208 = alloca i1
  %l214 = alloca i32
  %l216 = alloca { i64, ptr }
  %l219 = alloca %"std/json:Object"
  %l220 = alloca ptr
  %l222 = alloca { i64, ptr }
  %l224 = alloca ptr
  %l225 = alloca i32
  %l227 = alloca i1
  %l230 = alloca ptr
  %l231 = alloca i32
  %l233 = alloca i1
  %l236 = alloca %"std/json:Object"
  %l239 = alloca ptr
  %l241 = alloca %"std/json:Object"
  %l245 = alloca %"std/json:Object"
  %l246 = alloca %"std/json:Object"
  %l250 = alloca i1
  %l252 = alloca { i64, ptr }
  %l255 = alloca { i64, ptr }
  %l259 = alloca { i64, ptr }
  %l264 = alloca i32
  %l266 = alloca i1
  %l267 = alloca { i32, { i64, [2 x i64] } }
  %l268 = alloca { i32, { i64, [2 x i64] } }
  %l269 = alloca i32
  %l274 = alloca { i32, { i64, [2 x i64] } }
  %l275 = alloca { i32, { i64, [2 x i64] } }
  %l278 = alloca { i64, ptr }
  %l279 = alloca { i32, { i64, [2 x i64] } }
  %l281 = alloca { i32, { i64, [2 x i64] } }
  %l282 = alloca i32
  %l297 = alloca { i64, ptr }
  %l299 = alloca i32
  %l301 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.builder
  %s4room = alloca [64 x i8], align 8
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.builder
  %s21room = alloca [64 x i8], align 8
  %rv = alloca i32
  %t559 = alloca %"compiler/prompt:Session", align 8
  %t616 = alloca { i64, [2 x i64] }, align 8
  %t624 = alloca { i64, [2 x i64] }, align 8
  %t656 = alloca { i64, [2 x i64] }, align 8
  %t664 = alloca { i64, [2 x i64] }, align 8
  %t709 = alloca { i64, [2 x i64] }, align 8
  %t770 = alloca { i64, [2 x i64] }, align 8
  %t829 = alloca { i64, [2 x i64] }, align 8
  %t864 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v1, ptr %s0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l26
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l25
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t8, ptr %l23, !tbaa !27
  br label %bb26
bb2:
  %t9 = load i32, ptr %l26, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l28, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l4
  %t13 = load i32, ptr %l26, !tbaa !23
  %t14 = lshr i32 %t13, 16
  %t15 = and i32 %t13, 65535
  %t16 = icmp eq i32 %t14, 1
  %t17 = select i1 %t16, i32 1, i32 0
  %t18 = icmp eq i32 %t13, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t15
  %t21 = select i1 %t18, i32 0, i32 %t20
  %t22 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l4, i32 0, i32 0
  store i32 %t21, ptr %t22, !tbaa !23
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t23 = load { i32, { i64, [2 x i64] } }, ptr %l4
  store { i32, { i64, [2 x i64] } } %t23, ptr %l29
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l30
  %t24 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l29, i32 0, i32 0
  %t25 = load i32, ptr %t24, !tbaa !23
  store i32 %t25, ptr %l31, !tbaa !23
  %t26 = load i32, ptr %l31, !tbaa !23
  %t27 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l30, i32 0, i32 0
  store i32 %t26, ptr %t27, !tbaa !23
  %t28 = load i32, ptr %l31, !tbaa !23
  %t29 = ashr i32 %t28, 16
  %t31 = icmp eq i32 %t29, 1
  br i1 %t31, label %bb4, label %bb5
bb4:
  %t33 = call ptr @__olang_errpay_top_get()
  %t35 = load { i64, [2 x i64] }, ptr %t33
  %t36 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l30, i32 0, i32 1
  store { i64, [2 x i64] } %t35, ptr %t36
  br label %bb5
bb5:
  %t38 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s0, ptr %l30)
  store { i32, { i64, [2 x i64] } } %t38, ptr %l36
  br label %bb6
bb6:
  %t39 = load { i32, { i64, [2 x i64] } }, ptr %l36
  store { i32, { i64, [2 x i64] } } %t39, ptr %l4
  %t40 = load { i32, { i64, [2 x i64] } }, ptr %l4
  store { i32, { i64, [2 x i64] } } %t40, ptr %l37
  %t41 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l37, i32 0, i32 0
  %t42 = load i32, ptr %t41, !tbaa !23
  %t43 = ashr i32 %t42, 16
  %t45 = icmp eq i32 %t43, 1
  br i1 %t45, label %bb7, label %bb8
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t47, ptr %l40, !tbaa !27
  %t48 = load { i32, { i64, [2 x i64] } }, ptr %l4
  store { i32, { i64, [2 x i64] } } %t48, ptr %l41
  %t50 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s1, ptr %l41)
  store { i32, { i64, [2 x i64] } } %t50, ptr %l43
  br label %bb9
bb9:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  %t51 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t51, i64 %t52)
  %t53 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  call void @__olang_sb_put(ptr %s2, ptr %t54, i64 %t55)
  %t56 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t56, i64 %t57)
  %t58 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l43, i32 0, i32 0
  %t59 = load i32, ptr %t58, !tbaa !23
  store i32 %t59, ptr %l44, !tbaa !23
  %t60 = load i32, ptr %l44, !tbaa !23
  %t61 = icmp eq i32 %t60, 0
  br i1 %t61, label %bb11, label %bb12
bb10:
  %t63 = load ptr, ptr %s2
  %t64 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t65 = load i64, ptr %t64
  %t66 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t65)
  call void @olang_textcopy(ptr %t66, ptr %t63, i64 %t65)
  %t67 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l59, !tbaa !27
  %t69 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t70 = load ptr, ptr %t69
  %t71 = icmp ne ptr %t70, null
  br i1 %t71, label %sbgrew.72, label %sbdone.73
sbgrew.72:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.73
sbdone.73:
  %t74 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  %t76 = extractvalue { i64, ptr } %t74, 1
  %t77 = mul i64 %t75, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t77)
  call void @llvm.memcpy.p0.p0.i64(ptr %t78, ptr %t76, i64 %t77, i1 false)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  %t82 = call i32 @compiler_2fnotebook_2efail(ptr %s1, { i64, ptr } %t80)
  store i32 %t82, ptr %l61
  br label %bb25
bb11:
  %t83 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t83, i64 %t84)
  br label %bb10
bb12:
  %t85 = load i32, ptr %l44, !tbaa !23
  %t86 = icmp eq i32 %t85, 65536
  br i1 %t86, label %bb13, label %bb14
bb13:
  %t88 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t88, i64 %t89)
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t90, i64 %t91)
  %t92 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l43, i32 0, i32 1
  %t93 = getelementptr { i64, [2 x i64] }, ptr %t92, i32 0, i32 1
  %t94 = getelementptr { { i64, ptr } }, ptr %t93, i32 0, i32 0
  %t95 = load { i64, ptr }, ptr %t94
  %t97 = extractvalue { i64, ptr } %t95, 1
  %t98 = extractvalue { i64, ptr } %t95, 0
  %t99 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t97, i64 %t98, i8 34)
  %t100 = call ptr @__olang_sb_room(ptr %s2, i64 %t99)
  %t101 = call i64 @__olang_rd_quote(ptr %t100, i64 0, ptr %t97, i64 %t98, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t99)
  %t102 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t102, i64 %t103)
  br label %bb10
bb14:
  %t104 = load i32, ptr %l44, !tbaa !23
  %t105 = icmp eq i32 %t104, 65537
  br i1 %t105, label %bb15, label %bb16
bb15:
  %t107 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t107, i64 %t108)
  %t109 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t109, i64 %t110)
  %t111 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l43, i32 0, i32 1
  %t112 = getelementptr { i64, [2 x i64] }, ptr %t111, i32 0, i32 1
  %t113 = getelementptr { { i64, ptr } }, ptr %t112, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113
  %t116 = extractvalue { i64, ptr } %t114, 1
  %t117 = extractvalue { i64, ptr } %t114, 0
  %t118 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t116, i64 %t117, i8 34)
  %t119 = call ptr @__olang_sb_room(ptr %s2, i64 %t118)
  %t120 = call i64 @__olang_rd_quote(ptr %t119, i64 0, ptr %t116, i64 %t117, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t118)
  %t121 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t122 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t121, i64 %t122)
  br label %bb10
bb16:
  %t123 = load i32, ptr %l44, !tbaa !23
  %t124 = icmp eq i32 %t123, 65538
  br i1 %t124, label %bb17, label %bb18
bb17:
  %t126 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t126, i64 %t127)
  %t128 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t128, i64 %t129)
  %t130 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l43, i32 0, i32 1
  %t131 = getelementptr { i64, [2 x i64] }, ptr %t130, i32 0, i32 1
  %t132 = getelementptr { { i64, ptr } }, ptr %t131, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132
  %t135 = extractvalue { i64, ptr } %t133, 1
  %t136 = extractvalue { i64, ptr } %t133, 0
  %t137 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t135, i64 %t136, i8 34)
  %t138 = call ptr @__olang_sb_room(ptr %s2, i64 %t137)
  %t139 = call i64 @__olang_rd_quote(ptr %t138, i64 0, ptr %t135, i64 %t136, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t137)
  %t140 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t140, i64 %t141)
  br label %bb10
bb18:
  %t142 = load i32, ptr %l44, !tbaa !23
  %t143 = icmp eq i32 %t142, 65539
  br i1 %t143, label %bb19, label %bb20
bb19:
  %t145 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t145, i64 %t146)
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t147, i64 %t148)
  %t149 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l43, i32 0, i32 1
  %t150 = getelementptr { i64, [2 x i64] }, ptr %t149, i32 0, i32 1
  %t151 = getelementptr { { i64, ptr } }, ptr %t150, i32 0, i32 0
  %t152 = load { i64, ptr }, ptr %t151
  %t154 = extractvalue { i64, ptr } %t152, 1
  %t155 = extractvalue { i64, ptr } %t152, 0
  %t156 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t154, i64 %t155, i8 34)
  %t157 = call ptr @__olang_sb_room(ptr %s2, i64 %t156)
  %t158 = call i64 @__olang_rd_quote(ptr %t157, i64 0, ptr %t154, i64 %t155, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t156)
  %t159 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t159, i64 %t160)
  br label %bb10
bb20:
  %t161 = load i32, ptr %l44, !tbaa !23
  %t162 = icmp eq i32 %t161, 65540
  br i1 %t162, label %bb21, label %bb22
bb21:
  %t164 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t165 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t164, i64 %t165)
  %t166 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t167 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t166, i64 %t167)
  %t168 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l43, i32 0, i32 1
  %t169 = getelementptr { i64, [2 x i64] }, ptr %t168, i32 0, i32 1
  %t170 = getelementptr { { i64, ptr } }, ptr %t169, i32 0, i32 0
  %t171 = load { i64, ptr }, ptr %t170
  %t173 = extractvalue { i64, ptr } %t171, 1
  %t174 = extractvalue { i64, ptr } %t171, 0
  %t175 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t173, i64 %t174, i8 34)
  %t176 = call ptr @__olang_sb_room(ptr %s2, i64 %t175)
  %t177 = call i64 @__olang_rd_quote(ptr %t176, i64 0, ptr %t173, i64 %t174, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t175)
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t178, i64 %t179)
  br label %bb10
bb22:
  %t180 = load i32, ptr %l44, !tbaa !23
  %t181 = icmp eq i32 %t180, 65541
  br i1 %t181, label %bb23, label %bb24
bb23:
  %t183 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t183, i64 %t184)
  %t185 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t186 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t185, i64 %t186)
  %t187 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l43, i32 0, i32 1
  %t188 = getelementptr { i64, [2 x i64] }, ptr %t187, i32 0, i32 1
  %t189 = getelementptr { { i64, ptr } }, ptr %t188, i32 0, i32 0
  %t190 = load { i64, ptr }, ptr %t189
  %t192 = extractvalue { i64, ptr } %t190, 1
  %t193 = extractvalue { i64, ptr } %t190, 0
  %t194 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t192, i64 %t193, i8 34)
  %t195 = call ptr @__olang_sb_room(ptr %s2, i64 %t194)
  %t196 = call i64 @__olang_rd_quote(ptr %t195, i64 0, ptr %t192, i64 %t193, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t194)
  %t197 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t198 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t197, i64 %t198)
  br label %bb10
bb24:
  %t199 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t199, i64 %t200)
  %t201 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t201, i64 %t202)
  %t203 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l43, i32 0, i32 1
  %t204 = getelementptr { i64, [2 x i64] }, ptr %t203, i32 0, i32 1
  %t205 = getelementptr { { i64, ptr } }, ptr %t204, i32 0, i32 0
  %t206 = load { i64, ptr }, ptr %t205
  %t208 = extractvalue { i64, ptr } %t206, 1
  %t209 = extractvalue { i64, ptr } %t206, 0
  %t210 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t208, i64 %t209, i8 34)
  %t211 = call ptr @__olang_sb_room(ptr %s2, i64 %t210)
  %t212 = call i64 @__olang_rd_quote(ptr %t211, i64 0, ptr %t208, i64 %t209, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t210)
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t213, i64 %t214)
  br label %bb10
bb25:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t215 = load i32, ptr %l61, !tbaa !23
  store i32 %t215, ptr %rv
  br label %ret
bb26:
  %t216 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t219 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %s0, ptr %s0, { i64, ptr } %t216)
  %t220 = extractvalue { i32, ptr } %t219, 1
  %t221 = extractvalue { i32, ptr } %t219, 0
  store i32 %t221, ptr %l65
  %t222 = icmp ne i32 %t221, 0
  br i1 %t222, label %bb28, label %ok.223, !prof !99
ok.223:
  store ptr %t220, ptr %l64
  br label %bb27
bb27:
  %t224 = load ptr, ptr %l64, !tbaa !29
  store ptr %t224, ptr %l62, !tbaa !29
  br label %bb58
bb28:
  %t225 = load i32, ptr %l65, !tbaa !23
  %t226 = ashr i32 %t225, 16
  %t228 = icmp eq i32 %t226, 1
  store i1 %t228, ptr %l67, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l6
  %t229 = load i32, ptr %l65, !tbaa !23
  %t230 = lshr i32 %t229, 16
  %t231 = and i32 %t229, 65535
  %t232 = icmp eq i32 %t230, 1
  %t233 = select i1 %t232, i32 1, i32 0
  %t234 = icmp eq i32 %t229, 0
  %t235 = shl i32 %t233, 16
  %t236 = or i32 %t235, %t231
  %t237 = select i1 %t234, i32 0, i32 %t236
  %t238 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l6, i32 0, i32 0
  store i32 %t237, ptr %t238, !tbaa !23
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s3
  %t239 = load { i32, { i64, [2 x i64] } }, ptr %l6
  store { i32, { i64, [2 x i64] } } %t239, ptr %l68
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l69
  %t240 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l68, i32 0, i32 0
  %t241 = load i32, ptr %t240, !tbaa !23
  store i32 %t241, ptr %l70, !tbaa !23
  %t242 = load i32, ptr %l70, !tbaa !23
  %t243 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l69, i32 0, i32 0
  store i32 %t242, ptr %t243, !tbaa !23
  %t244 = load i32, ptr %l70, !tbaa !23
  %t245 = ashr i32 %t244, 16
  %t247 = icmp eq i32 %t245, 1
  br i1 %t247, label %bb30, label %bb31
bb30:
  %t249 = call ptr @__olang_errpay_top_get()
  %t251 = load { i64, [2 x i64] }, ptr %t249
  %t252 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l69, i32 0, i32 1
  store { i64, [2 x i64] } %t251, ptr %t252
  br label %bb31
bb31:
  %t254 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fjson_3aError_7d(ptr %s0, ptr %l69)
  store { i32, { i64, [2 x i64] } } %t254, ptr %l75
  br label %bb32
bb32:
  %t255 = load { i32, { i64, [2 x i64] } }, ptr %l75
  store { i32, { i64, [2 x i64] } } %t255, ptr %l6
  %t256 = load { i32, { i64, [2 x i64] } }, ptr %l6
  store { i32, { i64, [2 x i64] } } %t256, ptr %l76
  %t257 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l76, i32 0, i32 0
  %t258 = load i32, ptr %t257, !tbaa !23
  %t259 = ashr i32 %t258, 16
  %t261 = icmp eq i32 %t259, 1
  br i1 %t261, label %bb33, label %bb34
bb33:
  call void @__olang_errpay_pop()
  br label %bb34
bb34:
  %t263 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t263, ptr %l79, !tbaa !27
  %t264 = load { i32, { i64, [2 x i64] } }, ptr %l6
  store { i32, { i64, [2 x i64] } } %t264, ptr %l80
  %t266 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fjson_3aError_7d(ptr %s3, ptr %l80)
  store { i32, { i64, [2 x i64] } } %t266, ptr %l82
  br label %bb35
bb35:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s4
  store ptr %s4room, ptr %s4
  %t267 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t267, 1
  %t269 = extractvalue { i64, ptr } %t267, 0
  call void @__olang_sb_put(ptr %s4, ptr %t268, i64 %t269)
  %t270 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t270, i64 %t271)
  %t272 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 0
  %t273 = load i32, ptr %t272, !tbaa !23
  store i32 %t273, ptr %l83, !tbaa !23
  %t274 = load i32, ptr %l83, !tbaa !23
  %t275 = icmp eq i32 %t274, 0
  br i1 %t275, label %bb37, label %bb38
bb36:
  %t277 = load ptr, ptr %s4
  %t278 = getelementptr %olang.builder, ptr %s4, i32 0, i32 1
  %t279 = load i64, ptr %t278
  %t280 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t279)
  call void @olang_textcopy(ptr %t280, ptr %t277, i64 %t279)
  %t281 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t280, 1
  store { i64, ptr } %t282, ptr %l109, !tbaa !27
  %t283 = getelementptr %olang.builder, ptr %s4, i32 0, i32 3
  %t284 = load ptr, ptr %t283
  %t285 = icmp ne ptr %t284, null
  br i1 %t285, label %sbgrew.286, label %sbdone.287
sbgrew.286:
  call void @__olang_sb_done(ptr %s4)
  br label %sbdone.287
sbdone.287:
  %t288 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t289 = extractvalue { i64, ptr } %t288, 0
  %t290 = extractvalue { i64, ptr } %t288, 1
  %t291 = mul i64 %t289, 1
  %t292 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t291)
  call void @llvm.memcpy.p0.p0.i64(ptr %t292, ptr %t290, i64 %t291, i1 false)
  %t293 = insertvalue { i64, ptr } undef, i64 %t289, 0
  %t294 = insertvalue { i64, ptr } %t293, ptr %t292, 1
  %t296 = call i32 @compiler_2fnotebook_2efail(ptr %s3, { i64, ptr } %t294)
  store i32 %t296, ptr %l111
  br label %bb57
bb37:
  %t297 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t298 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t297, i64 %t298)
  br label %bb36
bb38:
  %t299 = load i32, ptr %l83, !tbaa !23
  %t300 = icmp eq i32 %t299, 65536
  br i1 %t300, label %bb39, label %bb40
bb39:
  %t302 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t303 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t302, i64 %t303)
  %t304 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t305 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t304, i64 %t305)
  %t306 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t307 = getelementptr { i64, [2 x i64] }, ptr %t306, i32 0, i32 1
  %t308 = getelementptr { i64, i64 }, ptr %t307, i32 0, i32 0
  %t309 = load i64, ptr %t308
  %t311 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t312 = call i64 @__olang_fmt_i64(ptr %t311, i64 %t309)
  call void @__olang_sb_add(ptr %s4, i64 %t312)
  %t313 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t314 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t313, i64 %t314)
  %t315 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t316 = getelementptr { i64, [2 x i64] }, ptr %t315, i32 0, i32 1
  %t317 = getelementptr { i64, i64 }, ptr %t316, i32 0, i32 1
  %t318 = load i64, ptr %t317
  %t320 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t321 = call i64 @__olang_fmt_i64(ptr %t320, i64 %t318)
  call void @__olang_sb_add(ptr %s4, i64 %t321)
  %t322 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t323 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t322, i64 %t323)
  br label %bb36
bb40:
  %t324 = load i32, ptr %l83, !tbaa !23
  %t325 = icmp eq i32 %t324, 65537
  br i1 %t325, label %bb41, label %bb42
bb41:
  %t327 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t328 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t327, i64 %t328)
  %t329 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t330 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t329, i64 %t330)
  %t331 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t332 = getelementptr { i64, [2 x i64] }, ptr %t331, i32 0, i32 1
  %t333 = getelementptr { i64, i64 }, ptr %t332, i32 0, i32 0
  %t334 = load i64, ptr %t333
  %t336 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t337 = call i64 @__olang_fmt_i64(ptr %t336, i64 %t334)
  call void @__olang_sb_add(ptr %s4, i64 %t337)
  %t338 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t339 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t338, i64 %t339)
  %t340 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t341 = getelementptr { i64, [2 x i64] }, ptr %t340, i32 0, i32 1
  %t342 = getelementptr { i64, i64 }, ptr %t341, i32 0, i32 1
  %t343 = load i64, ptr %t342
  %t345 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t346 = call i64 @__olang_fmt_i64(ptr %t345, i64 %t343)
  call void @__olang_sb_add(ptr %s4, i64 %t346)
  %t347 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t348 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t347, i64 %t348)
  br label %bb36
bb42:
  %t349 = load i32, ptr %l83, !tbaa !23
  %t350 = icmp eq i32 %t349, 65538
  br i1 %t350, label %bb43, label %bb44
bb43:
  %t352 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t353 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t352, i64 %t353)
  %t354 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t355 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t354, i64 %t355)
  %t356 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t357 = getelementptr { i64, [2 x i64] }, ptr %t356, i32 0, i32 1
  %t358 = getelementptr { i64, i64 }, ptr %t357, i32 0, i32 0
  %t359 = load i64, ptr %t358
  %t361 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t362 = call i64 @__olang_fmt_i64(ptr %t361, i64 %t359)
  call void @__olang_sb_add(ptr %s4, i64 %t362)
  %t363 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t364 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t363, i64 %t364)
  %t365 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t366 = getelementptr { i64, [2 x i64] }, ptr %t365, i32 0, i32 1
  %t367 = getelementptr { i64, i64 }, ptr %t366, i32 0, i32 1
  %t368 = load i64, ptr %t367
  %t370 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t371 = call i64 @__olang_fmt_i64(ptr %t370, i64 %t368)
  call void @__olang_sb_add(ptr %s4, i64 %t371)
  %t372 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t373 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t372, i64 %t373)
  br label %bb36
bb44:
  %t374 = load i32, ptr %l83, !tbaa !23
  %t375 = icmp eq i32 %t374, 65539
  br i1 %t375, label %bb45, label %bb46
bb45:
  %t377 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t378 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t377, i64 %t378)
  %t379 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t380 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t379, i64 %t380)
  %t381 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t382 = getelementptr { i64, [2 x i64] }, ptr %t381, i32 0, i32 1
  %t383 = getelementptr { i64, i64 }, ptr %t382, i32 0, i32 0
  %t384 = load i64, ptr %t383
  %t386 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t387 = call i64 @__olang_fmt_i64(ptr %t386, i64 %t384)
  call void @__olang_sb_add(ptr %s4, i64 %t387)
  %t388 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t389 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t388, i64 %t389)
  %t390 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t391 = getelementptr { i64, [2 x i64] }, ptr %t390, i32 0, i32 1
  %t392 = getelementptr { i64, i64 }, ptr %t391, i32 0, i32 1
  %t393 = load i64, ptr %t392
  %t395 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t396 = call i64 @__olang_fmt_i64(ptr %t395, i64 %t393)
  call void @__olang_sb_add(ptr %s4, i64 %t396)
  %t397 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t397, i64 %t398)
  br label %bb36
bb46:
  %t399 = load i32, ptr %l83, !tbaa !23
  %t400 = icmp eq i32 %t399, 65540
  br i1 %t400, label %bb47, label %bb48
bb47:
  %t402 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t403 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t402, i64 %t403)
  %t404 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t405 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t404, i64 %t405)
  %t406 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t407 = getelementptr { i64, [2 x i64] }, ptr %t406, i32 0, i32 1
  %t408 = getelementptr { i64, i64 }, ptr %t407, i32 0, i32 0
  %t409 = load i64, ptr %t408
  %t411 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t412 = call i64 @__olang_fmt_i64(ptr %t411, i64 %t409)
  call void @__olang_sb_add(ptr %s4, i64 %t412)
  %t413 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t414 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t413, i64 %t414)
  %t415 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t416 = getelementptr { i64, [2 x i64] }, ptr %t415, i32 0, i32 1
  %t417 = getelementptr { i64, i64 }, ptr %t416, i32 0, i32 1
  %t418 = load i64, ptr %t417
  %t420 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t421 = call i64 @__olang_fmt_i64(ptr %t420, i64 %t418)
  call void @__olang_sb_add(ptr %s4, i64 %t421)
  %t422 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t423 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t422, i64 %t423)
  br label %bb36
bb48:
  %t424 = load i32, ptr %l83, !tbaa !23
  %t425 = icmp eq i32 %t424, 65541
  br i1 %t425, label %bb49, label %bb50
bb49:
  %t427 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t428 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t427, i64 %t428)
  %t429 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t430 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t429, i64 %t430)
  %t431 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t432 = getelementptr { i64, [2 x i64] }, ptr %t431, i32 0, i32 1
  %t433 = getelementptr { i64, i64 }, ptr %t432, i32 0, i32 0
  %t434 = load i64, ptr %t433
  %t436 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t437 = call i64 @__olang_fmt_i64(ptr %t436, i64 %t434)
  call void @__olang_sb_add(ptr %s4, i64 %t437)
  %t438 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t439 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t438, i64 %t439)
  %t440 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t441 = getelementptr { i64, [2 x i64] }, ptr %t440, i32 0, i32 1
  %t442 = getelementptr { i64, i64 }, ptr %t441, i32 0, i32 1
  %t443 = load i64, ptr %t442
  %t445 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t446 = call i64 @__olang_fmt_i64(ptr %t445, i64 %t443)
  call void @__olang_sb_add(ptr %s4, i64 %t446)
  %t447 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t448 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t447, i64 %t448)
  br label %bb36
bb50:
  %t449 = load i32, ptr %l83, !tbaa !23
  %t450 = icmp eq i32 %t449, 65542
  br i1 %t450, label %bb51, label %bb52
bb51:
  %t452 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t453 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t452, i64 %t453)
  %t454 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t455 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t454, i64 %t455)
  %t456 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t457 = getelementptr { i64, [2 x i64] }, ptr %t456, i32 0, i32 1
  %t458 = getelementptr { i64, i64 }, ptr %t457, i32 0, i32 0
  %t459 = load i64, ptr %t458
  %t461 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t462 = call i64 @__olang_fmt_i64(ptr %t461, i64 %t459)
  call void @__olang_sb_add(ptr %s4, i64 %t462)
  %t463 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t464 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t463, i64 %t464)
  %t465 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t466 = getelementptr { i64, [2 x i64] }, ptr %t465, i32 0, i32 1
  %t467 = getelementptr { i64, i64 }, ptr %t466, i32 0, i32 1
  %t468 = load i64, ptr %t467
  %t470 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t471 = call i64 @__olang_fmt_i64(ptr %t470, i64 %t468)
  call void @__olang_sb_add(ptr %s4, i64 %t471)
  %t472 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t473 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t472, i64 %t473)
  br label %bb36
bb52:
  %t474 = load i32, ptr %l83, !tbaa !23
  %t475 = icmp eq i32 %t474, 65543
  br i1 %t475, label %bb53, label %bb54
bb53:
  %t477 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t478 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t477, i64 %t478)
  %t479 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t480 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t479, i64 %t480)
  %t481 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 1
  %t482 = getelementptr { i64, [2 x i64] }, ptr %t481, i32 0, i32 1
  %t483 = getelementptr { { i64, ptr } }, ptr %t482, i32 0, i32 0
  %t484 = load { i64, ptr }, ptr %t483
  %t486 = extractvalue { i64, ptr } %t484, 1
  %t487 = extractvalue { i64, ptr } %t484, 0
  %t488 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t486, i64 %t487, i8 34)
  %t489 = call ptr @__olang_sb_room(ptr %s4, i64 %t488)
  %t490 = call i64 @__olang_rd_quote(ptr %t489, i64 0, ptr %t486, i64 %t487, i8 34)
  call void @__olang_sb_add(ptr %s4, i64 %t488)
  %t491 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t492 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t491, i64 %t492)
  br label %bb36
bb54:
  %t493 = load i32, ptr %l83, !tbaa !23
  %t494 = icmp eq i32 %t493, 65544
  br i1 %t494, label %bb55, label %bb56
bb55:
  %t496 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t497 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t496, i64 %t497)
  br label %bb36
bb56:
  %t498 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t499 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t498, i64 %t499)
  br label %bb36
bb57:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t500 = load i32, ptr %l111, !tbaa !23
  store i32 %t500, ptr %rv
  br label %ret
bb58:
  %t501 = load ptr, ptr %l62, !tbaa !29
  store ptr %t501, ptr %l7, !tbaa !29
  %t502 = load ptr, ptr %l7, !tbaa !29
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l114, !tbaa !27
  %t503 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t506 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t502, { i64, ptr } %t503)
  %t507 = extractvalue { i32, ptr } %t506, 1
  %t508 = extractvalue { i32, ptr } %t506, 0
  store i32 %t508, ptr %l117
  %t509 = icmp ne i32 %t508, 0
  br i1 %t509, label %bb60, label %ok.510, !prof !99
ok.510:
  store ptr %t507, ptr %l116
  br label %bb59
bb59:
  %t511 = load ptr, ptr %l116, !tbaa !29
  %t512 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %s0, ptr %s0, ptr %t511)
  %t513 = extractvalue { i32, { i64, ptr } } %t512, 1
  %t514 = extractvalue { i32, { i64, ptr } } %t512, 0
  store i32 %t514, ptr %l123
  %t515 = icmp ne i32 %t514, 0
  br i1 %t515, label %bb65, label %ok.516, !prof !99
ok.516:
  store { i64, ptr } %t513, ptr %l122
  br label %bb64
bb60:
  %t517 = load i32, ptr %l117, !tbaa !23
  %t518 = ashr i32 %t517, 16
  %t520 = icmp eq i32 %t518, 1
  store i1 %t520, ptr %l119, !tbaa !21
  %t521 = load i32, ptr %l117, !tbaa !23
  %t522 = ashr i32 %t521, 16
  %t524 = icmp eq i32 %t522, 1
  br i1 %t524, label %bb61, label %bb62
bb61:
  call void @__olang_errpay_pop()
  br label %bb62
bb62:
  br label %bb63
bb63:
  store %olang.scope zeroinitializer, ptr %s5
  %t526 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t528 = extractvalue { i64, ptr } %t526, 1
  %t529 = extractvalue { i64, ptr } %t526, 0
  %t530 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t531 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t532 = add i64 %t529, %t531
  %t533 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t532)
  call void @olang_textcopy(ptr %t533, ptr %t528, i64 %t529)
  %t534 = getelementptr i8, ptr %t533, i64 %t529
  call void @olang_textcopy(ptr %t534, ptr %t530, i64 %t531)
  %t535 = insertvalue { i64, ptr } undef, i64 %t532, 0
  %t536 = insertvalue { i64, ptr } %t535, ptr %t533, 1
  %t538 = extractvalue { i64, ptr } %t536, 0
  %t539 = extractvalue { i64, ptr } %t536, 1
  %t540 = mul i64 %t538, 1
  %t541 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t540)
  call void @llvm.memcpy.p0.p0.i64(ptr %t541, ptr %t539, i64 %t540, i1 false)
  %t542 = insertvalue { i64, ptr } undef, i64 %t538, 0
  %t543 = insertvalue { i64, ptr } %t542, ptr %t541, 1
  %t545 = call i32 @compiler_2fnotebook_2efail(ptr %s5, { i64, ptr } %t543)
  store i32 %t545, ptr %l131
  br label %bb68
bb64:
  %t546 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t546, ptr %l112, !tbaa !27
  br label %bb69
bb65:
  %t547 = load i32, ptr %l123, !tbaa !23
  %t548 = ashr i32 %t547, 16
  %t550 = icmp eq i32 %t548, 1
  store i1 %t550, ptr %l125, !tbaa !21
  %t551 = load i32, ptr %l123, !tbaa !23
  %t552 = ashr i32 %t551, 16
  %t554 = icmp eq i32 %t552, 1
  br i1 %t554, label %bb66, label %bb67
bb66:
  call void @__olang_errpay_pop()
  br label %bb67
bb67:
  br label %bb63
bb68:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t556 = load i32, ptr %l131, !tbaa !23
  store i32 %t556, ptr %rv
  br label %ret
bb69:
  %t557 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t557, ptr %l8, !tbaa !27
  call void @compiler_2fprompt_3aSession_2ector(ptr %t559, ptr %v0, ptr %s0, ptr %a0)
  call void @llvm.memmove.p0.p0.i64(ptr %l133, ptr %t559, i64 1072, i1 false)
  br label %bb70
bb70:
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l133, i64 1072, i1 false)
  %t561 = getelementptr %"compiler/prompt:Session", ptr %l9, i32 0, i32 8
  store i1 true, ptr %t561, !tbaa !21
  store i64 0, ptr %l10, !tbaa !24
  store i1 false, ptr %l11, !tbaa !21
  %t562 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t562, ptr %l134
  br label %bb71
bb71:
  %t563 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l134
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t563, ptr %l12
  %t564 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t564, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t566 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t568 = extractvalue { i64, ptr } %t566, 0
  store i64 %t568, ptr %l15, !tbaa !24
  br label %bb72
bb72:
  store %olang.scope zeroinitializer, ptr %s8
  %t570 = load i64, ptr %l14, !tbaa !24
  %t571 = load i64, ptr %l15, !tbaa !24
  %t574 = icmp slt i64 %t570, %t571
  %t576 = xor i1 %t574, true
  br i1 %t576, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s8)
  br label %bb107
bb74:
  br label %bb75
bb75:
  %t578 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t578, ptr %l142, !tbaa !27
  %t579 = load i64, ptr %l14, !tbaa !24
  %t581 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t582 = load ptr, ptr %t581, !tbaa !27
  %t583 = getelementptr ptr, ptr %t582, i64 %t579
  %t584 = load ptr, ptr %t583, !tbaa !39
  store ptr %t584, ptr %l16, !tbaa !29
  %t586 = load ptr, ptr %l16, !tbaa !29
  %t588 = call { i64, ptr } @compiler_2fnotebook_2estr(ptr %s0, ptr %s8, ptr %s8, ptr %t586, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store { i64, ptr } %t588, ptr %l146
  br label %bb76
bb76:
  %t589 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t590 = extractvalue { i64, ptr } %t589, 1
  %t591 = extractvalue { i64, ptr } %t589, 0
  %t592 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t591)
  call void @olang_textcopy(ptr %t592, ptr %t590, i64 %t591)
  %t593 = insertvalue { i64, ptr } undef, i64 %t591, 0
  %t594 = insertvalue { i64, ptr } %t593, ptr %t592, 1
  %t598 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s8, ptr %s8, { i64, ptr } %t594, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t598, ptr %l149
  br label %bb77
bb77:
  %t599 = load i1, ptr %l149, !tbaa !21
  %t600 = xor i1 %t599, true
  br i1 %t600, label %bb78, label %bb79
bb78:
  %t602 = load ptr, ptr %l16, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2ePush_3cstd_2fjson_3aJson_26_3e(ptr %s0, ptr %s0, ptr %l12, ptr %t602)
  br label %bb80
bb79:
  %t605 = load i1, ptr %l11, !tbaa !21
  br i1 %t605, label %bb81, label %bb82
bb80:
  br label %bb105
bb81:
  %t609 = xor i1 %a3, true
  store i1 %t609, ptr %l154, !tbaa !21
  br label %bb83
bb82:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb83
bb83:
  %t611 = load i1, ptr %l154, !tbaa !21
  br i1 %t611, label %bb84, label %bb85
bb84:
  store ptr %l12, ptr %l157, !tbaa !29
  %t612 = load ptr, ptr %l16, !tbaa !29
  %t613 = mul i64 0, 8
  %t614 = insertvalue { i64, ptr } undef, i64 0, 0
  %t615 = insertvalue { i64, ptr } %t614, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, [2 x i64] } zeroinitializer, ptr %t616
  %t617 = getelementptr { i64, [2 x i64] }, ptr %t616, i32 0, i32 0
  store i64 6, ptr %t617
  %t619 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t615, 0
  %t620 = getelementptr { i64, [2 x i64] }, ptr %t616, i32 0, i32 1
  store { { i64, ptr } } %t619, ptr %t620
  %t621 = load { i64, [2 x i64] }, ptr %t616
  %t623 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t621, ptr %t623
  store { i64, [2 x i64] } zeroinitializer, ptr %t624
  %t625 = getelementptr { i64, [2 x i64] }, ptr %t624, i32 0, i32 0
  store i64 0, ptr %t625
  %t626 = load { i64, [2 x i64] }, ptr %t624
  %t628 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t626, ptr %t628
  %t632 = call { i64, [2 x i64] } @compiler_2fnotebook_2ewith(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t612, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %t623, ptr %t628)
  store { i64, [2 x i64] } %t632, ptr %l164
  br label %bb86
bb85:
  store %olang.scope zeroinitializer, ptr %s13
  %t633 = load ptr, ptr %l16, !tbaa !29
  %t635 = call { i64, ptr } @compiler_2fnotebook_2esource(ptr %s0, ptr %s13, ptr %t633)
  store { i64, ptr } %t635, ptr %l167
  br label %bb88
bb86:
  %t636 = load { i64, [2 x i64] }, ptr %l164
  %t637 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t636, ptr %t637
  %t638 = load ptr, ptr %l157, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2ePush_3cstd_2fjson_3aJson_26_3e(ptr %s0, ptr %s0, ptr %t638, ptr %t637)
  br label %bb87
bb87:
  br label %bb104
bb88:
  %t640 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t641 = extractvalue { i64, ptr } %t640, 0
  %t642 = extractvalue { i64, ptr } %t640, 1
  %t643 = mul i64 %t641, 1
  %t644 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t643)
  call void @llvm.memcpy.p0.p0.i64(ptr %t644, ptr %t642, i64 %t643, i1 false)
  %t645 = insertvalue { i64, ptr } undef, i64 %t641, 0
  %t646 = insertvalue { i64, ptr } %t645, ptr %t644, 1
  %t648 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s13, ptr %s13, { i64, ptr } %t646)
  store { i64, ptr } %t648, ptr %l169
  br label %bb89
bb89:
  %t649 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t650 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s13, ptr %s13, { i64, ptr } %t649, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t650, ptr %l170
  br label %bb90
bb90:
  %t651 = load i1, ptr %l170, !tbaa !21
  br i1 %t651, label %bb91, label %bb92
bb91:
  store ptr %l12, ptr %l171, !tbaa !29
  %t652 = load ptr, ptr %l16, !tbaa !29
  %t653 = mul i64 0, 8
  %t654 = insertvalue { i64, ptr } undef, i64 0, 0
  %t655 = insertvalue { i64, ptr } %t654, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, [2 x i64] } zeroinitializer, ptr %t656
  %t657 = getelementptr { i64, [2 x i64] }, ptr %t656, i32 0, i32 0
  store i64 6, ptr %t657
  %t659 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t655, 0
  %t660 = getelementptr { i64, [2 x i64] }, ptr %t656, i32 0, i32 1
  store { { i64, ptr } } %t659, ptr %t660
  %t661 = load { i64, [2 x i64] }, ptr %t656
  %t663 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t661, ptr %t663
  store { i64, [2 x i64] } zeroinitializer, ptr %t664
  %t665 = getelementptr { i64, [2 x i64] }, ptr %t664, i32 0, i32 0
  store i64 0, ptr %t665
  %t666 = load { i64, [2 x i64] }, ptr %t664
  %t668 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t666, ptr %t668
  %t672 = call { i64, [2 x i64] } @compiler_2fnotebook_2ewith(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t652, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %t663, ptr %t668)
  store { i64, [2 x i64] } %t672, ptr %l178
  br label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s15
  %t673 = load i64, ptr %l10, !tbaa !24
  %t675 = add i64 %t673, 1
  store i64 %t675, ptr %l10, !tbaa !24
  store ptr %l9, ptr %l182, !tbaa !29
  %t677 = load ptr, ptr %l16, !tbaa !29
  %t679 = call { i64, ptr } @compiler_2fnotebook_2esource(ptr %s0, ptr %s15, ptr %t677)
  store { i64, ptr } %t679, ptr %l184
  br label %bb95
bb93:
  %t680 = load { i64, [2 x i64] }, ptr %l178
  %t681 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t680, ptr %t681
  %t682 = load ptr, ptr %l171, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2ePush_3cstd_2fjson_3aJson_26_3e(ptr %s0, ptr %s0, ptr %t682, ptr %t681)
  br label %bb94
bb94:
  br label %bb103
bb95:
  %t684 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t685 = extractvalue { i64, ptr } %t684, 0
  %t686 = extractvalue { i64, ptr } %t684, 1
  %t687 = mul i64 %t685, 1
  %t688 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t687)
  call void @llvm.memcpy.p0.p0.i64(ptr %t688, ptr %t686, i64 %t687, i1 false)
  %t689 = insertvalue { i64, ptr } undef, i64 %t685, 0
  %t690 = insertvalue { i64, ptr } %t689, ptr %t688, 1
  %t691 = load i64, ptr %l10, !tbaa !24
  %t692 = load ptr, ptr %l182, !tbaa !29
  %t695 = call { i64, [2 x i64] } @compiler_2fnotebook_2eexecute(ptr %s0, ptr %s15, ptr %s0, ptr %v0, ptr %t692, { i64, ptr } %t690, i64 %t691)
  store { i64, [2 x i64] } %t695, ptr %l187
  br label %bb96
bb96:
  %t696 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store ptr %t696, ptr %lp18
  %t697 = load { i64, [2 x i64] }, ptr %l187
  %t698 = load ptr, ptr %lp18
  store { i64, [2 x i64] } %t697, ptr %t698
  %t699 = load i1, ptr %l11, !tbaa !21
  br i1 %t699, label %bb97, label %bb98
bb97:
  store i1 true, ptr %l189, !tbaa !21
  br label %bb100
bb98:
  %t701 = load ptr, ptr %lp18
  %t703 = call i1 @compiler_2fnotebook_2efailedWith(ptr %s0, ptr %t701)
  store i1 %t703, ptr %l191
  br label %bb99
bb99:
  %t704 = load i1, ptr %l191, !tbaa !21
  store i1 %t704, ptr %l189, !tbaa !21
  br label %bb100
bb100:
  %t705 = load i1, ptr %l189, !tbaa !21
  store i1 %t705, ptr %l11, !tbaa !21
  store ptr %l12, ptr %l192, !tbaa !29
  %t706 = load ptr, ptr %l16, !tbaa !29
  %t707 = load ptr, ptr %lp18
  %t708 = load i64, ptr %l10, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t709
  %t710 = getelementptr { i64, [2 x i64] }, ptr %t709, i32 0, i32 0
  store i64 3, ptr %t710
  %t712 = insertvalue { i64 } undef, i64 %t708, 0
  %t713 = getelementptr { i64, [2 x i64] }, ptr %t709, i32 0, i32 1
  store { i64 } %t712, ptr %t713
  %t714 = load { i64, [2 x i64] }, ptr %t709
  %t716 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t714, ptr %t716
  %t720 = call { i64, [2 x i64] } @compiler_2fnotebook_2ewith(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t706, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %t707, ptr %t716)
  store { i64, [2 x i64] } %t720, ptr %l198
  br label %bb101
bb101:
  %t721 = load { i64, [2 x i64] }, ptr %l198
  %t722 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t721, ptr %t722
  %t723 = load ptr, ptr %l192, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2ePush_3cstd_2fjson_3aJson_26_3e(ptr %s0, ptr %s0, ptr %t723, ptr %t722)
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s15)
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s13)
  br label %bb104
bb104:
  br label %bb105
bb105:
  call void @__olang_scope_close(ptr %s8)
  br label %bb106
bb106:
  %t725 = load i64, ptr %l14, !tbaa !24
  %t727 = add i64 %t725, 1
  store i64 %t727, ptr %l14, !tbaa !24
  br label %bb72
bb107:
  call void @compiler_2fprompt_2ecompiler_2fprompt_3aSession_2eEnd(ptr %s0, ptr %v0, ptr %l9)
  br label %bb108
bb108:
  %t730 = load ptr, ptr %l7, !tbaa !29
  %t732 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAsObj(ptr %s0, ptr %s0, ptr %t730)
  %t733 = extractvalue { i32, ptr } %t732, 1
  %t734 = extractvalue { i32, ptr } %t732, 0
  store i32 %t734, ptr %l206
  %t735 = icmp ne i32 %t734, 0
  br i1 %t735, label %bb110, label %ok.736, !prof !99
ok.736:
  store ptr %t733, ptr %l205
  br label %bb109
bb109:
  %t737 = load ptr, ptr %l205, !tbaa !29
  store ptr %t737, ptr %l203, !tbaa !29
  br label %bb115
bb110:
  %t738 = load i32, ptr %l206, !tbaa !23
  %t739 = ashr i32 %t738, 16
  %t741 = icmp eq i32 %t739, 1
  store i1 %t741, ptr %l208, !tbaa !21
  %t742 = load i32, ptr %l206, !tbaa !23
  %t743 = ashr i32 %t742, 16
  %t745 = icmp eq i32 %t743, 1
  br i1 %t745, label %bb111, label %bb112
bb111:
  call void @__olang_errpay_pop()
  br label %bb112
bb112:
  br label %bb113
bb113:
  store %olang.scope zeroinitializer, ptr %s17
  %t747 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t749 = extractvalue { i64, ptr } %t747, 1
  %t750 = extractvalue { i64, ptr } %t747, 0
  %t751 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t752 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t753 = add i64 %t750, %t752
  %t754 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t753)
  call void @olang_textcopy(ptr %t754, ptr %t749, i64 %t750)
  %t755 = getelementptr i8, ptr %t754, i64 %t750
  call void @olang_textcopy(ptr %t755, ptr %t751, i64 %t752)
  %t756 = insertvalue { i64, ptr } undef, i64 %t753, 0
  %t757 = insertvalue { i64, ptr } %t756, ptr %t754, 1
  %t759 = extractvalue { i64, ptr } %t757, 0
  %t760 = extractvalue { i64, ptr } %t757, 1
  %t761 = mul i64 %t759, 1
  %t762 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t761)
  call void @llvm.memcpy.p0.p0.i64(ptr %t762, ptr %t760, i64 %t761, i1 false)
  %t763 = insertvalue { i64, ptr } undef, i64 %t759, 0
  %t764 = insertvalue { i64, ptr } %t763, ptr %t762, 1
  %t766 = call i32 @compiler_2fnotebook_2efail(ptr %s17, { i64, ptr } %t764)
  store i32 %t766, ptr %l214
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  %t767 = load i32, ptr %l214, !tbaa !23
  store i32 %t767, ptr %rv
  br label %ret
bb115:
  %t769 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2eToArray_3cstd_2fjson_3aJson_26_3e(ptr %s0, ptr %s0, ptr %l12)
  store { i64, ptr } %t769, ptr %l216
  br label %bb116
bb116:
  store { i64, [2 x i64] } zeroinitializer, ptr %t770
  %t771 = getelementptr { i64, [2 x i64] }, ptr %t770, i32 0, i32 0
  store i64 6, ptr %t771
  %t772 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t773 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t772, 0
  %t774 = getelementptr { i64, [2 x i64] }, ptr %t770, i32 0, i32 1
  store { { i64, ptr } } %t773, ptr %t774
  %t775 = load { i64, [2 x i64] }, ptr %t770
  %t777 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t775, ptr %t777
  %t778 = load ptr, ptr %l203, !tbaa !29
  %t780 = call %"std/json:Object" @compiler_2fnotebook_2eset(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t778, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %t777)
  store %"std/json:Object" %t780, ptr %l219
  br label %bb117
bb117:
  %t781 = load %"std/json:Object", ptr %l219
  store %"std/json:Object" %t781, ptr %l19
  %t782 = load ptr, ptr %l7, !tbaa !29
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l222, !tbaa !27
  %t783 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t786 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t782, { i64, ptr } %t783)
  %t787 = extractvalue { i32, ptr } %t786, 1
  %t788 = extractvalue { i32, ptr } %t786, 0
  store i32 %t788, ptr %l225
  %t789 = icmp ne i32 %t788, 0
  br i1 %t789, label %bb119, label %ok.790, !prof !99
ok.790:
  store ptr %t787, ptr %l224
  br label %bb118
bb118:
  %t791 = load ptr, ptr %l224, !tbaa !29
  %t792 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAsObj(ptr %s0, ptr %s0, ptr %t791)
  %t793 = extractvalue { i32, ptr } %t792, 1
  %t794 = extractvalue { i32, ptr } %t792, 0
  store i32 %t794, ptr %l231
  %t795 = icmp ne i32 %t794, 0
  br i1 %t795, label %bb124, label %ok.796, !prof !99
ok.796:
  store ptr %t793, ptr %l230
  br label %bb123
bb119:
  %t797 = load i32, ptr %l225, !tbaa !23
  %t798 = ashr i32 %t797, 16
  %t800 = icmp eq i32 %t798, 1
  store i1 %t800, ptr %l227, !tbaa !21
  %t801 = load i32, ptr %l225, !tbaa !23
  %t802 = ashr i32 %t801, 16
  %t804 = icmp eq i32 %t802, 1
  br i1 %t804, label %bb120, label %bb121
bb120:
  call void @__olang_errpay_pop()
  br label %bb121
bb121:
  br label %bb122
bb122:
  %t806 = call %"std/json:Object" @compiler_2fnotebook_2eempty(ptr %s0)
  store %"std/json:Object" %t806, ptr %l236
  br label %bb127
bb123:
  %t807 = load ptr, ptr %l230, !tbaa !29
  store ptr %t807, ptr %l220, !tbaa !29
  br label %bb128
bb124:
  %t808 = load i32, ptr %l231, !tbaa !23
  %t809 = ashr i32 %t808, 16
  %t811 = icmp eq i32 %t809, 1
  store i1 %t811, ptr %l233, !tbaa !21
  %t812 = load i32, ptr %l231, !tbaa !23
  %t813 = ashr i32 %t812, 16
  %t815 = icmp eq i32 %t813, 1
  br i1 %t815, label %bb125, label %bb126
bb125:
  call void @__olang_errpay_pop()
  br label %bb126
bb126:
  br label %bb122
bb127:
  %t817 = load %"std/json:Object", ptr %l236
  %t818 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 48, i64 8)
  store %"std/json:Object" %t817, ptr %t818
  store ptr %t818, ptr %l220, !tbaa !29
  br label %bb128
bb128:
  %t820 = load ptr, ptr %l220, !tbaa !29
  %t821 = load %"std/json:Object", ptr %l19
  %t823 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 48, i64 8)
  store %"std/json:Object" %t821, ptr %t823
  store ptr %t823, ptr %l239, !tbaa !29
  %t826 = call %"std/json:Object" @compiler_2fnotebook_2ekernelspec(ptr %s0, ptr %s0, ptr %t820)
  store %"std/json:Object" %t826, ptr %l241
  br label %bb129
bb129:
  %t827 = load %"std/json:Object", ptr %l241
  %t828 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 48, i64 8)
  store %"std/json:Object" %t827, ptr %t828
  store { i64, [2 x i64] } zeroinitializer, ptr %t829
  %t830 = getelementptr { i64, [2 x i64] }, ptr %t829, i32 0, i32 0
  store i64 7, ptr %t830
  %t832 = insertvalue { ptr } undef, ptr %t828, 0
  %t833 = getelementptr { i64, [2 x i64] }, ptr %t829, i32 0, i32 1
  store { ptr } %t832, ptr %t833
  %t834 = load { i64, [2 x i64] }, ptr %t829
  %t836 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t834, ptr %t836
  %t837 = load ptr, ptr %l239, !tbaa !29
  %t839 = call %"std/json:Object" @compiler_2fnotebook_2eset(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t837, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %t836)
  store %"std/json:Object" %t839, ptr %l245
  br label %bb130
bb130:
  %t840 = load %"std/json:Object", ptr %l19
  store %"std/json:Object" %t840, ptr %l246
  %t841 = load %"std/json:Object", ptr %l245
  store %"std/json:Object" %t841, ptr %l19
  %t842 = load i1, ptr @olang_2esole_2estd_2fjson_3aObject_2e0
  br i1 %t842, label %bb131, label %bb132
bb131:
  %t844 = getelementptr %"std/json:Object", ptr %l246, i32 0, i32 0
  %t845 = load { i64, ptr }, ptr %t844
  %t846 = extractvalue { i64, ptr } %t845, 1
  call void @__olang_region_release(ptr %t846)
  store { i64, ptr } zeroinitializer, ptr %t844
  br label %bb132
bb132:
  %t847 = load i1, ptr @olang_2esole_2estd_2fjson_3aObject_2e2
  br i1 %t847, label %bb133, label %bb134
bb133:
  %t849 = getelementptr %"std/json:Object", ptr %l246, i32 0, i32 2
  %t850 = load { i64, ptr }, ptr %t849
  %t851 = extractvalue { i64, ptr } %t850, 1
  call void @__olang_region_release(ptr %t851)
  store { i64, ptr } zeroinitializer, ptr %t849
  br label %bb134
bb134:
  %t852 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t854 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t852, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t854, ptr %l250
  br label %bb135
bb135:
  %t855 = load i1, ptr %l250, !tbaa !21
  %t856 = xor i1 %t855, true
  br i1 %t856, label %bb136, label %bb137
bb136:
  %t858 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t858, ptr %l252, !tbaa !27
  br label %bb138
bb137:
  %t860 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t860, ptr %l252, !tbaa !27
  br label %bb138
bb138:
  %t862 = load { i64, ptr }, ptr %l252, !tbaa !27
  store { i64, ptr } %t862, ptr %l21, !tbaa !27
  %t863 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t863, ptr %l255, !tbaa !27
  store { i64, [2 x i64] } zeroinitializer, ptr %t864
  %t865 = getelementptr { i64, [2 x i64] }, ptr %t864, i32 0, i32 0
  store i64 7, ptr %t865
  %t867 = insertvalue { ptr } undef, ptr %l19, 0
  %t868 = getelementptr { i64, [2 x i64] }, ptr %t864, i32 0, i32 1
  store { ptr } %t867, ptr %t868
  %t869 = load { i64, [2 x i64] }, ptr %t864
  %t872 = call { i64, ptr } @std_2fjson_2eEncode_3cstd_2fjson_3aJson_3e(ptr %s0, ptr %s0, ptr %s0, { i64, [2 x i64] } %t869, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, i32 0)
  store { i64, ptr } %t872, ptr %l259
  br label %bb139
bb139:
  %t873 = load { i64, ptr }, ptr %l259, !tbaa !27
  %t874 = extractvalue { i64, ptr } %t873, 1
  %t875 = extractvalue { i64, ptr } %t873, 0
  %t876 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t877 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t878 = add i64 %t875, %t877
  %t879 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t878)
  call void @olang_textcopy(ptr %t879, ptr %t874, i64 %t875)
  %t880 = getelementptr i8, ptr %t879, i64 %t875
  call void @olang_textcopy(ptr %t880, ptr %t876, i64 %t877)
  %t881 = insertvalue { i64, ptr } undef, i64 %t878, 0
  %t882 = insertvalue { i64, ptr } %t881, ptr %t879, 1
  %t885 = extractvalue { i64, ptr } %t882, 0
  %t886 = extractvalue { i64, ptr } %t882, 1
  %t887 = mul i64 %t885, 1
  %t888 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t887)
  call void @llvm.memcpy.p0.p0.i64(ptr %t888, ptr %t886, i64 %t887, i1 false)
  %t889 = insertvalue { i64, ptr } undef, i64 %t885, 0
  %t890 = insertvalue { i64, ptr } %t889, ptr %t888, 1
  %t891 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t892 = extractvalue { i64, ptr } %t891, 1
  %t893 = call ptr @__olang_scope_of(ptr %t892, ptr null)
  %t894 = ptrtoint ptr %t893 to i64
  %t896 = inttoptr i64 %t894 to ptr
  %t897 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t899 = call i32 @std_2fos_2eWriteFile(ptr %t896, ptr %s0, { i64, ptr } %t897, { i64, ptr } %t890)
  store i32 %t899, ptr %l264
  %t900 = icmp ne i32 %t899, 0
  br i1 %t900, label %bb141, label %ok.901, !prof !99
ok.901:
  br label %bb140
bb140:
  br label %bb165
bb141:
  %t902 = load i32, ptr %l264, !tbaa !23
  %t903 = ashr i32 %t902, 16
  %t905 = icmp eq i32 %t903, 1
  store i1 %t905, ptr %l266, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l22
  %t906 = load i32, ptr %l264, !tbaa !23
  %t907 = lshr i32 %t906, 16
  %t908 = and i32 %t906, 65535
  %t909 = icmp eq i32 %t907, 1
  %t910 = select i1 %t909, i32 1, i32 0
  %t911 = icmp eq i32 %t906, 0
  %t912 = shl i32 %t910, 16
  %t913 = or i32 %t912, %t908
  %t914 = select i1 %t911, i32 0, i32 %t913
  %t915 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l22, i32 0, i32 0
  store i32 %t914, ptr %t915, !tbaa !23
  br label %bb142
bb142:
  store %olang.scope zeroinitializer, ptr %s20
  %t916 = load { i32, { i64, [2 x i64] } }, ptr %l22
  store { i32, { i64, [2 x i64] } } %t916, ptr %l267
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l268
  %t917 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l267, i32 0, i32 0
  %t918 = load i32, ptr %t917, !tbaa !23
  store i32 %t918, ptr %l269, !tbaa !23
  %t919 = load i32, ptr %l269, !tbaa !23
  %t920 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l268, i32 0, i32 0
  store i32 %t919, ptr %t920, !tbaa !23
  %t921 = load i32, ptr %l269, !tbaa !23
  %t922 = ashr i32 %t921, 16
  %t924 = icmp eq i32 %t922, 1
  br i1 %t924, label %bb143, label %bb144
bb143:
  %t926 = call ptr @__olang_errpay_top_get()
  %t928 = load { i64, [2 x i64] }, ptr %t926
  %t929 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l268, i32 0, i32 1
  store { i64, [2 x i64] } %t928, ptr %t929
  br label %bb144
bb144:
  %t931 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s0, ptr %l268)
  store { i32, { i64, [2 x i64] } } %t931, ptr %l274
  br label %bb145
bb145:
  %t932 = load { i32, { i64, [2 x i64] } }, ptr %l274
  store { i32, { i64, [2 x i64] } } %t932, ptr %l22
  %t933 = load { i32, { i64, [2 x i64] } }, ptr %l22
  store { i32, { i64, [2 x i64] } } %t933, ptr %l275
  %t934 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l275, i32 0, i32 0
  %t935 = load i32, ptr %t934, !tbaa !23
  %t936 = ashr i32 %t935, 16
  %t938 = icmp eq i32 %t936, 1
  br i1 %t938, label %bb146, label %bb147
bb146:
  call void @__olang_errpay_pop()
  br label %bb147
bb147:
  %t940 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t940, ptr %l278, !tbaa !27
  %t941 = load { i32, { i64, [2 x i64] } }, ptr %l22
  store { i32, { i64, [2 x i64] } } %t941, ptr %l279
  %t943 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s20, ptr %l279)
  store { i32, { i64, [2 x i64] } } %t943, ptr %l281
  br label %bb148
bb148:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s21
  store ptr %s21room, ptr %s21
  %t944 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t945 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t944, i64 %t945)
  %t946 = load { i64, ptr }, ptr %l278, !tbaa !27
  %t947 = extractvalue { i64, ptr } %t946, 1
  %t948 = extractvalue { i64, ptr } %t946, 0
  call void @__olang_sb_put(ptr %s21, ptr %t947, i64 %t948)
  %t949 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t950 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t949, i64 %t950)
  %t951 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l281, i32 0, i32 0
  %t952 = load i32, ptr %t951, !tbaa !23
  store i32 %t952, ptr %l282, !tbaa !23
  %t953 = load i32, ptr %l282, !tbaa !23
  %t954 = icmp eq i32 %t953, 0
  br i1 %t954, label %bb150, label %bb151
bb149:
  %t956 = load ptr, ptr %s21
  %t957 = getelementptr %olang.builder, ptr %s21, i32 0, i32 1
  %t958 = load i64, ptr %t957
  %t959 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t958)
  call void @olang_textcopy(ptr %t959, ptr %t956, i64 %t958)
  %t960 = insertvalue { i64, ptr } undef, i64 %t958, 0
  %t961 = insertvalue { i64, ptr } %t960, ptr %t959, 1
  store { i64, ptr } %t961, ptr %l297, !tbaa !27
  %t962 = getelementptr %olang.builder, ptr %s21, i32 0, i32 3
  %t963 = load ptr, ptr %t962
  %t964 = icmp ne ptr %t963, null
  br i1 %t964, label %sbgrew.965, label %sbdone.966
sbgrew.965:
  call void @__olang_sb_done(ptr %s21)
  br label %sbdone.966
sbdone.966:
  %t967 = load { i64, ptr }, ptr %l297, !tbaa !27
  %t968 = extractvalue { i64, ptr } %t967, 0
  %t969 = extractvalue { i64, ptr } %t967, 1
  %t970 = mul i64 %t968, 1
  %t971 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t970)
  call void @llvm.memcpy.p0.p0.i64(ptr %t971, ptr %t969, i64 %t970, i1 false)
  %t972 = insertvalue { i64, ptr } undef, i64 %t968, 0
  %t973 = insertvalue { i64, ptr } %t972, ptr %t971, 1
  %t975 = call i32 @compiler_2fnotebook_2efail(ptr %s20, { i64, ptr } %t973)
  store i32 %t975, ptr %l299
  br label %bb164
bb150:
  %t976 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t977 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t976, i64 %t977)
  br label %bb149
bb151:
  %t978 = load i32, ptr %l282, !tbaa !23
  %t979 = icmp eq i32 %t978, 65536
  br i1 %t979, label %bb152, label %bb153
bb152:
  %t981 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t982 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t981, i64 %t982)
  %t983 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t984 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t983, i64 %t984)
  %t985 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l281, i32 0, i32 1
  %t986 = getelementptr { i64, [2 x i64] }, ptr %t985, i32 0, i32 1
  %t987 = getelementptr { { i64, ptr } }, ptr %t986, i32 0, i32 0
  %t988 = load { i64, ptr }, ptr %t987
  %t990 = extractvalue { i64, ptr } %t988, 1
  %t991 = extractvalue { i64, ptr } %t988, 0
  %t992 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t990, i64 %t991, i8 34)
  %t993 = call ptr @__olang_sb_room(ptr %s21, i64 %t992)
  %t994 = call i64 @__olang_rd_quote(ptr %t993, i64 0, ptr %t990, i64 %t991, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t992)
  %t995 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t996 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t995, i64 %t996)
  br label %bb149
bb153:
  %t997 = load i32, ptr %l282, !tbaa !23
  %t998 = icmp eq i32 %t997, 65537
  br i1 %t998, label %bb154, label %bb155
bb154:
  %t1000 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t1001 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1000, i64 %t1001)
  %t1002 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t1003 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1002, i64 %t1003)
  %t1004 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l281, i32 0, i32 1
  %t1005 = getelementptr { i64, [2 x i64] }, ptr %t1004, i32 0, i32 1
  %t1006 = getelementptr { { i64, ptr } }, ptr %t1005, i32 0, i32 0
  %t1007 = load { i64, ptr }, ptr %t1006
  %t1009 = extractvalue { i64, ptr } %t1007, 1
  %t1010 = extractvalue { i64, ptr } %t1007, 0
  %t1011 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t1009, i64 %t1010, i8 34)
  %t1012 = call ptr @__olang_sb_room(ptr %s21, i64 %t1011)
  %t1013 = call i64 @__olang_rd_quote(ptr %t1012, i64 0, ptr %t1009, i64 %t1010, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t1011)
  %t1014 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t1015 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1014, i64 %t1015)
  br label %bb149
bb155:
  %t1016 = load i32, ptr %l282, !tbaa !23
  %t1017 = icmp eq i32 %t1016, 65538
  br i1 %t1017, label %bb156, label %bb157
bb156:
  %t1019 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t1020 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1019, i64 %t1020)
  %t1021 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t1022 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1021, i64 %t1022)
  %t1023 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l281, i32 0, i32 1
  %t1024 = getelementptr { i64, [2 x i64] }, ptr %t1023, i32 0, i32 1
  %t1025 = getelementptr { { i64, ptr } }, ptr %t1024, i32 0, i32 0
  %t1026 = load { i64, ptr }, ptr %t1025
  %t1028 = extractvalue { i64, ptr } %t1026, 1
  %t1029 = extractvalue { i64, ptr } %t1026, 0
  %t1030 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t1028, i64 %t1029, i8 34)
  %t1031 = call ptr @__olang_sb_room(ptr %s21, i64 %t1030)
  %t1032 = call i64 @__olang_rd_quote(ptr %t1031, i64 0, ptr %t1028, i64 %t1029, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t1030)
  %t1033 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t1034 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1033, i64 %t1034)
  br label %bb149
bb157:
  %t1035 = load i32, ptr %l282, !tbaa !23
  %t1036 = icmp eq i32 %t1035, 65539
  br i1 %t1036, label %bb158, label %bb159
bb158:
  %t1038 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t1039 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1038, i64 %t1039)
  %t1040 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t1041 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1040, i64 %t1041)
  %t1042 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l281, i32 0, i32 1
  %t1043 = getelementptr { i64, [2 x i64] }, ptr %t1042, i32 0, i32 1
  %t1044 = getelementptr { { i64, ptr } }, ptr %t1043, i32 0, i32 0
  %t1045 = load { i64, ptr }, ptr %t1044
  %t1047 = extractvalue { i64, ptr } %t1045, 1
  %t1048 = extractvalue { i64, ptr } %t1045, 0
  %t1049 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t1047, i64 %t1048, i8 34)
  %t1050 = call ptr @__olang_sb_room(ptr %s21, i64 %t1049)
  %t1051 = call i64 @__olang_rd_quote(ptr %t1050, i64 0, ptr %t1047, i64 %t1048, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t1049)
  %t1052 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t1053 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1052, i64 %t1053)
  br label %bb149
bb159:
  %t1054 = load i32, ptr %l282, !tbaa !23
  %t1055 = icmp eq i32 %t1054, 65540
  br i1 %t1055, label %bb160, label %bb161
bb160:
  %t1057 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t1058 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1057, i64 %t1058)
  %t1059 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t1060 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1059, i64 %t1060)
  %t1061 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l281, i32 0, i32 1
  %t1062 = getelementptr { i64, [2 x i64] }, ptr %t1061, i32 0, i32 1
  %t1063 = getelementptr { { i64, ptr } }, ptr %t1062, i32 0, i32 0
  %t1064 = load { i64, ptr }, ptr %t1063
  %t1066 = extractvalue { i64, ptr } %t1064, 1
  %t1067 = extractvalue { i64, ptr } %t1064, 0
  %t1068 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t1066, i64 %t1067, i8 34)
  %t1069 = call ptr @__olang_sb_room(ptr %s21, i64 %t1068)
  %t1070 = call i64 @__olang_rd_quote(ptr %t1069, i64 0, ptr %t1066, i64 %t1067, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t1068)
  %t1071 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t1072 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1071, i64 %t1072)
  br label %bb149
bb161:
  %t1073 = load i32, ptr %l282, !tbaa !23
  %t1074 = icmp eq i32 %t1073, 65541
  br i1 %t1074, label %bb162, label %bb163
bb162:
  %t1076 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t1077 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1076, i64 %t1077)
  %t1078 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t1079 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1078, i64 %t1079)
  %t1080 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l281, i32 0, i32 1
  %t1081 = getelementptr { i64, [2 x i64] }, ptr %t1080, i32 0, i32 1
  %t1082 = getelementptr { { i64, ptr } }, ptr %t1081, i32 0, i32 0
  %t1083 = load { i64, ptr }, ptr %t1082
  %t1085 = extractvalue { i64, ptr } %t1083, 1
  %t1086 = extractvalue { i64, ptr } %t1083, 0
  %t1087 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t1085, i64 %t1086, i8 34)
  %t1088 = call ptr @__olang_sb_room(ptr %s21, i64 %t1087)
  %t1089 = call i64 @__olang_rd_quote(ptr %t1088, i64 0, ptr %t1085, i64 %t1086, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t1087)
  %t1090 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t1091 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1090, i64 %t1091)
  br label %bb149
bb163:
  %t1092 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t1093 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1092, i64 %t1093)
  %t1094 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t1095 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1094, i64 %t1095)
  %t1096 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l281, i32 0, i32 1
  %t1097 = getelementptr { i64, [2 x i64] }, ptr %t1096, i32 0, i32 1
  %t1098 = getelementptr { { i64, ptr } }, ptr %t1097, i32 0, i32 0
  %t1099 = load { i64, ptr }, ptr %t1098
  %t1101 = extractvalue { i64, ptr } %t1099, 1
  %t1102 = extractvalue { i64, ptr } %t1099, 0
  %t1103 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t1101, i64 %t1102, i8 34)
  %t1104 = call ptr @__olang_sb_room(ptr %s21, i64 %t1103)
  %t1105 = call i64 @__olang_rd_quote(ptr %t1104, i64 0, ptr %t1101, i64 %t1102, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t1103)
  %t1106 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t1107 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t1106, i64 %t1107)
  br label %bb149
bb164:
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s0)
  %t1108 = load i32, ptr %l299, !tbaa !23
  store i32 %t1108, ptr %rv
  br label %ret
bb165:
  %t1109 = load i1, ptr %l11, !tbaa !21
  br i1 %t1109, label %bb166, label %bb167
bb166:
  store i32 1, ptr %l301, !tbaa !23
  br label %bb168
bb167:
  store i32 0, ptr %l301, !tbaa !23
  br label %bb168
bb168:
  call void @__olang_scope_close(ptr %s0)
  %t1111 = load i32, ptr %l301, !tbaa !23
  store i32 %t1111, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"std/json:Object" @compiler_2fnotebook_2eempty(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/json:Object"
  %l2 = alloca %"std/json:Object"
  %l3 = alloca i32
  %rv = alloca %"std/json:Object"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = mul i64 0, 8
  %t2 = insertvalue { i64, ptr } undef, i64 0, 0
  %t3 = insertvalue { i64, ptr } %t2, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t5 = call { i32, %"std/json:Object" } @std_2fjson_3aObject_2ector(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x { i64, ptr }] }>, ptr @.d54, i32 0, i32 1) }, { i64, ptr } %t3)
  %t6 = extractvalue { i32, %"std/json:Object" } %t5, 1
  %t7 = extractvalue { i32, %"std/json:Object" } %t5, 0
  store i32 %t7, ptr %l3
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store %"std/json:Object" %t6, ptr %l2
  br label %bb1
bb1:
  %t10 = load %"std/json:Object", ptr %l2
  store %"std/json:Object" %t10, ptr %l0
  br label %bb6
bb2:
  %t11 = load i32, ptr %l3, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_check_failed(ptr @olang_loc_45976cf57d825baf_761c405890d45b73)
  unreachable
bb6:
  %t16 = load %"std/json:Object", ptr %l0
  store %"std/json:Object" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"std/json:Object", ptr %rv
  ret %"std/json:Object" %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fnotebook_2eexecute(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca %"compiler/jupyter:Capture"
  %l4 = alloca %"compiler/jupyter:Capture"
  %l5 = alloca %"compiler/prompt:Reply"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/text:LineIter"
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l17 = alloca %"compiler/jupyter:Capture"
  %l18 = alloca %"compiler/jupyter:Capture"
  %l24 = alloca %"compiler/prompt:Reply"
  %l26 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i64
  %l37 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l47 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i64
  %l53 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l57 = alloca i64
  %l60 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l69 = alloca i1
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca { i64, ptr }
  %l74 = alloca %"std/prelude/text:LineIter"
  %l75 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l78 = alloca i32
  %l80 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i64
  %l85 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l89 = alloca ptr
  %l90 = alloca i64
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l101 = alloca ptr
  %l102 = alloca i64
  %l105 = alloca { i64, ptr }
  %l108 = alloca ptr
  %l109 = alloca i32
  %l111 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t29 = alloca %"compiler/prompt:Reply", align 8
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/jupyter:Capture" @compiler_2fjupyter_3aCapture_2ector(ptr %s0, i32 1)
  store %"compiler/jupyter:Capture" %t1, ptr %l17
  br label %bb1
bb1:
  %t2 = load %"compiler/jupyter:Capture", ptr %l17
  store %"compiler/jupyter:Capture" %t2, ptr %l3
  %t3 = call %"compiler/jupyter:Capture" @compiler_2fjupyter_3aCapture_2ector(ptr %s0, i32 2)
  store %"compiler/jupyter:Capture" %t3, ptr %l18
  br label %bb2
bb2:
  %t4 = load %"compiler/jupyter:Capture", ptr %l18
  store %"compiler/jupyter:Capture" %t4, ptr %l4
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t11 = call i64 @__olang_fmt_i64(ptr null, i64 %t7)
  %t12 = add i64 %t9, %t11
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @olang_textcopy(ptr %t16, ptr %t8, i64 %t9)
  %t17 = getelementptr i8, ptr %t16, i64 %t9
  %t18 = call i64 @__olang_fmt_i64(ptr %t17, i64 %t7)
  %t19 = getelementptr i8, ptr %t17, i64 %t11
  call void @olang_textcopy(ptr %t19, ptr %t13, i64 %t14)
  %t20 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t16, 1
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t24 = extractvalue { i64, ptr } %t21, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  call void @compiler_2fprompt_2ecompiler_2fprompt_3aSession_2eCell(ptr %t29, ptr %v0, ptr %v1, ptr %s0, ptr %v0, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %t28)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t29, i64 144, i1 false)
  br label %bb3
bb3:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l24, i64 144, i1 false)
  %t34 = call { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3aCapture_2eEnd(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t34, ptr %l26
  br label %bb4
bb4:
  %t35 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t35, ptr %l6, !tbaa !27
  %t37 = call { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3aCapture_2eEnd(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t37, ptr %l28
  br label %bb5
bb5:
  %t38 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t38, ptr %l7, !tbaa !27
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l29
  br label %bb6
bb6:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l8
  %t41 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t43, ptr %l31
  br label %bb7
bb7:
  %t44 = load i1, ptr %l31, !tbaa !21
  %t45 = xor i1 %t44, true
  br i1 %t45, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  store ptr %l8, ptr %l33, !tbaa !29
  %t47 = ptrtoint ptr %s0 to i64
  store i64 %t47, ptr %l34, !tbaa !24
  %t48 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t48, label %bb10, label %bb11
bb9:
  br label %bb14
bb10:
  %t50 = call ptr @__olang_region_make(ptr %s0)
  %t51 = ptrtoint ptr %t50 to i64
  store i64 %t51, ptr %l34, !tbaa !24
  br label %bb11
bb11:
  %t52 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t53 = load i64, ptr %l34
  %t54 = inttoptr i64 %t53 to ptr
  %t56 = call { i64, ptr } @compiler_2fnotebook_2estream(ptr %s2, ptr %s0, ptr %t54, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d58, i32 0, i32 1) }, { i64, ptr } %t52)
  store { i64, ptr } %t56, ptr %l37
  br label %bb12
bb12:
  %t57 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t58 = load i64, ptr %l34
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = extractvalue { i64, ptr } %t57, 0
  %t61 = extractvalue { i64, ptr } %t57, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %t59, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t66 = load ptr, ptr %l33, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t66, { i64, ptr } %t65)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  %t68 = getelementptr %"compiler/prompt:Reply", ptr %l5, i32 0, i32 0
  %t69 = load i1, ptr %t68, !tbaa !21
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = getelementptr %"compiler/prompt:Reply", ptr %l5, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l40, !tbaa !27
  br label %bb17
bb16:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l40, !tbaa !27
  br label %bb17
bb17:
  %t74 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t77 = getelementptr %"compiler/prompt:Reply", ptr %l5, i32 0, i32 5
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t75, 1
  %t81 = extractvalue { i64, ptr } %t75, 0
  %t83 = extractvalue { i64, ptr } %t74, 1
  %t84 = extractvalue { i64, ptr } %t74, 0
  %t85 = add i64 %t81, %t84
  %t87 = extractvalue { i64, ptr } %t78, 1
  %t88 = extractvalue { i64, ptr } %t78, 0
  %t89 = add i64 %t85, %t88
  %t90 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t89)
  call void @olang_textcopy(ptr %t90, ptr %t80, i64 %t81)
  %t91 = getelementptr i8, ptr %t90, i64 %t81
  call void @olang_textcopy(ptr %t91, ptr %t83, i64 %t84)
  %t92 = getelementptr i8, ptr %t91, i64 %t84
  call void @olang_textcopy(ptr %t92, ptr %t87, i64 %t88)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t90, 1
  store { i64, ptr } %t94, ptr %l10, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t98 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t96, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t98, ptr %l47
  br label %bb18
bb18:
  %t99 = load i1, ptr %l47, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l8, ptr %l49, !tbaa !29
  %t102 = ptrtoint ptr %s0 to i64
  store i64 %t102, ptr %l50, !tbaa !24
  %t103 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t103, label %bb21, label %bb22
bb20:
  br label %bb25
bb21:
  %t105 = call ptr @__olang_region_make(ptr %s0)
  %t106 = ptrtoint ptr %t105 to i64
  store i64 %t106, ptr %l50, !tbaa !24
  br label %bb22
bb22:
  %t107 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t108 = load i64, ptr %l50
  %t109 = inttoptr i64 %t108 to ptr
  %t111 = call { i64, ptr } @compiler_2fnotebook_2estream(ptr %s4, ptr %s0, ptr %t109, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d61, i32 0, i32 1) }, { i64, ptr } %t107)
  store { i64, ptr } %t111, ptr %l53
  br label %bb23
bb23:
  %t112 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t113 = load i64, ptr %l50
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = extractvalue { i64, ptr } %t112, 0
  %t116 = extractvalue { i64, ptr } %t112, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %t114, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  %t121 = load ptr, ptr %l49, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t121, { i64, ptr } %t120)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb25
bb25:
  %t123 = getelementptr %"compiler/prompt:Reply", ptr %l5, i32 0, i32 2
  %t124 = load i1, ptr %t123, !tbaa !21
  br i1 %t124, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  store ptr %l8, ptr %l56, !tbaa !29
  %t126 = ptrtoint ptr %s0 to i64
  store i64 %t126, ptr %l57, !tbaa !24
  %t127 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t127, label %bb28, label %bb29
bb27:
  br label %bb32
bb28:
  %t129 = call ptr @__olang_region_make(ptr %s0)
  %t130 = ptrtoint ptr %t129 to i64
  store i64 %t130, ptr %l57, !tbaa !24
  br label %bb29
bb29:
  %t132 = call { i64, ptr } @compiler_2fjupyter_2eData(ptr %v0, ptr %s5, ptr %l5)
  store { i64, ptr } %t132, ptr %l60
  br label %bb30
bb30:
  %t133 = load i64, ptr %l2, !tbaa !24
  %t134 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t136 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 1
  %t138 = extractvalue { i64, ptr } %t136, 0
  %t139 = add i64 %t135, %t138
  %t140 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t144 = call i64 @__olang_fmt_i64(ptr null, i64 %t133)
  %t145 = add i64 %t142, %t144
  %t146 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t148 = add i64 %t145, %t147
  %t149 = load i64, ptr %l57
  %t150 = inttoptr i64 %t149 to ptr
  %t151 = call ptr @__olang_scope_alloc(ptr %t150, i64 %t148)
  call void @olang_textcopy(ptr %t151, ptr %t134, i64 %t135)
  %t152 = getelementptr i8, ptr %t151, i64 %t135
  call void @olang_textcopy(ptr %t152, ptr %t137, i64 %t138)
  %t153 = getelementptr i8, ptr %t152, i64 %t138
  call void @olang_textcopy(ptr %t153, ptr %t140, i64 %t141)
  %t154 = getelementptr i8, ptr %t153, i64 %t141
  %t155 = call i64 @__olang_fmt_i64(ptr %t154, i64 %t133)
  %t156 = getelementptr i8, ptr %t154, i64 %t144
  call void @olang_textcopy(ptr %t156, ptr %t146, i64 %t147)
  %t157 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t158 = insertvalue { i64, ptr } %t157, ptr %t151, 1
  %t160 = load i64, ptr %l57
  %t161 = inttoptr i64 %t160 to ptr
  %t162 = extractvalue { i64, ptr } %t158, 0
  %t163 = extractvalue { i64, ptr } %t158, 1
  %t164 = mul i64 %t162, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %t161, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  %t168 = load ptr, ptr %l56, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t168, { i64, ptr } %t167)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s5)
  br label %bb32
bb32:
  %t170 = getelementptr %"compiler/prompt:Reply", ptr %l5, i32 0, i32 0
  %t171 = load i1, ptr %t170, !tbaa !21
  br i1 %t171, label %bb33, label %bb34
bb33:
  %t173 = getelementptr %"compiler/prompt:Reply", ptr %l5, i32 0, i32 4
  %t174 = load { i64, ptr }, ptr %t173, !tbaa !27
  store { i64, ptr } %t174, ptr %l65, !tbaa !27
  br label %bb35
bb34:
  %t176 = getelementptr %"compiler/prompt:Reply", ptr %l5, i32 0, i32 1
  %t177 = load { i64, ptr }, ptr %t176, !tbaa !27
  store { i64, ptr } %t177, ptr %l65, !tbaa !27
  br label %bb35
bb35:
  %t179 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t179, ptr %l11, !tbaa !27
  %t180 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t182 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t180, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t182, ptr %l69
  br label %bb36
bb36:
  %t183 = load i1, ptr %l69, !tbaa !21
  %t184 = xor i1 %t183, true
  br i1 %t184, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s7
  %t186 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %l71
  br label %bb39
bb38:
  br label %bb62
bb39:
  %t187 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t187, ptr %l12
  %t188 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t190 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %v0, ptr %v0, { i64, ptr } %t188)
  store { i64, ptr } %t190, ptr %l73
  br label %bb40
bb40:
  %t191 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t192 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %t191)
  store %"std/prelude/text:LineIter" %t192, ptr %l74
  br label %bb41
bb41:
  %t193 = load %"std/prelude/text:LineIter", ptr %l74
  store %"std/prelude/text:LineIter" %t193, ptr %l13
  br label %bb42
bb42:
  %t195 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l13)
  %t196 = extractvalue { i32, { i64, ptr } } %t195, 1
  %t197 = extractvalue { i32, { i64, ptr } } %t195, 0
  store i32 %t197, ptr %l78
  %t198 = icmp ne i32 %t197, 0
  br i1 %t198, label %bb44, label %ok.199, !prof !99
ok.199:
  store { i64, ptr } %t196, ptr %l77
  br label %bb43
bb43:
  %t200 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t200, ptr %l75, !tbaa !27
  br label %bb46
bb44:
  %t201 = load i32, ptr %l78, !tbaa !23
  %t202 = ashr i32 %t201, 16
  %t204 = icmp eq i32 %t202, 1
  store i1 %t204, ptr %l80, !tbaa !21
  br label %bb45
bb45:
  br label %bb52
bb46:
  %t205 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t205, ptr %l14, !tbaa !27
  store ptr %l12, ptr %l81, !tbaa !29
  %t206 = ptrtoint ptr %s7 to i64
  store i64 %t206, ptr %l82, !tbaa !24
  %t207 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t207, label %bb47, label %bb48
bb47:
  %t209 = call ptr @__olang_region_make(ptr %s7)
  %t210 = ptrtoint ptr %t209 to i64
  store i64 %t210, ptr %l82, !tbaa !24
  br label %bb48
bb48:
  %t211 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t212 = load i64, ptr %l82
  %t213 = inttoptr i64 %t212 to ptr
  %t215 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %v0, ptr %t213, { i64, ptr } %t211)
  store { i64, ptr } %t215, ptr %l85
  br label %bb49
bb49:
  %t216 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t217 = load i64, ptr %l82
  %t218 = inttoptr i64 %t217 to ptr
  %t219 = extractvalue { i64, ptr } %t216, 0
  %t220 = extractvalue { i64, ptr } %t216, 1
  %t221 = mul i64 %t219, 1
  %t222 = call ptr @__olang_scope_alloc(ptr %t218, i64 %t221)
  call void @llvm.memcpy.p0.p0.i64(ptr %t222, ptr %t220, i64 %t221, i1 false)
  %t223 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t222, 1
  %t225 = load ptr, ptr %l81, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s7, ptr %s7, ptr %t225, { i64, ptr } %t224)
  br label %bb50
bb50:
  br label %bb51
bb51:
  br label %bb42
bb52:
  %t227 = getelementptr %"compiler/prompt:Reply", ptr %l5, i32 0, i32 0
  %t228 = load i1, ptr %t227, !tbaa !21
  br i1 %t228, label %bb53, label %bb54
bb53:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l88, !tbaa !27
  br label %bb55
bb54:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l88, !tbaa !27
  br label %bb55
bb55:
  %t230 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t230, ptr %l15, !tbaa !27
  store ptr %l8, ptr %l89, !tbaa !29
  %t231 = ptrtoint ptr %s0 to i64
  store i64 %t231, ptr %l90, !tbaa !24
  %t232 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t232, label %bb56, label %bb57
bb56:
  %t234 = call ptr @__olang_region_make(ptr %s0)
  %t235 = ptrtoint ptr %t234 to i64
  store i64 %t235, ptr %l90, !tbaa !24
  br label %bb57
bb57:
  %t236 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t236, ptr %l92, !tbaa !27
  %t237 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t239 = call { i64, ptr } @compiler_2fjupyter_2eFirstLine(ptr %v0, ptr %s7, { i64, ptr } %t237)
  store { i64, ptr } %t239, ptr %l94
  br label %bb58
bb58:
  %t240 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t240, 0
  %t242 = extractvalue { i64, ptr } %t240, 1
  %t243 = mul i64 %t241, 1
  %t244 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t243)
  call void @llvm.memcpy.p0.p0.i64(ptr %t244, ptr %t242, i64 %t243, i1 false)
  %t245 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t246 = insertvalue { i64, ptr } %t245, ptr %t244, 1
  %t248 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %s7, ptr %s7, { i64, ptr } %t246)
  store { i64, ptr } %t248, ptr %l96
  br label %bb59
bb59:
  %t250 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s7, ptr %s7, ptr %s7, ptr %l12, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store { i64, ptr } %t250, ptr %l98
  br label %bb60
bb60:
  %t251 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t253 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t254 = extractvalue { i64, ptr } %t253, 1
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t256 = add i64 %t252, %t255
  %t257 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t258 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t259 = add i64 %t256, %t258
  %t260 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 1
  %t262 = extractvalue { i64, ptr } %t260, 0
  %t263 = add i64 %t259, %t262
  %t264 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t265 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t266 = add i64 %t263, %t265
  %t267 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t267, 1
  %t269 = extractvalue { i64, ptr } %t267, 0
  %t270 = add i64 %t266, %t269
  %t271 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t272 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t273 = add i64 %t270, %t272
  %t274 = load i64, ptr %l90
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = call ptr @__olang_scope_alloc(ptr %t275, i64 %t273)
  call void @olang_textcopy(ptr %t276, ptr %t251, i64 %t252)
  %t277 = getelementptr i8, ptr %t276, i64 %t252
  call void @olang_textcopy(ptr %t277, ptr %t254, i64 %t255)
  %t278 = getelementptr i8, ptr %t277, i64 %t255
  call void @olang_textcopy(ptr %t278, ptr %t257, i64 %t258)
  %t279 = getelementptr i8, ptr %t278, i64 %t258
  call void @olang_textcopy(ptr %t279, ptr %t261, i64 %t262)
  %t280 = getelementptr i8, ptr %t279, i64 %t262
  call void @olang_textcopy(ptr %t280, ptr %t264, i64 %t265)
  %t281 = getelementptr i8, ptr %t280, i64 %t265
  call void @olang_textcopy(ptr %t281, ptr %t268, i64 %t269)
  %t282 = getelementptr i8, ptr %t281, i64 %t269
  call void @olang_textcopy(ptr %t282, ptr %t271, i64 %t272)
  %t283 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t276, 1
  %t286 = load i64, ptr %l90
  %t287 = inttoptr i64 %t286 to ptr
  %t288 = extractvalue { i64, ptr } %t284, 0
  %t289 = extractvalue { i64, ptr } %t284, 1
  %t290 = mul i64 %t288, 1
  %t291 = call ptr @__olang_scope_alloc(ptr %t287, i64 %t290)
  call void @llvm.memcpy.p0.p0.i64(ptr %t291, ptr %t289, i64 %t290, i1 false)
  %t292 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t291, 1
  %t294 = load ptr, ptr %l89, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t294, { i64, ptr } %t293)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s7)
  br label %bb62
bb62:
  %t296 = ptrtoint ptr %v2 to i64
  store i64 %t296, ptr %l102, !tbaa !24
  %t297 = load i1, ptr @olang_2esole_2estd_2fjson_3areader_2e0
  br i1 %t297, label %bb63, label %bb64
bb63:
  %t299 = call ptr @__olang_region_make(ptr %v2)
  %t300 = ptrtoint ptr %t299 to i64
  store i64 %t300, ptr %l102, !tbaa !24
  br label %bb64
bb64:
  %t302 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %s0, ptr %l8, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) })
  store { i64, ptr } %t302, ptr %l105
  br label %bb65
bb65:
  %t303 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t304 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t305 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t305, 1
  %t307 = extractvalue { i64, ptr } %t305, 0
  %t308 = add i64 %t304, %t307
  %t309 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t310 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t311 = add i64 %t308, %t310
  %t312 = load i64, ptr %l102
  %t313 = inttoptr i64 %t312 to ptr
  %t314 = call ptr @__olang_scope_alloc(ptr %t313, i64 %t311)
  call void @olang_textcopy(ptr %t314, ptr %t303, i64 %t304)
  %t315 = getelementptr i8, ptr %t314, i64 %t304
  call void @olang_textcopy(ptr %t315, ptr %t306, i64 %t307)
  %t316 = getelementptr i8, ptr %t315, i64 %t307
  call void @olang_textcopy(ptr %t316, ptr %t309, i64 %t310)
  %t317 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t314, 1
  %t320 = load i64, ptr %l102
  %t321 = inttoptr i64 %t320 to ptr
  %t322 = extractvalue { i64, ptr } %t318, 0
  %t323 = extractvalue { i64, ptr } %t318, 1
  %t324 = mul i64 %t322, 1
  %t325 = call ptr @__olang_scope_alloc(ptr %t321, i64 %t324)
  call void @llvm.memcpy.p0.p0.i64(ptr %t325, ptr %t323, i64 %t324, i1 false)
  %t326 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t327 = insertvalue { i64, ptr } %t326, ptr %t325, 1
  %t329 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v2, ptr %v2, { i64, ptr } %t327)
  %t330 = extractvalue { i32, ptr } %t329, 1
  %t331 = extractvalue { i32, ptr } %t329, 0
  store i32 %t331, ptr %l109
  %t332 = icmp ne i32 %t331, 0
  br i1 %t332, label %bb67, label %ok.333, !prof !99
ok.333:
  store ptr %t330, ptr %l108
  br label %bb66
bb66:
  %t334 = load ptr, ptr %l108, !tbaa !29
  store ptr %t334, ptr %l101, !tbaa !29
  br label %bb71
bb67:
  %t335 = load i32, ptr %l109, !tbaa !23
  %t336 = ashr i32 %t335, 16
  %t338 = icmp eq i32 %t336, 1
  store i1 %t338, ptr %l111, !tbaa !21
  %t339 = load i32, ptr %l109, !tbaa !23
  %t340 = ashr i32 %t339, 16
  %t342 = icmp eq i32 %t340, 1
  br i1 %t342, label %bb68, label %bb69
bb68:
  call void @__olang_errpay_pop()
  br label %bb69
bb69:
  br label %bb70
bb70:
  call void @__olang_check_failed(ptr @olang_loc_f3b5c17d9f2e0c51_2c0777e4fd110125)
  unreachable
bb71:
  %t344 = load ptr, ptr %l101, !tbaa !29
  %t347 = load { i64, [2 x i64] }, ptr %t344
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t347, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i32 @compiler_2fnotebook_2efail(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l3 = alloca i32
  %l5 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t3 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t5 = extractvalue { i64, ptr } %a0, 1
  %t6 = extractvalue { i64, ptr } %a0, 0
  %t7 = add i64 %t3, %t6
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t10 = add i64 %t7, %t9
  %t11 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t10)
  call void @olang_textcopy(ptr %t11, ptr %t2, i64 %t3)
  %t12 = getelementptr i8, ptr %t11, i64 %t3
  call void @olang_textcopy(ptr %t12, ptr %t5, i64 %t6)
  %t13 = getelementptr i8, ptr %t12, i64 %t6
  call void @olang_textcopy(ptr %t13, ptr %t8, i64 %t9)
  %t14 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t11, 1
  %t17 = call i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %t15)
  store i32 %t17, ptr %l3
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb2, label %ok.19, !prof !99
ok.19:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t20 = load i32, ptr %l3, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  store i1 %t23, ptr %l5, !tbaa !21
  %t24 = load i32, ptr %l3, !tbaa !23
  %t25 = ashr i32 %t24, 16
  %t27 = icmp eq i32 %t25, 1
  br i1 %t27, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fnotebook_2efailedWith(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l7 = alloca i1
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l23 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %v0, ptr %v0, ptr %a0)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l5, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l7, !tbaa !21
  %t13 = load i32, ptr %l5, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t19, ptr %l1, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t26, ptr %l15, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = sub i64 %t29, 1
  %t33 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr ptr, ptr %t34, i64 %t31
  %t36 = load ptr, ptr %t35, !tbaa !39
  %t38 = call { i64, ptr } @compiler_2fnotebook_2estr(ptr %v0, ptr %s0, ptr %s0, ptr %t36, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store { i64, ptr } %t38, ptr %l20
  br label %bb9
bb8:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb11
bb9:
  %t39 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 1
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t40, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t53 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t51, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d79, i32 0, i32 1) })
  store i1 %t53, ptr %l23
  br label %bb10
bb10:
  %t54 = load i1, ptr %l23, !tbaa !21
  store i1 %t54, ptr %l14, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t55 = load i1, ptr %l14, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fnotebook_2ejoined(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l17 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i32
  %l29 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
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
  %t5 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %v0, ptr %v0, ptr %a0)
  %t6 = extractvalue { i32, { i64, ptr } } %t5, 1
  %t7 = extractvalue { i32, { i64, ptr } } %t5, 0
  store i32 %t7, ptr %l9
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb3, label %ok.9, !prof !99
ok.9:
  store { i64, ptr } %t6, ptr %l8
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t10, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l4, !tbaa !24
  br label %bb4
bb3:
  %t15 = load i32, ptr %l9, !tbaa !23
  %t16 = lshr i32 %t15, 16
  %t17 = and i32 %t15, 65535
  %t18 = icmp eq i32 %t16, 1
  %t19 = select i1 %t18, i32 1, i32 0
  %t20 = icmp eq i32 %t15, 0
  %t21 = shl i32 %t19, 16
  %t22 = or i32 %t21, %t17
  %t23 = select i1 %t20, i32 0, i32 %t22
  call void @__olang_scope_close(ptr %s0)
  %t25 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t23, 0
  store { i32, { i64, ptr } } %t25, ptr %rv
  br label %ret
bb4:
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp slt i64 %t26, %t27
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb5, label %bb6
bb5:
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t34 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t34, ptr %l17, !tbaa !27
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr ptr, ptr %t38, i64 %t35
  %t40 = load ptr, ptr %t39, !tbaa !39
  store ptr %l1, ptr %l20, !tbaa !29
  %t44 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %v0, ptr %v0, ptr %t40)
  %t45 = extractvalue { i32, { i64, ptr } } %t44, 1
  %t46 = extractvalue { i32, { i64, ptr } } %t44, 0
  store i32 %t46, ptr %l24
  %t47 = icmp ne i32 %t46, 0
  br i1 %t47, label %bb9, label %ok.48, !prof !99
ok.48:
  store { i64, ptr } %t45, ptr %l23
  br label %bb8
bb8:
  %t49 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t49, ptr %l21, !tbaa !27
  br label %bb10
bb9:
  %t50 = load i32, ptr %l24, !tbaa !23
  %t51 = lshr i32 %t50, 16
  %t52 = and i32 %t50, 65535
  %t53 = icmp eq i32 %t51, 1
  %t54 = select i1 %t53, i32 1, i32 0
  %t55 = icmp eq i32 %t50, 0
  %t56 = shl i32 %t54, 16
  %t57 = or i32 %t56, %t52
  %t58 = select i1 %t55, i32 0, i32 %t57
  call void @__olang_scope_close(ptr %s0)
  %t60 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t58, 0
  store { i32, { i64, ptr } } %t60, ptr %rv
  br label %ret
bb10:
  %t61 = load ptr, ptr %l20, !tbaa !29
  %t62 = load { i64, ptr }, ptr %l21, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t61, { i64, ptr } %t62)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l3, !tbaa !24
  br label %bb4
bb13:
  br label %bb14
bb14:
  %t68 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t68, ptr %l29
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t69 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t70 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t69, 1
  store { i32, { i64, ptr } } %t70, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local %"std/json:Object" @compiler_2fnotebook_2ekernelspec(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l10 = alloca i1
  %l15 = alloca %"std/json:Object"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/json:Object"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @std_2fjson_2estd_2fjson_3aObject_2eHas(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = load %"std/json:Object", ptr %t5
  call void @__olang_scope_close(ptr %s0)
  store %"std/json:Object" %t7, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v1, ptr %v1, { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d81, i32 0, i32 1) })
  %t10 = extractvalue { i32, ptr } %t9, 1
  %t11 = extractvalue { i32, ptr } %t9, 0
  store i32 %t11, ptr %l8
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb6, label %ok.13, !prof !99
ok.13:
  store ptr %t10, ptr %l7
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l7, !tbaa !29
  store ptr %t14, ptr %l6, !tbaa !29
  br label %bb10
bb6:
  %t15 = load i32, ptr %l8, !tbaa !23
  %t16 = ashr i32 %t15, 16
  %t18 = icmp eq i32 %t16, 1
  store i1 %t18, ptr %l10, !tbaa !21
  %t19 = load i32, ptr %l8, !tbaa !23
  %t20 = ashr i32 %t19, 16
  %t22 = icmp eq i32 %t20, 1
  br i1 %t22, label %bb7, label %bb8
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  br label %bb9
bb9:
  call void @__olang_check_failed(ptr @olang_loc_42c129d2d0d54abe_dd260ad4d97e6f8a)
  unreachable
bb10:
  %t24 = load ptr, ptr %l6, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t29 = call %"std/json:Object" @compiler_2fnotebook_2eset(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t25, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d82, i32 0, i32 1) }, ptr %t24)
  store %"std/json:Object" %t29, ptr %l15
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t30 = load %"std/json:Object", ptr %l15
  store %"std/json:Object" %t30, ptr %rv
  br label %ret
ret:
  %rr = load %"std/json:Object", ptr %rv
  ret %"std/json:Object" %rr
}

define dso_local %"std/json:Object" @compiler_2fnotebook_2eset(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %lp3 = alloca ptr
  %lp4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l41 = alloca i1
  %l44 = alloca i1
  %l53 = alloca %"std/json:Object"
  %l54 = alloca i64
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca %"std/json:Object"
  %l61 = alloca i32
  %rv = alloca %"std/json:Object"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l13
  br label %bb2
bb2:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t6, ptr %lp4
  %t7 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t8 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %t8
  store i1 false, ptr %l5, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/json:Object", ptr %t9, i32 0, i32 0
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l8, !tbaa !24
  br label %bb3
bb3:
  %t18 = load i64, ptr %l7, !tbaa !24
  %t19 = load i64, ptr %l8, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb4, label %bb5
bb4:
  br label %bb18
bb5:
  br label %bb6
bb6:
  %t26 = load i64, ptr %l7, !tbaa !24
  store i64 %t26, ptr %l9, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t28, ptr %l23, !tbaa !27
  %t29 = load i64, ptr %l7, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %t32, i64 %t29
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !37
  store { i64, ptr } %t34, ptr %l10, !tbaa !27
  %t36 = load ptr, ptr %lp3
  %t37 = load { i64, ptr }, ptr %l10, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v0, ptr %t36, { i64, ptr } %t37)
  br label %bb7
bb7:
  %t40 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t40, { i64, ptr } %t41)
  store i1 %t44, ptr %l30
  br label %bb8
bb8:
  %t45 = load i1, ptr %l30, !tbaa !21
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t46 = load ptr, ptr %l2, !tbaa !29
  store ptr %t46, ptr %l31, !tbaa !29
  br label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/json:Object", ptr %t48, i32 0, i32 1
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  store { i64, ptr } %t51, ptr %l34, !tbaa !27
  %t52 = load i64, ptr %l9, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  store ptr %t57, ptr %l31, !tbaa !29
  br label %bb11
bb11:
  %t59 = load ptr, ptr %l31, !tbaa !29
  %t60 = load ptr, ptr %lp4
  store ptr %t59, ptr %l38, !tbaa !29
  %t62 = load ptr, ptr %l38, !tbaa !29
  %t63 = call ptr @__olang_scope_of(ptr %t62, ptr null)
  %t64 = ptrtoint ptr %t63 to i64
  %t66 = inttoptr i64 %t64 to ptr
  %t68 = load ptr, ptr %l38, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2ePush_3cstd_2fjson_3aJson_26_3e(ptr %v3, ptr %t66, ptr %t60, ptr %t68)
  br label %bb12
bb12:
  %t69 = load i1, ptr %l5, !tbaa !21
  br i1 %t69, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb16
bb14:
  %t71 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t72 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t75 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t71, { i64, ptr } %t72)
  store i1 %t75, ptr %l44
  br label %bb15
bb15:
  %t76 = load i1, ptr %l44, !tbaa !21
  store i1 %t76, ptr %l41, !tbaa !21
  br label %bb16
bb16:
  %t77 = load i1, ptr %l41, !tbaa !21
  store i1 %t77, ptr %l5, !tbaa !21
  br label %bb17
bb17:
  %t78 = load i64, ptr %l7, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l7, !tbaa !24
  br label %bb3
bb18:
  %t82 = load i1, ptr %l5, !tbaa !21
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb19, label %bb20
bb19:
  %t86 = load ptr, ptr %lp3
  %t87 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v1, ptr %t86, { i64, ptr } %t87)
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t90 = load ptr, ptr %lp4
  %t91 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2ePush_3cstd_2fjson_3aJson_26_3e(ptr %v3, ptr %v2, ptr %t90, ptr %t91)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t94 = ptrtoint ptr %v3 to i64
  store i64 %t94, ptr %l54, !tbaa !24
  %t95 = load i1, ptr @olang_2esole_2estd_2fjson_3aObject_2e0
  br i1 %t95, label %bb24, label %bb25
bb24:
  %t97 = call ptr @__olang_region_make(ptr %v3)
  %t98 = ptrtoint ptr %t97 to i64
  store i64 %t98, ptr %l54, !tbaa !24
  br label %bb25
bb25:
  %t99 = load ptr, ptr %lp3
  %t100 = load i64, ptr %l54
  %t101 = inttoptr i64 %t100 to ptr
  %t103 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v3, ptr %t101, ptr %t99)
  store { i64, ptr } %t103, ptr %l57
  br label %bb26
bb26:
  %t104 = load ptr, ptr %lp4
  %t106 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2eToArray_3cstd_2fjson_3aJson_26_3e(ptr %v3, ptr %v3, ptr %t104)
  store { i64, ptr } %t106, ptr %l59
  br label %bb27
bb27:
  %t107 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t109 = call { i32, %"std/json:Object" } @std_2fjson_3aObject_2ector(ptr %v3, ptr %v3, ptr %v3, { i64, ptr } %t107, { i64, ptr } %t108)
  %t110 = extractvalue { i32, %"std/json:Object" } %t109, 1
  %t111 = extractvalue { i32, %"std/json:Object" } %t109, 0
  store i32 %t111, ptr %l61
  %t112 = icmp ne i32 %t111, 0
  br i1 %t112, label %bb29, label %ok.113, !prof !99
ok.113:
  store %"std/json:Object" %t110, ptr %l60
  br label %bb28
bb28:
  %t114 = load %"std/json:Object", ptr %l60
  store %"std/json:Object" %t114, ptr %l53
  br label %bb33
bb29:
  %t115 = load i32, ptr %l61, !tbaa !23
  %t116 = ashr i32 %t115, 16
  %t118 = icmp eq i32 %t116, 1
  br i1 %t118, label %bb30, label %bb31
bb30:
  call void @__olang_errpay_pop()
  br label %bb31
bb31:
  br label %bb32
bb32:
  call void @__olang_check_failed(ptr @olang_loc_d7273f19f64c76c4_bbbbbd49e43b1600)
  unreachable
bb33:
  %t120 = load %"std/json:Object", ptr %l53
  store %"std/json:Object" %t120, ptr %rv
  br label %ret
ret:
  %rr = load %"std/json:Object", ptr %rv
  ret %"std/json:Object" %rr
}

define dso_local { i64, ptr } @compiler_2fnotebook_2esource(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i32
  %l27 = alloca i1
  %l30 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i32
  %l35 = alloca i1
  %l38 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t20 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, ptr %v0, ptr %a0, { i64, ptr } %t2)
  %t6 = extractvalue { i32, ptr } %t5, 1
  %t7 = extractvalue { i32, ptr } %t5, 0
  store i32 %t7, ptr %l7
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store ptr %t6, ptr %l6
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l6, !tbaa !29
  store ptr %t10, ptr %l2, !tbaa !29
  br label %bb6
bb2:
  %t11 = load i32, ptr %l7, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l9, !tbaa !21
  %t15 = load i32, ptr %l7, !tbaa !23
  %t16 = ashr i32 %t15, 16
  %t18 = icmp eq i32 %t16, 1
  br i1 %t18, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, [2 x i64] } zeroinitializer, ptr %t20
  %t21 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 0
  store i64 0, ptr %t21
  %t22 = load { i64, [2 x i64] }, ptr %t20
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store { i64, [2 x i64] } %t22, ptr %t24
  store ptr %t24, ptr %l2, !tbaa !29
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l2, !tbaa !29
  store ptr %t26, ptr %l1, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = load ptr, ptr %l14, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 8}
  %t34 = icmp eq i64 %t32, 0
  store i1 %t34, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t35 = load i1, ptr %l15, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d84, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t36, ptr %l19, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l20, !tbaa !24
  %t39 = load i64, ptr %l20, !tbaa !24
  %t40 = mul i64 %t39, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t40)
  %t42 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  store { i64, ptr } %t43, ptr %l21, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = load i64, ptr %l20, !tbaa !24
  %t49 = mul i64 %t48, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t45, ptr %t47, i64 %t49, i1 false)
  %t50 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t50, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t51 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t51, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %v0, ptr %s0, ptr %t52)
  %t55 = extractvalue { i32, { i64, ptr } } %t54, 1
  %t56 = extractvalue { i32, { i64, ptr } } %t54, 0
  store i32 %t56, ptr %l25
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb13, label %ok.58, !prof !99
ok.58:
  store { i64, ptr } %t55, ptr %l24
  br label %bb12
bb12:
  %t59 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t59, ptr %l22, !tbaa !27
  br label %bb23
bb13:
  %t60 = load i32, ptr %l25, !tbaa !23
  %t61 = ashr i32 %t60, 16
  %t63 = icmp eq i32 %t61, 1
  store i1 %t63, ptr %l27, !tbaa !21
  %t64 = load i32, ptr %l25, !tbaa !23
  %t65 = ashr i32 %t64, 16
  %t67 = icmp eq i32 %t65, 1
  br i1 %t67, label %bb14, label %bb15
bb14:
  call void @__olang_errpay_pop()
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = call { i32, { i64, ptr } } @compiler_2fnotebook_2ejoined(ptr %v0, ptr %s0, ptr %t69)
  %t72 = extractvalue { i32, { i64, ptr } } %t71, 1
  %t73 = extractvalue { i32, { i64, ptr } } %t71, 0
  store i32 %t73, ptr %l33
  %t74 = icmp ne i32 %t73, 0
  br i1 %t74, label %bb18, label %ok.75, !prof !99
ok.75:
  store { i64, ptr } %t72, ptr %l32
  br label %bb17
bb17:
  %t76 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t76, ptr %l30, !tbaa !27
  br label %bb22
bb18:
  %t77 = load i32, ptr %l33, !tbaa !23
  %t78 = ashr i32 %t77, 16
  %t80 = icmp eq i32 %t78, 1
  store i1 %t80, ptr %l35, !tbaa !21
  %t81 = load i32, ptr %l33, !tbaa !23
  %t82 = ashr i32 %t81, 16
  %t84 = icmp eq i32 %t82, 1
  br i1 %t84, label %bb19, label %bb20
bb19:
  call void @__olang_errpay_pop()
  br label %bb20
bb20:
  br label %bb21
bb21:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d85, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t86, ptr %l30, !tbaa !27
  br label %bb22
bb22:
  %t88 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t91 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t89, i64 %t90)
  %t92 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = extractvalue { i64, ptr } %t93, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l22, !tbaa !27
  br label %bb23
bb23:
  %t102 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 1
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t105 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t104)
  call void @olang_textcopy(ptr %t105, ptr %t103, i64 %t104)
  %t106 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t107, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fnotebook_2estr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l8 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l14 = alloca i1
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %v0, ptr %a0, { i64, ptr } %a1)
  %t6 = extractvalue { i32, ptr } %t5, 1
  %t7 = extractvalue { i32, ptr } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store ptr %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t11 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %v0, ptr %v2, ptr %t10)
  %t12 = extractvalue { i32, { i64, ptr } } %t11, 1
  %t13 = extractvalue { i32, { i64, ptr } } %t11, 0
  store i32 %t13, ptr %l12
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb7, label %ok.15, !prof !99
ok.15:
  store { i64, ptr } %t12, ptr %l11
  br label %bb6
bb2:
  %t16 = load i32, ptr %l6, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  store i1 %t19, ptr %l8, !tbaa !21
  %t20 = load i32, ptr %l6, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  br i1 %t23, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d86, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb10
bb6:
  %t25 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t25, ptr %l2, !tbaa !27
  br label %bb10
bb7:
  %t26 = load i32, ptr %l12, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l14, !tbaa !21
  %t30 = load i32, ptr %l12, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb5
bb10:
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t35, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fnotebook_2estream(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l24 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l35 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l46 = alloca i64
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l58 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
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
  br label %bb20
bb4:
  br label %bb5
bb5:
  %t17 = load i64, ptr %l5, !tbaa !24
  store i64 %t17, ptr %l7, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t19, ptr %l18, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i8, ptr %t23, i64 %t20
  %t25 = load i8, ptr %t24, !tbaa !32
  %t29 = icmp ne i8 %t25, 10
  br i1 %t29, label %bb6, label %bb7
bb6:
  br label %bb19
bb7:
  br label %bb8
bb8:
  store ptr %l2, ptr %l23, !tbaa !29
  %t31 = ptrtoint ptr %s0 to i64
  store i64 %t31, ptr %l24, !tbaa !24
  %t32 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = call ptr @__olang_region_make(ptr %s0)
  %t35 = ptrtoint ptr %t34 to i64
  store i64 %t35, ptr %l24, !tbaa !24
  br label %bb10
bb10:
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t36, ptr %l26, !tbaa !27
  %t37 = load i64, ptr %l3, !tbaa !24
  store i64 %t37, ptr %l27, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l29, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l30, !tbaa !24
  %t43 = load i64, ptr %l27, !tbaa !24
  %t44 = icmp sge i64 %t43, 0
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = load i64, ptr %l27, !tbaa !24
  %t47 = load i64, ptr %l29, !tbaa !24
  %t48 = icmp sle i64 %t46, %t47
  br i1 %t48, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_6bfe6c2298b565fb_3c4e4846256475e7)
  unreachable
bb13:
  %t50 = load i64, ptr %l29, !tbaa !24
  %t51 = load i64, ptr %l30, !tbaa !24
  %t52 = icmp sle i64 %t50, %t51
  br i1 %t52, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_6bfe6c2298b565fb_3c4e4846256475e7)
  unreachable
bb15:
  %t54 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = load i64, ptr %l27, !tbaa !24
  %t57 = load i64, ptr %l29, !tbaa !24
  %t58 = getelementptr i8, ptr %t55, i64 %t56
  %t59 = sub i64 %t57, %t56
  %t60 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t58, 1
  %t62 = load i64, ptr %l24
  %t63 = inttoptr i64 %t62 to ptr
  %t65 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %v1, ptr %t63, { i64, ptr } %t61)
  store { i64, ptr } %t65, ptr %l35
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_6bfe6c2298b565fb_3c4e4846256475e7)
  unreachable
bb17:
  %t66 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t67 = load i64, ptr %l24
  %t68 = inttoptr i64 %t67 to ptr
  %t69 = extractvalue { i64, ptr } %t66, 0
  %t70 = extractvalue { i64, ptr } %t66, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %t68, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t75 = load ptr, ptr %l23, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t75, { i64, ptr } %t74)
  br label %bb18
bb18:
  %t77 = load i64, ptr %l7, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l3, !tbaa !24
  br label %bb19
bb19:
  %t81 = load i64, ptr %l5, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l5, !tbaa !24
  br label %bb2
bb20:
  %t85 = load i64, ptr %l3, !tbaa !24
  %t86 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t91 = icmp slt i64 %t85, %t88
  br i1 %t91, label %bb21, label %bb22
bb21:
  store ptr %l2, ptr %l45, !tbaa !29
  %t93 = ptrtoint ptr %s0 to i64
  store i64 %t93, ptr %l46, !tbaa !24
  %t94 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t94, label %bb23, label %bb24
bb22:
  br label %bb33
bb23:
  %t96 = call ptr @__olang_region_make(ptr %s0)
  %t97 = ptrtoint ptr %t96 to i64
  store i64 %t97, ptr %l46, !tbaa !24
  br label %bb24
bb24:
  %t98 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t98, ptr %l48, !tbaa !27
  %t99 = load i64, ptr %l3, !tbaa !24
  store i64 %t99, ptr %l49, !tbaa !24
  %t100 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t100, 0
  store i64 %t103, ptr %l52, !tbaa !24
  %t104 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l53, !tbaa !24
  %t106 = load i64, ptr %l49, !tbaa !24
  %t107 = icmp sge i64 %t106, 0
  br i1 %t107, label %bb25, label %bb26
bb25:
  %t109 = load i64, ptr %l49, !tbaa !24
  %t110 = load i64, ptr %l52, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_c6df15e3ea9ee37e_5c1ebfad1a40e30a)
  unreachable
bb27:
  %t113 = load i64, ptr %l52, !tbaa !24
  %t114 = load i64, ptr %l53, !tbaa !24
  %t115 = icmp sle i64 %t113, %t114
  br i1 %t115, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_c6df15e3ea9ee37e_5c1ebfad1a40e30a)
  unreachable
bb29:
  %t117 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l49, !tbaa !24
  %t120 = load i64, ptr %l52, !tbaa !24
  %t121 = getelementptr i8, ptr %t118, i64 %t119
  %t122 = sub i64 %t120, %t119
  %t123 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t121, 1
  %t125 = load i64, ptr %l46
  %t126 = inttoptr i64 %t125 to ptr
  %t128 = call { i64, ptr } @compiler_2fjupyter_2eQ(ptr %v1, ptr %t126, { i64, ptr } %t124)
  store { i64, ptr } %t128, ptr %l58
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_c6df15e3ea9ee37e_5c1ebfad1a40e30a)
  unreachable
bb31:
  %t129 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t130 = load i64, ptr %l46
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = extractvalue { i64, ptr } %t129, 0
  %t133 = extractvalue { i64, ptr } %t129, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %t131, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  %t138 = load ptr, ptr %l45, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t138, { i64, ptr } %t137)
  br label %bb32
bb32:
  br label %bb33
bb33:
  store { i64, ptr } %a0, ptr %l60, !tbaa !27
  %t142 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store { i64, ptr } %t142, ptr %l62
  br label %bb34
bb34:
  %t143 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t145 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 1
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t148 = add i64 %t144, %t147
  %t149 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t151 = add i64 %t148, %t150
  %t152 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = add i64 %t151, %t154
  %t156 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t157 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t158 = add i64 %t155, %t157
  %t159 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t158)
  call void @olang_textcopy(ptr %t159, ptr %t143, i64 %t144)
  %t160 = getelementptr i8, ptr %t159, i64 %t144
  call void @olang_textcopy(ptr %t160, ptr %t146, i64 %t147)
  %t161 = getelementptr i8, ptr %t160, i64 %t147
  call void @olang_textcopy(ptr %t161, ptr %t149, i64 %t150)
  %t162 = getelementptr i8, ptr %t161, i64 %t150
  call void @olang_textcopy(ptr %t162, ptr %t153, i64 %t154)
  %t163 = getelementptr i8, ptr %t162, i64 %t154
  call void @olang_textcopy(ptr %t163, ptr %t156, i64 %t157)
  %t164 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t159, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t165, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fnotebook_2ewith(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l10 = alloca i1
  %l18 = alloca %"std/json:Object"
  %l21 = alloca %"std/json:Object"
  %rv = alloca { i64, [2 x i64] }
  %t38 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAsObj(ptr %v0, ptr %v4, ptr %t1)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l8
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  store ptr %t8, ptr %l5, !tbaa !29
  br label %bb6
bb2:
  %t9 = load i32, ptr %l8, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l10, !tbaa !21
  %t13 = load i32, ptr %l8, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = load { i64, [2 x i64] }, ptr %t18
  store { i64, [2 x i64] } %t20, ptr %rv
  br label %ret
bb6:
  %t22 = load ptr, ptr %l5, !tbaa !29
  %t29 = call %"std/json:Object" @compiler_2fnotebook_2eset(ptr %v4, ptr %v1, ptr %v2, ptr %v4, ptr %t22, { i64, ptr } %a1, ptr %a2)
  store %"std/json:Object" %t29, ptr %l18
  br label %bb7
bb7:
  %t30 = load %"std/json:Object", ptr %l18
  %t31 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store %"std/json:Object" %t30, ptr %t31
  %t35 = call %"std/json:Object" @compiler_2fnotebook_2eset(ptr %v4, ptr %v4, ptr %v3, ptr %v4, ptr %t31, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d91, i32 0, i32 1) }, ptr %a3)
  store %"std/json:Object" %t35, ptr %l21
  br label %bb8
bb8:
  %t36 = load %"std/json:Object", ptr %l21
  %t37 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store %"std/json:Object" %t36, ptr %t37
  store { i64, [2 x i64] } zeroinitializer, ptr %t38
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 0
  store i64 7, ptr %t39
  %t41 = insertvalue { ptr } undef, ptr %t37, 0
  %t42 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 1
  store { ptr } %t41, ptr %t42
  %t43 = load { i64, [2 x i64] }, ptr %t38
  store { i64, [2 x i64] } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

declare ptr @__olang_errpay_top_get()
define linkonce_odr { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i32, { i64, [2 x i64] } }
  %l3 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, { i64, [2 x i64] } }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i32, { i64, [2 x i64] } }, ptr %a0
  store { i32, { i64, [2 x i64] } } %t2, ptr %l1
  %t3 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  %t5 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %v0, ptr %t3)
  store { i64, [2 x i64] } %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load { i64, [2 x i64] }, ptr %l3
  %t7 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  store { i64, [2 x i64] } %t6, ptr %t7
  %t8 = load { i32, { i64, [2 x i64] } }, ptr %l1
  store { i32, { i64, [2 x i64] } } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [2 x i64] } }, ptr %rv
  ret { i32, { i64, [2 x i64] } } %rr
}

declare void @__olang_errpay_pop()
@.d0 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"cannot read " }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d1 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
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
declare void @__olang_sb_done(ptr)
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d3 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotFound" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
declare i64 @__olang_rd_quote(ptr, i64, ptr, i64, i8)
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
declare void @__olang_sb_add(ptr, i64)
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d6 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Exists" }>, align 8
@.d7 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Denied" }>, align 8
@.d8 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.NotDir" }>, align 8
@.d9 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"os.Error.IsDir" }>, align 8
@.d10 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotEmpty" }>, align 8
@.d11 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Failed" }>, align 8
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
define linkonce_odr { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fjson_3aError_7d(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i32, { i64, [2 x i64] } }
  %l3 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, { i64, [2 x i64] } }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i32, { i64, [2 x i64] } }, ptr %a0
  store { i32, { i64, [2 x i64] } } %t2, ptr %l1
  %t3 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  %t5 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %v0, ptr %t3)
  store { i64, [2 x i64] } %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load { i64, [2 x i64] }, ptr %l3
  %t7 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  store { i64, [2 x i64] } %t6, ptr %t7
  %t8 = load { i32, { i64, [2 x i64] } }, ptr %l1
  store { i32, { i64, [2 x i64] } } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [2 x i64] } }, ptr %rv
  ret { i32, { i64, [2 x i64] } } %rr
}

@.d12 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" is no JSON: " }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d14 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"json.Error.Unexpected" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d18 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"json.Error.Unterminated" }>, align 8
@.d19 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"json.Error.BadEscape" }>, align 8
@.d20 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"json.Error.BadNumber" }>, align 8
@.d21 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"json.Error.BadUtf8" }>, align 8
@.d22 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"json.Error.Trailing" }>, align 8
@.d23 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"json.Error.Depth" }>, align 8
@.d24 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"json.Error.Missing" }>, align 8
@.d25 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"json.Error.WrongKind" }>, align 8
@.d26 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"json.Error.Uneven" }>, align 8
@.d27 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"cells" }>, align 8
@.d28 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c" is no notebook: it has no cells" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d29 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"cell_type" }>, align 8
@.d30 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"code" }>, align 8
@__olang_empty_array = external constant [16 x i64]
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
@.d31 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"outputs" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"outputs" }>, align 8
@.d34 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"outputs" }>, align 8
@.d35 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" is no notebook" }>, align 8
@.d36 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"cells" }>, align 8
@.d37 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"metadata" }>, align 8
@.d38 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"metadata" }>, align 8
@olang_2esole_2estd_2fjson_3aObject_2e0 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2estd_2fjson_3aObject_2e2 = weak hidden constant i1 false
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d42 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"cannot write " }>, align 8
@.d43 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d44 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d45 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotFound" }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d48 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Exists" }>, align 8
@.d49 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Denied" }>, align 8
@.d50 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.NotDir" }>, align 8
@.d51 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"os.Error.IsDir" }>, align 8
@.d52 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotEmpty" }>, align 8
@.d53 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Failed" }>, align 8
@.d54 = private constant <{ i64, [0 x { i64, ptr }] }> <{ i64 0, [0 x { i64, ptr }] [] }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d55 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"In[" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d58 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"stdout" }>, align 8
@.d59 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d60 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d61 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"stderr" }>, align 8
@.d62 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"{\22output_type\22:\22execute_result\22,\22data\22:" }>, align 8
@.d63 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c",\22execution_count\22:" }>, align 8
@.d64 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c",\22metadata\22:{}}" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"RuntimeError" }>, align 8
@.d67 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"CompileError" }>, align 8
@.d68 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d69 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"{\22output_type\22:\22error\22,\22ename\22:\22" }>, align 8
@.d70 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"\22,\22evalue\22:" }>, align 8
@.d71 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c",\22traceback\22:[" }>, align 8
@.d72 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]}" }>, align 8
@olang_2esole_2estd_2fjson_3areader_2e0 = weak hidden constant i1 false
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d76 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"olang notebook: " }>, align 8
@.d77 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d78 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"output_type" }>, align 8
@.d79 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d80 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"kernelspec" }>, align 8
@.d81 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"{\22display_name\22:\22olang\22,\22language\22:\22olang\22,\22name\22:\22olang\22}" }>, align 8
@.d82 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"kernelspec" }>, align 8
@.d83 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"source" }>, align 8
@.d84 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d85 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d86 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d87 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d88 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"{\22output_type\22:\22stream\22,\22name\22:\22" }>, align 8
@.d89 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"\22,\22text\22:[" }>, align 8
@.d90 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]}" }>, align 8
@.d91 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"execution_count" }>, align 8
define linkonce_odr { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %rv = alloca { i64, [2 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, [2 x i64] }, ptr %a0
  store { i64, [2 x i64] } %t2, ptr %l1
  %t3 = load i64, ptr %l1, !range !{i64 0, i64 7}
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 ]
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
bb4:
  %t44 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t45 = getelementptr { { i64, ptr } }, ptr %t44, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45
  store { i64, ptr } %t46, ptr %l9, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  store i64 %t48, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l10, !tbaa !24
  %t50 = mul i64 %t49, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t50)
  %t52 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  store { i64, ptr } %t53, ptr %l11, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = load i64, ptr %l10, !tbaa !24
  %t59 = mul i64 %t58, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t55, ptr %t57, i64 %t59, i1 false)
  %t60 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t61 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t62 = getelementptr { { i64, ptr } }, ptr %t61, i32 0, i32 0
  store { i64, ptr } %t60, ptr %t62
  br label %bb1
bb5:
  %t63 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t64 = getelementptr { { i64, ptr } }, ptr %t63, i32 0, i32 0
  %t65 = load { i64, ptr }, ptr %t64
  store { i64, ptr } %t65, ptr %l12, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l13, !tbaa !24
  %t68 = load i64, ptr %l13, !tbaa !24
  %t69 = mul i64 %t68, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t69)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l14, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l13, !tbaa !24
  %t78 = mul i64 %t77, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t74, ptr %t76, i64 %t78, i1 false)
  %t79 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t80 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t81 = getelementptr { { i64, ptr } }, ptr %t80, i32 0, i32 0
  store { i64, ptr } %t79, ptr %t81
  br label %bb1
bb6:
  %t82 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t83 = getelementptr { { i64, ptr } }, ptr %t82, i32 0, i32 0
  %t84 = load { i64, ptr }, ptr %t83
  store { i64, ptr } %t84, ptr %l15, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  store i64 %t86, ptr %l16, !tbaa !24
  %t87 = load i64, ptr %l16, !tbaa !24
  %t88 = mul i64 %t87, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t88)
  %t90 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  store { i64, ptr } %t91, ptr %l17, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = load i64, ptr %l16, !tbaa !24
  %t97 = mul i64 %t96, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t93, ptr %t95, i64 %t97, i1 false)
  %t98 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t99 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t100 = getelementptr { { i64, ptr } }, ptr %t99, i32 0, i32 0
  store { i64, ptr } %t98, ptr %t100
  br label %bb1
bb7:
  %t101 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t102 = getelementptr { { i64, ptr } }, ptr %t101, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %t102
  store { i64, ptr } %t103, ptr %l18, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l19, !tbaa !24
  %t106 = load i64, ptr %l19, !tbaa !24
  %t107 = mul i64 %t106, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t107)
  %t109 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  store { i64, ptr } %t110, ptr %l20, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l19, !tbaa !24
  %t116 = mul i64 %t115, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t112, ptr %t114, i64 %t116, i1 false)
  %t117 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t118 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t119 = getelementptr { { i64, ptr } }, ptr %t118, i32 0, i32 0
  store { i64, ptr } %t117, ptr %t119
  br label %bb1
bb8:
  %t120 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t121 = getelementptr { { i64, ptr } }, ptr %t120, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121
  store { i64, ptr } %t122, ptr %l21, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l22, !tbaa !24
  %t125 = load i64, ptr %l22, !tbaa !24
  %t126 = mul i64 %t125, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t126)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l23, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l22, !tbaa !24
  %t135 = mul i64 %t134, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t131, ptr %t133, i64 %t135, i1 false)
  %t136 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t137 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t138 = getelementptr { { i64, ptr } }, ptr %t137, i32 0, i32 0
  store { i64, ptr } %t136, ptr %t138
  br label %bb1
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

declare ptr @__olang_sb_grow(ptr, i64) noinline
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
define linkonce_odr { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, [2 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, [2 x i64] }, ptr %a0
  store { i64, [2 x i64] } %t2, ptr %l1
  %t3 = load i64, ptr %l1, !range !{i64 0, i64 10}
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 ]
bb1:
  %t5 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t5, ptr %rv
  br label %ret
bb2:
  br label %bb1
bb3:
  br label %bb1
bb4:
  br label %bb1
bb5:
  br label %bb1
bb6:
  br label %bb1
bb7:
  br label %bb1
bb8:
  br label %bb1
bb9:
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
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fprompt_3aSession_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2ePush_3cstd_2fjson_3aJson_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fprompt_2ecompiler_2fprompt_3aSession_2eEnd(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAsObj(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fjson_3aJson_26_3e_2eToArray_3cstd_2fjson_3aJson_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fjson_2eEncode_3cstd_2fjson_3aJson_3e(ptr %v0, ptr %v1, ptr %v2, { i64, [2 x i64] } %a0, { i64, ptr } %a1, i32 %a2)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, %"std/json:Object" } @std_2fjson_3aObject_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_45976cf57d825baf_761c405890d45b73 = external constant [0 x i8]
declare %"compiler/jupyter:Capture" @compiler_2fjupyter_3aCapture_2ector(ptr %v0, i32 %a0)
declare void @compiler_2fprompt_2ecompiler_2fprompt_3aSession_2eCell(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fjupyter_2ecompiler_2fjupyter_3aCapture_2eEnd(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fjupyter_2eData(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fjupyter_2eQ(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fjupyter_2eFirstLine(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_f3b5c17d9f2e0c51_2c0777e4fd110125 = external constant [0 x i8]
declare i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fjson_2estd_2fjson_3aObject_2eHas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_42c129d2d0d54abe_dd260ad4d97e6f8a = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_d7273f19f64c76c4_bbbbbd49e43b1600 = external constant [0 x i8]
declare { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_6bfe6c2298b565fb_3c4e4846256475e7 = external constant [0 x i8]
@olang_loc_c6df15e3ea9ee37e_5c1ebfad1a40e30a = external constant [0 x i8]

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
