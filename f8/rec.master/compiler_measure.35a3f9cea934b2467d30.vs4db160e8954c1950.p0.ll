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
%"compiler/measure:Sample" = type { i64, i64, i64, i64, i64 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
define dso_local { i64, ptr } @compiler_2fmeasure_2eLine(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/measure:Sample"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/measure:Sample"
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/measure:Sample"
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca %"compiler/measure:Sample"
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l34 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l51 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l68 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l87 = alloca i64
  %l94 = alloca { i64, ptr }
  %l96 = alloca double
  %l98 = alloca double
  %l99 = alloca { i64, ptr }
  %l103 = alloca double
  %l104 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l111 = alloca double
  %l112 = alloca { i64, ptr }
  %l114 = alloca double
  %l115 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t1, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = mul i64 %t7, 8
  %t10 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  br label %bb1
bb1:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %l34, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr %"compiler/measure:Sample", ptr %t25, i64 %t22
  %t27 = load %"compiler/measure:Sample", ptr %t26
  store %"compiler/measure:Sample" %t27, ptr %l5
  %t29 = getelementptr %"compiler/measure:Sample", ptr %l5, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = sitofp i64 %t30 to double
  %t34 = load i64, ptr %l29, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr double, ptr %t36, i64 %t34
  store double %t32, ptr %t37, !tbaa !36
  %t38 = load i64, ptr %l29, !tbaa !24
  %t39 = add i64 %t38, 1
  store i64 %t39, ptr %l29, !tbaa !24
  br label %bb5
bb5:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l3, !tbaa !24
  br label %bb1
bb6:
  %t44 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t44, ptr %l6, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t45, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  store i64 %t49, ptr %l9, !tbaa !24
  %t51 = load i64, ptr %l9, !tbaa !24
  %t53 = mul i64 %t51, 8
  %t54 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t53)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l45, !tbaa !27
  store i64 0, ptr %l46, !tbaa !24
  br label %bb7
bb7:
  %t57 = load i64, ptr %l8, !tbaa !24
  %t58 = load i64, ptr %l9, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t65 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t65, ptr %l51, !tbaa !27
  %t66 = load i64, ptr %l8, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr %"compiler/measure:Sample", ptr %t69, i64 %t66
  %t71 = load %"compiler/measure:Sample", ptr %t70
  store %"compiler/measure:Sample" %t71, ptr %l10
  %t73 = getelementptr %"compiler/measure:Sample", ptr %l10, i32 0, i32 1
  %t74 = load i64, ptr %t73, !tbaa !24
  %t76 = sitofp i64 %t74 to double
  %t78 = load i64, ptr %l46, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr double, ptr %t80, i64 %t78
  store double %t76, ptr %t81, !tbaa !36
  %t82 = load i64, ptr %l46, !tbaa !24
  %t83 = add i64 %t82, 1
  store i64 %t83, ptr %l46, !tbaa !24
  br label %bb11
bb11:
  %t84 = load i64, ptr %l8, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l8, !tbaa !24
  br label %bb7
bb12:
  %t88 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t88, ptr %l11, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t89, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t91 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  store i64 %t93, ptr %l14, !tbaa !24
  %t95 = load i64, ptr %l14, !tbaa !24
  %t97 = mul i64 %t95, 8
  %t98 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t97)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l62, !tbaa !27
  store i64 0, ptr %l63, !tbaa !24
  br label %bb13
bb13:
  %t101 = load i64, ptr %l13, !tbaa !24
  %t102 = load i64, ptr %l14, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t109 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t109, ptr %l68, !tbaa !27
  %t110 = load i64, ptr %l13, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr %"compiler/measure:Sample", ptr %t113, i64 %t110
  %t115 = load %"compiler/measure:Sample", ptr %t114
  store %"compiler/measure:Sample" %t115, ptr %l15
  %t117 = getelementptr %"compiler/measure:Sample", ptr %l15, i32 0, i32 2
  %t118 = load i64, ptr %t117, !tbaa !24
  %t120 = sitofp i64 %t118 to double
  %t122 = load i64, ptr %l63, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr double, ptr %t124, i64 %t122
  store double %t120, ptr %t125, !tbaa !36
  %t126 = load i64, ptr %l63, !tbaa !24
  %t127 = add i64 %t126, 1
  store i64 %t127, ptr %l63, !tbaa !24
  br label %bb17
bb17:
  %t128 = load i64, ptr %l13, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l13, !tbaa !24
  br label %bb13
bb18:
  %t132 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t132, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t133 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t133, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t135 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t135, 0
  store i64 %t137, ptr %l20, !tbaa !24
  br label %bb19
bb19:
  %t139 = load i64, ptr %l19, !tbaa !24
  %t140 = load i64, ptr %l20, !tbaa !24
  %t143 = icmp slt i64 %t139, %t140
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb20, label %bb21
bb20:
  br label %bb25
bb21:
  br label %bb22
bb22:
  %t147 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t147, ptr %l82, !tbaa !27
  %t148 = load i64, ptr %l19, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr %"compiler/measure:Sample", ptr %t151, i64 %t148
  %t153 = load %"compiler/measure:Sample", ptr %t152
  store %"compiler/measure:Sample" %t153, ptr %l21
  %t155 = load i64, ptr %l17, !tbaa !24
  %t156 = getelementptr %"compiler/measure:Sample", ptr %l21, i32 0, i32 3
  %t157 = load i64, ptr %t156, !tbaa !24
  %t160 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t155, i64 %t157)
  store i64 %t160, ptr %l87
  br label %bb23
bb23:
  %t161 = load i64, ptr %l87, !tbaa !24
  store i64 %t161, ptr %l17, !tbaa !24
  br label %bb24
bb24:
  %t162 = load i64, ptr %l19, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l19, !tbaa !24
  br label %bb19
bb25:
  %t166 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t166, 0
  store i64 %t168, ptr %l22, !tbaa !24
  %t170 = load i64, ptr %l22, !tbaa !24
  %t172 = icmp sgt i64 %t170, 1
  br i1 %t172, label %bb26, label %bb27
