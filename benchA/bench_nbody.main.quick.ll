source_filename = "bench_nbody.main.quick.ll"
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
%"bench/nbody:Body" = type { double, double, double, double, double, double, double }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
@G_2ebench_2fnbody_2eDaysPerYear = constant <{ [8 x i8] }> <{ [8 x i8] c"\A4\70\3D\0A\D7\D3\76\40" }>, align 8
@G_2ebench_2fnbody_2eSolarMass = constant <{ [8 x i8] }> <{ [8 x i8] c"\DE\45\BE\C9\3C\BD\43\40" }>, align 8
define dso_local void @bench_2fnbody_2eadvance(ptr %v0, { i64, ptr } %a0, double %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca double
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
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca double
  %l16 = alloca double
  %l17 = alloca double
  %l18 = alloca double
  %l19 = alloca double
  %l20 = alloca double
  %l21 = alloca double
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l61 = alloca i64
  %l64 = alloca i64
  %l82 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l114 = alloca double
  %l115 = alloca double
  %l117 = alloca double
  %l120 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l131 = alloca i64
  %l137 = alloca { i64, ptr }
  %l138 = alloca i64
  %l144 = alloca { i64, ptr }
  %l145 = alloca i64
  %l151 = alloca { i64, ptr }
  %l152 = alloca i64
  %l158 = alloca { i64, ptr }
  %l159 = alloca i64
  %l165 = alloca { i64, ptr }
  %l166 = alloca i64
  %l180 = alloca i64
  %l183 = alloca i64
  %l201 = alloca { i64, ptr }
  %l202 = alloca i64
  %l205 = alloca { i64, ptr }
  %l210 = alloca { i64, ptr }
  %l211 = alloca i64
  %l214 = alloca { i64, ptr }
  %l219 = alloca { i64, ptr }
  %l220 = alloca i64
  %l223 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store double %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l37, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l37, !tbaa !24
  store i64 %t33, ptr %l34, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l34, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l9, !tbaa !24
  %t57 = load i64, ptr %l2, !tbaa !24
  store i64 %t57, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t59 = load i64, ptr %l10, !tbaa !24
  %t60 = load i64, ptr %l9, !tbaa !24
  %t63 = icmp sgt i64 %t59, %t60
  br i1 %t63, label %bb11, label %bb12
bb11:
  %t65 = load i64, ptr %l11, !tbaa !24
  %t67 = icmp sgt i64 %t65, 0
  br i1 %t67, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb16
bb13:
  %t69 = load i64, ptr %l10, !tbaa !24
  %t70 = load i64, ptr %l9, !tbaa !24
  %t73 = sub i64 %t69, %t70
  %t74 = load i64, ptr %l11, !tbaa !24
  %t77 = add i64 %t73, %t74
  %t79 = sub i64 %t77, 1
  %t80 = load i64, ptr %l11, !tbaa !24
  %t83 = sdiv i64 %t79, %t80
  store i64 %t83, ptr %l64, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb15
bb15:
  %t85 = load i64, ptr %l64, !tbaa !24
  store i64 %t85, ptr %l61, !tbaa !24
  br label %bb16
bb16:
  %t86 = load i64, ptr %l61, !tbaa !24
  store i64 %t86, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb17
bb17:
  %t87 = load i64, ptr %l13, !tbaa !24
  %t88 = load i64, ptr %l12, !tbaa !24
  %t91 = icmp slt i64 %t87, %t88
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb18, label %bb19
bb18:
  br label %bb23
bb19:
  br label %bb20
bb20:
  %t95 = load i64, ptr %l9, !tbaa !24
  %t96 = load i64, ptr %l13, !tbaa !24
  %t97 = load i64, ptr %l11, !tbaa !24
  %t100 = mul i64 %t96, %t97
  %t103 = add i64 %t95, %t100
  store i64 %t103, ptr %l14, !tbaa !24
  %t105 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t105, ptr %l82, !tbaa !27
  %t106 = load i64, ptr %l8, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr %"bench/nbody:Body", ptr %t109, i64 %t106
  %t111 = getelementptr %"bench/nbody:Body", ptr %t110, i32 0, i32 0
  %t112 = load double, ptr %t111, !tbaa !26
  %t113 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t113, ptr %l85, !tbaa !27
  %t114 = load i64, ptr %l14, !tbaa !24
  %t116 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr %"bench/nbody:Body", ptr %t117, i64 %t114
  %t119 = getelementptr %"bench/nbody:Body", ptr %t118, i32 0, i32 0
  %t120 = load double, ptr %t119, !tbaa !26
  %t123 = fsub double %t112, %t120
  store double %t123, ptr %l15, !tbaa !26
  %t125 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t125, ptr %l89, !tbaa !27
  %t126 = load i64, ptr %l8, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr %"bench/nbody:Body", ptr %t129, i64 %t126
  %t131 = getelementptr %"bench/nbody:Body", ptr %t130, i32 0, i32 1
  %t132 = load double, ptr %t131, !tbaa !26
  %t133 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t133, ptr %l92, !tbaa !27
  %t134 = load i64, ptr %l14, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr %"bench/nbody:Body", ptr %t137, i64 %t134
  %t139 = getelementptr %"bench/nbody:Body", ptr %t138, i32 0, i32 1
  %t140 = load double, ptr %t139, !tbaa !26
  %t143 = fsub double %t132, %t140
  store double %t143, ptr %l16, !tbaa !26
  %t145 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t145, ptr %l96, !tbaa !27
  %t146 = load i64, ptr %l8, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr %"bench/nbody:Body", ptr %t149, i64 %t146
  %t151 = getelementptr %"bench/nbody:Body", ptr %t150, i32 0, i32 2
  %t152 = load double, ptr %t151, !tbaa !26
  %t153 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t153, ptr %l99, !tbaa !27
  %t154 = load i64, ptr %l14, !tbaa !24
  %t156 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr %"bench/nbody:Body", ptr %t157, i64 %t154
  %t159 = getelementptr %"bench/nbody:Body", ptr %t158, i32 0, i32 2
  %t160 = load double, ptr %t159, !tbaa !26
  %t163 = fsub double %t152, %t160
  store double %t163, ptr %l17, !tbaa !26
  %t165 = load double, ptr %l15, !tbaa !26
  %t166 = load double, ptr %l15, !tbaa !26
  %t169 = fmul double %t165, %t166
  %t170 = load double, ptr %l16, !tbaa !26
  %t171 = load double, ptr %l16, !tbaa !26
  %t174 = fmul double %t170, %t171
  %t177 = fadd double %t169, %t174
  %t178 = load double, ptr %l17, !tbaa !26
  %t179 = load double, ptr %l17, !tbaa !26
  %t182 = fmul double %t178, %t179
  %t185 = fadd double %t177, %t182
  store double %t185, ptr %l18, !tbaa !26
  %t187 = load double, ptr %l1, !tbaa !26
  store double %t187, ptr %l114, !tbaa !26
  %t188 = load double, ptr %l18, !tbaa !26
  store double %t188, ptr %l115, !tbaa !26
  %t189 = load double, ptr %l18, !tbaa !26
  %t191 = call double @llvm.sqrt.f64(double %t189)
  store double %t191, ptr %l117
  br label %bb21
bb21:
  %t192 = load double, ptr %l115, !tbaa !26
  %t193 = load double, ptr %l117, !tbaa !26
  %t194 = fmul double %t192, %t193
  %t195 = load double, ptr %l114, !tbaa !26
  %t197 = fdiv double %t195, %t194
  store double %t197, ptr %l19, !tbaa !26
  %t199 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t199, ptr %l120, !tbaa !27
  %t200 = load i64, ptr %l8, !tbaa !24
  %t202 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr %"bench/nbody:Body", ptr %t203, i64 %t200
  %t205 = getelementptr %"bench/nbody:Body", ptr %t204, i32 0, i32 6
  %t206 = load double, ptr %t205, !tbaa !26
  %t207 = load double, ptr %l19, !tbaa !26
  %t210 = fmul double %t206, %t207
  store double %t210, ptr %l20, !tbaa !26
  %t212 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t212, ptr %l125, !tbaa !27
  %t213 = load i64, ptr %l14, !tbaa !24
  %t215 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr %"bench/nbody:Body", ptr %t216, i64 %t213
  %t218 = getelementptr %"bench/nbody:Body", ptr %t217, i32 0, i32 6
  %t219 = load double, ptr %t218, !tbaa !26
  %t220 = load double, ptr %l19, !tbaa !26
  %t223 = fmul double %t219, %t220
  store double %t223, ptr %l21, !tbaa !26
  %t225 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t225, ptr %l130, !tbaa !27
  %t226 = load i64, ptr %l8, !tbaa !24
  store i64 %t226, ptr %l131, !tbaa !24
  %t227 = load i64, ptr %l131, !tbaa !24
  %t228 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr %"bench/nbody:Body", ptr %t229, i64 %t227
  %t231 = getelementptr %"bench/nbody:Body", ptr %t230, i32 0, i32 3
  %t232 = load double, ptr %t231, !tbaa !26
  %t233 = load double, ptr %l15, !tbaa !26
  %t234 = load double, ptr %l21, !tbaa !26
  %t237 = fmul double %t233, %t234
  %t240 = fsub double %t232, %t237
  %t242 = load i64, ptr %l131, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr %"bench/nbody:Body", ptr %t244, i64 %t242
  %t246 = getelementptr %"bench/nbody:Body", ptr %t245, i32 0, i32 3
  store double %t240, ptr %t246, !tbaa !26
  %t247 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t247, ptr %l137, !tbaa !27
  %t248 = load i64, ptr %l8, !tbaa !24
  store i64 %t248, ptr %l138, !tbaa !24
  %t249 = load i64, ptr %l138, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr %"bench/nbody:Body", ptr %t251, i64 %t249
  %t253 = getelementptr %"bench/nbody:Body", ptr %t252, i32 0, i32 4
  %t254 = load double, ptr %t253, !tbaa !26
  %t255 = load double, ptr %l16, !tbaa !26
  %t256 = load double, ptr %l21, !tbaa !26
  %t259 = fmul double %t255, %t256
  %t262 = fsub double %t254, %t259
  %t264 = load i64, ptr %l138, !tbaa !24
  %t265 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr %"bench/nbody:Body", ptr %t266, i64 %t264
  %t268 = getelementptr %"bench/nbody:Body", ptr %t267, i32 0, i32 4
  store double %t262, ptr %t268, !tbaa !26
  %t269 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t269, ptr %l144, !tbaa !27
  %t270 = load i64, ptr %l8, !tbaa !24
  store i64 %t270, ptr %l145, !tbaa !24
  %t271 = load i64, ptr %l145, !tbaa !24
  %t272 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !27
  %t274 = getelementptr %"bench/nbody:Body", ptr %t273, i64 %t271
  %t275 = getelementptr %"bench/nbody:Body", ptr %t274, i32 0, i32 5
  %t276 = load double, ptr %t275, !tbaa !26
  %t277 = load double, ptr %l17, !tbaa !26
  %t278 = load double, ptr %l21, !tbaa !26
  %t281 = fmul double %t277, %t278
  %t284 = fsub double %t276, %t281
  %t286 = load i64, ptr %l145, !tbaa !24
  %t287 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr %"bench/nbody:Body", ptr %t288, i64 %t286
  %t290 = getelementptr %"bench/nbody:Body", ptr %t289, i32 0, i32 5
  store double %t284, ptr %t290, !tbaa !26
  %t291 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t291, ptr %l151, !tbaa !27
  %t292 = load i64, ptr %l14, !tbaa !24
  store i64 %t292, ptr %l152, !tbaa !24
  %t293 = load i64, ptr %l152, !tbaa !24
  %t294 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !27
  %t296 = getelementptr %"bench/nbody:Body", ptr %t295, i64 %t293
  %t297 = getelementptr %"bench/nbody:Body", ptr %t296, i32 0, i32 3
  %t298 = load double, ptr %t297, !tbaa !26
  %t299 = load double, ptr %l15, !tbaa !26
  %t300 = load double, ptr %l20, !tbaa !26
  %t303 = fmul double %t299, %t300
  %t306 = fadd double %t298, %t303
  %t308 = load i64, ptr %l152, !tbaa !24
  %t309 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr %"bench/nbody:Body", ptr %t310, i64 %t308
  %t312 = getelementptr %"bench/nbody:Body", ptr %t311, i32 0, i32 3
  store double %t306, ptr %t312, !tbaa !26
  %t313 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t313, ptr %l158, !tbaa !27
  %t314 = load i64, ptr %l14, !tbaa !24
  store i64 %t314, ptr %l159, !tbaa !24
  %t315 = load i64, ptr %l159, !tbaa !24
  %t316 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr %"bench/nbody:Body", ptr %t317, i64 %t315
  %t319 = getelementptr %"bench/nbody:Body", ptr %t318, i32 0, i32 4
  %t320 = load double, ptr %t319, !tbaa !26
  %t321 = load double, ptr %l16, !tbaa !26
  %t322 = load double, ptr %l20, !tbaa !26
  %t325 = fmul double %t321, %t322
  %t328 = fadd double %t320, %t325
  %t330 = load i64, ptr %l159, !tbaa !24
  %t331 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr %"bench/nbody:Body", ptr %t332, i64 %t330
  %t334 = getelementptr %"bench/nbody:Body", ptr %t333, i32 0, i32 4
  store double %t328, ptr %t334, !tbaa !26
  %t335 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t335, ptr %l165, !tbaa !27
  %t336 = load i64, ptr %l14, !tbaa !24
  store i64 %t336, ptr %l166, !tbaa !24
  %t337 = load i64, ptr %l166, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr %"bench/nbody:Body", ptr %t339, i64 %t337
  %t341 = getelementptr %"bench/nbody:Body", ptr %t340, i32 0, i32 5
  %t342 = load double, ptr %t341, !tbaa !26
  %t343 = load double, ptr %l17, !tbaa !26
  %t344 = load double, ptr %l20, !tbaa !26
  %t347 = fmul double %t343, %t344
  %t350 = fadd double %t342, %t347
  %t352 = load i64, ptr %l166, !tbaa !24
  %t353 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr %"bench/nbody:Body", ptr %t354, i64 %t352
  %t356 = getelementptr %"bench/nbody:Body", ptr %t355, i32 0, i32 5
  store double %t350, ptr %t356, !tbaa !26
  br label %bb22
bb22:
  %t357 = load i64, ptr %l13, !tbaa !24
  %t359 = add i64 %t357, 1
  store i64 %t359, ptr %l13, !tbaa !24
  br label %bb17
bb23:
  br label %bb24
bb24:
  %t361 = load i64, ptr %l7, !tbaa !24
  %t363 = add i64 %t361, 1
  store i64 %t363, ptr %l7, !tbaa !24
  br label %bb7
bb25:
  store i64 0, ptr %l22, !tbaa !24
  %t365 = load i64, ptr %l2, !tbaa !24
  store i64 %t365, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t367 = load i64, ptr %l23, !tbaa !24
  %t368 = load i64, ptr %l22, !tbaa !24
  %t371 = icmp sgt i64 %t367, %t368
  br i1 %t371, label %bb26, label %bb27
bb26:
  %t373 = load i64, ptr %l24, !tbaa !24
  %t375 = icmp sgt i64 %t373, 0
  br i1 %t375, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l180, !tbaa !24
  br label %bb31
bb28:
  %t377 = load i64, ptr %l23, !tbaa !24
  %t378 = load i64, ptr %l22, !tbaa !24
  %t381 = sub i64 %t377, %t378
  %t382 = load i64, ptr %l24, !tbaa !24
  %t385 = add i64 %t381, %t382
  %t387 = sub i64 %t385, 1
  %t388 = load i64, ptr %l24, !tbaa !24
  %t391 = sdiv i64 %t387, %t388
  store i64 %t391, ptr %l183, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l183, !tbaa !24
  br label %bb30
bb30:
  %t393 = load i64, ptr %l183, !tbaa !24
  store i64 %t393, ptr %l180, !tbaa !24
  br label %bb31
bb31:
  %t394 = load i64, ptr %l180, !tbaa !24
  store i64 %t394, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb32
bb32:
  %t395 = load i64, ptr %l26, !tbaa !24
  %t396 = load i64, ptr %l25, !tbaa !24
  %t399 = icmp slt i64 %t395, %t396
  %t401 = xor i1 %t399, true
  br i1 %t401, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  br label %bb35
bb35:
  %t403 = load i64, ptr %l22, !tbaa !24
  %t404 = load i64, ptr %l26, !tbaa !24
  %t405 = load i64, ptr %l24, !tbaa !24
  %t408 = mul i64 %t404, %t405
  %t411 = add i64 %t403, %t408
  store i64 %t411, ptr %l27, !tbaa !24
  %t413 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t413, ptr %l201, !tbaa !27
  %t414 = load i64, ptr %l27, !tbaa !24
  store i64 %t414, ptr %l202, !tbaa !24
  %t415 = load i64, ptr %l202, !tbaa !24
  %t416 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t417 = load ptr, ptr %t416, !tbaa !27
  %t418 = getelementptr %"bench/nbody:Body", ptr %t417, i64 %t415
  %t419 = getelementptr %"bench/nbody:Body", ptr %t418, i32 0, i32 0
  %t420 = load double, ptr %t419, !tbaa !26
  %t421 = load double, ptr %l1, !tbaa !26
  %t422 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t422, ptr %l205, !tbaa !27
  %t423 = load i64, ptr %l27, !tbaa !24
  %t425 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !27
  %t427 = getelementptr %"bench/nbody:Body", ptr %t426, i64 %t423
  %t428 = getelementptr %"bench/nbody:Body", ptr %t427, i32 0, i32 3
  %t429 = load double, ptr %t428, !tbaa !26
  %t432 = fmul double %t421, %t429
  %t435 = fadd double %t420, %t432
  %t437 = load i64, ptr %l202, !tbaa !24
  %t438 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t439 = load ptr, ptr %t438, !tbaa !27
  %t440 = getelementptr %"bench/nbody:Body", ptr %t439, i64 %t437
  %t441 = getelementptr %"bench/nbody:Body", ptr %t440, i32 0, i32 0
  store double %t435, ptr %t441, !tbaa !26
  %t442 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t442, ptr %l210, !tbaa !27
  %t443 = load i64, ptr %l27, !tbaa !24
  store i64 %t443, ptr %l211, !tbaa !24
  %t444 = load i64, ptr %l211, !tbaa !24
  %t445 = getelementptr { i64, ptr }, ptr %l210, i32 0, i32 1
  %t446 = load ptr, ptr %t445, !tbaa !27
  %t447 = getelementptr %"bench/nbody:Body", ptr %t446, i64 %t444
  %t448 = getelementptr %"bench/nbody:Body", ptr %t447, i32 0, i32 1
  %t449 = load double, ptr %t448, !tbaa !26
  %t450 = load double, ptr %l1, !tbaa !26
  %t451 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t451, ptr %l214, !tbaa !27
  %t452 = load i64, ptr %l27, !tbaa !24
  %t454 = getelementptr { i64, ptr }, ptr %l214, i32 0, i32 1
  %t455 = load ptr, ptr %t454, !tbaa !27
  %t456 = getelementptr %"bench/nbody:Body", ptr %t455, i64 %t452
  %t457 = getelementptr %"bench/nbody:Body", ptr %t456, i32 0, i32 4
  %t458 = load double, ptr %t457, !tbaa !26
  %t461 = fmul double %t450, %t458
  %t464 = fadd double %t449, %t461
  %t466 = load i64, ptr %l211, !tbaa !24
  %t467 = getelementptr { i64, ptr }, ptr %l210, i32 0, i32 1
  %t468 = load ptr, ptr %t467, !tbaa !27
  %t469 = getelementptr %"bench/nbody:Body", ptr %t468, i64 %t466
  %t470 = getelementptr %"bench/nbody:Body", ptr %t469, i32 0, i32 1
  store double %t464, ptr %t470, !tbaa !26
  %t471 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t471, ptr %l219, !tbaa !27
  %t472 = load i64, ptr %l27, !tbaa !24
  store i64 %t472, ptr %l220, !tbaa !24
  %t473 = load i64, ptr %l220, !tbaa !24
  %t474 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t475 = load ptr, ptr %t474, !tbaa !27
  %t476 = getelementptr %"bench/nbody:Body", ptr %t475, i64 %t473
  %t477 = getelementptr %"bench/nbody:Body", ptr %t476, i32 0, i32 2
  %t478 = load double, ptr %t477, !tbaa !26
  %t479 = load double, ptr %l1, !tbaa !26
  %t480 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t480, ptr %l223, !tbaa !27
  %t481 = load i64, ptr %l27, !tbaa !24
  %t483 = getelementptr { i64, ptr }, ptr %l223, i32 0, i32 1
  %t484 = load ptr, ptr %t483, !tbaa !27
  %t485 = getelementptr %"bench/nbody:Body", ptr %t484, i64 %t481
  %t486 = getelementptr %"bench/nbody:Body", ptr %t485, i32 0, i32 5
  %t487 = load double, ptr %t486, !tbaa !26
  %t490 = fmul double %t479, %t487
  %t493 = fadd double %t478, %t490
  %t495 = load i64, ptr %l220, !tbaa !24
  %t496 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t497 = load ptr, ptr %t496, !tbaa !27
  %t498 = getelementptr %"bench/nbody:Body", ptr %t497, i64 %t495
  %t499 = getelementptr %"bench/nbody:Body", ptr %t498, i32 0, i32 2
  store double %t493, ptr %t499, !tbaa !26
  br label %bb36
bb36:
  %t500 = load i64, ptr %l26, !tbaa !24
  %t502 = add i64 %t500, 1
  store i64 %t502, ptr %l26, !tbaa !24
  br label %bb32
bb37:
  br label %ret
ret:
  ret void
}

