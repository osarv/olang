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
%"compiler/bindgen:Translation" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/bindgen:gen" = type { { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/bindgen:cMacro" = type { { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/bindgen:cx" = type { { i64, ptr }, i64, i64, { i64, ptr } }
%"compiler/bindgen:cparse" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/bindgen:ctype" = type { i32, { i64, ptr }, i64, i1, i64, i64 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/bindgen:record" = type { { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, i64, i1, { i64, ptr }, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/bindgen:cFunc" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, { i64, ptr } }
@G_2ecompiler_2fbindgen_2eKBool = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbindgen_2eKFloat = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbindgen_2eKInt = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbindgen_2eKType = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbindgen_2eKVar = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbindgen_2eNoReturnAttr = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\1A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2eNoReturnAttr.k1 }>, align 8
@G_2ecompiler_2fbindgen_2eNoReturnAttr.k1 = internal global <{ [26 x i8] }> <{ [26 x i8] c"\20\5F\5F\61\74\74\72\69\62\75\74\65\5F\5F\28\28\6E\6F\72\65\74\75\72\6E\29\29" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k1, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k2, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k3, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k4, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k5, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k6, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k7, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k8, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k9, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k10, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k11, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k12, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k13, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k14, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k15, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k16, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k17, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k18, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbindgen_2epreludeNames.k19 }>, align 64
@G_2ecompiler_2fbindgen_2epreludeNames.k1 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\53\74\72\69\6E\67" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k2 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\41\72\72\61\79" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k3 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\42\6F\6F\6C" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k4 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\43\68\61\72" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k5 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\56\65\63" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k6 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\4D\61\70" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k7 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\53\74\72\69\6E\67\42\75\69\6C\64\65\72" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k8 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\43\53\74\72" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k9 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\43\56\6F\69\64" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k10 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\49\74\65\72\61\74\6F\72" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k11 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\45\78\68\61\75\73\74\65\64" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k12 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\50\69" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k13 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\45\75\6C\65\72" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k14 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\49\6E\66" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k15 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\4E\61\4E" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k16 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\46\6C\6F\61\74" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k17 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\49\6E\74\65\67\65\72" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k18 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\4E\75\6D\62\65\72" }>, align 8
@G_2ecompiler_2fbindgen_2epreludeNames.k19 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\47\65\6E\65\72\61\74\6F\72" }>, align 8
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
  %l15 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
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
  %l90 = alloca i64
  %l95 = alloca { i64, ptr }
  %l97 = alloca i64
  %l102 = alloca { i64, ptr }
  %l104 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca ptr
  %l106 = alloca i64
  %l118 = alloca { i64, ptr }
  %l121 = alloca ptr
  %l122 = alloca i64
  %l141 = alloca ptr
  %l142 = alloca i64
  %l149 = alloca %"std/os:Output"
  %l151 = alloca { i64, ptr }
  %l152 = alloca %"std/os:Output"
  %l153 = alloca i32
  %l155 = alloca i1
  %l156 = alloca { i64, ptr }
  %l158 = alloca %"compiler/bindgen:Translation"
  %l160 = alloca %"compiler/bindgen:Translation"
  %l162 = alloca i32
  %l164 = alloca i1
  %l171 = alloca { i64, ptr }
  %l172 = alloca i1
  %l173 = alloca i64
  %l176 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l180 = alloca %"compiler/bindgen:Translation"
  %l182 = alloca %"compiler/bindgen:Translation"
  %l184 = alloca i32
  %l186 = alloca i1
  %l194 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l195 = alloca %"std/prelude/text:StringBuilder"
  %l201 = alloca i64
  %l203 = alloca i64
  %l209 = alloca i64
  %l210 = alloca ptr
  %l211 = alloca i64
  %l212 = alloca i64
  %l215 = alloca %"compiler/bindgen:cMacro"
  %l221 = alloca { i64, ptr }
  %l223 = alloca { i64, ptr }
  %l226 = alloca i32
  %l228 = alloca i1
  %l231 = alloca { i64, ptr }
  %l233 = alloca %"compiler/bindgen:Translation"
  %l235 = alloca %"compiler/bindgen:Translation"
  %l237 = alloca i32
  %l239 = alloca i1
  %l242 = alloca ptr
  %l247 = alloca ptr
  %l248 = alloca i32
  %l250 = alloca i1
  %l252 = alloca { i64, ptr }
  %l254 = alloca %"compiler/bindgen:Translation"
  %l256 = alloca %"compiler/bindgen:Translation"
  %l258 = alloca i32
  %l260 = alloca i1
  %l267 = alloca { i64, ptr }
  %l275 = alloca { i64, ptr }
  %l279 = alloca { i64, ptr }
  %l281 = alloca { i64, ptr }
  %l283 = alloca i1
  %l285 = alloca i1
  %l287 = alloca i1
  %l289 = alloca i64
  %l291 = alloca i64
  %l292 = alloca i64
  %l296 = alloca { i64, ptr }
  %l297 = alloca i64
  %l298 = alloca i32
  %l299 = alloca i64
  %l300 = alloca i32
  %l303 = alloca i1
  %l304 = alloca i64
  %l306 = alloca i64
  %l309 = alloca { i64, ptr }
  %l317 = alloca { i64, ptr }
  %l321 = alloca { i64, ptr }
  %l323 = alloca i1
  %l324 = alloca i64
  %l325 = alloca { i64, ptr }
  %l326 = alloca i64
  %l327 = alloca i32
  %l328 = alloca i64
  %l329 = alloca i32
  %l330 = alloca ptr
  %l331 = alloca ptr
  %l334 = alloca i64
  %l335 = alloca %"compiler/bindgen:cMacro"
  %l348 = alloca i32
  %l350 = alloca i1
  %l352 = alloca { i64, ptr }
  %l354 = alloca %"compiler/bindgen:Translation"
  %l356 = alloca %"compiler/bindgen:Translation"
  %l358 = alloca i32
  %l360 = alloca i1
  %l363 = alloca i64
  %l369 = alloca { i64, ptr }
  %l371 = alloca { i64, ptr }
  %l374 = alloca i64
  %l376 = alloca i1
  %l378 = alloca i1
  %l380 = alloca i64
  %l382 = alloca { i64, ptr }
  %l383 = alloca { i64, ptr }
  %l385 = alloca { i64, ptr }
  %l388 = alloca { i64, ptr }
  %l390 = alloca %"compiler/bindgen:Translation"
  %l392 = alloca %"compiler/bindgen:Translation"
  %l394 = alloca i32
  %l396 = alloca i1
  %s0 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s45 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s56 = alloca %olang.scope
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
  %t150 = ptrtoint ptr %v6 to i64
  store i64 %t150, ptr %l90, !tbaa !24
  %t151 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e2
  br i1 %t151, label %bb37, label %bb38
bb37:
  %t153 = call ptr @__olang_region_make(ptr %v6)
  %t154 = ptrtoint ptr %t153 to i64
  store i64 %t154, ptr %l90, !tbaa !24
  br label %bb38
bb38:
  %t157 = extractvalue { i64, ptr } %a4, 1
  %t158 = extractvalue { i64, ptr } %a4, 0
  %t159 = load i64, ptr %l90
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = call ptr @__olang_scope_alloc(ptr %t160, i64 %t158)
  call void @olang_textcopy(ptr %t161, ptr %t157, i64 %t158)
  %t162 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  %t165 = load i64, ptr %l90
  %t166 = inttoptr i64 %t165 to ptr
  %t167 = extractvalue { i64, ptr } %t163, 0
  %t168 = extractvalue { i64, ptr } %t163, 1
  %t169 = mul i64 %t167, 1
  %t170 = call ptr @__olang_scope_alloc(ptr %t166, i64 %t169)
  call void @llvm.memcpy.p0.p0.i64(ptr %t170, ptr %t168, i64 %t169, i1 false)
  %t171 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t170, 1
  %t173 = load ptr, ptr %lp10
  %t174 = getelementptr %"compiler/bindgen:gen", ptr %t173, i32 0, i32 2
  %t175 = load { i64, ptr }, ptr %t174, !tbaa !27
  store { i64, ptr } %t175, ptr %l95, !tbaa !27
  %t177 = load ptr, ptr %lp10
  %t178 = getelementptr %"compiler/bindgen:gen", ptr %t177, i32 0, i32 2
  store { i64, ptr } %t172, ptr %t178, !tbaa !27
  %t179 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e2
  br i1 %t179, label %bb39, label %bb40
bb39:
  %t181 = load { i64, ptr }, ptr %l95
  %t182 = extractvalue { i64, ptr } %t181, 1
  call void @__olang_region_release(ptr %t182)
  store { i64, ptr } zeroinitializer, ptr %l95
  br label %bb40
bb40:
  %t183 = ptrtoint ptr %v6 to i64
  store i64 %t183, ptr %l97, !tbaa !24
  %t184 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e3
  br i1 %t184, label %bb41, label %bb42
bb41:
  %t186 = call ptr @__olang_region_make(ptr %v6)
  %t187 = ptrtoint ptr %t186 to i64
  store i64 %t187, ptr %l97, !tbaa !24
  br label %bb42
bb42:
  %t188 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t188, 1
  %t191 = extractvalue { i64, ptr } %t188, 0
  %t192 = load i64, ptr %l97
  %t193 = inttoptr i64 %t192 to ptr
  %t194 = call ptr @__olang_scope_alloc(ptr %t193, i64 %t191)
  call void @olang_textcopy(ptr %t194, ptr %t190, i64 %t191)
  %t195 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t194, 1
  %t198 = load i64, ptr %l97
  %t199 = inttoptr i64 %t198 to ptr
  %t200 = extractvalue { i64, ptr } %t196, 0
  %t201 = extractvalue { i64, ptr } %t196, 1
  %t202 = mul i64 %t200, 1
  %t203 = call ptr @__olang_scope_alloc(ptr %t199, i64 %t202)
  call void @llvm.memcpy.p0.p0.i64(ptr %t203, ptr %t201, i64 %t202, i1 false)
  %t204 = insertvalue { i64, ptr } undef, i64 %t200, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  %t206 = load ptr, ptr %lp10
  %t207 = getelementptr %"compiler/bindgen:gen", ptr %t206, i32 0, i32 3
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  store { i64, ptr } %t208, ptr %l102, !tbaa !27
  %t210 = load ptr, ptr %lp10
  %t211 = getelementptr %"compiler/bindgen:gen", ptr %t210, i32 0, i32 3
  store { i64, ptr } %t205, ptr %t211, !tbaa !27
  %t212 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e3
  br i1 %t212, label %bb43, label %bb44
bb43:
  %t214 = load { i64, ptr }, ptr %l102
  %t215 = extractvalue { i64, ptr } %t214, 1
  call void @__olang_region_release(ptr %t215)
  store { i64, ptr } zeroinitializer, ptr %l102
  br label %bb44
bb44:
  %t216 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t216, ptr %l104
  br label %bb45
bb45:
  %t217 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t217, ptr %l11
  store ptr %l11, ptr %l105, !tbaa !29
  %t218 = ptrtoint ptr %s0 to i64
  store i64 %t218, ptr %l106, !tbaa !24
  %t219 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t219, label %bb46, label %bb47
bb46:
  %t221 = call ptr @__olang_region_make(ptr %s0)
  %t222 = ptrtoint ptr %t221 to i64
  store i64 %t222, ptr %l106, !tbaa !24
  br label %bb47
bb47:
  %t223 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t223, 1
  %t226 = extractvalue { i64, ptr } %t223, 0
  %t227 = load i64, ptr %l106
  %t228 = inttoptr i64 %t227 to ptr
  %t229 = call ptr @__olang_scope_alloc(ptr %t228, i64 %t226)
  call void @olang_textcopy(ptr %t229, ptr %t225, i64 %t226)
  %t230 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  %t233 = load i64, ptr %l106
  %t234 = inttoptr i64 %t233 to ptr
  %t235 = extractvalue { i64, ptr } %t231, 0
  %t236 = extractvalue { i64, ptr } %t231, 1
  %t237 = mul i64 %t235, 1
  %t238 = call ptr @__olang_scope_alloc(ptr %t234, i64 %t237)
  call void @llvm.memcpy.p0.p0.i64(ptr %t238, ptr %t236, i64 %t237, i1 false)
  %t239 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  %t241 = load ptr, ptr %l105, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t241, { i64, ptr } %t240)
  br label %bb48
bb48:
  %t243 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t243, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  store i64 %t247, ptr %l14, !tbaa !24
  br label %bb49
bb49:
  %t249 = load i64, ptr %l13, !tbaa !24
  %t250 = load i64, ptr %l14, !tbaa !24
  %t253 = icmp slt i64 %t249, %t250
  %t255 = xor i1 %t253, true
  br i1 %t255, label %bb50, label %bb51
bb50:
  br label %bb57
bb51:
  br label %bb52
bb52:
  %t257 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t257, ptr %l118, !tbaa !27
  %t258 = load i64, ptr %l13, !tbaa !24
  %t260 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = getelementptr { i64, ptr }, ptr %t261, i64 %t258
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !37
  store { i64, ptr } %t263, ptr %l15, !tbaa !27
  store ptr %l11, ptr %l121, !tbaa !29
  %t265 = ptrtoint ptr %s0 to i64
  store i64 %t265, ptr %l122, !tbaa !24
  %t266 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t266, label %bb53, label %bb54
bb53:
  %t268 = call ptr @__olang_region_make(ptr %s0)
  %t269 = ptrtoint ptr %t268 to i64
  store i64 %t269, ptr %l122, !tbaa !24
  br label %bb54
bb54:
  %t270 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t270, 1
  %t273 = extractvalue { i64, ptr } %t270, 0
  %t274 = load i64, ptr %l122
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = call ptr @__olang_scope_alloc(ptr %t275, i64 %t273)
  call void @olang_textcopy(ptr %t276, ptr %t272, i64 %t273)
  %t277 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  %t280 = load i64, ptr %l122
  %t281 = inttoptr i64 %t280 to ptr
  %t282 = extractvalue { i64, ptr } %t278, 0
  %t283 = extractvalue { i64, ptr } %t278, 1
  %t284 = mul i64 %t282, 1
  %t285 = call ptr @__olang_scope_alloc(ptr %t281, i64 %t284)
  call void @llvm.memcpy.p0.p0.i64(ptr %t285, ptr %t283, i64 %t284, i1 false)
  %t286 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t287 = insertvalue { i64, ptr } %t286, ptr %t285, 1
  %t288 = load ptr, ptr %l121, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t288, { i64, ptr } %t287)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t290 = load i64, ptr %l13, !tbaa !24
  %t292 = add i64 %t290, 1
  store i64 %t292, ptr %l13, !tbaa !24
  br label %bb49
bb57:
  store %olang.scope zeroinitializer, ptr %s16
  %t294 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t295 = insertvalue [6 x { i64, ptr }] undef, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t296 = insertvalue [6 x { i64, ptr }] %t295, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t297 = insertvalue [6 x { i64, ptr }] %t296, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 2
  %t298 = insertvalue [6 x { i64, ptr }] %t297, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 3
  %t299 = insertvalue [6 x { i64, ptr }] %t298, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 4
  %t301 = insertvalue [6 x { i64, ptr }] %t299, { i64, ptr } %t294, 5
  %t303 = call ptr @__olang_scope_alloc_a(ptr %s16, i64 96, i64 8)
  store [6 x { i64, ptr }] %t301, ptr %t303
  store ptr %t303, ptr %l16
  store i64 0, ptr %l17, !tbaa !24
  %t305 = load ptr, ptr %l16
  store i64 6, ptr %l18, !tbaa !24
  br label %bb58
bb58:
  %t308 = load i64, ptr %l17, !tbaa !24
  %t309 = load i64, ptr %l18, !tbaa !24
  %t312 = icmp slt i64 %t308, %t309
  %t314 = xor i1 %t312, true
  br i1 %t314, label %bb59, label %bb60
bb59:
  br label %bb66
bb60:
  br label %bb61
bb61:
  %t316 = load ptr, ptr %l16
  %t317 = load i64, ptr %l17, !tbaa !24
  %t320 = getelementptr [6 x { i64, ptr }], ptr %t316, i64 0, i64 %t317
  %t321 = load { i64, ptr }, ptr %t320, !tbaa !37
  store { i64, ptr } %t321, ptr %l19, !tbaa !27
  store ptr %l11, ptr %l141, !tbaa !29
  %t323 = ptrtoint ptr %s0 to i64
  store i64 %t323, ptr %l142, !tbaa !24
  %t324 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t324, label %bb62, label %bb63
bb62:
  %t326 = call ptr @__olang_region_make(ptr %s0)
  %t327 = ptrtoint ptr %t326 to i64
  store i64 %t327, ptr %l142, !tbaa !24
  br label %bb63
bb63:
  %t328 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t328, 1
  %t331 = extractvalue { i64, ptr } %t328, 0
  %t332 = load i64, ptr %l142
  %t333 = inttoptr i64 %t332 to ptr
  %t334 = call ptr @__olang_scope_alloc(ptr %t333, i64 %t331)
  call void @olang_textcopy(ptr %t334, ptr %t330, i64 %t331)
  %t335 = insertvalue { i64, ptr } undef, i64 %t331, 0
  %t336 = insertvalue { i64, ptr } %t335, ptr %t334, 1
  %t338 = load i64, ptr %l142
  %t339 = inttoptr i64 %t338 to ptr
  %t340 = extractvalue { i64, ptr } %t336, 0
  %t341 = extractvalue { i64, ptr } %t336, 1
  %t342 = mul i64 %t340, 1
  %t343 = call ptr @__olang_scope_alloc(ptr %t339, i64 %t342)
  call void @llvm.memcpy.p0.p0.i64(ptr %t343, ptr %t341, i64 %t342, i1 false)
  %t344 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t343, 1
  %t346 = load ptr, ptr %l141, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t346, { i64, ptr } %t345)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t348 = load i64, ptr %l17, !tbaa !24
  %t350 = add i64 %t348, 1
  store i64 %t350, ptr %l17, !tbaa !24
  br label %bb58
bb66:
  call void @__olang_scope_close(ptr %s16)
  %t353 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l11)
  store { i64, ptr } %t353, ptr %l151
  br label %bb67
bb67:
  %t354 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t355 = call { i32, %"std/os:Output" } @compiler_2fbindgen_2eclangSays(ptr %s0, ptr %v6, { i64, ptr } %t354)
  %t356 = extractvalue { i32, %"std/os:Output" } %t355, 1
  %t357 = extractvalue { i32, %"std/os:Output" } %t355, 0
  store i32 %t357, ptr %l153
  %t358 = icmp ne i32 %t357, 0
  br i1 %t358, label %bb69, label %ok.359, !prof !99
ok.359:
  store %"std/os:Output" %t356, ptr %l152
  br label %bb68
bb68:
  %t360 = load %"std/os:Output", ptr %l152
  store %"std/os:Output" %t360, ptr %l149
  br label %bb80
bb69:
  %t361 = load i32, ptr %l153, !tbaa !23
  %t362 = ashr i32 %t361, 16
  %t364 = icmp eq i32 %t362, 1
  store i1 %t364, ptr %l155, !tbaa !21
  br label %bb70
bb70:
  %t365 = load ptr, ptr %lp6
  %t366 = getelementptr %"compiler/bindgen:Translation", ptr %t365, i32 0, i32 3
  %t367 = load { i64, ptr }, ptr %t366, !tbaa !27
  store { i64, ptr } %t367, ptr %l156, !tbaa !27
  %t368 = load ptr, ptr %lp6
  %t369 = getelementptr %"compiler/bindgen:Translation", ptr %t368, i32 0, i32 3
  store { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %t369, !tbaa !27
  %t370 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t370, label %bb71, label %bb72
bb71:
  %t372 = load { i64, ptr }, ptr %l156
  %t373 = extractvalue { i64, ptr } %t372, 1
  call void @__olang_region_release(ptr %t373)
  store { i64, ptr } zeroinitializer, ptr %l156
  br label %bb72
bb72:
  %t374 = load ptr, ptr %lp6
  %t375 = load %"compiler/bindgen:Translation", ptr %t374
  store %"compiler/bindgen:Translation" %t375, ptr %l158
  %t377 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l158)
  store %"compiler/bindgen:Translation" %t377, ptr %l160
  br label %bb73
bb73:
  %t378 = load %"compiler/bindgen:Translation", ptr %l160
  store %"compiler/bindgen:Translation" %t378, ptr %l158
  %t379 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t381 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t379)
  store i32 %t381, ptr %l162
  %t382 = icmp ne i32 %t381, 0
  br i1 %t382, label %bb75, label %ok.383, !prof !99
ok.383:
  br label %bb74
bb74:
  br label %bb79
bb75:
  %t384 = load i32, ptr %l162, !tbaa !23
  %t385 = ashr i32 %t384, 16
  %t387 = icmp eq i32 %t385, 1
  store i1 %t387, ptr %l164, !tbaa !21
  %t388 = load i32, ptr %l162, !tbaa !23
  %t389 = ashr i32 %t388, 16
  %t391 = icmp eq i32 %t389, 1
  br i1 %t391, label %bb76, label %bb77
bb76:
  call void @__olang_errpay_pop()
  br label %bb77
bb77:
  br label %bb78
bb78:
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s0)
  %t393 = load %"compiler/bindgen:Translation", ptr %l158
  store %"compiler/bindgen:Translation" %t393, ptr %rv
  br label %ret
bb80:
  %t394 = call ptr @__olang_scope_alloc_a(ptr %v6, i64 40, i64 8)
  store ptr %t394, ptr %lp20
  %t395 = load %"std/os:Output", ptr %l149
  %t396 = load ptr, ptr %lp20
  store %"std/os:Output" %t395, ptr %t396
  %t397 = load ptr, ptr %lp20
  %t398 = getelementptr %"std/os:Output", ptr %t397, i32 0, i32 0
  %t399 = load i32, ptr %t398, !tbaa !23
  %t401 = icmp ne i32 %t399, 0
  br i1 %t401, label %bb81, label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s24
  %t403 = load ptr, ptr %lp20
  %t404 = getelementptr %"std/os:Output", ptr %t403, i32 0, i32 2
  %t405 = load { i64, ptr }, ptr %t404, !tbaa !27
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l171, !tbaa !27
  %t408 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t409 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v6, ptr %s24, { i64, ptr } %t405, { i64, ptr } %t408)
  store i1 %t409, ptr %l172
  br label %bb83
bb82:
  br label %bb96
bb83:
  %t410 = load i1, ptr %l172, !tbaa !21
  %t411 = load ptr, ptr %lp6
  %t412 = getelementptr %"compiler/bindgen:Translation", ptr %t411, i32 0, i32 4
  store i1 %t410, ptr %t412, !tbaa !21
  %t413 = ptrtoint ptr %v6 to i64
  store i64 %t413, ptr %l173, !tbaa !24
  %t414 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t414, label %bb84, label %bb85
bb84:
  %t416 = call ptr @__olang_region_make(ptr %v6)
  %t417 = ptrtoint ptr %t416 to i64
  store i64 %t417, ptr %l173, !tbaa !24
  br label %bb85
bb85:
  %t418 = load ptr, ptr %lp20
  %t419 = getelementptr %"std/os:Output", ptr %t418, i32 0, i32 2
  %t420 = load { i64, ptr }, ptr %t419, !tbaa !27
  %t421 = load i64, ptr %l173
  %t422 = inttoptr i64 %t421 to ptr
  %t424 = call { i64, ptr } @compiler_2fbindgen_2efirstError(ptr %v6, ptr %t422, { i64, ptr } %t420)
  store { i64, ptr } %t424, ptr %l176
  br label %bb86
bb86:
  %t425 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t426 = load i64, ptr %l173
  %t427 = inttoptr i64 %t426 to ptr
  %t428 = extractvalue { i64, ptr } %t425, 0
  %t429 = extractvalue { i64, ptr } %t425, 1
  %t430 = mul i64 %t428, 1
  %t431 = call ptr @__olang_scope_alloc(ptr %t427, i64 %t430)
  call void @llvm.memcpy.p0.p0.i64(ptr %t431, ptr %t429, i64 %t430, i1 false)
  %t432 = insertvalue { i64, ptr } undef, i64 %t428, 0
  %t433 = insertvalue { i64, ptr } %t432, ptr %t431, 1
  %t434 = load ptr, ptr %lp6
  %t435 = getelementptr %"compiler/bindgen:Translation", ptr %t434, i32 0, i32 3
  %t436 = load { i64, ptr }, ptr %t435, !tbaa !27
  store { i64, ptr } %t436, ptr %l178, !tbaa !27
  %t438 = load ptr, ptr %lp6
  %t439 = getelementptr %"compiler/bindgen:Translation", ptr %t438, i32 0, i32 3
  store { i64, ptr } %t433, ptr %t439, !tbaa !27
  %t440 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t440, label %bb87, label %bb88
bb87:
  %t442 = load { i64, ptr }, ptr %l178
  %t443 = extractvalue { i64, ptr } %t442, 1
  call void @__olang_region_release(ptr %t443)
  store { i64, ptr } zeroinitializer, ptr %l178
  br label %bb88
bb88:
  %t444 = load ptr, ptr %lp6
  %t445 = load %"compiler/bindgen:Translation", ptr %t444
  store %"compiler/bindgen:Translation" %t445, ptr %l180
  %t447 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l180)
  store %"compiler/bindgen:Translation" %t447, ptr %l182
  br label %bb89
bb89:
  %t448 = load %"compiler/bindgen:Translation", ptr %l182
  store %"compiler/bindgen:Translation" %t448, ptr %l180
  call void @__olang_scope_close(ptr %s24)
  %t449 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t451 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t449)
  store i32 %t451, ptr %l184
  %t452 = icmp ne i32 %t451, 0
  br i1 %t452, label %bb91, label %ok.453, !prof !99
ok.453:
  br label %bb90
bb90:
  br label %bb95
bb91:
  %t454 = load i32, ptr %l184, !tbaa !23
  %t455 = ashr i32 %t454, 16
  %t457 = icmp eq i32 %t455, 1
  store i1 %t457, ptr %l186, !tbaa !21
  %t458 = load i32, ptr %l184, !tbaa !23
  %t459 = ashr i32 %t458, 16
  %t461 = icmp eq i32 %t459, 1
  br i1 %t461, label %bb92, label %bb93
bb92:
  call void @__olang_errpay_pop()
  br label %bb93
bb93:
  br label %bb94
bb94:
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s0)
  %t463 = load %"compiler/bindgen:Translation", ptr %l180
  store %"compiler/bindgen:Translation" %t463, ptr %rv
  br label %ret
bb96:
  %t464 = load ptr, ptr %lp10
  %t465 = load ptr, ptr %lp20
  %t466 = getelementptr %"std/os:Output", ptr %t465, i32 0, i32 1
  %t467 = load { i64, ptr }, ptr %t466, !tbaa !27
  %t468 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t469 = load ptr, ptr %lp6
  %t470 = getelementptr %"compiler/bindgen:Translation", ptr %t469, i32 0, i32 2
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ereadMacros(ptr %v6, ptr %v6, ptr %s0, ptr %s0, ptr %v6, ptr %t464, { i64, ptr } %t467, { i64, ptr } %t468, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %t470)
  br label %bb97
bb97:
  %t475 = load ptr, ptr %lp10
  %t477 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eintMacros(ptr %v6, ptr %s0, ptr %t475)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t477, ptr %l194
  br label %bb98
bb98:
  %t478 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l194
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t478, ptr %l21
  %t479 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t479, ptr %l195
  br label %bb99
bb99:
  %t480 = load %"std/prelude/text:StringBuilder", ptr %l195
  store %"std/prelude/text:StringBuilder" %t480, ptr %l22
  %t481 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t483 = extractvalue { i64, ptr } %t481, 1
  %t484 = extractvalue { i64, ptr } %t481, 0
  %t485 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t486 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t487 = add i64 %t484, %t486
  %t488 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t487)
  call void @olang_textcopy(ptr %t488, ptr %t483, i64 %t484)
  %t489 = getelementptr i8, ptr %t488, i64 %t484
  call void @olang_textcopy(ptr %t489, ptr %t485, i64 %t486)
  %t490 = insertvalue { i64, ptr } undef, i64 %t487, 0
  %t491 = insertvalue { i64, ptr } %t490, ptr %t488, 1
  %t493 = extractvalue { i64, ptr } %t491, 0
  %t494 = extractvalue { i64, ptr } %t491, 1
  %t495 = mul i64 %t493, 1
  %t496 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t495)
  call void @llvm.memcpy.p0.p0.i64(ptr %t496, ptr %t494, i64 %t495, i1 false)
  %t497 = insertvalue { i64, ptr } undef, i64 %t493, 0
  %t498 = insertvalue { i64, ptr } %t497, ptr %t496, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l22, { i64, ptr } %t498)
  br label %bb100
bb100:
  store ptr %l21, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb101
bb101:
  store %olang.scope zeroinitializer, ptr %s30
  %t502 = load i64, ptr %l24, !tbaa !24
  store i64 %t502, ptr %l201, !tbaa !24
  %t503 = load ptr, ptr %l23, !tbaa !29
  %t505 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t503)
  store i64 %t505, ptr %l203
  br label %bb102
bb102:
  %t506 = load i64, ptr %l201, !tbaa !24
  %t507 = load i64, ptr %l203, !tbaa !24
  %t508 = icmp slt i64 %t506, %t507
  %t510 = xor i1 %t508, true
  br i1 %t510, label %bb103, label %bb104
bb103:
  call void @__olang_scope_close(ptr %s30)
  br label %bb110
bb104:
  br label %bb105
bb105:
  %t512 = load i64, ptr %l24, !tbaa !24
  store i64 %t512, ptr %l25, !tbaa !24
  %t514 = load ptr, ptr %l23, !tbaa !29
  %t515 = load i64, ptr %l24, !tbaa !24
  %t518 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t514, i64 %t515)
  store i64 %t518, ptr %l209
  br label %bb106
bb106:
  %t519 = load i64, ptr %l209, !tbaa !24
  store ptr %l22, ptr %l210, !tbaa !29
  %t520 = load i64, ptr %l25, !tbaa !24
  store i64 %t520, ptr %l211, !tbaa !24
  %t521 = load i64, ptr %l25, !tbaa !24
  store i64 %t521, ptr %l212, !tbaa !24
  %t522 = load ptr, ptr %lp10
  %t523 = getelementptr %"compiler/bindgen:gen", ptr %t522, i32 0, i32 12
  %t527 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v6, ptr %v6, ptr %t523, i64 %t519)
  store %"compiler/bindgen:cMacro" %t527, ptr %l215
  br label %bb107
bb107:
  %t528 = getelementptr %"compiler/bindgen:cMacro", ptr %l215, i32 0, i32 0
  %t529 = load { i64, ptr }, ptr %t528, !tbaa !27
  %t530 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t531 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t532 = load i64, ptr %l211, !tbaa !24
  %t533 = call i64 @__olang_fmt_i64(ptr null, i64 %t532)
  %t534 = add i64 %t531, %t533
  %t535 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t536 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t537 = add i64 %t534, %t536
  %t538 = load i64, ptr %l212, !tbaa !24
  %t539 = call i64 @__olang_fmt_i64(ptr null, i64 %t538)
  %t540 = add i64 %t537, %t539
  %t541 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t542 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t543 = add i64 %t540, %t542
  %t545 = extractvalue { i64, ptr } %t529, 1
  %t546 = extractvalue { i64, ptr } %t529, 0
  %t547 = add i64 %t543, %t546
  %t548 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t549 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t550 = add i64 %t547, %t549
  %t551 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t550)
  call void @olang_textcopy(ptr %t551, ptr %t530, i64 %t531)
  %t552 = getelementptr i8, ptr %t551, i64 %t531
  %t553 = call i64 @__olang_fmt_i64(ptr %t552, i64 %t532)
  %t554 = getelementptr i8, ptr %t552, i64 %t533
  call void @olang_textcopy(ptr %t554, ptr %t535, i64 %t536)
  %t555 = getelementptr i8, ptr %t554, i64 %t536
  %t556 = call i64 @__olang_fmt_i64(ptr %t555, i64 %t538)
  %t557 = getelementptr i8, ptr %t555, i64 %t539
  call void @olang_textcopy(ptr %t557, ptr %t541, i64 %t542)
  %t558 = getelementptr i8, ptr %t557, i64 %t542
  call void @olang_textcopy(ptr %t558, ptr %t545, i64 %t546)
  %t559 = getelementptr i8, ptr %t558, i64 %t546
  call void @olang_textcopy(ptr %t559, ptr %t548, i64 %t549)
  %t560 = insertvalue { i64, ptr } undef, i64 %t550, 0
  %t561 = insertvalue { i64, ptr } %t560, ptr %t551, 1
  %t563 = extractvalue { i64, ptr } %t561, 0
  %t564 = extractvalue { i64, ptr } %t561, 1
  %t565 = mul i64 %t563, 1
  %t566 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t565)
  call void @llvm.memcpy.p0.p0.i64(ptr %t566, ptr %t564, i64 %t565, i1 false)
  %t567 = insertvalue { i64, ptr } undef, i64 %t563, 0
  %t568 = insertvalue { i64, ptr } %t567, ptr %t566, 1
  %t569 = load ptr, ptr %l210, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s30, ptr %t569, { i64, ptr } %t568)
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s30)
  br label %bb109
bb109:
  %t571 = load i64, ptr %l24, !tbaa !24
  %t573 = add i64 %t571, 1
  store i64 %t573, ptr %l24, !tbaa !24
  br label %bb101
bb110:
  %t575 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t575, ptr %l221, !tbaa !27
  %t577 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l22)
  store { i64, ptr } %t577, ptr %l223
  br label %bb111
bb111:
  %t578 = load { i64, ptr }, ptr %l223, !tbaa !27
  %t580 = extractvalue { i64, ptr } %t578, 0
  %t581 = extractvalue { i64, ptr } %t578, 1
  %t582 = mul i64 %t580, 1
  %t583 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t582)
  call void @llvm.memcpy.p0.p0.i64(ptr %t583, ptr %t581, i64 %t582, i1 false)
  %t584 = insertvalue { i64, ptr } undef, i64 %t580, 0
  %t585 = insertvalue { i64, ptr } %t584, ptr %t583, 1
  %t586 = load { i64, ptr }, ptr %l221, !tbaa !27
  %t588 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t586, { i64, ptr } %t585)
  store i32 %t588, ptr %l226
  %t589 = icmp ne i32 %t588, 0
  br i1 %t589, label %bb113, label %ok.590, !prof !99
ok.590:
  br label %bb112
bb112:
  br label %bb126
bb113:
  %t591 = load i32, ptr %l226, !tbaa !23
  %t592 = ashr i32 %t591, 16
  %t594 = icmp eq i32 %t592, 1
  store i1 %t594, ptr %l228, !tbaa !21
  %t595 = load i32, ptr %l226, !tbaa !23
  %t596 = ashr i32 %t595, 16
  %t598 = icmp eq i32 %t596, 1
  br i1 %t598, label %bb114, label %bb115
bb114:
  call void @__olang_errpay_pop()
  br label %bb115
bb115:
  br label %bb116
bb116:
  %t600 = load ptr, ptr %lp6
  %t601 = getelementptr %"compiler/bindgen:Translation", ptr %t600, i32 0, i32 3
  %t602 = load { i64, ptr }, ptr %t601, !tbaa !27
  store { i64, ptr } %t602, ptr %l231, !tbaa !27
  %t603 = load ptr, ptr %lp6
  %t604 = getelementptr %"compiler/bindgen:Translation", ptr %t603, i32 0, i32 3
  store { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %t604, !tbaa !27
  %t605 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t605, label %bb117, label %bb118
bb117:
  %t607 = load { i64, ptr }, ptr %l231
  %t608 = extractvalue { i64, ptr } %t607, 1
  call void @__olang_region_release(ptr %t608)
  store { i64, ptr } zeroinitializer, ptr %l231
  br label %bb118
bb118:
  %t609 = load ptr, ptr %lp6
  %t610 = load %"compiler/bindgen:Translation", ptr %t609
  store %"compiler/bindgen:Translation" %t610, ptr %l233
  %t612 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l233)
  store %"compiler/bindgen:Translation" %t612, ptr %l235
  br label %bb119
bb119:
  %t613 = load %"compiler/bindgen:Translation", ptr %l235
  store %"compiler/bindgen:Translation" %t613, ptr %l233
  %t614 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t616 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t614)
  store i32 %t616, ptr %l237
  %t617 = icmp ne i32 %t616, 0
  br i1 %t617, label %bb121, label %ok.618, !prof !99
ok.618:
  br label %bb120
bb120:
  br label %bb125
bb121:
  %t619 = load i32, ptr %l237, !tbaa !23
  %t620 = ashr i32 %t619, 16
  %t622 = icmp eq i32 %t620, 1
  store i1 %t622, ptr %l239, !tbaa !21
  %t623 = load i32, ptr %l237, !tbaa !23
  %t624 = ashr i32 %t623, 16
  %t626 = icmp eq i32 %t624, 1
  br i1 %t626, label %bb122, label %bb123
bb122:
  call void @__olang_errpay_pop()
  br label %bb123
bb123:
  br label %bb124
bb124:
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s0)
  %t628 = load %"compiler/bindgen:Translation", ptr %l233
  store %"compiler/bindgen:Translation" %t628, ptr %rv
  br label %ret
bb126:
  %t629 = load ptr, ptr %lp10
  %t630 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t631 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t632 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t637 = call { i32, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edump(ptr %v6, ptr %v2, ptr %v3, ptr %s0, ptr %s0, ptr %t629, { i64, ptr } %t630, { i64, ptr } %t631, { i64, ptr } %t632)
  %t638 = extractvalue { i32, ptr } %t637, 1
  %t639 = extractvalue { i32, ptr } %t637, 0
  store i32 %t639, ptr %l248
  %t640 = icmp ne i32 %t639, 0
  br i1 %t640, label %bb128, label %ok.641, !prof !99
ok.641:
  store ptr %t638, ptr %l247
  br label %bb127
bb127:
  %t642 = load ptr, ptr %l247, !tbaa !29
  store ptr %t642, ptr %l242, !tbaa !29
  br label %bb139
bb128:
  %t643 = load i32, ptr %l248, !tbaa !23
  %t644 = ashr i32 %t643, 16
  %t646 = icmp eq i32 %t644, 1
  store i1 %t646, ptr %l250, !tbaa !21
  br label %bb129
bb129:
  %t647 = load ptr, ptr %lp10
  %t648 = getelementptr %"compiler/bindgen:gen", ptr %t647, i32 0, i32 25
  %t649 = load { i64, ptr }, ptr %t648, !tbaa !27
  %t650 = load ptr, ptr %lp6
  %t651 = getelementptr %"compiler/bindgen:Translation", ptr %t650, i32 0, i32 3
  %t652 = load { i64, ptr }, ptr %t651, !tbaa !27
  store { i64, ptr } %t652, ptr %l252, !tbaa !27
  %t654 = load ptr, ptr %lp6
  %t655 = getelementptr %"compiler/bindgen:Translation", ptr %t654, i32 0, i32 3
  store { i64, ptr } %t649, ptr %t655, !tbaa !27
  %t656 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t656, label %bb130, label %bb131
bb130:
  %t658 = load { i64, ptr }, ptr %l252
  %t659 = extractvalue { i64, ptr } %t658, 1
  call void @__olang_region_release(ptr %t659)
  store { i64, ptr } zeroinitializer, ptr %l252
  br label %bb131
bb131:
  %t660 = load ptr, ptr %lp6
  %t661 = load %"compiler/bindgen:Translation", ptr %t660
  store %"compiler/bindgen:Translation" %t661, ptr %l254
  %t663 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l254)
  store %"compiler/bindgen:Translation" %t663, ptr %l256
  br label %bb132
bb132:
  %t664 = load %"compiler/bindgen:Translation", ptr %l256
  store %"compiler/bindgen:Translation" %t664, ptr %l254
  %t665 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t667 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t665)
  store i32 %t667, ptr %l258
  %t668 = icmp ne i32 %t667, 0
  br i1 %t668, label %bb134, label %ok.669, !prof !99
ok.669:
  br label %bb133
bb133:
  br label %bb138
bb134:
  %t670 = load i32, ptr %l258, !tbaa !23
  %t671 = ashr i32 %t670, 16
  %t673 = icmp eq i32 %t671, 1
  store i1 %t673, ptr %l260, !tbaa !21
  %t674 = load i32, ptr %l258, !tbaa !23
  %t675 = ashr i32 %t674, 16
  %t677 = icmp eq i32 %t675, 1
  br i1 %t677, label %bb135, label %bb136
bb135:
  call void @__olang_errpay_pop()
  br label %bb136
bb136:
  br label %bb137
bb137:
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s0)
  %t679 = load %"compiler/bindgen:Translation", ptr %l254
  store %"compiler/bindgen:Translation" %t679, ptr %rv
  br label %ret
bb139:
  %t680 = load ptr, ptr %l242, !tbaa !29
  store ptr %t680, ptr %l27, !tbaa !29
  %t681 = load ptr, ptr %lp10
  %t682 = load ptr, ptr %l27, !tbaa !29
  %t683 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eread(ptr %v6, ptr %s0, ptr %s0, ptr %t681, ptr %t682, { i64, ptr } %t683)
  br label %bb140
bb140:
  %t687 = load ptr, ptr %lp10
  %t688 = getelementptr %"compiler/bindgen:gen", ptr %t687, i32 0, i32 26
  store i64 0, ptr %t688, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s41
  %t689 = load ptr, ptr %l27, !tbaa !29
  %t691 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s0, ptr %s41, ptr %t689)
  store { i64, ptr } %t691, ptr %l267
  br label %bb141
bb141:
  %t692 = load { i64, ptr }, ptr %l267, !tbaa !27
  %t693 = extractvalue { i64, ptr } %t692, 0
  %t694 = extractvalue { i64, ptr } %t692, 1
  %t695 = mul i64 %t693, 8
  %t696 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t695)
  call void @llvm.memcpy.p0.p0.i64(ptr %t696, ptr %t694, i64 %t695, i1 false)
  %t697 = insertvalue { i64, ptr } undef, i64 %t693, 0
  %t698 = insertvalue { i64, ptr } %t697, ptr %t696, 1
  store { i64, ptr } %t698, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t700 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t702 = extractvalue { i64, ptr } %t700, 0
  store i64 %t702, ptr %l30, !tbaa !24
  br label %bb142
bb142:
  store %olang.scope zeroinitializer, ptr %s42
  %t704 = load i64, ptr %l29, !tbaa !24
  %t705 = load i64, ptr %l30, !tbaa !24
  %t708 = icmp slt i64 %t704, %t705
  %t710 = xor i1 %t708, true
  br i1 %t710, label %bb143, label %bb144
bb143:
  call void @__olang_scope_close(ptr %s42)
  br label %bb197
bb144:
  br label %bb145
bb145:
  %t712 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t712, ptr %l275, !tbaa !27
  %t713 = load i64, ptr %l29, !tbaa !24
  %t715 = getelementptr { i64, ptr }, ptr %l275, i32 0, i32 1
  %t716 = load ptr, ptr %t715, !tbaa !27
  %t717 = getelementptr ptr, ptr %t716, i64 %t713
  %t718 = load ptr, ptr %t717, !tbaa !39
  store ptr %t718, ptr %l31, !tbaa !29
  %t720 = load ptr, ptr %l31, !tbaa !29
  %t722 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s41, ptr %s42, ptr %s42, ptr %t720, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store { i64, ptr } %t722, ptr %l279
  br label %bb146
bb146:
  %t723 = load { i64, ptr }, ptr %l279, !tbaa !27
  store { i64, ptr } %t723, ptr %l32, !tbaa !27
  %t724 = load ptr, ptr %l31, !tbaa !29
  %t726 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s41, ptr %s42, ptr %s42, ptr %t724, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store { i64, ptr } %t726, ptr %l281
  br label %bb147
bb147:
  %t727 = load { i64, ptr }, ptr %l281, !tbaa !27
  %t728 = extractvalue { i64, ptr } %t727, 0
  %t729 = extractvalue { i64, ptr } %t727, 1
  %t730 = mul i64 %t728, 1
  %t731 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t730)
  call void @llvm.memcpy.p0.p0.i64(ptr %t731, ptr %t729, i64 %t730, i1 false)
  %t732 = insertvalue { i64, ptr } undef, i64 %t728, 0
  %t733 = insertvalue { i64, ptr } %t732, ptr %t731, 1
  %t735 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s42, ptr %s42, { i64, ptr } %t733, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t735, ptr %l283
  br label %bb148
bb148:
  %t736 = load i1, ptr %l283, !tbaa !21
  %t737 = xor i1 %t736, true
  br i1 %t737, label %bb149, label %bb150
bb149:
  store i1 true, ptr %l285, !tbaa !21
  br label %bb152
bb150:
  %t739 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t741 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s42, ptr %s42, { i64, ptr } %t739, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t741, ptr %l287
  br label %bb151
bb151:
  %t742 = load i1, ptr %l287, !tbaa !21
  %t743 = xor i1 %t742, true
  store i1 %t743, ptr %l285, !tbaa !21
  br label %bb152
bb152:
  %t745 = load i1, ptr %l285, !tbaa !21
  br i1 %t745, label %bb153, label %bb154
bb153:
  call void @__olang_scope_close(ptr %s42)
  br label %bb196
bb154:
  br label %bb155
bb155:
  %t746 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t748 = extractvalue { i64, ptr } %t746, 0
  store i64 %t748, ptr %l291, !tbaa !24
  %t749 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t750 = extractvalue { i64, ptr } %t749, 0
  store i64 %t750, ptr %l292, !tbaa !24
  %t751 = icmp sge i64 9, 0
  br i1 %t751, label %bb156, label %bb157
bb156:
  %t753 = load i64, ptr %l291, !tbaa !24
  %t754 = icmp sle i64 9, %t753
  br i1 %t754, label %bb158, label %bb159
bb157:
  call void @__olang_check_failed(ptr @olang_loc_b774a7292e99a958_2ba7e6e1e518c9cc)
  unreachable
bb158:
  %t756 = load i64, ptr %l291, !tbaa !24
  %t757 = load i64, ptr %l292, !tbaa !24
  %t758 = icmp sle i64 %t756, %t757
  br i1 %t758, label %bb160, label %bb161
bb159:
  call void @__olang_check_failed(ptr @olang_loc_b774a7292e99a958_2ba7e6e1e518c9cc)
  unreachable
bb160:
  %t760 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t761 = load ptr, ptr %t760, !tbaa !27
  %t762 = load i64, ptr %l291, !tbaa !24
  %t763 = getelementptr i8, ptr %t761, i64 9
  %t764 = sub i64 %t762, 9
  %t765 = insertvalue { i64, ptr } undef, i64 %t764, 0
  %t766 = insertvalue { i64, ptr } %t765, ptr %t763, 1
  store { i64, ptr } %t766, ptr %l296, !tbaa !27
  %t767 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s42, i64 10)
  %t768 = extractvalue { i32, i64 } %t767, 1
  %t769 = extractvalue { i32, i64 } %t767, 0
  store i32 %t769, ptr %l298
  %t770 = icmp ne i32 %t769, 0
  br i1 %t770, label %bb163, label %ok.771, !prof !99
ok.771:
  store i64 %t768, ptr %l297
  br label %bb162
bb161:
  call void @__olang_check_failed(ptr @olang_loc_b774a7292e99a958_2ba7e6e1e518c9cc)
  unreachable
bb162:
  %t772 = load { i64, ptr }, ptr %l296, !tbaa !27
  %t773 = load i64, ptr %l297, !tbaa !24
  %t774 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s42, { i64, ptr } %t772, i64 %t773)
  %t775 = extractvalue { i32, i64 } %t774, 1
  %t776 = extractvalue { i32, i64 } %t774, 0
  store i32 %t776, ptr %l300
  %t777 = icmp ne i32 %t776, 0
  br i1 %t777, label %bb166, label %ok.778, !prof !99
ok.778:
  store i64 %t775, ptr %l299
  br label %bb165
bb163:
  br label %bb164
bb164:
  store i64 -1, ptr %l289, !tbaa !24
  br label %bb167
bb165:
  %t779 = load i64, ptr %l299, !tbaa !24
  store i64 %t779, ptr %l289, !tbaa !24
  br label %bb167
bb166:
  br label %bb164
bb167:
  %t780 = load i64, ptr %l289, !tbaa !24
  store i64 %t780, ptr %l33, !tbaa !24
  %t781 = load i64, ptr %l33, !tbaa !24
  %t783 = icmp slt i64 %t781, 0
  br i1 %t783, label %bb168, label %bb169
bb168:
  store i1 true, ptr %l303, !tbaa !21
  br label %bb171
bb169:
  %t785 = load i64, ptr %l33, !tbaa !24
  store i64 %t785, ptr %l304, !tbaa !24
  %t787 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l21)
  store i64 %t787, ptr %l306
  br label %bb170
bb170:
  %t788 = load i64, ptr %l304, !tbaa !24
  %t789 = load i64, ptr %l306, !tbaa !24
  %t790 = icmp sge i64 %t788, %t789
  store i1 %t790, ptr %l303, !tbaa !21
  br label %bb171
bb171:
  %t792 = load i1, ptr %l303, !tbaa !21
  br i1 %t792, label %bb172, label %bb173
bb172:
  call void @__olang_scope_close(ptr %s42)
  br label %bb196
bb173:
  br label %bb174
bb174:
  store %olang.scope zeroinitializer, ptr %s45
  %t793 = load ptr, ptr %l31, !tbaa !29
  %t795 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s41, ptr %s45, ptr %t793)
  store { i64, ptr } %t795, ptr %l309
  br label %bb175
bb175:
  %t796 = load { i64, ptr }, ptr %l309, !tbaa !27
  %t797 = extractvalue { i64, ptr } %t796, 0
  %t798 = extractvalue { i64, ptr } %t796, 1
  %t799 = mul i64 %t797, 8
  %t800 = call ptr @__olang_scope_alloc(ptr %s45, i64 %t799)
  call void @llvm.memcpy.p0.p0.i64(ptr %t800, ptr %t798, i64 %t799, i1 false)
  %t801 = insertvalue { i64, ptr } undef, i64 %t797, 0
  %t802 = insertvalue { i64, ptr } %t801, ptr %t800, 1
  store { i64, ptr } %t802, ptr %l34, !tbaa !27
  store i64 0, ptr %l35, !tbaa !24
  %t804 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t806 = extractvalue { i64, ptr } %t804, 0
  store i64 %t806, ptr %l36, !tbaa !24
  br label %bb176
bb176:
  store %olang.scope zeroinitializer, ptr %s46
  %t808 = load i64, ptr %l35, !tbaa !24
  %t809 = load i64, ptr %l36, !tbaa !24
  %t812 = icmp slt i64 %t808, %t809
  %t814 = xor i1 %t812, true
  br i1 %t814, label %bb177, label %bb178
bb177:
  call void @__olang_scope_close(ptr %s46)
  br label %bb195
bb178:
  br label %bb179
bb179:
  %t816 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t816, ptr %l317, !tbaa !27
  %t817 = load i64, ptr %l35, !tbaa !24
  %t819 = getelementptr { i64, ptr }, ptr %l317, i32 0, i32 1
  %t820 = load ptr, ptr %t819, !tbaa !27
  %t821 = getelementptr ptr, ptr %t820, i64 %t817
  %t822 = load ptr, ptr %t821, !tbaa !39
  %t826 = call { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %s45, ptr %s46, ptr %t822)
  store { i64, ptr } %t826, ptr %l321
  br label %bb180
bb180:
  %t827 = load { i64, ptr }, ptr %l321, !tbaa !27
  store { i64, ptr } %t827, ptr %l38, !tbaa !27
  %t828 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t830 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s46, ptr %s46, { i64, ptr } %t828, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t830, ptr %l323
  br label %bb181
bb181:
  %t831 = load i1, ptr %l323, !tbaa !21
  br i1 %t831, label %bb182, label %bb183
bb182:
  call void @__olang_scope_close(ptr %s46)
  br label %bb194
bb183:
  br label %bb184
bb184:
  %t832 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t832, ptr %l325, !tbaa !27
  %t833 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s46, i64 10)
  %t834 = extractvalue { i32, i64 } %t833, 1
  %t835 = extractvalue { i32, i64 } %t833, 0
  store i32 %t835, ptr %l327
  %t836 = icmp ne i32 %t835, 0
  br i1 %t836, label %bb186, label %ok.837, !prof !99
ok.837:
  store i64 %t834, ptr %l326
  br label %bb185
bb185:
  %t838 = load { i64, ptr }, ptr %l325, !tbaa !27
  %t839 = load i64, ptr %l326, !tbaa !24
  %t840 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s46, { i64, ptr } %t838, i64 %t839)
  %t841 = extractvalue { i32, i64 } %t840, 1
  %t842 = extractvalue { i32, i64 } %t840, 0
  store i32 %t842, ptr %l329
  %t843 = icmp ne i32 %t842, 0
  br i1 %t843, label %bb189, label %ok.844, !prof !99
ok.844:
  store i64 %t841, ptr %l328
  br label %bb188
bb186:
  br label %bb187
bb187:
  call void @__olang_scope_close(ptr %s46)
  br label %bb194
bb188:
  %t845 = load i64, ptr %l328, !tbaa !24
  store i64 %t845, ptr %l324, !tbaa !24
  br label %bb190
bb189:
  br label %bb187
bb190:
  %t846 = load i64, ptr %l324, !tbaa !24
  store i64 %t846, ptr %l39, !tbaa !24
  %t847 = load ptr, ptr %lp10
  store ptr %t847, ptr %l330, !tbaa !29
  %t848 = load ptr, ptr %lp10
  %t849 = getelementptr %"compiler/bindgen:gen", ptr %t848, i32 0, i32 12
  store ptr %t849, ptr %l331, !tbaa !29
  %t850 = load i64, ptr %l33, !tbaa !24
  %t853 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l21, i64 %t850)
  store i64 %t853, ptr %l334
  br label %bb191
bb191:
  %t854 = load ptr, ptr %l331, !tbaa !29
  %t855 = load i64, ptr %l334, !tbaa !24
  %t856 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v6, ptr %v6, ptr %t854, i64 %t855)
  store %"compiler/bindgen:cMacro" %t856, ptr %l335
  br label %bb192
bb192:
  %t857 = getelementptr %"compiler/bindgen:cMacro", ptr %l335, i32 0, i32 0
  %t858 = load { i64, ptr }, ptr %t857, !tbaa !27
  %t859 = load i64, ptr %l39, !tbaa !24
  %t860 = load ptr, ptr %l330, !tbaa !29
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2econstant(ptr %v6, ptr %v6, ptr %t860, { i64, ptr } %t858, i64 %t859)
  br label %bb193
bb193:
  call void @__olang_scope_close(ptr %s46)
  br label %bb194
bb194:
  %t863 = load i64, ptr %l35, !tbaa !24
  %t865 = add i64 %t863, 1
  store i64 %t865, ptr %l35, !tbaa !24
  br label %bb176
bb195:
  call void @__olang_scope_close(ptr %s45)
  call void @__olang_scope_close(ptr %s42)
  br label %bb196
bb196:
  %t867 = load i64, ptr %l29, !tbaa !24
  %t869 = add i64 %t867, 1
  store i64 %t869, ptr %l29, !tbaa !24
  br label %bb142
bb197:
  call void @__olang_scope_close(ptr %s41)
  %t871 = load ptr, ptr %lp10
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eotherConsts(ptr %v6, ptr %t871)
  br label %bb198
bb198:
  %t873 = load ptr, ptr %lp10
  %t874 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t875 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t876 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t877 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t883 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2esizes(ptr %v6, ptr %v2, ptr %v3, ptr %s0, ptr %v0, ptr %t873, { i64, ptr } %t874, { i64, ptr } %t875, { i64, ptr } %t876, { i64, ptr } %t877)
  store i32 %t883, ptr %l348
  %t884 = icmp ne i32 %t883, 0
  br i1 %t884, label %bb200, label %ok.885, !prof !99
ok.885:
  br label %bb199
bb199:
  br label %bb211
bb200:
  %t886 = load i32, ptr %l348, !tbaa !23
  %t887 = ashr i32 %t886, 16
  %t889 = icmp eq i32 %t887, 1
  store i1 %t889, ptr %l350, !tbaa !21
  br label %bb201
bb201:
  %t890 = load ptr, ptr %lp10
  %t891 = getelementptr %"compiler/bindgen:gen", ptr %t890, i32 0, i32 25
  %t892 = load { i64, ptr }, ptr %t891, !tbaa !27
  %t893 = load ptr, ptr %lp6
  %t894 = getelementptr %"compiler/bindgen:Translation", ptr %t893, i32 0, i32 3
  %t895 = load { i64, ptr }, ptr %t894, !tbaa !27
  store { i64, ptr } %t895, ptr %l352, !tbaa !27
  %t897 = load ptr, ptr %lp6
  %t898 = getelementptr %"compiler/bindgen:Translation", ptr %t897, i32 0, i32 3
  store { i64, ptr } %t892, ptr %t898, !tbaa !27
  %t899 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e3
  br i1 %t899, label %bb202, label %bb203
bb202:
  %t901 = load { i64, ptr }, ptr %l352
  %t902 = extractvalue { i64, ptr } %t901, 1
  call void @__olang_region_release(ptr %t902)
  store { i64, ptr } zeroinitializer, ptr %l352
  br label %bb203
bb203:
  %t903 = load ptr, ptr %lp6
  %t904 = load %"compiler/bindgen:Translation", ptr %t903
  store %"compiler/bindgen:Translation" %t904, ptr %l354
  %t906 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l354)
  store %"compiler/bindgen:Translation" %t906, ptr %l356
  br label %bb204
bb204:
  %t907 = load %"compiler/bindgen:Translation", ptr %l356
  store %"compiler/bindgen:Translation" %t907, ptr %l354
  %t908 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t910 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t908)
  store i32 %t910, ptr %l358
  %t911 = icmp ne i32 %t910, 0
  br i1 %t911, label %bb206, label %ok.912, !prof !99
ok.912:
  br label %bb205
bb205:
  br label %bb210
bb206:
  %t913 = load i32, ptr %l358, !tbaa !23
  %t914 = ashr i32 %t913, 16
  %t916 = icmp eq i32 %t914, 1
  store i1 %t916, ptr %l360, !tbaa !21
  %t917 = load i32, ptr %l358, !tbaa !23
  %t918 = ashr i32 %t917, 16
  %t920 = icmp eq i32 %t918, 1
  br i1 %t920, label %bb207, label %bb208
bb207:
  call void @__olang_errpay_pop()
  br label %bb208
bb208:
  br label %bb209
bb209:
  br label %bb210
bb210:
  call void @__olang_scope_close(ptr %s0)
  %t922 = load %"compiler/bindgen:Translation", ptr %l354
  store %"compiler/bindgen:Translation" %t922, ptr %rv
  br label %ret
bb211:
  %t923 = ptrtoint ptr %v6 to i64
  store i64 %t923, ptr %l363, !tbaa !24
  %t924 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e0
  br i1 %t924, label %bb212, label %bb213
bb212:
  %t926 = call ptr @__olang_region_make(ptr %v6)
  %t927 = ptrtoint ptr %t926 to i64
  store i64 %t927, ptr %l363, !tbaa !24
  br label %bb213
bb213:
  %t928 = load ptr, ptr %lp10
  %t929 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t930 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t931 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t933 = extractvalue { i64, ptr } %t929, 1
  %t934 = extractvalue { i64, ptr } %t929, 0
  %t935 = add i64 %t931, %t934
  %t936 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t937 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t938 = add i64 %t935, %t937
  %t939 = load i64, ptr %l363
  %t940 = inttoptr i64 %t939 to ptr
  %t941 = call ptr @__olang_scope_alloc(ptr %t940, i64 %t938)
  call void @olang_textcopy(ptr %t941, ptr %t930, i64 %t931)
  %t942 = getelementptr i8, ptr %t941, i64 %t931
  call void @olang_textcopy(ptr %t942, ptr %t933, i64 %t934)
  %t943 = getelementptr i8, ptr %t942, i64 %t934
  call void @olang_textcopy(ptr %t943, ptr %t936, i64 %t937)
  %t944 = insertvalue { i64, ptr } undef, i64 %t938, 0
  %t945 = insertvalue { i64, ptr } %t944, ptr %t941, 1
  %t947 = load i64, ptr %l363
  %t948 = inttoptr i64 %t947 to ptr
  %t949 = extractvalue { i64, ptr } %t945, 0
  %t950 = extractvalue { i64, ptr } %t945, 1
  %t951 = mul i64 %t949, 1
  %t952 = call ptr @__olang_scope_alloc(ptr %t948, i64 %t951)
  call void @llvm.memcpy.p0.p0.i64(ptr %t952, ptr %t950, i64 %t951, i1 false)
  %t953 = insertvalue { i64, ptr } undef, i64 %t949, 0
  %t954 = insertvalue { i64, ptr } %t953, ptr %t952, 1
  %t955 = load i64, ptr %l363
  %t956 = inttoptr i64 %t955 to ptr
  %t957 = load i64, ptr %l363
  %t958 = inttoptr i64 %t957 to ptr
  %t961 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrite(ptr %v6, ptr %t956, ptr %t958, ptr %t928, { i64, ptr } %t954)
  store { i64, ptr } %t961, ptr %l369
  br label %bb214
bb214:
  %t962 = load { i64, ptr }, ptr %l369, !tbaa !27
  %t963 = load i64, ptr %l363
  %t964 = inttoptr i64 %t963 to ptr
  %t965 = extractvalue { i64, ptr } %t962, 0
  %t966 = extractvalue { i64, ptr } %t962, 1
  %t967 = mul i64 %t965, 1
  %t968 = call ptr @__olang_scope_alloc(ptr %t964, i64 %t967)
  call void @llvm.memcpy.p0.p0.i64(ptr %t968, ptr %t966, i64 %t967, i1 false)
  %t969 = insertvalue { i64, ptr } undef, i64 %t965, 0
  %t970 = insertvalue { i64, ptr } %t969, ptr %t968, 1
  %t971 = load ptr, ptr %lp6
  %t972 = getelementptr %"compiler/bindgen:Translation", ptr %t971, i32 0, i32 0
  %t973 = load { i64, ptr }, ptr %t972, !tbaa !27
  store { i64, ptr } %t973, ptr %l371, !tbaa !27
  %t975 = load ptr, ptr %lp6
  %t976 = getelementptr %"compiler/bindgen:Translation", ptr %t975, i32 0, i32 0
  store { i64, ptr } %t970, ptr %t976, !tbaa !27
  %t977 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e0
  br i1 %t977, label %bb215, label %bb216
bb215:
  %t979 = load { i64, ptr }, ptr %l371
  %t980 = extractvalue { i64, ptr } %t979, 1
  call void @__olang_region_release(ptr %t980)
  store { i64, ptr } zeroinitializer, ptr %l371
  br label %bb216
bb216:
  %t981 = load ptr, ptr %lp10
  %t982 = getelementptr %"compiler/bindgen:gen", ptr %t981, i32 0, i32 20
  %t984 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v6, ptr %t982)
  store i64 %t984, ptr %l374
  br label %bb217
bb217:
  %t985 = load i64, ptr %l374, !tbaa !24
  %t986 = icmp sgt i64 %t985, 0
  br i1 %t986, label %bb218, label %bb219
bb218:
  store i1 true, ptr %l376, !tbaa !21
  br label %bb221
bb219:
  %t988 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t990 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t988, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t990, ptr %l378
  br label %bb220
bb220:
  %t991 = load i1, ptr %l378, !tbaa !21
  %t992 = xor i1 %t991, true
  store i1 %t992, ptr %l376, !tbaa !21
  br label %bb221
bb221:
  %t994 = load i1, ptr %l376, !tbaa !21
  br i1 %t994, label %bb222, label %bb223
bb222:
  store %olang.scope zeroinitializer, ptr %s56
  %t995 = ptrtoint ptr %v6 to i64
  store i64 %t995, ptr %l380, !tbaa !24
  %t996 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e1
  br i1 %t996, label %bb224, label %bb225
bb223:
  br label %bb229
bb224:
  %t998 = call ptr @__olang_region_make(ptr %v6)
  %t999 = ptrtoint ptr %t998 to i64
  store i64 %t999, ptr %l380, !tbaa !24
  br label %bb225
bb225:
  %t1000 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1000, ptr %l382, !tbaa !27
  %t1001 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1001, ptr %l383, !tbaa !27
  %t1002 = load ptr, ptr %lp10
  %t1003 = getelementptr %"compiler/bindgen:gen", ptr %t1002, i32 0, i32 20
  %t1005 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v6, ptr %s56, ptr %t1003)
  store { i64, ptr } %t1005, ptr %l385
  br label %bb226
bb226:
  %t1006 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t1007 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t1008 = load { i64, ptr }, ptr %l382, !tbaa !27
  %t1009 = extractvalue { i64, ptr } %t1008, 1
  %t1010 = extractvalue { i64, ptr } %t1008, 0
  %t1011 = add i64 %t1007, %t1010
  %t1012 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t1013 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t1014 = add i64 %t1011, %t1013
  %t1015 = load { i64, ptr }, ptr %l383, !tbaa !27
  %t1016 = extractvalue { i64, ptr } %t1015, 1
  %t1017 = extractvalue { i64, ptr } %t1015, 0
  %t1018 = add i64 %t1014, %t1017
  %t1019 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t1020 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t1021 = add i64 %t1018, %t1020
  %t1022 = load { i64, ptr }, ptr %l385, !tbaa !27
  %t1023 = extractvalue { i64, ptr } %t1022, 1
  %t1024 = extractvalue { i64, ptr } %t1022, 0
  %t1025 = add i64 %t1021, %t1024
  %t1026 = load i64, ptr %l380
  %t1027 = inttoptr i64 %t1026 to ptr
  %t1028 = call ptr @__olang_scope_alloc(ptr %t1027, i64 %t1025)
  call void @olang_textcopy(ptr %t1028, ptr %t1006, i64 %t1007)
  %t1029 = getelementptr i8, ptr %t1028, i64 %t1007
  call void @olang_textcopy(ptr %t1029, ptr %t1009, i64 %t1010)
  %t1030 = getelementptr i8, ptr %t1029, i64 %t1010
  call void @olang_textcopy(ptr %t1030, ptr %t1012, i64 %t1013)
  %t1031 = getelementptr i8, ptr %t1030, i64 %t1013
  call void @olang_textcopy(ptr %t1031, ptr %t1016, i64 %t1017)
  %t1032 = getelementptr i8, ptr %t1031, i64 %t1017
  call void @olang_textcopy(ptr %t1032, ptr %t1019, i64 %t1020)
  %t1033 = getelementptr i8, ptr %t1032, i64 %t1020
  call void @olang_textcopy(ptr %t1033, ptr %t1023, i64 %t1024)
  %t1034 = insertvalue { i64, ptr } undef, i64 %t1025, 0
  %t1035 = insertvalue { i64, ptr } %t1034, ptr %t1028, 1
  %t1037 = load i64, ptr %l380
  %t1038 = inttoptr i64 %t1037 to ptr
  %t1039 = extractvalue { i64, ptr } %t1035, 0
  %t1040 = extractvalue { i64, ptr } %t1035, 1
  %t1041 = mul i64 %t1039, 1
  %t1042 = call ptr @__olang_scope_alloc(ptr %t1038, i64 %t1041)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1042, ptr %t1040, i64 %t1041, i1 false)
  %t1043 = insertvalue { i64, ptr } undef, i64 %t1039, 0
  %t1044 = insertvalue { i64, ptr } %t1043, ptr %t1042, 1
  %t1045 = load ptr, ptr %lp6
  %t1046 = getelementptr %"compiler/bindgen:Translation", ptr %t1045, i32 0, i32 1
  %t1047 = load { i64, ptr }, ptr %t1046, !tbaa !27
  store { i64, ptr } %t1047, ptr %l388, !tbaa !27
  %t1049 = load ptr, ptr %lp6
  %t1050 = getelementptr %"compiler/bindgen:Translation", ptr %t1049, i32 0, i32 1
  store { i64, ptr } %t1044, ptr %t1050, !tbaa !27
  %t1051 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e1
  br i1 %t1051, label %bb227, label %bb228
bb227:
  %t1053 = load { i64, ptr }, ptr %l388
  %t1054 = extractvalue { i64, ptr } %t1053, 1
  call void @__olang_region_release(ptr %t1054)
  store { i64, ptr } zeroinitializer, ptr %l388
  br label %bb228
bb228:
  call void @__olang_scope_close(ptr %s56)
  br label %bb229
bb229:
  %t1055 = load ptr, ptr %lp6
  %t1056 = load %"compiler/bindgen:Translation", ptr %t1055
  store %"compiler/bindgen:Translation" %t1056, ptr %l390
  %t1058 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l390)
  store %"compiler/bindgen:Translation" %t1058, ptr %l392
  br label %bb230
bb230:
  %t1059 = load %"compiler/bindgen:Translation", ptr %l392
  store %"compiler/bindgen:Translation" %t1059, ptr %l390
  %t1060 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t1062 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t1060)
  store i32 %t1062, ptr %l394
  %t1063 = icmp ne i32 %t1062, 0
  br i1 %t1063, label %bb232, label %ok.1064, !prof !99
ok.1064:
  br label %bb231
bb231:
  br label %bb236
bb232:
  %t1065 = load i32, ptr %l394, !tbaa !23
  %t1066 = ashr i32 %t1065, 16
  %t1068 = icmp eq i32 %t1066, 1
  store i1 %t1068, ptr %l396, !tbaa !21
  %t1069 = load i32, ptr %l394, !tbaa !23
  %t1070 = ashr i32 %t1069, 16
  %t1072 = icmp eq i32 %t1070, 1
  br i1 %t1072, label %bb233, label %bb234
bb233:
  call void @__olang_errpay_pop()
  br label %bb234
bb234:
  br label %bb235
bb235:
  br label %bb236
bb236:
  call void @__olang_scope_close(ptr %s0)
  %t1074 = load %"compiler/bindgen:Translation", ptr %l390
  store %"compiler/bindgen:Translation" %t1074, ptr %rv
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

define dso_local { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %lp3 = alloca ptr
  %lp4 = alloca ptr
  %lp5 = alloca ptr
  %lp6 = alloca ptr
  %lp7 = alloca ptr
  %l8 = alloca %"compiler/bindgen:cx"
  %l11 = alloca %"compiler/bindgen:cx"
  %l12 = alloca i32
  %l15 = alloca { i64, ptr }
  %l17 = alloca i1
  %l20 = alloca ptr
  %l23 = alloca %"compiler/bindgen:cx"
  %l26 = alloca %"compiler/bindgen:cx"
  %l27 = alloca i32
  %l30 = alloca { i64, ptr }
  %l32 = alloca i1
  %l35 = alloca i32
  %l37 = alloca ptr
  %l40 = alloca %"compiler/bindgen:cx"
  %l43 = alloca %"compiler/bindgen:cx"
  %l44 = alloca i32
  %l49 = alloca i1
  %l53 = alloca i64
  %l55 = alloca { i64, ptr }
  %l58 = alloca %"compiler/bindgen:cx"
  %l64 = alloca %"compiler/bindgen:cx"
  %l67 = alloca %"compiler/bindgen:cx"
  %l70 = alloca %"compiler/bindgen:cx"
  %l74 = alloca %"compiler/bindgen:cx"
  %l75 = alloca i64
  %l77 = alloca { i64, ptr }
  %l80 = alloca %"compiler/bindgen:cx"
  %l88 = alloca %"compiler/bindgen:cx"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/bindgen:cx" }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBinary(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t2, i64 1)
  %t6 = extractvalue { i32, %"compiler/bindgen:cx" } %t5, 1
  %t7 = extractvalue { i32, %"compiler/bindgen:cx" } %t5, 0
  store i32 %t7, ptr %l12
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store %"compiler/bindgen:cx" %t6, ptr %l11
  br label %bb1
bb1:
  %t10 = load %"compiler/bindgen:cx", ptr %l11
  store %"compiler/bindgen:cx" %t10, ptr %l8
  br label %bb3
bb2:
  %t11 = load i32, ptr %l12, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t11, 0
  %t17 = shl i32 %t15, 16
  %t18 = or i32 %t17, %t13
  %t19 = select i1 %t16, i32 0, i32 %t18
  call void @__olang_scope_close(ptr %s0)
  %t21 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t19, 0
  store { i32, %"compiler/bindgen:cx" } %t21, ptr %rv
  br label %ret
bb3:
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t22, ptr %lp2
  %t23 = load %"compiler/bindgen:cx", ptr %l8
  %t24 = load ptr, ptr %lp2
  store %"compiler/bindgen:cx" %t23, ptr %t24
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s0, ptr %t25)
  store { i64, ptr } %t27, ptr %l15
  br label %bb4
bb4:
  %t28 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  %t30 = extractvalue { i64, ptr } %t28, 1
  %t31 = mul i64 %t29, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t31)
  call void @llvm.memcpy.p0.p0.i64(ptr %t32, ptr %t30, i64 %t31, i1 false)
  %t33 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t34, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t36, ptr %l17
  br label %bb5
bb5:
  %t37 = load i1, ptr %l17, !tbaa !21
  %t38 = xor i1 %t37, true
  br i1 %t38, label %bb6, label %bb7
bb6:
  %t40 = load ptr, ptr %lp2
  %t41 = load %"compiler/bindgen:cx", ptr %t40
  call void @__olang_scope_close(ptr %s0)
  %t43 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t41, 1
  store { i32, %"compiler/bindgen:cx" } %t43, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l20, !tbaa !29
  %t45 = load ptr, ptr %l20, !tbaa !29
  %t46 = getelementptr %"compiler/bindgen:cparse", ptr %t45, i32 0, i32 2
  %t47 = load i64, ptr %t46, !tbaa !24
  %t49 = add i64 %t47, 1
  %t51 = load ptr, ptr %l20, !tbaa !29
  %t52 = getelementptr %"compiler/bindgen:cparse", ptr %t51, i32 0, i32 2
  store i64 %t49, ptr %t52, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t57 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t53, ptr %t54)
  %t58 = extractvalue { i32, %"compiler/bindgen:cx" } %t57, 1
  %t59 = extractvalue { i32, %"compiler/bindgen:cx" } %t57, 0
  store i32 %t59, ptr %l27
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb10, label %ok.61, !prof !99
ok.61:
  store %"compiler/bindgen:cx" %t58, ptr %l26
  br label %bb9
bb9:
  %t62 = load %"compiler/bindgen:cx", ptr %l26
  store %"compiler/bindgen:cx" %t62, ptr %l23
  br label %bb11
bb10:
  %t63 = load i32, ptr %l27, !tbaa !23
  %t64 = lshr i32 %t63, 16
  %t65 = and i32 %t63, 65535
  %t66 = icmp eq i32 %t64, 1
  %t67 = select i1 %t66, i32 1, i32 0
  %t68 = icmp eq i32 %t63, 0
  %t69 = shl i32 %t67, 16
  %t70 = or i32 %t69, %t65
  %t71 = select i1 %t68, i32 0, i32 %t70
  call void @__olang_scope_close(ptr %s0)
  %t73 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t71, 0
  store { i32, %"compiler/bindgen:cx" } %t73, ptr %rv
  br label %ret
bb11:
  %t74 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t74, ptr %lp3
  %t75 = load %"compiler/bindgen:cx", ptr %l23
  %t76 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t75, ptr %t76
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s0, ptr %t77)
  store { i64, ptr } %t79, ptr %l30
  br label %bb12
bb12:
  %t80 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = mul i64 %t81, 1
  %t84 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t83)
  call void @llvm.memcpy.p0.p0.i64(ptr %t84, ptr %t82, i64 %t83, i1 false)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t86, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t88, ptr %l32
  br label %bb13
bb13:
  %t89 = load i1, ptr %l32, !tbaa !21
  %t90 = xor i1 %t89, true
  br i1 %t90, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s2, ptr %t92, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i32 %t94, ptr %l35
  %t95 = icmp ne i32 %t94, 0
  br i1 %t95, label %bb17, label %ok.96, !prof !99
ok.96:
  br label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb18
bb17:
  %t97 = load i32, ptr %l35, !tbaa !23
  %t98 = lshr i32 %t97, 16
  %t99 = and i32 %t97, 65535
  %t100 = icmp eq i32 %t98, 1
  %t101 = select i1 %t100, i32 1, i32 0
  %t102 = icmp eq i32 %t97, 0
  %t103 = shl i32 %t101, 16
  %t104 = or i32 %t103, %t99
  %t105 = select i1 %t102, i32 0, i32 %t104
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t107 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t105, 0
  store { i32, %"compiler/bindgen:cx" } %t107, ptr %rv
  br label %ret
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t108 = load ptr, ptr %l1, !tbaa !29
  store ptr %t108, ptr %l37, !tbaa !29
  %t109 = load ptr, ptr %l37, !tbaa !29
  %t110 = getelementptr %"compiler/bindgen:cparse", ptr %t109, i32 0, i32 2
  %t111 = load i64, ptr %t110, !tbaa !24
  %t113 = add i64 %t111, 1
  %t115 = load ptr, ptr %l37, !tbaa !29
  %t116 = getelementptr %"compiler/bindgen:cparse", ptr %t115, i32 0, i32 2
  store i64 %t113, ptr %t116, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t121 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t117, ptr %t118)
  %t122 = extractvalue { i32, %"compiler/bindgen:cx" } %t121, 1
  %t123 = extractvalue { i32, %"compiler/bindgen:cx" } %t121, 0
  store i32 %t123, ptr %l44
  %t124 = icmp ne i32 %t123, 0
  br i1 %t124, label %bb21, label %ok.125, !prof !99
ok.125:
  store %"compiler/bindgen:cx" %t122, ptr %l43
  br label %bb20
bb20:
  %t126 = load %"compiler/bindgen:cx", ptr %l43
  store %"compiler/bindgen:cx" %t126, ptr %l40
  br label %bb22
bb21:
  %t127 = load i32, ptr %l44, !tbaa !23
  %t128 = lshr i32 %t127, 16
  %t129 = and i32 %t127, 65535
  %t130 = icmp eq i32 %t128, 1
  %t131 = select i1 %t130, i32 1, i32 0
  %t132 = icmp eq i32 %t127, 0
  %t133 = shl i32 %t131, 16
  %t134 = or i32 %t133, %t129
  %t135 = select i1 %t132, i32 0, i32 %t134
  call void @__olang_scope_close(ptr %s0)
  %t137 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t135, 0
  store { i32, %"compiler/bindgen:cx" } %t137, ptr %rv
  br label %ret
bb22:
  %t138 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t138, ptr %lp4
  %t139 = load %"compiler/bindgen:cx", ptr %l40
  %t140 = load ptr, ptr %lp4
  store %"compiler/bindgen:cx" %t139, ptr %t140
  %t141 = load ptr, ptr %lp3
  %t142 = getelementptr %"compiler/bindgen:cx", ptr %t141, i32 0, i32 1
  %t143 = load i64, ptr %t142, !tbaa !24
  %t144 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t147 = icmp eq i64 %t143, %t144
  br i1 %t147, label %bb23, label %bb24
bb23:
  %t149 = load ptr, ptr %lp4
  %t150 = getelementptr %"compiler/bindgen:cx", ptr %t149, i32 0, i32 1
  %t151 = load i64, ptr %t150, !tbaa !24
  %t152 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t155 = icmp eq i64 %t151, %t152
  store i1 %t155, ptr %l49, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb25
bb25:
  %t157 = load i1, ptr %l49, !tbaa !21
  br i1 %t157, label %bb26, label %bb27
bb26:
  %t158 = ptrtoint ptr %v2 to i64
  store i64 %t158, ptr %l53, !tbaa !24
  %t159 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t159, label %bb28, label %bb29
bb27:
  br label %bb32
bb28:
  %t161 = call ptr @__olang_region_make(ptr %v2)
  %t162 = ptrtoint ptr %t161 to i64
  store i64 %t162, ptr %l53, !tbaa !24
  br label %bb29
bb29:
  %t163 = load ptr, ptr %lp3
  %t164 = getelementptr %"compiler/bindgen:cx", ptr %t163, i32 0, i32 0
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  store { i64, ptr } %t165, ptr %l55, !tbaa !27
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load ptr, ptr %lp2
  %t168 = load %"compiler/bindgen:cx", ptr %t167
  %t171 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v2, ptr %v2, ptr %t166, %"compiler/bindgen:cx" %t168)
  store %"compiler/bindgen:cx" %t171, ptr %l58
  br label %bb30
bb30:
  %t172 = getelementptr %"compiler/bindgen:cx", ptr %l58, i32 0, i32 0
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  %t174 = load ptr, ptr %lp4
  %t175 = getelementptr %"compiler/bindgen:cx", ptr %t174, i32 0, i32 0
  %t176 = load { i64, ptr }, ptr %t175, !tbaa !27
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t179 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t179, 1
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t182 = add i64 %t178, %t181
  %t183 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t187 = extractvalue { i64, ptr } %t173, 1
  %t188 = extractvalue { i64, ptr } %t173, 0
  %t189 = add i64 %t185, %t188
  %t190 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t194 = extractvalue { i64, ptr } %t176, 1
  %t195 = extractvalue { i64, ptr } %t176, 0
  %t196 = add i64 %t192, %t195
  %t197 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t198 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t199 = add i64 %t196, %t198
  %t200 = load i64, ptr %l53
  %t201 = inttoptr i64 %t200 to ptr
  %t202 = call ptr @__olang_scope_alloc(ptr %t201, i64 %t199)
  call void @olang_textcopy(ptr %t202, ptr %t177, i64 %t178)
  %t203 = getelementptr i8, ptr %t202, i64 %t178
  call void @olang_textcopy(ptr %t203, ptr %t180, i64 %t181)
  %t204 = getelementptr i8, ptr %t203, i64 %t181
  call void @olang_textcopy(ptr %t204, ptr %t183, i64 %t184)
  %t205 = getelementptr i8, ptr %t204, i64 %t184
  call void @olang_textcopy(ptr %t205, ptr %t187, i64 %t188)
  %t206 = getelementptr i8, ptr %t205, i64 %t188
  call void @olang_textcopy(ptr %t206, ptr %t190, i64 %t191)
  %t207 = getelementptr i8, ptr %t206, i64 %t191
  call void @olang_textcopy(ptr %t207, ptr %t194, i64 %t195)
  %t208 = getelementptr i8, ptr %t207, i64 %t195
  call void @olang_textcopy(ptr %t208, ptr %t197, i64 %t198)
  %t209 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t202, 1
  %t212 = load i64, ptr %l53
  %t213 = inttoptr i64 %t212 to ptr
  %t214 = extractvalue { i64, ptr } %t210, 0
  %t215 = extractvalue { i64, ptr } %t210, 1
  %t216 = mul i64 %t214, 1
  %t217 = call ptr @__olang_scope_alloc(ptr %t213, i64 %t216)
  call void @llvm.memcpy.p0.p0.i64(ptr %t217, ptr %t215, i64 %t216, i1 false)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t217, 1
  %t220 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t223 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t219, i64 %t220, i64 -1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t223, ptr %l64
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t224 = load %"compiler/bindgen:cx", ptr %l64
  %t225 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t224, 1
  store { i32, %"compiler/bindgen:cx" } %t225, ptr %rv
  br label %ret
bb32:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load ptr, ptr %lp3
  %t228 = load %"compiler/bindgen:cx", ptr %t227
  %t231 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v2, ptr %v2, ptr %t226, %"compiler/bindgen:cx" %t228)
  store %"compiler/bindgen:cx" %t231, ptr %l67
  br label %bb33
bb33:
  %t232 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t232, ptr %lp5
  %t233 = load %"compiler/bindgen:cx", ptr %l67
  %t234 = load ptr, ptr %lp5
  store %"compiler/bindgen:cx" %t233, ptr %t234
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load ptr, ptr %lp4
  %t237 = load %"compiler/bindgen:cx", ptr %t236
  %t240 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v2, ptr %v2, ptr %t235, %"compiler/bindgen:cx" %t237)
  store %"compiler/bindgen:cx" %t240, ptr %l70
  br label %bb34
bb34:
  %t241 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t241, ptr %lp6
  %t242 = load %"compiler/bindgen:cx", ptr %l70
  %t243 = load ptr, ptr %lp6
  store %"compiler/bindgen:cx" %t242, ptr %t243
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load ptr, ptr %lp5
  %t246 = load %"compiler/bindgen:cx", ptr %t245
  %t247 = load ptr, ptr %lp6
  %t248 = load %"compiler/bindgen:cx", ptr %t247
  %t252 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecLead(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t244, %"compiler/bindgen:cx" %t246, %"compiler/bindgen:cx" %t248)
  store %"compiler/bindgen:cx" %t252, ptr %l74
  br label %bb35
bb35:
  %t253 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t253, ptr %lp7
  %t254 = load %"compiler/bindgen:cx", ptr %l74
  %t255 = load ptr, ptr %lp7
  store %"compiler/bindgen:cx" %t254, ptr %t255
  %t256 = ptrtoint ptr %v2 to i64
  store i64 %t256, ptr %l75, !tbaa !24
  %t257 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t257, label %bb36, label %bb37
bb36:
  %t259 = call ptr @__olang_region_make(ptr %v2)
  %t260 = ptrtoint ptr %t259 to i64
  store i64 %t260, ptr %l75, !tbaa !24
  br label %bb37
bb37:
  %t261 = load ptr, ptr %lp5
  %t262 = getelementptr %"compiler/bindgen:cx", ptr %t261, i32 0, i32 0
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  store { i64, ptr } %t263, ptr %l77, !tbaa !27
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load ptr, ptr %lp2
  %t266 = load %"compiler/bindgen:cx", ptr %t265
  %t269 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v2, ptr %v2, ptr %t264, %"compiler/bindgen:cx" %t266)
  store %"compiler/bindgen:cx" %t269, ptr %l80
  br label %bb38
bb38:
  %t270 = getelementptr %"compiler/bindgen:cx", ptr %l80, i32 0, i32 0
  %t271 = load { i64, ptr }, ptr %t270, !tbaa !27
  %t272 = load ptr, ptr %lp6
  %t273 = getelementptr %"compiler/bindgen:cx", ptr %t272, i32 0, i32 0
  %t274 = load { i64, ptr }, ptr %t273, !tbaa !27
  %t275 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t276 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t277 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t277, 1
  %t279 = extractvalue { i64, ptr } %t277, 0
  %t280 = add i64 %t276, %t279
  %t281 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t282 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t283 = add i64 %t280, %t282
  %t285 = extractvalue { i64, ptr } %t271, 1
  %t286 = extractvalue { i64, ptr } %t271, 0
  %t287 = add i64 %t283, %t286
  %t288 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t289 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t290 = add i64 %t287, %t289
  %t292 = extractvalue { i64, ptr } %t274, 1
  %t293 = extractvalue { i64, ptr } %t274, 0
  %t294 = add i64 %t290, %t293
  %t295 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t296 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t297 = add i64 %t294, %t296
  %t298 = load i64, ptr %l75
  %t299 = inttoptr i64 %t298 to ptr
  %t300 = call ptr @__olang_scope_alloc(ptr %t299, i64 %t297)
  call void @olang_textcopy(ptr %t300, ptr %t275, i64 %t276)
  %t301 = getelementptr i8, ptr %t300, i64 %t276
  call void @olang_textcopy(ptr %t301, ptr %t278, i64 %t279)
  %t302 = getelementptr i8, ptr %t301, i64 %t279
  call void @olang_textcopy(ptr %t302, ptr %t281, i64 %t282)
  %t303 = getelementptr i8, ptr %t302, i64 %t282
  call void @olang_textcopy(ptr %t303, ptr %t285, i64 %t286)
  %t304 = getelementptr i8, ptr %t303, i64 %t286
  call void @olang_textcopy(ptr %t304, ptr %t288, i64 %t289)
  %t305 = getelementptr i8, ptr %t304, i64 %t289
  call void @olang_textcopy(ptr %t305, ptr %t292, i64 %t293)
  %t306 = getelementptr i8, ptr %t305, i64 %t293
  call void @olang_textcopy(ptr %t306, ptr %t295, i64 %t296)
  %t307 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t308 = insertvalue { i64, ptr } %t307, ptr %t300, 1
  %t310 = load i64, ptr %l75
  %t311 = inttoptr i64 %t310 to ptr
  %t312 = extractvalue { i64, ptr } %t308, 0
  %t313 = extractvalue { i64, ptr } %t308, 1
  %t314 = mul i64 %t312, 1
  %t315 = call ptr @__olang_scope_alloc(ptr %t311, i64 %t314)
  call void @llvm.memcpy.p0.p0.i64(ptr %t315, ptr %t313, i64 %t314, i1 false)
  %t316 = insertvalue { i64, ptr } undef, i64 %t312, 0
  %t317 = insertvalue { i64, ptr } %t316, ptr %t315, 1
  %t318 = load ptr, ptr %lp7
  %t319 = getelementptr %"compiler/bindgen:cx", ptr %t318, i32 0, i32 1
  %t320 = load i64, ptr %t319, !tbaa !24
  %t321 = load ptr, ptr %lp7
  %t322 = getelementptr %"compiler/bindgen:cx", ptr %t321, i32 0, i32 2
  %t323 = load i64, ptr %t322, !tbaa !24
  %t324 = load ptr, ptr %lp7
  %t325 = getelementptr %"compiler/bindgen:cx", ptr %t324, i32 0, i32 3
  %t326 = load { i64, ptr }, ptr %t325, !tbaa !27
  %t331 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t317, i64 %t320, i64 %t323, { i64, ptr } %t326)
  store %"compiler/bindgen:cx" %t331, ptr %l88
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t332 = load %"compiler/bindgen:cx", ptr %l88
  %t333 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t332, 1
  store { i32, %"compiler/bindgen:cx" } %t333, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/bindgen:cx" }, ptr %rv
  ret { i32, %"compiler/bindgen:cx" } %rr
}

define dso_local { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNumber(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca { i64, ptr }
  %l13 = alloca i1
  %l16 = alloca i1
  %l18 = alloca { i64, ptr }
  %l19 = alloca i1
  %l20 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca i1
  %l25 = alloca i1
  %l27 = alloca { i64, ptr }
  %l28 = alloca i1
  %l30 = alloca i32
  %l36 = alloca i1
  %l41 = alloca i1
  %l46 = alloca i1
  %l48 = alloca i1
  %l57 = alloca i1
  %l62 = alloca i1
  %l67 = alloca i32
  %l69 = alloca i64
  %l70 = alloca i64
  %l76 = alloca %"std/prelude/text:StringBuilder"
  %l78 = alloca i1
  %l80 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i32
  %l87 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l90 = alloca i64
  %l95 = alloca { i64, ptr }
  %l96 = alloca i64
  %l97 = alloca i64
  %l103 = alloca { i64, ptr }
  %l104 = alloca i1
  %l107 = alloca { i64, ptr }
  %l113 = alloca ptr
  %l114 = alloca { i64, ptr }
  %l115 = alloca i64
  %l118 = alloca i64
  %l119 = alloca i64
  %l124 = alloca i64
  %l127 = alloca { i64, ptr }
  %l130 = alloca %"compiler/bindgen:cx"
  %l132 = alloca i1
  %l134 = alloca i1
  %l135 = alloca i1
  %l137 = alloca i1
  %l138 = alloca i1
  %l140 = alloca i1
  %l142 = alloca i64
  %l148 = alloca %"compiler/bindgen:cx"
  %l149 = alloca i64
  %l150 = alloca { i64, ptr }
  %l153 = alloca i64
  %l154 = alloca i64
  %l158 = alloca { i64, ptr }
  %l159 = alloca i64
  %l160 = alloca i32
  %l161 = alloca i64
  %l162 = alloca i32
  %l167 = alloca i32
  %l169 = alloca i64
  %l175 = alloca %"compiler/bindgen:cx"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/bindgen:cx" }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v1, ptr %s0, { i64, ptr } %t1)
  store { i64, ptr } %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t7, ptr %l13
  br label %bb2
bb2:
  %t8 = load i1, ptr %l13, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  %t9 = load i1, ptr %l3, !tbaa !21
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t16 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } %t15)
  store i1 %t16, ptr %l19
  br label %bb5
bb4:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb10
bb5:
  %t17 = load i1, ptr %l19, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb9
bb7:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t21 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t18, { i64, ptr } %t20)
  store i1 %t21, ptr %l23
  br label %bb8
bb8:
  %t22 = load i1, ptr %l23, !tbaa !21
  store i1 %t22, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l20, !tbaa !21
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t24 = load i1, ptr %l16, !tbaa !21
  store i1 %t24, ptr %l4, !tbaa !21
  %t25 = load i1, ptr %l3, !tbaa !21
  br i1 %t25, label %bb11, label %bb12
bb11:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t30 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t27, { i64, ptr } %t29)
  store i1 %t30, ptr %l28
  br label %bb13
bb12:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb14
bb13:
  %t31 = load i1, ptr %l28, !tbaa !21
  store i1 %t31, ptr %l25, !tbaa !21
  br label %bb14
bb14:
  %t32 = load i1, ptr %l25, !tbaa !21
  br i1 %t32, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s1
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s1, ptr %t33, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i32 %t35, ptr %l30
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb18, label %ok.37, !prof !99
ok.37:
  br label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb19
bb18:
  %t38 = load i32, ptr %l30, !tbaa !23
  %t39 = lshr i32 %t38, 16
  %t40 = and i32 %t38, 65535
  %t41 = icmp eq i32 %t39, 1
  %t42 = select i1 %t41, i32 1, i32 0
  %t43 = icmp eq i32 %t38, 0
  %t44 = shl i32 %t42, 16
  %t45 = or i32 %t44, %t40
  %t46 = select i1 %t43, i32 0, i32 %t45
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t48 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t46, 0
  store { i32, %"compiler/bindgen:cx" } %t48, ptr %rv
  br label %ret
bb19:
  call void @__olang_scope_close(ptr %s1)
  br label %bb20
bb20:
  %t49 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  store i64 %t51, ptr %l5, !tbaa !24
  br label %bb21
bb21:
  %t53 = load i64, ptr %l5, !tbaa !24
  %t55 = icmp sgt i64 %t53, 0
  br i1 %t55, label %bb22, label %bb23
bb22:
  %t57 = load i64, ptr %l5, !tbaa !24
  %t59 = sub i64 %t57, 1
  %t61 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i8, ptr %t62, i64 %t59
  %t64 = load i8, ptr %t63, !tbaa !32
  %t66 = icmp eq i8 %t64, 117
  br i1 %t66, label %bb24, label %bb25
bb23:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb33
bb24:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb26
bb25:
  %t68 = load i64, ptr %l5, !tbaa !24
  %t70 = sub i64 %t68, 1
  %t72 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i8, ptr %t73, i64 %t70
  %t75 = load i8, ptr %t74, !tbaa !32
  %t77 = icmp eq i8 %t75, 108
  store i1 %t77, ptr %l41, !tbaa !21
  br label %bb26
bb26:
  %t79 = load i1, ptr %l41, !tbaa !21
  br i1 %t79, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb32
bb28:
  %t80 = load i1, ptr %l4, !tbaa !21
  br i1 %t80, label %bb29, label %bb30
bb29:
  %t82 = load i64, ptr %l5, !tbaa !24
  %t84 = sub i64 %t82, 1
  %t86 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i8, ptr %t87, i64 %t84
  %t89 = load i8, ptr %t88, !tbaa !32
  %t91 = icmp eq i8 %t89, 102
  store i1 %t91, ptr %l48, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb31
bb31:
  %t93 = load i1, ptr %l48, !tbaa !21
  store i1 %t93, ptr %l46, !tbaa !21
  br label %bb32
bb32:
  %t94 = load i1, ptr %l46, !tbaa !21
  store i1 %t94, ptr %l36, !tbaa !21
  br label %bb33
bb33:
  %t95 = load i1, ptr %l36, !tbaa !21
  %t96 = xor i1 %t95, true
  br i1 %t96, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  br label %bb36
bb36:
  %t98 = load i64, ptr %l5, !tbaa !24
  %t100 = sub i64 %t98, 1
  store i64 %t100, ptr %l5, !tbaa !24
  br label %bb37
bb37:
  br label %bb21
bb38:
  %t102 = load i1, ptr %l4, !tbaa !21
  br i1 %t102, label %bb39, label %bb40
bb39:
  %t104 = load i64, ptr %l5, !tbaa !24
  %t105 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t110 = icmp slt i64 %t104, %t107
  store i1 %t110, ptr %l57, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb41
bb41:
  %t112 = load i1, ptr %l57, !tbaa !21
  br i1 %t112, label %bb42, label %bb43
bb42:
  %t113 = load i64, ptr %l5, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i8, ptr %t116, i64 %t113
  %t118 = load i8, ptr %t117, !tbaa !32
  %t120 = icmp eq i8 %t118, 108
  store i1 %t120, ptr %l62, !tbaa !21
  br label %bb44
bb43:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb44
bb44:
  %t122 = load i1, ptr %l62, !tbaa !21
  br i1 %t122, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s3
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s3, ptr %t123, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i32 %t125, ptr %l67
  %t126 = icmp ne i32 %t125, 0
  br i1 %t126, label %bb48, label %ok.127, !prof !99
ok.127:
  br label %bb47
bb46:
  br label %bb50
bb47:
  br label %bb49
bb48:
  %t128 = load i32, ptr %l67, !tbaa !23
  %t129 = lshr i32 %t128, 16
  %t130 = and i32 %t128, 65535
  %t131 = icmp eq i32 %t129, 1
  %t132 = select i1 %t131, i32 1, i32 0
  %t133 = icmp eq i32 %t128, 0
  %t134 = shl i32 %t132, 16
  %t135 = or i32 %t134, %t130
  %t136 = select i1 %t133, i32 0, i32 %t135
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t138 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t136, 0
  store { i32, %"compiler/bindgen:cx" } %t138, ptr %rv
  br label %ret
bb49:
  call void @__olang_scope_close(ptr %s3)
  br label %bb50
bb50:
  %t139 = load i64, ptr %l5, !tbaa !24
  store i64 %t139, ptr %l69, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  store i64 %t141, ptr %l70, !tbaa !24
  %t142 = icmp sge i64 0, 0
  br i1 %t142, label %bb51, label %bb52
bb51:
  %t144 = load i64, ptr %l69, !tbaa !24
  %t145 = icmp sle i64 0, %t144
  br i1 %t145, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_2281448cce404233_754aa41ddbc9325f)
  unreachable
bb53:
  %t147 = load i64, ptr %l69, !tbaa !24
  %t148 = load i64, ptr %l70, !tbaa !24
  %t149 = icmp sle i64 %t147, %t148
  br i1 %t149, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_2281448cce404233_754aa41ddbc9325f)
  unreachable
bb55:
  %t151 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = load i64, ptr %l69, !tbaa !24
  %t154 = getelementptr i8, ptr %t152, i64 0
  %t155 = sub i64 %t153, 0
  %t156 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t154, 1
  store { i64, ptr } %t157, ptr %l6, !tbaa !27
  %t159 = load i1, ptr %l4, !tbaa !21
  br i1 %t159, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_2281448cce404233_754aa41ddbc9325f)
  unreachable
bb57:
  store %olang.scope zeroinitializer, ptr %s4
  %t161 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s4)
  store %"std/prelude/text:StringBuilder" %t161, ptr %l76
  br label %bb59
bb58:
  br label %bb102
bb59:
  %t162 = load %"std/prelude/text:StringBuilder", ptr %l76
  store %"std/prelude/text:StringBuilder" %t162, ptr %l7
  %t163 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t165 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s4, { i64, ptr } %t163, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t165, ptr %l78
  br label %bb60
bb60:
  %t166 = load i1, ptr %l78, !tbaa !21
  br i1 %t166, label %bb61, label %bb62
bb61:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s4, ptr %l7, i8 48)
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t168 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t171 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %s0, { i64, ptr } %t168, i8 101)
  %t172 = extractvalue { i32, i64 } %t171, 1
  %t173 = extractvalue { i32, i64 } %t171, 0
  store i32 %t173, ptr %l84
  %t174 = icmp ne i32 %t173, 0
  br i1 %t174, label %bb66, label %ok.175, !prof !99
ok.175:
  store i64 %t172, ptr %l83
  br label %bb65
bb65:
  %t176 = load i64, ptr %l83, !tbaa !24
  store i64 %t176, ptr %l80, !tbaa !24
  br label %bb68
bb66:
  br label %bb67
bb67:
  %t177 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t177, 0
  store i64 %t179, ptr %l80, !tbaa !24
  br label %bb68
bb68:
  %t181 = load i64, ptr %l80, !tbaa !24
  store i64 %t181, ptr %l8, !tbaa !24
  store ptr %l7, ptr %l87, !tbaa !29
  %t182 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t182, ptr %l88, !tbaa !27
  %t183 = load i64, ptr %l8, !tbaa !24
  store i64 %t183, ptr %l89, !tbaa !24
  %t184 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t184, 0
  store i64 %t185, ptr %l90, !tbaa !24
  %t186 = icmp sge i64 0, 0
  br i1 %t186, label %bb69, label %bb70
bb69:
  %t188 = load i64, ptr %l89, !tbaa !24
  %t189 = icmp sle i64 0, %t188
  br i1 %t189, label %bb71, label %bb72
bb70:
  call void @__olang_check_failed(ptr @olang_loc_231822a9f2b4ccd6_f89b0d7c0520fae2)
  unreachable
bb71:
  %t191 = load i64, ptr %l89, !tbaa !24
  %t192 = load i64, ptr %l90, !tbaa !24
  %t193 = icmp sle i64 %t191, %t192
  br i1 %t193, label %bb73, label %bb74
bb72:
  call void @__olang_check_failed(ptr @olang_loc_231822a9f2b4ccd6_f89b0d7c0520fae2)
  unreachable
bb73:
  %t195 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = load i64, ptr %l89, !tbaa !24
  %t198 = getelementptr i8, ptr %t196, i64 0
  %t199 = sub i64 %t197, 0
  %t200 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t198, 1
  %t202 = load ptr, ptr %l87, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s4, ptr %s0, ptr %t202, { i64, ptr } %t201)
  br label %bb75
bb74:
  call void @__olang_check_failed(ptr @olang_loc_231822a9f2b4ccd6_f89b0d7c0520fae2)
  unreachable
bb75:
  %t204 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t204, ptr %l95, !tbaa !27
  %t205 = load i64, ptr %l8, !tbaa !24
  store i64 %t205, ptr %l96, !tbaa !24
  %t206 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 0
  store i64 %t207, ptr %l97, !tbaa !24
  %t208 = icmp sge i64 0, 0
  br i1 %t208, label %bb76, label %bb77
bb76:
  %t210 = load i64, ptr %l96, !tbaa !24
  %t211 = icmp sle i64 0, %t210
  br i1 %t211, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_3945c858895394b5_b3e6527511891161)
  unreachable
bb78:
  %t213 = load i64, ptr %l96, !tbaa !24
  %t214 = load i64, ptr %l97, !tbaa !24
  %t215 = icmp sle i64 %t213, %t214
  br i1 %t215, label %bb80, label %bb81
bb79:
  call void @__olang_check_failed(ptr @olang_loc_3945c858895394b5_b3e6527511891161)
  unreachable
bb80:
  %t217 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !27
  %t219 = load i64, ptr %l96, !tbaa !24
  %t220 = getelementptr i8, ptr %t218, i64 0
  %t221 = sub i64 %t219, 0
  %t222 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t220, 1
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %l103, !tbaa !27
  %t226 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t227 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s4, { i64, ptr } %t223, { i64, ptr } %t226)
  store i1 %t227, ptr %l104
  br label %bb82
bb81:
  call void @__olang_check_failed(ptr @olang_loc_3945c858895394b5_b3e6527511891161)
  unreachable
bb82:
  %t228 = load i1, ptr %l104, !tbaa !21
  %t229 = xor i1 %t228, true
  br i1 %t229, label %bb83, label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s4, ptr %s6, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d61, i32 0, i32 1) })
  br label %bb85
bb84:
  %t232 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t232, ptr %l107, !tbaa !27
  %t233 = load i64, ptr %l8, !tbaa !24
  %t235 = sub i64 %t233, 1
  %t237 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = getelementptr i8, ptr %t238, i64 %t235
  %t240 = load i8, ptr %t239, !tbaa !32
  %t242 = icmp eq i8 %t240, 46
  br i1 %t242, label %bb86, label %bb87
bb85:
  call void @__olang_scope_close(ptr %s6)
  br label %bb90
bb86:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s4, ptr %l7, i8 48)
  br label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb89
bb89:
  br label %bb90
bb90:
  store ptr %l7, ptr %l113, !tbaa !29
  %t245 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t245, ptr %l114, !tbaa !27
  %t246 = load i64, ptr %l8, !tbaa !24
  store i64 %t246, ptr %l115, !tbaa !24
  %t247 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t247, 0
  store i64 %t250, ptr %l118, !tbaa !24
  %t251 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 0
  store i64 %t252, ptr %l119, !tbaa !24
  %t253 = load i64, ptr %l115, !tbaa !24
  %t254 = icmp sge i64 %t253, 0
  br i1 %t254, label %bb91, label %bb92
bb91:
  %t256 = load i64, ptr %l115, !tbaa !24
  %t257 = load i64, ptr %l118, !tbaa !24
  %t258 = icmp sle i64 %t256, %t257
  br i1 %t258, label %bb93, label %bb94
bb92:
  call void @__olang_check_failed(ptr @olang_loc_5833c224f66d4858_52a9715d8b07374)
  unreachable
bb93:
  %t260 = load i64, ptr %l118, !tbaa !24
  %t261 = load i64, ptr %l119, !tbaa !24
  %t262 = icmp sle i64 %t260, %t261
  br i1 %t262, label %bb95, label %bb96
bb94:
  call void @__olang_check_failed(ptr @olang_loc_5833c224f66d4858_52a9715d8b07374)
  unreachable
bb95:
  %t264 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = load i64, ptr %l115, !tbaa !24
  %t267 = load i64, ptr %l118, !tbaa !24
  %t268 = getelementptr i8, ptr %t265, i64 %t266
  %t269 = sub i64 %t267, %t266
  %t270 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t268, 1
  %t272 = load ptr, ptr %l113, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s4, ptr %s0, ptr %t272, { i64, ptr } %t271)
  br label %bb97
bb96:
  call void @__olang_check_failed(ptr @olang_loc_5833c224f66d4858_52a9715d8b07374)
  unreachable
bb97:
  %t274 = ptrtoint ptr %v2 to i64
  store i64 %t274, ptr %l124, !tbaa !24
  %t275 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t275, label %bb98, label %bb99
bb98:
  %t277 = call ptr @__olang_region_make(ptr %v2)
  %t278 = ptrtoint ptr %t277 to i64
  store i64 %t278, ptr %l124, !tbaa !24
  br label %bb99
bb99:
  %t279 = load i64, ptr %l124
  %t280 = inttoptr i64 %t279 to ptr
  %t282 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s4, ptr %t280, ptr %l7)
  store { i64, ptr } %t282, ptr %l127
  br label %bb100
bb100:
  %t283 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t284 = load i64, ptr %l124
  %t285 = inttoptr i64 %t284 to ptr
  %t286 = extractvalue { i64, ptr } %t283, 0
  %t287 = extractvalue { i64, ptr } %t283, 1
  %t288 = mul i64 %t286, 1
  %t289 = call ptr @__olang_scope_alloc(ptr %t285, i64 %t288)
  call void @llvm.memcpy.p0.p0.i64(ptr %t289, ptr %t287, i64 %t288, i1 false)
  %t290 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t291 = insertvalue { i64, ptr } %t290, ptr %t289, 1
  %t292 = load i64, ptr @G_2ecompiler_2fbindgen_2eKFloat, !tbaa !24
  %t295 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } %t291, i64 %t292)
  store %"compiler/bindgen:cx" %t295, ptr %l130
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t296 = load %"compiler/bindgen:cx", ptr %l130
  %t297 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t296, 1
  store { i32, %"compiler/bindgen:cx" } %t297, ptr %rv
  br label %ret
bb102:
  %t298 = load i1, ptr %l3, !tbaa !21
  br i1 %t298, label %bb103, label %bb104
bb103:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb106
bb104:
  %t300 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t302 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t300, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d62, i32 0, i32 1) })
  store i1 %t302, ptr %l134
  br label %bb105
bb105:
  %t303 = load i1, ptr %l134, !tbaa !21
  store i1 %t303, ptr %l132, !tbaa !21
  br label %bb106
bb106:
  %t304 = load i1, ptr %l132, !tbaa !21
  br i1 %t304, label %bb107, label %bb108
bb107:
  store i1 true, ptr %l135, !tbaa !21
  br label %bb110
bb108:
  %t305 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t307 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t305, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t307, ptr %l137
  br label %bb109
bb109:
  %t308 = load i1, ptr %l137, !tbaa !21
  store i1 %t308, ptr %l135, !tbaa !21
  br label %bb110
bb110:
  %t309 = load i1, ptr %l135, !tbaa !21
  br i1 %t309, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l138, !tbaa !21
  br label %bb114
bb112:
  %t310 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t312 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t310, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) })
  store i1 %t312, ptr %l140
  br label %bb113
bb113:
  %t313 = load i1, ptr %l140, !tbaa !21
  %t314 = xor i1 %t313, true
  store i1 %t314, ptr %l138, !tbaa !21
  br label %bb114
bb114:
  %t316 = load i1, ptr %l138, !tbaa !21
  br i1 %t316, label %bb115, label %bb116
bb115:
  %t317 = ptrtoint ptr %v2 to i64
  store i64 %t317, ptr %l142, !tbaa !24
  %t318 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t318, label %bb117, label %bb118
bb116:
  br label %bb120
bb117:
  %t320 = call ptr @__olang_region_make(ptr %v2)
  %t321 = ptrtoint ptr %t320 to i64
  store i64 %t321, ptr %l142, !tbaa !24
  br label %bb118
bb118:
  %t322 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t322, 1
  %t325 = extractvalue { i64, ptr } %t322, 0
  %t326 = load i64, ptr %l142
  %t327 = inttoptr i64 %t326 to ptr
  %t328 = call ptr @__olang_scope_alloc(ptr %t327, i64 %t325)
  call void @olang_textcopy(ptr %t328, ptr %t324, i64 %t325)
  %t329 = insertvalue { i64, ptr } undef, i64 %t325, 0
  %t330 = insertvalue { i64, ptr } %t329, ptr %t328, 1
  %t332 = load i64, ptr %l142
  %t333 = inttoptr i64 %t332 to ptr
  %t334 = extractvalue { i64, ptr } %t330, 0
  %t335 = extractvalue { i64, ptr } %t330, 1
  %t336 = mul i64 %t334, 1
  %t337 = call ptr @__olang_scope_alloc(ptr %t333, i64 %t336)
  call void @llvm.memcpy.p0.p0.i64(ptr %t337, ptr %t335, i64 %t336, i1 false)
  %t338 = insertvalue { i64, ptr } undef, i64 %t334, 0
  %t339 = insertvalue { i64, ptr } %t338, ptr %t337, 1
  %t340 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t343 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } %t339, i64 %t340)
  store %"compiler/bindgen:cx" %t343, ptr %l148
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s0)
  %t344 = load %"compiler/bindgen:cx", ptr %l148
  %t345 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t344, 1
  store { i32, %"compiler/bindgen:cx" } %t345, ptr %rv
  br label %ret
bb120:
  %t346 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t346, ptr %l150, !tbaa !27
  %t347 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t350 = extractvalue { i64, ptr } %t347, 0
  store i64 %t350, ptr %l153, !tbaa !24
  %t351 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t352 = extractvalue { i64, ptr } %t351, 0
  store i64 %t352, ptr %l154, !tbaa !24
  %t353 = icmp sge i64 1, 0
  br i1 %t353, label %bb121, label %bb122
bb121:
  %t355 = load i64, ptr %l153, !tbaa !24
  %t356 = icmp sle i64 1, %t355
  br i1 %t356, label %bb123, label %bb124
bb122:
  call void @__olang_check_failed(ptr @olang_loc_8ffdd2b799db8b57_8707d2f5a85c3a7b)
  unreachable
bb123:
  %t358 = load i64, ptr %l153, !tbaa !24
  %t359 = load i64, ptr %l154, !tbaa !24
  %t360 = icmp sle i64 %t358, %t359
  br i1 %t360, label %bb125, label %bb126
bb124:
  call void @__olang_check_failed(ptr @olang_loc_8ffdd2b799db8b57_8707d2f5a85c3a7b)
  unreachable
bb125:
  %t362 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !27
  %t364 = load i64, ptr %l153, !tbaa !24
  %t365 = getelementptr i8, ptr %t363, i64 1
  %t366 = sub i64 %t364, 1
  %t367 = insertvalue { i64, ptr } undef, i64 %t366, 0
  %t368 = insertvalue { i64, ptr } %t367, ptr %t365, 1
  store { i64, ptr } %t368, ptr %l158, !tbaa !27
  %t369 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 8)
  %t370 = extractvalue { i32, i64 } %t369, 1
  %t371 = extractvalue { i32, i64 } %t369, 0
  store i32 %t371, ptr %l160
  %t372 = icmp ne i32 %t371, 0
  br i1 %t372, label %bb128, label %ok.373, !prof !99
ok.373:
  store i64 %t370, ptr %l159
  br label %bb127
bb126:
  call void @__olang_check_failed(ptr @olang_loc_8ffdd2b799db8b57_8707d2f5a85c3a7b)
  unreachable
bb127:
  %t374 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t375 = load i64, ptr %l159, !tbaa !24
  %t376 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t374, i64 %t375)
  %t377 = extractvalue { i32, i64 } %t376, 1
  %t378 = extractvalue { i32, i64 } %t376, 0
  store i32 %t378, ptr %l162
  %t379 = icmp ne i32 %t378, 0
  br i1 %t379, label %bb131, label %ok.380, !prof !99
ok.380:
  store i64 %t377, ptr %l161
  br label %bb130
bb128:
  br label %bb129
bb129:
  store %olang.scope zeroinitializer, ptr %s11
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t383 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t384 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t386 = extractvalue { i64, ptr } %t382, 1
  %t387 = extractvalue { i64, ptr } %t382, 0
  %t388 = add i64 %t384, %t387
  %t389 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t390 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t391 = add i64 %t388, %t390
  %t392 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t391)
  call void @olang_textcopy(ptr %t392, ptr %t383, i64 %t384)
  %t393 = getelementptr i8, ptr %t392, i64 %t384
  call void @olang_textcopy(ptr %t393, ptr %t386, i64 %t387)
  %t394 = getelementptr i8, ptr %t393, i64 %t387
  call void @olang_textcopy(ptr %t394, ptr %t389, i64 %t390)
  %t395 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t396 = insertvalue { i64, ptr } %t395, ptr %t392, 1
  %t398 = extractvalue { i64, ptr } %t396, 0
  %t399 = extractvalue { i64, ptr } %t396, 1
  %t400 = mul i64 %t398, 1
  %t401 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t400)
  call void @llvm.memcpy.p0.p0.i64(ptr %t401, ptr %t399, i64 %t400, i1 false)
  %t402 = insertvalue { i64, ptr } undef, i64 %t398, 0
  %t403 = insertvalue { i64, ptr } %t402, ptr %t401, 1
  %t406 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s11, ptr %t381, { i64, ptr } %t403)
  store i32 %t406, ptr %l167
  %t407 = icmp ne i32 %t406, 0
  br i1 %t407, label %bb133, label %ok.408, !prof !99
ok.408:
  br label %bb132
bb130:
  %t409 = load i64, ptr %l161, !tbaa !24
  store i64 %t409, ptr %l149, !tbaa !24
  br label %bb135
bb131:
  br label %bb129
bb132:
  br label %bb134
bb133:
  %t410 = load i32, ptr %l167, !tbaa !23
  %t411 = lshr i32 %t410, 16
  %t412 = and i32 %t410, 65535
  %t413 = icmp eq i32 %t411, 1
  %t414 = select i1 %t413, i32 1, i32 0
  %t415 = icmp eq i32 %t410, 0
  %t416 = shl i32 %t414, 16
  %t417 = or i32 %t416, %t412
  %t418 = select i1 %t415, i32 0, i32 %t417
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t420 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t418, 0
  store { i32, %"compiler/bindgen:cx" } %t420, ptr %rv
  br label %ret
bb134:
  call void @__olang_scope_close(ptr %s11)
  store i64 0, ptr %l149, !tbaa !24
  br label %bb135
bb135:
  %t421 = load i64, ptr %l149, !tbaa !24
  store i64 %t421, ptr %l9, !tbaa !24
  %t422 = ptrtoint ptr %v2 to i64
  store i64 %t422, ptr %l169, !tbaa !24
  %t423 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t423, label %bb136, label %bb137
bb136:
  %t425 = call ptr @__olang_region_make(ptr %v2)
  %t426 = ptrtoint ptr %t425 to i64
  store i64 %t426, ptr %l169, !tbaa !24
  br label %bb137
bb137:
  %t427 = load i64, ptr %l9, !tbaa !24
  %t429 = call i64 @__olang_fmt_i64(ptr null, i64 %t427)
  %t430 = load i64, ptr %l169
  %t431 = inttoptr i64 %t430 to ptr
  %t432 = call ptr @__olang_scope_alloc(ptr %t431, i64 %t429)
  %t433 = call i64 @__olang_fmt_i64(ptr %t432, i64 %t427)
  %t434 = insertvalue { i64, ptr } undef, i64 %t429, 0
  %t435 = insertvalue { i64, ptr } %t434, ptr %t432, 1
  %t437 = load i64, ptr %l169
  %t438 = inttoptr i64 %t437 to ptr
  %t439 = extractvalue { i64, ptr } %t435, 0
  %t440 = extractvalue { i64, ptr } %t435, 1
  %t441 = mul i64 %t439, 1
  %t442 = call ptr @__olang_scope_alloc(ptr %t438, i64 %t441)
  call void @llvm.memcpy.p0.p0.i64(ptr %t442, ptr %t440, i64 %t441, i1 false)
  %t443 = insertvalue { i64, ptr } undef, i64 %t439, 0
  %t444 = insertvalue { i64, ptr } %t443, ptr %t442, 1
  %t445 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t448 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } %t444, i64 %t445)
  store %"compiler/bindgen:cx" %t448, ptr %l175
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s0)
  %t449 = load %"compiler/bindgen:cx", ptr %l175
  %t450 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t449, 1
  store { i32, %"compiler/bindgen:cx" } %t450, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/bindgen:cx" }, ptr %rv
  ret { i32, %"compiler/bindgen:cx" } %rr
}

define dso_local { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l9 = alloca %"compiler/bindgen:cMacro"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l33 = alloca i32
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca { i64, ptr }
  %l45 = alloca i1
  %l46 = alloca i1
  %l48 = alloca i1
  %l50 = alloca i32
  %l52 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i32
  %l60 = alloca i1
  %l64 = alloca %"compiler/bindgen:cMacro"
  %l66 = alloca i1
  %l67 = alloca i1
  %l71 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca i64
  %l83 = alloca %"compiler/bindgen:cMacro"
  %l86 = alloca ptr
  %l87 = alloca i64
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca i32
  %l101 = alloca i64
  %l103 = alloca i64
  %l108 = alloca { i64, ptr }
  %l109 = alloca ptr
  %l110 = alloca i64
  %l117 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l120 = alloca i32
  %l129 = alloca i1
  %l130 = alloca { i64, ptr }
  %l134 = alloca i1
  %l136 = alloca ptr
  %l137 = alloca i64
  %l149 = alloca i32
  %l151 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l152 = alloca i64
  %l154 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l163 = alloca { i64, ptr }
  %l167 = alloca i1
  %l171 = alloca i1
  %l177 = alloca i1
  %l178 = alloca i1
  %l181 = alloca ptr
  %l182 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l184 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l185 = alloca i64
  %l187 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l189 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l191 = alloca ptr
  %l192 = alloca i64
  %l207 = alloca i32
  %l210 = alloca i64
  %l212 = alloca i1
  %l214 = alloca i64
  %l216 = alloca ptr
  %l217 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l219 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l221 = alloca i64
  %l229 = alloca i32
  %l231 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l239 = alloca { i64, ptr }
  %l242 = alloca i64
  %l246 = alloca i64
  %l247 = alloca i32
  %l250 = alloca ptr
  %l251 = alloca i64
  %l257 = alloca ptr
  %l260 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l262 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l264 = alloca { i64, ptr }
  %l268 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l269 = alloca i32
  %l272 = alloca i64
  %l274 = alloca i64
  %l279 = alloca { i64, ptr }
  %l280 = alloca ptr
  %l281 = alloca i64
  %l291 = alloca ptr
  %l292 = alloca i64
  %l297 = alloca ptr
  %l299 = alloca { i64, ptr }
  %l303 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l304 = alloca i32
  %l307 = alloca i64
  %l309 = alloca i64
  %l314 = alloca { i64, ptr }
  %l315 = alloca ptr
  %l316 = alloca i64
  %l323 = alloca { i64, ptr }
  %l325 = alloca { i64, ptr }
  %l326 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %rv = alloca { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
  %t643 = alloca { { i64, ptr }, ptr }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sgt i64 %t1, 64
  br i1 %t3, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s1, ptr %t5, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store i32 %t7, ptr %l33
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb4, label %ok.9, !prof !99
ok.9:
  br label %bb3
bb2:
  br label %bb6
bb3:
  br label %bb5
bb4:
  %t10 = load i32, ptr %l33, !tbaa !23
  %t11 = lshr i32 %t10, 16
  %t12 = and i32 %t10, 65535
  %t13 = icmp eq i32 %t11, 1
  %t14 = select i1 %t13, i32 1, i32 0
  %t15 = icmp eq i32 %t10, 0
  %t16 = shl i32 %t14, 16
  %t17 = or i32 %t16, %t12
  %t18 = select i1 %t15, i32 0, i32 %t17
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t20 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t18, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t20, ptr %rv
  br label %ret
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb6
bb6:
  %t21 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l35
  br label %bb7
bb7:
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t22, ptr %lp4
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  %t24 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %t24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t31 = icmp slt i64 %t25, %t28
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb211
bb10:
  br label %bb11
bb11:
  %t35 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t35, ptr %l41, !tbaa !27
  %t36 = load i64, ptr %l5, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %t39, i64 %t36
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !37
  store { i64, ptr } %t41, ptr %l6, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t45 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t43, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store i1 %t45, ptr %l45
  br label %bb12
bb12:
  %t46 = load i1, ptr %l45, !tbaa !21
  br i1 %t46, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb16
bb14:
  %t47 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t47, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d69, i32 0, i32 1) })
  store i1 %t49, ptr %l48
  br label %bb15
bb15:
  %t50 = load i1, ptr %l48, !tbaa !21
  store i1 %t50, ptr %l46, !tbaa !21
  br label %bb16
bb16:
  %t51 = load i1, ptr %l46, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s3, ptr %t52, { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store i32 %t54, ptr %l50
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb20, label %ok.56, !prof !99
ok.56:
  br label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb21
bb20:
  %t57 = load i32, ptr %l50, !tbaa !23
  %t58 = lshr i32 %t57, 16
  %t59 = and i32 %t57, 65535
  %t60 = icmp eq i32 %t58, 1
  %t61 = select i1 %t60, i32 1, i32 0
  %t62 = icmp eq i32 %t57, 0
  %t63 = shl i32 %t61, 16
  %t64 = or i32 %t63, %t59
  %t65 = select i1 %t62, i32 0, i32 %t64
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t67 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t65, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t67, ptr %rv
  br label %ret
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb22:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/bindgen:gen", ptr %t68, i32 0, i32 13
  %t71 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t74 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t70, { i64, ptr } %t71)
  %t75 = extractvalue { i32, i64 } %t74, 1
  %t76 = extractvalue { i32, i64 } %t74, 0
  store i32 %t76, ptr %l57
  %t77 = icmp ne i32 %t76, 0
  br i1 %t77, label %bb24, label %ok.78, !prof !99
ok.78:
  store i64 %t75, ptr %l56
  br label %bb23
bb23:
  %t79 = load i64, ptr %l56, !tbaa !24
  store i64 %t79, ptr %l52, !tbaa !24
  br label %bb26
bb24:
  br label %bb25
bb25:
  store i64 -1, ptr %l52, !tbaa !24
  br label %bb26
bb26:
  %t80 = load i64, ptr %l52, !tbaa !24
  store i64 %t80, ptr %l7, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t83 = icmp slt i64 %t81, 0
  br i1 %t83, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb31
bb28:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/bindgen:gen", ptr %t85, i32 0, i32 12
  %t88 = load i64, ptr %l7, !tbaa !24
  %t91 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v0, ptr %t87, i64 %t88)
  store %"compiler/bindgen:cMacro" %t91, ptr %l64
  br label %bb29
bb29:
  %t92 = getelementptr %"compiler/bindgen:cMacro", ptr %l64, i32 0, i32 0
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  %t95 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t93, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d71, i32 0, i32 1) })
  store i1 %t95, ptr %l66
  br label %bb30
bb30:
  %t96 = load i1, ptr %l66, !tbaa !21
  store i1 %t96, ptr %l60, !tbaa !21
  br label %bb31
bb31:
  %t97 = load i1, ptr %l60, !tbaa !21
  br i1 %t97, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb35
bb33:
  %t98 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t100 = load ptr, ptr %l2, !tbaa !29
  %t104 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v2, ptr %v1, ptr %t100, { i64, ptr } %t98)
  store i1 %t104, ptr %l71
  br label %bb34
bb34:
  %t105 = load i1, ptr %l71, !tbaa !21
  store i1 %t105, ptr %l67, !tbaa !21
  br label %bb35
bb35:
  %t106 = load i1, ptr %l67, !tbaa !21
  br i1 %t106, label %bb36, label %bb37
bb36:
  %t107 = load ptr, ptr %lp4
  store ptr %t107, ptr %l72, !tbaa !29
  %t108 = ptrtoint ptr %v3 to i64
  store i64 %t108, ptr %l73, !tbaa !24
  %t109 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t109, label %bb38, label %bb39
bb37:
  br label %bb41
bb38:
  %t111 = call ptr @__olang_region_make(ptr %v3)
  %t112 = ptrtoint ptr %t111 to i64
  store i64 %t112, ptr %l73, !tbaa !24
  br label %bb39
bb39:
  %t113 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t113, 1
  %t116 = extractvalue { i64, ptr } %t113, 0
  %t117 = load i64, ptr %l73
  %t118 = inttoptr i64 %t117 to ptr
  %t119 = call ptr @__olang_scope_alloc(ptr %t118, i64 %t116)
  call void @olang_textcopy(ptr %t119, ptr %t115, i64 %t116)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  %t123 = load i64, ptr %l73
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = extractvalue { i64, ptr } %t121, 0
  %t126 = extractvalue { i64, ptr } %t121, 1
  %t127 = mul i64 %t125, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %t124, i64 %t127)
  call void @llvm.memcpy.p0.p0.i64(ptr %t128, ptr %t126, i64 %t127, i1 false)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  %t131 = load ptr, ptr %l72, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t131, { i64, ptr } %t130)
  br label %bb40
bb40:
  %t133 = load i64, ptr %l5, !tbaa !24
  %t135 = add i64 %t133, 1
  store i64 %t135, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb210
bb41:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/bindgen:gen", ptr %t137, i32 0, i32 12
  %t140 = load i64, ptr %l7, !tbaa !24
  %t143 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v0, ptr %t139, i64 %t140)
  store %"compiler/bindgen:cMacro" %t143, ptr %l83
  br label %bb42
bb42:
  %t144 = load %"compiler/bindgen:cMacro", ptr %l83
  store %"compiler/bindgen:cMacro" %t144, ptr %l9
  %t145 = getelementptr %"compiler/bindgen:cMacro", ptr %l9, i32 0, i32 1
  %t146 = load i1, ptr %t145, !tbaa !21
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s6
  %t150 = load ptr, ptr %l2, !tbaa !29
  store ptr %t150, ptr %l86, !tbaa !29
  %t151 = ptrtoint ptr %v2 to i64
  store i64 %t151, ptr %l87, !tbaa !24
  %t152 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t152, label %bb45, label %bb46
bb44:
  br label %bb68
bb45:
  %t154 = call ptr @__olang_region_make(ptr %v2)
  %t155 = ptrtoint ptr %t154 to i64
  store i64 %t155, ptr %l87, !tbaa !24
  br label %bb46
bb46:
  %t156 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t156, 1
  %t159 = extractvalue { i64, ptr } %t156, 0
  %t160 = load i64, ptr %l87
  %t161 = inttoptr i64 %t160 to ptr
  %t162 = call ptr @__olang_scope_alloc(ptr %t161, i64 %t159)
  call void @olang_textcopy(ptr %t162, ptr %t158, i64 %t159)
  %t163 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  %t166 = load i64, ptr %l87
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = extractvalue { i64, ptr } %t164, 0
  %t169 = extractvalue { i64, ptr } %t164, 1
  %t170 = mul i64 %t168, 1
  %t171 = call ptr @__olang_scope_alloc(ptr %t167, i64 %t170)
  call void @llvm.memcpy.p0.p0.i64(ptr %t171, ptr %t169, i64 %t170, i1 false)
  %t172 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  %t174 = load ptr, ptr %l86, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t174, { i64, ptr } %t173)
  br label %bb47
bb47:
  store %olang.scope zeroinitializer, ptr %s8
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/bindgen:cMacro", ptr %l9, i32 0, i32 3
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  %t179 = load ptr, ptr %l2, !tbaa !29
  %t180 = load i64, ptr %l3, !tbaa !24
  %t182 = add i64 %t180, 1
  %t187 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v0, ptr %v2, ptr %s8, ptr %t176, { i64, ptr } %t178, ptr %t179, i64 %t182)
  %t188 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t187, 1
  %t189 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t187, 0
  store i32 %t189, ptr %l98
  %t190 = icmp ne i32 %t189, 0
  br i1 %t190, label %bb49, label %ok.191, !prof !99
ok.191:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %l97
  br label %bb48
bb48:
  %t192 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  %t193 = call ptr @__olang_scope_alloc_a(ptr %s8, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t192, ptr %t193
  store ptr %t193, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb50
bb49:
  %t195 = load i32, ptr %l98, !tbaa !23
  %t196 = lshr i32 %t195, 16
  %t197 = and i32 %t195, 65535
  %t198 = icmp eq i32 %t196, 1
  %t199 = select i1 %t198, i32 1, i32 0
  %t200 = icmp eq i32 %t195, 0
  %t201 = shl i32 %t199, 16
  %t202 = or i32 %t201, %t197
  %t203 = select i1 %t200, i32 0, i32 %t202
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t205 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t203, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t205, ptr %rv
  br label %ret
bb50:
  %t206 = load i64, ptr %l11, !tbaa !24
  store i64 %t206, ptr %l101, !tbaa !24
  %t207 = load ptr, ptr %l10, !tbaa !29
  %t209 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s8, ptr %t207)
  store i64 %t209, ptr %l103
  br label %bb51
bb51:
  %t210 = load i64, ptr %l101, !tbaa !24
  %t211 = load i64, ptr %l103, !tbaa !24
  %t212 = icmp slt i64 %t210, %t211
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb52, label %bb53
bb52:
  br label %bb60
bb53:
  br label %bb54
bb54:
  %t216 = load ptr, ptr %l10, !tbaa !29
  %t217 = load i64, ptr %l11, !tbaa !24
  %t220 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s8, ptr %s8, ptr %t216, i64 %t217)
  store { i64, ptr } %t220, ptr %l108
  br label %bb55
bb55:
  %t221 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t221, ptr %l12, !tbaa !27
  %t222 = load ptr, ptr %lp4
  store ptr %t222, ptr %l109, !tbaa !29
  %t223 = ptrtoint ptr %v3 to i64
  store i64 %t223, ptr %l110, !tbaa !24
  %t224 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t224, label %bb56, label %bb57
bb56:
  %t226 = call ptr @__olang_region_make(ptr %v3)
  %t227 = ptrtoint ptr %t226 to i64
  store i64 %t227, ptr %l110, !tbaa !24
  br label %bb57
bb57:
  %t228 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t228, 1
  %t231 = extractvalue { i64, ptr } %t228, 0
  %t232 = load i64, ptr %l110
  %t233 = inttoptr i64 %t232 to ptr
  %t234 = call ptr @__olang_scope_alloc(ptr %t233, i64 %t231)
  call void @olang_textcopy(ptr %t234, ptr %t230, i64 %t231)
  %t235 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  %t238 = load i64, ptr %l110
  %t239 = inttoptr i64 %t238 to ptr
  %t240 = extractvalue { i64, ptr } %t236, 0
  %t241 = extractvalue { i64, ptr } %t236, 1
  %t242 = mul i64 %t240, 1
  %t243 = call ptr @__olang_scope_alloc(ptr %t239, i64 %t242)
  call void @llvm.memcpy.p0.p0.i64(ptr %t243, ptr %t241, i64 %t242, i1 false)
  %t244 = insertvalue { i64, ptr } undef, i64 %t240, 0
  %t245 = insertvalue { i64, ptr } %t244, ptr %t243, 1
  %t246 = load ptr, ptr %l109, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t246, { i64, ptr } %t245)
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t248 = load i64, ptr %l11, !tbaa !24
  %t250 = add i64 %t248, 1
  store i64 %t250, ptr %l11, !tbaa !24
  br label %bb50
bb60:
  call void @__olang_scope_close(ptr %s8)
  br label %bb61
bb61:
  %t252 = load ptr, ptr %l2, !tbaa !29
  %t254 = call { i32, { i64, ptr } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Hdc04e7543082eec80486670259c0789b(ptr %v2, ptr %s6, ptr %t252)
  %t255 = extractvalue { i32, { i64, ptr } } %t254, 1
  %t256 = extractvalue { i32, { i64, ptr } } %t254, 0
  store i32 %t256, ptr %l120
  %t257 = icmp ne i32 %t256, 0
  br i1 %t257, label %bb63, label %ok.258, !prof !99
ok.258:
  store { i64, ptr } %t255, ptr %l119
  br label %bb62
bb62:
  %t259 = load { i64, ptr }, ptr %l119, !tbaa !27
  store { i64, ptr } %t259, ptr %l117, !tbaa !27
  %t260 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t260, label %bb65, label %bb66
bb63:
  br label %bb64
bb64:
  br label %bb67
bb65:
  %t262 = load { i64, ptr }, ptr %l117
  %t263 = extractvalue { i64, ptr } %t262, 1
  call void @__olang_region_release(ptr %t263)
  store { i64, ptr } zeroinitializer, ptr %l117
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t264 = load i64, ptr %l5, !tbaa !24
  %t266 = add i64 %t264, 1
  store i64 %t266, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s2)
  br label %bb210
bb68:
  %t268 = load i64, ptr %l5, !tbaa !24
  %t270 = add i64 %t268, 1
  %t271 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t271, 0
  %t276 = icmp sge i64 %t270, %t273
  br i1 %t276, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l129, !tbaa !21
  br label %bb72
bb70:
  %t278 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t278, ptr %l130, !tbaa !27
  %t279 = load i64, ptr %l5, !tbaa !24
  %t281 = add i64 %t279, 1
  %t283 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr { i64, ptr }, ptr %t284, i64 %t281
  %t286 = load { i64, ptr }, ptr %t285, !tbaa !37
  %t288 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t286, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) })
  store i1 %t288, ptr %l134
  br label %bb71
bb71:
  %t289 = load i1, ptr %l134, !tbaa !21
  %t290 = xor i1 %t289, true
  store i1 %t290, ptr %l129, !tbaa !21
  br label %bb72
bb72:
  %t292 = load i1, ptr %l129, !tbaa !21
  br i1 %t292, label %bb73, label %bb74
bb73:
  %t293 = load ptr, ptr %lp4
  store ptr %t293, ptr %l136, !tbaa !29
  %t294 = ptrtoint ptr %v3 to i64
  store i64 %t294, ptr %l137, !tbaa !24
  %t295 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t295, label %bb75, label %bb76
bb74:
  br label %bb78
bb75:
  %t297 = call ptr @__olang_region_make(ptr %v3)
  %t298 = ptrtoint ptr %t297 to i64
  store i64 %t298, ptr %l137, !tbaa !24
  br label %bb76
bb76:
  %t299 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t301 = extractvalue { i64, ptr } %t299, 1
  %t302 = extractvalue { i64, ptr } %t299, 0
  %t303 = load i64, ptr %l137
  %t304 = inttoptr i64 %t303 to ptr
  %t305 = call ptr @__olang_scope_alloc(ptr %t304, i64 %t302)
  call void @olang_textcopy(ptr %t305, ptr %t301, i64 %t302)
  %t306 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t305, 1
  %t309 = load i64, ptr %l137
  %t310 = inttoptr i64 %t309 to ptr
  %t311 = extractvalue { i64, ptr } %t307, 0
  %t312 = extractvalue { i64, ptr } %t307, 1
  %t313 = mul i64 %t311, 1
  %t314 = call ptr @__olang_scope_alloc(ptr %t310, i64 %t313)
  call void @llvm.memcpy.p0.p0.i64(ptr %t314, ptr %t312, i64 %t313, i1 false)
  %t315 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t314, 1
  %t317 = load ptr, ptr %l136, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t317, { i64, ptr } %t316)
  br label %bb77
bb77:
  %t319 = load i64, ptr %l5, !tbaa !24
  %t321 = add i64 %t319, 1
  store i64 %t321, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb210
bb78:
  %t323 = getelementptr %"compiler/bindgen:cMacro", ptr %l9, i32 0, i32 5
  %t324 = load i1, ptr %t323, !tbaa !21
  br i1 %t324, label %bb79, label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s15
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t328 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t329 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t331 = extractvalue { i64, ptr } %t327, 1
  %t332 = extractvalue { i64, ptr } %t327, 0
  %t333 = add i64 %t329, %t332
  %t334 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t335 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t336 = add i64 %t333, %t335
  %t337 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t336)
  call void @olang_textcopy(ptr %t337, ptr %t328, i64 %t329)
  %t338 = getelementptr i8, ptr %t337, i64 %t329
  call void @olang_textcopy(ptr %t338, ptr %t331, i64 %t332)
  %t339 = getelementptr i8, ptr %t338, i64 %t332
  call void @olang_textcopy(ptr %t339, ptr %t334, i64 %t335)
  %t340 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t341 = insertvalue { i64, ptr } %t340, ptr %t337, 1
  %t343 = extractvalue { i64, ptr } %t341, 0
  %t344 = extractvalue { i64, ptr } %t341, 1
  %t345 = mul i64 %t343, 1
  %t346 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t345)
  call void @llvm.memcpy.p0.p0.i64(ptr %t346, ptr %t344, i64 %t345, i1 false)
  %t347 = insertvalue { i64, ptr } undef, i64 %t343, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t346, 1
  %t351 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s15, ptr %t326, { i64, ptr } %t348)
  store i32 %t351, ptr %l149
  %t352 = icmp ne i32 %t351, 0
  br i1 %t352, label %bb82, label %ok.353, !prof !99
ok.353:
  br label %bb81
bb80:
  br label %bb84
bb81:
  br label %bb83
bb82:
  %t354 = load i32, ptr %l149, !tbaa !23
  %t355 = lshr i32 %t354, 16
  %t356 = and i32 %t354, 65535
  %t357 = icmp eq i32 %t355, 1
  %t358 = select i1 %t357, i32 1, i32 0
  %t359 = icmp eq i32 %t354, 0
  %t360 = shl i32 %t358, 16
  %t361 = or i32 %t360, %t356
  %t362 = select i1 %t359, i32 0, i32 %t361
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t364 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t362, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t364, ptr %rv
  br label %ret
bb83:
  call void @__olang_scope_close(ptr %s15)
  br label %bb84
bb84:
  %t365 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t365, ptr %l151
  br label %bb85
bb85:
  %t366 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l151
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t366, ptr %l13
  %t367 = ptrtoint ptr %s2 to i64
  store i64 %t367, ptr %l152, !tbaa !24
  %t368 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t368, label %bb86, label %bb87
bb86:
  %t370 = call ptr @__olang_region_make(ptr %s2)
  %t371 = ptrtoint ptr %t370 to i64
  store i64 %t371, ptr %l152, !tbaa !24
  br label %bb87
bb87:
  %t372 = load i64, ptr %l152
  %t373 = inttoptr i64 %t372 to ptr
  %t374 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t373, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t374, ptr %l154
  br label %bb88
bb88:
  %t375 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t375, label %bb89, label %bb90
bb89:
  %t377 = load i64, ptr %l152
  %t378 = inttoptr i64 %t377 to ptr
  %t379 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l154, i32 0, i32 0
  %t380 = load { i64, ptr }, ptr %t379
  %t381 = extractvalue { i64, ptr } %t380, 1
  %t382 = call ptr @__olang_region_or(ptr %t381, ptr null)
  %t383 = icmp ne ptr %t382, null
  %t384 = select i1 %t383, ptr %t382, ptr null
  %t385 = icmp eq ptr %t384, %t378
  call void @__olang_region_settle(ptr %t378, i1 %t385)
  br label %bb90
bb90:
  %t386 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l154
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t386, ptr %l14
  store i64 0, ptr %l15, !tbaa !24
  %t387 = load i64, ptr %l5, !tbaa !24
  %t389 = add i64 %t387, 2
  store i64 %t389, ptr %l16, !tbaa !24
  br label %bb91
bb91:
  store %olang.scope zeroinitializer, ptr %s17
  %t391 = load i64, ptr %l16, !tbaa !24
  %t392 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t394 = extractvalue { i64, ptr } %t392, 0
  %t397 = icmp slt i64 %t391, %t394
  %t399 = xor i1 %t397, true
  br i1 %t399, label %bb92, label %bb93
bb92:
  call void @__olang_scope_close(ptr %s17)
  br label %bb126
bb93:
  br label %bb94
bb94:
  %t401 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t401, ptr %l163, !tbaa !27
  %t402 = load i64, ptr %l16, !tbaa !24
  %t404 = getelementptr { i64, ptr }, ptr %l163, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !27
  %t406 = getelementptr { i64, ptr }, ptr %t405, i64 %t402
  %t407 = load { i64, ptr }, ptr %t406, !tbaa !37
  store { i64, ptr } %t407, ptr %l17, !tbaa !27
  %t409 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t411 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s17, { i64, ptr } %t409, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) })
  store i1 %t411, ptr %l167
  br label %bb95
bb95:
  %t412 = load i1, ptr %l167, !tbaa !21
  br i1 %t412, label %bb96, label %bb97
bb96:
  %t413 = load i64, ptr %l15, !tbaa !24
  %t415 = add i64 %t413, 1
  store i64 %t415, ptr %l15, !tbaa !24
  br label %bb98
bb97:
  br label %bb98
bb98:
  %t417 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t419 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s17, { i64, ptr } %t417, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store i1 %t419, ptr %l171
  br label %bb99
bb99:
  %t420 = load i1, ptr %l171, !tbaa !21
  br i1 %t420, label %bb100, label %bb101
bb100:
  %t421 = load i64, ptr %l15, !tbaa !24
  %t423 = icmp eq i64 %t421, 0
  br i1 %t423, label %bb102, label %bb103
bb101:
  br label %bb105
bb102:
  call void @__olang_scope_close(ptr %s17)
  br label %bb126
bb103:
  br label %bb104
bb104:
  %t425 = load i64, ptr %l15, !tbaa !24
  %t427 = sub i64 %t425, 1
  store i64 %t427, ptr %l15, !tbaa !24
  br label %bb105
bb105:
  %t429 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t431 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s17, { i64, ptr } %t429, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) })
  store i1 %t431, ptr %l177
  br label %bb106
bb106:
  %t432 = load i1, ptr %l177, !tbaa !21
  br i1 %t432, label %bb107, label %bb108
bb107:
  %t433 = load i64, ptr %l15, !tbaa !24
  %t435 = icmp eq i64 %t433, 0
  store i1 %t435, ptr %l178, !tbaa !21
  br label %bb109
bb108:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb109
bb109:
  %t437 = load i1, ptr %l178, !tbaa !21
  br i1 %t437, label %bb110, label %bb111
bb110:
  store ptr %l13, ptr %l181, !tbaa !29
  %t438 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t438, ptr %l182
  %t440 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s2, ptr %l182)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t440, ptr %l184
  br label %bb112
bb111:
  store ptr %l14, ptr %l191, !tbaa !29
  %t441 = ptrtoint ptr %s2 to i64
  store i64 %t441, ptr %l192, !tbaa !24
  %t442 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t442, label %bb121, label %bb122
bb112:
  %t444 = load ptr, ptr %l181, !tbaa !29
  %t445 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l184
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H40771be639b3022d183b79789a9eab56(ptr %s2, ptr %s2, ptr %t444, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t445)
  br label %bb113
bb113:
  %t446 = ptrtoint ptr %s2 to i64
  store i64 %t446, ptr %l185, !tbaa !24
  %t447 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t447, label %bb114, label %bb115
bb114:
  %t449 = call ptr @__olang_region_make(ptr %s2)
  %t450 = ptrtoint ptr %t449 to i64
  store i64 %t450, ptr %l185, !tbaa !24
  br label %bb115
bb115:
  %t451 = load i64, ptr %l185
  %t452 = inttoptr i64 %t451 to ptr
  %t453 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t452, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t453, ptr %l187
  br label %bb116
bb116:
  %t454 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t454, label %bb117, label %bb118
bb117:
  %t456 = load i64, ptr %l185
  %t457 = inttoptr i64 %t456 to ptr
  %t458 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l187, i32 0, i32 0
  %t459 = load { i64, ptr }, ptr %t458
  %t460 = extractvalue { i64, ptr } %t459, 1
  %t461 = call ptr @__olang_region_or(ptr %t460, ptr null)
  %t462 = icmp ne ptr %t461, null
  %t463 = select i1 %t462, ptr %t461, ptr null
  %t464 = icmp eq ptr %t463, %t457
  call void @__olang_region_settle(ptr %t457, i1 %t464)
  br label %bb118
bb118:
  %t465 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t465, ptr %l189
  %t466 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l187
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t466, ptr %l14
  %t467 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t467, label %bb119, label %bb120
bb119:
  %t469 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l189, i32 0, i32 0
  %t470 = load { i64, ptr }, ptr %t469
  %t471 = extractvalue { i64, ptr } %t470, 1
  %t472 = call ptr @__olang_region_or(ptr %t471, ptr null)
  %t473 = icmp ne ptr %t472, null
  %t474 = select i1 %t473, ptr %t472, ptr null
  call void @__olang_region_drop(ptr %t474)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l189
  br label %bb120
bb120:
  br label %bb124
bb121:
  %t475 = call ptr @__olang_region_make(ptr %s2)
  %t476 = ptrtoint ptr %t475 to i64
  store i64 %t476, ptr %l192, !tbaa !24
  br label %bb122
bb122:
  %t477 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t479 = extractvalue { i64, ptr } %t477, 1
  %t480 = extractvalue { i64, ptr } %t477, 0
  %t481 = load i64, ptr %l192
  %t482 = inttoptr i64 %t481 to ptr
  %t483 = call ptr @__olang_scope_alloc(ptr %t482, i64 %t480)
  call void @olang_textcopy(ptr %t483, ptr %t479, i64 %t480)
  %t484 = insertvalue { i64, ptr } undef, i64 %t480, 0
  %t485 = insertvalue { i64, ptr } %t484, ptr %t483, 1
  %t487 = load i64, ptr %l192
  %t488 = inttoptr i64 %t487 to ptr
  %t489 = extractvalue { i64, ptr } %t485, 0
  %t490 = extractvalue { i64, ptr } %t485, 1
  %t491 = mul i64 %t489, 1
  %t492 = call ptr @__olang_scope_alloc(ptr %t488, i64 %t491)
  call void @llvm.memcpy.p0.p0.i64(ptr %t492, ptr %t490, i64 %t491, i1 false)
  %t493 = insertvalue { i64, ptr } undef, i64 %t489, 0
  %t494 = insertvalue { i64, ptr } %t493, ptr %t492, 1
  %t495 = load ptr, ptr %l191, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %t495, { i64, ptr } %t494)
  br label %bb123
bb123:
  br label %bb124
bb124:
  %t497 = load i64, ptr %l16, !tbaa !24
  %t499 = add i64 %t497, 1
  store i64 %t499, ptr %l16, !tbaa !24
  call void @__olang_scope_close(ptr %s17)
  br label %bb125
bb125:
  br label %bb91
bb126:
  %t501 = load i64, ptr %l16, !tbaa !24
  %t502 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t504 = extractvalue { i64, ptr } %t502, 0
  %t507 = icmp sge i64 %t501, %t504
  br i1 %t507, label %bb127, label %bb128
bb127:
  store %olang.scope zeroinitializer, ptr %s24
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t510 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t511 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t512 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t514 = extractvalue { i64, ptr } %t510, 1
  %t515 = extractvalue { i64, ptr } %t510, 0
  %t516 = add i64 %t512, %t515
  %t517 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t518 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t519 = add i64 %t516, %t518
  %t520 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t519)
  call void @olang_textcopy(ptr %t520, ptr %t511, i64 %t512)
  %t521 = getelementptr i8, ptr %t520, i64 %t512
  call void @olang_textcopy(ptr %t521, ptr %t514, i64 %t515)
  %t522 = getelementptr i8, ptr %t521, i64 %t515
  call void @olang_textcopy(ptr %t522, ptr %t517, i64 %t518)
  %t523 = insertvalue { i64, ptr } undef, i64 %t519, 0
  %t524 = insertvalue { i64, ptr } %t523, ptr %t520, 1
  %t526 = extractvalue { i64, ptr } %t524, 0
  %t527 = extractvalue { i64, ptr } %t524, 1
  %t528 = mul i64 %t526, 1
  %t529 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t528)
  call void @llvm.memcpy.p0.p0.i64(ptr %t529, ptr %t527, i64 %t528, i1 false)
  %t530 = insertvalue { i64, ptr } undef, i64 %t526, 0
  %t531 = insertvalue { i64, ptr } %t530, ptr %t529, 1
  %t534 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s24, ptr %t509, { i64, ptr } %t531)
  store i32 %t534, ptr %l207
  %t535 = icmp ne i32 %t534, 0
  br i1 %t535, label %bb130, label %ok.536, !prof !99
ok.536:
  br label %bb129
bb128:
  br label %bb132
bb129:
  br label %bb131
bb130:
  %t537 = load i32, ptr %l207, !tbaa !23
  %t538 = lshr i32 %t537, 16
  %t539 = and i32 %t537, 65535
  %t540 = icmp eq i32 %t538, 1
  %t541 = select i1 %t540, i32 1, i32 0
  %t542 = icmp eq i32 %t537, 0
  %t543 = shl i32 %t541, 16
  %t544 = or i32 %t543, %t539
  %t545 = select i1 %t542, i32 0, i32 %t544
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t547 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t545, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t547, ptr %rv
  br label %ret
bb131:
  call void @__olang_scope_close(ptr %s24)
  br label %bb132
bb132:
  %t549 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %l14)
  store i64 %t549, ptr %l210
  br label %bb133
bb133:
  %t550 = load i64, ptr %l210, !tbaa !24
  %t551 = icmp sgt i64 %t550, 0
  br i1 %t551, label %bb134, label %bb135
bb134:
  store i1 true, ptr %l212, !tbaa !21
  br label %bb137
bb135:
  %t554 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_Hbb0b9cf8ae0bb786ffc6cf28ae45ef64(ptr %s2, ptr %l13)
  store i64 %t554, ptr %l214
  br label %bb136
bb136:
  %t555 = load i64, ptr %l214, !tbaa !24
  %t556 = icmp sgt i64 %t555, 0
  store i1 %t556, ptr %l212, !tbaa !21
  br label %bb137
bb137:
  %t558 = load i1, ptr %l212, !tbaa !21
  br i1 %t558, label %bb138, label %bb139
bb138:
  store ptr %l13, ptr %l216, !tbaa !29
  %t559 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t559, ptr %l217
  %t561 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s2, ptr %l217)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t561, ptr %l219
  br label %bb140
bb139:
  br label %bb142
bb140:
  %t562 = load ptr, ptr %l216, !tbaa !29
  %t563 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l219
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H40771be639b3022d183b79789a9eab56(ptr %s2, ptr %s2, ptr %t562, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t563)
  br label %bb141
bb141:
  br label %bb142
bb142:
  %t565 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_Hbb0b9cf8ae0bb786ffc6cf28ae45ef64(ptr %s2, ptr %l13)
  store i64 %t565, ptr %l221
  br label %bb143
bb143:
  %t566 = getelementptr %"compiler/bindgen:cMacro", ptr %l9, i32 0, i32 2
  %t567 = load { i64, ptr }, ptr %t566, !tbaa !27
  %t569 = extractvalue { i64, ptr } %t567, 0
  %t570 = load i64, ptr %l221, !tbaa !24
  %t572 = icmp ne i64 %t570, %t569
  br i1 %t572, label %bb144, label %bb145
bb144:
  store %olang.scope zeroinitializer, ptr %s27
  %t574 = load ptr, ptr %l0, !tbaa !29
  %t575 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t576 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t577 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t579 = extractvalue { i64, ptr } %t575, 1
  %t580 = extractvalue { i64, ptr } %t575, 0
  %t581 = add i64 %t577, %t580
  %t582 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t583 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t584 = add i64 %t581, %t583
  %t585 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t584)
  call void @olang_textcopy(ptr %t585, ptr %t576, i64 %t577)
  %t586 = getelementptr i8, ptr %t585, i64 %t577
  call void @olang_textcopy(ptr %t586, ptr %t579, i64 %t580)
  %t587 = getelementptr i8, ptr %t586, i64 %t580
  call void @olang_textcopy(ptr %t587, ptr %t582, i64 %t583)
  %t588 = insertvalue { i64, ptr } undef, i64 %t584, 0
  %t589 = insertvalue { i64, ptr } %t588, ptr %t585, 1
  %t591 = extractvalue { i64, ptr } %t589, 0
  %t592 = extractvalue { i64, ptr } %t589, 1
  %t593 = mul i64 %t591, 1
  %t594 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t593)
  call void @llvm.memcpy.p0.p0.i64(ptr %t594, ptr %t592, i64 %t593, i1 false)
  %t595 = insertvalue { i64, ptr } undef, i64 %t591, 0
  %t596 = insertvalue { i64, ptr } %t595, ptr %t594, 1
  %t599 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s27, ptr %t574, { i64, ptr } %t596)
  store i32 %t599, ptr %l229
  %t600 = icmp ne i32 %t599, 0
  br i1 %t600, label %bb147, label %ok.601, !prof !99
ok.601:
  br label %bb146
bb145:
  br label %bb149
bb146:
  br label %bb148
bb147:
  %t602 = load i32, ptr %l229, !tbaa !23
  %t603 = lshr i32 %t602, 16
  %t604 = and i32 %t602, 65535
  %t605 = icmp eq i32 %t603, 1
  %t606 = select i1 %t605, i32 1, i32 0
  %t607 = icmp eq i32 %t602, 0
  %t608 = shl i32 %t606, 16
  %t609 = or i32 %t608, %t604
  %t610 = select i1 %t607, i32 0, i32 %t609
  call void @__olang_scope_close(ptr %s27)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t612 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t610, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t612, ptr %rv
  br label %ret
bb148:
  call void @__olang_scope_close(ptr %s27)
  br label %bb149
bb149:
  %t613 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t613, ptr %l231
  br label %bb150
bb150:
  %t614 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l231
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t614, ptr %l18
  %t615 = getelementptr %"compiler/bindgen:cMacro", ptr %l9, i32 0, i32 3
  %t616 = load { i64, ptr }, ptr %t615, !tbaa !27
  store { i64, ptr } %t616, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t618 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t620 = extractvalue { i64, ptr } %t618, 0
  store i64 %t620, ptr %l21, !tbaa !24
  br label %bb151
bb151:
  store %olang.scope zeroinitializer, ptr %s30
  %t622 = load i64, ptr %l20, !tbaa !24
  %t623 = load i64, ptr %l21, !tbaa !24
  %t626 = icmp slt i64 %t622, %t623
  %t628 = xor i1 %t626, true
  br i1 %t628, label %bb152, label %bb153
bb152:
  call void @__olang_scope_close(ptr %s30)
  br label %bb185
bb153:
  br label %bb154
bb154:
  %t630 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t630, ptr %l239, !tbaa !27
  %t631 = load i64, ptr %l20, !tbaa !24
  %t633 = getelementptr { i64, ptr }, ptr %l239, i32 0, i32 1
  %t634 = load ptr, ptr %t633, !tbaa !27
  %t635 = getelementptr { i64, ptr }, ptr %t634, i64 %t631
  %t636 = load { i64, ptr }, ptr %t635, !tbaa !37
  store { i64, ptr } %t636, ptr %l22, !tbaa !27
  %t638 = getelementptr %"compiler/bindgen:cMacro", ptr %l9, i32 0, i32 2
  %t639 = load { i64, ptr }, ptr %t638, !tbaa !27
  %t640 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t641 = getelementptr { { i64, ptr }, ptr }, ptr null, i32 1
  %t642 = ptrtoint ptr %t641 to i64
  %t644 = getelementptr { { i64, ptr }, ptr }, ptr %t643, i32 0, i32 0
  store { i64, ptr } %t640, ptr %t644, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t646 = getelementptr { { i64, ptr }, ptr }, ptr %t643, i32 0, i32 1
  store ptr %v0, ptr %t646, !tbaa !28
  %t647 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_82, 0
  %t648 = insertvalue { ptr, ptr } %t647, ptr %t643, 1
  %t651 = extractvalue { ptr, ptr } %t648, 0
  %t652 = extractvalue { ptr, ptr } %t648, 1
  %t653 = call { i32, i64 } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eFindIndex_3cstd_2f_H0cdaf28864c9da4990596b1986b376a0(ptr %v0, ptr %s30, { i64, ptr } %t639, ptr %t651, ptr %t652)
  %t654 = extractvalue { i32, i64 } %t653, 1
  %t655 = extractvalue { i32, i64 } %t653, 0
  store i32 %t655, ptr %l247
  %t656 = icmp ne i32 %t655, 0
  br i1 %t656, label %bb156, label %ok.657, !prof !99
ok.657:
  store i64 %t654, ptr %l246
  br label %bb155
bb155:
  %t658 = load i64, ptr %l246, !tbaa !24
  store i64 %t658, ptr %l242, !tbaa !24
  br label %bb158
bb156:
  br label %bb157
bb157:
  store i64 -1, ptr %l242, !tbaa !24
  br label %bb158
bb158:
  %t659 = load i64, ptr %l242, !tbaa !24
  store i64 %t659, ptr %l23, !tbaa !24
  %t660 = load i64, ptr %l23, !tbaa !24
  %t662 = icmp slt i64 %t660, 0
  br i1 %t662, label %bb159, label %bb160
bb159:
  store ptr %l18, ptr %l250, !tbaa !29
  %t664 = ptrtoint ptr %s2 to i64
  store i64 %t664, ptr %l251, !tbaa !24
  %t665 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t665, label %bb161, label %bb162
bb160:
  br label %bb164
bb161:
  %t667 = call ptr @__olang_region_make(ptr %s2)
  %t668 = ptrtoint ptr %t667 to i64
  store i64 %t668, ptr %l251, !tbaa !24
  br label %bb162
bb162:
  %t669 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t671 = extractvalue { i64, ptr } %t669, 1
  %t672 = extractvalue { i64, ptr } %t669, 0
  %t673 = load i64, ptr %l251
  %t674 = inttoptr i64 %t673 to ptr
  %t675 = call ptr @__olang_scope_alloc(ptr %t674, i64 %t672)
  call void @olang_textcopy(ptr %t675, ptr %t671, i64 %t672)
  %t676 = insertvalue { i64, ptr } undef, i64 %t672, 0
  %t677 = insertvalue { i64, ptr } %t676, ptr %t675, 1
  %t679 = load i64, ptr %l251
  %t680 = inttoptr i64 %t679 to ptr
  %t681 = extractvalue { i64, ptr } %t677, 0
  %t682 = extractvalue { i64, ptr } %t677, 1
  %t683 = mul i64 %t681, 1
  %t684 = call ptr @__olang_scope_alloc(ptr %t680, i64 %t683)
  call void @llvm.memcpy.p0.p0.i64(ptr %t684, ptr %t682, i64 %t683, i1 false)
  %t685 = insertvalue { i64, ptr } undef, i64 %t681, 0
  %t686 = insertvalue { i64, ptr } %t685, ptr %t684, 1
  %t687 = load ptr, ptr %l250, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %t687, { i64, ptr } %t686)
  br label %bb163
bb163:
  call void @__olang_scope_close(ptr %s30)
  br label %bb184
bb164:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %l18, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) })
  br label %bb165
bb165:
  store %olang.scope zeroinitializer, ptr %s33
  %t690 = load ptr, ptr %l0, !tbaa !29
  store ptr %t690, ptr %l257, !tbaa !29
  %t691 = load i64, ptr %l23, !tbaa !24
  %t694 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H21d8db2bdfeb46fab755f8173a35f95e(ptr %s2, ptr %s2, ptr %l13, i64 %t691)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t694, ptr %l260
  br label %bb166
bb166:
  %t696 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s2, ptr %l260)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t696, ptr %l262
  br label %bb167
bb167:
  %t697 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l262
  %t698 = call ptr @__olang_scope_alloc_a(ptr %s33, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t697, ptr %t698
  %t700 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s2, ptr %s33, ptr %t698)
  store { i64, ptr } %t700, ptr %l264
  br label %bb168
bb168:
  %t701 = load ptr, ptr %l2, !tbaa !29
  %t702 = load i64, ptr %l3, !tbaa !24
  %t704 = add i64 %t702, 1
  %t705 = load ptr, ptr %l257, !tbaa !29
  %t706 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t709 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %s33, ptr %v2, ptr %s33, ptr %t705, { i64, ptr } %t706, ptr %t701, i64 %t704)
  %t710 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t709, 1
  %t711 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t709, 0
  store i32 %t711, ptr %l269
  %t712 = icmp ne i32 %t711, 0
  br i1 %t712, label %bb170, label %ok.713, !prof !99
ok.713:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t710, ptr %l268
  br label %bb169
bb169:
  %t714 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l268
  %t715 = call ptr @__olang_scope_alloc_a(ptr %s33, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t714, ptr %t715
  store ptr %t715, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb171
bb170:
  %t717 = load i32, ptr %l269, !tbaa !23
  %t718 = lshr i32 %t717, 16
  %t719 = and i32 %t717, 65535
  %t720 = icmp eq i32 %t718, 1
  %t721 = select i1 %t720, i32 1, i32 0
  %t722 = icmp eq i32 %t717, 0
  %t723 = shl i32 %t721, 16
  %t724 = or i32 %t723, %t719
  %t725 = select i1 %t722, i32 0, i32 %t724
  call void @__olang_scope_close(ptr %s33)
  call void @__olang_scope_close(ptr %s30)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t727 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t725, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t727, ptr %rv
  br label %ret
bb171:
  %t728 = load i64, ptr %l25, !tbaa !24
  store i64 %t728, ptr %l272, !tbaa !24
  %t729 = load ptr, ptr %l24, !tbaa !29
  %t731 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s33, ptr %t729)
  store i64 %t731, ptr %l274
  br label %bb172
bb172:
  %t732 = load i64, ptr %l272, !tbaa !24
  %t733 = load i64, ptr %l274, !tbaa !24
  %t734 = icmp slt i64 %t732, %t733
  %t736 = xor i1 %t734, true
  br i1 %t736, label %bb173, label %bb174
bb173:
  br label %bb181
bb174:
  br label %bb175
bb175:
  %t738 = load ptr, ptr %l24, !tbaa !29
  %t739 = load i64, ptr %l25, !tbaa !24
  %t742 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s33, ptr %s33, ptr %t738, i64 %t739)
  store { i64, ptr } %t742, ptr %l279
  br label %bb176
bb176:
  %t743 = load { i64, ptr }, ptr %l279, !tbaa !27
  store { i64, ptr } %t743, ptr %l26, !tbaa !27
  store ptr %l18, ptr %l280, !tbaa !29
  %t744 = ptrtoint ptr %s2 to i64
  store i64 %t744, ptr %l281, !tbaa !24
  %t745 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t745, label %bb177, label %bb178
bb177:
  %t747 = call ptr @__olang_region_make(ptr %s2)
  %t748 = ptrtoint ptr %t747 to i64
  store i64 %t748, ptr %l281, !tbaa !24
  br label %bb178
bb178:
  %t749 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t751 = extractvalue { i64, ptr } %t749, 1
  %t752 = extractvalue { i64, ptr } %t749, 0
  %t753 = load i64, ptr %l281
  %t754 = inttoptr i64 %t753 to ptr
  %t755 = call ptr @__olang_scope_alloc(ptr %t754, i64 %t752)
  call void @olang_textcopy(ptr %t755, ptr %t751, i64 %t752)
  %t756 = insertvalue { i64, ptr } undef, i64 %t752, 0
  %t757 = insertvalue { i64, ptr } %t756, ptr %t755, 1
  %t759 = load i64, ptr %l281
  %t760 = inttoptr i64 %t759 to ptr
  %t761 = extractvalue { i64, ptr } %t757, 0
  %t762 = extractvalue { i64, ptr } %t757, 1
  %t763 = mul i64 %t761, 1
  %t764 = call ptr @__olang_scope_alloc(ptr %t760, i64 %t763)
  call void @llvm.memcpy.p0.p0.i64(ptr %t764, ptr %t762, i64 %t763, i1 false)
  %t765 = insertvalue { i64, ptr } undef, i64 %t761, 0
  %t766 = insertvalue { i64, ptr } %t765, ptr %t764, 1
  %t767 = load ptr, ptr %l280, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %t767, { i64, ptr } %t766)
  br label %bb179
bb179:
  br label %bb180
bb180:
  %t769 = load i64, ptr %l25, !tbaa !24
  %t771 = add i64 %t769, 1
  store i64 %t771, ptr %l25, !tbaa !24
  br label %bb171
bb181:
  call void @__olang_scope_close(ptr %s33)
  br label %bb182
bb182:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %l18, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) })
  br label %bb183
bb183:
  call void @__olang_scope_close(ptr %s30)
  br label %bb184
bb184:
  %t774 = load i64, ptr %l20, !tbaa !24
  %t776 = add i64 %t774, 1
  store i64 %t776, ptr %l20, !tbaa !24
  br label %bb151
bb185:
  %t778 = load ptr, ptr %l2, !tbaa !29
  store ptr %t778, ptr %l291, !tbaa !29
  %t779 = ptrtoint ptr %v2 to i64
  store i64 %t779, ptr %l292, !tbaa !24
  %t780 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t780, label %bb186, label %bb187
bb186:
  %t782 = call ptr @__olang_region_make(ptr %v2)
  %t783 = ptrtoint ptr %t782 to i64
  store i64 %t783, ptr %l292, !tbaa !24
  br label %bb187
bb187:
  %t784 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t786 = extractvalue { i64, ptr } %t784, 1
  %t787 = extractvalue { i64, ptr } %t784, 0
  %t788 = load i64, ptr %l292
  %t789 = inttoptr i64 %t788 to ptr
  %t790 = call ptr @__olang_scope_alloc(ptr %t789, i64 %t787)
  call void @olang_textcopy(ptr %t790, ptr %t786, i64 %t787)
  %t791 = insertvalue { i64, ptr } undef, i64 %t787, 0
  %t792 = insertvalue { i64, ptr } %t791, ptr %t790, 1
  %t794 = load i64, ptr %l292
  %t795 = inttoptr i64 %t794 to ptr
  %t796 = extractvalue { i64, ptr } %t792, 0
  %t797 = extractvalue { i64, ptr } %t792, 1
  %t798 = mul i64 %t796, 1
  %t799 = call ptr @__olang_scope_alloc(ptr %t795, i64 %t798)
  call void @llvm.memcpy.p0.p0.i64(ptr %t799, ptr %t797, i64 %t798, i1 false)
  %t800 = insertvalue { i64, ptr } undef, i64 %t796, 0
  %t801 = insertvalue { i64, ptr } %t800, ptr %t799, 1
  %t802 = load ptr, ptr %l291, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t802, { i64, ptr } %t801)
  br label %bb188
bb188:
  store %olang.scope zeroinitializer, ptr %s39
  %t804 = load ptr, ptr %l0, !tbaa !29
  store ptr %t804, ptr %l297, !tbaa !29
  %t806 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s2, ptr %s2, ptr %l18)
  store { i64, ptr } %t806, ptr %l299
  br label %bb189
bb189:
  %t807 = load ptr, ptr %l2, !tbaa !29
  %t808 = load i64, ptr %l3, !tbaa !24
  %t810 = add i64 %t808, 1
  %t811 = load ptr, ptr %l297, !tbaa !29
  %t812 = load { i64, ptr }, ptr %l299, !tbaa !27
  %t815 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %s2, ptr %v2, ptr %s39, ptr %t811, { i64, ptr } %t812, ptr %t807, i64 %t810)
  %t816 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t815, 1
  %t817 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t815, 0
  store i32 %t817, ptr %l304
  %t818 = icmp ne i32 %t817, 0
  br i1 %t818, label %bb191, label %ok.819, !prof !99
ok.819:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t816, ptr %l303
  br label %bb190
bb190:
  %t820 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l303
  %t821 = call ptr @__olang_scope_alloc_a(ptr %s39, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t820, ptr %t821
  store ptr %t821, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  br label %bb192
bb191:
  %t823 = load i32, ptr %l304, !tbaa !23
  %t824 = lshr i32 %t823, 16
  %t825 = and i32 %t823, 65535
  %t826 = icmp eq i32 %t824, 1
  %t827 = select i1 %t826, i32 1, i32 0
  %t828 = icmp eq i32 %t823, 0
  %t829 = shl i32 %t827, 16
  %t830 = or i32 %t829, %t825
  %t831 = select i1 %t828, i32 0, i32 %t830
  call void @__olang_scope_close(ptr %s39)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t833 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t831, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t833, ptr %rv
  br label %ret
bb192:
  %t834 = load i64, ptr %l28, !tbaa !24
  store i64 %t834, ptr %l307, !tbaa !24
  %t835 = load ptr, ptr %l27, !tbaa !29
  %t837 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s39, ptr %t835)
  store i64 %t837, ptr %l309
  br label %bb193
bb193:
  %t838 = load i64, ptr %l307, !tbaa !24
  %t839 = load i64, ptr %l309, !tbaa !24
  %t840 = icmp slt i64 %t838, %t839
  %t842 = xor i1 %t840, true
  br i1 %t842, label %bb194, label %bb195
bb194:
  br label %bb202
bb195:
  br label %bb196
bb196:
  %t844 = load ptr, ptr %l27, !tbaa !29
  %t845 = load i64, ptr %l28, !tbaa !24
  %t848 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s39, ptr %s39, ptr %t844, i64 %t845)
  store { i64, ptr } %t848, ptr %l314
  br label %bb197
bb197:
  %t849 = load { i64, ptr }, ptr %l314, !tbaa !27
  store { i64, ptr } %t849, ptr %l29, !tbaa !27
  %t850 = load ptr, ptr %lp4
  store ptr %t850, ptr %l315, !tbaa !29
  %t851 = ptrtoint ptr %v3 to i64
  store i64 %t851, ptr %l316, !tbaa !24
  %t852 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t852, label %bb198, label %bb199
bb198:
  %t854 = call ptr @__olang_region_make(ptr %v3)
  %t855 = ptrtoint ptr %t854 to i64
  store i64 %t855, ptr %l316, !tbaa !24
  br label %bb199
bb199:
  %t856 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t858 = extractvalue { i64, ptr } %t856, 1
  %t859 = extractvalue { i64, ptr } %t856, 0
  %t860 = load i64, ptr %l316
  %t861 = inttoptr i64 %t860 to ptr
  %t862 = call ptr @__olang_scope_alloc(ptr %t861, i64 %t859)
  call void @olang_textcopy(ptr %t862, ptr %t858, i64 %t859)
  %t863 = insertvalue { i64, ptr } undef, i64 %t859, 0
  %t864 = insertvalue { i64, ptr } %t863, ptr %t862, 1
  %t866 = load i64, ptr %l316
  %t867 = inttoptr i64 %t866 to ptr
  %t868 = extractvalue { i64, ptr } %t864, 0
  %t869 = extractvalue { i64, ptr } %t864, 1
  %t870 = mul i64 %t868, 1
  %t871 = call ptr @__olang_scope_alloc(ptr %t867, i64 %t870)
  call void @llvm.memcpy.p0.p0.i64(ptr %t871, ptr %t869, i64 %t870, i1 false)
  %t872 = insertvalue { i64, ptr } undef, i64 %t868, 0
  %t873 = insertvalue { i64, ptr } %t872, ptr %t871, 1
  %t874 = load ptr, ptr %l315, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t874, { i64, ptr } %t873)
  br label %bb200
bb200:
  br label %bb201
bb201:
  %t876 = load i64, ptr %l28, !tbaa !24
  %t878 = add i64 %t876, 1
  store i64 %t878, ptr %l28, !tbaa !24
  br label %bb192
bb202:
  call void @__olang_scope_close(ptr %s39)
  br label %bb203
bb203:
  %t880 = load ptr, ptr %l2, !tbaa !29
  %t882 = call { i32, { i64, ptr } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Hdc04e7543082eec80486670259c0789b(ptr %v2, ptr %s2, ptr %t880)
  %t883 = extractvalue { i32, { i64, ptr } } %t882, 1
  %t884 = extractvalue { i32, { i64, ptr } } %t882, 0
  store i32 %t884, ptr %l326
  %t885 = icmp ne i32 %t884, 0
  br i1 %t885, label %bb205, label %ok.886, !prof !99
ok.886:
  store { i64, ptr } %t883, ptr %l325
  br label %bb204
bb204:
  %t887 = load { i64, ptr }, ptr %l325, !tbaa !27
  store { i64, ptr } %t887, ptr %l323, !tbaa !27
  %t888 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t888, label %bb207, label %bb208
bb205:
  br label %bb206
bb206:
  br label %bb209
bb207:
  %t890 = load { i64, ptr }, ptr %l323
  %t891 = extractvalue { i64, ptr } %t890, 1
  call void @__olang_region_release(ptr %t891)
  store { i64, ptr } zeroinitializer, ptr %l323
  br label %bb208
bb208:
  br label %bb209
bb209:
  %t892 = load i64, ptr %l16, !tbaa !24
  %t894 = add i64 %t892, 1
  store i64 %t894, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb210
bb210:
  br label %bb8
bb211:
  %t896 = load ptr, ptr %lp4
  %t897 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t896
  call void @__olang_scope_close(ptr %s0)
  %t899 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t897, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t899, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }, ptr %rv
  ret { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %rr
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eisByte(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca %"compiler/bindgen:ctype"
  %l9 = alloca i1
  %l13 = alloca %"compiler/bindgen:ctype"
  %l16 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 16
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s0, ptr %t3, i64 %t4)
  store %"compiler/bindgen:ctype" %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/bindgen:ctype", ptr %l6, i32 0, i32 0
  %t9 = load i32, ptr %t8, !range !{i32 0, i32 7}
  %t11 = trunc i64 1 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/bindgen:gen", ptr %t14, i32 0, i32 16
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t16, i64 %t17)
  store %"compiler/bindgen:ctype" %t20, ptr %l13
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb6
bb4:
  %t21 = getelementptr %"compiler/bindgen:ctype", ptr %l13, i32 0, i32 1
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t26 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s0, ptr %v0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x { i64, ptr }] }>, ptr @.d85, i32 0, i32 1) }, { i64, ptr } %t22)
  store i1 %t26, ptr %l16
  br label %bb5
bb5:
  %t27 = load i1, ptr %l16, !tbaa !21
  store i1 %t27, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t28 = load i1, ptr %l9, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eisChar(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca %"compiler/bindgen:ctype"
  %l8 = alloca i1
  %l12 = alloca %"compiler/bindgen:ctype"
  %l14 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 16
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s0, ptr %t3, i64 %t4)
  store %"compiler/bindgen:ctype" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 0
  %t9 = load i32, ptr %t8, !range !{i32 0, i32 7}
  %t11 = trunc i64 1 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/bindgen:gen", ptr %t14, i32 0, i32 16
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t16, i64 %t17)
  store %"compiler/bindgen:ctype" %t20, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb6
bb4:
  %t21 = getelementptr %"compiler/bindgen:ctype", ptr %l12, i32 0, i32 1
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t22, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d86, i32 0, i32 1) })
  store i1 %t24, ptr %l14
  br label %bb5
bb5:
  %t25 = load i1, ptr %l14, !tbaa !21
  store i1 %t25, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t26 = load i1, ptr %l8, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2emacroFn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"compiler/bindgen:cparse"
  %l5 = alloca %"compiler/bindgen:cx"
  %l6 = alloca %"std/prelude/text:StringBuilder"
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
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca ptr
  %l23 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i32
  %l38 = alloca i64
  %l41 = alloca i32
  %l43 = alloca i64
  %l46 = alloca { i64, ptr }
  %l49 = alloca %"compiler/bindgen:cparse"
  %l50 = alloca %"compiler/bindgen:cx"
  %l53 = alloca %"compiler/bindgen:cx"
  %l54 = alloca i32
  %l56 = alloca i64
  %l58 = alloca i64
  %l60 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l65 = alloca i32
  %l67 = alloca %"std/prelude/text:StringBuilder"
  %l84 = alloca i64
  %l87 = alloca i64
  %l105 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l122 = alloca i64
  %l125 = alloca i64
  %l143 = alloca ptr
  %l146 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l176 = alloca { i64, ptr }
  %l178 = alloca i64
  %l179 = alloca { i64, ptr }
  %l186 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l21
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store ptr %l2, ptr %l22, !tbaa !29
  %t3 = ptrtoint ptr %s0 to i64
  store i64 %t3, ptr %l23, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t6 = call ptr @__olang_region_make(ptr %s0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l23, !tbaa !24
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/bindgen:cMacro", ptr %t8, i32 0, i32 0
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 1
  %t14 = extractvalue { i64, ptr } %t11, 0
  %t15 = load i64, ptr %l23
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = call ptr @__olang_scope_alloc(ptr %t16, i64 %t14)
  call void @olang_textcopy(ptr %t17, ptr %t13, i64 %t14)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  %t21 = load i64, ptr %l23
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = extractvalue { i64, ptr } %t19, 0
  %t24 = extractvalue { i64, ptr } %t19, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  %t29 = load ptr, ptr %l22, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t29, { i64, ptr } %t28)
  br label %bb4
bb4:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/bindgen:cMacro", ptr %t32, i32 0, i32 3
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t39 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t31, { i64, ptr } %t35, ptr %l2, i64 0)
  %t40 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t39, 1
  %t41 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t39, 0
  store i32 %t41, ptr %l35
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb6, label %ok.43, !prof !99
ok.43:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l34
  br label %bb5
bb5:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l29
  br label %bb7
bb6:
  %t45 = load i32, ptr %l35, !tbaa !23
  %t46 = lshr i32 %t45, 16
  %t47 = and i32 %t45, 65535
  %t48 = icmp eq i32 %t46, 1
  %t49 = select i1 %t48, i32 1, i32 0
  %t50 = icmp eq i32 %t45, 0
  %t51 = shl i32 %t49, 16
  %t52 = or i32 %t51, %t47
  %t53 = select i1 %t50, i32 0, i32 %t52
  call void @__olang_scope_close(ptr %s0)
  %t55 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t53, 0
  store { i32, { i64, ptr } } %t55, ptr %rv
  br label %ret
bb7:
  %t56 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l3
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l3)
  store i64 %t58, ptr %l38
  br label %bb8
bb8:
  %t59 = load i64, ptr %l38, !tbaa !24
  %t60 = icmp eq i64 %t59, 0
  br i1 %t60, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s2, ptr %t62, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store i32 %t64, ptr %l41
  %t65 = icmp ne i32 %t64, 0
  br i1 %t65, label %bb12, label %ok.66, !prof !99
ok.66:
  br label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb13
bb12:
  %t67 = load i32, ptr %l41, !tbaa !23
  %t68 = lshr i32 %t67, 16
  %t69 = and i32 %t67, 65535
  %t70 = icmp eq i32 %t68, 1
  %t71 = select i1 %t70, i32 1, i32 0
  %t72 = icmp eq i32 %t67, 0
  %t73 = shl i32 %t71, 16
  %t74 = or i32 %t73, %t69
  %t75 = select i1 %t72, i32 0, i32 %t74
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t77 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t75, 0
  store { i32, { i64, ptr } } %t77, ptr %rv
  br label %ret
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  %t78 = ptrtoint ptr %s0 to i64
  store i64 %t78, ptr %l43, !tbaa !24
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acparse_2e0
  br i1 %t79, label %bb15, label %bb16
bb15:
  %t81 = call ptr @__olang_region_make(ptr %s0)
  %t82 = ptrtoint ptr %t81 to i64
  store i64 %t82, ptr %l43, !tbaa !24
  br label %bb16
bb16:
  %t83 = load i64, ptr %l43
  %t84 = inttoptr i64 %t83 to ptr
  %t86 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %t84, ptr %l3)
  store { i64, ptr } %t86, ptr %l46
  br label %bb17
bb17:
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr %"compiler/bindgen:cMacro", ptr %t87, i32 0, i32 2
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  %t91 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t93 = call %"compiler/bindgen:cparse" @compiler_2fbindgen_3acparse_2ector(ptr %s0, ptr %v1, ptr %s0, { i64, ptr } %t91, { i64, ptr } %t90)
  store %"compiler/bindgen:cparse" %t93, ptr %l49
  br label %bb18
bb18:
  %t94 = load %"compiler/bindgen:cparse", ptr %l49
  store %"compiler/bindgen:cparse" %t94, ptr %l4
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t98 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %s0, ptr %s0, ptr %t95, ptr %l4)
  %t99 = extractvalue { i32, %"compiler/bindgen:cx" } %t98, 1
  %t100 = extractvalue { i32, %"compiler/bindgen:cx" } %t98, 0
  store i32 %t100, ptr %l54
  %t101 = icmp ne i32 %t100, 0
  br i1 %t101, label %bb20, label %ok.102, !prof !99
ok.102:
  store %"compiler/bindgen:cx" %t99, ptr %l53
  br label %bb19
bb19:
  %t103 = load %"compiler/bindgen:cx", ptr %l53
  store %"compiler/bindgen:cx" %t103, ptr %l50
  br label %bb21
bb20:
  %t104 = load i32, ptr %l54, !tbaa !23
  %t105 = lshr i32 %t104, 16
  %t106 = and i32 %t104, 65535
  %t107 = icmp eq i32 %t105, 1
  %t108 = select i1 %t107, i32 1, i32 0
  %t109 = icmp eq i32 %t104, 0
  %t110 = shl i32 %t108, 16
  %t111 = or i32 %t110, %t106
  %t112 = select i1 %t109, i32 0, i32 %t111
  call void @__olang_scope_close(ptr %s0)
  %t114 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t112, 0
  store { i32, { i64, ptr } } %t114, ptr %rv
  br label %ret
bb21:
  %t115 = load %"compiler/bindgen:cx", ptr %l50
  store %"compiler/bindgen:cx" %t115, ptr %l5
  %t116 = getelementptr %"compiler/bindgen:cparse", ptr %l4, i32 0, i32 2
  %t117 = load i64, ptr %t116, !tbaa !24
  store i64 %t117, ptr %l56, !tbaa !24
  %t119 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l3)
  store i64 %t119, ptr %l58
  br label %bb22
bb22:
  %t120 = load i64, ptr %l56, !tbaa !24
  %t121 = load i64, ptr %l58, !tbaa !24
  %t122 = icmp ne i64 %t120, %t121
  br i1 %t122, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s3
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l60, !tbaa !29
  %t126 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %s0, ptr %s3, ptr %l4)
  store { i64, ptr } %t126, ptr %l62
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t127 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t128 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t129 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 1
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t132 = add i64 %t128, %t131
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t134 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t135 = add i64 %t132, %t134
  %t136 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t135)
  call void @olang_textcopy(ptr %t136, ptr %t127, i64 %t128)
  %t137 = getelementptr i8, ptr %t136, i64 %t128
  call void @olang_textcopy(ptr %t137, ptr %t130, i64 %t131)
  %t138 = getelementptr i8, ptr %t137, i64 %t131
  call void @olang_textcopy(ptr %t138, ptr %t133, i64 %t134)
  %t139 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t136, 1
  %t142 = extractvalue { i64, ptr } %t140, 0
  %t143 = extractvalue { i64, ptr } %t140, 1
  %t144 = mul i64 %t142, 1
  %t145 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t144)
  call void @llvm.memcpy.p0.p0.i64(ptr %t145, ptr %t143, i64 %t144, i1 false)
  %t146 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t145, 1
  %t148 = load ptr, ptr %l60, !tbaa !29
  %t150 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s3, ptr %t148, { i64, ptr } %t147)
  store i32 %t150, ptr %l65
  %t151 = icmp ne i32 %t150, 0
  br i1 %t151, label %bb27, label %ok.152, !prof !99
ok.152:
  br label %bb26
bb26:
  br label %bb28
bb27:
  %t153 = load i32, ptr %l65, !tbaa !23
  %t154 = lshr i32 %t153, 16
  %t155 = and i32 %t153, 65535
  %t156 = icmp eq i32 %t154, 1
  %t157 = select i1 %t156, i32 1, i32 0
  %t158 = icmp eq i32 %t153, 0
  %t159 = shl i32 %t157, 16
  %t160 = or i32 %t159, %t155
  %t161 = select i1 %t158, i32 0, i32 %t160
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t163 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t161, 0
  store { i32, { i64, ptr } } %t163, ptr %rv
  br label %ret
bb28:
  call void @__olang_scope_close(ptr %s3)
  br label %bb29
bb29:
  %t164 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t164, ptr %l67
  br label %bb30
bb30:
  %t165 = load %"std/prelude/text:StringBuilder", ptr %l67
  store %"std/prelude/text:StringBuilder" %t165, ptr %l6
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr %"compiler/bindgen:cMacro", ptr %t166, i32 0, i32 0
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  %t170 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t173 = extractvalue { i64, ptr } %t169, 1
  %t174 = extractvalue { i64, ptr } %t169, 0
  %t175 = add i64 %t171, %t174
  %t176 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t175)
  call void @olang_textcopy(ptr %t176, ptr %t170, i64 %t171)
  %t177 = getelementptr i8, ptr %t176, i64 %t171
  call void @olang_textcopy(ptr %t177, ptr %t173, i64 %t174)
  %t178 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t176, 1
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t182 = extractvalue { i64, ptr } %t179, 1
  %t183 = mul i64 %t181, 1
  %t184 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t183)
  call void @llvm.memcpy.p0.p0.i64(ptr %t184, ptr %t182, i64 %t183, i1 false)
  %t185 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t184, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t186)
  br label %bb31
bb31:
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t191 = getelementptr %"compiler/bindgen:cMacro", ptr %t189, i32 0, i32 2
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t196 = icmp sgt i64 %t194, 0
  br i1 %t196, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) })
  br label %bb34
bb33:
  br label %bb52
bb34:
  store i64 0, ptr %l7, !tbaa !24
  %t199 = load ptr, ptr %l1, !tbaa !29
  %t201 = getelementptr %"compiler/bindgen:cMacro", ptr %t199, i32 0, i32 2
  %t202 = load { i64, ptr }, ptr %t201, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t202, 0
  store i64 %t204, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t206 = load i64, ptr %l8, !tbaa !24
  %t207 = load i64, ptr %l7, !tbaa !24
  %t210 = icmp sgt i64 %t206, %t207
  br i1 %t210, label %bb35, label %bb36
bb35:
  %t212 = load i64, ptr %l9, !tbaa !24
  %t214 = icmp sgt i64 %t212, 0
  br i1 %t214, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb40
bb37:
  %t216 = load i64, ptr %l8, !tbaa !24
  %t217 = load i64, ptr %l7, !tbaa !24
  %t220 = sub i64 %t216, %t217
  %t221 = load i64, ptr %l9, !tbaa !24
  %t224 = add i64 %t220, %t221
  %t226 = sub i64 %t224, 1
  %t227 = load i64, ptr %l9, !tbaa !24
  %t230 = sdiv i64 %t226, %t227
  store i64 %t230, ptr %l87, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb39
bb39:
  %t232 = load i64, ptr %l87, !tbaa !24
  store i64 %t232, ptr %l84, !tbaa !24
  br label %bb40
bb40:
  %t233 = load i64, ptr %l84, !tbaa !24
  store i64 %t233, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s8
  %t234 = load i64, ptr %l11, !tbaa !24
  %t235 = load i64, ptr %l10, !tbaa !24
  %t238 = icmp slt i64 %t234, %t235
  %t240 = xor i1 %t238, true
  br i1 %t240, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s8)
  br label %bb50
bb43:
  br label %bb44
bb44:
  %t242 = load i64, ptr %l7, !tbaa !24
  %t243 = load i64, ptr %l11, !tbaa !24
  %t244 = load i64, ptr %l9, !tbaa !24
  %t247 = mul i64 %t243, %t244
  %t250 = add i64 %t242, %t247
  store i64 %t250, ptr %l12, !tbaa !24
  store ptr %l6, ptr %l105, !tbaa !29
  %t252 = load i64, ptr %l12, !tbaa !24
  %t254 = icmp sgt i64 %t252, 0
  br i1 %t254, label %bb45, label %bb46
bb45:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d92, i32 0, i32 1) }, ptr %l108, !tbaa !27
  br label %bb47
bb46:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d93, i32 0, i32 1) }, ptr %l108, !tbaa !27
  br label %bb47
bb47:
  %t256 = load i64, ptr %l12, !tbaa !24
  %t257 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t258 = extractvalue { i64, ptr } %t257, 1
  %t259 = extractvalue { i64, ptr } %t257, 0
  %t260 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t261 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t262 = add i64 %t259, %t261
  %t264 = call i64 @__olang_fmt_i64(ptr null, i64 %t256)
  %t265 = add i64 %t262, %t264
  %t266 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t265)
  call void @olang_textcopy(ptr %t266, ptr %t258, i64 %t259)
  %t267 = getelementptr i8, ptr %t266, i64 %t259
  call void @olang_textcopy(ptr %t267, ptr %t260, i64 %t261)
  %t268 = getelementptr i8, ptr %t267, i64 %t261
  %t269 = call i64 @__olang_fmt_i64(ptr %t268, i64 %t256)
  %t270 = insertvalue { i64, ptr } undef, i64 %t265, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t266, 1
  %t273 = extractvalue { i64, ptr } %t271, 0
  %t274 = extractvalue { i64, ptr } %t271, 1
  %t275 = mul i64 %t273, 1
  %t276 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t275)
  call void @llvm.memcpy.p0.p0.i64(ptr %t276, ptr %t274, i64 %t275, i1 false)
  %t277 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  %t279 = load ptr, ptr %l105, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %t279, { i64, ptr } %t278)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s8)
  br label %bb49
bb49:
  %t281 = load i64, ptr %l11, !tbaa !24
  %t283 = add i64 %t281, 1
  store i64 %t283, ptr %l11, !tbaa !24
  br label %bb41
bb50:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) })
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s6)
  br label %bb52
bb52:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d96, i32 0, i32 1) })
  br label %bb53
bb53:
  store i64 0, ptr %l13, !tbaa !24
  %t287 = load ptr, ptr %l1, !tbaa !29
  %t289 = getelementptr %"compiler/bindgen:cMacro", ptr %t287, i32 0, i32 2
  %t290 = load { i64, ptr }, ptr %t289, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t290, 0
  store i64 %t292, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t294 = load i64, ptr %l14, !tbaa !24
  %t295 = load i64, ptr %l13, !tbaa !24
  %t298 = icmp sgt i64 %t294, %t295
  br i1 %t298, label %bb54, label %bb55
bb54:
  %t300 = load i64, ptr %l15, !tbaa !24
  %t302 = icmp sgt i64 %t300, 0
  br i1 %t302, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l122, !tbaa !24
  br label %bb59
bb56:
  %t304 = load i64, ptr %l14, !tbaa !24
  %t305 = load i64, ptr %l13, !tbaa !24
  %t308 = sub i64 %t304, %t305
  %t309 = load i64, ptr %l15, !tbaa !24
  %t312 = add i64 %t308, %t309
  %t314 = sub i64 %t312, 1
  %t315 = load i64, ptr %l15, !tbaa !24
  %t318 = sdiv i64 %t314, %t315
  store i64 %t318, ptr %l125, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l125, !tbaa !24
  br label %bb58
bb58:
  %t320 = load i64, ptr %l125, !tbaa !24
  store i64 %t320, ptr %l122, !tbaa !24
  br label %bb59
bb59:
  %t321 = load i64, ptr %l122, !tbaa !24
  store i64 %t321, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb60
bb60:
  store %olang.scope zeroinitializer, ptr %s12
  %t322 = load i64, ptr %l17, !tbaa !24
  %t323 = load i64, ptr %l16, !tbaa !24
  %t326 = icmp slt i64 %t322, %t323
  %t328 = xor i1 %t326, true
  br i1 %t328, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s12)
  br label %bb69
bb62:
  br label %bb63
bb63:
  %t330 = load i64, ptr %l13, !tbaa !24
  %t331 = load i64, ptr %l17, !tbaa !24
  %t332 = load i64, ptr %l15, !tbaa !24
  %t335 = mul i64 %t331, %t332
  %t338 = add i64 %t330, %t335
  store i64 %t338, ptr %l18, !tbaa !24
  store ptr %l6, ptr %l143, !tbaa !29
  %t340 = load i64, ptr %l18, !tbaa !24
  %t342 = icmp sgt i64 %t340, 0
  br i1 %t342, label %bb64, label %bb65
bb64:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d97, i32 0, i32 1) }, ptr %l146, !tbaa !27
  br label %bb66
bb65:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) }, ptr %l146, !tbaa !27
  br label %bb66
bb66:
  %t344 = load i64, ptr %l18, !tbaa !24
  %t345 = load i64, ptr %l18, !tbaa !24
  %t346 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t346, 1
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t349 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t350 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t351 = add i64 %t348, %t350
  %t353 = call i64 @__olang_fmt_i64(ptr null, i64 %t344)
  %t354 = add i64 %t351, %t353
  %t355 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t356 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t357 = add i64 %t354, %t356
  %t359 = call i64 @__olang_fmt_i64(ptr null, i64 %t345)
  %t360 = add i64 %t357, %t359
  %t361 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t360)
  call void @olang_textcopy(ptr %t361, ptr %t347, i64 %t348)
  %t362 = getelementptr i8, ptr %t361, i64 %t348
  call void @olang_textcopy(ptr %t362, ptr %t349, i64 %t350)
  %t363 = getelementptr i8, ptr %t362, i64 %t350
  %t364 = call i64 @__olang_fmt_i64(ptr %t363, i64 %t344)
  %t365 = getelementptr i8, ptr %t363, i64 %t353
  call void @olang_textcopy(ptr %t365, ptr %t355, i64 %t356)
  %t366 = getelementptr i8, ptr %t365, i64 %t356
  %t367 = call i64 @__olang_fmt_i64(ptr %t366, i64 %t345)
  %t368 = insertvalue { i64, ptr } undef, i64 %t360, 0
  %t369 = insertvalue { i64, ptr } %t368, ptr %t361, 1
  %t371 = extractvalue { i64, ptr } %t369, 0
  %t372 = extractvalue { i64, ptr } %t369, 1
  %t373 = mul i64 %t371, 1
  %t374 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t373)
  call void @llvm.memcpy.p0.p0.i64(ptr %t374, ptr %t372, i64 %t373, i1 false)
  %t375 = insertvalue { i64, ptr } undef, i64 %t371, 0
  %t376 = insertvalue { i64, ptr } %t375, ptr %t374, 1
  %t377 = load ptr, ptr %l143, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %t377, { i64, ptr } %t376)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s12)
  br label %bb68
bb68:
  %t379 = load i64, ptr %l17, !tbaa !24
  %t381 = add i64 %t379, 1
  store i64 %t381, ptr %l17, !tbaa !24
  br label %bb60
bb69:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d101, i32 0, i32 1) })
  br label %bb70
bb70:
  %t384 = getelementptr %"compiler/bindgen:cx", ptr %l5, i32 0, i32 1
  %t385 = load i64, ptr %t384, !tbaa !24
  store i64 %t385, ptr %l19, !tbaa !24
  %t387 = load i64, ptr %l19, !tbaa !24
  %t388 = load i64, ptr @G_2ecompiler_2fbindgen_2eKVar, !tbaa !24
  %t391 = icmp eq i64 %t387, %t388
  br i1 %t391, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  %t393 = getelementptr %"compiler/bindgen:cx", ptr %l5, i32 0, i32 2
  %t394 = load i64, ptr %t393, !tbaa !24
  %t395 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t396 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t398 = call i64 @__olang_fmt_i64(ptr null, i64 %t394)
  %t399 = add i64 %t396, %t398
  %t400 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t399)
  call void @olang_textcopy(ptr %t400, ptr %t395, i64 %t396)
  %t401 = getelementptr i8, ptr %t400, i64 %t396
  %t402 = call i64 @__olang_fmt_i64(ptr %t401, i64 %t394)
  %t403 = insertvalue { i64, ptr } undef, i64 %t399, 0
  %t404 = insertvalue { i64, ptr } %t403, ptr %t400, 1
  store { i64, ptr } %t404, ptr %l155, !tbaa !27
  br label %bb91
bb74:
  %t406 = load i64, ptr %l19, !tbaa !24
  %t407 = load i64, ptr @G_2ecompiler_2fbindgen_2eKType, !tbaa !24
  %t410 = icmp eq i64 %t406, %t407
  br i1 %t410, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  %t412 = getelementptr %"compiler/bindgen:cx", ptr %l5, i32 0, i32 3
  %t413 = load { i64, ptr }, ptr %t412, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t413, 1
  %t416 = extractvalue { i64, ptr } %t413, 0
  %t417 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t416)
  call void @olang_textcopy(ptr %t417, ptr %t415, i64 %t416)
  %t418 = insertvalue { i64, ptr } undef, i64 %t416, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t417, 1
  store { i64, ptr } %t419, ptr %l155, !tbaa !27
  br label %bb91
bb78:
  %t421 = load i64, ptr %l19, !tbaa !24
  %t422 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t425 = icmp eq i64 %t421, %t422
  br i1 %t425, label %bb79, label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb82
bb81:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d103, i32 0, i32 1) }, ptr %l169, !tbaa !27
  %t427 = load { i64, ptr }, ptr %l169, !tbaa !27
  store { i64, ptr } %t427, ptr %l155, !tbaa !27
  br label %bb91
bb82:
  %t429 = load i64, ptr %l19, !tbaa !24
  %t430 = load i64, ptr @G_2ecompiler_2fbindgen_2eKFloat, !tbaa !24
  %t433 = icmp eq i64 %t429, %t430
  br i1 %t433, label %bb83, label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb86
bb85:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d104, i32 0, i32 1) }, ptr %l174, !tbaa !27
  %t435 = load { i64, ptr }, ptr %l174, !tbaa !27
  store { i64, ptr } %t435, ptr %l155, !tbaa !27
  br label %bb91
bb86:
  br i1 true, label %bb87, label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb90
bb89:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d105, i32 0, i32 1) }, ptr %l176, !tbaa !27
  %t437 = load { i64, ptr }, ptr %l176, !tbaa !27
  store { i64, ptr } %t437, ptr %l155, !tbaa !27
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_7ea854ff7e2640a8_63f49c54b749b4b4)
  unreachable
bb91:
  %t439 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t440 = extractvalue { i64, ptr } %t439, 0
  store i64 %t440, ptr %l178, !tbaa !24
  %t441 = load i64, ptr %l178, !tbaa !24
  %t442 = mul i64 %t441, 1
  %t443 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t442)
  %t444 = insertvalue { i64, ptr } undef, i64 %t441, 0
  %t445 = insertvalue { i64, ptr } %t444, ptr %t443, 1
  store { i64, ptr } %t445, ptr %l179, !tbaa !27
  %t446 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t447 = load ptr, ptr %t446, !tbaa !27
  %t448 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t449 = load ptr, ptr %t448, !tbaa !27
  %t450 = load i64, ptr %l178, !tbaa !24
  %t451 = mul i64 %t450, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t447, ptr %t449, i64 %t451, i1 false)
  %t452 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t454 = getelementptr %"compiler/bindgen:cx", ptr %l5, i32 0, i32 0
  %t455 = load { i64, ptr }, ptr %t454, !tbaa !27
  %t457 = extractvalue { i64, ptr } %t452, 1
  %t458 = extractvalue { i64, ptr } %t452, 0
  %t459 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t460 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t461 = add i64 %t458, %t460
  %t463 = extractvalue { i64, ptr } %t455, 1
  %t464 = extractvalue { i64, ptr } %t455, 0
  %t465 = add i64 %t461, %t464
  %t466 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t467 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t468 = add i64 %t465, %t467
  %t469 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t468)
  call void @olang_textcopy(ptr %t469, ptr %t457, i64 %t458)
  %t470 = getelementptr i8, ptr %t469, i64 %t458
  call void @olang_textcopy(ptr %t470, ptr %t459, i64 %t460)
  %t471 = getelementptr i8, ptr %t470, i64 %t460
  call void @olang_textcopy(ptr %t471, ptr %t463, i64 %t464)
  %t472 = getelementptr i8, ptr %t471, i64 %t464
  call void @olang_textcopy(ptr %t472, ptr %t466, i64 %t467)
  %t473 = insertvalue { i64, ptr } undef, i64 %t468, 0
  %t474 = insertvalue { i64, ptr } %t473, ptr %t469, 1
  %t476 = extractvalue { i64, ptr } %t474, 0
  %t477 = extractvalue { i64, ptr } %t474, 1
  %t478 = mul i64 %t476, 1
  %t479 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t478)
  call void @llvm.memcpy.p0.p0.i64(ptr %t479, ptr %t477, i64 %t478, i1 false)
  %t480 = insertvalue { i64, ptr } undef, i64 %t476, 0
  %t481 = insertvalue { i64, ptr } %t480, ptr %t479, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t481)
  br label %bb92
bb92:
  %t485 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l6)
  store { i64, ptr } %t485, ptr %l186
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s0)
  %t486 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t487 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t486, 1
  store { i32, { i64, ptr } } %t487, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
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
  %l42 = alloca ptr
  %l43 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l55 = alloca i64
  %l59 = alloca i64
  %l62 = alloca i64
  %l83 = alloca %"compiler/bindgen:record"
  %l85 = alloca %"compiler/bindgen:record"
  %l87 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i64
  %l90 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l96 = alloca %"compiler/bindgen:record"
  %l98 = alloca %"compiler/bindgen:record"
  %l100 = alloca { i64, ptr }
  %l101 = alloca i32
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t167 = alloca %"compiler/bindgen:record", align 8
  %t170 = alloca %"compiler/bindgen:record", align 8
  %t186 = alloca %"compiler/bindgen:record", align 8
  %t189 = alloca %"compiler/bindgen:record", align 8
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
  br label %bb33
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d108, i32 0, i32 1) }, ptr %l20, !tbaa !27
  br label %bb10
bb10:
  %t31 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t31, ptr %l3, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t32, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d109, i32 0, i32 1) })
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
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t36, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d110, i32 0, i32 1) })
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
  store ptr %t61, ptr %l42, !tbaa !29
  %t62 = ptrtoint ptr %v0 to i64
  store i64 %t62, ptr %l43, !tbaa !24
  %t63 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t63, label %bb26, label %bb27
bb25:
  br label %bb31
bb26:
  %t65 = call ptr @__olang_region_make(ptr %v0)
  %t66 = ptrtoint ptr %t65 to i64
  store i64 %t66, ptr %l43, !tbaa !24
  br label %bb27
bb27:
  %t67 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 1
  %t70 = extractvalue { i64, ptr } %t67, 0
  %t71 = load i64, ptr %l43
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = call ptr @__olang_scope_alloc(ptr %t72, i64 %t70)
  call void @olang_textcopy(ptr %t73, ptr %t69, i64 %t70)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t77 = load i64, ptr %l43
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = extractvalue { i64, ptr } %t75, 0
  %t80 = extractvalue { i64, ptr } %t75, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %t78, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  store { i64, ptr } %t84, ptr %l47, !tbaa !27
  %t85 = ptrtoint ptr %v0 to i64
  store i64 %t85, ptr %l48, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t86, label %bb28, label %bb29
bb28:
  %t88 = call ptr @__olang_region_make(ptr %v0)
  %t89 = ptrtoint ptr %t88 to i64
  store i64 %t89, ptr %l48, !tbaa !24
  br label %bb29
bb29:
  %t90 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 1
  %t93 = extractvalue { i64, ptr } %t90, 0
  %t94 = load i64, ptr %l48
  %t95 = inttoptr i64 %t94 to ptr
  %t96 = call ptr @__olang_scope_alloc(ptr %t95, i64 %t93)
  call void @olang_textcopy(ptr %t96, ptr %t92, i64 %t93)
  %t97 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  %t100 = load i64, ptr %l48
  %t101 = inttoptr i64 %t100 to ptr
  %t102 = extractvalue { i64, ptr } %t98, 0
  %t103 = extractvalue { i64, ptr } %t98, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %t101, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t108 = load ptr, ptr %l42, !tbaa !29
  %t109 = load { i64, ptr }, ptr %l47, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t108, { i64, ptr } %t109, { i64, ptr } %t107)
  br label %bb30
bb30:
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb32:
  br label %bb2
bb33:
  store i64 0, ptr %l5, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/bindgen:gen", ptr %t111, i32 0, i32 5
  %t115 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t113)
  store i64 %t115, ptr %l55
  br label %bb34
bb34:
  %t116 = load i64, ptr %l55, !tbaa !24
  store i64 %t116, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t117 = load i64, ptr %l6, !tbaa !24
  %t118 = load i64, ptr %l5, !tbaa !24
  %t121 = icmp sgt i64 %t117, %t118
  br i1 %t121, label %bb35, label %bb36
bb35:
  %t123 = load i64, ptr %l7, !tbaa !24
  %t125 = icmp sgt i64 %t123, 0
  br i1 %t125, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb40
bb37:
  %t127 = load i64, ptr %l6, !tbaa !24
  %t128 = load i64, ptr %l5, !tbaa !24
  %t131 = sub i64 %t127, %t128
  %t132 = load i64, ptr %l7, !tbaa !24
  %t135 = add i64 %t131, %t132
  %t137 = sub i64 %t135, 1
  %t138 = load i64, ptr %l7, !tbaa !24
  %t141 = sdiv i64 %t137, %t138
  store i64 %t141, ptr %l62, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb39
bb39:
  %t143 = load i64, ptr %l62, !tbaa !24
  store i64 %t143, ptr %l59, !tbaa !24
  br label %bb40
bb40:
  %t144 = load i64, ptr %l59, !tbaa !24
  store i64 %t144, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s7
  %t145 = load i64, ptr %l9, !tbaa !24
  %t146 = load i64, ptr %l8, !tbaa !24
  %t149 = icmp slt i64 %t145, %t146
  %t151 = xor i1 %t149, true
  br i1 %t151, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s7)
  br label %bb59
bb43:
  br label %bb44
bb44:
  %t153 = load i64, ptr %l5, !tbaa !24
  %t154 = load i64, ptr %l9, !tbaa !24
  %t155 = load i64, ptr %l7, !tbaa !24
  %t158 = mul i64 %t154, %t155
  %t161 = add i64 %t153, %t158
  store i64 %t161, ptr %l10, !tbaa !24
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/bindgen:gen", ptr %t163, i32 0, i32 5
  %t166 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t167, ptr %v0, ptr %v0, ptr %t165, i64 %t166)
  call void @llvm.memmove.p0.p0.i64(ptr %l83, ptr %t167, i64 216, i1 false)
  br label %bb45
bb45:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t170, ptr %v0, ptr %l83)
  call void @llvm.memmove.p0.p0.i64(ptr %l85, ptr %t170, i64 216, i1 false)
  br label %bb46
bb46:
  %t172 = getelementptr %"compiler/bindgen:record", ptr %l85, i32 0, i32 0
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  %t175 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t173, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d111, i32 0, i32 1) })
  store i1 %t175, ptr %l87
  br label %bb47
bb47:
  %t176 = load i1, ptr %l87, !tbaa !21
  br i1 %t176, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s7)
  br label %bb58
bb49:
  br label %bb50
bb50:
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l88, !tbaa !29
  %t178 = load i64, ptr %l10, !tbaa !24
  store i64 %t178, ptr %l89, !tbaa !24
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/bindgen:gen", ptr %t179, i32 0, i32 22
  store ptr %t181, ptr %l92, !tbaa !29
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/bindgen:gen", ptr %t182, i32 0, i32 5
  %t185 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t186, ptr %v0, ptr %v0, ptr %t184, i64 %t185)
  call void @llvm.memmove.p0.p0.i64(ptr %l96, ptr %t186, i64 216, i1 false)
  br label %bb51
bb51:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t189, ptr %v0, ptr %l96)
  call void @llvm.memmove.p0.p0.i64(ptr %l98, ptr %t189, i64 216, i1 false)
  br label %bb52
bb52:
  %t191 = getelementptr %"compiler/bindgen:record", ptr %l98, i32 0, i32 0
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  %t193 = load ptr, ptr %l92, !tbaa !29
  %t195 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v0, ptr %v0, ptr %t193, { i64, ptr } %t192)
  %t196 = extractvalue { i32, { i64, ptr } } %t195, 1
  %t197 = extractvalue { i32, { i64, ptr } } %t195, 0
  store i32 %t197, ptr %l101
  %t198 = icmp ne i32 %t197, 0
  br i1 %t198, label %bb54, label %ok.199, !prof !99
ok.199:
  store { i64, ptr } %t196, ptr %l100
  br label %bb53
bb53:
  %t200 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t200, ptr %l90, !tbaa !27
  br label %bb56
bb54:
  br label %bb55
bb55:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d112, i32 0, i32 1) }, ptr %l90, !tbaa !27
  br label %bb56
bb56:
  %t201 = load ptr, ptr %l88, !tbaa !29
  %t202 = load i64, ptr %l89, !tbaa !24
  %t203 = load { i64, ptr }, ptr %l90, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecord(ptr %v0, ptr %v0, ptr %t201, i64 %t202, { i64, ptr } %t203)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s7)
  br label %bb58
bb58:
  %t204 = load i64, ptr %l9, !tbaa !24
  %t206 = add i64 %t204, 1
  store i64 %t206, ptr %l9, !tbaa !24
  br label %bb41
bb59:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/bindgen:gen", ptr %t208, i32 0, i32 23
  store i1 true, ptr %t210, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, i1 %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca ptr
  %l13 = alloca %"compiler/bindgen:ctype"
  %l16 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 16
  store ptr %t3, ptr %l7, !tbaa !29
  %t14 = call %"compiler/bindgen:ctype" @compiler_2fbindgen_3actype_2ector(ptr %v1, ptr %v0, i32 %a1, { i64, ptr } %a2, i64 %a3, i1 %a4, i64 %a5)
  store %"compiler/bindgen:ctype" %t14, ptr %l13
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l7, !tbaa !29
  %t16 = load %"compiler/bindgen:ctype", ptr %l13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2ePush_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t15, %"compiler/bindgen:ctype" %t16)
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/bindgen:gen", ptr %t17, i32 0, i32 16
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eLen_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l16
  br label %bb3
bb3:
  %t22 = load i64, ptr %l16, !tbaa !24
  %t23 = sub i64 %t22, 1
  store i64 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %lp5 = alloca ptr
  %l12 = alloca i1
  %l13 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l32 = alloca i1
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %l41 = alloca i1
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca { i64, ptr }
  %l48 = alloca i1
  %l49 = alloca i1
  %l51 = alloca i1
  %l52 = alloca i1
  %l54 = alloca i1
  %l56 = alloca { i64, ptr }
  %l58 = alloca i64
  %l60 = alloca ptr
  %l61 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t7 = icmp slt i64 %t1, %t4
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t9, ptr %l13, !tbaa !27
  %t10 = load i64, ptr %l4, !tbaa !24
  %t12 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 %t10
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = icmp eq i8 %t15, 95
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l12, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = add i64 %t22, 1
  store i64 %t24, ptr %l4, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t26 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t26, ptr %l20, !tbaa !27
  %t27 = load i64, ptr %l4, !tbaa !24
  store i64 %t27, ptr %l21, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t28, 0
  store i64 %t31, ptr %l24, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 0
  store i64 %t33, ptr %l25, !tbaa !24
  %t34 = load i64, ptr %l21, !tbaa !24
  %t35 = icmp sge i64 %t34, 0
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t37 = load i64, ptr %l21, !tbaa !24
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = icmp sle i64 %t37, %t38
  br i1 %t39, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_76a2c5c4ca94453d_57e44e0801590749)
  unreachable
bb12:
  %t41 = load i64, ptr %l24, !tbaa !24
  %t42 = load i64, ptr %l25, !tbaa !24
  %t43 = icmp sle i64 %t41, %t42
  br i1 %t43, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_76a2c5c4ca94453d_57e44e0801590749)
  unreachable
bb14:
  %t45 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = load i64, ptr %l21, !tbaa !24
  %t48 = load i64, ptr %l24, !tbaa !24
  %t49 = getelementptr i8, ptr %t46, i64 %t47
  %t50 = sub i64 %t48, %t47
  %t51 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t49, 1
  %t54 = extractvalue { i64, ptr } %t52, 1
  %t55 = extractvalue { i64, ptr } %t52, 0
  %t56 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t54, i64 %t55)
  %t57 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store ptr %t59, ptr %lp5
  %t61 = load ptr, ptr %lp5
  store { i64, ptr } %t58, ptr %t61, !tbaa !27
  %t62 = load ptr, ptr %lp5
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  %t65 = call i1 @compiler_2fbindgen_2eusable(ptr %v3, { i64, ptr } %t63)
  store i1 %t65, ptr %l32
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_76a2c5c4ca94453d_57e44e0801590749)
  unreachable
bb16:
  %t66 = load i1, ptr %l32, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb20
bb18:
  %t69 = load ptr, ptr %lp5
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l35, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  store i64 %t72, ptr %l36, !tbaa !24
  %t73 = load i64, ptr %l36, !tbaa !24
  %t74 = mul i64 %t73, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t74)
  %t76 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  store { i64, ptr } %t77, ptr %l37, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = load i64, ptr %l36, !tbaa !24
  %t83 = mul i64 %t82, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t79, ptr %t81, i64 %t83, i1 false)
  %t84 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t87 = getelementptr %"compiler/bindgen:gen", ptr %a0, i32 0, i32 21
  %t91 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %s0, ptr %t87, { i64, ptr } %t84)
  store i1 %t91, ptr %l41
  br label %bb19
bb19:
  %t92 = load i1, ptr %l41, !tbaa !21
  store i1 %t92, ptr %l34, !tbaa !21
  br label %bb20
bb20:
  %t93 = load i1, ptr %l34, !tbaa !21
  br i1 %t93, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb24
bb22:
  %t94 = load ptr, ptr %lp5
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !27
  store { i64, ptr } %t95, ptr %l43, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 0
  store i64 %t97, ptr %l44, !tbaa !24
  %t98 = load i64, ptr %l44, !tbaa !24
  %t99 = mul i64 %t98, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t99)
  %t101 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  store { i64, ptr } %t102, ptr %l45, !tbaa !27
  %t103 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = load i64, ptr %l44, !tbaa !24
  %t108 = mul i64 %t107, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t104, ptr %t106, i64 %t108, i1 false)
  %t109 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t110 = load ptr, ptr %l3, !tbaa !29
  %t114 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v2, ptr %s0, ptr %t110, { i64, ptr } %t109)
  store i1 %t114, ptr %l48
  br label %bb23
bb23:
  %t115 = load i1, ptr %l48, !tbaa !21
  store i1 %t115, ptr %l42, !tbaa !21
  br label %bb24
bb24:
  %t116 = load i1, ptr %l42, !tbaa !21
  br i1 %t116, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb28
bb26:
  %t117 = load ptr, ptr %lp5
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  %t120 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t118, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d113, i32 0, i32 1) })
  store i1 %t120, ptr %l51
  br label %bb27
bb27:
  %t121 = load i1, ptr %l51, !tbaa !21
  store i1 %t121, ptr %l49, !tbaa !21
  br label %bb28
bb28:
  %t122 = load i1, ptr %l49, !tbaa !21
  br i1 %t122, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb32
bb30:
  %t123 = load ptr, ptr %lp5
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  %t126 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t124, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d114, i32 0, i32 1) })
  store i1 %t126, ptr %l54
  br label %bb31
bb31:
  %t127 = load i1, ptr %l54, !tbaa !21
  store i1 %t127, ptr %l52, !tbaa !21
  br label %bb32
bb32:
  %t128 = load i1, ptr %l52, !tbaa !21
  br i1 %t128, label %bb33, label %bb34
bb33:
  %t130 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t131 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t133 = call i64 @__olang_fmt_i64(ptr null, i64 %a2)
  %t134 = add i64 %t131, %t133
  %t135 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t134)
  call void @olang_textcopy(ptr %t135, ptr %t130, i64 %t131)
  %t136 = getelementptr i8, ptr %t135, i64 %t131
  %t137 = call i64 @__olang_fmt_i64(ptr %t136, i64 %a2)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t135, 1
  store { i64, ptr } %t139, ptr %l56, !tbaa !27
  %t140 = load ptr, ptr %lp5
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 0
  %t143 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 0
  store i64 %t144, ptr %l58, !tbaa !24
  %t146 = load i64, ptr %l58, !tbaa !24
  %t147 = icmp eq i64 %t142, %t146
  br i1 %t147, label %bb35, label %bb36
bb34:
  br label %bb38
bb35:
  %t149 = load ptr, ptr %lp5
  %t150 = getelementptr { i64, ptr }, ptr %t149, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = load i64, ptr %l58, !tbaa !24
  %t155 = mul i64 %t154, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t151, ptr %t153, i64 %t155, i1 false)
  br label %bb37
bb36:
  %t156 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t157 = load ptr, ptr %lp5
  store { i64, ptr } %t156, ptr %t157, !tbaa !27
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t158 = load ptr, ptr %l3, !tbaa !29
  store ptr %t158, ptr %l60, !tbaa !29
  %t159 = ptrtoint ptr %v2 to i64
  store i64 %t159, ptr %l61, !tbaa !24
  %t160 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t160, label %bb39, label %bb40
bb39:
  %t162 = call ptr @__olang_region_make(ptr %v2)
  %t163 = ptrtoint ptr %t162 to i64
  store i64 %t163, ptr %l61, !tbaa !24
  br label %bb40
bb40:
  %t164 = load ptr, ptr %lp5
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t165, 1
  %t168 = extractvalue { i64, ptr } %t165, 0
  %t169 = load i64, ptr %l61
  %t170 = inttoptr i64 %t169 to ptr
  %t171 = call ptr @__olang_scope_alloc(ptr %t170, i64 %t168)
  call void @olang_textcopy(ptr %t171, ptr %t167, i64 %t168)
  %t172 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  %t175 = load i64, ptr %l61
  %t176 = inttoptr i64 %t175 to ptr
  %t177 = extractvalue { i64, ptr } %t173, 0
  %t178 = extractvalue { i64, ptr } %t173, 1
  %t179 = mul i64 %t177, 1
  %t180 = call ptr @__olang_scope_alloc(ptr %t176, i64 %t179)
  call void @llvm.memcpy.p0.p0.i64(ptr %t180, ptr %t178, i64 %t179, i1 false)
  %t181 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  %t183 = load ptr, ptr %l60, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v2, ptr %v2, ptr %t183, { i64, ptr } %t182, i64 0)
  br label %bb41
bb41:
  %t185 = load ptr, ptr %lp5
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t186, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t41, ptr %v0, ptr %l24)
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
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t59, ptr %v0, ptr %l36)
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

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eplain(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l22 = alloca %"compiler/bindgen:record"
  %l24 = alloca %"compiler/bindgen:record"
  %l36 = alloca ptr
  %l42 = alloca %"compiler/bindgen:record"
  %l44 = alloca %"compiler/bindgen:record"
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca i64
  %l54 = alloca i64
  %l58 = alloca ptr
  %l65 = alloca %"compiler/bindgen:record"
  %l67 = alloca %"compiler/bindgen:record"
  %l69 = alloca i1
  %l73 = alloca %"compiler/bindgen:record"
  %l75 = alloca %"compiler/bindgen:record"
  %l78 = alloca i1
  %l82 = alloca %"compiler/bindgen:record"
  %l84 = alloca %"compiler/bindgen:record"
  %l87 = alloca i1
  %l91 = alloca %"compiler/bindgen:record"
  %l93 = alloca %"compiler/bindgen:record"
  %l100 = alloca %"compiler/bindgen:record"
  %l102 = alloca %"compiler/bindgen:record"
  %l104 = alloca i64
  %l106 = alloca i64
  %l112 = alloca { i64, ptr }
  %l116 = alloca %"compiler/bindgen:record"
  %l118 = alloca %"compiler/bindgen:record"
  %l121 = alloca { i64, ptr }
  %l122 = alloca i1
  %l125 = alloca i64
  %l129 = alloca %"compiler/bindgen:ctype"
  %l135 = alloca %"compiler/bindgen:ctype"
  %l137 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l141 = alloca i32
  %l143 = alloca i1
  %l148 = alloca i64
  %l152 = alloca ptr
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i1
  %t5 = alloca %"compiler/bindgen:record", align 8
  %t8 = alloca %"compiler/bindgen:record", align 8
  %t42 = alloca %"compiler/bindgen:record", align 8
  %t45 = alloca %"compiler/bindgen:record", align 8
  %t84 = alloca %"compiler/bindgen:record", align 8
  %t87 = alloca %"compiler/bindgen:record", align 8
  %t96 = alloca %"compiler/bindgen:record", align 8
  %t99 = alloca %"compiler/bindgen:record", align 8
  %t111 = alloca %"compiler/bindgen:record", align 8
  %t114 = alloca %"compiler/bindgen:record", align 8
  %t126 = alloca %"compiler/bindgen:record", align 8
  %t129 = alloca %"compiler/bindgen:record", align 8
  %t143 = alloca %"compiler/bindgen:record", align 8
  %t146 = alloca %"compiler/bindgen:record", align 8
  %t172 = alloca %"compiler/bindgen:record", align 8
  %t175 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t5, ptr %v0, ptr %s0, ptr %t3, i64 %t4)
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %t5, i64 216, i1 false)
  br label %bb1
bb1:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t8, ptr %s0, ptr %l22)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t8, i64 216, i1 false)
  br label %bb2
bb2:
  %t10 = getelementptr %"compiler/bindgen:record", ptr %l24, i32 0, i32 9
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp eq i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t20 = icmp sge i64 %t18, 1
  br i1 %t20, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load i64, ptr %l1, !tbaa !24
  store i64 2, ptr %l4, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/bindgen:gen", ptr %t25, i32 0, i32 5
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t27, i64 %t23)
  store ptr %t31, ptr %l36
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l36, !tbaa !29
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = getelementptr %"compiler/bindgen:record", ptr %t32, i32 0, i32 9
  store i64 %t34, ptr %t37, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/bindgen:gen", ptr %t38, i32 0, i32 5
  %t41 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t42, ptr %v0, ptr %s0, ptr %t40, i64 %t41)
  call void @llvm.memmove.p0.p0.i64(ptr %l42, ptr %t42, i64 216, i1 false)
  br label %bb10
bb10:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t45, ptr %s0, ptr %l42)
  call void @llvm.memmove.p0.p0.i64(ptr %l44, ptr %t45, i64 216, i1 false)
  br label %bb11
bb11:
  %t47 = getelementptr %"compiler/bindgen:record", ptr %l44, i32 0, i32 15
  %t48 = load i1, ptr %t47, !tbaa !21
  br i1 %t48, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i64, ptr %l1, !tbaa !24
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epackedFields(ptr %v0, ptr %s3, ptr %t50, i64 %t51)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l48
  br label %bb14
bb13:
  br label %bb20
bb14:
  %t56 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s3, ptr %l48)
  store i64 %t56, ptr %l50
  br label %bb15
bb15:
  %t57 = load i64, ptr %l50, !tbaa !24
  %t58 = icmp sgt i64 %t57, 0
  store i1 %t58, ptr %l6, !tbaa !21
  %t60 = load i64, ptr %l1, !tbaa !24
  store i64 %t60, ptr %l7, !tbaa !24
  %t62 = load i1, ptr %l6, !tbaa !21
  br i1 %t62, label %bb16, label %bb17
bb16:
  store i64 1, ptr %l54, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb18
bb18:
  %t64 = load i64, ptr %l54, !tbaa !24
  store i64 %t64, ptr %l8, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/bindgen:gen", ptr %t65, i32 0, i32 5
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t67, i64 %t68)
  store ptr %t71, ptr %l58
  br label %bb19
bb19:
  %t72 = load ptr, ptr %l58, !tbaa !29
  %t74 = load i64, ptr %l8, !tbaa !24
  %t77 = getelementptr %"compiler/bindgen:record", ptr %t72, i32 0, i32 9
  store i64 %t74, ptr %t77, !tbaa !24
  %t78 = load i1, ptr %l6, !tbaa !21
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 %t78, ptr %rv
  br label %ret
bb20:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/bindgen:gen", ptr %t80, i32 0, i32 5
  %t83 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t84, ptr %v0, ptr %s0, ptr %t82, i64 %t83)
  call void @llvm.memmove.p0.p0.i64(ptr %l65, ptr %t84, i64 216, i1 false)
  br label %bb21
bb21:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t87, ptr %s0, ptr %l65)
  call void @llvm.memmove.p0.p0.i64(ptr %l67, ptr %t87, i64 216, i1 false)
  br label %bb22
bb22:
  %t89 = getelementptr %"compiler/bindgen:record", ptr %l67, i32 0, i32 2
  %t90 = load i1, ptr %t89, !tbaa !21
  br i1 %t90, label %bb23, label %bb24
bb23:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/bindgen:gen", ptr %t92, i32 0, i32 5
  %t95 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t96, ptr %v0, ptr %s0, ptr %t94, i64 %t95)
  call void @llvm.memmove.p0.p0.i64(ptr %l73, ptr %t96, i64 216, i1 false)
  br label %bb25
bb24:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb27
bb25:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t99, ptr %s0, ptr %l73)
  call void @llvm.memmove.p0.p0.i64(ptr %l75, ptr %t99, i64 216, i1 false)
  br label %bb26
bb26:
  %t101 = getelementptr %"compiler/bindgen:record", ptr %l75, i32 0, i32 3
  %t102 = load i1, ptr %t101, !tbaa !21
  %t104 = xor i1 %t102, true
  store i1 %t104, ptr %l69, !tbaa !21
  br label %bb27
bb27:
  %t106 = load i1, ptr %l69, !tbaa !21
  br i1 %t106, label %bb28, label %bb29
bb28:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/bindgen:gen", ptr %t107, i32 0, i32 5
  %t110 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t111, ptr %v0, ptr %s0, ptr %t109, i64 %t110)
  call void @llvm.memmove.p0.p0.i64(ptr %l82, ptr %t111, i64 216, i1 false)
  br label %bb30
bb29:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb32
bb30:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t114, ptr %s0, ptr %l82)
  call void @llvm.memmove.p0.p0.i64(ptr %l84, ptr %t114, i64 216, i1 false)
  br label %bb31
bb31:
  %t116 = getelementptr %"compiler/bindgen:record", ptr %l84, i32 0, i32 1
  %t117 = load i1, ptr %t116, !tbaa !21
  %t119 = xor i1 %t117, true
  store i1 %t119, ptr %l78, !tbaa !21
  br label %bb32
bb32:
  %t121 = load i1, ptr %l78, !tbaa !21
  br i1 %t121, label %bb33, label %bb34
bb33:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/bindgen:gen", ptr %t122, i32 0, i32 5
  %t125 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t126, ptr %v0, ptr %s0, ptr %t124, i64 %t125)
  call void @llvm.memmove.p0.p0.i64(ptr %l91, ptr %t126, i64 216, i1 false)
  br label %bb35
bb34:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb37
bb35:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t129, ptr %s0, ptr %l91)
  call void @llvm.memmove.p0.p0.i64(ptr %l93, ptr %t129, i64 216, i1 false)
  br label %bb36
bb36:
  %t131 = getelementptr %"compiler/bindgen:record", ptr %l93, i32 0, i32 10
  %t132 = load i1, ptr %t131, !tbaa !21
  %t134 = xor i1 %t132, true
  store i1 %t134, ptr %l87, !tbaa !21
  br label %bb37
bb37:
  %t136 = load i1, ptr %l87, !tbaa !21
  store i1 %t136, ptr %l10, !tbaa !21
  %t137 = load i1, ptr %l10, !tbaa !21
  br i1 %t137, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s5
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/bindgen:gen", ptr %t139, i32 0, i32 5
  %t142 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t143, ptr %v0, ptr %v0, ptr %t141, i64 %t142)
  call void @llvm.memmove.p0.p0.i64(ptr %l100, ptr %t143, i64 216, i1 false)
  br label %bb40
bb39:
  br label %bb67
bb40:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t146, ptr %v0, ptr %l100)
  call void @llvm.memmove.p0.p0.i64(ptr %l102, ptr %t146, i64 216, i1 false)
  br label %bb41
bb41:
  %t148 = getelementptr %"compiler/bindgen:record", ptr %l102, i32 0, i32 5
  store ptr %t148, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb42
bb42:
  store %olang.scope zeroinitializer, ptr %s6
  %t150 = load i64, ptr %l12, !tbaa !24
  store i64 %t150, ptr %l104, !tbaa !24
  %t151 = load ptr, ptr %l11, !tbaa !29
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s5, ptr %t151)
  store i64 %t153, ptr %l106
  br label %bb43
bb43:
  %t154 = load i64, ptr %l104, !tbaa !24
  %t155 = load i64, ptr %l106, !tbaa !24
  %t156 = icmp slt i64 %t154, %t155
  %t158 = xor i1 %t156, true
  br i1 %t158, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s6)
  br label %bb66
bb45:
  br label %bb46
bb46:
  %t160 = load i64, ptr %l12, !tbaa !24
  store i64 %t160, ptr %l13, !tbaa !24
  %t162 = load ptr, ptr %l11, !tbaa !29
  %t163 = load i64, ptr %l12, !tbaa !24
  %t166 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s5, ptr %s5, ptr %t162, i64 %t163)
  store { i64, ptr } %t166, ptr %l112
  br label %bb47
bb47:
  %t167 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t167, ptr %l14, !tbaa !27
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/bindgen:gen", ptr %t168, i32 0, i32 5
  %t171 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t172, ptr %v0, ptr %v0, ptr %t170, i64 %t171)
  call void @llvm.memmove.p0.p0.i64(ptr %l116, ptr %t172, i64 216, i1 false)
  br label %bb48
bb48:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t175, ptr %v0, ptr %l116)
  call void @llvm.memmove.p0.p0.i64(ptr %l118, ptr %t175, i64 216, i1 false)
  br label %bb49
bb49:
  %t177 = getelementptr %"compiler/bindgen:record", ptr %l118, i32 0, i32 4
  %t178 = load i64, ptr %l13, !tbaa !24
  %t181 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s6, ptr %t177, i64 %t178)
  store { i64, ptr } %t181, ptr %l121
  br label %bb50
bb50:
  %t182 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t183 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s6, { i64, ptr } %t182, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d116, i32 0, i32 1) })
  store i1 %t183, ptr %l122
  br label %bb51
bb51:
  %t184 = load i1, ptr %l122, !tbaa !21
  br i1 %t184, label %bb52, label %bb53
bb52:
  store i1 false, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s6)
  br label %bb66
bb53:
  br label %bb54
bb54:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t189 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %s5, ptr %t185, { i64, ptr } %t186, i64 0)
  store i64 %t189, ptr %l125
  br label %bb55
bb55:
  %t190 = load i64, ptr %l125, !tbaa !24
  store i64 %t190, ptr %l15, !tbaa !24
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/bindgen:gen", ptr %t191, i32 0, i32 16
  %t194 = load i64, ptr %l15, !tbaa !24
  %t197 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s6, ptr %t193, i64 %t194)
  store %"compiler/bindgen:ctype" %t197, ptr %l129
  br label %bb56
bb56:
  %t198 = getelementptr %"compiler/bindgen:ctype", ptr %l129, i32 0, i32 0
  %t199 = load i32, ptr %t198, !range !{i32 0, i32 7}
  %t201 = trunc i64 4 to i32
  %t202 = icmp eq i32 %t199, %t201
  br i1 %t202, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s8
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/bindgen:gen", ptr %t204, i32 0, i32 16
  %t207 = load i64, ptr %l15, !tbaa !24
  %t210 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s8, ptr %t206, i64 %t207)
  store %"compiler/bindgen:ctype" %t210, ptr %l135
  br label %bb59
bb58:
  br label %bb60
bb59:
  %t211 = getelementptr %"compiler/bindgen:ctype", ptr %l135, i32 0, i32 2
  %t212 = load i64, ptr %t211, !tbaa !24
  store i64 %t212, ptr %l15, !tbaa !24
  call void @__olang_scope_close(ptr %s8)
  br label %bb60
bb60:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load i64, ptr %l15, !tbaa !24
  %t218 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efieldType(ptr %v0, ptr %s6, ptr %t214, i64 %t215)
  %t219 = extractvalue { i32, { i64, ptr } } %t218, 1
  %t220 = extractvalue { i32, { i64, ptr } } %t218, 0
  store i32 %t220, ptr %l141
  %t221 = icmp ne i32 %t220, 0
  br i1 %t221, label %bb62, label %ok.222, !prof !99
ok.222:
  store { i64, ptr } %t219, ptr %l140
  br label %bb61
bb61:
  %t223 = load { i64, ptr }, ptr %l140, !tbaa !27
  store { i64, ptr } %t223, ptr %l137, !tbaa !27
  br label %bb64
bb62:
  %t224 = load i32, ptr %l141, !tbaa !23
  %t225 = ashr i32 %t224, 16
  %t227 = icmp eq i32 %t225, 1
  store i1 %t227, ptr %l143, !tbaa !21
  br label %bb63
bb63:
  store i1 false, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s6)
  br label %bb66
bb64:
  call void @__olang_scope_close(ptr %s6)
  br label %bb65
bb65:
  %t228 = load i64, ptr %l12, !tbaa !24
  %t230 = add i64 %t228, 1
  store i64 %t230, ptr %l12, !tbaa !24
  br label %bb42
bb66:
  call void @__olang_scope_close(ptr %s5)
  br label %bb67
bb67:
  %t232 = load i64, ptr %l1, !tbaa !24
  store i64 %t232, ptr %l16, !tbaa !24
  %t234 = load i1, ptr %l10, !tbaa !21
  br i1 %t234, label %bb68, label %bb69
bb68:
  store i64 1, ptr %l148, !tbaa !24
  br label %bb70
bb69:
  store i64 0, ptr %l148, !tbaa !24
  br label %bb70
bb70:
  %t236 = load i64, ptr %l148, !tbaa !24
  store i64 %t236, ptr %l17, !tbaa !24
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/bindgen:gen", ptr %t237, i32 0, i32 5
  %t240 = load i64, ptr %l16, !tbaa !24
  %t243 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t239, i64 %t240)
  store ptr %t243, ptr %l152
  br label %bb71
bb71:
  %t244 = load ptr, ptr %l152, !tbaa !29
  %t246 = load i64, ptr %l17, !tbaa !24
  %t249 = getelementptr %"compiler/bindgen:record", ptr %t244, i32 0, i32 9
  store i64 %t246, ptr %t249, !tbaa !24
  %t250 = load i1, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t250, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ereadMacros(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
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
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca { i64, ptr }
  %l36 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l38 = alloca %"std/prelude/text:LineIter"
  %l39 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i32
  %l44 = alloca i1
  %l46 = alloca i1
  %l47 = alloca i1
  %l51 = alloca i1
  %l52 = alloca { i64, ptr }
  %l54 = alloca i1
  %l55 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i32
  %l62 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i32
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
  %l87 = alloca i64
  %l90 = alloca i1
  %l92 = alloca i1
  %l95 = alloca i1
  %l97 = alloca i1
  %l98 = alloca { i64, ptr }
  %l99 = alloca i64
  %l100 = alloca { i64, ptr }
  %l103 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i64
  %l111 = alloca ptr
  %l112 = alloca i64
  %l118 = alloca i1
  %l119 = alloca i1
  %l122 = alloca i1
  %l124 = alloca i1
  %l125 = alloca { i64, ptr }
  %l128 = alloca i64
  %l129 = alloca i64
  %l134 = alloca { i64, ptr }
  %l135 = alloca i64
  %l139 = alloca i64
  %l140 = alloca i32
  %l147 = alloca ptr
  %l148 = alloca ptr
  %l150 = alloca { i64, ptr }
  %l153 = alloca i1
  %l155 = alloca { i64, ptr }
  %l158 = alloca i64
  %l159 = alloca i64
  %l168 = alloca i1
  %l169 = alloca { i64, ptr }
  %l172 = alloca i1
  %l173 = alloca i1
  %l174 = alloca { i64, ptr }
  %l177 = alloca i1
  %l178 = alloca i1
  %l179 = alloca { i64, ptr }
  %l188 = alloca { i64, ptr }
  %l189 = alloca i64
  %l190 = alloca i64
  %l199 = alloca i1
  %l200 = alloca { i64, ptr }
  %l204 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l206 = alloca { i64, ptr }
  %l207 = alloca i64
  %l210 = alloca i64
  %l211 = alloca i64
  %l217 = alloca i64
  %l220 = alloca i64
  %l221 = alloca i32
  %l224 = alloca { i64, ptr }
  %l226 = alloca i64
  %l227 = alloca i64
  %l228 = alloca i64
  %l233 = alloca { i64, ptr }
  %l240 = alloca { i64, ptr }
  %l244 = alloca { i64, ptr }
  %l246 = alloca i1
  %l247 = alloca i1
  %l249 = alloca i1
  %l251 = alloca i1
  %l253 = alloca ptr
  %l254 = alloca i64
  %l261 = alloca { i64, ptr }
  %l263 = alloca i64
  %l266 = alloca i64
  %l267 = alloca i64
  %l272 = alloca i64
  %l276 = alloca { i64, ptr }
  %l277 = alloca i1
  %l278 = alloca i64
  %l281 = alloca { i64, ptr }
  %l282 = alloca i64
  %l285 = alloca ptr
  %l286 = alloca { i64, ptr }
  %l289 = alloca i1
  %l290 = alloca i1
  %l292 = alloca i1
  %l293 = alloca %"compiler/bindgen:cMacro"
  %l297 = alloca i64
  %l301 = alloca i64
  %l302 = alloca i32
  %l315 = alloca ptr
  %l316 = alloca i64
  %l320 = alloca { i64, ptr }
  %l323 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s21 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d117, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t1, ptr %l33, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t2, 0
  store i64 %t3, ptr %l34, !tbaa !24
  %t4 = load i64, ptr %l34, !tbaa !24
  %t5 = mul i64 %t4, 1
  %t6 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t5)
  %t7 = insertvalue { i64, ptr } undef, i64 %t4, 0
  %t8 = insertvalue { i64, ptr } %t7, ptr %t6, 1
  store { i64, ptr } %t8, ptr %l35, !tbaa !27
  %t9 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = load i64, ptr %l34, !tbaa !24
  %t14 = mul i64 %t13, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t10, ptr %t12, i64 %t14, i1 false)
  %t15 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t16 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t16, ptr %l36
  br label %bb1
bb1:
  %t17 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t17, ptr %l6
  %t20 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v1, ptr %v1, { i64, ptr } %a1)
  store %"std/prelude/text:LineIter" %t20, ptr %l38
  br label %bb2
bb2:
  %t21 = load %"std/prelude/text:LineIter", ptr %l38
  store %"std/prelude/text:LineIter" %t21, ptr %l7
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t23 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v1, ptr %v1, ptr %l7)
  %t24 = extractvalue { i32, { i64, ptr } } %t23, 1
  %t25 = extractvalue { i32, { i64, ptr } } %t23, 0
  store i32 %t25, ptr %l42
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb5, label %ok.27, !prof !99
ok.27:
  store { i64, ptr } %t24, ptr %l41
  br label %bb4
bb4:
  %t28 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t28, ptr %l39, !tbaa !27
  br label %bb7
bb5:
  %t29 = load i32, ptr %l42, !tbaa !23
  %t30 = ashr i32 %t29, 16
  %t32 = icmp eq i32 %t30, 1
  store i1 %t32, ptr %l44, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb210
bb7:
  %t33 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t33, ptr %l8, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t34, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d118, i32 0, i32 1) })
  store i1 %t36, ptr %l46
  br label %bb8
bb8:
  %t37 = load i1, ptr %l46, !tbaa !21
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t38 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t42 = icmp sgt i64 %t40, 2
  store i1 %t42, ptr %l47, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb11
bb11:
  %t44 = load i1, ptr %l47, !tbaa !21
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t45 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t45, ptr %l52, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i8, ptr %t47, i64 2
  %t49 = load i8, ptr %t48, !tbaa !32
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t49)
  store i1 %t51, ptr %l54
  br label %bb14
bb13:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb15
bb14:
  %t52 = load i1, ptr %l54, !tbaa !21
  store i1 %t52, ptr %l51, !tbaa !21
  br label %bb15
bb15:
  %t53 = load i1, ptr %l51, !tbaa !21
  br i1 %t53, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t54 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t57 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t54, i8 34)
  %t58 = extractvalue { i32, i64 } %t57, 1
  %t59 = extractvalue { i32, i64 } %t57, 0
  store i32 %t59, ptr %l59
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb19, label %ok.61, !prof !99
ok.61:
  store i64 %t58, ptr %l58
  br label %bb18
bb17:
  br label %bb60
bb18:
  %t62 = load i64, ptr %l58, !tbaa !24
  store i64 %t62, ptr %l55, !tbaa !24
  br label %bb21
bb19:
  br label %bb20
bb20:
  store i64 -1, ptr %l55, !tbaa !24
  br label %bb21
bb21:
  %t63 = load i64, ptr %l55, !tbaa !24
  store i64 %t63, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l9, !tbaa !24
  %t66 = icmp slt i64 %t64, 0
  br i1 %t66, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb23:
  br label %bb24
bb24:
  %t68 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t70 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v1, ptr %s3, { i64, ptr } %t68, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) })
  %t71 = extractvalue { i32, i64 } %t70, 1
  %t72 = extractvalue { i32, i64 } %t70, 0
  store i32 %t72, ptr %l65
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb26, label %ok.74, !prof !99
ok.74:
  store i64 %t71, ptr %l64
  br label %bb25
bb25:
  %t75 = load i64, ptr %l64, !tbaa !24
  store i64 %t75, ptr %l62, !tbaa !24
  br label %bb28
bb26:
  br label %bb27
bb27:
  store i64 -1, ptr %l62, !tbaa !24
  br label %bb28
bb28:
  %t76 = load i64, ptr %l62, !tbaa !24
  store i64 %t76, ptr %l10, !tbaa !24
  %t77 = load i64, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l9, !tbaa !24
  %t81 = icmp sle i64 %t77, %t78
  br i1 %t81, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb30:
  br label %bb31
bb31:
  %t83 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t83, ptr %l69, !tbaa !27
  %t84 = load i64, ptr %l9, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l71, !tbaa !24
  %t87 = load i64, ptr %l10, !tbaa !24
  store i64 %t87, ptr %l72, !tbaa !24
  %t88 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 0
  store i64 %t89, ptr %l73, !tbaa !24
  %t90 = load i64, ptr %l71, !tbaa !24
  %t91 = icmp sge i64 %t90, 0
  br i1 %t91, label %bb32, label %bb33
bb32:
  %t93 = load i64, ptr %l71, !tbaa !24
  %t94 = load i64, ptr %l72, !tbaa !24
  %t95 = icmp sle i64 %t93, %t94
  br i1 %t95, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_beacd36cd332827c_e461632e30adb8c0)
  unreachable
bb34:
  %t97 = load i64, ptr %l72, !tbaa !24
  %t98 = load i64, ptr %l73, !tbaa !24
  %t99 = icmp sle i64 %t97, %t98
  br i1 %t99, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_beacd36cd332827c_e461632e30adb8c0)
  unreachable
bb36:
  %t101 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = load i64, ptr %l71, !tbaa !24
  %t104 = load i64, ptr %l72, !tbaa !24
  %t105 = getelementptr i8, ptr %t102, i64 %t103
  %t106 = sub i64 %t104, %t103
  %t107 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t105, 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d120, i32 0, i32 1) }, ptr %l79, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, ptr %l80, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t112 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t113 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t108, { i64, ptr } %t111, { i64, ptr } %t112)
  store { i64, ptr } %t113, ptr %l81
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_beacd36cd332827c_e461632e30adb8c0)
  unreachable
bb38:
  %t114 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 0
  store i64 %t115, ptr %l82, !tbaa !24
  %t116 = load i64, ptr %l82, !tbaa !24
  %t117 = mul i64 %t116, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t117)
  %t119 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  store { i64, ptr } %t120, ptr %l83, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = load i64, ptr %l82, !tbaa !24
  %t126 = mul i64 %t125, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t122, ptr %t124, i64 %t126, i1 false)
  %t127 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t127, 1
  %t130 = extractvalue { i64, ptr } %t127, 0
  %t131 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t130)
  call void @olang_textcopy(ptr %t131, ptr %t129, i64 %t130)
  %t132 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  store { i64, ptr } %t133, ptr %l85, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 0
  %t136 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 0
  store i64 %t137, ptr %l87, !tbaa !24
  %t139 = load i64, ptr %l87, !tbaa !24
  %t140 = icmp eq i64 %t135, %t139
  br i1 %t140, label %bb39, label %bb40
bb39:
  %t142 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = load i64, ptr %l87, !tbaa !24
  %t147 = mul i64 %t146, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t143, ptr %t145, i64 %t147, i1 false)
  br label %bb41
bb40:
  %t148 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t148, ptr %l5, !tbaa !27
  br label %bb41
bb41:
  %t149 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t151 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s3, { i64, ptr } %t149, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) })
  store i1 %t151, ptr %l90
  br label %bb42
bb42:
  %t152 = load i1, ptr %l90, !tbaa !21
  %t153 = xor i1 %t152, true
  br i1 %t153, label %bb43, label %bb44
bb43:
  %t155 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t156 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t159 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v2, { i64, ptr } %t155, { i64, ptr } %t156)
  store i1 %t159, ptr %l95
  br label %bb45
bb44:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb46
bb45:
  %t160 = load i1, ptr %l95, !tbaa !21
  %t161 = xor i1 %t160, true
  store i1 %t161, ptr %l92, !tbaa !21
  br label %bb46
bb46:
  %t163 = load i1, ptr %l92, !tbaa !21
  br i1 %t163, label %bb47, label %bb48
bb47:
  %t164 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t164, ptr %l98, !tbaa !27
  %t165 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 0
  store i64 %t166, ptr %l99, !tbaa !24
  %t167 = load i64, ptr %l99, !tbaa !24
  %t168 = mul i64 %t167, 1
  %t169 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t168)
  %t170 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  store { i64, ptr } %t171, ptr %l100, !tbaa !27
  %t172 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = load i64, ptr %l99, !tbaa !24
  %t177 = mul i64 %t176, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t173, ptr %t175, i64 %t177, i1 false)
  %t178 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t182 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %s0, ptr %s3, ptr %l6, { i64, ptr } %t178)
  store i1 %t182, ptr %l103
  br label %bb49
bb48:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb50
bb49:
  %t183 = load i1, ptr %l103, !tbaa !21
  %t184 = xor i1 %t183, true
  store i1 %t184, ptr %l97, !tbaa !21
  br label %bb50
bb50:
  %t186 = load i1, ptr %l97, !tbaa !21
  br i1 %t186, label %bb51, label %bb52
bb51:
  store ptr %l6, ptr %l105, !tbaa !29
  %t187 = ptrtoint ptr %s0 to i64
  store i64 %t187, ptr %l106, !tbaa !24
  %t188 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0
  br i1 %t188, label %bb53, label %bb54
bb52:
  br label %bb59
bb53:
  %t190 = call ptr @__olang_region_make(ptr %s0)
  %t191 = ptrtoint ptr %t190 to i64
  store i64 %t191, ptr %l106, !tbaa !24
  br label %bb54
bb54:
  %t192 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t192, 1
  %t195 = extractvalue { i64, ptr } %t192, 0
  %t196 = load i64, ptr %l106
  %t197 = inttoptr i64 %t196 to ptr
  %t198 = call ptr @__olang_scope_alloc(ptr %t197, i64 %t195)
  call void @olang_textcopy(ptr %t198, ptr %t194, i64 %t195)
  %t199 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  %t202 = load i64, ptr %l106
  %t203 = inttoptr i64 %t202 to ptr
  %t204 = extractvalue { i64, ptr } %t200, 0
  %t205 = extractvalue { i64, ptr } %t200, 1
  %t206 = mul i64 %t204, 1
  %t207 = call ptr @__olang_scope_alloc(ptr %t203, i64 %t206)
  call void @llvm.memcpy.p0.p0.i64(ptr %t207, ptr %t205, i64 %t206, i1 false)
  %t208 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  %t210 = load ptr, ptr %l105, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %s0, ptr %s0, ptr %t210, { i64, ptr } %t209, i1 true)
  br label %bb55
bb55:
  store ptr %a4, ptr %l111, !tbaa !29
  %t213 = ptrtoint ptr %v4 to i64
  store i64 %t213, ptr %l112, !tbaa !24
  %t214 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t214, label %bb56, label %bb57
bb56:
  %t216 = call ptr @__olang_region_make(ptr %v4)
  %t217 = ptrtoint ptr %t216 to i64
  store i64 %t217, ptr %l112, !tbaa !24
  br label %bb57
bb57:
  %t218 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t218, 1
  %t221 = extractvalue { i64, ptr } %t218, 0
  %t222 = load i64, ptr %l112
  %t223 = inttoptr i64 %t222 to ptr
  %t224 = call ptr @__olang_scope_alloc(ptr %t223, i64 %t221)
  call void @olang_textcopy(ptr %t224, ptr %t220, i64 %t221)
  %t225 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t224, 1
  %t228 = load i64, ptr %l112
  %t229 = inttoptr i64 %t228 to ptr
  %t230 = extractvalue { i64, ptr } %t226, 0
  %t231 = extractvalue { i64, ptr } %t226, 1
  %t232 = mul i64 %t230, 1
  %t233 = call ptr @__olang_scope_alloc(ptr %t229, i64 %t232)
  call void @llvm.memcpy.p0.p0.i64(ptr %t233, ptr %t231, i64 %t232, i1 false)
  %t234 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t233, 1
  %t236 = load ptr, ptr %l111, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t236, { i64, ptr } %t235)
  br label %bb58
bb58:
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb60:
  %t238 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t240 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s2, { i64, ptr } %t238, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) })
  store i1 %t240, ptr %l118
  br label %bb61
bb61:
  %t241 = load i1, ptr %l118, !tbaa !21
  br i1 %t241, label %bb62, label %bb63
bb62:
  store i1 true, ptr %l119, !tbaa !21
  br label %bb65
bb63:
  %t242 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t243 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v2, { i64, ptr } %t242, { i64, ptr } %t243)
  store i1 %t246, ptr %l122
  br label %bb64
bb64:
  %t247 = load i1, ptr %l122, !tbaa !21
  store i1 %t247, ptr %l119, !tbaa !21
  br label %bb65
bb65:
  %t248 = load i1, ptr %l119, !tbaa !21
  br i1 %t248, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb67:
  br label %bb68
bb68:
  %t249 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t251 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t249, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d124, i32 0, i32 1) })
  store i1 %t251, ptr %l124
  br label %bb69
bb69:
  %t252 = load i1, ptr %l124, !tbaa !21
  br i1 %t252, label %bb70, label %bb71
bb70:
  %t253 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t253, ptr %l125, !tbaa !27
  %t254 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t254, 0
  store i64 %t257, ptr %l128, !tbaa !24
  %t258 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 0
  store i64 %t259, ptr %l129, !tbaa !24
  %t260 = icmp sge i64 7, 0
  br i1 %t260, label %bb72, label %bb73
bb71:
  br label %bb89
bb72:
  %t262 = load i64, ptr %l128, !tbaa !24
  %t263 = icmp sle i64 7, %t262
  br i1 %t263, label %bb74, label %bb75
bb73:
  call void @__olang_check_failed(ptr @olang_loc_88bbbdba37ecb069_7556c3a5c9bf841d)
  unreachable
bb74:
  %t265 = load i64, ptr %l128, !tbaa !24
  %t266 = load i64, ptr %l129, !tbaa !24
  %t267 = icmp sle i64 %t265, %t266
  br i1 %t267, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_88bbbdba37ecb069_7556c3a5c9bf841d)
  unreachable
bb76:
  %t269 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = load i64, ptr %l128, !tbaa !24
  %t272 = getelementptr i8, ptr %t270, i64 7
  %t273 = sub i64 %t271, 7
  %t274 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr %t272, 1
  %t277 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v1, ptr %v1, { i64, ptr } %t275)
  store { i64, ptr } %t277, ptr %l134
  br label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_88bbbdba37ecb069_7556c3a5c9bf841d)
  unreachable
bb78:
  %t278 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/bindgen:gen", ptr %t279, i32 0, i32 13
  %t285 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t281, { i64, ptr } %t278)
  %t286 = extractvalue { i32, i64 } %t285, 1
  %t287 = extractvalue { i32, i64 } %t285, 0
  store i32 %t287, ptr %l140
  %t288 = icmp ne i32 %t287, 0
  br i1 %t288, label %bb80, label %ok.289, !prof !99
ok.289:
  store i64 %t286, ptr %l139
  br label %bb79
bb79:
  %t290 = load i64, ptr %l139, !tbaa !24
  store i64 %t290, ptr %l135, !tbaa !24
  br label %bb82
bb80:
  br label %bb81
bb81:
  store i64 -1, ptr %l135, !tbaa !24
  br label %bb82
bb82:
  %t291 = load i64, ptr %l135, !tbaa !24
  store i64 %t291, ptr %l13, !tbaa !24
  %t292 = load i64, ptr %l13, !tbaa !24
  %t294 = icmp sge i64 %t292, 0
  br i1 %t294, label %bb83, label %bb84
bb83:
  %t296 = load i64, ptr %l13, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d125, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/bindgen:gen", ptr %t298, i32 0, i32 12
  %t304 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eRefMu_H9d4ce036ca8f6276b6798968f53e8eb9(ptr %v0, ptr %v0, ptr %t300, i64 %t296)
  store ptr %t304, ptr %l147
  br label %bb85
bb84:
  br label %bb88
bb85:
  %t305 = load ptr, ptr %l147, !tbaa !29
  store ptr %t305, ptr %l148, !tbaa !29
  %t307 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t308 = load ptr, ptr %l148, !tbaa !29
  %t309 = getelementptr %"compiler/bindgen:cMacro", ptr %t308, i32 0, i32 0
  %t310 = load { i64, ptr }, ptr %t309, !tbaa !27
  store { i64, ptr } %t310, ptr %l150, !tbaa !27
  %t312 = load ptr, ptr %l148, !tbaa !29
  %t313 = getelementptr %"compiler/bindgen:cMacro", ptr %t312, i32 0, i32 0
  store { i64, ptr } %t307, ptr %t313, !tbaa !27
  %t314 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acMacro_2e0
  br i1 %t314, label %bb86, label %bb87
bb86:
  %t316 = load { i64, ptr }, ptr %l150
  %t317 = extractvalue { i64, ptr } %t316, 1
  call void @__olang_region_release(ptr %t317)
  store { i64, ptr } zeroinitializer, ptr %l150
  br label %bb87
bb87:
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb89:
  %t318 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t320 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t318, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d126, i32 0, i32 1) })
  store i1 %t320, ptr %l153
  br label %bb90
bb90:
  %t321 = load i1, ptr %l153, !tbaa !21
  %t322 = xor i1 %t321, true
  br i1 %t322, label %bb91, label %bb92
bb91:
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb92:
  br label %bb93
bb93:
  %t324 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t324, ptr %l155, !tbaa !27
  %t325 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t328 = extractvalue { i64, ptr } %t325, 0
  store i64 %t328, ptr %l158, !tbaa !24
  %t329 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 0
  store i64 %t330, ptr %l159, !tbaa !24
  %t331 = icmp sge i64 8, 0
  br i1 %t331, label %bb94, label %bb95
bb94:
  %t333 = load i64, ptr %l158, !tbaa !24
  %t334 = icmp sle i64 8, %t333
  br i1 %t334, label %bb96, label %bb97
bb95:
  call void @__olang_check_failed(ptr @olang_loc_a6c60cdff876254a_2c918d2d7b99843e)
  unreachable
bb96:
  %t336 = load i64, ptr %l158, !tbaa !24
  %t337 = load i64, ptr %l159, !tbaa !24
  %t338 = icmp sle i64 %t336, %t337
  br i1 %t338, label %bb98, label %bb99
bb97:
  call void @__olang_check_failed(ptr @olang_loc_a6c60cdff876254a_2c918d2d7b99843e)
  unreachable
bb98:
  %t340 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t341 = load ptr, ptr %t340, !tbaa !27
  %t342 = load i64, ptr %l158, !tbaa !24
  %t343 = getelementptr i8, ptr %t341, i64 8
  %t344 = sub i64 %t342, 8
  %t345 = insertvalue { i64, ptr } undef, i64 %t344, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t343, 1
  store { i64, ptr } %t346, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  br label %bb100
bb99:
  call void @__olang_check_failed(ptr @olang_loc_a6c60cdff876254a_2c918d2d7b99843e)
  unreachable
bb100:
  %t348 = load i64, ptr %l18, !tbaa !24
  %t349 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t351 = extractvalue { i64, ptr } %t349, 0
  %t354 = icmp slt i64 %t348, %t351
  br i1 %t354, label %bb101, label %bb102
bb101:
  %t356 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t356, ptr %l169, !tbaa !27
  %t357 = load i64, ptr %l18, !tbaa !24
  %t359 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !27
  %t361 = getelementptr i8, ptr %t360, i64 %t357
  %t362 = load i8, ptr %t361, !tbaa !32
  %t364 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t362)
  store i1 %t364, ptr %l172
  br label %bb103
bb102:
  store i1 false, ptr %l168, !tbaa !21
  br label %bb111
bb103:
  %t365 = load i1, ptr %l172, !tbaa !21
  br i1 %t365, label %bb104, label %bb105
bb104:
  store i1 true, ptr %l173, !tbaa !21
  br label %bb107
bb105:
  %t366 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t366, ptr %l174, !tbaa !27
  %t367 = load i64, ptr %l18, !tbaa !24
  %t369 = getelementptr { i64, ptr }, ptr %l174, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !27
  %t371 = getelementptr i8, ptr %t370, i64 %t367
  %t372 = load i8, ptr %t371, !tbaa !32
  %t374 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t372)
  store i1 %t374, ptr %l177
  br label %bb106
bb106:
  %t375 = load i1, ptr %l177, !tbaa !21
  store i1 %t375, ptr %l173, !tbaa !21
  br label %bb107
bb107:
  %t376 = load i1, ptr %l173, !tbaa !21
  br i1 %t376, label %bb108, label %bb109
bb108:
  store i1 true, ptr %l178, !tbaa !21
  br label %bb110
bb109:
  %t377 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t377, ptr %l179, !tbaa !27
  %t378 = load i64, ptr %l18, !tbaa !24
  %t380 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t381 = load ptr, ptr %t380, !tbaa !27
  %t382 = getelementptr i8, ptr %t381, i64 %t378
  %t383 = load i8, ptr %t382, !tbaa !32
  %t385 = icmp eq i8 %t383, 95
  store i1 %t385, ptr %l178, !tbaa !21
  br label %bb110
bb110:
  %t387 = load i1, ptr %l178, !tbaa !21
  store i1 %t387, ptr %l168, !tbaa !21
  br label %bb111
bb111:
  %t388 = load i1, ptr %l168, !tbaa !21
  %t389 = xor i1 %t388, true
  br i1 %t389, label %bb112, label %bb113
bb112:
  br label %bb116
bb113:
  br label %bb114
bb114:
  %t391 = load i64, ptr %l18, !tbaa !24
  %t393 = add i64 %t391, 1
  store i64 %t393, ptr %l18, !tbaa !24
  br label %bb115
bb115:
  br label %bb100
bb116:
  %t395 = load i64, ptr %l18, !tbaa !24
  %t397 = icmp eq i64 %t395, 0
  br i1 %t397, label %bb117, label %bb118
bb117:
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb118:
  br label %bb119
bb119:
  %t399 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t399, ptr %l188, !tbaa !27
  %t400 = load i64, ptr %l18, !tbaa !24
  store i64 %t400, ptr %l189, !tbaa !24
  %t401 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t402 = extractvalue { i64, ptr } %t401, 0
  store i64 %t402, ptr %l190, !tbaa !24
  %t403 = icmp sge i64 0, 0
  br i1 %t403, label %bb120, label %bb121
bb120:
  %t405 = load i64, ptr %l189, !tbaa !24
  %t406 = icmp sle i64 0, %t405
  br i1 %t406, label %bb122, label %bb123
bb121:
  call void @__olang_check_failed(ptr @olang_loc_5755e6dd02fca827_178a482bfa1e95bb)
  unreachable
bb122:
  %t408 = load i64, ptr %l189, !tbaa !24
  %t409 = load i64, ptr %l190, !tbaa !24
  %t410 = icmp sle i64 %t408, %t409
  br i1 %t410, label %bb124, label %bb125
bb123:
  call void @__olang_check_failed(ptr @olang_loc_5755e6dd02fca827_178a482bfa1e95bb)
  unreachable
bb124:
  %t412 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !27
  %t414 = load i64, ptr %l189, !tbaa !24
  %t415 = getelementptr i8, ptr %t413, i64 0
  %t416 = sub i64 %t414, 0
  %t417 = insertvalue { i64, ptr } undef, i64 %t416, 0
  %t418 = insertvalue { i64, ptr } %t417, ptr %t415, 1
  store { i64, ptr } %t418, ptr %l19, !tbaa !27
  %t420 = load i64, ptr %l18, !tbaa !24
  %t421 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t423 = extractvalue { i64, ptr } %t421, 0
  %t426 = icmp slt i64 %t420, %t423
  br i1 %t426, label %bb126, label %bb127
bb125:
  call void @__olang_check_failed(ptr @olang_loc_5755e6dd02fca827_178a482bfa1e95bb)
  unreachable
bb126:
  %t428 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t428, ptr %l200, !tbaa !27
  %t429 = load i64, ptr %l18, !tbaa !24
  %t431 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t432 = load ptr, ptr %t431, !tbaa !27
  %t433 = getelementptr i8, ptr %t432, i64 %t429
  %t434 = load i8, ptr %t433, !tbaa !32
  %t436 = icmp eq i8 %t434, 40
  store i1 %t436, ptr %l199, !tbaa !21
  br label %bb128
bb127:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb128
bb128:
  %t438 = load i1, ptr %l199, !tbaa !21
  store i1 %t438, ptr %l20, !tbaa !21
  %t439 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t439, ptr %l204
  br label %bb129
bb129:
  %t440 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l204
  %t441 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t440, ptr %t441
  store ptr %t441, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t443 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t443, ptr %l206, !tbaa !27
  %t444 = load i64, ptr %l18, !tbaa !24
  store i64 %t444, ptr %l207, !tbaa !24
  %t445 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t448 = extractvalue { i64, ptr } %t445, 0
  store i64 %t448, ptr %l210, !tbaa !24
  %t449 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t450 = extractvalue { i64, ptr } %t449, 0
  store i64 %t450, ptr %l211, !tbaa !24
  %t451 = load i64, ptr %l207, !tbaa !24
  %t452 = icmp sge i64 %t451, 0
  br i1 %t452, label %bb130, label %bb131
bb130:
  %t454 = load i64, ptr %l207, !tbaa !24
  %t455 = load i64, ptr %l210, !tbaa !24
  %t456 = icmp sle i64 %t454, %t455
  br i1 %t456, label %bb132, label %bb133
bb131:
  call void @__olang_check_failed(ptr @olang_loc_4153d023000ff8e8_6b17d300a1e811b4)
  unreachable
bb132:
  %t458 = load i64, ptr %l210, !tbaa !24
  %t459 = load i64, ptr %l211, !tbaa !24
  %t460 = icmp sle i64 %t458, %t459
  br i1 %t460, label %bb134, label %bb135
bb133:
  call void @__olang_check_failed(ptr @olang_loc_4153d023000ff8e8_6b17d300a1e811b4)
  unreachable
bb134:
  %t462 = getelementptr { i64, ptr }, ptr %l206, i32 0, i32 1
  %t463 = load ptr, ptr %t462, !tbaa !27
  %t464 = load i64, ptr %l207, !tbaa !24
  %t465 = load i64, ptr %l210, !tbaa !24
  %t466 = getelementptr i8, ptr %t463, i64 %t464
  %t467 = sub i64 %t465, %t464
  %t468 = insertvalue { i64, ptr } undef, i64 %t467, 0
  %t469 = insertvalue { i64, ptr } %t468, ptr %t466, 1
  store { i64, ptr } %t469, ptr %l23, !tbaa !27
  %t471 = load i1, ptr %l20, !tbaa !21
  br i1 %t471, label %bb136, label %bb137
bb135:
  call void @__olang_check_failed(ptr @olang_loc_4153d023000ff8e8_6b17d300a1e811b4)
  unreachable
bb136:
  %t473 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t476 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t473, i8 41)
  %t477 = extractvalue { i32, i64 } %t476, 1
  %t478 = extractvalue { i32, i64 } %t476, 0
  store i32 %t478, ptr %l221
  %t479 = icmp ne i32 %t478, 0
  br i1 %t479, label %bb139, label %ok.480, !prof !99
ok.480:
  store i64 %t477, ptr %l220
  br label %bb138
bb137:
  br label %bb180
bb138:
  %t481 = load i64, ptr %l220, !tbaa !24
  store i64 %t481, ptr %l217, !tbaa !24
  br label %bb141
bb139:
  br label %bb140
bb140:
  store i64 -1, ptr %l217, !tbaa !24
  br label %bb141
bb141:
  %t482 = load i64, ptr %l217, !tbaa !24
  store i64 %t482, ptr %l24, !tbaa !24
  %t483 = load i64, ptr %l24, !tbaa !24
  %t485 = icmp slt i64 %t483, 0
  br i1 %t485, label %bb142, label %bb143
bb142:
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb143:
  br label %bb144
bb144:
  store %olang.scope zeroinitializer, ptr %s18
  %t487 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t487, ptr %l224, !tbaa !27
  %t488 = load i64, ptr %l18, !tbaa !24
  %t490 = add i64 %t488, 1
  store i64 %t490, ptr %l226, !tbaa !24
  %t491 = load i64, ptr %l24, !tbaa !24
  store i64 %t491, ptr %l227, !tbaa !24
  %t492 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t493 = extractvalue { i64, ptr } %t492, 0
  store i64 %t493, ptr %l228, !tbaa !24
  %t494 = load i64, ptr %l226, !tbaa !24
  %t495 = icmp sge i64 %t494, 0
  br i1 %t495, label %bb145, label %bb146
bb145:
  %t497 = load i64, ptr %l226, !tbaa !24
  %t498 = load i64, ptr %l227, !tbaa !24
  %t499 = icmp sle i64 %t497, %t498
  br i1 %t499, label %bb147, label %bb148
bb146:
  call void @__olang_check_failed(ptr @olang_loc_ec020a578bdf64c5_799d4029e88195a1)
  unreachable
bb147:
  %t501 = load i64, ptr %l227, !tbaa !24
  %t502 = load i64, ptr %l228, !tbaa !24
  %t503 = icmp sle i64 %t501, %t502
  br i1 %t503, label %bb149, label %bb150
bb148:
  call void @__olang_check_failed(ptr @olang_loc_ec020a578bdf64c5_799d4029e88195a1)
  unreachable
bb149:
  %t505 = getelementptr { i64, ptr }, ptr %l224, i32 0, i32 1
  %t506 = load ptr, ptr %t505, !tbaa !27
  %t507 = load i64, ptr %l226, !tbaa !24
  %t508 = load i64, ptr %l227, !tbaa !24
  %t509 = getelementptr i8, ptr %t506, i64 %t507
  %t510 = sub i64 %t508, %t507
  %t511 = insertvalue { i64, ptr } undef, i64 %t510, 0
  %t512 = insertvalue { i64, ptr } %t511, ptr %t509, 1
  %t514 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %s18, ptr %s18, { i64, ptr } %t512, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) })
  store { i64, ptr } %t514, ptr %l233
  br label %bb151
bb150:
  call void @__olang_check_failed(ptr @olang_loc_ec020a578bdf64c5_799d4029e88195a1)
  unreachable
bb151:
  %t515 = load { i64, ptr }, ptr %l233, !tbaa !27
  store { i64, ptr } %t515, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t516 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t518 = extractvalue { i64, ptr } %t516, 0
  store i64 %t518, ptr %l27, !tbaa !24
  br label %bb152
bb152:
  store %olang.scope zeroinitializer, ptr %s19
  %t520 = load i64, ptr %l26, !tbaa !24
  %t521 = load i64, ptr %l27, !tbaa !24
  %t524 = icmp slt i64 %t520, %t521
  %t526 = xor i1 %t524, true
  br i1 %t526, label %bb153, label %bb154
bb153:
  call void @__olang_scope_close(ptr %s19)
  br label %bb173
bb154:
  br label %bb155
bb155:
  %t528 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t528, ptr %l240, !tbaa !27
  %t529 = load i64, ptr %l26, !tbaa !24
  %t531 = getelementptr { i64, ptr }, ptr %l240, i32 0, i32 1
  %t532 = load ptr, ptr %t531, !tbaa !27
  %t533 = getelementptr { i64, ptr }, ptr %t532, i64 %t529
  %t534 = load { i64, ptr }, ptr %t533, !tbaa !37
  %t538 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s18, ptr %s18, { i64, ptr } %t534)
  store { i64, ptr } %t538, ptr %l244
  br label %bb156
bb156:
  %t539 = load { i64, ptr }, ptr %l244, !tbaa !27
  store { i64, ptr } %t539, ptr %l29, !tbaa !27
  %t540 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t542 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s18, ptr %s19, { i64, ptr } %t540, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d128, i32 0, i32 1) })
  store i1 %t542, ptr %l246
  br label %bb157
bb157:
  %t543 = load i1, ptr %l246, !tbaa !21
  br i1 %t543, label %bb158, label %bb159
bb158:
  store i1 true, ptr %l247, !tbaa !21
  br label %bb161
bb159:
  %t544 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t546 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s18, ptr %s19, { i64, ptr } %t544, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d129, i32 0, i32 1) })
  store i1 %t546, ptr %l249
  br label %bb160
bb160:
  %t547 = load i1, ptr %l249, !tbaa !21
  store i1 %t547, ptr %l247, !tbaa !21
  br label %bb161
bb161:
  %t548 = load i1, ptr %l247, !tbaa !21
  br i1 %t548, label %bb162, label %bb163
bb162:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb171
bb163:
  store %olang.scope zeroinitializer, ptr %s21
  %t549 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t551 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s18, ptr %s21, { i64, ptr } %t549, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d130, i32 0, i32 1) })
  store i1 %t551, ptr %l251
  br label %bb164
bb164:
  %t552 = load i1, ptr %l251, !tbaa !21
  %t553 = xor i1 %t552, true
  br i1 %t553, label %bb165, label %bb166
bb165:
  %t555 = load ptr, ptr %l21, !tbaa !29
  store ptr %t555, ptr %l253, !tbaa !29
  %t556 = ptrtoint ptr %v0 to i64
  store i64 %t556, ptr %l254, !tbaa !24
  %t557 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t557, label %bb167, label %bb168
bb166:
  br label %bb170
bb167:
  %t559 = call ptr @__olang_region_make(ptr %v0)
  %t560 = ptrtoint ptr %t559 to i64
  store i64 %t560, ptr %l254, !tbaa !24
  br label %bb168
bb168:
  %t561 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t563 = extractvalue { i64, ptr } %t561, 1
  %t564 = extractvalue { i64, ptr } %t561, 0
  %t565 = load i64, ptr %l254
  %t566 = inttoptr i64 %t565 to ptr
  %t567 = call ptr @__olang_scope_alloc(ptr %t566, i64 %t564)
  call void @olang_textcopy(ptr %t567, ptr %t563, i64 %t564)
  %t568 = insertvalue { i64, ptr } undef, i64 %t564, 0
  %t569 = insertvalue { i64, ptr } %t568, ptr %t567, 1
  %t571 = load i64, ptr %l254
  %t572 = inttoptr i64 %t571 to ptr
  %t573 = extractvalue { i64, ptr } %t569, 0
  %t574 = extractvalue { i64, ptr } %t569, 1
  %t575 = mul i64 %t573, 1
  %t576 = call ptr @__olang_scope_alloc(ptr %t572, i64 %t575)
  call void @llvm.memcpy.p0.p0.i64(ptr %t576, ptr %t574, i64 %t575, i1 false)
  %t577 = insertvalue { i64, ptr } undef, i64 %t573, 0
  %t578 = insertvalue { i64, ptr } %t577, ptr %t576, 1
  %t579 = load ptr, ptr %l253, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t579, { i64, ptr } %t578)
  br label %bb169
bb169:
  br label %bb170
bb170:
  call void @__olang_scope_close(ptr %s21)
  br label %bb171
bb171:
  call void @__olang_scope_close(ptr %s19)
  br label %bb172
bb172:
  %t581 = load i64, ptr %l26, !tbaa !24
  %t583 = add i64 %t581, 1
  store i64 %t583, ptr %l26, !tbaa !24
  br label %bb152
bb173:
  call void @__olang_scope_close(ptr %s18)
  %t585 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t585, ptr %l261, !tbaa !27
  %t586 = load i64, ptr %l24, !tbaa !24
  %t588 = add i64 %t586, 1
  store i64 %t588, ptr %l263, !tbaa !24
  %t589 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t592 = extractvalue { i64, ptr } %t589, 0
  store i64 %t592, ptr %l266, !tbaa !24
  %t593 = load { i64, ptr }, ptr %l261, !tbaa !27
  %t594 = extractvalue { i64, ptr } %t593, 0
  store i64 %t594, ptr %l267, !tbaa !24
  %t595 = load i64, ptr %l263, !tbaa !24
  %t596 = icmp sge i64 %t595, 0
  br i1 %t596, label %bb174, label %bb175
bb174:
  %t598 = load i64, ptr %l263, !tbaa !24
  %t599 = load i64, ptr %l266, !tbaa !24
  %t600 = icmp sle i64 %t598, %t599
  br i1 %t600, label %bb176, label %bb177
bb175:
  call void @__olang_check_failed(ptr @olang_loc_642a74ef72af54a6_43680c0161c24f22)
  unreachable
bb176:
  %t602 = load i64, ptr %l266, !tbaa !24
  %t603 = load i64, ptr %l267, !tbaa !24
  %t604 = icmp sle i64 %t602, %t603
  br i1 %t604, label %bb178, label %bb179
bb177:
  call void @__olang_check_failed(ptr @olang_loc_642a74ef72af54a6_43680c0161c24f22)
  unreachable
bb178:
  %t606 = getelementptr { i64, ptr }, ptr %l261, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !27
  %t608 = load i64, ptr %l263, !tbaa !24
  %t609 = load i64, ptr %l266, !tbaa !24
  %t610 = getelementptr i8, ptr %t607, i64 %t608
  %t611 = sub i64 %t609, %t608
  %t612 = insertvalue { i64, ptr } undef, i64 %t611, 0
  %t613 = insertvalue { i64, ptr } %t612, ptr %t610, 1
  store { i64, ptr } %t613, ptr %l23, !tbaa !27
  br label %bb180
bb179:
  call void @__olang_check_failed(ptr @olang_loc_642a74ef72af54a6_43680c0161c24f22)
  unreachable
bb180:
  %t615 = ptrtoint ptr %v0 to i64
  store i64 %t615, ptr %l272, !tbaa !24
  %t616 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acMacro_2e0
  br i1 %t616, label %bb181, label %bb182
bb181:
  %t618 = call ptr @__olang_region_make(ptr %v0)
  %t619 = ptrtoint ptr %t618 to i64
  store i64 %t619, ptr %l272, !tbaa !24
  br label %bb182
bb182:
  %t620 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t622 = extractvalue { i64, ptr } %t620, 1
  %t623 = extractvalue { i64, ptr } %t620, 0
  %t624 = load i64, ptr %l272
  %t625 = inttoptr i64 %t624 to ptr
  %t626 = call ptr @__olang_scope_alloc(ptr %t625, i64 %t623)
  call void @olang_textcopy(ptr %t626, ptr %t622, i64 %t623)
  %t627 = insertvalue { i64, ptr } undef, i64 %t623, 0
  %t628 = insertvalue { i64, ptr } %t627, ptr %t626, 1
  %t630 = load i64, ptr %l272
  %t631 = inttoptr i64 %t630 to ptr
  %t632 = extractvalue { i64, ptr } %t628, 0
  %t633 = extractvalue { i64, ptr } %t628, 1
  %t634 = mul i64 %t632, 1
  %t635 = call ptr @__olang_scope_alloc(ptr %t631, i64 %t634)
  call void @llvm.memcpy.p0.p0.i64(ptr %t635, ptr %t633, i64 %t634, i1 false)
  %t636 = insertvalue { i64, ptr } undef, i64 %t632, 0
  %t637 = insertvalue { i64, ptr } %t636, ptr %t635, 1
  store { i64, ptr } %t637, ptr %l276, !tbaa !27
  %t638 = load i1, ptr %l20, !tbaa !21
  store i1 %t638, ptr %l277, !tbaa !21
  %t639 = ptrtoint ptr %v0 to i64
  store i64 %t639, ptr %l278, !tbaa !24
  %t640 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acMacro_2e2
  br i1 %t640, label %bb183, label %bb184
bb183:
  %t642 = call ptr @__olang_region_make(ptr %v0)
  %t643 = ptrtoint ptr %t642 to i64
  store i64 %t643, ptr %l278, !tbaa !24
  br label %bb184
bb184:
  %t644 = load ptr, ptr %l21, !tbaa !29
  %t645 = load i64, ptr %l278
  %t646 = inttoptr i64 %t645 to ptr
  %t648 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %t646, ptr %t644)
  store { i64, ptr } %t648, ptr %l281
  br label %bb185
bb185:
  %t649 = ptrtoint ptr %v1 to i64
  store i64 %t649, ptr %l282, !tbaa !24
  %t650 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acMacro_2e3
  br i1 %t650, label %bb186, label %bb187
bb186:
  %t652 = call ptr @__olang_region_make(ptr %v1)
  %t653 = ptrtoint ptr %t652 to i64
  store i64 %t653, ptr %l282, !tbaa !24
  br label %bb187
bb187:
  %t654 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t656 = call ptr @compiler_2fbindgen_2ecLex(ptr %v1, ptr %v1, { i64, ptr } %t654)
  store ptr %t656, ptr %l285
  br label %bb188
bb188:
  %t657 = load i64, ptr %l282
  %t658 = inttoptr i64 %t657 to ptr
  %t659 = load i64, ptr %l282
  %t660 = inttoptr i64 %t659 to ptr
  %t661 = load ptr, ptr %l285, !tbaa !29
  %t662 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %t658, ptr %t660, ptr %t661)
  store { i64, ptr } %t662, ptr %l286
  br label %bb189
bb189:
  %t663 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t664 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t667 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v3, { i64, ptr } %t663, { i64, ptr } %t664)
  store i1 %t667, ptr %l289
  br label %bb190
bb190:
  %t668 = load i1, ptr %l289, !tbaa !21
  br i1 %t668, label %bb191, label %bb192
bb191:
  store i1 true, ptr %l290, !tbaa !21
  br label %bb194
bb192:
  %t669 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t671 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s2, { i64, ptr } %t669, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d131, i32 0, i32 1) })
  store i1 %t671, ptr %l292
  br label %bb193
bb193:
  %t672 = load i1, ptr %l292, !tbaa !21
  store i1 %t672, ptr %l290, !tbaa !21
  br label %bb194
bb194:
  %t673 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t674 = load i1, ptr %l277, !tbaa !21
  %t675 = load { i64, ptr }, ptr %l281, !tbaa !27
  %t676 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t677 = load i1, ptr %l290, !tbaa !21
  %t678 = call %"compiler/bindgen:cMacro" @compiler_2fbindgen_3acMacro_2ector(ptr %v0, ptr %v0, ptr %v1, ptr %v0, { i64, ptr } %t673, i1 %t674, { i64, ptr } %t675, { i64, ptr } %t676, i1 %t677)
  store %"compiler/bindgen:cMacro" %t678, ptr %l293
  br label %bb195
bb195:
  %t679 = load %"compiler/bindgen:cMacro", ptr %l293
  %t680 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 64, i64 8)
  store %"compiler/bindgen:cMacro" %t679, ptr %t680
  store ptr %t680, ptr %l30, !tbaa !29
  %t682 = load ptr, ptr %l30, !tbaa !29
  %t683 = load i1, ptr %l22, !tbaa !21
  %t686 = getelementptr %"compiler/bindgen:cMacro", ptr %t682, i32 0, i32 5
  store i1 %t683, ptr %t686, !tbaa !21
  %t687 = load ptr, ptr %l0, !tbaa !29
  %t689 = getelementptr %"compiler/bindgen:gen", ptr %t687, i32 0, i32 13
  %t690 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t693 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t689, { i64, ptr } %t690)
  %t694 = extractvalue { i32, i64 } %t693, 1
  %t695 = extractvalue { i32, i64 } %t693, 0
  store i32 %t695, ptr %l302
  %t696 = icmp ne i32 %t695, 0
  br i1 %t696, label %bb197, label %ok.697, !prof !99
ok.697:
  store i64 %t694, ptr %l301
  br label %bb196
bb196:
  %t698 = load i64, ptr %l301, !tbaa !24
  store i64 %t698, ptr %l297, !tbaa !24
  br label %bb199
bb197:
  br label %bb198
bb198:
  store i64 -1, ptr %l297, !tbaa !24
  br label %bb199
bb199:
  %t699 = load i64, ptr %l297, !tbaa !24
  store i64 %t699, ptr %l31, !tbaa !24
  %t700 = load i64, ptr %l31, !tbaa !24
  %t702 = icmp sge i64 %t700, 0
  br i1 %t702, label %bb200, label %bb201
bb200:
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t706 = getelementptr %"compiler/bindgen:gen", ptr %t704, i32 0, i32 12
  %t707 = load i64, ptr %l31, !tbaa !24
  %t708 = load ptr, ptr %l30, !tbaa !29
  %t710 = load %"compiler/bindgen:cMacro", ptr %t708
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eSetAt_H7935c3ba4e105e8cc692de439d360efe(ptr %v0, ptr %v0, ptr %t706, i64 %t707, %"compiler/bindgen:cMacro" %t710)
  br label %bb202
bb201:
  %t714 = load ptr, ptr %l0, !tbaa !29
  %t716 = getelementptr %"compiler/bindgen:gen", ptr %t714, i32 0, i32 12
  %t717 = load ptr, ptr %l30, !tbaa !29
  %t719 = load %"compiler/bindgen:cMacro", ptr %t717
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2ePush_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v0, ptr %t716, %"compiler/bindgen:cMacro" %t719)
  br label %bb203
bb202:
  br label %bb208
bb203:
  %t722 = load ptr, ptr %l0, !tbaa !29
  %t724 = getelementptr %"compiler/bindgen:gen", ptr %t722, i32 0, i32 13
  store ptr %t724, ptr %l315, !tbaa !29
  %t725 = ptrtoint ptr %v0 to i64
  store i64 %t725, ptr %l316, !tbaa !24
  %t726 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t726, label %bb204, label %bb205
bb204:
  %t728 = call ptr @__olang_region_make(ptr %v0)
  %t729 = ptrtoint ptr %t728 to i64
  store i64 %t729, ptr %l316, !tbaa !24
  br label %bb205
bb205:
  %t730 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t732 = extractvalue { i64, ptr } %t730, 1
  %t733 = extractvalue { i64, ptr } %t730, 0
  %t734 = load i64, ptr %l316
  %t735 = inttoptr i64 %t734 to ptr
  %t736 = call ptr @__olang_scope_alloc(ptr %t735, i64 %t733)
  call void @olang_textcopy(ptr %t736, ptr %t732, i64 %t733)
  %t737 = insertvalue { i64, ptr } undef, i64 %t733, 0
  %t738 = insertvalue { i64, ptr } %t737, ptr %t736, 1
  %t740 = load i64, ptr %l316
  %t741 = inttoptr i64 %t740 to ptr
  %t742 = extractvalue { i64, ptr } %t738, 0
  %t743 = extractvalue { i64, ptr } %t738, 1
  %t744 = mul i64 %t742, 1
  %t745 = call ptr @__olang_scope_alloc(ptr %t741, i64 %t744)
  call void @llvm.memcpy.p0.p0.i64(ptr %t745, ptr %t743, i64 %t744, i1 false)
  %t746 = insertvalue { i64, ptr } undef, i64 %t742, 0
  %t747 = insertvalue { i64, ptr } %t746, ptr %t745, 1
  store { i64, ptr } %t747, ptr %l320, !tbaa !27
  %t748 = load ptr, ptr %l0, !tbaa !29
  %t750 = getelementptr %"compiler/bindgen:gen", ptr %t748, i32 0, i32 12
  %t752 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %t750)
  store i64 %t752, ptr %l323
  br label %bb206
bb206:
  %t753 = load i64, ptr %l323, !tbaa !24
  %t754 = sub i64 %t753, 1
  %t755 = load ptr, ptr %l315, !tbaa !29
  %t756 = load { i64, ptr }, ptr %l320, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t755, { i64, ptr } %t756, i64 %t754)
  br label %bb207
bb207:
  br label %bb208
bb208:
  call void @__olang_scope_close(ptr %s2)
  br label %bb209
bb209:
  br label %bb3
bb210:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  %s2 = alloca %olang.scope
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
  %t3 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %v1, ptr %s0, ptr %s0, ptr %t1, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d132, i32 0, i32 1) })
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
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d133, i32 0, i32 1) })
  store i1 %t12, ptr %l32
  br label %bb2
bb2:
  %t13 = load i1, ptr %l32, !tbaa !21
  store i1 %t13, ptr %l4, !tbaa !21
  store i64 0, ptr %l5, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t14, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d134, i32 0, i32 1) })
  store i1 %t16, ptr %l34
  br label %bb3
bb3:
  %t17 = load i1, ptr %l34, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/bindgen:gen", ptr %t18, i32 0, i32 5
  store ptr %t20, ptr %l36, !tbaa !29
  call void @compiler_2fbindgen_3arecord_2ector(ptr %t21, ptr %v0, ptr %v0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d135, i32 0, i32 1) })
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t21, i64 216, i1 false)
  br label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
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
  %t47 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %v1, ptr %v0, ptr %t45, ptr %t43, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d136, i32 0, i32 1) })
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
  br label %bb17
bb13:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d137, i32 0, i32 1) }, ptr %l52, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d138, i32 0, i32 1) }, ptr %l52, !tbaa !27
  br label %bb15
bb15:
  %t61 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t66 = extractvalue { i64, ptr } %t61, 1
  %t67 = extractvalue { i64, ptr } %t61, 0
  %t68 = add i64 %t64, %t67
  %t69 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t63, i64 %t64)
  %t70 = getelementptr i8, ptr %t69, i64 %t64
  call void @olang_textcopy(ptr %t70, ptr %t66, i64 %t67)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t69, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = extractvalue { i64, ptr } %t72, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t80 = load ptr, ptr %l50, !tbaa !29
  %t82 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %s2, ptr %t80, { i64, ptr } %t79)
  store i64 %t82, ptr %l56
  br label %bb16
bb16:
  %t83 = load i64, ptr %l56, !tbaa !24
  store i64 %t83, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
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
  %t118 = call i1 @compiler_2fbindgen_2eflag(ptr %v1, ptr %s0, ptr %t116, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d139, i32 0, i32 1) })
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
  %t183 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s6, ptr %s7, ptr %s7, ptr %t181, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d140, i32 0, i32 1) })
  store { i64, ptr } %t183, ptr %l103
  br label %bb38
bb38:
  %t184 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t184, ptr %l18, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t187 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s7, { i64, ptr } %t185, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d141, i32 0, i32 1) })
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
  %t206 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s7, { i64, ptr } %t204, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d142, i32 0, i32 1) })
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
  %t225 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s7, { i64, ptr } %t223, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d143, i32 0, i32 1) })
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
  %t231 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s6, ptr %s10, ptr %s10, ptr %t229, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d144, i32 0, i32 1) })
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
  %t246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s7, { i64, ptr } %t244, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d145, i32 0, i32 1) })
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
  %t252 = call i1 @compiler_2fbindgen_2eflag(ptr %s6, ptr %s7, ptr %t250, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d146, i32 0, i32 1) })
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
  %t305 = call i1 @compiler_2fbindgen_2eflag(ptr %s6, ptr %s7, ptr %t303, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d147, i32 0, i32 1) })
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
  %t330 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s6, ptr %v0, ptr %t328, ptr %t326, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d148, i32 0, i32 1) })
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

define dso_local i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2esizes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/bindgen:cFunc"
  %l9 = alloca i64
  %l10 = alloca %"compiler/bindgen:ctype"
  %l12 = alloca i1
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca %"std/prelude/text:StringBuilder"
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l54 = alloca i64
  %l58 = alloca i64
  %l60 = alloca i64
  %l65 = alloca %"compiler/bindgen:cFunc"
  %l67 = alloca { i64, ptr }
  %l70 = alloca i64
  %l74 = alloca %"compiler/bindgen:ctype"
  %l79 = alloca ptr
  %l83 = alloca %"compiler/bindgen:ctype"
  %l85 = alloca %"compiler/bindgen:ctype"
  %l88 = alloca i1
  %l92 = alloca %"compiler/bindgen:ctype"
  %l95 = alloca ptr
  %l99 = alloca %"compiler/bindgen:ctype"
  %l101 = alloca i64
  %l105 = alloca ptr
  %l110 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l113 = alloca i64
  %l117 = alloca i64
  %l120 = alloca i64
  %l141 = alloca ptr
  %l145 = alloca i1
  %l150 = alloca i1
  %l154 = alloca ptr
  %l157 = alloca i1
  %l158 = alloca i1
  %l161 = alloca i1
  %l167 = alloca i64
  %l169 = alloca %"std/prelude/text:StringBuilder"
  %l175 = alloca i64
  %l177 = alloca i64
  %l183 = alloca i64
  %l184 = alloca ptr
  %l185 = alloca i64
  %l186 = alloca i64
  %l189 = alloca { i64, ptr }
  %l190 = alloca i64
  %l193 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l200 = alloca { i64, ptr }
  %l203 = alloca i32
  %l205 = alloca i1
  %l209 = alloca i32
  %l211 = alloca ptr
  %l216 = alloca ptr
  %l217 = alloca i32
  %l220 = alloca { i64, ptr }
  %l228 = alloca { i64, ptr }
  %l232 = alloca { i64, ptr }
  %l234 = alloca { i64, ptr }
  %l236 = alloca i1
  %l238 = alloca i1
  %l240 = alloca i1
  %l242 = alloca i64
  %l244 = alloca i64
  %l245 = alloca i64
  %l249 = alloca { i64, ptr }
  %l250 = alloca i64
  %l251 = alloca i32
  %l252 = alloca i64
  %l253 = alloca i32
  %l256 = alloca i1
  %l257 = alloca i64
  %l259 = alloca i64
  %l261 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l263 = alloca { i64, ptr }
  %l271 = alloca { i64, ptr }
  %l275 = alloca { i64, ptr }
  %l276 = alloca ptr
  %l277 = alloca i64
  %l278 = alloca { i64, ptr }
  %l279 = alloca i64
  %l280 = alloca i32
  %l281 = alloca i64
  %l282 = alloca i32
  %l286 = alloca i64
  %l290 = alloca i64
  %l292 = alloca i64
  %l296 = alloca ptr
  %l301 = alloca i64
  %l303 = alloca i64
  %l307 = alloca ptr
  %l314 = alloca i64
  %l318 = alloca i64
  %l321 = alloca i64
  %l343 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 8
  store ptr %t3, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l6, !tbaa !24
  store i64 %t5, ptr %l58, !tbaa !24
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eLen_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l60
  br label %bb2
bb2:
  %t9 = load i64, ptr %l58, !tbaa !24
  %t10 = load i64, ptr %l60, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t16 = load i64, ptr %l6, !tbaa !24
  %t19 = call %"compiler/bindgen:cFunc" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eAt_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/bindgen:cFunc" %t19, ptr %l65
  br label %bb6
bb6:
  %t20 = load %"compiler/bindgen:cFunc", ptr %l65
  store %"compiler/bindgen:cFunc" %t20, ptr %l7
  %t21 = getelementptr %"compiler/bindgen:cFunc", ptr %l7, i32 0, i32 1
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = call { i64, ptr } @compiler_2fbindgen_2enoReturnOf(ptr %v0, ptr %s2, { i64, ptr } %t22)
  store { i64, ptr } %t24, ptr %l67
  br label %bb7
bb7:
  %t25 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t30 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %s2, ptr %t26, { i64, ptr } %t25, i64 0)
  store i64 %t30, ptr %l70
  br label %bb8
bb8:
  %t31 = load i64, ptr %l70, !tbaa !24
  store i64 %t31, ptr %l9, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/bindgen:gen", ptr %t32, i32 0, i32 16
  %t35 = load i64, ptr %l9, !tbaa !24
  %t38 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s2, ptr %t34, i64 %t35)
  store %"compiler/bindgen:ctype" %t38, ptr %l74
  br label %bb9
bb9:
  %t39 = getelementptr %"compiler/bindgen:ctype", ptr %l74, i32 0, i32 0
  %t40 = load i32, ptr %t39, !range !{i32 0, i32 7}
  %t42 = trunc i64 5 to i32
  %t43 = icmp eq i32 %t40, %t42
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb11:
  br label %bb12
bb12:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/bindgen:gen", ptr %t47, i32 0, i32 16
  store ptr %t49, ptr %l79, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/bindgen:gen", ptr %t50, i32 0, i32 16
  %t53 = load i64, ptr %l9, !tbaa !24
  %t56 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s2, ptr %t52, i64 %t53)
  store %"compiler/bindgen:ctype" %t56, ptr %l83
  br label %bb13
bb13:
  %t57 = getelementptr %"compiler/bindgen:ctype", ptr %l83, i32 0, i32 2
  %t58 = load i64, ptr %t57, !tbaa !24
  %t59 = load ptr, ptr %l79, !tbaa !29
  %t61 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t59, i64 %t58)
  store %"compiler/bindgen:ctype" %t61, ptr %l85
  br label %bb14
bb14:
  %t62 = load %"compiler/bindgen:ctype", ptr %l85
  store %"compiler/bindgen:ctype" %t62, ptr %l10
  %t63 = getelementptr %"compiler/bindgen:ctype", ptr %l10, i32 0, i32 0
  %t64 = load i32, ptr %t63, !range !{i32 0, i32 7}
  %t66 = trunc i64 3 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb15, label %bb16
bb15:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/bindgen:gen", ptr %t69, i32 0, i32 16
  %t72 = getelementptr %"compiler/bindgen:ctype", ptr %l10, i32 0, i32 2
  %t73 = load i64, ptr %t72, !tbaa !24
  %t76 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s2, ptr %t71, i64 %t73)
  store %"compiler/bindgen:ctype" %t76, ptr %l92
  br label %bb17
bb16:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb18
bb17:
  %t77 = getelementptr %"compiler/bindgen:ctype", ptr %l92, i32 0, i32 0
  %t78 = load i32, ptr %t77, !range !{i32 0, i32 7}
  %t80 = trunc i64 2 to i32
  %t81 = icmp eq i32 %t78, %t80
  store i1 %t81, ptr %l88, !tbaa !21
  br label %bb18
bb18:
  %t83 = load i1, ptr %l88, !tbaa !21
  br i1 %t83, label %bb19, label %bb20
bb19:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l95, !tbaa !29
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/bindgen:gen", ptr %t85, i32 0, i32 16
  %t88 = getelementptr %"compiler/bindgen:ctype", ptr %l10, i32 0, i32 2
  %t89 = load i64, ptr %t88, !tbaa !24
  %t92 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t87, i64 %t89)
  store %"compiler/bindgen:ctype" %t92, ptr %l99
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t93 = getelementptr %"compiler/bindgen:ctype", ptr %l99, i32 0, i32 1
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  %t95 = load ptr, ptr %l95, !tbaa !29
  %t97 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %v0, ptr %t95, { i64, ptr } %t94)
  store i64 %t97, ptr %l101
  br label %bb22
bb22:
  %t98 = load i64, ptr %l101, !tbaa !24
  store i1 true, ptr %l12, !tbaa !21
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/bindgen:gen", ptr %t99, i32 0, i32 5
  %t105 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t101, i64 %t98)
  store ptr %t105, ptr %l105
  br label %bb23
bb23:
  %t106 = load ptr, ptr %l105, !tbaa !29
  %t108 = load i1, ptr %l12, !tbaa !21
  %t111 = getelementptr %"compiler/bindgen:record", ptr %t106, i32 0, i32 10
  store i1 %t108, ptr %t111, !tbaa !21
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb25:
  %t112 = load i64, ptr %l6, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l6, !tbaa !24
  br label %bb1
bb26:
  %t116 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t116, ptr %l110
  br label %bb27
bb27:
  %t117 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l110
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t117, ptr %l14
  store i64 0, ptr %l15, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/bindgen:gen", ptr %t118, i32 0, i32 5
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t120)
  store i64 %t122, ptr %l113
  br label %bb28
bb28:
  %t123 = load i64, ptr %l113, !tbaa !24
  store i64 %t123, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t124 = load i64, ptr %l16, !tbaa !24
  %t125 = load i64, ptr %l15, !tbaa !24
  %t128 = icmp sgt i64 %t124, %t125
  br i1 %t128, label %bb29, label %bb30
bb29:
  %t130 = load i64, ptr %l17, !tbaa !24
  %t132 = icmp sgt i64 %t130, 0
  br i1 %t132, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb34
bb31:
  %t134 = load i64, ptr %l16, !tbaa !24
  %t135 = load i64, ptr %l15, !tbaa !24
  %t138 = sub i64 %t134, %t135
  %t139 = load i64, ptr %l17, !tbaa !24
  %t142 = add i64 %t138, %t139
  %t144 = sub i64 %t142, 1
  %t145 = load i64, ptr %l17, !tbaa !24
  %t148 = sdiv i64 %t144, %t145
  store i64 %t148, ptr %l120, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb33
bb33:
  %t150 = load i64, ptr %l120, !tbaa !24
  store i64 %t150, ptr %l117, !tbaa !24
  br label %bb34
bb34:
  %t151 = load i64, ptr %l117, !tbaa !24
  store i64 %t151, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s7
  %t152 = load i64, ptr %l19, !tbaa !24
  %t153 = load i64, ptr %l18, !tbaa !24
  %t156 = icmp slt i64 %t152, %t153
  %t158 = xor i1 %t156, true
  br i1 %t158, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb61
bb37:
  br label %bb38
bb38:
  %t160 = load i64, ptr %l15, !tbaa !24
  %t161 = load i64, ptr %l19, !tbaa !24
  %t162 = load i64, ptr %l17, !tbaa !24
  %t165 = mul i64 %t161, %t162
  %t168 = add i64 %t160, %t165
  store i64 %t168, ptr %l20, !tbaa !24
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/bindgen:gen", ptr %t170, i32 0, i32 5
  %t173 = load i64, ptr %l20, !tbaa !24
  %t176 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t172, i64 %t173)
  store ptr %t176, ptr %l141
  br label %bb39
bb39:
  %t177 = load ptr, ptr %l141, !tbaa !29
  store ptr %t177, ptr %l21, !tbaa !29
  %t178 = load ptr, ptr %l21, !tbaa !29
  %t180 = getelementptr %"compiler/bindgen:record", ptr %t178, i32 0, i32 2
  %t181 = load i1, ptr %t180, !tbaa !21
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l145, !tbaa !21
  br label %bb42
bb41:
  %t185 = load ptr, ptr %l21, !tbaa !29
  %t187 = getelementptr %"compiler/bindgen:record", ptr %t185, i32 0, i32 10
  %t188 = load i1, ptr %t187, !tbaa !21
  store i1 %t188, ptr %l145, !tbaa !21
  br label %bb42
bb42:
  %t190 = load i1, ptr %l145, !tbaa !21
  br i1 %t190, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb44:
  br label %bb45
bb45:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load i64, ptr %l20, !tbaa !24
  %t195 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eplain(ptr %v0, ptr %t191, i64 %t192)
  store i1 %t195, ptr %l150
  br label %bb46
bb46:
  %t196 = load i1, ptr %l150, !tbaa !21
  br i1 %t196, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb48:
  br label %bb49
bb49:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/bindgen:gen", ptr %t197, i32 0, i32 5
  %t200 = load i64, ptr %l20, !tbaa !24
  %t203 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t199, i64 %t200)
  store ptr %t203, ptr %l154
  br label %bb50
bb50:
  %t204 = load ptr, ptr %l154, !tbaa !29
  store ptr %t204, ptr %l22, !tbaa !29
  %t205 = load ptr, ptr %l22, !tbaa !29
  %t207 = getelementptr %"compiler/bindgen:record", ptr %t205, i32 0, i32 0
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  %t210 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t208, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d149, i32 0, i32 1) })
  store i1 %t210, ptr %l157
  br label %bb51
bb51:
  %t211 = load i1, ptr %l157, !tbaa !21
  br i1 %t211, label %bb52, label %bb53
bb52:
  %t212 = load ptr, ptr %l22, !tbaa !29
  %t214 = getelementptr %"compiler/bindgen:record", ptr %t212, i32 0, i32 11
  %t215 = load { i64, ptr }, ptr %t214, !tbaa !27
  %t217 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t215, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d150, i32 0, i32 1) })
  store i1 %t217, ptr %l161
  br label %bb54
bb53:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb55
bb54:
  %t218 = load i1, ptr %l161, !tbaa !21
  store i1 %t218, ptr %l158, !tbaa !21
  br label %bb55
bb55:
  %t219 = load i1, ptr %l158, !tbaa !21
  br i1 %t219, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb57:
  br label %bb58
bb58:
  %t220 = load i64, ptr %l20, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l14, i64 %t220)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb60:
  %t223 = load i64, ptr %l19, !tbaa !24
  %t225 = add i64 %t223, 1
  store i64 %t225, ptr %l19, !tbaa !24
  br label %bb35
bb61:
  %t228 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l14)
  store i64 %t228, ptr %l167
  br label %bb62
bb62:
  %t229 = load i64, ptr %l167, !tbaa !24
  %t230 = icmp eq i64 %t229, 0
  br i1 %t230, label %bb63, label %bb64
bb63:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t232 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t232, ptr %l169
  br label %bb66
bb66:
  %t233 = load %"std/prelude/text:StringBuilder", ptr %l169
  store %"std/prelude/text:StringBuilder" %t233, ptr %l23
  %t236 = extractvalue { i64, ptr } %a4, 1
  %t237 = extractvalue { i64, ptr } %a4, 0
  %t238 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t239 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t240 = add i64 %t237, %t239
  %t241 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t240)
  call void @olang_textcopy(ptr %t241, ptr %t236, i64 %t237)
  %t242 = getelementptr i8, ptr %t241, i64 %t237
  call void @olang_textcopy(ptr %t242, ptr %t238, i64 %t239)
  %t243 = insertvalue { i64, ptr } undef, i64 %t240, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t241, 1
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t247 = extractvalue { i64, ptr } %t244, 1
  %t248 = mul i64 %t246, 1
  %t249 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t248)
  call void @llvm.memcpy.p0.p0.i64(ptr %t249, ptr %t247, i64 %t248, i1 false)
  %t250 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l23, { i64, ptr } %t251)
  br label %bb67
bb67:
  store ptr %l14, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb68
bb68:
  store %olang.scope zeroinitializer, ptr %s15
  %t255 = load i64, ptr %l25, !tbaa !24
  store i64 %t255, ptr %l175, !tbaa !24
  %t256 = load ptr, ptr %l24, !tbaa !29
  %t258 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t256)
  store i64 %t258, ptr %l177
  br label %bb69
bb69:
  %t259 = load i64, ptr %l175, !tbaa !24
  %t260 = load i64, ptr %l177, !tbaa !24
  %t261 = icmp slt i64 %t259, %t260
  %t263 = xor i1 %t261, true
  br i1 %t263, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s15)
  br label %bb78
bb71:
  br label %bb72
bb72:
  %t265 = load i64, ptr %l25, !tbaa !24
  store i64 %t265, ptr %l26, !tbaa !24
  %t267 = load ptr, ptr %l24, !tbaa !29
  %t268 = load i64, ptr %l25, !tbaa !24
  %t271 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t267, i64 %t268)
  store i64 %t271, ptr %l183
  br label %bb73
bb73:
  %t272 = load i64, ptr %l183, !tbaa !24
  store i64 %t272, ptr %l27, !tbaa !24
  store ptr %l23, ptr %l184, !tbaa !29
  %t273 = load i64, ptr %l26, !tbaa !24
  store i64 %t273, ptr %l185, !tbaa !24
  %t274 = load i64, ptr %l26, !tbaa !24
  store i64 %t274, ptr %l186, !tbaa !24
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load i64, ptr %l27, !tbaa !24
  %t279 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2espell(ptr %v0, ptr %s15, ptr %t275, i64 %t276)
  store { i64, ptr } %t279, ptr %l189
  br label %bb74
bb74:
  %t280 = load i64, ptr %l26, !tbaa !24
  store i64 %t280, ptr %l190, !tbaa !24
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load i64, ptr %l27, !tbaa !24
  %t285 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2espell(ptr %v0, ptr %s15, ptr %t281, i64 %t282)
  store { i64, ptr } %t285, ptr %l193
  br label %bb75
bb75:
  %t286 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t287 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t288 = load i64, ptr %l185, !tbaa !24
  %t289 = call i64 @__olang_fmt_i64(ptr null, i64 %t288)
  %t290 = add i64 %t287, %t289
  %t291 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t292 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t293 = add i64 %t290, %t292
  %t294 = load i64, ptr %l186, !tbaa !24
  %t295 = call i64 @__olang_fmt_i64(ptr null, i64 %t294)
  %t296 = add i64 %t293, %t295
  %t297 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t298 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t299 = add i64 %t296, %t298
  %t300 = load { i64, ptr }, ptr %l189, !tbaa !27
  %t301 = extractvalue { i64, ptr } %t300, 1
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t303 = add i64 %t299, %t302
  %t304 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t305 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t306 = add i64 %t303, %t305
  %t307 = load i64, ptr %l190, !tbaa !24
  %t308 = call i64 @__olang_fmt_i64(ptr null, i64 %t307)
  %t309 = add i64 %t306, %t308
  %t310 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t311 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t312 = add i64 %t309, %t311
  %t313 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t314 = extractvalue { i64, ptr } %t313, 1
  %t315 = extractvalue { i64, ptr } %t313, 0
  %t316 = add i64 %t312, %t315
  %t317 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t318 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
  %t319 = add i64 %t316, %t318
  %t320 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t319)
  call void @olang_textcopy(ptr %t320, ptr %t286, i64 %t287)
  %t321 = getelementptr i8, ptr %t320, i64 %t287
  %t322 = call i64 @__olang_fmt_i64(ptr %t321, i64 %t288)
  %t323 = getelementptr i8, ptr %t321, i64 %t289
  call void @olang_textcopy(ptr %t323, ptr %t291, i64 %t292)
  %t324 = getelementptr i8, ptr %t323, i64 %t292
  %t325 = call i64 @__olang_fmt_i64(ptr %t324, i64 %t294)
  %t326 = getelementptr i8, ptr %t324, i64 %t295
  call void @olang_textcopy(ptr %t326, ptr %t297, i64 %t298)
  %t327 = getelementptr i8, ptr %t326, i64 %t298
  call void @olang_textcopy(ptr %t327, ptr %t301, i64 %t302)
  %t328 = getelementptr i8, ptr %t327, i64 %t302
  call void @olang_textcopy(ptr %t328, ptr %t304, i64 %t305)
  %t329 = getelementptr i8, ptr %t328, i64 %t305
  %t330 = call i64 @__olang_fmt_i64(ptr %t329, i64 %t307)
  %t331 = getelementptr i8, ptr %t329, i64 %t308
  call void @olang_textcopy(ptr %t331, ptr %t310, i64 %t311)
  %t332 = getelementptr i8, ptr %t331, i64 %t311
  call void @olang_textcopy(ptr %t332, ptr %t314, i64 %t315)
  %t333 = getelementptr i8, ptr %t332, i64 %t315
  call void @olang_textcopy(ptr %t333, ptr %t317, i64 %t318)
  %t334 = insertvalue { i64, ptr } undef, i64 %t319, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t320, 1
  %t337 = extractvalue { i64, ptr } %t335, 0
  %t338 = extractvalue { i64, ptr } %t335, 1
  %t339 = mul i64 %t337, 1
  %t340 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t339)
  call void @llvm.memcpy.p0.p0.i64(ptr %t340, ptr %t338, i64 %t339, i1 false)
  %t341 = insertvalue { i64, ptr } undef, i64 %t337, 0
  %t342 = insertvalue { i64, ptr } %t341, ptr %t340, 1
  %t343 = load ptr, ptr %l184, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %t343, { i64, ptr } %t342)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s15)
  br label %bb77
bb77:
  %t345 = load i64, ptr %l25, !tbaa !24
  %t347 = add i64 %t345, 1
  store i64 %t347, ptr %l25, !tbaa !24
  br label %bb68
bb78:
  %t349 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t349, ptr %l198, !tbaa !27
  %t351 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l23)
  store { i64, ptr } %t351, ptr %l200
  br label %bb79
bb79:
  %t352 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t354 = extractvalue { i64, ptr } %t352, 0
  %t355 = extractvalue { i64, ptr } %t352, 1
  %t356 = mul i64 %t354, 1
  %t357 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t356)
  call void @llvm.memcpy.p0.p0.i64(ptr %t357, ptr %t355, i64 %t356, i1 false)
  %t358 = insertvalue { i64, ptr } undef, i64 %t354, 0
  %t359 = insertvalue { i64, ptr } %t358, ptr %t357, 1
  %t360 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t362 = call i32 @std_2fos_2eWriteFile(ptr %v3, ptr %s0, { i64, ptr } %t360, { i64, ptr } %t359)
  store i32 %t362, ptr %l203
  %t363 = icmp ne i32 %t362, 0
  br i1 %t363, label %bb81, label %ok.364, !prof !99
ok.364:
  br label %bb80
bb80:
  br label %bb88
bb81:
  %t365 = load i32, ptr %l203, !tbaa !23
  %t366 = ashr i32 %t365, 16
  %t368 = icmp eq i32 %t366, 1
  store i1 %t368, ptr %l205, !tbaa !21
  %t369 = load i32, ptr %l203, !tbaa !23
  %t370 = ashr i32 %t369, 16
  %t372 = icmp eq i32 %t370, 1
  br i1 %t372, label %bb82, label %bb83
bb82:
  call void @__olang_errpay_pop()
  br label %bb83
bb83:
  br label %bb84
bb84:
  store %olang.scope zeroinitializer, ptr %s18
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t376 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s18, ptr %t374, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d158, i32 0, i32 1) })
  store i32 %t376, ptr %l209
  %t377 = icmp ne i32 %t376, 0
  br i1 %t377, label %bb86, label %ok.378, !prof !99
ok.378:
  br label %bb85
bb85:
  br label %bb87
bb86:
  %t379 = load i32, ptr %l209, !tbaa !23
  %t380 = lshr i32 %t379, 16
  %t381 = and i32 %t379, 65535
  %t382 = icmp eq i32 %t380, 1
  %t383 = select i1 %t382, i32 1, i32 0
  %t384 = icmp eq i32 %t379, 0
  %t385 = shl i32 %t383, 16
  %t386 = or i32 %t385, %t381
  %t387 = select i1 %t384, i32 0, i32 %t386
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t387, ptr %rv
  br label %ret
bb87:
  call void @__olang_scope_close(ptr %s18)
  br label %bb88
bb88:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t392 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t397 = call { i32, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edump(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %s0, ptr %t389, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %t392)
  %t398 = extractvalue { i32, ptr } %t397, 1
  %t399 = extractvalue { i32, ptr } %t397, 0
  store i32 %t399, ptr %l217
  %t400 = icmp ne i32 %t399, 0
  br i1 %t400, label %bb90, label %ok.401, !prof !99
ok.401:
  store ptr %t398, ptr %l216
  br label %bb89
bb89:
  %t402 = load ptr, ptr %l216, !tbaa !29
  store ptr %t402, ptr %l211, !tbaa !29
  br label %bb91
bb90:
  %t403 = load i32, ptr %l217, !tbaa !23
  %t404 = lshr i32 %t403, 16
  %t405 = and i32 %t403, 65535
  %t406 = icmp eq i32 %t404, 1
  %t407 = select i1 %t406, i32 1, i32 0
  %t408 = icmp eq i32 %t403, 0
  %t409 = shl i32 %t407, 16
  %t410 = or i32 %t409, %t405
  %t411 = select i1 %t408, i32 0, i32 %t410
  call void @__olang_scope_close(ptr %s0)
  store i32 %t411, ptr %rv
  br label %ret
bb91:
  %t413 = load ptr, ptr %l211, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s19
  %t416 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s0, ptr %s19, ptr %t413)
  store { i64, ptr } %t416, ptr %l220
  br label %bb92
bb92:
  %t417 = load { i64, ptr }, ptr %l220, !tbaa !27
  %t418 = extractvalue { i64, ptr } %t417, 0
  %t419 = extractvalue { i64, ptr } %t417, 1
  %t420 = mul i64 %t418, 8
  %t421 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t420)
  call void @llvm.memcpy.p0.p0.i64(ptr %t421, ptr %t419, i64 %t420, i1 false)
  %t422 = insertvalue { i64, ptr } undef, i64 %t418, 0
  %t423 = insertvalue { i64, ptr } %t422, ptr %t421, 1
  store { i64, ptr } %t423, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  %t425 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t427 = extractvalue { i64, ptr } %t425, 0
  store i64 %t427, ptr %l31, !tbaa !24
  br label %bb93
bb93:
  store %olang.scope zeroinitializer, ptr %s20
  %t429 = load i64, ptr %l30, !tbaa !24
  %t430 = load i64, ptr %l31, !tbaa !24
  %t433 = icmp slt i64 %t429, %t430
  %t435 = xor i1 %t433, true
  br i1 %t435, label %bb94, label %bb95
bb94:
  call void @__olang_scope_close(ptr %s20)
  br label %bb153
bb95:
  br label %bb96
bb96:
  %t437 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t437, ptr %l228, !tbaa !27
  %t438 = load i64, ptr %l30, !tbaa !24
  %t440 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t441 = load ptr, ptr %t440, !tbaa !27
  %t442 = getelementptr ptr, ptr %t441, i64 %t438
  %t443 = load ptr, ptr %t442, !tbaa !39
  store ptr %t443, ptr %l32, !tbaa !29
  %t445 = load ptr, ptr %l32, !tbaa !29
  %t447 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s19, ptr %s20, ptr %s20, ptr %t445, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d159, i32 0, i32 1) })
  store { i64, ptr } %t447, ptr %l232
  br label %bb97
bb97:
  %t448 = load { i64, ptr }, ptr %l232, !tbaa !27
  store { i64, ptr } %t448, ptr %l33, !tbaa !27
  %t449 = load ptr, ptr %l32, !tbaa !29
  %t451 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s19, ptr %s20, ptr %s20, ptr %t449, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d160, i32 0, i32 1) })
  store { i64, ptr } %t451, ptr %l234
  br label %bb98
bb98:
  %t452 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t452, 0
  %t454 = extractvalue { i64, ptr } %t452, 1
  %t455 = mul i64 %t453, 1
  %t456 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t455)
  call void @llvm.memcpy.p0.p0.i64(ptr %t456, ptr %t454, i64 %t455, i1 false)
  %t457 = insertvalue { i64, ptr } undef, i64 %t453, 0
  %t458 = insertvalue { i64, ptr } %t457, ptr %t456, 1
  %t460 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s20, ptr %s20, { i64, ptr } %t458, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d161, i32 0, i32 1) })
  store i1 %t460, ptr %l236
  br label %bb99
bb99:
  %t461 = load i1, ptr %l236, !tbaa !21
  %t462 = xor i1 %t461, true
  br i1 %t462, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l238, !tbaa !21
  br label %bb103
bb101:
  %t464 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t466 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s20, ptr %s20, { i64, ptr } %t464, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d162, i32 0, i32 1) })
  store i1 %t466, ptr %l240
  br label %bb102
bb102:
  %t467 = load i1, ptr %l240, !tbaa !21
  %t468 = xor i1 %t467, true
  store i1 %t468, ptr %l238, !tbaa !21
  br label %bb103
bb103:
  %t470 = load i1, ptr %l238, !tbaa !21
  br i1 %t470, label %bb104, label %bb105
bb104:
  call void @__olang_scope_close(ptr %s20)
  br label %bb152
bb105:
  br label %bb106
bb106:
  %t471 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t473 = extractvalue { i64, ptr } %t471, 0
  store i64 %t473, ptr %l244, !tbaa !24
  %t474 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t475 = extractvalue { i64, ptr } %t474, 0
  store i64 %t475, ptr %l245, !tbaa !24
  %t476 = icmp sge i64 9, 0
  br i1 %t476, label %bb107, label %bb108
bb107:
  %t478 = load i64, ptr %l244, !tbaa !24
  %t479 = icmp sle i64 9, %t478
  br i1 %t479, label %bb109, label %bb110
bb108:
  call void @__olang_check_failed(ptr @olang_loc_f6b0d4dcea5d2bc9_16e8d1d827605cbd)
  unreachable
bb109:
  %t481 = load i64, ptr %l244, !tbaa !24
  %t482 = load i64, ptr %l245, !tbaa !24
  %t483 = icmp sle i64 %t481, %t482
  br i1 %t483, label %bb111, label %bb112
bb110:
  call void @__olang_check_failed(ptr @olang_loc_f6b0d4dcea5d2bc9_16e8d1d827605cbd)
  unreachable
bb111:
  %t485 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t486 = load ptr, ptr %t485, !tbaa !27
  %t487 = load i64, ptr %l244, !tbaa !24
  %t488 = getelementptr i8, ptr %t486, i64 9
  %t489 = sub i64 %t487, 9
  %t490 = insertvalue { i64, ptr } undef, i64 %t489, 0
  %t491 = insertvalue { i64, ptr } %t490, ptr %t488, 1
  store { i64, ptr } %t491, ptr %l249, !tbaa !27
  %t492 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s20, i64 10)
  %t493 = extractvalue { i32, i64 } %t492, 1
  %t494 = extractvalue { i32, i64 } %t492, 0
  store i32 %t494, ptr %l251
  %t495 = icmp ne i32 %t494, 0
  br i1 %t495, label %bb114, label %ok.496, !prof !99
ok.496:
  store i64 %t493, ptr %l250
  br label %bb113
bb112:
  call void @__olang_check_failed(ptr @olang_loc_f6b0d4dcea5d2bc9_16e8d1d827605cbd)
  unreachable
bb113:
  %t497 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t498 = load i64, ptr %l250, !tbaa !24
  %t499 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s20, { i64, ptr } %t497, i64 %t498)
  %t500 = extractvalue { i32, i64 } %t499, 1
  %t501 = extractvalue { i32, i64 } %t499, 0
  store i32 %t501, ptr %l253
  %t502 = icmp ne i32 %t501, 0
  br i1 %t502, label %bb117, label %ok.503, !prof !99
ok.503:
  store i64 %t500, ptr %l252
  br label %bb116
bb114:
  br label %bb115
bb115:
  store i64 -1, ptr %l242, !tbaa !24
  br label %bb118
bb116:
  %t504 = load i64, ptr %l252, !tbaa !24
  store i64 %t504, ptr %l242, !tbaa !24
  br label %bb118
bb117:
  br label %bb115
bb118:
  %t505 = load i64, ptr %l242, !tbaa !24
  store i64 %t505, ptr %l34, !tbaa !24
  %t506 = load i64, ptr %l34, !tbaa !24
  %t508 = icmp slt i64 %t506, 0
  br i1 %t508, label %bb119, label %bb120
bb119:
  store i1 true, ptr %l256, !tbaa !21
  br label %bb122
bb120:
  %t510 = load i64, ptr %l34, !tbaa !24
  store i64 %t510, ptr %l257, !tbaa !24
  %t512 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l14)
  store i64 %t512, ptr %l259
  br label %bb121
bb121:
  %t513 = load i64, ptr %l257, !tbaa !24
  %t514 = load i64, ptr %l259, !tbaa !24
  %t515 = icmp sge i64 %t513, %t514
  store i1 %t515, ptr %l256, !tbaa !21
  br label %bb122
bb122:
  %t517 = load i1, ptr %l256, !tbaa !21
  br i1 %t517, label %bb123, label %bb124
bb123:
  call void @__olang_scope_close(ptr %s20)
  br label %bb152
bb124:
  br label %bb125
bb125:
  %t518 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s20, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t518, ptr %l261
  br label %bb126
bb126:
  %t519 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l261
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t519, ptr %l35
  store %olang.scope zeroinitializer, ptr %s23
  %t520 = load ptr, ptr %l32, !tbaa !29
  %t522 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s19, ptr %s23, ptr %t520)
  store { i64, ptr } %t522, ptr %l263
  br label %bb127
bb127:
  %t523 = load { i64, ptr }, ptr %l263, !tbaa !27
  %t524 = extractvalue { i64, ptr } %t523, 0
  %t525 = extractvalue { i64, ptr } %t523, 1
  %t526 = mul i64 %t524, 8
  %t527 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t526)
  call void @llvm.memcpy.p0.p0.i64(ptr %t527, ptr %t525, i64 %t526, i1 false)
  %t528 = insertvalue { i64, ptr } undef, i64 %t524, 0
  %t529 = insertvalue { i64, ptr } %t528, ptr %t527, 1
  store { i64, ptr } %t529, ptr %l36, !tbaa !27
  store i64 0, ptr %l37, !tbaa !24
  %t531 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t533 = extractvalue { i64, ptr } %t531, 0
  store i64 %t533, ptr %l38, !tbaa !24
  br label %bb128
bb128:
  store %olang.scope zeroinitializer, ptr %s24
  %t535 = load i64, ptr %l37, !tbaa !24
  %t536 = load i64, ptr %l38, !tbaa !24
  %t539 = icmp slt i64 %t535, %t536
  %t541 = xor i1 %t539, true
  br i1 %t541, label %bb129, label %bb130
bb129:
  call void @__olang_scope_close(ptr %s24)
  br label %bb141
bb130:
  br label %bb131
bb131:
  %t543 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t543, ptr %l271, !tbaa !27
  %t544 = load i64, ptr %l37, !tbaa !24
  %t546 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t547 = load ptr, ptr %t546, !tbaa !27
  %t548 = getelementptr ptr, ptr %t547, i64 %t544
  %t549 = load ptr, ptr %t548, !tbaa !39
  %t553 = call { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %s23, ptr %s24, ptr %t549)
  store { i64, ptr } %t553, ptr %l275
  br label %bb132
bb132:
  %t554 = load { i64, ptr }, ptr %l275, !tbaa !27
  store ptr %l35, ptr %l276, !tbaa !29
  store { i64, ptr } %t554, ptr %l278, !tbaa !27
  %t556 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s24, i64 10)
  %t557 = extractvalue { i32, i64 } %t556, 1
  %t558 = extractvalue { i32, i64 } %t556, 0
  store i32 %t558, ptr %l280
  %t559 = icmp ne i32 %t558, 0
  br i1 %t559, label %bb134, label %ok.560, !prof !99
ok.560:
  store i64 %t557, ptr %l279
  br label %bb133
bb133:
  %t561 = load { i64, ptr }, ptr %l278, !tbaa !27
  %t562 = load i64, ptr %l279, !tbaa !24
  %t563 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s24, { i64, ptr } %t561, i64 %t562)
  %t564 = extractvalue { i32, i64 } %t563, 1
  %t565 = extractvalue { i32, i64 } %t563, 0
  store i32 %t565, ptr %l282
  %t566 = icmp ne i32 %t565, 0
  br i1 %t566, label %bb137, label %ok.567, !prof !99
ok.567:
  store i64 %t564, ptr %l281
  br label %bb136
bb134:
  br label %bb135
bb135:
  store i64 -1, ptr %l277, !tbaa !24
  br label %bb138
bb136:
  %t568 = load i64, ptr %l281, !tbaa !24
  store i64 %t568, ptr %l277, !tbaa !24
  br label %bb138
bb137:
  br label %bb135
bb138:
  %t569 = load ptr, ptr %l276, !tbaa !29
  %t570 = load i64, ptr %l277, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s20, ptr %t569, i64 %t570)
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s24)
  br label %bb140
bb140:
  %t571 = load i64, ptr %l37, !tbaa !24
  %t573 = add i64 %t571, 1
  store i64 %t573, ptr %l37, !tbaa !24
  br label %bb128
bb141:
  call void @__olang_scope_close(ptr %s23)
  %t576 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s20, ptr %l35)
  store i64 %t576, ptr %l286
  br label %bb142
bb142:
  %t577 = load i64, ptr %l286, !tbaa !24
  %t578 = icmp eq i64 %t577, 2
  br i1 %t578, label %bb143, label %bb144
bb143:
  %t580 = load i64, ptr %l34, !tbaa !24
  %t583 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l14, i64 %t580)
  store i64 %t583, ptr %l290
  br label %bb145
bb144:
  br label %bb151
bb145:
  %t584 = load i64, ptr %l290, !tbaa !24
  store i64 %t584, ptr %l41, !tbaa !24
  %t586 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s20, ptr %l35, i64 0)
  store i64 %t586, ptr %l292
  br label %bb146
bb146:
  %t587 = load i64, ptr %l292, !tbaa !24
  store i64 %t587, ptr %l42, !tbaa !24
  %t588 = load ptr, ptr %l0, !tbaa !29
  %t590 = getelementptr %"compiler/bindgen:gen", ptr %t588, i32 0, i32 5
  %t591 = load i64, ptr %l41, !tbaa !24
  %t594 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t590, i64 %t591)
  store ptr %t594, ptr %l296
  br label %bb147
bb147:
  %t595 = load ptr, ptr %l296, !tbaa !29
  %t597 = load i64, ptr %l42, !tbaa !24
  %t600 = getelementptr %"compiler/bindgen:record", ptr %t595, i32 0, i32 13
  store i64 %t597, ptr %t600, !tbaa !24
  %t601 = load i64, ptr %l34, !tbaa !24
  %t604 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l14, i64 %t601)
  store i64 %t604, ptr %l301
  br label %bb148
bb148:
  %t605 = load i64, ptr %l301, !tbaa !24
  store i64 %t605, ptr %l44, !tbaa !24
  %t607 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s20, ptr %l35, i64 1)
  store i64 %t607, ptr %l303
  br label %bb149
bb149:
  %t608 = load i64, ptr %l303, !tbaa !24
  store i64 %t608, ptr %l45, !tbaa !24
  %t609 = load ptr, ptr %l0, !tbaa !29
  %t611 = getelementptr %"compiler/bindgen:gen", ptr %t609, i32 0, i32 5
  %t612 = load i64, ptr %l44, !tbaa !24
  %t615 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t611, i64 %t612)
  store ptr %t615, ptr %l307
  br label %bb150
bb150:
  %t616 = load ptr, ptr %l307, !tbaa !29
  %t618 = load i64, ptr %l45, !tbaa !24
  %t621 = getelementptr %"compiler/bindgen:record", ptr %t616, i32 0, i32 14
  store i64 %t618, ptr %t621, !tbaa !24
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s20)
  br label %bb152
bb152:
  %t622 = load i64, ptr %l30, !tbaa !24
  %t624 = add i64 %t622, 1
  store i64 %t624, ptr %l30, !tbaa !24
  br label %bb93
bb153:
  call void @__olang_scope_close(ptr %s19)
  store i64 0, ptr %l47, !tbaa !24
  %t626 = load ptr, ptr %l0, !tbaa !29
  %t628 = getelementptr %"compiler/bindgen:gen", ptr %t626, i32 0, i32 5
  %t630 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t628)
  store i64 %t630, ptr %l314
  br label %bb154
bb154:
  %t631 = load i64, ptr %l314, !tbaa !24
  store i64 %t631, ptr %l48, !tbaa !24
  store i64 1, ptr %l49, !tbaa !24
  %t632 = load i64, ptr %l48, !tbaa !24
  %t633 = load i64, ptr %l47, !tbaa !24
  %t636 = icmp sgt i64 %t632, %t633
  br i1 %t636, label %bb155, label %bb156
bb155:
  %t638 = load i64, ptr %l49, !tbaa !24
  %t640 = icmp sgt i64 %t638, 0
  br i1 %t640, label %bb157, label %bb158
bb156:
  store i64 0, ptr %l318, !tbaa !24
  br label %bb160
bb157:
  %t642 = load i64, ptr %l48, !tbaa !24
  %t643 = load i64, ptr %l47, !tbaa !24
  %t646 = sub i64 %t642, %t643
  %t647 = load i64, ptr %l49, !tbaa !24
  %t650 = add i64 %t646, %t647
  %t652 = sub i64 %t650, 1
  %t653 = load i64, ptr %l49, !tbaa !24
  %t656 = sdiv i64 %t652, %t653
  store i64 %t656, ptr %l321, !tbaa !24
  br label %bb159
bb158:
  store i64 0, ptr %l321, !tbaa !24
  br label %bb159
bb159:
  %t658 = load i64, ptr %l321, !tbaa !24
  store i64 %t658, ptr %l318, !tbaa !24
  br label %bb160
bb160:
  %t659 = load i64, ptr %l318, !tbaa !24
  store i64 %t659, ptr %l50, !tbaa !24
  store i64 0, ptr %l51, !tbaa !24
  br label %bb161
bb161:
  %t660 = load i64, ptr %l51, !tbaa !24
  %t661 = load i64, ptr %l50, !tbaa !24
  %t664 = icmp slt i64 %t660, %t661
  %t666 = xor i1 %t664, true
  br i1 %t666, label %bb162, label %bb163
bb162:
  br label %bb167
bb163:
  br label %bb164
bb164:
  %t668 = load i64, ptr %l47, !tbaa !24
  %t669 = load i64, ptr %l51, !tbaa !24
  %t670 = load i64, ptr %l49, !tbaa !24
  %t673 = mul i64 %t669, %t670
  %t676 = add i64 %t668, %t673
  store i64 -1, ptr %l54, !tbaa !24
  %t680 = load ptr, ptr %l0, !tbaa !29
  %t682 = getelementptr %"compiler/bindgen:gen", ptr %t680, i32 0, i32 5
  %t686 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t682, i64 %t676)
  store ptr %t686, ptr %l343
  br label %bb165
bb165:
  %t687 = load ptr, ptr %l343, !tbaa !29
  %t689 = load i64, ptr %l54, !tbaa !24
  %t692 = getelementptr %"compiler/bindgen:record", ptr %t687, i32 0, i32 9
  store i64 %t689, ptr %t692, !tbaa !24
  br label %bb166
bb166:
  %t693 = load i64, ptr %l51, !tbaa !24
  %t695 = add i64 %t693, 1
  store i64 %t695, ptr %l51, !tbaa !24
  br label %bb161
bb167:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2espell(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l9 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %a0, i32 0, i32 5
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/bindgen:record", ptr %t9, i32 0, i32 11
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d163, i32 0, i32 1) })
  store i1 %t14, ptr %l9
  br label %bb2
bb2:
  %t15 = load i1, ptr %l9, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"compiler/bindgen:record", ptr %t18, i32 0, i32 11
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 1
  %t24 = extractvalue { i64, ptr } %t21, 0
  %t25 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t23, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t27, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"compiler/bindgen:record", ptr %t29, i32 0, i32 0
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 1
  %t35 = extractvalue { i64, ptr } %t32, 0
  %t36 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t35)
  call void @olang_textcopy(ptr %t36, ptr %t34, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t38, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %t26 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  %t29 = extractvalue { i64, ptr } %t25, 1
  %t30 = extractvalue { i64, ptr } %t25, 0
  %t31 = add i64 %t27, %t30
  %t32 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d166, i32 0, i32 1) })
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
  %t86 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t89 = extractvalue { i64, ptr } %t85, 1
  %t90 = extractvalue { i64, ptr } %t85, 0
  %t91 = add i64 %t87, %t90
  %t92 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d169, i32 0, i32 1) }, ptr %l64, !tbaa !27
  br label %bb35
bb28:
  %t118 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 14
  %t119 = load i64, ptr %t118, !tbaa !24
  %t121 = icmp eq i64 %t119, 4
  br i1 %t121, label %bb29, label %bb30
bb29:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d170, i32 0, i32 1) }, ptr %l67, !tbaa !27
  br label %bb34
bb30:
  %t123 = getelementptr %"compiler/bindgen:record", ptr %l4, i32 0, i32 14
  %t124 = load i64, ptr %t123, !tbaa !24
  %t126 = icmp eq i64 %t124, 2
  br i1 %t126, label %bb31, label %bb32
bb31:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d171, i32 0, i32 1) }, ptr %l70, !tbaa !27
  br label %bb33
bb32:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d172, i32 0, i32 1) }, ptr %l70, !tbaa !27
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
  %t139 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
  %t142 = extractvalue { i64, ptr } %t130, 1
  %t143 = extractvalue { i64, ptr } %t130, 0
  %t144 = add i64 %t140, %t143
  %t145 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  %t147 = add i64 %t144, %t146
  %t149 = call i64 @__olang_fmt_i64(ptr null, i64 %t138)
  %t150 = add i64 %t147, %t149
  %t151 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
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
  %t237 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamName(ptr %v0, ptr %v0, ptr %s0, ptr %s10, ptr %t233, { i64, ptr } %t234, i64 %t232, ptr %l9)
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
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d176, i32 0, i32 1) }, ptr %l136, !tbaa !27
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
  %t320 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d177, i32 0, i32 1) }, 1
  %t321 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d177, i32 0, i32 1) }, 0
  %t322 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t323 = extractvalue { i64, ptr } %t322, 1
  %t324 = extractvalue { i64, ptr } %t322, 0
  %t325 = add i64 %t321, %t324
  %t326 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t327 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  %t328 = add i64 %t325, %t327
  %t329 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 1
  %t331 = extractvalue { i64, ptr } %t329, 0
  %t332 = add i64 %t328, %t331
  %t333 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t334 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t335 = add i64 %t332, %t334
  %t337 = call i64 @__olang_fmt_i64(ptr null, i64 %t319)
  %t338 = add i64 %t335, %t337
  %t339 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t340 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d181, i32 0, i32 1) }, ptr %l157, !tbaa !27
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
  %t384 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t385 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t387 = extractvalue { i64, ptr } %t382, 1
  %t388 = extractvalue { i64, ptr } %t382, 0
  %t389 = add i64 %t385, %t388
  %t390 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t391 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t392 = add i64 %t389, %t391
  %t394 = extractvalue { i64, ptr } %t381, 1
  %t395 = extractvalue { i64, ptr } %t381, 0
  %t396 = add i64 %t392, %t395
  %t397 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d185, i32 0, i32 1) })
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

define dso_local { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %lp6 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l10 = alloca i1
  %l14 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l28 = alloca i1
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %v0, ptr %v1, ptr %v1, ptr %t1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d186, i32 0, i32 1) })
  store { i64, ptr } %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t4, ptr %lp1
  %t5 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t6 = load ptr, ptr %lp1
  store { i64, ptr } %t5, ptr %t6, !tbaa !27
  %t7 = load ptr, ptr %lp1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t8, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d187, i32 0, i32 1) })
  store i1 %t10, ptr %l10
  br label %bb2
bb2:
  %t11 = load i1, ptr %l10, !tbaa !21
  %t12 = xor i1 %t11, true
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %lp1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t15, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %v0, ptr %s2, ptr %t17)
  store { i64, ptr } %t19, ptr %l14
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  %t22 = extractvalue { i64, ptr } %t20, 1
  %t23 = mul i64 %t21, 8
  %t24 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t23)
  call void @llvm.memcpy.p0.p0.i64(ptr %t24, ptr %t22, i64 %t23, i1 false)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s3)
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t40 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t40, ptr %l22, !tbaa !27
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr ptr, ptr %t44, i64 %t41
  %t46 = load ptr, ptr %t45, !tbaa !39
  %t50 = call { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %s2, ptr %v1, ptr %t46)
  store { i64, ptr } %t50, ptr %l26
  br label %bb11
bb11:
  %t51 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t51, ptr %lp6
  %t52 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t53 = load ptr, ptr %lp6
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load ptr, ptr %lp6
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s3, { i64, ptr } %t55, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d188, i32 0, i32 1) })
  store i1 %t57, ptr %l28
  br label %bb12
bb12:
  %t58 = load i1, ptr %l28, !tbaa !21
  %t59 = xor i1 %t58, true
  br i1 %t59, label %bb13, label %bb14
bb13:
  %t61 = load ptr, ptr %lp6
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t62, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb16
bb16:
  %t64 = load i64, ptr %l3, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l3, !tbaa !24
  br label %bb7
bb17:
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d189, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t68, ptr %l34, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  store i64 %t70, ptr %l35, !tbaa !24
  %t71 = load i64, ptr %l35, !tbaa !24
  %t72 = mul i64 %t71, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t72)
  %t74 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  store { i64, ptr } %t75, ptr %l36, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = load i64, ptr %l35, !tbaa !24
  %t81 = mul i64 %t80, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t77, ptr %t79, i64 %t81, i1 false)
  %t82 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t82, ptr %l34, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t83 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t83, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l4 = alloca %"compiler/bindgen:cx"
  %rv = alloca %"compiler/bindgen:cx"
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v0, ptr %v1, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 -1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d190, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load %"compiler/bindgen:cx", ptr %l4
  store %"compiler/bindgen:cx" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cx", ptr %rv
  ret %"compiler/bindgen:cx" %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2eresultText(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l5 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l46 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i1
  %l51 = alloca i1
  %l53 = alloca i1
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d191, i32 0, i32 1) })
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d192, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t7, ptr %l8, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l10, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l9, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t21, ptr %l8, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t22 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l1, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t27 = sub i64 %t25, 1
  store i64 %t27, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = icmp sge i64 %t29, 0
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb6, label %bb7
bb6:
  br label %bb19
bb7:
  br label %bb8
bb8:
  %t35 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t35, ptr %l17, !tbaa !27
  %t36 = load i64, ptr %l2, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i8, ptr %t39, i64 %t36
  %t41 = load i8, ptr %t40, !tbaa !32
  %t43 = icmp eq i8 %t41, 41
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l1, !tbaa !24
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l1, !tbaa !24
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t49 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t49, ptr %l23, !tbaa !27
  %t50 = load i64, ptr %l2, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr i8, ptr %t53, i64 %t50
  %t55 = load i8, ptr %t54, !tbaa !32
  %t57 = icmp eq i8 %t55, 40
  br i1 %t57, label %bb12, label %bb13
bb12:
  %t59 = load i64, ptr %l1, !tbaa !24
  %t61 = sub i64 %t59, 1
  store i64 %t61, ptr %l1, !tbaa !24
  %t63 = load i64, ptr %l1, !tbaa !24
  %t65 = icmp eq i64 %t63, 0
  br i1 %t65, label %bb14, label %bb15
bb13:
  br label %bb17
bb14:
  br label %bb19
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = sub i64 %t67, 1
  store i64 %t69, ptr %l2, !tbaa !24
  br label %bb18
bb18:
  br label %bb5
bb19:
  %t71 = load i64, ptr %l2, !tbaa !24
  %t73 = icmp sle i64 %t71, 0
  br i1 %t73, label %bb20, label %bb21
bb20:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d193, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t75, ptr %l36, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 0
  store i64 %t77, ptr %l37, !tbaa !24
  %t78 = load i64, ptr %l37, !tbaa !24
  %t79 = mul i64 %t78, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t79)
  %t81 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  store { i64, ptr } %t82, ptr %l38, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l37, !tbaa !24
  %t88 = mul i64 %t87, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t84, ptr %t86, i64 %t88, i1 false)
  %t89 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t89, ptr %l36, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t90 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t90, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t91 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t91, ptr %l39, !tbaa !27
  %t92 = load i64, ptr %l2, !tbaa !24
  store i64 %t92, ptr %l40, !tbaa !24
  %t93 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  store i64 %t94, ptr %l41, !tbaa !24
  %t95 = icmp sge i64 0, 0
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t97 = load i64, ptr %l40, !tbaa !24
  %t98 = icmp sle i64 0, %t97
  br i1 %t98, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_63a5955120245215_3bb90f7c84aecf01)
  unreachable
bb25:
  %t100 = load i64, ptr %l40, !tbaa !24
  %t101 = load i64, ptr %l41, !tbaa !24
  %t102 = icmp sle i64 %t100, %t101
  br i1 %t102, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_63a5955120245215_3bb90f7c84aecf01)
  unreachable
bb27:
  %t104 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = load i64, ptr %l40, !tbaa !24
  %t107 = getelementptr i8, ptr %t105, i64 0
  %t108 = sub i64 %t106, 0
  %t109 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t107, 1
  %t112 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v0, { i64, ptr } %t110)
  store { i64, ptr } %t112, ptr %l46
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_63a5955120245215_3bb90f7c84aecf01)
  unreachable
bb29:
  %t113 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t113, ptr %l3, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d194, i32 0, i32 1) }, ptr %l49, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t118 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t114, { i64, ptr } %t117)
  store i1 %t118, ptr %l50
  br label %bb30
bb30:
  %t119 = load i1, ptr %l50, !tbaa !21
  br i1 %t119, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb34
bb32:
  %t120 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t122 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t120, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d195, i32 0, i32 1) })
  store i1 %t122, ptr %l53
  br label %bb33
bb33:
  %t123 = load i1, ptr %l53, !tbaa !21
  store i1 %t123, ptr %l51, !tbaa !21
  br label %bb34
bb34:
  %t124 = load i1, ptr %l51, !tbaa !21
  br i1 %t124, label %bb35, label %bb36
bb35:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d196, i32 0, i32 1) }, ptr %l54, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t125, ptr %l55, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 0
  store i64 %t127, ptr %l56, !tbaa !24
  %t128 = load i64, ptr %l56, !tbaa !24
  %t129 = mul i64 %t128, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t129)
  %t131 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  store { i64, ptr } %t132, ptr %l57, !tbaa !27
  %t133 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = load i64, ptr %l56, !tbaa !24
  %t138 = mul i64 %t137, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t134, ptr %t136, i64 %t138, i1 false)
  %t139 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t139, ptr %l55, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t140 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t140, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t141 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t141, 1
  %t144 = extractvalue { i64, ptr } %t141, 0
  %t145 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t144)
  call void @olang_textcopy(ptr %t145, ptr %t143, i64 %t144)
  %t146 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t145, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t147, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d197, i32 0, i32 1) }, ptr %l9, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d198, i32 0, i32 1) }, ptr %l21, !tbaa !27
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

define dso_local %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/bindgen:cx"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/bindgen:cx" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/bindgen:cx" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/bindgen:cx" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/bindgen:cx" %t14, { i64, ptr } %a3, 3
  store %"compiler/bindgen:cx" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cx", ptr %rv
  ret %"compiler/bindgen:cx" %rr
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
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang-cimport" }>, align 8
declare void @__olang_errpay_pop()
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
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2fbindgen_3agen_2e3 = weak hidden constant i1 false
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-E" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-dD" }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-w" }>, align 8
@.d15 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"clang could not be run" }>, align 8
@.d16 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"file not found" }>, align 8
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
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d43 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a ? with no :" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acx_2e0 = weak hidden constant i1 false
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d45 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" if " }>, align 8
@.d46 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" else " }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d48 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d50 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" if " }>, align 8
@.d51 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" else " }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d53 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"0x" }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"e" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"p" }>, align 8
@.d57 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"a hexadecimal float" }>, align 8
@.d58 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a long double" }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d61 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".0" }>, align 8
@.d62 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"0b" }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d65 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d66 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"', which is no number read here" }>, align 8
@.d67 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"its expansion is too deep" }>, align 8
@.d68 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
@.d69 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"##" }>, align 8
@.d70 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"it uses # or ##, which make text rather than an expression" }>, align 8
@.d71 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d73 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"it uses " }>, align 8
@.d74 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c", which takes a variable number of arguments" }>, align 8
@olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d77 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
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

declare void @__olang_region_drop(ptr) noinline
@.d78 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"its use of " }>, align 8
@.d79 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" is not closed" }>, align 8
@.d80 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"it gives " }>, align 8
@.d81 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" another number of arguments" }>, align 8
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
define internal i1 @olang_lambda_82(ptr %env, ptr %v0, { i64, ptr } %a0) #0 {
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

@.d83 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d84 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d85 = private constant <{ i64, [3 x { i64, ptr }] }> <{ i64 0, [3 x { i64, ptr }] [{ i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d199, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d200, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d201, i32 0, i32 1) }] }>, align 8
@.d86 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d87 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"its body is empty" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acparse_2e0 = weak hidden constant i1 false
@.d88 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"its body is no expression read here, at '" }>, align 8
@.d89 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d90 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d91 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d92 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d93 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d94 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"T" }>, align 8
@.d95 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d96 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d97 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d98 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d99 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d100 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" T" }>, align 8
@.d101 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c") " }>, align 8
@.d102 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"T" }>, align 8
@.d103 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d104 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d105 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d106 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" { return " }>, align 8
@.d107 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
@.d108 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d109 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"struct " }>, align 8
@.d110 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"union " }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03 = weak hidden constant i1 false
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

@.d111 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d112 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d113 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"CVoid" }>, align 8
@.d114 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"CStr" }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0 = weak hidden constant i1 false
@.d116 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d117 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d118 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"# " }>, align 8
@.d119 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d120 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5C\5C" }>, align 8
@.d121 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\5C" }>, align 8
@.d122 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0 = weak hidden constant i1 false
@.d123 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d124 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"#undef " }>, align 8
@.d125 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acMacro_2e0 = weak hidden constant i1 false
@.d126 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"#define " }>, align 8
@.d127 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d128 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d129 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d130 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acMacro_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3acMacro_2e3 = weak hidden constant i1 false
@.d131 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d132 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"tagUsed" }>, align 8
@.d133 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"union" }>, align 8
@.d134 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d135 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d136 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"id" }>, align 8
@.d137 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"union " }>, align 8
@.d138 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"struct " }>, align 8
@.d139 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"completeDefinition" }>, align 8
@.d140 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d141 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"TransparentUnionAttr" }>, align 8
@.d142 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"PackedAttr" }>, align 8
@.d143 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"RecordDecl" }>, align 8
@.d144 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d145 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"FieldDecl" }>, align 8
@.d146 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"isBitfield" }>, align 8
@.d147 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"isBitfield" }>, align 8
@.d148 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d149 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d150 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d151 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d152 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"enum __olang_l" }>, align 8
@.d153 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" : long long { __olang_z" }>, align 8
@.d154 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" = sizeof(" }>, align 8
@.d155 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"), __olang_a" }>, align 8
@.d156 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" = _Alignof(" }>, align 8
@.d157 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c") };\0A" }>, align 8
@.d158 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"the probe cannot be written" }>, align 8
@.d159 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d160 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d161 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"EnumDecl" }>, align 8
@.d162 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"__olang_l" }>, align 8
@.d163 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d164 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d165 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" packed struct() {\0A" }>, align 8
@.d166 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}\0A" }>, align 8
@.d167 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d168 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" struct() {\0A" }>, align 8
@.d169 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d170 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d171 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I16" }>, align 8
@.d172 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d173 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"    bytes := Array<" }>, align 8
@.d174 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">(" }>, align 8
@.d175 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c")\0A}\0A" }>, align 8
@.d176 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d177 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d178 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" := Array<" }>, align 8
@.d179 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">(" }>, align 8
@.d180 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d181 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d182 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d183 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d184 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d185 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}\0A" }>, align 8
@.d186 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"value" }>, align 8
@.d187 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d188 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d189 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d190 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d191 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d192 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d193 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d194 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d195 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d196 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d197 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d198 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d199 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d200 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d201 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
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
declare %"compiler/bindgen:Translation" @compiler_2fbindgen_3aTranslation_2ector(ptr %v0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %a0)
declare void @compiler_2fbindgen_3agen_2ector(ptr %out, ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/os:Output" } @compiler_2fbindgen_2eclangSays(ptr %v0, ptr %v1, { i64, ptr } %a0)
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
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2econstant(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eotherConsts(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrite(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBinary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/bindgen:cx" %a1)
declare %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/bindgen:cx" %a1)
declare %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecLead(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/bindgen:cx" %a1, %"compiler/bindgen:cx" %a2)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_2281448cce404233_754aa41ddbc9325f = external constant [0 x i8]
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_231822a9f2b4ccd6_f89b0d7c0520fae2 = external constant [0 x i8]
@olang_loc_3945c858895394b5_b3e6527511891161 = external constant [0 x i8]
@olang_loc_5833c224f66d4858_52a9715d8b07374 = external constant [0 x i8]
@olang_loc_8ffdd2b799db8b57_8707d2f5a85c3a7b = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Hdc04e7543082eec80486670259c0789b(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H40771be639b3022d183b79789a9eab56(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_Hbb0b9cf8ae0bb786ffc6cf28ae45ef64(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eFindIndex_3cstd_2f_H0cdaf28864c9da4990596b1986b376a0(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H21d8db2bdfeb46fab755f8173a35f95e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/bindgen:cparse" @compiler_2fbindgen_3acparse_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_7ea854ff7e2640a8_63f49c54b749b4b4 = external constant [0 x i8]
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd80cb4cbc6ceb8a13686fbc19b8451b4(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H116ed76223103781f5a7340c80f3d0f3(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecord(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare %"compiler/bindgen:ctype" @compiler_2fbindgen_3actype_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1, i64 %a2, i1 %a3, i64 %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2ePush_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/bindgen:ctype" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eLen_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %a0)
@olang_loc_76a2c5c4ca94453d_57e44e0801590749 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epointerParam(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2evalueType(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epackedFields(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efieldType(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
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
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %a0)
declare void @compiler_2fbindgen_3arecord_2ector(ptr %out, ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2ePush_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fbindgen_2eflag(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbindgen_2etypeOf(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eLen_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %a0)
declare %"compiler/bindgen:cFunc" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eAt_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbindgen_2enoReturnOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_f6b0d4dcea5d2bc9_16e8d1d827605cbd = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
@olang_loc_63a5955120245215_3bb90f7c84aecf01 = external constant [0 x i8]
declare ptr @compiler_2fbindgen_2emember(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_433ff8d12b25a21d_ce9dc62322af2169 = external constant [0 x i8]

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