bb26:
  %t174 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t176 = call double @std_2fbench_2eMedian(ptr %s0, { i64, ptr } %t174)
  store double %t176, ptr %l96
  br label %bb28
bb27:
  %t177 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t179 = call double @std_2fbench_2eMedian(ptr %s0, { i64, ptr } %t177)
  store double %t179, ptr %l103
  br label %bb31
bb28:
  %t180 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t182 = call double @std_2fbench_2eSpread(ptr %s0, { i64, ptr } %t180)
  store double %t182, ptr %l98
  br label %bb29
bb29:
  %t183 = load double, ptr %l96, !tbaa !26
  %t184 = load double, ptr %l98, !tbaa !26
  %t185 = call { i64, ptr } @compiler_2fmeasure_2esecsSpread(ptr %s0, double %t183, double %t184)
  store { i64, ptr } %t185, ptr %l99
  br label %bb30
bb30:
  %t186 = load i64, ptr %l22, !tbaa !24
  %t187 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t194 = call i64 @__olang_fmt_i64(ptr null, i64 %t186)
  %t195 = add i64 %t192, %t194
  %t196 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t197 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t198 = add i64 %t195, %t197
  %t199 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t198)
  call void @olang_textcopy(ptr %t199, ptr %t188, i64 %t189)
  %t200 = getelementptr i8, ptr %t199, i64 %t189
  call void @olang_textcopy(ptr %t200, ptr %t190, i64 %t191)
  %t201 = getelementptr i8, ptr %t200, i64 %t191
  %t202 = call i64 @__olang_fmt_i64(ptr %t201, i64 %t186)
  %t203 = getelementptr i8, ptr %t201, i64 %t194
  call void @olang_textcopy(ptr %t203, ptr %t196, i64 %t197)
  %t204 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t199, 1
  store { i64, ptr } %t205, ptr %l94, !tbaa !27
  br label %bb33
bb31:
  %t207 = load double, ptr %l103, !tbaa !26
  %t208 = call { i64, ptr } @compiler_2fmeasure_2esecs(ptr %s0, double %t207)
  store { i64, ptr } %t208, ptr %l104
  br label %bb32
bb32:
  %t209 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 1
  %t211 = extractvalue { i64, ptr } %t209, 0
  %t212 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t213 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t214 = add i64 %t211, %t213
  %t215 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t214)
  call void @olang_textcopy(ptr %t215, ptr %t210, i64 %t211)
  %t216 = getelementptr i8, ptr %t215, i64 %t211
  call void @olang_textcopy(ptr %t216, ptr %t212, i64 %t213)
  %t217 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t215, 1
  store { i64, ptr } %t218, ptr %l94, !tbaa !27
  br label %bb33
bb33:
  %t220 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t220, ptr %l23, !tbaa !27
  %t223 = sitofp i64 %a0 to double
  %t225 = call { i64, ptr } @compiler_2fmeasure_2esecs(ptr %s0, double %t223)
  store { i64, ptr } %t225, ptr %l108
  br label %bb34
bb34:
  %t226 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t226, ptr %l109, !tbaa !27
  %t227 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t229 = call double @std_2fbench_2eMedian(ptr %s0, { i64, ptr } %t227)
  store double %t229, ptr %l111
  br label %bb35
bb35:
  %t230 = load double, ptr %l111, !tbaa !26
  %t231 = call { i64, ptr } @compiler_2fmeasure_2esecs(ptr %s0, double %t230)
  store { i64, ptr } %t231, ptr %l112
  br label %bb36
bb36:
  %t232 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t234 = call double @std_2fbench_2eMedian(ptr %s0, { i64, ptr } %t232)
  store double %t234, ptr %l114
  br label %bb37
bb37:
  %t235 = load double, ptr %l114, !tbaa !26
  %t236 = call { i64, ptr } @compiler_2fmeasure_2esecs(ptr %s0, double %t235)
  store { i64, ptr } %t236, ptr %l115
  br label %bb38
bb38:
  %t237 = load i64, ptr %l17, !tbaa !24
  %t239 = sdiv i64 %t237, 1024
  %t240 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t242 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = extractvalue { i64, ptr } %t242, 0
  %t245 = add i64 %t241, %t244
  %t246 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t247 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t248 = add i64 %t245, %t247
  %t249 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t249, 1
  %t251 = extractvalue { i64, ptr } %t249, 0
  %t252 = add i64 %t248, %t251
  %t253 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t254 = extractvalue { i64, ptr } %t253, 1
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t256 = add i64 %t252, %t255
  %t257 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t258 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t259 = add i64 %t256, %t258
  %t260 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 1
  %t262 = extractvalue { i64, ptr } %t260, 0
  %t263 = add i64 %t259, %t262
  %t264 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t265 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t266 = add i64 %t263, %t265
  %t268 = call i64 @__olang_fmt_i64(ptr null, i64 %t239)
  %t269 = add i64 %t266, %t268
  %t270 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t272 = add i64 %t269, %t271
  %t273 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t272)
  call void @olang_textcopy(ptr %t273, ptr %t240, i64 %t241)
  %t274 = getelementptr i8, ptr %t273, i64 %t241
  call void @olang_textcopy(ptr %t274, ptr %t243, i64 %t244)
  %t275 = getelementptr i8, ptr %t274, i64 %t244
  call void @olang_textcopy(ptr %t275, ptr %t246, i64 %t247)
  %t276 = getelementptr i8, ptr %t275, i64 %t247
  call void @olang_textcopy(ptr %t276, ptr %t250, i64 %t251)
  %t277 = getelementptr i8, ptr %t276, i64 %t251
  call void @olang_textcopy(ptr %t277, ptr %t254, i64 %t255)
  %t278 = getelementptr i8, ptr %t277, i64 %t255
  call void @olang_textcopy(ptr %t278, ptr %t257, i64 %t258)
  %t279 = getelementptr i8, ptr %t278, i64 %t258
  call void @olang_textcopy(ptr %t279, ptr %t261, i64 %t262)
  %t280 = getelementptr i8, ptr %t279, i64 %t262
  call void @olang_textcopy(ptr %t280, ptr %t264, i64 %t265)
  %t281 = getelementptr i8, ptr %t280, i64 %t265
  %t282 = call i64 @__olang_fmt_i64(ptr %t281, i64 %t239)
  %t283 = getelementptr i8, ptr %t281, i64 %t268
  call void @olang_textcopy(ptr %t283, ptr %t270, i64 %t271)
  %t284 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t273, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t285, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fmeasure_2eMeasure(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"compiler/measure:Sample"
  %l14 = alloca { i64, ptr }
  %l16 = alloca i32
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l44 = alloca %"compiler/measure:Sample"
  %l45 = alloca { i64, ptr }
  %l48 = alloca i32
  %l51 = alloca %"compiler/measure:Sample"
  %l52 = alloca i32
  %l54 = alloca i1
  %l57 = alloca { i64, ptr }
  %l60 = alloca i32
  %l62 = alloca i1
  %l65 = alloca i32
  %l67 = alloca i32
  %l75 = alloca i64
  %l77 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l80 = alloca i32
  %l82 = alloca i1
  %l86 = alloca i32
  %l88 = alloca i32
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = call i32 (ptr, i32, ...) @open(ptr %t3, i32 1)
  store i32 %t5, ptr %l16
  br label %bb1
bb1:
  %t6 = load i32, ptr %l16, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmeasure_3aSample_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l17
  br label %bb2
bb2:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t11 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a2, i64 1)
  store i64 %t11, ptr %l19
  br label %bb3
