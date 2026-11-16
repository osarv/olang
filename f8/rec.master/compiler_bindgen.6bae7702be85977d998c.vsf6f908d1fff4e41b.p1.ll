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
%"std/io:Writer" = type { i32, { i64, ptr }, i64, { i32, { i64, [1 x i64] } } }
%"compiler/bindgen:Translation" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/bindgen:gen" = type { { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/bindgen:cMacro" = type { { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/bindgen:cparse" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/bindgen:cx" = type { { i64, ptr }, i64, i64, { i64, ptr } }
%"compiler/bindgen:ctype" = type { i32, { i64, ptr }, i64, i1, i64, i64 }
%"compiler/bindgen:ctp" = type { { i64, ptr }, i64 }
%"compiler/bindgen:record" = type { { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, i64, i1, { i64, ptr }, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"std/json:Object" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/bindgen:cFunc" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, { i64, ptr } }
define dso_local i32 @compiler_2fbindgen_2eRun(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca %"std/io:Writer"
  %l4 = alloca i32
  %l5 = alloca %"std/io:Writer"
  %l10 = alloca i32
  %l12 = alloca i32
  %l14 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %s0, i32 2, i64 65536)
  store %"std/io:Writer" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/io:Writer", ptr %l5
  store %"std/io:Writer" %t2, ptr %l3
  %t10 = call i32 @compiler_2fbindgen_2erun(ptr %v0, ptr %v1, ptr %v2, ptr %s0, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %l3)
  store i32 %t10, ptr %l10
  br label %bb2
bb2:
  %t11 = load i32, ptr %l10, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t13 = call i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %s0, ptr %l3)
  store i32 %t13, ptr %l12
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb4, label %ok.15, !prof !99
ok.15:
  br label %bb3
bb3:
  br label %bb8
bb4:
  %t16 = load i32, ptr %l12, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  store i1 %t19, ptr %l14, !tbaa !21
  %t20 = load i32, ptr %l12, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  br i1 %t23, label %bb5, label %bb6
bb5:
  call void @__olang_errpay_pop()
  br label %bb6
bb6:
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t25 = load i32, ptr %l4, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/bindgen:Translation" @compiler_2fbindgen_2eTranslation_2eTranslate(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %lp6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca [2 x { i64, ptr }]
  %l9 = alloca { i64, ptr }
  %lp10 = alloca ptr
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca i64
  %lp20 = alloca ptr
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/text:StringBuilder"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca %"compiler/bindgen:Translation"
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i32
  %l50 = alloca i1
  %l53 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l66 = alloca i32
  %l68 = alloca i1
  %l71 = alloca { i64, ptr }
  %l73 = alloca %"compiler/bindgen:Translation"
  %l75 = alloca %"compiler/bindgen:Translation"
  %l77 = alloca i32
  %l79 = alloca i1
  %l83 = alloca i1
  %l85 = alloca { i64, ptr }
  %l89 = alloca %"compiler/bindgen:gen"
  %l91 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l106 = alloca { i64, ptr }
  %l129 = alloca %"std/os:Output"
  %l131 = alloca { i64, ptr }
  %l132 = alloca %"std/os:Output"
  %l133 = alloca i32
  %l135 = alloca i1
  %l136 = alloca { i64, ptr }
  %l138 = alloca %"compiler/bindgen:Translation"
  %l140 = alloca %"compiler/bindgen:Translation"
  %l142 = alloca i32
  %l144 = alloca i1
  %l151 = alloca { i64, ptr }
  %l152 = alloca i1
  %l153 = alloca i64
  %l156 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l160 = alloca %"compiler/bindgen:Translation"
  %l162 = alloca %"compiler/bindgen:Translation"
  %l164 = alloca i32
  %l166 = alloca i1
  %l174 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l175 = alloca %"std/prelude/text:StringBuilder"
  %l181 = alloca i64
  %l183 = alloca i64
  %l189 = alloca i64
  %l190 = alloca ptr
  %l191 = alloca i64
  %l192 = alloca i64
  %l195 = alloca %"compiler/bindgen:cMacro"
  %l201 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l206 = alloca i32
  %l208 = alloca i1
  %l211 = alloca { i64, ptr }
  %l213 = alloca %"compiler/bindgen:Translation"
  %l215 = alloca %"compiler/bindgen:Translation"
  %l217 = alloca i32
  %l219 = alloca i1
  %l222 = alloca ptr
  %l227 = alloca ptr
  %l228 = alloca i32
  %l230 = alloca i1
  %l232 = alloca { i64, ptr }
  %l234 = alloca %"compiler/bindgen:Translation"
  %l236 = alloca %"compiler/bindgen:Translation"
  %l238 = alloca i32
  %l240 = alloca i1
  %l247 = alloca { i64, ptr }
  %l255 = alloca { i64, ptr }
  %l259 = alloca { i64, ptr }
  %l261 = alloca { i64, ptr }
  %l263 = alloca i1
  %l265 = alloca i1
  %l267 = alloca i1
  %l269 = alloca i64
  %l271 = alloca i64
  %l272 = alloca i64
  %l276 = alloca { i64, ptr }
  %l277 = alloca i64
  %l278 = alloca i32
  %l279 = alloca i64
  %l280 = alloca i32
  %l283 = alloca i1
  %l284 = alloca i64
  %l286 = alloca i64
  %l289 = alloca { i64, ptr }
  %l297 = alloca { i64, ptr }
  %l301 = alloca { i64, ptr }
  %l303 = alloca i1
  %l304 = alloca i64
  %l305 = alloca { i64, ptr }
  %l306 = alloca i64
  %l307 = alloca i32
  %l308 = alloca i64
  %l309 = alloca i32
  %l310 = alloca ptr
  %l311 = alloca ptr
  %l314 = alloca i64
  %l315 = alloca %"compiler/bindgen:cMacro"
  %l328 = alloca i32
  %l330 = alloca i1
  %l332 = alloca { i64, ptr }
  %l334 = alloca %"compiler/bindgen:Translation"
  %l336 = alloca %"compiler/bindgen:Translation"
  %l338 = alloca i32
  %l340 = alloca i1
  %l343 = alloca i64
  %l349 = alloca { i64, ptr }
  %l351 = alloca { i64, ptr }
  %l354 = alloca i64
  %l356 = alloca i1
  %l358 = alloca i1
  %l360 = alloca i64
  %l362 = alloca { i64, ptr }
  %l363 = alloca { i64, ptr }
  %l365 = alloca { i64, ptr }
  %l368 = alloca { i64, ptr }
  %l370 = alloca %"compiler/bindgen:Translation"
  %l372 = alloca %"compiler/bindgen:Translation"
  %l374 = alloca i32
  %l376 = alloca i1
  %s0 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s51 = alloca %olang.scope
  %rv = alloca %"compiler/bindgen:Translation"
  %t144 = alloca %"compiler/bindgen:gen", align 8
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/bindgen:Translation" @compiler_2fbindgen_3aTranslation_2ector(ptr %v6)
  store %"compiler/bindgen:Translation" %t1, ptr %l40
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v6, i64 88, i64 8)
  store ptr %t2, ptr %lp6
  %t3 = load %"compiler/bindgen:Translation", ptr %l40
  %t4 = load ptr, ptr %lp6
  store %"compiler/bindgen:Translation" %t3, ptr %t4
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t7, ptr %l42
  br label %bb2
bb2:
  %t8 = load i1, ptr %l42, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t9 = load ptr, ptr %lp6
  %t10 = getelementptr %"compiler/bindgen:Translation", ptr %t9, i32 0, i32 3
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l43, !tbaa !27
  %t12 = load ptr, ptr %lp6
  %t13 = getelementptr %"compiler/bindgen:Translation", ptr %t12, i32 0, i32 3
  store { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %t13, !tbaa !27
  %t14 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t14, label %bb5, label %bb6
bb4:
  br label %bb7
bb5:
  %t16 = load { i64, ptr }, ptr %l43
  %t17 = extractvalue { i64, ptr } %t16, 1
  call void @__olang_region_release(ptr %t17)
  store { i64, ptr } zeroinitializer, ptr %l43
  br label %bb6
bb6:
  %t18 = load ptr, ptr %lp6
  %t19 = load %"compiler/bindgen:Translation", ptr %t18
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/bindgen:Translation" %t19, ptr %rv
  br label %ret
bb7:
  %t21 = call { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d3, i32 0, i32 1) })
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l48
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb9, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l47
  br label %bb8
bb8:
  %t26 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t26, ptr %l46, !tbaa !27
  br label %bb15
bb9:
  %t27 = load i32, ptr %l48, !tbaa !23
  %t28 = ashr i32 %t27, 16
  %t30 = icmp eq i32 %t28, 1
  store i1 %t30, ptr %l50, !tbaa !21
  %t31 = load i32, ptr %l48, !tbaa !23
  %t32 = ashr i32 %t31, 16
  %t34 = icmp eq i32 %t32, 1
  br i1 %t34, label %bb10, label %bb11
bb10:
  call void @__olang_errpay_pop()
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t36 = load ptr, ptr %lp6
  %t37 = getelementptr %"compiler/bindgen:Translation", ptr %t36, i32 0, i32 3
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l53, !tbaa !27
  %t39 = load ptr, ptr %lp6
  %t40 = getelementptr %"compiler/bindgen:Translation", ptr %t39, i32 0, i32 3
  store { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %t40, !tbaa !27
  %t41 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t41, label %bb13, label %bb14
bb13:
  %t43 = load { i64, ptr }, ptr %l53
  %t44 = extractvalue { i64, ptr } %t43, 1
  call void @__olang_region_release(ptr %t44)
  store { i64, ptr } zeroinitializer, ptr %l53
  br label %bb14
bb14:
  %t45 = load ptr, ptr %lp6
  %t46 = load %"compiler/bindgen:Translation", ptr %t45
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/bindgen:Translation" %t46, ptr %rv
  br label %ret
bb15:
  %t48 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t48, ptr %l7, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t51 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t49, 0
  %t52 = insertvalue [2 x { i64, ptr }] %t51, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t52, ptr %l8
  %t55 = insertvalue { i64, ptr } undef, i64 2, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %l8, 1
  %t58 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t56)
  store { i64, ptr } %t58, ptr %l60
  br label %bb16
bb16:
  %t59 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t59, ptr %l9, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 1
  %t64 = extractvalue { i64, ptr } %t61, 0
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t68 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t67)
  call void @olang_textcopy(ptr %t68, ptr %t63, i64 %t64)
  %t69 = getelementptr i8, ptr %t68, i64 %t64
  call void @olang_textcopy(ptr %t69, ptr %t65, i64 %t66)
  %t70 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t68, 1
  %t74 = extractvalue { i64, ptr } %t71, 0
  %t75 = extractvalue { i64, ptr } %t71, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t82 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t60, { i64, ptr } %t79)
  store i32 %t82, ptr %l66
  %t83 = icmp ne i32 %t82, 0
  br i1 %t83, label %bb18, label %ok.84, !prof !99
ok.84:
  br label %bb17
bb17:
  br label %bb31
bb18:
  %t85 = load i32, ptr %l66, !tbaa !23
  %t86 = ashr i32 %t85, 16
  %t88 = icmp eq i32 %t86, 1
  store i1 %t88, ptr %l68, !tbaa !21
  %t89 = load i32, ptr %l66, !tbaa !23
  %t90 = ashr i32 %t89, 16
  %t92 = icmp eq i32 %t90, 1
  br i1 %t92, label %bb19, label %bb20
bb19:
  call void @__olang_errpay_pop()
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t94 = load ptr, ptr %lp6
  %t95 = getelementptr %"compiler/bindgen:Translation", ptr %t94, i32 0, i32 3
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  store { i64, ptr } %t96, ptr %l71, !tbaa !27
  %t97 = load ptr, ptr %lp6
  %t98 = getelementptr %"compiler/bindgen:Translation", ptr %t97, i32 0, i32 3
  store { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %t98, !tbaa !27
  %t99 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t99, label %bb22, label %bb23
bb22:
  %t101 = load { i64, ptr }, ptr %l71
  %t102 = extractvalue { i64, ptr } %t101, 1
  call void @__olang_region_release(ptr %t102)
  store { i64, ptr } zeroinitializer, ptr %l71
  br label %bb23
bb23:
  %t103 = load ptr, ptr %lp6
  %t104 = load %"compiler/bindgen:Translation", ptr %t103
  store %"compiler/bindgen:Translation" %t104, ptr %l73
  %t106 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l73)
  store %"compiler/bindgen:Translation" %t106, ptr %l75
  br label %bb24
bb24:
  %t107 = load %"compiler/bindgen:Translation", ptr %l75
  store %"compiler/bindgen:Translation" %t107, ptr %l73
  %t108 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t110 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t108)
  store i32 %t110, ptr %l77
  %t111 = icmp ne i32 %t110, 0
  br i1 %t111, label %bb26, label %ok.112, !prof !99
ok.112:
  br label %bb25
bb25:
  br label %bb30
bb26:
  %t113 = load i32, ptr %l77, !tbaa !23
  %t114 = ashr i32 %t113, 16
  %t116 = icmp eq i32 %t114, 1
  store i1 %t116, ptr %l79, !tbaa !21
  %t117 = load i32, ptr %l77, !tbaa !23
  %t118 = ashr i32 %t117, 16
  %t120 = icmp eq i32 %t118, 1
  br i1 %t120, label %bb27, label %bb28
bb27:
  call void @__olang_errpay_pop()
  br label %bb28
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  %t122 = load %"compiler/bindgen:Translation", ptr %l73
  store %"compiler/bindgen:Translation" %t122, ptr %rv
  br label %ret
bb31:
  %t123 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t125 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t123, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t125, ptr %l83
  br label %bb32
bb32:
  %t126 = load i1, ptr %l83, !tbaa !21
  %t127 = xor i1 %t126, true
  br i1 %t127, label %bb33, label %bb34
bb33:
  %t129 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 1
  %t132 = extractvalue { i64, ptr } %t129, 0
  %t133 = call ptr @__olang_scope_alloc(ptr %v6, i64 %t132)
  call void @olang_textcopy(ptr %t133, ptr %t131, i64 %t132)
  %t134 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  %t137 = extractvalue { i64, ptr } %t135, 0
  %t138 = extractvalue { i64, ptr } %t135, 1
  %t139 = mul i64 %t137, 1
  %t140 = call ptr @__olang_scope_alloc(ptr %v6, i64 %t139)
  call void @llvm.memcpy.p0.p0.i64(ptr %t140, ptr %t138, i64 %t139, i1 false)
  %t141 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t140, 1
  store { i64, ptr } %t142, ptr %l85, !tbaa !27
  br label %bb35
bb34:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l85, !tbaa !27
  br label %bb35
bb35:
  %t145 = load { i64, ptr }, ptr %l85, !tbaa !27
  call void @compiler_2fbindgen_3agen_2ector(ptr %t144, ptr %v6, ptr %v6, { i64, ptr } %t145)
  call void @llvm.memmove.p0.p0.i64(ptr %l89, ptr %t144, i64 1128, i1 false)
  br label %bb36
bb36:
  %t146 = call ptr @__olang_scope_alloc_a(ptr %v6, i64 1128, i64 8)
  store ptr %t146, ptr %lp10
  %t147 = load ptr, ptr %lp10
  call void @llvm.memmove.p0.p0.i64(ptr %t147, ptr %l89, i64 1128, i1 false)
  %t148 = load ptr, ptr %lp10
  %t149 = getelementptr %"compiler/bindgen:gen", ptr %t148, i32 0, i32 1
  store i1 true, ptr %t149, !tbaa !21
  %t151 = load ptr, ptr %lp10
  %t152 = getelementptr %"compiler/bindgen:gen", ptr %t151, i32 0, i32 2
  %t153 = load { i64, ptr }, ptr %t152, !tbaa !27
  store { i64, ptr } %t153, ptr %l91, !tbaa !27
  %t155 = load ptr, ptr %lp10
  %t156 = getelementptr %"compiler/bindgen:gen", ptr %t155, i32 0, i32 2
  store { i64, ptr } %a4, ptr %t156, !tbaa !27
  %t157 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e2
  br i1 %t157, label %bb37, label %bb38
bb37:
  %t159 = load { i64, ptr }, ptr %l91
  %t160 = extractvalue { i64, ptr } %t159, 1
  call void @__olang_region_release(ptr %t160)
  store { i64, ptr } zeroinitializer, ptr %l91
  br label %bb38
bb38:
  %t161 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t162 = load ptr, ptr %lp10
  %t163 = getelementptr %"compiler/bindgen:gen", ptr %t162, i32 0, i32 3
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  store { i64, ptr } %t164, ptr %l94, !tbaa !27
  %t166 = load ptr, ptr %lp10
  %t167 = getelementptr %"compiler/bindgen:gen", ptr %t166, i32 0, i32 3
  store { i64, ptr } %t161, ptr %t167, !tbaa !27
  %t168 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e3
  br i1 %t168, label %bb39, label %bb40
bb39:
  %t170 = load { i64, ptr }, ptr %l94
  %t171 = extractvalue { i64, ptr } %t170, 1
  call void @__olang_region_release(ptr %t171)
  store { i64, ptr } zeroinitializer, ptr %l94
  br label %bb40
bb40:
  %t172 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t172, ptr %l96
  br label %bb41
bb41:
  %t173 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l96
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t173, ptr %l11
  %t174 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v2, ptr %l11, { i64, ptr } %t174)
  br label %bb42
bb42:
  %t177 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t177, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t179 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t179, 0
  store i64 %t181, ptr %l14, !tbaa !24
  br label %bb43
bb43:
  %t183 = load i64, ptr %l13, !tbaa !24
  %t184 = load i64, ptr %l14, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb44, label %bb45
bb44:
  br label %bb49
bb45:
  br label %bb46
bb46:
  %t191 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t191, ptr %l106, !tbaa !27
  %t192 = load i64, ptr %l13, !tbaa !24
  %t194 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr { i64, ptr }, ptr %t195, i64 %t192
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v3, ptr %l11, { i64, ptr } %t197)
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t202 = load i64, ptr %l13, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l13, !tbaa !24
  br label %bb43
bb49:
  %t206 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t207 = insertvalue [6 x { i64, ptr }] undef, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t208 = insertvalue [6 x { i64, ptr }] %t207, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t209 = insertvalue [6 x { i64, ptr }] %t208, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 2
  %t210 = insertvalue [6 x { i64, ptr }] %t209, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 3
  %t211 = insertvalue [6 x { i64, ptr }] %t210, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 4
  %t213 = insertvalue [6 x { i64, ptr }] %t211, { i64, ptr } %t206, 5
  %t215 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 96, i64 8)
  store [6 x { i64, ptr }] %t213, ptr %t215
  store ptr %t215, ptr %l16
  store i64 0, ptr %l17, !tbaa !24
  %t217 = load ptr, ptr %l16
  store i64 6, ptr %l18, !tbaa !24
  br label %bb50
bb50:
  %t220 = load i64, ptr %l17, !tbaa !24
  %t221 = load i64, ptr %l18, !tbaa !24
  %t224 = icmp slt i64 %t220, %t221
  %t226 = xor i1 %t224, true
  br i1 %t226, label %bb51, label %bb52
bb51:
  br label %bb56
bb52:
  br label %bb53
bb53:
  %t228 = load ptr, ptr %l16
  %t229 = load i64, ptr %l17, !tbaa !24
  %t232 = getelementptr [6 x { i64, ptr }], ptr %t228, i64 0, i64 %t229
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l11, { i64, ptr } %t233)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t238 = load i64, ptr %l17, !tbaa !24
  %t240 = add i64 %t238, 1
  store i64 %t240, ptr %l17, !tbaa !24
  br label %bb50
bb56:
  %t243 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l11)
  store { i64, ptr } %t243, ptr %l131
  br label %bb57
bb57:
  %t244 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t245 = call { i32, %"std/os:Output" } @compiler_2fbindgen_2eclangSays(ptr %s0, ptr %v6, { i64, ptr } %t244)
  %t246 = extractvalue { i32, %"std/os:Output" } %t245, 1
  %t247 = extractvalue { i32, %"std/os:Output" } %t245, 0
  store i32 %t247, ptr %l133
  %t248 = icmp ne i32 %t247, 0
  br i1 %t248, label %bb59, label %ok.249, !prof !99
ok.249:
  store %"std/os:Output" %t246, ptr %l132
  br label %bb58
bb58:
  %t250 = load %"std/os:Output", ptr %l132
  store %"std/os:Output" %t250, ptr %l129
  br label %bb70
bb59:
  %t251 = load i32, ptr %l133, !tbaa !23
  %t252 = ashr i32 %t251, 16
  %t254 = icmp eq i32 %t252, 1
  store i1 %t254, ptr %l135, !tbaa !21
  br label %bb60
bb60:
  %t255 = load ptr, ptr %lp6
  %t256 = getelementptr %"compiler/bindgen:Translation", ptr %t255, i32 0, i32 3
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  store { i64, ptr } %t257, ptr %l136, !tbaa !27
  %t258 = load ptr, ptr %lp6
  %t259 = getelementptr %"compiler/bindgen:Translation", ptr %t258, i32 0, i32 3
  store { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %t259, !tbaa !27
  %t260 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t260, label %bb61, label %bb62
bb61:
  %t262 = load { i64, ptr }, ptr %l136
  %t263 = extractvalue { i64, ptr } %t262, 1
  call void @__olang_region_release(ptr %t263)
  store { i64, ptr } zeroinitializer, ptr %l136
  br label %bb62
bb62:
  %t264 = load ptr, ptr %lp6
  %t265 = load %"compiler/bindgen:Translation", ptr %t264
  store %"compiler/bindgen:Translation" %t265, ptr %l138
  %t267 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l138)
  store %"compiler/bindgen:Translation" %t267, ptr %l140
  br label %bb63
bb63:
  %t268 = load %"compiler/bindgen:Translation", ptr %l140
  store %"compiler/bindgen:Translation" %t268, ptr %l138
  %t269 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t271 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t269)
  store i32 %t271, ptr %l142
  %t272 = icmp ne i32 %t271, 0
  br i1 %t272, label %bb65, label %ok.273, !prof !99
ok.273:
  br label %bb64
bb64:
  br label %bb69
bb65:
  %t274 = load i32, ptr %l142, !tbaa !23
  %t275 = ashr i32 %t274, 16
  %t277 = icmp eq i32 %t275, 1
  store i1 %t277, ptr %l144, !tbaa !21
  %t278 = load i32, ptr %l142, !tbaa !23
  %t279 = ashr i32 %t278, 16
  %t281 = icmp eq i32 %t279, 1
  br i1 %t281, label %bb66, label %bb67
bb66:
  call void @__olang_errpay_pop()
  br label %bb67
bb67:
  br label %bb68
bb68:
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s0)
  %t283 = load %"compiler/bindgen:Translation", ptr %l138
  store %"compiler/bindgen:Translation" %t283, ptr %rv
  br label %ret
bb70:
  %t284 = call ptr @__olang_scope_alloc_a(ptr %v6, i64 40, i64 8)
  store ptr %t284, ptr %lp20
  %t285 = load %"std/os:Output", ptr %l129
  %t286 = load ptr, ptr %lp20
  store %"std/os:Output" %t285, ptr %t286
  %t287 = load ptr, ptr %lp20
  %t288 = getelementptr %"std/os:Output", ptr %t287, i32 0, i32 0
  %t289 = load i32, ptr %t288, !tbaa !23
  %t291 = icmp ne i32 %t289, 0
  br i1 %t291, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s19
  %t293 = load ptr, ptr %lp20
  %t294 = getelementptr %"std/os:Output", ptr %t293, i32 0, i32 2
  %t295 = load { i64, ptr }, ptr %t294, !tbaa !27
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l151, !tbaa !27
  %t298 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t299 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v6, ptr %s19, { i64, ptr } %t295, { i64, ptr } %t298)
  store i1 %t299, ptr %l152
  br label %bb73
bb72:
  br label %bb86
bb73:
  %t300 = load i1, ptr %l152, !tbaa !21
  %t301 = load ptr, ptr %lp6
  %t302 = getelementptr %"compiler/bindgen:Translation", ptr %t301, i32 0, i32 4
  store i1 %t300, ptr %t302, !tbaa !21
  %t303 = ptrtoint ptr %v6 to i64
  store i64 %t303, ptr %l153, !tbaa !24
  %t304 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t304, label %bb74, label %bb75
bb74:
  %t306 = call ptr @__olang_region_make(ptr %v6)
  %t307 = ptrtoint ptr %t306 to i64
  store i64 %t307, ptr %l153, !tbaa !24
  br label %bb75
bb75:
  %t308 = load ptr, ptr %lp20
  %t309 = getelementptr %"std/os:Output", ptr %t308, i32 0, i32 2
  %t310 = load { i64, ptr }, ptr %t309, !tbaa !27
  %t311 = load i64, ptr %l153
  %t312 = inttoptr i64 %t311 to ptr
  %t314 = call { i64, ptr } @compiler_2fbindgen_2efirstError(ptr %v6, ptr %t312, { i64, ptr } %t310)
  store { i64, ptr } %t314, ptr %l156
  br label %bb76
bb76:
  %t315 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t316 = load i64, ptr %l153
  %t317 = inttoptr i64 %t316 to ptr
  %t318 = extractvalue { i64, ptr } %t315, 0
  %t319 = extractvalue { i64, ptr } %t315, 1
  %t320 = mul i64 %t318, 1
  %t321 = call ptr @__olang_scope_alloc(ptr %t317, i64 %t320)
  call void @llvm.memcpy.p0.p0.i64(ptr %t321, ptr %t319, i64 %t320, i1 false)
  %t322 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t323 = insertvalue { i64, ptr } %t322, ptr %t321, 1
  %t324 = load ptr, ptr %lp6
  %t325 = getelementptr %"compiler/bindgen:Translation", ptr %t324, i32 0, i32 3
  %t326 = load { i64, ptr }, ptr %t325, !tbaa !27
  store { i64, ptr } %t326, ptr %l158, !tbaa !27
  %t328 = load ptr, ptr %lp6
  %t329 = getelementptr %"compiler/bindgen:Translation", ptr %t328, i32 0, i32 3
  store { i64, ptr } %t323, ptr %t329, !tbaa !27
  %t330 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t330, label %bb77, label %bb78
bb77:
  %t332 = load { i64, ptr }, ptr %l158
  %t333 = extractvalue { i64, ptr } %t332, 1
  call void @__olang_region_release(ptr %t333)
  store { i64, ptr } zeroinitializer, ptr %l158
  br label %bb78
bb78:
  %t334 = load ptr, ptr %lp6
  %t335 = load %"compiler/bindgen:Translation", ptr %t334
  store %"compiler/bindgen:Translation" %t335, ptr %l160
  %t337 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l160)
  store %"compiler/bindgen:Translation" %t337, ptr %l162
  br label %bb79
bb79:
  %t338 = load %"compiler/bindgen:Translation", ptr %l162
  store %"compiler/bindgen:Translation" %t338, ptr %l160
  call void @__olang_scope_close(ptr %s19)
  %t339 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t341 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t339)
  store i32 %t341, ptr %l164
  %t342 = icmp ne i32 %t341, 0
  br i1 %t342, label %bb81, label %ok.343, !prof !99
ok.343:
  br label %bb80
bb80:
  br label %bb85
bb81:
  %t344 = load i32, ptr %l164, !tbaa !23
  %t345 = ashr i32 %t344, 16
  %t347 = icmp eq i32 %t345, 1
  store i1 %t347, ptr %l166, !tbaa !21
  %t348 = load i32, ptr %l164, !tbaa !23
  %t349 = ashr i32 %t348, 16
  %t351 = icmp eq i32 %t349, 1
  br i1 %t351, label %bb82, label %bb83
bb82:
  call void @__olang_errpay_pop()
  br label %bb83
bb83:
  br label %bb84
bb84:
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s0)
  %t353 = load %"compiler/bindgen:Translation", ptr %l160
  store %"compiler/bindgen:Translation" %t353, ptr %rv
  br label %ret
bb86:
  %t354 = load ptr, ptr %lp10
  %t355 = load ptr, ptr %lp20
  %t356 = getelementptr %"std/os:Output", ptr %t355, i32 0, i32 1
  %t357 = load { i64, ptr }, ptr %t356, !tbaa !27
  %t358 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t359 = load ptr, ptr %lp6
  %t360 = getelementptr %"compiler/bindgen:Translation", ptr %t359, i32 0, i32 2
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ereadMacros(ptr %v6, ptr %v6, ptr %s0, ptr %s0, ptr %v6, ptr %t354, { i64, ptr } %t357, { i64, ptr } %t358, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %t360)
  br label %bb87
bb87:
  %t365 = load ptr, ptr %lp10
  %t367 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eintMacros(ptr %v6, ptr %s0, ptr %t365)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t367, ptr %l174
  br label %bb88
bb88:
  %t368 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l174
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t368, ptr %l21
  %t369 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t369, ptr %l175
  br label %bb89
bb89:
  %t370 = load %"std/prelude/text:StringBuilder", ptr %l175
  store %"std/prelude/text:StringBuilder" %t370, ptr %l22
  %t371 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t373 = extractvalue { i64, ptr } %t371, 1
  %t374 = extractvalue { i64, ptr } %t371, 0
  %t375 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t376 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t377 = add i64 %t374, %t376
  %t378 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t377)
  call void @olang_textcopy(ptr %t378, ptr %t373, i64 %t374)
  %t379 = getelementptr i8, ptr %t378, i64 %t374
  call void @olang_textcopy(ptr %t379, ptr %t375, i64 %t376)
  %t380 = insertvalue { i64, ptr } undef, i64 %t377, 0
  %t381 = insertvalue { i64, ptr } %t380, ptr %t378, 1
  %t383 = extractvalue { i64, ptr } %t381, 0
  %t384 = extractvalue { i64, ptr } %t381, 1
  %t385 = mul i64 %t383, 1
  %t386 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t385)
  call void @llvm.memcpy.p0.p0.i64(ptr %t386, ptr %t384, i64 %t385, i1 false)
  %t387 = insertvalue { i64, ptr } undef, i64 %t383, 0
  %t388 = insertvalue { i64, ptr } %t387, ptr %t386, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l22, { i64, ptr } %t388)
  br label %bb90
bb90:
  store ptr %l21, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb91
bb91:
  store %olang.scope zeroinitializer, ptr %s25
  %t392 = load i64, ptr %l24, !tbaa !24
  store i64 %t392, ptr %l181, !tbaa !24
  %t393 = load ptr, ptr %l23, !tbaa !29
  %t395 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t393)
  store i64 %t395, ptr %l183
  br label %bb92
bb92:
  %t396 = load i64, ptr %l181, !tbaa !24
  %t397 = load i64, ptr %l183, !tbaa !24
  %t398 = icmp slt i64 %t396, %t397
  %t400 = xor i1 %t398, true
  br i1 %t400, label %bb93, label %bb94
bb93:
  call void @__olang_scope_close(ptr %s25)
  br label %bb100
bb94:
  br label %bb95
bb95:
  %t402 = load i64, ptr %l24, !tbaa !24
  store i64 %t402, ptr %l25, !tbaa !24
  %t404 = load ptr, ptr %l23, !tbaa !29
  %t405 = load i64, ptr %l24, !tbaa !24
  %t408 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t404, i64 %t405)
  store i64 %t408, ptr %l189
  br label %bb96
bb96:
  %t409 = load i64, ptr %l189, !tbaa !24
  store ptr %l22, ptr %l190, !tbaa !29
  %t410 = load i64, ptr %l25, !tbaa !24
  store i64 %t410, ptr %l191, !tbaa !24
  %t411 = load i64, ptr %l25, !tbaa !24
  store i64 %t411, ptr %l192, !tbaa !24
  %t412 = load ptr, ptr %lp10
  %t413 = getelementptr %"compiler/bindgen:gen", ptr %t412, i32 0, i32 12
  %t417 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v6, ptr %v6, ptr %t413, i64 %t409)
  store %"compiler/bindgen:cMacro" %t417, ptr %l195
  br label %bb97
bb97:
  %t418 = getelementptr %"compiler/bindgen:cMacro", ptr %l195, i32 0, i32 0
  %t419 = load { i64, ptr }, ptr %t418, !tbaa !27
  %t420 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t421 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t422 = load i64, ptr %l191, !tbaa !24
  %t423 = call i64 @__olang_fmt_i64(ptr null, i64 %t422)
  %t424 = add i64 %t421, %t423
  %t425 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t426 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t427 = add i64 %t424, %t426
  %t428 = load i64, ptr %l192, !tbaa !24
  %t429 = call i64 @__olang_fmt_i64(ptr null, i64 %t428)
  %t430 = add i64 %t427, %t429
  %t431 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t432 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t433 = add i64 %t430, %t432
  %t435 = extractvalue { i64, ptr } %t419, 1
  %t436 = extractvalue { i64, ptr } %t419, 0
  %t437 = add i64 %t433, %t436
  %t438 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t439 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t440 = add i64 %t437, %t439
  %t441 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t440)
  call void @olang_textcopy(ptr %t441, ptr %t420, i64 %t421)
  %t442 = getelementptr i8, ptr %t441, i64 %t421
  %t443 = call i64 @__olang_fmt_i64(ptr %t442, i64 %t422)
  %t444 = getelementptr i8, ptr %t442, i64 %t423
  call void @olang_textcopy(ptr %t444, ptr %t425, i64 %t426)
  %t445 = getelementptr i8, ptr %t444, i64 %t426
  %t446 = call i64 @__olang_fmt_i64(ptr %t445, i64 %t428)
  %t447 = getelementptr i8, ptr %t445, i64 %t429
  call void @olang_textcopy(ptr %t447, ptr %t431, i64 %t432)
  %t448 = getelementptr i8, ptr %t447, i64 %t432
  call void @olang_textcopy(ptr %t448, ptr %t435, i64 %t436)
  %t449 = getelementptr i8, ptr %t448, i64 %t436
  call void @olang_textcopy(ptr %t449, ptr %t438, i64 %t439)
  %t450 = insertvalue { i64, ptr } undef, i64 %t440, 0
  %t451 = insertvalue { i64, ptr } %t450, ptr %t441, 1
  %t453 = extractvalue { i64, ptr } %t451, 0
  %t454 = extractvalue { i64, ptr } %t451, 1
  %t455 = mul i64 %t453, 1
  %t456 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t455)
  call void @llvm.memcpy.p0.p0.i64(ptr %t456, ptr %t454, i64 %t455, i1 false)
  %t457 = insertvalue { i64, ptr } undef, i64 %t453, 0
  %t458 = insertvalue { i64, ptr } %t457, ptr %t456, 1
  %t459 = load ptr, ptr %l190, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %t459, { i64, ptr } %t458)
  br label %bb98
bb98:
  call void @__olang_scope_close(ptr %s25)
  br label %bb99
bb99:
  %t461 = load i64, ptr %l24, !tbaa !24
  %t463 = add i64 %t461, 1
  store i64 %t463, ptr %l24, !tbaa !24
  br label %bb91
bb100:
  %t465 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t465, ptr %l201, !tbaa !27
  %t467 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l22)
  store { i64, ptr } %t467, ptr %l203
  br label %bb101
bb101:
  %t468 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t470 = extractvalue { i64, ptr } %t468, 0
  %t471 = extractvalue { i64, ptr } %t468, 1
  %t472 = mul i64 %t470, 1
  %t473 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t472)
  call void @llvm.memcpy.p0.p0.i64(ptr %t473, ptr %t471, i64 %t472, i1 false)
  %t474 = insertvalue { i64, ptr } undef, i64 %t470, 0
  %t475 = insertvalue { i64, ptr } %t474, ptr %t473, 1
  %t476 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t478 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t476, { i64, ptr } %t475)
  store i32 %t478, ptr %l206
  %t479 = icmp ne i32 %t478, 0
  br i1 %t479, label %bb103, label %ok.480, !prof !99
ok.480:
  br label %bb102
bb102:
  br label %bb116
bb103:
  %t481 = load i32, ptr %l206, !tbaa !23
  %t482 = ashr i32 %t481, 16
  %t484 = icmp eq i32 %t482, 1
  store i1 %t484, ptr %l208, !tbaa !21
  %t485 = load i32, ptr %l206, !tbaa !23
  %t486 = ashr i32 %t485, 16
  %t488 = icmp eq i32 %t486, 1
  br i1 %t488, label %bb104, label %bb105
bb104:
  call void @__olang_errpay_pop()
  br label %bb105
bb105:
  br label %bb106
bb106:
  %t490 = load ptr, ptr %lp6
  %t491 = getelementptr %"compiler/bindgen:Translation", ptr %t490, i32 0, i32 3
  %t492 = load { i64, ptr }, ptr %t491, !tbaa !27
  store { i64, ptr } %t492, ptr %l211, !tbaa !27
  %t493 = load ptr, ptr %lp6
  %t494 = getelementptr %"compiler/bindgen:Translation", ptr %t493, i32 0, i32 3
  store { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %t494, !tbaa !27
  %t495 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t495, label %bb107, label %bb108
bb107:
  %t497 = load { i64, ptr }, ptr %l211
  %t498 = extractvalue { i64, ptr } %t497, 1
  call void @__olang_region_release(ptr %t498)
  store { i64, ptr } zeroinitializer, ptr %l211
  br label %bb108
bb108:
  %t499 = load ptr, ptr %lp6
  %t500 = load %"compiler/bindgen:Translation", ptr %t499
  store %"compiler/bindgen:Translation" %t500, ptr %l213
  %t502 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l213)
  store %"compiler/bindgen:Translation" %t502, ptr %l215
  br label %bb109
bb109:
  %t503 = load %"compiler/bindgen:Translation", ptr %l215
  store %"compiler/bindgen:Translation" %t503, ptr %l213
  %t504 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t506 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t504)
  store i32 %t506, ptr %l217
  %t507 = icmp ne i32 %t506, 0
  br i1 %t507, label %bb111, label %ok.508, !prof !99
ok.508:
  br label %bb110
bb110:
  br label %bb115
bb111:
  %t509 = load i32, ptr %l217, !tbaa !23
  %t510 = ashr i32 %t509, 16
  %t512 = icmp eq i32 %t510, 1
  store i1 %t512, ptr %l219, !tbaa !21
  %t513 = load i32, ptr %l217, !tbaa !23
  %t514 = ashr i32 %t513, 16
  %t516 = icmp eq i32 %t514, 1
  br i1 %t516, label %bb112, label %bb113
bb112:
  call void @__olang_errpay_pop()
  br label %bb113
bb113:
  br label %bb114
bb114:
  br label %bb115
bb115:
  call void @__olang_scope_close(ptr %s0)
  %t518 = load %"compiler/bindgen:Translation", ptr %l213
  store %"compiler/bindgen:Translation" %t518, ptr %rv
  br label %ret
bb116:
  %t519 = load ptr, ptr %lp10
  %t520 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t521 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t522 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t527 = call { i32, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edump(ptr %v6, ptr %v2, ptr %v3, ptr %s0, ptr %s0, ptr %t519, { i64, ptr } %t520, { i64, ptr } %t521, { i64, ptr } %t522)
  %t528 = extractvalue { i32, ptr } %t527, 1
  %t529 = extractvalue { i32, ptr } %t527, 0
  store i32 %t529, ptr %l228
  %t530 = icmp ne i32 %t529, 0
  br i1 %t530, label %bb118, label %ok.531, !prof !99
ok.531:
  store ptr %t528, ptr %l227
  br label %bb117
bb117:
  %t532 = load ptr, ptr %l227, !tbaa !29
  store ptr %t532, ptr %l222, !tbaa !29
  br label %bb129
bb118:
  %t533 = load i32, ptr %l228, !tbaa !23
  %t534 = ashr i32 %t533, 16
  %t536 = icmp eq i32 %t534, 1
  store i1 %t536, ptr %l230, !tbaa !21
  br label %bb119
bb119:
  %t537 = load ptr, ptr %lp10
  %t538 = getelementptr %"compiler/bindgen:gen", ptr %t537, i32 0, i32 25
  %t539 = load { i64, ptr }, ptr %t538, !tbaa !27
  %t540 = load ptr, ptr %lp6
  %t541 = getelementptr %"compiler/bindgen:Translation", ptr %t540, i32 0, i32 3
  %t542 = load { i64, ptr }, ptr %t541, !tbaa !27
  store { i64, ptr } %t542, ptr %l232, !tbaa !27
  %t544 = load ptr, ptr %lp6
  %t545 = getelementptr %"compiler/bindgen:Translation", ptr %t544, i32 0, i32 3
  store { i64, ptr } %t539, ptr %t545, !tbaa !27
  %t546 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t546, label %bb120, label %bb121
bb120:
  %t548 = load { i64, ptr }, ptr %l232
  %t549 = extractvalue { i64, ptr } %t548, 1
  call void @__olang_region_release(ptr %t549)
  store { i64, ptr } zeroinitializer, ptr %l232
  br label %bb121
bb121:
  %t550 = load ptr, ptr %lp6
  %t551 = load %"compiler/bindgen:Translation", ptr %t550
  store %"compiler/bindgen:Translation" %t551, ptr %l234
  %t553 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l234)
  store %"compiler/bindgen:Translation" %t553, ptr %l236
  br label %bb122
bb122:
  %t554 = load %"compiler/bindgen:Translation", ptr %l236
  store %"compiler/bindgen:Translation" %t554, ptr %l234
  %t555 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t557 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t555)
  store i32 %t557, ptr %l238
  %t558 = icmp ne i32 %t557, 0
  br i1 %t558, label %bb124, label %ok.559, !prof !99
ok.559:
  br label %bb123
bb123:
  br label %bb128
bb124:
  %t560 = load i32, ptr %l238, !tbaa !23
  %t561 = ashr i32 %t560, 16
  %t563 = icmp eq i32 %t561, 1
  store i1 %t563, ptr %l240, !tbaa !21
  %t564 = load i32, ptr %l238, !tbaa !23
  %t565 = ashr i32 %t564, 16
  %t567 = icmp eq i32 %t565, 1
  br i1 %t567, label %bb125, label %bb126
bb125:
  call void @__olang_errpay_pop()
  br label %bb126
bb126:
  br label %bb127
bb127:
  br label %bb128
bb128:
  call void @__olang_scope_close(ptr %s0)
  %t569 = load %"compiler/bindgen:Translation", ptr %l234
  store %"compiler/bindgen:Translation" %t569, ptr %rv
  br label %ret
bb129:
  %t570 = load ptr, ptr %l222, !tbaa !29
  store ptr %t570, ptr %l27, !tbaa !29
  %t571 = load ptr, ptr %lp10
  %t572 = load ptr, ptr %l27, !tbaa !29
  %t573 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eread(ptr %v6, ptr %s0, ptr %s0, ptr %t571, ptr %t572, { i64, ptr } %t573)
  br label %bb130
bb130:
  %t577 = load ptr, ptr %lp10
  %t578 = getelementptr %"compiler/bindgen:gen", ptr %t577, i32 0, i32 26
  store i64 0, ptr %t578, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s36
  %t579 = load ptr, ptr %l27, !tbaa !29
  %t581 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s0, ptr %s36, ptr %t579)
  store { i64, ptr } %t581, ptr %l247
  br label %bb131
bb131:
  %t582 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t583 = extractvalue { i64, ptr } %t582, 0
  %t584 = extractvalue { i64, ptr } %t582, 1
  %t585 = mul i64 %t583, 8
  %t586 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t585)
  call void @llvm.memcpy.p0.p0.i64(ptr %t586, ptr %t584, i64 %t585, i1 false)
  %t587 = insertvalue { i64, ptr } undef, i64 %t583, 0
  %t588 = insertvalue { i64, ptr } %t587, ptr %t586, 1
  store { i64, ptr } %t588, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t590 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t592 = extractvalue { i64, ptr } %t590, 0
  store i64 %t592, ptr %l30, !tbaa !24
  br label %bb132
bb132:
  store %olang.scope zeroinitializer, ptr %s37
  %t594 = load i64, ptr %l29, !tbaa !24
  %t595 = load i64, ptr %l30, !tbaa !24
  %t598 = icmp slt i64 %t594, %t595
  %t600 = xor i1 %t598, true
  br i1 %t600, label %bb133, label %bb134
bb133:
  call void @__olang_scope_close(ptr %s37)
  br label %bb187
bb134:
  br label %bb135
bb135:
  %t602 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t602, ptr %l255, !tbaa !27
  %t603 = load i64, ptr %l29, !tbaa !24
  %t605 = getelementptr { i64, ptr }, ptr %l255, i32 0, i32 1
  %t606 = load ptr, ptr %t605, !tbaa !27
  %t607 = getelementptr ptr, ptr %t606, i64 %t603
  %t608 = load ptr, ptr %t607, !tbaa !39
  store ptr %t608, ptr %l31, !tbaa !29
  %t610 = load ptr, ptr %l31, !tbaa !29
  %t612 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s36, ptr %s37, ptr %s37, ptr %t610, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store { i64, ptr } %t612, ptr %l259
  br label %bb136
bb136:
  %t613 = load { i64, ptr }, ptr %l259, !tbaa !27
  store { i64, ptr } %t613, ptr %l32, !tbaa !27
  %t614 = load ptr, ptr %l31, !tbaa !29
  %t616 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s36, ptr %s37, ptr %s37, ptr %t614, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store { i64, ptr } %t616, ptr %l261
  br label %bb137
bb137:
  %t617 = load { i64, ptr }, ptr %l261, !tbaa !27
  %t618 = extractvalue { i64, ptr } %t617, 0
  %t619 = extractvalue { i64, ptr } %t617, 1
  %t620 = mul i64 %t618, 1
  %t621 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t620)
  call void @llvm.memcpy.p0.p0.i64(ptr %t621, ptr %t619, i64 %t620, i1 false)
  %t622 = insertvalue { i64, ptr } undef, i64 %t618, 0
  %t623 = insertvalue { i64, ptr } %t622, ptr %t621, 1
  %t625 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s37, ptr %s37, { i64, ptr } %t623, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t625, ptr %l263
  br label %bb138
bb138:
  %t626 = load i1, ptr %l263, !tbaa !21
  %t627 = xor i1 %t626, true
  br i1 %t627, label %bb139, label %bb140
bb139:
  store i1 true, ptr %l265, !tbaa !21
  br label %bb142
bb140:
  %t629 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t631 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s37, ptr %s37, { i64, ptr } %t629, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t631, ptr %l267
  br label %bb141
bb141:
  %t632 = load i1, ptr %l267, !tbaa !21
  %t633 = xor i1 %t632, true
  store i1 %t633, ptr %l265, !tbaa !21
  br label %bb142
bb142:
  %t635 = load i1, ptr %l265, !tbaa !21
  br i1 %t635, label %bb143, label %bb144
bb143:
  call void @__olang_scope_close(ptr %s37)
  br label %bb186
bb144:
  br label %bb145
bb145:
  %t636 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t638 = extractvalue { i64, ptr } %t636, 0
  store i64 %t638, ptr %l271, !tbaa !24
  %t639 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t640 = extractvalue { i64, ptr } %t639, 0
  store i64 %t640, ptr %l272, !tbaa !24
  %t641 = icmp sge i64 9, 0
  br i1 %t641, label %bb146, label %bb147
bb146:
  %t643 = load i64, ptr %l271, !tbaa !24
  %t644 = icmp sle i64 9, %t643
  br i1 %t644, label %bb148, label %bb149
bb147:
  call void @__olang_check_failed(ptr @olang_loc_b774a7292e99a958_2ba7e6e1e518c9cc)
  unreachable
bb148:
  %t646 = load i64, ptr %l271, !tbaa !24
  %t647 = load i64, ptr %l272, !tbaa !24
  %t648 = icmp sle i64 %t646, %t647
  br i1 %t648, label %bb150, label %bb151
bb149:
  call void @__olang_check_failed(ptr @olang_loc_b774a7292e99a958_2ba7e6e1e518c9cc)
  unreachable
bb150:
  %t650 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t651 = load ptr, ptr %t650, !tbaa !27
  %t652 = load i64, ptr %l271, !tbaa !24
  %t653 = getelementptr i8, ptr %t651, i64 9
  %t654 = sub i64 %t652, 9
  %t655 = insertvalue { i64, ptr } undef, i64 %t654, 0
  %t656 = insertvalue { i64, ptr } %t655, ptr %t653, 1
  store { i64, ptr } %t656, ptr %l276, !tbaa !27
  %t657 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s37, i64 10)
  %t658 = extractvalue { i32, i64 } %t657, 1
  %t659 = extractvalue { i32, i64 } %t657, 0
  store i32 %t659, ptr %l278
  %t660 = icmp ne i32 %t659, 0
  br i1 %t660, label %bb153, label %ok.661, !prof !99
ok.661:
  store i64 %t658, ptr %l277
  br label %bb152
bb151:
  call void @__olang_check_failed(ptr @olang_loc_b774a7292e99a958_2ba7e6e1e518c9cc)
  unreachable
bb152:
  %t662 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t663 = load i64, ptr %l277, !tbaa !24
  %t664 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s37, { i64, ptr } %t662, i64 %t663)
  %t665 = extractvalue { i32, i64 } %t664, 1
  %t666 = extractvalue { i32, i64 } %t664, 0
  store i32 %t666, ptr %l280
  %t667 = icmp ne i32 %t666, 0
  br i1 %t667, label %bb156, label %ok.668, !prof !99
ok.668:
  store i64 %t665, ptr %l279
  br label %bb155
bb153:
  br label %bb154
bb154:
  store i64 -1, ptr %l269, !tbaa !24
  br label %bb157
bb155:
  %t669 = load i64, ptr %l279, !tbaa !24
  store i64 %t669, ptr %l269, !tbaa !24
  br label %bb157
bb156:
  br label %bb154
bb157:
  %t670 = load i64, ptr %l269, !tbaa !24
  store i64 %t670, ptr %l33, !tbaa !24
  %t671 = load i64, ptr %l33, !tbaa !24
  %t673 = icmp slt i64 %t671, 0
  br i1 %t673, label %bb158, label %bb159
bb158:
  store i1 true, ptr %l283, !tbaa !21
  br label %bb161
bb159:
  %t675 = load i64, ptr %l33, !tbaa !24
  store i64 %t675, ptr %l284, !tbaa !24
  %t677 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l21)
  store i64 %t677, ptr %l286
  br label %bb160
bb160:
  %t678 = load i64, ptr %l284, !tbaa !24
  %t679 = load i64, ptr %l286, !tbaa !24
  %t680 = icmp sge i64 %t678, %t679
  store i1 %t680, ptr %l283, !tbaa !21
  br label %bb161
bb161:
  %t682 = load i1, ptr %l283, !tbaa !21
  br i1 %t682, label %bb162, label %bb163
bb162:
  call void @__olang_scope_close(ptr %s37)
  br label %bb186
bb163:
  br label %bb164
bb164:
  store %olang.scope zeroinitializer, ptr %s40
  %t683 = load ptr, ptr %l31, !tbaa !29
  %t685 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s36, ptr %s40, ptr %t683)
  store { i64, ptr } %t685, ptr %l289
  br label %bb165
bb165:
  %t686 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t687 = extractvalue { i64, ptr } %t686, 0
  %t688 = extractvalue { i64, ptr } %t686, 1
  %t689 = mul i64 %t687, 8
  %t690 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t689)
  call void @llvm.memcpy.p0.p0.i64(ptr %t690, ptr %t688, i64 %t689, i1 false)
  %t691 = insertvalue { i64, ptr } undef, i64 %t687, 0
  %t692 = insertvalue { i64, ptr } %t691, ptr %t690, 1
  store { i64, ptr } %t692, ptr %l34, !tbaa !27
  store i64 0, ptr %l35, !tbaa !24
  %t694 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t696 = extractvalue { i64, ptr } %t694, 0
  store i64 %t696, ptr %l36, !tbaa !24
  br label %bb166
bb166:
  store %olang.scope zeroinitializer, ptr %s41
  %t698 = load i64, ptr %l35, !tbaa !24
  %t699 = load i64, ptr %l36, !tbaa !24
  %t702 = icmp slt i64 %t698, %t699
  %t704 = xor i1 %t702, true
  br i1 %t704, label %bb167, label %bb168
bb167:
  call void @__olang_scope_close(ptr %s41)
  br label %bb185
bb168:
  br label %bb169
bb169:
  %t706 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t706, ptr %l297, !tbaa !27
  %t707 = load i64, ptr %l35, !tbaa !24
  %t709 = getelementptr { i64, ptr }, ptr %l297, i32 0, i32 1
  %t710 = load ptr, ptr %t709, !tbaa !27
  %t711 = getelementptr ptr, ptr %t710, i64 %t707
  %t712 = load ptr, ptr %t711, !tbaa !39
  %t716 = call { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %s40, ptr %s41, ptr %t712)
  store { i64, ptr } %t716, ptr %l301
  br label %bb170
bb170:
  %t717 = load { i64, ptr }, ptr %l301, !tbaa !27
  store { i64, ptr } %t717, ptr %l38, !tbaa !27
  %t718 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t720 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s41, ptr %s41, { i64, ptr } %t718, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t720, ptr %l303
  br label %bb171
bb171:
  %t721 = load i1, ptr %l303, !tbaa !21
  br i1 %t721, label %bb172, label %bb173
bb172:
  call void @__olang_scope_close(ptr %s41)
  br label %bb184
bb173:
  br label %bb174
bb174:
  %t722 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t722, ptr %l305, !tbaa !27
  %t723 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s41, i64 10)
  %t724 = extractvalue { i32, i64 } %t723, 1
  %t725 = extractvalue { i32, i64 } %t723, 0
  store i32 %t725, ptr %l307
  %t726 = icmp ne i32 %t725, 0
  br i1 %t726, label %bb176, label %ok.727, !prof !99
ok.727:
  store i64 %t724, ptr %l306
  br label %bb175
bb175:
  %t728 = load { i64, ptr }, ptr %l305, !tbaa !27
  %t729 = load i64, ptr %l306, !tbaa !24
  %t730 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s41, { i64, ptr } %t728, i64 %t729)
  %t731 = extractvalue { i32, i64 } %t730, 1
  %t732 = extractvalue { i32, i64 } %t730, 0
  store i32 %t732, ptr %l309
  %t733 = icmp ne i32 %t732, 0
  br i1 %t733, label %bb179, label %ok.734, !prof !99
ok.734:
  store i64 %t731, ptr %l308
  br label %bb178
bb176:
  br label %bb177
bb177:
  call void @__olang_scope_close(ptr %s41)
  br label %bb184
bb178:
  %t735 = load i64, ptr %l308, !tbaa !24
  store i64 %t735, ptr %l304, !tbaa !24
  br label %bb180
bb179:
  br label %bb177
bb180:
  %t736 = load i64, ptr %l304, !tbaa !24
  store i64 %t736, ptr %l39, !tbaa !24
  %t737 = load ptr, ptr %lp10
  store ptr %t737, ptr %l310, !tbaa !29
  %t738 = load ptr, ptr %lp10
  %t739 = getelementptr %"compiler/bindgen:gen", ptr %t738, i32 0, i32 12
  store ptr %t739, ptr %l311, !tbaa !29
  %t740 = load i64, ptr %l33, !tbaa !24
  %t743 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l21, i64 %t740)
  store i64 %t743, ptr %l314
  br label %bb181
bb181:
  %t744 = load ptr, ptr %l311, !tbaa !29
  %t745 = load i64, ptr %l314, !tbaa !24
  %t746 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v6, ptr %v6, ptr %t744, i64 %t745)
  store %"compiler/bindgen:cMacro" %t746, ptr %l315
  br label %bb182
bb182:
  %t747 = getelementptr %"compiler/bindgen:cMacro", ptr %l315, i32 0, i32 0
  %t748 = load { i64, ptr }, ptr %t747, !tbaa !27
  %t749 = load i64, ptr %l39, !tbaa !24
  %t750 = load ptr, ptr %l310, !tbaa !29
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2econstant(ptr %v6, ptr %v6, ptr %t750, { i64, ptr } %t748, i64 %t749)
  br label %bb183
bb183:
  call void @__olang_scope_close(ptr %s41)
  br label %bb184
bb184:
  %t753 = load i64, ptr %l35, !tbaa !24
  %t755 = add i64 %t753, 1
  store i64 %t755, ptr %l35, !tbaa !24
  br label %bb166
bb185:
  call void @__olang_scope_close(ptr %s40)
  call void @__olang_scope_close(ptr %s37)
  br label %bb186
bb186:
  %t757 = load i64, ptr %l29, !tbaa !24
  %t759 = add i64 %t757, 1
  store i64 %t759, ptr %l29, !tbaa !24
  br label %bb132
bb187:
  call void @__olang_scope_close(ptr %s36)
  %t761 = load ptr, ptr %lp10
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eotherConsts(ptr %v6, ptr %t761)
  br label %bb188
bb188:
  %t763 = load ptr, ptr %lp10
  %t764 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t765 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t766 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t767 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t773 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2esizes(ptr %v6, ptr %v2, ptr %v3, ptr %s0, ptr %v0, ptr %t763, { i64, ptr } %t764, { i64, ptr } %t765, { i64, ptr } %t766, { i64, ptr } %t767)
  store i32 %t773, ptr %l328
  %t774 = icmp ne i32 %t773, 0
  br i1 %t774, label %bb190, label %ok.775, !prof !99
ok.775:
  br label %bb189
bb189:
  br label %bb201
bb190:
  %t776 = load i32, ptr %l328, !tbaa !23
  %t777 = ashr i32 %t776, 16
  %t779 = icmp eq i32 %t777, 1
  store i1 %t779, ptr %l330, !tbaa !21
  br label %bb191
bb191:
  %t780 = load ptr, ptr %lp10
  %t781 = getelementptr %"compiler/bindgen:gen", ptr %t780, i32 0, i32 25
  %t782 = load { i64, ptr }, ptr %t781, !tbaa !27
  %t783 = load ptr, ptr %lp6
  %t784 = getelementptr %"compiler/bindgen:Translation", ptr %t783, i32 0, i32 3
  %t785 = load { i64, ptr }, ptr %t784, !tbaa !27
  store { i64, ptr } %t785, ptr %l332, !tbaa !27
  %t787 = load ptr, ptr %lp6
  %t788 = getelementptr %"compiler/bindgen:Translation", ptr %t787, i32 0, i32 3
  store { i64, ptr } %t782, ptr %t788, !tbaa !27
  %t789 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t789, label %bb192, label %bb193
bb192:
  %t791 = load { i64, ptr }, ptr %l332
  %t792 = extractvalue { i64, ptr } %t791, 1
  call void @__olang_region_release(ptr %t792)
  store { i64, ptr } zeroinitializer, ptr %l332
  br label %bb193
bb193:
  %t793 = load ptr, ptr %lp6
  %t794 = load %"compiler/bindgen:Translation", ptr %t793
  store %"compiler/bindgen:Translation" %t794, ptr %l334
  %t796 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l334)
  store %"compiler/bindgen:Translation" %t796, ptr %l336
  br label %bb194
bb194:
  %t797 = load %"compiler/bindgen:Translation", ptr %l336
  store %"compiler/bindgen:Translation" %t797, ptr %l334
  %t798 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t800 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t798)
  store i32 %t800, ptr %l338
  %t801 = icmp ne i32 %t800, 0
  br i1 %t801, label %bb196, label %ok.802, !prof !99
ok.802:
  br label %bb195
bb195:
  br label %bb200
bb196:
  %t803 = load i32, ptr %l338, !tbaa !23
  %t804 = ashr i32 %t803, 16
  %t806 = icmp eq i32 %t804, 1
  store i1 %t806, ptr %l340, !tbaa !21
  %t807 = load i32, ptr %l338, !tbaa !23
  %t808 = ashr i32 %t807, 16
  %t810 = icmp eq i32 %t808, 1
  br i1 %t810, label %bb197, label %bb198
bb197:
  call void @__olang_errpay_pop()
  br label %bb198
bb198:
  br label %bb199
bb199:
  br label %bb200
bb200:
  call void @__olang_scope_close(ptr %s0)
  %t812 = load %"compiler/bindgen:Translation", ptr %l334
  store %"compiler/bindgen:Translation" %t812, ptr %rv
  br label %ret
bb201:
  %t813 = ptrtoint ptr %v6 to i64
  store i64 %t813, ptr %l343, !tbaa !24
  %t814 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e0
  br i1 %t814, label %bb202, label %bb203
bb202:
  %t816 = call ptr @__olang_region_make(ptr %v6)
  %t817 = ptrtoint ptr %t816 to i64
  store i64 %t817, ptr %l343, !tbaa !24
  br label %bb203
bb203:
  %t818 = load ptr, ptr %lp10
  %t819 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t820 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t821 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t823 = extractvalue { i64, ptr } %t819, 1
  %t824 = extractvalue { i64, ptr } %t819, 0
  %t825 = add i64 %t821, %t824
  %t826 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t827 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t828 = add i64 %t825, %t827
  %t829 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t828)
  call void @olang_textcopy(ptr %t829, ptr %t820, i64 %t821)
  %t830 = getelementptr i8, ptr %t829, i64 %t821
  call void @olang_textcopy(ptr %t830, ptr %t823, i64 %t824)
  %t831 = getelementptr i8, ptr %t830, i64 %t824
  call void @olang_textcopy(ptr %t831, ptr %t826, i64 %t827)
  %t832 = insertvalue { i64, ptr } undef, i64 %t828, 0
  %t833 = insertvalue { i64, ptr } %t832, ptr %t829, 1
  %t835 = extractvalue { i64, ptr } %t833, 0
  %t836 = extractvalue { i64, ptr } %t833, 1
  %t837 = mul i64 %t835, 1
  %t838 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t837)
  call void @llvm.memcpy.p0.p0.i64(ptr %t838, ptr %t836, i64 %t837, i1 false)
  %t839 = insertvalue { i64, ptr } undef, i64 %t835, 0
  %t840 = insertvalue { i64, ptr } %t839, ptr %t838, 1
  %t841 = load i64, ptr %l343
  %t842 = inttoptr i64 %t841 to ptr
  %t845 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrite(ptr %v6, ptr %s0, ptr %t842, ptr %t818, { i64, ptr } %t840)
  store { i64, ptr } %t845, ptr %l349
  br label %bb204
bb204:
  %t846 = load { i64, ptr }, ptr %l349, !tbaa !27
  %t847 = load i64, ptr %l343
  %t848 = inttoptr i64 %t847 to ptr
  %t849 = extractvalue { i64, ptr } %t846, 0
  %t850 = extractvalue { i64, ptr } %t846, 1
  %t851 = mul i64 %t849, 1
  %t852 = call ptr @__olang_scope_alloc(ptr %t848, i64 %t851)
  call void @llvm.memcpy.p0.p0.i64(ptr %t852, ptr %t850, i64 %t851, i1 false)
  %t853 = insertvalue { i64, ptr } undef, i64 %t849, 0
  %t854 = insertvalue { i64, ptr } %t853, ptr %t852, 1
  %t855 = load ptr, ptr %lp6
  %t856 = getelementptr %"compiler/bindgen:Translation", ptr %t855, i32 0, i32 0
  %t857 = load { i64, ptr }, ptr %t856, !tbaa !27
  store { i64, ptr } %t857, ptr %l351, !tbaa !27
  %t859 = load ptr, ptr %lp6
  %t860 = getelementptr %"compiler/bindgen:Translation", ptr %t859, i32 0, i32 0
  store { i64, ptr } %t854, ptr %t860, !tbaa !27
  %t861 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e0
  br i1 %t861, label %bb205, label %bb206
bb205:
  %t863 = load { i64, ptr }, ptr %l351
  %t864 = extractvalue { i64, ptr } %t863, 1
  call void @__olang_region_release(ptr %t864)
  store { i64, ptr } zeroinitializer, ptr %l351
  br label %bb206
bb206:
  %t865 = load ptr, ptr %lp10
  %t866 = getelementptr %"compiler/bindgen:gen", ptr %t865, i32 0, i32 20
  %t868 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v6, ptr %t866)
  store i64 %t868, ptr %l354
  br label %bb207
bb207:
  %t869 = load i64, ptr %l354, !tbaa !24
  %t870 = icmp sgt i64 %t869, 0
  br i1 %t870, label %bb208, label %bb209
bb208:
  store i1 true, ptr %l356, !tbaa !21
  br label %bb211
bb209:
  %t872 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t874 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t872, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t874, ptr %l358
  br label %bb210
bb210:
  %t875 = load i1, ptr %l358, !tbaa !21
  %t876 = xor i1 %t875, true
  store i1 %t876, ptr %l356, !tbaa !21
  br label %bb211
bb211:
  %t878 = load i1, ptr %l356, !tbaa !21
  br i1 %t878, label %bb212, label %bb213
bb212:
  store %olang.scope zeroinitializer, ptr %s51
  %t879 = ptrtoint ptr %v6 to i64
  store i64 %t879, ptr %l360, !tbaa !24
  %t880 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e1
  br i1 %t880, label %bb214, label %bb215
bb213:
  br label %bb219
bb214:
  %t882 = call ptr @__olang_region_make(ptr %v6)
  %t883 = ptrtoint ptr %t882 to i64
  store i64 %t883, ptr %l360, !tbaa !24
  br label %bb215
bb215:
  %t884 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t884, ptr %l362, !tbaa !27
  %t885 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t885, ptr %l363, !tbaa !27
  %t886 = load ptr, ptr %lp10
  %t887 = getelementptr %"compiler/bindgen:gen", ptr %t886, i32 0, i32 20
  %t889 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v6, ptr %s51, ptr %t887)
  store { i64, ptr } %t889, ptr %l365
  br label %bb216
bb216:
  %t890 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t891 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t892 = load { i64, ptr }, ptr %l362, !tbaa !27
  %t893 = extractvalue { i64, ptr } %t892, 1
  %t894 = extractvalue { i64, ptr } %t892, 0
  %t895 = add i64 %t891, %t894
  %t896 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t897 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t898 = add i64 %t895, %t897
  %t899 = load { i64, ptr }, ptr %l363, !tbaa !27
  %t900 = extractvalue { i64, ptr } %t899, 1
  %t901 = extractvalue { i64, ptr } %t899, 0
  %t902 = add i64 %t898, %t901
  %t903 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t904 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t905 = add i64 %t902, %t904
  %t906 = load { i64, ptr }, ptr %l365, !tbaa !27
  %t907 = extractvalue { i64, ptr } %t906, 1
  %t908 = extractvalue { i64, ptr } %t906, 0
  %t909 = add i64 %t905, %t908
  %t910 = load i64, ptr %l360
  %t911 = inttoptr i64 %t910 to ptr
  %t912 = call ptr @__olang_scope_alloc(ptr %t911, i64 %t909)
  call void @olang_textcopy(ptr %t912, ptr %t890, i64 %t891)
  %t913 = getelementptr i8, ptr %t912, i64 %t891
  call void @olang_textcopy(ptr %t913, ptr %t893, i64 %t894)
  %t914 = getelementptr i8, ptr %t913, i64 %t894
  call void @olang_textcopy(ptr %t914, ptr %t896, i64 %t897)
  %t915 = getelementptr i8, ptr %t914, i64 %t897
  call void @olang_textcopy(ptr %t915, ptr %t900, i64 %t901)
  %t916 = getelementptr i8, ptr %t915, i64 %t901
  call void @olang_textcopy(ptr %t916, ptr %t903, i64 %t904)
  %t917 = getelementptr i8, ptr %t916, i64 %t904
  call void @olang_textcopy(ptr %t917, ptr %t907, i64 %t908)
  %t918 = insertvalue { i64, ptr } undef, i64 %t909, 0
  %t919 = insertvalue { i64, ptr } %t918, ptr %t912, 1
  %t921 = load i64, ptr %l360
  %t922 = inttoptr i64 %t921 to ptr
  %t923 = extractvalue { i64, ptr } %t919, 0
  %t924 = extractvalue { i64, ptr } %t919, 1
  %t925 = mul i64 %t923, 1
  %t926 = call ptr @__olang_scope_alloc(ptr %t922, i64 %t925)
  call void @llvm.memcpy.p0.p0.i64(ptr %t926, ptr %t924, i64 %t925, i1 false)
  %t927 = insertvalue { i64, ptr } undef, i64 %t923, 0
  %t928 = insertvalue { i64, ptr } %t927, ptr %t926, 1
  %t929 = load ptr, ptr %lp6
  %t930 = getelementptr %"compiler/bindgen:Translation", ptr %t929, i32 0, i32 1
  %t931 = load { i64, ptr }, ptr %t930, !tbaa !27
  store { i64, ptr } %t931, ptr %l368, !tbaa !27
  %t933 = load ptr, ptr %lp6
  %t934 = getelementptr %"compiler/bindgen:Translation", ptr %t933, i32 0, i32 1
  store { i64, ptr } %t928, ptr %t934, !tbaa !27
  %t935 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e1
  br i1 %t935, label %bb217, label %bb218
bb217:
  %t937 = load { i64, ptr }, ptr %l368
  %t938 = extractvalue { i64, ptr } %t937, 1
  call void @__olang_region_release(ptr %t938)
  store { i64, ptr } zeroinitializer, ptr %l368
  br label %bb218
bb218:
  call void @__olang_scope_close(ptr %s51)
  br label %bb219
bb219:
  %t939 = load ptr, ptr %lp6
  %t940 = load %"compiler/bindgen:Translation", ptr %t939
  store %"compiler/bindgen:Translation" %t940, ptr %l370
  %t942 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l370)
  store %"compiler/bindgen:Translation" %t942, ptr %l372
  br label %bb220
bb220:
  %t943 = load %"compiler/bindgen:Translation", ptr %l372
  store %"compiler/bindgen:Translation" %t943, ptr %l370
  %t944 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t946 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t944)
  store i32 %t946, ptr %l374
  %t947 = icmp ne i32 %t946, 0
  br i1 %t947, label %bb222, label %ok.948, !prof !99
ok.948:
  br label %bb221
bb221:
  br label %bb226
bb222:
  %t949 = load i32, ptr %l374, !tbaa !23
  %t950 = ashr i32 %t949, 16
  %t952 = icmp eq i32 %t950, 1
  store i1 %t952, ptr %l376, !tbaa !21
  %t953 = load i32, ptr %l374, !tbaa !23
  %t954 = ashr i32 %t953, 16
  %t956 = icmp eq i32 %t954, 1
  br i1 %t956, label %bb223, label %bb224
bb223:
  call void @__olang_errpay_pop()
  br label %bb224
bb224:
  br label %bb225
bb225:
  br label %bb226
bb226:
  call void @__olang_scope_close(ptr %s0)
  %t958 = load %"compiler/bindgen:Translation", ptr %l370
  store %"compiler/bindgen:Translation" %t958, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:Translation", ptr %rv
  ret %"compiler/bindgen:Translation" %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ebitfieldType(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l3 = alloca i1
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp eq i64 %t5, 1
  br i1 %t7, label %bb4, label %bb5
bb3:
  br label %bb7
bb4:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t9, ptr %l6, !tbaa !27
  br label %bb6
bb5:
  %t11 = load i64, ptr %l1, !tbaa !24
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t15 = call i64 @__olang_fmt_i64(ptr null, i64 %t11)
  %t16 = add i64 %t13, %t15
  %t17 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t12, i64 %t13)
  %t18 = getelementptr i8, ptr %t17, i64 %t13
  %t19 = call i64 @__olang_fmt_i64(ptr %t18, i64 %t11)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t17, 1
  store { i64, ptr } %t21, ptr %l6, !tbaa !27
  br label %bb6
bb6:
  %t23 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  store i64 %t24, ptr %l11, !tbaa !24
  %t25 = load i64, ptr %l11, !tbaa !24
  %t26 = mul i64 %t25, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l12, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = load i64, ptr %l11, !tbaa !24
  %t35 = mul i64 %t34, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t31, ptr %t33, i64 %t35, i1 false)
  %t36 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t36, ptr %l6, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t37 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t37, ptr %rv
  br label %ret
bb7:
  %t38 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t38, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t40, ptr %l14
  br label %bb8
bb8:
  %t41 = load i1, ptr %l14, !tbaa !21
  br i1 %t41, label %bb9, label %bb10
bb9:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l15, !tbaa !27
  br label %bb11
bb10:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l15, !tbaa !27
  br label %bb11
bb11:
  %t42 = load i64, ptr %l1, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t43, 1
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t47 = call i64 @__olang_fmt_i64(ptr null, i64 %t42)
  %t48 = add i64 %t45, %t47
  %t49 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t48)
  call void @olang_textcopy(ptr %t49, ptr %t44, i64 %t45)
  %t50 = getelementptr i8, ptr %t49, i64 %t45
  %t51 = call i64 @__olang_fmt_i64(ptr %t50, i64 %t42)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t49, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t53, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fbindgen_2ecPrec(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l3 = alloca i1
  %l5 = alloca i1
  %l7 = alloca i1
  %l9 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i1
  %l15 = alloca i1
  %l17 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %l23 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l31 = alloca i1
  %l33 = alloca i1
  %l35 = alloca i1
  %l37 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i64 1, ptr %l1, !tbaa !24
  br label %bb79
bb5:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t7, ptr %l5
  br label %bb6
bb6:
  %t8 = load i1, ptr %l5, !tbaa !21
  br i1 %t8, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i64 2, ptr %l1, !tbaa !24
  br label %bb79
bb10:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t11, ptr %l7
  br label %bb11
bb11:
  %t12 = load i1, ptr %l7, !tbaa !21
  br i1 %t12, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i64 3, ptr %l1, !tbaa !24
  br label %bb79
bb15:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t15, ptr %l9
  br label %bb16
bb16:
  %t16 = load i1, ptr %l9, !tbaa !21
  br i1 %t16, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i64 4, ptr %l1, !tbaa !24
  br label %bb79
bb20:
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t17, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t19, ptr %l11
  br label %bb21
bb21:
  %t20 = load i1, ptr %l11, !tbaa !21
  br i1 %t20, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i64 5, ptr %l1, !tbaa !24
  br label %bb79
bb25:
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store i1 %t23, ptr %l13
  br label %bb26
bb26:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb27, label %bb28
bb27:
  br label %bb32
bb28:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t25, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t27, ptr %l15
  br label %bb29
bb29:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i64 6, ptr %l1, !tbaa !24
  br label %bb79
bb33:
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t31, ptr %l17
  br label %bb34
bb34:
  %t32 = load i1, ptr %l17, !tbaa !21
  br i1 %t32, label %bb35, label %bb36
bb35:
  br label %bb46
bb36:
  %t33 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t35 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t33, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t35, ptr %l19
  br label %bb37
bb37:
  %t36 = load i1, ptr %l19, !tbaa !21
  br i1 %t36, label %bb38, label %bb39
bb38:
  br label %bb46
bb39:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t39 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t37, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t39, ptr %l21
  br label %bb40
bb40:
  %t40 = load i1, ptr %l21, !tbaa !21
  br i1 %t40, label %bb41, label %bb42
bb41:
  br label %bb46
bb42:
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t41, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t43, ptr %l23
  br label %bb43
bb43:
  %t44 = load i1, ptr %l23, !tbaa !21
  br i1 %t44, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  store i64 7, ptr %l1, !tbaa !24
  br label %bb79
bb47:
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t47, ptr %l25
  br label %bb48
bb48:
  %t48 = load i1, ptr %l25, !tbaa !21
  br i1 %t48, label %bb49, label %bb50
bb49:
  br label %bb54
bb50:
  %t49 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t49, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t51, ptr %l27
  br label %bb51
bb51:
  %t52 = load i1, ptr %l27, !tbaa !21
  br i1 %t52, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  store i64 8, ptr %l1, !tbaa !24
  br label %bb79
bb55:
  %t53 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t53, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i1 %t55, ptr %l29
  br label %bb56
bb56:
  %t56 = load i1, ptr %l29, !tbaa !21
  br i1 %t56, label %bb57, label %bb58
bb57:
  br label %bb62
bb58:
  %t57 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t59, ptr %l31
  br label %bb59
bb59:
  %t60 = load i1, ptr %l31, !tbaa !21
  br i1 %t60, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  store i64 9, ptr %l1, !tbaa !24
  br label %bb79
bb63:
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t61, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) })
  store i1 %t63, ptr %l33
  br label %bb64
bb64:
  %t64 = load i1, ptr %l33, !tbaa !21
  br i1 %t64, label %bb65, label %bb66
bb65:
  br label %bb73
bb66:
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t67 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t65, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t67, ptr %l35
  br label %bb67
bb67:
  %t68 = load i1, ptr %l35, !tbaa !21
  br i1 %t68, label %bb68, label %bb69
bb68:
  br label %bb73
bb69:
  %t69 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t71 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t69, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i1 %t71, ptr %l37
  br label %bb70
bb70:
  %t72 = load i1, ptr %l37, !tbaa !21
  br i1 %t72, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  store i64 10, ptr %l1, !tbaa !24
  br label %bb79
bb74:
  br i1 true, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  store i64 0, ptr %l1, !tbaa !24
  br label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_760c7c7ac1a62521_16c6052ca99c0395)
  unreachable
bb79:
  call void @__olang_scope_close(ptr %s0)
  %t73 = load i64, ptr %l1, !tbaa !24
  store i64 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, i64 } @compiler_2fbindgen_2echarValue(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i8
  %l7 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i32
  %l47 = alloca i64
  %l48 = alloca i32
  %l51 = alloca i1
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca i32
  %l64 = alloca i64
  %l65 = alloca i32
  %l67 = alloca i64
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp slt i64 %t3, 3
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t8 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t8, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t14 = sub i64 %t12, 1
  store i64 %t14, ptr %l10, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l11, !tbaa !24
  %t17 = icmp sge i64 1, 0
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l10, !tbaa !24
  %t20 = icmp sle i64 1, %t19
  br i1 %t20, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_e777242b492df290_2cbbd43a2df6cacc)
  unreachable
bb6:
  %t22 = load i64, ptr %l10, !tbaa !24
  %t23 = load i64, ptr %l11, !tbaa !24
  %t24 = icmp sle i64 %t22, %t23
  br i1 %t24, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_e777242b492df290_2cbbd43a2df6cacc)
  unreachable
bb8:
  %t26 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l10, !tbaa !24
  %t29 = getelementptr i8, ptr %t27, i64 1
  %t30 = sub i64 %t28, 1
  %t31 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t29, 1
  store { i64, ptr } %t32, ptr %l1, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t34, ptr %l16, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr i8, ptr %t36, i64 0
  %t38 = load i8, ptr %t37, !tbaa !32
  %t40 = icmp ne i8 %t38, 92
  br i1 %t40, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_e777242b492df290_2cbbd43a2df6cacc)
  unreachable
bb10:
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = icmp ne i64 %t44, 1
  br i1 %t46, label %bb12, label %bb13
bb11:
  br label %bb15
bb12:
  %t49 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t49, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t50 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t50, ptr %l23, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i8, ptr %t52, i64 0
  %t54 = load i8, ptr %t53, !tbaa !32
  %t57 = zext i8 %t54 to i64
  %t59 = insertvalue { i32, i64 } zeroinitializer, i64 %t57, 1
  store { i32, i64 } %t59, ptr %rv
  br label %ret
bb15:
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t64 = icmp slt i64 %t62, 2
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t67 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t67, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t68 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t68, ptr %l31, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i8, ptr %t70, i64 1
  %t72 = load i8, ptr %t71, !tbaa !32
  store i8 %t72, ptr %l2, !tbaa !22
  %t74 = load i8, ptr %l2, !tbaa !22
  %t76 = icmp eq i8 %t74, 120
  br i1 %t76, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s5
  %t78 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t78, ptr %l36, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t79, 0
  store i64 %t82, ptr %l39, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 0
  store i64 %t84, ptr %l40, !tbaa !24
  %t85 = icmp sge i64 2, 0
  br i1 %t85, label %bb21, label %bb22
bb20:
  br label %bb33
bb21:
  %t87 = load i64, ptr %l39, !tbaa !24
  %t88 = icmp sle i64 2, %t87
  br i1 %t88, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_aa3527431bc6906d_d98aa20bf76f5ef9)
  unreachable
bb23:
  %t90 = load i64, ptr %l39, !tbaa !24
  %t91 = load i64, ptr %l40, !tbaa !24
  %t92 = icmp sle i64 %t90, %t91
  br i1 %t92, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_aa3527431bc6906d_d98aa20bf76f5ef9)
  unreachable
bb25:
  %t94 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = load i64, ptr %l39, !tbaa !24
  %t97 = getelementptr i8, ptr %t95, i64 2
  %t98 = sub i64 %t96, 2
  %t99 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t97, 1
  store { i64, ptr } %t100, ptr %l44, !tbaa !27
  %t101 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s5, i64 16)
  %t102 = extractvalue { i32, i64 } %t101, 1
  %t103 = extractvalue { i32, i64 } %t101, 0
  store i32 %t103, ptr %l46
  %t104 = icmp ne i32 %t103, 0
  br i1 %t104, label %bb28, label %ok.105, !prof !99
ok.105:
  store i64 %t102, ptr %l45
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_aa3527431bc6906d_d98aa20bf76f5ef9)
  unreachable
bb27:
  %t106 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t107 = load i64, ptr %l45, !tbaa !24
  %t108 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t106, i64 %t107)
  %t109 = extractvalue { i32, i64 } %t108, 1
  %t110 = extractvalue { i32, i64 } %t108, 0
  store i32 %t110, ptr %l48
  %t111 = icmp ne i32 %t110, 0
  br i1 %t111, label %bb31, label %ok.112, !prof !99
ok.112:
  store i64 %t109, ptr %l47
  br label %bb30
bb28:
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s5)
  %t114 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t114, ptr %rv
  br label %ret
bb30:
  %t115 = load i64, ptr %l47, !tbaa !24
  store i64 %t115, ptr %l35, !tbaa !24
  br label %bb32
bb31:
  br label %bb29
bb32:
  call void @__olang_scope_close(ptr %s5)
  %t116 = load i64, ptr %l35, !tbaa !24
  %t117 = insertvalue { i32, i64 } zeroinitializer, i64 %t116, 1
  store { i32, i64 } %t117, ptr %rv
  br label %ret
bb33:
  %t118 = load i8, ptr %l2, !tbaa !22
  %t120 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t118)
  store i1 %t120, ptr %l51
  br label %bb34
bb34:
  %t121 = load i1, ptr %l51, !tbaa !21
  br i1 %t121, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s7
  %t122 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t122, ptr %l53, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t123, 0
  store i64 %t126, ptr %l56, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 0
  store i64 %t128, ptr %l57, !tbaa !24
  %t129 = icmp sge i64 1, 0
  br i1 %t129, label %bb37, label %bb38
bb36:
  br label %bb49
bb37:
  %t131 = load i64, ptr %l56, !tbaa !24
  %t132 = icmp sle i64 1, %t131
  br i1 %t132, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_5d1582c4176ede0e_4f5ef5c07175765a)
  unreachable
bb39:
  %t134 = load i64, ptr %l56, !tbaa !24
  %t135 = load i64, ptr %l57, !tbaa !24
  %t136 = icmp sle i64 %t134, %t135
  br i1 %t136, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_5d1582c4176ede0e_4f5ef5c07175765a)
  unreachable
bb41:
  %t138 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = load i64, ptr %l56, !tbaa !24
  %t141 = getelementptr i8, ptr %t139, i64 1
  %t142 = sub i64 %t140, 1
  %t143 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t141, 1
  store { i64, ptr } %t144, ptr %l61, !tbaa !27
  %t145 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s7, i64 8)
  %t146 = extractvalue { i32, i64 } %t145, 1
  %t147 = extractvalue { i32, i64 } %t145, 0
  store i32 %t147, ptr %l63
  %t148 = icmp ne i32 %t147, 0
  br i1 %t148, label %bb44, label %ok.149, !prof !99
ok.149:
  store i64 %t146, ptr %l62
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_5d1582c4176ede0e_4f5ef5c07175765a)
  unreachable
bb43:
  %t150 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t151 = load i64, ptr %l62, !tbaa !24
  %t152 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t150, i64 %t151)
  %t153 = extractvalue { i32, i64 } %t152, 1
  %t154 = extractvalue { i32, i64 } %t152, 0
  store i32 %t154, ptr %l65
  %t155 = icmp ne i32 %t154, 0
  br i1 %t155, label %bb47, label %ok.156, !prof !99
ok.156:
  store i64 %t153, ptr %l64
  br label %bb46
bb44:
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s7)
  %t158 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t158, ptr %rv
  br label %ret
bb46:
  %t159 = load i64, ptr %l64, !tbaa !24
  store i64 %t159, ptr %l52, !tbaa !24
  br label %bb48
bb47:
  br label %bb45
bb48:
  call void @__olang_scope_close(ptr %s7)
  %t160 = load i64, ptr %l52, !tbaa !24
  %t161 = insertvalue { i32, i64 } zeroinitializer, i64 %t160, 1
  store { i32, i64 } %t161, ptr %rv
  br label %ret
bb49:
  %t162 = load i8, ptr %l2, !tbaa !22
  %t164 = icmp eq i8 %t162, 110
  br i1 %t164, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store i64 10, ptr %l67, !tbaa !24
  br label %bb86
bb53:
  %t166 = load i8, ptr %l2, !tbaa !22
  %t168 = icmp eq i8 %t166, 116
  br i1 %t168, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  store i64 9, ptr %l67, !tbaa !24
  br label %bb86
bb57:
  %t170 = load i8, ptr %l2, !tbaa !22
  %t172 = icmp eq i8 %t170, 114
  br i1 %t172, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  store i64 13, ptr %l67, !tbaa !24
  br label %bb86
bb61:
  %t174 = load i8, ptr %l2, !tbaa !22
  %t176 = icmp eq i8 %t174, 48
  br i1 %t176, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb86
bb65:
  %t178 = load i8, ptr %l2, !tbaa !22
  %t180 = icmp eq i8 %t178, 97
  br i1 %t180, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb69
bb68:
  store i64 7, ptr %l67, !tbaa !24
  br label %bb86
bb69:
  %t182 = load i8, ptr %l2, !tbaa !22
  %t184 = icmp eq i8 %t182, 98
  br i1 %t184, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  store i64 8, ptr %l67, !tbaa !24
  br label %bb86
bb73:
  %t186 = load i8, ptr %l2, !tbaa !22
  %t188 = icmp eq i8 %t186, 102
  br i1 %t188, label %bb74, label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb77
bb76:
  store i64 12, ptr %l67, !tbaa !24
  br label %bb86
bb77:
  %t190 = load i8, ptr %l2, !tbaa !22
  %t192 = icmp eq i8 %t190, 118
  br i1 %t192, label %bb78, label %bb79
bb78:
  br label %bb80
bb79:
  br label %bb81
bb80:
  store i64 11, ptr %l67, !tbaa !24
  br label %bb86
bb81:
  br i1 true, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  %t194 = load i8, ptr %l2, !tbaa !22
  %t197 = zext i8 %t194 to i64
  store i64 %t197, ptr %l67, !tbaa !24
  br label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_c1a7519d080599a4_d00fb28b8b3fdec0)
  unreachable
bb86:
  %t199 = load i64, ptr %l67, !tbaa !24
  %t200 = insertvalue { i32, i64 } zeroinitializer, i64 %t199, 1
  store { i32, i64 } %t200, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i32, %"std/os:Output" } @compiler_2fbindgen_2eclangSays(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca %"std/os:Output"
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/os:Output"
  %l6 = alloca i32
  %l8 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"std/os:Output" }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t4 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %s0, ptr %s0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %t3, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  %t5 = extractvalue { i32, %"std/os:Output" } %t4, 1
  %t6 = extractvalue { i32, %"std/os:Output" } %t4, 0
  store i32 %t6, ptr %l6
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store %"std/os:Output" %t5, ptr %l5
  br label %bb1
bb1:
  %t9 = load %"std/os:Output", ptr %l5
  store %"std/os:Output" %t9, ptr %l2
  br label %bb6
bb2:
  %t10 = load i32, ptr %l6, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  store i1 %t13, ptr %l8, !tbaa !21
  %t14 = load i32, ptr %l6, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  br i1 %t17, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t20 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 65536, 0
  store { i32, %"std/os:Output" } %t20, ptr %rv
  br label %ret
bb6:
  %t21 = load %"std/os:Output", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  %t24 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t21, 1
  store { i32, %"std/os:Output" } %t24, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/os:Output" }, ptr %rv
  ret { i32, %"std/os:Output" } %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:cparse", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/bindgen:cparse", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp slt i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/bindgen:cparse", ptr %t15, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l9, !tbaa !27
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/bindgen:cparse", ptr %t19, i32 0, i32 2
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %t25, i64 %t22
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !37
  %t29 = extractvalue { i64, ptr } %t27, 1
  %t30 = extractvalue { i64, ptr } %t27, 0
  %t31 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t29, i64 %t30)
  %t32 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l7, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t35, ptr %l7, !tbaa !27
  br label %bb3
bb3:
  %t37 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l16, !tbaa !24
  %t39 = load i64, ptr %l16, !tbaa !24
  %t40 = mul i64 %t39, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t40)
  %t42 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  store { i64, ptr } %t43, ptr %l17, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = load i64, ptr %l16, !tbaa !24
  %t49 = mul i64 %t48, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t45, ptr %t47, i64 %t49, i1 false)
  %t50 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t50, ptr %l7, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t51, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l5 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t6 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v1, ptr %a0, i32 6, { i64, ptr } %a1, i64 -1, i1 false, i64 0)
  store i64 %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/bindgen:cx" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/bindgen:cx"
  %l6 = alloca i64
  %l12 = alloca %"compiler/bindgen:cx"
  %rv = alloca %"compiler/bindgen:cx"
  store ptr %a0, ptr %l0
  store %"compiler/bindgen:cx" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 1
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t6 = icmp eq i64 %t2, %t3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load %"compiler/bindgen:cx", ptr %l1
  store %"compiler/bindgen:cx" %t8, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = ptrtoint ptr %v2 to i64
  store i64 %t10, ptr %l6, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = call ptr @__olang_region_make(ptr %v2)
  %t14 = ptrtoint ptr %t13 to i64
  store i64 %t14, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t15 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t20 = extractvalue { i64, ptr } %t16, 1
  %t21 = extractvalue { i64, ptr } %t16, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = load i64, ptr %l6
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t25)
  call void @olang_textcopy(ptr %t28, ptr %t17, i64 %t18)
  %t29 = getelementptr i8, ptr %t28, i64 %t18
  call void @olang_textcopy(ptr %t29, ptr %t20, i64 %t21)
  %t30 = getelementptr i8, ptr %t29, i64 %t21
  call void @olang_textcopy(ptr %t30, ptr %t23, i64 %t24)
  %t31 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t28, 1
  %t34 = load i64, ptr %l6
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t45 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t41, i64 %t42, i64 -1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t45, ptr %l12
  br label %bb6
bb6:
  %t46 = load %"compiler/bindgen:cx", ptr %l12
  store %"compiler/bindgen:cx" %t46, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cx", ptr %rv
  ret %"compiler/bindgen:cx" %rr
}

define dso_local %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecLead(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/bindgen:cx" %a1, %"compiler/bindgen:cx" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/bindgen:cx"
  %l2 = alloca %"compiler/bindgen:cx"
  %l6 = alloca i1
  %l14 = alloca i1
  %l22 = alloca i1
  %l27 = alloca %"compiler/bindgen:cx"
  %l29 = alloca %"compiler/bindgen:cx"
  %rv = alloca %"compiler/bindgen:cx"
  store ptr %a0, ptr %l0
  store %"compiler/bindgen:cx" %a1, ptr %l1
  store %"compiler/bindgen:cx" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 1
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2fbindgen_2eKVar, !tbaa !24
  %t6 = icmp eq i64 %t2, %t3
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t8 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 1
  %t9 = load i64, ptr %t8, !tbaa !24
  %t10 = load i64, ptr @G_2ecompiler_2fbindgen_2eKType, !tbaa !24
  %t13 = icmp eq i64 %t9, %t10
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t16 = load %"compiler/bindgen:cx", ptr %l1
  store %"compiler/bindgen:cx" %t16, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t18 = getelementptr %"compiler/bindgen:cx", ptr %l2, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t20 = load i64, ptr @G_2ecompiler_2fbindgen_2eKVar, !tbaa !24
  %t23 = icmp eq i64 %t19, %t20
  br i1 %t23, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb9
bb8:
  %t25 = getelementptr %"compiler/bindgen:cx", ptr %l2, i32 0, i32 1
  %t26 = load i64, ptr %t25, !tbaa !24
  %t27 = load i64, ptr @G_2ecompiler_2fbindgen_2eKType, !tbaa !24
  %t30 = icmp eq i64 %t26, %t27
  store i1 %t30, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l14, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t33 = load %"compiler/bindgen:cx", ptr %l2
  store %"compiler/bindgen:cx" %t33, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t35 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 1
  %t36 = load i64, ptr %t35, !tbaa !24
  %t37 = load i64, ptr @G_2ecompiler_2fbindgen_2eKFloat, !tbaa !24
  %t40 = icmp eq i64 %t36, %t37
  br i1 %t40, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb15
bb14:
  %t42 = getelementptr %"compiler/bindgen:cx", ptr %l2, i32 0, i32 1
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = load i64, ptr @G_2ecompiler_2fbindgen_2eKFloat, !tbaa !24
  %t47 = icmp eq i64 %t43, %t44
  store i1 %t47, ptr %l22, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l22, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  %t50 = load i64, ptr @G_2ecompiler_2fbindgen_2eKFloat, !tbaa !24
  %t52 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v3, ptr %v3, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) }, i64 %t50)
  store %"compiler/bindgen:cx" %t52, ptr %l27
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t53 = load %"compiler/bindgen:cx", ptr %l27
  store %"compiler/bindgen:cx" %t53, ptr %rv
  br label %ret
bb19:
  %t54 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t56 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v3, ptr %v3, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d66, i32 0, i32 1) }, i64 %t54)
  store %"compiler/bindgen:cx" %t56, ptr %l29
  br label %bb20
bb20:
  %t57 = load %"compiler/bindgen:cx", ptr %l29
  store %"compiler/bindgen:cx" %t57, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cx", ptr %rv
  ret %"compiler/bindgen:cx" %rr
}

define dso_local %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/bindgen:cx" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/bindgen:cx"
  %l6 = alloca i64
  %l12 = alloca %"compiler/bindgen:cx"
  %rv = alloca %"compiler/bindgen:cx"
  store ptr %a0, ptr %l0
  store %"compiler/bindgen:cx" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 1
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t6 = icmp ne i64 %t2, %t3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load %"compiler/bindgen:cx", ptr %l1
  store %"compiler/bindgen:cx" %t8, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = ptrtoint ptr %v2 to i64
  store i64 %t10, ptr %l6, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = call ptr @__olang_region_make(ptr %v2)
  %t14 = ptrtoint ptr %t13 to i64
  store i64 %t14, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t15 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t17 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t20 = extractvalue { i64, ptr } %t16, 1
  %t21 = extractvalue { i64, ptr } %t16, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = load i64, ptr %l6
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t25)
  call void @olang_textcopy(ptr %t28, ptr %t17, i64 %t18)
  %t29 = getelementptr i8, ptr %t28, i64 %t18
  call void @olang_textcopy(ptr %t29, ptr %t20, i64 %t21)
  %t30 = getelementptr i8, ptr %t29, i64 %t21
  call void @olang_textcopy(ptr %t30, ptr %t23, i64 %t24)
  %t31 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t28, 1
  %t34 = load i64, ptr %l6
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t45 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } %t41, i64 %t42)
  store %"compiler/bindgen:cx" %t45, ptr %l12
  br label %bb6
bb6:
  %t46 = load %"compiler/bindgen:cx", ptr %l12
  store %"compiler/bindgen:cx" %t46, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cx", ptr %rv
  ret %"compiler/bindgen:cx" %rr
}

define dso_local { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecPrimary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca %"compiler/bindgen:cx"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l12 = alloca i1
  %l14 = alloca i32
  %l16 = alloca ptr
  %l20 = alloca i1
  %l21 = alloca %"compiler/bindgen:cx"
  %l24 = alloca %"compiler/bindgen:cx"
  %l25 = alloca i32
  %l28 = alloca { i64, ptr }
  %l30 = alloca i1
  %l33 = alloca i32
  %l35 = alloca ptr
  %l40 = alloca i1
  %l41 = alloca i1
  %l44 = alloca %"compiler/bindgen:cx"
  %l47 = alloca %"compiler/bindgen:cx"
  %l48 = alloca i32
  %l52 = alloca i64
  %l54 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i32
  %l62 = alloca %"compiler/bindgen:cx"
  %l66 = alloca i32
  %l68 = alloca i64
  %l73 = alloca i64
  %l74 = alloca i32
  %l77 = alloca i64
  %l84 = alloca %"compiler/bindgen:cx"
  %l85 = alloca i64
  %l89 = alloca i64
  %l90 = alloca i32
  %l95 = alloca { i64, ptr }
  %l103 = alloca %"compiler/bindgen:cx"
  %l105 = alloca { i64, ptr }
  %l107 = alloca i1
  %l108 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l113 = alloca i32
  %l115 = alloca i1
  %l116 = alloca ptr
  %l117 = alloca i64
  %l122 = alloca i32
  %l124 = alloca ptr
  %l127 = alloca %"std/prelude/text:StringBuilder"
  %l133 = alloca { i64, ptr }
  %l135 = alloca i1
  %l141 = alloca { i64, ptr }
  %l143 = alloca i1
  %l145 = alloca ptr
  %l146 = alloca i64
  %l151 = alloca i32
  %l153 = alloca ptr
  %l157 = alloca ptr
  %l158 = alloca ptr
  %l159 = alloca %"compiler/bindgen:cx"
  %l162 = alloca %"compiler/bindgen:cx"
  %l163 = alloca i32
  %l165 = alloca %"compiler/bindgen:cx"
  %l169 = alloca ptr
  %l173 = alloca i64
  %l176 = alloca { i64, ptr }
  %l177 = alloca { i64, ptr }
  %l179 = alloca i1
  %l181 = alloca i64
  %l185 = alloca %"compiler/bindgen:cx"
  %l186 = alloca ptr
  %l187 = alloca i64
  %l192 = alloca i32
  %l195 = alloca %"compiler/bindgen:cx"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/bindgen:cx" }
  %t236 = alloca { { i64, ptr }, ptr }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %v2, ptr %t1)
  store { i64, ptr } %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t4, ptr %lp2
  %t5 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t6 = load ptr, ptr %lp2
  store { i64, ptr } %t5, ptr %t6, !tbaa !27
  %t7 = load ptr, ptr %lp2
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t8, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d69, i32 0, i32 1) })
  store i1 %t10, ptr %l12
  br label %bb2
bb2:
  %t11 = load i1, ptr %l12, !tbaa !21
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t12, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store i32 %t14, ptr %l14
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb6, label %ok.16, !prof !99
ok.16:
  br label %bb5
bb4:
  br label %bb8
bb5:
  br label %bb7
bb6:
  %t17 = load i32, ptr %l14, !tbaa !23
  %t18 = lshr i32 %t17, 16
  %t19 = and i32 %t17, 65535
  %t20 = icmp eq i32 %t18, 1
  %t21 = select i1 %t20, i32 1, i32 0
  %t22 = icmp eq i32 %t17, 0
  %t23 = shl i32 %t21, 16
  %t24 = or i32 %t23, %t19
  %t25 = select i1 %t22, i32 0, i32 %t24
  call void @__olang_scope_close(ptr %s0)
  %t27 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t25, 0
  store { i32, %"compiler/bindgen:cx" } %t27, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l16, !tbaa !29
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = getelementptr %"compiler/bindgen:cparse", ptr %t29, i32 0, i32 2
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = add i64 %t31, 1
  %t35 = load ptr, ptr %l16, !tbaa !29
  %t36 = getelementptr %"compiler/bindgen:cparse", ptr %t35, i32 0, i32 2
  store i64 %t33, ptr %t36, !tbaa !24
  %t37 = load ptr, ptr %lp2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t38, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) })
  store i1 %t40, ptr %l20
  br label %bb9
bb9:
  %t41 = load i1, ptr %l20, !tbaa !21
  br i1 %t41, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t46 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t42, ptr %t43)
  %t47 = extractvalue { i32, %"compiler/bindgen:cx" } %t46, 1
  %t48 = extractvalue { i32, %"compiler/bindgen:cx" } %t46, 0
  store i32 %t48, ptr %l25
  %t49 = icmp ne i32 %t48, 0
  br i1 %t49, label %bb13, label %ok.50, !prof !99
ok.50:
  store %"compiler/bindgen:cx" %t47, ptr %l24
  br label %bb12
bb11:
  br label %bb23
bb12:
  %t51 = load %"compiler/bindgen:cx", ptr %l24
  store %"compiler/bindgen:cx" %t51, ptr %l21
  br label %bb14
bb13:
  %t52 = load i32, ptr %l25, !tbaa !23
  %t53 = lshr i32 %t52, 16
  %t54 = and i32 %t52, 65535
  %t55 = icmp eq i32 %t53, 1
  %t56 = select i1 %t55, i32 1, i32 0
  %t57 = icmp eq i32 %t52, 0
  %t58 = shl i32 %t56, 16
  %t59 = or i32 %t58, %t54
  %t60 = select i1 %t57, i32 0, i32 %t59
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t62 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t60, 0
  store { i32, %"compiler/bindgen:cx" } %t62, ptr %rv
  br label %ret
bb14:
  %t63 = load %"compiler/bindgen:cx", ptr %l21
  store %"compiler/bindgen:cx" %t63, ptr %l3
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s2, ptr %t64)
  store { i64, ptr } %t66, ptr %l28
  br label %bb15
bb15:
  %t67 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  %t69 = extractvalue { i64, ptr } %t67, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t75 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t73, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) })
  store i1 %t75, ptr %l30
  br label %bb16
bb16:
  %t76 = load i1, ptr %l30, !tbaa !21
  %t77 = xor i1 %t76, true
  br i1 %t77, label %bb17, label %bb18
bb17:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t79, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d73, i32 0, i32 1) })
  store i32 %t81, ptr %l33
  %t82 = icmp ne i32 %t81, 0
  br i1 %t82, label %bb20, label %ok.83, !prof !99
ok.83:
  br label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb21
bb20:
  %t84 = load i32, ptr %l33, !tbaa !23
  %t85 = lshr i32 %t84, 16
  %t86 = and i32 %t84, 65535
  %t87 = icmp eq i32 %t85, 1
  %t88 = select i1 %t87, i32 1, i32 0
  %t89 = icmp eq i32 %t84, 0
  %t90 = shl i32 %t88, 16
  %t91 = or i32 %t90, %t86
  %t92 = select i1 %t89, i32 0, i32 %t91
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t94 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t92, 0
  store { i32, %"compiler/bindgen:cx" } %t94, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t95 = load ptr, ptr %l1, !tbaa !29
  store ptr %t95, ptr %l35, !tbaa !29
  %t96 = load ptr, ptr %l35, !tbaa !29
  %t97 = getelementptr %"compiler/bindgen:cparse", ptr %t96, i32 0, i32 2
  %t98 = load i64, ptr %t97, !tbaa !24
  %t100 = add i64 %t98, 1
  %t102 = load ptr, ptr %l35, !tbaa !29
  %t103 = getelementptr %"compiler/bindgen:cparse", ptr %t102, i32 0, i32 2
  store i64 %t100, ptr %t103, !tbaa !24
  %t104 = load %"compiler/bindgen:cx", ptr %l3
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t106 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t104, 1
  store { i32, %"compiler/bindgen:cx" } %t106, ptr %rv
  br label %ret
bb23:
  %t107 = load ptr, ptr %lp2
  %t108 = getelementptr { i64, ptr }, ptr %t107, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i8, ptr %t109, i64 0
  %t111 = load i8, ptr %t110, !tbaa !32
  %t113 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t111)
  store i1 %t113, ptr %l40
  br label %bb24
bb24:
  %t114 = load i1, ptr %l40, !tbaa !21
  br i1 %t114, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb27
bb26:
  %t115 = load ptr, ptr %lp2
  %t116 = getelementptr { i64, ptr }, ptr %t115, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr i8, ptr %t117, i64 0
  %t119 = load i8, ptr %t118, !tbaa !32
  %t121 = icmp eq i8 %t119, 46
  store i1 %t121, ptr %l41, !tbaa !21
  br label %bb27
bb27:
  %t123 = load i1, ptr %l41, !tbaa !21
  br i1 %t123, label %bb28, label %bb29
bb28:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %lp2
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  %t129 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNumber(ptr %v0, ptr %v2, ptr %v2, ptr %t124, { i64, ptr } %t126)
  %t130 = extractvalue { i32, %"compiler/bindgen:cx" } %t129, 1
  %t131 = extractvalue { i32, %"compiler/bindgen:cx" } %t129, 0
  store i32 %t131, ptr %l48
  %t132 = icmp ne i32 %t131, 0
  br i1 %t132, label %bb31, label %ok.133, !prof !99
ok.133:
  store %"compiler/bindgen:cx" %t130, ptr %l47
  br label %bb30
bb29:
  br label %bb33
bb30:
  %t134 = load %"compiler/bindgen:cx", ptr %l47
  store %"compiler/bindgen:cx" %t134, ptr %l44
  br label %bb32
bb31:
  %t135 = load i32, ptr %l48, !tbaa !23
  %t136 = lshr i32 %t135, 16
  %t137 = and i32 %t135, 65535
  %t138 = icmp eq i32 %t136, 1
  %t139 = select i1 %t138, i32 1, i32 0
  %t140 = icmp eq i32 %t135, 0
  %t141 = shl i32 %t139, 16
  %t142 = or i32 %t141, %t137
  %t143 = select i1 %t140, i32 0, i32 %t142
  call void @__olang_scope_close(ptr %s0)
  %t145 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t143, 0
  store { i32, %"compiler/bindgen:cx" } %t145, ptr %rv
  br label %ret
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t146 = load %"compiler/bindgen:cx", ptr %l44
  %t147 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t146, 1
  store { i32, %"compiler/bindgen:cx" } %t147, ptr %rv
  br label %ret
bb33:
  %t148 = load ptr, ptr %lp2
  %t149 = getelementptr { i64, ptr }, ptr %t148, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i8, ptr %t150, i64 0
  %t152 = load i8, ptr %t151, !tbaa !32
  %t154 = icmp eq i8 %t152, 39
  br i1 %t154, label %bb34, label %bb35
bb34:
  %t156 = ptrtoint ptr %v2 to i64
  store i64 %t156, ptr %l52, !tbaa !24
  %t157 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t157, label %bb36, label %bb37
bb35:
  br label %bb42
bb36:
  %t159 = call ptr @__olang_region_make(ptr %v2)
  %t160 = ptrtoint ptr %t159 to i64
  store i64 %t160, ptr %l52, !tbaa !24
  br label %bb37
bb37:
  %t161 = load ptr, ptr %lp2
  %t162 = load { i64, ptr }, ptr %t161, !tbaa !27
  %t164 = call { i32, i64 } @compiler_2fbindgen_2echarValue(ptr %v2, { i64, ptr } %t162)
  %t165 = extractvalue { i32, i64 } %t164, 1
  %t166 = extractvalue { i32, i64 } %t164, 0
  store i32 %t166, ptr %l57
  %t167 = icmp ne i32 %t166, 0
  br i1 %t167, label %bb39, label %ok.168, !prof !99
ok.168:
  store i64 %t165, ptr %l56
  br label %bb38
bb38:
  %t169 = load i64, ptr %l56, !tbaa !24
  store i64 %t169, ptr %l54, !tbaa !24
  br label %bb40
bb39:
  %t170 = load i32, ptr %l57, !tbaa !23
  %t171 = lshr i32 %t170, 16
  %t172 = and i32 %t170, 65535
  %t173 = icmp eq i32 %t171, 1
  %t174 = select i1 %t173, i32 1, i32 0
  %t175 = icmp eq i32 %t170, 0
  %t176 = shl i32 %t174, 16
  %t177 = or i32 %t176, %t172
  %t178 = select i1 %t175, i32 0, i32 %t177
  call void @__olang_scope_close(ptr %s0)
  %t180 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t178, 0
  store { i32, %"compiler/bindgen:cx" } %t180, ptr %rv
  br label %ret
bb40:
  %t181 = load i64, ptr %l54, !tbaa !24
  %t182 = call i64 @__olang_fmt_i64(ptr null, i64 %t181)
  %t183 = load i64, ptr %l52
  %t184 = inttoptr i64 %t183 to ptr
  %t185 = call ptr @__olang_scope_alloc(ptr %t184, i64 %t182)
  %t186 = call i64 @__olang_fmt_i64(ptr %t185, i64 %t181)
  %t187 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t185, 1
  %t190 = load i64, ptr %l52
  %t191 = inttoptr i64 %t190 to ptr
  %t192 = extractvalue { i64, ptr } %t188, 0
  %t193 = extractvalue { i64, ptr } %t188, 1
  %t194 = mul i64 %t192, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %t191, i64 %t194)
  call void @llvm.memcpy.p0.p0.i64(ptr %t195, ptr %t193, i64 %t194, i1 false)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  %t198 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t201 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } %t197, i64 %t198)
  store %"compiler/bindgen:cx" %t201, ptr %l62
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  %t202 = load %"compiler/bindgen:cx", ptr %l62
  %t203 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t202, 1
  store { i32, %"compiler/bindgen:cx" } %t203, ptr %rv
  br label %ret
bb42:
  %t204 = load ptr, ptr %lp2
  %t205 = getelementptr { i64, ptr }, ptr %t204, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i8, ptr %t206, i64 0
  %t208 = load i8, ptr %t207, !tbaa !32
  %t210 = icmp eq i8 %t208, 34
  br i1 %t210, label %bb43, label %bb44
bb43:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t212, { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d74, i32 0, i32 1) })
  store i32 %t214, ptr %l66
  %t215 = icmp ne i32 %t214, 0
  br i1 %t215, label %bb46, label %ok.216, !prof !99
ok.216:
  br label %bb45
bb44:
  br label %bb48
bb45:
  br label %bb47
bb46:
  %t217 = load i32, ptr %l66, !tbaa !23
  %t218 = lshr i32 %t217, 16
  %t219 = and i32 %t217, 65535
  %t220 = icmp eq i32 %t218, 1
  %t221 = select i1 %t220, i32 1, i32 0
  %t222 = icmp eq i32 %t217, 0
  %t223 = shl i32 %t221, 16
  %t224 = or i32 %t223, %t219
  %t225 = select i1 %t222, i32 0, i32 %t224
  call void @__olang_scope_close(ptr %s0)
  %t227 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t225, 0
  store { i32, %"compiler/bindgen:cx" } %t227, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t228 = load ptr, ptr %l1, !tbaa !29
  %t230 = getelementptr %"compiler/bindgen:cparse", ptr %t228, i32 0, i32 1
  %t231 = load { i64, ptr }, ptr %t230, !tbaa !27
  %t232 = load ptr, ptr %lp2
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  %t234 = getelementptr { { i64, ptr }, ptr }, ptr null, i32 1
  %t235 = ptrtoint ptr %t234 to i64
  %t237 = getelementptr { { i64, ptr }, ptr }, ptr %t236, i32 0, i32 0
  store { i64, ptr } %t233, ptr %t237, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t239 = getelementptr { { i64, ptr }, ptr }, ptr %t236, i32 0, i32 1
  store ptr %v2, ptr %t239, !tbaa !28
  %t240 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_75, 0
  %t241 = insertvalue { ptr, ptr } %t240, ptr %t236, 1
  %t244 = extractvalue { ptr, ptr } %t241, 0
  %t245 = extractvalue { ptr, ptr } %t241, 1
  %t246 = call { i32, i64 } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eFindIndex_3cstd_2f_H0cdaf28864c9da4990596b1986b376a0(ptr %v1, ptr %s0, { i64, ptr } %t231, ptr %t244, ptr %t245)
  %t247 = extractvalue { i32, i64 } %t246, 1
  %t248 = extractvalue { i32, i64 } %t246, 0
  store i32 %t248, ptr %l74
  %t249 = icmp ne i32 %t248, 0
  br i1 %t249, label %bb50, label %ok.250, !prof !99
ok.250:
  store i64 %t247, ptr %l73
  br label %bb49
bb49:
  %t251 = load i64, ptr %l73, !tbaa !24
  store i64 %t251, ptr %l68, !tbaa !24
  br label %bb52
bb50:
  br label %bb51
bb51:
  store i64 -1, ptr %l68, !tbaa !24
  br label %bb52
bb52:
  %t252 = load i64, ptr %l68, !tbaa !24
  store i64 %t252, ptr %l4, !tbaa !24
  %t253 = load i64, ptr %l4, !tbaa !24
  %t255 = icmp sge i64 %t253, 0
  br i1 %t255, label %bb53, label %bb54
bb53:
  %t257 = ptrtoint ptr %v2 to i64
  store i64 %t257, ptr %l77, !tbaa !24
  %t258 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t258, label %bb55, label %bb56
bb54:
  br label %bb58
bb55:
  %t260 = call ptr @__olang_region_make(ptr %v2)
  %t261 = ptrtoint ptr %t260 to i64
  store i64 %t261, ptr %l77, !tbaa !24
  br label %bb56
bb56:
  %t262 = load i64, ptr %l4, !tbaa !24
  %t263 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t264 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t266 = call i64 @__olang_fmt_i64(ptr null, i64 %t262)
  %t267 = add i64 %t264, %t266
  %t268 = load i64, ptr %l77
  %t269 = inttoptr i64 %t268 to ptr
  %t270 = call ptr @__olang_scope_alloc(ptr %t269, i64 %t267)
  call void @olang_textcopy(ptr %t270, ptr %t263, i64 %t264)
  %t271 = getelementptr i8, ptr %t270, i64 %t264
  %t272 = call i64 @__olang_fmt_i64(ptr %t271, i64 %t262)
  %t273 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t270, 1
  %t276 = load i64, ptr %l77
  %t277 = inttoptr i64 %t276 to ptr
  %t278 = extractvalue { i64, ptr } %t274, 0
  %t279 = extractvalue { i64, ptr } %t274, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %t277, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  %t284 = load i64, ptr @G_2ecompiler_2fbindgen_2eKVar, !tbaa !24
  %t285 = load i64, ptr %l4, !tbaa !24
  %t289 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t283, i64 %t284, i64 %t285, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d77, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t289, ptr %l84
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s0)
  %t290 = load %"compiler/bindgen:cx", ptr %l84
  %t291 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t290, 1
  store { i32, %"compiler/bindgen:cx" } %t291, ptr %rv
  br label %ret
bb58:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/bindgen:gen", ptr %t292, i32 0, i32 11
  %t295 = load ptr, ptr %lp2
  %t296 = load { i64, ptr }, ptr %t295, !tbaa !27
  %t299 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v2, ptr %t294, { i64, ptr } %t296)
  %t300 = extractvalue { i32, i64 } %t299, 1
  %t301 = extractvalue { i32, i64 } %t299, 0
  store i32 %t301, ptr %l90
  %t302 = icmp ne i32 %t301, 0
  br i1 %t302, label %bb60, label %ok.303, !prof !99
ok.303:
  store i64 %t300, ptr %l89
  br label %bb59
bb59:
  %t304 = load i64, ptr %l89, !tbaa !24
  store i64 %t304, ptr %l85, !tbaa !24
  br label %bb62
bb60:
  br label %bb61
bb61:
  store i64 -9223372036854775808, ptr %l85, !tbaa !24
  br label %bb62
bb62:
  %t305 = load i64, ptr %l85, !tbaa !24
  store i64 %t305, ptr %l5, !tbaa !24
  %t306 = load i64, ptr %l5, !tbaa !24
  %t308 = icmp ne i64 %t306, -9223372036854775808
  br i1 %t308, label %bb63, label %bb64
bb63:
  %t310 = load i64, ptr %l5, !tbaa !24
  %t312 = icmp slt i64 %t310, 0
  br i1 %t312, label %bb65, label %bb66
bb64:
  br label %bb69
bb65:
  %t314 = load i64, ptr %l5, !tbaa !24
  %t315 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t316 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t318 = call i64 @__olang_fmt_i64(ptr null, i64 %t314)
  %t319 = add i64 %t316, %t318
  %t320 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t321 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t322 = add i64 %t319, %t321
  %t323 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t322)
  call void @olang_textcopy(ptr %t323, ptr %t315, i64 %t316)
  %t324 = getelementptr i8, ptr %t323, i64 %t316
  %t325 = call i64 @__olang_fmt_i64(ptr %t324, i64 %t314)
  %t326 = getelementptr i8, ptr %t324, i64 %t318
  call void @olang_textcopy(ptr %t326, ptr %t320, i64 %t321)
  %t327 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t328 = insertvalue { i64, ptr } %t327, ptr %t323, 1
  %t330 = extractvalue { i64, ptr } %t328, 0
  %t331 = extractvalue { i64, ptr } %t328, 1
  %t332 = mul i64 %t330, 1
  %t333 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t332)
  call void @llvm.memcpy.p0.p0.i64(ptr %t333, ptr %t331, i64 %t332, i1 false)
  %t334 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t333, 1
  store { i64, ptr } %t335, ptr %l95, !tbaa !27
  br label %bb67
bb66:
  %t337 = load i64, ptr %l5, !tbaa !24
  %t339 = call i64 @__olang_fmt_i64(ptr null, i64 %t337)
  %t340 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t339)
  %t341 = call i64 @__olang_fmt_i64(ptr %t340, i64 %t337)
  %t342 = insertvalue { i64, ptr } undef, i64 %t339, 0
  %t343 = insertvalue { i64, ptr } %t342, ptr %t340, 1
  %t345 = extractvalue { i64, ptr } %t343, 0
  %t346 = extractvalue { i64, ptr } %t343, 1
  %t347 = mul i64 %t345, 1
  %t348 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t347)
  call void @llvm.memcpy.p0.p0.i64(ptr %t348, ptr %t346, i64 %t347, i1 false)
  %t349 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t348, 1
  store { i64, ptr } %t350, ptr %l95, !tbaa !27
  br label %bb67
bb67:
  %t352 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t353 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t355 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } %t353, i64 %t352)
  store %"compiler/bindgen:cx" %t355, ptr %l103
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s0)
  %t356 = load %"compiler/bindgen:cx", ptr %l103
  %t357 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t356, 1
  store { i32, %"compiler/bindgen:cx" } %t357, ptr %rv
  br label %ret
bb69:
  %t358 = load ptr, ptr %l1, !tbaa !29
  %t360 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s0, ptr %t358)
  store { i64, ptr } %t360, ptr %l105
  br label %bb70
bb70:
  %t361 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t362 = extractvalue { i64, ptr } %t361, 0
  %t363 = extractvalue { i64, ptr } %t361, 1
  %t364 = mul i64 %t362, 1
  %t365 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t364)
  call void @llvm.memcpy.p0.p0.i64(ptr %t365, ptr %t363, i64 %t364, i1 false)
  %t366 = insertvalue { i64, ptr } undef, i64 %t362, 0
  %t367 = insertvalue { i64, ptr } %t366, ptr %t365, 1
  %t369 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t367, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store i1 %t369, ptr %l107
  br label %bb71
bb71:
  %t370 = load i1, ptr %l107, !tbaa !21
  br i1 %t370, label %bb72, label %bb73
bb72:
  store %olang.scope zeroinitializer, ptr %s13
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr %"compiler/bindgen:gen", ptr %t371, i32 0, i32 15
  %t374 = load ptr, ptr %lp2
  %t375 = load { i64, ptr }, ptr %t374, !tbaa !27
  %t378 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v2, ptr %v2, ptr %t373, { i64, ptr } %t375)
  %t379 = extractvalue { i32, { i64, ptr } } %t378, 1
  %t380 = extractvalue { i32, { i64, ptr } } %t378, 0
  store i32 %t380, ptr %l113
  %t381 = icmp ne i32 %t380, 0
  br i1 %t381, label %bb75, label %ok.382, !prof !99
ok.382:
  store { i64, ptr } %t379, ptr %l112
  br label %bb74
bb73:
  br label %bb125
bb74:
  %t383 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t383, ptr %l108, !tbaa !27
  br label %bb77
bb75:
  br label %bb76
bb76:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d81, i32 0, i32 1) }, ptr %l108, !tbaa !27
  br label %bb77
bb77:
  %t384 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t384, ptr %l6, !tbaa !27
  %t385 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t387 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s13, { i64, ptr } %t385, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d82, i32 0, i32 1) })
  store i1 %t387, ptr %l115
  br label %bb78
bb78:
  %t388 = load i1, ptr %l115, !tbaa !21
  br i1 %t388, label %bb79, label %bb80
bb79:
  %t389 = load ptr, ptr %l0, !tbaa !29
  store ptr %t389, ptr %l116, !tbaa !29
  %t390 = ptrtoint ptr %v0 to i64
  store i64 %t390, ptr %l117, !tbaa !24
  %t391 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t391, label %bb81, label %bb82
bb80:
  br label %bb86
bb81:
  %t393 = call ptr @__olang_region_make(ptr %v0)
  %t394 = ptrtoint ptr %t393 to i64
  store i64 %t394, ptr %l117, !tbaa !24
  br label %bb82
bb82:
  %t395 = load ptr, ptr %lp2
  %t396 = load { i64, ptr }, ptr %t395, !tbaa !27
  %t397 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t400 = extractvalue { i64, ptr } %t396, 1
  %t401 = extractvalue { i64, ptr } %t396, 0
  %t402 = add i64 %t398, %t401
  %t403 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t404 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t405 = add i64 %t402, %t404
  %t406 = load i64, ptr %l117
  %t407 = inttoptr i64 %t406 to ptr
  %t408 = call ptr @__olang_scope_alloc(ptr %t407, i64 %t405)
  call void @olang_textcopy(ptr %t408, ptr %t397, i64 %t398)
  %t409 = getelementptr i8, ptr %t408, i64 %t398
  call void @olang_textcopy(ptr %t409, ptr %t400, i64 %t401)
  %t410 = getelementptr i8, ptr %t409, i64 %t401
  call void @olang_textcopy(ptr %t410, ptr %t403, i64 %t404)
  %t411 = insertvalue { i64, ptr } undef, i64 %t405, 0
  %t412 = insertvalue { i64, ptr } %t411, ptr %t408, 1
  %t414 = load i64, ptr %l117
  %t415 = inttoptr i64 %t414 to ptr
  %t416 = extractvalue { i64, ptr } %t412, 0
  %t417 = extractvalue { i64, ptr } %t412, 1
  %t418 = mul i64 %t416, 1
  %t419 = call ptr @__olang_scope_alloc(ptr %t415, i64 %t418)
  call void @llvm.memcpy.p0.p0.i64(ptr %t419, ptr %t417, i64 %t418, i1 false)
  %t420 = insertvalue { i64, ptr } undef, i64 %t416, 0
  %t421 = insertvalue { i64, ptr } %t420, ptr %t419, 1
  %t422 = load ptr, ptr %l116, !tbaa !29
  %t424 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t422, { i64, ptr } %t421)
  store i32 %t424, ptr %l122
  %t425 = icmp ne i32 %t424, 0
  br i1 %t425, label %bb84, label %ok.426, !prof !99
ok.426:
  br label %bb83
bb83:
  br label %bb85
bb84:
  %t427 = load i32, ptr %l122, !tbaa !23
  %t428 = lshr i32 %t427, 16
  %t429 = and i32 %t427, 65535
  %t430 = icmp eq i32 %t428, 1
  %t431 = select i1 %t430, i32 1, i32 0
  %t432 = icmp eq i32 %t427, 0
  %t433 = shl i32 %t431, 16
  %t434 = or i32 %t433, %t429
  %t435 = select i1 %t432, i32 0, i32 %t434
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t437 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t435, 0
  store { i32, %"compiler/bindgen:cx" } %t437, ptr %rv
  br label %ret
bb85:
  br label %bb86
bb86:
  %t438 = load ptr, ptr %l1, !tbaa !29
  store ptr %t438, ptr %l124, !tbaa !29
  %t439 = load ptr, ptr %l124, !tbaa !29
  %t440 = getelementptr %"compiler/bindgen:cparse", ptr %t439, i32 0, i32 2
  %t441 = load i64, ptr %t440, !tbaa !24
  %t443 = add i64 %t441, 1
  %t445 = load ptr, ptr %l124, !tbaa !29
  %t446 = getelementptr %"compiler/bindgen:cparse", ptr %t445, i32 0, i32 2
  store i64 %t443, ptr %t446, !tbaa !24
  %t447 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s13)
  store %"std/prelude/text:StringBuilder" %t447, ptr %l127
  br label %bb87
bb87:
  %t448 = load %"std/prelude/text:StringBuilder", ptr %l127
  store %"std/prelude/text:StringBuilder" %t448, ptr %l7
  %t449 = load ptr, ptr %lp2
  %t450 = load { i64, ptr }, ptr %t449, !tbaa !27
  %t452 = extractvalue { i64, ptr } %t450, 1
  %t453 = extractvalue { i64, ptr } %t450, 0
  %t454 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t455 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t456 = add i64 %t453, %t455
  %t457 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t456)
  call void @olang_textcopy(ptr %t457, ptr %t452, i64 %t453)
  %t458 = getelementptr i8, ptr %t457, i64 %t453
  call void @olang_textcopy(ptr %t458, ptr %t454, i64 %t455)
  %t459 = insertvalue { i64, ptr } undef, i64 %t456, 0
  %t460 = insertvalue { i64, ptr } %t459, ptr %t457, 1
  %t462 = extractvalue { i64, ptr } %t460, 0
  %t463 = extractvalue { i64, ptr } %t460, 1
  %t464 = mul i64 %t462, 1
  %t465 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t464)
  call void @llvm.memcpy.p0.p0.i64(ptr %t465, ptr %t463, i64 %t464, i1 false)
  %t466 = insertvalue { i64, ptr } undef, i64 %t462, 0
  %t467 = insertvalue { i64, ptr } %t466, ptr %t465, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s13, ptr %l7, { i64, ptr } %t467)
  br label %bb88
bb88:
  store i64 0, ptr %l8, !tbaa !24
  br label %bb89
bb89:
  store %olang.scope zeroinitializer, ptr %s17
  %t470 = load ptr, ptr %l1, !tbaa !29
  %t472 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s17, ptr %t470)
  store { i64, ptr } %t472, ptr %l133
  br label %bb90
bb90:
  %t473 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t474 = extractvalue { i64, ptr } %t473, 0
  %t475 = extractvalue { i64, ptr } %t473, 1
  %t476 = mul i64 %t474, 1
  %t477 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t476)
  call void @llvm.memcpy.p0.p0.i64(ptr %t477, ptr %t475, i64 %t476, i1 false)
  %t478 = insertvalue { i64, ptr } undef, i64 %t474, 0
  %t479 = insertvalue { i64, ptr } %t478, ptr %t477, 1
  %t481 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s17, ptr %s17, { i64, ptr } %t479, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d86, i32 0, i32 1) })
  store i1 %t481, ptr %l135
  br label %bb91
bb91:
  %t482 = load i1, ptr %l135, !tbaa !21
  %t483 = xor i1 %t482, true
  %t485 = xor i1 %t483, true
  br i1 %t485, label %bb92, label %bb93
bb92:
  call void @__olang_scope_close(ptr %s17)
  br label %bb115
bb93:
  br label %bb94
bb94:
  %t487 = load i64, ptr %l8, !tbaa !24
  %t489 = icmp sgt i64 %t487, 0
  br i1 %t489, label %bb95, label %bb96
bb95:
  store %olang.scope zeroinitializer, ptr %s18
  %t491 = load ptr, ptr %l1, !tbaa !29
  %t493 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s18, ptr %t491)
  store { i64, ptr } %t493, ptr %l141
  br label %bb97
bb96:
  br label %bb108
bb97:
  %t494 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t495 = extractvalue { i64, ptr } %t494, 0
  %t496 = extractvalue { i64, ptr } %t494, 1
  %t497 = mul i64 %t495, 1
  %t498 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t497)
  call void @llvm.memcpy.p0.p0.i64(ptr %t498, ptr %t496, i64 %t497, i1 false)
  %t499 = insertvalue { i64, ptr } undef, i64 %t495, 0
  %t500 = insertvalue { i64, ptr } %t499, ptr %t498, 1
  %t502 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s18, ptr %s18, { i64, ptr } %t500, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store i1 %t502, ptr %l143
  br label %bb98
bb98:
  %t503 = load i1, ptr %l143, !tbaa !21
  %t504 = xor i1 %t503, true
  br i1 %t504, label %bb99, label %bb100
bb99:
  %t506 = load ptr, ptr %l0, !tbaa !29
  store ptr %t506, ptr %l145, !tbaa !29
  %t507 = ptrtoint ptr %v0 to i64
  store i64 %t507, ptr %l146, !tbaa !24
  %t508 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t508, label %bb101, label %bb102
bb100:
  br label %bb106
bb101:
  %t510 = call ptr @__olang_region_make(ptr %v0)
  %t511 = ptrtoint ptr %t510 to i64
  store i64 %t511, ptr %l146, !tbaa !24
  br label %bb102
bb102:
  %t512 = load ptr, ptr %lp2
  %t513 = load { i64, ptr }, ptr %t512, !tbaa !27
  %t514 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t515 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t517 = extractvalue { i64, ptr } %t513, 1
  %t518 = extractvalue { i64, ptr } %t513, 0
  %t519 = add i64 %t515, %t518
  %t520 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t521 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t522 = add i64 %t519, %t521
  %t523 = load i64, ptr %l146
  %t524 = inttoptr i64 %t523 to ptr
  %t525 = call ptr @__olang_scope_alloc(ptr %t524, i64 %t522)
  call void @olang_textcopy(ptr %t525, ptr %t514, i64 %t515)
  %t526 = getelementptr i8, ptr %t525, i64 %t515
  call void @olang_textcopy(ptr %t526, ptr %t517, i64 %t518)
  %t527 = getelementptr i8, ptr %t526, i64 %t518
  call void @olang_textcopy(ptr %t527, ptr %t520, i64 %t521)
  %t528 = insertvalue { i64, ptr } undef, i64 %t522, 0
  %t529 = insertvalue { i64, ptr } %t528, ptr %t525, 1
  %t531 = load i64, ptr %l146
  %t532 = inttoptr i64 %t531 to ptr
  %t533 = extractvalue { i64, ptr } %t529, 0
  %t534 = extractvalue { i64, ptr } %t529, 1
  %t535 = mul i64 %t533, 1
  %t536 = call ptr @__olang_scope_alloc(ptr %t532, i64 %t535)
  call void @llvm.memcpy.p0.p0.i64(ptr %t536, ptr %t534, i64 %t535, i1 false)
  %t537 = insertvalue { i64, ptr } undef, i64 %t533, 0
  %t538 = insertvalue { i64, ptr } %t537, ptr %t536, 1
  %t539 = load ptr, ptr %l145, !tbaa !29
  %t541 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t539, { i64, ptr } %t538)
  store i32 %t541, ptr %l151
  %t542 = icmp ne i32 %t541, 0
  br i1 %t542, label %bb104, label %ok.543, !prof !99
ok.543:
  br label %bb103
bb103:
  br label %bb105
bb104:
  %t544 = load i32, ptr %l151, !tbaa !23
  %t545 = lshr i32 %t544, 16
  %t546 = and i32 %t544, 65535
  %t547 = icmp eq i32 %t545, 1
  %t548 = select i1 %t547, i32 1, i32 0
  %t549 = icmp eq i32 %t544, 0
  %t550 = shl i32 %t548, 16
  %t551 = or i32 %t550, %t546
  %t552 = select i1 %t549, i32 0, i32 %t551
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t554 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t552, 0
  store { i32, %"compiler/bindgen:cx" } %t554, ptr %rv
  br label %ret
bb105:
  br label %bb106
bb106:
  %t555 = load ptr, ptr %l1, !tbaa !29
  store ptr %t555, ptr %l153, !tbaa !29
  %t556 = load ptr, ptr %l153, !tbaa !29
  %t557 = getelementptr %"compiler/bindgen:cparse", ptr %t556, i32 0, i32 2
  %t558 = load i64, ptr %t557, !tbaa !24
  %t560 = add i64 %t558, 1
  %t562 = load ptr, ptr %l153, !tbaa !29
  %t563 = getelementptr %"compiler/bindgen:cparse", ptr %t562, i32 0, i32 2
  store i64 %t560, ptr %t563, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s18, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d90, i32 0, i32 1) })
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s18)
  br label %bb108
bb108:
  store ptr %l7, ptr %l157, !tbaa !29
  %t565 = load ptr, ptr %l0, !tbaa !29
  store ptr %t565, ptr %l158, !tbaa !29
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t567 = load ptr, ptr %l1, !tbaa !29
  %t570 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %v1, ptr %v0, ptr %t566, ptr %t567)
  %t571 = extractvalue { i32, %"compiler/bindgen:cx" } %t570, 1
  %t572 = extractvalue { i32, %"compiler/bindgen:cx" } %t570, 0
  store i32 %t572, ptr %l163
  %t573 = icmp ne i32 %t572, 0
  br i1 %t573, label %bb110, label %ok.574, !prof !99
ok.574:
  store %"compiler/bindgen:cx" %t571, ptr %l162
  br label %bb109
bb109:
  %t575 = load %"compiler/bindgen:cx", ptr %l162
  store %"compiler/bindgen:cx" %t575, ptr %l159
  br label %bb111
bb110:
  %t576 = load i32, ptr %l163, !tbaa !23
  %t577 = lshr i32 %t576, 16
  %t578 = and i32 %t576, 65535
  %t579 = icmp eq i32 %t577, 1
  %t580 = select i1 %t579, i32 1, i32 0
  %t581 = icmp eq i32 %t576, 0
  %t582 = shl i32 %t580, 16
  %t583 = or i32 %t582, %t578
  %t584 = select i1 %t581, i32 0, i32 %t583
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t586 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t584, 0
  store { i32, %"compiler/bindgen:cx" } %t586, ptr %rv
  br label %ret
bb111:
  %t587 = load ptr, ptr %l158, !tbaa !29
  %t588 = load %"compiler/bindgen:cx", ptr %l159
  %t589 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v0, ptr %v0, ptr %t587, %"compiler/bindgen:cx" %t588)
  store %"compiler/bindgen:cx" %t589, ptr %l165
  br label %bb112
bb112:
  %t590 = getelementptr %"compiler/bindgen:cx", ptr %l165, i32 0, i32 0
  %t591 = load { i64, ptr }, ptr %t590, !tbaa !27
  %t592 = load ptr, ptr %l157, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %v0, ptr %t592, { i64, ptr } %t591)
  br label %bb113
bb113:
  %t594 = load i64, ptr %l8, !tbaa !24
  %t596 = add i64 %t594, 1
  store i64 %t596, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s17)
  br label %bb114
bb114:
  br label %bb89
bb115:
  %t598 = load ptr, ptr %l1, !tbaa !29
  store ptr %t598, ptr %l169, !tbaa !29
  %t599 = load ptr, ptr %l169, !tbaa !29
  %t600 = getelementptr %"compiler/bindgen:cparse", ptr %t599, i32 0, i32 2
  %t601 = load i64, ptr %t600, !tbaa !24
  %t603 = add i64 %t601, 1
  %t605 = load ptr, ptr %l169, !tbaa !29
  %t606 = getelementptr %"compiler/bindgen:cparse", ptr %t605, i32 0, i32 2
  store i64 %t603, ptr %t606, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s13, ptr %l7, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) })
  br label %bb116
bb116:
  %t608 = ptrtoint ptr %v2 to i64
  store i64 %t608, ptr %l173, !tbaa !24
  %t609 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t609, label %bb117, label %bb118
bb117:
  %t611 = call ptr @__olang_region_make(ptr %v2)
  %t612 = ptrtoint ptr %t611 to i64
  store i64 %t612, ptr %l173, !tbaa !24
  br label %bb118
bb118:
  %t613 = load i64, ptr %l173
  %t614 = inttoptr i64 %t613 to ptr
  %t616 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s13, ptr %t614, ptr %l7)
  store { i64, ptr } %t616, ptr %l176
  br label %bb119
bb119:
  %t617 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t618 = load i64, ptr %l173
  %t619 = inttoptr i64 %t618 to ptr
  %t620 = extractvalue { i64, ptr } %t617, 0
  %t621 = extractvalue { i64, ptr } %t617, 1
  %t622 = mul i64 %t620, 1
  %t623 = call ptr @__olang_scope_alloc(ptr %t619, i64 %t622)
  call void @llvm.memcpy.p0.p0.i64(ptr %t623, ptr %t621, i64 %t622, i1 false)
  %t624 = insertvalue { i64, ptr } undef, i64 %t620, 0
  %t625 = insertvalue { i64, ptr } %t624, ptr %t623, 1
  store { i64, ptr } %t625, ptr %l177, !tbaa !27
  %t626 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t628 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s13, { i64, ptr } %t626, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store i1 %t628, ptr %l179
  br label %bb120
bb120:
  %t629 = load i1, ptr %l179, !tbaa !21
  %t630 = xor i1 %t629, true
  br i1 %t630, label %bb121, label %bb122
bb121:
  %t632 = load i64, ptr @G_2ecompiler_2fbindgen_2eKType, !tbaa !24
  store i64 %t632, ptr %l181, !tbaa !24
  br label %bb123
bb122:
  %t634 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  store i64 %t634, ptr %l181, !tbaa !24
  br label %bb123
bb123:
  %t636 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t637 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t638 = load i64, ptr %l181, !tbaa !24
  %t640 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t637, i64 %t638, i64 -1, { i64, ptr } %t636)
  store %"compiler/bindgen:cx" %t640, ptr %l185
  br label %bb124
bb124:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t641 = load %"compiler/bindgen:cx", ptr %l185
  %t642 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t641, 1
  store { i32, %"compiler/bindgen:cx" } %t642, ptr %rv
  br label %ret
bb125:
  %t643 = load ptr, ptr %l0, !tbaa !29
  store ptr %t643, ptr %l186, !tbaa !29
  %t644 = ptrtoint ptr %v0 to i64
  store i64 %t644, ptr %l187, !tbaa !24
  %t645 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t645, label %bb126, label %bb127
bb126:
  %t647 = call ptr @__olang_region_make(ptr %v0)
  %t648 = ptrtoint ptr %t647 to i64
  store i64 %t648, ptr %l187, !tbaa !24
  br label %bb127
bb127:
  %t649 = load ptr, ptr %lp2
  %t650 = load { i64, ptr }, ptr %t649, !tbaa !27
  %t651 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t652 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t654 = extractvalue { i64, ptr } %t650, 1
  %t655 = extractvalue { i64, ptr } %t650, 0
  %t656 = add i64 %t652, %t655
  %t657 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t658 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t659 = add i64 %t656, %t658
  %t660 = load i64, ptr %l187
  %t661 = inttoptr i64 %t660 to ptr
  %t662 = call ptr @__olang_scope_alloc(ptr %t661, i64 %t659)
  call void @olang_textcopy(ptr %t662, ptr %t651, i64 %t652)
  %t663 = getelementptr i8, ptr %t662, i64 %t652
  call void @olang_textcopy(ptr %t663, ptr %t654, i64 %t655)
  %t664 = getelementptr i8, ptr %t663, i64 %t655
  call void @olang_textcopy(ptr %t664, ptr %t657, i64 %t658)
  %t665 = insertvalue { i64, ptr } undef, i64 %t659, 0
  %t666 = insertvalue { i64, ptr } %t665, ptr %t662, 1
  %t668 = load i64, ptr %l187
  %t669 = inttoptr i64 %t668 to ptr
  %t670 = extractvalue { i64, ptr } %t666, 0
  %t671 = extractvalue { i64, ptr } %t666, 1
  %t672 = mul i64 %t670, 1
  %t673 = call ptr @__olang_scope_alloc(ptr %t669, i64 %t672)
  call void @llvm.memcpy.p0.p0.i64(ptr %t673, ptr %t671, i64 %t672, i1 false)
  %t674 = insertvalue { i64, ptr } undef, i64 %t670, 0
  %t675 = insertvalue { i64, ptr } %t674, ptr %t673, 1
  %t676 = load ptr, ptr %l186, !tbaa !29
  %t678 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t676, { i64, ptr } %t675)
  store i32 %t678, ptr %l192
  %t679 = icmp ne i32 %t678, 0
  br i1 %t679, label %bb129, label %ok.680, !prof !99
ok.680:
  br label %bb128
bb128:
  br label %bb130
bb129:
  %t681 = load i32, ptr %l192, !tbaa !23
  %t682 = lshr i32 %t681, 16
  %t683 = and i32 %t681, 65535
  %t684 = icmp eq i32 %t682, 1
  %t685 = select i1 %t684, i32 1, i32 0
  %t686 = icmp eq i32 %t681, 0
  %t687 = shl i32 %t685, 16
  %t688 = or i32 %t687, %t683
  %t689 = select i1 %t686, i32 0, i32 %t688
  call void @__olang_scope_close(ptr %s0)
  %t691 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t689, 0
  store { i32, %"compiler/bindgen:cx" } %t691, ptr %rv
  br label %ret
bb130:
  %t692 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t694 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d95, i32 0, i32 1) }, i64 %t692)
  store %"compiler/bindgen:cx" %t694, ptr %l195
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s0)
  %t695 = load %"compiler/bindgen:cx", ptr %l195
  %t696 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t695, 1
  store { i32, %"compiler/bindgen:cx" } %t696, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/bindgen:cx" }, ptr %rv
  ret { i32, %"compiler/bindgen:cx" } %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecastType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca i1
  %l35 = alloca i1
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l45 = alloca i64
  %l49 = alloca %"compiler/bindgen:ctype"
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %l60 = alloca %"compiler/bindgen:ctype"
  %l62 = alloca i1
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l69 = alloca %"compiler/bindgen:ctype"
  %l72 = alloca i64
  %l73 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i64, ptr } @compiler_2fbindgen_2ectokens(ptr %v1, ptr %s0, { i64, ptr } %t1)
  store { i64, ptr } %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = icmp eq i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d96, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t11, ptr %l15, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l16, !tbaa !24
  %t14 = load i64, ptr %l16, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l16, !tbaa !24
  %t24 = mul i64 %t23, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t25, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t26 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t26, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  store i64 %t31, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t33 = load i64, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s3)
  br label %bb18
bb7:
  br label %bb8
bb8:
  %t41 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t41, ptr %l25, !tbaa !27
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %t45, i64 %t42
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !37
  store { i64, ptr } %t47, ptr %l6, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t53 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s3, ptr %s0, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x { i64, ptr }] }>, ptr @.d97, i32 0, i32 1) }, { i64, ptr } %t49)
  store i1 %t53, ptr %l30
  br label %bb9
bb9:
  %t54 = load i1, ptr %l30, !tbaa !21
  br i1 %t54, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb13
bb11:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/bindgen:gen", ptr %t55, i32 0, i32 4
  %t58 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t61 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %s0, ptr %t57, { i64, ptr } %t58)
  store i1 %t61, ptr %l35
  br label %bb12
bb12:
  %t62 = load i1, ptr %l35, !tbaa !21
  store i1 %t62, ptr %l31, !tbaa !21
  br label %bb13
bb13:
  %t63 = load i1, ptr %l31, !tbaa !21
  %t64 = xor i1 %t63, true
  br i1 %t64, label %bb14, label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) }, ptr %l37, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t66, ptr %l38, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  store i64 %t68, ptr %l39, !tbaa !24
  %t69 = load i64, ptr %l39, !tbaa !24
  %t70 = mul i64 %t69, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t70)
  %t72 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  store { i64, ptr } %t73, ptr %l40, !tbaa !27
  %t74 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = load i64, ptr %l39, !tbaa !24
  %t79 = mul i64 %t78, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t75, ptr %t77, i64 %t79, i1 false)
  %t80 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t80, ptr %l38, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t81 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t81, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb17
bb17:
  %t82 = load i64, ptr %l4, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l4, !tbaa !24
  br label %bb5
bb18:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t90 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %v1, ptr %t86, { i64, ptr } %t87, i64 0)
  store i64 %t90, ptr %l45
  br label %bb19
bb19:
  %t91 = load i64, ptr %l45, !tbaa !24
  store i64 %t91, ptr %l8, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/bindgen:gen", ptr %t92, i32 0, i32 16
  %t95 = load i64, ptr %l8, !tbaa !24
  %t98 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s0, ptr %t94, i64 %t95)
  store %"compiler/bindgen:ctype" %t98, ptr %l49
  br label %bb20
bb20:
  %t99 = getelementptr %"compiler/bindgen:ctype", ptr %l49, i32 0, i32 0
  %t100 = load i32, ptr %t99, !range !{i32 0, i32 7}
  %t102 = trunc i64 1 to i32
  %t103 = icmp eq i32 %t100, %t102
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d99, i32 0, i32 1) }, ptr %l53, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t107, ptr %l54, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l55, !tbaa !24
  %t110 = load i64, ptr %l55, !tbaa !24
  %t111 = mul i64 %t110, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t111)
  %t113 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  store { i64, ptr } %t114, ptr %l56, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l55, !tbaa !24
  %t120 = mul i64 %t119, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t116, ptr %t118, i64 %t120, i1 false)
  %t121 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t121, ptr %l54, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t122 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t122, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/bindgen:gen", ptr %t123, i32 0, i32 16
  %t126 = load i64, ptr %l8, !tbaa !24
  %t129 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t125, i64 %t126)
  store %"compiler/bindgen:ctype" %t129, ptr %l60
  br label %bb24
bb24:
  %t130 = getelementptr %"compiler/bindgen:ctype", ptr %l60, i32 0, i32 1
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  %t133 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t131, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store i1 %t133, ptr %l62
  br label %bb25
bb25:
  %t134 = load i1, ptr %l62, !tbaa !21
  br i1 %t134, label %bb26, label %bb27
bb26:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d101, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t135, ptr %l63, !tbaa !27
  br label %bb29
bb27:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/bindgen:gen", ptr %t137, i32 0, i32 16
  %t140 = load i64, ptr %l8, !tbaa !24
  %t143 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t139, i64 %t140)
  store %"compiler/bindgen:ctype" %t143, ptr %l69
  br label %bb28
bb28:
  %t144 = getelementptr %"compiler/bindgen:ctype", ptr %l69, i32 0, i32 1
  %t145 = load { i64, ptr }, ptr %t144, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t145, 1
  %t148 = extractvalue { i64, ptr } %t145, 0
  %t149 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t147, i64 %t148)
  %t150 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  store { i64, ptr } %t151, ptr %l63, !tbaa !27
  br label %bb29
bb29:
  %t153 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 0
  store i64 %t154, ptr %l72, !tbaa !24
  %t155 = load i64, ptr %l72, !tbaa !24
  %t156 = mul i64 %t155, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t156)
  %t158 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  store { i64, ptr } %t159, ptr %l73, !tbaa !27
  %t160 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = load i64, ptr %l72, !tbaa !24
  %t165 = mul i64 %t164, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t161, ptr %t163, i64 %t165, i1 false)
  %t166 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t166, ptr %l63, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t167 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t167, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edeclarator(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i1
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca i1
  %l39 = alloca i64
  %l40 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l46 = alloca i1
  %l47 = alloca i1
  %l49 = alloca { i64, ptr }
  %l51 = alloca i1
  %l52 = alloca i1
  %l54 = alloca { i64, ptr }
  %l56 = alloca i1
  %l57 = alloca i1
  %l59 = alloca { i64, ptr }
  %l61 = alloca i1
  %l64 = alloca { i64, ptr }
  %l66 = alloca i1
  %l67 = alloca ptr
  %l71 = alloca { i64, ptr }
  %l73 = alloca i1
  %l74 = alloca i1
  %l76 = alloca { i64, ptr }
  %l78 = alloca i1
  %l79 = alloca i1
  %l81 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca i1
  %l86 = alloca { i64, ptr }
  %l88 = alloca i1
  %l100 = alloca { i64, ptr }
  %l102 = alloca i1
  %l106 = alloca { i64, ptr }
  %l108 = alloca i1
  %l113 = alloca ptr
  %l116 = alloca ptr
  %l119 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l121 = alloca { i64, ptr }
  %l123 = alloca i1
  %l124 = alloca ptr
  %l127 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l134 = alloca i1
  %l136 = alloca { i64, ptr }
  %l138 = alloca i1
  %l142 = alloca { i64, ptr }
  %l144 = alloca i1
  %l145 = alloca ptr
  %l151 = alloca i64
  %l155 = alloca %"compiler/bindgen:ctype"
  %l158 = alloca i1
  %l160 = alloca i64
  %l162 = alloca i1
  %l164 = alloca { i64, ptr }
  %l166 = alloca i1
  %l171 = alloca { i64, ptr }
  %l173 = alloca i1
  %l174 = alloca ptr
  %l177 = alloca ptr
  %l182 = alloca i64
  %l184 = alloca i64
  %l186 = alloca i64
  %l191 = alloca i64
  %l197 = alloca ptr
  %l198 = alloca i32
  %l200 = alloca { i64, ptr }
  %l201 = alloca i64
  %l203 = alloca i64
  %l204 = alloca i64
  %l209 = alloca ptr
  %l214 = alloca { i64, ptr }
  %l216 = alloca i1
  %l217 = alloca ptr
  %l221 = alloca { i64, ptr }
  %l223 = alloca i1
  %l225 = alloca i64
  %l227 = alloca { i64, ptr }
  %l228 = alloca { i64, ptr }
  %l229 = alloca i64
  %l230 = alloca i32
  %l231 = alloca i64
  %l232 = alloca i32
  %l233 = alloca ptr
  %l236 = alloca ptr
  %l242 = alloca i64
  %l246 = alloca i64
  %l249 = alloca i64
  %l267 = alloca ptr
  %l268 = alloca i32
  %l269 = alloca i64
  %l270 = alloca ptr
  %l272 = alloca i64
  %l276 = alloca i64
  %l277 = alloca i64
  %l290 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 %a2, ptr %l5, !tbaa !24
  store i1 %a3, ptr %l6, !tbaa !21
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s1, ptr %t5, i64 0)
  store { i64, ptr } %t7, ptr %l31
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  %t10 = extractvalue { i64, ptr } %t8, 1
  %t11 = mul i64 %t9, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t11)
  call void @llvm.memcpy.p0.p0.i64(ptr %t12, ptr %t10, i64 %t11, i1 false)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t14, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) })
  store i1 %t16, ptr %l33
  br label %bb3
bb3:
  %t17 = load i1, ptr %l33, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb34
bb5:
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i1, ptr %l6, !tbaa !21
  %t27 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t20, i32 3, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d103, i32 0, i32 1) }, i64 %t21, i1 %t22, i64 0)
  store i64 %t27, ptr %l39
  br label %bb7
bb7:
  %t28 = load i64, ptr %l39, !tbaa !24
  store i64 %t28, ptr %l5, !tbaa !24
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l40, !tbaa !29
  %t30 = load ptr, ptr %l40, !tbaa !29
  %t31 = getelementptr %"compiler/bindgen:ctp", ptr %t30, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = add i64 %t32, 1
  %t36 = load ptr, ptr %l40, !tbaa !29
  %t37 = getelementptr %"compiler/bindgen:ctp", ptr %t36, i32 0, i32 1
  store i64 %t34, ptr %t37, !tbaa !24
  store i1 false, ptr %l6, !tbaa !21
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s2, ptr %t38, i64 0)
  store { i64, ptr } %t40, ptr %l44
  br label %bb9
bb9:
  %t41 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  %t43 = extractvalue { i64, ptr } %t41, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t47, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d104, i32 0, i32 1) })
  store i1 %t49, ptr %l46
  br label %bb10
bb10:
  %t50 = load i1, ptr %l46, !tbaa !21
  br i1 %t50, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb15
bb12:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s2, ptr %t51, i64 0)
  store { i64, ptr } %t53, ptr %l49
  br label %bb13
bb13:
  %t54 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  %t56 = extractvalue { i64, ptr } %t54, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t62 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t60, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d105, i32 0, i32 1) })
  store i1 %t62, ptr %l51
  br label %bb14
bb14:
  %t63 = load i1, ptr %l51, !tbaa !21
  store i1 %t63, ptr %l47, !tbaa !21
  br label %bb15
bb15:
  %t64 = load i1, ptr %l47, !tbaa !21
  br i1 %t64, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb20
bb17:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s2, ptr %t65, i64 0)
  store { i64, ptr } %t67, ptr %l54
  br label %bb18
bb18:
  %t68 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  %t70 = extractvalue { i64, ptr } %t68, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t76 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t74, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d106, i32 0, i32 1) })
  store i1 %t76, ptr %l56
  br label %bb19
bb19:
  %t77 = load i1, ptr %l56, !tbaa !21
  store i1 %t77, ptr %l52, !tbaa !21
  br label %bb20
bb20:
  %t78 = load i1, ptr %l52, !tbaa !21
  br i1 %t78, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb25
bb22:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s2, ptr %t79, i64 0)
  store { i64, ptr } %t81, ptr %l59
  br label %bb23
bb23:
  %t82 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  %t84 = extractvalue { i64, ptr } %t82, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t90 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t88, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d107, i32 0, i32 1) })
  store i1 %t90, ptr %l61
  br label %bb24
bb24:
  %t91 = load i1, ptr %l61, !tbaa !21
  store i1 %t91, ptr %l57, !tbaa !21
  br label %bb25
bb25:
  %t92 = load i1, ptr %l57, !tbaa !21
  %t93 = xor i1 %t92, true
  br i1 %t93, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb27:
  br label %bb28
bb28:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s2, ptr %t95, i64 0)
  store { i64, ptr } %t97, ptr %l64
  br label %bb29
bb29:
  %t98 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  %t100 = extractvalue { i64, ptr } %t98, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t106 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t104, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d108, i32 0, i32 1) })
  store i1 %t106, ptr %l66
  br label %bb30
bb30:
  %t107 = load i1, ptr %l66, !tbaa !21
  store i1 %t107, ptr %l6, !tbaa !21
  %t108 = load ptr, ptr %l1, !tbaa !29
  store ptr %t108, ptr %l67, !tbaa !29
  %t109 = load ptr, ptr %l67, !tbaa !29
  %t110 = getelementptr %"compiler/bindgen:ctp", ptr %t109, i32 0, i32 1
  %t111 = load i64, ptr %t110, !tbaa !24
  %t113 = add i64 %t111, 1
  %t115 = load ptr, ptr %l67, !tbaa !29
  %t116 = getelementptr %"compiler/bindgen:ctp", ptr %t115, i32 0, i32 1
  store i64 %t113, ptr %t116, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb31:
  br label %bb8
bb32:
  call void @__olang_scope_close(ptr %s1)
  br label %bb33
bb33:
  br label %bb1
bb34:
  store i64 -1, ptr %l7, !tbaa !24
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s0, ptr %t117, i64 0)
  store { i64, ptr } %t119, ptr %l71
  br label %bb35
bb35:
  %t120 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 0
  %t122 = extractvalue { i64, ptr } %t120, 1
  %t123 = mul i64 %t121, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t123)
  call void @llvm.memcpy.p0.p0.i64(ptr %t124, ptr %t122, i64 %t123, i1 false)
  %t125 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  %t128 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t126, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d109, i32 0, i32 1) })
  store i1 %t128, ptr %l73
  br label %bb36
bb36:
  %t129 = load i1, ptr %l73, !tbaa !21
  br i1 %t129, label %bb37, label %bb38
bb37:
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s0, ptr %t130, i64 1)
  store { i64, ptr } %t132, ptr %l76
  br label %bb39
bb38:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb51
bb39:
  %t133 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 0
  %t135 = extractvalue { i64, ptr } %t133, 1
  %t136 = mul i64 %t134, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t136)
  call void @llvm.memcpy.p0.p0.i64(ptr %t137, ptr %t135, i64 %t136, i1 false)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  %t141 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t139, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d110, i32 0, i32 1) })
  store i1 %t141, ptr %l78
  br label %bb40
bb40:
  %t142 = load i1, ptr %l78, !tbaa !21
  br i1 %t142, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb45
bb42:
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s0, ptr %t143, i64 1)
  store { i64, ptr } %t145, ptr %l81
  br label %bb43
bb43:
  %t146 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t146, 0
  %t148 = extractvalue { i64, ptr } %t146, 1
  %t149 = mul i64 %t147, 1
  %t150 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t149)
  call void @llvm.memcpy.p0.p0.i64(ptr %t150, ptr %t148, i64 %t149, i1 false)
  %t151 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t150, 1
  %t154 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t152, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d111, i32 0, i32 1) })
  store i1 %t154, ptr %l83
  br label %bb44
bb44:
  %t155 = load i1, ptr %l83, !tbaa !21
  store i1 %t155, ptr %l79, !tbaa !21
  br label %bb45
bb45:
  %t156 = load i1, ptr %l79, !tbaa !21
  br i1 %t156, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb50
bb47:
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s0, ptr %t157, i64 1)
  store { i64, ptr } %t159, ptr %l86
  br label %bb48
bb48:
  %t160 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  %t162 = extractvalue { i64, ptr } %t160, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  %t168 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t166, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) })
  store i1 %t168, ptr %l88
  br label %bb49
bb49:
  %t169 = load i1, ptr %l88, !tbaa !21
  store i1 %t169, ptr %l84, !tbaa !21
  br label %bb50
bb50:
  %t170 = load i1, ptr %l84, !tbaa !21
  store i1 %t170, ptr %l74, !tbaa !21
  br label %bb51
bb51:
  %t171 = load i1, ptr %l74, !tbaa !21
  br i1 %t171, label %bb52, label %bb53
bb52:
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t174 = getelementptr %"compiler/bindgen:ctp", ptr %t172, i32 0, i32 1
  %t175 = load i64, ptr %t174, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb54
bb53:
  br label %bb73
bb54:
  store %olang.scope zeroinitializer, ptr %s4
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t181 = getelementptr %"compiler/bindgen:ctp", ptr %t179, i32 0, i32 1
  %t182 = load i64, ptr %t181, !tbaa !24
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t185 = getelementptr %"compiler/bindgen:ctp", ptr %t183, i32 0, i32 0
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t191 = icmp slt i64 %t182, %t188
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s4)
  br label %bb72
bb56:
  br label %bb57
bb57:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s4, ptr %t195, i64 0)
  store { i64, ptr } %t197, ptr %l100
  br label %bb58
bb58:
  %t198 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t198, 0
  %t200 = extractvalue { i64, ptr } %t198, 1
  %t201 = mul i64 %t199, 1
  %t202 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t201)
  call void @llvm.memcpy.p0.p0.i64(ptr %t202, ptr %t200, i64 %t201, i1 false)
  %t203 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t202, 1
  %t206 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t204, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) })
  store i1 %t206, ptr %l102
  br label %bb59
bb59:
  %t207 = load i1, ptr %l102, !tbaa !21
  br i1 %t207, label %bb60, label %bb61
bb60:
  %t208 = load i64, ptr %l8, !tbaa !24
  %t210 = add i64 %t208, 1
  store i64 %t210, ptr %l8, !tbaa !24
  br label %bb62
bb61:
  br label %bb62
bb62:
  %t212 = load ptr, ptr %l1, !tbaa !29
  %t214 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s4, ptr %t212, i64 0)
  store { i64, ptr } %t214, ptr %l106
  br label %bb63
bb63:
  %t215 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 0
  %t217 = extractvalue { i64, ptr } %t215, 1
  %t218 = mul i64 %t216, 1
  %t219 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t218)
  call void @llvm.memcpy.p0.p0.i64(ptr %t219, ptr %t217, i64 %t218, i1 false)
  %t220 = insertvalue { i64, ptr } undef, i64 %t216, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t219, 1
  %t223 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t221, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d114, i32 0, i32 1) })
  store i1 %t223, ptr %l108
  br label %bb64
bb64:
  %t224 = load i1, ptr %l108, !tbaa !21
  br i1 %t224, label %bb65, label %bb66
bb65:
  %t225 = load i64, ptr %l8, !tbaa !24
  %t227 = sub i64 %t225, 1
  store i64 %t227, ptr %l8, !tbaa !24
  %t229 = load i64, ptr %l8, !tbaa !24
  %t231 = icmp eq i64 %t229, 0
  br i1 %t231, label %bb67, label %bb68
bb66:
  br label %bb70
bb67:
  call void @__olang_scope_close(ptr %s4)
  br label %bb72
bb68:
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t233 = load ptr, ptr %l1, !tbaa !29
  store ptr %t233, ptr %l113, !tbaa !29
  %t234 = load ptr, ptr %l113, !tbaa !29
  %t235 = getelementptr %"compiler/bindgen:ctp", ptr %t234, i32 0, i32 1
  %t236 = load i64, ptr %t235, !tbaa !24
  %t238 = add i64 %t236, 1
  %t240 = load ptr, ptr %l113, !tbaa !29
  %t241 = getelementptr %"compiler/bindgen:ctp", ptr %t240, i32 0, i32 1
  store i64 %t238, ptr %t241, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb71
bb71:
  br label %bb54
bb72:
  %t242 = load ptr, ptr %l1, !tbaa !29
  store ptr %t242, ptr %l116, !tbaa !29
  %t243 = load ptr, ptr %l116, !tbaa !29
  %t244 = getelementptr %"compiler/bindgen:ctp", ptr %t243, i32 0, i32 1
  %t245 = load i64, ptr %t244, !tbaa !24
  %t247 = add i64 %t245, 1
  %t249 = load ptr, ptr %l116, !tbaa !29
  %t250 = getelementptr %"compiler/bindgen:ctp", ptr %t249, i32 0, i32 1
  store i64 %t247, ptr %t250, !tbaa !24
  br label %bb73
bb73:
  %t251 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t251, ptr %l119
  br label %bb74
bb74:
  %t252 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l119
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t252, ptr %l9
  br label %bb75
bb75:
  store %olang.scope zeroinitializer, ptr %s8
  %t253 = load ptr, ptr %l1, !tbaa !29
  %t255 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s8, ptr %t253, i64 0)
  store { i64, ptr } %t255, ptr %l121
  br label %bb76
bb76:
  %t256 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t256, 0
  %t258 = extractvalue { i64, ptr } %t256, 1
  %t259 = mul i64 %t257, 1
  %t260 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t259)
  call void @llvm.memcpy.p0.p0.i64(ptr %t260, ptr %t258, i64 %t259, i1 false)
  %t261 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  %t264 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s8, ptr %s8, { i64, ptr } %t262, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) })
  store i1 %t264, ptr %l123
  br label %bb77
bb77:
  %t265 = load i1, ptr %l123, !tbaa !21
  br i1 %t265, label %bb78, label %bb79
bb78:
  store %olang.scope zeroinitializer, ptr %s9
  %t266 = load ptr, ptr %l1, !tbaa !29
  store ptr %t266, ptr %l124, !tbaa !29
  %t267 = load ptr, ptr %l124, !tbaa !29
  %t268 = getelementptr %"compiler/bindgen:ctp", ptr %t267, i32 0, i32 1
  %t269 = load i64, ptr %t268, !tbaa !24
  %t271 = add i64 %t269, 1
  %t273 = load ptr, ptr %l124, !tbaa !29
  %t274 = getelementptr %"compiler/bindgen:ctp", ptr %t273, i32 0, i32 1
  store i64 %t271, ptr %t274, !tbaa !24
  %t275 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t275, ptr %l127
  br label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s18
  %t276 = load ptr, ptr %l1, !tbaa !29
  %t278 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s18, ptr %t276, i64 0)
  store { i64, ptr } %t278, ptr %l214
  br label %bb133
bb80:
  %t279 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l127
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t279, ptr %l10
  store i1 false, ptr %l11, !tbaa !21
  br label %bb81
bb81:
  store %olang.scope zeroinitializer, ptr %s10
  %t280 = load ptr, ptr %l1, !tbaa !29
  %t282 = getelementptr %"compiler/bindgen:ctp", ptr %t280, i32 0, i32 1
  %t283 = load i64, ptr %t282, !tbaa !24
  %t284 = load ptr, ptr %l1, !tbaa !29
  %t286 = getelementptr %"compiler/bindgen:ctp", ptr %t284, i32 0, i32 0
  %t287 = load { i64, ptr }, ptr %t286, !tbaa !27
  %t289 = extractvalue { i64, ptr } %t287, 0
  %t292 = icmp slt i64 %t283, %t289
  br i1 %t292, label %bb82, label %bb83
bb82:
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t296 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s10, ptr %t294, i64 0)
  store { i64, ptr } %t296, ptr %l136
  br label %bb84
bb83:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb86
bb84:
  %t297 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t297, 0
  %t299 = extractvalue { i64, ptr } %t297, 1
  %t300 = mul i64 %t298, 1
  %t301 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t300)
  call void @llvm.memcpy.p0.p0.i64(ptr %t301, ptr %t299, i64 %t300, i1 false)
  %t302 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t301, 1
  %t305 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s10, ptr %s10, { i64, ptr } %t303, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) })
  store i1 %t305, ptr %l138
  br label %bb85
bb85:
  %t306 = load i1, ptr %l138, !tbaa !21
  %t307 = xor i1 %t306, true
  store i1 %t307, ptr %l134, !tbaa !21
  br label %bb86
bb86:
  %t309 = load i1, ptr %l134, !tbaa !21
  %t310 = xor i1 %t309, true
  br i1 %t310, label %bb87, label %bb88
bb87:
  call void @__olang_scope_close(ptr %s10)
  br label %bb116
bb88:
  br label %bb89
bb89:
  %t312 = load ptr, ptr %l1, !tbaa !29
  %t314 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s10, ptr %t312, i64 0)
  store { i64, ptr } %t314, ptr %l142
  br label %bb90
bb90:
  %t315 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t315, 0
  %t317 = extractvalue { i64, ptr } %t315, 1
  %t318 = mul i64 %t316, 1
  %t319 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t318)
  call void @llvm.memcpy.p0.p0.i64(ptr %t319, ptr %t317, i64 %t318, i1 false)
  %t320 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t321 = insertvalue { i64, ptr } %t320, ptr %t319, 1
  %t323 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s10, ptr %s10, { i64, ptr } %t321, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d117, i32 0, i32 1) })
  store i1 %t323, ptr %l144
  br label %bb91
bb91:
  %t324 = load i1, ptr %l144, !tbaa !21
  br i1 %t324, label %bb92, label %bb93
bb92:
  store i1 true, ptr %l11, !tbaa !21
  %t325 = load ptr, ptr %l1, !tbaa !29
  store ptr %t325, ptr %l145, !tbaa !29
  %t326 = load ptr, ptr %l145, !tbaa !29
  %t327 = getelementptr %"compiler/bindgen:ctp", ptr %t326, i32 0, i32 1
  %t328 = load i64, ptr %t327, !tbaa !24
  %t330 = add i64 %t328, 1
  %t332 = load ptr, ptr %l145, !tbaa !29
  %t333 = getelementptr %"compiler/bindgen:ctp", ptr %t332, i32 0, i32 1
  store i64 %t330, ptr %t333, !tbaa !24
  br label %bb109
bb93:
  store %olang.scope zeroinitializer, ptr %s12
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load ptr, ptr %l1, !tbaa !29
  %t336 = load i64, ptr %l4, !tbaa !24
  %t340 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etypeName(ptr %v0, ptr %v1, ptr %t334, ptr %t335, i64 %t336)
  store i64 %t340, ptr %l151
  br label %bb94
bb94:
  %t341 = load i64, ptr %l151, !tbaa !24
  store i64 %t341, ptr %l12, !tbaa !24
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/bindgen:gen", ptr %t342, i32 0, i32 16
  %t345 = load i64, ptr %l12, !tbaa !24
  %t348 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s12, ptr %t344, i64 %t345)
  store %"compiler/bindgen:ctype" %t348, ptr %l155
  br label %bb95
bb95:
  %t349 = getelementptr %"compiler/bindgen:ctype", ptr %l155, i32 0, i32 0
  %t350 = load i32, ptr %t349, !range !{i32 0, i32 7}
  %t352 = trunc i64 0 to i32
  %t353 = icmp eq i32 %t350, %t352
  br i1 %t353, label %bb96, label %bb97
bb96:
  %t356 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s9, ptr %l10)
  store i64 %t356, ptr %l160
  br label %bb98
bb97:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb99
bb98:
  %t357 = load i64, ptr %l160, !tbaa !24
  %t358 = icmp eq i64 %t357, 0
  store i1 %t358, ptr %l158, !tbaa !21
  br label %bb99
bb99:
  %t360 = load i1, ptr %l158, !tbaa !21
  br i1 %t360, label %bb100, label %bb101
bb100:
  %t361 = load ptr, ptr %l1, !tbaa !29
  %t363 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s12, ptr %t361, i64 0)
  store { i64, ptr } %t363, ptr %l164
  br label %bb102
bb101:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb104
bb102:
  %t364 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t364, 0
  %t366 = extractvalue { i64, ptr } %t364, 1
  %t367 = mul i64 %t365, 1
  %t368 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t367)
  call void @llvm.memcpy.p0.p0.i64(ptr %t368, ptr %t366, i64 %t367, i1 false)
  %t369 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t368, 1
  %t372 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s12, ptr %s12, { i64, ptr } %t370, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d118, i32 0, i32 1) })
  store i1 %t372, ptr %l166
  br label %bb103
bb103:
  %t373 = load i1, ptr %l166, !tbaa !21
  store i1 %t373, ptr %l162, !tbaa !21
  br label %bb104
bb104:
  %t374 = load i1, ptr %l162, !tbaa !21
  %t375 = xor i1 %t374, true
  br i1 %t375, label %bb105, label %bb106
bb105:
  %t377 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s9, ptr %l10, i64 %t377)
  br label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s12)
  br label %bb109
bb109:
  %t380 = load ptr, ptr %l1, !tbaa !29
  %t382 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s10, ptr %t380, i64 0)
  store { i64, ptr } %t382, ptr %l171
  br label %bb110
bb110:
  %t383 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t384 = extractvalue { i64, ptr } %t383, 0
  %t385 = extractvalue { i64, ptr } %t383, 1
  %t386 = mul i64 %t384, 1
  %t387 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t386)
  call void @llvm.memcpy.p0.p0.i64(ptr %t387, ptr %t385, i64 %t386, i1 false)
  %t388 = insertvalue { i64, ptr } undef, i64 %t384, 0
  %t389 = insertvalue { i64, ptr } %t388, ptr %t387, 1
  %t391 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s10, ptr %s10, { i64, ptr } %t389, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) })
  store i1 %t391, ptr %l173
  br label %bb111
bb111:
  %t392 = load i1, ptr %l173, !tbaa !21
  br i1 %t392, label %bb112, label %bb113
bb112:
  %t393 = load ptr, ptr %l1, !tbaa !29
  store ptr %t393, ptr %l174, !tbaa !29
  %t394 = load ptr, ptr %l174, !tbaa !29
  %t395 = getelementptr %"compiler/bindgen:ctp", ptr %t394, i32 0, i32 1
  %t396 = load i64, ptr %t395, !tbaa !24
  %t398 = add i64 %t396, 1
  %t400 = load ptr, ptr %l174, !tbaa !29
  %t401 = getelementptr %"compiler/bindgen:ctp", ptr %t400, i32 0, i32 1
  store i64 %t398, ptr %t401, !tbaa !24
  br label %bb114
bb113:
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s10)
  br label %bb115
bb115:
  br label %bb81
bb116:
  %t402 = load ptr, ptr %l1, !tbaa !29
  store ptr %t402, ptr %l177, !tbaa !29
  %t403 = load ptr, ptr %l177, !tbaa !29
  %t404 = getelementptr %"compiler/bindgen:ctp", ptr %t403, i32 0, i32 1
  %t405 = load i64, ptr %t404, !tbaa !24
  %t407 = add i64 %t405, 1
  %t409 = load ptr, ptr %l177, !tbaa !29
  %t410 = getelementptr %"compiler/bindgen:ctp", ptr %t409, i32 0, i32 1
  store i64 %t407, ptr %t410, !tbaa !24
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t413 = getelementptr %"compiler/bindgen:gen", ptr %t411, i32 0, i32 17
  %t415 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t413)
  store i64 %t415, ptr %l182
  br label %bb117
bb117:
  %t416 = load i64, ptr %l182, !tbaa !24
  store i64 %t416, ptr %l13, !tbaa !24
  store ptr %l10, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb118
bb118:
  %t418 = load i64, ptr %l15, !tbaa !24
  store i64 %t418, ptr %l184, !tbaa !24
  %t419 = load ptr, ptr %l14, !tbaa !29
  %t421 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s9, ptr %t419)
  store i64 %t421, ptr %l186
  br label %bb119
bb119:
  %t422 = load i64, ptr %l184, !tbaa !24
  %t423 = load i64, ptr %l186, !tbaa !24
  %t424 = icmp slt i64 %t422, %t423
  %t426 = xor i1 %t424, true
  br i1 %t426, label %bb120, label %bb121
bb120:
  br label %bb126
bb121:
  br label %bb122
bb122:
  %t428 = load ptr, ptr %l14, !tbaa !29
  %t429 = load i64, ptr %l15, !tbaa !24
  %t432 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s9, ptr %t428, i64 %t429)
  store i64 %t432, ptr %l191
  br label %bb123
bb123:
  %t433 = load i64, ptr %l191, !tbaa !24
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t436 = getelementptr %"compiler/bindgen:gen", ptr %t434, i32 0, i32 17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t436, i64 %t433)
  br label %bb124
bb124:
  br label %bb125
bb125:
  %t440 = load i64, ptr %l15, !tbaa !24
  %t442 = add i64 %t440, 1
  store i64 %t442, ptr %l15, !tbaa !24
  br label %bb118
bb126:
  %t444 = load ptr, ptr %l0, !tbaa !29
  store ptr %t444, ptr %l197, !tbaa !29
  store i32 5, ptr %l198
  %t445 = load i1, ptr %l11, !tbaa !21
  br i1 %t445, label %bb127, label %bb128
bb127:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d120, i32 0, i32 1) }, ptr %l200, !tbaa !27
  br label %bb129
bb128:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d121, i32 0, i32 1) }, ptr %l200, !tbaa !27
  br label %bb129
bb129:
  %t447 = load i64, ptr %l5, !tbaa !24
  store i64 %t447, ptr %l201, !tbaa !24
  %t449 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s9, ptr %l10)
  store i64 %t449, ptr %l203
  br label %bb130
bb130:
  %t450 = load ptr, ptr %l197, !tbaa !29
  %t451 = load i32, ptr %l198, !range !{i32 0, i32 7}
  %t452 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t453 = load i64, ptr %l201, !tbaa !24
  %t454 = load i64, ptr %l203, !tbaa !24
  %t455 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t450, i32 %t451, { i64, ptr } %t452, i64 %t453, i1 false, i64 %t454)
  store i64 %t455, ptr %l204
  br label %bb131
bb131:
  %t456 = load i64, ptr %l204, !tbaa !24
  store i64 %t456, ptr %l17, !tbaa !24
  %t457 = load i64, ptr %l17, !tbaa !24
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t461 = getelementptr %"compiler/bindgen:gen", ptr %t459, i32 0, i32 16
  %t465 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eRefMut_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t461, i64 %t457)
  store ptr %t465, ptr %l209
  br label %bb132
bb132:
  %t466 = load ptr, ptr %l209, !tbaa !29
  %t468 = load i64, ptr %l13, !tbaa !24
  %t471 = getelementptr %"compiler/bindgen:ctype", ptr %t466, i32 0, i32 5
  store i64 %t468, ptr %t471, !tbaa !24
  %t472 = load i64, ptr %l17, !tbaa !24
  store i64 %t472, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s9)
  br label %bb151
bb133:
  %t474 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t475 = extractvalue { i64, ptr } %t474, 0
  %t476 = extractvalue { i64, ptr } %t474, 1
  %t477 = mul i64 %t475, 1
  %t478 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t477)
  call void @llvm.memcpy.p0.p0.i64(ptr %t478, ptr %t476, i64 %t477, i1 false)
  %t479 = insertvalue { i64, ptr } undef, i64 %t475, 0
  %t480 = insertvalue { i64, ptr } %t479, ptr %t478, 1
  %t482 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s18, ptr %s18, { i64, ptr } %t480, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) })
  store i1 %t482, ptr %l216
  br label %bb134
bb134:
  %t483 = load i1, ptr %l216, !tbaa !21
  br i1 %t483, label %bb135, label %bb136
bb135:
  store %olang.scope zeroinitializer, ptr %s19
  %t484 = load ptr, ptr %l1, !tbaa !29
  store ptr %t484, ptr %l217, !tbaa !29
  %t485 = load ptr, ptr %l217, !tbaa !29
  %t486 = getelementptr %"compiler/bindgen:ctp", ptr %t485, i32 0, i32 1
  %t487 = load i64, ptr %t486, !tbaa !24
  %t489 = add i64 %t487, 1
  %t491 = load ptr, ptr %l217, !tbaa !29
  %t492 = getelementptr %"compiler/bindgen:ctp", ptr %t491, i32 0, i32 1
  store i64 %t489, ptr %t492, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  %t493 = load ptr, ptr %l1, !tbaa !29
  %t495 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s19, ptr %t493, i64 0)
  store { i64, ptr } %t495, ptr %l221
  br label %bb137
bb136:
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s8)
  br label %bb153
bb137:
  %t496 = load { i64, ptr }, ptr %l221, !tbaa !27
  %t497 = extractvalue { i64, ptr } %t496, 0
  %t498 = extractvalue { i64, ptr } %t496, 1
  %t499 = mul i64 %t497, 1
  %t500 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t499)
  call void @llvm.memcpy.p0.p0.i64(ptr %t500, ptr %t498, i64 %t499, i1 false)
  %t501 = insertvalue { i64, ptr } undef, i64 %t497, 0
  %t502 = insertvalue { i64, ptr } %t501, ptr %t500, 1
  %t504 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s19, ptr %s19, { i64, ptr } %t502, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) })
  store i1 %t504, ptr %l223
  br label %bb138
bb138:
  %t505 = load i1, ptr %l223, !tbaa !21
  %t506 = xor i1 %t505, true
  br i1 %t506, label %bb139, label %bb140
bb139:
  store %olang.scope zeroinitializer, ptr %s20
  %t508 = load ptr, ptr %l1, !tbaa !29
  %t510 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s20, ptr %t508, i64 0)
  store { i64, ptr } %t510, ptr %l227
  br label %bb141
bb140:
  br label %bb148
bb141:
  %t511 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t512 = extractvalue { i64, ptr } %t511, 0
  %t513 = extractvalue { i64, ptr } %t511, 1
  %t514 = mul i64 %t512, 1
  %t515 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t514)
  call void @llvm.memcpy.p0.p0.i64(ptr %t515, ptr %t513, i64 %t514, i1 false)
  %t516 = insertvalue { i64, ptr } undef, i64 %t512, 0
  %t517 = insertvalue { i64, ptr } %t516, ptr %t515, 1
  store { i64, ptr } %t517, ptr %l228, !tbaa !27
  %t518 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s20, i64 10)
  %t519 = extractvalue { i32, i64 } %t518, 1
  %t520 = extractvalue { i32, i64 } %t518, 0
  store i32 %t520, ptr %l230
  %t521 = icmp ne i32 %t520, 0
  br i1 %t521, label %bb143, label %ok.522, !prof !99
ok.522:
  store i64 %t519, ptr %l229
  br label %bb142
bb142:
  %t523 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t524 = load i64, ptr %l229, !tbaa !24
  %t525 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s20, { i64, ptr } %t523, i64 %t524)
  %t526 = extractvalue { i32, i64 } %t525, 1
  %t527 = extractvalue { i32, i64 } %t525, 0
  store i32 %t527, ptr %l232
  %t528 = icmp ne i32 %t527, 0
  br i1 %t528, label %bb146, label %ok.529, !prof !99
ok.529:
  store i64 %t526, ptr %l231
  br label %bb145
bb143:
  br label %bb144
bb144:
  store i64 -1, ptr %l225, !tbaa !24
  br label %bb147
bb145:
  %t530 = load i64, ptr %l231, !tbaa !24
  store i64 %t530, ptr %l225, !tbaa !24
  br label %bb147
bb146:
  br label %bb144
bb147:
  %t531 = load i64, ptr %l225, !tbaa !24
  store i64 %t531, ptr %l20, !tbaa !24
  %t532 = load ptr, ptr %l1, !tbaa !29
  store ptr %t532, ptr %l233, !tbaa !29
  %t533 = load ptr, ptr %l233, !tbaa !29
  %t534 = getelementptr %"compiler/bindgen:ctp", ptr %t533, i32 0, i32 1
  %t535 = load i64, ptr %t534, !tbaa !24
  %t537 = add i64 %t535, 1
  %t539 = load ptr, ptr %l233, !tbaa !29
  %t540 = getelementptr %"compiler/bindgen:ctp", ptr %t539, i32 0, i32 1
  store i64 %t537, ptr %t540, !tbaa !24
  call void @__olang_scope_close(ptr %s20)
  br label %bb148
bb148:
  %t541 = load ptr, ptr %l1, !tbaa !29
  store ptr %t541, ptr %l236, !tbaa !29
  %t542 = load ptr, ptr %l236, !tbaa !29
  %t543 = getelementptr %"compiler/bindgen:ctp", ptr %t542, i32 0, i32 1
  %t544 = load i64, ptr %t543, !tbaa !24
  %t546 = add i64 %t544, 1
  %t548 = load ptr, ptr %l236, !tbaa !29
  %t549 = getelementptr %"compiler/bindgen:ctp", ptr %t548, i32 0, i32 1
  store i64 %t546, ptr %t549, !tbaa !24
  %t550 = load i64, ptr %l20, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l9, i64 %t550)
  br label %bb149
bb149:
  call void @__olang_scope_close(ptr %s19)
  br label %bb150
bb150:
  call void @__olang_scope_close(ptr %s18)
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s8)
  br label %bb152
bb152:
  br label %bb75
bb153:
  store i64 0, ptr %l21, !tbaa !24
  %t554 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l9)
  store i64 %t554, ptr %l242
  br label %bb154
bb154:
  %t555 = load i64, ptr %l242, !tbaa !24
  store i64 %t555, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t556 = load i64, ptr %l22, !tbaa !24
  %t557 = load i64, ptr %l21, !tbaa !24
  %t560 = icmp sgt i64 %t556, %t557
  br i1 %t560, label %bb155, label %bb156
bb155:
  %t562 = load i64, ptr %l23, !tbaa !24
  %t564 = icmp sgt i64 %t562, 0
  br i1 %t564, label %bb157, label %bb158
bb156:
  store i64 0, ptr %l246, !tbaa !24
  br label %bb160
bb157:
  %t566 = load i64, ptr %l22, !tbaa !24
  %t567 = load i64, ptr %l21, !tbaa !24
  %t570 = sub i64 %t566, %t567
  %t571 = load i64, ptr %l23, !tbaa !24
  %t574 = add i64 %t570, %t571
  %t576 = sub i64 %t574, 1
  %t577 = load i64, ptr %l23, !tbaa !24
  %t580 = sdiv i64 %t576, %t577
  store i64 %t580, ptr %l249, !tbaa !24
  br label %bb159
bb158:
  store i64 0, ptr %l249, !tbaa !24
  br label %bb159
bb159:
  %t582 = load i64, ptr %l249, !tbaa !24
  store i64 %t582, ptr %l246, !tbaa !24
  br label %bb160
bb160:
  %t583 = load i64, ptr %l246, !tbaa !24
  store i64 %t583, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb161
bb161:
  %t584 = load i64, ptr %l25, !tbaa !24
  %t585 = load i64, ptr %l24, !tbaa !24
  %t588 = icmp slt i64 %t584, %t585
  %t590 = xor i1 %t588, true
  br i1 %t590, label %bb162, label %bb163
bb162:
  br label %bb169
bb163:
  br label %bb164
bb164:
  %t592 = load i64, ptr %l21, !tbaa !24
  %t593 = load i64, ptr %l25, !tbaa !24
  %t594 = load i64, ptr %l23, !tbaa !24
  %t597 = mul i64 %t593, %t594
  %t600 = add i64 %t592, %t597
  store i64 %t600, ptr %l26, !tbaa !24
  %t602 = load ptr, ptr %l0, !tbaa !29
  store ptr %t602, ptr %l267, !tbaa !29
  store i32 4, ptr %l268
  %t603 = load i64, ptr %l5, !tbaa !24
  store i64 %t603, ptr %l269, !tbaa !24
  store ptr %l9, ptr %l270, !tbaa !29
  %t605 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l9)
  store i64 %t605, ptr %l272
  br label %bb165
bb165:
  %t606 = load i64, ptr %l272, !tbaa !24
  %t607 = sub i64 %t606, 1
  %t608 = load i64, ptr %l26, !tbaa !24
  %t611 = sub i64 %t607, %t608
  %t612 = load ptr, ptr %l270, !tbaa !29
  %t614 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t612, i64 %t611)
  store i64 %t614, ptr %l276
  br label %bb166
bb166:
  %t615 = load ptr, ptr %l267, !tbaa !29
  %t616 = load i32, ptr %l268, !range !{i32 0, i32 7}
  %t617 = load i64, ptr %l269, !tbaa !24
  %t618 = load i64, ptr %l276, !tbaa !24
  %t619 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t615, i32 %t616, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d124, i32 0, i32 1) }, i64 %t617, i1 false, i64 %t618)
  store i64 %t619, ptr %l277
  br label %bb167
bb167:
  %t620 = load i64, ptr %l277, !tbaa !24
  store i64 %t620, ptr %l5, !tbaa !24
  br label %bb168
bb168:
  %t621 = load i64, ptr %l25, !tbaa !24
  %t623 = add i64 %t621, 1
  store i64 %t623, ptr %l25, !tbaa !24
  br label %bb161
bb169:
  %t625 = load i64, ptr %l7, !tbaa !24
  %t627 = icmp sge i64 %t625, 0
  br i1 %t627, label %bb170, label %bb171
bb170:
  %t629 = load ptr, ptr %l1, !tbaa !29
  %t631 = getelementptr %"compiler/bindgen:ctp", ptr %t629, i32 0, i32 1
  %t632 = load i64, ptr %t631, !tbaa !24
  store i64 %t632, ptr %l27, !tbaa !24
  %t634 = load ptr, ptr %l1, !tbaa !29
  %t635 = load i64, ptr %l7, !tbaa !24
  %t638 = getelementptr %"compiler/bindgen:ctp", ptr %t634, i32 0, i32 1
  store i64 %t635, ptr %t638, !tbaa !24
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t640 = load ptr, ptr %l1, !tbaa !29
  %t641 = load i64, ptr %l5, !tbaa !24
  %t642 = load i64, ptr %l4, !tbaa !24
  %t647 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edeclarator(ptr %v0, ptr %v1, ptr %t639, ptr %t640, i64 %t641, i1 false, i64 %t642)
  store i64 %t647, ptr %l290
  br label %bb172
bb171:
  br label %bb173
bb172:
  %t648 = load i64, ptr %l290, !tbaa !24
  store i64 %t648, ptr %l5, !tbaa !24
  %t649 = load ptr, ptr %l1, !tbaa !29
  %t650 = load i64, ptr %l27, !tbaa !24
  %t653 = getelementptr %"compiler/bindgen:ctp", ptr %t649, i32 0, i32 1
  store i64 %t650, ptr %t653, !tbaa !24
  br label %bb173
bb173:
  %t654 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t654, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eplain(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eopaque(ptr %v0, ptr %t7, i64 %t8)
  store i1 %t11, ptr %l8
  br label %bb4
bb4:
  %t12 = load i1, ptr %l8, !tbaa !21
  store i1 %t12, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l5, !tbaa !21
  store i1 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2emacroFns(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/bindgen:cMacro"
  %lp5 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"compiler/bindgen:cMacro"
  %l17 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %l26 = alloca i1
  %l28 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l40 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i32
  %l46 = alloca i1
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 12
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/bindgen:cMacro" %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load %"compiler/bindgen:cMacro", ptr %l15
  store %"compiler/bindgen:cMacro" %t20, ptr %l3
  %t21 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t22, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d125, i32 0, i32 1) })
  store i1 %t24, ptr %l17
  br label %bb7
bb7:
  %t25 = load i1, ptr %l17, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  %t26 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 1
  %t27 = load i1, ptr %t26, !tbaa !21
  %t29 = xor i1 %t27, true
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb13
bb12:
  %t32 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 4
  %t33 = load i1, ptr %t32, !tbaa !21
  %t35 = xor i1 %t33, true
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t37 = load i1, ptr %l21, !tbaa !21
  br i1 %t37, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb17
bb15:
  %t38 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = call i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %t39)
  store i1 %t41, ptr %l26
  br label %bb16
bb16:
  %t42 = load i1, ptr %l26, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l24, !tbaa !21
  br label %bb17
bb17:
  %t45 = load i1, ptr %l24, !tbaa !21
  br i1 %t45, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb21
bb19:
  %t46 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/bindgen:gen", ptr %t49, i32 0, i32 21
  %t55 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t51, { i64, ptr } %t47)
  store i1 %t55, ptr %l33
  br label %bb20
bb20:
  %t56 = load i1, ptr %l33, !tbaa !21
  store i1 %t56, ptr %l28, !tbaa !21
  br label %bb21
bb21:
  %t57 = load i1, ptr %l28, !tbaa !21
  br i1 %t57, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb25
bb23:
  %t58 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  %t61 = call i1 @compiler_2fbindgen_2epreludeName(ptr %v0, { i64, ptr } %t59)
  store i1 %t61, ptr %l36
  br label %bb24
bb24:
  %t62 = load i1, ptr %l36, !tbaa !21
  store i1 %t62, ptr %l34, !tbaa !21
  br label %bb25
bb25:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb27:
  br label %bb28
bb28:
  %t64 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 5
  %t65 = load i1, ptr %t64, !tbaa !21
  br i1 %t65, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s4
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v0, ptr %s4, ptr %t67, { i64, ptr } %t69, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d126, i32 0, i32 1) })
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb32:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t75 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2emacroFn(ptr %v0, ptr %s2, ptr %v0, ptr %t72, ptr %l3)
  %t76 = extractvalue { i32, { i64, ptr } } %t75, 1
  %t77 = extractvalue { i32, { i64, ptr } } %t75, 0
  store i32 %t77, ptr %l44
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb34, label %ok.79, !prof !99
ok.79:
  store { i64, ptr } %t76, ptr %l43
  br label %bb33
bb33:
  %t80 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t80, ptr %l40, !tbaa !27
  br label %bb37
bb34:
  %t81 = load i32, ptr %l44, !tbaa !23
  %t82 = ashr i32 %t81, 16
  %t84 = icmp eq i32 %t82, 1
  store i1 %t84, ptr %l46, !tbaa !21
  br label %bb35
bb35:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/bindgen:gen", ptr %t88, i32 0, i32 25
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v0, ptr %v0, ptr %t85, { i64, ptr } %t87, { i64, ptr } %t91)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb37:
  %t95 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t95, ptr %lp5
  %t96 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t97 = load ptr, ptr %lp5
  store { i64, ptr } %t96, ptr %t97, !tbaa !27
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/bindgen:gen", ptr %t98, i32 0, i32 14
  %t101 = load ptr, ptr %lp5
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t100, { i64, ptr } %t102)
  br label %bb38
bb38:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/bindgen:gen", ptr %t105, i32 0, i32 21
  %t108 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t107, { i64, ptr } %t109, i64 0)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb40:
  %t112 = load i64, ptr %l2, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l2, !tbaa !24
  br label %bb1
bb41:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/bindgen:record"
  %l7 = alloca %"compiler/bindgen:record"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t5 = alloca %"compiler/bindgen:record", align 8
  %t8 = alloca %"compiler/bindgen:record", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %a0, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t5, ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %t5, i64 216, i1 false)
  br label %bb1
bb1:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t8, ptr %s0, ptr %l5)
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %t8, i64 216, i1 false)
  br label %bb2
bb2:
  %t10 = getelementptr %"compiler/bindgen:record", ptr %l7, i32 0, i32 7
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 1
  %t14 = extractvalue { i64, ptr } %t11, 0
  %t15 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t14)
  call void @olang_textcopy(ptr %t15, ptr %t13, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t17, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecords(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i32
  %l19 = alloca i1
  %l20 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i32
  %l27 = alloca i1
  %l28 = alloca i1
  %l30 = alloca i1
  %l31 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %l40 = alloca i1
  %l47 = alloca i64
  %l51 = alloca i64
  %l54 = alloca i64
  %l75 = alloca %"compiler/bindgen:record"
  %l77 = alloca %"compiler/bindgen:record"
  %l79 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca i64
  %l82 = alloca { i64, ptr }
  %l84 = alloca ptr
  %l88 = alloca %"compiler/bindgen:record"
  %l90 = alloca %"compiler/bindgen:record"
  %l92 = alloca { i64, ptr }
  %l93 = alloca i32
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %t123 = alloca %"compiler/bindgen:record", align 8
  %t126 = alloca %"compiler/bindgen:record", align 8
  %t142 = alloca %"compiler/bindgen:record", align 8
  %t145 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 4
  %t5 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd80cb4cbc6ceb8a13686fbc19b8451b4(ptr %v0, ptr %v0, ptr %t3)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l13
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t6, ptr %l1
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H116ed76223103781f5a7340c80f3d0f3(ptr %v0, ptr %v0, ptr %l1)
  %t9 = extractvalue { i32, { i64, ptr } } %t8, 1
  %t10 = extractvalue { i32, { i64, ptr } } %t8, 0
  store i32 %t10, ptr %l17
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb4, label %ok.12, !prof !99
ok.12:
  store { i64, ptr } %t9, ptr %l16
  br label %bb3
bb3:
  %t13 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t13, ptr %l14, !tbaa !27
  br label %bb6
bb4:
  %t14 = load i32, ptr %l17, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l19, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb6:
  %t18 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t18, ptr %l2, !tbaa !27
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/bindgen:gen", ptr %t19, i32 0, i32 4
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t25 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v0, ptr %v0, ptr %t21, { i64, ptr } %t22)
  %t26 = extractvalue { i32, { i64, ptr } } %t25, 1
  %t27 = extractvalue { i32, { i64, ptr } } %t25, 0
  store i32 %t27, ptr %l25
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb8, label %ok.29, !prof !99
ok.29:
  store { i64, ptr } %t26, ptr %l24
  br label %bb7
bb7:
  %t30 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t30, ptr %l20, !tbaa !27
  br label %bb10
bb8:
  br label %bb9
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d127, i32 0, i32 1) }, ptr %l20, !tbaa !27
  br label %bb10
bb10:
  %t31 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t31, ptr %l3, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t32, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d128, i32 0, i32 1) })
  store i1 %t34, ptr %l27
  br label %bb11
bb11:
  %t35 = load i1, ptr %l27, !tbaa !21
  br i1 %t35, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb15
bb13:
  %t36 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t36, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d129, i32 0, i32 1) })
  store i1 %t38, ptr %l30
  br label %bb14
bb14:
  %t39 = load i1, ptr %l30, !tbaa !21
  store i1 %t39, ptr %l28, !tbaa !21
  br label %bb15
bb15:
  %t40 = load i1, ptr %l28, !tbaa !21
  br i1 %t40, label %bb16, label %bb17
bb16:
  %t41 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/bindgen:gen", ptr %t43, i32 0, i32 22
  %t49 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %v0, ptr %t45, { i64, ptr } %t41)
  store i1 %t49, ptr %l36
  br label %bb18
bb17:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb19
bb18:
  %t50 = load i1, ptr %l36, !tbaa !21
  %t51 = xor i1 %t50, true
  store i1 %t51, ptr %l31, !tbaa !21
  br label %bb19
bb19:
  %t53 = load i1, ptr %l31, !tbaa !21
  br i1 %t53, label %bb20, label %bb21
bb20:
  %t54 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t56 = call i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %t54)
  store i1 %t56, ptr %l40
  br label %bb22
bb21:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb23
bb22:
  %t57 = load i1, ptr %l40, !tbaa !21
  store i1 %t57, ptr %l38, !tbaa !21
  br label %bb23
bb23:
  %t58 = load i1, ptr %l38, !tbaa !21
  br i1 %t58, label %bb24, label %bb25
bb24:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/bindgen:gen", ptr %t59, i32 0, i32 22
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t61, { i64, ptr } %t62, { i64, ptr } %t63)
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb28:
  br label %bb2
bb29:
  store i64 0, ptr %l5, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/bindgen:gen", ptr %t67, i32 0, i32 5
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t69)
  store i64 %t71, ptr %l47
  br label %bb30
bb30:
  %t72 = load i64, ptr %l47, !tbaa !24
  store i64 %t72, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t73 = load i64, ptr %l6, !tbaa !24
  %t74 = load i64, ptr %l5, !tbaa !24
  %t77 = icmp sgt i64 %t73, %t74
  br i1 %t77, label %bb31, label %bb32
bb31:
  %t79 = load i64, ptr %l7, !tbaa !24
  %t81 = icmp sgt i64 %t79, 0
  br i1 %t81, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb36
bb33:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l5, !tbaa !24
  %t87 = sub i64 %t83, %t84
  %t88 = load i64, ptr %l7, !tbaa !24
  %t91 = add i64 %t87, %t88
  %t93 = sub i64 %t91, 1
  %t94 = load i64, ptr %l7, !tbaa !24
  %t97 = sdiv i64 %t93, %t94
  store i64 %t97, ptr %l54, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb35
bb35:
  %t99 = load i64, ptr %l54, !tbaa !24
  store i64 %t99, ptr %l51, !tbaa !24
  br label %bb36
bb36:
  %t100 = load i64, ptr %l51, !tbaa !24
  store i64 %t100, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb37
bb37:
  store %olang.scope zeroinitializer, ptr %s5
  %t101 = load i64, ptr %l9, !tbaa !24
  %t102 = load i64, ptr %l8, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s5)
  br label %bb55
bb39:
  br label %bb40
bb40:
  %t109 = load i64, ptr %l5, !tbaa !24
  %t110 = load i64, ptr %l9, !tbaa !24
  %t111 = load i64, ptr %l7, !tbaa !24
  %t114 = mul i64 %t110, %t111
  %t117 = add i64 %t109, %t114
  store i64 %t117, ptr %l10, !tbaa !24
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/bindgen:gen", ptr %t119, i32 0, i32 5
  %t122 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t123, ptr %v0, ptr %v0, ptr %t121, i64 %t122)
  call void @llvm.memmove.p0.p0.i64(ptr %l75, ptr %t123, i64 216, i1 false)
  br label %bb41
bb41:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t126, ptr %s5, ptr %l75)
  call void @llvm.memmove.p0.p0.i64(ptr %l77, ptr %t126, i64 216, i1 false)
  br label %bb42
bb42:
  %t128 = getelementptr %"compiler/bindgen:record", ptr %l77, i32 0, i32 0
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s5, { i64, ptr } %t129, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d130, i32 0, i32 1) })
  store i1 %t131, ptr %l79
  br label %bb43
bb43:
  %t132 = load i1, ptr %l79, !tbaa !21
  br i1 %t132, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s5)
  br label %bb54
bb45:
  br label %bb46
bb46:
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l80, !tbaa !29
  %t134 = load i64, ptr %l10, !tbaa !24
  store i64 %t134, ptr %l81, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/bindgen:gen", ptr %t135, i32 0, i32 22
  store ptr %t137, ptr %l84, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/bindgen:gen", ptr %t138, i32 0, i32 5
  %t141 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t142, ptr %v0, ptr %v0, ptr %t140, i64 %t141)
  call void @llvm.memmove.p0.p0.i64(ptr %l88, ptr %t142, i64 216, i1 false)
  br label %bb47
bb47:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t145, ptr %s5, ptr %l88)
  call void @llvm.memmove.p0.p0.i64(ptr %l90, ptr %t145, i64 216, i1 false)
  br label %bb48
bb48:
  %t147 = getelementptr %"compiler/bindgen:record", ptr %l90, i32 0, i32 0
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  %t149 = load ptr, ptr %l84, !tbaa !29
  %t151 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v0, ptr %v0, ptr %t149, { i64, ptr } %t148)
  %t152 = extractvalue { i32, { i64, ptr } } %t151, 1
  %t153 = extractvalue { i32, { i64, ptr } } %t151, 0
  store i32 %t153, ptr %l93
  %t154 = icmp ne i32 %t153, 0
  br i1 %t154, label %bb50, label %ok.155, !prof !99
ok.155:
  store { i64, ptr } %t152, ptr %l92
  br label %bb49
bb49:
  %t156 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t156, ptr %l82, !tbaa !27
  br label %bb52
bb50:
  br label %bb51
bb51:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d131, i32 0, i32 1) }, ptr %l82, !tbaa !27
  br label %bb52
bb52:
  %t157 = load ptr, ptr %l80, !tbaa !29
  %t158 = load i64, ptr %l81, !tbaa !24
  %t159 = load { i64, ptr }, ptr %l82, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecord(ptr %v0, ptr %v0, ptr %t157, i64 %t158, { i64, ptr } %t159)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s5)
  br label %bb54
bb54:
  %t160 = load i64, ptr %l9, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l9, !tbaa !24
  br label %bb37
bb55:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/bindgen:gen", ptr %t164, i32 0, i32 23
  store i1 true, ptr %t166, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eopaque(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l11 = alloca i1
  %l17 = alloca i1
  %l22 = alloca ptr
  %l26 = alloca i1
  %l30 = alloca i1
  %l34 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/bindgen:record", ptr %t9, i32 0, i32 2
  %t12 = load i1, ptr %t11, !tbaa !21
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/bindgen:record", ptr %t16, i32 0, i32 10
  %t19 = load i1, ptr %t18, !tbaa !21
  store i1 %t19, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l11, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eplain(ptr %v0, ptr %t23, i64 %t24)
  store i1 %t27, ptr %l17
  br label %bb8
bb8:
  %t28 = load i1, ptr %l17, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/bindgen:gen", ptr %t30, i32 0, i32 5
  %t33 = load i64, ptr %l1, !tbaa !24
  %t36 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t32, i64 %t33)
  store ptr %t36, ptr %l22
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l22, !tbaa !29
  store ptr %t37, ptr %l3, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/bindgen:record", ptr %t38, i32 0, i32 13
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = icmp sgt i64 %t41, 0
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = getelementptr %"compiler/bindgen:record", ptr %t45, i32 0, i32 14
  %t48 = load i64, ptr %t47, !tbaa !24
  %t50 = icmp sgt i64 %t48, 0
  store i1 %t50, ptr %l26, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb15
bb15:
  %t52 = load i1, ptr %l26, !tbaa !21
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr %"compiler/bindgen:record", ptr %t53, i32 0, i32 14
  %t56 = load i64, ptr %t55, !tbaa !24
  %t58 = icmp sle i64 %t56, 8
  store i1 %t58, ptr %l30, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb18
bb18:
  %t60 = load i1, ptr %l30, !tbaa !21
  br i1 %t60, label %bb19, label %bb20
bb19:
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t63 = getelementptr %"compiler/bindgen:record", ptr %t61, i32 0, i32 13
  %t64 = load i64, ptr %t63, !tbaa !24
  %t65 = load ptr, ptr %l3, !tbaa !29
  %t67 = getelementptr %"compiler/bindgen:record", ptr %t65, i32 0, i32 14
  %t68 = load i64, ptr %t67, !tbaa !24
  %t71 = srem i64 %t64, %t68
  %t73 = icmp eq i64 %t71, 0
  store i1 %t73, ptr %l34, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t75 = load i1, ptr %l34, !tbaa !21
  store i1 %t75, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epackedFields(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"compiler/bindgen:record"
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"compiler/bindgen:ctype"
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"compiler/bindgen:ctype"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"compiler/bindgen:record"
  %l23 = alloca %"compiler/bindgen:record"
  %l26 = alloca i1
  %l28 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i64
  %l35 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l64 = alloca { i64, ptr }
  %l65 = alloca i1
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l71 = alloca i64
  %l75 = alloca %"compiler/bindgen:ctype"
  %l78 = alloca i64
  %l79 = alloca ptr
  %l82 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l90 = alloca i1
  %l94 = alloca i1
  %l96 = alloca i1
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca ptr
  %l99 = alloca i64
  %l101 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l113 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l119 = alloca %"compiler/bindgen:ctype"
  %l123 = alloca i1
  %l125 = alloca i1
  %l126 = alloca i1
  %l128 = alloca i1
  %l129 = alloca i1
  %l131 = alloca i64
  %l133 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l134 = alloca ptr
  %l135 = alloca i64
  %l137 = alloca { i64, ptr }
  %l139 = alloca i1
  %l140 = alloca { i64, ptr }
  %l145 = alloca i64
  %l147 = alloca i64
  %l154 = alloca i1
  %l156 = alloca i64
  %l158 = alloca i1
  %l160 = alloca i1
  %l161 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l162 = alloca ptr
  %l163 = alloca i64
  %l165 = alloca { i64, ptr }
  %l167 = alloca i1
  %l168 = alloca { i64, ptr }
  %l172 = alloca i64
  %l174 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t7 = alloca %"compiler/bindgen:record", align 8
  %t10 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l17
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/bindgen:gen", ptr %t3, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t7, ptr %v0, ptr %v0, ptr %t5, i64 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %t7, i64 216, i1 false)
  br label %bb2
bb2:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t10, ptr %v0, ptr %l21)
  call void @llvm.memmove.p0.p0.i64(ptr %l23, ptr %t10, i64 216, i1 false)
  br label %bb3
bb3:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l23, i64 216, i1 false)
  %t12 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 2
  %t13 = load i1, ptr %t12, !tbaa !21
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb6
bb5:
  %t17 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 1
  %t18 = load i1, ptr %t17, !tbaa !21
  store i1 %t18, ptr %l26, !tbaa !21
  br label %bb6
bb6:
  %t20 = load i1, ptr %l26, !tbaa !21
  br i1 %t20, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb9
bb8:
  %t21 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 10
  %t22 = load i1, ptr %t21, !tbaa !21
  store i1 %t22, ptr %l28, !tbaa !21
  br label %bb9
bb9:
  %t24 = load i1, ptr %l28, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb13
bb11:
  %t25 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 4
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t25)
  store i64 %t27, ptr %l32
  br label %bb12
bb12:
  %t28 = load i64, ptr %l32, !tbaa !24
  %t29 = icmp eq i64 %t28, 0
  store i1 %t29, ptr %l30, !tbaa !21
  br label %bb13
bb13:
  %t31 = load i1, ptr %l30, !tbaa !21
  br i1 %t31, label %bb14, label %bb15
bb14:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t34 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t34, ptr %l35
  br label %bb17
bb17:
  %t35 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t35, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t36 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 4
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t36)
  store i64 %t38, ptr %l37
  br label %bb18
bb18:
  %t39 = load i64, ptr %l37, !tbaa !24
  store i64 %t39, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = icmp sgt i64 %t40, %t41
  br i1 %t44, label %bb19, label %bb20
bb19:
  %t46 = load i64, ptr %l8, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb24
bb21:
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = sub i64 %t50, %t51
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = add i64 %t54, %t55
  %t60 = sub i64 %t58, 1
  %t61 = load i64, ptr %l8, !tbaa !24
  %t64 = sdiv i64 %t60, %t61
  store i64 %t64, ptr %l44, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb23
bb23:
  %t66 = load i64, ptr %l44, !tbaa !24
  store i64 %t66, ptr %l41, !tbaa !24
  br label %bb24
bb24:
  %t67 = load i64, ptr %l41, !tbaa !24
  store i64 %t67, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t68 = load i64, ptr %l10, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb112
bb27:
  br label %bb28
bb28:
  %t76 = load i64, ptr %l6, !tbaa !24
  %t77 = load i64, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l8, !tbaa !24
  %t81 = mul i64 %t77, %t78
  %t84 = add i64 %t76, %t81
  store i64 %t84, ptr %l11, !tbaa !24
  %t86 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 4
  %t87 = load i64, ptr %l11, !tbaa !24
  %t90 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t86, i64 %t87)
  store { i64, ptr } %t90, ptr %l64
  br label %bb29
bb29:
  %t91 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t92 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t91, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d132, i32 0, i32 1) })
  store i1 %t92, ptr %l65
  br label %bb30
bb30:
  %t93 = load i1, ptr %l65, !tbaa !21
  br i1 %t93, label %bb31, label %bb32
bb31:
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l66
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t95 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %rv
  br label %ret
bb34:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l67, !tbaa !29
  %t97 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 5
  %t98 = load i64, ptr %l11, !tbaa !24
  %t101 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t97, i64 %t98)
  store { i64, ptr } %t101, ptr %l70
  br label %bb35
bb35:
  %t102 = load ptr, ptr %l67, !tbaa !29
  %t103 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t104 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %v0, ptr %t102, { i64, ptr } %t103, i64 0)
  store i64 %t104, ptr %l71
  br label %bb36
bb36:
  %t105 = load i64, ptr %l71, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/bindgen:gen", ptr %t106, i32 0, i32 16
  %t112 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t108, i64 %t105)
  store %"compiler/bindgen:ctype" %t112, ptr %l75
  br label %bb37
bb37:
  %t113 = load %"compiler/bindgen:ctype", ptr %l75
  store %"compiler/bindgen:ctype" %t113, ptr %l13
  %t114 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 16
  %t115 = load i64, ptr %l11, !tbaa !24
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t114, i64 %t115)
  store i64 %t118, ptr %l78
  br label %bb38
bb38:
  %t119 = load i64, ptr %l78, !tbaa !24
  store i64 %t119, ptr %l14, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l79, !tbaa !29
  %t121 = getelementptr %"compiler/bindgen:record", ptr %l3, i32 0, i32 4
  %t122 = load i64, ptr %l11, !tbaa !24
  %t125 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t121, i64 %t122)
  store { i64, ptr } %t125, ptr %l82
  br label %bb39
bb39:
  %t126 = load i64, ptr %l11, !tbaa !24
  %t127 = load ptr, ptr %l79, !tbaa !29
  %t128 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t131 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamName(ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %t127, { i64, ptr } %t128, i64 %t126, ptr %l4)
  store { i64, ptr } %t131, ptr %l85
  br label %bb40
bb40:
  %t132 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t132, ptr %l15, !tbaa !27
  %t133 = load i64, ptr %l14, !tbaa !24
  %t135 = icmp sge i64 %t133, 0
  br i1 %t135, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s5
  %t137 = load i64, ptr %l14, !tbaa !24
  %t139 = icmp eq i64 %t137, 0
  br i1 %t139, label %bb43, label %bb44
bb42:
  br label %bb58
bb43:
  store i1 true, ptr %l90, !tbaa !21
  br label %bb45
bb44:
  %t141 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 0
  %t142 = load i32, ptr %t141, !range !{i32 0, i32 7}
  %t144 = trunc i64 1 to i32
  %t145 = icmp eq i32 %t142, %t144
  %t147 = xor i1 %t145, true
  store i1 %t147, ptr %l90, !tbaa !21
  br label %bb45
bb45:
  %t149 = load i1, ptr %l90, !tbaa !21
  br i1 %t149, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb49
bb47:
  %t150 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  %t153 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s5, { i64, ptr } %t151, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) })
  store i1 %t153, ptr %l96
  br label %bb48
bb48:
  %t154 = load i1, ptr %l96, !tbaa !21
  store i1 %t154, ptr %l94, !tbaa !21
  br label %bb49
bb49:
  %t155 = load i1, ptr %l94, !tbaa !21
  br i1 %t155, label %bb50, label %bb51
bb50:
  %t156 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %l97
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t157 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t157, ptr %rv
  br label %ret
bb53:
  store ptr %l2, ptr %l98, !tbaa !29
  %t158 = ptrtoint ptr %v1 to i64
  store i64 %t158, ptr %l99, !tbaa !24
  %t159 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t159, label %bb54, label %bb55
bb54:
  %t161 = call ptr @__olang_region_make(ptr %v1)
  %t162 = ptrtoint ptr %t161 to i64
  store i64 %t162, ptr %l99, !tbaa !24
  br label %bb55
bb55:
  %t163 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t163, ptr %l101, !tbaa !27
  %t164 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  %t166 = load i64, ptr %l14, !tbaa !24
  %t169 = call { i64, ptr } @compiler_2fbindgen_2ebitfieldType(ptr %v0, ptr %s5, { i64, ptr } %t165, i64 %t166)
  store { i64, ptr } %t169, ptr %l104
  br label %bb56
bb56:
  %t170 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t172 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t172, 1
  %t174 = extractvalue { i64, ptr } %t172, 0
  %t175 = add i64 %t171, %t174
  %t176 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t178 = add i64 %t175, %t177
  %t179 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t179, 1
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t182 = add i64 %t178, %t181
  %t183 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t186 = load i64, ptr %l99
  %t187 = inttoptr i64 %t186 to ptr
  %t188 = call ptr @__olang_scope_alloc(ptr %t187, i64 %t185)
  call void @olang_textcopy(ptr %t188, ptr %t170, i64 %t171)
  %t189 = getelementptr i8, ptr %t188, i64 %t171
  call void @olang_textcopy(ptr %t189, ptr %t173, i64 %t174)
  %t190 = getelementptr i8, ptr %t189, i64 %t174
  call void @olang_textcopy(ptr %t190, ptr %t176, i64 %t177)
  %t191 = getelementptr i8, ptr %t190, i64 %t177
  call void @olang_textcopy(ptr %t191, ptr %t180, i64 %t181)
  %t192 = getelementptr i8, ptr %t191, i64 %t181
  call void @olang_textcopy(ptr %t192, ptr %t183, i64 %t184)
  %t193 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t188, 1
  %t196 = load i64, ptr %l99
  %t197 = inttoptr i64 %t196 to ptr
  %t198 = extractvalue { i64, ptr } %t194, 0
  %t199 = extractvalue { i64, ptr } %t194, 1
  %t200 = mul i64 %t198, 1
  %t201 = call ptr @__olang_scope_alloc(ptr %t197, i64 %t200)
  call void @llvm.memcpy.p0.p0.i64(ptr %t201, ptr %t199, i64 %t200, i1 false)
  %t202 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t201, 1
  %t204 = load ptr, ptr %l98, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t204, { i64, ptr } %t203)
  br label %bb57
bb57:
  %t206 = load i64, ptr %l5, !tbaa !24
  %t207 = load i64, ptr %l14, !tbaa !24
  %t210 = add i64 %t206, %t207
  store i64 %t210, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  br label %bb111
bb58:
  %t212 = load i64, ptr %l5, !tbaa !24
  %t214 = srem i64 %t212, 8
  %t216 = icmp ne i64 %t214, 0
  br i1 %t216, label %bb59, label %bb60
bb59:
  %t218 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t218, ptr %l113
  br label %bb61
bb60:
  br label %bb62
bb61:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t219 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l113
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t219, ptr %rv
  br label %ret
bb62:
  %t220 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 0
  %t221 = load i32, ptr %t220, !range !{i32 0, i32 7}
  %t223 = trunc i64 4 to i32
  %t224 = icmp eq i32 %t221, %t223
  br i1 %t224, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s9
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/bindgen:gen", ptr %t226, i32 0, i32 16
  %t229 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 2
  %t230 = load i64, ptr %t229, !tbaa !24
  %t233 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t228, i64 %t230)
  store %"compiler/bindgen:ctype" %t233, ptr %l119
  br label %bb65
bb64:
  br label %bb90
bb65:
  %t234 = load %"compiler/bindgen:ctype", ptr %l119
  store %"compiler/bindgen:ctype" %t234, ptr %l16
  %t235 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 0
  %t236 = load i32, ptr %t235, !range !{i32 0, i32 7}
  %t238 = trunc i64 1 to i32
  %t239 = icmp eq i32 %t236, %t238
  %t241 = xor i1 %t239, true
  br i1 %t241, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l123, !tbaa !21
  br label %bb69
bb67:
  %t243 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 1
  %t244 = load { i64, ptr }, ptr %t243, !tbaa !27
  %t246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s9, { i64, ptr } %t244, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d137, i32 0, i32 1) })
  store i1 %t246, ptr %l125
  br label %bb68
bb68:
  %t247 = load i1, ptr %l125, !tbaa !21
  store i1 %t247, ptr %l123, !tbaa !21
  br label %bb69
bb69:
  %t248 = load i1, ptr %l123, !tbaa !21
  br i1 %t248, label %bb70, label %bb71
bb70:
  store i1 true, ptr %l126, !tbaa !21
  br label %bb73
bb71:
  %t249 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 1
  %t250 = load { i64, ptr }, ptr %t249, !tbaa !27
  %t252 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s9, { i64, ptr } %t250, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d138, i32 0, i32 1) })
  store i1 %t252, ptr %l128
  br label %bb72
bb72:
  %t253 = load i1, ptr %l128, !tbaa !21
  store i1 %t253, ptr %l126, !tbaa !21
  br label %bb73
bb73:
  %t254 = load i1, ptr %l126, !tbaa !21
  br i1 %t254, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l129, !tbaa !21
  br label %bb77
bb75:
  %t255 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 1
  %t256 = load { i64, ptr }, ptr %t255, !tbaa !27
  %t258 = call i64 @compiler_2fbindgen_2enumBits(ptr %v0, { i64, ptr } %t256)
  store i64 %t258, ptr %l131
  br label %bb76
bb76:
  %t259 = load i64, ptr %l131, !tbaa !24
  %t260 = icmp eq i64 %t259, 0
  store i1 %t260, ptr %l129, !tbaa !21
  br label %bb77
bb77:
  %t262 = load i1, ptr %l129, !tbaa !21
  br i1 %t262, label %bb78, label %bb79
bb78:
  %t263 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t263, ptr %l133
  br label %bb80
bb79:
  br label %bb81
bb80:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t264 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l133
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t264, ptr %rv
  br label %ret
bb81:
  store ptr %l2, ptr %l134, !tbaa !29
  %t265 = ptrtoint ptr %v1 to i64
  store i64 %t265, ptr %l135, !tbaa !24
  %t266 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t266, label %bb82, label %bb83
bb82:
  %t268 = call ptr @__olang_region_make(ptr %v1)
  %t269 = ptrtoint ptr %t268 to i64
  store i64 %t269, ptr %l135, !tbaa !24
  br label %bb83
bb83:
  %t270 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t270, ptr %l137, !tbaa !27
  %t271 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 1
  %t272 = load { i64, ptr }, ptr %t271, !tbaa !27
  %t274 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s9, { i64, ptr } %t272, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d139, i32 0, i32 1) })
  store i1 %t274, ptr %l139
  br label %bb84
bb84:
  %t275 = load i1, ptr %l139, !tbaa !21
  br i1 %t275, label %bb85, label %bb86
bb85:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d140, i32 0, i32 1) }, ptr %l140, !tbaa !27
  br label %bb87
bb86:
  %t276 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 1
  %t277 = load { i64, ptr }, ptr %t276, !tbaa !27
  store { i64, ptr } %t277, ptr %l140, !tbaa !27
  br label %bb87
bb87:
  %t279 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 4
  %t280 = load i64, ptr %t279, !tbaa !24
  %t281 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t282 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t283 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t284 = extractvalue { i64, ptr } %t283, 1
  %t285 = extractvalue { i64, ptr } %t283, 0
  %t286 = add i64 %t282, %t285
  %t287 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t288 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t289 = add i64 %t286, %t288
  %t290 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t291 = extractvalue { i64, ptr } %t290, 1
  %t292 = extractvalue { i64, ptr } %t290, 0
  %t293 = add i64 %t289, %t292
  %t294 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t295 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t296 = add i64 %t293, %t295
  %t298 = call i64 @__olang_fmt_i64(ptr null, i64 %t280)
  %t299 = add i64 %t296, %t298
  %t300 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t301 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t302 = add i64 %t299, %t301
  %t303 = load i64, ptr %l135
  %t304 = inttoptr i64 %t303 to ptr
  %t305 = call ptr @__olang_scope_alloc(ptr %t304, i64 %t302)
  call void @olang_textcopy(ptr %t305, ptr %t281, i64 %t282)
  %t306 = getelementptr i8, ptr %t305, i64 %t282
  call void @olang_textcopy(ptr %t306, ptr %t284, i64 %t285)
  %t307 = getelementptr i8, ptr %t306, i64 %t285
  call void @olang_textcopy(ptr %t307, ptr %t287, i64 %t288)
  %t308 = getelementptr i8, ptr %t307, i64 %t288
  call void @olang_textcopy(ptr %t308, ptr %t291, i64 %t292)
  %t309 = getelementptr i8, ptr %t308, i64 %t292
  call void @olang_textcopy(ptr %t309, ptr %t294, i64 %t295)
  %t310 = getelementptr i8, ptr %t309, i64 %t295
  %t311 = call i64 @__olang_fmt_i64(ptr %t310, i64 %t280)
  %t312 = getelementptr i8, ptr %t310, i64 %t298
  call void @olang_textcopy(ptr %t312, ptr %t300, i64 %t301)
  %t313 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t314 = insertvalue { i64, ptr } %t313, ptr %t305, 1
  %t316 = load i64, ptr %l135
  %t317 = inttoptr i64 %t316 to ptr
  %t318 = extractvalue { i64, ptr } %t314, 0
  %t319 = extractvalue { i64, ptr } %t314, 1
  %t320 = mul i64 %t318, 1
  %t321 = call ptr @__olang_scope_alloc(ptr %t317, i64 %t320)
  call void @llvm.memcpy.p0.p0.i64(ptr %t321, ptr %t319, i64 %t320, i1 false)
  %t322 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t323 = insertvalue { i64, ptr } %t322, ptr %t321, 1
  %t324 = load ptr, ptr %l134, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t324, { i64, ptr } %t323)
  br label %bb88
bb88:
  %t326 = load i64, ptr %l5, !tbaa !24
  store i64 %t326, ptr %l145, !tbaa !24
  %t327 = getelementptr %"compiler/bindgen:ctype", ptr %l16, i32 0, i32 1
  %t328 = load { i64, ptr }, ptr %t327, !tbaa !27
  %t330 = call i64 @compiler_2fbindgen_2enumBits(ptr %v0, { i64, ptr } %t328)
  store i64 %t330, ptr %l147
  br label %bb89
bb89:
  %t331 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 4
  %t332 = load i64, ptr %t331, !tbaa !24
  %t333 = load i64, ptr %l147, !tbaa !24
  %t335 = mul i64 %t333, %t332
  %t336 = load i64, ptr %l145, !tbaa !24
  %t338 = add i64 %t336, %t335
  store i64 %t338, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s3)
  br label %bb111
bb90:
  %t340 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 0
  %t341 = load i32, ptr %t340, !range !{i32 0, i32 7}
  %t343 = trunc i64 1 to i32
  %t344 = icmp eq i32 %t341, %t343
  %t346 = xor i1 %t344, true
  br i1 %t346, label %bb91, label %bb92
bb91:
  store i1 true, ptr %l154, !tbaa !21
  br label %bb94
bb92:
  %t348 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t349 = load { i64, ptr }, ptr %t348, !tbaa !27
  %t351 = call i64 @compiler_2fbindgen_2enumBits(ptr %v0, { i64, ptr } %t349)
  store i64 %t351, ptr %l156
  br label %bb93
bb93:
  %t352 = load i64, ptr %l156, !tbaa !24
  %t353 = icmp eq i64 %t352, 0
  store i1 %t353, ptr %l154, !tbaa !21
  br label %bb94
bb94:
  %t355 = load i1, ptr %l154, !tbaa !21
  br i1 %t355, label %bb95, label %bb96
bb95:
  store i1 true, ptr %l158, !tbaa !21
  br label %bb98
bb96:
  %t356 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t357 = load { i64, ptr }, ptr %t356, !tbaa !27
  %t359 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t357, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d145, i32 0, i32 1) })
  store i1 %t359, ptr %l160
  br label %bb97
bb97:
  %t360 = load i1, ptr %l160, !tbaa !21
  store i1 %t360, ptr %l158, !tbaa !21
  br label %bb98
bb98:
  %t361 = load i1, ptr %l158, !tbaa !21
  br i1 %t361, label %bb99, label %bb100
bb99:
  %t362 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t362, ptr %l161
  br label %bb101
bb100:
  br label %bb102
bb101:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t363 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l161
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t363, ptr %rv
  br label %ret
bb102:
  store ptr %l2, ptr %l162, !tbaa !29
  %t364 = ptrtoint ptr %v1 to i64
  store i64 %t364, ptr %l163, !tbaa !24
  %t365 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t365, label %bb103, label %bb104
bb103:
  %t367 = call ptr @__olang_region_make(ptr %v1)
  %t368 = ptrtoint ptr %t367 to i64
  store i64 %t368, ptr %l163, !tbaa !24
  br label %bb104
bb104:
  %t369 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t369, ptr %l165, !tbaa !27
  %t370 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t371 = load { i64, ptr }, ptr %t370, !tbaa !27
  %t373 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t371, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d146, i32 0, i32 1) })
  store i1 %t373, ptr %l167
  br label %bb105
bb105:
  %t374 = load i1, ptr %l167, !tbaa !21
  br i1 %t374, label %bb106, label %bb107
bb106:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d147, i32 0, i32 1) }, ptr %l168, !tbaa !27
  br label %bb108
bb107:
  %t375 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t376 = load { i64, ptr }, ptr %t375, !tbaa !27
  store { i64, ptr } %t376, ptr %l168, !tbaa !27
  br label %bb108
bb108:
  %t378 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t379 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
  %t380 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t381 = extractvalue { i64, ptr } %t380, 1
  %t382 = extractvalue { i64, ptr } %t380, 0
  %t383 = add i64 %t379, %t382
  %t384 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t385 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t386 = add i64 %t383, %t385
  %t387 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t388 = extractvalue { i64, ptr } %t387, 1
  %t389 = extractvalue { i64, ptr } %t387, 0
  %t390 = add i64 %t386, %t389
  %t391 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t392 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t393 = add i64 %t390, %t392
  %t394 = load i64, ptr %l163
  %t395 = inttoptr i64 %t394 to ptr
  %t396 = call ptr @__olang_scope_alloc(ptr %t395, i64 %t393)
  call void @olang_textcopy(ptr %t396, ptr %t378, i64 %t379)
  %t397 = getelementptr i8, ptr %t396, i64 %t379
  call void @olang_textcopy(ptr %t397, ptr %t381, i64 %t382)
  %t398 = getelementptr i8, ptr %t397, i64 %t382
  call void @olang_textcopy(ptr %t398, ptr %t384, i64 %t385)
  %t399 = getelementptr i8, ptr %t398, i64 %t385
  call void @olang_textcopy(ptr %t399, ptr %t388, i64 %t389)
  %t400 = getelementptr i8, ptr %t399, i64 %t389
  call void @olang_textcopy(ptr %t400, ptr %t391, i64 %t392)
  %t401 = insertvalue { i64, ptr } undef, i64 %t393, 0
  %t402 = insertvalue { i64, ptr } %t401, ptr %t396, 1
  %t404 = load i64, ptr %l163
  %t405 = inttoptr i64 %t404 to ptr
  %t406 = extractvalue { i64, ptr } %t402, 0
  %t407 = extractvalue { i64, ptr } %t402, 1
  %t408 = mul i64 %t406, 1
  %t409 = call ptr @__olang_scope_alloc(ptr %t405, i64 %t408)
  call void @llvm.memcpy.p0.p0.i64(ptr %t409, ptr %t407, i64 %t408, i1 false)
  %t410 = insertvalue { i64, ptr } undef, i64 %t406, 0
  %t411 = insertvalue { i64, ptr } %t410, ptr %t409, 1
  %t412 = load ptr, ptr %l162, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t412, { i64, ptr } %t411)
  br label %bb109
bb109:
  %t414 = load i64, ptr %l5, !tbaa !24
  store i64 %t414, ptr %l172, !tbaa !24
  %t415 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t416 = load { i64, ptr }, ptr %t415, !tbaa !27
  %t418 = call i64 @compiler_2fbindgen_2enumBits(ptr %v0, { i64, ptr } %t416)
  store i64 %t418, ptr %l174
  br label %bb110
bb110:
  %t419 = load i64, ptr %l172, !tbaa !24
  %t420 = load i64, ptr %l174, !tbaa !24
  %t421 = add i64 %t419, %t420
  store i64 %t421, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb111
bb111:
  %t423 = load i64, ptr %l10, !tbaa !24
  %t425 = add i64 %t423, 1
  store i64 %t425, ptr %l10, !tbaa !24
  br label %bb25
bb112:
  %t427 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t427, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamType(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/bindgen:ctype"
  %l3 = alloca i64
  %l7 = alloca %"compiler/bindgen:ctype"
  %l12 = alloca i64
  %l16 = alloca %"compiler/bindgen:record"
  %l18 = alloca %"compiler/bindgen:record"
  %l20 = alloca i1
  %l24 = alloca %"compiler/bindgen:record"
  %l26 = alloca %"compiler/bindgen:record"
  %l28 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l36 = alloca %"compiler/bindgen:record"
  %l38 = alloca %"compiler/bindgen:record"
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l43 = alloca i32
  %l47 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l52 = alloca i32
  %l56 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca i32
  %l62 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i32
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t26 = alloca %"compiler/bindgen:record", align 8
  %t29 = alloca %"compiler/bindgen:record", align 8
  %t38 = alloca %"compiler/bindgen:record", align 8
  %t41 = alloca %"compiler/bindgen:record", align 8
  %t56 = alloca %"compiler/bindgen:record", align 8
  %t59 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 16
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store %"compiler/bindgen:ctype" %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load %"compiler/bindgen:ctype", ptr %l7
  store %"compiler/bindgen:ctype" %t8, ptr %l2
  %t9 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 0
  %t10 = load i32, ptr %t9, !range !{i32 0, i32 7}
  %t12 = trunc i64 2 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 1
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t20 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %v0, ptr %t15, { i64, ptr } %t17)
  store i64 %t20, ptr %l12
  br label %bb4
bb3:
  br label %bb23
bb4:
  %t21 = load i64, ptr %l12, !tbaa !24
  store i64 %t21, ptr %l3, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/bindgen:gen", ptr %t22, i32 0, i32 5
  %t25 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t26, ptr %v0, ptr %s1, ptr %t24, i64 %t25)
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t26, i64 216, i1 false)
  br label %bb5
bb5:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t29, ptr %s1, ptr %l16)
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t29, i64 216, i1 false)
  br label %bb6
bb6:
  %t31 = getelementptr %"compiler/bindgen:record", ptr %l18, i32 0, i32 12
  %t32 = load i1, ptr %t31, !tbaa !21
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/bindgen:gen", ptr %t34, i32 0, i32 5
  %t37 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t38, ptr %v0, ptr %v0, ptr %t36, i64 %t37)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t38, i64 216, i1 false)
  br label %bb9
bb8:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb12
bb9:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t41, ptr %s1, ptr %l24)
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t41, i64 216, i1 false)
  br label %bb10
bb10:
  %t43 = getelementptr %"compiler/bindgen:record", ptr %l26, i32 0, i32 5
  %t45 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t43)
  store i64 %t45, ptr %l28
  br label %bb11
bb11:
  %t46 = load i64, ptr %l28, !tbaa !24
  %t47 = icmp sgt i64 %t46, 0
  store i1 %t47, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t49 = load i1, ptr %l20, !tbaa !21
  br i1 %t49, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l31, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l32, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/bindgen:gen", ptr %t52, i32 0, i32 5
  %t55 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t56, ptr %v0, ptr %v0, ptr %t54, i64 %t55)
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t56, i64 216, i1 false)
  br label %bb15
bb14:
  br label %bb22
bb15:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t59, ptr %s2, ptr %l36)
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t59, i64 216, i1 false)
  br label %bb16
bb16:
  %t61 = getelementptr %"compiler/bindgen:record", ptr %l38, i32 0, i32 5
  %t63 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s2, ptr %t61, i64 0)
  store { i64, ptr } %t63, ptr %l40
  br label %bb17
bb17:
  %t64 = load ptr, ptr %l32, !tbaa !29
  %t65 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t66 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %s2, ptr %t64, { i64, ptr } %t65, i64 0)
  store i64 %t66, ptr %l41
  br label %bb18
bb18:
  %t67 = load ptr, ptr %l31, !tbaa !29
  %t68 = load i64, ptr %l41, !tbaa !24
  %t69 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamType(ptr %v0, ptr %v1, ptr %t67, i64 %t68)
  %t70 = extractvalue { i32, { i64, ptr } } %t69, 1
  %t71 = extractvalue { i32, { i64, ptr } } %t69, 0
  store i32 %t71, ptr %l43
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb20, label %ok.73, !prof !99
ok.73:
  store { i64, ptr } %t70, ptr %l42
  br label %bb19
bb19:
  %t74 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t74, ptr %l30, !tbaa !27
  br label %bb21
bb20:
  %t75 = load i32, ptr %l43, !tbaa !23
  %t76 = lshr i32 %t75, 16
  %t77 = and i32 %t75, 65535
  %t78 = icmp eq i32 %t76, 1
  %t79 = select i1 %t78, i32 1, i32 0
  %t80 = icmp eq i32 %t75, 0
  %t81 = shl i32 %t79, 16
  %t82 = or i32 %t81, %t77
  %t83 = select i1 %t80, i32 0, i32 %t82
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  %t85 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t83, 0
  store { i32, { i64, ptr } } %t85, ptr %rv
  br label %ret
bb21:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  %t86 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t87 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t86, 1
  store { i32, { i64, ptr } } %t87, ptr %rv
  br label %ret
bb22:
  call void @__olang_scope_close(ptr %s1)
  br label %bb23
bb23:
  %t88 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 0
  %t89 = load i32, ptr %t88, !range !{i32 0, i32 7}
  %t91 = trunc i64 3 to i32
  %t92 = icmp eq i32 %t89, %t91
  br i1 %t92, label %bb24, label %bb25
bb24:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 2
  %t96 = load i64, ptr %t95, !tbaa !24
  %t97 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 3
  %t98 = load i1, ptr %t97, !tbaa !21
  %t102 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epointerParam(ptr %v0, ptr %v1, ptr %t94, i64 %t96, i1 %t98)
  %t103 = extractvalue { i32, { i64, ptr } } %t102, 1
  %t104 = extractvalue { i32, { i64, ptr } } %t102, 0
  store i32 %t104, ptr %l52
  %t105 = icmp ne i32 %t104, 0
  br i1 %t105, label %bb27, label %ok.106, !prof !99
ok.106:
  store { i64, ptr } %t103, ptr %l51
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t107 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t107, ptr %l47, !tbaa !27
  br label %bb28
bb27:
  %t108 = load i32, ptr %l52, !tbaa !23
  %t109 = lshr i32 %t108, 16
  %t110 = and i32 %t108, 65535
  %t111 = icmp eq i32 %t109, 1
  %t112 = select i1 %t111, i32 1, i32 0
  %t113 = icmp eq i32 %t108, 0
  %t114 = shl i32 %t112, 16
  %t115 = or i32 %t114, %t110
  %t116 = select i1 %t113, i32 0, i32 %t115
  %t118 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t116, 0
  store { i32, { i64, ptr } } %t118, ptr %rv
  br label %ret
bb28:
  %t119 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t120 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t119, 1
  store { i32, { i64, ptr } } %t120, ptr %rv
  br label %ret
bb29:
  %t121 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 0
  %t122 = load i32, ptr %t121, !range !{i32 0, i32 7}
  %t124 = trunc i64 4 to i32
  %t125 = icmp eq i32 %t122, %t124
  br i1 %t125, label %bb30, label %bb31
bb30:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 2
  %t129 = load i64, ptr %t128, !tbaa !24
  %t132 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epointerParam(ptr %v0, ptr %v1, ptr %t127, i64 %t129, i1 false)
  %t133 = extractvalue { i32, { i64, ptr } } %t132, 1
  %t134 = extractvalue { i32, { i64, ptr } } %t132, 0
  store i32 %t134, ptr %l60
  %t135 = icmp ne i32 %t134, 0
  br i1 %t135, label %bb33, label %ok.136, !prof !99
ok.136:
  store { i64, ptr } %t133, ptr %l59
  br label %bb32
bb31:
  br label %bb35
bb32:
  %t137 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t137, ptr %l56, !tbaa !27
  br label %bb34
bb33:
  %t138 = load i32, ptr %l60, !tbaa !23
  %t139 = lshr i32 %t138, 16
  %t140 = and i32 %t138, 65535
  %t141 = icmp eq i32 %t139, 1
  %t142 = select i1 %t141, i32 1, i32 0
  %t143 = icmp eq i32 %t138, 0
  %t144 = shl i32 %t142, 16
  %t145 = or i32 %t144, %t140
  %t146 = select i1 %t143, i32 0, i32 %t145
  %t148 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t146, 0
  store { i32, { i64, ptr } } %t148, ptr %rv
  br label %ret
bb34:
  %t149 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t150 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t149, 1
  store { i32, { i64, ptr } } %t150, ptr %rv
  br label %ret
bb35:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i64, ptr %l1, !tbaa !24
  %t155 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2evalueType(ptr %v0, ptr %v1, ptr %t151, i64 %t152, i1 false)
  %t156 = extractvalue { i32, { i64, ptr } } %t155, 1
  %t157 = extractvalue { i32, { i64, ptr } } %t155, 0
  store i32 %t157, ptr %l66
  %t158 = icmp ne i32 %t157, 0
  br i1 %t158, label %bb37, label %ok.159, !prof !99
ok.159:
  store { i64, ptr } %t156, ptr %l65
  br label %bb36
bb36:
  %t160 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t160, ptr %l62, !tbaa !27
  br label %bb38
bb37:
  %t161 = load i32, ptr %l66, !tbaa !23
  %t162 = lshr i32 %t161, 16
  %t163 = and i32 %t161, 65535
  %t164 = icmp eq i32 %t162, 1
  %t165 = select i1 %t164, i32 1, i32 0
  %t166 = icmp eq i32 %t161, 0
  %t167 = shl i32 %t165, 16
  %t168 = or i32 %t167, %t163
  %t169 = select i1 %t166, i32 0, i32 %t168
  %t171 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t169, 0
  store { i32, { i64, ptr } } %t171, ptr %rv
  br label %ret
bb38:
  %t172 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t173 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t172, 1
  store { i32, { i64, ptr } } %t173, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca %"compiler/bindgen:ctp"
  %l4 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca { i64, ptr }
  %l14 = alloca %"compiler/bindgen:ctp"
  %l18 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i64
  %l29 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t5, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d151, i32 0, i32 1) })
  store i64 %t7, ptr %l8
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t8 = load i64, ptr %l8, !tbaa !24
  store i64 %t8, ptr %rv
  br label %ret
bb4:
  %t9 = ptrtoint ptr %s0 to i64
  store i64 %t9, ptr %l9, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3actp_2e0
  br i1 %t10, label %bb5, label %bb6
bb5:
  %t12 = call ptr @__olang_region_make(ptr %s0)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l9, !tbaa !24
  br label %bb6
bb6:
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t15 = load i64, ptr %l9
  %t16 = inttoptr i64 %t15 to ptr
  %t18 = call { i64, ptr } @compiler_2fbindgen_2ectokens(ptr %v1, ptr %t16, { i64, ptr } %t14)
  store { i64, ptr } %t18, ptr %l12
  br label %bb7
bb7:
  %t19 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t20 = load i64, ptr %l9
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = extractvalue { i64, ptr } %t19, 1
  %t24 = mul i64 %t22, 16
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t29 = call %"compiler/bindgen:ctp" @compiler_2fbindgen_3actp_2ector(ptr %s0, ptr %s0, { i64, ptr } %t27)
  store %"compiler/bindgen:ctp" %t29, ptr %l14
  br label %bb8
bb8:
  %t30 = load %"compiler/bindgen:ctp", ptr %l14
  store %"compiler/bindgen:ctp" %t30, ptr %l3
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i64, ptr %l2, !tbaa !24
  %t36 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etypeName(ptr %v0, ptr %s0, ptr %t31, ptr %l3, i64 %t32)
  store i64 %t36, ptr %l18
  br label %bb9
bb9:
  %t37 = load i64, ptr %l18, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  %t38 = getelementptr %"compiler/bindgen:ctp", ptr %l3, i32 0, i32 1
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = getelementptr %"compiler/bindgen:ctp", ptr %l3, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l23, !tbaa !29
  %t49 = ptrtoint ptr %v0 to i64
  store i64 %t49, ptr %l24, !tbaa !24
  %t50 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3actype_2e1
  br i1 %t50, label %bb12, label %bb13
bb11:
  br label %bb15
bb12:
  %t52 = call ptr @__olang_region_make(ptr %v0)
  %t53 = ptrtoint ptr %t52 to i64
  store i64 %t53, ptr %l24, !tbaa !24
  br label %bb13
bb13:
  %t54 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t58 = extractvalue { i64, ptr } %t54, 1
  %t59 = extractvalue { i64, ptr } %t54, 0
  %t60 = add i64 %t56, %t59
  %t61 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t63 = add i64 %t60, %t62
  %t64 = load i64, ptr %l24
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = call ptr @__olang_scope_alloc(ptr %t65, i64 %t63)
  call void @olang_textcopy(ptr %t66, ptr %t55, i64 %t56)
  %t67 = getelementptr i8, ptr %t66, i64 %t56
  call void @olang_textcopy(ptr %t67, ptr %t58, i64 %t59)
  %t68 = getelementptr i8, ptr %t67, i64 %t59
  call void @olang_textcopy(ptr %t68, ptr %t61, i64 %t62)
  %t69 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t66, 1
  %t72 = load i64, ptr %l24
  %t73 = inttoptr i64 %t72 to ptr
  %t74 = extractvalue { i64, ptr } %t70, 0
  %t75 = extractvalue { i64, ptr } %t70, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %t73, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t80 = load ptr, ptr %l23, !tbaa !29
  %t82 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t80, { i64, ptr } %t79)
  store i64 %t82, ptr %l29
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t83 = load i64, ptr %l29, !tbaa !24
  store i64 %t83, ptr %rv
  br label %ret
bb15:
  %t84 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t84, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ereadMacros(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %lp5 = alloca ptr
  %l6 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l7 = alloca %"std/prelude/text:LineIter"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l36 = alloca %"std/prelude/text:LineIter"
  %l37 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i32
  %l42 = alloca i1
  %l44 = alloca i1
  %l45 = alloca i1
  %l49 = alloca i1
  %l50 = alloca { i64, ptr }
  %l52 = alloca i1
  %l53 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i32
  %l60 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i32
  %l67 = alloca i64
  %l69 = alloca { i64, ptr }
  %l71 = alloca i64
  %l72 = alloca i64
  %l73 = alloca i64
  %l79 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l82 = alloca i64
  %l83 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l90 = alloca i1
  %l92 = alloca i1
  %l95 = alloca i1
  %l97 = alloca i1
  %l98 = alloca { i64, ptr }
  %l99 = alloca i64
  %l100 = alloca { i64, ptr }
  %l103 = alloca i1
  %l110 = alloca i1
  %l111 = alloca i1
  %l114 = alloca i1
  %l116 = alloca i1
  %l117 = alloca { i64, ptr }
  %l120 = alloca i64
  %l121 = alloca i64
  %l126 = alloca { i64, ptr }
  %l127 = alloca i64
  %l131 = alloca i64
  %l132 = alloca i32
  %l139 = alloca ptr
  %l140 = alloca ptr
  %l142 = alloca { i64, ptr }
  %l145 = alloca i1
  %l147 = alloca { i64, ptr }
  %l150 = alloca i64
  %l151 = alloca i64
  %l160 = alloca i1
  %l161 = alloca { i64, ptr }
  %l164 = alloca i1
  %l165 = alloca i1
  %l166 = alloca { i64, ptr }
  %l169 = alloca i1
  %l170 = alloca i1
  %l171 = alloca { i64, ptr }
  %l180 = alloca { i64, ptr }
  %l181 = alloca i64
  %l182 = alloca i64
  %l191 = alloca i1
  %l192 = alloca { i64, ptr }
  %l196 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l198 = alloca { i64, ptr }
  %l199 = alloca i64
  %l202 = alloca i64
  %l203 = alloca i64
  %l209 = alloca i64
  %l212 = alloca i64
  %l213 = alloca i32
  %l216 = alloca { i64, ptr }
  %l218 = alloca i64
  %l219 = alloca i64
  %l220 = alloca i64
  %l225 = alloca { i64, ptr }
  %l232 = alloca { i64, ptr }
  %l236 = alloca { i64, ptr }
  %l238 = alloca i1
  %l239 = alloca i1
  %l241 = alloca i1
  %l243 = alloca i1
  %l249 = alloca { i64, ptr }
  %l251 = alloca i64
  %l254 = alloca i64
  %l255 = alloca i64
  %l260 = alloca { i64, ptr }
  %l261 = alloca i1
  %l262 = alloca i64
  %l265 = alloca { i64, ptr }
  %l266 = alloca i64
  %l269 = alloca ptr
  %l270 = alloca { i64, ptr }
  %l273 = alloca i1
  %l274 = alloca i1
  %l276 = alloca i1
  %l277 = alloca %"compiler/bindgen:cMacro"
  %l281 = alloca i64
  %l285 = alloca i64
  %l286 = alloca i32
  %l299 = alloca ptr
  %l300 = alloca { i64, ptr }
  %l303 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s19 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d154, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t2, ptr %lp5
  %t4 = load ptr, ptr %lp5
  store { i64, ptr } %t1, ptr %t4, !tbaa !27
  %t5 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %l34
  br label %bb1
bb1:
  %t6 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t6, ptr %l6
  %t9 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v1, ptr %v1, { i64, ptr } %a1)
  store %"std/prelude/text:LineIter" %t9, ptr %l36
  br label %bb2
bb2:
  %t10 = load %"std/prelude/text:LineIter", ptr %l36
  store %"std/prelude/text:LineIter" %t10, ptr %l7
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t12 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v1, ptr %v1, ptr %l7)
  %t13 = extractvalue { i32, { i64, ptr } } %t12, 1
  %t14 = extractvalue { i32, { i64, ptr } } %t12, 0
  store i32 %t14, ptr %l40
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb5, label %ok.16, !prof !99
ok.16:
  store { i64, ptr } %t13, ptr %l39
  br label %bb4
bb4:
  %t17 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t17, ptr %l37, !tbaa !27
  br label %bb7
bb5:
  %t18 = load i32, ptr %l40, !tbaa !23
  %t19 = ashr i32 %t18, 16
  %t21 = icmp eq i32 %t19, 1
  store i1 %t21, ptr %l42, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb203
bb7:
  %t22 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t22, ptr %l8, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t23, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d155, i32 0, i32 1) })
  store i1 %t25, ptr %l44
  br label %bb8
bb8:
  %t26 = load i1, ptr %l44, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t27 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp sgt i64 %t29, 2
  store i1 %t31, ptr %l45, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb11
bb11:
  %t33 = load i1, ptr %l45, !tbaa !21
  br i1 %t33, label %bb12, label %bb13
bb12:
  %t34 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t34, ptr %l50, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr i8, ptr %t36, i64 2
  %t38 = load i8, ptr %t37, !tbaa !32
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t38)
  store i1 %t40, ptr %l52
  br label %bb14
bb13:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb15
bb14:
  %t41 = load i1, ptr %l52, !tbaa !21
  store i1 %t41, ptr %l49, !tbaa !21
  br label %bb15
bb15:
  %t42 = load i1, ptr %l49, !tbaa !21
  br i1 %t42, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t43 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t46 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t43, i8 34)
  %t47 = extractvalue { i32, i64 } %t46, 1
  %t48 = extractvalue { i32, i64 } %t46, 0
  store i32 %t48, ptr %l57
  %t49 = icmp ne i32 %t48, 0
  br i1 %t49, label %bb19, label %ok.50, !prof !99
ok.50:
  store i64 %t47, ptr %l56
  br label %bb18
bb17:
  br label %bb59
bb18:
  %t51 = load i64, ptr %l56, !tbaa !24
  store i64 %t51, ptr %l53, !tbaa !24
  br label %bb21
bb19:
  br label %bb20
bb20:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb21
bb21:
  %t52 = load i64, ptr %l53, !tbaa !24
  store i64 %t52, ptr %l9, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t55 = icmp slt i64 %t53, 0
  br i1 %t55, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb202
bb23:
  br label %bb24
bb24:
  %t57 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t59 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v1, ptr %s3, { i64, ptr } %t57, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) })
  %t60 = extractvalue { i32, i64 } %t59, 1
  %t61 = extractvalue { i32, i64 } %t59, 0
  store i32 %t61, ptr %l63
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb26, label %ok.63, !prof !99
ok.63:
  store i64 %t60, ptr %l62
  br label %bb25
bb25:
  %t64 = load i64, ptr %l62, !tbaa !24
  store i64 %t64, ptr %l60, !tbaa !24
  br label %bb28
bb26:
  br label %bb27
bb27:
  store i64 -1, ptr %l60, !tbaa !24
  br label %bb28
bb28:
  %t65 = load i64, ptr %l60, !tbaa !24
  store i64 %t65, ptr %l10, !tbaa !24
  %t66 = load i64, ptr %l10, !tbaa !24
  %t67 = load i64, ptr %l9, !tbaa !24
  %t70 = icmp sle i64 %t66, %t67
  br i1 %t70, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb202
bb30:
  br label %bb31
bb31:
  %t72 = ptrtoint ptr %v4 to i64
  store i64 %t72, ptr %l67, !tbaa !24
  %t73 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2ereadMacros_2elocal_2e5
  br i1 %t73, label %bb32, label %bb33
bb32:
  %t75 = call ptr @__olang_region_make(ptr %v4)
  %t76 = ptrtoint ptr %t75 to i64
  store i64 %t76, ptr %l67, !tbaa !24
  br label %bb33
bb33:
  %t77 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t77, ptr %l69, !tbaa !27
  %t78 = load i64, ptr %l9, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l71, !tbaa !24
  %t81 = load i64, ptr %l10, !tbaa !24
  store i64 %t81, ptr %l72, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  store i64 %t83, ptr %l73, !tbaa !24
  %t84 = load i64, ptr %l71, !tbaa !24
  %t85 = icmp sge i64 %t84, 0
  br i1 %t85, label %bb34, label %bb35
bb34:
  %t87 = load i64, ptr %l71, !tbaa !24
  %t88 = load i64, ptr %l72, !tbaa !24
  %t89 = icmp sle i64 %t87, %t88
  br i1 %t89, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_beacd36cd332827c_e461632e30adb8c0)
  unreachable
bb36:
  %t91 = load i64, ptr %l72, !tbaa !24
  %t92 = load i64, ptr %l73, !tbaa !24
  %t93 = icmp sle i64 %t91, %t92
  br i1 %t93, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_beacd36cd332827c_e461632e30adb8c0)
  unreachable
bb38:
  %t95 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = load i64, ptr %l71, !tbaa !24
  %t98 = load i64, ptr %l72, !tbaa !24
  %t99 = getelementptr i8, ptr %t96, i64 %t97
  %t100 = sub i64 %t98, %t97
  %t101 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t99, 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d157, i32 0, i32 1) }, ptr %l79, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d158, i32 0, i32 1) }, ptr %l80, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t107 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t102, { i64, ptr } %t105, { i64, ptr } %t106)
  store { i64, ptr } %t107, ptr %l81
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_beacd36cd332827c_e461632e30adb8c0)
  unreachable
bb40:
  %t108 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l82, !tbaa !24
  %t110 = load i64, ptr %l82, !tbaa !24
  %t111 = mul i64 %t110, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t111)
  %t113 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  store { i64, ptr } %t114, ptr %l83, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l82, !tbaa !24
  %t120 = mul i64 %t119, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t116, ptr %t118, i64 %t120, i1 false)
  %t121 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t121, 1
  %t124 = extractvalue { i64, ptr } %t121, 0
  %t125 = load i64, ptr %l67
  %t126 = inttoptr i64 %t125 to ptr
  %t127 = call ptr @__olang_scope_alloc(ptr %t126, i64 %t124)
  call void @olang_textcopy(ptr %t127, ptr %t123, i64 %t124)
  %t128 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l85, !tbaa !27
  %t130 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2ereadMacros_2elocal_2e5
  br i1 %t130, label %bb41, label %bb42
bb41:
  %t132 = load i64, ptr %l67
  %t133 = inttoptr i64 %t132 to ptr
  %t134 = load { i64, ptr }, ptr %l85
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = call ptr @__olang_region_or(ptr %t135, ptr null)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr null
  %t139 = icmp eq ptr %t138, %t133
  call void @__olang_region_settle(ptr %t133, i1 %t139)
  br label %bb42
bb42:
  %t140 = load ptr, ptr %lp5
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  store { i64, ptr } %t141, ptr %l87, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t143 = load ptr, ptr %lp5
  store { i64, ptr } %t142, ptr %t143, !tbaa !27
  %t144 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2ereadMacros_2elocal_2e5
  br i1 %t144, label %bb43, label %bb44
bb43:
  %t146 = load { i64, ptr }, ptr %l87
  %t147 = extractvalue { i64, ptr } %t146, 1
  call void @__olang_region_release(ptr %t147)
  store { i64, ptr } zeroinitializer, ptr %l87
  br label %bb44
bb44:
  %t148 = load ptr, ptr %lp5
  %t149 = load { i64, ptr }, ptr %t148, !tbaa !27
  %t151 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v4, ptr %s3, { i64, ptr } %t149, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) })
  store i1 %t151, ptr %l90
  br label %bb45
bb45:
  %t152 = load i1, ptr %l90, !tbaa !21
  %t153 = xor i1 %t152, true
  br i1 %t153, label %bb46, label %bb47
bb46:
  %t155 = load ptr, ptr %lp5
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  %t157 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t160 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %v2, { i64, ptr } %t156, { i64, ptr } %t157)
  store i1 %t160, ptr %l95
  br label %bb48
bb47:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb49
bb48:
  %t161 = load i1, ptr %l95, !tbaa !21
  %t162 = xor i1 %t161, true
  store i1 %t162, ptr %l92, !tbaa !21
  br label %bb49
bb49:
  %t164 = load i1, ptr %l92, !tbaa !21
  br i1 %t164, label %bb50, label %bb51
bb50:
  %t165 = load ptr, ptr %lp5
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  store { i64, ptr } %t166, ptr %l98, !tbaa !27
  %t167 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 0
  store i64 %t168, ptr %l99, !tbaa !24
  %t169 = load i64, ptr %l99, !tbaa !24
  %t170 = mul i64 %t169, 1
  %t171 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t170)
  %t172 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  store { i64, ptr } %t173, ptr %l100, !tbaa !27
  %t174 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = load i64, ptr %l99, !tbaa !24
  %t179 = mul i64 %t178, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t175, ptr %t177, i64 %t179, i1 false)
  %t180 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t184 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %s0, ptr %s3, ptr %l6, { i64, ptr } %t180)
  store i1 %t184, ptr %l103
  br label %bb52
bb51:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb53
bb52:
  %t185 = load i1, ptr %l103, !tbaa !21
  %t186 = xor i1 %t185, true
  store i1 %t186, ptr %l97, !tbaa !21
  br label %bb53
bb53:
  %t188 = load i1, ptr %l97, !tbaa !21
  br i1 %t188, label %bb54, label %bb55
bb54:
  %t189 = load ptr, ptr %lp5
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %s0, ptr %v4, ptr %l6, { i64, ptr } %t190, i1 true)
  br label %bb56
bb55:
  br label %bb58
bb56:
  %t194 = load ptr, ptr %lp5
  %t195 = load { i64, ptr }, ptr %t194, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %a4, { i64, ptr } %t195)
  br label %bb57
bb57:
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb202
bb59:
  %t198 = load ptr, ptr %lp5
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  %t201 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v4, ptr %s2, { i64, ptr } %t199, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d160, i32 0, i32 1) })
  store i1 %t201, ptr %l110
  br label %bb60
bb60:
  %t202 = load i1, ptr %l110, !tbaa !21
  br i1 %t202, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb64
bb62:
  %t203 = load ptr, ptr %lp5
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  %t205 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t208 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %v2, { i64, ptr } %t204, { i64, ptr } %t205)
  store i1 %t208, ptr %l114
  br label %bb63
bb63:
  %t209 = load i1, ptr %l114, !tbaa !21
  store i1 %t209, ptr %l111, !tbaa !21
  br label %bb64
bb64:
  %t210 = load i1, ptr %l111, !tbaa !21
  br i1 %t210, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s2)
  br label %bb202
bb66:
  br label %bb67
bb67:
  %t211 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t213 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t211, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d161, i32 0, i32 1) })
  store i1 %t213, ptr %l116
  br label %bb68
bb68:
  %t214 = load i1, ptr %l116, !tbaa !21
  br i1 %t214, label %bb69, label %bb70
bb69:
  %t215 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t215, ptr %l117, !tbaa !27
  %t216 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t216, 0
  store i64 %t219, ptr %l120, !tbaa !24
  %t220 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 0
  store i64 %t221, ptr %l121, !tbaa !24
  %t222 = icmp sge i64 7, 0
  br i1 %t222, label %bb71, label %bb72
bb70:
  br label %bb88
bb71:
  %t224 = load i64, ptr %l120, !tbaa !24
  %t225 = icmp sle i64 7, %t224
  br i1 %t225, label %bb73, label %bb74
bb72:
  call void @__olang_check_failed(ptr @olang_loc_88bbbdba37ecb069_7556c3a5c9bf841d)
  unreachable
bb73:
  %t227 = load i64, ptr %l120, !tbaa !24
  %t228 = load i64, ptr %l121, !tbaa !24
  %t229 = icmp sle i64 %t227, %t228
  br i1 %t229, label %bb75, label %bb76
bb74:
  call void @__olang_check_failed(ptr @olang_loc_88bbbdba37ecb069_7556c3a5c9bf841d)
  unreachable
bb75:
  %t231 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = load i64, ptr %l120, !tbaa !24
  %t234 = getelementptr i8, ptr %t232, i64 7
  %t235 = sub i64 %t233, 7
  %t236 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr %t234, 1
  %t239 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v1, ptr %v1, { i64, ptr } %t237)
  store { i64, ptr } %t239, ptr %l126
  br label %bb77
bb76:
  call void @__olang_check_failed(ptr @olang_loc_88bbbdba37ecb069_7556c3a5c9bf841d)
  unreachable
bb77:
  %t240 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/bindgen:gen", ptr %t241, i32 0, i32 13
  %t247 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t243, { i64, ptr } %t240)
  %t248 = extractvalue { i32, i64 } %t247, 1
  %t249 = extractvalue { i32, i64 } %t247, 0
  store i32 %t249, ptr %l132
  %t250 = icmp ne i32 %t249, 0
  br i1 %t250, label %bb79, label %ok.251, !prof !99
ok.251:
  store i64 %t248, ptr %l131
  br label %bb78
bb78:
  %t252 = load i64, ptr %l131, !tbaa !24
  store i64 %t252, ptr %l127, !tbaa !24
  br label %bb81
bb79:
  br label %bb80
bb80:
  store i64 -1, ptr %l127, !tbaa !24
  br label %bb81
bb81:
  %t253 = load i64, ptr %l127, !tbaa !24
  store i64 %t253, ptr %l13, !tbaa !24
  %t254 = load i64, ptr %l13, !tbaa !24
  %t256 = icmp sge i64 %t254, 0
  br i1 %t256, label %bb82, label %bb83
bb82:
  %t258 = load i64, ptr %l13, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d162, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t262 = getelementptr %"compiler/bindgen:gen", ptr %t260, i32 0, i32 12
  %t266 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eRefMu_H9d4ce036ca8f6276b6798968f53e8eb9(ptr %v0, ptr %v0, ptr %t262, i64 %t258)
  store ptr %t266, ptr %l139
  br label %bb84
bb83:
  br label %bb87
bb84:
  %t267 = load ptr, ptr %l139, !tbaa !29
  store ptr %t267, ptr %l140, !tbaa !29
  %t269 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t270 = load ptr, ptr %l140, !tbaa !29
  %t271 = getelementptr %"compiler/bindgen:cMacro", ptr %t270, i32 0, i32 0
  %t272 = load { i64, ptr }, ptr %t271, !tbaa !27
  store { i64, ptr } %t272, ptr %l142, !tbaa !27
  %t274 = load ptr, ptr %l140, !tbaa !29
  %t275 = getelementptr %"compiler/bindgen:cMacro", ptr %t274, i32 0, i32 0
  store { i64, ptr } %t269, ptr %t275, !tbaa !27
  %t276 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acMacro_2e0
  br i1 %t276, label %bb85, label %bb86
bb85:
  %t278 = load { i64, ptr }, ptr %l142
  %t279 = extractvalue { i64, ptr } %t278, 1
  call void @__olang_region_release(ptr %t279)
  store { i64, ptr } zeroinitializer, ptr %l142
  br label %bb86
bb86:
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s2)
  br label %bb202
bb88:
  %t280 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t282 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t280, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d163, i32 0, i32 1) })
  store i1 %t282, ptr %l145
  br label %bb89
bb89:
  %t283 = load i1, ptr %l145, !tbaa !21
  %t284 = xor i1 %t283, true
  br i1 %t284, label %bb90, label %bb91
bb90:
  call void @__olang_scope_close(ptr %s2)
  br label %bb202
bb91:
  br label %bb92
bb92:
  %t286 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t286, ptr %l147, !tbaa !27
  %t287 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t287, 0
  store i64 %t290, ptr %l150, !tbaa !24
  %t291 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 0
  store i64 %t292, ptr %l151, !tbaa !24
  %t293 = icmp sge i64 8, 0
  br i1 %t293, label %bb93, label %bb94
bb93:
  %t295 = load i64, ptr %l150, !tbaa !24
  %t296 = icmp sle i64 8, %t295
  br i1 %t296, label %bb95, label %bb96
bb94:
  call void @__olang_check_failed(ptr @olang_loc_a6c60cdff876254a_2c918d2d7b99843e)
  unreachable
bb95:
  %t298 = load i64, ptr %l150, !tbaa !24
  %t299 = load i64, ptr %l151, !tbaa !24
  %t300 = icmp sle i64 %t298, %t299
  br i1 %t300, label %bb97, label %bb98
bb96:
  call void @__olang_check_failed(ptr @olang_loc_a6c60cdff876254a_2c918d2d7b99843e)
  unreachable
bb97:
  %t302 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !27
  %t304 = load i64, ptr %l150, !tbaa !24
  %t305 = getelementptr i8, ptr %t303, i64 8
  %t306 = sub i64 %t304, 8
  %t307 = insertvalue { i64, ptr } undef, i64 %t306, 0
  %t308 = insertvalue { i64, ptr } %t307, ptr %t305, 1
  store { i64, ptr } %t308, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  br label %bb99
bb98:
  call void @__olang_check_failed(ptr @olang_loc_a6c60cdff876254a_2c918d2d7b99843e)
  unreachable
bb99:
  %t310 = load i64, ptr %l18, !tbaa !24
  %t311 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t311, 0
  %t316 = icmp slt i64 %t310, %t313
  br i1 %t316, label %bb100, label %bb101
bb100:
  %t318 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t318, ptr %l161, !tbaa !27
  %t319 = load i64, ptr %l18, !tbaa !24
  %t321 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = getelementptr i8, ptr %t322, i64 %t319
  %t324 = load i8, ptr %t323, !tbaa !32
  %t326 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t324)
  store i1 %t326, ptr %l164
  br label %bb102
bb101:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb110
bb102:
  %t327 = load i1, ptr %l164, !tbaa !21
  br i1 %t327, label %bb103, label %bb104
bb103:
  store i1 true, ptr %l165, !tbaa !21
  br label %bb106
bb104:
  %t328 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t328, ptr %l166, !tbaa !27
  %t329 = load i64, ptr %l18, !tbaa !24
  %t331 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr i8, ptr %t332, i64 %t329
  %t334 = load i8, ptr %t333, !tbaa !32
  %t336 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t334)
  store i1 %t336, ptr %l169
  br label %bb105
bb105:
  %t337 = load i1, ptr %l169, !tbaa !21
  store i1 %t337, ptr %l165, !tbaa !21
  br label %bb106
bb106:
  %t338 = load i1, ptr %l165, !tbaa !21
  br i1 %t338, label %bb107, label %bb108
bb107:
  store i1 true, ptr %l170, !tbaa !21
  br label %bb109
bb108:
  %t339 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t339, ptr %l171, !tbaa !27
  %t340 = load i64, ptr %l18, !tbaa !24
  %t342 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !27
  %t344 = getelementptr i8, ptr %t343, i64 %t340
  %t345 = load i8, ptr %t344, !tbaa !32
  %t347 = icmp eq i8 %t345, 95
  store i1 %t347, ptr %l170, !tbaa !21
  br label %bb109
bb109:
  %t349 = load i1, ptr %l170, !tbaa !21
  store i1 %t349, ptr %l160, !tbaa !21
  br label %bb110
bb110:
  %t350 = load i1, ptr %l160, !tbaa !21
  %t351 = xor i1 %t350, true
  br i1 %t351, label %bb111, label %bb112
bb111:
  br label %bb115
bb112:
  br label %bb113
bb113:
  %t353 = load i64, ptr %l18, !tbaa !24
  %t355 = add i64 %t353, 1
  store i64 %t355, ptr %l18, !tbaa !24
  br label %bb114
bb114:
  br label %bb99
bb115:
  %t357 = load i64, ptr %l18, !tbaa !24
  %t359 = icmp eq i64 %t357, 0
  br i1 %t359, label %bb116, label %bb117
bb116:
  call void @__olang_scope_close(ptr %s2)
  br label %bb202
bb117:
  br label %bb118
bb118:
  %t361 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t361, ptr %l180, !tbaa !27
  %t362 = load i64, ptr %l18, !tbaa !24
  store i64 %t362, ptr %l181, !tbaa !24
  %t363 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t364 = extractvalue { i64, ptr } %t363, 0
  store i64 %t364, ptr %l182, !tbaa !24
  %t365 = icmp sge i64 0, 0
  br i1 %t365, label %bb119, label %bb120
bb119:
  %t367 = load i64, ptr %l181, !tbaa !24
  %t368 = icmp sle i64 0, %t367
  br i1 %t368, label %bb121, label %bb122
bb120:
  call void @__olang_check_failed(ptr @olang_loc_5755e6dd02fca827_178a482bfa1e95bb)
  unreachable
bb121:
  %t370 = load i64, ptr %l181, !tbaa !24
  %t371 = load i64, ptr %l182, !tbaa !24
  %t372 = icmp sle i64 %t370, %t371
  br i1 %t372, label %bb123, label %bb124
bb122:
  call void @__olang_check_failed(ptr @olang_loc_5755e6dd02fca827_178a482bfa1e95bb)
  unreachable
bb123:
  %t374 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t375 = load ptr, ptr %t374, !tbaa !27
  %t376 = load i64, ptr %l181, !tbaa !24
  %t377 = getelementptr i8, ptr %t375, i64 0
  %t378 = sub i64 %t376, 0
  %t379 = insertvalue { i64, ptr } undef, i64 %t378, 0
  %t380 = insertvalue { i64, ptr } %t379, ptr %t377, 1
  store { i64, ptr } %t380, ptr %l19, !tbaa !27
  %t382 = load i64, ptr %l18, !tbaa !24
  %t383 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t385 = extractvalue { i64, ptr } %t383, 0
  %t388 = icmp slt i64 %t382, %t385
  br i1 %t388, label %bb125, label %bb126
bb124:
  call void @__olang_check_failed(ptr @olang_loc_5755e6dd02fca827_178a482bfa1e95bb)
  unreachable
bb125:
  %t390 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t390, ptr %l192, !tbaa !27
  %t391 = load i64, ptr %l18, !tbaa !24
  %t393 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t394 = load ptr, ptr %t393, !tbaa !27
  %t395 = getelementptr i8, ptr %t394, i64 %t391
  %t396 = load i8, ptr %t395, !tbaa !32
  %t398 = icmp eq i8 %t396, 40
  store i1 %t398, ptr %l191, !tbaa !21
  br label %bb127
bb126:
  store i1 false, ptr %l191, !tbaa !21
  br label %bb127
bb127:
  %t400 = load i1, ptr %l191, !tbaa !21
  store i1 %t400, ptr %l20, !tbaa !21
  %t401 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t401, ptr %l196
  br label %bb128
bb128:
  %t402 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l196
  %t403 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t402, ptr %t403
  store ptr %t403, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t405 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t405, ptr %l198, !tbaa !27
  %t406 = load i64, ptr %l18, !tbaa !24
  store i64 %t406, ptr %l199, !tbaa !24
  %t407 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t410 = extractvalue { i64, ptr } %t407, 0
  store i64 %t410, ptr %l202, !tbaa !24
  %t411 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t412 = extractvalue { i64, ptr } %t411, 0
  store i64 %t412, ptr %l203, !tbaa !24
  %t413 = load i64, ptr %l199, !tbaa !24
  %t414 = icmp sge i64 %t413, 0
  br i1 %t414, label %bb129, label %bb130
bb129:
  %t416 = load i64, ptr %l199, !tbaa !24
  %t417 = load i64, ptr %l202, !tbaa !24
  %t418 = icmp sle i64 %t416, %t417
  br i1 %t418, label %bb131, label %bb132
bb130:
  call void @__olang_check_failed(ptr @olang_loc_4153d023000ff8e8_6b17d300a1e811b4)
  unreachable
bb131:
  %t420 = load i64, ptr %l202, !tbaa !24
  %t421 = load i64, ptr %l203, !tbaa !24
  %t422 = icmp sle i64 %t420, %t421
  br i1 %t422, label %bb133, label %bb134
bb132:
  call void @__olang_check_failed(ptr @olang_loc_4153d023000ff8e8_6b17d300a1e811b4)
  unreachable
bb133:
  %t424 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t425 = load ptr, ptr %t424, !tbaa !27
  %t426 = load i64, ptr %l199, !tbaa !24
  %t427 = load i64, ptr %l202, !tbaa !24
  %t428 = getelementptr i8, ptr %t425, i64 %t426
  %t429 = sub i64 %t427, %t426
  %t430 = insertvalue { i64, ptr } undef, i64 %t429, 0
  %t431 = insertvalue { i64, ptr } %t430, ptr %t428, 1
  store { i64, ptr } %t431, ptr %l23, !tbaa !27
  %t433 = load i1, ptr %l20, !tbaa !21
  br i1 %t433, label %bb135, label %bb136
bb134:
  call void @__olang_check_failed(ptr @olang_loc_4153d023000ff8e8_6b17d300a1e811b4)
  unreachable
bb135:
  %t435 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t438 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t435, i8 41)
  %t439 = extractvalue { i32, i64 } %t438, 1
  %t440 = extractvalue { i32, i64 } %t438, 0
  store i32 %t440, ptr %l213
  %t441 = icmp ne i32 %t440, 0
  br i1 %t441, label %bb138, label %ok.442, !prof !99
ok.442:
  store i64 %t439, ptr %l212
  br label %bb137
bb136:
  br label %bb177
bb137:
  %t443 = load i64, ptr %l212, !tbaa !24
  store i64 %t443, ptr %l209, !tbaa !24
  br label %bb140
bb138:
  br label %bb139
bb139:
  store i64 -1, ptr %l209, !tbaa !24
  br label %bb140
bb140:
  %t444 = load i64, ptr %l209, !tbaa !24
  store i64 %t444, ptr %l24, !tbaa !24
  %t445 = load i64, ptr %l24, !tbaa !24
  %t447 = icmp slt i64 %t445, 0
  br i1 %t447, label %bb141, label %bb142
bb141:
  call void @__olang_scope_close(ptr %s2)
  br label %bb202
bb142:
  br label %bb143
bb143:
  store %olang.scope zeroinitializer, ptr %s16
  %t449 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t449, ptr %l216, !tbaa !27
  %t450 = load i64, ptr %l18, !tbaa !24
  %t452 = add i64 %t450, 1
  store i64 %t452, ptr %l218, !tbaa !24
  %t453 = load i64, ptr %l24, !tbaa !24
  store i64 %t453, ptr %l219, !tbaa !24
  %t454 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t455 = extractvalue { i64, ptr } %t454, 0
  store i64 %t455, ptr %l220, !tbaa !24
  %t456 = load i64, ptr %l218, !tbaa !24
  %t457 = icmp sge i64 %t456, 0
  br i1 %t457, label %bb144, label %bb145
bb144:
  %t459 = load i64, ptr %l218, !tbaa !24
  %t460 = load i64, ptr %l219, !tbaa !24
  %t461 = icmp sle i64 %t459, %t460
  br i1 %t461, label %bb146, label %bb147
bb145:
  call void @__olang_check_failed(ptr @olang_loc_ec020a578bdf64c5_799d4029e88195a1)
  unreachable
bb146:
  %t463 = load i64, ptr %l219, !tbaa !24
  %t464 = load i64, ptr %l220, !tbaa !24
  %t465 = icmp sle i64 %t463, %t464
  br i1 %t465, label %bb148, label %bb149
bb147:
  call void @__olang_check_failed(ptr @olang_loc_ec020a578bdf64c5_799d4029e88195a1)
  unreachable
bb148:
  %t467 = getelementptr { i64, ptr }, ptr %l216, i32 0, i32 1
  %t468 = load ptr, ptr %t467, !tbaa !27
  %t469 = load i64, ptr %l218, !tbaa !24
  %t470 = load i64, ptr %l219, !tbaa !24
  %t471 = getelementptr i8, ptr %t468, i64 %t469
  %t472 = sub i64 %t470, %t469
  %t473 = insertvalue { i64, ptr } undef, i64 %t472, 0
  %t474 = insertvalue { i64, ptr } %t473, ptr %t471, 1
  %t476 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %s16, ptr %v1, { i64, ptr } %t474, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) })
  store { i64, ptr } %t476, ptr %l225
  br label %bb150
bb149:
  call void @__olang_check_failed(ptr @olang_loc_ec020a578bdf64c5_799d4029e88195a1)
  unreachable
bb150:
  %t477 = load { i64, ptr }, ptr %l225, !tbaa !27
  store { i64, ptr } %t477, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t478 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t480 = extractvalue { i64, ptr } %t478, 0
  store i64 %t480, ptr %l27, !tbaa !24
  br label %bb151
bb151:
  store %olang.scope zeroinitializer, ptr %s17
  %t482 = load i64, ptr %l26, !tbaa !24
  %t483 = load i64, ptr %l27, !tbaa !24
  %t486 = icmp slt i64 %t482, %t483
  %t488 = xor i1 %t486, true
  br i1 %t488, label %bb152, label %bb153
bb152:
  call void @__olang_scope_close(ptr %s17)
  br label %bb170
bb153:
  br label %bb154
bb154:
  %t490 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t490, ptr %l232, !tbaa !27
  %t491 = load i64, ptr %l26, !tbaa !24
  %t493 = getelementptr { i64, ptr }, ptr %l232, i32 0, i32 1
  %t494 = load ptr, ptr %t493, !tbaa !27
  %t495 = getelementptr { i64, ptr }, ptr %t494, i64 %t491
  %t496 = load { i64, ptr }, ptr %t495, !tbaa !37
  %t500 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v1, ptr %v1, { i64, ptr } %t496)
  store { i64, ptr } %t500, ptr %l236
  br label %bb155
bb155:
  %t501 = load { i64, ptr }, ptr %l236, !tbaa !27
  store { i64, ptr } %t501, ptr %l29, !tbaa !27
  %t502 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t504 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s17, { i64, ptr } %t502, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d165, i32 0, i32 1) })
  store i1 %t504, ptr %l238
  br label %bb156
bb156:
  %t505 = load i1, ptr %l238, !tbaa !21
  br i1 %t505, label %bb157, label %bb158
bb157:
  store i1 true, ptr %l239, !tbaa !21
  br label %bb160
bb158:
  %t506 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t508 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %s17, { i64, ptr } %t506, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d166, i32 0, i32 1) })
  store i1 %t508, ptr %l241
  br label %bb159
bb159:
  %t509 = load i1, ptr %l241, !tbaa !21
  store i1 %t509, ptr %l239, !tbaa !21
  br label %bb160
bb160:
  %t510 = load i1, ptr %l239, !tbaa !21
  br i1 %t510, label %bb161, label %bb162
bb161:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb168
bb162:
  store %olang.scope zeroinitializer, ptr %s19
  %t511 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t513 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s19, { i64, ptr } %t511, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d167, i32 0, i32 1) })
  store i1 %t513, ptr %l243
  br label %bb163
bb163:
  %t514 = load i1, ptr %l243, !tbaa !21
  %t515 = xor i1 %t514, true
  br i1 %t515, label %bb164, label %bb165
bb164:
  %t517 = load ptr, ptr %l21, !tbaa !29
  %t518 = load { i64, ptr }, ptr %l29, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %t517, { i64, ptr } %t518)
  br label %bb166
bb165:
  br label %bb167
bb166:
  br label %bb167
bb167:
  call void @__olang_scope_close(ptr %s19)
  br label %bb168
bb168:
  call void @__olang_scope_close(ptr %s17)
  br label %bb169
bb169:
  %t521 = load i64, ptr %l26, !tbaa !24
  %t523 = add i64 %t521, 1
  store i64 %t523, ptr %l26, !tbaa !24
  br label %bb151
bb170:
  call void @__olang_scope_close(ptr %s16)
  %t525 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t525, ptr %l249, !tbaa !27
  %t526 = load i64, ptr %l24, !tbaa !24
  %t528 = add i64 %t526, 1
  store i64 %t528, ptr %l251, !tbaa !24
  %t529 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t532 = extractvalue { i64, ptr } %t529, 0
  store i64 %t532, ptr %l254, !tbaa !24
  %t533 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t534 = extractvalue { i64, ptr } %t533, 0
  store i64 %t534, ptr %l255, !tbaa !24
  %t535 = load i64, ptr %l251, !tbaa !24
  %t536 = icmp sge i64 %t535, 0
  br i1 %t536, label %bb171, label %bb172
bb171:
  %t538 = load i64, ptr %l251, !tbaa !24
  %t539 = load i64, ptr %l254, !tbaa !24
  %t540 = icmp sle i64 %t538, %t539
  br i1 %t540, label %bb173, label %bb174
bb172:
  call void @__olang_check_failed(ptr @olang_loc_642a74ef72af54a6_43680c0161c24f22)
  unreachable
bb173:
  %t542 = load i64, ptr %l254, !tbaa !24
  %t543 = load i64, ptr %l255, !tbaa !24
  %t544 = icmp sle i64 %t542, %t543
  br i1 %t544, label %bb175, label %bb176
bb174:
  call void @__olang_check_failed(ptr @olang_loc_642a74ef72af54a6_43680c0161c24f22)
  unreachable
bb175:
  %t546 = getelementptr { i64, ptr }, ptr %l249, i32 0, i32 1
  %t547 = load ptr, ptr %t546, !tbaa !27
  %t548 = load i64, ptr %l251, !tbaa !24
  %t549 = load i64, ptr %l254, !tbaa !24
  %t550 = getelementptr i8, ptr %t547, i64 %t548
  %t551 = sub i64 %t549, %t548
  %t552 = insertvalue { i64, ptr } undef, i64 %t551, 0
  %t553 = insertvalue { i64, ptr } %t552, ptr %t550, 1
  store { i64, ptr } %t553, ptr %l23, !tbaa !27
  br label %bb177
bb176:
  call void @__olang_check_failed(ptr @olang_loc_642a74ef72af54a6_43680c0161c24f22)
  unreachable
bb177:
  %t555 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t555, ptr %l260, !tbaa !27
  %t556 = load i1, ptr %l20, !tbaa !21
  store i1 %t556, ptr %l261, !tbaa !21
  %t557 = ptrtoint ptr %v0 to i64
  store i64 %t557, ptr %l262, !tbaa !24
  %t558 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acMacro_2e2
  br i1 %t558, label %bb178, label %bb179
bb178:
  %t560 = call ptr @__olang_region_make(ptr %v0)
  %t561 = ptrtoint ptr %t560 to i64
  store i64 %t561, ptr %l262, !tbaa !24
  br label %bb179
bb179:
  %t562 = load ptr, ptr %l21, !tbaa !29
  %t563 = load i64, ptr %l262
  %t564 = inttoptr i64 %t563 to ptr
  %t566 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %t564, ptr %t562)
  store { i64, ptr } %t566, ptr %l265
  br label %bb180
bb180:
  %t567 = ptrtoint ptr %v1 to i64
  store i64 %t567, ptr %l266, !tbaa !24
  %t568 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acMacro_2e3
  br i1 %t568, label %bb181, label %bb182
bb181:
  %t570 = call ptr @__olang_region_make(ptr %v1)
  %t571 = ptrtoint ptr %t570 to i64
  store i64 %t571, ptr %l266, !tbaa !24
  br label %bb182
bb182:
  %t572 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t574 = call ptr @compiler_2fbindgen_2ecLex(ptr %v1, ptr %v1, { i64, ptr } %t572)
  store ptr %t574, ptr %l269
  br label %bb183
bb183:
  %t575 = load i64, ptr %l266
  %t576 = inttoptr i64 %t575 to ptr
  %t577 = load i64, ptr %l266
  %t578 = inttoptr i64 %t577 to ptr
  %t579 = load ptr, ptr %l269, !tbaa !29
  %t580 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %t576, ptr %t578, ptr %t579)
  store { i64, ptr } %t580, ptr %l270
  br label %bb184
bb184:
  %t581 = load ptr, ptr %lp5
  %t582 = load { i64, ptr }, ptr %t581, !tbaa !27
  %t583 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t586 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %v3, { i64, ptr } %t582, { i64, ptr } %t583)
  store i1 %t586, ptr %l273
  br label %bb185
bb185:
  %t587 = load i1, ptr %l273, !tbaa !21
  br i1 %t587, label %bb186, label %bb187
bb186:
  store i1 true, ptr %l274, !tbaa !21
  br label %bb189
bb187:
  %t588 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t590 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s2, { i64, ptr } %t588, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d168, i32 0, i32 1) })
  store i1 %t590, ptr %l276
  br label %bb188
bb188:
  %t591 = load i1, ptr %l276, !tbaa !21
  store i1 %t591, ptr %l274, !tbaa !21
  br label %bb189
bb189:
  %t592 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t593 = load i1, ptr %l261, !tbaa !21
  %t594 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t595 = load { i64, ptr }, ptr %l270, !tbaa !27
  %t596 = load i1, ptr %l274, !tbaa !21
  %t597 = call %"compiler/bindgen:cMacro" @compiler_2fbindgen_3acMacro_2ector(ptr %v1, ptr %v0, ptr %v1, ptr %v0, { i64, ptr } %t592, i1 %t593, { i64, ptr } %t594, { i64, ptr } %t595, i1 %t596)
  store %"compiler/bindgen:cMacro" %t597, ptr %l277
  br label %bb190
bb190:
  %t598 = load %"compiler/bindgen:cMacro", ptr %l277
  %t599 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 64, i64 8)
  store %"compiler/bindgen:cMacro" %t598, ptr %t599
  store ptr %t599, ptr %l30, !tbaa !29
  %t601 = load ptr, ptr %l30, !tbaa !29
  %t602 = load i1, ptr %l22, !tbaa !21
  %t605 = getelementptr %"compiler/bindgen:cMacro", ptr %t601, i32 0, i32 5
  store i1 %t602, ptr %t605, !tbaa !21
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t608 = getelementptr %"compiler/bindgen:gen", ptr %t606, i32 0, i32 13
  %t609 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t612 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t608, { i64, ptr } %t609)
  %t613 = extractvalue { i32, i64 } %t612, 1
  %t614 = extractvalue { i32, i64 } %t612, 0
  store i32 %t614, ptr %l286
  %t615 = icmp ne i32 %t614, 0
  br i1 %t615, label %bb192, label %ok.616, !prof !99
ok.616:
  store i64 %t613, ptr %l285
  br label %bb191
bb191:
  %t617 = load i64, ptr %l285, !tbaa !24
  store i64 %t617, ptr %l281, !tbaa !24
  br label %bb194
bb192:
  br label %bb193
bb193:
  store i64 -1, ptr %l281, !tbaa !24
  br label %bb194
bb194:
  %t618 = load i64, ptr %l281, !tbaa !24
  store i64 %t618, ptr %l31, !tbaa !24
  %t619 = load i64, ptr %l31, !tbaa !24
  %t621 = icmp sge i64 %t619, 0
  br i1 %t621, label %bb195, label %bb196
bb195:
  %t623 = load ptr, ptr %l0, !tbaa !29
  %t625 = getelementptr %"compiler/bindgen:gen", ptr %t623, i32 0, i32 12
  %t626 = load i64, ptr %l31, !tbaa !24
  %t627 = load ptr, ptr %l30, !tbaa !29
  %t629 = load %"compiler/bindgen:cMacro", ptr %t627
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eSetAt_H7935c3ba4e105e8cc692de439d360efe(ptr %v0, ptr %v0, ptr %t625, i64 %t626, %"compiler/bindgen:cMacro" %t629)
  br label %bb197
bb196:
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t635 = getelementptr %"compiler/bindgen:gen", ptr %t633, i32 0, i32 12
  %t636 = load ptr, ptr %l30, !tbaa !29
  %t638 = load %"compiler/bindgen:cMacro", ptr %t636
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2ePush_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v0, ptr %t635, %"compiler/bindgen:cMacro" %t638)
  br label %bb198
bb197:
  br label %bb201
bb198:
  %t641 = load ptr, ptr %l0, !tbaa !29
  %t643 = getelementptr %"compiler/bindgen:gen", ptr %t641, i32 0, i32 13
  store ptr %t643, ptr %l299, !tbaa !29
  %t644 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t644, ptr %l300, !tbaa !27
  %t645 = load ptr, ptr %l0, !tbaa !29
  %t647 = getelementptr %"compiler/bindgen:gen", ptr %t645, i32 0, i32 12
  %t649 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %t647)
  store i64 %t649, ptr %l303
  br label %bb199
bb199:
  %t650 = load i64, ptr %l303, !tbaa !24
  %t651 = sub i64 %t650, 1
  %t652 = load ptr, ptr %l299, !tbaa !29
  %t653 = load { i64, ptr }, ptr %l300, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %t652, { i64, ptr } %t653, i64 %t651)
  br label %bb200
bb200:
  br label %bb201
bb201:
  call void @__olang_scope_close(ptr %s2)
  br label %bb202
bb202:
  br label %bb3
bb203:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i1
  %l8 = alloca i64
  %l13 = alloca ptr
  %l18 = alloca i1
  %l22 = alloca %"compiler/bindgen:record"
  %l24 = alloca %"compiler/bindgen:record"
  %l26 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t31 = alloca %"compiler/bindgen:record", align 8
  %t34 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t2)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  store i1 true, ptr %l4, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/bindgen:gen", ptr %t9, i32 0, i32 5
  %t15 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t11, i64 %t7)
  store ptr %t15, ptr %l13
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l13, !tbaa !29
  %t18 = load i1, ptr %l4, !tbaa !21
  %t21 = getelementptr %"compiler/bindgen:record", ptr %t16, i32 0, i32 8
  store i1 %t18, ptr %t21, !tbaa !21
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/bindgen:gen", ptr %t22, i32 0, i32 23
  %t25 = load i1, ptr %t24, !tbaa !21
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/bindgen:gen", ptr %t27, i32 0, i32 5
  %t30 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t31, ptr %v0, ptr %v0, ptr %t29, i64 %t30)
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %t31, i64 216, i1 false)
  br label %bb5
bb4:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb8
bb5:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t34, ptr %s0, ptr %l22)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t34, i64 216, i1 false)
  br label %bb6
bb6:
  %t36 = getelementptr %"compiler/bindgen:record", ptr %l24, i32 0, i32 7
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t39 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d169, i32 0, i32 1) })
  store i1 %t39, ptr %l26
  br label %bb7
bb7:
  %t40 = load i1, ptr %l26, !tbaa !21
  store i1 %t40, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t41 = load i1, ptr %l18, !tbaa !21
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l27, !tbaa !29
  %t43 = load i64, ptr %l2, !tbaa !24
  store i64 %t43, ptr %l28, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/bindgen:gen", ptr %t44, i32 0, i32 22
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t50 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v0, ptr %t46, { i64, ptr } %t47)
  %t51 = extractvalue { i32, { i64, ptr } } %t50, 1
  %t52 = extractvalue { i32, { i64, ptr } } %t50, 0
  store i32 %t52, ptr %l34
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb12, label %ok.54, !prof !99
ok.54:
  store { i64, ptr } %t51, ptr %l33
  br label %bb11
bb10:
  br label %bb16
bb11:
  %t55 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t55, ptr %l29, !tbaa !27
  br label %bb14
bb12:
  br label %bb13
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d170, i32 0, i32 1) }, ptr %l29, !tbaa !27
  br label %bb14
bb14:
  %t56 = load ptr, ptr %l27, !tbaa !29
  %t57 = load i64, ptr %l28, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l29, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecord(ptr %v0, ptr %v0, ptr %t56, i64 %t57, { i64, ptr } %t58)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t59 = load i64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca i64
  %l9 = alloca i1
  %l12 = alloca i1
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l20 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l28 = alloca i64
  %l30 = alloca { i64, ptr }
  %l32 = alloca i1
  %l34 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca %"compiler/bindgen:record"
  %l40 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca i64
  %l47 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l56 = alloca i64
  %l61 = alloca ptr
  %l69 = alloca ptr
  %l73 = alloca i1
  %l75 = alloca i1
  %l79 = alloca %"compiler/bindgen:record"
  %l81 = alloca %"compiler/bindgen:record"
  %l87 = alloca ptr
  %l91 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l105 = alloca i1
  %l110 = alloca ptr
  %l114 = alloca i1
  %l119 = alloca ptr
  %l123 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca ptr
  %l127 = alloca { i64, ptr }
  %l131 = alloca i1
  %l134 = alloca i1
  %l139 = alloca ptr
  %l142 = alloca i64
  %l144 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %l146 = alloca i64
  %l147 = alloca i32
  %l148 = alloca i64
  %l149 = alloca i32
  %l153 = alloca ptr
  %l155 = alloca ptr
  %l157 = alloca i1
  %l158 = alloca i64
  %l163 = alloca ptr
  %l165 = alloca ptr
  %l166 = alloca i64
  %l169 = alloca { i64, ptr }
  %l174 = alloca ptr
  %l176 = alloca ptr
  %l177 = alloca i64
  %l180 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %t21 = alloca %"compiler/bindgen:record", align 8
  %t26 = alloca %"compiler/bindgen:record", align 8
  %t126 = alloca %"compiler/bindgen:record", align 8
  %t129 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %v1, ptr %s0, ptr %s0, ptr %t1, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d171, i32 0, i32 1) })
  store { i64, ptr } %t3, ptr %l30
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = mul i64 %t5, 1
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @llvm.memcpy.p0.p0.i64(ptr %t8, ptr %t6, i64 %t7, i1 false)
  %t9 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d172, i32 0, i32 1) })
  store i1 %t12, ptr %l32
  br label %bb2
bb2:
  %t13 = load i1, ptr %l32, !tbaa !21
  store i1 %t13, ptr %l4, !tbaa !21
  store i64 0, ptr %l5, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t14, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d173, i32 0, i32 1) })
  store i1 %t16, ptr %l34
  br label %bb3
bb3:
  %t17 = load i1, ptr %l34, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/bindgen:gen", ptr %t18, i32 0, i32 5
  store ptr %t20, ptr %l36, !tbaa !29
  call void @compiler_2fbindgen_3arecord_2ector(ptr %t21, ptr %v0, ptr %v0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d174, i32 0, i32 1) })
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t21, i64 216, i1 false)
  br label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l50, !tbaa !29
  %t23 = load i1, ptr %l4, !tbaa !21
  br i1 %t23, label %bb13, label %bb14
bb6:
  %t25 = load ptr, ptr %l36, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t26, ptr %l37, i64 216, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2ePush_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t25, ptr %t26)
  br label %bb7
bb7:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/bindgen:gen", ptr %t27, i32 0, i32 5
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t29)
  store i64 %t31, ptr %l40
  br label %bb8
bb8:
  %t32 = load i64, ptr %l40, !tbaa !24
  %t33 = sub i64 %t32, 1
  store i64 %t33, ptr %l5, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/bindgen:gen", ptr %t35, i32 0, i32 7
  store ptr %t37, ptr %l43, !tbaa !29
  %t38 = ptrtoint ptr %v0 to i64
  store i64 %t38, ptr %l44, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = call ptr @__olang_region_make(ptr %v0)
  %t42 = ptrtoint ptr %t41 to i64
  store i64 %t42, ptr %l44, !tbaa !24
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t44 = load i64, ptr %l44
  %t45 = inttoptr i64 %t44 to ptr
  %t47 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %v1, ptr %s1, ptr %t45, ptr %t43, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d175, i32 0, i32 1) })
  store { i64, ptr } %t47, ptr %l47
  br label %bb11
bb11:
  %t48 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t49 = load i64, ptr %l44
  %t50 = inttoptr i64 %t49 to ptr
  %t51 = extractvalue { i64, ptr } %t48, 0
  %t52 = extractvalue { i64, ptr } %t48, 1
  %t53 = mul i64 %t51, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %t50, i64 %t53)
  call void @llvm.memcpy.p0.p0.i64(ptr %t54, ptr %t52, i64 %t53, i1 false)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  %t57 = load i64, ptr %l5, !tbaa !24
  %t58 = load ptr, ptr %l43, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t58, { i64, ptr } %t56, i64 %t57)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s1)
  br label %bb17
bb13:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d176, i32 0, i32 1) }, ptr %l52, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d177, i32 0, i32 1) }, ptr %l52, !tbaa !27
  br label %bb15
bb15:
  %t61 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t66 = extractvalue { i64, ptr } %t61, 1
  %t67 = extractvalue { i64, ptr } %t61, 0
  %t68 = add i64 %t64, %t67
  %t69 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t63, i64 %t64)
  %t70 = getelementptr i8, ptr %t69, i64 %t64
  call void @olang_textcopy(ptr %t70, ptr %t66, i64 %t67)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t69, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = extractvalue { i64, ptr } %t72, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t80 = load ptr, ptr %l50, !tbaa !29
  %t82 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %v0, ptr %t80, { i64, ptr } %t79)
  store i64 %t82, ptr %l56
  br label %bb16
bb16:
  %t83 = load i64, ptr %l56, !tbaa !24
  store i64 %t83, ptr %l5, !tbaa !24
  br label %bb17
bb17:
  %t84 = load i64, ptr %l5, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/bindgen:gen", ptr %t86, i32 0, i32 5
  %t92 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t88, i64 %t84)
  store ptr %t92, ptr %l61
  br label %bb18
bb18:
  %t93 = load ptr, ptr %l61, !tbaa !29
  %t95 = load i1, ptr %l4, !tbaa !21
  %t98 = getelementptr %"compiler/bindgen:record", ptr %t93, i32 0, i32 1
  store i1 %t95, ptr %t98, !tbaa !21
  %t99 = load i1, ptr %l3, !tbaa !21
  br i1 %t99, label %bb19, label %bb20
bb19:
  %t101 = load i64, ptr %l5, !tbaa !24
  store i1 true, ptr %l9, !tbaa !21
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/bindgen:gen", ptr %t103, i32 0, i32 5
  %t109 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t105, i64 %t101)
  store ptr %t109, ptr %l69
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t110 = load ptr, ptr %l69, !tbaa !29
  %t112 = load i1, ptr %l9, !tbaa !21
  %t115 = getelementptr %"compiler/bindgen:record", ptr %t110, i32 0, i32 6
  store i1 %t112, ptr %t115, !tbaa !21
  br label %bb22
bb22:
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = call i1 @compiler_2fbindgen_2eflag(ptr %v1, ptr %s0, ptr %t116, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d178, i32 0, i32 1) })
  store i1 %t118, ptr %l73
  br label %bb23
bb23:
  %t119 = load i1, ptr %l73, !tbaa !21
  %t120 = xor i1 %t119, true
  br i1 %t120, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l75, !tbaa !21
  br label %bb28
bb25:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/bindgen:gen", ptr %t122, i32 0, i32 5
  %t125 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t126, ptr %v0, ptr %s0, ptr %t124, i64 %t125)
  call void @llvm.memmove.p0.p0.i64(ptr %l79, ptr %t126, i64 216, i1 false)
  br label %bb26
bb26:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t129, ptr %s0, ptr %l79)
  call void @llvm.memmove.p0.p0.i64(ptr %l81, ptr %t129, i64 216, i1 false)
  br label %bb27
bb27:
  %t131 = getelementptr %"compiler/bindgen:record", ptr %l81, i32 0, i32 2
  %t132 = load i1, ptr %t131, !tbaa !21
  store i1 %t132, ptr %l75, !tbaa !21
  br label %bb28
bb28:
  %t134 = load i1, ptr %l75, !tbaa !21
  br i1 %t134, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb30:
  br label %bb31
bb31:
  %t135 = load i64, ptr %l5, !tbaa !24
  store i1 true, ptr %l12, !tbaa !21
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/bindgen:gen", ptr %t137, i32 0, i32 5
  %t143 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t139, i64 %t135)
  store ptr %t143, ptr %l87
  br label %bb32
bb32:
  %t144 = load ptr, ptr %l87, !tbaa !29
  %t146 = load i1, ptr %l12, !tbaa !21
  %t149 = getelementptr %"compiler/bindgen:record", ptr %t144, i32 0, i32 2
  store i1 %t146, ptr %t149, !tbaa !21
  store %olang.scope zeroinitializer, ptr %s6
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %v1, ptr %s6, ptr %t150)
  store { i64, ptr } %t152, ptr %l91
  br label %bb33
bb33:
  %t153 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 0
  %t155 = extractvalue { i64, ptr } %t153, 1
  %t156 = mul i64 %t154, 8
  %t157 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  store { i64, ptr } %t159, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t161 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t161, 0
  store i64 %t163, ptr %l16, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t165 = load i64, ptr %l15, !tbaa !24
  %t166 = load i64, ptr %l16, !tbaa !24
  %t169 = icmp slt i64 %t165, %t166
  %t171 = xor i1 %t169, true
  br i1 %t171, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s7)
  br label %bb88
bb36:
  br label %bb37
bb37:
  %t173 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t173, ptr %l99, !tbaa !27
  %t174 = load i64, ptr %l15, !tbaa !24
  %t176 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr ptr, ptr %t177, i64 %t174
  %t179 = load ptr, ptr %t178, !tbaa !39
  store ptr %t179, ptr %l17, !tbaa !29
  %t181 = load ptr, ptr %l17, !tbaa !29
  %t183 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s6, ptr %s7, ptr %s7, ptr %t181, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d179, i32 0, i32 1) })
  store { i64, ptr } %t183, ptr %l103
  br label %bb38
bb38:
  %t184 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t184, ptr %l18, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t187 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s7, { i64, ptr } %t185, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d180, i32 0, i32 1) })
  store i1 %t187, ptr %l105
  br label %bb39
bb39:
  %t188 = load i1, ptr %l105, !tbaa !21
  br i1 %t188, label %bb40, label %bb41
bb40:
  %t189 = load i64, ptr %l5, !tbaa !24
  store i1 true, ptr %l20, !tbaa !21
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/bindgen:gen", ptr %t191, i32 0, i32 5
  %t197 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t193, i64 %t189)
  store ptr %t197, ptr %l110
  br label %bb42
bb41:
  br label %bb43
bb42:
  %t198 = load ptr, ptr %l110, !tbaa !29
  %t200 = load i1, ptr %l20, !tbaa !21
  %t203 = getelementptr %"compiler/bindgen:record", ptr %t198, i32 0, i32 12
  store i1 %t200, ptr %t203, !tbaa !21
  br label %bb43
bb43:
  %t204 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t206 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s7, { i64, ptr } %t204, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d181, i32 0, i32 1) })
  store i1 %t206, ptr %l114
  br label %bb44
bb44:
  %t207 = load i1, ptr %l114, !tbaa !21
  br i1 %t207, label %bb45, label %bb46
bb45:
  %t208 = load i64, ptr %l5, !tbaa !24
  store i1 true, ptr %l23, !tbaa !21
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/bindgen:gen", ptr %t210, i32 0, i32 5
  %t216 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t212, i64 %t208)
  store ptr %t216, ptr %l119
  br label %bb47
bb46:
  br label %bb48
bb47:
  %t217 = load ptr, ptr %l119, !tbaa !29
  %t219 = load i1, ptr %l23, !tbaa !21
  %t222 = getelementptr %"compiler/bindgen:record", ptr %t217, i32 0, i32 15
  store i1 %t219, ptr %t222, !tbaa !21
  br label %bb48
bb48:
  %t223 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t225 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s7, { i64, ptr } %t223, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d182, i32 0, i32 1) })
  store i1 %t225, ptr %l123
  br label %bb49
bb49:
  %t226 = load i1, ptr %l123, !tbaa !21
  br i1 %t226, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s10
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l124, !tbaa !29
  %t228 = load ptr, ptr %l17, !tbaa !29
  store ptr %t228, ptr %l125, !tbaa !29
  %t229 = load ptr, ptr %l17, !tbaa !29
  %t231 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s6, ptr %s10, ptr %s10, ptr %t229, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d183, i32 0, i32 1) })
  store { i64, ptr } %t231, ptr %l127
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t232 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t232, 0
  %t234 = extractvalue { i64, ptr } %t232, 1
  %t235 = mul i64 %t233, 1
  %t236 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t235)
  call void @llvm.memcpy.p0.p0.i64(ptr %t236, ptr %t234, i64 %t235, i1 false)
  %t237 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t236, 1
  %t239 = load i1, ptr %l3, !tbaa !21
  %t240 = load ptr, ptr %l124, !tbaa !29
  %t241 = load ptr, ptr %l125, !tbaa !29
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordDecl(ptr %v0, ptr %s6, ptr %s10, ptr %t240, ptr %t241, { i64, ptr } %t238, i1 %t239)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s10)
  br label %bb54
bb54:
  %t244 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s7, { i64, ptr } %t244, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d184, i32 0, i32 1) })
  store i1 %t246, ptr %l131
  br label %bb55
bb55:
  %t247 = load i1, ptr %l131, !tbaa !21
  %t248 = xor i1 %t247, true
  br i1 %t248, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s7)
  br label %bb87
bb57:
  br label %bb58
bb58:
  %t250 = load ptr, ptr %l17, !tbaa !29
  %t252 = call i1 @compiler_2fbindgen_2eflag(ptr %s6, ptr %s7, ptr %t250, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d185, i32 0, i32 1) })
  store i1 %t252, ptr %l134
  br label %bb59
bb59:
  %t253 = load i1, ptr %l134, !tbaa !21
  br i1 %t253, label %bb60, label %bb61
bb60:
  %t254 = load i64, ptr %l5, !tbaa !24
  store i1 true, ptr %l26, !tbaa !21
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/bindgen:gen", ptr %t256, i32 0, i32 5
  %t262 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t258, i64 %t254)
  store ptr %t262, ptr %l139
  br label %bb62
bb61:
  br label %bb63
bb62:
  %t263 = load ptr, ptr %l139, !tbaa !29
  %t265 = load i1, ptr %l26, !tbaa !21
  %t268 = getelementptr %"compiler/bindgen:record", ptr %t263, i32 0, i32 3
  store i1 %t265, ptr %t268, !tbaa !21
  br label %bb63
bb63:
  %t269 = load ptr, ptr %l17, !tbaa !29
  %t271 = call { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %s6, ptr %s7, ptr %t269)
  store { i64, ptr } %t271, ptr %l144
  br label %bb64
bb64:
  %t272 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t272, 0
  %t274 = extractvalue { i64, ptr } %t272, 1
  %t275 = mul i64 %t273, 1
  %t276 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t275)
  call void @llvm.memcpy.p0.p0.i64(ptr %t276, ptr %t274, i64 %t275, i1 false)
  %t277 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  store { i64, ptr } %t278, ptr %l145, !tbaa !27
  %t279 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s7, i64 10)
  %t280 = extractvalue { i32, i64 } %t279, 1
  %t281 = extractvalue { i32, i64 } %t279, 0
  store i32 %t281, ptr %l147
  %t282 = icmp ne i32 %t281, 0
  br i1 %t282, label %bb66, label %ok.283, !prof !99
ok.283:
  store i64 %t280, ptr %l146
  br label %bb65
bb65:
  %t284 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t285 = load i64, ptr %l146, !tbaa !24
  %t286 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s7, { i64, ptr } %t284, i64 %t285)
  %t287 = extractvalue { i32, i64 } %t286, 1
  %t288 = extractvalue { i32, i64 } %t286, 0
  store i32 %t288, ptr %l149
  %t289 = icmp ne i32 %t288, 0
  br i1 %t289, label %bb69, label %ok.290, !prof !99
ok.290:
  store i64 %t287, ptr %l148
  br label %bb68
bb66:
  br label %bb67
bb67:
  store i64 -1, ptr %l142, !tbaa !24
  br label %bb70
bb68:
  %t291 = load i64, ptr %l148, !tbaa !24
  store i64 %t291, ptr %l142, !tbaa !24
  br label %bb70
bb69:
  br label %bb67
bb70:
  %t292 = load i64, ptr %l142, !tbaa !24
  store i64 %t292, ptr %l28, !tbaa !24
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/bindgen:gen", ptr %t293, i32 0, i32 5
  %t296 = load i64, ptr %l5, !tbaa !24
  %t299 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t295, i64 %t296)
  store ptr %t299, ptr %l153
  br label %bb71
bb71:
  %t300 = load ptr, ptr %l153, !tbaa !29
  %t302 = getelementptr %"compiler/bindgen:record", ptr %t300, i32 0, i32 16
  store ptr %t302, ptr %l155, !tbaa !29
  %t303 = load ptr, ptr %l17, !tbaa !29
  %t305 = call i1 @compiler_2fbindgen_2eflag(ptr %s6, ptr %s7, ptr %t303, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d186, i32 0, i32 1) })
  store i1 %t305, ptr %l157
  br label %bb72
bb72:
  %t306 = load i1, ptr %l157, !tbaa !21
  br i1 %t306, label %bb73, label %bb74
bb73:
  %t307 = load i64, ptr %l28, !tbaa !24
  store i64 %t307, ptr %l158, !tbaa !24
  br label %bb75
bb74:
  store i64 -1, ptr %l158, !tbaa !24
  br label %bb75
bb75:
  %t309 = load ptr, ptr %l155, !tbaa !29
  %t310 = load i64, ptr %l158, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t309, i64 %t310)
  br label %bb76
bb76:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/bindgen:gen", ptr %t311, i32 0, i32 5
  %t314 = load i64, ptr %l5, !tbaa !24
  %t317 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t313, i64 %t314)
  store ptr %t317, ptr %l163
  br label %bb77
bb77:
  %t318 = load ptr, ptr %l163, !tbaa !29
  %t320 = getelementptr %"compiler/bindgen:record", ptr %t318, i32 0, i32 4
  store ptr %t320, ptr %l165, !tbaa !29
  %t321 = ptrtoint ptr %v0 to i64
  store i64 %t321, ptr %l166, !tbaa !24
  %t322 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t322, label %bb78, label %bb79
bb78:
  %t324 = call ptr @__olang_region_make(ptr %v0)
  %t325 = ptrtoint ptr %t324 to i64
  store i64 %t325, ptr %l166, !tbaa !24
  br label %bb79
bb79:
  %t326 = load ptr, ptr %l17, !tbaa !29
  %t327 = load i64, ptr %l166
  %t328 = inttoptr i64 %t327 to ptr
  %t330 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s6, ptr %s7, ptr %t328, ptr %t326, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d187, i32 0, i32 1) })
  store { i64, ptr } %t330, ptr %l169
  br label %bb80
bb80:
  %t331 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t332 = load i64, ptr %l166
  %t333 = inttoptr i64 %t332 to ptr
  %t334 = extractvalue { i64, ptr } %t331, 0
  %t335 = extractvalue { i64, ptr } %t331, 1
  %t336 = mul i64 %t334, 1
  %t337 = call ptr @__olang_scope_alloc(ptr %t333, i64 %t336)
  call void @llvm.memcpy.p0.p0.i64(ptr %t337, ptr %t335, i64 %t336, i1 false)
  %t338 = insertvalue { i64, ptr } undef, i64 %t334, 0
  %t339 = insertvalue { i64, ptr } %t338, ptr %t337, 1
  %t340 = load ptr, ptr %l165, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t340, { i64, ptr } %t339)
  br label %bb81
bb81:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/bindgen:gen", ptr %t342, i32 0, i32 5
  %t345 = load i64, ptr %l5, !tbaa !24
  %t348 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t344, i64 %t345)
  store ptr %t348, ptr %l174
  br label %bb82
bb82:
  %t349 = load ptr, ptr %l174, !tbaa !29
  %t351 = getelementptr %"compiler/bindgen:record", ptr %t349, i32 0, i32 5
  store ptr %t351, ptr %l176, !tbaa !29
  %t352 = ptrtoint ptr %v0 to i64
  store i64 %t352, ptr %l177, !tbaa !24
  %t353 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t353, label %bb83, label %bb84
bb83:
  %t355 = call ptr @__olang_region_make(ptr %v0)
  %t356 = ptrtoint ptr %t355 to i64
  store i64 %t356, ptr %l177, !tbaa !24
  br label %bb84
bb84:
  %t357 = load ptr, ptr %l17, !tbaa !29
  %t358 = load i64, ptr %l177
  %t359 = inttoptr i64 %t358 to ptr
  %t361 = call { i64, ptr } @compiler_2fbindgen_2etypeOf(ptr %s6, ptr %t359, ptr %t357)
  store { i64, ptr } %t361, ptr %l180
  br label %bb85
bb85:
  %t362 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t363 = load i64, ptr %l177
  %t364 = inttoptr i64 %t363 to ptr
  %t365 = extractvalue { i64, ptr } %t362, 0
  %t366 = extractvalue { i64, ptr } %t362, 1
  %t367 = mul i64 %t365, 1
  %t368 = call ptr @__olang_scope_alloc(ptr %t364, i64 %t367)
  call void @llvm.memcpy.p0.p0.i64(ptr %t368, ptr %t366, i64 %t367, i1 false)
  %t369 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t368, 1
  %t371 = load ptr, ptr %l176, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t371, { i64, ptr } %t370)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s7)
  br label %bb87
bb87:
  %t373 = load i64, ptr %l15, !tbaa !24
  %t375 = add i64 %t373, 1
  store i64 %t375, ptr %l15, !tbaa !24
  br label %bb34
bb88:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t4 = getelementptr %"compiler/bindgen:gen", ptr %t3, i32 0, i32 25
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  store { i64, ptr } %t5, ptr %l4, !tbaa !27
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = getelementptr %"compiler/bindgen:gen", ptr %t7, i32 0, i32 25
  store { i64, ptr } %a1, ptr %t8, !tbaa !27
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load { i64, ptr }, ptr %l4
  %t12 = extractvalue { i64, ptr } %t11, 1
  call void @__olang_region_release(ptr %t12)
  store { i64, ptr } zeroinitializer, ptr %l4
  br label %bb2
bb2:
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2estructDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i1
  %l4 = alloca %"compiler/bindgen:record"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l20 = alloca %"std/prelude/text:StringBuilder"
  %l23 = alloca i1
  %l27 = alloca %"compiler/bindgen:record"
  %l29 = alloca %"compiler/bindgen:record"
  %l31 = alloca i1
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i64
  %l43 = alloca i64
  %l48 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l80 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l82 = alloca i64
  %l86 = alloca i64
  %l89 = alloca i64
  %l107 = alloca ptr
  %l110 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l114 = alloca ptr
  %l117 = alloca { i64, ptr }
  %l118 = alloca i64
  %l122 = alloca %"compiler/bindgen:ctype"
  %l125 = alloca { i64, ptr }
  %l126 = alloca ptr
  %l130 = alloca %"compiler/bindgen:ctype"
  %l132 = alloca { i64, ptr }
  %l133 = alloca i32
  %l135 = alloca i1
  %l136 = alloca { i64, ptr }
  %l138 = alloca i64
  %l139 = alloca { i64, ptr }
  %l140 = alloca ptr
  %l141 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l146 = alloca %"compiler/bindgen:ctype"
  %l150 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l154 = alloca i32
  %l156 = alloca i1
  %l157 = alloca { i64, ptr }
  %l159 = alloca i64
  %l160 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t13 = alloca %"compiler/bindgen:record", align 8
  %t16 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l20
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l20
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eplain(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l23
  br label %bb2
bb2:
  %t8 = load i1, ptr %l23, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/bindgen:gen", ptr %t9, i32 0, i32 5
  %t12 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t13, ptr %v0, ptr %v0, ptr %t11, i64 %t12)
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %t13, i64 216, i1 false)
  br label %bb3
bb3:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t16, ptr %v0, ptr %l27)
  call void @llvm.memmove.p0.p0.i64(ptr %l29, ptr %t16, i64 216, i1 false)
  br label %bb4
bb4:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l29, i64 216, i1 false)
  %t18 = load i1, ptr %l3, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 15
  %t21 = load i1, ptr %t20, !tbaa !21
  store i1 %t21, ptr %l31, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l31, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t24 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 7
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t26 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
  %t29 = extractvalue { i64, ptr } %t25, 1
  %t30 = extractvalue { i64, ptr } %t25, 0
  %t31 = add i64 %t27, %t30
  %t32 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  %t34 = add i64 %t31, %t33
  %t35 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t34)
  call void @olang_textcopy(ptr %t35, ptr %t26, i64 %t27)
  %t36 = getelementptr i8, ptr %t35, i64 %t27
  call void @olang_textcopy(ptr %t36, ptr %t29, i64 %t30)
  %t37 = getelementptr i8, ptr %t36, i64 %t30
  call void @olang_textcopy(ptr %t37, ptr %t32, i64 %t33)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t35, 1
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t42 = extractvalue { i64, ptr } %t39, 1
  %t43 = mul i64 %t41, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t43)
  call void @llvm.memcpy.p0.p0.i64(ptr %t44, ptr %t42, i64 %t43, i1 false)
  %t45 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %l2, { i64, ptr } %t46)
  br label %bb10
bb9:
  br label %bb23
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epackedFields(ptr %v0, ptr %s3, ptr %t49, i64 %t50)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l39
  br label %bb11
bb11:
  %t54 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  %t55 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %t55
  store ptr %t55, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t57 = load i64, ptr %l6, !tbaa !24
  store i64 %t57, ptr %l41, !tbaa !24
  %t58 = load ptr, ptr %l5, !tbaa !29
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s3, ptr %t58)
  store i64 %t60, ptr %l43
  br label %bb13
bb13:
  %t61 = load i64, ptr %l41, !tbaa !24
  %t62 = load i64, ptr %l43, !tbaa !24
  %t63 = icmp slt i64 %t61, %t62
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb14, label %bb15
bb14:
  br label %bb20
bb15:
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l5, !tbaa !29
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s3, ptr %s3, ptr %t67, i64 %t68)
  store { i64, ptr } %t71, ptr %l48
  br label %bb17
bb17:
  %t72 = load { i64, ptr }, ptr %l48, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l2, { i64, ptr } %t72)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t76 = load i64, ptr %l6, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l6, !tbaa !24
  br label %bb12
bb20:
  call void @__olang_scope_close(ptr %s3)
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d190, i32 0, i32 1) })
  br label %bb21
bb21:
  %t82 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t82, ptr %l55
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t83 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t83, ptr %rv
  br label %ret
bb23:
  %t84 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 7
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  %t86 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  %t89 = extractvalue { i64, ptr } %t85, 1
  %t90 = extractvalue { i64, ptr } %t85, 0
  %t91 = add i64 %t87, %t90
  %t92 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
  %t94 = add i64 %t91, %t93
  %t95 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t94)
  call void @olang_textcopy(ptr %t95, ptr %t86, i64 %t87)
  %t96 = getelementptr i8, ptr %t95, i64 %t87
  call void @olang_textcopy(ptr %t96, ptr %t89, i64 %t90)
  %t97 = getelementptr i8, ptr %t96, i64 %t90
  call void @olang_textcopy(ptr %t97, ptr %t92, i64 %t93)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t95, 1
  %t101 = extractvalue { i64, ptr } %t99, 0
  %t102 = extractvalue { i64, ptr } %t99, 1
  %t103 = mul i64 %t101, 1
  %t104 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t103)
  call void @llvm.memcpy.p0.p0.i64(ptr %t104, ptr %t102, i64 %t103, i1 false)
  %t105 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t104, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } %t106)
  br label %bb24
bb24:
  %t109 = load i1, ptr %l3, !tbaa !21
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s7
  %t113 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 14
  %t114 = load i64, ptr %t113, !tbaa !24
  %t116 = icmp eq i64 %t114, 8
  br i1 %t116, label %bb27, label %bb28
bb26:
  br label %bb38
bb27:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d193, i32 0, i32 1) }, ptr %l64, !tbaa !27
  br label %bb35
bb28:
  %t118 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 14
  %t119 = load i64, ptr %t118, !tbaa !24
  %t121 = icmp eq i64 %t119, 4
  br i1 %t121, label %bb29, label %bb30
bb29:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d194, i32 0, i32 1) }, ptr %l67, !tbaa !27
  br label %bb34
bb30:
  %t123 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 14
  %t124 = load i64, ptr %t123, !tbaa !24
  %t126 = icmp eq i64 %t124, 2
  br i1 %t126, label %bb31, label %bb32
bb31:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d195, i32 0, i32 1) }, ptr %l70, !tbaa !27
  br label %bb33
bb32:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d196, i32 0, i32 1) }, ptr %l70, !tbaa !27
  br label %bb33
bb33:
  %t128 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t128, ptr %l67, !tbaa !27
  br label %bb34
bb34:
  %t129 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t129, ptr %l64, !tbaa !27
  br label %bb35
bb35:
  %t130 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t132 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 13
  %t133 = load i64, ptr %t132, !tbaa !24
  %t134 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 14
  %t135 = load i64, ptr %t134, !tbaa !24
  %t138 = sdiv i64 %t133, %t135
  %t139 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
  %t142 = extractvalue { i64, ptr } %t130, 1
  %t143 = extractvalue { i64, ptr } %t130, 0
  %t144 = add i64 %t140, %t143
  %t145 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d198, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d198, i32 0, i32 1) }, 0
  %t147 = add i64 %t144, %t146
  %t149 = call i64 @__olang_fmt_i64(ptr null, i64 %t138)
  %t150 = add i64 %t147, %t149
  %t151 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  %t153 = add i64 %t150, %t152
  %t154 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t153)
  call void @olang_textcopy(ptr %t154, ptr %t139, i64 %t140)
  %t155 = getelementptr i8, ptr %t154, i64 %t140
  call void @olang_textcopy(ptr %t155, ptr %t142, i64 %t143)
  %t156 = getelementptr i8, ptr %t155, i64 %t143
  call void @olang_textcopy(ptr %t156, ptr %t145, i64 %t146)
  %t157 = getelementptr i8, ptr %t156, i64 %t146
  %t158 = call i64 @__olang_fmt_i64(ptr %t157, i64 %t138)
  %t159 = getelementptr i8, ptr %t157, i64 %t149
  call void @olang_textcopy(ptr %t159, ptr %t151, i64 %t152)
  %t160 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t154, 1
  %t163 = extractvalue { i64, ptr } %t161, 0
  %t164 = extractvalue { i64, ptr } %t161, 1
  %t165 = mul i64 %t163, 1
  %t166 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t165)
  call void @llvm.memcpy.p0.p0.i64(ptr %t166, ptr %t164, i64 %t165, i1 false)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l2, { i64, ptr } %t168)
  br label %bb36
bb36:
  %t172 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t172, ptr %l79
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  %t173 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t173, ptr %rv
  br label %ret
bb38:
  %t174 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t174, ptr %l80
  br label %bb39
bb39:
  %t175 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t175, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t176 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 4
  %t178 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t176)
  store i64 %t178, ptr %l82
  br label %bb40
bb40:
  %t179 = load i64, ptr %l82, !tbaa !24
  store i64 %t179, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t180 = load i64, ptr %l11, !tbaa !24
  %t181 = load i64, ptr %l10, !tbaa !24
  %t184 = icmp sgt i64 %t180, %t181
  br i1 %t184, label %bb41, label %bb42
bb41:
  %t186 = load i64, ptr %l12, !tbaa !24
  %t188 = icmp sgt i64 %t186, 0
  br i1 %t188, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb46
bb43:
  %t190 = load i64, ptr %l11, !tbaa !24
  %t191 = load i64, ptr %l10, !tbaa !24
  %t194 = sub i64 %t190, %t191
  %t195 = load i64, ptr %l12, !tbaa !24
  %t198 = add i64 %t194, %t195
  %t200 = sub i64 %t198, 1
  %t201 = load i64, ptr %l12, !tbaa !24
  %t204 = sdiv i64 %t200, %t201
  store i64 %t204, ptr %l89, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb45
bb45:
  %t206 = load i64, ptr %l89, !tbaa !24
  store i64 %t206, ptr %l86, !tbaa !24
  br label %bb46
bb46:
  %t207 = load i64, ptr %l86, !tbaa !24
  store i64 %t207, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb47
bb47:
  store %olang.scope zeroinitializer, ptr %s10
  %t208 = load i64, ptr %l14, !tbaa !24
  %t209 = load i64, ptr %l13, !tbaa !24
  %t212 = icmp slt i64 %t208, %t209
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s10)
  br label %bb72
bb49:
  br label %bb50
bb50:
  %t216 = load i64, ptr %l10, !tbaa !24
  %t217 = load i64, ptr %l14, !tbaa !24
  %t218 = load i64, ptr %l12, !tbaa !24
  %t221 = mul i64 %t217, %t218
  %t224 = add i64 %t216, %t221
  store i64 %t224, ptr %l15, !tbaa !24
  %t226 = load ptr, ptr %l0, !tbaa !29
  store ptr %t226, ptr %l107, !tbaa !29
  %t227 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 4
  %t228 = load i64, ptr %l15, !tbaa !24
  %t231 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t227, i64 %t228)
  store { i64, ptr } %t231, ptr %l110
  br label %bb51
bb51:
  %t232 = load i64, ptr %l15, !tbaa !24
  %t233 = load ptr, ptr %l107, !tbaa !29
  %t234 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t237 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamName(ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %t233, { i64, ptr } %t234, i64 %t232, ptr %l9)
  store { i64, ptr } %t237, ptr %l113
  br label %bb52
bb52:
  %t238 = load { i64, ptr }, ptr %l113, !tbaa !27
  store { i64, ptr } %t238, ptr %l16, !tbaa !27
  %t239 = load ptr, ptr %l0, !tbaa !29
  store ptr %t239, ptr %l114, !tbaa !29
  %t240 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 5
  %t241 = load i64, ptr %l15, !tbaa !24
  %t244 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t240, i64 %t241)
  store { i64, ptr } %t244, ptr %l117
  br label %bb53
bb53:
  %t245 = load ptr, ptr %l114, !tbaa !29
  %t246 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t247 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %v0, ptr %t245, { i64, ptr } %t246, i64 0)
  store i64 %t247, ptr %l118
  br label %bb54
bb54:
  %t248 = load i64, ptr %l118, !tbaa !24
  store i64 %t248, ptr %l17, !tbaa !24
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/bindgen:gen", ptr %t249, i32 0, i32 16
  %t252 = load i64, ptr %l17, !tbaa !24
  %t255 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s10, ptr %t251, i64 %t252)
  store %"compiler/bindgen:ctype" %t255, ptr %l122
  br label %bb55
bb55:
  %t256 = getelementptr %"compiler/bindgen:ctype", ptr %l122, i32 0, i32 0
  %t257 = load i32, ptr %t256, !range !{i32 0, i32 7}
  %t259 = trunc i64 4 to i32
  %t260 = icmp eq i32 %t257, %t259
  br i1 %t260, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s11
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l126, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/bindgen:gen", ptr %t263, i32 0, i32 16
  %t266 = load i64, ptr %l17, !tbaa !24
  %t269 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s11, ptr %t265, i64 %t266)
  store %"compiler/bindgen:ctype" %t269, ptr %l130
  br label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s13
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load i64, ptr %l17, !tbaa !24
  %t274 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efieldType(ptr %v0, ptr %s13, ptr %t270, i64 %t271)
  %t275 = extractvalue { i32, { i64, ptr } } %t274, 1
  %t276 = extractvalue { i32, { i64, ptr } } %t274, 0
  store i32 %t276, ptr %l154
  %t277 = icmp ne i32 %t276, 0
  br i1 %t277, label %bb66, label %ok.278, !prof !99
ok.278:
  store { i64, ptr } %t275, ptr %l153
  br label %bb65
bb58:
  %t279 = getelementptr %"compiler/bindgen:ctype", ptr %l130, i32 0, i32 2
  %t280 = load i64, ptr %t279, !tbaa !24
  %t281 = load ptr, ptr %l126, !tbaa !29
  %t283 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efieldType(ptr %v0, ptr %s11, ptr %t281, i64 %t280)
  %t284 = extractvalue { i32, { i64, ptr } } %t283, 1
  %t285 = extractvalue { i32, { i64, ptr } } %t283, 0
  store i32 %t285, ptr %l133
  %t286 = icmp ne i32 %t285, 0
  br i1 %t286, label %bb60, label %ok.287, !prof !99
ok.287:
  store { i64, ptr } %t284, ptr %l132
  br label %bb59
bb59:
  %t288 = load { i64, ptr }, ptr %l132, !tbaa !27
  store { i64, ptr } %t288, ptr %l125, !tbaa !27
  br label %bb62
bb60:
  %t289 = load i32, ptr %l133, !tbaa !23
  %t290 = ashr i32 %t289, 16
  %t292 = icmp eq i32 %t290, 1
  store i1 %t292, ptr %l135, !tbaa !21
  br label %bb61
bb61:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d200, i32 0, i32 1) }, ptr %l136, !tbaa !27
  %t293 = load { i64, ptr }, ptr %l136, !tbaa !27
  store { i64, ptr } %t293, ptr %l125, !tbaa !27
  br label %bb62
bb62:
  %t295 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t295, 0
  store i64 %t296, ptr %l138, !tbaa !24
  %t297 = load i64, ptr %l138, !tbaa !24
  %t298 = mul i64 %t297, 1
  %t299 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t298)
  %t300 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t301 = insertvalue { i64, ptr } %t300, ptr %t299, 1
  store { i64, ptr } %t301, ptr %l139, !tbaa !27
  %t302 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !27
  %t304 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !27
  %t306 = load i64, ptr %l138, !tbaa !24
  %t307 = mul i64 %t306, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t303, ptr %t305, i64 %t307, i1 false)
  %t308 = load { i64, ptr }, ptr %l139, !tbaa !27
  store ptr %l2, ptr %l140, !tbaa !29
  %t309 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t309, ptr %l141, !tbaa !27
  store { i64, ptr } %t308, ptr %l142, !tbaa !27
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/bindgen:gen", ptr %t311, i32 0, i32 16
  %t314 = load i64, ptr %l17, !tbaa !24
  %t317 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s11, ptr %t313, i64 %t314)
  store %"compiler/bindgen:ctype" %t317, ptr %l146
  br label %bb63
bb63:
  %t318 = getelementptr %"compiler/bindgen:ctype", ptr %l146, i32 0, i32 4
  %t319 = load i64, ptr %t318, !tbaa !24
  %t320 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t321 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  %t322 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t323 = extractvalue { i64, ptr } %t322, 1
  %t324 = extractvalue { i64, ptr } %t322, 0
  %t325 = add i64 %t321, %t324
  %t326 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t327 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t328 = add i64 %t325, %t327
  %t329 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 1
  %t331 = extractvalue { i64, ptr } %t329, 0
  %t332 = add i64 %t328, %t331
  %t333 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t334 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
  %t335 = add i64 %t332, %t334
  %t337 = call i64 @__olang_fmt_i64(ptr null, i64 %t319)
  %t338 = add i64 %t335, %t337
  %t339 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t340 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
  %t341 = add i64 %t338, %t340
  %t342 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t341)
  call void @olang_textcopy(ptr %t342, ptr %t320, i64 %t321)
  %t343 = getelementptr i8, ptr %t342, i64 %t321
  call void @olang_textcopy(ptr %t343, ptr %t323, i64 %t324)
  %t344 = getelementptr i8, ptr %t343, i64 %t324
  call void @olang_textcopy(ptr %t344, ptr %t326, i64 %t327)
  %t345 = getelementptr i8, ptr %t344, i64 %t327
  call void @olang_textcopy(ptr %t345, ptr %t330, i64 %t331)
  %t346 = getelementptr i8, ptr %t345, i64 %t331
  call void @olang_textcopy(ptr %t346, ptr %t333, i64 %t334)
  %t347 = getelementptr i8, ptr %t346, i64 %t334
  %t348 = call i64 @__olang_fmt_i64(ptr %t347, i64 %t319)
  %t349 = getelementptr i8, ptr %t347, i64 %t337
  call void @olang_textcopy(ptr %t349, ptr %t339, i64 %t340)
  %t350 = insertvalue { i64, ptr } undef, i64 %t341, 0
  %t351 = insertvalue { i64, ptr } %t350, ptr %t342, 1
  %t353 = extractvalue { i64, ptr } %t351, 0
  %t354 = extractvalue { i64, ptr } %t351, 1
  %t355 = mul i64 %t353, 1
  %t356 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t355)
  call void @llvm.memcpy.p0.p0.i64(ptr %t356, ptr %t354, i64 %t355, i1 false)
  %t357 = insertvalue { i64, ptr } undef, i64 %t353, 0
  %t358 = insertvalue { i64, ptr } %t357, ptr %t356, 1
  %t359 = load ptr, ptr %l140, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %t359, { i64, ptr } %t358)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s11)
  br label %bb70
bb65:
  %t361 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t361, ptr %l150, !tbaa !27
  br label %bb68
bb66:
  %t362 = load i32, ptr %l154, !tbaa !23
  %t363 = ashr i32 %t362, 16
  %t365 = icmp eq i32 %t363, 1
  store i1 %t365, ptr %l156, !tbaa !21
  br label %bb67
bb67:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d205, i32 0, i32 1) }, ptr %l157, !tbaa !27
  %t366 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t366, ptr %l150, !tbaa !27
  br label %bb68
bb68:
  %t368 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t369 = extractvalue { i64, ptr } %t368, 0
  store i64 %t369, ptr %l159, !tbaa !24
  %t370 = load i64, ptr %l159, !tbaa !24
  %t371 = mul i64 %t370, 1
  %t372 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t371)
  %t373 = insertvalue { i64, ptr } undef, i64 %t370, 0
  %t374 = insertvalue { i64, ptr } %t373, ptr %t372, 1
  store { i64, ptr } %t374, ptr %l160, !tbaa !27
  %t375 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t376 = load ptr, ptr %t375, !tbaa !27
  %t377 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = load i64, ptr %l159, !tbaa !24
  %t380 = mul i64 %t379, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t376, ptr %t378, i64 %t380, i1 false)
  %t381 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t382 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t384 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t385 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  %t387 = extractvalue { i64, ptr } %t382, 1
  %t388 = extractvalue { i64, ptr } %t382, 0
  %t389 = add i64 %t385, %t388
  %t390 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t391 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  %t392 = add i64 %t389, %t391
  %t394 = extractvalue { i64, ptr } %t381, 1
  %t395 = extractvalue { i64, ptr } %t381, 0
  %t396 = add i64 %t392, %t395
  %t397 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  %t399 = add i64 %t396, %t398
  %t400 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t399)
  call void @olang_textcopy(ptr %t400, ptr %t384, i64 %t385)
  %t401 = getelementptr i8, ptr %t400, i64 %t385
  call void @olang_textcopy(ptr %t401, ptr %t387, i64 %t388)
  %t402 = getelementptr i8, ptr %t401, i64 %t388
  call void @olang_textcopy(ptr %t402, ptr %t390, i64 %t391)
  %t403 = getelementptr i8, ptr %t402, i64 %t391
  call void @olang_textcopy(ptr %t403, ptr %t394, i64 %t395)
  %t404 = getelementptr i8, ptr %t403, i64 %t395
  call void @olang_textcopy(ptr %t404, ptr %t397, i64 %t398)
  %t405 = insertvalue { i64, ptr } undef, i64 %t399, 0
  %t406 = insertvalue { i64, ptr } %t405, ptr %t400, 1
  %t408 = extractvalue { i64, ptr } %t406, 0
  %t409 = extractvalue { i64, ptr } %t406, 1
  %t410 = mul i64 %t408, 1
  %t411 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t410)
  call void @llvm.memcpy.p0.p0.i64(ptr %t411, ptr %t409, i64 %t410, i1 false)
  %t412 = insertvalue { i64, ptr } undef, i64 %t408, 0
  %t413 = insertvalue { i64, ptr } %t412, ptr %t411, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s13, ptr %l2, { i64, ptr } %t413)
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s13)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s10)
  br label %bb71
bb71:
  %t416 = load i64, ptr %l14, !tbaa !24
  %t418 = add i64 %t416, 1
  store i64 %t418, ptr %l14, !tbaa !24
  br label %bb47
bb72:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d209, i32 0, i32 1) })
  br label %bb73
bb73:
  %t422 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t422, ptr %l170
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s0)
  %t423 = load { i64, ptr }, ptr %l170, !tbaa !27
  store { i64, ptr } %t423, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrack(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i1
  %l23 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l49 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l56 = alloca i1
  %l58 = alloca { i64, ptr }
  %l61 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l83 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t2 = load ptr, ptr %l16, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l16, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l17, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l17, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { ptr }, ptr %t12, i32 0, i32 0
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb29
bb5:
  store i64 0, ptr %l4, !tbaa !24
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = call i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v1, ptr %t16)
  store i64 %t18, ptr %l23
  br label %bb6
bb6:
  %t19 = load i64, ptr %l23, !tbaa !24
  store i64 %t19, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load i64, ptr %l6, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb12
bb9:
  %t30 = load i64, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l30, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb11
bb11:
  %t46 = load i64, ptr %l30, !tbaa !24
  store i64 %t46, ptr %l27, !tbaa !24
  br label %bb12
bb12:
  %t47 = load i64, ptr %l27, !tbaa !24
  store i64 %t47, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = load i64, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb15:
  br label %bb16
bb16:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l9, !tbaa !24
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t68 = getelementptr %"std/json:Object", ptr %t66, i32 0, i32 1
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l49, !tbaa !27
  %t70 = load i64, ptr %l9, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr ptr, ptr %t73, i64 %t70
  %t75 = load ptr, ptr %t74, !tbaa !39
  store ptr %t75, ptr %l10, !tbaa !29
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t79 = getelementptr %"std/json:Object", ptr %t77, i32 0, i32 0
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  store { i64, ptr } %t80, ptr %l53, !tbaa !27
  %t81 = load i64, ptr %l9, !tbaa !24
  %t83 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %t84, i64 %t81
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !37
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s3, { i64, ptr } %t86, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d210, i32 0, i32 1) })
  store i1 %t88, ptr %l56
  br label %bb17
bb17:
  %t89 = load i1, ptr %l56, !tbaa !21
  br i1 %t89, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb19:
  br label %bb20
bb20:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t92 = getelementptr %"std/json:Object", ptr %t90, i32 0, i32 0
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l58, !tbaa !27
  %t94 = load i64, ptr %l9, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %t97, i64 %t94
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !37
  %t101 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s3, { i64, ptr } %t99, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d211, i32 0, i32 1) })
  store i1 %t101, ptr %l61
  br label %bb21
bb21:
  %t102 = load i1, ptr %l61, !tbaa !21
  br i1 %t102, label %bb22, label %bb23
bb22:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l10, !tbaa !29
  %t105 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrackFile(ptr %v0, ptr %v1, ptr %v2, ptr %t103, ptr %t104, { i64, ptr } %t105)
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb25:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l10, !tbaa !29
  %t111 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrack(ptr %v0, ptr %v1, ptr %v2, ptr %t109, ptr %t110, { i64, ptr } %t111)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb27:
  %t115 = load i64, ptr %l8, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l8, !tbaa !24
  br label %bb13
bb28:
  br label %bb47
bb29:
  %t119 = load ptr, ptr %l1, !tbaa !29
  store ptr %t119, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t120 = load ptr, ptr %l70, !tbaa !29
  %t121 = icmp ne ptr %t120, null
  br i1 %t121, label %bb30, label %bb31
bb30:
  %t123 = load ptr, ptr %l70, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 8}
  %t126 = icmp eq i64 %t124, 6
  store i1 %t126, ptr %l71, !tbaa !21
  br label %bb31
bb31:
  %t127 = load i1, ptr %l71, !tbaa !21
  br i1 %t127, label %bb32, label %bb33
bb32:
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr { i64, [2 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { { i64, ptr } }, ptr %t130, i32 0, i32 0
  %t132 = load { i64, ptr }, ptr %t131
  store { i64, ptr } %t132, ptr %l11, !tbaa !27
  br label %bb34
bb33:
  br label %bb42
bb34:
  %t134 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t134, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t136 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t136, 0
  store i64 %t138, ptr %l14, !tbaa !24
  br label %bb35
bb35:
  %t140 = load i64, ptr %l13, !tbaa !24
  %t141 = load i64, ptr %l14, !tbaa !24
  %t144 = icmp slt i64 %t140, %t141
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb36, label %bb37
bb36:
  br label %bb41
bb37:
  br label %bb38
bb38:
  %t148 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t148, ptr %l83, !tbaa !27
  %t149 = load i64, ptr %l13, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr ptr, ptr %t152, i64 %t149
  %t154 = load ptr, ptr %t153, !tbaa !39
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrack(ptr %v0, ptr %v1, ptr %v2, ptr %t156, ptr %t154, { i64, ptr } %t158)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t162 = load i64, ptr %l13, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l13, !tbaa !24
  br label %bb35
bb41:
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_c54e19abcb0a74ad_a74456fc2d527de1)
  unreachable
bb47:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrackFile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca ptr
  %l14 = alloca i1
  %l15 = alloca i64
  %l18 = alloca i1
  %l19 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l10, !tbaa !29
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/bindgen:gen", ptr %t18, i32 0, i32 0
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %v0, { i64, ptr } %t17, { i64, ptr } %t21)
  store i1 %t24, ptr %l14
  br label %bb6
bb6:
  %t25 = load i1, ptr %l14, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb7:
  store i64 1, ptr %l15, !tbaa !24
  br label %bb13
bb8:
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t30 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %v2, { i64, ptr } %t26, { i64, ptr } %a2)
  store i1 %t30, ptr %l18
  br label %bb9
bb9:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  store i64 2, ptr %l19, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb12
bb12:
  %t32 = load i64, ptr %l19, !tbaa !24
  store i64 %t32, ptr %l15, !tbaa !24
  br label %bb13
bb13:
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = load ptr, ptr %l10, !tbaa !29
  %t35 = getelementptr %"compiler/bindgen:gen", ptr %t34, i32 0, i32 26
  store i64 %t33, ptr %t35, !tbaa !24
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_3dee357bb9e78e13_5fc101397bdf658f)
  unreachable
bb19:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etypeName(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l29 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l34 = alloca i1
  %l35 = alloca i1
  %l37 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %l43 = alloca i1
  %l48 = alloca i1
  %l50 = alloca i1
  %l52 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i64
  %l58 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l63 = alloca i1
  %l64 = alloca i1
  %l66 = alloca i1
  %l67 = alloca i1
  %l69 = alloca i1
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca { i64, ptr }
  %l75 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca i1
  %l86 = alloca i1
  %l87 = alloca i1
  %l89 = alloca i1
  %l90 = alloca i1
  %l93 = alloca i1
  %l96 = alloca i1
  %l100 = alloca i1
  %l102 = alloca i1
  %l103 = alloca i1
  %l106 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l108 = alloca i64
  %l109 = alloca { i64, ptr }
  %l111 = alloca ptr
  %l115 = alloca i1
  %l118 = alloca i64
  %l120 = alloca i1
  %l123 = alloca i1
  %l125 = alloca i1
  %l129 = alloca ptr
  %l130 = alloca i64
  %l137 = alloca i64
  %l139 = alloca i1
  %l140 = alloca i1
  %l142 = alloca i1
  %l143 = alloca ptr
  %l144 = alloca i64
  %l149 = alloca i64
  %l150 = alloca ptr
  %l151 = alloca i32
  %l152 = alloca i64
  %l158 = alloca i64
  %l160 = alloca i1
  %l162 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l167 = alloca i32
  %l169 = alloca i1
  %l170 = alloca ptr
  %l171 = alloca i64
  %l176 = alloca i64
  %l181 = alloca i64
  %l186 = alloca i64
  %l192 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d212, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t1, ptr %l5, !tbaa !27
  store i1 false, ptr %l6, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d213, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t3, ptr %l7, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d214, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t5, ptr %l8, !tbaa !27
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/bindgen:ctp", ptr %t7, i32 0, i32 1
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/bindgen:ctp", ptr %t11, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t19 = icmp slt i64 %t10, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s1)
  br label %bb100
bb3:
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s1, ptr %t23, i64 0)
  store { i64, ptr } %t25, ptr %l27
  br label %bb5
bb5:
  %t26 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t26, ptr %l9, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t27, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d215, i32 0, i32 1) })
  store i1 %t29, ptr %l29
  br label %bb6
bb6:
  %t30 = load i1, ptr %l29, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb98
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t31 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s3, { i64, ptr } %t31, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d216, i32 0, i32 1) })
  store i1 %t33, ptr %l31
  br label %bb9
bb9:
  %t34 = load i1, ptr %l31, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb13
bb11:
  %t35 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t37 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s3, { i64, ptr } %t35, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d217, i32 0, i32 1) })
  store i1 %t37, ptr %l34
  br label %bb12
bb12:
  %t38 = load i1, ptr %l34, !tbaa !21
  store i1 %t38, ptr %l32, !tbaa !21
  br label %bb13
bb13:
  %t39 = load i1, ptr %l32, !tbaa !21
  br i1 %t39, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb17
bb15:
  %t40 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t42 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s3, { i64, ptr } %t40, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d218, i32 0, i32 1) })
  store i1 %t42, ptr %l37
  br label %bb16
bb16:
  %t43 = load i1, ptr %l37, !tbaa !21
  store i1 %t43, ptr %l35, !tbaa !21
  br label %bb17
bb17:
  %t44 = load i1, ptr %l35, !tbaa !21
  br i1 %t44, label %bb18, label %bb19
bb18:
  br label %bb97
bb19:
  store %olang.scope zeroinitializer, ptr %s5
  %t45 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s5, { i64, ptr } %t45, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d219, i32 0, i32 1) })
  store i1 %t47, ptr %l39
  br label %bb20
bb20:
  %t48 = load i1, ptr %l39, !tbaa !21
  br i1 %t48, label %bb21, label %bb22
bb21:
  store i64 1, ptr %l3, !tbaa !24
  br label %bb96
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t49 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s7, { i64, ptr } %t49, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d220, i32 0, i32 1) })
  store i1 %t51, ptr %l41
  br label %bb23
bb23:
  %t52 = load i1, ptr %l41, !tbaa !21
  br i1 %t52, label %bb24, label %bb25
bb24:
  store i64 2, ptr %l3, !tbaa !24
  br label %bb95
bb25:
  store %olang.scope zeroinitializer, ptr %s9
  %t53 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s9, { i64, ptr } %t53, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d221, i32 0, i32 1) })
  store i1 %t55, ptr %l43
  br label %bb26
bb26:
  %t56 = load i1, ptr %l43, !tbaa !21
  br i1 %t56, label %bb27, label %bb28
bb27:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l4, !tbaa !24
  br label %bb94
bb28:
  store %olang.scope zeroinitializer, ptr %s11
  %t61 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t65 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s11, ptr %s11, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x { i64, ptr }] }>, ptr @.d222, i32 0, i32 1) }, { i64, ptr } %t61)
  store i1 %t65, ptr %l48
  br label %bb29
bb29:
  %t66 = load i1, ptr %l48, !tbaa !21
  br i1 %t66, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s12
  %t67 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s12, { i64, ptr } %t67, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d223, i32 0, i32 1) })
  store i1 %t69, ptr %l50
  br label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s15
  %t70 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s15, { i64, ptr } %t70, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d224, i32 0, i32 1) })
  store i1 %t72, ptr %l63
  br label %bb46
bb32:
  %t73 = load i1, ptr %l50, !tbaa !21
  %t74 = xor i1 %t73, true
  br i1 %t74, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb36
bb34:
  %t76 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t78 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s12, { i64, ptr } %t76, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d225, i32 0, i32 1) })
  store i1 %t78, ptr %l54
  br label %bb35
bb35:
  %t79 = load i1, ptr %l54, !tbaa !21
  store i1 %t79, ptr %l52, !tbaa !21
  br label %bb36
bb36:
  %t80 = load i1, ptr %l52, !tbaa !21
  br i1 %t80, label %bb37, label %bb38
bb37:
  %t81 = ptrtoint ptr %s0 to i64
  store i64 %t81, ptr %l55, !tbaa !24
  %t82 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2etypeName_2elocal_2e5
  br i1 %t82, label %bb39, label %bb40
bb38:
  br label %bb45
bb39:
  %t84 = call ptr @__olang_region_make(ptr %s0)
  %t85 = ptrtoint ptr %t84 to i64
  store i64 %t85, ptr %l55, !tbaa !24
  br label %bb40
bb40:
  %t86 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 1
  %t89 = extractvalue { i64, ptr } %t86, 0
  %t90 = load i64, ptr %l55
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t89)
  call void @olang_textcopy(ptr %t92, ptr %t88, i64 %t89)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l58, !tbaa !27
  %t95 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2etypeName_2elocal_2e5
  br i1 %t95, label %bb41, label %bb42
bb41:
  %t97 = load i64, ptr %l55
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = load { i64, ptr }, ptr %l58
  %t100 = extractvalue { i64, ptr } %t99, 1
  %t101 = call ptr @__olang_region_or(ptr %t100, ptr null)
  %t102 = icmp ne ptr %t101, null
  %t103 = select i1 %t102, ptr %t101, ptr null
  %t104 = icmp eq ptr %t103, %t98
  call void @__olang_region_settle(ptr %t98, i1 %t104)
  br label %bb42
bb42:
  %t105 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t105, ptr %l60, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t106, ptr %l5, !tbaa !27
  %t107 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2etypeName_2elocal_2e5
  br i1 %t107, label %bb43, label %bb44
bb43:
  %t109 = load { i64, ptr }, ptr %l60
  %t110 = extractvalue { i64, ptr } %t109, 1
  call void @__olang_region_release(ptr %t110)
  store { i64, ptr } zeroinitializer, ptr %l60
  br label %bb44
bb44:
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s12)
  br label %bb93
bb46:
  %t111 = load i1, ptr %l63, !tbaa !21
  br i1 %t111, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb50
bb48:
  %t112 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t114 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s15, { i64, ptr } %t112, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d226, i32 0, i32 1) })
  store i1 %t114, ptr %l66
  br label %bb49
bb49:
  %t115 = load i1, ptr %l66, !tbaa !21
  store i1 %t115, ptr %l64, !tbaa !21
  br label %bb50
bb50:
  %t116 = load i1, ptr %l64, !tbaa !21
  br i1 %t116, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb54
bb52:
  %t117 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t119 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s15, { i64, ptr } %t117, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d227, i32 0, i32 1) })
  store i1 %t119, ptr %l69
  br label %bb53
bb53:
  %t120 = load i1, ptr %l69, !tbaa !21
  store i1 %t120, ptr %l67, !tbaa !21
  br label %bb54
bb54:
  %t121 = load i1, ptr %l67, !tbaa !21
  br i1 %t121, label %bb55, label %bb56
bb55:
  %t122 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t122, ptr %l70, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t123, ptr %l71, !tbaa !27
  %t124 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t124, 0
  store i64 %t125, ptr %l72, !tbaa !24
  %t126 = load i64, ptr %l72, !tbaa !24
  %t127 = mul i64 %t126, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t127)
  %t129 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  store { i64, ptr } %t130, ptr %l73, !tbaa !27
  %t131 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = load i64, ptr %l72, !tbaa !24
  %t136 = mul i64 %t135, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t132, ptr %t134, i64 %t136, i1 false)
  %t137 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t137, ptr %l7, !tbaa !27
  %t138 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2etypeName_2elocal_2e7
  br i1 %t138, label %bb57, label %bb58
bb56:
  store %olang.scope zeroinitializer, ptr %s17
  %t140 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t142 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s17, { i64, ptr } %t140, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d228, i32 0, i32 1) })
  store i1 %t142, ptr %l83
  br label %bb62
bb57:
  %t143 = load { i64, ptr }, ptr %l71
  %t144 = extractvalue { i64, ptr } %t143, 1
  call void @__olang_region_release(ptr %t144)
  store { i64, ptr } zeroinitializer, ptr %l71
  br label %bb58
bb58:
  %t145 = load ptr, ptr %l1, !tbaa !29
  store ptr %t145, ptr %l75, !tbaa !29
  %t146 = load ptr, ptr %l75, !tbaa !29
  %t147 = getelementptr %"compiler/bindgen:ctp", ptr %t146, i32 0, i32 1
  %t148 = load i64, ptr %t147, !tbaa !24
  %t150 = add i64 %t148, 1
  %t152 = load ptr, ptr %l75, !tbaa !29
  %t153 = getelementptr %"compiler/bindgen:ctp", ptr %t152, i32 0, i32 1
  store i64 %t150, ptr %t153, !tbaa !24
  %t154 = load ptr, ptr %l1, !tbaa !29
  %t156 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s0, ptr %t154, i64 0)
  store { i64, ptr } %t156, ptr %l79
  br label %bb59
bb59:
  %t157 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t157, ptr %l80, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t158, ptr %l8, !tbaa !27
  %t159 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2etypeName_2elocal_2e8
  br i1 %t159, label %bb60, label %bb61
bb60:
  %t161 = load { i64, ptr }, ptr %l80
  %t162 = extractvalue { i64, ptr } %t161, 1
  call void @__olang_region_release(ptr %t162)
  store { i64, ptr } zeroinitializer, ptr %l80
  br label %bb61
bb61:
  br label %bb92
bb62:
  %t163 = load i1, ptr %l83, !tbaa !21
  br i1 %t163, label %bb63, label %bb64
bb63:
  %t164 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t166 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s17, { i64, ptr } %t164, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d229, i32 0, i32 1) })
  store i1 %t166, ptr %l86
  br label %bb65
bb64:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb66
bb65:
  %t167 = load i1, ptr %l86, !tbaa !21
  store i1 %t167, ptr %l84, !tbaa !21
  br label %bb66
bb66:
  %t168 = load i1, ptr %l84, !tbaa !21
  br i1 %t168, label %bb67, label %bb68
bb67:
  %t169 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t171 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s17, { i64, ptr } %t169, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d230, i32 0, i32 1) })
  store i1 %t171, ptr %l89
  br label %bb69
bb68:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb70
bb69:
  %t172 = load i1, ptr %l89, !tbaa !21
  store i1 %t172, ptr %l87, !tbaa !21
  br label %bb70
bb70:
  %t173 = load i1, ptr %l87, !tbaa !21
  br i1 %t173, label %bb71, label %bb72
bb71:
  %t174 = load i64, ptr %l3, !tbaa !24
  %t176 = icmp eq i64 %t174, 0
  store i1 %t176, ptr %l90, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb73
bb73:
  %t178 = load i1, ptr %l90, !tbaa !21
  br i1 %t178, label %bb74, label %bb75
bb74:
  %t179 = load i64, ptr %l4, !tbaa !24
  %t181 = icmp eq i64 %t179, 0
  store i1 %t181, ptr %l93, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb76
bb76:
  %t183 = load i1, ptr %l93, !tbaa !21
  br i1 %t183, label %bb77, label %bb78
bb77:
  %t184 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t184, 0
  %t188 = icmp sgt i64 %t186, 0
  store i1 %t188, ptr %l96, !tbaa !21
  br label %bb79
bb78:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb79
bb79:
  %t190 = load i1, ptr %l96, !tbaa !21
  br i1 %t190, label %bb80, label %bb81
bb80:
  %t191 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = getelementptr i8, ptr %t192, i64 0
  %t194 = load i8, ptr %t193, !tbaa !32
  %t196 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t194)
  store i1 %t196, ptr %l102
  br label %bb82
bb81:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb86
bb82:
  %t197 = load i1, ptr %l102, !tbaa !21
  br i1 %t197, label %bb83, label %bb84
bb83:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb85
bb84:
  %t198 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = getelementptr i8, ptr %t199, i64 0
  %t201 = load i8, ptr %t200, !tbaa !32
  %t203 = icmp eq i8 %t201, 95
  store i1 %t203, ptr %l103, !tbaa !21
  br label %bb85
bb85:
  %t205 = load i1, ptr %l103, !tbaa !21
  store i1 %t205, ptr %l100, !tbaa !21
  br label %bb86
bb86:
  %t206 = load i1, ptr %l100, !tbaa !21
  br i1 %t206, label %bb87, label %bb88
bb87:
  %t207 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t207, ptr %l106, !tbaa !27
  %t208 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t208, ptr %l107, !tbaa !27
  %t209 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 0
  store i64 %t210, ptr %l108, !tbaa !24
  %t211 = load i64, ptr %l108, !tbaa !24
  %t212 = mul i64 %t211, 1
  %t213 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t212)
  %t214 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t213, 1
  store { i64, ptr } %t215, ptr %l109, !tbaa !27
  %t216 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = load i64, ptr %l108, !tbaa !24
  %t221 = mul i64 %t220, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t217, ptr %t219, i64 %t221, i1 false)
  %t222 = load { i64, ptr }, ptr %l109, !tbaa !27
  store { i64, ptr } %t222, ptr %l8, !tbaa !27
  %t223 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2etypeName_2elocal_2e8
  br i1 %t223, label %bb89, label %bb90
bb88:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s1)
  br label %bb100
bb89:
  %t225 = load { i64, ptr }, ptr %l107
  %t226 = extractvalue { i64, ptr } %t225, 1
  call void @__olang_region_release(ptr %t226)
  store { i64, ptr } zeroinitializer, ptr %l107
  br label %bb90
bb90:
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s17)
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s15)
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s11)
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s9)
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s7)
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s5)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s3)
  br label %bb98
bb98:
  %t227 = load ptr, ptr %l1, !tbaa !29
  store ptr %t227, ptr %l111, !tbaa !29
  %t228 = load ptr, ptr %l111, !tbaa !29
  %t229 = getelementptr %"compiler/bindgen:ctp", ptr %t228, i32 0, i32 1
  %t230 = load i64, ptr %t229, !tbaa !24
  %t232 = add i64 %t230, 1
  %t234 = load ptr, ptr %l111, !tbaa !29
  %t235 = getelementptr %"compiler/bindgen:ctp", ptr %t234, i32 0, i32 1
  store i64 %t232, ptr %t235, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb99
bb99:
  br label %bb1
bb100:
  store i64 0, ptr %l11, !tbaa !24
  %t236 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t238 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t236, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d231, i32 0, i32 1) })
  store i1 %t238, ptr %l115
  br label %bb101
bb101:
  %t239 = load i1, ptr %l115, !tbaa !21
  br i1 %t239, label %bb102, label %bb103
bb102:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t243 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t240, i32 1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d232, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t243, ptr %l118
  br label %bb104
bb103:
  store %olang.scope zeroinitializer, ptr %s21
  %t244 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s21, { i64, ptr } %t244, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d233, i32 0, i32 1) })
  store i1 %t246, ptr %l120
  br label %bb105
bb104:
  %t247 = load i64, ptr %l118, !tbaa !24
  store i64 %t247, ptr %l11, !tbaa !24
  br label %bb150
bb105:
  %t248 = load i1, ptr %l120, !tbaa !21
  %t249 = xor i1 %t248, true
  br i1 %t249, label %bb106, label %bb107
bb106:
  store %olang.scope zeroinitializer, ptr %s22
  %t251 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t253 = call i1 @compiler_2fbindgen_2eusable(ptr %s0, { i64, ptr } %t251)
  store i1 %t253, ptr %l123
  br label %bb108
bb107:
  store %olang.scope zeroinitializer, ptr %s28
  %t254 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t256 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s28, { i64, ptr } %t254, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d234, i32 0, i32 1) })
  store i1 %t256, ptr %l160
  br label %bb132
bb108:
  %t257 = load i1, ptr %l123, !tbaa !21
  %t258 = xor i1 %t257, true
  br i1 %t258, label %bb109, label %bb110
bb109:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t262 = getelementptr %"compiler/bindgen:gen", ptr %t260, i32 0, i32 1
  %t263 = load i1, ptr %t262, !tbaa !21
  %t265 = xor i1 %t263, true
  store i1 %t265, ptr %l125, !tbaa !21
  br label %bb111
bb110:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb111
bb111:
  %t267 = load i1, ptr %l125, !tbaa !21
  br i1 %t267, label %bb112, label %bb113
bb112:
  %t268 = load ptr, ptr %l0, !tbaa !29
  store ptr %t268, ptr %l129, !tbaa !29
  %t269 = ptrtoint ptr %v0 to i64
  store i64 %t269, ptr %l130, !tbaa !24
  %t270 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3actype_2e1
  br i1 %t270, label %bb114, label %bb115
bb113:
  br label %bb117
bb114:
  %t272 = call ptr @__olang_region_make(ptr %v0)
  %t273 = ptrtoint ptr %t272 to i64
  store i64 %t273, ptr %l130, !tbaa !24
  br label %bb115
bb115:
  %t274 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t275 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t276 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t277 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t278 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t280 = extractvalue { i64, ptr } %t274, 1
  %t281 = extractvalue { i64, ptr } %t274, 0
  %t282 = add i64 %t278, %t281
  %t283 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t284 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  %t285 = add i64 %t282, %t284
  %t287 = extractvalue { i64, ptr } %t275, 1
  %t288 = extractvalue { i64, ptr } %t275, 0
  %t289 = add i64 %t285, %t288
  %t290 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t291 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
  %t292 = add i64 %t289, %t291
  %t294 = extractvalue { i64, ptr } %t276, 1
  %t295 = extractvalue { i64, ptr } %t276, 0
  %t296 = add i64 %t292, %t295
  %t297 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d238, i32 0, i32 1) }, 1
  %t298 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d238, i32 0, i32 1) }, 0
  %t299 = add i64 %t296, %t298
  %t300 = load i64, ptr %l130
  %t301 = inttoptr i64 %t300 to ptr
  %t302 = call ptr @__olang_scope_alloc(ptr %t301, i64 %t299)
  call void @olang_textcopy(ptr %t302, ptr %t277, i64 %t278)
  %t303 = getelementptr i8, ptr %t302, i64 %t278
  call void @olang_textcopy(ptr %t303, ptr %t280, i64 %t281)
  %t304 = getelementptr i8, ptr %t303, i64 %t281
  call void @olang_textcopy(ptr %t304, ptr %t283, i64 %t284)
  %t305 = getelementptr i8, ptr %t304, i64 %t284
  call void @olang_textcopy(ptr %t305, ptr %t287, i64 %t288)
  %t306 = getelementptr i8, ptr %t305, i64 %t288
  call void @olang_textcopy(ptr %t306, ptr %t290, i64 %t291)
  %t307 = getelementptr i8, ptr %t306, i64 %t291
  call void @olang_textcopy(ptr %t307, ptr %t294, i64 %t295)
  %t308 = getelementptr i8, ptr %t307, i64 %t295
  call void @olang_textcopy(ptr %t308, ptr %t297, i64 %t298)
  %t309 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t310 = insertvalue { i64, ptr } %t309, ptr %t302, 1
  %t312 = load i64, ptr %l130
  %t313 = inttoptr i64 %t312 to ptr
  %t314 = extractvalue { i64, ptr } %t310, 0
  %t315 = extractvalue { i64, ptr } %t310, 1
  %t316 = mul i64 %t314, 1
  %t317 = call ptr @__olang_scope_alloc(ptr %t313, i64 %t316)
  call void @llvm.memcpy.p0.p0.i64(ptr %t317, ptr %t315, i64 %t316, i1 false)
  %t318 = insertvalue { i64, ptr } undef, i64 %t314, 0
  %t319 = insertvalue { i64, ptr } %t318, ptr %t317, 1
  %t320 = load ptr, ptr %l129, !tbaa !29
  %t322 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t320, { i64, ptr } %t319)
  store i64 %t322, ptr %l137
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s0)
  %t323 = load i64, ptr %l137, !tbaa !24
  store i64 %t323, ptr %rv
  br label %ret
bb117:
  %t324 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t326 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s22, { i64, ptr } %t324, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d239, i32 0, i32 1) })
  store i1 %t326, ptr %l139
  br label %bb118
bb118:
  %t327 = load i1, ptr %l139, !tbaa !21
  br i1 %t327, label %bb119, label %bb120
bb119:
  store i1 true, ptr %l140, !tbaa !21
  br label %bb122
bb120:
  %t328 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t330 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s22, { i64, ptr } %t328, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d240, i32 0, i32 1) })
  store i1 %t330, ptr %l142
  br label %bb121
bb121:
  %t331 = load i1, ptr %l142, !tbaa !21
  store i1 %t331, ptr %l140, !tbaa !21
  br label %bb122
bb122:
  %t332 = load i1, ptr %l140, !tbaa !21
  br i1 %t332, label %bb123, label %bb124
bb123:
  %t333 = load ptr, ptr %l0, !tbaa !29
  store ptr %t333, ptr %l143, !tbaa !29
  %t334 = ptrtoint ptr %v0 to i64
  store i64 %t334, ptr %l144, !tbaa !24
  %t335 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3actype_2e1
  br i1 %t335, label %bb125, label %bb126
bb124:
  br label %bb128
bb125:
  %t337 = call ptr @__olang_region_make(ptr %v0)
  %t338 = ptrtoint ptr %t337 to i64
  store i64 %t338, ptr %l144, !tbaa !24
  br label %bb126
bb126:
  %t339 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t340 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  %t341 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d241, i32 0, i32 1) }, 0
  %t343 = extractvalue { i64, ptr } %t339, 1
  %t344 = extractvalue { i64, ptr } %t339, 0
  %t345 = add i64 %t341, %t344
  %t346 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t347 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
  %t348 = add i64 %t345, %t347
  %t349 = load i64, ptr %l144
  %t350 = inttoptr i64 %t349 to ptr
  %t351 = call ptr @__olang_scope_alloc(ptr %t350, i64 %t348)
  call void @olang_textcopy(ptr %t351, ptr %t340, i64 %t341)
  %t352 = getelementptr i8, ptr %t351, i64 %t341
  call void @olang_textcopy(ptr %t352, ptr %t343, i64 %t344)
  %t353 = getelementptr i8, ptr %t352, i64 %t344
  call void @olang_textcopy(ptr %t353, ptr %t346, i64 %t347)
  %t354 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t355 = insertvalue { i64, ptr } %t354, ptr %t351, 1
  %t357 = load i64, ptr %l144
  %t358 = inttoptr i64 %t357 to ptr
  %t359 = extractvalue { i64, ptr } %t355, 0
  %t360 = extractvalue { i64, ptr } %t355, 1
  %t361 = mul i64 %t359, 1
  %t362 = call ptr @__olang_scope_alloc(ptr %t358, i64 %t361)
  call void @llvm.memcpy.p0.p0.i64(ptr %t362, ptr %t360, i64 %t361, i1 false)
  %t363 = insertvalue { i64, ptr } undef, i64 %t359, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t362, 1
  %t365 = load ptr, ptr %l143, !tbaa !29
  %t367 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t365, { i64, ptr } %t364)
  store i64 %t367, ptr %l149
  br label %bb127
bb127:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s0)
  %t368 = load i64, ptr %l149, !tbaa !24
  store i64 %t368, ptr %rv
  br label %ret
bb128:
  %t369 = load ptr, ptr %l0, !tbaa !29
  store ptr %t369, ptr %l150, !tbaa !29
  store i32 2, ptr %l151
  %t370 = ptrtoint ptr %v0 to i64
  store i64 %t370, ptr %l152, !tbaa !24
  %t371 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3actype_2e1
  br i1 %t371, label %bb129, label %bb130
bb129:
  %t373 = call ptr @__olang_region_make(ptr %v0)
  %t374 = ptrtoint ptr %t373 to i64
  store i64 %t374, ptr %l152, !tbaa !24
  br label %bb130
bb130:
  %t375 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t376 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t378 = extractvalue { i64, ptr } %t375, 1
  %t379 = extractvalue { i64, ptr } %t375, 0
  %t380 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d243, i32 0, i32 1) }, 1
  %t381 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d243, i32 0, i32 1) }, 0
  %t382 = add i64 %t379, %t381
  %t384 = extractvalue { i64, ptr } %t376, 1
  %t385 = extractvalue { i64, ptr } %t376, 0
  %t386 = add i64 %t382, %t385
  %t387 = load i64, ptr %l152
  %t388 = inttoptr i64 %t387 to ptr
  %t389 = call ptr @__olang_scope_alloc(ptr %t388, i64 %t386)
  call void @olang_textcopy(ptr %t389, ptr %t378, i64 %t379)
  %t390 = getelementptr i8, ptr %t389, i64 %t379
  call void @olang_textcopy(ptr %t390, ptr %t380, i64 %t381)
  %t391 = getelementptr i8, ptr %t390, i64 %t381
  call void @olang_textcopy(ptr %t391, ptr %t384, i64 %t385)
  %t392 = insertvalue { i64, ptr } undef, i64 %t386, 0
  %t393 = insertvalue { i64, ptr } %t392, ptr %t389, 1
  %t395 = load i64, ptr %l152
  %t396 = inttoptr i64 %t395 to ptr
  %t397 = extractvalue { i64, ptr } %t393, 0
  %t398 = extractvalue { i64, ptr } %t393, 1
  %t399 = mul i64 %t397, 1
  %t400 = call ptr @__olang_scope_alloc(ptr %t396, i64 %t399)
  call void @llvm.memcpy.p0.p0.i64(ptr %t400, ptr %t398, i64 %t399, i1 false)
  %t401 = insertvalue { i64, ptr } undef, i64 %t397, 0
  %t402 = insertvalue { i64, ptr } %t401, ptr %t400, 1
  %t403 = load ptr, ptr %l150, !tbaa !29
  %t404 = load i32, ptr %l151, !range !{i32 0, i32 7}
  %t406 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t403, i32 %t404, { i64, ptr } %t402, i64 -1, i1 false, i64 0)
  store i64 %t406, ptr %l158
  br label %bb131
bb131:
  %t407 = load i64, ptr %l158, !tbaa !24
  store i64 %t407, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s22)
  br label %bb149
bb132:
  %t408 = load i1, ptr %l160, !tbaa !21
  %t409 = xor i1 %t408, true
  br i1 %t409, label %bb133, label %bb134
bb133:
  store %olang.scope zeroinitializer, ptr %s29
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t413 = getelementptr %"compiler/bindgen:gen", ptr %t411, i32 0, i32 4
  %t414 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t417 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %s0, ptr %v0, ptr %t413, { i64, ptr } %t414)
  %t418 = extractvalue { i32, { i64, ptr } } %t417, 1
  %t419 = extractvalue { i32, { i64, ptr } } %t417, 0
  store i32 %t419, ptr %l167
  %t420 = icmp ne i32 %t419, 0
  br i1 %t420, label %bb136, label %ok.421, !prof !99
ok.421:
  store { i64, ptr } %t418, ptr %l166
  br label %bb135
bb134:
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t423 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t424 = load i64, ptr %l3, !tbaa !24
  %t425 = load i64, ptr %l4, !tbaa !24
  %t430 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enumType(ptr %v0, ptr %s0, ptr %t422, { i64, ptr } %t423, i64 %t424, i64 %t425)
  store i64 %t430, ptr %l186
  br label %bb147
bb135:
  %t431 = load { i64, ptr }, ptr %l166, !tbaa !27
  store { i64, ptr } %t431, ptr %l162, !tbaa !27
  br label %bb138
bb136:
  br label %bb137
bb137:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d244, i32 0, i32 1) }, ptr %l162, !tbaa !27
  br label %bb138
bb138:
  %t432 = load { i64, ptr }, ptr %l162, !tbaa !27
  store { i64, ptr } %t432, ptr %l12, !tbaa !27
  %t433 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t435 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s29, { i64, ptr } %t433, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d245, i32 0, i32 1) })
  store i1 %t435, ptr %l169
  br label %bb139
bb139:
  %t436 = load i1, ptr %l169, !tbaa !21
  br i1 %t436, label %bb140, label %bb141
bb140:
  %t437 = load ptr, ptr %l0, !tbaa !29
  store ptr %t437, ptr %l170, !tbaa !29
  %t438 = ptrtoint ptr %v0 to i64
  store i64 %t438, ptr %l171, !tbaa !24
  %t439 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3actype_2e1
  br i1 %t439, label %bb142, label %bb143
bb141:
  br label %bb145
bb142:
  %t441 = call ptr @__olang_region_make(ptr %v0)
  %t442 = ptrtoint ptr %t441 to i64
  store i64 %t442, ptr %l171, !tbaa !24
  br label %bb143
bb143:
  %t443 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t444 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d246, i32 0, i32 1) }, 1
  %t445 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d246, i32 0, i32 1) }, 0
  %t447 = extractvalue { i64, ptr } %t443, 1
  %t448 = extractvalue { i64, ptr } %t443, 0
  %t449 = add i64 %t445, %t448
  %t450 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d247, i32 0, i32 1) }, 1
  %t451 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d247, i32 0, i32 1) }, 0
  %t452 = add i64 %t449, %t451
  %t453 = load i64, ptr %l171
  %t454 = inttoptr i64 %t453 to ptr
  %t455 = call ptr @__olang_scope_alloc(ptr %t454, i64 %t452)
  call void @olang_textcopy(ptr %t455, ptr %t444, i64 %t445)
  %t456 = getelementptr i8, ptr %t455, i64 %t445
  call void @olang_textcopy(ptr %t456, ptr %t447, i64 %t448)
  %t457 = getelementptr i8, ptr %t456, i64 %t448
  call void @olang_textcopy(ptr %t457, ptr %t450, i64 %t451)
  %t458 = insertvalue { i64, ptr } undef, i64 %t452, 0
  %t459 = insertvalue { i64, ptr } %t458, ptr %t455, 1
  %t461 = load i64, ptr %l171
  %t462 = inttoptr i64 %t461 to ptr
  %t463 = extractvalue { i64, ptr } %t459, 0
  %t464 = extractvalue { i64, ptr } %t459, 1
  %t465 = mul i64 %t463, 1
  %t466 = call ptr @__olang_scope_alloc(ptr %t462, i64 %t465)
  call void @llvm.memcpy.p0.p0.i64(ptr %t466, ptr %t464, i64 %t465, i1 false)
  %t467 = insertvalue { i64, ptr } undef, i64 %t463, 0
  %t468 = insertvalue { i64, ptr } %t467, ptr %t466, 1
  %t469 = load ptr, ptr %l170, !tbaa !29
  %t471 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t469, { i64, ptr } %t468)
  store i64 %t471, ptr %l176
  br label %bb144
bb144:
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s28)
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s0)
  %t472 = load i64, ptr %l176, !tbaa !24
  store i64 %t472, ptr %rv
  br label %ret
bb145:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t475 = load i64, ptr %l2, !tbaa !24
  %t477 = add i64 %t475, 1
  %t481 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %v0, ptr %t473, { i64, ptr } %t474, i64 %t477)
  store i64 %t481, ptr %l181
  br label %bb146
bb146:
  %t482 = load i64, ptr %l181, !tbaa !24
  store i64 %t482, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s29)
  br label %bb148
bb147:
  %t483 = load i64, ptr %l186, !tbaa !24
  store i64 %t483, ptr %l11, !tbaa !24
  br label %bb148
bb148:
  call void @__olang_scope_close(ptr %s28)
  br label %bb149
bb149:
  call void @__olang_scope_close(ptr %s21)
  br label %bb150
bb150:
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t485 = load ptr, ptr %l1, !tbaa !29
  %t486 = load i64, ptr %l11, !tbaa !24
  %t487 = load i1, ptr %l6, !tbaa !21
  %t488 = load i64, ptr %l2, !tbaa !24
  %t494 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edeclarator(ptr %v0, ptr %v1, ptr %t484, ptr %t485, i64 %t486, i1 %t487, i64 %t488)
  store i64 %t494, ptr %l192
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s0)
  %t495 = load i64, ptr %l192, !tbaa !24
  store i64 %t495, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2evalueType(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/bindgen:ctype"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca %"compiler/bindgen:ctype"
  %l7 = alloca i64
  %l11 = alloca %"compiler/bindgen:ctype"
  %l16 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l28 = alloca i64
  %l31 = alloca i1
  %l34 = alloca i32
  %l39 = alloca %"compiler/bindgen:record"
  %l41 = alloca %"compiler/bindgen:record"
  %l43 = alloca i1
  %l46 = alloca i1
  %l48 = alloca i32
  %l52 = alloca { i64, ptr }
  %l58 = alloca %"compiler/bindgen:ctype"
  %l61 = alloca i1
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca { i64, ptr }
  %l70 = alloca i64
  %l73 = alloca i1
  %l77 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l86 = alloca ptr
  %l87 = alloca i64
  %l91 = alloca { i64, ptr }
  %l94 = alloca i32
  %l96 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l98 = alloca i64
  %l99 = alloca { i64, ptr }
  %l104 = alloca i32
  %l107 = alloca i32
  %l109 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l111 = alloca i64
  %l112 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t89 = alloca %"compiler/bindgen:record", align 8
  %t92 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 16
  %t7 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/bindgen:ctype" %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load %"compiler/bindgen:ctype", ptr %l11
  store %"compiler/bindgen:ctype" %t8, ptr %l3
  %t9 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 0
  %t10 = load i32, ptr %t9, !range !{i32 0, i32 7}
  store i32 %t10, ptr %l4
  %t12 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t14 = trunc i64 1 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb9
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t18, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d248, i32 0, i32 1) })
  store i1 %t20, ptr %l16
  br label %bb5
bb5:
  %t21 = load i1, ptr %l16, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d249, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t22, ptr %l17, !tbaa !27
  br label %bb8
bb7:
  %t24 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 1
  %t28 = extractvalue { i64, ptr } %t25, 0
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t27, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l17, !tbaa !27
  br label %bb8
bb8:
  %t33 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l22, !tbaa !24
  %t35 = load i64, ptr %l22, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l23, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l22, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t46, ptr %l17, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  %t47 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t48 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t47, 1
  store { i32, { i64, ptr } } %t48, ptr %rv
  br label %ret
bb9:
  %t49 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t51 = trunc i64 2 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb34
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t59 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v0, ptr %t54, { i64, ptr } %t56)
  store i64 %t59, ptr %l28
  br label %bb13
bb13:
  %t60 = load i64, ptr %l28, !tbaa !24
  store i64 %t60, ptr %l5, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eplain(ptr %v0, ptr %t61, i64 %t62)
  store i1 %t65, ptr %l31
  br label %bb14
bb14:
  %t66 = load i1, ptr %l31, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb15, label %bb16
bb15:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t69, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d250, i32 0, i32 1) })
  store i32 %t71, ptr %l34
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb18, label %ok.73, !prof !99
ok.73:
  br label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb19
bb18:
  %t74 = load i32, ptr %l34, !tbaa !23
  %t75 = lshr i32 %t74, 16
  %t76 = and i32 %t74, 65535
  %t77 = icmp eq i32 %t75, 1
  %t78 = select i1 %t77, i32 1, i32 0
  %t79 = icmp eq i32 %t74, 0
  %t80 = shl i32 %t78, 16
  %t81 = or i32 %t80, %t76
  %t82 = select i1 %t79, i32 0, i32 %t81
  call void @__olang_scope_close(ptr %s3)
  %t84 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t82, 0
  store { i32, { i64, ptr } } %t84, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/bindgen:gen", ptr %t85, i32 0, i32 5
  %t88 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t89, ptr %v0, ptr %s3, ptr %t87, i64 %t88)
  call void @llvm.memmove.p0.p0.i64(ptr %l39, ptr %t89, i64 216, i1 false)
  br label %bb21
bb21:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t92, ptr %s3, ptr %l39)
  call void @llvm.memmove.p0.p0.i64(ptr %l41, ptr %t92, i64 216, i1 false)
  br label %bb22
bb22:
  %t94 = getelementptr %"compiler/bindgen:record", ptr %l41, i32 0, i32 15
  %t95 = load i1, ptr %t94, !tbaa !21
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i64, ptr %l5, !tbaa !24
  %t101 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epackedFloat(ptr %v0, ptr %t97, i64 %t98)
  store i1 %t101, ptr %l46
  br label %bb25
bb24:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb26
bb25:
  %t102 = load i1, ptr %l46, !tbaa !21
  store i1 %t102, ptr %l43, !tbaa !21
  br label %bb26
bb26:
  %t103 = load i1, ptr %l43, !tbaa !21
  br i1 %t103, label %bb27, label %bb28
bb27:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t104, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d251, i32 0, i32 1) })
  store i32 %t106, ptr %l48
  %t107 = icmp ne i32 %t106, 0
  br i1 %t107, label %bb30, label %ok.108, !prof !99
ok.108:
  br label %bb29
bb28:
  br label %bb32
bb29:
  br label %bb31
bb30:
  %t109 = load i32, ptr %l48, !tbaa !23
  %t110 = lshr i32 %t109, 16
  %t111 = and i32 %t109, 65535
  %t112 = icmp eq i32 %t110, 1
  %t113 = select i1 %t112, i32 1, i32 0
  %t114 = icmp eq i32 %t109, 0
  %t115 = shl i32 %t113, 16
  %t116 = or i32 %t115, %t111
  %t117 = select i1 %t114, i32 0, i32 %t116
  call void @__olang_scope_close(ptr %s3)
  %t119 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t117, 0
  store { i32, { i64, ptr } } %t119, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i64, ptr %l5, !tbaa !24
  %t124 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %v1, ptr %t120, i64 %t121)
  store { i64, ptr } %t124, ptr %l52
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s3)
  %t125 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t126 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t125, 1
  store { i32, { i64, ptr } } %t126, ptr %rv
  br label %ret
bb34:
  %t127 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t129 = trunc i64 3 to i32
  %t130 = icmp eq i32 %t127, %t129
  br i1 %t130, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb65
bb37:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/bindgen:gen", ptr %t132, i32 0, i32 16
  %t135 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 2
  %t136 = load i64, ptr %t135, !tbaa !24
  %t139 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t134, i64 %t136)
  store %"compiler/bindgen:ctype" %t139, ptr %l58
  br label %bb38
bb38:
  %t140 = load %"compiler/bindgen:ctype", ptr %l58
  store %"compiler/bindgen:ctype" %t140, ptr %l6
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 2
  %t143 = load i64, ptr %t142, !tbaa !24
  %t146 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eisByte(ptr %v0, ptr %t141, i64 %t143)
  store i1 %t146, ptr %l61
  br label %bb39
bb39:
  %t147 = load i1, ptr %l61, !tbaa !21
  br i1 %t147, label %bb40, label %bb41
bb40:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d252, i32 0, i32 1) }, ptr %l62, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t148, ptr %l63, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 0
  store i64 %t150, ptr %l64, !tbaa !24
  %t151 = load i64, ptr %l64, !tbaa !24
  %t152 = mul i64 %t151, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t152)
  %t154 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  store { i64, ptr } %t155, ptr %l65, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = load i64, ptr %l64, !tbaa !24
  %t161 = mul i64 %t160, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t157, ptr %t159, i64 %t161, i1 false)
  %t162 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t162, ptr %l63, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t164 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t163, 1
  store { i32, { i64, ptr } } %t164, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t165 = getelementptr %"compiler/bindgen:ctype", ptr %l6, i32 0, i32 0
  %t166 = load i32, ptr %t165, !range !{i32 0, i32 7}
  %t168 = trunc i64 2 to i32
  %t169 = icmp eq i32 %t166, %t168
  br i1 %t169, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s8
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/bindgen:ctype", ptr %l6, i32 0, i32 1
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  %t176 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v0, ptr %t171, { i64, ptr } %t173)
  store i64 %t176, ptr %l70
  br label %bb45
bb44:
  br label %bb64
bb45:
  %t177 = load i64, ptr %l70, !tbaa !24
  store i64 %t177, ptr %l7, !tbaa !24
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i64, ptr %l7, !tbaa !24
  %t182 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %t178, i64 %t179)
  store i1 %t182, ptr %l73
  br label %bb46
bb46:
  %t183 = load i1, ptr %l73, !tbaa !21
  %t184 = xor i1 %t183, true
  br i1 %t184, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s9
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i64, ptr %l7, !tbaa !24
  %t190 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %s9, ptr %t186, i64 %t187)
  store { i64, ptr } %t190, ptr %l77
  br label %bb49
bb48:
  br label %bb50
bb49:
  %t191 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t194 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d253, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d253, i32 0, i32 1) }, 0
  %t196 = add i64 %t193, %t195
  %t197 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t196)
  call void @olang_textcopy(ptr %t197, ptr %t192, i64 %t193)
  %t198 = getelementptr i8, ptr %t197, i64 %t193
  call void @olang_textcopy(ptr %t198, ptr %t194, i64 %t195)
  %t199 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t197, 1
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  %t202 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t200, 1
  store { i32, { i64, ptr } } %t202, ptr %rv
  br label %ret
bb50:
  br i1 %a2, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s11
  %t205 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 3
  %t206 = load i1, ptr %t205, !tbaa !21
  br i1 %t206, label %bb53, label %bb54
bb52:
  br label %bb57
bb53:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d254, i32 0, i32 1) }, ptr %l81, !tbaa !27
  br label %bb55
bb54:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d255, i32 0, i32 1) }, ptr %l81, !tbaa !27
  br label %bb55
bb55:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i64, ptr %l7, !tbaa !24
  %t212 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %s11, ptr %t208, i64 %t209)
  store { i64, ptr } %t212, ptr %l84
  br label %bb56
bb56:
  %t213 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 1
  %t215 = extractvalue { i64, ptr } %t213, 0
  %t216 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = extractvalue { i64, ptr } %t216, 0
  %t219 = add i64 %t215, %t218
  %t220 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d256, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d256, i32 0, i32 1) }, 0
  %t222 = add i64 %t219, %t221
  %t223 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t222)
  call void @olang_textcopy(ptr %t223, ptr %t214, i64 %t215)
  %t224 = getelementptr i8, ptr %t223, i64 %t215
  call void @olang_textcopy(ptr %t224, ptr %t217, i64 %t218)
  %t225 = getelementptr i8, ptr %t224, i64 %t218
  call void @olang_textcopy(ptr %t225, ptr %t220, i64 %t221)
  %t226 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t223, 1
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s8)
  %t229 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t227, 1
  store { i32, { i64, ptr } } %t229, ptr %rv
  br label %ret
bb57:
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l86, !tbaa !29
  %t231 = ptrtoint ptr %v0 to i64
  store i64 %t231, ptr %l87, !tbaa !24
  %t232 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t232, label %bb58, label %bb59
bb58:
  %t234 = call ptr @__olang_region_make(ptr %v0)
  %t235 = ptrtoint ptr %t234 to i64
  store i64 %t235, ptr %l87, !tbaa !24
  br label %bb59
bb59:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load i64, ptr %l7, !tbaa !24
  %t240 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %s8, ptr %t236, i64 %t237)
  store { i64, ptr } %t240, ptr %l91
  br label %bb60
bb60:
  %t241 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
  %t243 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t243, 1
  %t245 = extractvalue { i64, ptr } %t243, 0
  %t246 = add i64 %t242, %t245
  %t247 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d258, i32 0, i32 1) }, 1
  %t248 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d258, i32 0, i32 1) }, 0
  %t249 = add i64 %t246, %t248
  %t250 = load i64, ptr %l87
  %t251 = inttoptr i64 %t250 to ptr
  %t252 = call ptr @__olang_scope_alloc(ptr %t251, i64 %t249)
  call void @olang_textcopy(ptr %t252, ptr %t241, i64 %t242)
  %t253 = getelementptr i8, ptr %t252, i64 %t242
  call void @olang_textcopy(ptr %t253, ptr %t244, i64 %t245)
  %t254 = getelementptr i8, ptr %t253, i64 %t245
  call void @olang_textcopy(ptr %t254, ptr %t247, i64 %t248)
  %t255 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t252, 1
  %t258 = load i64, ptr %l87
  %t259 = inttoptr i64 %t258 to ptr
  %t260 = extractvalue { i64, ptr } %t256, 0
  %t261 = extractvalue { i64, ptr } %t256, 1
  %t262 = mul i64 %t260, 1
  %t263 = call ptr @__olang_scope_alloc(ptr %t259, i64 %t262)
  call void @llvm.memcpy.p0.p0.i64(ptr %t263, ptr %t261, i64 %t262, i1 false)
  %t264 = insertvalue { i64, ptr } undef, i64 %t260, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t263, 1
  %t266 = load ptr, ptr %l86, !tbaa !29
  %t268 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t266, { i64, ptr } %t265)
  store i32 %t268, ptr %l94
  %t269 = icmp ne i32 %t268, 0
  br i1 %t269, label %bb62, label %ok.270, !prof !99
ok.270:
  br label %bb61
bb61:
  br label %bb63
bb62:
  %t271 = load i32, ptr %l94, !tbaa !23
  %t272 = lshr i32 %t271, 16
  %t273 = and i32 %t271, 65535
  %t274 = icmp eq i32 %t272, 1
  %t275 = select i1 %t274, i32 1, i32 0
  %t276 = icmp eq i32 %t271, 0
  %t277 = shl i32 %t275, 16
  %t278 = or i32 %t277, %t273
  %t279 = select i1 %t276, i32 0, i32 %t278
  call void @__olang_scope_close(ptr %s8)
  %t281 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t279, 0
  store { i32, { i64, ptr } } %t281, ptr %rv
  br label %ret
bb63:
  call void @__olang_scope_close(ptr %s8)
  br label %bb64
bb64:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d259, i32 0, i32 1) }, ptr %l96, !tbaa !27
  %t282 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t282, ptr %l97, !tbaa !27
  %t283 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t284 = extractvalue { i64, ptr } %t283, 0
  store i64 %t284, ptr %l98, !tbaa !24
  %t285 = load i64, ptr %l98, !tbaa !24
  %t286 = mul i64 %t285, 1
  %t287 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t286)
  %t288 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t287, 1
  store { i64, ptr } %t289, ptr %l99, !tbaa !27
  %t290 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !27
  %t292 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !27
  %t294 = load i64, ptr %l98, !tbaa !24
  %t295 = mul i64 %t294, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t291, ptr %t293, i64 %t295, i1 false)
  %t296 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t296, ptr %l97, !tbaa !27
  %t297 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t298 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t297, 1
  store { i32, { i64, ptr } } %t298, ptr %rv
  br label %ret
bb65:
  %t299 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t301 = trunc i64 6 to i32
  %t302 = icmp eq i32 %t299, %t301
  br i1 %t302, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb72
bb68:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t306 = load { i64, ptr }, ptr %t305, !tbaa !27
  %t309 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t304, { i64, ptr } %t306)
  store i32 %t309, ptr %l104
  %t310 = icmp ne i32 %t309, 0
  br i1 %t310, label %bb70, label %ok.311, !prof !99
ok.311:
  br label %bb69
bb69:
  br label %bb71
bb70:
  %t312 = load i32, ptr %l104, !tbaa !23
  %t313 = lshr i32 %t312, 16
  %t314 = and i32 %t312, 65535
  %t315 = icmp eq i32 %t313, 1
  %t316 = select i1 %t315, i32 1, i32 0
  %t317 = icmp eq i32 %t312, 0
  %t318 = shl i32 %t316, 16
  %t319 = or i32 %t318, %t314
  %t320 = select i1 %t317, i32 0, i32 %t319
  %t322 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t320, 0
  store { i32, { i64, ptr } } %t322, ptr %rv
  br label %ret
bb71:
  br label %bb80
bb72:
  br i1 true, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb79
bb75:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t323, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d260, i32 0, i32 1) })
  store i32 %t325, ptr %l107
  %t326 = icmp ne i32 %t325, 0
  br i1 %t326, label %bb77, label %ok.327, !prof !99
ok.327:
  br label %bb76
bb76:
  br label %bb78
bb77:
  %t328 = load i32, ptr %l107, !tbaa !23
  %t329 = lshr i32 %t328, 16
  %t330 = and i32 %t328, 65535
  %t331 = icmp eq i32 %t329, 1
  %t332 = select i1 %t331, i32 1, i32 0
  %t333 = icmp eq i32 %t328, 0
  %t334 = shl i32 %t332, 16
  %t335 = or i32 %t334, %t330
  %t336 = select i1 %t333, i32 0, i32 %t335
  %t338 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t336, 0
  store { i32, { i64, ptr } } %t338, ptr %rv
  br label %ret
bb78:
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_383dad6bbc51ebc3_b2d1cf432887049f)
  unreachable
bb80:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d261, i32 0, i32 1) }, ptr %l109, !tbaa !27
  %t339 = load { i64, ptr }, ptr %l109, !tbaa !27
  store { i64, ptr } %t339, ptr %l110, !tbaa !27
  %t340 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t341 = extractvalue { i64, ptr } %t340, 0
  store i64 %t341, ptr %l111, !tbaa !24
  %t342 = load i64, ptr %l111, !tbaa !24
  %t343 = mul i64 %t342, 1
  %t344 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t343)
  %t345 = insertvalue { i64, ptr } undef, i64 %t342, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t344, 1
  store { i64, ptr } %t346, ptr %l112, !tbaa !27
  %t347 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !27
  %t349 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !27
  %t351 = load i64, ptr %l111, !tbaa !24
  %t352 = mul i64 %t351, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t348, ptr %t350, i64 %t352, i1 false)
  %t353 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t353, ptr %l110, !tbaa !27
  %t354 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t355 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t354, 1
  store { i32, { i64, ptr } } %t355, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewantRecord(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l15 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 5
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/bindgen:record", ptr %t9, i32 0, i32 8
  %t12 = load i1, ptr %t11, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/bindgen:gen", ptr %t15, i32 0, i32 1
  %t18 = load i1, ptr %t17, !tbaa !21
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"compiler/bindgen:record", ptr %t22, i32 0, i32 6
  %t25 = load i1, ptr %t24, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb6:
  br label %bb10
bb7:
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = getelementptr %"compiler/bindgen:record", ptr %t27, i32 0, i32 2
  %t30 = load i1, ptr %t29, !tbaa !21
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load i1, ptr %l15, !tbaa !21
  store i1 %t32, ptr %rv
  br label %ret
bb10:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = getelementptr %"compiler/bindgen:record", ptr %t33, i32 0, i32 2
  %t36 = load i1, ptr %t35, !tbaa !21
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/bindgen:record", ptr %t38, i32 0, i32 7
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t41, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d262, i32 0, i32 1) })
  store i1 %t43, ptr %l23
  br label %bb13
bb12:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb14
bb13:
  %t44 = load i1, ptr %l23, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t47 = load i1, ptr %l20, !tbaa !21
  store i1 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewanted(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i1
  %l7 = alloca i1
  %rv = alloca i1
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 1
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb6
bb2:
  %t7 = getelementptr %"compiler/bindgen:gen", ptr %a0, i32 0, i32 1
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l7, !tbaa !21
  store i1 %t14, ptr %l4, !tbaa !21
  br label %bb6
bb6:
  %t15 = load i1, ptr %l4, !tbaa !21
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrapper(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %lp4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i1
  %l25 = alloca i32
  %l28 = alloca { i64, ptr }
  %l30 = alloca i1
  %l32 = alloca i32
  %l60 = alloca { i64, ptr }
  %l78 = alloca i1
  %l94 = alloca i64
  %l97 = alloca i64
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:cFunc", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @compiler_2fbindgen_2enoReturnOf(ptr %v1, ptr %s0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l18
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l19, !tbaa !24
  %t9 = load i64, ptr %l19, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l20, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l19, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d263, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t24 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t21, { i64, ptr } %t23)
  store i1 %t24, ptr %l23
  br label %bb2
bb2:
  %t25 = load i1, ptr %l23, !tbaa !21
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t26, { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d264, i32 0, i32 1) })
  store i32 %t28, ptr %l25
  %t29 = icmp ne i32 %t28, 0
  br i1 %t29, label %bb6, label %ok.30, !prof !99
ok.30:
  br label %bb5
bb4:
  br label %bb8
bb5:
  br label %bb7
bb6:
  %t31 = load i32, ptr %l25, !tbaa !23
  %t32 = lshr i32 %t31, 16
  %t33 = and i32 %t31, 65535
  %t34 = icmp eq i32 %t32, 1
  %t35 = select i1 %t34, i32 1, i32 0
  %t36 = icmp eq i32 %t31, 0
  %t37 = shl i32 %t35, 16
  %t38 = or i32 %t37, %t33
  %t39 = select i1 %t36, i32 0, i32 %t38
  call void @__olang_scope_close(ptr %s0)
  %t41 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t39, 0
  store { i32, { i64, ptr } } %t41, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t42 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t44 = call { i64, ptr } @compiler_2fbindgen_2eresultText(ptr %s0, ptr %s0, { i64, ptr } %t42)
  store { i64, ptr } %t44, ptr %l28
  br label %bb9
bb9:
  %t45 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t45, ptr %l3, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t48 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t46, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d265, i32 0, i32 1) })
  store i1 %t48, ptr %l30
  br label %bb10
bb10:
  %t49 = load i1, ptr %l30, !tbaa !21
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t50, { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d266, i32 0, i32 1) })
  store i32 %t52, ptr %l32
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb14, label %ok.54, !prof !99
ok.54:
  br label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb15
bb14:
  %t55 = load i32, ptr %l32, !tbaa !23
  %t56 = lshr i32 %t55, 16
  %t57 = and i32 %t55, 65535
  %t58 = icmp eq i32 %t56, 1
  %t59 = select i1 %t58, i32 1, i32 0
  %t60 = icmp eq i32 %t55, 0
  %t61 = shl i32 %t59, 16
  %t62 = or i32 %t61, %t57
  %t63 = select i1 %t60, i32 0, i32 %t62
  call void @__olang_scope_close(ptr %s0)
  %t65 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t63, 0
  store { i32, { i64, ptr } } %t65, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/bindgen:gen", ptr %t66, i32 0, i32 2
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr %"compiler/bindgen:cFunc", ptr %t70, i32 0, i32 0
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  %t74 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d267, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d267, i32 0, i32 1) }, 0
  %t77 = extractvalue { i64, ptr } %t69, 1
  %t78 = extractvalue { i64, ptr } %t69, 0
  %t79 = add i64 %t75, %t78
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d268, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d268, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t84 = extractvalue { i64, ptr } %t73, 1
  %t85 = extractvalue { i64, ptr } %t73, 0
  %t86 = add i64 %t82, %t85
  %t87 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t86)
  call void @olang_textcopy(ptr %t87, ptr %t74, i64 %t75)
  %t88 = getelementptr i8, ptr %t87, i64 %t75
  call void @olang_textcopy(ptr %t88, ptr %t77, i64 %t78)
  %t89 = getelementptr i8, ptr %t88, i64 %t78
  call void @olang_textcopy(ptr %t89, ptr %t80, i64 %t81)
  %t90 = getelementptr i8, ptr %t89, i64 %t81
  call void @olang_textcopy(ptr %t90, ptr %t84, i64 %t85)
  %t91 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t87, 1
  %t93 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t93, ptr %lp4
  %t95 = load ptr, ptr %lp4
  store { i64, ptr } %t92, ptr %t95, !tbaa !27
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/bindgen:gen", ptr %t96, i32 0, i32 20
  %t99 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t100 = load ptr, ptr %lp4
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t99, 1
  %t104 = extractvalue { i64, ptr } %t99, 0
  %t105 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d269, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d269, i32 0, i32 1) }, 0
  %t107 = add i64 %t104, %t106
  %t109 = extractvalue { i64, ptr } %t101, 1
  %t110 = extractvalue { i64, ptr } %t101, 0
  %t111 = add i64 %t107, %t110
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t114 = add i64 %t111, %t113
  %t115 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t114)
  call void @olang_textcopy(ptr %t115, ptr %t103, i64 %t104)
  %t116 = getelementptr i8, ptr %t115, i64 %t104
  call void @olang_textcopy(ptr %t116, ptr %t105, i64 %t106)
  %t117 = getelementptr i8, ptr %t116, i64 %t106
  call void @olang_textcopy(ptr %t117, ptr %t109, i64 %t110)
  %t118 = getelementptr i8, ptr %t117, i64 %t110
  call void @olang_textcopy(ptr %t118, ptr %t112, i64 %t113)
  %t119 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t115, 1
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t123 = extractvalue { i64, ptr } %t120, 1
  %t124 = mul i64 %t122, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t124)
  call void @llvm.memcpy.p0.p0.i64(ptr %t125, ptr %t123, i64 %t124, i1 false)
  %t126 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t98, { i64, ptr } %t127)
  br label %bb17
bb17:
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr %"compiler/bindgen:cFunc", ptr %t130, i32 0, i32 3
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 0
  %t137 = icmp eq i64 %t135, 0
  br i1 %t137, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/bindgen:gen", ptr %t139, i32 0, i32 20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t141, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d271, i32 0, i32 1) })
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s5)
  br label %bb21
bb21:
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr %"compiler/bindgen:cFunc", ptr %t143, i32 0, i32 3
  %t146 = load { i64, ptr }, ptr %t145, !tbaa !27
  store { i64, ptr } %t146, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t148 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t148, 0
  store i64 %t150, ptr %l7, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t152 = load i64, ptr %l6, !tbaa !24
  %t153 = load i64, ptr %l7, !tbaa !24
  %t156 = icmp slt i64 %t152, %t153
  %t158 = xor i1 %t156, true
  br i1 %t158, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s7)
  br label %bb32
bb24:
  br label %bb25
bb25:
  %t160 = load i64, ptr %l6, !tbaa !24
  store i64 %t160, ptr %l8, !tbaa !24
  %t162 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t162, ptr %l60, !tbaa !27
  %t163 = load i64, ptr %l6, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr { i64, ptr }, ptr %t166, i64 %t163
  %t168 = load { i64, ptr }, ptr %t167, !tbaa !37
  store { i64, ptr } %t168, ptr %l9, !tbaa !27
  %t170 = load i64, ptr %l8, !tbaa !24
  %t172 = icmp sgt i64 %t170, 0
  br i1 %t172, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s8
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/bindgen:gen", ptr %t174, i32 0, i32 20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s8, ptr %t176, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d272, i32 0, i32 1) })
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_scope_close(ptr %s8)
  br label %bb29
bb29:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/bindgen:gen", ptr %t178, i32 0, i32 20
  %t181 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t182 = load i64, ptr %l8, !tbaa !24
  %t183 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d273, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d273, i32 0, i32 1) }, 0
  %t186 = extractvalue { i64, ptr } %t181, 1
  %t187 = extractvalue { i64, ptr } %t181, 0
  %t188 = add i64 %t184, %t187
  %t189 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d274, i32 0, i32 1) }, 1
  %t190 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d274, i32 0, i32 1) }, 0
  %t191 = add i64 %t188, %t190
  %t193 = call i64 @__olang_fmt_i64(ptr null, i64 %t182)
  %t194 = add i64 %t191, %t193
  %t195 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t194)
  call void @olang_textcopy(ptr %t195, ptr %t183, i64 %t184)
  %t196 = getelementptr i8, ptr %t195, i64 %t184
  call void @olang_textcopy(ptr %t196, ptr %t186, i64 %t187)
  %t197 = getelementptr i8, ptr %t196, i64 %t187
  call void @olang_textcopy(ptr %t197, ptr %t189, i64 %t190)
  %t198 = getelementptr i8, ptr %t197, i64 %t190
  %t199 = call i64 @__olang_fmt_i64(ptr %t198, i64 %t182)
  %t200 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t195, 1
  %t203 = extractvalue { i64, ptr } %t201, 0
  %t204 = extractvalue { i64, ptr } %t201, 1
  %t205 = mul i64 %t203, 1
  %t206 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t205)
  call void @llvm.memcpy.p0.p0.i64(ptr %t206, ptr %t204, i64 %t205, i1 false)
  %t207 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t206, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s7, ptr %t180, { i64, ptr } %t208)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s7)
  br label %bb31
bb31:
  %t211 = load i64, ptr %l6, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l6, !tbaa !24
  br label %bb22
bb32:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/bindgen:gen", ptr %t215, i32 0, i32 20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t217, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d275, i32 0, i32 1) })
  br label %bb33
bb33:
  %t219 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t221 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t219, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d276, i32 0, i32 1) })
  store i1 %t221, ptr %l78
  br label %bb34
bb34:
  %t222 = load i1, ptr %l78, !tbaa !21
  %t223 = xor i1 %t222, true
  br i1 %t223, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s11
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/bindgen:gen", ptr %t225, i32 0, i32 20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s11, ptr %t227, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d277, i32 0, i32 1) })
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s11)
  br label %bb38
bb38:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/bindgen:gen", ptr %t229, i32 0, i32 20
  %t232 = load ptr, ptr %l1, !tbaa !29
  %t234 = getelementptr %"compiler/bindgen:cFunc", ptr %t232, i32 0, i32 0
  %t235 = load { i64, ptr }, ptr %t234, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t235, 1
  %t238 = extractvalue { i64, ptr } %t235, 0
  %t239 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d278, i32 0, i32 1) }, 1
  %t240 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d278, i32 0, i32 1) }, 0
  %t241 = add i64 %t238, %t240
  %t242 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t241)
  call void @olang_textcopy(ptr %t242, ptr %t237, i64 %t238)
  %t243 = getelementptr i8, ptr %t242, i64 %t238
  call void @olang_textcopy(ptr %t243, ptr %t239, i64 %t240)
  %t244 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t245 = insertvalue { i64, ptr } %t244, ptr %t242, 1
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t248 = extractvalue { i64, ptr } %t245, 1
  %t249 = mul i64 %t247, 1
  %t250 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t249)
  call void @llvm.memcpy.p0.p0.i64(ptr %t250, ptr %t248, i64 %t249, i1 false)
  %t251 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t250, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t231, { i64, ptr } %t252)
  br label %bb39
bb39:
  store i64 0, ptr %l10, !tbaa !24
  %t255 = load ptr, ptr %l1, !tbaa !29
  %t257 = getelementptr %"compiler/bindgen:cFunc", ptr %t255, i32 0, i32 3
  %t258 = load { i64, ptr }, ptr %t257, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t258, 0
  store i64 %t260, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t262 = load i64, ptr %l11, !tbaa !24
  %t263 = load i64, ptr %l10, !tbaa !24
  %t266 = icmp sgt i64 %t262, %t263
  br i1 %t266, label %bb40, label %bb41
bb40:
  %t268 = load i64, ptr %l12, !tbaa !24
  %t270 = icmp sgt i64 %t268, 0
  br i1 %t270, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb45
bb42:
  %t272 = load i64, ptr %l11, !tbaa !24
  %t273 = load i64, ptr %l10, !tbaa !24
  %t276 = sub i64 %t272, %t273
  %t277 = load i64, ptr %l12, !tbaa !24
  %t280 = add i64 %t276, %t277
  %t282 = sub i64 %t280, 1
  %t283 = load i64, ptr %l12, !tbaa !24
  %t286 = sdiv i64 %t282, %t283
  store i64 %t286, ptr %l97, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l97, !tbaa !24
  br label %bb44
bb44:
  %t288 = load i64, ptr %l97, !tbaa !24
  store i64 %t288, ptr %l94, !tbaa !24
  br label %bb45
bb45:
  %t289 = load i64, ptr %l94, !tbaa !24
  store i64 %t289, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb46
bb46:
  store %olang.scope zeroinitializer, ptr %s14
  %t290 = load i64, ptr %l14, !tbaa !24
  %t291 = load i64, ptr %l13, !tbaa !24
  %t294 = icmp slt i64 %t290, %t291
  %t296 = xor i1 %t294, true
  br i1 %t296, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s14)
  br label %bb56
bb48:
  br label %bb49
bb49:
  %t298 = load i64, ptr %l10, !tbaa !24
  %t299 = load i64, ptr %l14, !tbaa !24
  %t300 = load i64, ptr %l12, !tbaa !24
  %t303 = mul i64 %t299, %t300
  %t306 = add i64 %t298, %t303
  store i64 %t306, ptr %l15, !tbaa !24
  %t308 = load i64, ptr %l15, !tbaa !24
  %t310 = icmp sgt i64 %t308, 0
  br i1 %t310, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s15
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/bindgen:gen", ptr %t312, i32 0, i32 20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s15, ptr %t314, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d279, i32 0, i32 1) })
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_scope_close(ptr %s15)
  br label %bb53
bb53:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/bindgen:gen", ptr %t316, i32 0, i32 20
  %t319 = load i64, ptr %l15, !tbaa !24
  %t320 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d280, i32 0, i32 1) }, 1
  %t321 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d280, i32 0, i32 1) }, 0
  %t323 = call i64 @__olang_fmt_i64(ptr null, i64 %t319)
  %t324 = add i64 %t321, %t323
  %t325 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t324)
  call void @olang_textcopy(ptr %t325, ptr %t320, i64 %t321)
  %t326 = getelementptr i8, ptr %t325, i64 %t321
  %t327 = call i64 @__olang_fmt_i64(ptr %t326, i64 %t319)
  %t328 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t329 = insertvalue { i64, ptr } %t328, ptr %t325, 1
  %t331 = extractvalue { i64, ptr } %t329, 0
  %t332 = extractvalue { i64, ptr } %t329, 1
  %t333 = mul i64 %t331, 1
  %t334 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t333)
  call void @llvm.memcpy.p0.p0.i64(ptr %t334, ptr %t332, i64 %t333, i1 false)
  %t335 = insertvalue { i64, ptr } undef, i64 %t331, 0
  %t336 = insertvalue { i64, ptr } %t335, ptr %t334, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s14, ptr %t318, { i64, ptr } %t336)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s14)
  br label %bb55
bb55:
  %t339 = load i64, ptr %l14, !tbaa !24
  %t341 = add i64 %t339, 1
  store i64 %t341, ptr %l14, !tbaa !24
  br label %bb46
bb56:
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t345 = getelementptr %"compiler/bindgen:gen", ptr %t343, i32 0, i32 20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t345, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d281, i32 0, i32 1) })
  br label %bb57
bb57:
  %t347 = load ptr, ptr %lp4
  %t348 = load { i64, ptr }, ptr %t347, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t350 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t348, 1
  store { i32, { i64, ptr } } %t350, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrite(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/bindgen:cFunc"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/bindgen:cFunc"
  %l9 = alloca i64
  %l10 = alloca %"compiler/bindgen:ctype"
  %l12 = alloca i1
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca ptr
  %l17 = alloca i64
  %lp18 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca %"std/prelude/text:StringBuilder"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l26 = alloca %"std/prelude/text:StringBuilder"
  %l27 = alloca %"std/prelude/text:StringBuilder"
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i64
  %l45 = alloca i64
  %l47 = alloca i64
  %l52 = alloca %"compiler/bindgen:cFunc"
  %l60 = alloca i64
  %l62 = alloca i64
  %l67 = alloca %"compiler/bindgen:cFunc"
  %l69 = alloca { i64, ptr }
  %l70 = alloca i64
  %l71 = alloca { i64, ptr }
  %l74 = alloca i64
  %l78 = alloca %"compiler/bindgen:ctype"
  %l83 = alloca ptr
  %l87 = alloca %"compiler/bindgen:ctype"
  %l89 = alloca %"compiler/bindgen:ctype"
  %l92 = alloca i1
  %l96 = alloca %"compiler/bindgen:ctype"
  %l99 = alloca ptr
  %l103 = alloca %"compiler/bindgen:ctype"
  %l105 = alloca i64
  %l109 = alloca ptr
  %l115 = alloca %"std/prelude/text:StringBuilder"
  %l116 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l119 = alloca i64
  %l121 = alloca i64
  %l126 = alloca %"compiler/bindgen:cFunc"
  %l130 = alloca i1
  %l134 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i64
  %l147 = alloca i1
  %l149 = alloca ptr
  %l150 = alloca i64
  %l156 = alloca i1
  %l161 = alloca ptr
  %l162 = alloca i64
  %l168 = alloca i1
  %l172 = alloca i1
  %l174 = alloca ptr
  %l175 = alloca i64
  %l180 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l184 = alloca i32
  %l186 = alloca i1
  %l188 = alloca ptr
  %l189 = alloca i64
  %l198 = alloca i1
  %l200 = alloca i1
  %l202 = alloca i1
  %l206 = alloca { i64, ptr }
  %l209 = alloca { i64, ptr }
  %l210 = alloca i32
  %l212 = alloca i1
  %l214 = alloca ptr
  %l215 = alloca i64
  %l224 = alloca ptr
  %l225 = alloca i64
  %l238 = alloca %"std/prelude/text:StringBuilder"
  %l243 = alloca i64
  %l245 = alloca i64
  %l250 = alloca { i64, ptr }
  %l257 = alloca %"std/prelude/text:StringBuilder"
  %l258 = alloca %"std/prelude/text:StringBuilder"
  %l261 = alloca i64
  %l265 = alloca i64
  %l268 = alloca i64
  %l289 = alloca ptr
  %l292 = alloca i1
  %l293 = alloca i1
  %l296 = alloca i1
  %l300 = alloca i1
  %l301 = alloca ptr
  %l304 = alloca { i64, ptr }
  %l307 = alloca ptr
  %l311 = alloca ptr
  %l319 = alloca i64
  %l321 = alloca i1
  %l323 = alloca i64
  %l325 = alloca ptr
  %l327 = alloca { i64, ptr }
  %l329 = alloca { i64, ptr }
  %l332 = alloca ptr
  %l334 = alloca { i64, ptr }
  %l338 = alloca i64
  %l343 = alloca i64
  %l345 = alloca i64
  %l350 = alloca { i64, ptr }
  %l359 = alloca i64
  %l364 = alloca i64
  %l366 = alloca i64
  %l371 = alloca { i64, ptr }
  %l380 = alloca i64
  %l385 = alloca i64
  %l387 = alloca i64
  %l392 = alloca { i64, ptr }
  %l400 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s49 = alloca %olang.scope
  %s51 = alloca %olang.scope
  %s54 = alloca %olang.scope
  %s56 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 8
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l45, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eLen_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l47
  br label %bb2
bb2:
  %t9 = load i64, ptr %l45, !tbaa !24
  %t10 = load i64, ptr %l47, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call %"compiler/bindgen:cFunc" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eAt_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/bindgen:cFunc" %t19, ptr %l52
  br label %bb6
bb6:
  %t20 = load %"compiler/bindgen:cFunc", ptr %l52
  store %"compiler/bindgen:cFunc" %t20, ptr %l4
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/bindgen:gen", ptr %t21, i32 0, i32 21
  %t24 = getelementptr %"compiler/bindgen:cFunc", ptr %l4, i32 0, i32 0
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t23, { i64, ptr } %t25, i64 0)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = add i64 %t28, 1
  store i64 %t30, ptr %l3, !tbaa !24
  br label %bb1
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/bindgen:gen", ptr %t32, i32 0, i32 8
  store ptr %t34, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s5
  %t36 = load i64, ptr %l6, !tbaa !24
  store i64 %t36, ptr %l60, !tbaa !24
  %t37 = load ptr, ptr %l5, !tbaa !29
  %t39 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eLen_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %t37)
  store i64 %t39, ptr %l62
  br label %bb11
bb11:
  %t40 = load i64, ptr %l60, !tbaa !24
  %t41 = load i64, ptr %l62, !tbaa !24
  %t42 = icmp slt i64 %t40, %t41
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s5)
  br label %bb35
bb13:
  br label %bb14
bb14:
  %t46 = load ptr, ptr %l5, !tbaa !29
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = call %"compiler/bindgen:cFunc" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eAt_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v0, ptr %t46, i64 %t47)
  store %"compiler/bindgen:cFunc" %t50, ptr %l67
  br label %bb15
bb15:
  %t51 = load %"compiler/bindgen:cFunc", ptr %l67
  store %"compiler/bindgen:cFunc" %t51, ptr %l7
  %t52 = getelementptr %"compiler/bindgen:cFunc", ptr %l7, i32 0, i32 1
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  %t55 = call { i64, ptr } @compiler_2fbindgen_2enoReturnOf(ptr %v0, ptr %s5, { i64, ptr } %t53)
  store { i64, ptr } %t55, ptr %l69
  br label %bb16
bb16:
  %t56 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 0
  store i64 %t57, ptr %l70, !tbaa !24
  %t58 = load i64, ptr %l70, !tbaa !24
  %t59 = mul i64 %t58, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t59)
  %t61 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  store { i64, ptr } %t62, ptr %l71, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = load i64, ptr %l70, !tbaa !24
  %t68 = mul i64 %t67, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t64, ptr %t66, i64 %t68, i1 false)
  %t69 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t74 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %s5, ptr %t70, { i64, ptr } %t69, i64 0)
  store i64 %t74, ptr %l74
  br label %bb17
bb17:
  %t75 = load i64, ptr %l74, !tbaa !24
  store i64 %t75, ptr %l9, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/bindgen:gen", ptr %t76, i32 0, i32 16
  %t79 = load i64, ptr %l9, !tbaa !24
  %t82 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s5, ptr %t78, i64 %t79)
  store %"compiler/bindgen:ctype" %t82, ptr %l78
  br label %bb18
bb18:
  %t83 = getelementptr %"compiler/bindgen:ctype", ptr %l78, i32 0, i32 0
  %t84 = load i32, ptr %t83, !range !{i32 0, i32 7}
  %t86 = trunc i64 5 to i32
  %t87 = icmp eq i32 %t84, %t86
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s5)
  br label %bb34
bb20:
  br label %bb21
bb21:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/bindgen:gen", ptr %t91, i32 0, i32 16
  store ptr %t93, ptr %l83, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/bindgen:gen", ptr %t94, i32 0, i32 16
  %t97 = load i64, ptr %l9, !tbaa !24
  %t100 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s5, ptr %t96, i64 %t97)
  store %"compiler/bindgen:ctype" %t100, ptr %l87
  br label %bb22
bb22:
  %t101 = getelementptr %"compiler/bindgen:ctype", ptr %l87, i32 0, i32 2
  %t102 = load i64, ptr %t101, !tbaa !24
  %t103 = load ptr, ptr %l83, !tbaa !29
  %t105 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t103, i64 %t102)
  store %"compiler/bindgen:ctype" %t105, ptr %l89
  br label %bb23
bb23:
  %t106 = load %"compiler/bindgen:ctype", ptr %l89
  store %"compiler/bindgen:ctype" %t106, ptr %l10
  %t107 = getelementptr %"compiler/bindgen:ctype", ptr %l10, i32 0, i32 0
  %t108 = load i32, ptr %t107, !range !{i32 0, i32 7}
  %t110 = trunc i64 3 to i32
  %t111 = icmp eq i32 %t108, %t110
  br i1 %t111, label %bb24, label %bb25
bb24:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/bindgen:gen", ptr %t113, i32 0, i32 16
  %t116 = getelementptr %"compiler/bindgen:ctype", ptr %l10, i32 0, i32 2
  %t117 = load i64, ptr %t116, !tbaa !24
  %t120 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s5, ptr %t115, i64 %t117)
  store %"compiler/bindgen:ctype" %t120, ptr %l96
  br label %bb26
bb25:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb27
bb26:
  %t121 = getelementptr %"compiler/bindgen:ctype", ptr %l96, i32 0, i32 0
  %t122 = load i32, ptr %t121, !range !{i32 0, i32 7}
  %t124 = trunc i64 2 to i32
  %t125 = icmp eq i32 %t122, %t124
  store i1 %t125, ptr %l92, !tbaa !21
  br label %bb27
bb27:
  %t127 = load i1, ptr %l92, !tbaa !21
  br i1 %t127, label %bb28, label %bb29
bb28:
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l99, !tbaa !29
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/bindgen:gen", ptr %t129, i32 0, i32 16
  %t132 = getelementptr %"compiler/bindgen:ctype", ptr %l10, i32 0, i32 2
  %t133 = load i64, ptr %t132, !tbaa !24
  %t136 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t131, i64 %t133)
  store %"compiler/bindgen:ctype" %t136, ptr %l103
  br label %bb30
bb29:
  br label %bb33
bb30:
  %t137 = getelementptr %"compiler/bindgen:ctype", ptr %l103, i32 0, i32 1
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  %t139 = load ptr, ptr %l99, !tbaa !29
  %t141 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %v0, ptr %t139, { i64, ptr } %t138)
  store i64 %t141, ptr %l105
  br label %bb31
bb31:
  %t142 = load i64, ptr %l105, !tbaa !24
  store i1 true, ptr %l12, !tbaa !21
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/bindgen:gen", ptr %t143, i32 0, i32 5
  %t149 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t145, i64 %t142)
  store ptr %t149, ptr %l109
  br label %bb32
bb32:
  %t150 = load ptr, ptr %l109, !tbaa !29
  %t152 = load i1, ptr %l12, !tbaa !21
  %t155 = getelementptr %"compiler/bindgen:record", ptr %t150, i32 0, i32 10
  store i1 %t152, ptr %t155, !tbaa !21
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s5)
  br label %bb34
bb34:
  %t156 = load i64, ptr %l6, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l6, !tbaa !24
  br label %bb10
bb35:
  %t160 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecords(ptr %v0, ptr %t160)
  br label %bb36
bb36:
  %t162 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t162, ptr %l115
  br label %bb37
bb37:
  %t163 = load %"std/prelude/text:StringBuilder", ptr %l115
  store %"std/prelude/text:StringBuilder" %t163, ptr %l14
  %t164 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t164, ptr %l116
  br label %bb38
bb38:
  %t165 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l116
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t165, ptr %l15
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/bindgen:gen", ptr %t166, i32 0, i32 8
  store ptr %t168, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb39
bb39:
  store %olang.scope zeroinitializer, ptr %s10
  %t170 = load i64, ptr %l17, !tbaa !24
  store i64 %t170, ptr %l119, !tbaa !24
  %t171 = load ptr, ptr %l16, !tbaa !29
  %t173 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eLen_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %t171)
  store i64 %t173, ptr %l121
  br label %bb40
bb40:
  %t174 = load i64, ptr %l119, !tbaa !24
  %t175 = load i64, ptr %l121, !tbaa !24
  %t176 = icmp slt i64 %t174, %t175
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s10)
  br label %bb118
bb42:
  br label %bb43
bb43:
  %t180 = load ptr, ptr %l16, !tbaa !29
  %t181 = load i64, ptr %l17, !tbaa !24
  %t184 = call %"compiler/bindgen:cFunc" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eAt_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v0, ptr %t180, i64 %t181)
  store %"compiler/bindgen:cFunc" %t184, ptr %l126
  br label %bb44
bb44:
  %t185 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 88, i64 8)
  store ptr %t185, ptr %lp18
  %t186 = load %"compiler/bindgen:cFunc", ptr %l126
  %t187 = load ptr, ptr %lp18
  store %"compiler/bindgen:cFunc" %t186, ptr %t187
  %t188 = load ptr, ptr %lp18
  %t189 = getelementptr %"compiler/bindgen:cFunc", ptr %t188, i32 0, i32 0
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  %t195 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %s0, ptr %v0, ptr %l15, { i64, ptr } %t190)
  store i1 %t195, ptr %l130
  br label %bb45
bb45:
  %t196 = load i1, ptr %l130, !tbaa !21
  br i1 %t196, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s10)
  br label %bb117
bb47:
  br label %bb48
bb48:
  %t197 = load ptr, ptr %lp18
  %t198 = getelementptr %"compiler/bindgen:cFunc", ptr %t197, i32 0, i32 0
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %s0, ptr %v0, ptr %l15, { i64, ptr } %t199, i64 0)
  br label %bb49
bb49:
  %t202 = load ptr, ptr %lp18
  %t203 = getelementptr %"compiler/bindgen:cFunc", ptr %t202, i32 0, i32 0
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  %t206 = call i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %t204)
  store i1 %t206, ptr %l134
  br label %bb50
bb50:
  %t207 = load i1, ptr %l134, !tbaa !21
  %t208 = xor i1 %t207, true
  br i1 %t208, label %bb51, label %bb52
bb51:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/bindgen:gen", ptr %t210, i32 0, i32 1
  %t213 = load i1, ptr %t212, !tbaa !21
  %t215 = xor i1 %t213, true
  br i1 %t215, label %bb53, label %bb54
bb52:
  br label %bb59
bb53:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/bindgen:gen", ptr %t217, i32 0, i32 18
  store ptr %t219, ptr %l140, !tbaa !29
  %t220 = ptrtoint ptr %v0 to i64
  store i64 %t220, ptr %l141, !tbaa !24
  %t221 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t221, label %bb55, label %bb56
bb54:
  br label %bb58
bb55:
  %t223 = call ptr @__olang_region_make(ptr %v0)
  %t224 = ptrtoint ptr %t223 to i64
  store i64 %t224, ptr %l141, !tbaa !24
  br label %bb56
bb56:
  %t225 = load ptr, ptr %lp18
  %t226 = getelementptr %"compiler/bindgen:cFunc", ptr %t225, i32 0, i32 0
  %t227 = load { i64, ptr }, ptr %t226, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t227, 1
  %t230 = extractvalue { i64, ptr } %t227, 0
  %t231 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d282, i32 0, i32 1) }, 1
  %t232 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d282, i32 0, i32 1) }, 0
  %t233 = add i64 %t230, %t232
  %t234 = load i64, ptr %l141
  %t235 = inttoptr i64 %t234 to ptr
  %t236 = call ptr @__olang_scope_alloc(ptr %t235, i64 %t233)
  call void @olang_textcopy(ptr %t236, ptr %t229, i64 %t230)
  %t237 = getelementptr i8, ptr %t236, i64 %t230
  call void @olang_textcopy(ptr %t237, ptr %t231, i64 %t232)
  %t238 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t236, 1
  %t241 = load i64, ptr %l141
  %t242 = inttoptr i64 %t241 to ptr
  %t243 = extractvalue { i64, ptr } %t239, 0
  %t244 = extractvalue { i64, ptr } %t239, 1
  %t245 = mul i64 %t243, 1
  %t246 = call ptr @__olang_scope_alloc(ptr %t242, i64 %t245)
  call void @llvm.memcpy.p0.p0.i64(ptr %t246, ptr %t244, i64 %t245, i1 false)
  %t247 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t246, 1
  %t249 = load ptr, ptr %l140, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t249, { i64, ptr } %t248)
  br label %bb57
bb57:
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s10)
  br label %bb117
bb59:
  %t251 = load ptr, ptr %lp18
  %t252 = getelementptr %"compiler/bindgen:cFunc", ptr %t251, i32 0, i32 0
  %t253 = load { i64, ptr }, ptr %t252, !tbaa !27
  %t255 = call i1 @compiler_2fbindgen_2epreludeName(ptr %v0, { i64, ptr } %t253)
  store i1 %t255, ptr %l147
  br label %bb60
bb60:
  %t256 = load i1, ptr %l147, !tbaa !21
  br i1 %t256, label %bb61, label %bb62
bb61:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/bindgen:gen", ptr %t257, i32 0, i32 18
  store ptr %t259, ptr %l149, !tbaa !29
  %t260 = ptrtoint ptr %v0 to i64
  store i64 %t260, ptr %l150, !tbaa !24
  %t261 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t261, label %bb63, label %bb64
bb62:
  br label %bb66
bb63:
  %t263 = call ptr @__olang_region_make(ptr %v0)
  %t264 = ptrtoint ptr %t263 to i64
  store i64 %t264, ptr %l150, !tbaa !24
  br label %bb64
bb64:
  %t265 = load ptr, ptr %lp18
  %t266 = getelementptr %"compiler/bindgen:cFunc", ptr %t265, i32 0, i32 0
  %t267 = load { i64, ptr }, ptr %t266, !tbaa !27
  %t269 = extractvalue { i64, ptr } %t267, 1
  %t270 = extractvalue { i64, ptr } %t267, 0
  %t271 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d283, i32 0, i32 1) }, 1
  %t272 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d283, i32 0, i32 1) }, 0
  %t273 = add i64 %t270, %t272
  %t274 = load i64, ptr %l150
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = call ptr @__olang_scope_alloc(ptr %t275, i64 %t273)
  call void @olang_textcopy(ptr %t276, ptr %t269, i64 %t270)
  %t277 = getelementptr i8, ptr %t276, i64 %t270
  call void @olang_textcopy(ptr %t277, ptr %t271, i64 %t272)
  %t278 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t276, 1
  %t281 = load i64, ptr %l150
  %t282 = inttoptr i64 %t281 to ptr
  %t283 = extractvalue { i64, ptr } %t279, 0
  %t284 = extractvalue { i64, ptr } %t279, 1
  %t285 = mul i64 %t283, 1
  %t286 = call ptr @__olang_scope_alloc(ptr %t282, i64 %t285)
  call void @llvm.memcpy.p0.p0.i64(ptr %t286, ptr %t284, i64 %t285, i1 false)
  %t287 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t286, 1
  %t289 = load ptr, ptr %l149, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t289, { i64, ptr } %t288)
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s10)
  br label %bb117
bb66:
  %t291 = load ptr, ptr %lp18
  %t292 = getelementptr %"compiler/bindgen:cFunc", ptr %t291, i32 0, i32 4
  %t293 = load i1, ptr %t292, !tbaa !21
  br i1 %t293, label %bb67, label %bb68
bb67:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/bindgen:gen", ptr %t295, i32 0, i32 1
  %t298 = load i1, ptr %t297, !tbaa !21
  %t300 = xor i1 %t298, true
  store i1 %t300, ptr %l156, !tbaa !21
  br label %bb69
bb68:
  store i1 false, ptr %l156, !tbaa !21
  br label %bb69
bb69:
  %t302 = load i1, ptr %l156, !tbaa !21
  br i1 %t302, label %bb70, label %bb71
bb70:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/bindgen:gen", ptr %t303, i32 0, i32 18
  store ptr %t305, ptr %l161, !tbaa !29
  %t306 = ptrtoint ptr %v0 to i64
  store i64 %t306, ptr %l162, !tbaa !24
  %t307 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t307, label %bb72, label %bb73
bb71:
  br label %bb75
bb72:
  %t309 = call ptr @__olang_region_make(ptr %v0)
  %t310 = ptrtoint ptr %t309 to i64
  store i64 %t310, ptr %l162, !tbaa !24
  br label %bb73
bb73:
  %t311 = load ptr, ptr %lp18
  %t312 = getelementptr %"compiler/bindgen:cFunc", ptr %t311, i32 0, i32 0
  %t313 = load { i64, ptr }, ptr %t312, !tbaa !27
  %t315 = extractvalue { i64, ptr } %t313, 1
  %t316 = extractvalue { i64, ptr } %t313, 0
  %t317 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d284, i32 0, i32 1) }, 1
  %t318 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d284, i32 0, i32 1) }, 0
  %t319 = add i64 %t316, %t318
  %t320 = load i64, ptr %l162
  %t321 = inttoptr i64 %t320 to ptr
  %t322 = call ptr @__olang_scope_alloc(ptr %t321, i64 %t319)
  call void @olang_textcopy(ptr %t322, ptr %t315, i64 %t316)
  %t323 = getelementptr i8, ptr %t322, i64 %t316
  call void @olang_textcopy(ptr %t323, ptr %t317, i64 %t318)
  %t324 = insertvalue { i64, ptr } undef, i64 %t319, 0
  %t325 = insertvalue { i64, ptr } %t324, ptr %t322, 1
  %t327 = load i64, ptr %l162
  %t328 = inttoptr i64 %t327 to ptr
  %t329 = extractvalue { i64, ptr } %t325, 0
  %t330 = extractvalue { i64, ptr } %t325, 1
  %t331 = mul i64 %t329, 1
  %t332 = call ptr @__olang_scope_alloc(ptr %t328, i64 %t331)
  call void @llvm.memcpy.p0.p0.i64(ptr %t332, ptr %t330, i64 %t331, i1 false)
  %t333 = insertvalue { i64, ptr } undef, i64 %t329, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t332, 1
  %t335 = load ptr, ptr %l161, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t335, { i64, ptr } %t334)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s10)
  br label %bb117
bb75:
  %t337 = load ptr, ptr %lp18
  %t338 = getelementptr %"compiler/bindgen:cFunc", ptr %t337, i32 0, i32 4
  %t339 = load i1, ptr %t338, !tbaa !21
  br i1 %t339, label %bb76, label %bb77
bb76:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/bindgen:gen", ptr %t341, i32 0, i32 24
  %t344 = load ptr, ptr %lp18
  %t345 = getelementptr %"compiler/bindgen:cFunc", ptr %t344, i32 0, i32 0
  %t346 = load { i64, ptr }, ptr %t345, !tbaa !27
  %t349 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t343, { i64, ptr } %t346)
  store i1 %t349, ptr %l172
  br label %bb78
bb77:
  store i1 false, ptr %l168, !tbaa !21
  br label %bb79
bb78:
  %t350 = load i1, ptr %l172, !tbaa !21
  store i1 %t350, ptr %l168, !tbaa !21
  br label %bb79
bb79:
  %t351 = load i1, ptr %l168, !tbaa !21
  br i1 %t351, label %bb80, label %bb81
bb80:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/bindgen:gen", ptr %t352, i32 0, i32 18
  store ptr %t354, ptr %l174, !tbaa !29
  %t355 = ptrtoint ptr %v0 to i64
  store i64 %t355, ptr %l175, !tbaa !24
  %t356 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t356, label %bb82, label %bb83
bb81:
  br label %bb85
bb82:
  %t358 = call ptr @__olang_region_make(ptr %v0)
  %t359 = ptrtoint ptr %t358 to i64
  store i64 %t359, ptr %l175, !tbaa !24
  br label %bb83
bb83:
  %t360 = load ptr, ptr %lp18
  %t361 = getelementptr %"compiler/bindgen:cFunc", ptr %t360, i32 0, i32 0
  %t362 = load { i64, ptr }, ptr %t361, !tbaa !27
  %t364 = extractvalue { i64, ptr } %t362, 1
  %t365 = extractvalue { i64, ptr } %t362, 0
  %t366 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d285, i32 0, i32 1) }, 1
  %t367 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d285, i32 0, i32 1) }, 0
  %t368 = add i64 %t365, %t367
  %t369 = load i64, ptr %l175
  %t370 = inttoptr i64 %t369 to ptr
  %t371 = call ptr @__olang_scope_alloc(ptr %t370, i64 %t368)
  call void @olang_textcopy(ptr %t371, ptr %t364, i64 %t365)
  %t372 = getelementptr i8, ptr %t371, i64 %t365
  call void @olang_textcopy(ptr %t372, ptr %t366, i64 %t367)
  %t373 = insertvalue { i64, ptr } undef, i64 %t368, 0
  %t374 = insertvalue { i64, ptr } %t373, ptr %t371, 1
  %t376 = load i64, ptr %l175
  %t377 = inttoptr i64 %t376 to ptr
  %t378 = extractvalue { i64, ptr } %t374, 0
  %t379 = extractvalue { i64, ptr } %t374, 1
  %t380 = mul i64 %t378, 1
  %t381 = call ptr @__olang_scope_alloc(ptr %t377, i64 %t380)
  call void @llvm.memcpy.p0.p0.i64(ptr %t381, ptr %t379, i64 %t380, i1 false)
  %t382 = insertvalue { i64, ptr } undef, i64 %t378, 0
  %t383 = insertvalue { i64, ptr } %t382, ptr %t381, 1
  %t384 = load ptr, ptr %l174, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t384, { i64, ptr } %t383)
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s10)
  br label %bb117
bb85:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load ptr, ptr %lp18
  %t390 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efunction(ptr %v0, ptr %v0, ptr %s10, ptr %t386, ptr %t387)
  %t391 = extractvalue { i32, { i64, ptr } } %t390, 1
  %t392 = extractvalue { i32, { i64, ptr } } %t390, 0
  store i32 %t392, ptr %l184
  %t393 = icmp ne i32 %t392, 0
  br i1 %t393, label %bb87, label %ok.394, !prof !99
ok.394:
  store { i64, ptr } %t391, ptr %l183
  br label %bb86
bb86:
  %t395 = load { i64, ptr }, ptr %l183, !tbaa !27
  store { i64, ptr } %t395, ptr %l180, !tbaa !27
  br label %bb92
bb87:
  %t396 = load i32, ptr %l184, !tbaa !23
  %t397 = ashr i32 %t396, 16
  %t399 = icmp eq i32 %t397, 1
  store i1 %t399, ptr %l186, !tbaa !21
  br label %bb88
bb88:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/bindgen:gen", ptr %t400, i32 0, i32 18
  store ptr %t402, ptr %l188, !tbaa !29
  %t403 = ptrtoint ptr %v0 to i64
  store i64 %t403, ptr %l189, !tbaa !24
  %t404 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t404, label %bb89, label %bb90
bb89:
  %t406 = call ptr @__olang_region_make(ptr %v0)
  %t407 = ptrtoint ptr %t406 to i64
  store i64 %t407, ptr %l189, !tbaa !24
  br label %bb90
bb90:
  %t408 = load ptr, ptr %lp18
  %t409 = getelementptr %"compiler/bindgen:cFunc", ptr %t408, i32 0, i32 0
  %t410 = load { i64, ptr }, ptr %t409, !tbaa !27
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t413 = getelementptr %"compiler/bindgen:gen", ptr %t411, i32 0, i32 25
  %t414 = load { i64, ptr }, ptr %t413, !tbaa !27
  %t416 = extractvalue { i64, ptr } %t410, 1
  %t417 = extractvalue { i64, ptr } %t410, 0
  %t418 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d286, i32 0, i32 1) }, 1
  %t419 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d286, i32 0, i32 1) }, 0
  %t420 = add i64 %t417, %t419
  %t422 = extractvalue { i64, ptr } %t414, 1
  %t423 = extractvalue { i64, ptr } %t414, 0
  %t424 = add i64 %t420, %t423
  %t425 = load i64, ptr %l189
  %t426 = inttoptr i64 %t425 to ptr
  %t427 = call ptr @__olang_scope_alloc(ptr %t426, i64 %t424)
  call void @olang_textcopy(ptr %t427, ptr %t416, i64 %t417)
  %t428 = getelementptr i8, ptr %t427, i64 %t417
  call void @olang_textcopy(ptr %t428, ptr %t418, i64 %t419)
  %t429 = getelementptr i8, ptr %t428, i64 %t419
  call void @olang_textcopy(ptr %t429, ptr %t422, i64 %t423)
  %t430 = insertvalue { i64, ptr } undef, i64 %t424, 0
  %t431 = insertvalue { i64, ptr } %t430, ptr %t427, 1
  %t433 = load i64, ptr %l189
  %t434 = inttoptr i64 %t433 to ptr
  %t435 = extractvalue { i64, ptr } %t431, 0
  %t436 = extractvalue { i64, ptr } %t431, 1
  %t437 = mul i64 %t435, 1
  %t438 = call ptr @__olang_scope_alloc(ptr %t434, i64 %t437)
  call void @llvm.memcpy.p0.p0.i64(ptr %t438, ptr %t436, i64 %t437, i1 false)
  %t439 = insertvalue { i64, ptr } undef, i64 %t435, 0
  %t440 = insertvalue { i64, ptr } %t439, ptr %t438, 1
  %t441 = load ptr, ptr %l188, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t441, { i64, ptr } %t440)
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s10)
  br label %bb117
bb92:
  %t443 = load { i64, ptr }, ptr %l180, !tbaa !27
  store { i64, ptr } %t443, ptr %l20, !tbaa !27
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t446 = getelementptr %"compiler/bindgen:gen", ptr %t444, i32 0, i32 1
  %t447 = load i1, ptr %t446, !tbaa !21
  br i1 %t447, label %bb93, label %bb94
bb93:
  %t449 = load ptr, ptr %lp18
  %t450 = getelementptr %"compiler/bindgen:cFunc", ptr %t449, i32 0, i32 4
  %t451 = load i1, ptr %t450, !tbaa !21
  br i1 %t451, label %bb95, label %bb96
bb94:
  store i1 false, ptr %l198, !tbaa !21
  br label %bb99
bb95:
  store i1 true, ptr %l200, !tbaa !21
  br label %bb98
bb96:
  %t453 = load ptr, ptr %lp18
  %t454 = getelementptr %"compiler/bindgen:cFunc", ptr %t453, i32 0, i32 5
  %t455 = load { i64, ptr }, ptr %t454, !tbaa !27
  %t457 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s10, { i64, ptr } %t455, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d287, i32 0, i32 1) })
  store i1 %t457, ptr %l202
  br label %bb97
bb97:
  %t458 = load i1, ptr %l202, !tbaa !21
  %t459 = xor i1 %t458, true
  store i1 %t459, ptr %l200, !tbaa !21
  br label %bb98
bb98:
  %t461 = load i1, ptr %l200, !tbaa !21
  store i1 %t461, ptr %l198, !tbaa !21
  br label %bb99
bb99:
  %t462 = load i1, ptr %l198, !tbaa !21
  br i1 %t462, label %bb100, label %bb101
bb100:
  store %olang.scope zeroinitializer, ptr %s23
  %t463 = load ptr, ptr %lp18
  %t464 = getelementptr %"compiler/bindgen:cFunc", ptr %t463, i32 0, i32 5
  %t465 = load { i64, ptr }, ptr %t464, !tbaa !27
  store { i64, ptr } %t465, ptr %l21, !tbaa !27
  %t467 = load ptr, ptr %lp18
  %t468 = getelementptr %"compiler/bindgen:cFunc", ptr %t467, i32 0, i32 4
  %t469 = load i1, ptr %t468, !tbaa !21
  br i1 %t469, label %bb102, label %bb103
bb101:
  br label %bb115
bb102:
  %t471 = load ptr, ptr %l0, !tbaa !29
  %t472 = load ptr, ptr %lp18
  %t475 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrapper(ptr %v0, ptr %v0, ptr %s23, ptr %t471, ptr %t472)
  %t476 = extractvalue { i32, { i64, ptr } } %t475, 1
  %t477 = extractvalue { i32, { i64, ptr } } %t475, 0
  store i32 %t477, ptr %l210
  %t478 = icmp ne i32 %t477, 0
  br i1 %t478, label %bb105, label %ok.479, !prof !99
ok.479:
  store { i64, ptr } %t476, ptr %l209
  br label %bb104
bb103:
  br label %bb111
bb104:
  %t480 = load { i64, ptr }, ptr %l209, !tbaa !27
  store { i64, ptr } %t480, ptr %l206, !tbaa !27
  br label %bb110
bb105:
  %t481 = load i32, ptr %l210, !tbaa !23
  %t482 = ashr i32 %t481, 16
  %t484 = icmp eq i32 %t482, 1
  store i1 %t484, ptr %l212, !tbaa !21
  br label %bb106
bb106:
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t487 = getelementptr %"compiler/bindgen:gen", ptr %t485, i32 0, i32 18
  store ptr %t487, ptr %l214, !tbaa !29
  %t488 = ptrtoint ptr %v0 to i64
  store i64 %t488, ptr %l215, !tbaa !24
  %t489 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t489, label %bb107, label %bb108
bb107:
  %t491 = call ptr @__olang_region_make(ptr %v0)
  %t492 = ptrtoint ptr %t491 to i64
  store i64 %t492, ptr %l215, !tbaa !24
  br label %bb108
bb108:
  %t493 = load ptr, ptr %lp18
  %t494 = getelementptr %"compiler/bindgen:cFunc", ptr %t493, i32 0, i32 0
  %t495 = load { i64, ptr }, ptr %t494, !tbaa !27
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr %"compiler/bindgen:gen", ptr %t496, i32 0, i32 25
  %t499 = load { i64, ptr }, ptr %t498, !tbaa !27
  %t501 = extractvalue { i64, ptr } %t495, 1
  %t502 = extractvalue { i64, ptr } %t495, 0
  %t503 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d288, i32 0, i32 1) }, 1
  %t504 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d288, i32 0, i32 1) }, 0
  %t505 = add i64 %t502, %t504
  %t507 = extractvalue { i64, ptr } %t499, 1
  %t508 = extractvalue { i64, ptr } %t499, 0
  %t509 = add i64 %t505, %t508
  %t510 = load i64, ptr %l215
  %t511 = inttoptr i64 %t510 to ptr
  %t512 = call ptr @__olang_scope_alloc(ptr %t511, i64 %t509)
  call void @olang_textcopy(ptr %t512, ptr %t501, i64 %t502)
  %t513 = getelementptr i8, ptr %t512, i64 %t502
  call void @olang_textcopy(ptr %t513, ptr %t503, i64 %t504)
  %t514 = getelementptr i8, ptr %t513, i64 %t504
  call void @olang_textcopy(ptr %t514, ptr %t507, i64 %t508)
  %t515 = insertvalue { i64, ptr } undef, i64 %t509, 0
  %t516 = insertvalue { i64, ptr } %t515, ptr %t512, 1
  %t518 = load i64, ptr %l215
  %t519 = inttoptr i64 %t518 to ptr
  %t520 = extractvalue { i64, ptr } %t516, 0
  %t521 = extractvalue { i64, ptr } %t516, 1
  %t522 = mul i64 %t520, 1
  %t523 = call ptr @__olang_scope_alloc(ptr %t519, i64 %t522)
  call void @llvm.memcpy.p0.p0.i64(ptr %t523, ptr %t521, i64 %t522, i1 false)
  %t524 = insertvalue { i64, ptr } undef, i64 %t520, 0
  %t525 = insertvalue { i64, ptr } %t524, ptr %t523, 1
  %t526 = load ptr, ptr %l214, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t526, { i64, ptr } %t525)
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s10)
  br label %bb117
bb110:
  %t528 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t529 = extractvalue { i64, ptr } %t528, 0
  %t530 = extractvalue { i64, ptr } %t528, 1
  %t531 = mul i64 %t529, 1
  %t532 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t531)
  call void @llvm.memcpy.p0.p0.i64(ptr %t532, ptr %t530, i64 %t531, i1 false)
  %t533 = insertvalue { i64, ptr } undef, i64 %t529, 0
  %t534 = insertvalue { i64, ptr } %t533, ptr %t532, 1
  store { i64, ptr } %t534, ptr %l21, !tbaa !27
  br label %bb111
bb111:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = getelementptr %"compiler/bindgen:gen", ptr %t536, i32 0, i32 19
  store ptr %t538, ptr %l224, !tbaa !29
  %t539 = ptrtoint ptr %v0 to i64
  store i64 %t539, ptr %l225, !tbaa !24
  %t540 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t540, label %bb112, label %bb113
bb112:
  %t542 = call ptr @__olang_region_make(ptr %v0)
  %t543 = ptrtoint ptr %t542 to i64
  store i64 %t543, ptr %l225, !tbaa !24
  br label %bb113
bb113:
  %t544 = load ptr, ptr %lp18
  %t545 = getelementptr %"compiler/bindgen:cFunc", ptr %t544, i32 0, i32 0
  %t546 = load { i64, ptr }, ptr %t545, !tbaa !27
  %t547 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t549 = extractvalue { i64, ptr } %t546, 1
  %t550 = extractvalue { i64, ptr } %t546, 0
  %t551 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d289, i32 0, i32 1) }, 1
  %t552 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d289, i32 0, i32 1) }, 0
  %t553 = add i64 %t550, %t552
  %t555 = extractvalue { i64, ptr } %t547, 1
  %t556 = extractvalue { i64, ptr } %t547, 0
  %t557 = add i64 %t553, %t556
  %t558 = load i64, ptr %l225
  %t559 = inttoptr i64 %t558 to ptr
  %t560 = call ptr @__olang_scope_alloc(ptr %t559, i64 %t557)
  call void @olang_textcopy(ptr %t560, ptr %t549, i64 %t550)
  %t561 = getelementptr i8, ptr %t560, i64 %t550
  call void @olang_textcopy(ptr %t561, ptr %t551, i64 %t552)
  %t562 = getelementptr i8, ptr %t561, i64 %t552
  call void @olang_textcopy(ptr %t562, ptr %t555, i64 %t556)
  %t563 = insertvalue { i64, ptr } undef, i64 %t557, 0
  %t564 = insertvalue { i64, ptr } %t563, ptr %t560, 1
  %t566 = load i64, ptr %l225
  %t567 = inttoptr i64 %t566 to ptr
  %t568 = extractvalue { i64, ptr } %t564, 0
  %t569 = extractvalue { i64, ptr } %t564, 1
  %t570 = mul i64 %t568, 1
  %t571 = call ptr @__olang_scope_alloc(ptr %t567, i64 %t570)
  call void @llvm.memcpy.p0.p0.i64(ptr %t571, ptr %t569, i64 %t570, i1 false)
  %t572 = insertvalue { i64, ptr } undef, i64 %t568, 0
  %t573 = insertvalue { i64, ptr } %t572, ptr %t571, 1
  %t574 = load ptr, ptr %l224, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t574, { i64, ptr } %t573)
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s23)
  br label %bb115
bb115:
  %t576 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t577 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d290, i32 0, i32 1) }, 1
  %t578 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d290, i32 0, i32 1) }, 0
  %t580 = extractvalue { i64, ptr } %t576, 1
  %t581 = extractvalue { i64, ptr } %t576, 0
  %t582 = add i64 %t578, %t581
  %t583 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d291, i32 0, i32 1) }, 1
  %t584 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d291, i32 0, i32 1) }, 0
  %t585 = add i64 %t582, %t584
  %t586 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t585)
  call void @olang_textcopy(ptr %t586, ptr %t577, i64 %t578)
  %t587 = getelementptr i8, ptr %t586, i64 %t578
  call void @olang_textcopy(ptr %t587, ptr %t580, i64 %t581)
  %t588 = getelementptr i8, ptr %t587, i64 %t581
  call void @olang_textcopy(ptr %t588, ptr %t583, i64 %t584)
  %t589 = insertvalue { i64, ptr } undef, i64 %t585, 0
  %t590 = insertvalue { i64, ptr } %t589, ptr %t586, 1
  %t592 = extractvalue { i64, ptr } %t590, 0
  %t593 = extractvalue { i64, ptr } %t590, 1
  %t594 = mul i64 %t592, 1
  %t595 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t594)
  call void @llvm.memcpy.p0.p0.i64(ptr %t595, ptr %t593, i64 %t594, i1 false)
  %t596 = insertvalue { i64, ptr } undef, i64 %t592, 0
  %t597 = insertvalue { i64, ptr } %t596, ptr %t595, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %l14, { i64, ptr } %t597)
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s10)
  br label %bb117
bb117:
  %t600 = load i64, ptr %l17, !tbaa !24
  %t602 = add i64 %t600, 1
  store i64 %t602, ptr %l17, !tbaa !24
  br label %bb39
bb118:
  %t604 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2emacroFns(ptr %v0, ptr %t604)
  br label %bb119
bb119:
  %t606 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t606, ptr %l238
  br label %bb120
bb120:
  %t607 = load %"std/prelude/text:StringBuilder", ptr %l238
  store %"std/prelude/text:StringBuilder" %t607, ptr %l22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %l22, { i64, ptr } %a1)
  br label %bb121
bb121:
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t613 = getelementptr %"compiler/bindgen:gen", ptr %t611, i32 0, i32 19
  store ptr %t613, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb122
bb122:
  store %olang.scope zeroinitializer, ptr %s31
  %t615 = load i64, ptr %l24, !tbaa !24
  store i64 %t615, ptr %l243, !tbaa !24
  %t616 = load ptr, ptr %l23, !tbaa !29
  %t618 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t616)
  store i64 %t618, ptr %l245
  br label %bb123
bb123:
  %t619 = load i64, ptr %l243, !tbaa !24
  %t620 = load i64, ptr %l245, !tbaa !24
  %t621 = icmp slt i64 %t619, %t620
  %t623 = xor i1 %t621, true
  br i1 %t623, label %bb124, label %bb125
bb124:
  call void @__olang_scope_close(ptr %s31)
  br label %bb130
bb125:
  br label %bb126
bb126:
  %t625 = load ptr, ptr %l23, !tbaa !29
  %t626 = load i64, ptr %l24, !tbaa !24
  %t629 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t625, i64 %t626)
  store { i64, ptr } %t629, ptr %l250
  br label %bb127
bb127:
  %t630 = load { i64, ptr }, ptr %l250, !tbaa !27
  %t632 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d292, i32 0, i32 1) }, 1
  %t633 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d292, i32 0, i32 1) }, 0
  %t635 = extractvalue { i64, ptr } %t630, 1
  %t636 = extractvalue { i64, ptr } %t630, 0
  %t637 = add i64 %t633, %t636
  %t638 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d293, i32 0, i32 1) }, 1
  %t639 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d293, i32 0, i32 1) }, 0
  %t640 = add i64 %t637, %t639
  %t641 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t640)
  call void @olang_textcopy(ptr %t641, ptr %t632, i64 %t633)
  %t642 = getelementptr i8, ptr %t641, i64 %t633
  call void @olang_textcopy(ptr %t642, ptr %t635, i64 %t636)
  %t643 = getelementptr i8, ptr %t642, i64 %t636
  call void @olang_textcopy(ptr %t643, ptr %t638, i64 %t639)
  %t644 = insertvalue { i64, ptr } undef, i64 %t640, 0
  %t645 = insertvalue { i64, ptr } %t644, ptr %t641, 1
  %t647 = extractvalue { i64, ptr } %t645, 0
  %t648 = extractvalue { i64, ptr } %t645, 1
  %t649 = mul i64 %t647, 1
  %t650 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t649)
  call void @llvm.memcpy.p0.p0.i64(ptr %t650, ptr %t648, i64 %t649, i1 false)
  %t651 = insertvalue { i64, ptr } undef, i64 %t647, 0
  %t652 = insertvalue { i64, ptr } %t651, ptr %t650, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s31, ptr %l22, { i64, ptr } %t652)
  br label %bb128
bb128:
  call void @__olang_scope_close(ptr %s31)
  br label %bb129
bb129:
  %t655 = load i64, ptr %l24, !tbaa !24
  %t657 = add i64 %t655, 1
  store i64 %t657, ptr %l24, !tbaa !24
  br label %bb122
bb130:
  %t659 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t659, ptr %l257
  br label %bb131
bb131:
  %t660 = load %"std/prelude/text:StringBuilder", ptr %l257
  store %"std/prelude/text:StringBuilder" %t660, ptr %l26
  %t661 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t661, ptr %l258
  br label %bb132
bb132:
  %t662 = load %"std/prelude/text:StringBuilder", ptr %l258
  store %"std/prelude/text:StringBuilder" %t662, ptr %l27
  store i64 0, ptr %l28, !tbaa !24
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t665 = getelementptr %"compiler/bindgen:gen", ptr %t663, i32 0, i32 5
  %t667 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t665)
  store i64 %t667, ptr %l261
  br label %bb133
bb133:
  %t668 = load i64, ptr %l261, !tbaa !24
  store i64 %t668, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t669 = load i64, ptr %l29, !tbaa !24
  %t670 = load i64, ptr %l28, !tbaa !24
  %t673 = icmp sgt i64 %t669, %t670
  br i1 %t673, label %bb134, label %bb135
bb134:
  %t675 = load i64, ptr %l30, !tbaa !24
  %t677 = icmp sgt i64 %t675, 0
  br i1 %t677, label %bb136, label %bb137
bb135:
  store i64 0, ptr %l265, !tbaa !24
  br label %bb139
bb136:
  %t679 = load i64, ptr %l29, !tbaa !24
  %t680 = load i64, ptr %l28, !tbaa !24
  %t683 = sub i64 %t679, %t680
  %t684 = load i64, ptr %l30, !tbaa !24
  %t687 = add i64 %t683, %t684
  %t689 = sub i64 %t687, 1
  %t690 = load i64, ptr %l30, !tbaa !24
  %t693 = sdiv i64 %t689, %t690
  store i64 %t693, ptr %l268, !tbaa !24
  br label %bb138
bb137:
  store i64 0, ptr %l268, !tbaa !24
  br label %bb138
bb138:
  %t695 = load i64, ptr %l268, !tbaa !24
  store i64 %t695, ptr %l265, !tbaa !24
  br label %bb139
bb139:
  %t696 = load i64, ptr %l265, !tbaa !24
  store i64 %t696, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb140
bb140:
  store %olang.scope zeroinitializer, ptr %s35
  %t697 = load i64, ptr %l32, !tbaa !24
  %t698 = load i64, ptr %l31, !tbaa !24
  %t701 = icmp slt i64 %t697, %t698
  %t703 = xor i1 %t701, true
  br i1 %t703, label %bb141, label %bb142
bb141:
  call void @__olang_scope_close(ptr %s35)
  br label %bb162
bb142:
  br label %bb143
bb143:
  %t705 = load i64, ptr %l28, !tbaa !24
  %t706 = load i64, ptr %l32, !tbaa !24
  %t707 = load i64, ptr %l30, !tbaa !24
  %t710 = mul i64 %t706, %t707
  %t713 = add i64 %t705, %t710
  store i64 %t713, ptr %l33, !tbaa !24
  %t715 = load ptr, ptr %l0, !tbaa !29
  %t717 = getelementptr %"compiler/bindgen:gen", ptr %t715, i32 0, i32 5
  %t718 = load i64, ptr %l33, !tbaa !24
  %t721 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t717, i64 %t718)
  store ptr %t721, ptr %l289
  br label %bb144
bb144:
  %t722 = load ptr, ptr %l289, !tbaa !29
  %t724 = getelementptr %"compiler/bindgen:record", ptr %t722, i32 0, i32 7
  %t725 = load { i64, ptr }, ptr %t724, !tbaa !27
  %t727 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s35, { i64, ptr } %t725, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d294, i32 0, i32 1) })
  store i1 %t727, ptr %l292
  br label %bb145
bb145:
  %t728 = load i1, ptr %l292, !tbaa !21
  br i1 %t728, label %bb146, label %bb147
bb146:
  store i1 true, ptr %l293, !tbaa !21
  br label %bb149
bb147:
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t730 = load i64, ptr %l33, !tbaa !24
  %t733 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewantRecord(ptr %v0, ptr %t729, i64 %t730)
  store i1 %t733, ptr %l296
  br label %bb148
bb148:
  %t734 = load i1, ptr %l296, !tbaa !21
  %t735 = xor i1 %t734, true
  store i1 %t735, ptr %l293, !tbaa !21
  br label %bb149
bb149:
  %t737 = load i1, ptr %l293, !tbaa !21
  br i1 %t737, label %bb150, label %bb151
bb150:
  call void @__olang_scope_close(ptr %s35)
  br label %bb161
bb151:
  br label %bb152
bb152:
  %t738 = load ptr, ptr %l0, !tbaa !29
  %t739 = load i64, ptr %l33, !tbaa !24
  %t742 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %t738, i64 %t739)
  store i1 %t742, ptr %l300
  br label %bb153
bb153:
  %t743 = load i1, ptr %l300, !tbaa !21
  br i1 %t743, label %bb154, label %bb155
bb154:
  store %olang.scope zeroinitializer, ptr %s37
  store ptr %l27, ptr %l301, !tbaa !29
  %t744 = load ptr, ptr %l0, !tbaa !29
  %t745 = load i64, ptr %l33, !tbaa !24
  %t748 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2estructDecl(ptr %v0, ptr %s37, ptr %t744, i64 %t745)
  store { i64, ptr } %t748, ptr %l304
  br label %bb156
bb155:
  store %olang.scope zeroinitializer, ptr %s39
  store ptr %l26, ptr %l307, !tbaa !29
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t751 = getelementptr %"compiler/bindgen:gen", ptr %t749, i32 0, i32 5
  %t752 = load i64, ptr %l33, !tbaa !24
  %t755 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t751, i64 %t752)
  store ptr %t755, ptr %l311
  br label %bb158
bb156:
  %t756 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d295, i32 0, i32 1) }, 1
  %t757 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d295, i32 0, i32 1) }, 0
  %t758 = load { i64, ptr }, ptr %l304, !tbaa !27
  %t759 = extractvalue { i64, ptr } %t758, 1
  %t760 = extractvalue { i64, ptr } %t758, 0
  %t761 = add i64 %t757, %t760
  %t762 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t761)
  call void @olang_textcopy(ptr %t762, ptr %t756, i64 %t757)
  %t763 = getelementptr i8, ptr %t762, i64 %t757
  call void @olang_textcopy(ptr %t763, ptr %t759, i64 %t760)
  %t764 = insertvalue { i64, ptr } undef, i64 %t761, 0
  %t765 = insertvalue { i64, ptr } %t764, ptr %t762, 1
  %t767 = extractvalue { i64, ptr } %t765, 0
  %t768 = extractvalue { i64, ptr } %t765, 1
  %t769 = mul i64 %t767, 1
  %t770 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t769)
  call void @llvm.memcpy.p0.p0.i64(ptr %t770, ptr %t768, i64 %t769, i1 false)
  %t771 = insertvalue { i64, ptr } undef, i64 %t767, 0
  %t772 = insertvalue { i64, ptr } %t771, ptr %t770, 1
  %t773 = load ptr, ptr %l301, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s37, ptr %t773, { i64, ptr } %t772)
  br label %bb157
bb157:
  call void @__olang_scope_close(ptr %s37)
  br label %bb160
bb158:
  %t775 = load ptr, ptr %l311, !tbaa !29
  %t777 = getelementptr %"compiler/bindgen:record", ptr %t775, i32 0, i32 7
  %t778 = load { i64, ptr }, ptr %t777, !tbaa !27
  %t779 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d296, i32 0, i32 1) }, 1
  %t780 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d296, i32 0, i32 1) }, 0
  %t782 = extractvalue { i64, ptr } %t778, 1
  %t783 = extractvalue { i64, ptr } %t778, 0
  %t784 = add i64 %t780, %t783
  %t785 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t786 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
  %t787 = add i64 %t784, %t786
  %t788 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t787)
  call void @olang_textcopy(ptr %t788, ptr %t779, i64 %t780)
  %t789 = getelementptr i8, ptr %t788, i64 %t780
  call void @olang_textcopy(ptr %t789, ptr %t782, i64 %t783)
  %t790 = getelementptr i8, ptr %t789, i64 %t783
  call void @olang_textcopy(ptr %t790, ptr %t785, i64 %t786)
  %t791 = insertvalue { i64, ptr } undef, i64 %t787, 0
  %t792 = insertvalue { i64, ptr } %t791, ptr %t788, 1
  %t794 = extractvalue { i64, ptr } %t792, 0
  %t795 = extractvalue { i64, ptr } %t792, 1
  %t796 = mul i64 %t794, 1
  %t797 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t796)
  call void @llvm.memcpy.p0.p0.i64(ptr %t797, ptr %t795, i64 %t796, i1 false)
  %t798 = insertvalue { i64, ptr } undef, i64 %t794, 0
  %t799 = insertvalue { i64, ptr } %t798, ptr %t797, 1
  %t800 = load ptr, ptr %l307, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s39, ptr %t800, { i64, ptr } %t799)
  br label %bb159
bb159:
  call void @__olang_scope_close(ptr %s39)
  br label %bb160
bb160:
  call void @__olang_scope_close(ptr %s35)
  br label %bb161
bb161:
  %t802 = load i64, ptr %l32, !tbaa !24
  %t804 = add i64 %t802, 1
  store i64 %t804, ptr %l32, !tbaa !24
  br label %bb140
bb162:
  %t807 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l26)
  store i64 %t807, ptr %l319
  br label %bb163
bb163:
  %t808 = load i64, ptr %l319, !tbaa !24
  %t809 = icmp sgt i64 %t808, 0
  br i1 %t809, label %bb164, label %bb165
bb164:
  store i1 true, ptr %l321, !tbaa !21
  br label %bb167
bb165:
  %t812 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l14)
  store i64 %t812, ptr %l323
  br label %bb166
bb166:
  %t813 = load i64, ptr %l323, !tbaa !24
  %t814 = icmp sgt i64 %t813, 0
  store i1 %t814, ptr %l321, !tbaa !21
  br label %bb167
bb167:
  %t816 = load i1, ptr %l321, !tbaa !21
  br i1 %t816, label %bb168, label %bb169
bb168:
  store %olang.scope zeroinitializer, ptr %s42
  store ptr %l22, ptr %l325, !tbaa !29
  %t818 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s42, ptr %l26)
  store { i64, ptr } %t818, ptr %l327
  br label %bb170
bb169:
  br label %bb173
bb170:
  %t820 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s42, ptr %l14)
  store { i64, ptr } %t820, ptr %l329
  br label %bb171
bb171:
  %t821 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d298, i32 0, i32 1) }, 1
  %t822 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d298, i32 0, i32 1) }, 0
  %t823 = load { i64, ptr }, ptr %l327, !tbaa !27
  %t824 = extractvalue { i64, ptr } %t823, 1
  %t825 = extractvalue { i64, ptr } %t823, 0
  %t826 = add i64 %t822, %t825
  %t827 = load { i64, ptr }, ptr %l329, !tbaa !27
  %t828 = extractvalue { i64, ptr } %t827, 1
  %t829 = extractvalue { i64, ptr } %t827, 0
  %t830 = add i64 %t826, %t829
  %t831 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d299, i32 0, i32 1) }, 1
  %t832 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d299, i32 0, i32 1) }, 0
  %t833 = add i64 %t830, %t832
  %t834 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t833)
  call void @olang_textcopy(ptr %t834, ptr %t821, i64 %t822)
  %t835 = getelementptr i8, ptr %t834, i64 %t822
  call void @olang_textcopy(ptr %t835, ptr %t824, i64 %t825)
  %t836 = getelementptr i8, ptr %t835, i64 %t825
  call void @olang_textcopy(ptr %t836, ptr %t828, i64 %t829)
  %t837 = getelementptr i8, ptr %t836, i64 %t829
  call void @olang_textcopy(ptr %t837, ptr %t831, i64 %t832)
  %t838 = insertvalue { i64, ptr } undef, i64 %t833, 0
  %t839 = insertvalue { i64, ptr } %t838, ptr %t834, 1
  %t841 = extractvalue { i64, ptr } %t839, 0
  %t842 = extractvalue { i64, ptr } %t839, 1
  %t843 = mul i64 %t841, 1
  %t844 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t843)
  call void @llvm.memcpy.p0.p0.i64(ptr %t844, ptr %t842, i64 %t843, i1 false)
  %t845 = insertvalue { i64, ptr } undef, i64 %t841, 0
  %t846 = insertvalue { i64, ptr } %t845, ptr %t844, 1
  %t847 = load ptr, ptr %l325, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s42, ptr %t847, { i64, ptr } %t846)
  br label %bb172
bb172:
  call void @__olang_scope_close(ptr %s42)
  br label %bb173
bb173:
  store ptr %l22, ptr %l332, !tbaa !29
  %t850 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l27)
  store { i64, ptr } %t850, ptr %l334
  br label %bb174
bb174:
  %t851 = load { i64, ptr }, ptr %l334, !tbaa !27
  %t852 = extractvalue { i64, ptr } %t851, 0
  %t853 = extractvalue { i64, ptr } %t851, 1
  %t854 = mul i64 %t852, 1
  %t855 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t854)
  call void @llvm.memcpy.p0.p0.i64(ptr %t855, ptr %t853, i64 %t854, i1 false)
  %t856 = insertvalue { i64, ptr } undef, i64 %t852, 0
  %t857 = insertvalue { i64, ptr } %t856, ptr %t855, 1
  %t858 = load ptr, ptr %l332, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t858, { i64, ptr } %t857)
  br label %bb175
bb175:
  %t860 = load ptr, ptr %l0, !tbaa !29
  %t862 = getelementptr %"compiler/bindgen:gen", ptr %t860, i32 0, i32 9
  %t864 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t862)
  store i64 %t864, ptr %l338
  br label %bb176
bb176:
  %t865 = load i64, ptr %l338, !tbaa !24
  %t866 = icmp sgt i64 %t865, 0
  br i1 %t866, label %bb177, label %bb178
bb177:
  store %olang.scope zeroinitializer, ptr %s44
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s44, ptr %l22, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d300, i32 0, i32 1) })
  br label %bb179
bb178:
  br label %bb189
bb179:
  %t869 = load ptr, ptr %l0, !tbaa !29
  %t871 = getelementptr %"compiler/bindgen:gen", ptr %t869, i32 0, i32 9
  store ptr %t871, ptr %l34, !tbaa !29
  store i64 0, ptr %l35, !tbaa !24
  br label %bb180
bb180:
  store %olang.scope zeroinitializer, ptr %s46
  %t873 = load i64, ptr %l35, !tbaa !24
  store i64 %t873, ptr %l343, !tbaa !24
  %t874 = load ptr, ptr %l34, !tbaa !29
  %t876 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t874)
  store i64 %t876, ptr %l345
  br label %bb181
bb181:
  %t877 = load i64, ptr %l343, !tbaa !24
  %t878 = load i64, ptr %l345, !tbaa !24
  %t879 = icmp slt i64 %t877, %t878
  %t881 = xor i1 %t879, true
  br i1 %t881, label %bb182, label %bb183
bb182:
  call void @__olang_scope_close(ptr %s46)
  br label %bb188
bb183:
  br label %bb184
bb184:
  %t883 = load ptr, ptr %l34, !tbaa !29
  %t884 = load i64, ptr %l35, !tbaa !24
  %t887 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t883, i64 %t884)
  store { i64, ptr } %t887, ptr %l350
  br label %bb185
bb185:
  %t888 = load { i64, ptr }, ptr %l350, !tbaa !27
  %t891 = extractvalue { i64, ptr } %t888, 1
  %t892 = extractvalue { i64, ptr } %t888, 0
  %t893 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d301, i32 0, i32 1) }, 1
  %t894 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d301, i32 0, i32 1) }, 0
  %t895 = add i64 %t892, %t894
  %t896 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t895)
  call void @olang_textcopy(ptr %t896, ptr %t891, i64 %t892)
  %t897 = getelementptr i8, ptr %t896, i64 %t892
  call void @olang_textcopy(ptr %t897, ptr %t893, i64 %t894)
  %t898 = insertvalue { i64, ptr } undef, i64 %t895, 0
  %t899 = insertvalue { i64, ptr } %t898, ptr %t896, 1
  %t901 = extractvalue { i64, ptr } %t899, 0
  %t902 = extractvalue { i64, ptr } %t899, 1
  %t903 = mul i64 %t901, 1
  %t904 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t903)
  call void @llvm.memcpy.p0.p0.i64(ptr %t904, ptr %t902, i64 %t903, i1 false)
  %t905 = insertvalue { i64, ptr } undef, i64 %t901, 0
  %t906 = insertvalue { i64, ptr } %t905, ptr %t904, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s46, ptr %l22, { i64, ptr } %t906)
  br label %bb186
bb186:
  call void @__olang_scope_close(ptr %s46)
  br label %bb187
bb187:
  %t909 = load i64, ptr %l35, !tbaa !24
  %t911 = add i64 %t909, 1
  store i64 %t911, ptr %l35, !tbaa !24
  br label %bb180
bb188:
  call void @__olang_scope_close(ptr %s44)
  br label %bb189
bb189:
  %t913 = load ptr, ptr %l0, !tbaa !29
  %t915 = getelementptr %"compiler/bindgen:gen", ptr %t913, i32 0, i32 14
  %t917 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t915)
  store i64 %t917, ptr %l359
  br label %bb190
bb190:
  %t918 = load i64, ptr %l359, !tbaa !24
  %t919 = icmp sgt i64 %t918, 0
  br i1 %t919, label %bb191, label %bb192
bb191:
  store %olang.scope zeroinitializer, ptr %s49
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s49, ptr %l22, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d302, i32 0, i32 1) })
  br label %bb193
bb192:
  br label %bb203
bb193:
  %t922 = load ptr, ptr %l0, !tbaa !29
  %t924 = getelementptr %"compiler/bindgen:gen", ptr %t922, i32 0, i32 14
  store ptr %t924, ptr %l37, !tbaa !29
  store i64 0, ptr %l38, !tbaa !24
  br label %bb194
bb194:
  store %olang.scope zeroinitializer, ptr %s51
  %t926 = load i64, ptr %l38, !tbaa !24
  store i64 %t926, ptr %l364, !tbaa !24
  %t927 = load ptr, ptr %l37, !tbaa !29
  %t929 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t927)
  store i64 %t929, ptr %l366
  br label %bb195
bb195:
  %t930 = load i64, ptr %l364, !tbaa !24
  %t931 = load i64, ptr %l366, !tbaa !24
  %t932 = icmp slt i64 %t930, %t931
  %t934 = xor i1 %t932, true
  br i1 %t934, label %bb196, label %bb197
bb196:
  call void @__olang_scope_close(ptr %s51)
  br label %bb202
bb197:
  br label %bb198
bb198:
  %t936 = load ptr, ptr %l37, !tbaa !29
  %t937 = load i64, ptr %l38, !tbaa !24
  %t940 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t936, i64 %t937)
  store { i64, ptr } %t940, ptr %l371
  br label %bb199
bb199:
  %t941 = load { i64, ptr }, ptr %l371, !tbaa !27
  %t944 = extractvalue { i64, ptr } %t941, 1
  %t945 = extractvalue { i64, ptr } %t941, 0
  %t946 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d303, i32 0, i32 1) }, 1
  %t947 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d303, i32 0, i32 1) }, 0
  %t948 = add i64 %t945, %t947
  %t949 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t948)
  call void @olang_textcopy(ptr %t949, ptr %t944, i64 %t945)
  %t950 = getelementptr i8, ptr %t949, i64 %t945
  call void @olang_textcopy(ptr %t950, ptr %t946, i64 %t947)
  %t951 = insertvalue { i64, ptr } undef, i64 %t948, 0
  %t952 = insertvalue { i64, ptr } %t951, ptr %t949, 1
  %t954 = extractvalue { i64, ptr } %t952, 0
  %t955 = extractvalue { i64, ptr } %t952, 1
  %t956 = mul i64 %t954, 1
  %t957 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t956)
  call void @llvm.memcpy.p0.p0.i64(ptr %t957, ptr %t955, i64 %t956, i1 false)
  %t958 = insertvalue { i64, ptr } undef, i64 %t954, 0
  %t959 = insertvalue { i64, ptr } %t958, ptr %t957, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s51, ptr %l22, { i64, ptr } %t959)
  br label %bb200
bb200:
  call void @__olang_scope_close(ptr %s51)
  br label %bb201
bb201:
  %t962 = load i64, ptr %l38, !tbaa !24
  %t964 = add i64 %t962, 1
  store i64 %t964, ptr %l38, !tbaa !24
  br label %bb194
bb202:
  call void @__olang_scope_close(ptr %s49)
  br label %bb203
bb203:
  %t966 = load ptr, ptr %l0, !tbaa !29
  %t968 = getelementptr %"compiler/bindgen:gen", ptr %t966, i32 0, i32 18
  %t970 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t968)
  store i64 %t970, ptr %l380
  br label %bb204
bb204:
  %t971 = load i64, ptr %l380, !tbaa !24
  %t972 = icmp sgt i64 %t971, 0
  br i1 %t972, label %bb205, label %bb206
bb205:
  store %olang.scope zeroinitializer, ptr %s54
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s54, ptr %l22, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d304, i32 0, i32 1) })
  br label %bb207
bb206:
  br label %bb217
bb207:
  %t975 = load ptr, ptr %l0, !tbaa !29
  %t977 = getelementptr %"compiler/bindgen:gen", ptr %t975, i32 0, i32 18
  store ptr %t977, ptr %l40, !tbaa !29
  store i64 0, ptr %l41, !tbaa !24
  br label %bb208
bb208:
  store %olang.scope zeroinitializer, ptr %s56
  %t979 = load i64, ptr %l41, !tbaa !24
  store i64 %t979, ptr %l385, !tbaa !24
  %t980 = load ptr, ptr %l40, !tbaa !29
  %t982 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t980)
  store i64 %t982, ptr %l387
  br label %bb209
bb209:
  %t983 = load i64, ptr %l385, !tbaa !24
  %t984 = load i64, ptr %l387, !tbaa !24
  %t985 = icmp slt i64 %t983, %t984
  %t987 = xor i1 %t985, true
  br i1 %t987, label %bb210, label %bb211
bb210:
  call void @__olang_scope_close(ptr %s56)
  br label %bb216
bb211:
  br label %bb212
bb212:
  %t989 = load ptr, ptr %l40, !tbaa !29
  %t990 = load i64, ptr %l41, !tbaa !24
  %t993 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t989, i64 %t990)
  store { i64, ptr } %t993, ptr %l392
  br label %bb213
bb213:
  %t994 = load { i64, ptr }, ptr %l392, !tbaa !27
  %t996 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d305, i32 0, i32 1) }, 1
  %t997 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d305, i32 0, i32 1) }, 0
  %t999 = extractvalue { i64, ptr } %t994, 1
  %t1000 = extractvalue { i64, ptr } %t994, 0
  %t1001 = add i64 %t997, %t1000
  %t1002 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d306, i32 0, i32 1) }, 1
  %t1003 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d306, i32 0, i32 1) }, 0
  %t1004 = add i64 %t1001, %t1003
  %t1005 = call ptr @__olang_scope_alloc(ptr %s56, i64 %t1004)
  call void @olang_textcopy(ptr %t1005, ptr %t996, i64 %t997)
  %t1006 = getelementptr i8, ptr %t1005, i64 %t997
  call void @olang_textcopy(ptr %t1006, ptr %t999, i64 %t1000)
  %t1007 = getelementptr i8, ptr %t1006, i64 %t1000
  call void @olang_textcopy(ptr %t1007, ptr %t1002, i64 %t1003)
  %t1008 = insertvalue { i64, ptr } undef, i64 %t1004, 0
  %t1009 = insertvalue { i64, ptr } %t1008, ptr %t1005, 1
  %t1011 = extractvalue { i64, ptr } %t1009, 0
  %t1012 = extractvalue { i64, ptr } %t1009, 1
  %t1013 = mul i64 %t1011, 1
  %t1014 = call ptr @__olang_scope_alloc(ptr %s56, i64 %t1013)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1014, ptr %t1012, i64 %t1013, i1 false)
  %t1015 = insertvalue { i64, ptr } undef, i64 %t1011, 0
  %t1016 = insertvalue { i64, ptr } %t1015, ptr %t1014, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s56, ptr %l22, { i64, ptr } %t1016)
  br label %bb214
bb214:
  call void @__olang_scope_close(ptr %s56)
  br label %bb215
bb215:
  %t1019 = load i64, ptr %l41, !tbaa !24
  %t1021 = add i64 %t1019, 1
  store i64 %t1021, ptr %l41, !tbaa !24
  br label %bb208
bb216:
  call void @__olang_scope_close(ptr %s54)
  br label %bb217
bb217:
  %t1024 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l22)
  store { i64, ptr } %t1024, ptr %l400
  br label %bb218
bb218:
  call void @__olang_scope_close(ptr %s0)
  %t1025 = load { i64, ptr }, ptr %l400, !tbaa !27
  store { i64, ptr } %t1025, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ectokens(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i8
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca { i64, ptr }
  %l21 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l25 = alloca i1
  %l32 = alloca i1
  %l33 = alloca { i64, ptr }
  %l36 = alloca i1
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l41 = alloca i1
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l65 = alloca i64
  %l67 = alloca { i64, ptr }
  %l68 = alloca i64
  %l69 = alloca i64
  %l70 = alloca i64
  %l79 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l81 = alloca i64
  %l82 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
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
  store i64 0, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t11 = icmp slt i64 %t5, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb59
bb4:
  br label %bb5
bb5:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t15, ptr %l11, !tbaa !27
  %t16 = load i64, ptr %l2, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  store i8 %t21, ptr %l3, !tbaa !22
  %t23 = load i8, ptr %l3, !tbaa !22
  %t25 = icmp eq i8 %t23, 32
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb58
bb7:
  br label %bb8
bb8:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l4, !tbaa !24
  %t35 = load i8, ptr %l3, !tbaa !22
  %t37 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t35)
  store i1 %t37, ptr %l21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb13
bb11:
  %t39 = load i8, ptr %l3, !tbaa !22
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t39)
  store i1 %t41, ptr %l24
  br label %bb12
bb12:
  %t42 = load i1, ptr %l24, !tbaa !21
  store i1 %t42, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l22, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb16
bb15:
  %t44 = load i8, ptr %l3, !tbaa !22
  %t46 = icmp eq i8 %t44, 95
  store i1 %t46, ptr %l25, !tbaa !21
  br label %bb16
bb16:
  %t48 = load i1, ptr %l25, !tbaa !21
  br i1 %t48, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  %t49 = load i8, ptr %l3, !tbaa !22
  %t51 = icmp eq i8 %t49, 46
  br i1 %t51, label %bb36, label %bb37
bb19:
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t59 = icmp slt i64 %t53, %t56
  br i1 %t59, label %bb20, label %bb21
bb20:
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t61, ptr %l33, !tbaa !27
  %t62 = load i64, ptr %l4, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i8, ptr %t65, i64 %t62
  %t67 = load i8, ptr %t66, !tbaa !32
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t67)
  store i1 %t69, ptr %l36
  br label %bb22
bb21:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb30
bb22:
  %t70 = load i1, ptr %l36, !tbaa !21
  br i1 %t70, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb26
bb24:
  %t71 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t71, ptr %l38, !tbaa !27
  %t72 = load i64, ptr %l4, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i8, ptr %t75, i64 %t72
  %t77 = load i8, ptr %t76, !tbaa !32
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t77)
  store i1 %t79, ptr %l41
  br label %bb25
bb25:
  %t80 = load i1, ptr %l41, !tbaa !21
  store i1 %t80, ptr %l37, !tbaa !21
  br label %bb26
bb26:
  %t81 = load i1, ptr %l37, !tbaa !21
  br i1 %t81, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb29
bb28:
  %t82 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t82, ptr %l43, !tbaa !27
  %t83 = load i64, ptr %l4, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i8, ptr %t86, i64 %t83
  %t88 = load i8, ptr %t87, !tbaa !32
  %t90 = icmp eq i8 %t88, 95
  store i1 %t90, ptr %l42, !tbaa !21
  br label %bb29
bb29:
  %t92 = load i1, ptr %l42, !tbaa !21
  store i1 %t92, ptr %l32, !tbaa !21
  br label %bb30
bb30:
  %t93 = load i1, ptr %l32, !tbaa !21
  %t94 = xor i1 %t93, true
  br i1 %t94, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  br label %bb33
bb33:
  %t96 = load i64, ptr %l4, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l4, !tbaa !24
  br label %bb34
bb34:
  br label %bb19
bb35:
  br label %bb48
bb36:
  br label %bb38
bb37:
  br label %bb47
bb38:
  %t100 = load i64, ptr %l4, !tbaa !24
  %t101 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t106 = icmp slt i64 %t100, %t103
  br i1 %t106, label %bb39, label %bb40
bb39:
  %t108 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t108, ptr %l57, !tbaa !27
  %t109 = load i64, ptr %l4, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i8, ptr %t112, i64 %t109
  %t114 = load i8, ptr %t113, !tbaa !32
  %t116 = icmp eq i8 %t114, 46
  store i1 %t116, ptr %l56, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb41
bb41:
  %t118 = load i1, ptr %l56, !tbaa !21
  %t119 = xor i1 %t118, true
  br i1 %t119, label %bb42, label %bb43
bb42:
  br label %bb46
bb43:
  br label %bb44
bb44:
  %t121 = load i64, ptr %l4, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l4, !tbaa !24
  br label %bb45
bb45:
  br label %bb38
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t125 = load ptr, ptr %lp1
  store ptr %t125, ptr %l64, !tbaa !29
  %t126 = ptrtoint ptr %v1 to i64
  store i64 %t126, ptr %l65, !tbaa !24
  %t127 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t127, label %bb49, label %bb50
bb49:
  %t129 = call ptr @__olang_region_make(ptr %v1)
  %t130 = ptrtoint ptr %t129 to i64
  store i64 %t130, ptr %l65, !tbaa !24
  br label %bb50
bb50:
  %t131 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t131, ptr %l67, !tbaa !27
  %t132 = load i64, ptr %l2, !tbaa !24
  store i64 %t132, ptr %l68, !tbaa !24
  %t133 = load i64, ptr %l4, !tbaa !24
  store i64 %t133, ptr %l69, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 0
  store i64 %t135, ptr %l70, !tbaa !24
  %t136 = load i64, ptr %l68, !tbaa !24
  %t137 = icmp sge i64 %t136, 0
  br i1 %t137, label %bb51, label %bb52
bb51:
  %t139 = load i64, ptr %l68, !tbaa !24
  %t140 = load i64, ptr %l69, !tbaa !24
  %t141 = icmp sle i64 %t139, %t140
  br i1 %t141, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_12d4b4c126d079e6_1af6ce2ce1af3fd2)
  unreachable
bb53:
  %t143 = load i64, ptr %l69, !tbaa !24
  %t144 = load i64, ptr %l70, !tbaa !24
  %t145 = icmp sle i64 %t143, %t144
  br i1 %t145, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_12d4b4c126d079e6_1af6ce2ce1af3fd2)
  unreachable
bb55:
  %t147 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = load i64, ptr %l68, !tbaa !24
  %t150 = load i64, ptr %l69, !tbaa !24
  %t151 = getelementptr i8, ptr %t148, i64 %t149
  %t152 = sub i64 %t150, %t149
  %t153 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t151, 1
  %t156 = extractvalue { i64, ptr } %t154, 1
  %t157 = extractvalue { i64, ptr } %t154, 0
  %t158 = load i64, ptr %l65
  %t159 = inttoptr i64 %t158 to ptr
  %t160 = call ptr @__olang_scope_alloc(ptr %t159, i64 %t157)
  call void @olang_textcopy(ptr %t160, ptr %t156, i64 %t157)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  %t164 = load i64, ptr %l65
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = extractvalue { i64, ptr } %t162, 0
  %t167 = extractvalue { i64, ptr } %t162, 1
  %t168 = mul i64 %t166, 1
  %t169 = call ptr @__olang_scope_alloc(ptr %t165, i64 %t168)
  call void @llvm.memcpy.p0.p0.i64(ptr %t169, ptr %t167, i64 %t168, i1 false)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  %t172 = load ptr, ptr %l64, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t172, { i64, ptr } %t171)
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_12d4b4c126d079e6_1af6ce2ce1af3fd2)
  unreachable
bb57:
  %t174 = load i64, ptr %l4, !tbaa !24
  store i64 %t174, ptr %l2, !tbaa !24
  br label %bb58
bb58:
  br label %bb2
bb59:
  %t176 = load ptr, ptr %lp1
  %t178 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %v1, ptr %t176)
  store { i64, ptr } %t178, ptr %l79
  br label %bb60
bb60:
  %t179 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t179, ptr %l80, !tbaa !27
  %t180 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t180, 0
  store i64 %t181, ptr %l81, !tbaa !24
  %t182 = load i64, ptr %l81, !tbaa !24
  %t183 = mul i64 %t182, 16
  %t184 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t183)
  %t185 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t184, 1
  store { i64, ptr } %t186, ptr %l82, !tbaa !27
  %t187 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = load i64, ptr %l81, !tbaa !24
  %t192 = mul i64 %t191, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t188, ptr %t190, i64 %t192, i1 false)
  %t193 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t193, ptr %l80, !tbaa !27
  %t194 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t194, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fbindgen_2erun(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca [2 x { i64, ptr }]
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/bindgen:gen"
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"std/os:Output"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l32 = alloca { i64, ptr }
  %l34 = alloca i1
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i32
  %l43 = alloca i1
  %l53 = alloca i1
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i32
  %l65 = alloca i1
  %l69 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l77 = alloca %"compiler/bindgen:gen"
  %l85 = alloca i32
  %l87 = alloca i1
  %l95 = alloca i32
  %l97 = alloca i32
  %l99 = alloca i1
  %l102 = alloca %"std/os:Output"
  %l105 = alloca { i64, ptr }
  %l106 = alloca %"std/os:Output"
  %l107 = alloca i32
  %l109 = alloca i1
  %l111 = alloca { i64, ptr }
  %l112 = alloca i32
  %l114 = alloca i32
  %l116 = alloca i1
  %l127 = alloca i32
  %l129 = alloca i32
  %l131 = alloca i1
  %l134 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l141 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l142 = alloca %"std/prelude/text:StringBuilder"
  %l148 = alloca i64
  %l150 = alloca i64
  %l156 = alloca i64
  %l157 = alloca ptr
  %l158 = alloca i64
  %l159 = alloca i64
  %l162 = alloca %"compiler/bindgen:cMacro"
  %l168 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l173 = alloca i32
  %l175 = alloca i1
  %l183 = alloca i32
  %l185 = alloca i32
  %l187 = alloca i1
  %l190 = alloca ptr
  %l191 = alloca ptr
  %l192 = alloca { i64, ptr }
  %l197 = alloca ptr
  %l198 = alloca i32
  %l200 = alloca i1
  %l207 = alloca i32
  %l209 = alloca i32
  %l211 = alloca i1
  %l218 = alloca { i64, ptr }
  %l226 = alloca { i64, ptr }
  %l230 = alloca { i64, ptr }
  %l232 = alloca { i64, ptr }
  %l234 = alloca i1
  %l236 = alloca i1
  %l238 = alloca i1
  %l240 = alloca i64
  %l242 = alloca i64
  %l243 = alloca i64
  %l247 = alloca { i64, ptr }
  %l248 = alloca i64
  %l249 = alloca i32
  %l250 = alloca i64
  %l251 = alloca i32
  %l254 = alloca i1
  %l255 = alloca i64
  %l257 = alloca i64
  %l260 = alloca { i64, ptr }
  %l268 = alloca { i64, ptr }
  %l272 = alloca { i64, ptr }
  %l274 = alloca i1
  %l275 = alloca i64
  %l276 = alloca { i64, ptr }
  %l277 = alloca i64
  %l278 = alloca i32
  %l279 = alloca i64
  %l280 = alloca i32
  %l281 = alloca ptr
  %l282 = alloca ptr
  %l285 = alloca i64
  %l286 = alloca %"compiler/bindgen:cMacro"
  %l294 = alloca ptr
  %l295 = alloca { i64, ptr }
  %l301 = alloca i32
  %l303 = alloca i1
  %l310 = alloca i32
  %l312 = alloca i32
  %l314 = alloca i1
  %l321 = alloca { i64, ptr }
  %l323 = alloca i1
  %l325 = alloca i32
  %l327 = alloca i1
  %l330 = alloca i32
  %l332 = alloca i32
  %l334 = alloca i1
  %l337 = alloca i32
  %l339 = alloca i32
  %l341 = alloca i1
  %l346 = alloca i32
  %l348 = alloca i1
  %l356 = alloca i32
  %l358 = alloca i32
  %l360 = alloca i1
  %l363 = alloca i32
  %l365 = alloca i32
  %l367 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s43 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %s62 = alloca %olang.scope
  %rv = alloca i32
  %t119 = alloca %"compiler/bindgen:gen", align 8
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d307, i32 0, i32 1) })
  store i1 %t3, ptr %l34
  br label %bb1
bb1:
  %t4 = load i1, ptr %l34, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l3, !tbaa !29
  store { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d308, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l36, !tbaa !27
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s1, ptr %t5, { i64, ptr } %t7)
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb5:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %s0, { i64, ptr } %t9)
  %t12 = extractvalue { i32, { i64, ptr } } %t11, 1
  %t13 = extractvalue { i32, { i64, ptr } } %t11, 0
  store i32 %t13, ptr %l41
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb7, label %ok.15, !prof !99
ok.15:
  store { i64, ptr } %t12, ptr %l40
  br label %bb6
bb6:
  %t16 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t16, ptr %l38, !tbaa !27
  br label %bb12
bb7:
  %t17 = load i32, ptr %l41, !tbaa !23
  %t18 = ashr i32 %t17, 16
  %t20 = icmp eq i32 %t18, 1
  store i1 %t20, ptr %l43, !tbaa !21
  %t21 = load i32, ptr %l41, !tbaa !23
  %t22 = ashr i32 %t21, 16
  %t24 = icmp eq i32 %t22, 1
  br i1 %t24, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t27 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d309, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d309, i32 0, i32 1) }, 0
  %t31 = extractvalue { i64, ptr } %t27, 1
  %t32 = extractvalue { i64, ptr } %t27, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d310, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d310, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t37 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t28, i64 %t29)
  %t38 = getelementptr i8, ptr %t37, i64 %t29
  call void @olang_textcopy(ptr %t38, ptr %t31, i64 %t32)
  %t39 = getelementptr i8, ptr %t38, i64 %t32
  call void @olang_textcopy(ptr %t39, ptr %t34, i64 %t35)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t37, 1
  %t44 = extractvalue { i64, ptr } %t41, 0
  %t45 = extractvalue { i64, ptr } %t41, 1
  %t46 = mul i64 %t44, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t46)
  call void @llvm.memcpy.p0.p0.i64(ptr %t47, ptr %t45, i64 %t46, i1 false)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s2, ptr %t26, { i64, ptr } %t49)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb12:
  %t53 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t53, ptr %l4, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t56 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t54)
  store i1 %t56, ptr %l53
  br label %bb13
bb13:
  %t57 = load i1, ptr %l53, !tbaa !21
  %t58 = xor i1 %t57, true
  br i1 %t58, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t62 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d311, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d311, i32 0, i32 1) }, 0
  %t65 = extractvalue { i64, ptr } %t61, 1
  %t66 = extractvalue { i64, ptr } %t61, 0
  %t67 = add i64 %t63, %t66
  %t68 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d312, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d312, i32 0, i32 1) }, 0
  %t70 = add i64 %t67, %t69
  %t71 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t70)
  call void @olang_textcopy(ptr %t71, ptr %t62, i64 %t63)
  %t72 = getelementptr i8, ptr %t71, i64 %t63
  call void @olang_textcopy(ptr %t72, ptr %t65, i64 %t66)
  %t73 = getelementptr i8, ptr %t72, i64 %t66
  call void @olang_textcopy(ptr %t73, ptr %t68, i64 %t69)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t71, 1
  %t78 = extractvalue { i64, ptr } %t75, 0
  %t79 = extractvalue { i64, ptr } %t75, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s4, ptr %t60, { i64, ptr } %t83)
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb17:
  %t87 = call { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d313, i32 0, i32 1) }, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d314, i32 0, i32 1) })
  %t88 = extractvalue { i32, { i64, ptr } } %t87, 1
  %t89 = extractvalue { i32, { i64, ptr } } %t87, 0
  store i32 %t89, ptr %l63
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb19, label %ok.91, !prof !99
ok.91:
  store { i64, ptr } %t88, ptr %l62
  br label %bb18
bb18:
  %t92 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t92, ptr %l61, !tbaa !27
  br label %bb24
bb19:
  %t93 = load i32, ptr %l63, !tbaa !23
  %t94 = ashr i32 %t93, 16
  %t96 = icmp eq i32 %t94, 1
  store i1 %t96, ptr %l65, !tbaa !21
  %t97 = load i32, ptr %l63, !tbaa !23
  %t98 = ashr i32 %t97, 16
  %t100 = icmp eq i32 %t98, 1
  br i1 %t100, label %bb20, label %bb21
bb20:
  call void @__olang_errpay_pop()
  br label %bb21
bb21:
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s6
  %t102 = load ptr, ptr %l3, !tbaa !29
  store { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d315, i32 0, i32 1) }, ptr %l69, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l69, !tbaa !27
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s6, ptr %t102, { i64, ptr } %t104)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb24:
  %t106 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t106, ptr %l5, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t109 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t107, 0
  %t110 = insertvalue [2 x { i64, ptr }] %t109, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t110, ptr %l6
  %t113 = insertvalue { i64, ptr } undef, i64 2, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %l6, 1
  %t116 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t114)
  store { i64, ptr } %t116, ptr %l75
  br label %bb25
bb25:
  %t117 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t117, ptr %l7, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fbindgen_3agen_2ector(ptr %t119, ptr %s0, ptr %s0, { i64, ptr } %t118)
  call void @llvm.memmove.p0.p0.i64(ptr %l77, ptr %t119, i64 1128, i1 false)
  br label %bb26
bb26:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l77, i64 1128, i1 false)
  %t121 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t122 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
  %t125 = extractvalue { i64, ptr } %t121, 1
  %t126 = extractvalue { i64, ptr } %t121, 0
  %t127 = add i64 %t123, %t126
  %t128 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d318, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d318, i32 0, i32 1) }, 0
  %t130 = add i64 %t127, %t129
  %t131 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t130)
  call void @olang_textcopy(ptr %t131, ptr %t122, i64 %t123)
  %t132 = getelementptr i8, ptr %t131, i64 %t123
  call void @olang_textcopy(ptr %t132, ptr %t125, i64 %t126)
  %t133 = getelementptr i8, ptr %t132, i64 %t126
  call void @olang_textcopy(ptr %t133, ptr %t128, i64 %t129)
  %t134 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t131, 1
  store { i64, ptr } %t135, ptr %l9, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 1
  %t141 = extractvalue { i64, ptr } %t138, 0
  %t142 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d319, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d319, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t145 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t144)
  call void @olang_textcopy(ptr %t145, ptr %t140, i64 %t141)
  %t146 = getelementptr i8, ptr %t145, i64 %t141
  call void @olang_textcopy(ptr %t146, ptr %t142, i64 %t143)
  %t147 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t145, 1
  %t151 = extractvalue { i64, ptr } %t148, 0
  %t152 = extractvalue { i64, ptr } %t148, 1
  %t153 = mul i64 %t151, 1
  %t154 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t153)
  call void @llvm.memcpy.p0.p0.i64(ptr %t154, ptr %t152, i64 %t153, i1 false)
  %t155 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t154, 1
  %t159 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t137, { i64, ptr } %t156)
  store i32 %t159, ptr %l85
  %t160 = icmp ne i32 %t159, 0
  br i1 %t160, label %bb28, label %ok.161, !prof !99
ok.161:
  br label %bb27
bb27:
  br label %bb39
bb28:
  %t162 = load i32, ptr %l85, !tbaa !23
  %t163 = ashr i32 %t162, 16
  %t165 = icmp eq i32 %t163, 1
  store i1 %t165, ptr %l87, !tbaa !21
  %t166 = load i32, ptr %l85, !tbaa !23
  %t167 = ashr i32 %t166, 16
  %t169 = icmp eq i32 %t167, 1
  br i1 %t169, label %bb29, label %bb30
bb29:
  call void @__olang_errpay_pop()
  br label %bb30
bb30:
  br label %bb31
bb31:
  store %olang.scope zeroinitializer, ptr %s9
  %t171 = load ptr, ptr %l3, !tbaa !29
  %t172 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t173 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d320, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d320, i32 0, i32 1) }, 0
  %t176 = extractvalue { i64, ptr } %t172, 1
  %t177 = extractvalue { i64, ptr } %t172, 0
  %t178 = add i64 %t174, %t177
  %t179 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d321, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d321, i32 0, i32 1) }, 0
  %t181 = add i64 %t178, %t180
  %t182 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t181)
  call void @olang_textcopy(ptr %t182, ptr %t173, i64 %t174)
  %t183 = getelementptr i8, ptr %t182, i64 %t174
  call void @olang_textcopy(ptr %t183, ptr %t176, i64 %t177)
  %t184 = getelementptr i8, ptr %t183, i64 %t177
  call void @olang_textcopy(ptr %t184, ptr %t179, i64 %t180)
  %t185 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t182, 1
  %t189 = extractvalue { i64, ptr } %t186, 0
  %t190 = extractvalue { i64, ptr } %t186, 1
  %t191 = mul i64 %t189, 1
  %t192 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t192, ptr %t190, i64 %t191, i1 false)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t192, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s9, ptr %t171, { i64, ptr } %t194)
  br label %bb32
bb32:
  store i32 2, ptr %l95, !tbaa !23
  call void @__olang_scope_close(ptr %s9)
  %t197 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t199 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t197)
  store i32 %t199, ptr %l97
  %t200 = icmp ne i32 %t199, 0
  br i1 %t200, label %bb34, label %ok.201, !prof !99
ok.201:
  br label %bb33
bb33:
  br label %bb38
bb34:
  %t202 = load i32, ptr %l97, !tbaa !23
  %t203 = ashr i32 %t202, 16
  %t205 = icmp eq i32 %t203, 1
  store i1 %t205, ptr %l99, !tbaa !21
  %t206 = load i32, ptr %l97, !tbaa !23
  %t207 = ashr i32 %t206, 16
  %t209 = icmp eq i32 %t207, 1
  br i1 %t209, label %bb35, label %bb36
bb35:
  call void @__olang_errpay_pop()
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t211 = load i32, ptr %l95, !tbaa !23
  store i32 %t211, ptr %rv
  br label %ret
bb39:
  %t212 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t214 = mul i64 7, 16
  %t215 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t214)
  %t216 = insertvalue { i64, ptr } undef, i64 7, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  store { i64, ptr } %t217, ptr %l105, !tbaa !27
  %t219 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = getelementptr { i64, ptr }, ptr %t220, i64 0
  store { i64, ptr } %t212, ptr %t221, !tbaa !37
  %t222 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr { i64, ptr }, ptr %t223, i64 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d322, i32 0, i32 1) }, ptr %t224, !tbaa !37
  %t225 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr { i64, ptr }, ptr %t226, i64 2
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d323, i32 0, i32 1) }, ptr %t227, !tbaa !37
  %t228 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr { i64, ptr }, ptr %t229, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d324, i32 0, i32 1) }, ptr %t230, !tbaa !37
  %t231 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr { i64, ptr }, ptr %t232, i64 4
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d325, i32 0, i32 1) }, ptr %t233, !tbaa !37
  %t234 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = getelementptr { i64, ptr }, ptr %t235, i64 5
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d326, i32 0, i32 1) }, ptr %t236, !tbaa !37
  %t238 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !27
  %t240 = getelementptr { i64, ptr }, ptr %t239, i64 6
  store { i64, ptr } %t213, ptr %t240, !tbaa !37
  %t241 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t242 = call { i32, %"std/os:Output" } @compiler_2fbindgen_2eclangSays(ptr %s0, ptr %s0, { i64, ptr } %t241)
  %t243 = extractvalue { i32, %"std/os:Output" } %t242, 1
  %t244 = extractvalue { i32, %"std/os:Output" } %t242, 0
  store i32 %t244, ptr %l107
  %t245 = icmp ne i32 %t244, 0
  br i1 %t245, label %bb41, label %ok.246, !prof !99
ok.246:
  store %"std/os:Output" %t243, ptr %l106
  br label %bb40
bb40:
  %t247 = load %"std/os:Output", ptr %l106
  store %"std/os:Output" %t247, ptr %l102
  br label %bb50
bb41:
  %t248 = load i32, ptr %l107, !tbaa !23
  %t249 = ashr i32 %t248, 16
  %t251 = icmp eq i32 %t249, 1
  store i1 %t251, ptr %l109, !tbaa !21
  br label %bb42
bb42:
  store %olang.scope zeroinitializer, ptr %s14
  %t252 = load ptr, ptr %l3, !tbaa !29
  store { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d327, i32 0, i32 1) }, ptr %l111, !tbaa !27
  %t254 = load { i64, ptr }, ptr %l111, !tbaa !27
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s14, ptr %t252, { i64, ptr } %t254)
  br label %bb43
bb43:
  store i32 2, ptr %l112, !tbaa !23
  call void @__olang_scope_close(ptr %s14)
  %t255 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t257 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t255)
  store i32 %t257, ptr %l114
  %t258 = icmp ne i32 %t257, 0
  br i1 %t258, label %bb45, label %ok.259, !prof !99
ok.259:
  br label %bb44
bb44:
  br label %bb49
bb45:
  %t260 = load i32, ptr %l114, !tbaa !23
  %t261 = ashr i32 %t260, 16
  %t263 = icmp eq i32 %t261, 1
  store i1 %t263, ptr %l116, !tbaa !21
  %t264 = load i32, ptr %l114, !tbaa !23
  %t265 = ashr i32 %t264, 16
  %t267 = icmp eq i32 %t265, 1
  br i1 %t267, label %bb46, label %bb47
bb46:
  call void @__olang_errpay_pop()
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  %t269 = load i32, ptr %l112, !tbaa !23
  store i32 %t269, ptr %rv
  br label %ret
bb50:
  %t270 = load %"std/os:Output", ptr %l102
  store %"std/os:Output" %t270, ptr %l10
  %t271 = getelementptr %"std/os:Output", ptr %l10, i32 0, i32 0
  %t272 = load i32, ptr %t271, !tbaa !23
  %t274 = icmp ne i32 %t272, 0
  br i1 %t274, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s18
  %t276 = load ptr, ptr %l3, !tbaa !29
  %t277 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t278 = getelementptr %"std/os:Output", ptr %l10, i32 0, i32 2
  %t279 = load { i64, ptr }, ptr %t278, !tbaa !27
  %t280 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d328, i32 0, i32 1) }, 1
  %t281 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d328, i32 0, i32 1) }, 0
  %t283 = extractvalue { i64, ptr } %t277, 1
  %t284 = extractvalue { i64, ptr } %t277, 0
  %t285 = add i64 %t281, %t284
  %t286 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d329, i32 0, i32 1) }, 1
  %t287 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d329, i32 0, i32 1) }, 0
  %t288 = add i64 %t285, %t287
  %t290 = extractvalue { i64, ptr } %t279, 1
  %t291 = extractvalue { i64, ptr } %t279, 0
  %t292 = add i64 %t288, %t291
  %t293 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t292)
  call void @olang_textcopy(ptr %t293, ptr %t280, i64 %t281)
  %t294 = getelementptr i8, ptr %t293, i64 %t281
  call void @olang_textcopy(ptr %t294, ptr %t283, i64 %t284)
  %t295 = getelementptr i8, ptr %t294, i64 %t284
  call void @olang_textcopy(ptr %t295, ptr %t286, i64 %t287)
  %t296 = getelementptr i8, ptr %t295, i64 %t287
  call void @olang_textcopy(ptr %t296, ptr %t290, i64 %t291)
  %t297 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t298 = insertvalue { i64, ptr } %t297, ptr %t293, 1
  %t301 = extractvalue { i64, ptr } %t298, 0
  %t302 = extractvalue { i64, ptr } %t298, 1
  %t303 = mul i64 %t301, 1
  %t304 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t303)
  call void @llvm.memcpy.p0.p0.i64(ptr %t304, ptr %t302, i64 %t303, i1 false)
  %t305 = insertvalue { i64, ptr } undef, i64 %t301, 0
  %t306 = insertvalue { i64, ptr } %t305, ptr %t304, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s18, ptr %t276, { i64, ptr } %t306)
  br label %bb53
bb52:
  br label %bb60
bb53:
  store i32 1, ptr %l127, !tbaa !23
  call void @__olang_scope_close(ptr %s18)
  %t309 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t311 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t309)
  store i32 %t311, ptr %l129
  %t312 = icmp ne i32 %t311, 0
  br i1 %t312, label %bb55, label %ok.313, !prof !99
ok.313:
  br label %bb54
bb54:
  br label %bb59
bb55:
  %t314 = load i32, ptr %l129, !tbaa !23
  %t315 = ashr i32 %t314, 16
  %t317 = icmp eq i32 %t315, 1
  store i1 %t317, ptr %l131, !tbaa !21
  %t318 = load i32, ptr %l129, !tbaa !23
  %t319 = ashr i32 %t318, 16
  %t321 = icmp eq i32 %t319, 1
  br i1 %t321, label %bb56, label %bb57
bb56:
  call void @__olang_errpay_pop()
  br label %bb57
bb57:
  br label %bb58
bb58:
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  %t323 = load i32, ptr %l127, !tbaa !23
  store i32 %t323, ptr %rv
  br label %ret
bb60:
  %t324 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t324, ptr %l134
  br label %bb61
bb61:
  %t325 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l134
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t325, ptr %l11
  %t326 = getelementptr %"std/os:Output", ptr %l10, i32 0, i32 1
  %t327 = load { i64, ptr }, ptr %t326, !tbaa !27
  %t328 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t329 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ereadMacros(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %l8, { i64, ptr } %t327, { i64, ptr } %t328, { i64, ptr } %t329, ptr %l11)
  br label %bb62
bb62:
  %t336 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eintMacros(ptr %s0, ptr %s0, ptr %l8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t336, ptr %l141
  br label %bb63
bb63:
  %t337 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l141
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t337, ptr %l12
  %t338 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t338, ptr %l142
  br label %bb64
bb64:
  %t339 = load %"std/prelude/text:StringBuilder", ptr %l142
  store %"std/prelude/text:StringBuilder" %t339, ptr %l13
  %t340 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t342 = extractvalue { i64, ptr } %t340, 1
  %t343 = extractvalue { i64, ptr } %t340, 0
  %t344 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d330, i32 0, i32 1) }, 1
  %t345 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d330, i32 0, i32 1) }, 0
  %t346 = add i64 %t343, %t345
  %t347 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t346)
  call void @olang_textcopy(ptr %t347, ptr %t342, i64 %t343)
  %t348 = getelementptr i8, ptr %t347, i64 %t343
  call void @olang_textcopy(ptr %t348, ptr %t344, i64 %t345)
  %t349 = insertvalue { i64, ptr } undef, i64 %t346, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t347, 1
  %t352 = extractvalue { i64, ptr } %t350, 0
  %t353 = extractvalue { i64, ptr } %t350, 1
  %t354 = mul i64 %t352, 1
  %t355 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t354)
  call void @llvm.memcpy.p0.p0.i64(ptr %t355, ptr %t353, i64 %t354, i1 false)
  %t356 = insertvalue { i64, ptr } undef, i64 %t352, 0
  %t357 = insertvalue { i64, ptr } %t356, ptr %t355, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l13, { i64, ptr } %t357)
  br label %bb65
bb65:
  store ptr %l12, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb66
bb66:
  store %olang.scope zeroinitializer, ptr %s25
  %t361 = load i64, ptr %l15, !tbaa !24
  store i64 %t361, ptr %l148, !tbaa !24
  %t362 = load ptr, ptr %l14, !tbaa !29
  %t364 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t362)
  store i64 %t364, ptr %l150
  br label %bb67
bb67:
  %t365 = load i64, ptr %l148, !tbaa !24
  %t366 = load i64, ptr %l150, !tbaa !24
  %t367 = icmp slt i64 %t365, %t366
  %t369 = xor i1 %t367, true
  br i1 %t369, label %bb68, label %bb69
bb68:
  call void @__olang_scope_close(ptr %s25)
  br label %bb75
bb69:
  br label %bb70
bb70:
  %t371 = load i64, ptr %l15, !tbaa !24
  store i64 %t371, ptr %l16, !tbaa !24
  %t373 = load ptr, ptr %l14, !tbaa !29
  %t374 = load i64, ptr %l15, !tbaa !24
  %t377 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t373, i64 %t374)
  store i64 %t377, ptr %l156
  br label %bb71
bb71:
  %t378 = load i64, ptr %l156, !tbaa !24
  store ptr %l13, ptr %l157, !tbaa !29
  %t379 = load i64, ptr %l16, !tbaa !24
  store i64 %t379, ptr %l158, !tbaa !24
  %t380 = load i64, ptr %l16, !tbaa !24
  store i64 %t380, ptr %l159, !tbaa !24
  %t381 = getelementptr %"compiler/bindgen:gen", ptr %l8, i32 0, i32 12
  %t385 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %s0, ptr %s0, ptr %t381, i64 %t378)
  store %"compiler/bindgen:cMacro" %t385, ptr %l162
  br label %bb72
bb72:
  %t386 = getelementptr %"compiler/bindgen:cMacro", ptr %l162, i32 0, i32 0
  %t387 = load { i64, ptr }, ptr %t386, !tbaa !27
  %t388 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d331, i32 0, i32 1) }, 1
  %t389 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d331, i32 0, i32 1) }, 0
  %t390 = load i64, ptr %l158, !tbaa !24
  %t391 = call i64 @__olang_fmt_i64(ptr null, i64 %t390)
  %t392 = add i64 %t389, %t391
  %t393 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d332, i32 0, i32 1) }, 1
  %t394 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d332, i32 0, i32 1) }, 0
  %t395 = add i64 %t392, %t394
  %t396 = load i64, ptr %l159, !tbaa !24
  %t397 = call i64 @__olang_fmt_i64(ptr null, i64 %t396)
  %t398 = add i64 %t395, %t397
  %t399 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d333, i32 0, i32 1) }, 1
  %t400 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d333, i32 0, i32 1) }, 0
  %t401 = add i64 %t398, %t400
  %t403 = extractvalue { i64, ptr } %t387, 1
  %t404 = extractvalue { i64, ptr } %t387, 0
  %t405 = add i64 %t401, %t404
  %t406 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d334, i32 0, i32 1) }, 1
  %t407 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d334, i32 0, i32 1) }, 0
  %t408 = add i64 %t405, %t407
  %t409 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t408)
  call void @olang_textcopy(ptr %t409, ptr %t388, i64 %t389)
  %t410 = getelementptr i8, ptr %t409, i64 %t389
  %t411 = call i64 @__olang_fmt_i64(ptr %t410, i64 %t390)
  %t412 = getelementptr i8, ptr %t410, i64 %t391
  call void @olang_textcopy(ptr %t412, ptr %t393, i64 %t394)
  %t413 = getelementptr i8, ptr %t412, i64 %t394
  %t414 = call i64 @__olang_fmt_i64(ptr %t413, i64 %t396)
  %t415 = getelementptr i8, ptr %t413, i64 %t397
  call void @olang_textcopy(ptr %t415, ptr %t399, i64 %t400)
  %t416 = getelementptr i8, ptr %t415, i64 %t400
  call void @olang_textcopy(ptr %t416, ptr %t403, i64 %t404)
  %t417 = getelementptr i8, ptr %t416, i64 %t404
  call void @olang_textcopy(ptr %t417, ptr %t406, i64 %t407)
  %t418 = insertvalue { i64, ptr } undef, i64 %t408, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t409, 1
  %t421 = extractvalue { i64, ptr } %t419, 0
  %t422 = extractvalue { i64, ptr } %t419, 1
  %t423 = mul i64 %t421, 1
  %t424 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t423)
  call void @llvm.memcpy.p0.p0.i64(ptr %t424, ptr %t422, i64 %t423, i1 false)
  %t425 = insertvalue { i64, ptr } undef, i64 %t421, 0
  %t426 = insertvalue { i64, ptr } %t425, ptr %t424, 1
  %t427 = load ptr, ptr %l157, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %t427, { i64, ptr } %t426)
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s25)
  br label %bb74
bb74:
  %t429 = load i64, ptr %l15, !tbaa !24
  %t431 = add i64 %t429, 1
  store i64 %t431, ptr %l15, !tbaa !24
  br label %bb66
bb75:
  %t433 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t433, ptr %l168, !tbaa !27
  %t435 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l13)
  store { i64, ptr } %t435, ptr %l170
  br label %bb76
bb76:
  %t436 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t436, 0
  %t439 = extractvalue { i64, ptr } %t436, 1
  %t440 = mul i64 %t438, 1
  %t441 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t440)
  call void @llvm.memcpy.p0.p0.i64(ptr %t441, ptr %t439, i64 %t440, i1 false)
  %t442 = insertvalue { i64, ptr } undef, i64 %t438, 0
  %t443 = insertvalue { i64, ptr } %t442, ptr %t441, 1
  %t444 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t446 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t444, { i64, ptr } %t443)
  store i32 %t446, ptr %l173
  %t447 = icmp ne i32 %t446, 0
  br i1 %t447, label %bb78, label %ok.448, !prof !99
ok.448:
  br label %bb77
bb77:
  br label %bb89
bb78:
  %t449 = load i32, ptr %l173, !tbaa !23
  %t450 = ashr i32 %t449, 16
  %t452 = icmp eq i32 %t450, 1
  store i1 %t452, ptr %l175, !tbaa !21
  %t453 = load i32, ptr %l173, !tbaa !23
  %t454 = ashr i32 %t453, 16
  %t456 = icmp eq i32 %t454, 1
  br i1 %t456, label %bb79, label %bb80
bb79:
  call void @__olang_errpay_pop()
  br label %bb80
bb80:
  br label %bb81
bb81:
  store %olang.scope zeroinitializer, ptr %s28
  %t458 = load ptr, ptr %l3, !tbaa !29
  %t459 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t460 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d335, i32 0, i32 1) }, 1
  %t461 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d335, i32 0, i32 1) }, 0
  %t463 = extractvalue { i64, ptr } %t459, 1
  %t464 = extractvalue { i64, ptr } %t459, 0
  %t465 = add i64 %t461, %t464
  %t466 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d336, i32 0, i32 1) }, 1
  %t467 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d336, i32 0, i32 1) }, 0
  %t468 = add i64 %t465, %t467
  %t469 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t468)
  call void @olang_textcopy(ptr %t469, ptr %t460, i64 %t461)
  %t470 = getelementptr i8, ptr %t469, i64 %t461
  call void @olang_textcopy(ptr %t470, ptr %t463, i64 %t464)
  %t471 = getelementptr i8, ptr %t470, i64 %t464
  call void @olang_textcopy(ptr %t471, ptr %t466, i64 %t467)
  %t472 = insertvalue { i64, ptr } undef, i64 %t468, 0
  %t473 = insertvalue { i64, ptr } %t472, ptr %t469, 1
  %t476 = extractvalue { i64, ptr } %t473, 0
  %t477 = extractvalue { i64, ptr } %t473, 1
  %t478 = mul i64 %t476, 1
  %t479 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t478)
  call void @llvm.memcpy.p0.p0.i64(ptr %t479, ptr %t477, i64 %t478, i1 false)
  %t480 = insertvalue { i64, ptr } undef, i64 %t476, 0
  %t481 = insertvalue { i64, ptr } %t480, ptr %t479, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s28, ptr %t458, { i64, ptr } %t481)
  br label %bb82
bb82:
  store i32 2, ptr %l183, !tbaa !23
  call void @__olang_scope_close(ptr %s28)
  %t484 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t486 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t484)
  store i32 %t486, ptr %l185
  %t487 = icmp ne i32 %t486, 0
  br i1 %t487, label %bb84, label %ok.488, !prof !99
ok.488:
  br label %bb83
bb83:
  br label %bb88
bb84:
  %t489 = load i32, ptr %l185, !tbaa !23
  %t490 = ashr i32 %t489, 16
  %t492 = icmp eq i32 %t490, 1
  store i1 %t492, ptr %l187, !tbaa !21
  %t493 = load i32, ptr %l185, !tbaa !23
  %t494 = ashr i32 %t493, 16
  %t496 = icmp eq i32 %t494, 1
  br i1 %t496, label %bb85, label %bb86
bb85:
  call void @__olang_errpay_pop()
  br label %bb86
bb86:
  br label %bb87
bb87:
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s0)
  %t498 = load i32, ptr %l183, !tbaa !23
  store i32 %t498, ptr %rv
  br label %ret
bb89:
  store ptr %l8, ptr %l191, !tbaa !29
  %t499 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t499, ptr %l192, !tbaa !27
  %t500 = icmp sge i64 0, 0
  br i1 %t500, label %bb90, label %bb91
bb90:
  %t502 = icmp sle i64 0, 576460752303423487
  br i1 %t502, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_2d25c1a9d7803e60_587b957d3d0d6154)
  unreachable
bb92:
  %t504 = mul i64 0, 16
  %t505 = insertvalue { i64, ptr } undef, i64 0, 0
  %t506 = insertvalue { i64, ptr } %t505, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t507 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t508 = load ptr, ptr %l191, !tbaa !29
  %t509 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t512 = call { i32, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edump(ptr %s0, ptr %v2, ptr %s0, ptr %s0, ptr %s0, ptr %t508, { i64, ptr } %t509, { i64, ptr } %t506, { i64, ptr } %t507)
  %t513 = extractvalue { i32, ptr } %t512, 1
  %t514 = extractvalue { i32, ptr } %t512, 0
  store i32 %t514, ptr %l198
  %t515 = icmp ne i32 %t514, 0
  br i1 %t515, label %bb95, label %ok.516, !prof !99
ok.516:
  store ptr %t513, ptr %l197
  br label %bb94
bb93:
  call void @__olang_check_failed(ptr @olang_loc_2d25c1a9d7803e60_587b957d3d0d6154)
  unreachable
bb94:
  %t517 = load ptr, ptr %l197, !tbaa !29
  store ptr %t517, ptr %l190, !tbaa !29
  br label %bb104
bb95:
  %t518 = load i32, ptr %l198, !tbaa !23
  %t519 = ashr i32 %t518, 16
  %t521 = icmp eq i32 %t519, 1
  store i1 %t521, ptr %l200, !tbaa !21
  br label %bb96
bb96:
  store %olang.scope zeroinitializer, ptr %s33
  %t522 = load ptr, ptr %l3, !tbaa !29
  %t523 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t524 = getelementptr %"compiler/bindgen:gen", ptr %l8, i32 0, i32 25
  %t525 = load { i64, ptr }, ptr %t524, !tbaa !27
  %t526 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d337, i32 0, i32 1) }, 1
  %t527 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d337, i32 0, i32 1) }, 0
  %t529 = extractvalue { i64, ptr } %t523, 1
  %t530 = extractvalue { i64, ptr } %t523, 0
  %t531 = add i64 %t527, %t530
  %t532 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d338, i32 0, i32 1) }, 1
  %t533 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d338, i32 0, i32 1) }, 0
  %t534 = add i64 %t531, %t533
  %t536 = extractvalue { i64, ptr } %t525, 1
  %t537 = extractvalue { i64, ptr } %t525, 0
  %t538 = add i64 %t534, %t537
  %t539 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d339, i32 0, i32 1) }, 1
  %t540 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d339, i32 0, i32 1) }, 0
  %t541 = add i64 %t538, %t540
  %t542 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t541)
  call void @olang_textcopy(ptr %t542, ptr %t526, i64 %t527)
  %t543 = getelementptr i8, ptr %t542, i64 %t527
  call void @olang_textcopy(ptr %t543, ptr %t529, i64 %t530)
  %t544 = getelementptr i8, ptr %t543, i64 %t530
  call void @olang_textcopy(ptr %t544, ptr %t532, i64 %t533)
  %t545 = getelementptr i8, ptr %t544, i64 %t533
  call void @olang_textcopy(ptr %t545, ptr %t536, i64 %t537)
  %t546 = getelementptr i8, ptr %t545, i64 %t537
  call void @olang_textcopy(ptr %t546, ptr %t539, i64 %t540)
  %t547 = insertvalue { i64, ptr } undef, i64 %t541, 0
  %t548 = insertvalue { i64, ptr } %t547, ptr %t542, 1
  %t551 = extractvalue { i64, ptr } %t548, 0
  %t552 = extractvalue { i64, ptr } %t548, 1
  %t553 = mul i64 %t551, 1
  %t554 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t553)
  call void @llvm.memcpy.p0.p0.i64(ptr %t554, ptr %t552, i64 %t553, i1 false)
  %t555 = insertvalue { i64, ptr } undef, i64 %t551, 0
  %t556 = insertvalue { i64, ptr } %t555, ptr %t554, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s33, ptr %t522, { i64, ptr } %t556)
  br label %bb97
bb97:
  store i32 1, ptr %l207, !tbaa !23
  call void @__olang_scope_close(ptr %s33)
  %t559 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t561 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t559)
  store i32 %t561, ptr %l209
  %t562 = icmp ne i32 %t561, 0
  br i1 %t562, label %bb99, label %ok.563, !prof !99
ok.563:
  br label %bb98
bb98:
  br label %bb103
bb99:
  %t564 = load i32, ptr %l209, !tbaa !23
  %t565 = ashr i32 %t564, 16
  %t567 = icmp eq i32 %t565, 1
  store i1 %t567, ptr %l211, !tbaa !21
  %t568 = load i32, ptr %l209, !tbaa !23
  %t569 = ashr i32 %t568, 16
  %t571 = icmp eq i32 %t569, 1
  br i1 %t571, label %bb100, label %bb101
bb100:
  call void @__olang_errpay_pop()
  br label %bb101
bb101:
  br label %bb102
bb102:
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s0)
  %t573 = load i32, ptr %l207, !tbaa !23
  store i32 %t573, ptr %rv
  br label %ret
bb104:
  %t574 = load ptr, ptr %l190, !tbaa !29
  store ptr %t574, ptr %l18, !tbaa !29
  %t575 = load ptr, ptr %l18, !tbaa !29
  %t576 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eread(ptr %s0, ptr %s0, ptr %s0, ptr %l8, ptr %t575, { i64, ptr } %t576)
  br label %bb105
bb105:
  %t580 = getelementptr %"compiler/bindgen:gen", ptr %l8, i32 0, i32 26
  store i64 0, ptr %t580, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s38
  %t581 = load ptr, ptr %l18, !tbaa !29
  %t583 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s0, ptr %s38, ptr %t581)
  store { i64, ptr } %t583, ptr %l218
  br label %bb106
bb106:
  %t584 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t585 = extractvalue { i64, ptr } %t584, 0
  %t586 = extractvalue { i64, ptr } %t584, 1
  %t587 = mul i64 %t585, 8
  %t588 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t587)
  call void @llvm.memcpy.p0.p0.i64(ptr %t588, ptr %t586, i64 %t587, i1 false)
  %t589 = insertvalue { i64, ptr } undef, i64 %t585, 0
  %t590 = insertvalue { i64, ptr } %t589, ptr %t588, 1
  store { i64, ptr } %t590, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t592 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t594 = extractvalue { i64, ptr } %t592, 0
  store i64 %t594, ptr %l21, !tbaa !24
  br label %bb107
bb107:
  store %olang.scope zeroinitializer, ptr %s39
  %t596 = load i64, ptr %l20, !tbaa !24
  %t597 = load i64, ptr %l21, !tbaa !24
  %t600 = icmp slt i64 %t596, %t597
  %t602 = xor i1 %t600, true
  br i1 %t602, label %bb108, label %bb109
bb108:
  call void @__olang_scope_close(ptr %s39)
  br label %bb162
bb109:
  br label %bb110
bb110:
  %t604 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t604, ptr %l226, !tbaa !27
  %t605 = load i64, ptr %l20, !tbaa !24
  %t607 = getelementptr { i64, ptr }, ptr %l226, i32 0, i32 1
  %t608 = load ptr, ptr %t607, !tbaa !27
  %t609 = getelementptr ptr, ptr %t608, i64 %t605
  %t610 = load ptr, ptr %t609, !tbaa !39
  store ptr %t610, ptr %l22, !tbaa !29
  %t612 = load ptr, ptr %l22, !tbaa !29
  %t614 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s38, ptr %s39, ptr %s39, ptr %t612, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d340, i32 0, i32 1) })
  store { i64, ptr } %t614, ptr %l230
  br label %bb111
bb111:
  %t615 = load { i64, ptr }, ptr %l230, !tbaa !27
  store { i64, ptr } %t615, ptr %l23, !tbaa !27
  %t616 = load ptr, ptr %l22, !tbaa !29
  %t618 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s38, ptr %s39, ptr %s39, ptr %t616, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d341, i32 0, i32 1) })
  store { i64, ptr } %t618, ptr %l232
  br label %bb112
bb112:
  %t619 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t620 = extractvalue { i64, ptr } %t619, 0
  %t621 = extractvalue { i64, ptr } %t619, 1
  %t622 = mul i64 %t620, 1
  %t623 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t622)
  call void @llvm.memcpy.p0.p0.i64(ptr %t623, ptr %t621, i64 %t622, i1 false)
  %t624 = insertvalue { i64, ptr } undef, i64 %t620, 0
  %t625 = insertvalue { i64, ptr } %t624, ptr %t623, 1
  %t627 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s39, ptr %s39, { i64, ptr } %t625, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d342, i32 0, i32 1) })
  store i1 %t627, ptr %l234
  br label %bb113
bb113:
  %t628 = load i1, ptr %l234, !tbaa !21
  %t629 = xor i1 %t628, true
  br i1 %t629, label %bb114, label %bb115
bb114:
  store i1 true, ptr %l236, !tbaa !21
  br label %bb117
bb115:
  %t631 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t633 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s39, ptr %s39, { i64, ptr } %t631, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d343, i32 0, i32 1) })
  store i1 %t633, ptr %l238
  br label %bb116
bb116:
  %t634 = load i1, ptr %l238, !tbaa !21
  %t635 = xor i1 %t634, true
  store i1 %t635, ptr %l236, !tbaa !21
  br label %bb117
bb117:
  %t637 = load i1, ptr %l236, !tbaa !21
  br i1 %t637, label %bb118, label %bb119
bb118:
  call void @__olang_scope_close(ptr %s39)
  br label %bb161
bb119:
  br label %bb120
bb120:
  %t638 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t640 = extractvalue { i64, ptr } %t638, 0
  store i64 %t640, ptr %l242, !tbaa !24
  %t641 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t642 = extractvalue { i64, ptr } %t641, 0
  store i64 %t642, ptr %l243, !tbaa !24
  %t643 = icmp sge i64 9, 0
  br i1 %t643, label %bb121, label %bb122
bb121:
  %t645 = load i64, ptr %l242, !tbaa !24
  %t646 = icmp sle i64 9, %t645
  br i1 %t646, label %bb123, label %bb124
bb122:
  call void @__olang_check_failed(ptr @olang_loc_6d7a361a7a168fed_fbeb1a267b83d779)
  unreachable
bb123:
  %t648 = load i64, ptr %l242, !tbaa !24
  %t649 = load i64, ptr %l243, !tbaa !24
  %t650 = icmp sle i64 %t648, %t649
  br i1 %t650, label %bb125, label %bb126
bb124:
  call void @__olang_check_failed(ptr @olang_loc_6d7a361a7a168fed_fbeb1a267b83d779)
  unreachable
bb125:
  %t652 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t653 = load ptr, ptr %t652, !tbaa !27
  %t654 = load i64, ptr %l242, !tbaa !24
  %t655 = getelementptr i8, ptr %t653, i64 9
  %t656 = sub i64 %t654, 9
  %t657 = insertvalue { i64, ptr } undef, i64 %t656, 0
  %t658 = insertvalue { i64, ptr } %t657, ptr %t655, 1
  store { i64, ptr } %t658, ptr %l247, !tbaa !27
  %t659 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s39, i64 10)
  %t660 = extractvalue { i32, i64 } %t659, 1
  %t661 = extractvalue { i32, i64 } %t659, 0
  store i32 %t661, ptr %l249
  %t662 = icmp ne i32 %t661, 0
  br i1 %t662, label %bb128, label %ok.663, !prof !99
ok.663:
  store i64 %t660, ptr %l248
  br label %bb127
bb126:
  call void @__olang_check_failed(ptr @olang_loc_6d7a361a7a168fed_fbeb1a267b83d779)
  unreachable
bb127:
  %t664 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t665 = load i64, ptr %l248, !tbaa !24
  %t666 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s39, { i64, ptr } %t664, i64 %t665)
  %t667 = extractvalue { i32, i64 } %t666, 1
  %t668 = extractvalue { i32, i64 } %t666, 0
  store i32 %t668, ptr %l251
  %t669 = icmp ne i32 %t668, 0
  br i1 %t669, label %bb131, label %ok.670, !prof !99
ok.670:
  store i64 %t667, ptr %l250
  br label %bb130
bb128:
  br label %bb129
bb129:
  store i64 -1, ptr %l240, !tbaa !24
  br label %bb132
bb130:
  %t671 = load i64, ptr %l250, !tbaa !24
  store i64 %t671, ptr %l240, !tbaa !24
  br label %bb132
bb131:
  br label %bb129
bb132:
  %t672 = load i64, ptr %l240, !tbaa !24
  store i64 %t672, ptr %l24, !tbaa !24
  %t673 = load i64, ptr %l24, !tbaa !24
  %t675 = icmp slt i64 %t673, 0
  br i1 %t675, label %bb133, label %bb134
bb133:
  store i1 true, ptr %l254, !tbaa !21
  br label %bb136
bb134:
  %t677 = load i64, ptr %l24, !tbaa !24
  store i64 %t677, ptr %l255, !tbaa !24
  %t679 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l12)
  store i64 %t679, ptr %l257
  br label %bb135
bb135:
  %t680 = load i64, ptr %l255, !tbaa !24
  %t681 = load i64, ptr %l257, !tbaa !24
  %t682 = icmp sge i64 %t680, %t681
  store i1 %t682, ptr %l254, !tbaa !21
  br label %bb136
bb136:
  %t684 = load i1, ptr %l254, !tbaa !21
  br i1 %t684, label %bb137, label %bb138
bb137:
  call void @__olang_scope_close(ptr %s39)
  br label %bb161
bb138:
  br label %bb139
bb139:
  store %olang.scope zeroinitializer, ptr %s42
  %t685 = load ptr, ptr %l22, !tbaa !29
  %t687 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s38, ptr %s42, ptr %t685)
  store { i64, ptr } %t687, ptr %l260
  br label %bb140
bb140:
  %t688 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t689 = extractvalue { i64, ptr } %t688, 0
  %t690 = extractvalue { i64, ptr } %t688, 1
  %t691 = mul i64 %t689, 8
  %t692 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t691)
  call void @llvm.memcpy.p0.p0.i64(ptr %t692, ptr %t690, i64 %t691, i1 false)
  %t693 = insertvalue { i64, ptr } undef, i64 %t689, 0
  %t694 = insertvalue { i64, ptr } %t693, ptr %t692, 1
  store { i64, ptr } %t694, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t696 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t698 = extractvalue { i64, ptr } %t696, 0
  store i64 %t698, ptr %l27, !tbaa !24
  br label %bb141
bb141:
  store %olang.scope zeroinitializer, ptr %s43
  %t700 = load i64, ptr %l26, !tbaa !24
  %t701 = load i64, ptr %l27, !tbaa !24
  %t704 = icmp slt i64 %t700, %t701
  %t706 = xor i1 %t704, true
  br i1 %t706, label %bb142, label %bb143
bb142:
  call void @__olang_scope_close(ptr %s43)
  br label %bb160
bb143:
  br label %bb144
bb144:
  %t708 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t708, ptr %l268, !tbaa !27
  %t709 = load i64, ptr %l26, !tbaa !24
  %t711 = getelementptr { i64, ptr }, ptr %l268, i32 0, i32 1
  %t712 = load ptr, ptr %t711, !tbaa !27
  %t713 = getelementptr ptr, ptr %t712, i64 %t709
  %t714 = load ptr, ptr %t713, !tbaa !39
  %t718 = call { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %s42, ptr %s43, ptr %t714)
  store { i64, ptr } %t718, ptr %l272
  br label %bb145
bb145:
  %t719 = load { i64, ptr }, ptr %l272, !tbaa !27
  store { i64, ptr } %t719, ptr %l29, !tbaa !27
  %t720 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t722 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s43, ptr %s43, { i64, ptr } %t720, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d344, i32 0, i32 1) })
  store i1 %t722, ptr %l274
  br label %bb146
bb146:
  %t723 = load i1, ptr %l274, !tbaa !21
  br i1 %t723, label %bb147, label %bb148
bb147:
  call void @__olang_scope_close(ptr %s43)
  br label %bb159
bb148:
  br label %bb149
bb149:
  %t724 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t724, ptr %l276, !tbaa !27
  %t725 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s43, i64 10)
  %t726 = extractvalue { i32, i64 } %t725, 1
  %t727 = extractvalue { i32, i64 } %t725, 0
  store i32 %t727, ptr %l278
  %t728 = icmp ne i32 %t727, 0
  br i1 %t728, label %bb151, label %ok.729, !prof !99
ok.729:
  store i64 %t726, ptr %l277
  br label %bb150
bb150:
  %t730 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t731 = load i64, ptr %l277, !tbaa !24
  %t732 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s43, { i64, ptr } %t730, i64 %t731)
  %t733 = extractvalue { i32, i64 } %t732, 1
  %t734 = extractvalue { i32, i64 } %t732, 0
  store i32 %t734, ptr %l280
  %t735 = icmp ne i32 %t734, 0
  br i1 %t735, label %bb154, label %ok.736, !prof !99
ok.736:
  store i64 %t733, ptr %l279
  br label %bb153
bb151:
  br label %bb152
bb152:
  call void @__olang_scope_close(ptr %s43)
  br label %bb159
bb153:
  %t737 = load i64, ptr %l279, !tbaa !24
  store i64 %t737, ptr %l275, !tbaa !24
  br label %bb155
bb154:
  br label %bb152
bb155:
  %t738 = load i64, ptr %l275, !tbaa !24
  store i64 %t738, ptr %l30, !tbaa !24
  store ptr %l8, ptr %l281, !tbaa !29
  %t739 = getelementptr %"compiler/bindgen:gen", ptr %l8, i32 0, i32 12
  store ptr %t739, ptr %l282, !tbaa !29
  %t740 = load i64, ptr %l24, !tbaa !24
  %t743 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l12, i64 %t740)
  store i64 %t743, ptr %l285
  br label %bb156
bb156:
  %t744 = load ptr, ptr %l282, !tbaa !29
  %t745 = load i64, ptr %l285, !tbaa !24
  %t746 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %s0, ptr %s0, ptr %t744, i64 %t745)
  store %"compiler/bindgen:cMacro" %t746, ptr %l286
  br label %bb157
bb157:
  %t747 = getelementptr %"compiler/bindgen:cMacro", ptr %l286, i32 0, i32 0
  %t748 = load { i64, ptr }, ptr %t747, !tbaa !27
  %t749 = load i64, ptr %l30, !tbaa !24
  %t750 = load ptr, ptr %l281, !tbaa !29
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2econstant(ptr %s0, ptr %s0, ptr %t750, { i64, ptr } %t748, i64 %t749)
  br label %bb158
bb158:
  call void @__olang_scope_close(ptr %s43)
  br label %bb159
bb159:
  %t753 = load i64, ptr %l26, !tbaa !24
  %t755 = add i64 %t753, 1
  store i64 %t755, ptr %l26, !tbaa !24
  br label %bb141
bb160:
  call void @__olang_scope_close(ptr %s42)
  call void @__olang_scope_close(ptr %s39)
  br label %bb161
bb161:
  %t757 = load i64, ptr %l20, !tbaa !24
  %t759 = add i64 %t757, 1
  store i64 %t759, ptr %l20, !tbaa !24
  br label %bb107
bb162:
  call void @__olang_scope_close(ptr %s38)
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eotherConsts(ptr %s0, ptr %l8)
  br label %bb163
bb163:
  store ptr %l8, ptr %l294, !tbaa !29
  %t762 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t762, ptr %l295, !tbaa !27
  %t763 = icmp sge i64 0, 0
  br i1 %t763, label %bb164, label %bb165
bb164:
  %t765 = icmp sle i64 0, 576460752303423487
  br i1 %t765, label %bb166, label %bb167
bb165:
  call void @__olang_check_failed(ptr @olang_loc_3c31d34710cd488e_9478fba938690442)
  unreachable
bb166:
  %t767 = mul i64 0, 16
  %t768 = insertvalue { i64, ptr } undef, i64 0, 0
  %t769 = insertvalue { i64, ptr } %t768, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t770 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t771 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t772 = load ptr, ptr %l294, !tbaa !29
  %t773 = load { i64, ptr }, ptr %l295, !tbaa !27
  %t777 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2esizes(ptr %s0, ptr %v2, ptr %s0, ptr %s0, ptr %s0, ptr %t772, { i64, ptr } %t773, { i64, ptr } %t769, { i64, ptr } %t770, { i64, ptr } %t771)
  store i32 %t777, ptr %l301
  %t778 = icmp ne i32 %t777, 0
  br i1 %t778, label %bb169, label %ok.779, !prof !99
ok.779:
  br label %bb168
bb167:
  call void @__olang_check_failed(ptr @olang_loc_3c31d34710cd488e_9478fba938690442)
  unreachable
bb168:
  br label %bb178
bb169:
  %t780 = load i32, ptr %l301, !tbaa !23
  %t781 = ashr i32 %t780, 16
  %t783 = icmp eq i32 %t781, 1
  store i1 %t783, ptr %l303, !tbaa !21
  br label %bb170
bb170:
  store %olang.scope zeroinitializer, ptr %s48
  %t784 = load ptr, ptr %l3, !tbaa !29
  %t785 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t786 = getelementptr %"compiler/bindgen:gen", ptr %l8, i32 0, i32 25
  %t787 = load { i64, ptr }, ptr %t786, !tbaa !27
  %t788 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d345, i32 0, i32 1) }, 1
  %t789 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d345, i32 0, i32 1) }, 0
  %t791 = extractvalue { i64, ptr } %t785, 1
  %t792 = extractvalue { i64, ptr } %t785, 0
  %t793 = add i64 %t789, %t792
  %t794 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d346, i32 0, i32 1) }, 1
  %t795 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d346, i32 0, i32 1) }, 0
  %t796 = add i64 %t793, %t795
  %t798 = extractvalue { i64, ptr } %t787, 1
  %t799 = extractvalue { i64, ptr } %t787, 0
  %t800 = add i64 %t796, %t799
  %t801 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t802 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
  %t803 = add i64 %t800, %t802
  %t804 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t803)
  call void @olang_textcopy(ptr %t804, ptr %t788, i64 %t789)
  %t805 = getelementptr i8, ptr %t804, i64 %t789
  call void @olang_textcopy(ptr %t805, ptr %t791, i64 %t792)
  %t806 = getelementptr i8, ptr %t805, i64 %t792
  call void @olang_textcopy(ptr %t806, ptr %t794, i64 %t795)
  %t807 = getelementptr i8, ptr %t806, i64 %t795
  call void @olang_textcopy(ptr %t807, ptr %t798, i64 %t799)
  %t808 = getelementptr i8, ptr %t807, i64 %t799
  call void @olang_textcopy(ptr %t808, ptr %t801, i64 %t802)
  %t809 = insertvalue { i64, ptr } undef, i64 %t803, 0
  %t810 = insertvalue { i64, ptr } %t809, ptr %t804, 1
  %t813 = extractvalue { i64, ptr } %t810, 0
  %t814 = extractvalue { i64, ptr } %t810, 1
  %t815 = mul i64 %t813, 1
  %t816 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t815)
  call void @llvm.memcpy.p0.p0.i64(ptr %t816, ptr %t814, i64 %t815, i1 false)
  %t817 = insertvalue { i64, ptr } undef, i64 %t813, 0
  %t818 = insertvalue { i64, ptr } %t817, ptr %t816, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s48, ptr %t784, { i64, ptr } %t818)
  br label %bb171
bb171:
  store i32 1, ptr %l310, !tbaa !23
  call void @__olang_scope_close(ptr %s48)
  %t821 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t823 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t821)
  store i32 %t823, ptr %l312
  %t824 = icmp ne i32 %t823, 0
  br i1 %t824, label %bb173, label %ok.825, !prof !99
ok.825:
  br label %bb172
bb172:
  br label %bb177
bb173:
  %t826 = load i32, ptr %l312, !tbaa !23
  %t827 = ashr i32 %t826, 16
  %t829 = icmp eq i32 %t827, 1
  store i1 %t829, ptr %l314, !tbaa !21
  %t830 = load i32, ptr %l312, !tbaa !23
  %t831 = ashr i32 %t830, 16
  %t833 = icmp eq i32 %t831, 1
  br i1 %t833, label %bb174, label %bb175
bb174:
  call void @__olang_errpay_pop()
  br label %bb175
bb175:
  br label %bb176
bb176:
  br label %bb177
bb177:
  call void @__olang_scope_close(ptr %s0)
  %t835 = load i32, ptr %l310, !tbaa !23
  store i32 %t835, ptr %rv
  br label %ret
bb178:
  %t836 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t837 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d348, i32 0, i32 1) }, 1
  %t838 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d348, i32 0, i32 1) }, 0
  %t840 = extractvalue { i64, ptr } %t836, 1
  %t841 = extractvalue { i64, ptr } %t836, 0
  %t842 = add i64 %t838, %t841
  %t843 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d349, i32 0, i32 1) }, 1
  %t844 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d349, i32 0, i32 1) }, 0
  %t845 = add i64 %t842, %t844
  %t846 = extractvalue { i64, ptr } { i64 104, ptr getelementptr inbounds (<{ i64, [104 x i8] }>, ptr @.d350, i32 0, i32 1) }, 1
  %t847 = extractvalue { i64, ptr } { i64 104, ptr getelementptr inbounds (<{ i64, [104 x i8] }>, ptr @.d350, i32 0, i32 1) }, 0
  %t848 = add i64 %t845, %t847
  %t849 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d351, i32 0, i32 1) }, 1
  %t850 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d351, i32 0, i32 1) }, 0
  %t851 = add i64 %t848, %t850
  %t852 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t851)
  call void @olang_textcopy(ptr %t852, ptr %t837, i64 %t838)
  %t853 = getelementptr i8, ptr %t852, i64 %t838
  call void @olang_textcopy(ptr %t853, ptr %t840, i64 %t841)
  %t854 = getelementptr i8, ptr %t853, i64 %t841
  call void @olang_textcopy(ptr %t854, ptr %t843, i64 %t844)
  %t855 = getelementptr i8, ptr %t854, i64 %t844
  call void @olang_textcopy(ptr %t855, ptr %t846, i64 %t847)
  %t856 = getelementptr i8, ptr %t855, i64 %t847
  call void @olang_textcopy(ptr %t856, ptr %t849, i64 %t850)
  %t857 = insertvalue { i64, ptr } undef, i64 %t851, 0
  %t858 = insertvalue { i64, ptr } %t857, ptr %t852, 1
  %t863 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrite(ptr %s0, ptr %s0, ptr %s0, ptr %l8, { i64, ptr } %t858)
  store { i64, ptr } %t863, ptr %l321
  br label %bb179
bb179:
  %t864 = load { i64, ptr }, ptr %l321, !tbaa !27
  store { i64, ptr } %t864, ptr %l32, !tbaa !27
  %t865 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t867 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t865, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d352, i32 0, i32 1) })
  store i1 %t867, ptr %l323
  br label %bb180
bb180:
  %t868 = load i1, ptr %l323, !tbaa !21
  br i1 %t868, label %bb181, label %bb182
bb181:
  %t869 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t871 = call i32 @std_2fio_2ePut_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %t869)
  store i32 %t871, ptr %l325
  %t872 = icmp ne i32 %t871, 0
  br i1 %t872, label %bb184, label %ok.873, !prof !99
ok.873:
  br label %bb183
bb182:
  br label %bb201
bb183:
  br label %bb194
bb184:
  %t874 = load i32, ptr %l325, !tbaa !23
  %t875 = ashr i32 %t874, 16
  %t877 = icmp eq i32 %t875, 1
  store i1 %t877, ptr %l327, !tbaa !21
  %t878 = load i32, ptr %l325, !tbaa !23
  %t879 = ashr i32 %t878, 16
  %t881 = icmp eq i32 %t879, 1
  br i1 %t881, label %bb185, label %bb186
bb185:
  call void @__olang_errpay_pop()
  br label %bb186
bb186:
  br label %bb187
bb187:
  store i32 1, ptr %l330, !tbaa !23
  %t883 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t885 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t883)
  store i32 %t885, ptr %l332
  %t886 = icmp ne i32 %t885, 0
  br i1 %t886, label %bb189, label %ok.887, !prof !99
ok.887:
  br label %bb188
bb188:
  br label %bb193
bb189:
  %t888 = load i32, ptr %l332, !tbaa !23
  %t889 = ashr i32 %t888, 16
  %t891 = icmp eq i32 %t889, 1
  store i1 %t891, ptr %l334, !tbaa !21
  %t892 = load i32, ptr %l332, !tbaa !23
  %t893 = ashr i32 %t892, 16
  %t895 = icmp eq i32 %t893, 1
  br i1 %t895, label %bb190, label %bb191
bb190:
  call void @__olang_errpay_pop()
  br label %bb191
bb191:
  br label %bb192
bb192:
  br label %bb193
bb193:
  call void @__olang_scope_close(ptr %s0)
  %t897 = load i32, ptr %l330, !tbaa !23
  store i32 %t897, ptr %rv
  br label %ret
bb194:
  store i32 0, ptr %l337, !tbaa !23
  %t898 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t900 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t898)
  store i32 %t900, ptr %l339
  %t901 = icmp ne i32 %t900, 0
  br i1 %t901, label %bb196, label %ok.902, !prof !99
ok.902:
  br label %bb195
bb195:
  br label %bb200
bb196:
  %t903 = load i32, ptr %l339, !tbaa !23
  %t904 = ashr i32 %t903, 16
  %t906 = icmp eq i32 %t904, 1
  store i1 %t906, ptr %l341, !tbaa !21
  %t907 = load i32, ptr %l339, !tbaa !23
  %t908 = ashr i32 %t907, 16
  %t910 = icmp eq i32 %t908, 1
  br i1 %t910, label %bb197, label %bb198
bb197:
  call void @__olang_errpay_pop()
  br label %bb198
bb198:
  br label %bb199
bb199:
  br label %bb200
bb200:
  call void @__olang_scope_close(ptr %s0)
  %t912 = load i32, ptr %l337, !tbaa !23
  store i32 %t912, ptr %rv
  br label %ret
bb201:
  %t913 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t914 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t917 = call i32 @std_2fos_2eWriteFile(ptr %v1, ptr %s0, { i64, ptr } %t913, { i64, ptr } %t914)
  store i32 %t917, ptr %l346
  %t918 = icmp ne i32 %t917, 0
  br i1 %t918, label %bb203, label %ok.919, !prof !99
ok.919:
  br label %bb202
bb202:
  br label %bb214
bb203:
  %t920 = load i32, ptr %l346, !tbaa !23
  %t921 = ashr i32 %t920, 16
  %t923 = icmp eq i32 %t921, 1
  store i1 %t923, ptr %l348, !tbaa !21
  %t924 = load i32, ptr %l346, !tbaa !23
  %t925 = ashr i32 %t924, 16
  %t927 = icmp eq i32 %t925, 1
  br i1 %t927, label %bb204, label %bb205
bb204:
  call void @__olang_errpay_pop()
  br label %bb205
bb205:
  br label %bb206
bb206:
  store %olang.scope zeroinitializer, ptr %s62
  %t929 = load ptr, ptr %l3, !tbaa !29
  %t930 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t931 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d353, i32 0, i32 1) }, 1
  %t932 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d353, i32 0, i32 1) }, 0
  %t934 = extractvalue { i64, ptr } %t930, 1
  %t935 = extractvalue { i64, ptr } %t930, 0
  %t936 = add i64 %t932, %t935
  %t937 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d354, i32 0, i32 1) }, 1
  %t938 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d354, i32 0, i32 1) }, 0
  %t939 = add i64 %t936, %t938
  %t940 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t939)
  call void @olang_textcopy(ptr %t940, ptr %t931, i64 %t932)
  %t941 = getelementptr i8, ptr %t940, i64 %t932
  call void @olang_textcopy(ptr %t941, ptr %t934, i64 %t935)
  %t942 = getelementptr i8, ptr %t941, i64 %t935
  call void @olang_textcopy(ptr %t942, ptr %t937, i64 %t938)
  %t943 = insertvalue { i64, ptr } undef, i64 %t939, 0
  %t944 = insertvalue { i64, ptr } %t943, ptr %t940, 1
  %t947 = extractvalue { i64, ptr } %t944, 0
  %t948 = extractvalue { i64, ptr } %t944, 1
  %t949 = mul i64 %t947, 1
  %t950 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t949)
  call void @llvm.memcpy.p0.p0.i64(ptr %t950, ptr %t948, i64 %t949, i1 false)
  %t951 = insertvalue { i64, ptr } undef, i64 %t947, 0
  %t952 = insertvalue { i64, ptr } %t951, ptr %t950, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v3, ptr %s62, ptr %t929, { i64, ptr } %t952)
  br label %bb207
bb207:
  store i32 2, ptr %l356, !tbaa !23
  call void @__olang_scope_close(ptr %s62)
  %t955 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t957 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t955)
  store i32 %t957, ptr %l358
  %t958 = icmp ne i32 %t957, 0
  br i1 %t958, label %bb209, label %ok.959, !prof !99
ok.959:
  br label %bb208
bb208:
  br label %bb213
bb209:
  %t960 = load i32, ptr %l358, !tbaa !23
  %t961 = ashr i32 %t960, 16
  %t963 = icmp eq i32 %t961, 1
  store i1 %t963, ptr %l360, !tbaa !21
  %t964 = load i32, ptr %l358, !tbaa !23
  %t965 = ashr i32 %t964, 16
  %t967 = icmp eq i32 %t965, 1
  br i1 %t967, label %bb210, label %bb211
bb210:
  call void @__olang_errpay_pop()
  br label %bb211
bb211:
  br label %bb212
bb212:
  br label %bb213
bb213:
  call void @__olang_scope_close(ptr %s0)
  %t969 = load i32, ptr %l356, !tbaa !23
  store i32 %t969, ptr %rv
  br label %ret
bb214:
  store i32 0, ptr %l363, !tbaa !23
  %t970 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t972 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t970)
  store i32 %t972, ptr %l365
  %t973 = icmp ne i32 %t972, 0
  br i1 %t973, label %bb216, label %ok.974, !prof !99
ok.974:
  br label %bb215
bb215:
  br label %bb220
bb216:
  %t975 = load i32, ptr %l365, !tbaa !23
  %t976 = ashr i32 %t975, 16
  %t978 = icmp eq i32 %t976, 1
  store i1 %t978, ptr %l367, !tbaa !21
  %t979 = load i32, ptr %l365, !tbaa !23
  %t980 = ashr i32 %t979, 16
  %t982 = icmp eq i32 %t980, 1
  br i1 %t982, label %bb217, label %bb218
bb217:
  call void @__olang_errpay_pop()
  br label %bb218
bb218:
  br label %bb219
bb219:
  br label %bb220
bb220:
  call void @__olang_scope_close(ptr %s0)
  %t984 = load i32, ptr %l363, !tbaa !23
  store i32 %t984, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2etext(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca i1
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call ptr @compiler_2fbindgen_2emember(ptr %v0, ptr %v1, ptr %v0, ptr %a0, { i64, ptr } %a1)
  store ptr %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l6, !tbaa !29
  store ptr %t6, ptr %l2, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d355, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t11, ptr %l10, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l11, !tbaa !24
  %t14 = load i64, ptr %l11, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l12, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l11, !tbaa !24
  %t24 = mul i64 %t23, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t25, ptr %l10, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t26, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t28 = load ptr, ptr %l13, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = load ptr, ptr %l13, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 8}
  %t34 = icmp eq i64 %t32, 5
  store i1 %t34, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t35 = load i1, ptr %l14, !tbaa !21
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr { i64, [2 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { { i64, ptr } }, ptr %t38, i32 0, i32 0
  %t40 = load { i64, ptr }, ptr %t39
  store { i64, ptr } %t40, ptr %l3, !tbaa !27
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 1
  %t45 = extractvalue { i64, ptr } %t42, 0
  %t46 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t44, i64 %t45)
  %t47 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %rv
  br label %ret
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d356, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t50, ptr %l22, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  store i64 %t52, ptr %l23, !tbaa !24
  %t53 = load i64, ptr %l23, !tbaa !24
  %t54 = mul i64 %t53, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l24, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = load i64, ptr %l23, !tbaa !24
  %t63 = mul i64 %t62, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t59, ptr %t61, i64 %t63, i1 false)
  %t64 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t64, ptr %l22, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t65, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_433ff8d12b25a21d_ce9dc62322af2169)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2etypeOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call ptr @compiler_2fbindgen_2emember(ptr %v0, ptr %s0, ptr %v0, ptr %a0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d357, i32 0, i32 1) })
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d358, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l8, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = mul i64 %t12, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l9, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = load i64, ptr %l8, !tbaa !24
  %t22 = mul i64 %t21, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %t20, i64 %t22, i1 false)
  %t23 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t23, ptr %l7, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t24 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %v0, ptr %s0, ptr %v1, ptr %t25, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d359, i32 0, i32 1) })
  store { i64, ptr } %t27, ptr %l11
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t28 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t28, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2evoidRef(ptr %v0, i1 %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a0, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d360, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t3, ptr %l2, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d361, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t5, ptr %l2, !tbaa !27
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l7, !tbaa !24
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l8, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l7, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/bindgen:cparse" @compiler_2fbindgen_3acparse_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"compiler/bindgen:cparse"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/bindgen:cparse" undef, { i64, ptr } %a0, 0
  %t8 = insertvalue %"compiler/bindgen:cparse" %t6, { i64, ptr } %a1, 1
  %t10 = insertvalue %"compiler/bindgen:cparse" %t8, i64 0, 2
  store %"compiler/bindgen:cparse" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cparse", ptr %rv
  ret %"compiler/bindgen:cparse" %rr
}

define dso_local void @compiler_2fbindgen_3agen_2ector(ptr %out, ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/text:StringBuilder"
  %l22 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca i1
  %l26 = alloca { i64, ptr }
  %l29 = alloca i64
  %l31 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l33 = alloca i64
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca i64
  %l39 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l41 = alloca i64
  %l43 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l45 = alloca i64
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca i64
  %l55 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l57 = alloca i64
  %l59 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l61 = alloca i64
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca i64
  %l67 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l69 = alloca i64
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca i64
  %l75 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l78 = alloca i64
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l82 = alloca i64
  %l84 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l86 = alloca i64
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l90 = alloca i64
  %l92 = alloca %"std/prelude/text:StringBuilder"
  %l94 = alloca i64
  %l96 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l98 = alloca i64
  %l100 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l102 = alloca i64
  %l104 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l106 = alloca %"compiler/bindgen:gen"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  store i1 false, ptr %l2, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d362, i32 0, i32 1) }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d363, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t3 = ptrtoint ptr %v1 to i64
  store i64 %t3, ptr %l29, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e4
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v1)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l29, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l29
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t9)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %l31
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e4
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l29
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31, i32 0, i32 2
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = call ptr @__olang_region_home(ptr %t18)
  %t20 = icmp ne ptr %t19, null
  %t21 = select i1 %t20, ptr %t19, ptr null
  %t22 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31, i32 0, i32 1
  %t23 = load { i64, ptr }, ptr %t22
  %t24 = extractvalue { i64, ptr } %t23, 1
  %t25 = call ptr @__olang_region_or(ptr %t24, ptr null)
  %t26 = call ptr @__olang_region_home(ptr %t25)
  %t27 = icmp ne ptr %t26, null
  %t28 = select i1 %t27, ptr %t26, ptr %t21
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = call ptr @__olang_region_or(ptr %t31, ptr null)
  %t33 = call ptr @__olang_region_home(ptr %t32)
  %t34 = icmp ne ptr %t33, null
  %t35 = select i1 %t34, ptr %t33, ptr %t28
  %t36 = icmp eq ptr %t35, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t36)
  br label %bb5
bb5:
  %t37 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t37, ptr %l5
  %t38 = ptrtoint ptr %v1 to i64
  store i64 %t38, ptr %l33, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e5
  br i1 %t39, label %bb6, label %bb7
bb6:
  %t41 = call ptr @__olang_region_make(ptr %v1)
  %t42 = ptrtoint ptr %t41 to i64
  store i64 %t42, ptr %l33, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l33
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2ector(ptr %t44, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %l35
  br label %bb8
bb8:
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e5
  br i1 %t46, label %bb9, label %bb10
bb9:
  %t48 = load i64, ptr %l33
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35, i32 0, i32 0
  %t51 = load { i64, ptr }, ptr %t50
  %t52 = extractvalue { i64, ptr } %t51, 1
  %t53 = call ptr @__olang_region_or(ptr %t52, ptr null)
  %t54 = call ptr @__olang_region_home(ptr %t53)
  %t55 = icmp ne ptr %t54, null
  %t56 = select i1 %t55, ptr %t54, ptr null
  %t57 = icmp eq ptr %t56, %t49
  call void @__olang_region_settle(ptr %t49, i1 %t57)
  br label %bb10
bb10:
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l6
  %t59 = ptrtoint ptr %v1 to i64
  store i64 %t59, ptr %l37, !tbaa !24
  %t60 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e6
  br i1 %t60, label %bb11, label %bb12
bb11:
  %t62 = call ptr @__olang_region_make(ptr %v1)
  %t63 = ptrtoint ptr %t62 to i64
  store i64 %t63, ptr %l37, !tbaa !24
  br label %bb12
bb12:
  %t64 = load i64, ptr %l37
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t65)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t66, ptr %l39
  br label %bb13
bb13:
  %t67 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e6
  br i1 %t67, label %bb14, label %bb15
bb14:
  %t69 = load i64, ptr %l37
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39, i32 0, i32 2
  %t72 = load { i64, ptr }, ptr %t71
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = call ptr @__olang_region_home(ptr %t74)
  %t76 = icmp ne ptr %t75, null
  %t77 = select i1 %t76, ptr %t75, ptr null
  %t78 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39, i32 0, i32 1
  %t79 = load { i64, ptr }, ptr %t78
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = call ptr @__olang_region_or(ptr %t80, ptr null)
  %t82 = call ptr @__olang_region_home(ptr %t81)
  %t83 = icmp ne ptr %t82, null
  %t84 = select i1 %t83, ptr %t82, ptr %t77
  %t85 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39, i32 0, i32 0
  %t86 = load { i64, ptr }, ptr %t85
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = call ptr @__olang_region_or(ptr %t87, ptr null)
  %t89 = call ptr @__olang_region_home(ptr %t88)
  %t90 = icmp ne ptr %t89, null
  %t91 = select i1 %t90, ptr %t89, ptr %t84
  %t92 = icmp eq ptr %t91, %t70
  call void @__olang_region_settle(ptr %t70, i1 %t92)
  br label %bb15
bb15:
  %t93 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t93, ptr %l7
  %t94 = ptrtoint ptr %v1 to i64
  store i64 %t94, ptr %l41, !tbaa !24
  %t95 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e7
  br i1 %t95, label %bb16, label %bb17
bb16:
  %t97 = call ptr @__olang_region_make(ptr %v1)
  %t98 = ptrtoint ptr %t97 to i64
  store i64 %t98, ptr %l41, !tbaa !24
  br label %bb17
bb17:
  %t99 = load i64, ptr %l41
  %t100 = inttoptr i64 %t99 to ptr
  %t101 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t100)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t101, ptr %l43
  br label %bb18
bb18:
  %t102 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e7
  br i1 %t102, label %bb19, label %bb20
bb19:
  %t104 = load i64, ptr %l41
  %t105 = inttoptr i64 %t104 to ptr
  %t106 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 2
  %t107 = load { i64, ptr }, ptr %t106
  %t108 = extractvalue { i64, ptr } %t107, 1
  %t109 = call ptr @__olang_region_or(ptr %t108, ptr null)
  %t110 = call ptr @__olang_region_home(ptr %t109)
  %t111 = icmp ne ptr %t110, null
  %t112 = select i1 %t111, ptr %t110, ptr null
  %t113 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 1
  %t114 = load { i64, ptr }, ptr %t113
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = call ptr @__olang_region_or(ptr %t115, ptr null)
  %t117 = call ptr @__olang_region_home(ptr %t116)
  %t118 = icmp ne ptr %t117, null
  %t119 = select i1 %t118, ptr %t117, ptr %t112
  %t120 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 0
  %t121 = load { i64, ptr }, ptr %t120
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = call ptr @__olang_region_or(ptr %t122, ptr null)
  %t124 = call ptr @__olang_region_home(ptr %t123)
  %t125 = icmp ne ptr %t124, null
  %t126 = select i1 %t125, ptr %t124, ptr %t119
  %t127 = icmp eq ptr %t126, %t105
  call void @__olang_region_settle(ptr %t105, i1 %t127)
  br label %bb20
bb20:
  %t128 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t128, ptr %l8
  %t129 = ptrtoint ptr %v1 to i64
  store i64 %t129, ptr %l45, !tbaa !24
  %t130 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e8
  br i1 %t130, label %bb21, label %bb22
bb21:
  %t132 = call ptr @__olang_region_make(ptr %v1)
  %t133 = ptrtoint ptr %t132 to i64
  store i64 %t133, ptr %l45, !tbaa !24
  br label %bb22
bb22:
  %t134 = load i64, ptr %l45
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2ector(ptr %t135, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %l47
  br label %bb23
bb23:
  %t137 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e8
  br i1 %t137, label %bb24, label %bb25
bb24:
  %t139 = load i64, ptr %l45
  %t140 = inttoptr i64 %t139 to ptr
  %t141 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47, i32 0, i32 0
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = call ptr @__olang_region_home(ptr %t144)
  %t146 = icmp ne ptr %t145, null
  %t147 = select i1 %t146, ptr %t145, ptr null
  %t148 = icmp eq ptr %t147, %t140
  call void @__olang_region_settle(ptr %t140, i1 %t148)
  br label %bb25
bb25:
  %t149 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t149, ptr %l9
  %t150 = ptrtoint ptr %v1 to i64
  store i64 %t150, ptr %l49, !tbaa !24
  %t151 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e9
  br i1 %t151, label %bb26, label %bb27
bb26:
  %t153 = call ptr @__olang_region_make(ptr %v1)
  %t154 = ptrtoint ptr %t153 to i64
  store i64 %t154, ptr %l49, !tbaa !24
  br label %bb27
bb27:
  %t155 = load i64, ptr %l49
  %t156 = inttoptr i64 %t155 to ptr
  %t157 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t156, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t157, ptr %l51
  br label %bb28
bb28:
  %t158 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e9
  br i1 %t158, label %bb29, label %bb30
bb29:
  %t160 = load i64, ptr %l49
  %t161 = inttoptr i64 %t160 to ptr
  %t162 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t163 = load { i64, ptr }, ptr %t162
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = call ptr @__olang_region_or(ptr %t164, ptr null)
  %t166 = call ptr @__olang_region_home(ptr %t165)
  %t167 = icmp ne ptr %t166, null
  %t168 = select i1 %t167, ptr %t166, ptr null
  %t169 = icmp eq ptr %t168, %t161
  call void @__olang_region_settle(ptr %t161, i1 %t169)
  br label %bb30
bb30:
  %t170 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %l10
  %t171 = ptrtoint ptr %v1 to i64
  store i64 %t171, ptr %l53, !tbaa !24
  %t172 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e10
  br i1 %t172, label %bb31, label %bb32
bb31:
  %t174 = call ptr @__olang_region_make(ptr %v1)
  %t175 = ptrtoint ptr %t174 to i64
  store i64 %t175, ptr %l53, !tbaa !24
  br label %bb32
bb32:
  %t176 = load i64, ptr %l53
  %t177 = inttoptr i64 %t176 to ptr
  %t178 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t177)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t178, ptr %l55
  br label %bb33
bb33:
  %t179 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e10
  br i1 %t179, label %bb34, label %bb35
bb34:
  %t181 = load i64, ptr %l53
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 2
  %t184 = load { i64, ptr }, ptr %t183
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = call ptr @__olang_region_home(ptr %t186)
  %t188 = icmp ne ptr %t187, null
  %t189 = select i1 %t188, ptr %t187, ptr null
  %t190 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 1
  %t191 = load { i64, ptr }, ptr %t190
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = call ptr @__olang_region_or(ptr %t192, ptr null)
  %t194 = call ptr @__olang_region_home(ptr %t193)
  %t195 = icmp ne ptr %t194, null
  %t196 = select i1 %t195, ptr %t194, ptr %t189
  %t197 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 0
  %t198 = load { i64, ptr }, ptr %t197
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = call ptr @__olang_region_or(ptr %t199, ptr null)
  %t201 = call ptr @__olang_region_home(ptr %t200)
  %t202 = icmp ne ptr %t201, null
  %t203 = select i1 %t202, ptr %t201, ptr %t196
  %t204 = icmp eq ptr %t203, %t182
  call void @__olang_region_settle(ptr %t182, i1 %t204)
  br label %bb35
bb35:
  %t205 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t205, ptr %l11
  %t206 = ptrtoint ptr %v1 to i64
  store i64 %t206, ptr %l57, !tbaa !24
  %t207 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e11
  br i1 %t207, label %bb36, label %bb37
bb36:
  %t209 = call ptr @__olang_region_make(ptr %v1)
  %t210 = ptrtoint ptr %t209 to i64
  store i64 %t210, ptr %l57, !tbaa !24
  br label %bb37
bb37:
  %t211 = load i64, ptr %l57
  %t212 = inttoptr i64 %t211 to ptr
  %t213 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t212)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t213, ptr %l59
  br label %bb38
bb38:
  %t214 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e11
  br i1 %t214, label %bb39, label %bb40
bb39:
  %t216 = load i64, ptr %l57
  %t217 = inttoptr i64 %t216 to ptr
  %t218 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59, i32 0, i32 2
  %t219 = load { i64, ptr }, ptr %t218
  %t220 = extractvalue { i64, ptr } %t219, 1
  %t221 = call ptr @__olang_region_or(ptr %t220, ptr null)
  %t222 = call ptr @__olang_region_home(ptr %t221)
  %t223 = icmp ne ptr %t222, null
  %t224 = select i1 %t223, ptr %t222, ptr null
  %t225 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59, i32 0, i32 1
  %t226 = load { i64, ptr }, ptr %t225
  %t227 = extractvalue { i64, ptr } %t226, 1
  %t228 = call ptr @__olang_region_or(ptr %t227, ptr null)
  %t229 = call ptr @__olang_region_home(ptr %t228)
  %t230 = icmp ne ptr %t229, null
  %t231 = select i1 %t230, ptr %t229, ptr %t224
  %t232 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59, i32 0, i32 0
  %t233 = load { i64, ptr }, ptr %t232
  %t234 = extractvalue { i64, ptr } %t233, 1
  %t235 = call ptr @__olang_region_or(ptr %t234, ptr null)
  %t236 = call ptr @__olang_region_home(ptr %t235)
  %t237 = icmp ne ptr %t236, null
  %t238 = select i1 %t237, ptr %t236, ptr %t231
  %t239 = icmp eq ptr %t238, %t217
  call void @__olang_region_settle(ptr %t217, i1 %t239)
  br label %bb40
bb40:
  %t240 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t240, ptr %l12
  %t241 = ptrtoint ptr %v1 to i64
  store i64 %t241, ptr %l61, !tbaa !24
  %t242 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e12
  br i1 %t242, label %bb41, label %bb42
bb41:
  %t244 = call ptr @__olang_region_make(ptr %v1)
  %t245 = ptrtoint ptr %t244 to i64
  store i64 %t245, ptr %l61, !tbaa !24
  br label %bb42
bb42:
  %t246 = load i64, ptr %l61
  %t247 = inttoptr i64 %t246 to ptr
  %t248 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2ector(ptr %t247, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t248, ptr %l63
  br label %bb43
bb43:
  %t249 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e12
  br i1 %t249, label %bb44, label %bb45
bb44:
  %t251 = load i64, ptr %l61
  %t252 = inttoptr i64 %t251 to ptr
  %t253 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63, i32 0, i32 0
  %t254 = load { i64, ptr }, ptr %t253
  %t255 = extractvalue { i64, ptr } %t254, 1
  %t256 = call ptr @__olang_region_or(ptr %t255, ptr null)
  %t257 = call ptr @__olang_region_home(ptr %t256)
  %t258 = icmp ne ptr %t257, null
  %t259 = select i1 %t258, ptr %t257, ptr null
  %t260 = icmp eq ptr %t259, %t252
  call void @__olang_region_settle(ptr %t252, i1 %t260)
  br label %bb45
bb45:
  %t261 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t261, ptr %l13
  %t262 = ptrtoint ptr %v1 to i64
  store i64 %t262, ptr %l65, !tbaa !24
  %t263 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e13
  br i1 %t263, label %bb46, label %bb47
bb46:
  %t265 = call ptr @__olang_region_make(ptr %v1)
  %t266 = ptrtoint ptr %t265 to i64
  store i64 %t266, ptr %l65, !tbaa !24
  br label %bb47
bb47:
  %t267 = load i64, ptr %l65
  %t268 = inttoptr i64 %t267 to ptr
  %t269 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t268)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t269, ptr %l67
  br label %bb48
bb48:
  %t270 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e13
  br i1 %t270, label %bb49, label %bb50
bb49:
  %t272 = load i64, ptr %l65
  %t273 = inttoptr i64 %t272 to ptr
  %t274 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67, i32 0, i32 2
  %t275 = load { i64, ptr }, ptr %t274
  %t276 = extractvalue { i64, ptr } %t275, 1
  %t277 = call ptr @__olang_region_or(ptr %t276, ptr null)
  %t278 = call ptr @__olang_region_home(ptr %t277)
  %t279 = icmp ne ptr %t278, null
  %t280 = select i1 %t279, ptr %t278, ptr null
  %t281 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67, i32 0, i32 1
  %t282 = load { i64, ptr }, ptr %t281
  %t283 = extractvalue { i64, ptr } %t282, 1
  %t284 = call ptr @__olang_region_or(ptr %t283, ptr null)
  %t285 = call ptr @__olang_region_home(ptr %t284)
  %t286 = icmp ne ptr %t285, null
  %t287 = select i1 %t286, ptr %t285, ptr %t280
  %t288 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67, i32 0, i32 0
  %t289 = load { i64, ptr }, ptr %t288
  %t290 = extractvalue { i64, ptr } %t289, 1
  %t291 = call ptr @__olang_region_or(ptr %t290, ptr null)
  %t292 = call ptr @__olang_region_home(ptr %t291)
  %t293 = icmp ne ptr %t292, null
  %t294 = select i1 %t293, ptr %t292, ptr %t287
  %t295 = icmp eq ptr %t294, %t273
  call void @__olang_region_settle(ptr %t273, i1 %t295)
  br label %bb50
bb50:
  %t296 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t296, ptr %l14
  %t297 = ptrtoint ptr %v1 to i64
  store i64 %t297, ptr %l69, !tbaa !24
  %t298 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e14
  br i1 %t298, label %bb51, label %bb52
bb51:
  %t300 = call ptr @__olang_region_make(ptr %v1)
  %t301 = ptrtoint ptr %t300 to i64
  store i64 %t301, ptr %l69, !tbaa !24
  br label %bb52
bb52:
  %t302 = load i64, ptr %l69
  %t303 = inttoptr i64 %t302 to ptr
  %t304 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t303, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t304, ptr %l71
  br label %bb53
bb53:
  %t305 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e14
  br i1 %t305, label %bb54, label %bb55
bb54:
  %t307 = load i64, ptr %l69
  %t308 = inttoptr i64 %t307 to ptr
  %t309 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71, i32 0, i32 0
  %t310 = load { i64, ptr }, ptr %t309
  %t311 = extractvalue { i64, ptr } %t310, 1
  %t312 = call ptr @__olang_region_or(ptr %t311, ptr null)
  %t313 = call ptr @__olang_region_home(ptr %t312)
  %t314 = icmp ne ptr %t313, null
  %t315 = select i1 %t314, ptr %t313, ptr null
  %t316 = icmp eq ptr %t315, %t308
  call void @__olang_region_settle(ptr %t308, i1 %t316)
  br label %bb55
bb55:
  %t317 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t317, ptr %l15
  %t318 = ptrtoint ptr %v1 to i64
  store i64 %t318, ptr %l73, !tbaa !24
  %t319 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e15
  br i1 %t319, label %bb56, label %bb57
bb56:
  %t321 = call ptr @__olang_region_make(ptr %v1)
  %t322 = ptrtoint ptr %t321 to i64
  store i64 %t322, ptr %l73, !tbaa !24
  br label %bb57
bb57:
  %t323 = load i64, ptr %l73
  %t324 = inttoptr i64 %t323 to ptr
  %t325 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t324)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t325, ptr %l75
  br label %bb58
bb58:
  %t326 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e15
  br i1 %t326, label %bb59, label %bb60
bb59:
  %t328 = load i64, ptr %l73
  %t329 = inttoptr i64 %t328 to ptr
  %t330 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75, i32 0, i32 2
  %t331 = load { i64, ptr }, ptr %t330
  %t332 = extractvalue { i64, ptr } %t331, 1
  %t333 = call ptr @__olang_region_or(ptr %t332, ptr null)
  %t334 = call ptr @__olang_region_home(ptr %t333)
  %t335 = icmp ne ptr %t334, null
  %t336 = select i1 %t335, ptr %t334, ptr null
  %t337 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75, i32 0, i32 1
  %t338 = load { i64, ptr }, ptr %t337
  %t339 = extractvalue { i64, ptr } %t338, 1
  %t340 = call ptr @__olang_region_or(ptr %t339, ptr null)
  %t341 = call ptr @__olang_region_home(ptr %t340)
  %t342 = icmp ne ptr %t341, null
  %t343 = select i1 %t342, ptr %t341, ptr %t336
  %t344 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75, i32 0, i32 0
  %t345 = load { i64, ptr }, ptr %t344
  %t346 = extractvalue { i64, ptr } %t345, 1
  %t347 = call ptr @__olang_region_or(ptr %t346, ptr null)
  %t348 = call ptr @__olang_region_home(ptr %t347)
  %t349 = icmp ne ptr %t348, null
  %t350 = select i1 %t349, ptr %t348, ptr %t343
  %t351 = icmp eq ptr %t350, %t329
  call void @__olang_region_settle(ptr %t329, i1 %t351)
  br label %bb60
bb60:
  %t352 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t352, ptr %l16
  %t353 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t353, ptr %l77
  br label %bb61
bb61:
  %t354 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t354, ptr %l17
  %t355 = ptrtoint ptr %v1 to i64
  store i64 %t355, ptr %l78, !tbaa !24
  %t356 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e17
  br i1 %t356, label %bb62, label %bb63
bb62:
  %t358 = call ptr @__olang_region_make(ptr %v1)
  %t359 = ptrtoint ptr %t358 to i64
  store i64 %t359, ptr %l78, !tbaa !24
  br label %bb63
bb63:
  %t360 = load i64, ptr %l78
  %t361 = inttoptr i64 %t360 to ptr
  %t362 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t361, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t362, ptr %l80
  br label %bb64
bb64:
  %t363 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e17
  br i1 %t363, label %bb65, label %bb66
bb65:
  %t365 = load i64, ptr %l78
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80, i32 0, i32 0
  %t368 = load { i64, ptr }, ptr %t367
  %t369 = extractvalue { i64, ptr } %t368, 1
  %t370 = call ptr @__olang_region_or(ptr %t369, ptr null)
  %t371 = call ptr @__olang_region_home(ptr %t370)
  %t372 = icmp ne ptr %t371, null
  %t373 = select i1 %t372, ptr %t371, ptr null
  %t374 = icmp eq ptr %t373, %t366
  call void @__olang_region_settle(ptr %t366, i1 %t374)
  br label %bb66
bb66:
  %t375 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t375, ptr %l18
  %t376 = ptrtoint ptr %v1 to i64
  store i64 %t376, ptr %l82, !tbaa !24
  %t377 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e18
  br i1 %t377, label %bb67, label %bb68
bb67:
  %t379 = call ptr @__olang_region_make(ptr %v1)
  %t380 = ptrtoint ptr %t379 to i64
  store i64 %t380, ptr %l82, !tbaa !24
  br label %bb68
bb68:
  %t381 = load i64, ptr %l82
  %t382 = inttoptr i64 %t381 to ptr
  %t383 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t382, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383, ptr %l84
  br label %bb69
bb69:
  %t384 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e18
  br i1 %t384, label %bb70, label %bb71
bb70:
  %t386 = load i64, ptr %l82
  %t387 = inttoptr i64 %t386 to ptr
  %t388 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84, i32 0, i32 0
  %t389 = load { i64, ptr }, ptr %t388
  %t390 = extractvalue { i64, ptr } %t389, 1
  %t391 = call ptr @__olang_region_or(ptr %t390, ptr null)
  %t392 = call ptr @__olang_region_home(ptr %t391)
  %t393 = icmp ne ptr %t392, null
  %t394 = select i1 %t393, ptr %t392, ptr null
  %t395 = icmp eq ptr %t394, %t387
  call void @__olang_region_settle(ptr %t387, i1 %t395)
  br label %bb71
bb71:
  %t396 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t396, ptr %l19
  %t397 = ptrtoint ptr %v1 to i64
  store i64 %t397, ptr %l86, !tbaa !24
  %t398 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e19
  br i1 %t398, label %bb72, label %bb73
bb72:
  %t400 = call ptr @__olang_region_make(ptr %v1)
  %t401 = ptrtoint ptr %t400 to i64
  store i64 %t401, ptr %l86, !tbaa !24
  br label %bb73
bb73:
  %t402 = load i64, ptr %l86
  %t403 = inttoptr i64 %t402 to ptr
  %t404 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t403, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t404, ptr %l88
  br label %bb74
bb74:
  %t405 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e19
  br i1 %t405, label %bb75, label %bb76
bb75:
  %t407 = load i64, ptr %l86
  %t408 = inttoptr i64 %t407 to ptr
  %t409 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88, i32 0, i32 0
  %t410 = load { i64, ptr }, ptr %t409
  %t411 = extractvalue { i64, ptr } %t410, 1
  %t412 = call ptr @__olang_region_or(ptr %t411, ptr null)
  %t413 = call ptr @__olang_region_home(ptr %t412)
  %t414 = icmp ne ptr %t413, null
  %t415 = select i1 %t414, ptr %t413, ptr null
  %t416 = icmp eq ptr %t415, %t408
  call void @__olang_region_settle(ptr %t408, i1 %t416)
  br label %bb76
bb76:
  %t417 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t417, ptr %l20
  %t418 = ptrtoint ptr %v1 to i64
  store i64 %t418, ptr %l90, !tbaa !24
  %t419 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e20
  br i1 %t419, label %bb77, label %bb78
bb77:
  %t421 = call ptr @__olang_region_make(ptr %v1)
  %t422 = ptrtoint ptr %t421 to i64
  store i64 %t422, ptr %l90, !tbaa !24
  br label %bb78
bb78:
  %t423 = load i64, ptr %l90
  %t424 = inttoptr i64 %t423 to ptr
  %t425 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %t424)
  store %"std/prelude/text:StringBuilder" %t425, ptr %l92
  br label %bb79
bb79:
  %t426 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e20
  br i1 %t426, label %bb80, label %bb81
bb80:
  %t428 = load i64, ptr %l90
  %t429 = inttoptr i64 %t428 to ptr
  %t430 = getelementptr %"std/prelude/text:StringBuilder", ptr %l92, i32 0, i32 0
  %t431 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t430, i32 0, i32 0
  %t432 = load { i64, ptr }, ptr %t431
  %t433 = extractvalue { i64, ptr } %t432, 1
  %t434 = call ptr @__olang_region_or(ptr %t433, ptr null)
  %t435 = call ptr @__olang_region_home(ptr %t434)
  %t436 = icmp ne ptr %t435, null
  %t437 = select i1 %t436, ptr %t435, ptr null
  %t438 = icmp eq ptr %t437, %t429
  call void @__olang_region_settle(ptr %t429, i1 %t438)
  br label %bb81
bb81:
  %t439 = load %"std/prelude/text:StringBuilder", ptr %l92
  store %"std/prelude/text:StringBuilder" %t439, ptr %l21
  %t440 = ptrtoint ptr %v1 to i64
  store i64 %t440, ptr %l94, !tbaa !24
  %t441 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e21
  br i1 %t441, label %bb82, label %bb83
bb82:
  %t443 = call ptr @__olang_region_make(ptr %v1)
  %t444 = ptrtoint ptr %t443 to i64
  store i64 %t444, ptr %l94, !tbaa !24
  br label %bb83
bb83:
  %t445 = load i64, ptr %l94
  %t446 = inttoptr i64 %t445 to ptr
  %t447 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t446)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t447, ptr %l96
  br label %bb84
bb84:
  %t448 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e21
  br i1 %t448, label %bb85, label %bb86
bb85:
  %t450 = load i64, ptr %l94
  %t451 = inttoptr i64 %t450 to ptr
  %t452 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l96, i32 0, i32 2
  %t453 = load { i64, ptr }, ptr %t452
  %t454 = extractvalue { i64, ptr } %t453, 1
  %t455 = call ptr @__olang_region_or(ptr %t454, ptr null)
  %t456 = call ptr @__olang_region_home(ptr %t455)
  %t457 = icmp ne ptr %t456, null
  %t458 = select i1 %t457, ptr %t456, ptr null
  %t459 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l96, i32 0, i32 1
  %t460 = load { i64, ptr }, ptr %t459
  %t461 = extractvalue { i64, ptr } %t460, 1
  %t462 = call ptr @__olang_region_or(ptr %t461, ptr null)
  %t463 = call ptr @__olang_region_home(ptr %t462)
  %t464 = icmp ne ptr %t463, null
  %t465 = select i1 %t464, ptr %t463, ptr %t458
  %t466 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l96, i32 0, i32 0
  %t467 = load { i64, ptr }, ptr %t466
  %t468 = extractvalue { i64, ptr } %t467, 1
  %t469 = call ptr @__olang_region_or(ptr %t468, ptr null)
  %t470 = call ptr @__olang_region_home(ptr %t469)
  %t471 = icmp ne ptr %t470, null
  %t472 = select i1 %t471, ptr %t470, ptr %t465
  %t473 = icmp eq ptr %t472, %t451
  call void @__olang_region_settle(ptr %t451, i1 %t473)
  br label %bb86
bb86:
  %t474 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l96
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t474, ptr %l22
  %t475 = ptrtoint ptr %v1 to i64
  store i64 %t475, ptr %l98, !tbaa !24
  %t476 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e22
  br i1 %t476, label %bb87, label %bb88
bb87:
  %t478 = call ptr @__olang_region_make(ptr %v1)
  %t479 = ptrtoint ptr %t478 to i64
  store i64 %t479, ptr %l98, !tbaa !24
  br label %bb88
bb88:
  %t480 = load i64, ptr %l98
  %t481 = inttoptr i64 %t480 to ptr
  %t482 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t481)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t482, ptr %l100
  br label %bb89
bb89:
  %t483 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e22
  br i1 %t483, label %bb90, label %bb91
bb90:
  %t485 = load i64, ptr %l98
  %t486 = inttoptr i64 %t485 to ptr
  %t487 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100, i32 0, i32 2
  %t488 = load { i64, ptr }, ptr %t487
  %t489 = extractvalue { i64, ptr } %t488, 1
  %t490 = call ptr @__olang_region_or(ptr %t489, ptr null)
  %t491 = call ptr @__olang_region_home(ptr %t490)
  %t492 = icmp ne ptr %t491, null
  %t493 = select i1 %t492, ptr %t491, ptr null
  %t494 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100, i32 0, i32 1
  %t495 = load { i64, ptr }, ptr %t494
  %t496 = extractvalue { i64, ptr } %t495, 1
  %t497 = call ptr @__olang_region_or(ptr %t496, ptr null)
  %t498 = call ptr @__olang_region_home(ptr %t497)
  %t499 = icmp ne ptr %t498, null
  %t500 = select i1 %t499, ptr %t498, ptr %t493
  %t501 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100, i32 0, i32 0
  %t502 = load { i64, ptr }, ptr %t501
  %t503 = extractvalue { i64, ptr } %t502, 1
  %t504 = call ptr @__olang_region_or(ptr %t503, ptr null)
  %t505 = call ptr @__olang_region_home(ptr %t504)
  %t506 = icmp ne ptr %t505, null
  %t507 = select i1 %t506, ptr %t505, ptr %t500
  %t508 = icmp eq ptr %t507, %t486
  call void @__olang_region_settle(ptr %t486, i1 %t508)
  br label %bb91
bb91:
  %t509 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t509, ptr %l23
  store i1 false, ptr %l24, !tbaa !21
  %t510 = ptrtoint ptr %v1 to i64
  store i64 %t510, ptr %l102, !tbaa !24
  %t511 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e24
  br i1 %t511, label %bb92, label %bb93
bb92:
  %t513 = call ptr @__olang_region_make(ptr %v1)
  %t514 = ptrtoint ptr %t513 to i64
  store i64 %t514, ptr %l102, !tbaa !24
  br label %bb93
bb93:
  %t515 = load i64, ptr %l102
  %t516 = inttoptr i64 %t515 to ptr
  %t517 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %t516)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t517, ptr %l104
  br label %bb94
bb94:
  %t518 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e24
  br i1 %t518, label %bb95, label %bb96
bb95:
  %t520 = load i64, ptr %l102
  %t521 = inttoptr i64 %t520 to ptr
  %t522 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104, i32 0, i32 2
  %t523 = load { i64, ptr }, ptr %t522
  %t524 = extractvalue { i64, ptr } %t523, 1
  %t525 = call ptr @__olang_region_or(ptr %t524, ptr null)
  %t526 = call ptr @__olang_region_home(ptr %t525)
  %t527 = icmp ne ptr %t526, null
  %t528 = select i1 %t527, ptr %t526, ptr null
  %t529 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104, i32 0, i32 1
  %t530 = load { i64, ptr }, ptr %t529
  %t531 = extractvalue { i64, ptr } %t530, 1
  %t532 = call ptr @__olang_region_or(ptr %t531, ptr null)
  %t533 = call ptr @__olang_region_home(ptr %t532)
  %t534 = icmp ne ptr %t533, null
  %t535 = select i1 %t534, ptr %t533, ptr %t528
  %t536 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104, i32 0, i32 0
  %t537 = load { i64, ptr }, ptr %t536
  %t538 = extractvalue { i64, ptr } %t537, 1
  %t539 = call ptr @__olang_region_or(ptr %t538, ptr null)
  %t540 = call ptr @__olang_region_home(ptr %t539)
  %t541 = icmp ne ptr %t540, null
  %t542 = select i1 %t541, ptr %t540, ptr %t535
  %t543 = icmp eq ptr %t542, %t521
  call void @__olang_region_settle(ptr %t521, i1 %t543)
  br label %bb96
bb96:
  %t544 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l104
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d364, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t545 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 0
  %t546 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t546, ptr %t545, !tbaa !27
  %t547 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 1
  %t548 = load i1, ptr %l2, !tbaa !21
  store i1 %t548, ptr %t547, !tbaa !21
  %t549 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 2
  %t550 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t550, ptr %t549, !tbaa !27
  %t551 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 3
  %t552 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t552, ptr %t551, !tbaa !27
  %t553 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 4
  %t554 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t554, ptr %t553
  %t555 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 5
  %t556 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t556, ptr %t555
  %t557 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 6
  %t558 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t558, ptr %t557
  %t559 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 7
  %t560 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t560, ptr %t559
  %t561 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 8
  %t562 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t562, ptr %t561
  %t563 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 9
  %t564 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t564, ptr %t563
  %t565 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 10
  %t566 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t566, ptr %t565
  %t567 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 11
  %t568 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t568, ptr %t567
  %t569 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 12
  %t570 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t570, ptr %t569
  %t571 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 13
  %t572 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t572, ptr %t571
  %t573 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 14
  %t574 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t574, ptr %t573
  %t575 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 15
  %t576 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t576, ptr %t575
  %t577 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 16
  %t578 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t578, ptr %t577
  %t579 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 17
  %t580 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t580, ptr %t579
  %t581 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 18
  %t582 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t582, ptr %t581
  %t583 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 19
  %t584 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t584, ptr %t583
  %t585 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 20
  %t586 = load %"std/prelude/text:StringBuilder", ptr %l21
  store %"std/prelude/text:StringBuilder" %t586, ptr %t585
  %t587 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 21
  %t588 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l22
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t588, ptr %t587
  %t589 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 22
  %t590 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l23
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t590, ptr %t589
  %t591 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 23
  %t592 = load i1, ptr %l24, !tbaa !21
  store i1 %t592, ptr %t591, !tbaa !21
  %t593 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 24
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t544, ptr %t593
  %t595 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 25
  %t596 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t596, ptr %t595, !tbaa !27
  %t597 = getelementptr %"compiler/bindgen:gen", ptr %l106, i32 0, i32 26
  store i64 0, ptr %t597, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l106, i64 1128, i1 false)
  br label %ret
ret:
  ret void
}

declare void @__olang_errpay_pop()
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"a C import needs clang, and there is none on the PATH" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang-cimport" }>, align 8
@.d4 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"a temporary directory cannot be made" }>, align 8
@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"probe.c" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d7 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"the probe cannot be written" }>, align 8
define linkonce_odr %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/bindgen:Translation"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/bindgen:Translation"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/bindgen:Translation", ptr %a0
  store %"compiler/bindgen:Translation" %t2, ptr %l1
  %t3 = getelementptr %"compiler/bindgen:Translation", ptr %l1, i32 0, i32 2
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/bindgen:Translation", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/bindgen:Translation", ptr %l1
  store %"compiler/bindgen:Translation" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:Translation", ptr %rv
  ret %"compiler/bindgen:Translation" %rr
}

@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2ecompiler_2fbindgen_3agen_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e3 = weak hidden constant i1 false
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-E" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-dD" }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-w" }>, align 8
@.d15 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"clang could not be run" }>, align 8
@.d16 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"file not found" }>, align 8
declare ptr @__olang_region_make(ptr) noinline
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d19 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"enum __olang_m" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d20 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" : long long { __olang_v" }>, align 8
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" = (" }>, align 8
@.d22 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c") };\0A" }>, align 8
@.d23 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"the probe cannot be written" }>, align 8
@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d26 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"EnumDecl" }>, align 8
@.d27 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"__olang_m" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e0 = weak hidden constant i1 false
@.d29 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"# olang's translation of " }>, align 8
@.d30 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c" (X17), made by the compiler: C's declarations as olang declares them\0A" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e1 = weak hidden constant i1 false
@.d32 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"/* olang C import: " }>, align 8
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" */\0A" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d35 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d36 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"U" }>, align 8
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"I" }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"I" }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"U" }>, align 8
@.d41 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"||" }>, align 8
@.d42 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&&" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"^" }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"==" }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!=" }>, align 8
@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d50 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"<=" }>, align 8
@.d51 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">=" }>, align 8
@.d52 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"<<" }>, align 8
@.d53 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">>" }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"+" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"*" }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"%" }>, align 8
@.d59 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d60 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d61 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acx_2e0 = weak hidden constant i1 false
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d63 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" != 0)" }>, align 8
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d67 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(1 if " }>, align 8
@.d68 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" else 0)" }>, align 8
@.d69 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d70 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"its body is empty where an expression is wanted" }>, align 8
@.d71 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d73 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a ( with no )" }>, align 8
@.d74 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"it holds text where an expression is wanted" }>, align 8
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
define internal i1 @olang_lambda_75(ptr %env, ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { i64, ptr }, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %vc0, { i64, ptr } %a0, { i64, ptr } %cv0)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d77 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d81 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d82 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3agen_2e25 = weak hidden constant i1 false
@.d83 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"it calls " }>, align 8
@.d84 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c", which is no function of numbers here" }>, align 8
@.d85 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d86 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d87 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d88 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"its call of " }>, align 8
@.d89 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" is not read" }>, align 8
@.d90 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d91 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d92 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d93 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"it names " }>, align 8
@.d94 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c", which has no value here" }>, align 8
@.d95 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d96 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d97 = private constant <{ i64, [11 x { i64, ptr }] }> <{ i64 0, [11 x { i64, ptr }] [{ i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d365, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d366, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d367, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d368, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d369, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d370, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d371, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d372, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d373, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d374, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d375, i32 0, i32 1) }] }>, align 8
@.d98 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d99 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d100 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d101 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d102 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"*" }>, align 8
@.d103 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d104 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"const" }>, align 8
@.d105 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"volatile" }>, align 8
@.d106 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"restrict" }>, align 8
@.d107 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"__restrict" }>, align 8
@.d108 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"const" }>, align 8
@.d109 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d110 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"*" }>, align 8
@.d111 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d112 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d113 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d114 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d116 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d117 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d118 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d119 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d120 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"variadic" }>, align 8
@.d121 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d122 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d123 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d124 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d125 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d126 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"it takes a variable number of arguments" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/bindgen:record"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 216, i1 false)
  %t2 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 4
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 5
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 16
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 216, i1 false)
  br label %ret
ret:
  ret void
}

@.d127 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d128 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"struct " }>, align 8
@.d129 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"union " }>, align 8
@.d130 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d131 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d132 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d133 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"F" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d134 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d135 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d136 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d137 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"F" }>, align 8
@.d138 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d139 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d140 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d141 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d142 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" := Array<" }>, align 8
@.d143 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">(" }>, align 8
@.d144 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d145 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d146 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d147 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d148 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d149 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d150 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d151 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"a typedef that names itself" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3actp_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3actype_2e1 = weak hidden constant i1 false
@.d152 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d153 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"', which is no C type read here" }>, align 8
@.d154 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d155 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"# " }>, align 8
@.d156 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2ereadMacros_2elocal_2e5 = weak hidden constant i1 false
@.d157 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5C\5C" }>, align 8
@.d158 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\5C" }>, align 8
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d159 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d160 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d161 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"#undef " }>, align 8
@.d162 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acMacro_2e0 = weak hidden constant i1 false
@.d163 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"#define " }>, align 8
@.d164 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d165 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d166 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d167 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acMacro_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3acMacro_2e3 = weak hidden constant i1 false
@.d168 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d169 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d170 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d171 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"tagUsed" }>, align 8
@.d172 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"union" }>, align 8
@.d173 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d174 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0 = weak hidden constant i1 false
@.d175 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"id" }>, align 8
@.d176 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"union " }>, align 8
@.d177 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"struct " }>, align 8
@.d178 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"completeDefinition" }>, align 8
@.d179 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d180 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"TransparentUnionAttr" }>, align 8
@.d181 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"PackedAttr" }>, align 8
@.d182 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"RecordDecl" }>, align 8
@.d183 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d184 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"FieldDecl" }>, align 8
@.d185 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"isBitfield" }>, align 8
@.d186 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"isBitfield" }>, align 8
@.d187 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d188 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d189 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" packed struct() {\0A" }>, align 8
@.d190 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}\0A" }>, align 8
@.d191 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d192 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" struct() {\0A" }>, align 8
@.d193 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d194 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d195 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I16" }>, align 8
@.d196 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d197 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"    bytes := Array<" }>, align 8
@.d198 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">(" }>, align 8
@.d199 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c")\0A}\0A" }>, align 8
@.d200 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d201 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d202 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" := Array<" }>, align 8
@.d203 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">(" }>, align 8
@.d204 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d205 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d206 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d207 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d208 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d209 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}\0A" }>, align 8
@.d210 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"includedFrom" }>, align 8
@.d211 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"file" }>, align 8
@.d212 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d213 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d214 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d215 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"const" }>, align 8
@.d216 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"volatile" }>, align 8
@.d217 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"restrict" }>, align 8
@.d218 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"__restrict" }>, align 8
@.d219 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"signed" }>, align 8
@.d220 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"unsigned" }>, align 8
@.d221 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"long" }>, align 8
@.d222 = private constant <{ i64, [11 x { i64, ptr }] }> <{ i64 0, [11 x { i64, ptr }] [{ i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d369, i32 0, i32 1) }, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d365, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d370, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d371, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d372, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d376, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d373, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d377, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d378, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d379, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d380, i32 0, i32 1) }] }>, align 8
@.d223 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"int" }>, align 8
@.d224 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"struct" }>, align 8
@.d225 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2etypeName_2elocal_2e5 = weak hidden constant i1 false
@.d226 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"union" }>, align 8
@.d227 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"enum" }>, align 8
@olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2etypeName_2elocal_2e7 = weak hidden constant i1 false
@.d228 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2etypeName_2elocal_2e8 = weak hidden constant i1 false
@.d229 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d230 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d231 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"enum" }>, align 8
@.d232 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d233 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d234 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d235 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d236 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d237 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"', a " }>, align 8
@.d238 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c" with no name of its own, or the C compiler's" }>, align 8
@.d239 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d240 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d241 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"a " }>, align 8
@.d242 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" with no name" }>, align 8
@.d243 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d244 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d245 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d246 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d247 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"', a type no declaration names" }>, align 8
@.d248 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d249 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d250 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"a struct by value that is not plain data (X11)" }>, align 8
@.d251 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"a packed struct holding a float by value (X11a)" }>, align 8
@.d252 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"CStr?&" }>, align 8
@.d253 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d254 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d255 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d256 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d257 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"a pointer to plain-data struct " }>, align 8
@.d258 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c" as a result - an extern gives only an extern type's reference (X2)" }>, align 8
@.d259 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"CVoid?&" }>, align 8
@.d260 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a value of this type, which has no olang form" }>, align 8
@.d261 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d262 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"c_" }>, align 8
@.d263 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d264 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"static or inline, and taking a variable number of arguments" }>, align 8
@.d265 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d266 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"static or inline, its result's type no olang form wraps" }>, align 8
@.d267 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"olang_ci_" }>, align 8
@.d268 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d269 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d270 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d271 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d272 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d273 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__typeof__(" }>, align 8
@.d274 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c") olang_a" }>, align 8
@.d275 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c") { " }>, align 8
@.d276 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d277 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"return " }>, align 8
@.d278 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d279 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d280 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang_a" }>, align 8
@.d281 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"); }\0A" }>, align 8
@.d282 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c": a name olang cannot declare (a keyword, or beginning with '_')" }>, align 8
@.d283 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c": a name every olang module has already" }>, align 8
@.d284 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c": static or inline in the header - no symbol to link" }>, align 8
@.d285 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c": static in its file - C's own to that file" }>, align 8
@.d286 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d287 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d288 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d289 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d290 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d291 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d292 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"# symbol " }>, align 8
@.d293 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d294 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d295 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d296 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"    type " }>, align 8
@.d297 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d298 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"\0Aextern {\0A" }>, align 8
@.d299 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}\0A" }>, align 8
@.d300 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d301 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d302 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d303 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d304 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"\0A# not declared:\0A" }>, align 8
@.d305 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"#   " }>, align 8
@.d306 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d307 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d308 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"olang: bindgen needs clang, which is not on the PATH\0A" }>, align 8
@.d309 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d310 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c": no such file\0A" }>, align 8
@.d311 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d312 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c": no such file\0A" }>, align 8
@.d313 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d314 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang-bindgen" }>, align 8
@.d315 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"olang: bindgen: cannot make a temporary directory\0A" }>, align 8
@.d316 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"probe.c" }>, align 8
@.d317 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"#include \22" }>, align 8
@.d318 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d319 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d320 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"olang: bindgen: cannot write " }>, align 8
@.d321 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d322 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-E" }>, align 8
@.d323 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-dD" }>, align 8
@.d324 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d325 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d326 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-w" }>, align 8
@.d327 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"olang: bindgen: clang could not be run\0A" }>, align 8
@.d328 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"olang: bindgen: clang could not read " }>, align 8
@.d329 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":\0A" }>, align 8
@.d330 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d331 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"enum __olang_m" }>, align 8
@.d332 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" : long long { __olang_v" }>, align 8
@.d333 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" = (" }>, align 8
@.d334 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c") };\0A" }>, align 8
@.d335 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"olang: bindgen: cannot write " }>, align 8
@.d336 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d337 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"olang: bindgen: clang could not read " }>, align 8
@.d338 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d339 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d340 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d341 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d342 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"EnumDecl" }>, align 8
@.d343 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"__olang_m" }>, align 8
@.d344 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d345 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"olang: bindgen: clang could not read " }>, align 8
@.d346 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d347 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d348 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"# Generated by olang bindgen from " }>, align 8
@.d349 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":\0A" }>, align 8
@.d350 = private constant <{ i64, [104 x i8] }> <{ i64 0, [104 x i8] c"# its C declarations as olang declares them (X1-X21) - write the library they are in after \22extern\22, as\0A" }>, align 8
@.d351 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"# 'extern link \22NAME\22 {' (X9), or import the header itself (X17).\0A" }>, align 8
@.d352 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d353 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d354 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c": cannot be written\0A" }>, align 8
@.d355 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d356 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d357 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"type" }>, align 8
@.d358 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d359 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"qualType" }>, align 8
@.d360 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"CVoid?&" }>, align 8
@.d361 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"mut CVoid?&" }>, align 8
@.d362 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d363 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3agen_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_home(ptr)
@olang_2esole_2ecompiler_2fbindgen_3agen_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3agen_2e24 = weak hidden constant i1 false
@.d364 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 16
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 16
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
@.d365 = private unnamed_addr constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"int" }>, align 8
@.d366 = private unnamed_addr constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"unsigned" }>, align 8
@.d367 = private unnamed_addr constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"signed" }>, align 8
@.d368 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"long" }>, align 8
@.d369 = private unnamed_addr constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"short" }>, align 8
@.d370 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d371 = private unnamed_addr constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d372 = private unnamed_addr constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"double" }>, align 8
@.d373 = private unnamed_addr constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"_Bool" }>, align 8
@.d374 = private unnamed_addr constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"const" }>, align 8
@.d375 = private unnamed_addr constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"volatile" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 8
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 8
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

@.d376 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d377 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"bool" }>, align 8
@.d378 = private unnamed_addr constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"_Float16" }>, align 8
@.d379 = private unnamed_addr constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"__bf16" }>, align 8
@.d380 = private unnamed_addr constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__int128" }>, align 8
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
declare %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %v0, i32 %a0, i64 %a1)
declare i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %v0, ptr %a0)
declare %"compiler/bindgen:Translation" @compiler_2fbindgen_3aTranslation_2ector(ptr %v0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbindgen_2efirstError(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eintMacros(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edump(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fbindgen_2einner(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_b774a7292e99a958_2ba7e6e1e518c9cc = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2econstant(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eotherConsts(ptr %v0, ptr %a0)
declare i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2esizes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
@olang_loc_760c7c7ac1a62521_16c6052ca99c0395 = external constant [0 x i8]
@olang_loc_e777242b492df290_2cbbd43a2df6cacc = external constant [0 x i8]
@olang_loc_aa3527431bc6906d_d98aa20bf76f5ef9 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_5d1582c4176ede0e_4f5ef5c07175765a = external constant [0 x i8]
@olang_loc_c1a7519d080599a4_d00fb28b8b3fdec0 = external constant [0 x i8]
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, i1 %a4, i64 %a5)
@G_2ecompiler_2fbindgen_2eKBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, i64 %a2, { i64, ptr } %a3)
@G_2ecompiler_2fbindgen_2eKVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbindgen_2eKType = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbindgen_2eKFloat = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
@G_2ecompiler_2fbindgen_2eKInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNumber(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eFindIndex_3cstd_2f_H0cdaf28864c9da4990596b1986b376a0(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eRefMut_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eplain(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fbindgen_2epreludeName(ptr %v0, { i64, ptr } %a0)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2emacroFn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd80cb4cbc6ceb8a13686fbc19b8451b4(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H116ed76223103781f5a7340c80f3d0f3(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %a0)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecord(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, ptr %a3)
declare i64 @compiler_2fbindgen_2enumBits(ptr %v0, { i64, ptr } %a0)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epointerParam(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2)
declare %"compiler/bindgen:ctp" @compiler_2fbindgen_3actp_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_beacd36cd332827c_e461632e30adb8c0 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
@olang_loc_88bbbdba37ecb069_7556c3a5c9bf841d = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eRefMu_H9d4ce036ca8f6276b6798968f53e8eb9(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_a6c60cdff876254a_2c918d2d7b99843e = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
@olang_loc_5755e6dd02fca827_178a482bfa1e95bb = external constant [0 x i8]
@olang_loc_4153d023000ff8e8_6b17d300a1e811b4 = external constant [0 x i8]
@olang_loc_ec020a578bdf64c5_799d4029e88195a1 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_642a74ef72af54a6_43680c0161c24f22 = external constant [0 x i8]
declare ptr @compiler_2fbindgen_2ecLex(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/bindgen:cMacro" @compiler_2fbindgen_3acMacro_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, i1 %a1, { i64, ptr } %a2, { i64, ptr } %a3, i1 %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eSetAt_H7935c3ba4e105e8cc692de439d360efe(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/bindgen:cMacro" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2ePush_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/bindgen:cMacro" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fbindgen_3arecord_2ector(ptr %out, ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2ePush_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fbindgen_2eflag(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efieldType(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v0, ptr %a0)
@olang_loc_c54e19abcb0a74ad_a74456fc2d527de1 = external constant [0 x i8]
@olang_loc_3dee357bb9e78e13_5fc101397bdf658f = external constant [0 x i8]
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enumType(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3)
declare i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epackedFloat(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eisByte(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_383dad6bbc51ebc3_b2d1cf432887049f = external constant [0 x i8]
declare { i64, ptr } @compiler_2fbindgen_2enoReturnOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fbindgen_2eresultText(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eLen_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %a0)
declare %"compiler/bindgen:cFunc" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eAt_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efunction(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_12d4b4c126d079e6_1af6ce2ce1af3fd2 = external constant [0 x i8]
declare void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
@olang_loc_2d25c1a9d7803e60_587b957d3d0d6154 = external constant [0 x i8]
@olang_loc_6d7a361a7a168fed_fbeb1a267b83d779 = external constant [0 x i8]
@olang_loc_3c31d34710cd488e_9478fba938690442 = external constant [0 x i8]
declare i32 @std_2fio_2ePut_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %a0)
declare ptr @compiler_2fbindgen_2emember(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_433ff8d12b25a21d_ce9dc62322af2169 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2ector(ptr %v0, i64 %a0)

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
