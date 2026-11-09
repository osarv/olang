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
  %t829 = load i64, ptr %l343
  %t830 = inttoptr i64 %t829 to ptr
  %t831 = call ptr @__olang_scope_alloc(ptr %t830, i64 %t828)
  call void @olang_textcopy(ptr %t831, ptr %t820, i64 %t821)
  %t832 = getelementptr i8, ptr %t831, i64 %t821
  call void @olang_textcopy(ptr %t832, ptr %t823, i64 %t824)
  %t833 = getelementptr i8, ptr %t832, i64 %t824
  call void @olang_textcopy(ptr %t833, ptr %t826, i64 %t827)
  %t834 = insertvalue { i64, ptr } undef, i64 %t828, 0
  %t835 = insertvalue { i64, ptr } %t834, ptr %t831, 1
  %t837 = load i64, ptr %l343
  %t838 = inttoptr i64 %t837 to ptr
  %t839 = extractvalue { i64, ptr } %t835, 0
  %t840 = extractvalue { i64, ptr } %t835, 1
  %t841 = mul i64 %t839, 1
  %t842 = call ptr @__olang_scope_alloc(ptr %t838, i64 %t841)
  call void @llvm.memcpy.p0.p0.i64(ptr %t842, ptr %t840, i64 %t841, i1 false)
  %t843 = insertvalue { i64, ptr } undef, i64 %t839, 0
  %t844 = insertvalue { i64, ptr } %t843, ptr %t842, 1
  %t845 = load i64, ptr %l343
  %t846 = inttoptr i64 %t845 to ptr
  %t847 = load i64, ptr %l343
  %t848 = inttoptr i64 %t847 to ptr
  %t851 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrite(ptr %v6, ptr %t846, ptr %t848, ptr %t818, { i64, ptr } %t844)
  store { i64, ptr } %t851, ptr %l349
  br label %bb204
bb204:
  %t852 = load { i64, ptr }, ptr %l349, !tbaa !27
  %t853 = load i64, ptr %l343
  %t854 = inttoptr i64 %t853 to ptr
  %t855 = extractvalue { i64, ptr } %t852, 0
  %t856 = extractvalue { i64, ptr } %t852, 1
  %t857 = mul i64 %t855, 1
  %t858 = call ptr @__olang_scope_alloc(ptr %t854, i64 %t857)
  call void @llvm.memcpy.p0.p0.i64(ptr %t858, ptr %t856, i64 %t857, i1 false)
  %t859 = insertvalue { i64, ptr } undef, i64 %t855, 0
  %t860 = insertvalue { i64, ptr } %t859, ptr %t858, 1
  %t861 = load ptr, ptr %lp6
  %t862 = getelementptr %"compiler/bindgen:Translation", ptr %t861, i32 0, i32 0
  %t863 = load { i64, ptr }, ptr %t862, !tbaa !27
  store { i64, ptr } %t863, ptr %l351, !tbaa !27
  %t865 = load ptr, ptr %lp6
  %t866 = getelementptr %"compiler/bindgen:Translation", ptr %t865, i32 0, i32 0
  store { i64, ptr } %t860, ptr %t866, !tbaa !27
  %t867 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e0
  br i1 %t867, label %bb205, label %bb206
bb205:
  %t869 = load { i64, ptr }, ptr %l351
  %t870 = extractvalue { i64, ptr } %t869, 1
  call void @__olang_region_release(ptr %t870)
  store { i64, ptr } zeroinitializer, ptr %l351
  br label %bb206
bb206:
  %t871 = load ptr, ptr %lp10
  %t872 = getelementptr %"compiler/bindgen:gen", ptr %t871, i32 0, i32 20
  %t874 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v6, ptr %t872)
  store i64 %t874, ptr %l354
  br label %bb207
bb207:
  %t875 = load i64, ptr %l354, !tbaa !24
  %t876 = icmp sgt i64 %t875, 0
  br i1 %t876, label %bb208, label %bb209
bb208:
  store i1 true, ptr %l356, !tbaa !21
  br label %bb211
bb209:
  %t878 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t880 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t878, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t880, ptr %l358
  br label %bb210
bb210:
  %t881 = load i1, ptr %l358, !tbaa !21
  %t882 = xor i1 %t881, true
  store i1 %t882, ptr %l356, !tbaa !21
  br label %bb211
bb211:
  %t884 = load i1, ptr %l356, !tbaa !21
  br i1 %t884, label %bb212, label %bb213
bb212:
  store %olang.scope zeroinitializer, ptr %s51
  %t885 = ptrtoint ptr %v6 to i64
  store i64 %t885, ptr %l360, !tbaa !24
  %t886 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e1
  br i1 %t886, label %bb214, label %bb215
bb213:
  br label %bb219
bb214:
  %t888 = call ptr @__olang_region_make(ptr %v6)
  %t889 = ptrtoint ptr %t888 to i64
  store i64 %t889, ptr %l360, !tbaa !24
  br label %bb215
bb215:
  %t890 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t890, ptr %l362, !tbaa !27
  %t891 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t891, ptr %l363, !tbaa !27
  %t892 = load ptr, ptr %lp10
  %t893 = getelementptr %"compiler/bindgen:gen", ptr %t892, i32 0, i32 20
  %t895 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v6, ptr %s51, ptr %t893)
  store { i64, ptr } %t895, ptr %l365
  br label %bb216
bb216:
  %t896 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t897 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t898 = load { i64, ptr }, ptr %l362, !tbaa !27
  %t899 = extractvalue { i64, ptr } %t898, 1
  %t900 = extractvalue { i64, ptr } %t898, 0
  %t901 = add i64 %t897, %t900
  %t902 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t903 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t904 = add i64 %t901, %t903
  %t905 = load { i64, ptr }, ptr %l363, !tbaa !27
  %t906 = extractvalue { i64, ptr } %t905, 1
  %t907 = extractvalue { i64, ptr } %t905, 0
  %t908 = add i64 %t904, %t907
  %t909 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t910 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t911 = add i64 %t908, %t910
  %t912 = load { i64, ptr }, ptr %l365, !tbaa !27
  %t913 = extractvalue { i64, ptr } %t912, 1
  %t914 = extractvalue { i64, ptr } %t912, 0
  %t915 = add i64 %t911, %t914
  %t916 = load i64, ptr %l360
  %t917 = inttoptr i64 %t916 to ptr
  %t918 = call ptr @__olang_scope_alloc(ptr %t917, i64 %t915)
  call void @olang_textcopy(ptr %t918, ptr %t896, i64 %t897)
  %t919 = getelementptr i8, ptr %t918, i64 %t897
  call void @olang_textcopy(ptr %t919, ptr %t899, i64 %t900)
  %t920 = getelementptr i8, ptr %t919, i64 %t900
  call void @olang_textcopy(ptr %t920, ptr %t902, i64 %t903)
  %t921 = getelementptr i8, ptr %t920, i64 %t903
  call void @olang_textcopy(ptr %t921, ptr %t906, i64 %t907)
  %t922 = getelementptr i8, ptr %t921, i64 %t907
  call void @olang_textcopy(ptr %t922, ptr %t909, i64 %t910)
  %t923 = getelementptr i8, ptr %t922, i64 %t910
  call void @olang_textcopy(ptr %t923, ptr %t913, i64 %t914)
  %t924 = insertvalue { i64, ptr } undef, i64 %t915, 0
  %t925 = insertvalue { i64, ptr } %t924, ptr %t918, 1
  %t927 = load i64, ptr %l360
  %t928 = inttoptr i64 %t927 to ptr
  %t929 = extractvalue { i64, ptr } %t925, 0
  %t930 = extractvalue { i64, ptr } %t925, 1
  %t931 = mul i64 %t929, 1
  %t932 = call ptr @__olang_scope_alloc(ptr %t928, i64 %t931)
  call void @llvm.memcpy.p0.p0.i64(ptr %t932, ptr %t930, i64 %t931, i1 false)
  %t933 = insertvalue { i64, ptr } undef, i64 %t929, 0
  %t934 = insertvalue { i64, ptr } %t933, ptr %t932, 1
  %t935 = load ptr, ptr %lp6
  %t936 = getelementptr %"compiler/bindgen:Translation", ptr %t935, i32 0, i32 1
  %t937 = load { i64, ptr }, ptr %t936, !tbaa !27
  store { i64, ptr } %t937, ptr %l368, !tbaa !27
  %t939 = load ptr, ptr %lp6
  %t940 = getelementptr %"compiler/bindgen:Translation", ptr %t939, i32 0, i32 1
  store { i64, ptr } %t934, ptr %t940, !tbaa !27
  %t941 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e1
  br i1 %t941, label %bb217, label %bb218
bb217:
  %t943 = load { i64, ptr }, ptr %l368
  %t944 = extractvalue { i64, ptr } %t943, 1
  call void @__olang_region_release(ptr %t944)
  store { i64, ptr } zeroinitializer, ptr %l368
  br label %bb218
bb218:
  call void @__olang_scope_close(ptr %s51)
  br label %bb219
bb219:
  %t945 = load ptr, ptr %lp6
  %t946 = load %"compiler/bindgen:Translation", ptr %t945
  store %"compiler/bindgen:Translation" %t946, ptr %l370
  %t948 = call %"compiler/bindgen:Translation" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3aTranslation(ptr %v6, ptr %l370)
  store %"compiler/bindgen:Translation" %t948, ptr %l372
  br label %bb220
bb220:
  %t949 = load %"compiler/bindgen:Translation", ptr %l372
  store %"compiler/bindgen:Translation" %t949, ptr %l370
  %t950 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t952 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t950)
  store i32 %t952, ptr %l374
  %t953 = icmp ne i32 %t952, 0
  br i1 %t953, label %bb222, label %ok.954, !prof !99
ok.954:
  br label %bb221
bb221:
  br label %bb226
bb222:
  %t955 = load i32, ptr %l374, !tbaa !23
  %t956 = ashr i32 %t955, 16
  %t958 = icmp eq i32 %t956, 1
  store i1 %t958, ptr %l376, !tbaa !21
  %t959 = load i32, ptr %l374, !tbaa !23
  %t960 = ashr i32 %t959, 16
  %t962 = icmp eq i32 %t960, 1
  br i1 %t962, label %bb223, label %bb224
bb223:
  call void @__olang_errpay_pop()
  br label %bb224
bb224:
  br label %bb225
bb225:
  br label %bb226
bb226:
  call void @__olang_scope_close(ptr %s0)
  %t964 = load %"compiler/bindgen:Translation", ptr %l370
  store %"compiler/bindgen:Translation" %t964, ptr %rv
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
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t92, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d43, i32 0, i32 1) })
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
  call void @__olang_scope_close(ptr %s0)
  %t107 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t105, 0
  store { i32, %"compiler/bindgen:cx" } %t107, ptr %rv
  br label %ret
bb18:
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
  %lp2 = alloca ptr
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
  %l144 = alloca %"compiler/bindgen:cx"
  %l145 = alloca i64
  %l146 = alloca { i64, ptr }
  %l149 = alloca i64
  %l150 = alloca i64
  %l154 = alloca { i64, ptr }
  %l155 = alloca i64
  %l156 = alloca i32
  %l157 = alloca i64
  %l158 = alloca i32
  %l159 = alloca ptr
  %l160 = alloca i64
  %l165 = alloca i32
  %l167 = alloca i64
  %l173 = alloca %"compiler/bindgen:cx"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/bindgen:cx" }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v1, ptr %v2, { i64, ptr } %t1)
  store { i64, ptr } %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t4, ptr %lp2
  %t5 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t6 = load ptr, ptr %lp2
  store { i64, ptr } %t5, ptr %t6, !tbaa !27
  %t7 = load ptr, ptr %lp2
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t8, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t10, ptr %l13
  br label %bb2
bb2:
  %t11 = load i1, ptr %l13, !tbaa !21
  store i1 %t11, ptr %l3, !tbaa !21
  %t12 = load i1, ptr %l3, !tbaa !21
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = load ptr, ptr %lp2
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t20 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v2, ptr %s0, { i64, ptr } %t17, { i64, ptr } %t19)
  store i1 %t20, ptr %l19
  br label %bb5
bb4:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb10
bb5:
  %t21 = load i1, ptr %l19, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb9
bb7:
  %t22 = load ptr, ptr %lp2
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t26 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v2, ptr %s0, { i64, ptr } %t23, { i64, ptr } %t25)
  store i1 %t26, ptr %l23
  br label %bb8
bb8:
  %t27 = load i1, ptr %l23, !tbaa !21
  store i1 %t27, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l20, !tbaa !21
  store i1 %t28, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t29 = load i1, ptr %l16, !tbaa !21
  store i1 %t29, ptr %l4, !tbaa !21
  %t30 = load i1, ptr %l3, !tbaa !21
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t32 = load ptr, ptr %lp2
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t36 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v2, ptr %s0, { i64, ptr } %t33, { i64, ptr } %t35)
  store i1 %t36, ptr %l28
  br label %bb13
bb12:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb14
bb13:
  %t37 = load i1, ptr %l28, !tbaa !21
  store i1 %t37, ptr %l25, !tbaa !21
  br label %bb14
bb14:
  %t38 = load i1, ptr %l25, !tbaa !21
  br i1 %t38, label %bb15, label %bb16
bb15:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t39, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i32 %t41, ptr %l30
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb18, label %ok.43, !prof !99
ok.43:
  br label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb19
bb18:
  %t44 = load i32, ptr %l30, !tbaa !23
  %t45 = lshr i32 %t44, 16
  %t46 = and i32 %t44, 65535
  %t47 = icmp eq i32 %t45, 1
  %t48 = select i1 %t47, i32 1, i32 0
  %t49 = icmp eq i32 %t44, 0
  %t50 = shl i32 %t48, 16
  %t51 = or i32 %t50, %t46
  %t52 = select i1 %t49, i32 0, i32 %t51
  call void @__olang_scope_close(ptr %s0)
  %t54 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t52, 0
  store { i32, %"compiler/bindgen:cx" } %t54, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t55 = load ptr, ptr %lp2
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  store i64 %t58, ptr %l5, !tbaa !24
  br label %bb21
bb21:
  %t60 = load i64, ptr %l5, !tbaa !24
  %t62 = icmp sgt i64 %t60, 0
  br i1 %t62, label %bb22, label %bb23
bb22:
  %t64 = load i64, ptr %l5, !tbaa !24
  %t66 = sub i64 %t64, 1
  %t67 = load ptr, ptr %lp2
  %t69 = getelementptr { i64, ptr }, ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i8, ptr %t70, i64 %t66
  %t72 = load i8, ptr %t71, !tbaa !32
  %t74 = icmp eq i8 %t72, 117
  br i1 %t74, label %bb24, label %bb25
bb23:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb33
bb24:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb26
bb25:
  %t76 = load i64, ptr %l5, !tbaa !24
  %t78 = sub i64 %t76, 1
  %t79 = load ptr, ptr %lp2
  %t81 = getelementptr { i64, ptr }, ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i8, ptr %t82, i64 %t78
  %t84 = load i8, ptr %t83, !tbaa !32
  %t86 = icmp eq i8 %t84, 108
  store i1 %t86, ptr %l41, !tbaa !21
  br label %bb26
bb26:
  %t88 = load i1, ptr %l41, !tbaa !21
  br i1 %t88, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb32
bb28:
  %t89 = load i1, ptr %l4, !tbaa !21
  br i1 %t89, label %bb29, label %bb30
bb29:
  %t91 = load i64, ptr %l5, !tbaa !24
  %t93 = sub i64 %t91, 1
  %t94 = load ptr, ptr %lp2
  %t96 = getelementptr { i64, ptr }, ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i8, ptr %t97, i64 %t93
  %t99 = load i8, ptr %t98, !tbaa !32
  %t101 = icmp eq i8 %t99, 102
  store i1 %t101, ptr %l48, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb31
bb31:
  %t103 = load i1, ptr %l48, !tbaa !21
  store i1 %t103, ptr %l46, !tbaa !21
  br label %bb32
bb32:
  %t104 = load i1, ptr %l46, !tbaa !21
  store i1 %t104, ptr %l36, !tbaa !21
  br label %bb33
bb33:
  %t105 = load i1, ptr %l36, !tbaa !21
  %t106 = xor i1 %t105, true
  br i1 %t106, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  br label %bb36
bb36:
  %t108 = load i64, ptr %l5, !tbaa !24
  %t110 = sub i64 %t108, 1
  store i64 %t110, ptr %l5, !tbaa !24
  br label %bb37
bb37:
  br label %bb21
bb38:
  %t112 = load i1, ptr %l4, !tbaa !21
  br i1 %t112, label %bb39, label %bb40
bb39:
  %t114 = load i64, ptr %l5, !tbaa !24
  %t115 = load ptr, ptr %lp2
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t116, 0
  %t121 = icmp slt i64 %t114, %t118
  store i1 %t121, ptr %l57, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb41
bb41:
  %t123 = load i1, ptr %l57, !tbaa !21
  br i1 %t123, label %bb42, label %bb43
bb42:
  %t124 = load i64, ptr %l5, !tbaa !24
  %t125 = load ptr, ptr %lp2
  %t127 = getelementptr { i64, ptr }, ptr %t125, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i8, ptr %t128, i64 %t124
  %t130 = load i8, ptr %t129, !tbaa !32
  %t132 = icmp eq i8 %t130, 108
  store i1 %t132, ptr %l62, !tbaa !21
  br label %bb44
bb43:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb44
bb44:
  %t134 = load i1, ptr %l62, !tbaa !21
  br i1 %t134, label %bb45, label %bb46
bb45:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t135, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i32 %t137, ptr %l67
  %t138 = icmp ne i32 %t137, 0
  br i1 %t138, label %bb48, label %ok.139, !prof !99
ok.139:
  br label %bb47
bb46:
  br label %bb50
bb47:
  br label %bb49
bb48:
  %t140 = load i32, ptr %l67, !tbaa !23
  %t141 = lshr i32 %t140, 16
  %t142 = and i32 %t140, 65535
  %t143 = icmp eq i32 %t141, 1
  %t144 = select i1 %t143, i32 1, i32 0
  %t145 = icmp eq i32 %t140, 0
  %t146 = shl i32 %t144, 16
  %t147 = or i32 %t146, %t142
  %t148 = select i1 %t145, i32 0, i32 %t147
  call void @__olang_scope_close(ptr %s0)
  %t150 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t148, 0
  store { i32, %"compiler/bindgen:cx" } %t150, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  %t151 = load i64, ptr %l5, !tbaa !24
  store i64 %t151, ptr %l69, !tbaa !24
  %t152 = load ptr, ptr %lp2
  %t153 = load { i64, ptr }, ptr %t152, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 0
  store i64 %t154, ptr %l70, !tbaa !24
  %t155 = icmp sge i64 0, 0
  br i1 %t155, label %bb51, label %bb52
bb51:
  %t157 = load i64, ptr %l69, !tbaa !24
  %t158 = icmp sle i64 0, %t157
  br i1 %t158, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_2281448cce404233_754aa41ddbc9325f)
  unreachable
bb53:
  %t160 = load i64, ptr %l69, !tbaa !24
  %t161 = load i64, ptr %l70, !tbaa !24
  %t162 = icmp sle i64 %t160, %t161
  br i1 %t162, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_2281448cce404233_754aa41ddbc9325f)
  unreachable
bb55:
  %t164 = load ptr, ptr %lp2
  %t165 = getelementptr { i64, ptr }, ptr %t164, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = load i64, ptr %l69, !tbaa !24
  %t168 = getelementptr i8, ptr %t166, i64 0
  %t169 = sub i64 %t167, 0
  %t170 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t168, 1
  store { i64, ptr } %t171, ptr %l6, !tbaa !27
  %t173 = load i1, ptr %l4, !tbaa !21
  br i1 %t173, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_2281448cce404233_754aa41ddbc9325f)
  unreachable
bb57:
  store %olang.scope zeroinitializer, ptr %s4
  %t175 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s4)
  store %"std/prelude/text:StringBuilder" %t175, ptr %l76
  br label %bb59
bb58:
  br label %bb102
bb59:
  %t176 = load %"std/prelude/text:StringBuilder", ptr %l76
  store %"std/prelude/text:StringBuilder" %t176, ptr %l7
  %t177 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t179 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s4, { i64, ptr } %t177, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t179, ptr %l78
  br label %bb60
bb60:
  %t180 = load i1, ptr %l78, !tbaa !21
  br i1 %t180, label %bb61, label %bb62
bb61:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s4, ptr %l7, i8 48)
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t182 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t185 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v2, { i64, ptr } %t182, i8 101)
  %t186 = extractvalue { i32, i64 } %t185, 1
  %t187 = extractvalue { i32, i64 } %t185, 0
  store i32 %t187, ptr %l84
  %t188 = icmp ne i32 %t187, 0
  br i1 %t188, label %bb66, label %ok.189, !prof !99
ok.189:
  store i64 %t186, ptr %l83
  br label %bb65
bb65:
  %t190 = load i64, ptr %l83, !tbaa !24
  store i64 %t190, ptr %l80, !tbaa !24
  br label %bb68
bb66:
  br label %bb67
bb67:
  %t191 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t191, 0
  store i64 %t193, ptr %l80, !tbaa !24
  br label %bb68
bb68:
  %t195 = load i64, ptr %l80, !tbaa !24
  store i64 %t195, ptr %l8, !tbaa !24
  store ptr %l7, ptr %l87, !tbaa !29
  %t196 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t196, ptr %l88, !tbaa !27
  %t197 = load i64, ptr %l8, !tbaa !24
  store i64 %t197, ptr %l89, !tbaa !24
  %t198 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t198, 0
  store i64 %t199, ptr %l90, !tbaa !24
  %t200 = icmp sge i64 0, 0
  br i1 %t200, label %bb69, label %bb70
bb69:
  %t202 = load i64, ptr %l89, !tbaa !24
  %t203 = icmp sle i64 0, %t202
  br i1 %t203, label %bb71, label %bb72
bb70:
  call void @__olang_check_failed(ptr @olang_loc_231822a9f2b4ccd6_f89b0d7c0520fae2)
  unreachable
bb71:
  %t205 = load i64, ptr %l89, !tbaa !24
  %t206 = load i64, ptr %l90, !tbaa !24
  %t207 = icmp sle i64 %t205, %t206
  br i1 %t207, label %bb73, label %bb74
bb72:
  call void @__olang_check_failed(ptr @olang_loc_231822a9f2b4ccd6_f89b0d7c0520fae2)
  unreachable
bb73:
  %t209 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = load i64, ptr %l89, !tbaa !24
  %t212 = getelementptr i8, ptr %t210, i64 0
  %t213 = sub i64 %t211, 0
  %t214 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t212, 1
  %t216 = load ptr, ptr %l87, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s4, ptr %v2, ptr %t216, { i64, ptr } %t215)
  br label %bb75
bb74:
  call void @__olang_check_failed(ptr @olang_loc_231822a9f2b4ccd6_f89b0d7c0520fae2)
  unreachable
bb75:
  %t218 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t218, ptr %l95, !tbaa !27
  %t219 = load i64, ptr %l8, !tbaa !24
  store i64 %t219, ptr %l96, !tbaa !24
  %t220 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 0
  store i64 %t221, ptr %l97, !tbaa !24
  %t222 = icmp sge i64 0, 0
  br i1 %t222, label %bb76, label %bb77
bb76:
  %t224 = load i64, ptr %l96, !tbaa !24
  %t225 = icmp sle i64 0, %t224
  br i1 %t225, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_3945c858895394b5_b3e6527511891161)
  unreachable