bb3:
  %t12 = load i64, ptr %l19, !tbaa !24
  store i64 %t12, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t13 = load i64, ptr %l8, !tbaa !24
  %t14 = load i64, ptr %l7, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l9, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb9
bb6:
  %t23 = load i64, ptr %l8, !tbaa !24
  %t24 = load i64, ptr %l7, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l9, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l9, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l26, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l26, !tbaa !24
  store i64 %t39, ptr %l23, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l23, !tbaa !24
  store i64 %t40, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l11, !tbaa !24
  %t42 = load i64, ptr %l10, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb11, label %bb12
bb11:
  br label %bb35
bb12:
  br label %bb13
bb13:
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l11, !tbaa !24
  %t51 = load i64, ptr %l9, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  %t59 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t59, ptr %l45, !tbaa !27
  %t62 = icmp eq i64 %t57, 0
  br i1 %t62, label %bb14, label %bb15
bb14:
  store i32 -1, ptr %l48, !tbaa !23
  br label %bb16
bb15:
  %t64 = load i32, ptr %l4, !tbaa !23
  store i32 %t64, ptr %l48, !tbaa !23
  br label %bb16
bb16:
  %t67 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t68 = load i32, ptr %l48, !tbaa !23
  %t70 = call { i32, %"compiler/measure:Sample" } @compiler_2fmeasure_2eSample_2eOf(ptr %v0, ptr %v1, { i64, ptr } %t67, i32 %t68, { i64, ptr } %a3)
  %t71 = extractvalue { i32, %"compiler/measure:Sample" } %t70, 1
  %t72 = extractvalue { i32, %"compiler/measure:Sample" } %t70, 0
  store i32 %t72, ptr %l52
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb18, label %ok.74, !prof !99
ok.74:
  store %"compiler/measure:Sample" %t71, ptr %l51
  br label %bb17
bb17:
  %t75 = load %"compiler/measure:Sample", ptr %l51
  store %"compiler/measure:Sample" %t75, ptr %l44
  br label %bb29
bb18:
  %t76 = load i32, ptr %l52, !tbaa !23
  %t77 = ashr i32 %t76, 16
  %t79 = icmp eq i32 %t77, 1
  store i1 %t79, ptr %l54, !tbaa !21
  %t80 = load i32, ptr %l52, !tbaa !23
  %t81 = ashr i32 %t80, 16
  %t83 = icmp eq i32 %t81, 1
  br i1 %t83, label %bb19, label %bb20
bb19:
  call void @__olang_errpay_pop()
  br label %bb20
bb20:
  br label %bb21
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t85 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t85, ptr %l57, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %t87, i64 0
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !37
  %t90 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t93 = extractvalue { i64, ptr } %t89, 1
  %t94 = extractvalue { i64, ptr } %t89, 0
  %t95 = add i64 %t91, %t94
  %t96 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t99 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t98)
  call void @olang_textcopy(ptr %t99, ptr %t90, i64 %t91)
  %t100 = getelementptr i8, ptr %t99, i64 %t91
  call void @olang_textcopy(ptr %t100, ptr %t93, i64 %t94)
  %t101 = getelementptr i8, ptr %t100, i64 %t94
  call void @olang_textcopy(ptr %t101, ptr %t96, i64 %t97)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t99, 1
  %t105 = call i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %t103)
  store i32 %t105, ptr %l60
  %t106 = icmp ne i32 %t105, 0
  br i1 %t106, label %bb23, label %ok.107, !prof !99
ok.107:
  br label %bb22
bb22:
  br label %bb27
bb23:
  %t108 = load i32, ptr %l60, !tbaa !23
  %t109 = ashr i32 %t108, 16
  %t111 = icmp eq i32 %t109, 1
  store i1 %t111, ptr %l62, !tbaa !21
  %t112 = load i32, ptr %l60, !tbaa !23
  %t113 = ashr i32 %t112, 16
  %t115 = icmp eq i32 %t113, 1
  br i1 %t115, label %bb24, label %bb25
bb24:
  call void @__olang_errpay_pop()
  br label %bb25
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  store i32 1, ptr %l65, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  %t117 = load i32, ptr %l4, !tbaa !23
  %t119 = call i32 @close(i32 %t117)
  store i32 %t119, ptr %l67
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t120 = load i32, ptr %l65, !tbaa !23
  store i32 %t120, ptr %rv
  br label %ret