define dso_local double @bench_2fnbody_2eenergy(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca double
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca %"bench/nbody:Body"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"bench/nbody:Body"
  %l14 = alloca double
  %l15 = alloca double
  %l16 = alloca double
  %l25 = alloca { i64, ptr }
  %l51 = alloca i64
  %l54 = alloca i64
  %l72 = alloca { i64, ptr }
  %l84 = alloca double
  %l87 = alloca double
  %l99 = alloca double
  %rv = alloca double
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store double 0x0000000000000000, ptr %l1, !tbaa !26
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb19
bb3:
  br label %bb4
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t17, ptr %l25, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr %"bench/nbody:Body", ptr %t21, i64 %t18
  %t23 = load %"bench/nbody:Body", ptr %t22
  store %"bench/nbody:Body" %t23, ptr %l6
  %t25 = load double, ptr %l1, !tbaa !26
  %t26 = getelementptr %"bench/nbody:Body", ptr %l6, i32 0, i32 6
  %t27 = load double, ptr %t26, !tbaa !26
  %t29 = fmul double 0x3fe0000000000000, %t27
  %t30 = getelementptr %"bench/nbody:Body", ptr %l6, i32 0, i32 3
  %t31 = load double, ptr %t30, !tbaa !26
  %t32 = getelementptr %"bench/nbody:Body", ptr %l6, i32 0, i32 3
  %t33 = load double, ptr %t32, !tbaa !26
  %t36 = fmul double %t31, %t33
  %t37 = getelementptr %"bench/nbody:Body", ptr %l6, i32 0, i32 4
  %t38 = load double, ptr %t37, !tbaa !26
  %t39 = getelementptr %"bench/nbody:Body", ptr %l6, i32 0, i32 4
  %t40 = load double, ptr %t39, !tbaa !26
  %t43 = fmul double %t38, %t40
  %t46 = fadd double %t36, %t43
  %t47 = getelementptr %"bench/nbody:Body", ptr %l6, i32 0, i32 5
  %t48 = load double, ptr %t47, !tbaa !26
  %t49 = getelementptr %"bench/nbody:Body", ptr %l6, i32 0, i32 5
  %t50 = load double, ptr %t49, !tbaa !26
  %t53 = fmul double %t48, %t50
  %t56 = fadd double %t46, %t53
  %t59 = fmul double %t29, %t56
  %t62 = fadd double %t25, %t59
  store double %t62, ptr %l1, !tbaa !26
  %t66 = add i64 %t15, 1
  store i64 %t66, ptr %l7, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  store i64 %t70, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l7, !tbaa !24
  %t76 = icmp sgt i64 %t72, %t73
  br i1 %t76, label %bb5, label %bb6
bb5:
  %t78 = load i64, ptr %l9, !tbaa !24
  %t80 = icmp sgt i64 %t78, 0
  br i1 %t80, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb10
bb7:
  %t82 = load i64, ptr %l8, !tbaa !24
  %t83 = load i64, ptr %l7, !tbaa !24
  %t86 = sub i64 %t82, %t83
  %t87 = load i64, ptr %l9, !tbaa !24
  %t90 = add i64 %t86, %t87
  %t92 = sub i64 %t90, 1
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = sdiv i64 %t92, %t93
  store i64 %t96, ptr %l54, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb9
bb9:
  %t98 = load i64, ptr %l54, !tbaa !24
  store i64 %t98, ptr %l51, !tbaa !24
  br label %bb10
bb10:
  %t99 = load i64, ptr %l51, !tbaa !24
  store i64 %t99, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb11
bb11:
  %t100 = load i64, ptr %l11, !tbaa !24
  %t101 = load i64, ptr %l10, !tbaa !24
  %t104 = icmp slt i64 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t108 = load i64, ptr %l7, !tbaa !24
  %t109 = load i64, ptr %l11, !tbaa !24
  %t110 = load i64, ptr %l9, !tbaa !24
  %t113 = mul i64 %t109, %t110
  %t116 = add i64 %t108, %t113
  %t118 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t118, ptr %l72, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr %"bench/nbody:Body", ptr %t122, i64 %t116
  %t124 = load %"bench/nbody:Body", ptr %t123
  store %"bench/nbody:Body" %t124, ptr %l13
  %t126 = getelementptr %"bench/nbody:Body", ptr %l6, i32 0, i32 0
  %t127 = load double, ptr %t126, !tbaa !26
  %t128 = getelementptr %"bench/nbody:Body", ptr %l13, i32 0, i32 0
  %t129 = load double, ptr %t128, !tbaa !26
  %t132 = fsub double %t127, %t129
  store double %t132, ptr %l14, !tbaa !26
  %t134 = getelementptr %"bench/nbody:Body", ptr %l6, i32 0, i32 1
  %t135 = load double, ptr %t134, !tbaa !26
  %t136 = getelementptr %"bench/nbody:Body", ptr %l13, i32 0, i32 1
  %t137 = load double, ptr %t136, !tbaa !26
  %t140 = fsub double %t135, %t137
  store double %t140, ptr %l15, !tbaa !26
  %t142 = getelementptr %"bench/nbody:Body", ptr %l6, i32 0, i32 2
  %t143 = load double, ptr %t142, !tbaa !26
  %t144 = getelementptr %"bench/nbody:Body", ptr %l13, i32 0, i32 2
  %t145 = load double, ptr %t144, !tbaa !26
  %t148 = fsub double %t143, %t145
  store double %t148, ptr %l16, !tbaa !26
  %t150 = load double, ptr %l1, !tbaa !26
  store double %t150, ptr %l84, !tbaa !26
  %t151 = getelementptr %"bench/nbody:Body", ptr %l6, i32 0, i32 6
  %t152 = load double, ptr %t151, !tbaa !26
  %t153 = getelementptr %"bench/nbody:Body", ptr %l13, i32 0, i32 6
  %t154 = load double, ptr %t153, !tbaa !26
  %t157 = fmul double %t152, %t154
  store double %t157, ptr %l87, !tbaa !26
  %t158 = load double, ptr %l14, !tbaa !26
  %t159 = load double, ptr %l14, !tbaa !26
  %t162 = fmul double %t158, %t159
  %t163 = load double, ptr %l15, !tbaa !26
  %t164 = load double, ptr %l15, !tbaa !26
  %t167 = fmul double %t163, %t164
  %t170 = fadd double %t162, %t167
  %t171 = load double, ptr %l16, !tbaa !26
  %t172 = load double, ptr %l16, !tbaa !26
  %t175 = fmul double %t171, %t172
  %t178 = fadd double %t170, %t175
  %t180 = call double @llvm.sqrt.f64(double %t178)
  store double %t180, ptr %l99
  br label %bb15
bb15:
  %t181 = load double, ptr %l87, !tbaa !26
  %t182 = load double, ptr %l99, !tbaa !26
  %t183 = fdiv double %t181, %t182
  %t184 = load double, ptr %l84, !tbaa !26
  %t186 = fsub double %t184, %t183
  store double %t186, ptr %l1, !tbaa !26
  br label %bb16
bb16:
  %t188 = load i64, ptr %l11, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l11, !tbaa !24
  br label %bb11
bb17:
  br label %bb18
bb18:
  %t192 = load i64, ptr %l3, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l3, !tbaa !24
  br label %bb1
bb19:
  %t196 = load double, ptr %l1, !tbaa !26
  store double %t196, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local i32 @bench_2fnbody_2emain() #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca i32
  %l22 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i32
  %l30 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l35 = alloca double
  %l36 = alloca { i64, ptr }
  %l38 = alloca i32
  %l39 = alloca i32
  %l43 = alloca { i64, ptr }
  %l49 = alloca i64
  %l52 = alloca i64
  %l74 = alloca double
  %l75 = alloca { i64, ptr }
  %l77 = alloca i32
  %l78 = alloca i32
  %l82 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %s3 = alloca %olang.builder
  %s3room = alloca [64 x i8], align 8
  %s4 = alloca %olang.builder
  %s4room = alloca [64 x i8], align 8
  %s5 = alloca %olang.builder
  %s5room = alloca [64 x i8], align 8
  %s9 = alloca %olang.builder
  %s9room = alloca [64 x i8], align 8
  %s10 = alloca %olang.builder
  %s10room = alloca [64 x i8], align 8
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i64, ptr } @std_2fos_2eArgs(ptr %s0)
  store { i64, ptr } %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t2, ptr %l0, !tbaa !27
  store i64 1000, ptr %l1, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t7 = icmp sgt i64 %t5, 1
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l14, !tbaa !27
  %t10 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %t11, i64 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !37
  store { i64, ptr } %t13, ptr %l15, !tbaa !27
  %t14 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s1, i64 10)
  %t15 = extractvalue { i32, i64 } %t14, 1
  %t16 = extractvalue { i32, i64 } %t14, 0
  store i32 %t16, ptr %l17
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb5, label %ok.18, !prof !99
ok.18:
  store i64 %t15, ptr %l16
  br label %bb4
bb3:
  br label %bb13
bb4:
  %t19 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t20 = load i64, ptr %l16, !tbaa !24
  %t21 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t19, i64 %t20)
  %t22 = extractvalue { i32, i64 } %t21, 1
  %t23 = extractvalue { i32, i64 } %t21, 0
  store i32 %t23, ptr %l25
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb9, label %ok.25, !prof !99
ok.25:
  store i64 %t22, ptr %l24
  br label %bb8
bb5:
  %t26 = load i32, ptr %l17, !tbaa !23
  %t27 = lshr i32 %t26, 16
  %t28 = and i32 %t26, 65535
  %t29 = icmp eq i32 %t27, 1
  %t30 = select i1 %t29, i32 0, i32 0
  %t31 = icmp eq i32 %t26, 0
  %t32 = shl i32 %t30, 16
  %t33 = or i32 %t32, %t28
  %t34 = select i1 %t31, i32 0, i32 %t33
  store i32 %t34, ptr %l18, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t35 = load i32, ptr %l18, !tbaa !23
  %t36 = icmp eq i32 %t35, 65537
  br i1 %t36, label %bb6, label %bb7
bb6:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  %t38 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t38, i64 %t39)
  %t40 = call ptr @__olang_errpay_top_get()
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t41, i64 %t42)
  %t44 = getelementptr { i64, [1 x i64] }, ptr %t40, i32 0, i32 1
  %t45 = getelementptr { i64 }, ptr %t44, i32 0, i32 0
  %t46 = load i64, ptr %t45
  %t48 = call ptr @__olang_sb_room(ptr %s2, i64 24)
  %t49 = call i64 @__olang_fmt_i64(ptr %t48, i64 %t46)
  call void @__olang_sb_add(ptr %s2, i64 %t49)
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t50, i64 %t51)
  %t52 = load ptr, ptr %s2
  %t53 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t54 = load i64, ptr %t53
  %t55 = load ptr, ptr @__olang_prog_scope
  %t56 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t54)
  call void @olang_textcopy(ptr %t56, ptr %t52, i64 %t54)
  %t57 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  store { i64, ptr } %t58, ptr %l22, !tbaa !27
  %t59 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t60 = load ptr, ptr %t59
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %sbgrew.62, label %sbdone.63
sbgrew.62:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.63
sbdone.63:
  %t64 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t65 = load ptr, ptr @__olang_prog_scope
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t67 = extractvalue { i64, ptr } %t64, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %t65, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t73 = extractvalue { i64, ptr } %t71, 1
  %t74 = extractvalue { i64, ptr } %t71, 0
  %t75 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t73, 1
  call void @__olang_unhandled_text({ i64, ptr } %t76, i1 false)
  unreachable
bb7:
  %t77 = load i32, ptr %l18, !tbaa !23
  store i32 %t77, ptr %rv
  br label %ret
bb8:
  %t78 = load i64, ptr %l24, !tbaa !24
  store i64 %t78, ptr %l13, !tbaa !24
  br label %bb12
bb9:
  %t79 = load i32, ptr %l25, !tbaa !23
  %t80 = lshr i32 %t79, 16
  %t81 = and i32 %t79, 65535
  %t82 = icmp eq i32 %t80, 1
  %t83 = select i1 %t82, i32 2, i32 0
  %t84 = icmp eq i32 %t79, 0
  %t85 = shl i32 %t83, 16
  %t86 = or i32 %t85, %t81
  %t87 = select i1 %t84, i32 0, i32 %t86
  store i32 %t87, ptr %l26, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t88 = load i32, ptr %l26, !tbaa !23
  %t89 = icmp eq i32 %t88, 65537
  br i1 %t89, label %bb10, label %bb11
bb10:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s3
  store ptr %s3room, ptr %s3
  %t91 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t91, i64 %t92)
  %t93 = call ptr @__olang_errpay_top_get()
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t94, i64 %t95)
  %t97 = getelementptr { i64, [1 x i64] }, ptr %t93, i32 0, i32 1
  %t98 = getelementptr { i64 }, ptr %t97, i32 0, i32 0
  %t99 = load i64, ptr %t98
  %t101 = call ptr @__olang_sb_room(ptr %s3, i64 24)
  %t102 = call i64 @__olang_fmt_i64(ptr %t101, i64 %t99)
  call void @__olang_sb_add(ptr %s3, i64 %t102)
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t103, i64 %t104)
  %t105 = load ptr, ptr %s3
  %t106 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t107 = load i64, ptr %t106
  %t108 = load ptr, ptr @__olang_prog_scope
  %t109 = call ptr @__olang_scope_alloc(ptr %t108, i64 %t107)
  call void @olang_textcopy(ptr %t109, ptr %t105, i64 %t107)
  %t110 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %l30, !tbaa !27
  %t112 = getelementptr %olang.builder, ptr %s3, i32 0, i32 3
  %t113 = load ptr, ptr %t112
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %sbgrew.115, label %sbdone.116
sbgrew.115:
  call void @__olang_sb_done(ptr %s3)
  br label %sbdone.116