bb78:
  %t227 = load i64, ptr %l96, !tbaa !24
  %t228 = load i64, ptr %l97, !tbaa !24
  %t229 = icmp sle i64 %t227, %t228
  br i1 %t229, label %bb80, label %bb81
bb79:
  call void @__olang_check_failed(ptr @olang_loc_3945c858895394b5_b3e6527511891161)
  unreachable
bb80:
  %t231 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = load i64, ptr %l96, !tbaa !24
  %t234 = getelementptr i8, ptr %t232, i64 0
  %t235 = sub i64 %t233, 0
  %t236 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr %t234, 1
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %l103, !tbaa !27
  %t240 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t241 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v2, ptr %s4, { i64, ptr } %t237, { i64, ptr } %t240)
  store i1 %t241, ptr %l104
  br label %bb82
bb81:
  call void @__olang_check_failed(ptr @olang_loc_3945c858895394b5_b3e6527511891161)
  unreachable
bb82:
  %t242 = load i1, ptr %l104, !tbaa !21
  %t243 = xor i1 %t242, true
  br i1 %t243, label %bb83, label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s4, ptr %s6, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d61, i32 0, i32 1) })
  br label %bb85
bb84:
  %t246 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t246, ptr %l107, !tbaa !27
  %t247 = load i64, ptr %l8, !tbaa !24
  %t249 = sub i64 %t247, 1
  %t251 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !27
  %t253 = getelementptr i8, ptr %t252, i64 %t249
  %t254 = load i8, ptr %t253, !tbaa !32
  %t256 = icmp eq i8 %t254, 46
  br i1 %t256, label %bb86, label %bb87
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
  %t259 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t259, ptr %l114, !tbaa !27
  %t260 = load i64, ptr %l8, !tbaa !24
  store i64 %t260, ptr %l115, !tbaa !24
  %t261 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t261, 0
  store i64 %t264, ptr %l118, !tbaa !24
  %t265 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t265, 0
  store i64 %t266, ptr %l119, !tbaa !24
  %t267 = load i64, ptr %l115, !tbaa !24
  %t268 = icmp sge i64 %t267, 0
  br i1 %t268, label %bb91, label %bb92
bb91:
  %t270 = load i64, ptr %l115, !tbaa !24
  %t271 = load i64, ptr %l118, !tbaa !24
  %t272 = icmp sle i64 %t270, %t271
  br i1 %t272, label %bb93, label %bb94
bb92:
  call void @__olang_check_failed(ptr @olang_loc_5833c224f66d4858_52a9715d8b07374)
  unreachable
bb93:
  %t274 = load i64, ptr %l118, !tbaa !24
  %t275 = load i64, ptr %l119, !tbaa !24
  %t276 = icmp sle i64 %t274, %t275
  br i1 %t276, label %bb95, label %bb96
bb94:
  call void @__olang_check_failed(ptr @olang_loc_5833c224f66d4858_52a9715d8b07374)
  unreachable
bb95:
  %t278 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = load i64, ptr %l115, !tbaa !24
  %t281 = load i64, ptr %l118, !tbaa !24
  %t282 = getelementptr i8, ptr %t279, i64 %t280
  %t283 = sub i64 %t281, %t280
  %t284 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t282, 1
  %t286 = load ptr, ptr %l113, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s4, ptr %v2, ptr %t286, { i64, ptr } %t285)
  br label %bb97
bb96:
  call void @__olang_check_failed(ptr @olang_loc_5833c224f66d4858_52a9715d8b07374)
  unreachable
bb97:
  %t288 = ptrtoint ptr %v2 to i64
  store i64 %t288, ptr %l124, !tbaa !24
  %t289 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t289, label %bb98, label %bb99
bb98:
  %t291 = call ptr @__olang_region_make(ptr %v2)
  %t292 = ptrtoint ptr %t291 to i64
  store i64 %t292, ptr %l124, !tbaa !24
  br label %bb99
bb99:
  %t293 = load i64, ptr %l124
  %t294 = inttoptr i64 %t293 to ptr
  %t296 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s4, ptr %t294, ptr %l7)
  store { i64, ptr } %t296, ptr %l127
  br label %bb100
bb100:
  %t297 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t298 = load i64, ptr %l124
  %t299 = inttoptr i64 %t298 to ptr
  %t300 = extractvalue { i64, ptr } %t297, 0
  %t301 = extractvalue { i64, ptr } %t297, 1
  %t302 = mul i64 %t300, 1
  %t303 = call ptr @__olang_scope_alloc(ptr %t299, i64 %t302)
  call void @llvm.memcpy.p0.p0.i64(ptr %t303, ptr %t301, i64 %t302, i1 false)
  %t304 = insertvalue { i64, ptr } undef, i64 %t300, 0
  %t305 = insertvalue { i64, ptr } %t304, ptr %t303, 1
  %t306 = load i64, ptr @G_2ecompiler_2fbindgen_2eKFloat, !tbaa !24
  %t309 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } %t305, i64 %t306)
  store %"compiler/bindgen:cx" %t309, ptr %l130
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t310 = load %"compiler/bindgen:cx", ptr %l130
  %t311 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t310, 1
  store { i32, %"compiler/bindgen:cx" } %t311, ptr %rv
  br label %ret
bb102:
  %t312 = load i1, ptr %l3, !tbaa !21
  br i1 %t312, label %bb103, label %bb104
bb103:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb106
bb104:
  %t314 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t316 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t314, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d62, i32 0, i32 1) })
  store i1 %t316, ptr %l134
  br label %bb105
bb105:
  %t317 = load i1, ptr %l134, !tbaa !21
  store i1 %t317, ptr %l132, !tbaa !21
  br label %bb106
bb106:
  %t318 = load i1, ptr %l132, !tbaa !21
  br i1 %t318, label %bb107, label %bb108
bb107:
  store i1 true, ptr %l135, !tbaa !21
  br label %bb110
bb108:
  %t319 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t321 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t319, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t321, ptr %l137
  br label %bb109
bb109:
  %t322 = load i1, ptr %l137, !tbaa !21
  store i1 %t322, ptr %l135, !tbaa !21
  br label %bb110
bb110:
  %t323 = load i1, ptr %l135, !tbaa !21
  br i1 %t323, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l138, !tbaa !21
  br label %bb114
bb112:
  %t324 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t326 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t324, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) })
  store i1 %t326, ptr %l140
  br label %bb113
bb113:
  %t327 = load i1, ptr %l140, !tbaa !21
  %t328 = xor i1 %t327, true
  store i1 %t328, ptr %l138, !tbaa !21
  br label %bb114
bb114:
  %t330 = load i1, ptr %l138, !tbaa !21
  br i1 %t330, label %bb115, label %bb116
bb115:
  %t331 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t332 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t335 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } %t331, i64 %t332)
  store %"compiler/bindgen:cx" %t335, ptr %l144
  br label %bb117
bb116:
  br label %bb118
bb117:
  call void @__olang_scope_close(ptr %s0)
  %t336 = load %"compiler/bindgen:cx", ptr %l144
  %t337 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t336, 1
  store { i32, %"compiler/bindgen:cx" } %t337, ptr %rv
  br label %ret
bb118:
  %t338 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t338, ptr %l146, !tbaa !27
  %t339 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t342 = extractvalue { i64, ptr } %t339, 0
  store i64 %t342, ptr %l149, !tbaa !24
  %t343 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t344 = extractvalue { i64, ptr } %t343, 0
  store i64 %t344, ptr %l150, !tbaa !24
  %t345 = icmp sge i64 1, 0
  br i1 %t345, label %bb119, label %bb120
bb119:
  %t347 = load i64, ptr %l149, !tbaa !24
  %t348 = icmp sle i64 1, %t347
  br i1 %t348, label %bb121, label %bb122
bb120:
  call void @__olang_check_failed(ptr @olang_loc_8ffdd2b799db8b57_8707d2f5a85c3a7b)
  unreachable
bb121:
  %t350 = load i64, ptr %l149, !tbaa !24
  %t351 = load i64, ptr %l150, !tbaa !24
  %t352 = icmp sle i64 %t350, %t351
  br i1 %t352, label %bb123, label %bb124
bb122:
  call void @__olang_check_failed(ptr @olang_loc_8ffdd2b799db8b57_8707d2f5a85c3a7b)
  unreachable
bb123:
  %t354 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t355 = load ptr, ptr %t354, !tbaa !27
  %t356 = load i64, ptr %l149, !tbaa !24
  %t357 = getelementptr i8, ptr %t355, i64 1
  %t358 = sub i64 %t356, 1
  %t359 = insertvalue { i64, ptr } undef, i64 %t358, 0
  %t360 = insertvalue { i64, ptr } %t359, ptr %t357, 1
  store { i64, ptr } %t360, ptr %l154, !tbaa !27
  %t361 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 8)
  %t362 = extractvalue { i32, i64 } %t361, 1
  %t363 = extractvalue { i32, i64 } %t361, 0
  store i32 %t363, ptr %l156
  %t364 = icmp ne i32 %t363, 0
  br i1 %t364, label %bb126, label %ok.365, !prof !99
ok.365:
  store i64 %t362, ptr %l155
  br label %bb125
bb124:
  call void @__olang_check_failed(ptr @olang_loc_8ffdd2b799db8b57_8707d2f5a85c3a7b)
  unreachable
bb125:
  %t366 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t367 = load i64, ptr %l155, !tbaa !24
  %t368 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v2, { i64, ptr } %t366, i64 %t367)
  %t369 = extractvalue { i32, i64 } %t368, 1
  %t370 = extractvalue { i32, i64 } %t368, 0
  store i32 %t370, ptr %l158
  %t371 = icmp ne i32 %t370, 0
  br i1 %t371, label %bb129, label %ok.372, !prof !99
ok.372:
  store i64 %t369, ptr %l157
  br label %bb128
bb126:
  br label %bb127
bb127:
  %t373 = load ptr, ptr %l0, !tbaa !29
  store ptr %t373, ptr %l159, !tbaa !29
  %t374 = ptrtoint ptr %v0 to i64
  store i64 %t374, ptr %l160, !tbaa !24
  %t375 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t375, label %bb130, label %bb131
bb128:
  %t377 = load i64, ptr %l157, !tbaa !24
  store i64 %t377, ptr %l145, !tbaa !24
  br label %bb135
bb129:
  br label %bb127
bb130:
  %t378 = call ptr @__olang_region_make(ptr %v0)
  %t379 = ptrtoint ptr %t378 to i64
  store i64 %t379, ptr %l160, !tbaa !24
  br label %bb131
bb131:
  %t380 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t381 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t382 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t384 = extractvalue { i64, ptr } %t380, 1
  %t385 = extractvalue { i64, ptr } %t380, 0
  %t386 = add i64 %t382, %t385
  %t387 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t388 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t389 = add i64 %t386, %t388
  %t390 = load i64, ptr %l160
  %t391 = inttoptr i64 %t390 to ptr
  %t392 = call ptr @__olang_scope_alloc(ptr %t391, i64 %t389)
  call void @olang_textcopy(ptr %t392, ptr %t381, i64 %t382)
  %t393 = getelementptr i8, ptr %t392, i64 %t382
  call void @olang_textcopy(ptr %t393, ptr %t384, i64 %t385)
  %t394 = getelementptr i8, ptr %t393, i64 %t385
  call void @olang_textcopy(ptr %t394, ptr %t387, i64 %t388)
  %t395 = insertvalue { i64, ptr } undef, i64 %t389, 0
  %t396 = insertvalue { i64, ptr } %t395, ptr %t392, 1
  %t398 = load i64, ptr %l160
  %t399 = inttoptr i64 %t398 to ptr
  %t400 = extractvalue { i64, ptr } %t396, 0
  %t401 = extractvalue { i64, ptr } %t396, 1
  %t402 = mul i64 %t400, 1
  %t403 = call ptr @__olang_scope_alloc(ptr %t399, i64 %t402)
  call void @llvm.memcpy.p0.p0.i64(ptr %t403, ptr %t401, i64 %t402, i1 false)
  %t404 = insertvalue { i64, ptr } undef, i64 %t400, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr %t403, 1
  %t406 = load ptr, ptr %l159, !tbaa !29
  %t408 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t406, { i64, ptr } %t405)
  store i32 %t408, ptr %l165
  %t409 = icmp ne i32 %t408, 0
  br i1 %t409, label %bb133, label %ok.410, !prof !99
ok.410:
  br label %bb132
bb132:
  br label %bb134
bb133:
  %t411 = load i32, ptr %l165, !tbaa !23
  %t412 = lshr i32 %t411, 16
  %t413 = and i32 %t411, 65535
  %t414 = icmp eq i32 %t412, 1
  %t415 = select i1 %t414, i32 1, i32 0
  %t416 = icmp eq i32 %t411, 0
  %t417 = shl i32 %t415, 16
  %t418 = or i32 %t417, %t413
  %t419 = select i1 %t416, i32 0, i32 %t418
  call void @__olang_scope_close(ptr %s0)
  %t421 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t419, 0
  store { i32, %"compiler/bindgen:cx" } %t421, ptr %rv
  br label %ret
bb134:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb135
bb135:
  %t422 = load i64, ptr %l145, !tbaa !24
  store i64 %t422, ptr %l9, !tbaa !24
  %t423 = ptrtoint ptr %v2 to i64
  store i64 %t423, ptr %l167, !tbaa !24
  %t424 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t424, label %bb136, label %bb137
bb136:
  %t426 = call ptr @__olang_region_make(ptr %v2)
  %t427 = ptrtoint ptr %t426 to i64
  store i64 %t427, ptr %l167, !tbaa !24
  br label %bb137
bb137:
  %t428 = load i64, ptr %l9, !tbaa !24
  %t430 = call i64 @__olang_fmt_i64(ptr null, i64 %t428)
  %t431 = load i64, ptr %l167
  %t432 = inttoptr i64 %t431 to ptr
  %t433 = call ptr @__olang_scope_alloc(ptr %t432, i64 %t430)
  %t434 = call i64 @__olang_fmt_i64(ptr %t433, i64 %t428)
  %t435 = insertvalue { i64, ptr } undef, i64 %t430, 0
  %t436 = insertvalue { i64, ptr } %t435, ptr %t433, 1
  %t438 = load i64, ptr %l167
  %t439 = inttoptr i64 %t438 to ptr
  %t440 = extractvalue { i64, ptr } %t436, 0
  %t441 = extractvalue { i64, ptr } %t436, 1
  %t442 = mul i64 %t440, 1
  %t443 = call ptr @__olang_scope_alloc(ptr %t439, i64 %t442)
  call void @llvm.memcpy.p0.p0.i64(ptr %t443, ptr %t441, i64 %t442, i1 false)
  %t444 = insertvalue { i64, ptr } undef, i64 %t440, 0
  %t445 = insertvalue { i64, ptr } %t444, ptr %t443, 1
  %t446 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t449 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } %t445, i64 %t446)
  store %"compiler/bindgen:cx" %t449, ptr %l173
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s0)
  %t450 = load %"compiler/bindgen:cx", ptr %l173
  %t451 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t450, 1
  store { i32, %"compiler/bindgen:cx" } %t451, ptr %rv
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
  %lp9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i64
  %lp13 = alloca ptr
  %lp14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %lp18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i64
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
  %l79 = alloca %"compiler/bindgen:cMacro"
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l90 = alloca i32
  %l93 = alloca i64
  %l95 = alloca i64
  %l100 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l108 = alloca i32
  %l117 = alloca i1
  %l118 = alloca { i64, ptr }
  %l122 = alloca i1
  %l129 = alloca ptr
  %l130 = alloca i64
  %l135 = alloca i32
  %l137 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l138 = alloca i64
  %l140 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l149 = alloca { i64, ptr }
  %l153 = alloca i1
  %l157 = alloca i1
  %l163 = alloca i1
  %l164 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l170 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l171 = alloca i64
  %l173 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l175 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l185 = alloca ptr
  %l186 = alloca i64
  %l191 = alloca i32
  %l194 = alloca i64
  %l196 = alloca i1
  %l198 = alloca i64
  %l200 = alloca ptr
  %l201 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l203 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l205 = alloca i64
  %l209 = alloca ptr
  %l210 = alloca i64
  %l215 = alloca i32
  %l217 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l225 = alloca { i64, ptr }
  %l228 = alloca i64
  %l232 = alloca i64
  %l233 = alloca i32
  %l239 = alloca ptr
  %l242 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l244 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l246 = alloca { i64, ptr }
  %l250 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l251 = alloca i32
  %l254 = alloca i64
  %l256 = alloca i64
  %l261 = alloca { i64, ptr }
  %l271 = alloca ptr
  %l273 = alloca { i64, ptr }
  %l277 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l278 = alloca i32
  %l281 = alloca i64
  %l283 = alloca i64
  %l288 = alloca { i64, ptr }
  %l293 = alloca { i64, ptr }
  %l295 = alloca { i64, ptr }
  %l296 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %rv = alloca { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
  %t584 = alloca { { i64, ptr }, ptr }, align 8
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
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t5, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d67, i32 0, i32 1) })
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
  call void @__olang_scope_close(ptr %s0)
  %t20 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t18, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t20, ptr %rv
  br label %ret
bb5:
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
  br label %bb199
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
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t52, { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d70, i32 0, i32 1) })
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
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t67 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t65, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t67, ptr %rv
  br label %ret
bb21:
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
  %t108 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v1, ptr %t107, { i64, ptr } %t108)
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t111 = load i64, ptr %l5, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb198
bb39:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/bindgen:gen", ptr %t115, i32 0, i32 12
  %t118 = load i64, ptr %l7, !tbaa !24
  %t121 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v3, ptr %t117, i64 %t118)
  store %"compiler/bindgen:cMacro" %t121, ptr %l79
  br label %bb40
bb40:
  %t122 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 64, i64 8)
  store ptr %t122, ptr %lp9
  %t123 = load %"compiler/bindgen:cMacro", ptr %l79
  %t124 = load ptr, ptr %lp9
  store %"compiler/bindgen:cMacro" %t123, ptr %t124
  %t125 = load ptr, ptr %lp9
  %t126 = getelementptr %"compiler/bindgen:cMacro", ptr %t125, i32 0, i32 1
  %t127 = load i1, ptr %t126, !tbaa !21
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s5
  %t131 = load ptr, ptr %l2, !tbaa !29
  %t132 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v1, ptr %t131, { i64, ptr } %t132)
  br label %bb43
bb42:
  br label %bb62
bb43:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load ptr, ptr %lp9
  %t137 = getelementptr %"compiler/bindgen:cMacro", ptr %t136, i32 0, i32 3
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  %t139 = load ptr, ptr %l2, !tbaa !29
  %t140 = load i64, ptr %l3, !tbaa !24
  %t142 = add i64 %t140, 1
  %t147 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v3, ptr %v2, ptr %v3, ptr %t135, { i64, ptr } %t138, ptr %t139, i64 %t142)
  %t148 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t147, 1
  %t149 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t147, 0
  store i32 %t149, ptr %l90
  %t150 = icmp ne i32 %t149, 0
  br i1 %t150, label %bb45, label %ok.151, !prof !99
ok.151:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %l89
  br label %bb44
bb44:
  %t152 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  %t153 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t152, ptr %t153
  store ptr %t153, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb46
bb45:
  %t155 = load i32, ptr %l90, !tbaa !23
  %t156 = lshr i32 %t155, 16
  %t157 = and i32 %t155, 65535
  %t158 = icmp eq i32 %t156, 1
  %t159 = select i1 %t158, i32 1, i32 0
  %t160 = icmp eq i32 %t155, 0
  %t161 = shl i32 %t159, 16
  %t162 = or i32 %t161, %t157
  %t163 = select i1 %t160, i32 0, i32 %t162
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t165 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t163, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t165, ptr %rv
  br label %ret
bb46:
  %t166 = load i64, ptr %l11, !tbaa !24
  store i64 %t166, ptr %l93, !tbaa !24
  %t167 = load ptr, ptr %l10, !tbaa !29
  %t169 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t167)
  store i64 %t169, ptr %l95
  br label %bb47
bb47:
  %t170 = load i64, ptr %l93, !tbaa !24
  %t171 = load i64, ptr %l95, !tbaa !24
  %t172 = icmp slt i64 %t170, %t171
  %t174 = xor i1 %t172, true
  br i1 %t174, label %bb48, label %bb49
bb48:
  br label %bb54
bb49:
  br label %bb50
bb50:
  %t176 = load ptr, ptr %l10, !tbaa !29
  %t177 = load i64, ptr %l11, !tbaa !24
  %t180 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t176, i64 %t177)
  store { i64, ptr } %t180, ptr %l100
  br label %bb51
bb51:
  %t181 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t182 = load ptr, ptr %lp4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t182, { i64, ptr } %t181)
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t186 = load i64, ptr %l11, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l11, !tbaa !24
  br label %bb46
bb54:
  br label %bb55
bb55:
  %t190 = load ptr, ptr %l2, !tbaa !29
  %t192 = call { i32, { i64, ptr } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Hdc04e7543082eec80486670259c0789b(ptr %v2, ptr %s5, ptr %t190)
  %t193 = extractvalue { i32, { i64, ptr } } %t192, 1
  %t194 = extractvalue { i32, { i64, ptr } } %t192, 0
  store i32 %t194, ptr %l108
  %t195 = icmp ne i32 %t194, 0
  br i1 %t195, label %bb57, label %ok.196, !prof !99
ok.196:
  store { i64, ptr } %t193, ptr %l107
  br label %bb56
bb56:
  %t197 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t197, ptr %l105, !tbaa !27
  %t198 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t198, label %bb59, label %bb60
bb57:
  br label %bb58
bb58:
  br label %bb61
bb59:
  %t200 = load { i64, ptr }, ptr %l105
  %t201 = extractvalue { i64, ptr } %t200, 1
  call void @__olang_region_release(ptr %t201)
  store { i64, ptr } zeroinitializer, ptr %l105
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t202 = load i64, ptr %l5, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  br label %bb198
bb62:
  %t206 = load i64, ptr %l5, !tbaa !24
  %t208 = add i64 %t206, 1
  %t209 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t209, 0
  %t214 = icmp sge i64 %t208, %t211
  br i1 %t214, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l117, !tbaa !21
  br label %bb66
bb64:
  %t216 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t216, ptr %l118, !tbaa !27
  %t217 = load i64, ptr %l5, !tbaa !24
  %t219 = add i64 %t217, 1
  %t221 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr { i64, ptr }, ptr %t222, i64 %t219
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !37
  %t226 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t224, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) })
  store i1 %t226, ptr %l122
  br label %bb65
bb65:
  %t227 = load i1, ptr %l122, !tbaa !21
  %t228 = xor i1 %t227, true
  store i1 %t228, ptr %l117, !tbaa !21
  br label %bb66
bb66:
  %t230 = load i1, ptr %l117, !tbaa !21
  br i1 %t230, label %bb67, label %bb68
bb67:
  %t231 = load ptr, ptr %lp4
  %t232 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v1, ptr %t231, { i64, ptr } %t232)
  br label %bb69
bb68:
  br label %bb70
bb69:
  %t235 = load i64, ptr %l5, !tbaa !24
  %t237 = add i64 %t235, 1
  store i64 %t237, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb198
bb70:
  %t239 = load ptr, ptr %lp9
  %t240 = getelementptr %"compiler/bindgen:cMacro", ptr %t239, i32 0, i32 5
  %t241 = load i1, ptr %t240, !tbaa !21
  br i1 %t241, label %bb71, label %bb72
bb71:
  %t243 = load ptr, ptr %l0, !tbaa !29
  store ptr %t243, ptr %l129, !tbaa !29
  %t244 = ptrtoint ptr %v0 to i64
  store i64 %t244, ptr %l130, !tbaa !24
  %t245 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t245, label %bb73, label %bb74