bb29:
  %t121 = load %"compiler/measure:Sample", ptr %l44
  store %"compiler/measure:Sample" %t121, ptr %l13
  %t122 = load %"compiler/measure:Sample", ptr %l13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmeasure_3aSample_3e_2ePush_3ccompiler_2fmeasure_3aSample_3e(ptr %s0, ptr %l5, %"compiler/measure:Sample" %t122)
  br label %bb30
bb30:
  %t125 = getelementptr %"compiler/measure:Sample", ptr %l13, i32 0, i32 4
  %t126 = load i64, ptr %t125, !tbaa !24
  store i64 %t126, ptr %l6, !tbaa !24
  %t128 = load i64, ptr %l6, !tbaa !24
  %t130 = icmp ne i64 %t128, 0
  br i1 %t130, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t132 = load i64, ptr %l11, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l11, !tbaa !24
  br label %bb10
bb35:
  store i64 %a1, ptr %l75, !tbaa !24
  %t138 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmeasure_3aSample_3e_2eToArr_H5b7e85abe257daf59f7cb8a9c65adc88(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t138, ptr %l77
  br label %bb36
bb36:
  %t139 = load i64, ptr %l75, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t141 = call { i64, ptr } @compiler_2fmeasure_2eLine(ptr %s0, ptr %s0, i64 %t139, { i64, ptr } %t140)
  store { i64, ptr } %t141, ptr %l78
  br label %bb37
bb37:
  %t142 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t144 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 1
  %t146 = extractvalue { i64, ptr } %t144, 0
  %t147 = add i64 %t143, %t146
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t150 = add i64 %t147, %t149
  %t151 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t150)
  call void @olang_textcopy(ptr %t151, ptr %t142, i64 %t143)
  %t152 = getelementptr i8, ptr %t151, i64 %t143
  call void @olang_textcopy(ptr %t152, ptr %t145, i64 %t146)
  %t153 = getelementptr i8, ptr %t152, i64 %t146
  call void @olang_textcopy(ptr %t153, ptr %t148, i64 %t149)
  %t154 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t151, 1
  %t157 = call i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %t155)
  store i32 %t157, ptr %l80
  %t158 = icmp ne i32 %t157, 0
  br i1 %t158, label %bb39, label %ok.159, !prof !99
ok.159:
  br label %bb38
bb38:
  br label %bb43
bb39:
  %t160 = load i32, ptr %l80, !tbaa !23
  %t161 = ashr i32 %t160, 16
  %t163 = icmp eq i32 %t161, 1
  store i1 %t163, ptr %l82, !tbaa !21
  %t164 = load i32, ptr %l80, !tbaa !23
  %t165 = ashr i32 %t164, 16
  %t167 = icmp eq i32 %t165, 1
  br i1 %t167, label %bb40, label %bb41
bb40:
  call void @__olang_errpay_pop()
  br label %bb41
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t169 = load i64, ptr %l6, !tbaa !24
  %t171 = trunc i64 %t169 to i32
  store i32 %t171, ptr %l86, !tbaa !23
  %t172 = load i32, ptr %l4, !tbaa !23
  %t174 = call i32 @close(i32 %t172)
  store i32 %t174, ptr %l88
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t175 = load i32, ptr %l86, !tbaa !23
  store i32 %t175, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, %"compiler/measure:Sample" } @compiler_2fmeasure_2eSample_2eOf(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i32
  %l20 = alloca [1 x i32]
  %l21 = alloca [18 x i64]
  %l22 = alloca i64
  %l23 = alloca i64
  %l32 = alloca { i64, ptr }
  %l42 = alloca i64
  %l52 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l76 = alloca i64
  %l78 = alloca i1
  %l79 = alloca i32
  %l84 = alloca { i64, ptr }
  %l86 = alloca i32
  %l94 = alloca { i64, ptr }
  %l96 = alloca i32
  %l99 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l102 = alloca i64
  %l103 = alloca { i64, ptr }
  %l104 = alloca { i64, [2 x i64] }
  %l105 = alloca i64
  %l107 = alloca { i64, [2 x i64] }
  %l111 = alloca [18 x i64]
  %l119 = alloca i32
  %l121 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l124 = alloca i64
  %l125 = alloca { i64, ptr }
  %l126 = alloca { i64, [2 x i64] }
  %l127 = alloca i64
  %l129 = alloca { i64, [2 x i64] }
  %l132 = alloca i64
  %l140 = alloca i64
  %l160 = alloca %"compiler/measure:Sample"
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/measure:Sample" }
  %t192 = alloca { i64, [2 x i64] }, align 8
  %t260 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t15, ptr %l32, !tbaa !27
  %t16 = load i64, ptr %l5, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %t19, i64 %t16
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !37
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t28 = add i64 %t26, 1
  %t31 = add i64 %t23, %t28
  store i64 %t31, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l5, !tbaa !24
  br label %bb1
bb6:
  %t37 = load i64, ptr %l3, !tbaa !24
  store i64 %t37, ptr %l42, !tbaa !24
  %t38 = load i64, ptr %l42, !tbaa !24
  %t39 = icmp sge i64 %t38, 0
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = load i64, ptr %l42, !tbaa !24
  %t42 = mul i64 %t41, 1
  %t43 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t47, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  store i64 %t51, ptr %l12, !tbaa !24
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_d4d32b6bc60e7203_b6478d4bfe2d5d77)
  unreachable
bb9:
  %t53 = load i64, ptr %l11, !tbaa !24
  %t54 = load i64, ptr %l12, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb10, label %bb11
bb10:
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t61 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t61, ptr %l52, !tbaa !27
  %t62 = load i64, ptr %l11, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %t65, i64 %t62
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !37
  store { i64, ptr } %t67, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l16, !tbaa !24
  br label %bb13