sbdone.116:
  %t117 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t118 = load ptr, ptr @__olang_prog_scope
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = extractvalue { i64, ptr } %t117, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %t118, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t126 = extractvalue { i64, ptr } %t124, 1
  %t127 = extractvalue { i64, ptr } %t124, 0
  %t128 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t126, 1
  call void @__olang_unhandled_text({ i64, ptr } %t129, i1 false)
  unreachable
bb11:
  %t130 = load i32, ptr %l26, !tbaa !23
  store i32 %t130, ptr %rv
  br label %ret
bb12:
  %t131 = load i64, ptr %l13, !tbaa !24
  store i64 %t131, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb13
bb13:
  %t132 = call { i64, ptr } @bench_2fnbody_2eplanets(ptr %s0)
  store { i64, ptr } %t132, ptr %l32
  br label %bb14
bb14:
  %t133 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t133, ptr %l2, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @bench_2fnbody_2eoffsetMomentum(ptr %s0, { i64, ptr } %t134)
  br label %bb15
bb15:
  %t136 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t138 = call double @bench_2fnbody_2eenergy(ptr %s0, { i64, ptr } %t136)
  store double %t138, ptr %l35
  br label %bb16
bb16:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s4
  store ptr %s4room, ptr %s4
  %t139 = load double, ptr %l35, !tbaa !26
  %t140 = call ptr @__olang_sb_room(ptr %s4, i64 48)
  %t141 = call i64 @__olang_fmt_float(ptr %t140, i64 48, double %t139, i32 0)
  call void @__olang_sb_add(ptr %s4, i64 %t141)
  %t142 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t142, i64 %t143)
  %t144 = load ptr, ptr %s4
  %t145 = getelementptr %olang.builder, ptr %s4, i32 0, i32 1
  %t146 = load i64, ptr %t145
  %t147 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t146)
  call void @olang_textcopy(ptr %t147, ptr %t144, i64 %t146)
  %t148 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  store { i64, ptr } %t149, ptr %l36, !tbaa !27
  %t150 = getelementptr %olang.builder, ptr %s4, i32 0, i32 3
  %t151 = load ptr, ptr %t150
  %t152 = icmp ne ptr %t151, null
  br i1 %t152, label %sbgrew.153, label %sbdone.154
sbgrew.153:
  call void @__olang_sb_done(ptr %s4)
  br label %sbdone.154
sbdone.154:
  %t155 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t155, 0
  %t157 = extractvalue { i64, ptr } %t155, 1
  %t158 = mul i64 %t156, 1
  %t159 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t158)
  call void @llvm.memcpy.p0.p0.i64(ptr %t159, ptr %t157, i64 %t158, i1 false)
  %t160 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  %t163 = call i32 @std_2fio_2ePrint(ptr %s0, { i64, ptr } %t161)
  store i32 %t163, ptr %l38
  %t164 = icmp ne i32 %t163, 0
  br i1 %t164, label %bb18, label %ok.165, !prof !99
ok.165:
  br label %bb17
bb17:
  br label %bb21
bb18:
  %t166 = load i32, ptr %l38, !tbaa !23
  %t167 = lshr i32 %t166, 16
  %t168 = and i32 %t166, 65535
  %t169 = icmp eq i32 %t167, 1
  %t170 = select i1 %t169, i32 1, i32 0
  %t171 = icmp eq i32 %t166, 0
  %t172 = shl i32 %t170, 16
  %t173 = or i32 %t172, %t168
  %t174 = select i1 %t171, i32 0, i32 %t173
  store i32 %t174, ptr %l39, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t175 = load i32, ptr %l39, !tbaa !23
  %t176 = icmp eq i32 %t175, 65537
  br i1 %t176, label %bb19, label %bb20
bb19:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  %t178 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t178, i64 %t179)
  %t180 = call ptr @__olang_errpay_top_get()
  %t181 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t182 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t181, i64 %t182)
  %t184 = getelementptr { i64, [1 x i64] }, ptr %t180, i32 0, i32 1
  %t185 = getelementptr { i64 }, ptr %t184, i32 0, i32 0
  %t186 = load i64, ptr %t185
  %t188 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t189 = call i64 @__olang_fmt_i64(ptr %t188, i64 %t186)
  call void @__olang_sb_add(ptr %s5, i64 %t189)
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t190, i64 %t191)
  %t192 = load ptr, ptr %s5
  %t193 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t194 = load i64, ptr %t193
  %t195 = load ptr, ptr @__olang_prog_scope
  %t196 = call ptr @__olang_scope_alloc(ptr %t195, i64 %t194)
  call void @olang_textcopy(ptr %t196, ptr %t192, i64 %t194)
  %t197 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t196, 1
  store { i64, ptr } %t198, ptr %l43, !tbaa !27
  %t199 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t200 = load ptr, ptr %t199
  %t201 = icmp ne ptr %t200, null
  br i1 %t201, label %sbgrew.202, label %sbdone.203
sbgrew.202:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.203
sbdone.203:
  %t204 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t205 = load ptr, ptr @__olang_prog_scope
  %t206 = extractvalue { i64, ptr } %t204, 0
  %t207 = extractvalue { i64, ptr } %t204, 1
  %t208 = mul i64 %t206, 1
  %t209 = call ptr @__olang_scope_alloc(ptr %t205, i64 %t208)
  call void @llvm.memcpy.p0.p0.i64(ptr %t209, ptr %t207, i64 %t208, i1 false)
  %t210 = insertvalue { i64, ptr } undef, i64 %t206, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr %t209, 1
  %t213 = extractvalue { i64, ptr } %t211, 1
  %t214 = extractvalue { i64, ptr } %t211, 0
  %t215 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t213, 1
  call void @__olang_unhandled_text({ i64, ptr } %t216, i1 false)
  unreachable
bb20:
  %t217 = load i32, ptr %l39, !tbaa !23
  store i32 %t217, ptr %rv
  br label %ret
bb21:
  store i64 0, ptr %l3, !tbaa !24
  %t218 = load i64, ptr %l1, !tbaa !24
  store i64 %t218, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t220 = load i64, ptr %l4, !tbaa !24
  %t221 = load i64, ptr %l3, !tbaa !24
  %t224 = icmp sgt i64 %t220, %t221
  br i1 %t224, label %bb22, label %bb23
bb22:
  %t226 = load i64, ptr %l5, !tbaa !24
  %t228 = icmp sgt i64 %t226, 0
  br i1 %t228, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb27
bb24:
  %t230 = load i64, ptr %l4, !tbaa !24
  %t231 = load i64, ptr %l3, !tbaa !24
  %t234 = sub i64 %t230, %t231
  %t235 = load i64, ptr %l5, !tbaa !24
  %t238 = add i64 %t234, %t235
  %t240 = sub i64 %t238, 1
  %t241 = load i64, ptr %l5, !tbaa !24
  %t244 = sdiv i64 %t240, %t241
  store i64 %t244, ptr %l52, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb26
bb26:
  %t246 = load i64, ptr %l52, !tbaa !24
  store i64 %t246, ptr %l49, !tbaa !24
  br label %bb27
bb27:
  %t247 = load i64, ptr %l49, !tbaa !24
  store i64 %t247, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb28
bb28:
  %t248 = load i64, ptr %l7, !tbaa !24
  %t249 = load i64, ptr %l6, !tbaa !24
  %t252 = icmp slt i64 %t248, %t249
  %t254 = xor i1 %t252, true
  br i1 %t254, label %bb29, label %bb30
bb29:
  br label %bb34
bb30:
  br label %bb31
bb31:
  %t256 = load i64, ptr %l3, !tbaa !24
  %t257 = load i64, ptr %l7, !tbaa !24
  %t258 = load i64, ptr %l5, !tbaa !24
  %t261 = mul i64 %t257, %t258
  %t264 = add i64 %t256, %t261
  store i64 %t264, ptr %l8, !tbaa !24
  %t266 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @bench_2fnbody_2eadvance(ptr %s0, { i64, ptr } %t266, double 0x3f847ae147ae147b)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t268 = load i64, ptr %l7, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l7, !tbaa !24
  br label %bb28
bb34:
  %t272 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t274 = call double @bench_2fnbody_2eenergy(ptr %s0, { i64, ptr } %t272)
  store double %t274, ptr %l74
  br label %bb35
bb35:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s9
  store ptr %s9room, ptr %s9
  %t275 = load double, ptr %l74, !tbaa !26
  %t276 = call ptr @__olang_sb_room(ptr %s9, i64 48)
  %t277 = call i64 @__olang_fmt_float(ptr %t276, i64 48, double %t275, i32 0)
  call void @__olang_sb_add(ptr %s9, i64 %t277)
  %t278 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t279 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t278, i64 %t279)
  %t280 = load ptr, ptr %s9
  %t281 = getelementptr %olang.builder, ptr %s9, i32 0, i32 1
  %t282 = load i64, ptr %t281
  %t283 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t282)
  call void @olang_textcopy(ptr %t283, ptr %t280, i64 %t282)
  %t284 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t283, 1
  store { i64, ptr } %t285, ptr %l75, !tbaa !27
  %t286 = getelementptr %olang.builder, ptr %s9, i32 0, i32 3
  %t287 = load ptr, ptr %t286
  %t288 = icmp ne ptr %t287, null
  br i1 %t288, label %sbgrew.289, label %sbdone.290
sbgrew.289:
  call void @__olang_sb_done(ptr %s9)
  br label %sbdone.290
sbdone.290:
  %t291 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 0
  %t293 = extractvalue { i64, ptr } %t291, 1
  %t294 = mul i64 %t292, 1
  %t295 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t294)
  call void @llvm.memcpy.p0.p0.i64(ptr %t295, ptr %t293, i64 %t294, i1 false)
  %t296 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t295, 1
  %t299 = call i32 @std_2fio_2ePrint(ptr %s0, { i64, ptr } %t297)
  store i32 %t299, ptr %l77
  %t300 = icmp ne i32 %t299, 0
  br i1 %t300, label %bb37, label %ok.301, !prof !99
ok.301:
  br label %bb36
bb36:
  br label %bb40
bb37:
  %t302 = load i32, ptr %l77, !tbaa !23
  %t303 = lshr i32 %t302, 16
  %t304 = and i32 %t302, 65535
  %t305 = icmp eq i32 %t303, 1
  %t306 = select i1 %t305, i32 1, i32 0
  %t307 = icmp eq i32 %t302, 0
  %t308 = shl i32 %t306, 16
  %t309 = or i32 %t308, %t304
  %t310 = select i1 %t307, i32 0, i32 %t309
  store i32 %t310, ptr %l78, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t311 = load i32, ptr %l78, !tbaa !23
  %t312 = icmp eq i32 %t311, 65537
  br i1 %t312, label %bb38, label %bb39
bb38:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s10
  store ptr %s10room, ptr %s10
  %t314 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t315 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t314, i64 %t315)
  %t316 = call ptr @__olang_errpay_top_get()
  %t317 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t318 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t317, i64 %t318)
  %t320 = getelementptr { i64, [1 x i64] }, ptr %t316, i32 0, i32 1
  %t321 = getelementptr { i64 }, ptr %t320, i32 0, i32 0
  %t322 = load i64, ptr %t321
  %t324 = call ptr @__olang_sb_room(ptr %s10, i64 24)
  %t325 = call i64 @__olang_fmt_i64(ptr %t324, i64 %t322)
  call void @__olang_sb_add(ptr %s10, i64 %t325)
  %t326 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t327 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t326, i64 %t327)
  %t328 = load ptr, ptr %s10
  %t329 = getelementptr %olang.builder, ptr %s10, i32 0, i32 1
  %t330 = load i64, ptr %t329
  %t331 = load ptr, ptr @__olang_prog_scope
  %t332 = call ptr @__olang_scope_alloc(ptr %t331, i64 %t330)
  call void @olang_textcopy(ptr %t332, ptr %t328, i64 %t330)
  %t333 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t332, 1
  store { i64, ptr } %t334, ptr %l82, !tbaa !27
  %t335 = getelementptr %olang.builder, ptr %s10, i32 0, i32 3
  %t336 = load ptr, ptr %t335
  %t337 = icmp ne ptr %t336, null
  br i1 %t337, label %sbgrew.338, label %sbdone.339
sbgrew.338:
  call void @__olang_sb_done(ptr %s10)
  br label %sbdone.339
sbdone.339:
  %t340 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t341 = load ptr, ptr @__olang_prog_scope
  %t342 = extractvalue { i64, ptr } %t340, 0
  %t343 = extractvalue { i64, ptr } %t340, 1
  %t344 = mul i64 %t342, 1
  %t345 = call ptr @__olang_scope_alloc(ptr %t341, i64 %t344)
  call void @llvm.memcpy.p0.p0.i64(ptr %t345, ptr %t343, i64 %t344, i1 false)
  %t346 = insertvalue { i64, ptr } undef, i64 %t342, 0
  %t347 = insertvalue { i64, ptr } %t346, ptr %t345, 1
  %t349 = extractvalue { i64, ptr } %t347, 1
  %t350 = extractvalue { i64, ptr } %t347, 0
  %t351 = insertvalue { i64, ptr } undef, i64 %t350, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t349, 1
  call void @__olang_unhandled_text({ i64, ptr } %t352, i1 false)
  unreachable
bb39:
  %t353 = load i32, ptr %l78, !tbaa !23
  store i32 %t353, ptr %rv
  br label %ret