bb72:
  br label %bb78
bb73:
  %t247 = call ptr @__olang_region_make(ptr %v0)
  %t248 = ptrtoint ptr %t247 to i64
  store i64 %t248, ptr %l130, !tbaa !24
  br label %bb74
bb74:
  %t249 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t250 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t251 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t253 = extractvalue { i64, ptr } %t249, 1
  %t254 = extractvalue { i64, ptr } %t249, 0
  %t255 = add i64 %t251, %t254
  %t256 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t258 = add i64 %t255, %t257
  %t259 = load i64, ptr %l130
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = call ptr @__olang_scope_alloc(ptr %t260, i64 %t258)
  call void @olang_textcopy(ptr %t261, ptr %t250, i64 %t251)
  %t262 = getelementptr i8, ptr %t261, i64 %t251
  call void @olang_textcopy(ptr %t262, ptr %t253, i64 %t254)
  %t263 = getelementptr i8, ptr %t262, i64 %t254
  call void @olang_textcopy(ptr %t263, ptr %t256, i64 %t257)
  %t264 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t261, 1
  %t267 = load i64, ptr %l130
  %t268 = inttoptr i64 %t267 to ptr
  %t269 = extractvalue { i64, ptr } %t265, 0
  %t270 = extractvalue { i64, ptr } %t265, 1
  %t271 = mul i64 %t269, 1
  %t272 = call ptr @__olang_scope_alloc(ptr %t268, i64 %t271)
  call void @llvm.memcpy.p0.p0.i64(ptr %t272, ptr %t270, i64 %t271, i1 false)
  %t273 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t272, 1
  %t275 = load ptr, ptr %l129, !tbaa !29
  %t277 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t275, { i64, ptr } %t274)
  store i32 %t277, ptr %l135
  %t278 = icmp ne i32 %t277, 0
  br i1 %t278, label %bb76, label %ok.279, !prof !99
ok.279:
  br label %bb75
bb75:
  br label %bb77
bb76:
  %t280 = load i32, ptr %l135, !tbaa !23
  %t281 = lshr i32 %t280, 16
  %t282 = and i32 %t280, 65535
  %t283 = icmp eq i32 %t281, 1
  %t284 = select i1 %t283, i32 1, i32 0
  %t285 = icmp eq i32 %t280, 0
  %t286 = shl i32 %t284, 16
  %t287 = or i32 %t286, %t282
  %t288 = select i1 %t285, i32 0, i32 %t287
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t290 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t288, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t290, ptr %rv
  br label %ret
bb77:
  br label %bb78
bb78:
  %t291 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t291, ptr %l137
  br label %bb79
bb79:
  %t292 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t292, ptr %lp13
  %t293 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l137
  %t294 = load ptr, ptr %lp13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t293, ptr %t294
  %t295 = ptrtoint ptr %v3 to i64
  store i64 %t295, ptr %l138, !tbaa !24
  %t296 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t296, label %bb80, label %bb81
bb80:
  %t298 = call ptr @__olang_region_make(ptr %v3)
  %t299 = ptrtoint ptr %t298 to i64
  store i64 %t299, ptr %l138, !tbaa !24
  br label %bb81
bb81:
  %t300 = load i64, ptr %l138
  %t301 = inttoptr i64 %t300 to ptr
  %t302 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t301, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t302, ptr %l140
  br label %bb82
bb82:
  %t303 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t303, label %bb83, label %bb84
bb83:
  %t305 = load i64, ptr %l138
  %t306 = inttoptr i64 %t305 to ptr
  %t307 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l140, i32 0, i32 0
  %t308 = load { i64, ptr }, ptr %t307
  %t309 = extractvalue { i64, ptr } %t308, 1
  %t310 = call ptr @__olang_region_or(ptr %t309, ptr null)
  %t311 = icmp ne ptr %t310, null
  %t312 = select i1 %t311, ptr %t310, ptr null
  %t313 = icmp eq ptr %t312, %t306
  call void @__olang_region_settle(ptr %t306, i1 %t313)
  br label %bb84
bb84:
  %t314 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t314, ptr %lp14
  %t315 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l140
  %t316 = load ptr, ptr %lp14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t315, ptr %t316
  store i64 0, ptr %l15, !tbaa !24
  %t317 = load i64, ptr %l5, !tbaa !24
  %t319 = add i64 %t317, 2
  store i64 %t319, ptr %l16, !tbaa !24
  br label %bb85
bb85:
  store %olang.scope zeroinitializer, ptr %s13
  %t321 = load i64, ptr %l16, !tbaa !24
  %t322 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t322, 0
  %t327 = icmp slt i64 %t321, %t324
  %t329 = xor i1 %t327, true
  br i1 %t329, label %bb86, label %bb87
bb86:
  call void @__olang_scope_close(ptr %s13)
  br label %bb118
bb87:
  br label %bb88
bb88:
  %t331 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t331, ptr %l149, !tbaa !27
  %t332 = load i64, ptr %l16, !tbaa !24
  %t334 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !27
  %t336 = getelementptr { i64, ptr }, ptr %t335, i64 %t332
  %t337 = load { i64, ptr }, ptr %t336, !tbaa !37
  store { i64, ptr } %t337, ptr %l17, !tbaa !27
  %t339 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t341 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s13, { i64, ptr } %t339, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) })
  store i1 %t341, ptr %l153
  br label %bb89
bb89:
  %t342 = load i1, ptr %l153, !tbaa !21
  br i1 %t342, label %bb90, label %bb91
bb90:
  %t343 = load i64, ptr %l15, !tbaa !24
  %t345 = add i64 %t343, 1
  store i64 %t345, ptr %l15, !tbaa !24
  br label %bb92
bb91:
  br label %bb92
bb92:
  %t347 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t349 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s13, { i64, ptr } %t347, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store i1 %t349, ptr %l157
  br label %bb93
bb93:
  %t350 = load i1, ptr %l157, !tbaa !21
  br i1 %t350, label %bb94, label %bb95
bb94:
  %t351 = load i64, ptr %l15, !tbaa !24
  %t353 = icmp eq i64 %t351, 0
  br i1 %t353, label %bb96, label %bb97
bb95:
  br label %bb99
bb96:
  call void @__olang_scope_close(ptr %s13)
  br label %bb118
bb97:
  br label %bb98
bb98:
  %t355 = load i64, ptr %l15, !tbaa !24
  %t357 = sub i64 %t355, 1
  store i64 %t357, ptr %l15, !tbaa !24
  br label %bb99
bb99:
  %t359 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t361 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s13, { i64, ptr } %t359, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) })
  store i1 %t361, ptr %l163
  br label %bb100
bb100:
  %t362 = load i1, ptr %l163, !tbaa !21
  br i1 %t362, label %bb101, label %bb102
bb101:
  %t363 = load i64, ptr %l15, !tbaa !24
  %t365 = icmp eq i64 %t363, 0
  store i1 %t365, ptr %l164, !tbaa !21
  br label %bb103
bb102:
  store i1 false, ptr %l164, !tbaa !21
  br label %bb103
bb103:
  %t367 = load i1, ptr %l164, !tbaa !21
  br i1 %t367, label %bb104, label %bb105
bb104:
  %t368 = load ptr, ptr %lp13
  store ptr %t368, ptr %l167, !tbaa !29
  %t369 = load ptr, ptr %lp14
  %t370 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t369
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t370, ptr %l168
  %t372 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v3, ptr %l168)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t372, ptr %l170
  br label %bb106
bb105:
  %t373 = load ptr, ptr %lp14
  %t374 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v1, ptr %t373, { i64, ptr } %t374)
  br label %bb115
bb106:
  %t377 = load ptr, ptr %l167, !tbaa !29
  %t378 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H40771be639b3022d183b79789a9eab56(ptr %v3, ptr %v3, ptr %t377, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t378)
  br label %bb107
bb107:
  %t379 = ptrtoint ptr %v3 to i64
  store i64 %t379, ptr %l171, !tbaa !24
  %t380 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t380, label %bb108, label %bb109
bb108:
  %t382 = call ptr @__olang_region_make(ptr %v3)
  %t383 = ptrtoint ptr %t382 to i64
  store i64 %t383, ptr %l171, !tbaa !24
  br label %bb109
bb109:
  %t384 = load i64, ptr %l171
  %t385 = inttoptr i64 %t384 to ptr
  %t386 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t385, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t386, ptr %l173
  br label %bb110
bb110:
  %t387 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t387, label %bb111, label %bb112
bb111:
  %t389 = load i64, ptr %l171
  %t390 = inttoptr i64 %t389 to ptr
  %t391 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173, i32 0, i32 0
  %t392 = load { i64, ptr }, ptr %t391
  %t393 = extractvalue { i64, ptr } %t392, 1
  %t394 = call ptr @__olang_region_or(ptr %t393, ptr null)
  %t395 = icmp ne ptr %t394, null
  %t396 = select i1 %t395, ptr %t394, ptr null
  %t397 = icmp eq ptr %t396, %t390
  call void @__olang_region_settle(ptr %t390, i1 %t397)
  br label %bb112
bb112:
  %t398 = load ptr, ptr %lp14
  %t399 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t398
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t399, ptr %l175
  %t400 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173
  %t401 = load ptr, ptr %lp14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t400, ptr %t401
  %t402 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t402, label %bb113, label %bb114
bb113:
  %t404 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l175, i32 0, i32 0
  %t405 = load { i64, ptr }, ptr %t404
  %t406 = extractvalue { i64, ptr } %t405, 1
  %t407 = call ptr @__olang_region_or(ptr %t406, ptr null)
  %t408 = icmp ne ptr %t407, null
  %t409 = select i1 %t408, ptr %t407, ptr null
  call void @__olang_region_drop(ptr %t409)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l175
  br label %bb114
bb114:
  br label %bb116
bb115:
  br label %bb116
bb116:
  %t410 = load i64, ptr %l16, !tbaa !24
  %t412 = add i64 %t410, 1
  store i64 %t412, ptr %l16, !tbaa !24
  call void @__olang_scope_close(ptr %s13)
  br label %bb117
bb117:
  br label %bb85
bb118:
  %t414 = load i64, ptr %l16, !tbaa !24
  %t415 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t417 = extractvalue { i64, ptr } %t415, 0
  %t420 = icmp sge i64 %t414, %t417
  br i1 %t420, label %bb119, label %bb120
bb119:
  %t422 = load ptr, ptr %l0, !tbaa !29
  store ptr %t422, ptr %l185, !tbaa !29
  %t423 = ptrtoint ptr %v0 to i64
  store i64 %t423, ptr %l186, !tbaa !24
  %t424 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t424, label %bb121, label %bb122
bb120:
  br label %bb126
bb121:
  %t426 = call ptr @__olang_region_make(ptr %v0)
  %t427 = ptrtoint ptr %t426 to i64
  store i64 %t427, ptr %l186, !tbaa !24
  br label %bb122
bb122:
  %t428 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t429 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t430 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t432 = extractvalue { i64, ptr } %t428, 1
  %t433 = extractvalue { i64, ptr } %t428, 0
  %t434 = add i64 %t430, %t433
  %t435 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t436 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t437 = add i64 %t434, %t436
  %t438 = load i64, ptr %l186
  %t439 = inttoptr i64 %t438 to ptr
  %t440 = call ptr @__olang_scope_alloc(ptr %t439, i64 %t437)
  call void @olang_textcopy(ptr %t440, ptr %t429, i64 %t430)
  %t441 = getelementptr i8, ptr %t440, i64 %t430
  call void @olang_textcopy(ptr %t441, ptr %t432, i64 %t433)
  %t442 = getelementptr i8, ptr %t441, i64 %t433
  call void @olang_textcopy(ptr %t442, ptr %t435, i64 %t436)
  %t443 = insertvalue { i64, ptr } undef, i64 %t437, 0
  %t444 = insertvalue { i64, ptr } %t443, ptr %t440, 1
  %t446 = load i64, ptr %l186
  %t447 = inttoptr i64 %t446 to ptr
  %t448 = extractvalue { i64, ptr } %t444, 0
  %t449 = extractvalue { i64, ptr } %t444, 1
  %t450 = mul i64 %t448, 1
  %t451 = call ptr @__olang_scope_alloc(ptr %t447, i64 %t450)
  call void @llvm.memcpy.p0.p0.i64(ptr %t451, ptr %t449, i64 %t450, i1 false)
  %t452 = insertvalue { i64, ptr } undef, i64 %t448, 0
  %t453 = insertvalue { i64, ptr } %t452, ptr %t451, 1
  %t454 = load ptr, ptr %l185, !tbaa !29
  %t456 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t454, { i64, ptr } %t453)
  store i32 %t456, ptr %l191
  %t457 = icmp ne i32 %t456, 0
  br i1 %t457, label %bb124, label %ok.458, !prof !99
ok.458:
  br label %bb123
bb123:
  br label %bb125
bb124:
  %t459 = load i32, ptr %l191, !tbaa !23
  %t460 = lshr i32 %t459, 16
  %t461 = and i32 %t459, 65535
  %t462 = icmp eq i32 %t460, 1
  %t463 = select i1 %t462, i32 1, i32 0
  %t464 = icmp eq i32 %t459, 0
  %t465 = shl i32 %t463, 16
  %t466 = or i32 %t465, %t461
  %t467 = select i1 %t464, i32 0, i32 %t466
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t469 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t467, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t469, ptr %rv
  br label %ret
bb125:
  br label %bb126
bb126:
  %t470 = load ptr, ptr %lp14
  %t472 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t470)
  store i64 %t472, ptr %l194
  br label %bb127
bb127:
  %t473 = load i64, ptr %l194, !tbaa !24
  %t474 = icmp sgt i64 %t473, 0
  br i1 %t474, label %bb128, label %bb129
bb128:
  store i1 true, ptr %l196, !tbaa !21
  br label %bb131
bb129:
  %t476 = load ptr, ptr %lp13
  %t478 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_Hbb0b9cf8ae0bb786ffc6cf28ae45ef64(ptr %v3, ptr %t476)
  store i64 %t478, ptr %l198
  br label %bb130
bb130:
  %t479 = load i64, ptr %l198, !tbaa !24
  %t480 = icmp sgt i64 %t479, 0
  store i1 %t480, ptr %l196, !tbaa !21
  br label %bb131
bb131:
  %t482 = load i1, ptr %l196, !tbaa !21
  br i1 %t482, label %bb132, label %bb133
bb132:
  %t483 = load ptr, ptr %lp13
  store ptr %t483, ptr %l200, !tbaa !29
  %t484 = load ptr, ptr %lp14
  %t485 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t484
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t485, ptr %l201
  %t487 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v3, ptr %l201)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t487, ptr %l203
  br label %bb134
bb133:
  br label %bb136
bb134:
  %t488 = load ptr, ptr %l200, !tbaa !29
  %t489 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l203
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H40771be639b3022d183b79789a9eab56(ptr %v3, ptr %v3, ptr %t488, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t489)
  br label %bb135
bb135:
  br label %bb136
bb136:
  %t490 = load ptr, ptr %lp13
  %t492 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_Hbb0b9cf8ae0bb786ffc6cf28ae45ef64(ptr %v3, ptr %t490)
  store i64 %t492, ptr %l205
  br label %bb137
bb137:
  %t493 = load ptr, ptr %lp9
  %t494 = getelementptr %"compiler/bindgen:cMacro", ptr %t493, i32 0, i32 2
  %t495 = load { i64, ptr }, ptr %t494, !tbaa !27
  %t497 = extractvalue { i64, ptr } %t495, 0
  %t498 = load i64, ptr %l205, !tbaa !24
  %t500 = icmp ne i64 %t498, %t497
  br i1 %t500, label %bb138, label %bb139
bb138:
  %t502 = load ptr, ptr %l0, !tbaa !29
  store ptr %t502, ptr %l209, !tbaa !29
  %t503 = ptrtoint ptr %v0 to i64
  store i64 %t503, ptr %l210, !tbaa !24
  %t504 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t504, label %bb140, label %bb141
bb139:
  br label %bb145
bb140:
  %t506 = call ptr @__olang_region_make(ptr %v0)
  %t507 = ptrtoint ptr %t506 to i64
  store i64 %t507, ptr %l210, !tbaa !24
  br label %bb141
bb141:
  %t508 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t509 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t510 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t512 = extractvalue { i64, ptr } %t508, 1
  %t513 = extractvalue { i64, ptr } %t508, 0
  %t514 = add i64 %t510, %t513
  %t515 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t516 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t517 = add i64 %t514, %t516
  %t518 = load i64, ptr %l210
  %t519 = inttoptr i64 %t518 to ptr
  %t520 = call ptr @__olang_scope_alloc(ptr %t519, i64 %t517)
  call void @olang_textcopy(ptr %t520, ptr %t509, i64 %t510)
  %t521 = getelementptr i8, ptr %t520, i64 %t510
  call void @olang_textcopy(ptr %t521, ptr %t512, i64 %t513)
  %t522 = getelementptr i8, ptr %t521, i64 %t513
  call void @olang_textcopy(ptr %t522, ptr %t515, i64 %t516)
  %t523 = insertvalue { i64, ptr } undef, i64 %t517, 0
  %t524 = insertvalue { i64, ptr } %t523, ptr %t520, 1
  %t526 = load i64, ptr %l210
  %t527 = inttoptr i64 %t526 to ptr
  %t528 = extractvalue { i64, ptr } %t524, 0
  %t529 = extractvalue { i64, ptr } %t524, 1
  %t530 = mul i64 %t528, 1
  %t531 = call ptr @__olang_scope_alloc(ptr %t527, i64 %t530)
  call void @llvm.memcpy.p0.p0.i64(ptr %t531, ptr %t529, i64 %t530, i1 false)
  %t532 = insertvalue { i64, ptr } undef, i64 %t528, 0
  %t533 = insertvalue { i64, ptr } %t532, ptr %t531, 1
  %t534 = load ptr, ptr %l209, !tbaa !29
  %t536 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t534, { i64, ptr } %t533)
  store i32 %t536, ptr %l215
  %t537 = icmp ne i32 %t536, 0
  br i1 %t537, label %bb143, label %ok.538, !prof !99
ok.538:
  br label %bb142
bb142:
  br label %bb144
bb143:
  %t539 = load i32, ptr %l215, !tbaa !23
  %t540 = lshr i32 %t539, 16
  %t541 = and i32 %t539, 65535
  %t542 = icmp eq i32 %t540, 1
  %t543 = select i1 %t542, i32 1, i32 0
  %t544 = icmp eq i32 %t539, 0
  %t545 = shl i32 %t543, 16
  %t546 = or i32 %t545, %t541
  %t547 = select i1 %t544, i32 0, i32 %t546
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t549 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t547, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t549, ptr %rv
  br label %ret
bb144:
  br label %bb145
bb145:
  %t550 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t550, ptr %l217
  br label %bb146
bb146:
  %t551 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t551, ptr %lp18
  %t552 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l217
  %t553 = load ptr, ptr %lp18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t552, ptr %t553
  %t554 = load ptr, ptr %lp9
  %t555 = getelementptr %"compiler/bindgen:cMacro", ptr %t554, i32 0, i32 3
  %t556 = load { i64, ptr }, ptr %t555, !tbaa !27
  store { i64, ptr } %t556, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t558 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t560 = extractvalue { i64, ptr } %t558, 0
  store i64 %t560, ptr %l21, !tbaa !24
  br label %bb147
bb147:
  store %olang.scope zeroinitializer, ptr %s25
  %t562 = load i64, ptr %l20, !tbaa !24
  %t563 = load i64, ptr %l21, !tbaa !24
  %t566 = icmp slt i64 %t562, %t563
  %t568 = xor i1 %t566, true
  br i1 %t568, label %bb148, label %bb149
bb148:
  call void @__olang_scope_close(ptr %s25)
  br label %bb177
bb149:
  br label %bb150
bb150:
  %t570 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t570, ptr %l225, !tbaa !27
  %t571 = load i64, ptr %l20, !tbaa !24
  %t573 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t574 = load ptr, ptr %t573, !tbaa !27
  %t575 = getelementptr { i64, ptr }, ptr %t574, i64 %t571
  %t576 = load { i64, ptr }, ptr %t575, !tbaa !37
  store { i64, ptr } %t576, ptr %l22, !tbaa !27
  %t578 = load ptr, ptr %lp9
  %t579 = getelementptr %"compiler/bindgen:cMacro", ptr %t578, i32 0, i32 2
  %t580 = load { i64, ptr }, ptr %t579, !tbaa !27
  %t581 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t582 = getelementptr { { i64, ptr }, ptr }, ptr null, i32 1
  %t583 = ptrtoint ptr %t582 to i64
  %t585 = getelementptr { { i64, ptr }, ptr }, ptr %t584, i32 0, i32 0
  store { i64, ptr } %t581, ptr %t585, !tbaa !28
  call void @__olang_scope_escape(ptr %v3)
  %t587 = getelementptr { { i64, ptr }, ptr }, ptr %t584, i32 0, i32 1
  store ptr %v3, ptr %t587, !tbaa !28
  %t588 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_82, 0
  %t589 = insertvalue { ptr, ptr } %t588, ptr %t584, 1
  %t592 = extractvalue { ptr, ptr } %t589, 0
  %t593 = extractvalue { ptr, ptr } %t589, 1
  %t594 = call { i32, i64 } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eFindIndex_3cstd_2f_H0cdaf28864c9da4990596b1986b376a0(ptr %v3, ptr %s25, { i64, ptr } %t580, ptr %t592, ptr %t593)
  %t595 = extractvalue { i32, i64 } %t594, 1
  %t596 = extractvalue { i32, i64 } %t594, 0
  store i32 %t596, ptr %l233
  %t597 = icmp ne i32 %t596, 0
  br i1 %t597, label %bb152, label %ok.598, !prof !99
ok.598:
  store i64 %t595, ptr %l232
  br label %bb151
bb151:
  %t599 = load i64, ptr %l232, !tbaa !24
  store i64 %t599, ptr %l228, !tbaa !24
  br label %bb154
bb152:
  br label %bb153
bb153:
  store i64 -1, ptr %l228, !tbaa !24
  br label %bb154
bb154:
  %t600 = load i64, ptr %l228, !tbaa !24
  store i64 %t600, ptr %l23, !tbaa !24
  %t601 = load i64, ptr %l23, !tbaa !24
  %t603 = icmp slt i64 %t601, 0
  br i1 %t603, label %bb155, label %bb156
bb155:
  %t605 = load ptr, ptr %lp18
  %t606 = load { i64, ptr }, ptr %l22, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t605, { i64, ptr } %t606)
  br label %bb157
bb156:
  br label %bb158
bb157:
  call void @__olang_scope_close(ptr %s25)
  br label %bb176
bb158:
  %t609 = load ptr, ptr %lp18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t609, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) })
  br label %bb159
bb159:
  store %olang.scope zeroinitializer, ptr %s27
  %t611 = load ptr, ptr %l0, !tbaa !29
  store ptr %t611, ptr %l239, !tbaa !29
  %t612 = load ptr, ptr %lp13
  %t613 = load i64, ptr %l23, !tbaa !24
  %t616 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H21d8db2bdfeb46fab755f8173a35f95e(ptr %v3, ptr %v3, ptr %t612, i64 %t613)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t616, ptr %l242
  br label %bb160
bb160:
  %t618 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v3, ptr %l242)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t618, ptr %l244
  br label %bb161
bb161:
  %t619 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l244
  %t620 = call ptr @__olang_scope_alloc_a(ptr %s27, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t619, ptr %t620
  %t622 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v3, ptr %v3, ptr %t620)
  store { i64, ptr } %t622, ptr %l246
  br label %bb162