bb13:
  %t75 = load i64, ptr %l15, !tbaa !24
  %t76 = load i64, ptr %l16, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t83 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t83, ptr %l62, !tbaa !27
  %t84 = load i64, ptr %l15, !tbaa !24
  %t86 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i8, ptr %t87, i64 %t84
  %t89 = load i8, ptr %t88, !tbaa !32
  %t91 = load i64, ptr %l9, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i8, ptr %t97, i64 %t91
  store i8 %t89, ptr %t98, !tbaa !32
  %t99 = load i64, ptr %l9, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l9, !tbaa !24
  br label %bb17
bb17:
  %t103 = load i64, ptr %l15, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l15, !tbaa !24
  br label %bb13
bb18:
  %t107 = load i64, ptr %l9, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l9, !tbaa !24
  br label %bb19
bb19:
  %t111 = load i64, ptr %l11, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l11, !tbaa !24
  br label %bb9
bb20:
  %t115 = call i64 @std_2ftime_2eNow()
  store i64 %t115, ptr %l76
  br label %bb21
bb21:
  %t116 = load i64, ptr %l76, !tbaa !24
  store i64 %t116, ptr %l18, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t119 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t117, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t119, ptr %l78
  br label %bb22
bb22:
  %t120 = load i1, ptr %l78, !tbaa !21
  br i1 %t120, label %bb23, label %bb24
bb23:
  %t121 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t122, 0
  %t125 = load i32, ptr %l1, !tbaa !23
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l84, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t121, 1
  %t129 = extractvalue { i64, ptr } %t121, 0
  %t133 = extractvalue { i64, ptr } %t126, 1
  %t134 = extractvalue { i64, ptr } %t126, 0
  %t135 = call i32 @__olang_spawn(ptr %t128, i64 %t124, i32 -1, i32 %t125, i32 -1, ptr %t133)
  store i32 %t135, ptr %l86
  br label %bb25
bb24:
  %t136 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t136, 1
  %t139 = extractvalue { i64, ptr } %t136, 0
  %t140 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t143 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t142)
  call void @olang_textcopy(ptr %t143, ptr %t138, i64 %t139)
  %t144 = getelementptr i8, ptr %t143, i64 %t139
  call void @olang_textcopy(ptr %t144, ptr %t140, i64 %t141)
  %t145 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t143, 1
  %t148 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t149, 0
  %t152 = load i32, ptr %l1, !tbaa !23
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l94, !tbaa !27
  %t153 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t146, 1
  %t156 = extractvalue { i64, ptr } %t146, 0
  %t158 = extractvalue { i64, ptr } %t148, 1
  %t159 = extractvalue { i64, ptr } %t148, 0
  %t163 = extractvalue { i64, ptr } %t153, 1
  %t164 = extractvalue { i64, ptr } %t153, 0
  %t165 = call i32 @__olang_spawn_as(ptr %t155, ptr %t158, i64 %t151, i32 -1, i32 %t152, i32 -1, ptr %t163)
  store i32 %t165, ptr %l96
  br label %bb26
bb25:
  %t166 = load i32, ptr %l86, !tbaa !23
  store i32 %t166, ptr %l79, !tbaa !23
  br label %bb27
bb26:
  %t167 = load i32, ptr %l96, !tbaa !23
  store i32 %t167, ptr %l79, !tbaa !23
  br label %bb27
bb27:
  %t168 = load i32, ptr %l79, !tbaa !23
  store i32 %t168, ptr %l19, !tbaa !23
  %t169 = load i32, ptr %l19, !tbaa !23
  %t171 = icmp slt i32 %t169, 0
  br i1 %t171, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s11
  %t173 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t173, ptr %l99, !tbaa !27
  %t174 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr { i64, ptr }, ptr %t175, i64 0
  %t177 = load { i64, ptr }, ptr %t176, !tbaa !37
  store { i64, ptr } %t177, ptr %l101, !tbaa !27
  %t179 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t179, 0
  store i64 %t180, ptr %l102, !tbaa !24
  %t181 = load i64, ptr %l102, !tbaa !24
  %t182 = mul i64 %t181, 1
  %t183 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t182)
  %t184 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t183, 1
  store { i64, ptr } %t185, ptr %l103, !tbaa !27
  %t186 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = load i64, ptr %l102, !tbaa !24
  %t191 = mul i64 %t190, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t187, ptr %t189, i64 %t191, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t192
  %t193 = getelementptr { i64, [2 x i64] }, ptr %t192, i32 0, i32 0
  store i64 6, ptr %t193
  %t194 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t195 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t194, 0
  %t196 = getelementptr { i64, [2 x i64] }, ptr %t192, i32 0, i32 1
  store { { i64, ptr } } %t195, ptr %t196
  %t197 = load { i64, [2 x i64] }, ptr %t192
  store { i64, [2 x i64] } %t197, ptr %l104
  %t198 = call ptr @__olang_errpay_push()
  %t199 = ptrtoint ptr %t198 to i64
  store i64 %t199, ptr %l105, !tbaa !24
  %t200 = load i64, ptr %l105
  %t201 = inttoptr i64 %t200 to ptr
  %t203 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t201, ptr %l104)
  store { i64, [2 x i64] } %t203, ptr %l107
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t204 = load { i64, [2 x i64] }, ptr %l107
  %t205 = load i64, ptr %l105
  %t206 = inttoptr i64 %t205 to ptr
  %t207 = call ptr @__olang_scope_alloc_a(ptr %t206, i64 24, i64 8)
  store { i64, [2 x i64] } %t204, ptr %t207
  call void @__olang_errpay_set(ptr %t207)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t210 = insertvalue { i32, %"compiler/measure:Sample" } zeroinitializer, i32 65542, 0
  store { i32, %"compiler/measure:Sample" } %t210, ptr %rv
  br label %ret
bb31:
  %t211 = insertvalue [1 x i32] undef, i32 0, 0
  store [1 x i32] %t211, ptr %l20
  br label %fill.216