bb40:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @bench_2fnbody_2eoffsetMomentum(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca double
  %l2 = alloca double
  %l3 = alloca double
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"bench/nbody:Body"
  %l15 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store double 0x0000000000000000, ptr %l1, !tbaa !26
  store double 0x0000000000000000, ptr %l2, !tbaa !26
  store double 0x0000000000000000, ptr %l3, !tbaa !26
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
  store { i64, ptr } %t15, ptr %l15, !tbaa !27
  %t16 = load i64, ptr %l5, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr %"bench/nbody:Body", ptr %t19, i64 %t16
  %t21 = load %"bench/nbody:Body", ptr %t20
  store %"bench/nbody:Body" %t21, ptr %l7
  %t23 = load double, ptr %l1, !tbaa !26
  %t24 = getelementptr %"bench/nbody:Body", ptr %l7, i32 0, i32 3
  %t25 = load double, ptr %t24, !tbaa !26
  %t26 = getelementptr %"bench/nbody:Body", ptr %l7, i32 0, i32 6
  %t27 = load double, ptr %t26, !tbaa !26
  %t30 = fmul double %t25, %t27
  %t33 = fadd double %t23, %t30
  store double %t33, ptr %l1, !tbaa !26
  %t35 = load double, ptr %l2, !tbaa !26
  %t36 = getelementptr %"bench/nbody:Body", ptr %l7, i32 0, i32 4
  %t37 = load double, ptr %t36, !tbaa !26
  %t38 = getelementptr %"bench/nbody:Body", ptr %l7, i32 0, i32 6
  %t39 = load double, ptr %t38, !tbaa !26
  %t42 = fmul double %t37, %t39
  %t45 = fadd double %t35, %t42
  store double %t45, ptr %l2, !tbaa !26
  %t47 = load double, ptr %l3, !tbaa !26
  %t48 = getelementptr %"bench/nbody:Body", ptr %l7, i32 0, i32 5
  %t49 = load double, ptr %t48, !tbaa !26
  %t50 = getelementptr %"bench/nbody:Body", ptr %l7, i32 0, i32 6
  %t51 = load double, ptr %t50, !tbaa !26
  %t54 = fmul double %t49, %t51
  %t57 = fadd double %t47, %t54
  store double %t57, ptr %l3, !tbaa !26
  br label %bb5
bb5:
  %t59 = load i64, ptr %l5, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l5, !tbaa !24
  br label %bb1
bb6:
  %t63 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t63, ptr %l35, !tbaa !27
  %t64 = load double, ptr %l1, !tbaa !26
  %t66 = fneg double %t64
  %t67 = load double, ptr @G_2ebench_2fnbody_2eSolarMass, !tbaa !26
  %t70 = fdiv double %t66, %t67
  %t72 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr %"bench/nbody:Body", ptr %t73, i64 0
  %t75 = getelementptr %"bench/nbody:Body", ptr %t74, i32 0, i32 3
  store double %t70, ptr %t75, !tbaa !26
  %t76 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t76, ptr %l40, !tbaa !27
  %t77 = load double, ptr %l2, !tbaa !26
  %t79 = fneg double %t77
  %t80 = load double, ptr @G_2ebench_2fnbody_2eSolarMass, !tbaa !26
  %t83 = fdiv double %t79, %t80
  %t85 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr %"bench/nbody:Body", ptr %t86, i64 0
  %t88 = getelementptr %"bench/nbody:Body", ptr %t87, i32 0, i32 4
  store double %t83, ptr %t88, !tbaa !26
  %t89 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t89, ptr %l45, !tbaa !27
  %t90 = load double, ptr %l3, !tbaa !26
  %t92 = fneg double %t90
  %t93 = load double, ptr @G_2ebench_2fnbody_2eSolarMass, !tbaa !26
  %t96 = fdiv double %t92, %t93
  %t98 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr %"bench/nbody:Body", ptr %t99, i64 0
  %t101 = getelementptr %"bench/nbody:Body", ptr %t100, i32 0, i32 5
  store double %t96, ptr %t101, !tbaa !26
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @bench_2fnbody_2eplanets(ptr %v0) #0 {
entry:
  %l1 = alloca %"bench/nbody:Body"
  %l10 = alloca %"bench/nbody:Body"
  %l19 = alloca %"bench/nbody:Body"
  %l28 = alloca %"bench/nbody:Body"
  %l37 = alloca %"bench/nbody:Body"
  %l38 = alloca [5 x %"bench/nbody:Body"]
  %l39 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load double, ptr @G_2ebench_2fnbody_2eSolarMass, !tbaa !26
  %t3 = call %"bench/nbody:Body" @bench_2fnbody_3aBody_2ector(ptr %v0, double 0x0000000000000000, double 0x0000000000000000, double 0x0000000000000000, double 0x0000000000000000, double 0x0000000000000000, double 0x0000000000000000, double %t1)
  store %"bench/nbody:Body" %t3, ptr %l1
  br label %bb1
bb1:
  %t4 = load double, ptr @G_2ebench_2fnbody_2eDaysPerYear, !tbaa !26
  %t6 = fmul double 0x3f5b32ddb8ec9209, %t4
  %t7 = load double, ptr @G_2ebench_2fnbody_2eDaysPerYear, !tbaa !26
  %t9 = fmul double 0x3f7f88ff93f670b6, %t7
  %t10 = load double, ptr @G_2ebench_2fnbody_2eDaysPerYear, !tbaa !26
  %t12 = fmul double 0xbf12199946debd80, %t10
  %t13 = load double, ptr @G_2ebench_2fnbody_2eSolarMass, !tbaa !26
  %t15 = fmul double 0x3f4f49601333c135, %t13
  %t20 = call %"bench/nbody:Body" @bench_2fnbody_3aBody_2ector(ptr %v0, double 0x40135da0343cd92c, double 0xbff290abc01fdb7c, double 0xbfba86f96c25ebf0, double %t6, double %t9, double %t12, double %t15)
  store %"bench/nbody:Body" %t20, ptr %l10
  br label %bb2
bb2:
  %t21 = load double, ptr @G_2ebench_2fnbody_2eDaysPerYear, !tbaa !26
  %t23 = fmul double 0xbf66abb60a8e1d76, %t21
  %t24 = load double, ptr @G_2ebench_2fnbody_2eDaysPerYear, !tbaa !26
  %t26 = fmul double 0x3f747956257578b8, %t24
  %t27 = load double, ptr @G_2ebench_2fnbody_2eDaysPerYear, !tbaa !26
  %t29 = fmul double 0x3ef829379cad4ac0, %t27
  %t30 = load double, ptr @G_2ebench_2fnbody_2eSolarMass, !tbaa !26
  %t32 = fmul double 0x3f32bc5eeff5e6f8, %t30
  %t37 = call %"bench/nbody:Body" @bench_2fnbody_3aBody_2ector(ptr %v0, double 0x4020afcdc332ca67, double 0x40107fcb31de01b0, double 0xbfd9d353e1eb467c, double %t23, double %t26, double %t29, double %t32)
  store %"bench/nbody:Body" %t37, ptr %l19
  br label %bb3
bb3:
  %t38 = load double, ptr @G_2ebench_2fnbody_2eDaysPerYear, !tbaa !26
  %t40 = fmul double 0x3f6849383e87d954, %t38
  %t41 = load double, ptr @G_2ebench_2fnbody_2eDaysPerYear, !tbaa !26
  %t43 = fmul double 0x3f637c044ac0ace1, %t41
  %t44 = load double, ptr @G_2ebench_2fnbody_2eDaysPerYear, !tbaa !26
  %t46 = fmul double 0xbeff1983fedbfaa0, %t44
  %t47 = load double, ptr @G_2ebench_2fnbody_2eSolarMass, !tbaa !26
  %t49 = fmul double 0x3f06e44607a13bd6, %t47
  %t54 = call %"bench/nbody:Body" @bench_2fnbody_3aBody_2ector(ptr %v0, double 0x4029c9eacea7d9cf, double 0xc02e38e8d626667e, double 0xbfcc9557be257da0, double %t40, double %t43, double %t46, double %t49)
  store %"bench/nbody:Body" %t54, ptr %l28
  br label %bb4
bb4:
  %t55 = load double, ptr @G_2ebench_2fnbody_2eDaysPerYear, !tbaa !26
  %t57 = fmul double 0x3f65f5c9e51b4320, %t55
  %t58 = load double, ptr @G_2ebench_2fnbody_2eDaysPerYear, !tbaa !26
  %t60 = fmul double 0x3f5aad5736999d88, %t58
  %t61 = load double, ptr @G_2ebench_2fnbody_2eDaysPerYear, !tbaa !26
  %t63 = fmul double 0xbf18f2070b7f9750, %t61
  %t64 = load double, ptr @G_2ebench_2fnbody_2eSolarMass, !tbaa !26
  %t66 = fmul double 0x3f0b0213ca2d0eec, %t64
  %t71 = call %"bench/nbody:Body" @bench_2fnbody_3aBody_2ector(ptr %v0, double 0x402ec267a905572a, double 0xc039eb5833c8a220, double 0x3fc6f1f393abe540, double %t57, double %t60, double %t63, double %t66)
  store %"bench/nbody:Body" %t71, ptr %l37
  br label %bb5
bb5:
  %t72 = getelementptr [5 x %"bench/nbody:Body"], ptr %l38, i64 0, i64 0
  %t73 = load %"bench/nbody:Body", ptr %l1
  store %"bench/nbody:Body" %t73, ptr %t72
  %t74 = getelementptr [5 x %"bench/nbody:Body"], ptr %l38, i64 0, i64 1
  %t75 = load %"bench/nbody:Body", ptr %l10
  store %"bench/nbody:Body" %t75, ptr %t74
  %t76 = getelementptr [5 x %"bench/nbody:Body"], ptr %l38, i64 0, i64 2
  %t77 = load %"bench/nbody:Body", ptr %l19
  store %"bench/nbody:Body" %t77, ptr %t76
  %t78 = getelementptr [5 x %"bench/nbody:Body"], ptr %l38, i64 0, i64 3
  %t79 = load %"bench/nbody:Body", ptr %l28
  store %"bench/nbody:Body" %t79, ptr %t78
  %t80 = getelementptr [5 x %"bench/nbody:Body"], ptr %l38, i64 0, i64 4
  %t81 = load %"bench/nbody:Body", ptr %l37
  store %"bench/nbody:Body" %t81, ptr %t80
  %t82 = mul i64 5, 56
  %t83 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t82)
  %t84 = insertvalue { i64, ptr } undef, i64 5, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  store { i64, ptr } %t85, ptr %l39, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = mul i64 5, 56
  call void @llvm.memmove.p0.p0.i64(ptr %t87, ptr %l38, i64 %t88, i1 false)
  %t89 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t89, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"bench/nbody:Body" @bench_2fnbody_3aBody_2ector(ptr %v0, double %a0, double %a1, double %a2, double %a3, double %a4, double %a5, double %a6) #0 {
entry:
  %rv = alloca %"bench/nbody:Body"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"bench/nbody:Body" undef, double %a0, 0
  %t18 = insertvalue %"bench/nbody:Body" %t16, double %a1, 1
  %t20 = insertvalue %"bench/nbody:Body" %t18, double %a2, 2
  %t22 = insertvalue %"bench/nbody:Body" %t20, double %a3, 3
  %t24 = insertvalue %"bench/nbody:Body" %t22, double %a4, 4
  %t26 = insertvalue %"bench/nbody:Body" %t24, double %a5, 5
  %t28 = insertvalue %"bench/nbody:Body" %t26, double %a6, 6
  store %"bench/nbody:Body" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"bench/nbody:Body", ptr %rv
  ret %"bench/nbody:Body" %rr
}

define i32 @main(i32 %argc, ptr %argv) #0 {
entry:
  store i32 %argc, ptr @__olang_argc
  store ptr %argv, ptr @__olang_argv
  call void @__olang_thread_init()
  %c = call i32 @bench_2fnbody_2emain()
  %bad = icmp ne i32 %c, 0
  br i1 %bad, label %err, label %ok
ok:
  ret i32 0
err:
  %s = load ptr, ptr @stderr
  %m0 = getelementptr i8, ptr @.c14, i64 0
  %q1 = icmp eq i32 %c, 65536
  %m1 = select i1 %q1, ptr @.c15, ptr %m0
  %q2 = icmp eq i32 %c, 65537
  %m2 = select i1 %q2, ptr @.c16, ptr %m1
  %q3 = icmp eq i32 %c, 131072
  %m3 = select i1 %q3, ptr @.c17, ptr %m2
  %q4 = icmp eq i32 %c, 131073
  %m4 = select i1 %q4, ptr @.c18, ptr %m3
  %q5 = icmp eq i32 %c, 131074
  %m5 = select i1 %q5, ptr @.c19, ptr %m4
  call i32 @fputs(ptr %m5, ptr %s)
  call void @__olang_debug_hint(ptr %s)
  ret i32 1
}

define dso_local i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l43 = alloca i1
  %l44 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = sub i64 %t3, %t6
  %t11 = add i64 %t9, 1
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb1, label %bb2
bb1:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb3:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l21, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb5
bb5:
  %t39 = load i64, ptr %l21, !tbaa !24
  store i64 %t39, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t40 = load i64, ptr %l18, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb8, label %bb9
bb8:
  br label %bb24
bb9:
  br label %bb10
bb10:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t59 = load i64, ptr %l8, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t65 = icmp slt i64 %t59, %t62
  br i1 %t65, label %bb12, label %bb13
bb12:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t67, ptr %l44, !tbaa !27
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i8, ptr %t75, i64 %t72
  %t77 = load i8, ptr %t76, !tbaa !32
  %t78 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t78, ptr %l49, !tbaa !27
  %t79 = load i64, ptr %l8, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i8, ptr %t82, i64 %t79
  %t84 = load i8, ptr %t83, !tbaa !32
  %t87 = icmp eq i8 %t77, %t84
  store i1 %t87, ptr %l43, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb14
bb14:
  %t89 = load i1, ptr %l43, !tbaa !21
  %t90 = xor i1 %t89, true
  br i1 %t90, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  br label %bb11
bb19:
  %t96 = load i64, ptr %l8, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t102 = icmp eq i64 %t96, %t99
  br i1 %t102, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t105 = load i64, ptr %l6, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l6, !tbaa !24
  br label %bb7
bb24:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eSort_3cstd_2fprelu_H425a408f665c1f34766f6a10dd38435a(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp slt i64 %t3, 2
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { ptr, ptr } %pg1, 0
  %t12 = extractvalue { ptr, ptr } %pg1, 1
  call void @std_2fprelude_2farray_2esortByPositions_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t7, ptr %t11, ptr %t12)
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortByPositions_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { ptr, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l26 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l57 = alloca i64
  %l60 = alloca i64
  %l78 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t160 = alloca { { ptr, ptr }, { i64, ptr }, ptr, ptr }, align 8
  store { i64, ptr } %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  store { ptr, ptr } %pg1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr @G_2estd_2fprelude_2farray_2esortRun, !tbaa !24
  %t9 = icmp sle i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t13 = load { ptr, ptr }, ptr %l1
  %t17 = extractvalue { ptr, ptr } %t13, 0
  %t18 = extractvalue { ptr, ptr } %t13, 1
  call void @std_2fprelude_2farray_2esortInsertion_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t11, i64 0, i64 %t12, ptr %t17, ptr %t18)
  br label %bb3
bb2:
  br label %bb5
bb3:
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  %t19 = load i64, ptr %l2, !tbaa !24
  %t20 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  store i64 %t25, ptr %l26, !tbaa !24
  br label %bb8
bb7:
  %t27 = load i64, ptr %l2, !tbaa !24
  store i64 %t27, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t29 = load i64, ptr %l26, !tbaa !24
  %t30 = icmp sge i64 %t29, 0
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l26, !tbaa !24
  %t33 = icmp sle i64 %t32, 1152921504606846975
  br i1 %t33, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_f5954356a94cfd1d_57c8a908dd11d469)
  unreachable
bb11:
  %t35 = load i64, ptr %l26, !tbaa !24
  %t36 = mul i64 %t35, 8
  %t37 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_f5954356a94cfd1d_57c8a908dd11d469)
  unreachable
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb15:
  br label %bb16
bb16:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t53 = add i64 %t49, %t50
  store i64 %t53, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t56 = load i64, ptr %l2, !tbaa !24
  %t59 = icmp sgt i64 %t55, %t56
  br i1 %t59, label %bb17, label %bb18
bb17:
  %t61 = load i64, ptr %l2, !tbaa !24
  store i64 %t61, ptr %l5, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t64 = load i64, ptr %l4, !tbaa !24
  %t67 = sub i64 %t63, %t64
  store i64 %t67, ptr %l45, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  store i64 %t69, ptr %l46, !tbaa !24
  %t70 = icmp sge i64 0, 0
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t72 = load i64, ptr %l45, !tbaa !24
  %t73 = icmp sle i64 0, %t72
  br i1 %t73, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_bd57bfee552aaf80_4db8901b79077054)
  unreachable
bb22:
  %t75 = load i64, ptr %l45, !tbaa !24
  %t76 = load i64, ptr %l46, !tbaa !24
  %t77 = icmp sle i64 %t75, %t76
  br i1 %t77, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_bd57bfee552aaf80_4db8901b79077054)
  unreachable
bb24:
  %t79 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l45, !tbaa !24
  %t82 = getelementptr i64, ptr %t80, i64 0
  %t83 = sub i64 %t81, 0
  %t84 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t82, 1
  store { i64, ptr } %t85, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l5, !tbaa !24
  %t88 = load i64, ptr %l4, !tbaa !24
  %t91 = sub i64 %t87, %t88
  store i64 %t91, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t93 = load i64, ptr %l8, !tbaa !24
  %t94 = load i64, ptr %l7, !tbaa !24
  %t97 = icmp sgt i64 %t93, %t94
  br i1 %t97, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_bd57bfee552aaf80_4db8901b79077054)
  unreachable
bb26:
  %t99 = load i64, ptr %l9, !tbaa !24
  %t101 = icmp sgt i64 %t99, 0
  br i1 %t101, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb31
bb28:
  %t103 = load i64, ptr %l8, !tbaa !24
  %t104 = load i64, ptr %l7, !tbaa !24
  %t107 = sub i64 %t103, %t104
  %t108 = load i64, ptr %l9, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t113 = sub i64 %t111, 1
  %t114 = load i64, ptr %l9, !tbaa !24
  %t117 = sdiv i64 %t113, %t114
  store i64 %t117, ptr %l60, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb30
bb30:
  %t119 = load i64, ptr %l60, !tbaa !24
  store i64 %t119, ptr %l57, !tbaa !24
  br label %bb31
bb31:
  %t120 = load i64, ptr %l57, !tbaa !24
  store i64 %t120, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb32
bb32:
  %t121 = load i64, ptr %l11, !tbaa !24
  %t122 = load i64, ptr %l10, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  br label %bb35
bb35:
  %t129 = load i64, ptr %l7, !tbaa !24
  %t130 = load i64, ptr %l11, !tbaa !24
  %t131 = load i64, ptr %l9, !tbaa !24
  %t134 = mul i64 %t130, %t131
  %t137 = add i64 %t129, %t134
  store i64 %t137, ptr %l12, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t139, ptr %l78, !tbaa !27
  %t140 = load i64, ptr %l12, !tbaa !24
  %t141 = load i64, ptr %l4, !tbaa !24
  %t142 = load i64, ptr %l12, !tbaa !24
  %t145 = add i64 %t141, %t142
  %t148 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t140
  store i64 %t145, ptr %t150, !tbaa !34
  br label %bb36
bb36:
  %t151 = load i64, ptr %l11, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l11, !tbaa !24
  br label %bb32
bb37:
  %t155 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t156 = load { ptr, ptr }, ptr %l1
  %t157 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t158 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr null, i32 1
  %t159 = ptrtoint ptr %t158 to i64
  %t161 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 0
  store { ptr, ptr } %t156, ptr %t161, !tbaa !28
  %t163 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 1
  store { i64, ptr } %t157, ptr %t163, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t165 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 2
  store ptr %v1, ptr %t165, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t166 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 3
  store ptr %v0, ptr %t166, !tbaa !28
  %t167 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_20, 0
  %t168 = insertvalue { ptr, ptr } %t167, ptr %t160, 1
  %t171 = extractvalue { ptr, ptr } %t168, 0
  %t172 = extractvalue { ptr, ptr } %t168, 1
  call void @std_2fprelude_2farray_2esortMergeBuffered_3cI64_2c_20_3f_3e(ptr %s0, ptr %s2, { i64, ptr } %t155, ptr %t171, ptr %t172)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t173 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t174 = load i64, ptr %l4, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2farray_2esortPermute_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %s0, { i64, ptr } %t173, i64 %t174, { i64, ptr } %t175)
  br label %bb40
bb40:
  %t179 = load i64, ptr %l5, !tbaa !24
  store i64 %t179, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb41:
  br label %bb13
bb42:
  %t181 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  store i64 %t181, ptr %l13, !tbaa !24
  br label %bb43
bb43:
  %t183 = load i64, ptr %l13, !tbaa !24
  %t184 = load i64, ptr %l2, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb44, label %bb45
bb44:
  br label %bb59
bb45:
  br label %bb46
bb46:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb47
bb47:
  %t191 = load i64, ptr %l4, !tbaa !24
  %t192 = load i64, ptr %l13, !tbaa !24
  %t195 = add i64 %t191, %t192
  %t196 = load i64, ptr %l2, !tbaa !24
  %t199 = icmp slt i64 %t195, %t196
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb48, label %bb49
bb48:
  br label %bb57
bb49:
  br label %bb50
bb50:
  %t203 = load i64, ptr %l4, !tbaa !24
  %t204 = load i64, ptr %l13, !tbaa !24
  %t206 = mul i64 2, %t204
  %t209 = add i64 %t203, %t206
  store i64 %t209, ptr %l14, !tbaa !24
  %t211 = load i64, ptr %l14, !tbaa !24
  %t212 = load i64, ptr %l2, !tbaa !24
  %t215 = icmp sgt i64 %t211, %t212
  br i1 %t215, label %bb51, label %bb52
bb51:
  %t217 = load i64, ptr %l2, !tbaa !24
  store i64 %t217, ptr %l14, !tbaa !24
  br label %bb53
bb52:
  br label %bb53