bb162:
  %t623 = load ptr, ptr %l2, !tbaa !29
  %t624 = load i64, ptr %l3, !tbaa !24
  %t626 = add i64 %t624, 1
  %t627 = load ptr, ptr %l239, !tbaa !29
  %t628 = load { i64, ptr }, ptr %l246, !tbaa !27
  %t631 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v3, ptr %v2, ptr %v3, ptr %t627, { i64, ptr } %t628, ptr %t623, i64 %t626)
  %t632 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t631, 1
  %t633 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t631, 0
  store i32 %t633, ptr %l251
  %t634 = icmp ne i32 %t633, 0
  br i1 %t634, label %bb164, label %ok.635, !prof !99
ok.635:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t632, ptr %l250
  br label %bb163
bb163:
  %t636 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l250
  %t637 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t636, ptr %t637
  store ptr %t637, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb165
bb164:
  %t639 = load i32, ptr %l251, !tbaa !23
  %t640 = lshr i32 %t639, 16
  %t641 = and i32 %t639, 65535
  %t642 = icmp eq i32 %t640, 1
  %t643 = select i1 %t642, i32 1, i32 0
  %t644 = icmp eq i32 %t639, 0
  %t645 = shl i32 %t643, 16
  %t646 = or i32 %t645, %t641
  %t647 = select i1 %t644, i32 0, i32 %t646
  call void @__olang_scope_close(ptr %s27)
  call void @__olang_scope_close(ptr %s25)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t649 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t647, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t649, ptr %rv
  br label %ret
bb165:
  %t650 = load i64, ptr %l25, !tbaa !24
  store i64 %t650, ptr %l254, !tbaa !24
  %t651 = load ptr, ptr %l24, !tbaa !29
  %t653 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t651)
  store i64 %t653, ptr %l256
  br label %bb166
bb166:
  %t654 = load i64, ptr %l254, !tbaa !24
  %t655 = load i64, ptr %l256, !tbaa !24
  %t656 = icmp slt i64 %t654, %t655
  %t658 = xor i1 %t656, true
  br i1 %t658, label %bb167, label %bb168
bb167:
  br label %bb173
bb168:
  br label %bb169
bb169:
  %t660 = load ptr, ptr %l24, !tbaa !29
  %t661 = load i64, ptr %l25, !tbaa !24
  %t664 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t660, i64 %t661)
  store { i64, ptr } %t664, ptr %l261
  br label %bb170
bb170:
  %t665 = load { i64, ptr }, ptr %l261, !tbaa !27
  %t666 = load ptr, ptr %lp18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t666, { i64, ptr } %t665)
  br label %bb171
bb171:
  br label %bb172
bb172:
  %t670 = load i64, ptr %l25, !tbaa !24
  %t672 = add i64 %t670, 1
  store i64 %t672, ptr %l25, !tbaa !24
  br label %bb165
bb173:
  call void @__olang_scope_close(ptr %s27)
  br label %bb174
bb174:
  %t674 = load ptr, ptr %lp18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t674, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) })
  br label %bb175
bb175:
  call void @__olang_scope_close(ptr %s25)
  br label %bb176
bb176:
  %t676 = load i64, ptr %l20, !tbaa !24
  %t678 = add i64 %t676, 1
  store i64 %t678, ptr %l20, !tbaa !24
  br label %bb147
bb177:
  %t680 = load ptr, ptr %l2, !tbaa !29
  %t681 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v1, ptr %t680, { i64, ptr } %t681)
  br label %bb178
bb178:
  %t684 = load ptr, ptr %l0, !tbaa !29
  store ptr %t684, ptr %l271, !tbaa !29
  %t685 = load ptr, ptr %lp18
  %t687 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v3, ptr %v3, ptr %t685)
  store { i64, ptr } %t687, ptr %l273
  br label %bb179
bb179:
  %t688 = load ptr, ptr %l2, !tbaa !29
  %t689 = load i64, ptr %l3, !tbaa !24
  %t691 = add i64 %t689, 1
  %t692 = load ptr, ptr %l271, !tbaa !29
  %t693 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t696 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v3, ptr %v2, ptr %v3, ptr %t692, { i64, ptr } %t693, ptr %t688, i64 %t691)
  %t697 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t696, 1
  %t698 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t696, 0
  store i32 %t698, ptr %l278
  %t699 = icmp ne i32 %t698, 0
  br i1 %t699, label %bb181, label %ok.700, !prof !99
ok.700:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t697, ptr %l277
  br label %bb180
bb180:
  %t701 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l277
  %t702 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t701, ptr %t702
  store ptr %t702, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  br label %bb182
bb181:
  %t704 = load i32, ptr %l278, !tbaa !23
  %t705 = lshr i32 %t704, 16
  %t706 = and i32 %t704, 65535
  %t707 = icmp eq i32 %t705, 1
  %t708 = select i1 %t707, i32 1, i32 0
  %t709 = icmp eq i32 %t704, 0
  %t710 = shl i32 %t708, 16
  %t711 = or i32 %t710, %t706
  %t712 = select i1 %t709, i32 0, i32 %t711
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t714 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t712, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t714, ptr %rv
  br label %ret
bb182:
  %t715 = load i64, ptr %l28, !tbaa !24
  store i64 %t715, ptr %l281, !tbaa !24
  %t716 = load ptr, ptr %l27, !tbaa !29
  %t718 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t716)
  store i64 %t718, ptr %l283
  br label %bb183
bb183:
  %t719 = load i64, ptr %l281, !tbaa !24
  %t720 = load i64, ptr %l283, !tbaa !24
  %t721 = icmp slt i64 %t719, %t720
  %t723 = xor i1 %t721, true
  br i1 %t723, label %bb184, label %bb185
bb184:
  br label %bb190
bb185:
  br label %bb186
bb186:
  %t725 = load ptr, ptr %l27, !tbaa !29
  %t726 = load i64, ptr %l28, !tbaa !24
  %t729 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t725, i64 %t726)
  store { i64, ptr } %t729, ptr %l288
  br label %bb187
bb187:
  %t730 = load { i64, ptr }, ptr %l288, !tbaa !27
  %t731 = load ptr, ptr %lp4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t731, { i64, ptr } %t730)
  br label %bb188
bb188:
  br label %bb189
bb189:
  %t735 = load i64, ptr %l28, !tbaa !24
  %t737 = add i64 %t735, 1
  store i64 %t737, ptr %l28, !tbaa !24
  br label %bb182
bb190:
  br label %bb191
bb191:
  %t739 = load ptr, ptr %l2, !tbaa !29
  %t741 = call { i32, { i64, ptr } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Hdc04e7543082eec80486670259c0789b(ptr %v2, ptr %s2, ptr %t739)
  %t742 = extractvalue { i32, { i64, ptr } } %t741, 1
  %t743 = extractvalue { i32, { i64, ptr } } %t741, 0
  store i32 %t743, ptr %l296
  %t744 = icmp ne i32 %t743, 0
  br i1 %t744, label %bb193, label %ok.745, !prof !99
ok.745:
  store { i64, ptr } %t742, ptr %l295
  br label %bb192
bb192:
  %t746 = load { i64, ptr }, ptr %l295, !tbaa !27
  store { i64, ptr } %t746, ptr %l293, !tbaa !27
  %t747 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t747, label %bb195, label %bb196
bb193:
  br label %bb194
bb194:
  br label %bb197
bb195:
  %t749 = load { i64, ptr }, ptr %l293
  %t750 = extractvalue { i64, ptr } %t749, 1
  call void @__olang_region_release(ptr %t750)
  store { i64, ptr } zeroinitializer, ptr %l293
  br label %bb196
bb196:
  br label %bb197
bb197:
  %t751 = load i64, ptr %l16, !tbaa !24
  %t753 = add i64 %t751, 1
  store i64 %t753, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb198
bb198:
  br label %bb8
bb199:
  %t755 = load ptr, ptr %lp4
  %t756 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t755
  call void @__olang_scope_close(ptr %s0)
  %t758 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t756, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t758, ptr %rv
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
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i32
  %l34 = alloca i64
  %l37 = alloca i32
  %l39 = alloca i64
  %l42 = alloca { i64, ptr }
  %l45 = alloca %"compiler/bindgen:cparse"
  %l46 = alloca %"compiler/bindgen:cx"
  %l49 = alloca %"compiler/bindgen:cx"
  %l50 = alloca i32
  %l52 = alloca i64
  %l54 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca i64
  %l60 = alloca { i64, ptr }
  %l63 = alloca i32
  %l65 = alloca %"std/prelude/text:StringBuilder"
  %l82 = alloca i64
  %l85 = alloca i64
  %l103 = alloca ptr
  %l106 = alloca { i64, ptr }
  %l120 = alloca i64
  %l123 = alloca i64
  %l141 = alloca ptr
  %l144 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l176 = alloca i64
  %l177 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
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
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/bindgen:cMacro", ptr %t3, i32 0, i32 0
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l2, { i64, ptr } %t6)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/bindgen:cMacro", ptr %t10, i32 0, i32 3
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t17 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t9, { i64, ptr } %t13, ptr %l2, i64 0)
  %t18 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t17, 1
  %t19 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t17, 0
  store i32 %t19, ptr %l31
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb4, label %ok.21, !prof !99
ok.21:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l30
  br label %bb3
bb3:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l25
  br label %bb5
bb4:
  %t23 = load i32, ptr %l31, !tbaa !23
  %t24 = lshr i32 %t23, 16
  %t25 = and i32 %t23, 65535
  %t26 = icmp eq i32 %t24, 1
  %t27 = select i1 %t26, i32 1, i32 0
  %t28 = icmp eq i32 %t23, 0
  %t29 = shl i32 %t27, 16
  %t30 = or i32 %t29, %t25
  %t31 = select i1 %t28, i32 0, i32 %t30
  call void @__olang_scope_close(ptr %s0)
  %t33 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t31, 0
  store { i32, { i64, ptr } } %t33, ptr %rv
  br label %ret
bb5:
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l3
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l3)
  store i64 %t36, ptr %l34
  br label %bb6
bb6:
  %t37 = load i64, ptr %l34, !tbaa !24
  %t38 = icmp eq i64 %t37, 0
  br i1 %t38, label %bb7, label %bb8
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t40, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store i32 %t42, ptr %l37
  %t43 = icmp ne i32 %t42, 0
  br i1 %t43, label %bb10, label %ok.44, !prof !99
ok.44:
  br label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb11
bb10:
  %t45 = load i32, ptr %l37, !tbaa !23
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
bb11:
  br label %bb12
bb12:
  %t56 = ptrtoint ptr %s0 to i64
  store i64 %t56, ptr %l39, !tbaa !24
  %t57 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acparse_2e0
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t59 = call ptr @__olang_region_make(ptr %s0)
  %t60 = ptrtoint ptr %t59 to i64
  store i64 %t60, ptr %l39, !tbaa !24
  br label %bb14
bb14:
  %t61 = load i64, ptr %l39
  %t62 = inttoptr i64 %t61 to ptr
  %t64 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %t62, ptr %l3)
  store { i64, ptr } %t64, ptr %l42
  br label %bb15
bb15:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr %"compiler/bindgen:cMacro", ptr %t65, i32 0, i32 2
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t71 = call %"compiler/bindgen:cparse" @compiler_2fbindgen_3acparse_2ector(ptr %s0, ptr %v1, ptr %s0, { i64, ptr } %t69, { i64, ptr } %t68)
  store %"compiler/bindgen:cparse" %t71, ptr %l45
  br label %bb16
bb16:
  %t72 = load %"compiler/bindgen:cparse", ptr %l45
  store %"compiler/bindgen:cparse" %t72, ptr %l4
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t76 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %s0, ptr %s0, ptr %t73, ptr %l4)
  %t77 = extractvalue { i32, %"compiler/bindgen:cx" } %t76, 1
  %t78 = extractvalue { i32, %"compiler/bindgen:cx" } %t76, 0
  store i32 %t78, ptr %l50
  %t79 = icmp ne i32 %t78, 0
  br i1 %t79, label %bb18, label %ok.80, !prof !99
ok.80:
  store %"compiler/bindgen:cx" %t77, ptr %l49
  br label %bb17
bb17:
  %t81 = load %"compiler/bindgen:cx", ptr %l49
  store %"compiler/bindgen:cx" %t81, ptr %l46
  br label %bb19
bb18:
  %t82 = load i32, ptr %l50, !tbaa !23
  %t83 = lshr i32 %t82, 16
  %t84 = and i32 %t82, 65535
  %t85 = icmp eq i32 %t83, 1
  %t86 = select i1 %t85, i32 1, i32 0
  %t87 = icmp eq i32 %t82, 0
  %t88 = shl i32 %t86, 16
  %t89 = or i32 %t88, %t84
  %t90 = select i1 %t87, i32 0, i32 %t89
  call void @__olang_scope_close(ptr %s0)
  %t92 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t90, 0
  store { i32, { i64, ptr } } %t92, ptr %rv
  br label %ret
bb19:
  %t93 = load %"compiler/bindgen:cx", ptr %l46
  store %"compiler/bindgen:cx" %t93, ptr %l5
  %t94 = getelementptr %"compiler/bindgen:cparse", ptr %l4, i32 0, i32 2
  %t95 = load i64, ptr %t94, !tbaa !24
  store i64 %t95, ptr %l52, !tbaa !24
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l3)
  store i64 %t97, ptr %l54
  br label %bb20
bb20:
  %t98 = load i64, ptr %l52, !tbaa !24
  %t99 = load i64, ptr %l54, !tbaa !24
  %t100 = icmp ne i64 %t98, %t99
  br i1 %t100, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s2
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l56, !tbaa !29
  %t103 = ptrtoint ptr %v0 to i64
  store i64 %t103, ptr %l57, !tbaa !24
  %t104 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t104, label %bb23, label %bb24
bb22:
  br label %bb29
bb23:
  %t106 = call ptr @__olang_region_make(ptr %v0)
  %t107 = ptrtoint ptr %t106 to i64
  store i64 %t107, ptr %l57, !tbaa !24
  br label %bb24
bb24:
  %t109 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %s0, ptr %s2, ptr %l4)
  store { i64, ptr } %t109, ptr %l60
  br label %bb25
bb25:
  %t110 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t112 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t115 = add i64 %t111, %t114
  %t116 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t118 = add i64 %t115, %t117
  %t119 = load i64, ptr %l57
  %t120 = inttoptr i64 %t119 to ptr
  %t121 = call ptr @__olang_scope_alloc(ptr %t120, i64 %t118)
  call void @olang_textcopy(ptr %t121, ptr %t110, i64 %t111)
  %t122 = getelementptr i8, ptr %t121, i64 %t111
  call void @olang_textcopy(ptr %t122, ptr %t113, i64 %t114)
  %t123 = getelementptr i8, ptr %t122, i64 %t114
  call void @olang_textcopy(ptr %t123, ptr %t116, i64 %t117)
  %t124 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t121, 1
  %t127 = load i64, ptr %l57
  %t128 = inttoptr i64 %t127 to ptr
  %t129 = extractvalue { i64, ptr } %t125, 0
  %t130 = extractvalue { i64, ptr } %t125, 1
  %t131 = mul i64 %t129, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %t128, i64 %t131)
  call void @llvm.memcpy.p0.p0.i64(ptr %t132, ptr %t130, i64 %t131, i1 false)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t135 = load ptr, ptr %l56, !tbaa !29
  %t137 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t135, { i64, ptr } %t134)
  store i32 %t137, ptr %l63
  %t138 = icmp ne i32 %t137, 0
  br i1 %t138, label %bb27, label %ok.139, !prof !99
ok.139:
  br label %bb26
bb26:
  br label %bb28
bb27:
  %t140 = load i32, ptr %l63, !tbaa !23
  %t141 = lshr i32 %t140, 16
  %t142 = and i32 %t140, 65535
  %t143 = icmp eq i32 %t141, 1
  %t144 = select i1 %t143, i32 1, i32 0
  %t145 = icmp eq i32 %t140, 0
  %t146 = shl i32 %t144, 16
  %t147 = or i32 %t146, %t142
  %t148 = select i1 %t145, i32 0, i32 %t147
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t150 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t148, 0
  store { i32, { i64, ptr } } %t150, ptr %rv
  br label %ret
bb28:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb29:
  %t151 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t151, ptr %l65
  br label %bb30
bb30:
  %t152 = load %"std/prelude/text:StringBuilder", ptr %l65
  store %"std/prelude/text:StringBuilder" %t152, ptr %l6
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = getelementptr %"compiler/bindgen:cMacro", ptr %t153, i32 0, i32 0
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  %t157 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t158 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t160 = extractvalue { i64, ptr } %t156, 1
  %t161 = extractvalue { i64, ptr } %t156, 0
  %t162 = add i64 %t158, %t161
  %t163 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t162)
  call void @olang_textcopy(ptr %t163, ptr %t157, i64 %t158)
  %t164 = getelementptr i8, ptr %t163, i64 %t158
  call void @olang_textcopy(ptr %t164, ptr %t160, i64 %t161)
  %t165 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t163, 1
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t169 = extractvalue { i64, ptr } %t166, 1
  %t170 = mul i64 %t168, 1
  %t171 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t170)
  call void @llvm.memcpy.p0.p0.i64(ptr %t171, ptr %t169, i64 %t170, i1 false)
  %t172 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t173)
  br label %bb31
bb31:
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr %"compiler/bindgen:cMacro", ptr %t176, i32 0, i32 2
  %t179 = load { i64, ptr }, ptr %t178, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t183 = icmp sgt i64 %t181, 0
  br i1 %t183, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) })
  br label %bb34
bb33:
  br label %bb52
bb34:
  store i64 0, ptr %l7, !tbaa !24
  %t186 = load ptr, ptr %l1, !tbaa !29
  %t188 = getelementptr %"compiler/bindgen:cMacro", ptr %t186, i32 0, i32 2
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t189, 0
  store i64 %t191, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t193 = load i64, ptr %l8, !tbaa !24
  %t194 = load i64, ptr %l7, !tbaa !24
  %t197 = icmp sgt i64 %t193, %t194
  br i1 %t197, label %bb35, label %bb36
bb35:
  %t199 = load i64, ptr %l9, !tbaa !24
  %t201 = icmp sgt i64 %t199, 0
  br i1 %t201, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l82, !tbaa !24
  br label %bb40
bb37:
  %t203 = load i64, ptr %l8, !tbaa !24
  %t204 = load i64, ptr %l7, !tbaa !24
  %t207 = sub i64 %t203, %t204
  %t208 = load i64, ptr %l9, !tbaa !24
  %t211 = add i64 %t207, %t208
  %t213 = sub i64 %t211, 1
  %t214 = load i64, ptr %l9, !tbaa !24
  %t217 = sdiv i64 %t213, %t214
  store i64 %t217, ptr %l85, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l85, !tbaa !24
  br label %bb39
bb39:
  %t219 = load i64, ptr %l85, !tbaa !24
  store i64 %t219, ptr %l82, !tbaa !24
  br label %bb40
bb40:
  %t220 = load i64, ptr %l82, !tbaa !24
  store i64 %t220, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s7
  %t221 = load i64, ptr %l11, !tbaa !24
  %t222 = load i64, ptr %l10, !tbaa !24
  %t225 = icmp slt i64 %t221, %t222
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s7)
  br label %bb50
bb43:
  br label %bb44
bb44:
  %t229 = load i64, ptr %l7, !tbaa !24
  %t230 = load i64, ptr %l11, !tbaa !24
  %t231 = load i64, ptr %l9, !tbaa !24
  %t234 = mul i64 %t230, %t231
  %t237 = add i64 %t229, %t234
  store i64 %t237, ptr %l12, !tbaa !24
  store ptr %l6, ptr %l103, !tbaa !29
  %t239 = load i64, ptr %l12, !tbaa !24
  %t241 = icmp sgt i64 %t239, 0
  br i1 %t241, label %bb45, label %bb46
bb45:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d92, i32 0, i32 1) }, ptr %l106, !tbaa !27
  br label %bb47
bb46:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d93, i32 0, i32 1) }, ptr %l106, !tbaa !27
  br label %bb47
bb47:
  %t243 = load i64, ptr %l12, !tbaa !24
  %t244 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t244, 1
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t247 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t248 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t249 = add i64 %t246, %t248
  %t251 = call i64 @__olang_fmt_i64(ptr null, i64 %t243)
  %t252 = add i64 %t249, %t251
  %t253 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t252)
  call void @olang_textcopy(ptr %t253, ptr %t245, i64 %t246)
  %t254 = getelementptr i8, ptr %t253, i64 %t246
  call void @olang_textcopy(ptr %t254, ptr %t247, i64 %t248)
  %t255 = getelementptr i8, ptr %t254, i64 %t248
  %t256 = call i64 @__olang_fmt_i64(ptr %t255, i64 %t243)
  %t257 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t253, 1
  %t260 = extractvalue { i64, ptr } %t258, 0
  %t261 = extractvalue { i64, ptr } %t258, 1
  %t262 = mul i64 %t260, 1
  %t263 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t262)
  call void @llvm.memcpy.p0.p0.i64(ptr %t263, ptr %t261, i64 %t262, i1 false)
  %t264 = insertvalue { i64, ptr } undef, i64 %t260, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t263, 1
  %t266 = load ptr, ptr %l103, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %t266, { i64, ptr } %t265)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s7)
  br label %bb49
bb49:
  %t268 = load i64, ptr %l11, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l11, !tbaa !24
  br label %bb41
bb50:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) })
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s5)
  br label %bb52
bb52:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d96, i32 0, i32 1) })
  br label %bb53
bb53:
  store i64 0, ptr %l13, !tbaa !24
  %t274 = load ptr, ptr %l1, !tbaa !29
  %t276 = getelementptr %"compiler/bindgen:cMacro", ptr %t274, i32 0, i32 2
  %t277 = load { i64, ptr }, ptr %t276, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t277, 0
  store i64 %t279, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t281 = load i64, ptr %l14, !tbaa !24
  %t282 = load i64, ptr %l13, !tbaa !24
  %t285 = icmp sgt i64 %t281, %t282
  br i1 %t285, label %bb54, label %bb55
bb54:
  %t287 = load i64, ptr %l15, !tbaa !24
  %t289 = icmp sgt i64 %t287, 0
  br i1 %t289, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb59
bb56:
  %t291 = load i64, ptr %l14, !tbaa !24
  %t292 = load i64, ptr %l13, !tbaa !24
  %t295 = sub i64 %t291, %t292
  %t296 = load i64, ptr %l15, !tbaa !24
  %t299 = add i64 %t295, %t296
  %t301 = sub i64 %t299, 1
  %t302 = load i64, ptr %l15, !tbaa !24
  %t305 = sdiv i64 %t301, %t302
  store i64 %t305, ptr %l123, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l123, !tbaa !24
  br label %bb58
bb58:
  %t307 = load i64, ptr %l123, !tbaa !24
  store i64 %t307, ptr %l120, !tbaa !24
  br label %bb59
bb59:
  %t308 = load i64, ptr %l120, !tbaa !24
  store i64 %t308, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb60
bb60:
  store %olang.scope zeroinitializer, ptr %s11
  %t309 = load i64, ptr %l17, !tbaa !24
  %t310 = load i64, ptr %l16, !tbaa !24
  %t313 = icmp slt i64 %t309, %t310
  %t315 = xor i1 %t313, true
  br i1 %t315, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s11)
  br label %bb69
bb62:
  br label %bb63