fill.216:
  br label %fill.213
fill.213:
  %t217 = phi i64 [ 0, %fill.216 ], [ %t218, %fill.214 ]
  %t219 = icmp slt i64 %t217, 18
  br i1 %t219, label %fill.214, label %fill.215
fill.214:
  %t220 = getelementptr [18 x i64], ptr %l111, i64 0, i64 %t217
  store i64 0, ptr %t220
  %t218 = add i64 %t217, 1
  br label %fill.213
fill.215:
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %l111, i64 144, i1 false)
  %t221 = load i32, ptr %l19, !tbaa !23
  %t223 = insertvalue { i64, ptr } undef, i64 1, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %l20, 1
  %t227 = insertvalue { i64, ptr } undef, i64 18, 0
  %t228 = insertvalue { i64, ptr } %t227, ptr %l21, 1
  %t232 = extractvalue { i64, ptr } %t224, 1
  %t233 = extractvalue { i64, ptr } %t224, 0
  %t235 = extractvalue { i64, ptr } %t228, 1
  %t236 = extractvalue { i64, ptr } %t228, 0
  %t237 = call i32 @wait4(i32 %t221, ptr %t232, i32 0, ptr %t235)
  store i32 %t237, ptr %l119
  br label %bb32
bb32:
  %t238 = load i32, ptr %l119, !tbaa !23
  %t239 = icmp slt i32 %t238, 0
  br i1 %t239, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s12
  %t241 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t241, ptr %l121, !tbaa !27
  %t242 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !27
  %t244 = getelementptr { i64, ptr }, ptr %t243, i64 0
  %t245 = load { i64, ptr }, ptr %t244, !tbaa !37
  store { i64, ptr } %t245, ptr %l123, !tbaa !27
  %t247 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 0
  store i64 %t248, ptr %l124, !tbaa !24
  %t249 = load i64, ptr %l124, !tbaa !24
  %t250 = mul i64 %t249, 1
  %t251 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t250)
  %t252 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t251, 1
  store { i64, ptr } %t253, ptr %l125, !tbaa !27
  %t254 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = load i64, ptr %l124, !tbaa !24
  %t259 = mul i64 %t258, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t255, ptr %t257, i64 %t259, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t260
  %t261 = getelementptr { i64, [2 x i64] }, ptr %t260, i32 0, i32 0
  store i64 6, ptr %t261
  %t262 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t263 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t262, 0
  %t264 = getelementptr { i64, [2 x i64] }, ptr %t260, i32 0, i32 1
  store { { i64, ptr } } %t263, ptr %t264
  %t265 = load { i64, [2 x i64] }, ptr %t260
  store { i64, [2 x i64] } %t265, ptr %l126
  %t266 = call ptr @__olang_errpay_push()
  %t267 = ptrtoint ptr %t266 to i64
  store i64 %t267, ptr %l127, !tbaa !24
  %t268 = load i64, ptr %l127
  %t269 = inttoptr i64 %t268 to ptr
  %t271 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t269, ptr %l126)
  store { i64, [2 x i64] } %t271, ptr %l129
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t272 = load { i64, [2 x i64] }, ptr %l129
  %t273 = load i64, ptr %l127
  %t274 = inttoptr i64 %t273 to ptr
  %t275 = call ptr @__olang_scope_alloc_a(ptr %t274, i64 24, i64 8)
  store { i64, [2 x i64] } %t272, ptr %t275
  call void @__olang_errpay_set(ptr %t275)
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  %t278 = insertvalue { i32, %"compiler/measure:Sample" } zeroinitializer, i32 65542, 0
  store { i32, %"compiler/measure:Sample" } %t278, ptr %rv
  br label %ret
bb36:
  %t279 = call i64 @std_2ftime_2eNow()
  store i64 %t279, ptr %l132
  br label %bb37
bb37:
  %t280 = load i64, ptr %l18, !tbaa !24
  %t281 = load i64, ptr %l132, !tbaa !24
  %t283 = sub i64 %t281, %t280
  store i64 %t283, ptr %l22, !tbaa !24
  %t285 = getelementptr [1 x i32], ptr %l20, i64 0, i64 0
  %t286 = load i32, ptr %t285, !tbaa !33
  %t288 = sext i32 %t286 to i64
  store i64 %t288, ptr %l23, !tbaa !24
  %t290 = load i64, ptr %l23, !tbaa !24
  %t292 = and i64 %t290, 127
  %t294 = icmp eq i64 %t292, 0
  br i1 %t294, label %bb38, label %bb39
bb38:
  %t296 = load i64, ptr %l23, !tbaa !24
  %t298 = ashr i64 %t296, 8
  %t300 = and i64 %t298, 255
  store i64 %t300, ptr %l140, !tbaa !24
  br label %bb40
bb39:
  %t302 = load i64, ptr %l23, !tbaa !24
  %t304 = and i64 %t302, 127
  %t306 = add i64 128, %t304
  store i64 %t306, ptr %l140, !tbaa !24
  br label %bb40
bb40:
  %t308 = load i64, ptr %l140, !tbaa !24
  %t309 = load i64, ptr %l22, !tbaa !24
  %t310 = getelementptr [18 x i64], ptr %l21, i64 0, i64 0
  %t311 = load i64, ptr %t310, !tbaa !34
  %t313 = mul i64 %t311, 1000000000
  %t314 = getelementptr [18 x i64], ptr %l21, i64 0, i64 1
  %t315 = load i64, ptr %t314, !tbaa !34
  %t317 = mul i64 %t315, 1000
  %t320 = add i64 %t313, %t317
  %t321 = getelementptr [18 x i64], ptr %l21, i64 0, i64 2
  %t322 = load i64, ptr %t321, !tbaa !34
  %t324 = mul i64 %t322, 1000000000
  %t325 = getelementptr [18 x i64], ptr %l21, i64 0, i64 3
  %t326 = load i64, ptr %t325, !tbaa !34
  %t328 = mul i64 %t326, 1000
  %t331 = add i64 %t324, %t328
  %t332 = getelementptr [18 x i64], ptr %l21, i64 0, i64 4
  %t333 = load i64, ptr %t332, !tbaa !34
  %t340 = call %"compiler/measure:Sample" @compiler_2fmeasure_3aSample_2ector(ptr %s0, i64 %t309, i64 %t320, i64 %t331, i64 %t333, i64 %t308)
  store %"compiler/measure:Sample" %t340, ptr %l160
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  %t341 = load %"compiler/measure:Sample", ptr %l160
  %t342 = insertvalue { i32, %"compiler/measure:Sample" } zeroinitializer, %"compiler/measure:Sample" %t341, 1
  store { i32, %"compiler/measure:Sample" } %t342, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/measure:Sample" }, ptr %rv
  ret { i32, %"compiler/measure:Sample" } %rr
}