bb53:
  %t219 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t220 = load i64, ptr %l4, !tbaa !24
  %t221 = load i64, ptr %l4, !tbaa !24
  %t222 = load i64, ptr %l13, !tbaa !24
  %t225 = add i64 %t221, %t222
  %t226 = load i64, ptr %l14, !tbaa !24
  %t227 = load { ptr, ptr }, ptr %l1
  %t233 = extractvalue { ptr, ptr } %t227, 0
  %t234 = extractvalue { ptr, ptr } %t227, 1
  call void @std_2fprelude_2farray_2esortMerge_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t219, i64 %t220, i64 %t225, i64 %t226, ptr %t233, ptr %t234)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t235 = load i64, ptr %l14, !tbaa !24
  store i64 %t235, ptr %l4, !tbaa !24
  br label %bb56
bb56:
  br label %bb47
bb57:
  %t237 = load i64, ptr %l13, !tbaa !24
  %t239 = mul i64 %t237, 2
  store i64 %t239, ptr %l13, !tbaa !24
  br label %bb58
bb58:
  br label %bb43
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsert_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a2, ptr %l2
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l6, !tbaa !27
  %t2 = load i64, ptr %l2, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr i64, ptr %t5, i64 %t2
  %t7 = load i64, ptr %t6, !tbaa !34
  store i64 %t7, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t11, %a1
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = sub i64 %t20, 1
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i64, ptr %t25, i64 %t22
  %t27 = load i64, ptr %t26, !tbaa !34
  %t29 = extractvalue { ptr, ptr } %pg3, 0
  %t30 = extractvalue { ptr, ptr } %pg3, 1
  %t33 = call i1 %t29(ptr %t30, i64 %t18, i64 %t27)
  store i1 %t33, ptr %l21
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb4:
  %t34 = load i1, ptr %l21, !tbaa !21
  store i1 %t34, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t35 = load i1, ptr %l14, !tbaa !21
  store i1 %t35, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l13, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t39, ptr %l23, !tbaa !27
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t41, ptr %l25, !tbaa !27
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = sub i64 %t42, 1
  %t46 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i64, ptr %t47, i64 %t44
  %t49 = load i64, ptr %t48, !tbaa !34
  %t52 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr i64, ptr %t53, i64 %t40
  store i64 %t49, ptr %t54, !tbaa !34
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = sub i64 %t55, 1
  store i64 %t57, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  br label %bb1
bb11:
  %t59 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t59, ptr %l31, !tbaa !27
  %t60 = load i64, ptr %l5, !tbaa !24
  %t61 = load i64, ptr %l4, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t60
  store i64 %t61, ptr %t66, !tbaa !34
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsert_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a2, ptr %l2
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l6, !tbaa !27
  %t2 = load i64, ptr %l2, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr { i64, ptr }, ptr %t5, i64 %t2
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !37
  store { i64, ptr } %t7, ptr %l4, !tbaa !27
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t11, %a1
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = sub i64 %t20, 1
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %t25, i64 %t22
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !37
  %t29 = extractvalue { ptr, ptr } %pg3, 0
  %t30 = extractvalue { ptr, ptr } %pg3, 1
  %t33 = call i1 %t29(ptr %t30, ptr %v0, ptr %v0, { i64, ptr } %t18, { i64, ptr } %t27)
  store i1 %t33, ptr %l21
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb4:
  %t34 = load i1, ptr %l21, !tbaa !21
  store i1 %t34, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t35 = load i1, ptr %l14, !tbaa !21
  store i1 %t35, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l13, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t39, ptr %l23, !tbaa !27
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t41, ptr %l25, !tbaa !27
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = sub i64 %t42, 1
  %t46 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %t47, i64 %t44
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !37
  %t52 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %t53, i64 %t40
  store { i64, ptr } %t49, ptr %t54, !tbaa !37
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = sub i64 %t55, 1
  store i64 %t57, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  br label %bb1
bb11:
  %t59 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t59, ptr %l31, !tbaa !27
  %t60 = load i64, ptr %l5, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %t65, i64 %t60
  store { i64, ptr } %t61, ptr %t66, !tbaa !37
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsertion_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  store i64 %a1, ptr %l1
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = add i64 %t1, 1
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 %a2, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l16, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t54 = load i64, ptr %l1, !tbaa !24
  %t61 = extractvalue { ptr, ptr } %pg3, 0
  %t62 = extractvalue { ptr, ptr } %pg3, 1
  call void @std_2fprelude_2farray_2esortInsert_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %t54, i64 %t51, ptr %t61, ptr %t62)
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t63 = load i64, ptr %l8, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l8, !tbaa !24
  br label %bb7
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsertion_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  store i64 %a1, ptr %l1
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = add i64 %t1, 1
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 %a2, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l16, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t54 = load i64, ptr %l1, !tbaa !24
  %t61 = extractvalue { ptr, ptr } %pg3, 0
  %t62 = extractvalue { ptr, ptr } %pg3, 1
  call void @std_2fprelude_2farray_2esortInsert_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %t54, i64 %t51, ptr %t61, ptr %t62)
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t63 = load i64, ptr %l8, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l8, !tbaa !24
  br label %bb7
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMergeBackward_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, ptr %a5c, ptr %a5e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
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
  %l23 = alloca i64
  %l26 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l62 = alloca i1
  %l66 = alloca i1
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l74 = alloca i1
  %l75 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  %pf5 = insertvalue { ptr, ptr } undef, ptr %a5c, 0
  %pg5 = insertvalue { ptr, ptr } %pf5, ptr %a5e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t2 = load i64, ptr %l3, !tbaa !24
  %t5 = sub i64 %t1, %t2
  store i64 %t5, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t7 = load i64, ptr %l6, !tbaa !24
  store i64 %t7, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l7, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l9, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb3:
  %t19 = load i64, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l9, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l9, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l26, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb5
bb5:
  %t35 = load i64, ptr %l26, !tbaa !24
  store i64 %t35, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l11, !tbaa !24
  %t38 = load i64, ptr %l10, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l11, !tbaa !24
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l12, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t55, ptr %l44, !tbaa !27
  %t56 = load i64, ptr %l12, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t57, ptr %l46, !tbaa !27
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i64, ptr %l12, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t62
  %t67 = load i64, ptr %t66, !tbaa !34
  %t70 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i64, ptr %t71, i64 %t56
  store i64 %t67, ptr %t72, !tbaa !34
  br label %bb11
bb11:
  %t73 = load i64, ptr %l11, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l11, !tbaa !24
  br label %bb7
bb12:
  %t77 = load i64, ptr %l3, !tbaa !24
  %t79 = sub i64 %t77, 1
  store i64 %t79, ptr %l13, !tbaa !24
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = sub i64 %t81, 1
  store i64 %t83, ptr %l14, !tbaa !24
  %t85 = load i64, ptr %l4, !tbaa !24
  %t87 = sub i64 %t85, 1
  store i64 %t87, ptr %l15, !tbaa !24
  br label %bb13
bb13:
  %t89 = load i64, ptr %l13, !tbaa !24
  %t93 = icmp sge i64 %t89, %a2
  br i1 %t93, label %bb14, label %bb15
bb14:
  %t95 = load i64, ptr %l14, !tbaa !24
  %t97 = icmp sge i64 %t95, 0
  store i1 %t97, ptr %l62, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb16
bb16:
  %t99 = load i1, ptr %l62, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb17, label %bb18
bb17:
  br label %bb26
bb18:
  br label %bb19
bb19:
  %t103 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t103, ptr %l68, !tbaa !27
  %t104 = load i64, ptr %l14, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i64, ptr %t107, i64 %t104
  %t109 = load i64, ptr %t108, !tbaa !34
  %t110 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t110, ptr %l71, !tbaa !27
  %t111 = load i64, ptr %l13, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i64, ptr %t114, i64 %t111
  %t116 = load i64, ptr %t115, !tbaa !34
  %t118 = extractvalue { ptr, ptr } %pg5, 0
  %t119 = extractvalue { ptr, ptr } %pg5, 1
  %t122 = call i1 %t118(ptr %t119, i64 %t109, i64 %t116)
  store i1 %t122, ptr %l74
  br label %bb20
bb20:
  %t123 = load i1, ptr %l74, !tbaa !21
  store i1 %t123, ptr %l66, !tbaa !21
  br label %bb21
bb21:
  %t124 = load i1, ptr %l66, !tbaa !21
  br i1 %t124, label %bb22, label %bb23
bb22:
  %t125 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t125, ptr %l75, !tbaa !27
  %t126 = load i64, ptr %l15, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t127, ptr %l77, !tbaa !27
  %t128 = load i64, ptr %l13, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i64, ptr %t131, i64 %t128
  %t133 = load i64, ptr %t132, !tbaa !34
  %t136 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i64, ptr %t137, i64 %t126
  store i64 %t133, ptr %t138, !tbaa !34
  %t139 = load i64, ptr %l13, !tbaa !24
  %t141 = sub i64 %t139, 1
  store i64 %t141, ptr %l13, !tbaa !24
  br label %bb24
bb23:
  %t143 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t143, ptr %l82, !tbaa !27
  %t144 = load i64, ptr %l15, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t145, ptr %l84, !tbaa !27
  %t146 = load i64, ptr %l14, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t146
  %t151 = load i64, ptr %t150, !tbaa !34
  %t154 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr i64, ptr %t155, i64 %t144
  store i64 %t151, ptr %t156, !tbaa !34
  %t157 = load i64, ptr %l14, !tbaa !24
  %t159 = sub i64 %t157, 1
  store i64 %t159, ptr %l14, !tbaa !24
  br label %bb24
bb24:
  %t161 = load i64, ptr %l15, !tbaa !24
  %t163 = sub i64 %t161, 1
  store i64 %t163, ptr %l15, !tbaa !24
  br label %bb25
bb25:
  br label %bb13
bb26:
  br label %bb27
bb27:
  %t165 = load i64, ptr %l14, !tbaa !24
  %t167 = icmp sge i64 %t165, 0
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb28, label %bb29
bb28:
  br label %bb32
bb29:
  br label %bb30
bb30:
  %t171 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t171, ptr %l94, !tbaa !27
  %t172 = load i64, ptr %l15, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t173, ptr %l96, !tbaa !27
  %t174 = load i64, ptr %l14, !tbaa !24
  %t176 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr i64, ptr %t177, i64 %t174
  %t179 = load i64, ptr %t178, !tbaa !34
  %t182 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr i64, ptr %t183, i64 %t172
  store i64 %t179, ptr %t184, !tbaa !34
  %t185 = load i64, ptr %l14, !tbaa !24
  %t187 = sub i64 %t185, 1
  store i64 %t187, ptr %l14, !tbaa !24
  %t189 = load i64, ptr %l15, !tbaa !24
  %t191 = sub i64 %t189, 1
  store i64 %t191, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  br label %bb27
bb32:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMergeBuffered_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { ptr, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %s0 = alloca %olang.scope
  %t67 = alloca i64
  store { i64, ptr } %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  store { ptr, ptr } %pg1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr @G_2estd_2fprelude_2farray_2esortRun, !tbaa !24
  store i64 %t5, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb11
bb3:
  br label %bb4
bb4:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = add i64 %t15, %t16
  store i64 %t19, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load i64, ptr %l2, !tbaa !24
  store i64 %t27, ptr %l5, !tbaa !24
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load { ptr, ptr }, ptr %l1
  %t37 = extractvalue { ptr, ptr } %t32, 0
  %t38 = extractvalue { ptr, ptr } %t32, 1
  call void @std_2fprelude_2farray_2esortInsertion_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t29, i64 %t30, i64 %t31, ptr %t37, ptr %t38)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l5, !tbaa !24
  store i64 %t39, ptr %l4, !tbaa !24
  br label %bb10
bb10:
  br label %bb1
bb11:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l3, !tbaa !24
  %t45 = icmp sle i64 %t41, %t42
  br i1 %t45, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t49 = add i64 %t47, 1
  %t51 = sdiv i64 %t49, 2
  store i64 %t51, ptr %l32, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t52, ptr %l33, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i64, ptr %t54, i64 0
  %t56 = load i64, ptr %t55, !tbaa !34
  store i64 %t56, ptr %l34, !tbaa !24
  %t57 = load i64, ptr %l32, !tbaa !24
  %t58 = icmp sge i64 %t57, 0
  br i1 %t58, label %bb15, label %bb16
bb15:
  %t60 = load i64, ptr %l32, !tbaa !24
  %t61 = icmp sle i64 %t60, 1152921504606846975
  br i1 %t61, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_32b4dd57063daccc_20299270f57c1810)
  unreachable
bb17:
  %t63 = load i64, ptr %l32, !tbaa !24
  %t64 = mul i64 %t63, 8
  %t65 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t64)
  %t66 = load i64, ptr %l34, !tbaa !24
  store i64 0, ptr %t67
  br label %fill.68
fill.68:
  %t71 = load i64, ptr %t67
  %t72 = icmp slt i64 %t71, %t63
  br i1 %t72, label %fillb.69, label %filld.70
fillb.69:
  %t73 = getelementptr i64, ptr %t65, i64 %t71
  store i64 %t66, ptr %t73
  %t74 = add i64 %t71, 1
  store i64 %t74, ptr %t67
  br label %fill.68
filld.70:
  %t75 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t65, 1
  store { i64, ptr } %t76, ptr %l6, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_32b4dd57063daccc_20299270f57c1810)
  unreachable
bb19:
  %t78 = load i64, ptr %l4, !tbaa !24
  %t79 = load i64, ptr %l2, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb20, label %bb21
bb20:
  br label %bb29
bb21:
  br label %bb22
bb22:
  %t86 = load i64, ptr %l4, !tbaa !24
  %t87 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t90 = add i64 %t86, %t87
  store i64 %t90, ptr %l7, !tbaa !24
  %t92 = load i64, ptr %l7, !tbaa !24
  %t93 = load i64, ptr %l2, !tbaa !24
  %t96 = icmp sgt i64 %t92, %t93
  br i1 %t96, label %bb23, label %bb24
bb23:
  %t98 = load i64, ptr %l2, !tbaa !24
  store i64 %t98, ptr %l7, !tbaa !24
  br label %bb25
bb24:
  br label %bb25
bb25:
  %t100 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t102 = load i64, ptr %l4, !tbaa !24
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l3, !tbaa !24
  %t105 = load { ptr, ptr }, ptr %l1
  %t112 = extractvalue { ptr, ptr } %t105, 0
  %t113 = extractvalue { ptr, ptr } %t105, 1
  call void @std_2fprelude_2farray_2esortMergeRuns_3cI64_2c_20_3f_3e(ptr %v0, ptr %s0, ptr %v1, { i64, ptr } %t100, { i64, ptr } %t101, i64 %t102, i64 %t103, i64 %t104, ptr %t112, ptr %t113)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t114 = load i64, ptr %l7, !tbaa !24
  store i64 %t114, ptr %l4, !tbaa !24
  br label %bb28
bb28:
  br label %bb19
bb29:
  %t116 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t118 = load i64, ptr %l2, !tbaa !24
  %t119 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t120 = load { ptr, ptr }, ptr %l1
  %t126 = extractvalue { ptr, ptr } %t120, 0
  %t127 = extractvalue { ptr, ptr } %t120, 1
  call void @std_2fprelude_2farray_2esortMergeRuns_3cI64_2c_20_3f_3e(ptr %v0, ptr %s0, ptr %v1, { i64, ptr } %t116, { i64, ptr } %t117, i64 0, i64 %t118, i64 %t119, ptr %t126, ptr %t127)
  br label %bb30
bb30:
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMergeForward_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, ptr %a5c, ptr %a5e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
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
  %l23 = alloca i64
  %l26 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l58 = alloca i1
  %l63 = alloca i1
  %l65 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l71 = alloca i1
  %l72 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  %pf5 = insertvalue { ptr, ptr } undef, ptr %a5c, 0
  %pg5 = insertvalue { ptr, ptr } %pf5, ptr %a5e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = sub i64 %t1, %t2
  store i64 %t5, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t7 = load i64, ptr %l6, !tbaa !24
  store i64 %t7, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l7, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l9, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb3:
  %t19 = load i64, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l9, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l9, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l26, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb5
bb5:
  %t35 = load i64, ptr %l26, !tbaa !24
  store i64 %t35, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l11, !tbaa !24
  %t38 = load i64, ptr %l10, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l11, !tbaa !24
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l12, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t55, ptr %l44, !tbaa !27
  %t56 = load i64, ptr %l12, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t57, ptr %l46, !tbaa !27
  %t58 = load i64, ptr %l2, !tbaa !24
  %t59 = load i64, ptr %l12, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t62
  %t67 = load i64, ptr %t66, !tbaa !34
  %t70 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i64, ptr %t71, i64 %t56
  store i64 %t67, ptr %t72, !tbaa !34
  br label %bb11
bb11:
  %t73 = load i64, ptr %l11, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l11, !tbaa !24
  br label %bb7
bb12:
  store i64 0, ptr %l13, !tbaa !24
  %t77 = load i64, ptr %l3, !tbaa !24
  store i64 %t77, ptr %l14, !tbaa !24
  %t79 = load i64, ptr %l2, !tbaa !24
  store i64 %t79, ptr %l15, !tbaa !24
  br label %bb13
bb13:
  %t81 = load i64, ptr %l13, !tbaa !24
  %t82 = load i64, ptr %l6, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  br i1 %t85, label %bb14, label %bb15
bb14:
  %t87 = load i64, ptr %l14, !tbaa !24
  %t91 = icmp slt i64 %t87, %a4
  store i1 %t91, ptr %l58, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb16
bb16:
  %t93 = load i1, ptr %l58, !tbaa !21
  %t94 = xor i1 %t93, true
  br i1 %t94, label %bb17, label %bb18
bb17:
  br label %bb26
bb18:
  br label %bb19