bb63:
  %t317 = load i64, ptr %l13, !tbaa !24
  %t318 = load i64, ptr %l17, !tbaa !24
  %t319 = load i64, ptr %l15, !tbaa !24
  %t322 = mul i64 %t318, %t319
  %t325 = add i64 %t317, %t322
  store i64 %t325, ptr %l18, !tbaa !24
  store ptr %l6, ptr %l141, !tbaa !29
  %t327 = load i64, ptr %l18, !tbaa !24
  %t329 = icmp sgt i64 %t327, 0
  br i1 %t329, label %bb64, label %bb65
bb64:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d97, i32 0, i32 1) }, ptr %l144, !tbaa !27
  br label %bb66
bb65:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) }, ptr %l144, !tbaa !27
  br label %bb66
bb66:
  %t331 = load i64, ptr %l18, !tbaa !24
  %t332 = load i64, ptr %l18, !tbaa !24
  %t333 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t334 = extractvalue { i64, ptr } %t333, 1
  %t335 = extractvalue { i64, ptr } %t333, 0
  %t336 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t337 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t338 = add i64 %t335, %t337
  %t340 = call i64 @__olang_fmt_i64(ptr null, i64 %t331)
  %t341 = add i64 %t338, %t340
  %t342 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t343 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t344 = add i64 %t341, %t343
  %t346 = call i64 @__olang_fmt_i64(ptr null, i64 %t332)
  %t347 = add i64 %t344, %t346
  %t348 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t347)
  call void @olang_textcopy(ptr %t348, ptr %t334, i64 %t335)
  %t349 = getelementptr i8, ptr %t348, i64 %t335
  call void @olang_textcopy(ptr %t349, ptr %t336, i64 %t337)
  %t350 = getelementptr i8, ptr %t349, i64 %t337
  %t351 = call i64 @__olang_fmt_i64(ptr %t350, i64 %t331)
  %t352 = getelementptr i8, ptr %t350, i64 %t340
  call void @olang_textcopy(ptr %t352, ptr %t342, i64 %t343)
  %t353 = getelementptr i8, ptr %t352, i64 %t343
  %t354 = call i64 @__olang_fmt_i64(ptr %t353, i64 %t332)
  %t355 = insertvalue { i64, ptr } undef, i64 %t347, 0
  %t356 = insertvalue { i64, ptr } %t355, ptr %t348, 1
  %t358 = extractvalue { i64, ptr } %t356, 0
  %t359 = extractvalue { i64, ptr } %t356, 1
  %t360 = mul i64 %t358, 1
  %t361 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t360)
  call void @llvm.memcpy.p0.p0.i64(ptr %t361, ptr %t359, i64 %t360, i1 false)
  %t362 = insertvalue { i64, ptr } undef, i64 %t358, 0
  %t363 = insertvalue { i64, ptr } %t362, ptr %t361, 1
  %t364 = load ptr, ptr %l141, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %t364, { i64, ptr } %t363)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s11)
  br label %bb68
bb68:
  %t366 = load i64, ptr %l17, !tbaa !24
  %t368 = add i64 %t366, 1
  store i64 %t368, ptr %l17, !tbaa !24
  br label %bb60
bb69:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d101, i32 0, i32 1) })
  br label %bb70
bb70:
  %t371 = getelementptr %"compiler/bindgen:cx", ptr %l5, i32 0, i32 1
  %t372 = load i64, ptr %t371, !tbaa !24
  store i64 %t372, ptr %l19, !tbaa !24
  %t374 = load i64, ptr %l19, !tbaa !24
  %t375 = load i64, ptr @G_2ecompiler_2fbindgen_2eKVar, !tbaa !24
  %t378 = icmp eq i64 %t374, %t375
  br i1 %t378, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  %t380 = getelementptr %"compiler/bindgen:cx", ptr %l5, i32 0, i32 2
  %t381 = load i64, ptr %t380, !tbaa !24
  %t382 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t383 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t385 = call i64 @__olang_fmt_i64(ptr null, i64 %t381)
  %t386 = add i64 %t383, %t385
  %t387 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t386)
  call void @olang_textcopy(ptr %t387, ptr %t382, i64 %t383)
  %t388 = getelementptr i8, ptr %t387, i64 %t383
  %t389 = call i64 @__olang_fmt_i64(ptr %t388, i64 %t381)
  %t390 = insertvalue { i64, ptr } undef, i64 %t386, 0
  %t391 = insertvalue { i64, ptr } %t390, ptr %t387, 1
  store { i64, ptr } %t391, ptr %l153, !tbaa !27
  br label %bb91
bb74:
  %t393 = load i64, ptr %l19, !tbaa !24
  %t394 = load i64, ptr @G_2ecompiler_2fbindgen_2eKType, !tbaa !24
  %t397 = icmp eq i64 %t393, %t394
  br i1 %t397, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  %t399 = getelementptr %"compiler/bindgen:cx", ptr %l5, i32 0, i32 3
  %t400 = load { i64, ptr }, ptr %t399, !tbaa !27
  %t402 = extractvalue { i64, ptr } %t400, 1
  %t403 = extractvalue { i64, ptr } %t400, 0
  %t404 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t403)
  call void @olang_textcopy(ptr %t404, ptr %t402, i64 %t403)
  %t405 = insertvalue { i64, ptr } undef, i64 %t403, 0
  %t406 = insertvalue { i64, ptr } %t405, ptr %t404, 1
  store { i64, ptr } %t406, ptr %l153, !tbaa !27
  br label %bb91
bb78:
  %t408 = load i64, ptr %l19, !tbaa !24
  %t409 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t412 = icmp eq i64 %t408, %t409
  br i1 %t412, label %bb79, label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb82
bb81:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d103, i32 0, i32 1) }, ptr %l167, !tbaa !27
  %t414 = load { i64, ptr }, ptr %l167, !tbaa !27
  store { i64, ptr } %t414, ptr %l153, !tbaa !27
  br label %bb91
bb82:
  %t416 = load i64, ptr %l19, !tbaa !24
  %t417 = load i64, ptr @G_2ecompiler_2fbindgen_2eKFloat, !tbaa !24
  %t420 = icmp eq i64 %t416, %t417
  br i1 %t420, label %bb83, label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb86
bb85:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d104, i32 0, i32 1) }, ptr %l172, !tbaa !27
  %t422 = load { i64, ptr }, ptr %l172, !tbaa !27
  store { i64, ptr } %t422, ptr %l153, !tbaa !27
  br label %bb91
bb86:
  br i1 true, label %bb87, label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb90
bb89:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d105, i32 0, i32 1) }, ptr %l174, !tbaa !27
  %t424 = load { i64, ptr }, ptr %l174, !tbaa !27
  store { i64, ptr } %t424, ptr %l153, !tbaa !27
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_7ea854ff7e2640a8_63f49c54b749b4b4)
  unreachable
bb91:
  %t426 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t427 = extractvalue { i64, ptr } %t426, 0
  store i64 %t427, ptr %l176, !tbaa !24
  %t428 = load i64, ptr %l176, !tbaa !24
  %t429 = mul i64 %t428, 1
  %t430 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t429)
  %t431 = insertvalue { i64, ptr } undef, i64 %t428, 0
  %t432 = insertvalue { i64, ptr } %t431, ptr %t430, 1
  store { i64, ptr } %t432, ptr %l177, !tbaa !27
  %t433 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t434 = load ptr, ptr %t433, !tbaa !27
  %t435 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t436 = load ptr, ptr %t435, !tbaa !27
  %t437 = load i64, ptr %l176, !tbaa !24
  %t438 = mul i64 %t437, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t434, ptr %t436, i64 %t438, i1 false)
  %t439 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t441 = getelementptr %"compiler/bindgen:cx", ptr %l5, i32 0, i32 0
  %t442 = load { i64, ptr }, ptr %t441, !tbaa !27
  %t444 = extractvalue { i64, ptr } %t439, 1
  %t445 = extractvalue { i64, ptr } %t439, 0
  %t446 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t447 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t448 = add i64 %t445, %t447
  %t450 = extractvalue { i64, ptr } %t442, 1
  %t451 = extractvalue { i64, ptr } %t442, 0
  %t452 = add i64 %t448, %t451
  %t453 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t454 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t455 = add i64 %t452, %t454
  %t456 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t455)
  call void @olang_textcopy(ptr %t456, ptr %t444, i64 %t445)
  %t457 = getelementptr i8, ptr %t456, i64 %t445
  call void @olang_textcopy(ptr %t457, ptr %t446, i64 %t447)
  %t458 = getelementptr i8, ptr %t457, i64 %t447
  call void @olang_textcopy(ptr %t458, ptr %t450, i64 %t451)
  %t459 = getelementptr i8, ptr %t458, i64 %t451
  call void @olang_textcopy(ptr %t459, ptr %t453, i64 %t454)
  %t460 = insertvalue { i64, ptr } undef, i64 %t455, 0
  %t461 = insertvalue { i64, ptr } %t460, ptr %t456, 1
  %t463 = extractvalue { i64, ptr } %t461, 0
  %t464 = extractvalue { i64, ptr } %t461, 1
  %t465 = mul i64 %t463, 1
  %t466 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t465)
  call void @llvm.memcpy.p0.p0.i64(ptr %t466, ptr %t464, i64 %t465, i1 false)
  %t467 = insertvalue { i64, ptr } undef, i64 %t463, 0
  %t468 = insertvalue { i64, ptr } %t467, ptr %t466, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t468)
  br label %bb92
bb92:
  %t472 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l6)
  store { i64, ptr } %t472, ptr %l184
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s0)
  %t473 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t474 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t473, 1
  store { i32, { i64, ptr } } %t474, ptr %rv
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
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t126, ptr %v0, ptr %l75)
  call void @llvm.memmove.p0.p0.i64(ptr %l77, ptr %t126, i64 216, i1 false)
  br label %bb42
bb42:
  %t128 = getelementptr %"compiler/bindgen:record", ptr %l77, i32 0, i32 0
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s5, { i64, ptr } %t129, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d111, i32 0, i32 1) })
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
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t145, ptr %v0, ptr %l88)
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d112, i32 0, i32 1) }, ptr %l82, !tbaa !27
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
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca { i64, ptr }
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
  %t159 = load ptr, ptr %lp5
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v2, ptr %v3, ptr %t158, { i64, ptr } %t160, i64 0)
  br label %bb39
bb39:
  %t163 = load ptr, ptr %lp5
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  store { i64, ptr } %t164, ptr %l62, !tbaa !27
  %t165 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 0
  store i64 %t166, ptr %l63, !tbaa !24
  %t167 = load i64, ptr %l63, !tbaa !24
  %t168 = mul i64 %t167, 1
  %t169 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t168)
  %t170 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  store { i64, ptr } %t171, ptr %l64, !tbaa !27
  %t172 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = load i64, ptr %l63, !tbaa !24
  %t177 = mul i64 %t176, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t173, ptr %t175, i64 %t177, i1 false)
  %t178 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t178, ptr %l62, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t179 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t179, ptr %rv
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d117, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t1, ptr %l33, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t2, 0
  store i64 %t3, ptr %l34, !tbaa !24
  %t4 = load i64, ptr %l34, !tbaa !24
  %t5 = mul i64 %t4, 1
  %t6 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t5)
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
  %t15 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t15, ptr %lp5
  %t16 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t17 = load ptr, ptr %lp5
  store { i64, ptr } %t16, ptr %t17, !tbaa !27
  %t18 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t18, ptr %l36
  br label %bb1
bb1:
  %t19 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t19, ptr %l6
  %t22 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v1, ptr %v1, { i64, ptr } %a1)
  store %"std/prelude/text:LineIter" %t22, ptr %l38
  br label %bb2
bb2:
  %t23 = load %"std/prelude/text:LineIter", ptr %l38
  store %"std/prelude/text:LineIter" %t23, ptr %l7
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t25 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v1, ptr %v1, ptr %l7)
  %t26 = extractvalue { i32, { i64, ptr } } %t25, 1
  %t27 = extractvalue { i32, { i64, ptr } } %t25, 0
  store i32 %t27, ptr %l42
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb5, label %ok.29, !prof !99
ok.29:
  store { i64, ptr } %t26, ptr %l41
  br label %bb4
bb4:
  %t30 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t30, ptr %l39, !tbaa !27
  br label %bb7
bb5:
  %t31 = load i32, ptr %l42, !tbaa !23
  %t32 = ashr i32 %t31, 16
  %t34 = icmp eq i32 %t32, 1
  store i1 %t34, ptr %l44, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb200
bb7:
  %t35 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t35, ptr %l8, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t36, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d118, i32 0, i32 1) })
  store i1 %t38, ptr %l46
  br label %bb8
bb8:
  %t39 = load i1, ptr %l46, !tbaa !21
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t40 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t44 = icmp sgt i64 %t42, 2
  store i1 %t44, ptr %l47, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb11
bb11:
  %t46 = load i1, ptr %l47, !tbaa !21
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t47 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t47, ptr %l52, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr i8, ptr %t49, i64 2
  %t51 = load i8, ptr %t50, !tbaa !32
  %t53 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t51)
  store i1 %t53, ptr %l54
  br label %bb14
bb13:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb15
bb14:
  %t54 = load i1, ptr %l54, !tbaa !21
  store i1 %t54, ptr %l51, !tbaa !21
  br label %bb15
bb15:
  %t55 = load i1, ptr %l51, !tbaa !21
  br i1 %t55, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t56 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t59 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t56, i8 34)
  %t60 = extractvalue { i32, i64 } %t59, 1
  %t61 = extractvalue { i32, i64 } %t59, 0
  store i32 %t61, ptr %l59
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb19, label %ok.63, !prof !99
ok.63:
  store i64 %t60, ptr %l58
  br label %bb18
bb17:
  br label %bb56
bb18:
  %t64 = load i64, ptr %l58, !tbaa !24
  store i64 %t64, ptr %l55, !tbaa !24
  br label %bb21
bb19:
  br label %bb20
bb20:
  store i64 -1, ptr %l55, !tbaa !24
  br label %bb21
bb21:
  %t65 = load i64, ptr %l55, !tbaa !24
  store i64 %t65, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  %t68 = icmp slt i64 %t66, 0
  br i1 %t68, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb199
bb23:
  br label %bb24
bb24:
  %t70 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t72 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v1, ptr %s3, { i64, ptr } %t70, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) })
  %t73 = extractvalue { i32, i64 } %t72, 1
  %t74 = extractvalue { i32, i64 } %t72, 0
  store i32 %t74, ptr %l65
  %t75 = icmp ne i32 %t74, 0
  br i1 %t75, label %bb26, label %ok.76, !prof !99
ok.76:
  store i64 %t73, ptr %l64
  br label %bb25
bb25:
  %t77 = load i64, ptr %l64, !tbaa !24
  store i64 %t77, ptr %l62, !tbaa !24
  br label %bb28
bb26:
  br label %bb27
bb27:
  store i64 -1, ptr %l62, !tbaa !24
  br label %bb28
bb28:
  %t78 = load i64, ptr %l62, !tbaa !24
  store i64 %t78, ptr %l10, !tbaa !24
  %t79 = load i64, ptr %l10, !tbaa !24
  %t80 = load i64, ptr %l9, !tbaa !24
  %t83 = icmp sle i64 %t79, %t80
  br i1 %t83, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb199
bb30:
  br label %bb31
bb31:
  %t85 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t85, ptr %l69, !tbaa !27
  %t86 = load i64, ptr %l9, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l71, !tbaa !24
  %t89 = load i64, ptr %l10, !tbaa !24
  store i64 %t89, ptr %l72, !tbaa !24
  %t90 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  store i64 %t91, ptr %l73, !tbaa !24
  %t92 = load i64, ptr %l71, !tbaa !24
  %t93 = icmp sge i64 %t92, 0
  br i1 %t93, label %bb32, label %bb33
bb32:
  %t95 = load i64, ptr %l71, !tbaa !24
  %t96 = load i64, ptr %l72, !tbaa !24
  %t97 = icmp sle i64 %t95, %t96
  br i1 %t97, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_beacd36cd332827c_e461632e30adb8c0)
  unreachable
bb34:
  %t99 = load i64, ptr %l72, !tbaa !24
  %t100 = load i64, ptr %l73, !tbaa !24
  %t101 = icmp sle i64 %t99, %t100
  br i1 %t101, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_beacd36cd332827c_e461632e30adb8c0)
  unreachable
bb36:
  %t103 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l71, !tbaa !24
  %t106 = load i64, ptr %l72, !tbaa !24
  %t107 = getelementptr i8, ptr %t104, i64 %t105
  %t108 = sub i64 %t106, %t105
  %t109 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t107, 1
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d120, i32 0, i32 1) }, ptr %l79, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, ptr %l80, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t115 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t110, { i64, ptr } %t113, { i64, ptr } %t114)
  store { i64, ptr } %t115, ptr %l81
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_beacd36cd332827c_e461632e30adb8c0)
  unreachable
bb38:
  %t116 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 0
  store i64 %t117, ptr %l82, !tbaa !24
  %t118 = load i64, ptr %l82, !tbaa !24
  %t119 = mul i64 %t118, 1
  %t120 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t119)
  %t121 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  store { i64, ptr } %t122, ptr %l83, !tbaa !27
  %t123 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = load i64, ptr %l82, !tbaa !24
  %t128 = mul i64 %t127, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t124, ptr %t126, i64 %t128, i1 false)
  %t129 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 1
  %t132 = extractvalue { i64, ptr } %t129, 0
  %t133 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t132)
  call void @olang_textcopy(ptr %t133, ptr %t131, i64 %t132)
  %t134 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  store { i64, ptr } %t135, ptr %l85, !tbaa !27
  %t136 = load ptr, ptr %lp5
  %t137 = load { i64, ptr }, ptr %t136, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 0
  %t139 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 0
  store i64 %t140, ptr %l87, !tbaa !24
  %t142 = load i64, ptr %l87, !tbaa !24
  %t143 = icmp eq i64 %t138, %t142
  br i1 %t143, label %bb39, label %bb40
bb39:
  %t145 = load ptr, ptr %lp5
  %t146 = getelementptr { i64, ptr }, ptr %t145, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = load i64, ptr %l87, !tbaa !24
  %t151 = mul i64 %t150, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t147, ptr %t149, i64 %t151, i1 false)
  br label %bb41
bb40:
  %t152 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t153 = load ptr, ptr %lp5
  store { i64, ptr } %t152, ptr %t153, !tbaa !27
  br label %bb41
bb41:
  %t154 = load ptr, ptr %lp5
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  %t157 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v4, ptr %s3, { i64, ptr } %t155, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) })
  store i1 %t157, ptr %l90
  br label %bb42
bb42:
  %t158 = load i1, ptr %l90, !tbaa !21
  %t159 = xor i1 %t158, true
  br i1 %t159, label %bb43, label %bb44
bb43:
  %t161 = load ptr, ptr %lp5
  %t162 = load { i64, ptr }, ptr %t161, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t166 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %v2, { i64, ptr } %t162, { i64, ptr } %t163)
  store i1 %t166, ptr %l95
  br label %bb45
bb44:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb46
bb45:
  %t167 = load i1, ptr %l95, !tbaa !21
  %t168 = xor i1 %t167, true
  store i1 %t168, ptr %l92, !tbaa !21
  br label %bb46
bb46:
  %t170 = load i1, ptr %l92, !tbaa !21
  br i1 %t170, label %bb47, label %bb48
bb47:
  %t171 = load ptr, ptr %lp5
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  store { i64, ptr } %t172, ptr %l98, !tbaa !27
  %t173 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t173, 0
  store i64 %t174, ptr %l99, !tbaa !24
  %t175 = load i64, ptr %l99, !tbaa !24
  %t176 = mul i64 %t175, 1
  %t177 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t176)
  %t178 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t177, 1
  store { i64, ptr } %t179, ptr %l100, !tbaa !27
  %t180 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = load i64, ptr %l99, !tbaa !24
  %t185 = mul i64 %t184, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t181, ptr %t183, i64 %t185, i1 false)
  %t186 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t190 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %s0, ptr %s3, ptr %l6, { i64, ptr } %t186)
  store i1 %t190, ptr %l103
  br label %bb49
bb48:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb50
bb49:
  %t191 = load i1, ptr %l103, !tbaa !21
  %t192 = xor i1 %t191, true
  store i1 %t192, ptr %l97, !tbaa !21
  br label %bb50
bb50:
  %t194 = load i1, ptr %l97, !tbaa !21
  br i1 %t194, label %bb51, label %bb52
bb51:
  %t195 = load ptr, ptr %lp5
  %t196 = load { i64, ptr }, ptr %t195, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %s0, ptr %v4, ptr %l6, { i64, ptr } %t196, i1 true)
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t200 = load ptr, ptr %lp5
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %a4, { i64, ptr } %t201)
  br label %bb54
bb54:
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb199
bb56:
  %t204 = load ptr, ptr %lp5
  %t205 = load { i64, ptr }, ptr %t204, !tbaa !27
  %t207 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v4, ptr %s2, { i64, ptr } %t205, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) })
  store i1 %t207, ptr %l110
  br label %bb57
bb57:
  %t208 = load i1, ptr %l110, !tbaa !21
  br i1 %t208, label %bb58, label %bb59
bb58:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb61
bb59:
  %t209 = load ptr, ptr %lp5
  %t210 = load { i64, ptr }, ptr %t209, !tbaa !27
  %t211 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t214 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %v2, { i64, ptr } %t210, { i64, ptr } %t211)
  store i1 %t214, ptr %l114
  br label %bb60
bb60:
  %t215 = load i1, ptr %l114, !tbaa !21
  store i1 %t215, ptr %l111, !tbaa !21
  br label %bb61
bb61:
  %t216 = load i1, ptr %l111, !tbaa !21
  br i1 %t216, label %bb62, label %bb63
bb62:
  call void @__olang_scope_close(ptr %s2)
  br label %bb199
bb63:
  br label %bb64
bb64:
  %t217 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t219 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t217, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d124, i32 0, i32 1) })
  store i1 %t219, ptr %l116
  br label %bb65
bb65:
  %t220 = load i1, ptr %l116, !tbaa !21
  br i1 %t220, label %bb66, label %bb67
bb66:
  %t221 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t221, ptr %l117, !tbaa !27
  %t222 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t222, 0
  store i64 %t225, ptr %l120, !tbaa !24
  %t226 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t226, 0
  store i64 %t227, ptr %l121, !tbaa !24
  %t228 = icmp sge i64 7, 0
  br i1 %t228, label %bb68, label %bb69
bb67:
  br label %bb85
bb68:
  %t230 = load i64, ptr %l120, !tbaa !24
  %t231 = icmp sle i64 7, %t230
  br i1 %t231, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_88bbbdba37ecb069_7556c3a5c9bf841d)
  unreachable
bb70:
  %t233 = load i64, ptr %l120, !tbaa !24
  %t234 = load i64, ptr %l121, !tbaa !24
  %t235 = icmp sle i64 %t233, %t234
  br i1 %t235, label %bb72, label %bb73
bb71:
  call void @__olang_check_failed(ptr @olang_loc_88bbbdba37ecb069_7556c3a5c9bf841d)
  unreachable
bb72:
  %t237 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = load i64, ptr %l120, !tbaa !24
  %t240 = getelementptr i8, ptr %t238, i64 7
  %t241 = sub i64 %t239, 7
  %t242 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t243 = insertvalue { i64, ptr } %t242, ptr %t240, 1
  %t245 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v1, ptr %v1, { i64, ptr } %t243)
  store { i64, ptr } %t245, ptr %l126
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_88bbbdba37ecb069_7556c3a5c9bf841d)
  unreachable
bb74:
  %t246 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/bindgen:gen", ptr %t247, i32 0, i32 13
  %t253 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t249, { i64, ptr } %t246)
  %t254 = extractvalue { i32, i64 } %t253, 1
  %t255 = extractvalue { i32, i64 } %t253, 0
  store i32 %t255, ptr %l132
  %t256 = icmp ne i32 %t255, 0
  br i1 %t256, label %bb76, label %ok.257, !prof !99