define dso_local { i64, ptr } @compiler_2fmeasure_2eTotal(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca [18 x i64]
  %l3 = alloca [18 x i64]
  %l7 = alloca i32
  %l8 = alloca i64
  %l11 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  %t7 = icmp slt i64 %t5, 18
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [18 x i64], ptr %l3, i64 0, i64 %t5
  store i64 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l3, i64 144, i1 false)
  %t10 = insertvalue { i64, ptr } undef, i64 18, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %l2, 1
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = extractvalue { i64, ptr } %t11, 0
  %t16 = call i32 @getrusage(i32 -1, ptr %t14)
  store i32 %t16, ptr %l7
  br label %bb1
bb1:
  store i64 %a0, ptr %l8, !tbaa !24
  %t20 = sitofp i64 %a1 to double
  %t22 = call { i64, ptr } @compiler_2fmeasure_2esecs(ptr %s0, double %t20)
  store { i64, ptr } %t22, ptr %l11
  br label %bb2
bb2:
  %t23 = getelementptr [18 x i64], ptr %l2, i64 0, i64 0
  %t24 = load i64, ptr %t23, !tbaa !34
  %t26 = mul i64 %t24, 1000000000
  %t27 = getelementptr [18 x i64], ptr %l2, i64 0, i64 1
  %t28 = load i64, ptr %t27, !tbaa !34
  %t30 = mul i64 %t28, 1000
  %t33 = add i64 %t26, %t30
  %t35 = sitofp i64 %t33 to double
  %t37 = call { i64, ptr } @compiler_2fmeasure_2esecs(ptr %s0, double %t35)
  store { i64, ptr } %t37, ptr %l18
  br label %bb3
bb3:
  %t38 = getelementptr [18 x i64], ptr %l2, i64 0, i64 2
  %t39 = load i64, ptr %t38, !tbaa !34
  %t41 = mul i64 %t39, 1000000000
  %t42 = getelementptr [18 x i64], ptr %l2, i64 0, i64 3
  %t43 = load i64, ptr %t42, !tbaa !34
  %t45 = mul i64 %t43, 1000
  %t48 = add i64 %t41, %t45
  %t50 = sitofp i64 %t48 to double
  %t52 = call { i64, ptr } @compiler_2fmeasure_2esecs(ptr %s0, double %t50)
  store { i64, ptr } %t52, ptr %l25
  br label %bb4
bb4:
  %t53 = getelementptr [18 x i64], ptr %l2, i64 0, i64 4
  %t54 = load i64, ptr %t53, !tbaa !34
  %t56 = sdiv i64 %t54, 1024
  %t57 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t59 = load i64, ptr %l8, !tbaa !24
  %t60 = call i64 @__olang_fmt_i64(ptr null, i64 %t59)
  %t61 = add i64 %t58, %t60
  %t62 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t64 = add i64 %t61, %t63
  %t65 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 1
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t68 = add i64 %t64, %t67
  %t69 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t71 = add i64 %t68, %t70
  %t72 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = add i64 %t71, %t74
  %t76 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t78 = add i64 %t75, %t77
  %t79 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t82 = add i64 %t78, %t81
  %t83 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t87 = call i64 @__olang_fmt_i64(ptr null, i64 %t56)
  %t88 = add i64 %t85, %t87
  %t89 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t91 = add i64 %t88, %t90
  %t92 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t91)
  call void @olang_textcopy(ptr %t92, ptr %t57, i64 %t58)
  %t93 = getelementptr i8, ptr %t92, i64 %t58
  %t94 = call i64 @__olang_fmt_i64(ptr %t93, i64 %t59)
  %t95 = getelementptr i8, ptr %t93, i64 %t60
  call void @olang_textcopy(ptr %t95, ptr %t62, i64 %t63)
  %t96 = getelementptr i8, ptr %t95, i64 %t63
  call void @olang_textcopy(ptr %t96, ptr %t66, i64 %t67)
  %t97 = getelementptr i8, ptr %t96, i64 %t67
  call void @olang_textcopy(ptr %t97, ptr %t69, i64 %t70)
  %t98 = getelementptr i8, ptr %t97, i64 %t70
  call void @olang_textcopy(ptr %t98, ptr %t73, i64 %t74)
  %t99 = getelementptr i8, ptr %t98, i64 %t74
  call void @olang_textcopy(ptr %t99, ptr %t76, i64 %t77)
  %t100 = getelementptr i8, ptr %t99, i64 %t77
  call void @olang_textcopy(ptr %t100, ptr %t80, i64 %t81)
  %t101 = getelementptr i8, ptr %t100, i64 %t81
  call void @olang_textcopy(ptr %t101, ptr %t83, i64 %t84)
  %t102 = getelementptr i8, ptr %t101, i64 %t84
  %t103 = call i64 @__olang_fmt_i64(ptr %t102, i64 %t56)
  %t104 = getelementptr i8, ptr %t102, i64 %t87
  call void @olang_textcopy(ptr %t104, ptr %t89, i64 %t90)
  %t105 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t92, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t106, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmeasure_2esecs(ptr %v0, double %a0) #0 {