bb19:
  %t97 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t97, ptr %l65, !tbaa !27
  %t98 = load i64, ptr %l14, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i64, ptr %t101, i64 %t98
  %t103 = load i64, ptr %t102, !tbaa !34
  %t104 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t104, ptr %l68, !tbaa !27
  %t105 = load i64, ptr %l13, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i64, ptr %t108, i64 %t105
  %t110 = load i64, ptr %t109, !tbaa !34
  %t112 = extractvalue { ptr, ptr } %pg5, 0
  %t113 = extractvalue { ptr, ptr } %pg5, 1
  %t116 = call i1 %t112(ptr %t113, i64 %t103, i64 %t110)
  store i1 %t116, ptr %l71
  br label %bb20
bb20:
  %t117 = load i1, ptr %l71, !tbaa !21
  store i1 %t117, ptr %l63, !tbaa !21
  br label %bb21
bb21:
  %t118 = load i1, ptr %l63, !tbaa !21
  br i1 %t118, label %bb22, label %bb23
bb22:
  %t119 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t119, ptr %l72, !tbaa !27
  %t120 = load i64, ptr %l15, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t121, ptr %l74, !tbaa !27
  %t122 = load i64, ptr %l14, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i64, ptr %t125, i64 %t122
  %t127 = load i64, ptr %t126, !tbaa !34
  %t130 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i64, ptr %t131, i64 %t120
  store i64 %t127, ptr %t132, !tbaa !34
  %t133 = load i64, ptr %l14, !tbaa !24
  %t135 = add i64 %t133, 1
  store i64 %t135, ptr %l14, !tbaa !24
  br label %bb24
bb23:
  %t137 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t137, ptr %l79, !tbaa !27
  %t138 = load i64, ptr %l15, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t139, ptr %l81, !tbaa !27
  %t140 = load i64, ptr %l13, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i64, ptr %t143, i64 %t140
  %t145 = load i64, ptr %t144, !tbaa !34
  %t148 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t138
  store i64 %t145, ptr %t150, !tbaa !34
  %t151 = load i64, ptr %l13, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l13, !tbaa !24
  br label %bb24
bb24:
  %t155 = load i64, ptr %l15, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l15, !tbaa !24
  br label %bb25
bb25:
  br label %bb13
bb26:
  br label %bb27
bb27:
  %t159 = load i64, ptr %l13, !tbaa !24
  %t160 = load i64, ptr %l6, !tbaa !24
  %t163 = icmp slt i64 %t159, %t160
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb28, label %bb29
bb28:
  br label %bb32
bb29:
  br label %bb30
bb30:
  %t167 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t167, ptr %l92, !tbaa !27
  %t168 = load i64, ptr %l15, !tbaa !24
  %t169 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t169, ptr %l94, !tbaa !27
  %t170 = load i64, ptr %l13, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i64, ptr %t173, i64 %t170
  %t175 = load i64, ptr %t174, !tbaa !34
  %t178 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i64, ptr %t179, i64 %t168
  store i64 %t175, ptr %t180, !tbaa !34
  %t181 = load i64, ptr %l13, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l13, !tbaa !24
  %t185 = load i64, ptr %l15, !tbaa !24
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  br label %bb27
bb32:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMergeRuns_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, ptr %a5c, ptr %a5e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { ptr, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l32 = alloca i1
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l41 = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  %pf5 = insertvalue { ptr, ptr } undef, ptr %a5c, 0
  %pg5 = insertvalue { ptr, ptr } %pf5, ptr %a5e, 1
  store { ptr, ptr } %pg5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t2 = load i64, ptr %l3, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t6 = sub i64 %t2, %t3
  %t9 = icmp slt i64 %t1, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %bb27
bb3:
  br label %bb4
bb4:
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = add i64 %t15, %t16
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb6, label %bb7
bb6:
  br label %bb25
bb7:
  br label %bb8
bb8:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  store i64 %t31, ptr %l7, !tbaa !24
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t33, %t34
  store i64 %t37, ptr %l8, !tbaa !24
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l3, !tbaa !24
  store i64 %t45, ptr %l8, !tbaa !24
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t47 = load { ptr, ptr }, ptr %l5
  %t48 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t48, ptr %l34, !tbaa !27
  %t49 = load i64, ptr %l7, !tbaa !24
  %t51 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i64, ptr %t52, i64 %t49
  %t54 = load i64, ptr %t53, !tbaa !34
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t55, ptr %l37, !tbaa !27
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = sub i64 %t56, 1
  %t60 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i64, ptr %t61, i64 %t58
  %t63 = load i64, ptr %t62, !tbaa !34
  %t65 = extractvalue { ptr, ptr } %t47, 0
  %t66 = extractvalue { ptr, ptr } %t47, 1
  %t69 = call i1 %t65(ptr %t66, i64 %t54, i64 %t63)
  store i1 %t69, ptr %l41
  br label %bb12
bb12:
  %t70 = load i1, ptr %l41, !tbaa !21
  store i1 %t70, ptr %l32, !tbaa !21
  br label %bb13
bb13:
  %t71 = load i1, ptr %l32, !tbaa !21
  br i1 %t71, label %bb14, label %bb15
bb14:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  %t81 = sub i64 %t77, %t78
  %t84 = icmp sle i64 %t76, %t81
  br i1 %t84, label %bb16, label %bb17
bb15:
  br label %bb23
bb16:
  %t86 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t88 = load i64, ptr %l6, !tbaa !24
  %t89 = load i64, ptr %l7, !tbaa !24
  %t90 = load i64, ptr %l8, !tbaa !24
  %t91 = load { ptr, ptr }, ptr %l5
  %t98 = extractvalue { ptr, ptr } %t91, 0
  %t99 = extractvalue { ptr, ptr } %t91, 1
  call void @std_2fprelude_2farray_2esortMergeForward_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %t86, { i64, ptr } %t87, i64 %t88, i64 %t89, i64 %t90, ptr %t98, ptr %t99)
  br label %bb18
bb17:
  %t100 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t102 = load i64, ptr %l6, !tbaa !24
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l8, !tbaa !24
  %t105 = load { ptr, ptr }, ptr %l5
  %t112 = extractvalue { ptr, ptr } %t105, 0
  %t113 = extractvalue { ptr, ptr } %t105, 1
  call void @std_2fprelude_2farray_2esortMergeBackward_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %t100, { i64, ptr } %t101, i64 %t102, i64 %t103, i64 %t104, ptr %t112, ptr %t113)
  br label %bb20
bb18:
  br label %bb19
bb19:
  br label %bb22
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t114 = load i64, ptr %l8, !tbaa !24
  store i64 %t114, ptr %l6, !tbaa !24
  br label %bb24
bb24:
  br label %bb5
bb25:
  %t116 = load i64, ptr %l4, !tbaa !24
  %t118 = mul i64 %t116, 2
  store i64 %t118, ptr %l4, !tbaa !24
  br label %bb26
bb26:
  br label %bb1
bb27:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMerge_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3, ptr %a4c, ptr %a4e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { ptr, ptr }
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
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l39 = alloca i1
  %l41 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l47 = alloca i1
  %l57 = alloca i64
  %l60 = alloca i64
  %l98 = alloca i1
  %l100 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l106 = alloca i1
  %l148 = alloca i1
  %l150 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l158 = alloca i1
  %l169 = alloca i1
  %l180 = alloca i1
  %l192 = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  %pf4 = insertvalue { ptr, ptr } undef, ptr %a4c, 0
  %pg4 = insertvalue { ptr, ptr } %pf4, ptr %a4e, 1
  store { ptr, ptr } %pg4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = sub i64 %t1, %t2
  %t7 = icmp eq i64 %t5, 1
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l6, !tbaa !24
  br label %bb3
bb2:
  br label %bb27
bb3:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb4, label %bb5
bb4:
  br label %bb13
bb5:
  br label %bb6
bb6:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sdiv i64 %t25, 2
  store i64 %t27, ptr %l7, !tbaa !24
  %t29 = load { ptr, ptr }, ptr %l4
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t30, ptr %l41, !tbaa !27
  %t31 = load i64, ptr %l7, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %t34, i64 %t31
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !37
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t37, ptr %l44, !tbaa !27
  %t38 = load i64, ptr %l1, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %t41, i64 %t38
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !37
  %t45 = extractvalue { ptr, ptr } %t29, 0
  %t46 = extractvalue { ptr, ptr } %t29, 1
  %t49 = call i1 %t45(ptr %t46, ptr %v0, ptr %v0, { i64, ptr } %t36, { i64, ptr } %t43)
  store i1 %t49, ptr %l47
  br label %bb7
bb7:
  %t50 = load i1, ptr %l47, !tbaa !21
  store i1 %t50, ptr %l39, !tbaa !21
  br label %bb8
bb8:
  %t51 = load i1, ptr %l39, !tbaa !21
  br i1 %t51, label %bb9, label %bb10
bb9:
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l5, !tbaa !24
  br label %bb11
bb10:
  %t56 = load i64, ptr %l7, !tbaa !24
  store i64 %t56, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb3
bb13:
  %t58 = load i64, ptr %l1, !tbaa !24
  store i64 %t58, ptr %l8, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t62 = sub i64 %t60, 1
  store i64 %t62, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t64 = load i64, ptr %l9, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = icmp sgt i64 %t64, %t65
  br i1 %t68, label %bb14, label %bb15
bb14:
  %t70 = load i64, ptr %l10, !tbaa !24
  %t72 = icmp sgt i64 %t70, 0
  br i1 %t72, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb19
bb16:
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = sub i64 %t74, %t75
  %t79 = load i64, ptr %l10, !tbaa !24
  %t82 = add i64 %t78, %t79
  %t84 = sub i64 %t82, 1
  %t85 = load i64, ptr %l10, !tbaa !24
  %t88 = sdiv i64 %t84, %t85
  store i64 %t88, ptr %l60, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb18
bb18:
  %t90 = load i64, ptr %l60, !tbaa !24
  store i64 %t90, ptr %l57, !tbaa !24
  br label %bb19
bb19:
  %t91 = load i64, ptr %l57, !tbaa !24
  store i64 %t91, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb20
bb20:
  %t92 = load i64, ptr %l12, !tbaa !24
  %t93 = load i64, ptr %l11, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb21, label %bb22
bb21:
  br label %bb26
bb22:
  br label %bb23
bb23:
  %t100 = load i64, ptr %l8, !tbaa !24
  %t101 = load i64, ptr %l12, !tbaa !24
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = mul i64 %t101, %t102
  %t108 = add i64 %t100, %t105
  store i64 %t108, ptr %l13, !tbaa !24
  %t110 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t111 = load i64, ptr %l13, !tbaa !24
  %t112 = load i64, ptr %l13, !tbaa !24
  %t114 = add i64 %t112, 1
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t110, i64 %t111, i64 %t114)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t118 = load i64, ptr %l12, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l12, !tbaa !24
  br label %bb20
bb26:
  br label %ret
bb27:
  %t122 = load i64, ptr %l3, !tbaa !24
  %t123 = load i64, ptr %l2, !tbaa !24
  %t126 = sub i64 %t122, %t123
  %t128 = icmp eq i64 %t126, 1
  br i1 %t128, label %bb28, label %bb29
bb28:
  %t130 = load i64, ptr %l1, !tbaa !24
  store i64 %t130, ptr %l14, !tbaa !24
  %t132 = load i64, ptr %l2, !tbaa !24
  store i64 %t132, ptr %l15, !tbaa !24
  br label %bb30
bb29:
  br label %bb48
bb30:
  %t134 = load i64, ptr %l14, !tbaa !24
  %t135 = load i64, ptr %l15, !tbaa !24
  %t138 = icmp slt i64 %t134, %t135
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb31, label %bb32
bb31:
  br label %bb40
bb32:
  br label %bb33
bb33:
  %t142 = load i64, ptr %l14, !tbaa !24
  %t143 = load i64, ptr %l15, !tbaa !24
  %t146 = add i64 %t142, %t143
  %t148 = sdiv i64 %t146, 2
  store i64 %t148, ptr %l16, !tbaa !24
  %t150 = load { ptr, ptr }, ptr %l4
  %t151 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t151, ptr %l100, !tbaa !27
  %t152 = load i64, ptr %l2, !tbaa !24
  %t154 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %t155, i64 %t152
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !37
  %t158 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t158, ptr %l103, !tbaa !27
  %t159 = load i64, ptr %l16, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr { i64, ptr }, ptr %t162, i64 %t159
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !37
  %t166 = extractvalue { ptr, ptr } %t150, 0
  %t167 = extractvalue { ptr, ptr } %t150, 1
  %t170 = call i1 %t166(ptr %t167, ptr %v0, ptr %v0, { i64, ptr } %t157, { i64, ptr } %t164)
  store i1 %t170, ptr %l106
  br label %bb34
bb34:
  %t171 = load i1, ptr %l106, !tbaa !21
  store i1 %t171, ptr %l98, !tbaa !21
  br label %bb35
bb35:
  %t172 = load i1, ptr %l98, !tbaa !21
  %t173 = xor i1 %t172, true
  br i1 %t173, label %bb36, label %bb37
bb36:
  %t175 = load i64, ptr %l16, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l14, !tbaa !24
  br label %bb38
bb37:
  %t179 = load i64, ptr %l16, !tbaa !24
  store i64 %t179, ptr %l15, !tbaa !24
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb30
bb40:
  %t181 = load i64, ptr %l2, !tbaa !24
  store i64 %t181, ptr %l17, !tbaa !24
  br label %bb41
bb41:
  %t183 = load i64, ptr %l17, !tbaa !24
  %t184 = load i64, ptr %l14, !tbaa !24
  %t187 = icmp sgt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb42, label %bb43
bb42:
  br label %bb47
bb43:
  br label %bb44
bb44:
  %t191 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t192 = load i64, ptr %l17, !tbaa !24
  %t193 = load i64, ptr %l17, !tbaa !24
  %t195 = sub i64 %t193, 1
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t191, i64 %t192, i64 %t195)
  br label %bb45
bb45:
  %t199 = load i64, ptr %l17, !tbaa !24
  %t201 = sub i64 %t199, 1
  store i64 %t201, ptr %l17, !tbaa !24
  br label %bb46
bb46:
  br label %bb41
bb47:
  br label %ret
bb48:
  %t203 = load i64, ptr %l1, !tbaa !24
  %t204 = load i64, ptr %l3, !tbaa !24
  %t207 = add i64 %t203, %t204
  %t209 = sdiv i64 %t207, 2
  store i64 %t209, ptr %l18, !tbaa !24
  %t211 = load i64, ptr %l18, !tbaa !24
  %t212 = load i64, ptr %l2, !tbaa !24
  %t215 = add i64 %t211, %t212
  store i64 %t215, ptr %l19, !tbaa !24
  %t217 = load i64, ptr %l1, !tbaa !24
  store i64 %t217, ptr %l20, !tbaa !24
  %t219 = load i64, ptr %l2, !tbaa !24
  store i64 %t219, ptr %l21, !tbaa !24
  %t221 = load i64, ptr %l2, !tbaa !24
  %t222 = load i64, ptr %l18, !tbaa !24
  %t225 = icmp sgt i64 %t221, %t222
  br i1 %t225, label %bb49, label %bb50
bb49:
  %t227 = load i64, ptr %l19, !tbaa !24
  %t228 = load i64, ptr %l3, !tbaa !24
  %t231 = sub i64 %t227, %t228
  store i64 %t231, ptr %l20, !tbaa !24
  %t233 = load i64, ptr %l18, !tbaa !24
  store i64 %t233, ptr %l21, !tbaa !24
  br label %bb51
bb50:
  br label %bb51
bb51:
  %t235 = load i64, ptr %l19, !tbaa !24
  %t237 = sub i64 %t235, 1
  store i64 %t237, ptr %l22, !tbaa !24
  br label %bb52
bb52:
  %t239 = load i64, ptr %l20, !tbaa !24
  %t240 = load i64, ptr %l21, !tbaa !24
  %t243 = icmp slt i64 %t239, %t240
  %t245 = xor i1 %t243, true
  br i1 %t245, label %bb53, label %bb54
bb53:
  br label %bb62
bb54:
  br label %bb55
bb55:
  %t247 = load i64, ptr %l20, !tbaa !24
  %t248 = load i64, ptr %l21, !tbaa !24
  %t251 = add i64 %t247, %t248
  %t253 = sdiv i64 %t251, 2
  store i64 %t253, ptr %l23, !tbaa !24
  %t255 = load { ptr, ptr }, ptr %l4
  %t256 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t256, ptr %l150, !tbaa !27
  %t257 = load i64, ptr %l22, !tbaa !24
  %t258 = load i64, ptr %l23, !tbaa !24
  %t261 = sub i64 %t257, %t258
  %t263 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !27
  %t265 = getelementptr { i64, ptr }, ptr %t264, i64 %t261
  %t266 = load { i64, ptr }, ptr %t265, !tbaa !37
  %t267 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t267, ptr %l155, !tbaa !27
  %t268 = load i64, ptr %l23, !tbaa !24
  %t270 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = getelementptr { i64, ptr }, ptr %t271, i64 %t268
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !37
  %t275 = extractvalue { ptr, ptr } %t255, 0
  %t276 = extractvalue { ptr, ptr } %t255, 1
  %t279 = call i1 %t275(ptr %t276, ptr %v0, ptr %v0, { i64, ptr } %t266, { i64, ptr } %t273)
  store i1 %t279, ptr %l158
  br label %bb56
bb56:
  %t280 = load i1, ptr %l158, !tbaa !21
  store i1 %t280, ptr %l148, !tbaa !21
  br label %bb57
bb57:
  %t281 = load i1, ptr %l148, !tbaa !21
  %t282 = xor i1 %t281, true
  br i1 %t282, label %bb58, label %bb59
bb58:
  %t284 = load i64, ptr %l23, !tbaa !24
  %t286 = add i64 %t284, 1
  store i64 %t286, ptr %l20, !tbaa !24
  br label %bb60
bb59:
  %t288 = load i64, ptr %l23, !tbaa !24
  store i64 %t288, ptr %l21, !tbaa !24
  br label %bb60