ok.257:
  store i64 %t254, ptr %l131
  br label %bb75
bb75:
  %t258 = load i64, ptr %l131, !tbaa !24
  store i64 %t258, ptr %l127, !tbaa !24
  br label %bb78
bb76:
  br label %bb77
bb77:
  store i64 -1, ptr %l127, !tbaa !24
  br label %bb78
bb78:
  %t259 = load i64, ptr %l127, !tbaa !24
  store i64 %t259, ptr %l13, !tbaa !24
  %t260 = load i64, ptr %l13, !tbaa !24
  %t262 = icmp sge i64 %t260, 0
  br i1 %t262, label %bb79, label %bb80
bb79:
  %t264 = load i64, ptr %l13, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d125, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/bindgen:gen", ptr %t266, i32 0, i32 12
  %t272 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eRefMu_H9d4ce036ca8f6276b6798968f53e8eb9(ptr %v0, ptr %v0, ptr %t268, i64 %t264)
  store ptr %t272, ptr %l139
  br label %bb81
bb80:
  br label %bb84
bb81:
  %t273 = load ptr, ptr %l139, !tbaa !29
  store ptr %t273, ptr %l140, !tbaa !29
  %t275 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t276 = load ptr, ptr %l140, !tbaa !29
  %t277 = getelementptr %"compiler/bindgen:cMacro", ptr %t276, i32 0, i32 0
  %t278 = load { i64, ptr }, ptr %t277, !tbaa !27
  store { i64, ptr } %t278, ptr %l142, !tbaa !27
  %t280 = load ptr, ptr %l140, !tbaa !29
  %t281 = getelementptr %"compiler/bindgen:cMacro", ptr %t280, i32 0, i32 0
  store { i64, ptr } %t275, ptr %t281, !tbaa !27
  %t282 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acMacro_2e0
  br i1 %t282, label %bb82, label %bb83
bb82:
  %t284 = load { i64, ptr }, ptr %l142
  %t285 = extractvalue { i64, ptr } %t284, 1
  call void @__olang_region_release(ptr %t285)
  store { i64, ptr } zeroinitializer, ptr %l142
  br label %bb83
bb83:
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s2)
  br label %bb199
bb85:
  %t286 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t288 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s2, { i64, ptr } %t286, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d126, i32 0, i32 1) })
  store i1 %t288, ptr %l145
  br label %bb86
bb86:
  %t289 = load i1, ptr %l145, !tbaa !21
  %t290 = xor i1 %t289, true
  br i1 %t290, label %bb87, label %bb88
bb87:
  call void @__olang_scope_close(ptr %s2)
  br label %bb199
bb88:
  br label %bb89
bb89:
  %t292 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t292, ptr %l147, !tbaa !27
  %t293 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t293, 0
  store i64 %t296, ptr %l150, !tbaa !24
  %t297 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t297, 0
  store i64 %t298, ptr %l151, !tbaa !24
  %t299 = icmp sge i64 8, 0
  br i1 %t299, label %bb90, label %bb91
bb90:
  %t301 = load i64, ptr %l150, !tbaa !24
  %t302 = icmp sle i64 8, %t301
  br i1 %t302, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_a6c60cdff876254a_2c918d2d7b99843e)
  unreachable
bb92:
  %t304 = load i64, ptr %l150, !tbaa !24
  %t305 = load i64, ptr %l151, !tbaa !24
  %t306 = icmp sle i64 %t304, %t305
  br i1 %t306, label %bb94, label %bb95
bb93:
  call void @__olang_check_failed(ptr @olang_loc_a6c60cdff876254a_2c918d2d7b99843e)
  unreachable
bb94:
  %t308 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !27
  %t310 = load i64, ptr %l150, !tbaa !24
  %t311 = getelementptr i8, ptr %t309, i64 8
  %t312 = sub i64 %t310, 8
  %t313 = insertvalue { i64, ptr } undef, i64 %t312, 0
  %t314 = insertvalue { i64, ptr } %t313, ptr %t311, 1
  store { i64, ptr } %t314, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  br label %bb96
bb95:
  call void @__olang_check_failed(ptr @olang_loc_a6c60cdff876254a_2c918d2d7b99843e)
  unreachable
bb96:
  %t316 = load i64, ptr %l18, !tbaa !24
  %t317 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t319 = extractvalue { i64, ptr } %t317, 0
  %t322 = icmp slt i64 %t316, %t319
  br i1 %t322, label %bb97, label %bb98
bb97:
  %t324 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t324, ptr %l161, !tbaa !27
  %t325 = load i64, ptr %l18, !tbaa !24
  %t327 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = getelementptr i8, ptr %t328, i64 %t325
  %t330 = load i8, ptr %t329, !tbaa !32
  %t332 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t330)
  store i1 %t332, ptr %l164
  br label %bb99
bb98:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb107
bb99:
  %t333 = load i1, ptr %l164, !tbaa !21
  br i1 %t333, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l165, !tbaa !21
  br label %bb103
bb101:
  %t334 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t334, ptr %l166, !tbaa !27
  %t335 = load i64, ptr %l18, !tbaa !24
  %t337 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !27
  %t339 = getelementptr i8, ptr %t338, i64 %t335
  %t340 = load i8, ptr %t339, !tbaa !32
  %t342 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t340)
  store i1 %t342, ptr %l169
  br label %bb102
bb102:
  %t343 = load i1, ptr %l169, !tbaa !21
  store i1 %t343, ptr %l165, !tbaa !21
  br label %bb103
bb103:
  %t344 = load i1, ptr %l165, !tbaa !21
  br i1 %t344, label %bb104, label %bb105
bb104:
  store i1 true, ptr %l170, !tbaa !21
  br label %bb106
bb105:
  %t345 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t345, ptr %l171, !tbaa !27
  %t346 = load i64, ptr %l18, !tbaa !24
  %t348 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t349 = load ptr, ptr %t348, !tbaa !27
  %t350 = getelementptr i8, ptr %t349, i64 %t346
  %t351 = load i8, ptr %t350, !tbaa !32
  %t353 = icmp eq i8 %t351, 95
  store i1 %t353, ptr %l170, !tbaa !21
  br label %bb106
bb106:
  %t355 = load i1, ptr %l170, !tbaa !21
  store i1 %t355, ptr %l160, !tbaa !21
  br label %bb107
bb107:
  %t356 = load i1, ptr %l160, !tbaa !21
  %t357 = xor i1 %t356, true
  br i1 %t357, label %bb108, label %bb109
bb108:
  br label %bb112
bb109:
  br label %bb110
bb110:
  %t359 = load i64, ptr %l18, !tbaa !24
  %t361 = add i64 %t359, 1
  store i64 %t361, ptr %l18, !tbaa !24
  br label %bb111
bb111:
  br label %bb96
bb112:
  %t363 = load i64, ptr %l18, !tbaa !24
  %t365 = icmp eq i64 %t363, 0
  br i1 %t365, label %bb113, label %bb114
bb113:
  call void @__olang_scope_close(ptr %s2)
  br label %bb199
bb114:
  br label %bb115
bb115:
  %t367 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t367, ptr %l180, !tbaa !27
  %t368 = load i64, ptr %l18, !tbaa !24
  store i64 %t368, ptr %l181, !tbaa !24
  %t369 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t370 = extractvalue { i64, ptr } %t369, 0
  store i64 %t370, ptr %l182, !tbaa !24
  %t371 = icmp sge i64 0, 0
  br i1 %t371, label %bb116, label %bb117
bb116:
  %t373 = load i64, ptr %l181, !tbaa !24
  %t374 = icmp sle i64 0, %t373
  br i1 %t374, label %bb118, label %bb119
bb117:
  call void @__olang_check_failed(ptr @olang_loc_5755e6dd02fca827_178a482bfa1e95bb)
  unreachable
bb118:
  %t376 = load i64, ptr %l181, !tbaa !24
  %t377 = load i64, ptr %l182, !tbaa !24
  %t378 = icmp sle i64 %t376, %t377
  br i1 %t378, label %bb120, label %bb121
bb119:
  call void @__olang_check_failed(ptr @olang_loc_5755e6dd02fca827_178a482bfa1e95bb)
  unreachable
bb120:
  %t380 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t381 = load ptr, ptr %t380, !tbaa !27
  %t382 = load i64, ptr %l181, !tbaa !24
  %t383 = getelementptr i8, ptr %t381, i64 0
  %t384 = sub i64 %t382, 0
  %t385 = insertvalue { i64, ptr } undef, i64 %t384, 0
  %t386 = insertvalue { i64, ptr } %t385, ptr %t383, 1
  store { i64, ptr } %t386, ptr %l19, !tbaa !27
  %t388 = load i64, ptr %l18, !tbaa !24
  %t389 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t391 = extractvalue { i64, ptr } %t389, 0
  %t394 = icmp slt i64 %t388, %t391
  br i1 %t394, label %bb122, label %bb123
bb121:
  call void @__olang_check_failed(ptr @olang_loc_5755e6dd02fca827_178a482bfa1e95bb)
  unreachable
bb122:
  %t396 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t396, ptr %l192, !tbaa !27
  %t397 = load i64, ptr %l18, !tbaa !24
  %t399 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t400 = load ptr, ptr %t399, !tbaa !27
  %t401 = getelementptr i8, ptr %t400, i64 %t397
  %t402 = load i8, ptr %t401, !tbaa !32
  %t404 = icmp eq i8 %t402, 40
  store i1 %t404, ptr %l191, !tbaa !21
  br label %bb124
bb123:
  store i1 false, ptr %l191, !tbaa !21
  br label %bb124
bb124:
  %t406 = load i1, ptr %l191, !tbaa !21
  store i1 %t406, ptr %l20, !tbaa !21
  %t407 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t407, ptr %l196
  br label %bb125
bb125:
  %t408 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l196
  %t409 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t408, ptr %t409
  store ptr %t409, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t411 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t411, ptr %l198, !tbaa !27
  %t412 = load i64, ptr %l18, !tbaa !24
  store i64 %t412, ptr %l199, !tbaa !24
  %t413 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t416 = extractvalue { i64, ptr } %t413, 0
  store i64 %t416, ptr %l202, !tbaa !24
  %t417 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t418 = extractvalue { i64, ptr } %t417, 0
  store i64 %t418, ptr %l203, !tbaa !24
  %t419 = load i64, ptr %l199, !tbaa !24
  %t420 = icmp sge i64 %t419, 0
  br i1 %t420, label %bb126, label %bb127
bb126:
  %t422 = load i64, ptr %l199, !tbaa !24
  %t423 = load i64, ptr %l202, !tbaa !24
  %t424 = icmp sle i64 %t422, %t423
  br i1 %t424, label %bb128, label %bb129
bb127:
  call void @__olang_check_failed(ptr @olang_loc_4153d023000ff8e8_6b17d300a1e811b4)
  unreachable
bb128:
  %t426 = load i64, ptr %l202, !tbaa !24
  %t427 = load i64, ptr %l203, !tbaa !24
  %t428 = icmp sle i64 %t426, %t427
  br i1 %t428, label %bb130, label %bb131
bb129:
  call void @__olang_check_failed(ptr @olang_loc_4153d023000ff8e8_6b17d300a1e811b4)
  unreachable
bb130:
  %t430 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !27
  %t432 = load i64, ptr %l199, !tbaa !24
  %t433 = load i64, ptr %l202, !tbaa !24
  %t434 = getelementptr i8, ptr %t431, i64 %t432
  %t435 = sub i64 %t433, %t432
  %t436 = insertvalue { i64, ptr } undef, i64 %t435, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t434, 1
  store { i64, ptr } %t437, ptr %l23, !tbaa !27
  %t439 = load i1, ptr %l20, !tbaa !21
  br i1 %t439, label %bb132, label %bb133
bb131:
  call void @__olang_check_failed(ptr @olang_loc_4153d023000ff8e8_6b17d300a1e811b4)
  unreachable
bb132:
  %t441 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t444 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t441, i8 41)
  %t445 = extractvalue { i32, i64 } %t444, 1
  %t446 = extractvalue { i32, i64 } %t444, 0
  store i32 %t446, ptr %l213
  %t447 = icmp ne i32 %t446, 0
  br i1 %t447, label %bb135, label %ok.448, !prof !99
ok.448:
  store i64 %t445, ptr %l212
  br label %bb134
bb133:
  br label %bb174
bb134:
  %t449 = load i64, ptr %l212, !tbaa !24
  store i64 %t449, ptr %l209, !tbaa !24
  br label %bb137
bb135:
  br label %bb136
bb136:
  store i64 -1, ptr %l209, !tbaa !24
  br label %bb137
bb137:
  %t450 = load i64, ptr %l209, !tbaa !24
  store i64 %t450, ptr %l24, !tbaa !24
  %t451 = load i64, ptr %l24, !tbaa !24
  %t453 = icmp slt i64 %t451, 0
  br i1 %t453, label %bb138, label %bb139
bb138:
  call void @__olang_scope_close(ptr %s2)
  br label %bb199
bb139:
  br label %bb140
bb140:
  %t455 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t455, ptr %l216, !tbaa !27
  %t456 = load i64, ptr %l18, !tbaa !24
  %t458 = add i64 %t456, 1
  store i64 %t458, ptr %l218, !tbaa !24
  %t459 = load i64, ptr %l24, !tbaa !24
  store i64 %t459, ptr %l219, !tbaa !24
  %t460 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t460, 0
  store i64 %t461, ptr %l220, !tbaa !24
  %t462 = load i64, ptr %l218, !tbaa !24
  %t463 = icmp sge i64 %t462, 0
  br i1 %t463, label %bb141, label %bb142
bb141:
  %t465 = load i64, ptr %l218, !tbaa !24
  %t466 = load i64, ptr %l219, !tbaa !24
  %t467 = icmp sle i64 %t465, %t466
  br i1 %t467, label %bb143, label %bb144
bb142:
  call void @__olang_check_failed(ptr @olang_loc_ec020a578bdf64c5_799d4029e88195a1)
  unreachable
bb143:
  %t469 = load i64, ptr %l219, !tbaa !24
  %t470 = load i64, ptr %l220, !tbaa !24
  %t471 = icmp sle i64 %t469, %t470
  br i1 %t471, label %bb145, label %bb146
bb144:
  call void @__olang_check_failed(ptr @olang_loc_ec020a578bdf64c5_799d4029e88195a1)
  unreachable
bb145:
  %t473 = getelementptr { i64, ptr }, ptr %l216, i32 0, i32 1
  %t474 = load ptr, ptr %t473, !tbaa !27
  %t475 = load i64, ptr %l218, !tbaa !24
  %t476 = load i64, ptr %l219, !tbaa !24
  %t477 = getelementptr i8, ptr %t474, i64 %t475
  %t478 = sub i64 %t476, %t475
  %t479 = insertvalue { i64, ptr } undef, i64 %t478, 0
  %t480 = insertvalue { i64, ptr } %t479, ptr %t477, 1
  %t482 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t480, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) })
  store { i64, ptr } %t482, ptr %l225
  br label %bb147
bb146:
  call void @__olang_check_failed(ptr @olang_loc_ec020a578bdf64c5_799d4029e88195a1)
  unreachable
bb147:
  %t483 = load { i64, ptr }, ptr %l225, !tbaa !27
  store { i64, ptr } %t483, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t484 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t486 = extractvalue { i64, ptr } %t484, 0
  store i64 %t486, ptr %l27, !tbaa !24
  br label %bb148
bb148:
  store %olang.scope zeroinitializer, ptr %s17
  %t488 = load i64, ptr %l26, !tbaa !24
  %t489 = load i64, ptr %l27, !tbaa !24
  %t492 = icmp slt i64 %t488, %t489
  %t494 = xor i1 %t492, true
  br i1 %t494, label %bb149, label %bb150
bb149:
  call void @__olang_scope_close(ptr %s17)
  br label %bb167
bb150:
  br label %bb151
bb151:
  %t496 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t496, ptr %l232, !tbaa !27
  %t497 = load i64, ptr %l26, !tbaa !24
  %t499 = getelementptr { i64, ptr }, ptr %l232, i32 0, i32 1
  %t500 = load ptr, ptr %t499, !tbaa !27
  %t501 = getelementptr { i64, ptr }, ptr %t500, i64 %t497
  %t502 = load { i64, ptr }, ptr %t501, !tbaa !37
  %t506 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v1, ptr %v1, { i64, ptr } %t502)
  store { i64, ptr } %t506, ptr %l236
  br label %bb152
bb152:
  %t507 = load { i64, ptr }, ptr %l236, !tbaa !27
  store { i64, ptr } %t507, ptr %l29, !tbaa !27
  %t508 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t510 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s17, { i64, ptr } %t508, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d128, i32 0, i32 1) })
  store i1 %t510, ptr %l238
  br label %bb153
bb153:
  %t511 = load i1, ptr %l238, !tbaa !21
  br i1 %t511, label %bb154, label %bb155
bb154:
  store i1 true, ptr %l239, !tbaa !21
  br label %bb157
bb155:
  %t512 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t514 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %s17, { i64, ptr } %t512, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d129, i32 0, i32 1) })
  store i1 %t514, ptr %l241
  br label %bb156
bb156:
  %t515 = load i1, ptr %l241, !tbaa !21
  store i1 %t515, ptr %l239, !tbaa !21
  br label %bb157
bb157:
  %t516 = load i1, ptr %l239, !tbaa !21
  br i1 %t516, label %bb158, label %bb159
bb158:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb165
bb159:
  store %olang.scope zeroinitializer, ptr %s19
  %t517 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t519 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s19, { i64, ptr } %t517, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d130, i32 0, i32 1) })
  store i1 %t519, ptr %l243
  br label %bb160
bb160:
  %t520 = load i1, ptr %l243, !tbaa !21
  %t521 = xor i1 %t520, true
  br i1 %t521, label %bb161, label %bb162
bb161:
  %t523 = load ptr, ptr %l21, !tbaa !29
  %t524 = load { i64, ptr }, ptr %l29, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %t523, { i64, ptr } %t524)
  br label %bb163
bb162:
  br label %bb164
bb163:
  br label %bb164
bb164:
  call void @__olang_scope_close(ptr %s19)
  br label %bb165
bb165:
  call void @__olang_scope_close(ptr %s17)
  br label %bb166
bb166:
  %t527 = load i64, ptr %l26, !tbaa !24
  %t529 = add i64 %t527, 1
  store i64 %t529, ptr %l26, !tbaa !24
  br label %bb148
bb167:
  %t531 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t531, ptr %l249, !tbaa !27
  %t532 = load i64, ptr %l24, !tbaa !24
  %t534 = add i64 %t532, 1
  store i64 %t534, ptr %l251, !tbaa !24
  %t535 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t538 = extractvalue { i64, ptr } %t535, 0
  store i64 %t538, ptr %l254, !tbaa !24
  %t539 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t540 = extractvalue { i64, ptr } %t539, 0
  store i64 %t540, ptr %l255, !tbaa !24
  %t541 = load i64, ptr %l251, !tbaa !24
  %t542 = icmp sge i64 %t541, 0
  br i1 %t542, label %bb168, label %bb169
bb168:
  %t544 = load i64, ptr %l251, !tbaa !24
  %t545 = load i64, ptr %l254, !tbaa !24
  %t546 = icmp sle i64 %t544, %t545
  br i1 %t546, label %bb170, label %bb171
bb169:
  call void @__olang_check_failed(ptr @olang_loc_642a74ef72af54a6_43680c0161c24f22)
  unreachable
bb170:
  %t548 = load i64, ptr %l254, !tbaa !24
  %t549 = load i64, ptr %l255, !tbaa !24
  %t550 = icmp sle i64 %t548, %t549
  br i1 %t550, label %bb172, label %bb173
bb171:
  call void @__olang_check_failed(ptr @olang_loc_642a74ef72af54a6_43680c0161c24f22)
  unreachable
bb172:
  %t552 = getelementptr { i64, ptr }, ptr %l249, i32 0, i32 1
  %t553 = load ptr, ptr %t552, !tbaa !27
  %t554 = load i64, ptr %l251, !tbaa !24
  %t555 = load i64, ptr %l254, !tbaa !24
  %t556 = getelementptr i8, ptr %t553, i64 %t554
  %t557 = sub i64 %t555, %t554
  %t558 = insertvalue { i64, ptr } undef, i64 %t557, 0
  %t559 = insertvalue { i64, ptr } %t558, ptr %t556, 1
  store { i64, ptr } %t559, ptr %l23, !tbaa !27
  br label %bb174
bb173:
  call void @__olang_check_failed(ptr @olang_loc_642a74ef72af54a6_43680c0161c24f22)
  unreachable
bb174:
  %t561 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t561, ptr %l260, !tbaa !27
  %t562 = load i1, ptr %l20, !tbaa !21
  store i1 %t562, ptr %l261, !tbaa !21
  %t563 = ptrtoint ptr %v0 to i64
  store i64 %t563, ptr %l262, !tbaa !24
  %t564 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acMacro_2e2
  br i1 %t564, label %bb175, label %bb176
bb175:
  %t566 = call ptr @__olang_region_make(ptr %v0)
  %t567 = ptrtoint ptr %t566 to i64
  store i64 %t567, ptr %l262, !tbaa !24
  br label %bb176
bb176:
  %t568 = load ptr, ptr %l21, !tbaa !29
  %t569 = load i64, ptr %l262
  %t570 = inttoptr i64 %t569 to ptr
  %t572 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %t570, ptr %t568)
  store { i64, ptr } %t572, ptr %l265
  br label %bb177
bb177:
  %t573 = ptrtoint ptr %v1 to i64
  store i64 %t573, ptr %l266, !tbaa !24
  %t574 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acMacro_2e3
  br i1 %t574, label %bb178, label %bb179
bb178:
  %t576 = call ptr @__olang_region_make(ptr %v1)
  %t577 = ptrtoint ptr %t576 to i64
  store i64 %t577, ptr %l266, !tbaa !24
  br label %bb179
bb179:
  %t578 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t580 = call ptr @compiler_2fbindgen_2ecLex(ptr %v1, ptr %v1, { i64, ptr } %t578)
  store ptr %t580, ptr %l269
  br label %bb180
bb180:
  %t581 = load i64, ptr %l266
  %t582 = inttoptr i64 %t581 to ptr
  %t583 = load i64, ptr %l266
  %t584 = inttoptr i64 %t583 to ptr
  %t585 = load ptr, ptr %l269, !tbaa !29
  %t586 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %t582, ptr %t584, ptr %t585)
  store { i64, ptr } %t586, ptr %l270
  br label %bb181
bb181:
  %t587 = load ptr, ptr %lp5
  %t588 = load { i64, ptr }, ptr %t587, !tbaa !27
  %t589 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t592 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %v3, { i64, ptr } %t588, { i64, ptr } %t589)
  store i1 %t592, ptr %l273
  br label %bb182
bb182:
  %t593 = load i1, ptr %l273, !tbaa !21
  br i1 %t593, label %bb183, label %bb184
bb183:
  store i1 true, ptr %l274, !tbaa !21
  br label %bb186
bb184:
  %t594 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t596 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s2, { i64, ptr } %t594, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d131, i32 0, i32 1) })
  store i1 %t596, ptr %l276
  br label %bb185
bb185:
  %t597 = load i1, ptr %l276, !tbaa !21
  store i1 %t597, ptr %l274, !tbaa !21
  br label %bb186