entry:
  %l0 = alloca double
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store double %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load double, ptr %l0, !tbaa !26
  %t3 = fcmp olt double %t1, 0x3ff0000000000000
  br i1 %t3, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t5, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load double, ptr %l0, !tbaa !26
  %t23 = fcmp oge double %t21, 0x4197d78400000000
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load double, ptr %l0, !tbaa !26
  %t27 = fdiv double %t25, 0x41cdcd6500000000
  %t29 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %s0, double %t27, i64 2)
  store { i64, ptr } %t29, ptr %l12
  br label %bb6
bb5:
  %t30 = load double, ptr %l0, !tbaa !26
  %t32 = call { i64, ptr } @std_2fbench_2eHuman(ptr %v0, double %t30, double 0x0000000000000000)
  store { i64, ptr } %t32, ptr %l15
  br label %bb7
bb6:
  %t33 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 1
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t36 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t38 = add i64 %t35, %t37
  %t39 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t38)
  call void @olang_textcopy(ptr %t39, ptr %t34, i64 %t35)
  %t40 = getelementptr i8, ptr %t39, i64 %t35
  call void @olang_textcopy(ptr %t40, ptr %t36, i64 %t37)
  %t41 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t39, 1
  store { i64, ptr } %t42, ptr %l9, !tbaa !27
  br label %bb8
bb7:
  %t44 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t44, ptr %l9, !tbaa !27
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmeasure_2esecsSpread(ptr %v0, double %a0, double %a1) #0 {
entry:
  %l0 = alloca double
  %l1 = alloca double
  %l4 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store double %a0, ptr %l0
  store double %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load double, ptr %l1, !tbaa !26
  %t3 = fcmp oeq double %t1, 0x0000000000000000
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load double, ptr %l0, !tbaa !26
  %t7 = call { i64, ptr } @compiler_2fmeasure_2esecs(ptr %v0, double %t5)
  store { i64, ptr } %t7, ptr %l6
  br label %bb3
bb2:
  %t8 = load double, ptr %l0, !tbaa !26
  %t10 = call { i64, ptr } @compiler_2fmeasure_2esecs(ptr %s0, double %t8)
  store { i64, ptr } %t10, ptr %l8
  br label %bb4
bb3:
  %t11 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  br label %bb6
bb4:
  %t12 = load double, ptr %l1, !tbaa !26
  %t14 = call { i64, ptr } @compiler_2fmeasure_2esecs(ptr %s0, double %t12)
  store { i64, ptr } %t14, ptr %l10
  br label %bb5
bb5:
  %t15 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 1
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t18 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t20 = add i64 %t17, %t19
  %t21 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t24 = add i64 %t20, %t23
  %t25 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t16, i64 %t17)
  %t26 = getelementptr i8, ptr %t25, i64 %t17
  call void @olang_textcopy(ptr %t26, ptr %t18, i64 %t19)
  %t27 = getelementptr i8, ptr %t26, i64 %t19
  call void @olang_textcopy(ptr %t27, ptr %t22, i64 %t23)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t25, 1
  store { i64, ptr } %t29, ptr %l4, !tbaa !27
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t31 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t31, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/measure:Sample" @compiler_2fmeasure_3aSample_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %rv = alloca %"compiler/measure:Sample"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/measure:Sample" undef, i64 %a0, 0
  %t14 = insertvalue %"compiler/measure:Sample" %t12, i64 %a1, 1
  %t16 = insertvalue %"compiler/measure:Sample" %t14, i64 %a2, 2
  %t18 = insertvalue %"compiler/measure:Sample" %t16, i64 %a3, 3
  %t20 = insertvalue %"compiler/measure:Sample" %t18, i64 %a4, 4
  store %"compiler/measure:Sample" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/measure:Sample", ptr %rv
  ret %"compiler/measure:Sample" %rr
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
@.d0 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" (median of " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d1 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" runs; " }>, align 8
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
@.d2 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d3 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"built in " }>, align 8
@.d4 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ran in " }>, align 8
@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" user, " }>, align 8
@.d6 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" sys, " }>, align 8
@.d7 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" MB peak)" }>, align 8
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
@.d8 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"/dev/null\00" }>, align 8
declare i32 @open(ptr, i32, ...)
declare void @__olang_errpay_pop()
@.d9 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"bench: " }>, align 8
@.d10 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" could not be started\0A" }>, align 8
declare i32 @close(i32)
@.d11 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"bench: " }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare void @__olang_check_failed(ptr) cold noreturn
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @__olang_spawn(ptr, i64, i32, i32, i32, ptr)
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @__olang_spawn_as(ptr, ptr, i64, i32, i32, i32, ptr)
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @__olang_errpay_push() cold
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
declare i32 @wait4(i32, ptr, i32, ptr)
declare i32 @getrusage(i32, ptr)
@.d17 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"bench: " }>, align 8
@.d18 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" files in " }>, align 8
@.d19 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d20 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" user, " }>, align 8
@.d21 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" sys, " }>, align 8
@.d22 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" MB peak)" }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"0 s" }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" s" }>, align 8
@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" \C2\B1 " }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
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
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1)
declare double @std_2fbench_2eMedian(ptr %v0, { i64, ptr } %a0)
declare double @std_2fbench_2eSpread(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmeasure_3aSample_3e_2ector(ptr %v0, i64 %a0)
declare i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmeasure_3aSample_3e_2ePush_3ccompiler_2fmeasure_3aSample_3e(ptr %v0, ptr %a0, %"compiler/measure:Sample" %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmeasure_3aSample_3e_2eToArr_H5b7e85abe257daf59f7cb8a9c65adc88(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_d4d32b6bc60e7203_b6478d4bfe2d5d77 = external constant [0 x i8]
declare i64 @std_2ftime_2eNow()
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %v0, double %a0, i64 %a1)
declare { i64, ptr } @std_2fbench_2eHuman(ptr %v0, double %a0, double %a1)

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