bb60:
  br label %bb61
bb61:
  br label %bb52
bb62:
  %t290 = load i64, ptr %l19, !tbaa !24
  %t291 = load i64, ptr %l20, !tbaa !24
  %t294 = sub i64 %t290, %t291
  store i64 %t294, ptr %l24, !tbaa !24
  %t296 = load i64, ptr %l20, !tbaa !24
  %t297 = load i64, ptr %l2, !tbaa !24
  %t300 = icmp slt i64 %t296, %t297
  br i1 %t300, label %bb63, label %bb64
bb63:
  %t302 = load i64, ptr %l2, !tbaa !24
  %t303 = load i64, ptr %l24, !tbaa !24
  %t306 = icmp slt i64 %t302, %t303
  store i1 %t306, ptr %l169, !tbaa !21
  br label %bb65
bb64:
  store i1 false, ptr %l169, !tbaa !21
  br label %bb65
bb65:
  %t308 = load i1, ptr %l169, !tbaa !21
  br i1 %t308, label %bb66, label %bb67
bb66:
  %t309 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t310 = load i64, ptr %l20, !tbaa !24
  %t311 = load i64, ptr %l2, !tbaa !24
  %t312 = load i64, ptr %l24, !tbaa !24
  call void @std_2fprelude_2farray_2esortRotate_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t309, i64 %t310, i64 %t311, i64 %t312)
  br label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb69
bb69:
  %t317 = load i64, ptr %l1, !tbaa !24
  %t318 = load i64, ptr %l20, !tbaa !24
  %t321 = icmp slt i64 %t317, %t318
  br i1 %t321, label %bb70, label %bb71
bb70:
  %t323 = load i64, ptr %l20, !tbaa !24
  %t324 = load i64, ptr %l18, !tbaa !24
  %t327 = icmp slt i64 %t323, %t324
  store i1 %t327, ptr %l180, !tbaa !21
  br label %bb72
bb71:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb72
bb72:
  %t329 = load i1, ptr %l180, !tbaa !21
  br i1 %t329, label %bb73, label %bb74
bb73:
  %t330 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t331 = load i64, ptr %l1, !tbaa !24
  %t332 = load i64, ptr %l20, !tbaa !24
  %t333 = load i64, ptr %l18, !tbaa !24
  %t334 = load { ptr, ptr }, ptr %l4
  %t340 = extractvalue { ptr, ptr } %t334, 0
  %t341 = extractvalue { ptr, ptr } %t334, 1
  call void @std_2fprelude_2farray_2esortMerge_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t330, i64 %t331, i64 %t332, i64 %t333, ptr %t340, ptr %t341)
  br label %bb75
bb74:
  br label %bb77
bb75:
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t342 = load i64, ptr %l18, !tbaa !24
  %t343 = load i64, ptr %l24, !tbaa !24
  %t346 = icmp slt i64 %t342, %t343
  br i1 %t346, label %bb78, label %bb79
bb78:
  %t348 = load i64, ptr %l24, !tbaa !24
  %t349 = load i64, ptr %l3, !tbaa !24
  %t352 = icmp slt i64 %t348, %t349
  store i1 %t352, ptr %l192, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l192, !tbaa !21
  br label %bb80
bb80:
  %t354 = load i1, ptr %l192, !tbaa !21
  br i1 %t354, label %bb81, label %bb82
bb81:
  %t355 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t356 = load i64, ptr %l18, !tbaa !24
  %t357 = load i64, ptr %l24, !tbaa !24
  %t358 = load i64, ptr %l3, !tbaa !24
  %t359 = load { ptr, ptr }, ptr %l4
  %t365 = extractvalue { ptr, ptr } %t359, 0
  %t366 = extractvalue { ptr, ptr } %t359, 1
  call void @std_2fprelude_2farray_2esortMerge_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t355, i64 %t356, i64 %t357, i64 %t358, ptr %t365, ptr %t366)
  br label %bb83
bb82:
  br label %bb85
bb83:
  br label %bb84
bb84:
  br label %bb85
bb85:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortPermute_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l38 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l20, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l20, !tbaa !24
  store i64 %t31, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l17, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb21
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l8, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t51, ptr %l38, !tbaa !27
  %t52 = load i64, ptr %l8, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i64, ptr %t55, i64 %t52
  %t57 = load i64, ptr %t56, !tbaa !34
  %t58 = load i64, ptr %l1, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t65 = icmp eq i64 %t57, %t62
  br i1 %t65, label %bb11, label %bb12
bb11:
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t67, ptr %l45, !tbaa !27
  %t68 = load i64, ptr %l1, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %t75, i64 %t72
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !37
  store { i64, ptr } %t77, ptr %l9, !tbaa !27
  %t79 = load i64, ptr %l8, !tbaa !24
  store i64 %t79, ptr %l10, !tbaa !24
  br label %bb14
bb14:
  %t81 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t81, ptr %l51, !tbaa !27
  %t82 = load i64, ptr %l10, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t82
  %t87 = load i64, ptr %t86, !tbaa !34
  store i64 %t87, ptr %l11, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t89, ptr %l54, !tbaa !27
  %t90 = load i64, ptr %l10, !tbaa !24
  %t91 = load i64, ptr %l1, !tbaa !24
  %t92 = load i64, ptr %l10, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t98 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t90
  store i64 %t95, ptr %t100, !tbaa !34
  %t101 = load i64, ptr %l11, !tbaa !24
  %t102 = load i64, ptr %l1, !tbaa !24
  %t103 = load i64, ptr %l8, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t109 = icmp eq i64 %t101, %t106
  br i1 %t109, label %bb15, label %bb16
bb15:
  %t111 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t111, ptr %l64, !tbaa !27
  %t112 = load i64, ptr %l1, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t116 = add i64 %t112, %t113
  %t117 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t120 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %t121, i64 %t116
  store { i64, ptr } %t117, ptr %t122, !tbaa !37
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t123 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t123, ptr %l69, !tbaa !27
  %t124 = load i64, ptr %l1, !tbaa !24
  %t125 = load i64, ptr %l10, !tbaa !24
  %t128 = add i64 %t124, %t125
  %t129 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t129, ptr %l73, !tbaa !27
  %t130 = load i64, ptr %l11, !tbaa !24
  %t132 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %t133, i64 %t130
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !37
  %t138 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %t139, i64 %t128
  store { i64, ptr } %t135, ptr %t140, !tbaa !37
  %t141 = load i64, ptr %l11, !tbaa !24
  %t142 = load i64, ptr %l1, !tbaa !24
  %t145 = sub i64 %t141, %t142
  store i64 %t145, ptr %l10, !tbaa !24
  br label %bb18
bb18:
  br label %bb14
bb19:
  br label %bb20
bb20:
  %t147 = load i64, ptr %l7, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l7, !tbaa !24
  br label %bb7
bb21:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortRotate_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
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
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l80 = alloca i64
  %l83 = alloca i64
  %l123 = alloca i64
  %l126 = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t5 = sub i64 %t1, %a1
  store i64 %t5, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = sub i64 %a3, %t8
  store i64 %t11, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp ne i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb2, label %bb3
bb2:
  br label %bb35
bb3:
  br label %bb4
bb4:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb5, label %bb6
bb5:
  store i64 0, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  store i64 %t27, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l12, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  store i64 %t35, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t37 = load i64, ptr %l13, !tbaa !24
  %t38 = load i64, ptr %l12, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb20, label %bb21
bb7:
  %t43 = load i64, ptr %l8, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb12
bb9:
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l44, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l44, !tbaa !24
  store i64 %t63, ptr %l41, !tbaa !24
  br label %bb12
bb12:
  %t64 = load i64, ptr %l41, !tbaa !24
  store i64 %t64, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t65 = load i64, ptr %l10, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb14, label %bb15
bb14:
  br label %bb19
bb15:
  br label %bb16
bb16:
  %t73 = load i64, ptr %l6, !tbaa !24
  %t74 = load i64, ptr %l10, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l11, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t84 = load i64, ptr %l2, !tbaa !24
  %t85 = load i64, ptr %l4, !tbaa !24
  %t88 = sub i64 %t84, %t85
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = add i64 %t88, %t89
  %t93 = load i64, ptr %l2, !tbaa !24
  %t94 = load i64, ptr %l11, !tbaa !24
  %t97 = add i64 %t93, %t94
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t83, i64 %t92, i64 %t97)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t101 = load i64, ptr %l10, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l10, !tbaa !24
  br label %bb13
bb19:
  %t105 = load i64, ptr %l4, !tbaa !24
  %t106 = load i64, ptr %l5, !tbaa !24
  %t109 = sub i64 %t105, %t106
  store i64 %t109, ptr %l4, !tbaa !24
  br label %bb33
bb20:
  %t111 = load i64, ptr %l14, !tbaa !24
  %t113 = icmp sgt i64 %t111, 0
  br i1 %t113, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb25
bb22:
  %t115 = load i64, ptr %l13, !tbaa !24
  %t116 = load i64, ptr %l12, !tbaa !24
  %t119 = sub i64 %t115, %t116
  %t120 = load i64, ptr %l14, !tbaa !24
  %t123 = add i64 %t119, %t120
  %t125 = sub i64 %t123, 1
  %t126 = load i64, ptr %l14, !tbaa !24
  %t129 = sdiv i64 %t125, %t126
  store i64 %t129, ptr %l83, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb24
bb24:
  %t131 = load i64, ptr %l83, !tbaa !24
  store i64 %t131, ptr %l80, !tbaa !24
  br label %bb25
bb25:
  %t132 = load i64, ptr %l80, !tbaa !24
  store i64 %t132, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb26
bb26:
  %t133 = load i64, ptr %l16, !tbaa !24
  %t134 = load i64, ptr %l15, !tbaa !24
  %t137 = icmp slt i64 %t133, %t134
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb27, label %bb28
bb27:
  br label %bb32
bb28:
  br label %bb29
bb29:
  %t141 = load i64, ptr %l12, !tbaa !24
  %t142 = load i64, ptr %l16, !tbaa !24
  %t143 = load i64, ptr %l14, !tbaa !24
  %t146 = mul i64 %t142, %t143
  %t149 = add i64 %t141, %t146
  store i64 %t149, ptr %l17, !tbaa !24
  %t151 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t152 = load i64, ptr %l2, !tbaa !24
  %t153 = load i64, ptr %l4, !tbaa !24
  %t156 = sub i64 %t152, %t153
  %t157 = load i64, ptr %l17, !tbaa !24
  %t160 = add i64 %t156, %t157
  %t161 = load i64, ptr %l2, !tbaa !24
  %t162 = load i64, ptr %l5, !tbaa !24
  %t165 = add i64 %t161, %t162
  %t166 = load i64, ptr %l4, !tbaa !24
  %t169 = sub i64 %t165, %t166
  %t170 = load i64, ptr %l17, !tbaa !24
  %t173 = add i64 %t169, %t170
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t151, i64 %t160, i64 %t173)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t177 = load i64, ptr %l16, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l16, !tbaa !24
  br label %bb26
bb32:
  %t181 = load i64, ptr %l5, !tbaa !24
  %t182 = load i64, ptr %l4, !tbaa !24
  %t185 = sub i64 %t181, %t182
  store i64 %t185, ptr %l5, !tbaa !24
  br label %bb33
bb33:
  br label %bb34
bb34:
  br label %bb1
bb35:
  store i64 0, ptr %l18, !tbaa !24
  %t187 = load i64, ptr %l4, !tbaa !24
  store i64 %t187, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t189 = load i64, ptr %l19, !tbaa !24
  %t190 = load i64, ptr %l18, !tbaa !24
  %t193 = icmp sgt i64 %t189, %t190
  br i1 %t193, label %bb36, label %bb37
bb36:
  %t195 = load i64, ptr %l20, !tbaa !24
  %t197 = icmp sgt i64 %t195, 0
  br i1 %t197, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l123, !tbaa !24
  br label %bb41
bb38:
  %t199 = load i64, ptr %l19, !tbaa !24
  %t200 = load i64, ptr %l18, !tbaa !24
  %t203 = sub i64 %t199, %t200
  %t204 = load i64, ptr %l20, !tbaa !24
  %t207 = add i64 %t203, %t204
  %t209 = sub i64 %t207, 1
  %t210 = load i64, ptr %l20, !tbaa !24
  %t213 = sdiv i64 %t209, %t210
  store i64 %t213, ptr %l126, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l126, !tbaa !24
  br label %bb40
bb40:
  %t215 = load i64, ptr %l126, !tbaa !24
  store i64 %t215, ptr %l123, !tbaa !24
  br label %bb41
bb41:
  %t216 = load i64, ptr %l123, !tbaa !24
  store i64 %t216, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb42
bb42:
  %t217 = load i64, ptr %l22, !tbaa !24
  %t218 = load i64, ptr %l21, !tbaa !24
  %t221 = icmp slt i64 %t217, %t218
  %t223 = xor i1 %t221, true
  br i1 %t223, label %bb43, label %bb44
bb43:
  br label %bb48
bb44:
  br label %bb45
bb45:
  %t225 = load i64, ptr %l18, !tbaa !24
  %t226 = load i64, ptr %l22, !tbaa !24
  %t227 = load i64, ptr %l20, !tbaa !24
  %t230 = mul i64 %t226, %t227
  %t233 = add i64 %t225, %t230
  store i64 %t233, ptr %l23, !tbaa !24
  %t235 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t236 = load i64, ptr %l2, !tbaa !24
  %t237 = load i64, ptr %l4, !tbaa !24
  %t240 = sub i64 %t236, %t237
  %t241 = load i64, ptr %l23, !tbaa !24
  %t244 = add i64 %t240, %t241
  %t245 = load i64, ptr %l2, !tbaa !24
  %t246 = load i64, ptr %l23, !tbaa !24
  %t249 = add i64 %t245, %t246
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t235, i64 %t244, i64 %t249)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t253 = load i64, ptr %l22, !tbaa !24
  %t255 = add i64 %t253, 1
  store i64 %t255, ptr %l22, !tbaa !24
  br label %bb42
bb48:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l4, !tbaa !27
  %t2 = load i64, ptr %l1, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr { i64, ptr }, ptr %t5, i64 %t2
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !37
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l9, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %t15, i64 %t12
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !37
  %t20 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %t21, i64 %t10
  store { i64, ptr } %t17, ptr %t22, !tbaa !37
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t23, ptr %l12, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %t29, i64 %t24
  store { i64, ptr } %t7, ptr %t30, !tbaa !37
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l5 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = icmp slt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb3
bb2:
  %t9 = load i64, ptr %l0, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @std_2fprelude_2ftext_2ejoinTexts_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l29 = alloca { i64, ptr }
  %l49 = alloca i64
  %l60 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l29, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %t19, i64 %t16
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !37
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t29 = add i64 %t23, %t26
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l4, !tbaa !24
  br label %bb1
bb6:
  %t35 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp sgt i64 %t37, 1
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = sub i64 %t47, 1
  %t52 = mul i64 %t44, %t49
  %t55 = add i64 %t41, %t52
  store i64 %t55, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t57 = load i64, ptr %l2, !tbaa !24
  store i64 %t57, ptr %l49, !tbaa !24
  %t58 = load i64, ptr %l49, !tbaa !24
  %t59 = icmp sge i64 %t58, 0
  br i1 %t59, label %bb10, label %bb11
bb10:
  %t61 = load i64, ptr %l49, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t66 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t66, ptr %lp7
  %t68 = load ptr, ptr %lp7
  store { i64, ptr } %t65, ptr %t68, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t69, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l11, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_6124bee271ea27df_40001a175be242b)
  unreachable
bb12:
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l11, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb13, label %bb14
bb13:
  br label %bb32
bb14:
  br label %bb15
bb15:
  %t83 = load i64, ptr %l10, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t85, ptr %l60, !tbaa !27
  %t86 = load i64, ptr %l10, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %t89, i64 %t86
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !37
  store { i64, ptr } %t91, ptr %l13, !tbaa !27
  %t95 = icmp sgt i64 %t83, 0
  br i1 %t95, label %bb16, label %bb17
bb16:
  %t97 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t97, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  store i64 %t101, ptr %l16, !tbaa !24
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t103 = load i64, ptr %l15, !tbaa !24
  %t104 = load i64, ptr %l16, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t111 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t111, ptr %l72, !tbaa !27
  %t112 = load i64, ptr %l15, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i8, ptr %t115, i64 %t112
  %t117 = load i8, ptr %t116, !tbaa !32
  %t119 = load i64, ptr %l8, !tbaa !24
  %t122 = load ptr, ptr %lp7
  %t124 = getelementptr { i64, ptr }, ptr %t122, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i8, ptr %t125, i64 %t119
  store i8 %t117, ptr %t126, !tbaa !32
  %t127 = load i64, ptr %l8, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l8, !tbaa !24
  br label %bb22
bb22:
  %t131 = load i64, ptr %l15, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l15, !tbaa !24
  br label %bb18
bb23:
  br label %bb24
bb24:
  %t135 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t135, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t137 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  store i64 %t139, ptr %l20, !tbaa !24
  br label %bb25
bb25:
  %t141 = load i64, ptr %l19, !tbaa !24
  %t142 = load i64, ptr %l20, !tbaa !24
  %t145 = icmp slt i64 %t141, %t142
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t149 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t149, ptr %l88, !tbaa !27
  %t150 = load i64, ptr %l19, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr i8, ptr %t153, i64 %t150
  %t155 = load i8, ptr %t154, !tbaa !32
  %t157 = load i64, ptr %l8, !tbaa !24
  %t160 = load ptr, ptr %lp7
  %t162 = getelementptr { i64, ptr }, ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i8, ptr %t163, i64 %t157
  store i8 %t155, ptr %t164, !tbaa !32
  %t165 = load i64, ptr %l8, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  %t169 = load i64, ptr %l19, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l19, !tbaa !24
  br label %bb25