bb186:
  %t598 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t599 = load i1, ptr %l261, !tbaa !21
  %t600 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t601 = load { i64, ptr }, ptr %l270, !tbaa !27
  %t602 = load i1, ptr %l274, !tbaa !21
  %t603 = call %"compiler/bindgen:cMacro" @compiler_2fbindgen_3acMacro_2ector(ptr %v1, ptr %v0, ptr %v1, ptr %v0, { i64, ptr } %t598, i1 %t599, { i64, ptr } %t600, { i64, ptr } %t601, i1 %t602)
  store %"compiler/bindgen:cMacro" %t603, ptr %l277
  br label %bb187
bb187:
  %t604 = load %"compiler/bindgen:cMacro", ptr %l277
  %t605 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 64, i64 8)
  store %"compiler/bindgen:cMacro" %t604, ptr %t605
  store ptr %t605, ptr %l30, !tbaa !29
  %t607 = load ptr, ptr %l30, !tbaa !29
  %t608 = load i1, ptr %l22, !tbaa !21
  %t611 = getelementptr %"compiler/bindgen:cMacro", ptr %t607, i32 0, i32 5
  store i1 %t608, ptr %t611, !tbaa !21
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t614 = getelementptr %"compiler/bindgen:gen", ptr %t612, i32 0, i32 13
  %t615 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t618 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t614, { i64, ptr } %t615)
  %t619 = extractvalue { i32, i64 } %t618, 1
  %t620 = extractvalue { i32, i64 } %t618, 0
  store i32 %t620, ptr %l286
  %t621 = icmp ne i32 %t620, 0
  br i1 %t621, label %bb189, label %ok.622, !prof !99
ok.622:
  store i64 %t619, ptr %l285
  br label %bb188
bb188:
  %t623 = load i64, ptr %l285, !tbaa !24
  store i64 %t623, ptr %l281, !tbaa !24
  br label %bb191
bb189:
  br label %bb190
bb190:
  store i64 -1, ptr %l281, !tbaa !24
  br label %bb191
bb191:
  %t624 = load i64, ptr %l281, !tbaa !24
  store i64 %t624, ptr %l31, !tbaa !24
  %t625 = load i64, ptr %l31, !tbaa !24
  %t627 = icmp sge i64 %t625, 0
  br i1 %t627, label %bb192, label %bb193
bb192:
  %t629 = load ptr, ptr %l0, !tbaa !29
  %t631 = getelementptr %"compiler/bindgen:gen", ptr %t629, i32 0, i32 12
  %t632 = load i64, ptr %l31, !tbaa !24
  %t633 = load ptr, ptr %l30, !tbaa !29
  %t635 = load %"compiler/bindgen:cMacro", ptr %t633
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eSetAt_H7935c3ba4e105e8cc692de439d360efe(ptr %v0, ptr %v0, ptr %t631, i64 %t632, %"compiler/bindgen:cMacro" %t635)
  br label %bb194
bb193:
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t641 = getelementptr %"compiler/bindgen:gen", ptr %t639, i32 0, i32 12
  %t642 = load ptr, ptr %l30, !tbaa !29
  %t644 = load %"compiler/bindgen:cMacro", ptr %t642
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2ePush_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v0, ptr %t641, %"compiler/bindgen:cMacro" %t644)
  br label %bb195
bb194:
  br label %bb198
bb195:
  %t647 = load ptr, ptr %l0, !tbaa !29
  %t649 = getelementptr %"compiler/bindgen:gen", ptr %t647, i32 0, i32 13
  store ptr %t649, ptr %l299, !tbaa !29
  %t650 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t650, ptr %l300, !tbaa !27
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t653 = getelementptr %"compiler/bindgen:gen", ptr %t651, i32 0, i32 12
  %t655 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %t653)
  store i64 %t655, ptr %l303
  br label %bb196
bb196:
  %t656 = load i64, ptr %l303, !tbaa !24
  %t657 = sub i64 %t656, 1
  %t658 = load ptr, ptr %l299, !tbaa !29
  %t659 = load { i64, ptr }, ptr %l300, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %t658, { i64, ptr } %t659, i64 %t657)
  br label %bb197
bb197:
  br label %bb198
bb198:
  call void @__olang_scope_close(ptr %s2)
  br label %bb199
bb199:
  br label %bb3
bb200:
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
  %l68 = alloca i64
  %l69 = alloca { i64, ptr }
  %l72 = alloca i64
  %l76 = alloca %"compiler/bindgen:ctype"
  %l81 = alloca ptr
  %l85 = alloca %"compiler/bindgen:ctype"
  %l87 = alloca %"compiler/bindgen:ctype"
  %l90 = alloca i1
  %l94 = alloca %"compiler/bindgen:ctype"
  %l97 = alloca ptr
  %l101 = alloca %"compiler/bindgen:ctype"
  %l103 = alloca i64
  %l107 = alloca ptr
  %l112 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l115 = alloca i64
  %l119 = alloca i64
  %l122 = alloca i64
  %l143 = alloca ptr
  %l147 = alloca i1
  %l152 = alloca i1
  %l156 = alloca ptr
  %l159 = alloca i1
  %l160 = alloca i1
  %l163 = alloca i1
  %l169 = alloca i64
  %l171 = alloca %"std/prelude/text:StringBuilder"
  %l177 = alloca i64
  %l179 = alloca i64
  %l185 = alloca i64
  %l186 = alloca ptr
  %l187 = alloca i64
  %l188 = alloca i64
  %l191 = alloca { i64, ptr }
  %l192 = alloca i64
  %l195 = alloca { i64, ptr }
  %l200 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l205 = alloca i32
  %l207 = alloca i1
  %l211 = alloca i32
  %l213 = alloca ptr
  %l218 = alloca ptr
  %l219 = alloca i32
  %l222 = alloca { i64, ptr }
  %l230 = alloca { i64, ptr }
  %l234 = alloca { i64, ptr }
  %l236 = alloca { i64, ptr }
  %l238 = alloca i1
  %l240 = alloca i1
  %l242 = alloca i1
  %l244 = alloca i64
  %l246 = alloca i64
  %l247 = alloca i64
  %l251 = alloca { i64, ptr }
  %l252 = alloca i64
  %l253 = alloca i32
  %l254 = alloca i64
  %l255 = alloca i32
  %l258 = alloca i1
  %l259 = alloca i64
  %l261 = alloca i64
  %l263 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l265 = alloca { i64, ptr }
  %l273 = alloca { i64, ptr }
  %l277 = alloca { i64, ptr }
  %l278 = alloca ptr
  %l279 = alloca i64
  %l280 = alloca { i64, ptr }
  %l281 = alloca i64
  %l282 = alloca i32
  %l283 = alloca i64
  %l284 = alloca i32
  %l288 = alloca i64
  %l292 = alloca i64
  %l294 = alloca i64
  %l298 = alloca ptr
  %l303 = alloca i64
  %l305 = alloca i64
  %l309 = alloca ptr
  %l316 = alloca i64
  %l320 = alloca i64
  %l323 = alloca i64
  %l345 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s15 = alloca %olang.scope
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
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l68, !tbaa !24
  %t27 = load i64, ptr %l68, !tbaa !24
  %t28 = mul i64 %t27, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l69, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = load i64, ptr %l68, !tbaa !24
  %t37 = mul i64 %t36, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t33, ptr %t35, i64 %t37, i1 false)
  %t38 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t43 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %s2, ptr %t39, { i64, ptr } %t38, i64 0)
  store i64 %t43, ptr %l72
  br label %bb8
bb8:
  %t44 = load i64, ptr %l72, !tbaa !24
  store i64 %t44, ptr %l9, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/bindgen:gen", ptr %t45, i32 0, i32 16
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s2, ptr %t47, i64 %t48)
  store %"compiler/bindgen:ctype" %t51, ptr %l76
  br label %bb9
bb9:
  %t52 = getelementptr %"compiler/bindgen:ctype", ptr %l76, i32 0, i32 0
  %t53 = load i32, ptr %t52, !range !{i32 0, i32 7}
  %t55 = trunc i64 5 to i32
  %t56 = icmp eq i32 %t53, %t55
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb11:
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/bindgen:gen", ptr %t60, i32 0, i32 16
  store ptr %t62, ptr %l81, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/bindgen:gen", ptr %t63, i32 0, i32 16
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s2, ptr %t65, i64 %t66)
  store %"compiler/bindgen:ctype" %t69, ptr %l85
  br label %bb13
bb13:
  %t70 = getelementptr %"compiler/bindgen:ctype", ptr %l85, i32 0, i32 2
  %t71 = load i64, ptr %t70, !tbaa !24
  %t72 = load ptr, ptr %l81, !tbaa !29
  %t74 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t72, i64 %t71)
  store %"compiler/bindgen:ctype" %t74, ptr %l87
  br label %bb14
bb14:
  %t75 = load %"compiler/bindgen:ctype", ptr %l87
  store %"compiler/bindgen:ctype" %t75, ptr %l10
  %t76 = getelementptr %"compiler/bindgen:ctype", ptr %l10, i32 0, i32 0
  %t77 = load i32, ptr %t76, !range !{i32 0, i32 7}
  %t79 = trunc i64 3 to i32
  %t80 = icmp eq i32 %t77, %t79
  br i1 %t80, label %bb15, label %bb16
bb15:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/bindgen:gen", ptr %t82, i32 0, i32 16
  %t85 = getelementptr %"compiler/bindgen:ctype", ptr %l10, i32 0, i32 2
  %t86 = load i64, ptr %t85, !tbaa !24
  %t89 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s2, ptr %t84, i64 %t86)
  store %"compiler/bindgen:ctype" %t89, ptr %l94
  br label %bb17
bb16:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb18
bb17:
  %t90 = getelementptr %"compiler/bindgen:ctype", ptr %l94, i32 0, i32 0
  %t91 = load i32, ptr %t90, !range !{i32 0, i32 7}
  %t93 = trunc i64 2 to i32
  %t94 = icmp eq i32 %t91, %t93
  store i1 %t94, ptr %l90, !tbaa !21
  br label %bb18
bb18:
  %t96 = load i1, ptr %l90, !tbaa !21
  br i1 %t96, label %bb19, label %bb20
bb19:
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l97, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/bindgen:gen", ptr %t98, i32 0, i32 16
  %t101 = getelementptr %"compiler/bindgen:ctype", ptr %l10, i32 0, i32 2
  %t102 = load i64, ptr %t101, !tbaa !24
  %t105 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t100, i64 %t102)
  store %"compiler/bindgen:ctype" %t105, ptr %l101
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t106 = getelementptr %"compiler/bindgen:ctype", ptr %l101, i32 0, i32 1
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  %t108 = load ptr, ptr %l97, !tbaa !29
  %t110 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %v0, ptr %t108, { i64, ptr } %t107)
  store i64 %t110, ptr %l103
  br label %bb22
bb22:
  %t111 = load i64, ptr %l103, !tbaa !24
  store i1 true, ptr %l12, !tbaa !21
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/bindgen:gen", ptr %t112, i32 0, i32 5
  %t118 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t114, i64 %t111)
  store ptr %t118, ptr %l107
  br label %bb23
bb23:
  %t119 = load ptr, ptr %l107, !tbaa !29
  %t121 = load i1, ptr %l12, !tbaa !21
  %t124 = getelementptr %"compiler/bindgen:record", ptr %t119, i32 0, i32 10
  store i1 %t121, ptr %t124, !tbaa !21
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb25:
  %t125 = load i64, ptr %l6, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l6, !tbaa !24
  br label %bb1
bb26:
  %t129 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %l112
  br label %bb27
bb27:
  %t130 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l112
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, ptr %l14
  store i64 0, ptr %l15, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/bindgen:gen", ptr %t131, i32 0, i32 5
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t133)
  store i64 %t135, ptr %l115
  br label %bb28
bb28:
  %t136 = load i64, ptr %l115, !tbaa !24
  store i64 %t136, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t137 = load i64, ptr %l16, !tbaa !24
  %t138 = load i64, ptr %l15, !tbaa !24
  %t141 = icmp sgt i64 %t137, %t138
  br i1 %t141, label %bb29, label %bb30
bb29:
  %t143 = load i64, ptr %l17, !tbaa !24
  %t145 = icmp sgt i64 %t143, 0
  br i1 %t145, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l119, !tbaa !24
  br label %bb34
bb31:
  %t147 = load i64, ptr %l16, !tbaa !24
  %t148 = load i64, ptr %l15, !tbaa !24
  %t151 = sub i64 %t147, %t148
  %t152 = load i64, ptr %l17, !tbaa !24
  %t155 = add i64 %t151, %t152
  %t157 = sub i64 %t155, 1
  %t158 = load i64, ptr %l17, !tbaa !24
  %t161 = sdiv i64 %t157, %t158
  store i64 %t161, ptr %l122, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l122, !tbaa !24
  br label %bb33
bb33:
  %t163 = load i64, ptr %l122, !tbaa !24
  store i64 %t163, ptr %l119, !tbaa !24
  br label %bb34
bb34:
  %t164 = load i64, ptr %l119, !tbaa !24
  store i64 %t164, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s7
  %t165 = load i64, ptr %l19, !tbaa !24
  %t166 = load i64, ptr %l18, !tbaa !24
  %t169 = icmp slt i64 %t165, %t166
  %t171 = xor i1 %t169, true
  br i1 %t171, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb61
bb37:
  br label %bb38
bb38:
  %t173 = load i64, ptr %l15, !tbaa !24
  %t174 = load i64, ptr %l19, !tbaa !24
  %t175 = load i64, ptr %l17, !tbaa !24
  %t178 = mul i64 %t174, %t175
  %t181 = add i64 %t173, %t178
  store i64 %t181, ptr %l20, !tbaa !24
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/bindgen:gen", ptr %t183, i32 0, i32 5
  %t186 = load i64, ptr %l20, !tbaa !24
  %t189 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t185, i64 %t186)
  store ptr %t189, ptr %l143
  br label %bb39
bb39:
  %t190 = load ptr, ptr %l143, !tbaa !29
  store ptr %t190, ptr %l21, !tbaa !29
  %t191 = load ptr, ptr %l21, !tbaa !29
  %t193 = getelementptr %"compiler/bindgen:record", ptr %t191, i32 0, i32 2
  %t194 = load i1, ptr %t193, !tbaa !21
  %t196 = xor i1 %t194, true
  br i1 %t196, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l147, !tbaa !21
  br label %bb42
bb41:
  %t198 = load ptr, ptr %l21, !tbaa !29
  %t200 = getelementptr %"compiler/bindgen:record", ptr %t198, i32 0, i32 10
  %t201 = load i1, ptr %t200, !tbaa !21
  store i1 %t201, ptr %l147, !tbaa !21
  br label %bb42
bb42:
  %t203 = load i1, ptr %l147, !tbaa !21
  br i1 %t203, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb44:
  br label %bb45
bb45:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load i64, ptr %l20, !tbaa !24
  %t208 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eplain(ptr %v0, ptr %t204, i64 %t205)
  store i1 %t208, ptr %l152
  br label %bb46
bb46:
  %t209 = load i1, ptr %l152, !tbaa !21
  br i1 %t209, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb48:
  br label %bb49
bb49:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/bindgen:gen", ptr %t210, i32 0, i32 5
  %t213 = load i64, ptr %l20, !tbaa !24
  %t216 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t212, i64 %t213)
  store ptr %t216, ptr %l156
  br label %bb50
bb50:
  %t217 = load ptr, ptr %l156, !tbaa !29
  store ptr %t217, ptr %l22, !tbaa !29
  %t218 = load ptr, ptr %l22, !tbaa !29
  %t220 = getelementptr %"compiler/bindgen:record", ptr %t218, i32 0, i32 0
  %t221 = load { i64, ptr }, ptr %t220, !tbaa !27
  %t223 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t221, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d149, i32 0, i32 1) })
  store i1 %t223, ptr %l159
  br label %bb51
bb51:
  %t224 = load i1, ptr %l159, !tbaa !21
  br i1 %t224, label %bb52, label %bb53
bb52:
  %t225 = load ptr, ptr %l22, !tbaa !29
  %t227 = getelementptr %"compiler/bindgen:record", ptr %t225, i32 0, i32 11
  %t228 = load { i64, ptr }, ptr %t227, !tbaa !27
  %t230 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t228, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d150, i32 0, i32 1) })
  store i1 %t230, ptr %l163
  br label %bb54
bb53:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb55
bb54:
  %t231 = load i1, ptr %l163, !tbaa !21
  store i1 %t231, ptr %l160, !tbaa !21
  br label %bb55
bb55:
  %t232 = load i1, ptr %l160, !tbaa !21
  br i1 %t232, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb57:
  br label %bb58
bb58:
  %t233 = load i64, ptr %l20, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l14, i64 %t233)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb60:
  %t236 = load i64, ptr %l19, !tbaa !24
  %t238 = add i64 %t236, 1
  store i64 %t238, ptr %l19, !tbaa !24
  br label %bb35
bb61:
  %t241 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l14)
  store i64 %t241, ptr %l169
  br label %bb62
bb62:
  %t242 = load i64, ptr %l169, !tbaa !24
  %t243 = icmp eq i64 %t242, 0
  br i1 %t243, label %bb63, label %bb64
bb63:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t245 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t245, ptr %l171
  br label %bb66
bb66:
  %t246 = load %"std/prelude/text:StringBuilder", ptr %l171
  store %"std/prelude/text:StringBuilder" %t246, ptr %l23
  %t249 = extractvalue { i64, ptr } %a4, 1
  %t250 = extractvalue { i64, ptr } %a4, 0
  %t251 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t253 = add i64 %t250, %t252
  %t254 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t253)
  call void @olang_textcopy(ptr %t254, ptr %t249, i64 %t250)
  %t255 = getelementptr i8, ptr %t254, i64 %t250
  call void @olang_textcopy(ptr %t255, ptr %t251, i64 %t252)
  %t256 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t254, 1
  %t259 = extractvalue { i64, ptr } %t257, 0
  %t260 = extractvalue { i64, ptr } %t257, 1
  %t261 = mul i64 %t259, 1
  %t262 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t261)
  call void @llvm.memcpy.p0.p0.i64(ptr %t262, ptr %t260, i64 %t261, i1 false)
  %t263 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t262, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l23, { i64, ptr } %t264)
  br label %bb67
bb67:
  store ptr %l14, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb68
bb68:
  store %olang.scope zeroinitializer, ptr %s15
  %t268 = load i64, ptr %l25, !tbaa !24
  store i64 %t268, ptr %l177, !tbaa !24
  %t269 = load ptr, ptr %l24, !tbaa !29
  %t271 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t269)
  store i64 %t271, ptr %l179
  br label %bb69
bb69:
  %t272 = load i64, ptr %l177, !tbaa !24
  %t273 = load i64, ptr %l179, !tbaa !24
  %t274 = icmp slt i64 %t272, %t273
  %t276 = xor i1 %t274, true
  br i1 %t276, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s15)
  br label %bb78
bb71:
  br label %bb72
bb72:
  %t278 = load i64, ptr %l25, !tbaa !24
  store i64 %t278, ptr %l26, !tbaa !24
  %t280 = load ptr, ptr %l24, !tbaa !29
  %t281 = load i64, ptr %l25, !tbaa !24
  %t284 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t280, i64 %t281)
  store i64 %t284, ptr %l185
  br label %bb73
bb73:
  %t285 = load i64, ptr %l185, !tbaa !24
  store i64 %t285, ptr %l27, !tbaa !24
  store ptr %l23, ptr %l186, !tbaa !29
  %t286 = load i64, ptr %l26, !tbaa !24
  store i64 %t286, ptr %l187, !tbaa !24
  %t287 = load i64, ptr %l26, !tbaa !24
  store i64 %t287, ptr %l188, !tbaa !24
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load i64, ptr %l27, !tbaa !24
  %t292 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2espell(ptr %v0, ptr %s15, ptr %t288, i64 %t289)
  store { i64, ptr } %t292, ptr %l191
  br label %bb74
bb74:
  %t293 = load i64, ptr %l26, !tbaa !24
  store i64 %t293, ptr %l192, !tbaa !24
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load i64, ptr %l27, !tbaa !24
  %t298 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2espell(ptr %v0, ptr %s15, ptr %t294, i64 %t295)
  store { i64, ptr } %t298, ptr %l195
  br label %bb75
bb75:
  %t299 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t300 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t301 = load i64, ptr %l187, !tbaa !24
  %t302 = call i64 @__olang_fmt_i64(ptr null, i64 %t301)
  %t303 = add i64 %t300, %t302
  %t304 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t305 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t306 = add i64 %t303, %t305
  %t307 = load i64, ptr %l188, !tbaa !24
  %t308 = call i64 @__olang_fmt_i64(ptr null, i64 %t307)
  %t309 = add i64 %t306, %t308
  %t310 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t311 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t312 = add i64 %t309, %t311
  %t313 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t314 = extractvalue { i64, ptr } %t313, 1
  %t315 = extractvalue { i64, ptr } %t313, 0
  %t316 = add i64 %t312, %t315
  %t317 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t318 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t319 = add i64 %t316, %t318
  %t320 = load i64, ptr %l192, !tbaa !24
  %t321 = call i64 @__olang_fmt_i64(ptr null, i64 %t320)
  %t322 = add i64 %t319, %t321
  %t323 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t324 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t325 = add i64 %t322, %t324
  %t326 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t326, 1
  %t328 = extractvalue { i64, ptr } %t326, 0
  %t329 = add i64 %t325, %t328
  %t330 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t331 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
  %t332 = add i64 %t329, %t331
  %t333 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t332)
  call void @olang_textcopy(ptr %t333, ptr %t299, i64 %t300)
  %t334 = getelementptr i8, ptr %t333, i64 %t300
  %t335 = call i64 @__olang_fmt_i64(ptr %t334, i64 %t301)
  %t336 = getelementptr i8, ptr %t334, i64 %t302
  call void @olang_textcopy(ptr %t336, ptr %t304, i64 %t305)
  %t337 = getelementptr i8, ptr %t336, i64 %t305
  %t338 = call i64 @__olang_fmt_i64(ptr %t337, i64 %t307)
  %t339 = getelementptr i8, ptr %t337, i64 %t308
  call void @olang_textcopy(ptr %t339, ptr %t310, i64 %t311)
  %t340 = getelementptr i8, ptr %t339, i64 %t311
  call void @olang_textcopy(ptr %t340, ptr %t314, i64 %t315)
  %t341 = getelementptr i8, ptr %t340, i64 %t315
  call void @olang_textcopy(ptr %t341, ptr %t317, i64 %t318)
  %t342 = getelementptr i8, ptr %t341, i64 %t318
  %t343 = call i64 @__olang_fmt_i64(ptr %t342, i64 %t320)
  %t344 = getelementptr i8, ptr %t342, i64 %t321
  call void @olang_textcopy(ptr %t344, ptr %t323, i64 %t324)
  %t345 = getelementptr i8, ptr %t344, i64 %t324
  call void @olang_textcopy(ptr %t345, ptr %t327, i64 %t328)
  %t346 = getelementptr i8, ptr %t345, i64 %t328
  call void @olang_textcopy(ptr %t346, ptr %t330, i64 %t331)
  %t347 = insertvalue { i64, ptr } undef, i64 %t332, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t333, 1
  %t350 = extractvalue { i64, ptr } %t348, 0
  %t351 = extractvalue { i64, ptr } %t348, 1
  %t352 = mul i64 %t350, 1
  %t353 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t352)
  call void @llvm.memcpy.p0.p0.i64(ptr %t353, ptr %t351, i64 %t352, i1 false)
  %t354 = insertvalue { i64, ptr } undef, i64 %t350, 0
  %t355 = insertvalue { i64, ptr } %t354, ptr %t353, 1
  %t356 = load ptr, ptr %l186, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %t356, { i64, ptr } %t355)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s15)
  br label %bb77
bb77:
  %t358 = load i64, ptr %l25, !tbaa !24
  %t360 = add i64 %t358, 1
  store i64 %t360, ptr %l25, !tbaa !24
  br label %bb68
bb78:
  %t362 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t362, ptr %l200, !tbaa !27
  %t364 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l23)
  store { i64, ptr } %t364, ptr %l202
  br label %bb79
bb79:
  %t365 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t367 = extractvalue { i64, ptr } %t365, 0
  %t368 = extractvalue { i64, ptr } %t365, 1
  %t369 = mul i64 %t367, 1
  %t370 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t369)
  call void @llvm.memcpy.p0.p0.i64(ptr %t370, ptr %t368, i64 %t369, i1 false)
  %t371 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t370, 1
  %t373 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t375 = call i32 @std_2fos_2eWriteFile(ptr %v3, ptr %s0, { i64, ptr } %t373, { i64, ptr } %t372)
  store i32 %t375, ptr %l205
  %t376 = icmp ne i32 %t375, 0
  br i1 %t376, label %bb81, label %ok.377, !prof !99
ok.377:
  br label %bb80
bb80:
  br label %bb88
bb81:
  %t378 = load i32, ptr %l205, !tbaa !23
  %t379 = ashr i32 %t378, 16
  %t381 = icmp eq i32 %t379, 1
  store i1 %t381, ptr %l207, !tbaa !21
  %t382 = load i32, ptr %l205, !tbaa !23
  %t383 = ashr i32 %t382, 16
  %t385 = icmp eq i32 %t383, 1
  br i1 %t385, label %bb82, label %bb83
bb82:
  call void @__olang_errpay_pop()
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t389 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t387, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d158, i32 0, i32 1) })
  store i32 %t389, ptr %l211
  %t390 = icmp ne i32 %t389, 0
  br i1 %t390, label %bb86, label %ok.391, !prof !99
ok.391:
  br label %bb85
bb85:
  br label %bb87
bb86:
  %t392 = load i32, ptr %l211, !tbaa !23
  %t393 = lshr i32 %t392, 16
  %t394 = and i32 %t392, 65535
  %t395 = icmp eq i32 %t393, 1
  %t396 = select i1 %t395, i32 1, i32 0
  %t397 = icmp eq i32 %t392, 0
  %t398 = shl i32 %t396, 16
  %t399 = or i32 %t398, %t394
  %t400 = select i1 %t397, i32 0, i32 %t399
  call void @__olang_scope_close(ptr %s0)
  store i32 %t400, ptr %rv
  br label %ret
bb87:
  br label %bb88
bb88:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t405 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t410 = call { i32, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edump(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %s0, ptr %t402, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %t405)
  %t411 = extractvalue { i32, ptr } %t410, 1
  %t412 = extractvalue { i32, ptr } %t410, 0
  store i32 %t412, ptr %l219
  %t413 = icmp ne i32 %t412, 0
  br i1 %t413, label %bb90, label %ok.414, !prof !99
ok.414:
  store ptr %t411, ptr %l218
  br label %bb89
bb89:
  %t415 = load ptr, ptr %l218, !tbaa !29
  store ptr %t415, ptr %l213, !tbaa !29
  br label %bb91
bb90:
  %t416 = load i32, ptr %l219, !tbaa !23
  %t417 = lshr i32 %t416, 16
  %t418 = and i32 %t416, 65535
  %t419 = icmp eq i32 %t417, 1
  %t420 = select i1 %t419, i32 1, i32 0
  %t421 = icmp eq i32 %t416, 0
  %t422 = shl i32 %t420, 16
  %t423 = or i32 %t422, %t418
  %t424 = select i1 %t421, i32 0, i32 %t423
  call void @__olang_scope_close(ptr %s0)
  store i32 %t424, ptr %rv
  br label %ret
bb91:
  %t426 = load ptr, ptr %l213, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s19
  %t429 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s0, ptr %s19, ptr %t426)
  store { i64, ptr } %t429, ptr %l222
  br label %bb92
bb92:
  %t430 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t431 = extractvalue { i64, ptr } %t430, 0
  %t432 = extractvalue { i64, ptr } %t430, 1
  %t433 = mul i64 %t431, 8
  %t434 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t433)
  call void @llvm.memcpy.p0.p0.i64(ptr %t434, ptr %t432, i64 %t433, i1 false)
  %t435 = insertvalue { i64, ptr } undef, i64 %t431, 0
  %t436 = insertvalue { i64, ptr } %t435, ptr %t434, 1
  store { i64, ptr } %t436, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  %t438 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t440 = extractvalue { i64, ptr } %t438, 0
  store i64 %t440, ptr %l31, !tbaa !24
  br label %bb93
bb93:
  store %olang.scope zeroinitializer, ptr %s20
  %t442 = load i64, ptr %l30, !tbaa !24
  %t443 = load i64, ptr %l31, !tbaa !24
  %t446 = icmp slt i64 %t442, %t443
  %t448 = xor i1 %t446, true
  br i1 %t448, label %bb94, label %bb95
bb94:
  call void @__olang_scope_close(ptr %s20)
  br label %bb153
bb95:
  br label %bb96
bb96:
  %t450 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t450, ptr %l230, !tbaa !27
  %t451 = load i64, ptr %l30, !tbaa !24
  %t453 = getelementptr { i64, ptr }, ptr %l230, i32 0, i32 1
  %t454 = load ptr, ptr %t453, !tbaa !27
  %t455 = getelementptr ptr, ptr %t454, i64 %t451
  %t456 = load ptr, ptr %t455, !tbaa !39
  store ptr %t456, ptr %l32, !tbaa !29
  %t458 = load ptr, ptr %l32, !tbaa !29
  %t460 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s19, ptr %s20, ptr %s20, ptr %t458, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d159, i32 0, i32 1) })
  store { i64, ptr } %t460, ptr %l234
  br label %bb97
bb97:
  %t461 = load { i64, ptr }, ptr %l234, !tbaa !27
  store { i64, ptr } %t461, ptr %l33, !tbaa !27
  %t462 = load ptr, ptr %l32, !tbaa !29
  %t464 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s19, ptr %s20, ptr %s20, ptr %t462, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d160, i32 0, i32 1) })
  store { i64, ptr } %t464, ptr %l236
  br label %bb98
bb98:
  %t465 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t466 = extractvalue { i64, ptr } %t465, 0
  %t467 = extractvalue { i64, ptr } %t465, 1
  %t468 = mul i64 %t466, 1
  %t469 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t468)
  call void @llvm.memcpy.p0.p0.i64(ptr %t469, ptr %t467, i64 %t468, i1 false)
  %t470 = insertvalue { i64, ptr } undef, i64 %t466, 0
  %t471 = insertvalue { i64, ptr } %t470, ptr %t469, 1
  %t473 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s20, ptr %s20, { i64, ptr } %t471, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d161, i32 0, i32 1) })
  store i1 %t473, ptr %l238
  br label %bb99
bb99:
  %t474 = load i1, ptr %l238, !tbaa !21
  %t475 = xor i1 %t474, true
  br i1 %t475, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l240, !tbaa !21
  br label %bb103
bb101:
  %t477 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t479 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s20, ptr %s20, { i64, ptr } %t477, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d162, i32 0, i32 1) })
  store i1 %t479, ptr %l242
  br label %bb102
bb102:
  %t480 = load i1, ptr %l242, !tbaa !21
  %t481 = xor i1 %t480, true
  store i1 %t481, ptr %l240, !tbaa !21
  br label %bb103
bb103:
  %t483 = load i1, ptr %l240, !tbaa !21
  br i1 %t483, label %bb104, label %bb105
bb104:
  call void @__olang_scope_close(ptr %s20)
  br label %bb152
bb105:
  br label %bb106
bb106:
  %t484 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t486 = extractvalue { i64, ptr } %t484, 0
  store i64 %t486, ptr %l246, !tbaa !24
  %t487 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t488 = extractvalue { i64, ptr } %t487, 0
  store i64 %t488, ptr %l247, !tbaa !24
  %t489 = icmp sge i64 9, 0
  br i1 %t489, label %bb107, label %bb108
bb107:
  %t491 = load i64, ptr %l246, !tbaa !24
  %t492 = icmp sle i64 9, %t491
  br i1 %t492, label %bb109, label %bb110
bb108:
  call void @__olang_check_failed(ptr @olang_loc_f6b0d4dcea5d2bc9_16e8d1d827605cbd)
  unreachable
bb109:
  %t494 = load i64, ptr %l246, !tbaa !24
  %t495 = load i64, ptr %l247, !tbaa !24
  %t496 = icmp sle i64 %t494, %t495
  br i1 %t496, label %bb111, label %bb112
bb110:
  call void @__olang_check_failed(ptr @olang_loc_f6b0d4dcea5d2bc9_16e8d1d827605cbd)
  unreachable
bb111:
  %t498 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t499 = load ptr, ptr %t498, !tbaa !27
  %t500 = load i64, ptr %l246, !tbaa !24
  %t501 = getelementptr i8, ptr %t499, i64 9
  %t502 = sub i64 %t500, 9
  %t503 = insertvalue { i64, ptr } undef, i64 %t502, 0
  %t504 = insertvalue { i64, ptr } %t503, ptr %t501, 1
  store { i64, ptr } %t504, ptr %l251, !tbaa !27
  %t505 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s20, i64 10)
  %t506 = extractvalue { i32, i64 } %t505, 1
  %t507 = extractvalue { i32, i64 } %t505, 0
  store i32 %t507, ptr %l253
  %t508 = icmp ne i32 %t507, 0
  br i1 %t508, label %bb114, label %ok.509, !prof !99
ok.509:
  store i64 %t506, ptr %l252
  br label %bb113
bb112:
  call void @__olang_check_failed(ptr @olang_loc_f6b0d4dcea5d2bc9_16e8d1d827605cbd)
  unreachable
bb113:
  %t510 = load { i64, ptr }, ptr %l251, !tbaa !27
  %t511 = load i64, ptr %l252, !tbaa !24
  %t512 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s20, { i64, ptr } %t510, i64 %t511)
  %t513 = extractvalue { i32, i64 } %t512, 1
  %t514 = extractvalue { i32, i64 } %t512, 0
  store i32 %t514, ptr %l255
  %t515 = icmp ne i32 %t514, 0
  br i1 %t515, label %bb117, label %ok.516, !prof !99
ok.516:
  store i64 %t513, ptr %l254
  br label %bb116
bb114:
  br label %bb115
bb115:
  store i64 -1, ptr %l244, !tbaa !24
  br label %bb118
bb116:
  %t517 = load i64, ptr %l254, !tbaa !24
  store i64 %t517, ptr %l244, !tbaa !24
  br label %bb118
bb117:
  br label %bb115
bb118:
  %t518 = load i64, ptr %l244, !tbaa !24
  store i64 %t518, ptr %l34, !tbaa !24
  %t519 = load i64, ptr %l34, !tbaa !24
  %t521 = icmp slt i64 %t519, 0
  br i1 %t521, label %bb119, label %bb120
bb119:
  store i1 true, ptr %l258, !tbaa !21
  br label %bb122
bb120:
  %t523 = load i64, ptr %l34, !tbaa !24
  store i64 %t523, ptr %l259, !tbaa !24
  %t525 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l14)
  store i64 %t525, ptr %l261
  br label %bb121
bb121:
  %t526 = load i64, ptr %l259, !tbaa !24
  %t527 = load i64, ptr %l261, !tbaa !24
  %t528 = icmp sge i64 %t526, %t527
  store i1 %t528, ptr %l258, !tbaa !21
  br label %bb122
bb122:
  %t530 = load i1, ptr %l258, !tbaa !21
  br i1 %t530, label %bb123, label %bb124
bb123:
  call void @__olang_scope_close(ptr %s20)
  br label %bb152
bb124:
  br label %bb125
bb125:
  %t531 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s20, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t531, ptr %l263
  br label %bb126
bb126:
  %t532 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l263
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t532, ptr %l35
  store %olang.scope zeroinitializer, ptr %s23
  %t533 = load ptr, ptr %l32, !tbaa !29
  %t535 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s19, ptr %s23, ptr %t533)
  store { i64, ptr } %t535, ptr %l265
  br label %bb127
bb127:
  %t536 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t537 = extractvalue { i64, ptr } %t536, 0
  %t538 = extractvalue { i64, ptr } %t536, 1
  %t539 = mul i64 %t537, 8
  %t540 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t539)
  call void @llvm.memcpy.p0.p0.i64(ptr %t540, ptr %t538, i64 %t539, i1 false)
  %t541 = insertvalue { i64, ptr } undef, i64 %t537, 0
  %t542 = insertvalue { i64, ptr } %t541, ptr %t540, 1
  store { i64, ptr } %t542, ptr %l36, !tbaa !27
  store i64 0, ptr %l37, !tbaa !24
  %t544 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t546 = extractvalue { i64, ptr } %t544, 0
  store i64 %t546, ptr %l38, !tbaa !24
  br label %bb128
bb128:
  store %olang.scope zeroinitializer, ptr %s24
  %t548 = load i64, ptr %l37, !tbaa !24
  %t549 = load i64, ptr %l38, !tbaa !24
  %t552 = icmp slt i64 %t548, %t549
  %t554 = xor i1 %t552, true
  br i1 %t554, label %bb129, label %bb130
bb129:
  call void @__olang_scope_close(ptr %s24)
  br label %bb141
bb130:
  br label %bb131
bb131:
  %t556 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t556, ptr %l273, !tbaa !27
  %t557 = load i64, ptr %l37, !tbaa !24
  %t559 = getelementptr { i64, ptr }, ptr %l273, i32 0, i32 1
  %t560 = load ptr, ptr %t559, !tbaa !27
  %t561 = getelementptr ptr, ptr %t560, i64 %t557
  %t562 = load ptr, ptr %t561, !tbaa !39
  %t566 = call { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %s23, ptr %s24, ptr %t562)
  store { i64, ptr } %t566, ptr %l277
  br label %bb132
bb132:
  %t567 = load { i64, ptr }, ptr %l277, !tbaa !27
  store ptr %l35, ptr %l278, !tbaa !29
  store { i64, ptr } %t567, ptr %l280, !tbaa !27
  %t569 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s24, i64 10)
  %t570 = extractvalue { i32, i64 } %t569, 1
  %t571 = extractvalue { i32, i64 } %t569, 0
  store i32 %t571, ptr %l282
  %t572 = icmp ne i32 %t571, 0
  br i1 %t572, label %bb134, label %ok.573, !prof !99
ok.573:
  store i64 %t570, ptr %l281
  br label %bb133
bb133:
  %t574 = load { i64, ptr }, ptr %l280, !tbaa !27
  %t575 = load i64, ptr %l281, !tbaa !24
  %t576 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s24, { i64, ptr } %t574, i64 %t575)
  %t577 = extractvalue { i32, i64 } %t576, 1
  %t578 = extractvalue { i32, i64 } %t576, 0
  store i32 %t578, ptr %l284
  %t579 = icmp ne i32 %t578, 0
  br i1 %t579, label %bb137, label %ok.580, !prof !99
ok.580:
  store i64 %t577, ptr %l283
  br label %bb136
bb134:
  br label %bb135
bb135:
  store i64 -1, ptr %l279, !tbaa !24
  br label %bb138
bb136:
  %t581 = load i64, ptr %l283, !tbaa !24
  store i64 %t581, ptr %l279, !tbaa !24
  br label %bb138
bb137:
  br label %bb135
bb138:
  %t582 = load ptr, ptr %l278, !tbaa !29
  %t583 = load i64, ptr %l279, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s20, ptr %t582, i64 %t583)
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s24)
  br label %bb140
bb140:
  %t584 = load i64, ptr %l37, !tbaa !24
  %t586 = add i64 %t584, 1
  store i64 %t586, ptr %l37, !tbaa !24
  br label %bb128
bb141:
  call void @__olang_scope_close(ptr %s23)
  %t589 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s20, ptr %l35)
  store i64 %t589, ptr %l288
  br label %bb142
bb142:
  %t590 = load i64, ptr %l288, !tbaa !24
  %t591 = icmp eq i64 %t590, 2
  br i1 %t591, label %bb143, label %bb144
bb143:
  %t593 = load i64, ptr %l34, !tbaa !24
  %t596 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l14, i64 %t593)
  store i64 %t596, ptr %l292
  br label %bb145
bb144:
  br label %bb151
bb145:
  %t597 = load i64, ptr %l292, !tbaa !24
  store i64 %t597, ptr %l41, !tbaa !24
  %t599 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s20, ptr %l35, i64 0)
  store i64 %t599, ptr %l294
  br label %bb146
bb146:
  %t600 = load i64, ptr %l294, !tbaa !24
  store i64 %t600, ptr %l42, !tbaa !24
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t603 = getelementptr %"compiler/bindgen:gen", ptr %t601, i32 0, i32 5
  %t604 = load i64, ptr %l41, !tbaa !24
  %t607 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t603, i64 %t604)
  store ptr %t607, ptr %l298
  br label %bb147
bb147:
  %t608 = load ptr, ptr %l298, !tbaa !29
  %t610 = load i64, ptr %l42, !tbaa !24
  %t613 = getelementptr %"compiler/bindgen:record", ptr %t608, i32 0, i32 13
  store i64 %t610, ptr %t613, !tbaa !24
  %t614 = load i64, ptr %l34, !tbaa !24
  %t617 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l14, i64 %t614)
  store i64 %t617, ptr %l303
  br label %bb148
bb148:
  %t618 = load i64, ptr %l303, !tbaa !24
  store i64 %t618, ptr %l44, !tbaa !24
  %t620 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s20, ptr %l35, i64 1)
  store i64 %t620, ptr %l305
  br label %bb149
bb149:
  %t621 = load i64, ptr %l305, !tbaa !24
  store i64 %t621, ptr %l45, !tbaa !24
  %t622 = load ptr, ptr %l0, !tbaa !29
  %t624 = getelementptr %"compiler/bindgen:gen", ptr %t622, i32 0, i32 5
  %t625 = load i64, ptr %l44, !tbaa !24
  %t628 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t624, i64 %t625)
  store ptr %t628, ptr %l309
  br label %bb150
bb150:
  %t629 = load ptr, ptr %l309, !tbaa !29
  %t631 = load i64, ptr %l45, !tbaa !24
  %t634 = getelementptr %"compiler/bindgen:record", ptr %t629, i32 0, i32 14
  store i64 %t631, ptr %t634, !tbaa !24
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s20)
  br label %bb152
bb152:
  %t635 = load i64, ptr %l30, !tbaa !24
  %t637 = add i64 %t635, 1
  store i64 %t637, ptr %l30, !tbaa !24
  br label %bb93
bb153:
  call void @__olang_scope_close(ptr %s19)
  store i64 0, ptr %l47, !tbaa !24
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t641 = getelementptr %"compiler/bindgen:gen", ptr %t639, i32 0, i32 5
  %t643 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t641)
  store i64 %t643, ptr %l316
  br label %bb154
bb154:
  %t644 = load i64, ptr %l316, !tbaa !24
  store i64 %t644, ptr %l48, !tbaa !24
  store i64 1, ptr %l49, !tbaa !24
  %t645 = load i64, ptr %l48, !tbaa !24
  %t646 = load i64, ptr %l47, !tbaa !24
  %t649 = icmp sgt i64 %t645, %t646
  br i1 %t649, label %bb155, label %bb156
bb155:
  %t651 = load i64, ptr %l49, !tbaa !24
  %t653 = icmp sgt i64 %t651, 0
  br i1 %t653, label %bb157, label %bb158
bb156:
  store i64 0, ptr %l320, !tbaa !24
  br label %bb160
bb157:
  %t655 = load i64, ptr %l48, !tbaa !24
  %t656 = load i64, ptr %l47, !tbaa !24
  %t659 = sub i64 %t655, %t656
  %t660 = load i64, ptr %l49, !tbaa !24
  %t663 = add i64 %t659, %t660
  %t665 = sub i64 %t663, 1
  %t666 = load i64, ptr %l49, !tbaa !24
  %t669 = sdiv i64 %t665, %t666
  store i64 %t669, ptr %l323, !tbaa !24
  br label %bb159
bb158:
  store i64 0, ptr %l323, !tbaa !24
  br label %bb159
bb159:
  %t671 = load i64, ptr %l323, !tbaa !24
  store i64 %t671, ptr %l320, !tbaa !24
  br label %bb160
bb160:
  %t672 = load i64, ptr %l320, !tbaa !24
  store i64 %t672, ptr %l50, !tbaa !24
  store i64 0, ptr %l51, !tbaa !24
  br label %bb161
bb161:
  %t673 = load i64, ptr %l51, !tbaa !24
  %t674 = load i64, ptr %l50, !tbaa !24
  %t677 = icmp slt i64 %t673, %t674
  %t679 = xor i1 %t677, true
  br i1 %t679, label %bb162, label %bb163
bb162:
  br label %bb167
bb163:
  br label %bb164
bb164:
  %t681 = load i64, ptr %l47, !tbaa !24
  %t682 = load i64, ptr %l51, !tbaa !24
  %t683 = load i64, ptr %l49, !tbaa !24
  %t686 = mul i64 %t682, %t683
  %t689 = add i64 %t681, %t686
  store i64 -1, ptr %l54, !tbaa !24
  %t693 = load ptr, ptr %l0, !tbaa !29
  %t695 = getelementptr %"compiler/bindgen:gen", ptr %t693, i32 0, i32 5
  %t699 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t695, i64 %t689)
  store ptr %t699, ptr %l345
  br label %bb165
bb165:
  %t700 = load ptr, ptr %l345, !tbaa !29
  %t702 = load i64, ptr %l54, !tbaa !24
  %t705 = getelementptr %"compiler/bindgen:record", ptr %t700, i32 0, i32 9
  store i64 %t702, ptr %t705, !tbaa !24
  br label %bb166
bb166:
  %t706 = load i64, ptr %l51, !tbaa !24
  %t708 = add i64 %t706, 1
  store i64 %t708, ptr %l51, !tbaa !24
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
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
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
  store { i64, ptr } %t32, ptr %l16, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  store i64 %t35, ptr %l17, !tbaa !24
  %t36 = load i64, ptr %l17, !tbaa !24
  %t37 = mul i64 %t36, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l18, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l17, !tbaa !24
  %t46 = mul i64 %t45, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t42, ptr %t44, i64 %t46, i1 false)
  %t47 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t47, ptr %l16, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t48 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t48, ptr %rv
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
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l61 = alloca { i64, ptr }
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
  store { i64, ptr } %t141, ptr %l59, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 0
  store i64 %t144, ptr %l60, !tbaa !24
  %t145 = load i64, ptr %l60, !tbaa !24
  %t146 = mul i64 %t145, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t146)
  %t148 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  store { i64, ptr } %t149, ptr %l61, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = load i64, ptr %l60, !tbaa !24
  %t155 = mul i64 %t154, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t151, ptr %t153, i64 %t155, i1 false)
  %t156 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t156, ptr %l59, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t157 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t157, ptr %rv
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
@olang_2esole_2ecompiler_2fbindgen_3agen_2e25 = weak hidden constant i1 false
@.d65 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d66 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"', which is no number read here" }>, align 8
@.d67 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"its expansion is too deep" }>, align 8
@.d68 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
@.d69 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"##" }>, align 8
@.d70 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"it uses # or ##, which make text rather than an expression" }>, align 8
@.d71 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
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
@.d116 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d117 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d118 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"# " }>, align 8
@.d119 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d120 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5C\5C" }>, align 8
@.d121 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\5C" }>, align 8
@.d122 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
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
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0 = weak hidden constant i1 false
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