bb30:
  br label %bb31
bb31:
  %t173 = load i64, ptr %l10, !tbaa !24
  %t175 = add i64 %t173, 1
  store i64 %t175, ptr %l10, !tbaa !24
  br label %bb12
bb32:
  %t177 = load ptr, ptr %lp7
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fprelude_2ftext_2ejoinTexts_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l29 = alloca { i64, ptr }
  %l49 = alloca i64
  %l60 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l29, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %t19, i64 %t16
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !37
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t29 = add i64 %t23, %t26
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l4, !tbaa !24
  br label %bb1
bb6:
  %t35 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp sgt i64 %t37, 1
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = sub i64 %t47, 1
  %t52 = mul i64 %t44, %t49
  %t55 = add i64 %t41, %t52
  store i64 %t55, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t57 = load i64, ptr %l2, !tbaa !24
  store i64 %t57, ptr %l49, !tbaa !24
  %t58 = load i64, ptr %l49, !tbaa !24
  %t59 = icmp sge i64 %t58, 0
  br i1 %t59, label %bb10, label %bb11
bb10:
  %t61 = load i64, ptr %l49, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t66 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t66, ptr %lp7
  %t68 = load ptr, ptr %lp7
  store { i64, ptr } %t65, ptr %t68, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t69, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l11, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_b4b3d3a21dffee1a_94412941cff469ee)
  unreachable
bb12:
  store %olang.scope zeroinitializer, ptr %s6
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l11, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s6)
  br label %bb32
bb14:
  br label %bb15
bb15:
  %t83 = load i64, ptr %l10, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t85, ptr %l60, !tbaa !27
  %t86 = load i64, ptr %l10, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %t89, i64 %t86
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !37
  store { i64, ptr } %t91, ptr %l62, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  store i64 %t93, ptr %l63, !tbaa !24
  %t94 = load i64, ptr %l63, !tbaa !24
  %t95 = mul i64 %t94, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t95)
  %t97 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  store { i64, ptr } %t98, ptr %l64, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = load i64, ptr %l63, !tbaa !24
  %t104 = mul i64 %t103, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t100, ptr %t102, i64 %t104, i1 false)
  %t105 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t105, ptr %l13, !tbaa !27
  %t108 = icmp sgt i64 %t83, 0
  br i1 %t108, label %bb16, label %bb17
bb16:
  %t110 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t110, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  store i64 %t114, ptr %l16, !tbaa !24
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t116 = load i64, ptr %l15, !tbaa !24
  %t117 = load i64, ptr %l16, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t124 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t124, ptr %l74, !tbaa !27
  %t125 = load i64, ptr %l15, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i8, ptr %t128, i64 %t125
  %t130 = load i8, ptr %t129, !tbaa !32
  %t132 = load i64, ptr %l8, !tbaa !24
  %t135 = load ptr, ptr %lp7
  %t137 = getelementptr { i64, ptr }, ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i8, ptr %t138, i64 %t132
  store i8 %t130, ptr %t139, !tbaa !32
  %t140 = load i64, ptr %l8, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l8, !tbaa !24
  br label %bb22
bb22:
  %t144 = load i64, ptr %l15, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l15, !tbaa !24
  br label %bb18
bb23:
  br label %bb24
bb24:
  %t148 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t148, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t150 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t150, 0
  store i64 %t152, ptr %l20, !tbaa !24
  br label %bb25
bb25:
  %t154 = load i64, ptr %l19, !tbaa !24
  %t155 = load i64, ptr %l20, !tbaa !24
  %t158 = icmp slt i64 %t154, %t155
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t162 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t162, ptr %l90, !tbaa !27
  %t163 = load i64, ptr %l19, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i8, ptr %t166, i64 %t163
  %t168 = load i8, ptr %t167, !tbaa !32
  %t170 = load i64, ptr %l8, !tbaa !24
  %t173 = load ptr, ptr %lp7
  %t175 = getelementptr { i64, ptr }, ptr %t173, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr i8, ptr %t176, i64 %t170
  store i8 %t168, ptr %t177, !tbaa !32
  %t178 = load i64, ptr %l8, !tbaa !24
  %t180 = add i64 %t178, 1
  store i64 %t180, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  %t182 = load i64, ptr %l19, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l19, !tbaa !24
  br label %bb25
bb30:
  call void @__olang_scope_close(ptr %s6)
  br label %bb31
bb31:
  %t186 = load i64, ptr %l10, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l10, !tbaa !24
  br label %bb12
bb32:
  %t190 = load ptr, ptr %lp7
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  store { i64, ptr } %t191, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i1
  %l6 = alloca i1
  %rv = alloca { i32, i64 }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp ne i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = icmp slt i64 %t5, 2
  br i1 %t7, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb6
bb3:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb5
bb4:
  %t9 = load i64, ptr %l0, !tbaa !24
  %t11 = icmp sgt i64 %t9, 36
  store i1 %t11, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l6, !tbaa !21
  store i1 %t13, ptr %l3, !tbaa !21
  br label %bb6
bb6:
  %t14 = load i1, ptr %l3, !tbaa !21
  br i1 %t14, label %bb7, label %bb8
bb7:
  %t16 = insertvalue { i32, i64 } zeroinitializer, i32 65537, 0
  store { i32, i64 } %t16, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t17 = load i64, ptr %l0, !tbaa !24
  %t18 = insertvalue { i32, i64 } zeroinitializer, i64 %t17, 1
  store { i32, i64 } %t18, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eAt_3cU64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i64, ptr %t7, i64 %a1
  %t9 = load i64, ptr %t8, !tbaa !85
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2ePush_3cU64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eroom_3cU64_3e(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i64, ptr %t35, i64 %t28
  store i64 %a1, ptr %t36, !tbaa !85
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l16, !tbaa !29
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eroom_3cU64_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l43 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l52 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp sle i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp slt i64 %t17, 4
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = mul i64 %t26, 2
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  store { i64, ptr } %t56, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l37, !tbaa !24
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sle i64 0, %t68
  br i1 %t69, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_4c80127648ba5d2e_65bcf202b125bf62)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_4c80127648ba5d2e_65bcf202b125bf62)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr i64, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t85 = call ptr @__olang_region_make(ptr %v0)
  %t86 = ptrtoint ptr %t85 to i64
  store i64 %t86, ptr %l43, !tbaa !24
  %t89 = mul i64 %t83, 8
  %t90 = load i64, ptr %l43
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t89)
  %t93 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l45, !tbaa !27
  store i64 0, ptr %l46, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_4c80127648ba5d2e_65bcf202b125bf62)
  unreachable
bb19:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t101 = icmp slt i64 %t95, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t105 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t105, ptr %l52, !tbaa !27
  %t106 = load i64, ptr %l6, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i64, ptr %t109, i64 %t106
  %t111 = load i64, ptr %t110, !tbaa !85
  %t113 = load i64, ptr %l46, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i64, ptr %t115, i64 %t113
  store i64 %t111, ptr %t116, !tbaa !85
  %t117 = load i64, ptr %l46, !tbaa !24
  %t118 = add i64 %t117, 1
  store i64 %t118, ptr %l46, !tbaa !24
  br label %bb23
bb23:
  %t119 = load i64, ptr %l6, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l6, !tbaa !24
  br label %bb19
bb24:
  %t123 = load i64, ptr %l43
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = load { i64, ptr }, ptr %l45
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = call ptr @__olang_region_or(ptr %t126, ptr null)
  %t128 = icmp ne ptr %t127, null
  %t129 = select i1 %t128, ptr %t127, ptr null
  %t130 = icmp eq ptr %t129, %t124
  call void @__olang_region_settle(ptr %t124, i1 %t130)
  %t131 = load ptr, ptr %l33, !tbaa !29
  %t132 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t131, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l57, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t135 = load ptr, ptr %l33, !tbaa !29
  %t136 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t135, i32 0, i32 0
  store { i64, ptr } %t134, ptr %t136, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l57
  %t138 = extractvalue { i64, ptr } %t137, 1
  call void @__olang_region_release(ptr %t138)
  store { i64, ptr } zeroinitializer, ptr %l57
  br label %ret
ret:
  ret void
}

define dso_local i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eAt_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca i8
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i8, ptr %t7, i64 %a1
  %t9 = load i8, ptr %t8, !tbaa !32
  store i8 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eClear_Hee3cbaa7ef2d16f687a523c73aa64228(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %v0, ptr %a0, i64 0)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eLen_3cstd_2fprelude_2ftext_3aChar_3e = dso_local alias i64 (ptr, ptr), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e
define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePushA_Hec8f055c349635c8d43431a73666f84f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i64
  %l70 = alloca { i64, ptr }
  %l75 = alloca ptr
  store ptr %a0, ptr %l0
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
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t7, i32 0, i32 1
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t16 = add i64 %t10, %t13
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t25 = icmp sgt i64 %t16, %t22
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t27, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t34 = mul i64 %t32, 2
  store i64 %t34, ptr %l2, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t37, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t46 = add i64 %t40, %t43
  %t49 = icmp slt i64 %t36, %t46
  br i1 %t49, label %bb6, label %bb7
bb5:
  br label %bb10
bb6:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t51, i32 0, i32 1
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t60 = add i64 %t54, %t57
  store i64 %t60, ptr %l2, !tbaa !24
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eroom_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t62, i64 %t63)
  br label %bb9
bb9:
  br label %bb10
bb10:
  store i64 0, ptr %l3, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load i64, ptr %l3, !tbaa !24
  %t74 = icmp sgt i64 %t70, %t71
  br i1 %t74, label %bb11, label %bb12
bb11:
  %t76 = load i64, ptr %l5, !tbaa !24
  %t78 = icmp sgt i64 %t76, 0
  br i1 %t78, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb16
bb13:
  %t80 = load i64, ptr %l4, !tbaa !24
  %t81 = load i64, ptr %l3, !tbaa !24
  %t84 = sub i64 %t80, %t81
  %t85 = load i64, ptr %l5, !tbaa !24
  %t88 = add i64 %t84, %t85
  %t90 = sub i64 %t88, 1
  %t91 = load i64, ptr %l5, !tbaa !24
  %t94 = sdiv i64 %t90, %t91
  store i64 %t94, ptr %l47, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb15
bb15:
  %t96 = load i64, ptr %l47, !tbaa !24
  store i64 %t96, ptr %l44, !tbaa !24
  br label %bb16
bb16:
  %t97 = load i64, ptr %l44, !tbaa !24
  store i64 %t97, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t98 = load i64, ptr %l7, !tbaa !24
  %t99 = load i64, ptr %l6, !tbaa !24
  %t102 = icmp slt i64 %t98, %t99
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t106 = load i64, ptr %l3, !tbaa !24
  %t107 = load i64, ptr %l7, !tbaa !24
  %t108 = load i64, ptr %l5, !tbaa !24
  %t111 = mul i64 %t107, %t108
  %t114 = add i64 %t106, %t111
  store i64 %t114, ptr %l8, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t117, i32 0, i32 1
  %t120 = load i64, ptr %t119, !tbaa !24
  %t121 = load i64, ptr %l8, !tbaa !24
  %t124 = add i64 %t120, %t121
  %t125 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t125, ptr %l70, !tbaa !27
  %t126 = load i64, ptr %l8, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i8, ptr %t129, i64 %t126
  %t131 = load i8, ptr %t130, !tbaa !32
  %t134 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t116, i32 0, i32 0
  %t136 = getelementptr { i64, ptr }, ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i8, ptr %t137, i64 %t124
  store i8 %t131, ptr %t138, !tbaa !32
  br label %bb21
bb21:
  %t139 = load i64, ptr %l7, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l7, !tbaa !24
  br label %bb17
bb22:
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l75, !tbaa !29
  %t144 = load ptr, ptr %l75, !tbaa !29
  %t145 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t144, i32 0, i32 1
  %t146 = load i64, ptr %t145, !tbaa !24
  %t147 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t152 = add i64 %t146, %t149
  %t154 = load ptr, ptr %l75, !tbaa !29
  %t155 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t154, i32 0, i32 1
  store i64 %t152, ptr %t155, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eroom_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i8, ptr %t35, i64 %t28
  store i8 %a1, ptr %t36, !tbaa !32
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l16, !tbaa !29
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i64
  %l21 = alloca i8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = icmp sge i64 %t1, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp sgt i64 %t10, 0
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i64, ptr %l1, !tbaa !24
  store i64 %t14, ptr %l10, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l10, !tbaa !24
  br label %bb6
bb6:
  %t16 = load i64, ptr %l10, !tbaa !24
  store i64 %t16, ptr %l2, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 1
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = sub i64 %t20, 1
  store i64 %t22, ptr %l3, !tbaa !24
  br label %bb7
bb7:
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = icmp sge i64 %t24, %t25
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t32, i32 0, i32 0
  %t37 = getelementptr { i64, ptr }, ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i8, ptr %t38, i64 %t33
  %t40 = load i8, ptr %t39, !tbaa !32
  store i8 %t40, ptr %l21, !tbaa !22
  br label %bb11
bb11:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = sub i64 %t41, 1
  store i64 %t43, ptr %l3, !tbaa !24
  br label %bb7
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i64, ptr %l2, !tbaa !24
  %t49 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t45, i32 0, i32 1
  store i64 %t46, ptr %t49, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eroom_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l51 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp sle i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp slt i64 %t17, 4
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = mul i64 %t26, 2
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l3, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t59, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l37, !tbaa !24
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sle i64 0, %t68
  br i1 %t69, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_98322877b323543a_c315b51d8b07b39e)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_98322877b323543a_c315b51d8b07b39e)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr i8, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_98322877b323543a_c315b51d8b07b39e)
  unreachable
bb19:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t97 = icmp slt i64 %t91, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t101, ptr %l51, !tbaa !27
  %t102 = load i64, ptr %l6, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i8, ptr %t105, i64 %t102
  %t107 = load i8, ptr %t106, !tbaa !32
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i8, ptr %t111, i64 %t109
  store i8 %t107, ptr %t112, !tbaa !32
  %t113 = load i64, ptr %l45, !tbaa !24
  %t114 = add i64 %t113, 1
  store i64 %t114, ptr %l45, !tbaa !24
  br label %bb23
bb23:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb19
bb24:
  %t119 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t120 = load ptr, ptr %l33, !tbaa !29
  %t121 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t120, i32 0, i32 0
  store { i64, ptr } %t119, ptr %t121, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" undef, { i64, ptr } zeroinitializer, 0
  %t6 = insertvalue %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, i64 0, 1
  %t8 = insertvalue %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, i64 %a0, 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

@std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector
declare double @llvm.sqrt.f64(double)
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
@.d0 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
declare ptr @__olang_errpay_top_get()
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
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
declare i64 @__olang_fmt_i64(ptr, i64)
declare void @__olang_sb_add(ptr, i64)
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
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
declare void @__olang_unhandled_text({ i64, ptr }, i1) cold noreturn
@.d3 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
declare i64 @__olang_fmt_float(ptr, i64, double, i32)
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d7 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d11 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@__olang_argc = external global i32
@__olang_argv = external global ptr
declare void @__olang_thread_init()
@stderr = external global ptr
@.c14 = private unnamed_addr constant [17 x i8] c"unhandled error\0A\00"
@.c15 = private unnamed_addr constant [34 x i8] c"unhandled error: io.Error.Failed\0A\00"
@.c16 = private unnamed_addr constant [35 x i8] c"unhandled error: io.Error.Partial\0A\00"
@.c17 = private unnamed_addr constant [35 x i8] c"unhandled error: ParseError.Empty\0A\00"
@.c18 = private unnamed_addr constant [37 x i8] c"unhandled error: ParseError.Invalid\0A\00"
@.c19 = private unnamed_addr constant [38 x i8] c"unhandled error: ParseError.Overflow\0A\00"
declare i32 @fputs(ptr, ptr)
declare void @__olang_debug_hint(ptr)
declare void @__olang_check_failed(ptr) cold noreturn
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
define internal i1 @olang_lambda_20(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l6 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { ptr, ptr }, ptr %cp0, !tbaa !28
  %cp1 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load { i64, ptr }, ptr %cp1, !tbaa !28
  store { i64, ptr } %cv1, ptr %l3
  %vq0 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 2
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 3
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t2, ptr %l6, !tbaa !27
  %t5 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !27
  %t7 = getelementptr { i64, ptr }, ptr %t6, i64 %a0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !37
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t9, ptr %l9, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %t13, i64 %a1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !37
  %t17 = extractvalue { ptr, ptr } %cv0, 0
  %t18 = extractvalue { ptr, ptr } %cv0, 1
  %t21 = call i1 %t17(ptr %t18, ptr %vc1, ptr %vc1, { i64, ptr } %t8, { i64, ptr } %t15)
  store i1 %t21, ptr %l12
  br label %bb1
bb1:
  %t22 = load i1, ptr %l12, !tbaa !21
  store i1 %t22, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t23 = load i1, ptr %l4, !tbaa !21
  store i1 %t23, ptr %rv
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
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_release(ptr) noinline
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
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
declare { i64, ptr } @std_2fos_2eArgs(ptr %v0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
@G_2estd_2fprelude_2farray_2esortRun = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fprelude_2farray_2esortBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\30\00\00\00\00\00\00" }>, align 8
@olang_loc_f5954356a94cfd1d_57c8a908dd11d469 = external constant [0 x i8]
@olang_loc_bd57bfee552aaf80_4db8901b79077054 = external constant [0 x i8]
@olang_loc_32b4dd57063daccc_20299270f57c1810 = external constant [0 x i8]
@olang_loc_6124bee271ea27df_40001a175be242b = external constant [0 x i8]
@olang_loc_b4b3d3a21dffee1a_94412941cff469ee = external constant [0 x i8]
@olang_loc_4c80127648ba5d2e_65bcf202b125bf62 = external constant [0 x i8]
@olang_loc_98322877b323543a_c315b51d8b07b39e = external constant [0 x i8]

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
