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
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/bindgen:ctp" = type { { i64, ptr }, i64 }
%"compiler/bindgen:cx" = type { { i64, ptr }, i64, i64, { i64, ptr } }
%"compiler/bindgen:cparse" = type { { i64, ptr }, { i64, ptr }, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/bindgen:gen" = type { { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/bindgen:cMacro" = type { { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/bindgen:ctype" = type { i32, { i64, ptr }, i64, i1, i64, i64 }
%"compiler/bindgen:cFunc" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, { i64, ptr } }
%"compiler/bindgen:record" = type { { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, i64, i1, { i64, ptr }, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"std/json:Object" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/bindgen:Translation" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1 }
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
define dso_local i64 @compiler_2fbindgen_2ebodyKind(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l8 = alloca i1
  %l10 = alloca { i64, ptr }
  %l13 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l22 = alloca i64
  %l24 = alloca i64
  %l29 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca { i64, ptr }
  %l36 = alloca i1
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca i1
  %l46 = alloca i1
  %l48 = alloca { i64, ptr }
  %l49 = alloca i1
  %l50 = alloca i1
  %l52 = alloca { i64, ptr }
  %l53 = alloca i1
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i64, ptr %l6, !tbaa !24
  %t5 = icmp sgt i64 %t4, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t7, i64 0)
  store { i64, ptr } %t9, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb5
bb4:
  %t10 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  %t13 = icmp sgt i64 %t11, 0
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t16, i64 0)
  store { i64, ptr } %t19, ptr %l16
  br label %bb8
bb7:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb9
bb8:
  %t20 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t20, ptr %l17, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i8, ptr %t22, i64 0
  %t24 = load i8, ptr %t23, !tbaa !32
  %t26 = icmp eq i8 %t24, 34
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l13, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i64 2, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb13
bb13:
  %t32 = load i64, ptr %l2, !tbaa !24
  store i64 %t32, ptr %l22, !tbaa !24
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l24
  br label %bb14
bb14:
  %t36 = load i64, ptr %l22, !tbaa !24
  %t37 = load i64, ptr %l24, !tbaa !24
  %t38 = icmp slt i64 %t36, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb15, label %bb16
bb15:
  br label %bb43
bb16:
  br label %bb17
bb17:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t43 = load i64, ptr %l2, !tbaa !24
  %t46 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t42, i64 %t43)
  store { i64, ptr } %t46, ptr %l29
  br label %bb18
bb18:
  %t47 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t47, ptr %l3, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t52 = icmp sgt i64 %t50, 0
  br i1 %t52, label %bb19, label %bb20
bb19:
  %t54 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t54, ptr %l34, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i8, ptr %t56, i64 0
  %t58 = load i8, ptr %t57, !tbaa !32
  %t60 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t58)
  store i1 %t60, ptr %l36
  br label %bb21
bb20:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb25
bb21:
  %t61 = load i1, ptr %l36, !tbaa !21
  br i1 %t61, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb24
bb23:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t62, ptr %l38, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i8, ptr %t64, i64 0
  %t66 = load i8, ptr %t65, !tbaa !32
  %t68 = icmp eq i8 %t66, 46
  store i1 %t68, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t70 = load i1, ptr %l37, !tbaa !21
  store i1 %t70, ptr %l33, !tbaa !21
  br label %bb25
bb25:
  %t71 = load i1, ptr %l33, !tbaa !21
  br i1 %t71, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t74 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %s4, { i64, ptr } %t72)
  store { i64, ptr } %t74, ptr %l42
  br label %bb28
bb27:
  br label %bb41
bb28:
  %t75 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t75, ptr %l4, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t78 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s4, ptr %s4, { i64, ptr } %t76, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t78, ptr %l44
  br label %bb29
bb29:
  %t79 = load i1, ptr %l44, !tbaa !21
  %t80 = xor i1 %t79, true
  br i1 %t80, label %bb30, label %bb31
bb30:
  %t82 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l48, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t85 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s4, ptr %s4, { i64, ptr } %t82, { i64, ptr } %t84)
  store i1 %t85, ptr %l49
  br label %bb32
bb31:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb37
bb32:
  %t86 = load i1, ptr %l49, !tbaa !21
  br i1 %t86, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb36
bb34:
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l52, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t90 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s4, ptr %s4, { i64, ptr } %t87, { i64, ptr } %t89)
  store i1 %t90, ptr %l53
  br label %bb35
bb35:
  %t91 = load i1, ptr %l53, !tbaa !21
  store i1 %t91, ptr %l50, !tbaa !21
  br label %bb36
bb36:
  %t92 = load i1, ptr %l50, !tbaa !21
  store i1 %t92, ptr %l46, !tbaa !21
  br label %bb37
bb37:
  %t93 = load i1, ptr %l46, !tbaa !21
  br i1 %t93, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i64 1, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s4)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t95 = load i64, ptr %l2, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l2, !tbaa !24
  br label %bb13
bb43:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fbindgen_2ecLex(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i8
  %l4 = alloca i64
  %l6 = alloca i8
  %l7 = alloca i8
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca { i64, ptr }
  %l24 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l39 = alloca i1
  %l46 = alloca i1
  %l47 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l65 = alloca i64
  %l71 = alloca i1
  %l72 = alloca i1
  %l79 = alloca i1
  %l80 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca i1
  %l85 = alloca { i64, ptr }
  %l88 = alloca i1
  %l89 = alloca i1
  %l90 = alloca { i64, ptr }
  %l101 = alloca i1
  %l102 = alloca { i64, ptr }
  %l106 = alloca i1
  %l107 = alloca { i64, ptr }
  %l111 = alloca i1
  %l112 = alloca { i64, ptr }
  %l113 = alloca i64
  %l114 = alloca i64
  %l115 = alloca i64
  %l121 = alloca i1
  %l122 = alloca { i64, ptr }
  %l131 = alloca i1
  %l132 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l150 = alloca i64
  %l156 = alloca i1
  %l157 = alloca i1
  %l160 = alloca i1
  %l166 = alloca i1
  %l167 = alloca { i64, ptr }
  %l171 = alloca i1
  %l177 = alloca { i64, ptr }
  %l182 = alloca i1
  %l185 = alloca i1
  %l186 = alloca { i64, ptr }
  %l191 = alloca i1
  %l192 = alloca { i64, ptr }
  %l197 = alloca i1
  %l198 = alloca { i64, ptr }
  %l203 = alloca i1
  %l204 = alloca { i64, ptr }
  %l212 = alloca i1
  %l213 = alloca i1
  %l215 = alloca i1
  %l216 = alloca i1
  %l219 = alloca i1
  %l225 = alloca [15 x { i64, ptr }]
  %l243 = alloca i1
  %l244 = alloca { i64, ptr }
  %l245 = alloca i64
  %l249 = alloca i64
  %l250 = alloca i64
  %l256 = alloca i1
  %l263 = alloca ptr
  %l264 = alloca { i64, ptr }
  %l265 = alloca i64
  %l266 = alloca i64
  %l267 = alloca i64
  %s7 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca ptr
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l1, !tbaa !29
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
  br label %bb176
bb4:
  br label %bb5
bb5:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t15, ptr %l19, !tbaa !27
  %t16 = load i64, ptr %l2, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  store i8 %t21, ptr %l3, !tbaa !22
  %t23 = load i8, ptr %l3, !tbaa !22
  %t25 = icmp eq i8 %t23, 32
  br i1 %t25, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb8
bb7:
  %t27 = load i8, ptr %l3, !tbaa !22
  %t29 = icmp eq i8 %t27, 9
  store i1 %t29, ptr %l24, !tbaa !21
  br label %bb8
bb8:
  %t31 = load i1, ptr %l24, !tbaa !21
  br i1 %t31, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb11
bb10:
  %t32 = load i8, ptr %l3, !tbaa !22
  %t34 = icmp eq i8 %t32, 10
  store i1 %t34, ptr %l27, !tbaa !21
  br label %bb11
bb11:
  %t36 = load i1, ptr %l27, !tbaa !21
  br i1 %t36, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb14
bb13:
  %t37 = load i8, ptr %l3, !tbaa !22
  %t39 = icmp eq i8 %t37, 13
  store i1 %t39, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t41 = load i1, ptr %l30, !tbaa !21
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t42 = load i64, ptr %l2, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l2, !tbaa !24
  br label %bb175
bb16:
  br label %bb17
bb17:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l4, !tbaa !24
  %t50 = load i8, ptr %l3, !tbaa !22
  %t52 = icmp eq i8 %t50, 34
  br i1 %t52, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb20
bb19:
  %t54 = load i8, ptr %l3, !tbaa !22
  %t56 = icmp eq i8 %t54, 39
  store i1 %t56, ptr %l39, !tbaa !21
  br label %bb20
bb20:
  %t58 = load i1, ptr %l39, !tbaa !21
  br i1 %t58, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  %t59 = load i8, ptr %l3, !tbaa !22
  %t61 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t59)
  store i1 %t61, ptr %l71
  br label %bb38
bb23:
  %t62 = load i64, ptr %l4, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t68 = icmp slt i64 %t62, %t65
  br i1 %t68, label %bb24, label %bb25
bb24:
  %t70 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t70, ptr %l47, !tbaa !27
  %t71 = load i64, ptr %l4, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i8, ptr %t74, i64 %t71
  %t76 = load i8, ptr %t75, !tbaa !32
  %t77 = load i8, ptr %l3, !tbaa !22
  %t80 = icmp ne i8 %t76, %t77
  store i1 %t80, ptr %l46, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb26
bb26:
  %t82 = load i1, ptr %l46, !tbaa !21
  %t83 = xor i1 %t82, true
  br i1 %t83, label %bb27, label %bb28
bb27:
  br label %bb34
bb28:
  br label %bb29
bb29:
  %t85 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t85, ptr %l53, !tbaa !27
  %t86 = load i64, ptr %l4, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i8, ptr %t89, i64 %t86
  %t91 = load i8, ptr %t90, !tbaa !32
  %t93 = icmp eq i8 %t91, 92
  br i1 %t93, label %bb30, label %bb31
bb30:
  %t95 = load i64, ptr %l4, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l4, !tbaa !24
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t99 = load i64, ptr %l4, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l4, !tbaa !24
  br label %bb33
bb33:
  br label %bb23
bb34:
  %t103 = load i64, ptr %l4, !tbaa !24
  %t104 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t109 = icmp slt i64 %t103, %t106
  br i1 %t109, label %bb35, label %bb36
bb35:
  %t111 = load i64, ptr %l4, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l65, !tbaa !24
  br label %bb37
bb36:
  %t115 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  store i64 %t117, ptr %l65, !tbaa !24
  br label %bb37
bb37:
  %t119 = load i64, ptr %l65, !tbaa !24
  store i64 %t119, ptr %l4, !tbaa !24
  br label %bb167
bb38:
  %t120 = load i1, ptr %l71, !tbaa !21
  br i1 %t120, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb41
bb40:
  %t121 = load i8, ptr %l3, !tbaa !22
  %t123 = icmp eq i8 %t121, 95
  store i1 %t123, ptr %l72, !tbaa !21
  br label %bb41
bb41:
  %t125 = load i1, ptr %l72, !tbaa !21
  br i1 %t125, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s7
  br label %bb44
bb43:
  %t126 = load i8, ptr %l3, !tbaa !22
  %t128 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t126)
  store i1 %t128, ptr %l156
  br label %bb95
bb44:
  %t129 = load i64, ptr %l4, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t135 = icmp slt i64 %t129, %t132
  br i1 %t135, label %bb45, label %bb46
bb45:
  %t137 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t137, ptr %l80, !tbaa !27
  %t138 = load i64, ptr %l4, !tbaa !24
  %t140 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr i8, ptr %t141, i64 %t138
  %t143 = load i8, ptr %t142, !tbaa !32
  %t145 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t143)
  store i1 %t145, ptr %l83
  br label %bb47
bb46:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb55
bb47:
  %t146 = load i1, ptr %l83, !tbaa !21
  br i1 %t146, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb51
bb49:
  %t147 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t147, ptr %l85, !tbaa !27
  %t148 = load i64, ptr %l4, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i8, ptr %t151, i64 %t148
  %t153 = load i8, ptr %t152, !tbaa !32
  %t155 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t153)
  store i1 %t155, ptr %l88
  br label %bb50
bb50:
  %t156 = load i1, ptr %l88, !tbaa !21
  store i1 %t156, ptr %l84, !tbaa !21
  br label %bb51
bb51:
  %t157 = load i1, ptr %l84, !tbaa !21
  br i1 %t157, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb54
bb53:
  %t158 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t158, ptr %l90, !tbaa !27
  %t159 = load i64, ptr %l4, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr i8, ptr %t162, i64 %t159
  %t164 = load i8, ptr %t163, !tbaa !32
  %t166 = icmp eq i8 %t164, 95
  store i1 %t166, ptr %l89, !tbaa !21
  br label %bb54
bb54:
  %t168 = load i1, ptr %l89, !tbaa !21
  store i1 %t168, ptr %l79, !tbaa !21
  br label %bb55
bb55:
  %t169 = load i1, ptr %l79, !tbaa !21
  %t170 = xor i1 %t169, true
  br i1 %t170, label %bb56, label %bb57
bb56:
  br label %bb60
bb57:
  br label %bb58
bb58:
  %t172 = load i64, ptr %l4, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l4, !tbaa !24
  br label %bb59
bb59:
  br label %bb44
bb60:
  %t176 = load i64, ptr %l4, !tbaa !24
  %t177 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t177, 0
  %t182 = icmp slt i64 %t176, %t179
  br i1 %t182, label %bb61, label %bb62
bb61:
  %t184 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t184, ptr %l102, !tbaa !27
  %t185 = load i64, ptr %l4, !tbaa !24
  %t187 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i8, ptr %t188, i64 %t185
  %t190 = load i8, ptr %t189, !tbaa !32
  %t192 = icmp eq i8 %t190, 34
  br i1 %t192, label %bb63, label %bb64
bb62:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb66
bb63:
  store i1 true, ptr %l106, !tbaa !21
  br label %bb65
bb64:
  %t194 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t194, ptr %l107, !tbaa !27
  %t195 = load i64, ptr %l4, !tbaa !24
  %t197 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr i8, ptr %t198, i64 %t195
  %t200 = load i8, ptr %t199, !tbaa !32
  %t202 = icmp eq i8 %t200, 39
  store i1 %t202, ptr %l106, !tbaa !21
  br label %bb65
bb65:
  %t204 = load i1, ptr %l106, !tbaa !21
  store i1 %t204, ptr %l101, !tbaa !21
  br label %bb66
bb66:
  %t205 = load i1, ptr %l101, !tbaa !21
  br i1 %t205, label %bb67, label %bb68
bb67:
  %t206 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t206, ptr %l112, !tbaa !27
  %t207 = load i64, ptr %l2, !tbaa !24
  store i64 %t207, ptr %l113, !tbaa !24
  %t208 = load i64, ptr %l4, !tbaa !24
  store i64 %t208, ptr %l114, !tbaa !24
  %t209 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 0
  store i64 %t210, ptr %l115, !tbaa !24
  %t211 = load i64, ptr %l113, !tbaa !24
  %t212 = icmp sge i64 %t211, 0
  br i1 %t212, label %bb69, label %bb70
bb68:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb76
bb69:
  %t214 = load i64, ptr %l113, !tbaa !24
  %t215 = load i64, ptr %l114, !tbaa !24
  %t216 = icmp sle i64 %t214, %t215
  br i1 %t216, label %bb71, label %bb72
bb70:
  call void @__olang_check_failed(ptr @olang_loc_4691cb288a833ba5_dfaa9dffbec0c2d9)
  unreachable
bb71:
  %t218 = load i64, ptr %l114, !tbaa !24
  %t219 = load i64, ptr %l115, !tbaa !24
  %t220 = icmp sle i64 %t218, %t219
  br i1 %t220, label %bb73, label %bb74
bb72:
  call void @__olang_check_failed(ptr @olang_loc_4691cb288a833ba5_dfaa9dffbec0c2d9)
  unreachable
bb73:
  %t222 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = load i64, ptr %l113, !tbaa !24
  %t225 = load i64, ptr %l114, !tbaa !24
  %t226 = getelementptr i8, ptr %t223, i64 %t224
  %t227 = sub i64 %t225, %t224
  %t228 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t226, 1
  %t233 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s7, ptr %v0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x { i64, ptr }] }>, ptr @.d3, i32 0, i32 1) }, { i64, ptr } %t229)
  store i1 %t233, ptr %l121
  br label %bb75
bb74:
  call void @__olang_check_failed(ptr @olang_loc_4691cb288a833ba5_dfaa9dffbec0c2d9)
  unreachable
bb75:
  %t234 = load i1, ptr %l121, !tbaa !21
  store i1 %t234, ptr %l111, !tbaa !21
  br label %bb76
bb76:
  %t235 = load i1, ptr %l111, !tbaa !21
  br i1 %t235, label %bb77, label %bb78
bb77:
  %t236 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t236, ptr %l122, !tbaa !27
  %t237 = load i64, ptr %l4, !tbaa !24
  %t239 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !27
  %t241 = getelementptr i8, ptr %t240, i64 %t237
  %t242 = load i8, ptr %t241, !tbaa !32
  store i8 %t242, ptr %l6, !tbaa !22
  %t244 = load i64, ptr %l4, !tbaa !24
  %t246 = add i64 %t244, 1
  store i64 %t246, ptr %l4, !tbaa !24
  br label %bb79
bb78:
  br label %bb94
bb79:
  %t248 = load i64, ptr %l4, !tbaa !24
  %t249 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t251 = extractvalue { i64, ptr } %t249, 0
  %t254 = icmp slt i64 %t248, %t251
  br i1 %t254, label %bb80, label %bb81
bb80:
  %t256 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t256, ptr %l132, !tbaa !27
  %t257 = load i64, ptr %l4, !tbaa !24
  %t259 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr i8, ptr %t260, i64 %t257
  %t262 = load i8, ptr %t261, !tbaa !32
  %t263 = load i8, ptr %l6, !tbaa !22
  %t266 = icmp ne i8 %t262, %t263
  store i1 %t266, ptr %l131, !tbaa !21
  br label %bb82
bb81:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb82
bb82:
  %t268 = load i1, ptr %l131, !tbaa !21
  %t269 = xor i1 %t268, true
  br i1 %t269, label %bb83, label %bb84
bb83:
  br label %bb90
bb84:
  br label %bb85
bb85:
  %t271 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t271, ptr %l138, !tbaa !27
  %t272 = load i64, ptr %l4, !tbaa !24
  %t274 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr i8, ptr %t275, i64 %t272
  %t277 = load i8, ptr %t276, !tbaa !32
  %t279 = icmp eq i8 %t277, 92
  br i1 %t279, label %bb86, label %bb87
bb86:
  %t281 = load i64, ptr %l4, !tbaa !24
  %t283 = add i64 %t281, 1
  store i64 %t283, ptr %l4, !tbaa !24
  br label %bb88
bb87:
  br label %bb88
bb88:
  %t285 = load i64, ptr %l4, !tbaa !24
  %t287 = add i64 %t285, 1
  store i64 %t287, ptr %l4, !tbaa !24
  br label %bb89
bb89:
  br label %bb79
bb90:
  %t289 = load i64, ptr %l4, !tbaa !24
  %t290 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t290, 0
  %t295 = icmp slt i64 %t289, %t292
  br i1 %t295, label %bb91, label %bb92
bb91:
  %t297 = load i64, ptr %l4, !tbaa !24
  %t299 = add i64 %t297, 1
  store i64 %t299, ptr %l150, !tbaa !24
  br label %bb93
bb92:
  %t301 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t301, 0
  store i64 %t303, ptr %l150, !tbaa !24
  br label %bb93
bb93:
  %t305 = load i64, ptr %l150, !tbaa !24
  store i64 %t305, ptr %l4, !tbaa !24
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s7)
  br label %bb166
bb95:
  %t306 = load i1, ptr %l156, !tbaa !21
  br i1 %t306, label %bb96, label %bb97
bb96:
  store i1 true, ptr %l157, !tbaa !21
  br label %bb105
bb97:
  %t307 = load i8, ptr %l3, !tbaa !22
  %t309 = icmp eq i8 %t307, 46
  br i1 %t309, label %bb98, label %bb99
bb98:
  %t311 = load i64, ptr %l2, !tbaa !24
  %t313 = add i64 %t311, 1
  %t314 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t314, 0
  %t319 = icmp slt i64 %t313, %t316
  store i1 %t319, ptr %l160, !tbaa !21
  br label %bb100
bb99:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb100
bb100:
  %t321 = load i1, ptr %l160, !tbaa !21
  br i1 %t321, label %bb101, label %bb102
bb101:
  %t322 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t322, ptr %l167, !tbaa !27
  %t323 = load i64, ptr %l2, !tbaa !24
  %t325 = add i64 %t323, 1
  %t327 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = getelementptr i8, ptr %t328, i64 %t325
  %t330 = load i8, ptr %t329, !tbaa !32
  %t332 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t330)
  store i1 %t332, ptr %l171
  br label %bb103
bb102:
  store i1 false, ptr %l166, !tbaa !21
  br label %bb104
bb103:
  %t333 = load i1, ptr %l171, !tbaa !21
  store i1 %t333, ptr %l166, !tbaa !21
  br label %bb104
bb104:
  %t334 = load i1, ptr %l166, !tbaa !21
  store i1 %t334, ptr %l157, !tbaa !21
  br label %bb105
bb105:
  %t335 = load i1, ptr %l157, !tbaa !21
  br i1 %t335, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  store %olang.scope zeroinitializer, ptr %s18
  %t336 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %t336, !tbaa !37
  %t337 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 1
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %t337, !tbaa !37
  %t338 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 2
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %t338, !tbaa !37
  %t339 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %t339, !tbaa !37
  %t340 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %t340, !tbaa !37
  %t341 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 5
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %t341, !tbaa !37
  %t342 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 6
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %t342, !tbaa !37
  %t343 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 7
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %t343, !tbaa !37
  %t344 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 8
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %t344, !tbaa !37
  %t345 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 9
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %t345, !tbaa !37
  %t346 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 10
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %t346, !tbaa !37
  %t347 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 11
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %t347, !tbaa !37
  %t348 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 12
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %t348, !tbaa !37
  %t349 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 13
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %t349, !tbaa !37
  %t350 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 14
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %t350, !tbaa !37
  %t351 = call ptr @__olang_scope_alloc_a(ptr %s18, i64 240, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t351, ptr %l225, i64 240, i1 false)
  store ptr %t351, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t353 = load ptr, ptr %l8
  store i64 15, ptr %l10, !tbaa !24
  br label %bb146
bb108:
  %t356 = load i64, ptr %l4, !tbaa !24
  %t357 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t357, 0
  %t362 = icmp slt i64 %t356, %t359
  %t364 = xor i1 %t362, true
  br i1 %t364, label %bb109, label %bb110
bb109:
  br label %bb145
bb110:
  br label %bb111
bb111:
  %t366 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t366, ptr %l177, !tbaa !27
  %t367 = load i64, ptr %l4, !tbaa !24
  %t369 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !27
  %t371 = getelementptr i8, ptr %t370, i64 %t367
  %t372 = load i8, ptr %t371, !tbaa !32
  store i8 %t372, ptr %l7, !tbaa !22
  %t374 = load i8, ptr %l7, !tbaa !22
  %t376 = icmp eq i8 %t374, 43
  br i1 %t376, label %bb112, label %bb113
bb112:
  store i1 true, ptr %l182, !tbaa !21
  br label %bb114
bb113:
  %t378 = load i8, ptr %l7, !tbaa !22
  %t380 = icmp eq i8 %t378, 45
  store i1 %t380, ptr %l182, !tbaa !21
  br label %bb114
bb114:
  %t382 = load i1, ptr %l182, !tbaa !21
  br i1 %t382, label %bb115, label %bb116
bb115:
  %t383 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t383, ptr %l186, !tbaa !27
  %t384 = load i64, ptr %l4, !tbaa !24
  %t386 = sub i64 %t384, 1
  %t388 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t389 = load ptr, ptr %t388, !tbaa !27
  %t390 = getelementptr i8, ptr %t389, i64 %t386
  %t391 = load i8, ptr %t390, !tbaa !32
  %t393 = icmp eq i8 %t391, 101
  br i1 %t393, label %bb117, label %bb118
bb116:
  store i1 false, ptr %l185, !tbaa !21
  br label %bb126
bb117:
  store i1 true, ptr %l191, !tbaa !21
  br label %bb119
bb118:
  %t395 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t395, ptr %l192, !tbaa !27
  %t396 = load i64, ptr %l4, !tbaa !24
  %t398 = sub i64 %t396, 1
  %t400 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = getelementptr i8, ptr %t401, i64 %t398
  %t403 = load i8, ptr %t402, !tbaa !32
  %t405 = icmp eq i8 %t403, 69
  store i1 %t405, ptr %l191, !tbaa !21
  br label %bb119
bb119:
  %t407 = load i1, ptr %l191, !tbaa !21
  br i1 %t407, label %bb120, label %bb121
bb120:
  store i1 true, ptr %l197, !tbaa !21
  br label %bb122
bb121:
  %t408 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t408, ptr %l198, !tbaa !27
  %t409 = load i64, ptr %l4, !tbaa !24
  %t411 = sub i64 %t409, 1
  %t413 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t414 = load ptr, ptr %t413, !tbaa !27
  %t415 = getelementptr i8, ptr %t414, i64 %t411
  %t416 = load i8, ptr %t415, !tbaa !32
  %t418 = icmp eq i8 %t416, 112
  store i1 %t418, ptr %l197, !tbaa !21
  br label %bb122
bb122:
  %t420 = load i1, ptr %l197, !tbaa !21
  br i1 %t420, label %bb123, label %bb124
bb123:
  store i1 true, ptr %l203, !tbaa !21
  br label %bb125
bb124:
  %t421 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t421, ptr %l204, !tbaa !27
  %t422 = load i64, ptr %l4, !tbaa !24
  %t424 = sub i64 %t422, 1
  %t426 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t427 = load ptr, ptr %t426, !tbaa !27
  %t428 = getelementptr i8, ptr %t427, i64 %t424
  %t429 = load i8, ptr %t428, !tbaa !32
  %t431 = icmp eq i8 %t429, 80
  store i1 %t431, ptr %l203, !tbaa !21
  br label %bb125
bb125:
  %t433 = load i1, ptr %l203, !tbaa !21
  store i1 %t433, ptr %l185, !tbaa !21
  br label %bb126
bb126:
  %t434 = load i1, ptr %l185, !tbaa !21
  br i1 %t434, label %bb127, label %bb128
bb127:
  %t435 = load i64, ptr %l4, !tbaa !24
  %t437 = add i64 %t435, 1
  store i64 %t437, ptr %l4, !tbaa !24
  br label %bb144
bb128:
  br label %bb129
bb129:
  %t439 = load i8, ptr %l7, !tbaa !22
  %t441 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t439)
  store i1 %t441, ptr %l212
  br label %bb130
bb130:
  %t442 = load i1, ptr %l212, !tbaa !21
  br i1 %t442, label %bb131, label %bb132
bb131:
  store i1 true, ptr %l213, !tbaa !21
  br label %bb134
bb132:
  %t443 = load i8, ptr %l7, !tbaa !22
  %t445 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t443)
  store i1 %t445, ptr %l215
  br label %bb133
bb133:
  %t446 = load i1, ptr %l215, !tbaa !21
  store i1 %t446, ptr %l213, !tbaa !21
  br label %bb134
bb134:
  %t447 = load i1, ptr %l213, !tbaa !21
  br i1 %t447, label %bb135, label %bb136
bb135:
  store i1 true, ptr %l216, !tbaa !21
  br label %bb137
bb136:
  %t448 = load i8, ptr %l7, !tbaa !22
  %t450 = icmp eq i8 %t448, 95
  store i1 %t450, ptr %l216, !tbaa !21
  br label %bb137
bb137:
  %t452 = load i1, ptr %l216, !tbaa !21
  br i1 %t452, label %bb138, label %bb139
bb138:
  store i1 true, ptr %l219, !tbaa !21
  br label %bb140
bb139:
  %t453 = load i8, ptr %l7, !tbaa !22
  %t455 = icmp eq i8 %t453, 46
  store i1 %t455, ptr %l219, !tbaa !21
  br label %bb140
bb140:
  %t457 = load i1, ptr %l219, !tbaa !21
  %t458 = xor i1 %t457, true
  br i1 %t458, label %bb141, label %bb142
bb141:
  br label %bb145
bb142:
  br label %bb143
bb143:
  %t460 = load i64, ptr %l4, !tbaa !24
  %t462 = add i64 %t460, 1
  store i64 %t462, ptr %l4, !tbaa !24
  br label %bb144
bb144:
  br label %bb108
bb145:
  br label %bb165
bb146:
  %t464 = load i64, ptr %l9, !tbaa !24
  %t465 = load i64, ptr %l10, !tbaa !24
  %t468 = icmp slt i64 %t464, %t465
  %t470 = xor i1 %t468, true
  br i1 %t470, label %bb147, label %bb148
bb147:
  br label %bb164
bb148:
  br label %bb149
bb149:
  %t472 = load ptr, ptr %l8
  %t473 = load i64, ptr %l9, !tbaa !24
  %t476 = getelementptr [15 x { i64, ptr }], ptr %t472, i64 0, i64 %t473
  %t477 = load { i64, ptr }, ptr %t476, !tbaa !37
  store { i64, ptr } %t477, ptr %l11, !tbaa !27
  %t479 = load i64, ptr %l2, !tbaa !24
  %t480 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t482 = extractvalue { i64, ptr } %t480, 0
  %t485 = add i64 %t479, %t482
  %t486 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t488 = extractvalue { i64, ptr } %t486, 0
  %t491 = icmp sle i64 %t485, %t488
  br i1 %t491, label %bb150, label %bb151
bb150:
  %t493 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t493, ptr %l244, !tbaa !27
  %t494 = load i64, ptr %l2, !tbaa !24
  store i64 %t494, ptr %l245, !tbaa !24
  %t495 = load i64, ptr %l2, !tbaa !24
  %t496 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t498 = extractvalue { i64, ptr } %t496, 0
  %t501 = add i64 %t495, %t498
  store i64 %t501, ptr %l249, !tbaa !24
  %t502 = load { i64, ptr }, ptr %l244, !tbaa !27
  %t503 = extractvalue { i64, ptr } %t502, 0
  store i64 %t503, ptr %l250, !tbaa !24
  %t504 = load i64, ptr %l245, !tbaa !24
  %t505 = icmp sge i64 %t504, 0
  br i1 %t505, label %bb152, label %bb153
bb151:
  store i1 false, ptr %l243, !tbaa !21
  br label %bb159
bb152:
  %t507 = load i64, ptr %l245, !tbaa !24
  %t508 = load i64, ptr %l249, !tbaa !24
  %t509 = icmp sle i64 %t507, %t508
  br i1 %t509, label %bb154, label %bb155
bb153:
  call void @__olang_check_failed(ptr @olang_loc_8de001e7a64c0b48_1a9d06562d43232c)
  unreachable
bb154:
  %t511 = load i64, ptr %l249, !tbaa !24
  %t512 = load i64, ptr %l250, !tbaa !24
  %t513 = icmp sle i64 %t511, %t512
  br i1 %t513, label %bb156, label %bb157
bb155:
  call void @__olang_check_failed(ptr @olang_loc_8de001e7a64c0b48_1a9d06562d43232c)
  unreachable
bb156:
  %t515 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t516 = load ptr, ptr %t515, !tbaa !27
  %t517 = load i64, ptr %l245, !tbaa !24
  %t518 = load i64, ptr %l249, !tbaa !24
  %t519 = getelementptr i8, ptr %t516, i64 %t517
  %t520 = sub i64 %t518, %t517
  %t521 = insertvalue { i64, ptr } undef, i64 %t520, 0
  %t522 = insertvalue { i64, ptr } %t521, ptr %t519, 1
  %t523 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t524 = load ptr, ptr @__olang_prog_scope
  %t527 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t524, { i64, ptr } %t522, { i64, ptr } %t523)
  store i1 %t527, ptr %l256
  br label %bb158
bb157:
  call void @__olang_check_failed(ptr @olang_loc_8de001e7a64c0b48_1a9d06562d43232c)
  unreachable
bb158:
  %t528 = load i1, ptr %l256, !tbaa !21
  store i1 %t528, ptr %l243, !tbaa !21
  br label %bb159
bb159:
  %t529 = load i1, ptr %l243, !tbaa !21
  br i1 %t529, label %bb160, label %bb161
bb160:
  %t530 = load i64, ptr %l2, !tbaa !24
  %t531 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t533 = extractvalue { i64, ptr } %t531, 0
  %t536 = add i64 %t530, %t533
  store i64 %t536, ptr %l4, !tbaa !24
  br label %bb164
bb161:
  br label %bb162
bb162:
  br label %bb163
bb163:
  %t538 = load i64, ptr %l9, !tbaa !24
  %t540 = add i64 %t538, 1
  store i64 %t540, ptr %l9, !tbaa !24
  br label %bb146
bb164:
  call void @__olang_scope_close(ptr %s18)
  br label %bb165
bb165:
  br label %bb166
bb166:
  br label %bb167
bb167:
  %t542 = load ptr, ptr %l1, !tbaa !29
  store ptr %t542, ptr %l263, !tbaa !29
  %t543 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t543, ptr %l264, !tbaa !27
  %t544 = load i64, ptr %l2, !tbaa !24
  store i64 %t544, ptr %l265, !tbaa !24
  %t545 = load i64, ptr %l4, !tbaa !24
  store i64 %t545, ptr %l266, !tbaa !24
  %t546 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t547 = extractvalue { i64, ptr } %t546, 0
  store i64 %t547, ptr %l267, !tbaa !24
  %t548 = load i64, ptr %l265, !tbaa !24
  %t549 = icmp sge i64 %t548, 0
  br i1 %t549, label %bb168, label %bb169
bb168:
  %t551 = load i64, ptr %l265, !tbaa !24
  %t552 = load i64, ptr %l266, !tbaa !24
  %t553 = icmp sle i64 %t551, %t552
  br i1 %t553, label %bb170, label %bb171
bb169:
  call void @__olang_check_failed(ptr @olang_loc_9f24fc1b10bf4163_f387df93e06eee97)
  unreachable
bb170:
  %t555 = load i64, ptr %l266, !tbaa !24
  %t556 = load i64, ptr %l267, !tbaa !24
  %t557 = icmp sle i64 %t555, %t556
  br i1 %t557, label %bb172, label %bb173
bb171:
  call void @__olang_check_failed(ptr @olang_loc_9f24fc1b10bf4163_f387df93e06eee97)
  unreachable
bb172:
  %t559 = getelementptr { i64, ptr }, ptr %l264, i32 0, i32 1
  %t560 = load ptr, ptr %t559, !tbaa !27
  %t561 = load i64, ptr %l265, !tbaa !24
  %t562 = load i64, ptr %l266, !tbaa !24
  %t563 = getelementptr i8, ptr %t560, i64 %t561
  %t564 = sub i64 %t562, %t561
  %t565 = insertvalue { i64, ptr } undef, i64 %t564, 0
  %t566 = insertvalue { i64, ptr } %t565, ptr %t563, 1
  %t567 = load ptr, ptr %l263, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v0, ptr %t567, { i64, ptr } %t566)
  br label %bb174
bb173:
  call void @__olang_check_failed(ptr @olang_loc_9f24fc1b10bf4163_f387df93e06eee97)
  unreachable
bb174:
  %t569 = load i64, ptr %l4, !tbaa !24
  store i64 %t569, ptr %l2, !tbaa !24
  br label %bb175
bb175:
  br label %bb2
bb176:
  %t571 = load ptr, ptr %l1, !tbaa !29
  store ptr %t571, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l12 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:ctp", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t8 = add i64 %t4, %a1
  store i64 %t8, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/bindgen:ctp", ptr %t11, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t19 = icmp slt i64 %t10, %t16
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/bindgen:ctp", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l14, !tbaa !27
  %t25 = load i64, ptr %l2, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %t28, i64 %t25
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !37
  %t32 = extractvalue { i64, ptr } %t30, 1
  %t33 = extractvalue { i64, ptr } %t30, 0
  %t34 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t33)
  call void @olang_textcopy(ptr %t34, ptr %t32, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l12, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t38, ptr %l12, !tbaa !27
  br label %bb3
bb3:
  %t40 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l20, !tbaa !24
  %t42 = load i64, ptr %l20, !tbaa !24
  %t43 = mul i64 %t42, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t43)
  %t45 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  store { i64, ptr } %t46, ptr %l21, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = load i64, ptr %l20, !tbaa !24
  %t52 = mul i64 %t51, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t48, ptr %t50, i64 %t52, i1 false)
  %t53 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t53, ptr %l12, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t54, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBinary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca %"compiler/bindgen:cx"
  %l8 = alloca %"compiler/bindgen:cx"
  %lp9 = alloca ptr
  %lp10 = alloca ptr
  %l11 = alloca %"compiler/bindgen:cx"
  %l12 = alloca %"compiler/bindgen:cx"
  %l15 = alloca %"compiler/bindgen:cx"
  %l16 = alloca i32
  %l19 = alloca { i64, ptr }
  %l21 = alloca i64
  %l24 = alloca i1
  %l28 = alloca ptr
  %l31 = alloca %"compiler/bindgen:cx"
  %l36 = alloca %"compiler/bindgen:cx"
  %l37 = alloca i32
  %l40 = alloca i1
  %l41 = alloca i1
  %l43 = alloca i1
  %l44 = alloca i64
  %l48 = alloca %"compiler/bindgen:cx"
  %l49 = alloca { i64, ptr }
  %l51 = alloca i1
  %l52 = alloca { i64, ptr }
  %l55 = alloca %"compiler/bindgen:cx"
  %l60 = alloca %"compiler/bindgen:cx"
  %l61 = alloca %"compiler/bindgen:cx"
  %l66 = alloca i1
  %l71 = alloca %"compiler/bindgen:cx"
  %l74 = alloca %"compiler/bindgen:cx"
  %l75 = alloca i64
  %l83 = alloca %"compiler/bindgen:cx"
  %l84 = alloca %"compiler/bindgen:cx"
  %l89 = alloca %"compiler/bindgen:cx"
  %l92 = alloca %"compiler/bindgen:cx"
  %l95 = alloca %"compiler/bindgen:cx"
  %l100 = alloca %"compiler/bindgen:cx"
  %l103 = alloca i1
  %l107 = alloca i1
  %l112 = alloca %"compiler/bindgen:cx"
  %l113 = alloca %"compiler/bindgen:cx"
  %l116 = alloca i64
  %l126 = alloca %"compiler/bindgen:cx"
  %l127 = alloca %"compiler/bindgen:cx"
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/bindgen:cx" }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecUnary(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t2)
  %t6 = extractvalue { i32, %"compiler/bindgen:cx" } %t5, 1
  %t7 = extractvalue { i32, %"compiler/bindgen:cx" } %t5, 0
  store i32 %t7, ptr %l16
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store %"compiler/bindgen:cx" %t6, ptr %l15
  br label %bb1
bb1:
  %t10 = load %"compiler/bindgen:cx", ptr %l15
  store %"compiler/bindgen:cx" %t10, ptr %l12
  br label %bb3
bb2:
  %t11 = load i32, ptr %l16, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t11, 0
  %t17 = shl i32 %t15, 16
  %t18 = or i32 %t17, %t13
  %t19 = select i1 %t16, i32 0, i32 %t18
  %t21 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t19, 0
  store { i32, %"compiler/bindgen:cx" } %t21, ptr %rv
  br label %ret
bb3:
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t22, ptr %lp3
  %t23 = load %"compiler/bindgen:cx", ptr %l12
  %t24 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t23, ptr %t24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s1, ptr %t25)
  store { i64, ptr } %t27, ptr %l19
  br label %bb5
bb5:
  %t28 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t28, ptr %l4, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t31 = call i64 @compiler_2fbindgen_2ecPrec(ptr %s1, { i64, ptr } %t29)
  store i64 %t31, ptr %l21
  br label %bb6
bb6:
  %t32 = load i64, ptr %l21, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp eq i64 %t33, 0
  br i1 %t35, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb9
bb8:
  %t37 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %a2
  store i1 %t41, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s1)
  br label %bb80
bb11:
  br label %bb12
bb12:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l28, !tbaa !29
  %t45 = load ptr, ptr %l28, !tbaa !29
  %t46 = getelementptr %"compiler/bindgen:cparse", ptr %t45, i32 0, i32 2
  %t47 = load i64, ptr %t46, !tbaa !24
  %t49 = add i64 %t47, 1
  %t51 = load ptr, ptr %l28, !tbaa !29
  %t52 = getelementptr %"compiler/bindgen:cparse", ptr %t51, i32 0, i32 2
  store i64 %t49, ptr %t52, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = add i64 %t55, 1
  %t61 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBinary(ptr %v0, ptr %v1, ptr %v2, ptr %t53, ptr %t54, i64 %t57)
  %t62 = extractvalue { i32, %"compiler/bindgen:cx" } %t61, 1
  %t63 = extractvalue { i32, %"compiler/bindgen:cx" } %t61, 0
  store i32 %t63, ptr %l37
  %t64 = icmp ne i32 %t63, 0
  br i1 %t64, label %bb14, label %ok.65, !prof !99
ok.65:
  store %"compiler/bindgen:cx" %t62, ptr %l36
  br label %bb13
bb13:
  %t66 = load %"compiler/bindgen:cx", ptr %l36
  store %"compiler/bindgen:cx" %t66, ptr %l31
  br label %bb15
bb14:
  %t67 = load i32, ptr %l37, !tbaa !23
  %t68 = lshr i32 %t67, 16
  %t69 = and i32 %t67, 65535
  %t70 = icmp eq i32 %t68, 1
  %t71 = select i1 %t70, i32 1, i32 0
  %t72 = icmp eq i32 %t67, 0
  %t73 = shl i32 %t71, 16
  %t74 = or i32 %t73, %t69
  %t75 = select i1 %t72, i32 0, i32 %t74
  call void @__olang_scope_close(ptr %s1)
  %t77 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t75, 0
  store { i32, %"compiler/bindgen:cx" } %t77, ptr %rv
  br label %ret
bb15:
  %t78 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t78, ptr %lp6
  %t79 = load %"compiler/bindgen:cx", ptr %l31
  %t80 = load ptr, ptr %lp6
  store %"compiler/bindgen:cx" %t79, ptr %t80
  %t81 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t83 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t81, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t83, ptr %l40
  br label %bb16
bb16:
  %t84 = load i1, ptr %l40, !tbaa !21
  br i1 %t84, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb20
bb18:
  %t85 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t85, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t87, ptr %l43
  br label %bb19
bb19:
  %t88 = load i1, ptr %l43, !tbaa !21
  store i1 %t88, ptr %l41, !tbaa !21
  br label %bb20
bb20:
  %t89 = load i1, ptr %l41, !tbaa !21
  br i1 %t89, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t90 = ptrtoint ptr %v2 to i64
  store i64 %t90, ptr %l44, !tbaa !24
  %t91 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t91, label %bb23, label %bb24
bb22:
  %t93 = load i64, ptr %l5, !tbaa !24
  %t95 = icmp eq i64 %t93, 6
  br i1 %t95, label %bb36, label %bb37
bb23:
  %t97 = call ptr @__olang_region_make(ptr %v2)
  %t98 = ptrtoint ptr %t97 to i64
  store i64 %t98, ptr %l44, !tbaa !24
  br label %bb24
bb24:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %lp3
  %t101 = load %"compiler/bindgen:cx", ptr %t100
  %t104 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v2, ptr %v2, ptr %t99, %"compiler/bindgen:cx" %t101)
  store %"compiler/bindgen:cx" %t104, ptr %l48
  br label %bb25
bb25:
  %t105 = getelementptr %"compiler/bindgen:cx", ptr %l48, i32 0, i32 0
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  store { i64, ptr } %t106, ptr %l49, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t109 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s3, { i64, ptr } %t107, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t109, ptr %l51
  br label %bb26
bb26:
  %t110 = load i1, ptr %l51, !tbaa !21
  br i1 %t110, label %bb27, label %bb28
bb27:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l52, !tbaa !27
  br label %bb29
bb28:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l52, !tbaa !27
  br label %bb29
bb29:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %lp6
  %t113 = load %"compiler/bindgen:cx", ptr %t112
  %t116 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v2, ptr %v2, ptr %t111, %"compiler/bindgen:cx" %t113)
  store %"compiler/bindgen:cx" %t116, ptr %l55
  br label %bb30
bb30:
  %t117 = getelementptr %"compiler/bindgen:cx", ptr %l55, i32 0, i32 0
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t120 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t121 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = extractvalue { i64, ptr } %t121, 0
  %t124 = add i64 %t120, %t123
  %t125 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t128 = add i64 %t124, %t127
  %t130 = extractvalue { i64, ptr } %t118, 1
  %t131 = extractvalue { i64, ptr } %t118, 0
  %t132 = add i64 %t128, %t131
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t134 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t135 = add i64 %t132, %t134
  %t136 = load i64, ptr %l44
  %t137 = inttoptr i64 %t136 to ptr
  %t138 = call ptr @__olang_scope_alloc(ptr %t137, i64 %t135)
  call void @olang_textcopy(ptr %t138, ptr %t119, i64 %t120)
  %t139 = getelementptr i8, ptr %t138, i64 %t120
  call void @olang_textcopy(ptr %t139, ptr %t122, i64 %t123)
  %t140 = getelementptr i8, ptr %t139, i64 %t123
  call void @olang_textcopy(ptr %t140, ptr %t126, i64 %t127)
  %t141 = getelementptr i8, ptr %t140, i64 %t127
  call void @olang_textcopy(ptr %t141, ptr %t130, i64 %t131)
  %t142 = getelementptr i8, ptr %t141, i64 %t131
  call void @olang_textcopy(ptr %t142, ptr %t133, i64 %t134)
  %t143 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t138, 1
  %t146 = load i64, ptr %l44
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = extractvalue { i64, ptr } %t144, 0
  %t149 = extractvalue { i64, ptr } %t144, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %t147, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t154 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t157 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t153, i64 %t154, i64 -1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t157, ptr %l60
  br label %bb31
bb31:
  %t158 = load ptr, ptr %lp3
  %t159 = load %"compiler/bindgen:cx", ptr %t158
  store %"compiler/bindgen:cx" %t159, ptr %l61
  %t160 = load %"compiler/bindgen:cx", ptr %l60
  %t161 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t160, ptr %t161
  %t162 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t162, label %bb32, label %bb33
bb32:
  %t164 = getelementptr %"compiler/bindgen:cx", ptr %l61, i32 0, i32 0
  %t165 = load { i64, ptr }, ptr %t164
  %t166 = extractvalue { i64, ptr } %t165, 1
  call void @__olang_region_release(ptr %t166)
  store { i64, ptr } zeroinitializer, ptr %t164
  br label %bb33
bb33:
  %t167 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e3
  br i1 %t167, label %bb34, label %bb35
bb34:
  %t169 = getelementptr %"compiler/bindgen:cx", ptr %l61, i32 0, i32 3
  %t170 = load { i64, ptr }, ptr %t169
  %t171 = extractvalue { i64, ptr } %t170, 1
  call void @__olang_region_release(ptr %t171)
  store { i64, ptr } zeroinitializer, ptr %t169
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s3)
  br label %bb78
bb36:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb38
bb37:
  %t172 = load i64, ptr %l5, !tbaa !24
  %t174 = icmp eq i64 %t172, 7
  store i1 %t174, ptr %l66, !tbaa !21
  br label %bb38
bb38:
  %t176 = load i1, ptr %l66, !tbaa !21
  br i1 %t176, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s6
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load ptr, ptr %lp3
  %t179 = load %"compiler/bindgen:cx", ptr %t178
  %t182 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v2, ptr %s6, ptr %t177, %"compiler/bindgen:cx" %t179)
  store %"compiler/bindgen:cx" %t182, ptr %l71
  br label %bb41
bb40:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load ptr, ptr %lp3
  %t185 = load %"compiler/bindgen:cx", ptr %t184
  %t188 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v2, ptr %v2, ptr %t183, %"compiler/bindgen:cx" %t185)
  store %"compiler/bindgen:cx" %t188, ptr %l89
  br label %bb50
bb41:
  %t189 = load %"compiler/bindgen:cx", ptr %l71
  store %"compiler/bindgen:cx" %t189, ptr %l7
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load ptr, ptr %lp6
  %t192 = load %"compiler/bindgen:cx", ptr %t191
  %t195 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v2, ptr %s6, ptr %t190, %"compiler/bindgen:cx" %t192)
  store %"compiler/bindgen:cx" %t195, ptr %l74
  br label %bb42
bb42:
  %t196 = load %"compiler/bindgen:cx", ptr %l74
  store %"compiler/bindgen:cx" %t196, ptr %l8
  %t197 = ptrtoint ptr %v2 to i64
  store i64 %t197, ptr %l75, !tbaa !24
  %t198 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t198, label %bb43, label %bb44
bb43:
  %t200 = call ptr @__olang_region_make(ptr %v2)
  %t201 = ptrtoint ptr %t200 to i64
  store i64 %t201, ptr %l75, !tbaa !24
  br label %bb44
bb44:
  %t202 = getelementptr %"compiler/bindgen:cx", ptr %l7, i32 0, i32 0
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  %t204 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t205 = getelementptr %"compiler/bindgen:cx", ptr %l8, i32 0, i32 0
  %t206 = load { i64, ptr }, ptr %t205, !tbaa !27
  %t207 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t208 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t210 = extractvalue { i64, ptr } %t203, 1
  %t211 = extractvalue { i64, ptr } %t203, 0
  %t212 = add i64 %t208, %t211
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t217 = extractvalue { i64, ptr } %t204, 1
  %t218 = extractvalue { i64, ptr } %t204, 0
  %t219 = add i64 %t215, %t218
  %t220 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t222 = add i64 %t219, %t221
  %t224 = extractvalue { i64, ptr } %t206, 1
  %t225 = extractvalue { i64, ptr } %t206, 0
  %t226 = add i64 %t222, %t225
  %t227 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t228 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t229 = add i64 %t226, %t228
  %t230 = load i64, ptr %l75
  %t231 = inttoptr i64 %t230 to ptr
  %t232 = call ptr @__olang_scope_alloc(ptr %t231, i64 %t229)
  call void @olang_textcopy(ptr %t232, ptr %t207, i64 %t208)
  %t233 = getelementptr i8, ptr %t232, i64 %t208
  call void @olang_textcopy(ptr %t233, ptr %t210, i64 %t211)
  %t234 = getelementptr i8, ptr %t233, i64 %t211
  call void @olang_textcopy(ptr %t234, ptr %t213, i64 %t214)
  %t235 = getelementptr i8, ptr %t234, i64 %t214
  call void @olang_textcopy(ptr %t235, ptr %t217, i64 %t218)
  %t236 = getelementptr i8, ptr %t235, i64 %t218
  call void @olang_textcopy(ptr %t236, ptr %t220, i64 %t221)
  %t237 = getelementptr i8, ptr %t236, i64 %t221
  call void @olang_textcopy(ptr %t237, ptr %t224, i64 %t225)
  %t238 = getelementptr i8, ptr %t237, i64 %t225
  call void @olang_textcopy(ptr %t238, ptr %t227, i64 %t228)
  %t239 = insertvalue { i64, ptr } undef, i64 %t229, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t232, 1
  %t242 = load i64, ptr %l75
  %t243 = inttoptr i64 %t242 to ptr
  %t244 = extractvalue { i64, ptr } %t240, 0
  %t245 = extractvalue { i64, ptr } %t240, 1
  %t246 = mul i64 %t244, 1
  %t247 = call ptr @__olang_scope_alloc(ptr %t243, i64 %t246)
  call void @llvm.memcpy.p0.p0.i64(ptr %t247, ptr %t245, i64 %t246, i1 false)
  %t248 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t247, 1
  %t250 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t253 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t249, i64 %t250, i64 -1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t253, ptr %l83
  br label %bb45
bb45:
  %t254 = load ptr, ptr %lp3
  %t255 = load %"compiler/bindgen:cx", ptr %t254
  store %"compiler/bindgen:cx" %t255, ptr %l84
  %t256 = load %"compiler/bindgen:cx", ptr %l83
  %t257 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t256, ptr %t257
  %t258 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t258, label %bb46, label %bb47
bb46:
  %t260 = getelementptr %"compiler/bindgen:cx", ptr %l84, i32 0, i32 0
  %t261 = load { i64, ptr }, ptr %t260
  %t262 = extractvalue { i64, ptr } %t261, 1
  call void @__olang_region_release(ptr %t262)
  store { i64, ptr } zeroinitializer, ptr %t260
  br label %bb47
bb47:
  %t263 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e3
  br i1 %t263, label %bb48, label %bb49
bb48:
  %t265 = getelementptr %"compiler/bindgen:cx", ptr %l84, i32 0, i32 3
  %t266 = load { i64, ptr }, ptr %t265
  %t267 = extractvalue { i64, ptr } %t266, 1
  call void @__olang_region_release(ptr %t267)
  store { i64, ptr } zeroinitializer, ptr %t265
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s6)
  br label %bb77
bb50:
  %t268 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t268, ptr %lp9
  %t269 = load %"compiler/bindgen:cx", ptr %l89
  %t270 = load ptr, ptr %lp9
  store %"compiler/bindgen:cx" %t269, ptr %t270
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load ptr, ptr %lp6
  %t273 = load %"compiler/bindgen:cx", ptr %t272
  %t276 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v2, ptr %v2, ptr %t271, %"compiler/bindgen:cx" %t273)
  store %"compiler/bindgen:cx" %t276, ptr %l92
  br label %bb51
bb51:
  %t277 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t277, ptr %lp10
  %t278 = load %"compiler/bindgen:cx", ptr %l92
  %t279 = load ptr, ptr %lp10
  store %"compiler/bindgen:cx" %t278, ptr %t279
  %t280 = load i64, ptr %l5, !tbaa !24
  %t282 = icmp eq i64 %t280, 8
  br i1 %t282, label %bb52, label %bb53
bb52:
  %t284 = load ptr, ptr %lp9
  %t285 = load %"compiler/bindgen:cx", ptr %t284
  store %"compiler/bindgen:cx" %t285, ptr %l95
  br label %bb55
bb53:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t288 = load ptr, ptr %lp9
  %t289 = load %"compiler/bindgen:cx", ptr %t288
  %t290 = load ptr, ptr %lp10
  %t291 = load %"compiler/bindgen:cx", ptr %t290
  %t295 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecLead(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t287, %"compiler/bindgen:cx" %t289, %"compiler/bindgen:cx" %t291)
  store %"compiler/bindgen:cx" %t295, ptr %l100
  br label %bb54
bb54:
  %t296 = load %"compiler/bindgen:cx", ptr %l100
  store %"compiler/bindgen:cx" %t296, ptr %l95
  br label %bb55
bb55:
  %t297 = load %"compiler/bindgen:cx", ptr %l95
  store %"compiler/bindgen:cx" %t297, ptr %l11
  %t298 = load i64, ptr %l5, !tbaa !24
  %t300 = icmp eq i64 %t298, 8
  br i1 %t300, label %bb56, label %bb57
bb56:
  %t302 = load ptr, ptr %lp9
  %t303 = getelementptr %"compiler/bindgen:cx", ptr %t302, i32 0, i32 1
  %t304 = load i64, ptr %t303, !tbaa !24
  %t305 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t308 = icmp eq i64 %t304, %t305
  store i1 %t308, ptr %l103, !tbaa !21
  br label %bb58
bb57:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb58
bb58:
  %t310 = load i1, ptr %l103, !tbaa !21
  br i1 %t310, label %bb59, label %bb60
bb59:
  %t311 = load ptr, ptr %lp10
  %t312 = getelementptr %"compiler/bindgen:cx", ptr %t311, i32 0, i32 1
  %t313 = load i64, ptr %t312, !tbaa !24
  %t314 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t317 = icmp ne i64 %t313, %t314
  store i1 %t317, ptr %l107, !tbaa !21
  br label %bb61
bb60:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb61
bb61:
  %t319 = load i1, ptr %l107, !tbaa !21
  br i1 %t319, label %bb62, label %bb63
bb62:
  %t320 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t322 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, i64 %t320)
  store %"compiler/bindgen:cx" %t322, ptr %l112
  br label %bb64
bb63:
  br label %bb69
bb64:
  %t323 = load %"compiler/bindgen:cx", ptr %l11
  store %"compiler/bindgen:cx" %t323, ptr %l113
  %t324 = load %"compiler/bindgen:cx", ptr %l112
  store %"compiler/bindgen:cx" %t324, ptr %l11
  %t325 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t325, label %bb65, label %bb66
bb65:
  %t327 = getelementptr %"compiler/bindgen:cx", ptr %l113, i32 0, i32 0
  %t328 = load { i64, ptr }, ptr %t327
  %t329 = extractvalue { i64, ptr } %t328, 1
  call void @__olang_region_release(ptr %t329)
  store { i64, ptr } zeroinitializer, ptr %t327
  br label %bb66
bb66:
  %t330 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e3
  br i1 %t330, label %bb67, label %bb68
bb67:
  %t332 = getelementptr %"compiler/bindgen:cx", ptr %l113, i32 0, i32 3
  %t333 = load { i64, ptr }, ptr %t332
  %t334 = extractvalue { i64, ptr } %t333, 1
  call void @__olang_region_release(ptr %t334)
  store { i64, ptr } zeroinitializer, ptr %t332
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t335 = ptrtoint ptr %v2 to i64
  store i64 %t335, ptr %l116, !tbaa !24
  %t336 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t336, label %bb70, label %bb71
bb70:
  %t338 = call ptr @__olang_region_make(ptr %v2)
  %t339 = ptrtoint ptr %t338 to i64
  store i64 %t339, ptr %l116, !tbaa !24
  br label %bb71
bb71:
  %t340 = load ptr, ptr %lp9
  %t341 = getelementptr %"compiler/bindgen:cx", ptr %t340, i32 0, i32 0
  %t342 = load { i64, ptr }, ptr %t341, !tbaa !27
  %t343 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t344 = load ptr, ptr %lp10
  %t345 = getelementptr %"compiler/bindgen:cx", ptr %t344, i32 0, i32 0
  %t346 = load { i64, ptr }, ptr %t345, !tbaa !27
  %t347 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t348 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t350 = extractvalue { i64, ptr } %t342, 1
  %t351 = extractvalue { i64, ptr } %t342, 0
  %t352 = add i64 %t348, %t351
  %t353 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t354 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t355 = add i64 %t352, %t354
  %t357 = extractvalue { i64, ptr } %t343, 1
  %t358 = extractvalue { i64, ptr } %t343, 0
  %t359 = add i64 %t355, %t358
  %t360 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t361 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t362 = add i64 %t359, %t361
  %t364 = extractvalue { i64, ptr } %t346, 1
  %t365 = extractvalue { i64, ptr } %t346, 0
  %t366 = add i64 %t362, %t365
  %t367 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t368 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t369 = add i64 %t366, %t368
  %t370 = load i64, ptr %l116
  %t371 = inttoptr i64 %t370 to ptr
  %t372 = call ptr @__olang_scope_alloc(ptr %t371, i64 %t369)
  call void @olang_textcopy(ptr %t372, ptr %t347, i64 %t348)
  %t373 = getelementptr i8, ptr %t372, i64 %t348
  call void @olang_textcopy(ptr %t373, ptr %t350, i64 %t351)
  %t374 = getelementptr i8, ptr %t373, i64 %t351
  call void @olang_textcopy(ptr %t374, ptr %t353, i64 %t354)
  %t375 = getelementptr i8, ptr %t374, i64 %t354
  call void @olang_textcopy(ptr %t375, ptr %t357, i64 %t358)
  %t376 = getelementptr i8, ptr %t375, i64 %t358
  call void @olang_textcopy(ptr %t376, ptr %t360, i64 %t361)
  %t377 = getelementptr i8, ptr %t376, i64 %t361
  call void @olang_textcopy(ptr %t377, ptr %t364, i64 %t365)
  %t378 = getelementptr i8, ptr %t377, i64 %t365
  call void @olang_textcopy(ptr %t378, ptr %t367, i64 %t368)
  %t379 = insertvalue { i64, ptr } undef, i64 %t369, 0
  %t380 = insertvalue { i64, ptr } %t379, ptr %t372, 1
  %t382 = load i64, ptr %l116
  %t383 = inttoptr i64 %t382 to ptr
  %t384 = extractvalue { i64, ptr } %t380, 0
  %t385 = extractvalue { i64, ptr } %t380, 1
  %t386 = mul i64 %t384, 1
  %t387 = call ptr @__olang_scope_alloc(ptr %t383, i64 %t386)
  call void @llvm.memcpy.p0.p0.i64(ptr %t387, ptr %t385, i64 %t386, i1 false)
  %t388 = insertvalue { i64, ptr } undef, i64 %t384, 0
  %t389 = insertvalue { i64, ptr } %t388, ptr %t387, 1
  %t390 = getelementptr %"compiler/bindgen:cx", ptr %l11, i32 0, i32 1
  %t391 = load i64, ptr %t390, !tbaa !24
  %t392 = getelementptr %"compiler/bindgen:cx", ptr %l11, i32 0, i32 2
  %t393 = load i64, ptr %t392, !tbaa !24
  %t394 = getelementptr %"compiler/bindgen:cx", ptr %l11, i32 0, i32 3
  %t395 = load { i64, ptr }, ptr %t394, !tbaa !27
  %t400 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t389, i64 %t391, i64 %t393, { i64, ptr } %t395)
  store %"compiler/bindgen:cx" %t400, ptr %l126
  br label %bb72
bb72:
  %t401 = load ptr, ptr %lp3
  %t402 = load %"compiler/bindgen:cx", ptr %t401
  store %"compiler/bindgen:cx" %t402, ptr %l127
  %t403 = load %"compiler/bindgen:cx", ptr %l126
  %t404 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t403, ptr %t404
  %t405 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t405, label %bb73, label %bb74
bb73:
  %t407 = getelementptr %"compiler/bindgen:cx", ptr %l127, i32 0, i32 0
  %t408 = load { i64, ptr }, ptr %t407
  %t409 = extractvalue { i64, ptr } %t408, 1
  call void @__olang_region_release(ptr %t409)
  store { i64, ptr } zeroinitializer, ptr %t407
  br label %bb74
bb74:
  %t410 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e3
  br i1 %t410, label %bb75, label %bb76
bb75:
  %t412 = getelementptr %"compiler/bindgen:cx", ptr %l127, i32 0, i32 3
  %t413 = load { i64, ptr }, ptr %t412
  %t414 = extractvalue { i64, ptr } %t413, 1
  call void @__olang_region_release(ptr %t414)
  store { i64, ptr } zeroinitializer, ptr %t412
  br label %bb76
bb76:
  br label %bb77
bb77:
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s1)
  br label %bb79
bb79:
  br label %bb4
bb80:
  %t415 = load ptr, ptr %lp3
  %t416 = load %"compiler/bindgen:cx", ptr %t415
  %t418 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t416, 1
  store { i32, %"compiler/bindgen:cx" } %t418, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/bindgen:cx" }, ptr %rv
  ret { i32, %"compiler/bindgen:cx" } %rr
}

define dso_local { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/bindgen:cx"
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
  %t22 = load %"compiler/bindgen:cx", ptr %l8
  store %"compiler/bindgen:cx" %t22, ptr %l2
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s0, ptr %t23)
  store { i64, ptr } %t25, ptr %l15
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  %t28 = extractvalue { i64, ptr } %t26, 1
  %t29 = mul i64 %t27, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t29)
  call void @llvm.memcpy.p0.p0.i64(ptr %t30, ptr %t28, i64 %t29, i1 false)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t32, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t34, ptr %l17
  br label %bb5
bb5:
  %t35 = load i1, ptr %l17, !tbaa !21
  %t36 = xor i1 %t35, true
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = load %"compiler/bindgen:cx", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  %t40 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t38, 1
  store { i32, %"compiler/bindgen:cx" } %t40, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l20, !tbaa !29
  %t42 = load ptr, ptr %l20, !tbaa !29
  %t43 = getelementptr %"compiler/bindgen:cparse", ptr %t42, i32 0, i32 2
  %t44 = load i64, ptr %t43, !tbaa !24
  %t46 = add i64 %t44, 1
  %t48 = load ptr, ptr %l20, !tbaa !29
  %t49 = getelementptr %"compiler/bindgen:cparse", ptr %t48, i32 0, i32 2
  store i64 %t46, ptr %t49, !tbaa !24
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t54 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t50, ptr %t51)
  %t55 = extractvalue { i32, %"compiler/bindgen:cx" } %t54, 1
  %t56 = extractvalue { i32, %"compiler/bindgen:cx" } %t54, 0
  store i32 %t56, ptr %l27
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb10, label %ok.58, !prof !99
ok.58:
  store %"compiler/bindgen:cx" %t55, ptr %l26
  br label %bb9
bb9:
  %t59 = load %"compiler/bindgen:cx", ptr %l26
  store %"compiler/bindgen:cx" %t59, ptr %l23
  br label %bb11
bb10:
  %t60 = load i32, ptr %l27, !tbaa !23
  %t61 = lshr i32 %t60, 16
  %t62 = and i32 %t60, 65535
  %t63 = icmp eq i32 %t61, 1
  %t64 = select i1 %t63, i32 1, i32 0
  %t65 = icmp eq i32 %t60, 0
  %t66 = shl i32 %t64, 16
  %t67 = or i32 %t66, %t62
  %t68 = select i1 %t65, i32 0, i32 %t67
  call void @__olang_scope_close(ptr %s0)
  %t70 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t68, 0
  store { i32, %"compiler/bindgen:cx" } %t70, ptr %rv
  br label %ret
bb11:
  %t71 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t71, ptr %lp3
  %t72 = load %"compiler/bindgen:cx", ptr %l23
  %t73 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t72, ptr %t73
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s0, ptr %t74)
  store { i64, ptr } %t76, ptr %l30
  br label %bb12
bb12:
  %t77 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 0
  %t79 = extractvalue { i64, ptr } %t77, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t85 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t83, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t85, ptr %l32
  br label %bb13
bb13:
  %t86 = load i1, ptr %l32, !tbaa !21
  %t87 = xor i1 %t86, true
  br i1 %t87, label %bb14, label %bb15
bb14:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t89, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i32 %t91, ptr %l35
  %t92 = icmp ne i32 %t91, 0
  br i1 %t92, label %bb17, label %ok.93, !prof !99
ok.93:
  br label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb18
bb17:
  %t94 = load i32, ptr %l35, !tbaa !23
  %t95 = lshr i32 %t94, 16
  %t96 = and i32 %t94, 65535
  %t97 = icmp eq i32 %t95, 1
  %t98 = select i1 %t97, i32 1, i32 0
  %t99 = icmp eq i32 %t94, 0
  %t100 = shl i32 %t98, 16
  %t101 = or i32 %t100, %t96
  %t102 = select i1 %t99, i32 0, i32 %t101
  call void @__olang_scope_close(ptr %s0)
  %t104 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t102, 0
  store { i32, %"compiler/bindgen:cx" } %t104, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t105 = load ptr, ptr %l1, !tbaa !29
  store ptr %t105, ptr %l37, !tbaa !29
  %t106 = load ptr, ptr %l37, !tbaa !29
  %t107 = getelementptr %"compiler/bindgen:cparse", ptr %t106, i32 0, i32 2
  %t108 = load i64, ptr %t107, !tbaa !24
  %t110 = add i64 %t108, 1
  %t112 = load ptr, ptr %l37, !tbaa !29
  %t113 = getelementptr %"compiler/bindgen:cparse", ptr %t112, i32 0, i32 2
  store i64 %t110, ptr %t113, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t118 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t114, ptr %t115)
  %t119 = extractvalue { i32, %"compiler/bindgen:cx" } %t118, 1
  %t120 = extractvalue { i32, %"compiler/bindgen:cx" } %t118, 0
  store i32 %t120, ptr %l44
  %t121 = icmp ne i32 %t120, 0
  br i1 %t121, label %bb21, label %ok.122, !prof !99
ok.122:
  store %"compiler/bindgen:cx" %t119, ptr %l43
  br label %bb20
bb20:
  %t123 = load %"compiler/bindgen:cx", ptr %l43
  store %"compiler/bindgen:cx" %t123, ptr %l40
  br label %bb22
bb21:
  %t124 = load i32, ptr %l44, !tbaa !23
  %t125 = lshr i32 %t124, 16
  %t126 = and i32 %t124, 65535
  %t127 = icmp eq i32 %t125, 1
  %t128 = select i1 %t127, i32 1, i32 0
  %t129 = icmp eq i32 %t124, 0
  %t130 = shl i32 %t128, 16
  %t131 = or i32 %t130, %t126
  %t132 = select i1 %t129, i32 0, i32 %t131
  call void @__olang_scope_close(ptr %s0)
  %t134 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t132, 0
  store { i32, %"compiler/bindgen:cx" } %t134, ptr %rv
  br label %ret
bb22:
  %t135 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t135, ptr %lp4
  %t136 = load %"compiler/bindgen:cx", ptr %l40
  %t137 = load ptr, ptr %lp4
  store %"compiler/bindgen:cx" %t136, ptr %t137
  %t138 = load ptr, ptr %lp3
  %t139 = getelementptr %"compiler/bindgen:cx", ptr %t138, i32 0, i32 1
  %t140 = load i64, ptr %t139, !tbaa !24
  %t141 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t144 = icmp eq i64 %t140, %t141
  br i1 %t144, label %bb23, label %bb24
bb23:
  %t146 = load ptr, ptr %lp4
  %t147 = getelementptr %"compiler/bindgen:cx", ptr %t146, i32 0, i32 1
  %t148 = load i64, ptr %t147, !tbaa !24
  %t149 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t152 = icmp eq i64 %t148, %t149
  store i1 %t152, ptr %l49, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb25
bb25:
  %t154 = load i1, ptr %l49, !tbaa !21
  br i1 %t154, label %bb26, label %bb27
bb26:
  %t155 = ptrtoint ptr %v2 to i64
  store i64 %t155, ptr %l53, !tbaa !24
  %t156 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t156, label %bb28, label %bb29
bb27:
  br label %bb32
bb28:
  %t158 = call ptr @__olang_region_make(ptr %v2)
  %t159 = ptrtoint ptr %t158 to i64
  store i64 %t159, ptr %l53, !tbaa !24
  br label %bb29
bb29:
  %t160 = load ptr, ptr %lp3
  %t161 = getelementptr %"compiler/bindgen:cx", ptr %t160, i32 0, i32 0
  %t162 = load { i64, ptr }, ptr %t161, !tbaa !27
  store { i64, ptr } %t162, ptr %l55, !tbaa !27
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load %"compiler/bindgen:cx", ptr %l2
  %t167 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v2, ptr %v2, ptr %t163, %"compiler/bindgen:cx" %t164)
  store %"compiler/bindgen:cx" %t167, ptr %l58
  br label %bb30
bb30:
  %t168 = getelementptr %"compiler/bindgen:cx", ptr %l58, i32 0, i32 0
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  %t170 = load ptr, ptr %lp4
  %t171 = getelementptr %"compiler/bindgen:cx", ptr %t170, i32 0, i32 0
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t175 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 1
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t178 = add i64 %t174, %t177
  %t179 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t181 = add i64 %t178, %t180
  %t183 = extractvalue { i64, ptr } %t169, 1
  %t184 = extractvalue { i64, ptr } %t169, 0
  %t185 = add i64 %t181, %t184
  %t186 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t188 = add i64 %t185, %t187
  %t190 = extractvalue { i64, ptr } %t172, 1
  %t191 = extractvalue { i64, ptr } %t172, 0
  %t192 = add i64 %t188, %t191
  %t193 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t195 = add i64 %t192, %t194
  %t196 = load i64, ptr %l53
  %t197 = inttoptr i64 %t196 to ptr
  %t198 = call ptr @__olang_scope_alloc(ptr %t197, i64 %t195)
  call void @olang_textcopy(ptr %t198, ptr %t173, i64 %t174)
  %t199 = getelementptr i8, ptr %t198, i64 %t174
  call void @olang_textcopy(ptr %t199, ptr %t176, i64 %t177)
  %t200 = getelementptr i8, ptr %t199, i64 %t177
  call void @olang_textcopy(ptr %t200, ptr %t179, i64 %t180)
  %t201 = getelementptr i8, ptr %t200, i64 %t180
  call void @olang_textcopy(ptr %t201, ptr %t183, i64 %t184)
  %t202 = getelementptr i8, ptr %t201, i64 %t184
  call void @olang_textcopy(ptr %t202, ptr %t186, i64 %t187)
  %t203 = getelementptr i8, ptr %t202, i64 %t187
  call void @olang_textcopy(ptr %t203, ptr %t190, i64 %t191)
  %t204 = getelementptr i8, ptr %t203, i64 %t191
  call void @olang_textcopy(ptr %t204, ptr %t193, i64 %t194)
  %t205 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t198, 1
  %t208 = load i64, ptr %l53
  %t209 = inttoptr i64 %t208 to ptr
  %t210 = extractvalue { i64, ptr } %t206, 0
  %t211 = extractvalue { i64, ptr } %t206, 1
  %t212 = mul i64 %t210, 1
  %t213 = call ptr @__olang_scope_alloc(ptr %t209, i64 %t212)
  call void @llvm.memcpy.p0.p0.i64(ptr %t213, ptr %t211, i64 %t212, i1 false)
  %t214 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t213, 1
  %t216 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t219 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t215, i64 %t216, i64 -1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t219, ptr %l64
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t220 = load %"compiler/bindgen:cx", ptr %l64
  %t221 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t220, 1
  store { i32, %"compiler/bindgen:cx" } %t221, ptr %rv
  br label %ret
bb32:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load ptr, ptr %lp3
  %t224 = load %"compiler/bindgen:cx", ptr %t223
  %t227 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v2, ptr %v2, ptr %t222, %"compiler/bindgen:cx" %t224)
  store %"compiler/bindgen:cx" %t227, ptr %l67
  br label %bb33
bb33:
  %t228 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t228, ptr %lp5
  %t229 = load %"compiler/bindgen:cx", ptr %l67
  %t230 = load ptr, ptr %lp5
  store %"compiler/bindgen:cx" %t229, ptr %t230
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load ptr, ptr %lp4
  %t233 = load %"compiler/bindgen:cx", ptr %t232
  %t236 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v2, ptr %v2, ptr %t231, %"compiler/bindgen:cx" %t233)
  store %"compiler/bindgen:cx" %t236, ptr %l70
  br label %bb34
bb34:
  %t237 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t237, ptr %lp6
  %t238 = load %"compiler/bindgen:cx", ptr %l70
  %t239 = load ptr, ptr %lp6
  store %"compiler/bindgen:cx" %t238, ptr %t239
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load ptr, ptr %lp5
  %t242 = load %"compiler/bindgen:cx", ptr %t241
  %t243 = load ptr, ptr %lp6
  %t244 = load %"compiler/bindgen:cx", ptr %t243
  %t248 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecLead(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t240, %"compiler/bindgen:cx" %t242, %"compiler/bindgen:cx" %t244)
  store %"compiler/bindgen:cx" %t248, ptr %l74
  br label %bb35
bb35:
  %t249 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t249, ptr %lp7
  %t250 = load %"compiler/bindgen:cx", ptr %l74
  %t251 = load ptr, ptr %lp7
  store %"compiler/bindgen:cx" %t250, ptr %t251
  %t252 = ptrtoint ptr %v2 to i64
  store i64 %t252, ptr %l75, !tbaa !24
  %t253 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t253, label %bb36, label %bb37
bb36:
  %t255 = call ptr @__olang_region_make(ptr %v2)
  %t256 = ptrtoint ptr %t255 to i64
  store i64 %t256, ptr %l75, !tbaa !24
  br label %bb37
bb37:
  %t257 = load ptr, ptr %lp5
  %t258 = getelementptr %"compiler/bindgen:cx", ptr %t257, i32 0, i32 0
  %t259 = load { i64, ptr }, ptr %t258, !tbaa !27
  store { i64, ptr } %t259, ptr %l77, !tbaa !27
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load %"compiler/bindgen:cx", ptr %l2
  %t264 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v2, ptr %v2, ptr %t260, %"compiler/bindgen:cx" %t261)
  store %"compiler/bindgen:cx" %t264, ptr %l80
  br label %bb38
bb38:
  %t265 = getelementptr %"compiler/bindgen:cx", ptr %l80, i32 0, i32 0
  %t266 = load { i64, ptr }, ptr %t265, !tbaa !27
  %t267 = load ptr, ptr %lp6
  %t268 = getelementptr %"compiler/bindgen:cx", ptr %t267, i32 0, i32 0
  %t269 = load { i64, ptr }, ptr %t268, !tbaa !27
  %t270 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t272 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t272, 1
  %t274 = extractvalue { i64, ptr } %t272, 0
  %t275 = add i64 %t271, %t274
  %t276 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t277 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t278 = add i64 %t275, %t277
  %t280 = extractvalue { i64, ptr } %t266, 1
  %t281 = extractvalue { i64, ptr } %t266, 0
  %t282 = add i64 %t278, %t281
  %t283 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t284 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t285 = add i64 %t282, %t284
  %t287 = extractvalue { i64, ptr } %t269, 1
  %t288 = extractvalue { i64, ptr } %t269, 0
  %t289 = add i64 %t285, %t288
  %t290 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t291 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t292 = add i64 %t289, %t291
  %t293 = load i64, ptr %l75
  %t294 = inttoptr i64 %t293 to ptr
  %t295 = call ptr @__olang_scope_alloc(ptr %t294, i64 %t292)
  call void @olang_textcopy(ptr %t295, ptr %t270, i64 %t271)
  %t296 = getelementptr i8, ptr %t295, i64 %t271
  call void @olang_textcopy(ptr %t296, ptr %t273, i64 %t274)
  %t297 = getelementptr i8, ptr %t296, i64 %t274
  call void @olang_textcopy(ptr %t297, ptr %t276, i64 %t277)
  %t298 = getelementptr i8, ptr %t297, i64 %t277
  call void @olang_textcopy(ptr %t298, ptr %t280, i64 %t281)
  %t299 = getelementptr i8, ptr %t298, i64 %t281
  call void @olang_textcopy(ptr %t299, ptr %t283, i64 %t284)
  %t300 = getelementptr i8, ptr %t299, i64 %t284
  call void @olang_textcopy(ptr %t300, ptr %t287, i64 %t288)
  %t301 = getelementptr i8, ptr %t300, i64 %t288
  call void @olang_textcopy(ptr %t301, ptr %t290, i64 %t291)
  %t302 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t295, 1
  %t305 = load i64, ptr %l75
  %t306 = inttoptr i64 %t305 to ptr
  %t307 = extractvalue { i64, ptr } %t303, 0
  %t308 = extractvalue { i64, ptr } %t303, 1
  %t309 = mul i64 %t307, 1
  %t310 = call ptr @__olang_scope_alloc(ptr %t306, i64 %t309)
  call void @llvm.memcpy.p0.p0.i64(ptr %t310, ptr %t308, i64 %t309, i1 false)
  %t311 = insertvalue { i64, ptr } undef, i64 %t307, 0
  %t312 = insertvalue { i64, ptr } %t311, ptr %t310, 1
  %t313 = load ptr, ptr %lp7
  %t314 = getelementptr %"compiler/bindgen:cx", ptr %t313, i32 0, i32 1
  %t315 = load i64, ptr %t314, !tbaa !24
  %t316 = load ptr, ptr %lp7
  %t317 = getelementptr %"compiler/bindgen:cx", ptr %t316, i32 0, i32 2
  %t318 = load i64, ptr %t317, !tbaa !24
  %t319 = load ptr, ptr %lp7
  %t320 = getelementptr %"compiler/bindgen:cx", ptr %t319, i32 0, i32 3
  %t321 = load { i64, ptr }, ptr %t320, !tbaa !27
  %t326 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t312, i64 %t315, i64 %t318, { i64, ptr } %t321)
  store %"compiler/bindgen:cx" %t326, ptr %l88
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t327 = load %"compiler/bindgen:cx", ptr %l88
  %t328 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t327, 1
  store { i32, %"compiler/bindgen:cx" } %t328, ptr %rv
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
  %t10 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t8, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d48, i32 0, i32 1) })
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l18, !tbaa !27
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l22, !tbaa !27
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l27, !tbaa !27
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
  %t41 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t39, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d52, i32 0, i32 1) })
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
  %t137 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t135, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d53, i32 0, i32 1) })
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
  %t179 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s4, { i64, ptr } %t177, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) })
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l103, !tbaa !27
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s4, ptr %s6, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d56, i32 0, i32 1) })
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
  %t316 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t314, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d57, i32 0, i32 1) })
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
  %t321 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t319, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) })
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
  %t326 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t324, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) })
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
  %t381 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t382 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t384 = extractvalue { i64, ptr } %t380, 1
  %t385 = extractvalue { i64, ptr } %t380, 0
  %t386 = add i64 %t382, %t385
  %t387 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t388 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
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

define dso_local { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecUnary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %lp3 = alloca ptr
  %l4 = alloca %"compiler/bindgen:cx"
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %lp7 = alloca ptr
  %l8 = alloca %"compiler/bindgen:cx"
  %l10 = alloca { i64, ptr }
  %l12 = alloca i1
  %l13 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i1
  %l18 = alloca i1
  %l19 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca %"compiler/bindgen:cx"
  %l26 = alloca %"compiler/bindgen:cx"
  %l27 = alloca i32
  %l29 = alloca %"compiler/bindgen:cx"
  %l31 = alloca i1
  %l33 = alloca i64
  %l42 = alloca %"compiler/bindgen:cx"
  %l44 = alloca i1
  %l45 = alloca ptr
  %l48 = alloca %"compiler/bindgen:cx"
  %l51 = alloca %"compiler/bindgen:cx"
  %l52 = alloca i32
  %l54 = alloca i64
  %l58 = alloca %"compiler/bindgen:cx"
  %l63 = alloca %"compiler/bindgen:cx"
  %l65 = alloca i1
  %l68 = alloca ptr
  %l71 = alloca %"std/prelude/text:StringBuilder"
  %l78 = alloca i1
  %l80 = alloca { i64, ptr }
  %l82 = alloca i1
  %l85 = alloca ptr
  %l87 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l93 = alloca ptr
  %l95 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l99 = alloca i1
  %l101 = alloca i1
  %l103 = alloca { i64, ptr }
  %l105 = alloca i1
  %l106 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca %"compiler/bindgen:cx"
  %l113 = alloca %"compiler/bindgen:cx"
  %l114 = alloca i32
  %l116 = alloca %"compiler/bindgen:cx"
  %l117 = alloca i64
  %l125 = alloca %"compiler/bindgen:cx"
  %l128 = alloca %"compiler/bindgen:cx"
  %l131 = alloca %"compiler/bindgen:cx"
  %l132 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/bindgen:cx" }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s0, ptr %t1)
  store { i64, ptr } %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) })
  store i1 %t7, ptr %l12
  br label %bb2
bb2:
  %t8 = load i1, ptr %l12, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb4:
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t11, ptr %l15
  br label %bb5
bb5:
  %t12 = load i1, ptr %l15, !tbaa !21
  store i1 %t12, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t13 = load i1, ptr %l13, !tbaa !21
  br i1 %t13, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb10
bb8:
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t14, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) })
  store i1 %t16, ptr %l18
  br label %bb9
bb9:
  %t17 = load i1, ptr %l18, !tbaa !21
  store i1 %t17, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t18 = load i1, ptr %l16, !tbaa !21
  br i1 %t18, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l19, !tbaa !29
  %t20 = load ptr, ptr %l19, !tbaa !29
  %t21 = getelementptr %"compiler/bindgen:cparse", ptr %t20, i32 0, i32 2
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = add i64 %t22, 1
  %t26 = load ptr, ptr %l19, !tbaa !29
  %t27 = getelementptr %"compiler/bindgen:cparse", ptr %t26, i32 0, i32 2
  store i64 %t24, ptr %t27, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l22, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t33 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecUnary(ptr %v0, ptr %v1, ptr %v0, ptr %t29, ptr %t30)
  %t34 = extractvalue { i32, %"compiler/bindgen:cx" } %t33, 1
  %t35 = extractvalue { i32, %"compiler/bindgen:cx" } %t33, 0
  store i32 %t35, ptr %l27
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb14, label %ok.37, !prof !99
ok.37:
  store %"compiler/bindgen:cx" %t34, ptr %l26
  br label %bb13
bb12:
  br label %bb24
bb13:
  %t38 = load %"compiler/bindgen:cx", ptr %l26
  store %"compiler/bindgen:cx" %t38, ptr %l23
  br label %bb15
bb14:
  %t39 = load i32, ptr %l27, !tbaa !23
  %t40 = lshr i32 %t39, 16
  %t41 = and i32 %t39, 65535
  %t42 = icmp eq i32 %t40, 1
  %t43 = select i1 %t42, i32 1, i32 0
  %t44 = icmp eq i32 %t39, 0
  %t45 = shl i32 %t43, 16
  %t46 = or i32 %t45, %t41
  %t47 = select i1 %t44, i32 0, i32 %t46
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t49 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t47, 0
  store { i32, %"compiler/bindgen:cx" } %t49, ptr %rv
  br label %ret
bb15:
  %t50 = load ptr, ptr %l22, !tbaa !29
  %t51 = load %"compiler/bindgen:cx", ptr %l23
  %t52 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v0, ptr %v2, ptr %t50, %"compiler/bindgen:cx" %t51)
  store %"compiler/bindgen:cx" %t52, ptr %l29
  br label %bb16
bb16:
  %t53 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t53, ptr %lp3
  %t54 = load %"compiler/bindgen:cx", ptr %l29
  %t55 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t54, ptr %t55
  %t56 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t58 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s1, { i64, ptr } %t56, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t58, ptr %l31
  br label %bb17
bb17:
  %t59 = load i1, ptr %l31, !tbaa !21
  br i1 %t59, label %bb18, label %bb19
bb18:
  %t60 = load ptr, ptr %lp3
  %t61 = load %"compiler/bindgen:cx", ptr %t60
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t63 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t61, 1
  store { i32, %"compiler/bindgen:cx" } %t63, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t64 = ptrtoint ptr %v2 to i64
  store i64 %t64, ptr %l33, !tbaa !24
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t67 = call ptr @__olang_region_make(ptr %v2)
  %t68 = ptrtoint ptr %t67 to i64
  store i64 %t68, ptr %l33, !tbaa !24
  br label %bb22
bb22:
  %t69 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t70 = load ptr, ptr %lp3
  %t71 = getelementptr %"compiler/bindgen:cx", ptr %t70, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t73 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t76 = extractvalue { i64, ptr } %t69, 1
  %t77 = extractvalue { i64, ptr } %t69, 0
  %t78 = add i64 %t74, %t77
  %t80 = extractvalue { i64, ptr } %t72, 1
  %t81 = extractvalue { i64, ptr } %t72, 0
  %t82 = add i64 %t78, %t81
  %t83 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t86 = load i64, ptr %l33
  %t87 = inttoptr i64 %t86 to ptr
  %t88 = call ptr @__olang_scope_alloc(ptr %t87, i64 %t85)
  call void @olang_textcopy(ptr %t88, ptr %t73, i64 %t74)
  %t89 = getelementptr i8, ptr %t88, i64 %t74
  call void @olang_textcopy(ptr %t89, ptr %t76, i64 %t77)
  %t90 = getelementptr i8, ptr %t89, i64 %t77
  call void @olang_textcopy(ptr %t90, ptr %t80, i64 %t81)
  %t91 = getelementptr i8, ptr %t90, i64 %t81
  call void @olang_textcopy(ptr %t91, ptr %t83, i64 %t84)
  %t92 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t88, 1
  %t95 = load i64, ptr %l33
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = extractvalue { i64, ptr } %t93, 0
  %t98 = extractvalue { i64, ptr } %t93, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %t96, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  %t103 = load ptr, ptr %lp3
  %t104 = getelementptr %"compiler/bindgen:cx", ptr %t103, i32 0, i32 1
  %t105 = load i64, ptr %t104, !tbaa !24
  %t106 = load ptr, ptr %lp3
  %t107 = getelementptr %"compiler/bindgen:cx", ptr %t106, i32 0, i32 2
  %t108 = load i64, ptr %t107, !tbaa !24
  %t109 = load ptr, ptr %lp3
  %t110 = getelementptr %"compiler/bindgen:cx", ptr %t109, i32 0, i32 3
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  %t116 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t102, i64 %t105, i64 %t108, { i64, ptr } %t111)
  store %"compiler/bindgen:cx" %t116, ptr %l42
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t117 = load %"compiler/bindgen:cx", ptr %l42
  %t118 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t117, 1
  store { i32, %"compiler/bindgen:cx" } %t118, ptr %rv
  br label %ret
bb24:
  %t119 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t121 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t119, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store i1 %t121, ptr %l44
  br label %bb25
bb25:
  %t122 = load i1, ptr %l44, !tbaa !21
  br i1 %t122, label %bb26, label %bb27
bb26:
  %t123 = load ptr, ptr %l1, !tbaa !29
  store ptr %t123, ptr %l45, !tbaa !29
  %t124 = load ptr, ptr %l45, !tbaa !29
  %t125 = getelementptr %"compiler/bindgen:cparse", ptr %t124, i32 0, i32 2
  %t126 = load i64, ptr %t125, !tbaa !24
  %t128 = add i64 %t126, 1
  %t130 = load ptr, ptr %l45, !tbaa !29
  %t131 = getelementptr %"compiler/bindgen:cparse", ptr %t130, i32 0, i32 2
  store i64 %t128, ptr %t131, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t136 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecUnary(ptr %v0, ptr %v1, ptr %v0, ptr %t132, ptr %t133)
  %t137 = extractvalue { i32, %"compiler/bindgen:cx" } %t136, 1
  %t138 = extractvalue { i32, %"compiler/bindgen:cx" } %t136, 0
  store i32 %t138, ptr %l52
  %t139 = icmp ne i32 %t138, 0
  br i1 %t139, label %bb29, label %ok.140, !prof !99
ok.140:
  store %"compiler/bindgen:cx" %t137, ptr %l51
  br label %bb28
bb27:
  br label %bb35
bb28:
  %t141 = load %"compiler/bindgen:cx", ptr %l51
  store %"compiler/bindgen:cx" %t141, ptr %l48
  br label %bb30
bb29:
  %t142 = load i32, ptr %l52, !tbaa !23
  %t143 = lshr i32 %t142, 16
  %t144 = and i32 %t142, 65535
  %t145 = icmp eq i32 %t143, 1
  %t146 = select i1 %t145, i32 1, i32 0
  %t147 = icmp eq i32 %t142, 0
  %t148 = shl i32 %t146, 16
  %t149 = or i32 %t148, %t144
  %t150 = select i1 %t147, i32 0, i32 %t149
  call void @__olang_scope_close(ptr %s0)
  %t152 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t150, 0
  store { i32, %"compiler/bindgen:cx" } %t152, ptr %rv
  br label %ret
bb30:
  %t153 = load %"compiler/bindgen:cx", ptr %l48
  store %"compiler/bindgen:cx" %t153, ptr %l4
  %t154 = ptrtoint ptr %v2 to i64
  store i64 %t154, ptr %l54, !tbaa !24
  %t155 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t155, label %bb31, label %bb32
bb31:
  %t157 = call ptr @__olang_region_make(ptr %v2)
  %t158 = ptrtoint ptr %t157 to i64
  store i64 %t158, ptr %l54, !tbaa !24
  br label %bb32
bb32:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load %"compiler/bindgen:cx", ptr %l4
  %t163 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v0, ptr %v0, ptr %t159, %"compiler/bindgen:cx" %t160)
  store %"compiler/bindgen:cx" %t163, ptr %l58
  br label %bb33
bb33:
  %t164 = getelementptr %"compiler/bindgen:cx", ptr %l58, i32 0, i32 0
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  %t166 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t167 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t169 = extractvalue { i64, ptr } %t165, 1
  %t170 = extractvalue { i64, ptr } %t165, 0
  %t171 = add i64 %t167, %t170
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t174 = add i64 %t171, %t173
  %t175 = load i64, ptr %l54
  %t176 = inttoptr i64 %t175 to ptr
  %t177 = call ptr @__olang_scope_alloc(ptr %t176, i64 %t174)
  call void @olang_textcopy(ptr %t177, ptr %t166, i64 %t167)
  %t178 = getelementptr i8, ptr %t177, i64 %t167
  call void @olang_textcopy(ptr %t178, ptr %t169, i64 %t170)
  %t179 = getelementptr i8, ptr %t178, i64 %t170
  call void @olang_textcopy(ptr %t179, ptr %t172, i64 %t173)
  %t180 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t177, 1
  %t183 = load i64, ptr %l54
  %t184 = inttoptr i64 %t183 to ptr
  %t185 = extractvalue { i64, ptr } %t181, 0
  %t186 = extractvalue { i64, ptr } %t181, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %t184, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  %t191 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t194 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t190, i64 %t191, i64 -1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d71, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t194, ptr %l63
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  %t195 = load %"compiler/bindgen:cx", ptr %l63
  %t196 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t195, 1
  store { i32, %"compiler/bindgen:cx" } %t196, ptr %rv
  br label %ret
bb35:
  %t197 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t199 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t197, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) })
  store i1 %t199, ptr %l65
  br label %bb36
bb36:
  %t200 = load i1, ptr %l65, !tbaa !21
  br i1 %t200, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s6
  %t201 = load ptr, ptr %l1, !tbaa !29
  %t203 = getelementptr %"compiler/bindgen:cparse", ptr %t201, i32 0, i32 2
  %t204 = load i64, ptr %t203, !tbaa !24
  store i64 %t204, ptr %l5, !tbaa !24
  %t206 = load ptr, ptr %l1, !tbaa !29
  store ptr %t206, ptr %l68, !tbaa !29
  %t207 = load ptr, ptr %l68, !tbaa !29
  %t208 = getelementptr %"compiler/bindgen:cparse", ptr %t207, i32 0, i32 2
  %t209 = load i64, ptr %t208, !tbaa !24
  %t211 = add i64 %t209, 1
  %t213 = load ptr, ptr %l68, !tbaa !29
  %t214 = getelementptr %"compiler/bindgen:cparse", ptr %t213, i32 0, i32 2
  store i64 %t211, ptr %t214, !tbaa !24
  %t215 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s6)
  store %"std/prelude/text:StringBuilder" %t215, ptr %l71
  br label %bb39
bb38:
  br label %bb72
bb39:
  %t216 = load %"std/prelude/text:StringBuilder", ptr %l71
  store %"std/prelude/text:StringBuilder" %t216, ptr %l6
  br label %bb40
bb40:
  store %olang.scope zeroinitializer, ptr %s7
  %t217 = load ptr, ptr %l1, !tbaa !29
  %t219 = getelementptr %"compiler/bindgen:cparse", ptr %t217, i32 0, i32 2
  %t220 = load i64, ptr %t219, !tbaa !24
  %t221 = load ptr, ptr %l1, !tbaa !29
  %t223 = getelementptr %"compiler/bindgen:cparse", ptr %t221, i32 0, i32 0
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t224, 0
  %t229 = icmp slt i64 %t220, %t226
  br i1 %t229, label %bb41, label %bb42
bb41:
  %t231 = load ptr, ptr %l1, !tbaa !29
  %t233 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s7, ptr %t231)
  store { i64, ptr } %t233, ptr %l80
  br label %bb43
bb42:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb45
bb43:
  %t234 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t234, 0
  %t236 = extractvalue { i64, ptr } %t234, 1
  %t237 = mul i64 %t235, 1
  %t238 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t237)
  call void @llvm.memcpy.p0.p0.i64(ptr %t238, ptr %t236, i64 %t237, i1 false)
  %t239 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  %t242 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s7, { i64, ptr } %t240, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) })
  store i1 %t242, ptr %l82
  br label %bb44
bb44:
  %t243 = load i1, ptr %l82, !tbaa !21
  %t244 = xor i1 %t243, true
  store i1 %t244, ptr %l78, !tbaa !21
  br label %bb45
bb45:
  %t246 = load i1, ptr %l78, !tbaa !21
  %t247 = xor i1 %t246, true
  br i1 %t247, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s7)
  br label %bb53
bb47:
  br label %bb48
bb48:
  store ptr %l6, ptr %l85, !tbaa !29
  %t249 = load ptr, ptr %l1, !tbaa !29
  %t251 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s7, ptr %t249)
  store { i64, ptr } %t251, ptr %l87
  br label %bb49
bb49:
  %t252 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t252, 0
  %t254 = extractvalue { i64, ptr } %t252, 1
  %t255 = mul i64 %t253, 1
  %t256 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t255)
  call void @llvm.memcpy.p0.p0.i64(ptr %t256, ptr %t254, i64 %t255, i1 false)
  %t257 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t256, 1
  %t259 = load ptr, ptr %l85, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s6, ptr %s7, ptr %t259, { i64, ptr } %t258)
  br label %bb50
bb50:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s6, ptr %s7, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) })
  br label %bb51
bb51:
  %t262 = load ptr, ptr %l1, !tbaa !29
  store ptr %t262, ptr %l90, !tbaa !29
  %t263 = load ptr, ptr %l90, !tbaa !29
  %t264 = getelementptr %"compiler/bindgen:cparse", ptr %t263, i32 0, i32 2
  %t265 = load i64, ptr %t264, !tbaa !24
  %t267 = add i64 %t265, 1
  %t269 = load ptr, ptr %l90, !tbaa !29
  %t270 = getelementptr %"compiler/bindgen:cparse", ptr %t269, i32 0, i32 2
  store i64 %t267, ptr %t270, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  br label %bb52
bb52:
  br label %bb40
bb53:
  %t271 = load ptr, ptr %l0, !tbaa !29
  store ptr %t271, ptr %l93, !tbaa !29
  %t273 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s6, ptr %s6, ptr %l6)
  store { i64, ptr } %t273, ptr %l95
  br label %bb54
bb54:
  %t274 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t275 = extractvalue { i64, ptr } %t274, 0
  %t276 = extractvalue { i64, ptr } %t274, 1
  %t277 = mul i64 %t275, 1
  %t278 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t277)
  call void @llvm.memcpy.p0.p0.i64(ptr %t278, ptr %t276, i64 %t277, i1 false)
  %t279 = insertvalue { i64, ptr } undef, i64 %t275, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t278, 1
  %t281 = load ptr, ptr %l93, !tbaa !29
  %t283 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecastType(ptr %v0, ptr %s6, ptr %v2, ptr %t281, { i64, ptr } %t280)
  store { i64, ptr } %t283, ptr %l97
  br label %bb55
bb55:
  %t284 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t284, ptr %lp7
  %t285 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t286 = load ptr, ptr %lp7
  store { i64, ptr } %t285, ptr %t286, !tbaa !27
  %t287 = load ptr, ptr %lp7
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !27
  %t290 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s6, { i64, ptr } %t288, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d75, i32 0, i32 1) })
  store i1 %t290, ptr %l99
  br label %bb56
bb56:
  %t291 = load i1, ptr %l99, !tbaa !21
  %t292 = xor i1 %t291, true
  br i1 %t292, label %bb57, label %bb58
bb57:
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t296 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s6, ptr %t294)
  store { i64, ptr } %t296, ptr %l103
  br label %bb59
bb58:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb61
bb59:
  %t297 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t297, 0
  %t299 = extractvalue { i64, ptr } %t297, 1
  %t300 = mul i64 %t298, 1
  %t301 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t300)
  call void @llvm.memcpy.p0.p0.i64(ptr %t301, ptr %t299, i64 %t300, i1 false)
  %t302 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t301, 1
  %t305 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s6, { i64, ptr } %t303, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store i1 %t305, ptr %l105
  br label %bb60
bb60:
  %t306 = load i1, ptr %l105, !tbaa !21
  store i1 %t306, ptr %l101, !tbaa !21
  br label %bb61
bb61:
  %t307 = load i1, ptr %l101, !tbaa !21
  br i1 %t307, label %bb62, label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s8
  %t308 = load ptr, ptr %l1, !tbaa !29
  store ptr %t308, ptr %l106, !tbaa !29
  %t309 = load ptr, ptr %l106, !tbaa !29
  %t310 = getelementptr %"compiler/bindgen:cparse", ptr %t309, i32 0, i32 2
  %t311 = load i64, ptr %t310, !tbaa !24
  %t313 = add i64 %t311, 1
  %t315 = load ptr, ptr %l106, !tbaa !29
  %t316 = getelementptr %"compiler/bindgen:cparse", ptr %t315, i32 0, i32 2
  store i64 %t313, ptr %t316, !tbaa !24
  %t317 = load ptr, ptr %l0, !tbaa !29
  store ptr %t317, ptr %l109, !tbaa !29
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load ptr, ptr %l1, !tbaa !29
  %t322 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecUnary(ptr %v0, ptr %v1, ptr %v0, ptr %t318, ptr %t319)
  %t323 = extractvalue { i32, %"compiler/bindgen:cx" } %t322, 1
  %t324 = extractvalue { i32, %"compiler/bindgen:cx" } %t322, 0
  store i32 %t324, ptr %l114
  %t325 = icmp ne i32 %t324, 0
  br i1 %t325, label %bb65, label %ok.326, !prof !99
ok.326:
  store %"compiler/bindgen:cx" %t323, ptr %l113
  br label %bb64
bb63:
  br label %bb71
bb64:
  %t327 = load %"compiler/bindgen:cx", ptr %l113
  store %"compiler/bindgen:cx" %t327, ptr %l110
  br label %bb66
bb65:
  %t328 = load i32, ptr %l114, !tbaa !23
  %t329 = lshr i32 %t328, 16
  %t330 = and i32 %t328, 65535
  %t331 = icmp eq i32 %t329, 1
  %t332 = select i1 %t331, i32 1, i32 0
  %t333 = icmp eq i32 %t328, 0
  %t334 = shl i32 %t332, 16
  %t335 = or i32 %t334, %t330
  %t336 = select i1 %t333, i32 0, i32 %t335
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t338 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t336, 0
  store { i32, %"compiler/bindgen:cx" } %t338, ptr %rv
  br label %ret
bb66:
  %t339 = load ptr, ptr %l109, !tbaa !29
  %t340 = load %"compiler/bindgen:cx", ptr %l110
  %t341 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v0, ptr %s8, ptr %t339, %"compiler/bindgen:cx" %t340)
  store %"compiler/bindgen:cx" %t341, ptr %l116
  br label %bb67
bb67:
  %t342 = load %"compiler/bindgen:cx", ptr %l116
  store %"compiler/bindgen:cx" %t342, ptr %l8
  %t343 = ptrtoint ptr %v2 to i64
  store i64 %t343, ptr %l117, !tbaa !24
  %t344 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t344, label %bb68, label %bb69
bb68:
  %t346 = call ptr @__olang_region_make(ptr %v2)
  %t347 = ptrtoint ptr %t346 to i64
  store i64 %t347, ptr %l117, !tbaa !24
  br label %bb69
bb69:
  %t348 = load ptr, ptr %lp7
  %t349 = load { i64, ptr }, ptr %t348, !tbaa !27
  %t350 = getelementptr %"compiler/bindgen:cx", ptr %l8, i32 0, i32 0
  %t351 = load { i64, ptr }, ptr %t350, !tbaa !27
  %t353 = extractvalue { i64, ptr } %t349, 1
  %t354 = extractvalue { i64, ptr } %t349, 0
  %t355 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t356 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t357 = add i64 %t354, %t356
  %t359 = extractvalue { i64, ptr } %t351, 1
  %t360 = extractvalue { i64, ptr } %t351, 0
  %t361 = add i64 %t357, %t360
  %t362 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t363 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t364 = add i64 %t361, %t363
  %t365 = load i64, ptr %l117
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = call ptr @__olang_scope_alloc(ptr %t366, i64 %t364)
  call void @olang_textcopy(ptr %t367, ptr %t353, i64 %t354)
  %t368 = getelementptr i8, ptr %t367, i64 %t354
  call void @olang_textcopy(ptr %t368, ptr %t355, i64 %t356)
  %t369 = getelementptr i8, ptr %t368, i64 %t356
  call void @olang_textcopy(ptr %t369, ptr %t359, i64 %t360)
  %t370 = getelementptr i8, ptr %t369, i64 %t360
  call void @olang_textcopy(ptr %t370, ptr %t362, i64 %t363)
  %t371 = insertvalue { i64, ptr } undef, i64 %t364, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t367, 1
  %t374 = load i64, ptr %l117
  %t375 = inttoptr i64 %t374 to ptr
  %t376 = extractvalue { i64, ptr } %t372, 0
  %t377 = extractvalue { i64, ptr } %t372, 1
  %t378 = mul i64 %t376, 1
  %t379 = call ptr @__olang_scope_alloc(ptr %t375, i64 %t378)
  call void @llvm.memcpy.p0.p0.i64(ptr %t379, ptr %t377, i64 %t378, i1 false)
  %t380 = insertvalue { i64, ptr } undef, i64 %t376, 0
  %t381 = insertvalue { i64, ptr } %t380, ptr %t379, 1
  %t382 = load i64, ptr @G_2ecompiler_2fbindgen_2eKType, !tbaa !24
  %t383 = load ptr, ptr %lp7
  %t384 = load { i64, ptr }, ptr %t383, !tbaa !27
  %t388 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t381, i64 %t382, i64 -1, { i64, ptr } %t384)
  store %"compiler/bindgen:cx" %t388, ptr %l125
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t389 = load %"compiler/bindgen:cx", ptr %l125
  %t390 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t389, 1
  store { i32, %"compiler/bindgen:cx" } %t390, ptr %rv
  br label %ret
bb71:
  %t391 = load ptr, ptr %l1, !tbaa !29
  %t392 = load i64, ptr %l5, !tbaa !24
  %t395 = getelementptr %"compiler/bindgen:cparse", ptr %t391, i32 0, i32 2
  store i64 %t392, ptr %t395, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb72
bb72:
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t397 = load ptr, ptr %l1, !tbaa !29
  %t400 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecPrimary(ptr %v0, ptr %v1, ptr %v2, ptr %t396, ptr %t397)
  %t401 = extractvalue { i32, %"compiler/bindgen:cx" } %t400, 1
  %t402 = extractvalue { i32, %"compiler/bindgen:cx" } %t400, 0
  store i32 %t402, ptr %l132
  %t403 = icmp ne i32 %t402, 0
  br i1 %t403, label %bb74, label %ok.404, !prof !99
ok.404:
  store %"compiler/bindgen:cx" %t401, ptr %l131
  br label %bb73
bb73:
  %t405 = load %"compiler/bindgen:cx", ptr %l131
  store %"compiler/bindgen:cx" %t405, ptr %l128
  br label %bb75
bb74:
  %t406 = load i32, ptr %l132, !tbaa !23
  %t407 = lshr i32 %t406, 16
  %t408 = and i32 %t406, 65535
  %t409 = icmp eq i32 %t407, 1
  %t410 = select i1 %t409, i32 1, i32 0
  %t411 = icmp eq i32 %t406, 0
  %t412 = shl i32 %t410, 16
  %t413 = or i32 %t412, %t408
  %t414 = select i1 %t411, i32 0, i32 %t413
  call void @__olang_scope_close(ptr %s0)
  %t416 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t414, 0
  store { i32, %"compiler/bindgen:cx" } %t416, ptr %rv
  br label %ret
bb75:
  call void @__olang_scope_close(ptr %s0)
  %t417 = load %"compiler/bindgen:cx", ptr %l128
  %t418 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t417, 1
  store { i32, %"compiler/bindgen:cx" } %t418, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/bindgen:cx" }, ptr %rv
  ret { i32, %"compiler/bindgen:cx" } %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2econstant(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca i1
  %l8 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l19 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @compiler_2fbindgen_2eusable(ptr %v1, { i64, ptr } %t1)
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb3:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/bindgen:gen", ptr %t9, i32 0, i32 10
  %t15 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %t11, { i64, ptr } %t7)
  store i1 %t15, ptr %l13
  br label %bb4
bb4:
  %t16 = load i1, ptr %l13, !tbaa !21
  store i1 %t16, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t20 = icmp sge i64 %t18, -2147483648
  br i1 %t20, label %bb9, label %bb10
bb9:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t24 = icmp sle i64 %t22, 2147483647
  store i1 %t24, ptr %l16, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb11
bb11:
  %t26 = load i1, ptr %l16, !tbaa !21
  br i1 %t26, label %bb12, label %bb13
bb12:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d79, i32 0, i32 1) }, ptr %l19, !tbaa !27
  br label %bb14
bb13:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d80, i32 0, i32 1) }, ptr %l19, !tbaa !27
  br label %bb14
bb14:
  %t27 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t27, ptr %l4, !tbaa !27
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/bindgen:gen", ptr %t28, i32 0, i32 9
  store ptr %t30, ptr %l21, !tbaa !29
  %t31 = ptrtoint ptr %v0 to i64
  store i64 %t31, ptr %l22, !tbaa !24
  %t32 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t32, label %bb15, label %bb16
bb15:
  %t34 = call ptr @__olang_region_make(ptr %v0)
  %t35 = ptrtoint ptr %t34 to i64
  store i64 %t35, ptr %l22, !tbaa !24
  br label %bb16
bb16:
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = load i64, ptr %l2, !tbaa !24
  %t40 = extractvalue { i64, ptr } %t36, 1
  %t41 = extractvalue { i64, ptr } %t36, 0
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t44 = add i64 %t41, %t43
  %t46 = extractvalue { i64, ptr } %t37, 1
  %t47 = extractvalue { i64, ptr } %t37, 0
  %t48 = add i64 %t44, %t47
  %t49 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t53 = call i64 @__olang_fmt_i64(ptr null, i64 %t38)
  %t54 = add i64 %t51, %t53
  %t55 = load i64, ptr %l22
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t54)
  call void @olang_textcopy(ptr %t57, ptr %t40, i64 %t41)
  %t58 = getelementptr i8, ptr %t57, i64 %t41
  call void @olang_textcopy(ptr %t58, ptr %t42, i64 %t43)
  %t59 = getelementptr i8, ptr %t58, i64 %t43
  call void @olang_textcopy(ptr %t59, ptr %t46, i64 %t47)
  %t60 = getelementptr i8, ptr %t59, i64 %t47
  call void @olang_textcopy(ptr %t60, ptr %t49, i64 %t50)
  %t61 = getelementptr i8, ptr %t60, i64 %t50
  %t62 = call i64 @__olang_fmt_i64(ptr %t61, i64 %t38)
  %t63 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t57, 1
  %t66 = load i64, ptr %l22
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = extractvalue { i64, ptr } %t64, 0
  %t69 = extractvalue { i64, ptr } %t64, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %t67, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t74 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t74, { i64, ptr } %t73)
  br label %bb17
bb17:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/bindgen:gen", ptr %t76, i32 0, i32 10
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %t78, { i64, ptr } %t79, i64 0)
  br label %bb18
bb18:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/bindgen:gen", ptr %t82, i32 0, i32 21
  %t85 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %t84, { i64, ptr } %t85, i64 0)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local { i32, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edump(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %lp13 = alloca ptr
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca { i64, ptr }
  %l47 = alloca %"std/os:Output"
  %l49 = alloca { i64, ptr }
  %l50 = alloca %"std/os:Output"
  %l51 = alloca i32
  %l53 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l62 = alloca i64
  %l65 = alloca { i64, ptr }
  %l67 = alloca i32
  %l69 = alloca ptr
  %l71 = alloca ptr
  %l72 = alloca i32
  %l74 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l14
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l4, { i64, ptr } %a1)
  br label %bb2
bb2:
  store { i64, ptr } %a2, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l7, !tbaa !24
  br label %bb3
bb3:
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l7, !tbaa !24
  %t16 = icmp slt i64 %t12, %t13
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb4, label %bb5
bb4:
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t20, ptr %l24, !tbaa !27
  %t21 = load i64, ptr %l6, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %t24, i64 %t21
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v2, ptr %l4, { i64, ptr } %t26)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t31 = load i64, ptr %l6, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l6, !tbaa !24
  br label %bb3
bb9:
  %t36 = insertvalue [8 x { i64, ptr }] undef, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t37 = insertvalue [8 x { i64, ptr }] %t36, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t38 = insertvalue [8 x { i64, ptr }] %t37, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d85, i32 0, i32 1) }, 2
  %t39 = insertvalue [8 x { i64, ptr }] %t38, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d86, i32 0, i32 1) }, 3
  %t40 = insertvalue [8 x { i64, ptr }] %t39, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d87, i32 0, i32 1) }, 4
  %t41 = insertvalue [8 x { i64, ptr }] %t40, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d88, i32 0, i32 1) }, 5
  %t42 = insertvalue [8 x { i64, ptr }] %t41, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d89, i32 0, i32 1) }, 6
  %t44 = insertvalue [8 x { i64, ptr }] %t42, { i64, ptr } %a3, 7
  %t46 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 128, i64 8)
  store [8 x { i64, ptr }] %t44, ptr %t46
  store ptr %t46, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t48 = load ptr, ptr %l9
  store i64 8, ptr %l11, !tbaa !24
  br label %bb10
bb10:
  %t51 = load i64, ptr %l10, !tbaa !24
  %t52 = load i64, ptr %l11, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t59 = load ptr, ptr %l9
  %t60 = load i64, ptr %l10, !tbaa !24
  %t63 = getelementptr [8 x { i64, ptr }], ptr %t59, i64 0, i64 %t60
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } %t64)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t69 = load i64, ptr %l10, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l10, !tbaa !24
  br label %bb10
bb16:
  %t74 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t74, ptr %l49
  br label %bb17
bb17:
  %t75 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t76 = call { i32, %"std/os:Output" } @compiler_2fbindgen_2eclangSays(ptr %s0, ptr %v4, { i64, ptr } %t75)
  %t77 = extractvalue { i32, %"std/os:Output" } %t76, 1
  %t78 = extractvalue { i32, %"std/os:Output" } %t76, 0
  store i32 %t78, ptr %l51
  %t79 = icmp ne i32 %t78, 0
  br i1 %t79, label %bb19, label %ok.80, !prof !99
ok.80:
  store %"std/os:Output" %t77, ptr %l50
  br label %bb18
bb18:
  %t81 = load %"std/os:Output", ptr %l50
  store %"std/os:Output" %t81, ptr %l47
  br label %bb23
bb19:
  %t82 = load i32, ptr %l51, !tbaa !23
  %t83 = ashr i32 %t82, 16
  %t85 = icmp eq i32 %t83, 1
  store i1 %t85, ptr %l53, !tbaa !21
  br label %bb20
bb20:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l54, !tbaa !29
  %t87 = load ptr, ptr %l54, !tbaa !29
  %t88 = getelementptr %"compiler/bindgen:gen", ptr %t87, i32 0, i32 25
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !27
  store { i64, ptr } %t89, ptr %l55, !tbaa !27
  %t90 = load ptr, ptr %l54, !tbaa !29
  %t91 = getelementptr %"compiler/bindgen:gen", ptr %t90, i32 0, i32 25
  store { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d90, i32 0, i32 1) }, ptr %t91, !tbaa !27
  %t92 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t92, label %bb21, label %bb22
bb21:
  %t94 = load { i64, ptr }, ptr %l55
  %t95 = extractvalue { i64, ptr } %t94, 1
  call void @__olang_region_release(ptr %t95)
  store { i64, ptr } zeroinitializer, ptr %l55
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t97 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t97, ptr %rv
  br label %ret
bb23:
  %t98 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store ptr %t98, ptr %lp13
  %t99 = load %"std/os:Output", ptr %l47
  %t100 = load ptr, ptr %lp13
  store %"std/os:Output" %t99, ptr %t100
  %t101 = load ptr, ptr %lp13
  %t102 = getelementptr %"std/os:Output", ptr %t101, i32 0, i32 1
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t107 = icmp eq i64 %t105, 0
  br i1 %t107, label %bb24, label %bb25
bb24:
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l61, !tbaa !29
  %t110 = ptrtoint ptr %v0 to i64
  store i64 %t110, ptr %l62, !tbaa !24
  %t111 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t111, label %bb26, label %bb27
bb25:
  br label %bb32
bb26:
  %t113 = call ptr @__olang_region_make(ptr %v0)
  %t114 = ptrtoint ptr %t113 to i64
  store i64 %t114, ptr %l62, !tbaa !24
  br label %bb27
bb27:
  %t115 = load ptr, ptr %lp13
  %t116 = getelementptr %"std/os:Output", ptr %t115, i32 0, i32 2
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  %t118 = load i64, ptr %l62
  %t119 = inttoptr i64 %t118 to ptr
  %t121 = call { i64, ptr } @compiler_2fbindgen_2efirstError(ptr %v4, ptr %t119, { i64, ptr } %t117)
  store { i64, ptr } %t121, ptr %l65
  br label %bb28
bb28:
  %t122 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t123 = load i64, ptr %l62
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = extractvalue { i64, ptr } %t122, 0
  %t126 = extractvalue { i64, ptr } %t122, 1
  %t127 = mul i64 %t125, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %t124, i64 %t127)
  call void @llvm.memcpy.p0.p0.i64(ptr %t128, ptr %t126, i64 %t127, i1 false)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  %t131 = load ptr, ptr %l61, !tbaa !29
  %t133 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t131, { i64, ptr } %t130)
  store i32 %t133, ptr %l67
  %t134 = icmp ne i32 %t133, 0
  br i1 %t134, label %bb30, label %ok.135, !prof !99
ok.135:
  br label %bb29
bb29:
  br label %bb31
bb30:
  %t136 = load i32, ptr %l67, !tbaa !23
  %t137 = lshr i32 %t136, 16
  %t138 = and i32 %t136, 65535
  %t139 = icmp eq i32 %t137, 1
  %t140 = select i1 %t139, i32 1, i32 0
  %t141 = icmp eq i32 %t136, 0
  %t142 = shl i32 %t140, 16
  %t143 = or i32 %t142, %t138
  %t144 = select i1 %t141, i32 0, i32 %t143
  call void @__olang_scope_close(ptr %s0)
  %t146 = insertvalue { i32, ptr } zeroinitializer, i32 %t144, 0
  store { i32, ptr } %t146, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t147 = load ptr, ptr %lp13
  %t148 = getelementptr %"std/os:Output", ptr %t147, i32 0, i32 1
  %t149 = load { i64, ptr }, ptr %t148, !tbaa !27
  %t151 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v4, ptr %v4, { i64, ptr } %t149)
  %t152 = extractvalue { i32, ptr } %t151, 1
  %t153 = extractvalue { i32, ptr } %t151, 0
  store i32 %t153, ptr %l72
  %t154 = icmp ne i32 %t153, 0
  br i1 %t154, label %bb34, label %ok.155, !prof !99
ok.155:
  store ptr %t152, ptr %l71
  br label %bb33
bb33:
  %t156 = load ptr, ptr %l71, !tbaa !29
  store ptr %t156, ptr %l69, !tbaa !29
  br label %bb40
bb34:
  %t157 = load i32, ptr %l72, !tbaa !23
  %t158 = ashr i32 %t157, 16
  %t160 = icmp eq i32 %t158, 1
  store i1 %t160, ptr %l74, !tbaa !21
  %t161 = load i32, ptr %l72, !tbaa !23
  %t162 = ashr i32 %t161, 16
  %t164 = icmp eq i32 %t162, 1
  br i1 %t164, label %bb35, label %bb36
bb35:
  call void @__olang_errpay_pop()
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l77, !tbaa !29
  %t167 = load ptr, ptr %l77, !tbaa !29
  %t168 = getelementptr %"compiler/bindgen:gen", ptr %t167, i32 0, i32 25
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  store { i64, ptr } %t169, ptr %l78, !tbaa !27
  %t170 = load ptr, ptr %l77, !tbaa !29
  %t171 = getelementptr %"compiler/bindgen:gen", ptr %t170, i32 0, i32 25
  store { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d91, i32 0, i32 1) }, ptr %t171, !tbaa !27
  %t172 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t172, label %bb38, label %bb39
bb38:
  %t174 = load { i64, ptr }, ptr %l78
  %t175 = extractvalue { i64, ptr } %t174, 1
  call void @__olang_region_release(ptr %t175)
  store { i64, ptr } zeroinitializer, ptr %l78
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t177 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t177, ptr %rv
  br label %ret
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t178 = load ptr, ptr %l69, !tbaa !29
  %t179 = insertvalue { i32, ptr } zeroinitializer, ptr %t178, 1
  store { i32, ptr } %t179, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %t582 = alloca { { i64, ptr }, ptr }, align 8
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
  %t7 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t5, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d92, i32 0, i32 1) })
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
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t23 = load i64, ptr %l5, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t29 = icmp slt i64 %t23, %t26
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb199
bb10:
  br label %bb11
bb11:
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t33, ptr %l41, !tbaa !27
  %t34 = load i64, ptr %l5, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %t37, i64 %t34
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !37
  store { i64, ptr } %t39, ptr %l6, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t41, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) })
  store i1 %t43, ptr %l45
  br label %bb12
bb12:
  %t44 = load i1, ptr %l45, !tbaa !21
  br i1 %t44, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb16
bb14:
  %t45 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t45, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d94, i32 0, i32 1) })
  store i1 %t47, ptr %l48
  br label %bb15
bb15:
  %t48 = load i1, ptr %l48, !tbaa !21
  store i1 %t48, ptr %l46, !tbaa !21
  br label %bb16
bb16:
  %t49 = load i1, ptr %l46, !tbaa !21
  br i1 %t49, label %bb17, label %bb18
bb17:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t50, { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d95, i32 0, i32 1) })
  store i32 %t52, ptr %l50
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb20, label %ok.54, !prof !99
ok.54:
  br label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb21
bb20:
  %t55 = load i32, ptr %l50, !tbaa !23
  %t56 = lshr i32 %t55, 16
  %t57 = and i32 %t55, 65535
  %t58 = icmp eq i32 %t56, 1
  %t59 = select i1 %t58, i32 1, i32 0
  %t60 = icmp eq i32 %t55, 0
  %t61 = shl i32 %t59, 16
  %t62 = or i32 %t61, %t57
  %t63 = select i1 %t60, i32 0, i32 %t62
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t65 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t63, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t65, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/bindgen:gen", ptr %t66, i32 0, i32 13
  %t69 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t72 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t68, { i64, ptr } %t69)
  %t73 = extractvalue { i32, i64 } %t72, 1
  %t74 = extractvalue { i32, i64 } %t72, 0
  store i32 %t74, ptr %l57
  %t75 = icmp ne i32 %t74, 0
  br i1 %t75, label %bb24, label %ok.76, !prof !99
ok.76:
  store i64 %t73, ptr %l56
  br label %bb23
bb23:
  %t77 = load i64, ptr %l56, !tbaa !24
  store i64 %t77, ptr %l52, !tbaa !24
  br label %bb26
bb24:
  br label %bb25
bb25:
  store i64 -1, ptr %l52, !tbaa !24
  br label %bb26
bb26:
  %t78 = load i64, ptr %l52, !tbaa !24
  store i64 %t78, ptr %l7, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t81 = icmp slt i64 %t79, 0
  br i1 %t81, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb31
bb28:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/bindgen:gen", ptr %t83, i32 0, i32 12
  %t86 = load i64, ptr %l7, !tbaa !24
  %t89 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v0, ptr %t85, i64 %t86)
  store %"compiler/bindgen:cMacro" %t89, ptr %l64
  br label %bb29
bb29:
  %t90 = getelementptr %"compiler/bindgen:cMacro", ptr %l64, i32 0, i32 0
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  %t93 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t91, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d96, i32 0, i32 1) })
  store i1 %t93, ptr %l66
  br label %bb30
bb30:
  %t94 = load i1, ptr %l66, !tbaa !21
  store i1 %t94, ptr %l60, !tbaa !21
  br label %bb31
bb31:
  %t95 = load i1, ptr %l60, !tbaa !21
  br i1 %t95, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb35
bb33:
  %t96 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t102 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v2, ptr %v1, ptr %t98, { i64, ptr } %t96)
  store i1 %t102, ptr %l71
  br label %bb34
bb34:
  %t103 = load i1, ptr %l71, !tbaa !21
  store i1 %t103, ptr %l67, !tbaa !21
  br label %bb35
bb35:
  %t104 = load i1, ptr %l67, !tbaa !21
  br i1 %t104, label %bb36, label %bb37
bb36:
  %t105 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v1, ptr %l4, { i64, ptr } %t105)
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t108 = load i64, ptr %l5, !tbaa !24
  %t110 = add i64 %t108, 1
  store i64 %t110, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb198
bb39:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/bindgen:gen", ptr %t112, i32 0, i32 12
  %t115 = load i64, ptr %l7, !tbaa !24
  %t118 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v3, ptr %t114, i64 %t115)
  store %"compiler/bindgen:cMacro" %t118, ptr %l79
  br label %bb40
bb40:
  %t119 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 64, i64 8)
  store ptr %t119, ptr %lp9
  %t120 = load %"compiler/bindgen:cMacro", ptr %l79
  %t121 = load ptr, ptr %lp9
  store %"compiler/bindgen:cMacro" %t120, ptr %t121
  %t122 = load ptr, ptr %lp9
  %t123 = getelementptr %"compiler/bindgen:cMacro", ptr %t122, i32 0, i32 1
  %t124 = load i1, ptr %t123, !tbaa !21
  %t126 = xor i1 %t124, true
  br i1 %t126, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s5
  %t128 = load ptr, ptr %l2, !tbaa !29
  %t129 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v1, ptr %t128, { i64, ptr } %t129)
  br label %bb43
bb42:
  br label %bb62
bb43:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load ptr, ptr %lp9
  %t134 = getelementptr %"compiler/bindgen:cMacro", ptr %t133, i32 0, i32 3
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  %t136 = load ptr, ptr %l2, !tbaa !29
  %t137 = load i64, ptr %l3, !tbaa !24
  %t139 = add i64 %t137, 1
  %t144 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v3, ptr %v2, ptr %v3, ptr %t132, { i64, ptr } %t135, ptr %t136, i64 %t139)
  %t145 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t144, 1
  %t146 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t144, 0
  store i32 %t146, ptr %l90
  %t147 = icmp ne i32 %t146, 0
  br i1 %t147, label %bb45, label %ok.148, !prof !99
ok.148:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t145, ptr %l89
  br label %bb44
bb44:
  %t149 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  %t150 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t149, ptr %t150
  store ptr %t150, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb46
bb45:
  %t152 = load i32, ptr %l90, !tbaa !23
  %t153 = lshr i32 %t152, 16
  %t154 = and i32 %t152, 65535
  %t155 = icmp eq i32 %t153, 1
  %t156 = select i1 %t155, i32 1, i32 0
  %t157 = icmp eq i32 %t152, 0
  %t158 = shl i32 %t156, 16
  %t159 = or i32 %t158, %t154
  %t160 = select i1 %t157, i32 0, i32 %t159
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t162 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t160, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t162, ptr %rv
  br label %ret
bb46:
  %t163 = load i64, ptr %l11, !tbaa !24
  store i64 %t163, ptr %l93, !tbaa !24
  %t164 = load ptr, ptr %l10, !tbaa !29
  %t166 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t164)
  store i64 %t166, ptr %l95
  br label %bb47
bb47:
  %t167 = load i64, ptr %l93, !tbaa !24
  %t168 = load i64, ptr %l95, !tbaa !24
  %t169 = icmp slt i64 %t167, %t168
  %t171 = xor i1 %t169, true
  br i1 %t171, label %bb48, label %bb49
bb48:
  br label %bb54
bb49:
  br label %bb50
bb50:
  %t173 = load ptr, ptr %l10, !tbaa !29
  %t174 = load i64, ptr %l11, !tbaa !24
  %t177 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t173, i64 %t174)
  store { i64, ptr } %t177, ptr %l100
  br label %bb51
bb51:
  %t178 = load { i64, ptr }, ptr %l100, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %l4, { i64, ptr } %t178)
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t182 = load i64, ptr %l11, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l11, !tbaa !24
  br label %bb46
bb54:
  br label %bb55
bb55:
  %t186 = load ptr, ptr %l2, !tbaa !29
  %t188 = call { i32, { i64, ptr } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Hdc04e7543082eec80486670259c0789b(ptr %v2, ptr %s5, ptr %t186)
  %t189 = extractvalue { i32, { i64, ptr } } %t188, 1
  %t190 = extractvalue { i32, { i64, ptr } } %t188, 0
  store i32 %t190, ptr %l108
  %t191 = icmp ne i32 %t190, 0
  br i1 %t191, label %bb57, label %ok.192, !prof !99
ok.192:
  store { i64, ptr } %t189, ptr %l107
  br label %bb56
bb56:
  %t193 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t193, ptr %l105, !tbaa !27
  %t194 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t194, label %bb59, label %bb60
bb57:
  br label %bb58
bb58:
  br label %bb61
bb59:
  %t196 = load { i64, ptr }, ptr %l105
  %t197 = extractvalue { i64, ptr } %t196, 1
  call void @__olang_region_release(ptr %t197)
  store { i64, ptr } zeroinitializer, ptr %l105
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t198 = load i64, ptr %l5, !tbaa !24
  %t200 = add i64 %t198, 1
  store i64 %t200, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  br label %bb198
bb62:
  %t202 = load i64, ptr %l5, !tbaa !24
  %t204 = add i64 %t202, 1
  %t205 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t205, 0
  %t210 = icmp sge i64 %t204, %t207
  br i1 %t210, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l117, !tbaa !21
  br label %bb66
bb64:
  %t212 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t212, ptr %l118, !tbaa !27
  %t213 = load i64, ptr %l5, !tbaa !24
  %t215 = add i64 %t213, 1
  %t217 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !27
  %t219 = getelementptr { i64, ptr }, ptr %t218, i64 %t215
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !37
  %t222 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t220, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) })
  store i1 %t222, ptr %l122
  br label %bb65
bb65:
  %t223 = load i1, ptr %l122, !tbaa !21
  %t224 = xor i1 %t223, true
  store i1 %t224, ptr %l117, !tbaa !21
  br label %bb66
bb66:
  %t226 = load i1, ptr %l117, !tbaa !21
  br i1 %t226, label %bb67, label %bb68
bb67:
  %t227 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v1, ptr %l4, { i64, ptr } %t227)
  br label %bb69
bb68:
  br label %bb70
bb69:
  %t230 = load i64, ptr %l5, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb198
bb70:
  %t234 = load ptr, ptr %lp9
  %t235 = getelementptr %"compiler/bindgen:cMacro", ptr %t234, i32 0, i32 5
  %t236 = load i1, ptr %t235, !tbaa !21
  br i1 %t236, label %bb71, label %bb72
bb71:
  %t238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t238, ptr %l129, !tbaa !29
  %t239 = ptrtoint ptr %v0 to i64
  store i64 %t239, ptr %l130, !tbaa !24
  %t240 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t240, label %bb73, label %bb74
bb72:
  br label %bb78
bb73:
  %t242 = call ptr @__olang_region_make(ptr %v0)
  %t243 = ptrtoint ptr %t242 to i64
  store i64 %t243, ptr %l130, !tbaa !24
  br label %bb74
bb74:
  %t244 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t245 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t246 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t248 = extractvalue { i64, ptr } %t244, 1
  %t249 = extractvalue { i64, ptr } %t244, 0
  %t250 = add i64 %t246, %t249
  %t251 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t253 = add i64 %t250, %t252
  %t254 = load i64, ptr %l130
  %t255 = inttoptr i64 %t254 to ptr
  %t256 = call ptr @__olang_scope_alloc(ptr %t255, i64 %t253)
  call void @olang_textcopy(ptr %t256, ptr %t245, i64 %t246)
  %t257 = getelementptr i8, ptr %t256, i64 %t246
  call void @olang_textcopy(ptr %t257, ptr %t248, i64 %t249)
  %t258 = getelementptr i8, ptr %t257, i64 %t249
  call void @olang_textcopy(ptr %t258, ptr %t251, i64 %t252)
  %t259 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t260 = insertvalue { i64, ptr } %t259, ptr %t256, 1
  %t262 = load i64, ptr %l130
  %t263 = inttoptr i64 %t262 to ptr
  %t264 = extractvalue { i64, ptr } %t260, 0
  %t265 = extractvalue { i64, ptr } %t260, 1
  %t266 = mul i64 %t264, 1
  %t267 = call ptr @__olang_scope_alloc(ptr %t263, i64 %t266)
  call void @llvm.memcpy.p0.p0.i64(ptr %t267, ptr %t265, i64 %t266, i1 false)
  %t268 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t267, 1
  %t270 = load ptr, ptr %l129, !tbaa !29
  %t272 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t270, { i64, ptr } %t269)
  store i32 %t272, ptr %l135
  %t273 = icmp ne i32 %t272, 0
  br i1 %t273, label %bb76, label %ok.274, !prof !99
ok.274:
  br label %bb75
bb75:
  br label %bb77
bb76:
  %t275 = load i32, ptr %l135, !tbaa !23
  %t276 = lshr i32 %t275, 16
  %t277 = and i32 %t275, 65535
  %t278 = icmp eq i32 %t276, 1
  %t279 = select i1 %t278, i32 1, i32 0
  %t280 = icmp eq i32 %t275, 0
  %t281 = shl i32 %t279, 16
  %t282 = or i32 %t281, %t277
  %t283 = select i1 %t280, i32 0, i32 %t282
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t285 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t283, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t285, ptr %rv
  br label %ret
bb77:
  br label %bb78
bb78:
  %t286 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t286, ptr %l137
  br label %bb79
bb79:
  %t287 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t287, ptr %lp13
  %t288 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l137
  %t289 = load ptr, ptr %lp13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t288, ptr %t289
  %t290 = ptrtoint ptr %v3 to i64
  store i64 %t290, ptr %l138, !tbaa !24
  %t291 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t291, label %bb80, label %bb81
bb80:
  %t293 = call ptr @__olang_region_make(ptr %v3)
  %t294 = ptrtoint ptr %t293 to i64
  store i64 %t294, ptr %l138, !tbaa !24
  br label %bb81
bb81:
  %t295 = load i64, ptr %l138
  %t296 = inttoptr i64 %t295 to ptr
  %t297 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t296, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t297, ptr %l140
  br label %bb82
bb82:
  %t298 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t298, label %bb83, label %bb84
bb83:
  %t300 = load i64, ptr %l138
  %t301 = inttoptr i64 %t300 to ptr
  %t302 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l140, i32 0, i32 0
  %t303 = load { i64, ptr }, ptr %t302
  %t304 = extractvalue { i64, ptr } %t303, 1
  %t305 = call ptr @__olang_region_or(ptr %t304, ptr null)
  %t306 = call ptr @__olang_region_home(ptr %t305)
  %t307 = icmp ne ptr %t306, null
  %t308 = select i1 %t307, ptr %t306, ptr null
  %t309 = icmp eq ptr %t308, %t301
  call void @__olang_region_settle(ptr %t301, i1 %t309)
  br label %bb84
bb84:
  %t310 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t310, ptr %lp14
  %t311 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l140
  %t312 = load ptr, ptr %lp14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t311, ptr %t312
  store i64 0, ptr %l15, !tbaa !24
  %t313 = load i64, ptr %l5, !tbaa !24
  %t315 = add i64 %t313, 2
  store i64 %t315, ptr %l16, !tbaa !24
  br label %bb85
bb85:
  store %olang.scope zeroinitializer, ptr %s13
  %t317 = load i64, ptr %l16, !tbaa !24
  %t318 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t320 = extractvalue { i64, ptr } %t318, 0
  %t323 = icmp slt i64 %t317, %t320
  %t325 = xor i1 %t323, true
  br i1 %t325, label %bb86, label %bb87
bb86:
  call void @__olang_scope_close(ptr %s13)
  br label %bb118
bb87:
  br label %bb88
bb88:
  %t327 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t327, ptr %l149, !tbaa !27
  %t328 = load i64, ptr %l16, !tbaa !24
  %t330 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t331 = load ptr, ptr %t330, !tbaa !27
  %t332 = getelementptr { i64, ptr }, ptr %t331, i64 %t328
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !37
  store { i64, ptr } %t333, ptr %l17, !tbaa !27
  %t335 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t337 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s13, { i64, ptr } %t335, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store i1 %t337, ptr %l153
  br label %bb89
bb89:
  %t338 = load i1, ptr %l153, !tbaa !21
  br i1 %t338, label %bb90, label %bb91
bb90:
  %t339 = load i64, ptr %l15, !tbaa !24
  %t341 = add i64 %t339, 1
  store i64 %t341, ptr %l15, !tbaa !24
  br label %bb92
bb91:
  br label %bb92
bb92:
  %t343 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t345 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s13, { i64, ptr } %t343, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) })
  store i1 %t345, ptr %l157
  br label %bb93
bb93:
  %t346 = load i1, ptr %l157, !tbaa !21
  br i1 %t346, label %bb94, label %bb95
bb94:
  %t347 = load i64, ptr %l15, !tbaa !24
  %t349 = icmp eq i64 %t347, 0
  br i1 %t349, label %bb96, label %bb97
bb95:
  br label %bb99
bb96:
  call void @__olang_scope_close(ptr %s13)
  br label %bb118
bb97:
  br label %bb98
bb98:
  %t351 = load i64, ptr %l15, !tbaa !24
  %t353 = sub i64 %t351, 1
  store i64 %t353, ptr %l15, !tbaa !24
  br label %bb99
bb99:
  %t355 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t357 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s13, { i64, ptr } %t355, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) })
  store i1 %t357, ptr %l163
  br label %bb100
bb100:
  %t358 = load i1, ptr %l163, !tbaa !21
  br i1 %t358, label %bb101, label %bb102
bb101:
  %t359 = load i64, ptr %l15, !tbaa !24
  %t361 = icmp eq i64 %t359, 0
  store i1 %t361, ptr %l164, !tbaa !21
  br label %bb103
bb102:
  store i1 false, ptr %l164, !tbaa !21
  br label %bb103
bb103:
  %t363 = load i1, ptr %l164, !tbaa !21
  br i1 %t363, label %bb104, label %bb105
bb104:
  %t364 = load ptr, ptr %lp13
  store ptr %t364, ptr %l167, !tbaa !29
  %t365 = load ptr, ptr %lp14
  %t366 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t365
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t366, ptr %l168
  %t368 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v3, ptr %l168)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t368, ptr %l170
  br label %bb106
bb105:
  %t369 = load ptr, ptr %lp14
  %t370 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v1, ptr %t369, { i64, ptr } %t370)
  br label %bb115
bb106:
  %t373 = load ptr, ptr %l167, !tbaa !29
  %t374 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H40771be639b3022d183b79789a9eab56(ptr %v3, ptr %v3, ptr %t373, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t374)
  br label %bb107
bb107:
  %t375 = ptrtoint ptr %v3 to i64
  store i64 %t375, ptr %l171, !tbaa !24
  %t376 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t376, label %bb108, label %bb109
bb108:
  %t378 = call ptr @__olang_region_make(ptr %v3)
  %t379 = ptrtoint ptr %t378 to i64
  store i64 %t379, ptr %l171, !tbaa !24
  br label %bb109
bb109:
  %t380 = load i64, ptr %l171
  %t381 = inttoptr i64 %t380 to ptr
  %t382 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t381, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t382, ptr %l173
  br label %bb110
bb110:
  %t383 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t383, label %bb111, label %bb112
bb111:
  %t385 = load i64, ptr %l171
  %t386 = inttoptr i64 %t385 to ptr
  %t387 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173, i32 0, i32 0
  %t388 = load { i64, ptr }, ptr %t387
  %t389 = extractvalue { i64, ptr } %t388, 1
  %t390 = call ptr @__olang_region_or(ptr %t389, ptr null)
  %t391 = call ptr @__olang_region_home(ptr %t390)
  %t392 = icmp ne ptr %t391, null
  %t393 = select i1 %t392, ptr %t391, ptr null
  %t394 = icmp eq ptr %t393, %t386
  call void @__olang_region_settle(ptr %t386, i1 %t394)
  br label %bb112
bb112:
  %t395 = load ptr, ptr %lp14
  %t396 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t395
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t396, ptr %l175
  %t397 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173
  %t398 = load ptr, ptr %lp14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t397, ptr %t398
  %t399 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14
  br i1 %t399, label %bb113, label %bb114
bb113:
  %t401 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l175, i32 0, i32 0
  %t402 = load { i64, ptr }, ptr %t401
  %t403 = extractvalue { i64, ptr } %t402, 1
  %t404 = call ptr @__olang_region_or(ptr %t403, ptr null)
  %t405 = call ptr @__olang_region_home(ptr %t404)
  %t406 = icmp ne ptr %t405, null
  %t407 = select i1 %t406, ptr %t405, ptr null
  call void @__olang_region_drop(ptr %t407)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l175
  br label %bb114
bb114:
  br label %bb116
bb115:
  br label %bb116
bb116:
  %t408 = load i64, ptr %l16, !tbaa !24
  %t410 = add i64 %t408, 1
  store i64 %t410, ptr %l16, !tbaa !24
  call void @__olang_scope_close(ptr %s13)
  br label %bb117
bb117:
  br label %bb85
bb118:
  %t412 = load i64, ptr %l16, !tbaa !24
  %t413 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t413, 0
  %t418 = icmp sge i64 %t412, %t415
  br i1 %t418, label %bb119, label %bb120
bb119:
  %t420 = load ptr, ptr %l0, !tbaa !29
  store ptr %t420, ptr %l185, !tbaa !29
  %t421 = ptrtoint ptr %v0 to i64
  store i64 %t421, ptr %l186, !tbaa !24
  %t422 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t422, label %bb121, label %bb122
bb120:
  br label %bb126
bb121:
  %t424 = call ptr @__olang_region_make(ptr %v0)
  %t425 = ptrtoint ptr %t424 to i64
  store i64 %t425, ptr %l186, !tbaa !24
  br label %bb122
bb122:
  %t426 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t427 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t428 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t430 = extractvalue { i64, ptr } %t426, 1
  %t431 = extractvalue { i64, ptr } %t426, 0
  %t432 = add i64 %t428, %t431
  %t433 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t434 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t435 = add i64 %t432, %t434
  %t436 = load i64, ptr %l186
  %t437 = inttoptr i64 %t436 to ptr
  %t438 = call ptr @__olang_scope_alloc(ptr %t437, i64 %t435)
  call void @olang_textcopy(ptr %t438, ptr %t427, i64 %t428)
  %t439 = getelementptr i8, ptr %t438, i64 %t428
  call void @olang_textcopy(ptr %t439, ptr %t430, i64 %t431)
  %t440 = getelementptr i8, ptr %t439, i64 %t431
  call void @olang_textcopy(ptr %t440, ptr %t433, i64 %t434)
  %t441 = insertvalue { i64, ptr } undef, i64 %t435, 0
  %t442 = insertvalue { i64, ptr } %t441, ptr %t438, 1
  %t444 = load i64, ptr %l186
  %t445 = inttoptr i64 %t444 to ptr
  %t446 = extractvalue { i64, ptr } %t442, 0
  %t447 = extractvalue { i64, ptr } %t442, 1
  %t448 = mul i64 %t446, 1
  %t449 = call ptr @__olang_scope_alloc(ptr %t445, i64 %t448)
  call void @llvm.memcpy.p0.p0.i64(ptr %t449, ptr %t447, i64 %t448, i1 false)
  %t450 = insertvalue { i64, ptr } undef, i64 %t446, 0
  %t451 = insertvalue { i64, ptr } %t450, ptr %t449, 1
  %t452 = load ptr, ptr %l185, !tbaa !29
  %t454 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t452, { i64, ptr } %t451)
  store i32 %t454, ptr %l191
  %t455 = icmp ne i32 %t454, 0
  br i1 %t455, label %bb124, label %ok.456, !prof !99
ok.456:
  br label %bb123
bb123:
  br label %bb125
bb124:
  %t457 = load i32, ptr %l191, !tbaa !23
  %t458 = lshr i32 %t457, 16
  %t459 = and i32 %t457, 65535
  %t460 = icmp eq i32 %t458, 1
  %t461 = select i1 %t460, i32 1, i32 0
  %t462 = icmp eq i32 %t457, 0
  %t463 = shl i32 %t461, 16
  %t464 = or i32 %t463, %t459
  %t465 = select i1 %t462, i32 0, i32 %t464
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t467 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t465, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t467, ptr %rv
  br label %ret
bb125:
  br label %bb126
bb126:
  %t468 = load ptr, ptr %lp14
  %t470 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t468)
  store i64 %t470, ptr %l194
  br label %bb127
bb127:
  %t471 = load i64, ptr %l194, !tbaa !24
  %t472 = icmp sgt i64 %t471, 0
  br i1 %t472, label %bb128, label %bb129
bb128:
  store i1 true, ptr %l196, !tbaa !21
  br label %bb131
bb129:
  %t474 = load ptr, ptr %lp13
  %t476 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_Hbb0b9cf8ae0bb786ffc6cf28ae45ef64(ptr %v3, ptr %t474)
  store i64 %t476, ptr %l198
  br label %bb130
bb130:
  %t477 = load i64, ptr %l198, !tbaa !24
  %t478 = icmp sgt i64 %t477, 0
  store i1 %t478, ptr %l196, !tbaa !21
  br label %bb131
bb131:
  %t480 = load i1, ptr %l196, !tbaa !21
  br i1 %t480, label %bb132, label %bb133
bb132:
  %t481 = load ptr, ptr %lp13
  store ptr %t481, ptr %l200, !tbaa !29
  %t482 = load ptr, ptr %lp14
  %t483 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t482
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t483, ptr %l201
  %t485 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v3, ptr %l201)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t485, ptr %l203
  br label %bb134
bb133:
  br label %bb136
bb134:
  %t486 = load ptr, ptr %l200, !tbaa !29
  %t487 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l203
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H40771be639b3022d183b79789a9eab56(ptr %v3, ptr %v3, ptr %t486, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t487)
  br label %bb135
bb135:
  br label %bb136
bb136:
  %t488 = load ptr, ptr %lp13
  %t490 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_Hbb0b9cf8ae0bb786ffc6cf28ae45ef64(ptr %v3, ptr %t488)
  store i64 %t490, ptr %l205
  br label %bb137
bb137:
  %t491 = load ptr, ptr %lp9
  %t492 = getelementptr %"compiler/bindgen:cMacro", ptr %t491, i32 0, i32 2
  %t493 = load { i64, ptr }, ptr %t492, !tbaa !27
  %t495 = extractvalue { i64, ptr } %t493, 0
  %t496 = load i64, ptr %l205, !tbaa !24
  %t498 = icmp ne i64 %t496, %t495
  br i1 %t498, label %bb138, label %bb139
bb138:
  %t500 = load ptr, ptr %l0, !tbaa !29
  store ptr %t500, ptr %l209, !tbaa !29
  %t501 = ptrtoint ptr %v0 to i64
  store i64 %t501, ptr %l210, !tbaa !24
  %t502 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t502, label %bb140, label %bb141
bb139:
  br label %bb145
bb140:
  %t504 = call ptr @__olang_region_make(ptr %v0)
  %t505 = ptrtoint ptr %t504 to i64
  store i64 %t505, ptr %l210, !tbaa !24
  br label %bb141
bb141:
  %t506 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t507 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t508 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t510 = extractvalue { i64, ptr } %t506, 1
  %t511 = extractvalue { i64, ptr } %t506, 0
  %t512 = add i64 %t508, %t511
  %t513 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t514 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t515 = add i64 %t512, %t514
  %t516 = load i64, ptr %l210
  %t517 = inttoptr i64 %t516 to ptr
  %t518 = call ptr @__olang_scope_alloc(ptr %t517, i64 %t515)
  call void @olang_textcopy(ptr %t518, ptr %t507, i64 %t508)
  %t519 = getelementptr i8, ptr %t518, i64 %t508
  call void @olang_textcopy(ptr %t519, ptr %t510, i64 %t511)
  %t520 = getelementptr i8, ptr %t519, i64 %t511
  call void @olang_textcopy(ptr %t520, ptr %t513, i64 %t514)
  %t521 = insertvalue { i64, ptr } undef, i64 %t515, 0
  %t522 = insertvalue { i64, ptr } %t521, ptr %t518, 1
  %t524 = load i64, ptr %l210
  %t525 = inttoptr i64 %t524 to ptr
  %t526 = extractvalue { i64, ptr } %t522, 0
  %t527 = extractvalue { i64, ptr } %t522, 1
  %t528 = mul i64 %t526, 1
  %t529 = call ptr @__olang_scope_alloc(ptr %t525, i64 %t528)
  call void @llvm.memcpy.p0.p0.i64(ptr %t529, ptr %t527, i64 %t528, i1 false)
  %t530 = insertvalue { i64, ptr } undef, i64 %t526, 0
  %t531 = insertvalue { i64, ptr } %t530, ptr %t529, 1
  %t532 = load ptr, ptr %l209, !tbaa !29
  %t534 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t532, { i64, ptr } %t531)
  store i32 %t534, ptr %l215
  %t535 = icmp ne i32 %t534, 0
  br i1 %t535, label %bb143, label %ok.536, !prof !99
ok.536:
  br label %bb142
bb142:
  br label %bb144
bb143:
  %t537 = load i32, ptr %l215, !tbaa !23
  %t538 = lshr i32 %t537, 16
  %t539 = and i32 %t537, 65535
  %t540 = icmp eq i32 %t538, 1
  %t541 = select i1 %t540, i32 1, i32 0
  %t542 = icmp eq i32 %t537, 0
  %t543 = shl i32 %t541, 16
  %t544 = or i32 %t543, %t539
  %t545 = select i1 %t542, i32 0, i32 %t544
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t547 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t545, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t547, ptr %rv
  br label %ret
bb144:
  br label %bb145
bb145:
  %t548 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t548, ptr %l217
  br label %bb146
bb146:
  %t549 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t549, ptr %lp18
  %t550 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l217
  %t551 = load ptr, ptr %lp18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t550, ptr %t551
  %t552 = load ptr, ptr %lp9
  %t553 = getelementptr %"compiler/bindgen:cMacro", ptr %t552, i32 0, i32 3
  %t554 = load { i64, ptr }, ptr %t553, !tbaa !27
  store { i64, ptr } %t554, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t556 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t558 = extractvalue { i64, ptr } %t556, 0
  store i64 %t558, ptr %l21, !tbaa !24
  br label %bb147
bb147:
  store %olang.scope zeroinitializer, ptr %s25
  %t560 = load i64, ptr %l20, !tbaa !24
  %t561 = load i64, ptr %l21, !tbaa !24
  %t564 = icmp slt i64 %t560, %t561
  %t566 = xor i1 %t564, true
  br i1 %t566, label %bb148, label %bb149
bb148:
  call void @__olang_scope_close(ptr %s25)
  br label %bb177
bb149:
  br label %bb150
bb150:
  %t568 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t568, ptr %l225, !tbaa !27
  %t569 = load i64, ptr %l20, !tbaa !24
  %t571 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t572 = load ptr, ptr %t571, !tbaa !27
  %t573 = getelementptr { i64, ptr }, ptr %t572, i64 %t569
  %t574 = load { i64, ptr }, ptr %t573, !tbaa !37
  store { i64, ptr } %t574, ptr %l22, !tbaa !27
  %t576 = load ptr, ptr %lp9
  %t577 = getelementptr %"compiler/bindgen:cMacro", ptr %t576, i32 0, i32 2
  %t578 = load { i64, ptr }, ptr %t577, !tbaa !27
  %t579 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t580 = getelementptr { { i64, ptr }, ptr }, ptr null, i32 1
  %t581 = ptrtoint ptr %t580 to i64
  %t583 = getelementptr { { i64, ptr }, ptr }, ptr %t582, i32 0, i32 0
  store { i64, ptr } %t579, ptr %t583, !tbaa !28
  call void @__olang_scope_escape(ptr %v3)
  %t585 = getelementptr { { i64, ptr }, ptr }, ptr %t582, i32 0, i32 1
  store ptr %v3, ptr %t585, !tbaa !28
  %t586 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_107, 0
  %t587 = insertvalue { ptr, ptr } %t586, ptr %t582, 1
  %t590 = extractvalue { ptr, ptr } %t587, 0
  %t591 = extractvalue { ptr, ptr } %t587, 1
  %t592 = call { i32, i64 } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eFindIndex_3cstd_2f_H0cdaf28864c9da4990596b1986b376a0(ptr %v3, ptr %s25, { i64, ptr } %t578, ptr %t590, ptr %t591)
  %t593 = extractvalue { i32, i64 } %t592, 1
  %t594 = extractvalue { i32, i64 } %t592, 0
  store i32 %t594, ptr %l233
  %t595 = icmp ne i32 %t594, 0
  br i1 %t595, label %bb152, label %ok.596, !prof !99
ok.596:
  store i64 %t593, ptr %l232
  br label %bb151
bb151:
  %t597 = load i64, ptr %l232, !tbaa !24
  store i64 %t597, ptr %l228, !tbaa !24
  br label %bb154
bb152:
  br label %bb153
bb153:
  store i64 -1, ptr %l228, !tbaa !24
  br label %bb154
bb154:
  %t598 = load i64, ptr %l228, !tbaa !24
  store i64 %t598, ptr %l23, !tbaa !24
  %t599 = load i64, ptr %l23, !tbaa !24
  %t601 = icmp slt i64 %t599, 0
  br i1 %t601, label %bb155, label %bb156
bb155:
  %t603 = load ptr, ptr %lp18
  %t604 = load { i64, ptr }, ptr %l22, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t603, { i64, ptr } %t604)
  br label %bb157
bb156:
  br label %bb158
bb157:
  call void @__olang_scope_close(ptr %s25)
  br label %bb176
bb158:
  %t607 = load ptr, ptr %lp18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t607, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d108, i32 0, i32 1) })
  br label %bb159
bb159:
  store %olang.scope zeroinitializer, ptr %s27
  %t609 = load ptr, ptr %l0, !tbaa !29
  store ptr %t609, ptr %l239, !tbaa !29
  %t610 = load ptr, ptr %lp13
  %t611 = load i64, ptr %l23, !tbaa !24
  %t614 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H21d8db2bdfeb46fab755f8173a35f95e(ptr %v3, ptr %v3, ptr %t610, i64 %t611)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t614, ptr %l242
  br label %bb160
bb160:
  %t616 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v3, ptr %l242)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t616, ptr %l244
  br label %bb161
bb161:
  %t617 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l244
  %t618 = call ptr @__olang_scope_alloc_a(ptr %s27, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t617, ptr %t618
  %t620 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v3, ptr %v3, ptr %t618)
  store { i64, ptr } %t620, ptr %l246
  br label %bb162
bb162:
  %t621 = load ptr, ptr %l2, !tbaa !29
  %t622 = load i64, ptr %l3, !tbaa !24
  %t624 = add i64 %t622, 1
  %t625 = load ptr, ptr %l239, !tbaa !29
  %t626 = load { i64, ptr }, ptr %l246, !tbaa !27
  %t629 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v3, ptr %v2, ptr %v3, ptr %t625, { i64, ptr } %t626, ptr %t621, i64 %t624)
  %t630 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t629, 1
  %t631 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t629, 0
  store i32 %t631, ptr %l251
  %t632 = icmp ne i32 %t631, 0
  br i1 %t632, label %bb164, label %ok.633, !prof !99
ok.633:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t630, ptr %l250
  br label %bb163
bb163:
  %t634 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l250
  %t635 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t634, ptr %t635
  store ptr %t635, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb165
bb164:
  %t637 = load i32, ptr %l251, !tbaa !23
  %t638 = lshr i32 %t637, 16
  %t639 = and i32 %t637, 65535
  %t640 = icmp eq i32 %t638, 1
  %t641 = select i1 %t640, i32 1, i32 0
  %t642 = icmp eq i32 %t637, 0
  %t643 = shl i32 %t641, 16
  %t644 = or i32 %t643, %t639
  %t645 = select i1 %t642, i32 0, i32 %t644
  call void @__olang_scope_close(ptr %s27)
  call void @__olang_scope_close(ptr %s25)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t647 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t645, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t647, ptr %rv
  br label %ret
bb165:
  %t648 = load i64, ptr %l25, !tbaa !24
  store i64 %t648, ptr %l254, !tbaa !24
  %t649 = load ptr, ptr %l24, !tbaa !29
  %t651 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t649)
  store i64 %t651, ptr %l256
  br label %bb166
bb166:
  %t652 = load i64, ptr %l254, !tbaa !24
  %t653 = load i64, ptr %l256, !tbaa !24
  %t654 = icmp slt i64 %t652, %t653
  %t656 = xor i1 %t654, true
  br i1 %t656, label %bb167, label %bb168
bb167:
  br label %bb173
bb168:
  br label %bb169
bb169:
  %t658 = load ptr, ptr %l24, !tbaa !29
  %t659 = load i64, ptr %l25, !tbaa !24
  %t662 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t658, i64 %t659)
  store { i64, ptr } %t662, ptr %l261
  br label %bb170
bb170:
  %t663 = load { i64, ptr }, ptr %l261, !tbaa !27
  %t664 = load ptr, ptr %lp18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t664, { i64, ptr } %t663)
  br label %bb171
bb171:
  br label %bb172
bb172:
  %t668 = load i64, ptr %l25, !tbaa !24
  %t670 = add i64 %t668, 1
  store i64 %t670, ptr %l25, !tbaa !24
  br label %bb165
bb173:
  call void @__olang_scope_close(ptr %s27)
  br label %bb174
bb174:
  %t672 = load ptr, ptr %lp18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t672, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d109, i32 0, i32 1) })
  br label %bb175
bb175:
  call void @__olang_scope_close(ptr %s25)
  br label %bb176
bb176:
  %t674 = load i64, ptr %l20, !tbaa !24
  %t676 = add i64 %t674, 1
  store i64 %t676, ptr %l20, !tbaa !24
  br label %bb147
bb177:
  %t678 = load ptr, ptr %l2, !tbaa !29
  %t679 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v1, ptr %t678, { i64, ptr } %t679)
  br label %bb178
bb178:
  %t682 = load ptr, ptr %l0, !tbaa !29
  store ptr %t682, ptr %l271, !tbaa !29
  %t683 = load ptr, ptr %lp18
  %t685 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v3, ptr %v3, ptr %t683)
  store { i64, ptr } %t685, ptr %l273
  br label %bb179
bb179:
  %t686 = load ptr, ptr %l2, !tbaa !29
  %t687 = load i64, ptr %l3, !tbaa !24
  %t689 = add i64 %t687, 1
  %t690 = load ptr, ptr %l271, !tbaa !29
  %t691 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t694 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v3, ptr %v2, ptr %v3, ptr %t690, { i64, ptr } %t691, ptr %t686, i64 %t689)
  %t695 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t694, 1
  %t696 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t694, 0
  store i32 %t696, ptr %l278
  %t697 = icmp ne i32 %t696, 0
  br i1 %t697, label %bb181, label %ok.698, !prof !99
ok.698:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t695, ptr %l277
  br label %bb180
bb180:
  %t699 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l277
  %t700 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t699, ptr %t700
  store ptr %t700, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  br label %bb182
bb181:
  %t702 = load i32, ptr %l278, !tbaa !23
  %t703 = lshr i32 %t702, 16
  %t704 = and i32 %t702, 65535
  %t705 = icmp eq i32 %t703, 1
  %t706 = select i1 %t705, i32 1, i32 0
  %t707 = icmp eq i32 %t702, 0
  %t708 = shl i32 %t706, 16
  %t709 = or i32 %t708, %t704
  %t710 = select i1 %t707, i32 0, i32 %t709
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t712 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t710, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t712, ptr %rv
  br label %ret
bb182:
  %t713 = load i64, ptr %l28, !tbaa !24
  store i64 %t713, ptr %l281, !tbaa !24
  %t714 = load ptr, ptr %l27, !tbaa !29
  %t716 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t714)
  store i64 %t716, ptr %l283
  br label %bb183
bb183:
  %t717 = load i64, ptr %l281, !tbaa !24
  %t718 = load i64, ptr %l283, !tbaa !24
  %t719 = icmp slt i64 %t717, %t718
  %t721 = xor i1 %t719, true
  br i1 %t721, label %bb184, label %bb185
bb184:
  br label %bb190
bb185:
  br label %bb186
bb186:
  %t723 = load ptr, ptr %l27, !tbaa !29
  %t724 = load i64, ptr %l28, !tbaa !24
  %t727 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t723, i64 %t724)
  store { i64, ptr } %t727, ptr %l288
  br label %bb187
bb187:
  %t728 = load { i64, ptr }, ptr %l288, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %l4, { i64, ptr } %t728)
  br label %bb188
bb188:
  br label %bb189
bb189:
  %t732 = load i64, ptr %l28, !tbaa !24
  %t734 = add i64 %t732, 1
  store i64 %t734, ptr %l28, !tbaa !24
  br label %bb182
bb190:
  br label %bb191
bb191:
  %t736 = load ptr, ptr %l2, !tbaa !29
  %t738 = call { i32, { i64, ptr } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Hdc04e7543082eec80486670259c0789b(ptr %v2, ptr %s2, ptr %t736)
  %t739 = extractvalue { i32, { i64, ptr } } %t738, 1
  %t740 = extractvalue { i32, { i64, ptr } } %t738, 0
  store i32 %t740, ptr %l296
  %t741 = icmp ne i32 %t740, 0
  br i1 %t741, label %bb193, label %ok.742, !prof !99
ok.742:
  store { i64, ptr } %t739, ptr %l295
  br label %bb192
bb192:
  %t743 = load { i64, ptr }, ptr %l295, !tbaa !27
  store { i64, ptr } %t743, ptr %l293, !tbaa !27
  %t744 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t744, label %bb195, label %bb196
bb193:
  br label %bb194
bb194:
  br label %bb197
bb195:
  %t746 = load { i64, ptr }, ptr %l293
  %t747 = extractvalue { i64, ptr } %t746, 1
  call void @__olang_region_release(ptr %t747)
  store { i64, ptr } zeroinitializer, ptr %l293
  br label %bb196
bb196:
  br label %bb197
bb197:
  %t748 = load i64, ptr %l16, !tbaa !24
  %t750 = add i64 %t748, 1
  store i64 %t750, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb198
bb198:
  br label %bb8
bb199:
  %t752 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  call void @__olang_scope_close(ptr %s0)
  %t754 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t752, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t754, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }, ptr %rv
  ret { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efieldType(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/bindgen:ctype"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/bindgen:ctype"
  %l6 = alloca i64
  %l10 = alloca %"compiler/bindgen:ctype"
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l27 = alloca i64
  %l30 = alloca i1
  %l33 = alloca i32
  %l37 = alloca { i64, ptr }
  %l43 = alloca %"compiler/bindgen:ctype"
  %l46 = alloca i1
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l55 = alloca i64
  %l58 = alloca i1
  %l62 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %l72 = alloca i32
  %l75 = alloca i32
  %l77 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l79 = alloca i64
  %l80 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 16
  %t7 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/bindgen:ctype" %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load %"compiler/bindgen:ctype", ptr %l10
  store %"compiler/bindgen:ctype" %t8, ptr %l2
  %t9 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 0
  %t10 = load i32, ptr %t9, !range !{i32 0, i32 7}
  store i32 %t10, ptr %l3
  %t12 = load i32, ptr %l3, !range !{i32 0, i32 7}
  %t14 = trunc i64 1 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb9
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t18, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d110, i32 0, i32 1) })
  store i1 %t20, ptr %l15
  br label %bb5
bb5:
  %t21 = load i1, ptr %l15, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d111, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  br label %bb8
bb7:
  %t24 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 1
  %t28 = extractvalue { i64, ptr } %t25, 0
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t27, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l16, !tbaa !27
  br label %bb8
bb8:
  %t33 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l21, !tbaa !24
  %t35 = load i64, ptr %l21, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l22, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l21, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t46, ptr %l16, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  %t47 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t48 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t47, 1
  store { i32, { i64, ptr } } %t48, ptr %rv
  br label %ret
bb9:
  %t49 = load i32, ptr %l3, !range !{i32 0, i32 7}
  %t51 = trunc i64 2 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb22
bb12:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 1
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t59 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v0, ptr %t54, { i64, ptr } %t56)
  store i64 %t59, ptr %l27
  br label %bb13
bb13:
  %t60 = load i64, ptr %l27, !tbaa !24
  store i64 %t60, ptr %l4, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i64, ptr %l4, !tbaa !24
  %t65 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %t61, i64 %t62)
  store i1 %t65, ptr %l30
  br label %bb14
bb14:
  %t66 = load i1, ptr %l30, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb15, label %bb16
bb15:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t69, { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d112, i32 0, i32 1) })
  store i32 %t71, ptr %l33
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb18, label %ok.73, !prof !99
ok.73:
  br label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb19
bb18:
  %t74 = load i32, ptr %l33, !tbaa !23
  %t75 = lshr i32 %t74, 16
  %t76 = and i32 %t74, 65535
  %t77 = icmp eq i32 %t75, 1
  %t78 = select i1 %t77, i32 1, i32 0
  %t79 = icmp eq i32 %t74, 0
  %t80 = shl i32 %t78, 16
  %t81 = or i32 %t80, %t76
  %t82 = select i1 %t79, i32 0, i32 %t81
  %t84 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t82, 0
  store { i32, { i64, ptr } } %t84, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l4, !tbaa !24
  %t89 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %v1, ptr %t85, i64 %t86)
  store { i64, ptr } %t89, ptr %l37
  br label %bb21
bb21:
  %t90 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t91 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t90, 1
  store { i32, { i64, ptr } } %t91, ptr %rv
  br label %ret
bb22:
  %t92 = load i32, ptr %l3, !range !{i32 0, i32 7}
  %t94 = trunc i64 3 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb40
bb25:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/bindgen:gen", ptr %t97, i32 0, i32 16
  %t100 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 2
  %t101 = load i64, ptr %t100, !tbaa !24
  %t104 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t99, i64 %t101)
  store %"compiler/bindgen:ctype" %t104, ptr %l43
  br label %bb26
bb26:
  %t105 = load %"compiler/bindgen:ctype", ptr %l43
  store %"compiler/bindgen:ctype" %t105, ptr %l5
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 2
  %t108 = load i64, ptr %t107, !tbaa !24
  %t111 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eisByte(ptr %v0, ptr %t106, i64 %t108)
  store i1 %t111, ptr %l46
  br label %bb27
bb27:
  %t112 = load i1, ptr %l46, !tbaa !21
  br i1 %t112, label %bb28, label %bb29
bb28:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d113, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t113, ptr %l48, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 0
  store i64 %t115, ptr %l49, !tbaa !24
  %t116 = load i64, ptr %l49, !tbaa !24
  %t117 = mul i64 %t116, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t117)
  %t119 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  store { i64, ptr } %t120, ptr %l50, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = load i64, ptr %l49, !tbaa !24
  %t126 = mul i64 %t125, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t122, ptr %t124, i64 %t126, i1 false)
  %t127 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t127, ptr %l48, !tbaa !27
  %t128 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t129 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t128, 1
  store { i32, { i64, ptr } } %t129, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t130 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 0
  %t131 = load i32, ptr %t130, !range !{i32 0, i32 7}
  %t133 = trunc i64 2 to i32
  %t134 = icmp eq i32 %t131, %t133
  br i1 %t134, label %bb31, label %bb32
bb31:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 1
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  %t141 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v0, ptr %t136, { i64, ptr } %t138)
  store i64 %t141, ptr %l55
  br label %bb33
bb32:
  br label %bb39
bb33:
  %t142 = load i64, ptr %l55, !tbaa !24
  store i64 %t142, ptr %l6, !tbaa !24
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i64, ptr %l6, !tbaa !24
  %t147 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %t143, i64 %t144)
  store i1 %t147, ptr %l58
  br label %bb34
bb34:
  %t148 = load i1, ptr %l58, !tbaa !21
  %t149 = xor i1 %t148, true
  br i1 %t149, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s8
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i64, ptr %l6, !tbaa !24
  %t155 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %s8, ptr %t151, i64 %t152)
  store { i64, ptr } %t155, ptr %l62
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t156 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 1
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t159 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t161 = add i64 %t158, %t160
  %t162 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t161)
  call void @olang_textcopy(ptr %t162, ptr %t157, i64 %t158)
  %t163 = getelementptr i8, ptr %t162, i64 %t158
  call void @olang_textcopy(ptr %t163, ptr %t159, i64 %t160)
  %t164 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t162, 1
  call void @__olang_scope_close(ptr %s8)
  %t167 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t165, 1
  store { i32, { i64, ptr } } %t167, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d115, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t168 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t168, ptr %l65, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t169, 0
  store i64 %t170, ptr %l66, !tbaa !24
  %t171 = load i64, ptr %l66, !tbaa !24
  %t172 = mul i64 %t171, 1
  %t173 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t172)
  %t174 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t173, 1
  store { i64, ptr } %t175, ptr %l67, !tbaa !27
  %t176 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = load i64, ptr %l66, !tbaa !24
  %t181 = mul i64 %t180, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t177, ptr %t179, i64 %t181, i1 false)
  %t182 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t182, ptr %l65, !tbaa !27
  %t183 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t184 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t183, 1
  store { i32, { i64, ptr } } %t184, ptr %rv
  br label %ret
bb40:
  %t185 = load i32, ptr %l3, !range !{i32 0, i32 7}
  %t187 = trunc i64 6 to i32
  %t188 = icmp eq i32 %t185, %t187
  br i1 %t188, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb47
bb43:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 1
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  %t195 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t190, { i64, ptr } %t192)
  store i32 %t195, ptr %l72
  %t196 = icmp ne i32 %t195, 0
  br i1 %t196, label %bb45, label %ok.197, !prof !99
ok.197:
  br label %bb44
bb44:
  br label %bb46
bb45:
  %t198 = load i32, ptr %l72, !tbaa !23
  %t199 = lshr i32 %t198, 16
  %t200 = and i32 %t198, 65535
  %t201 = icmp eq i32 %t199, 1
  %t202 = select i1 %t201, i32 1, i32 0
  %t203 = icmp eq i32 %t198, 0
  %t204 = shl i32 %t202, 16
  %t205 = or i32 %t204, %t200
  %t206 = select i1 %t203, i32 0, i32 %t205
  %t208 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t206, 0
  store { i32, { i64, ptr } } %t208, ptr %rv
  br label %ret
bb46:
  br label %bb55
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb54
bb50:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t209, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d116, i32 0, i32 1) })
  store i32 %t211, ptr %l75
  %t212 = icmp ne i32 %t211, 0
  br i1 %t212, label %bb52, label %ok.213, !prof !99
ok.213:
  br label %bb51
bb51:
  br label %bb53
bb52:
  %t214 = load i32, ptr %l75, !tbaa !23
  %t215 = lshr i32 %t214, 16
  %t216 = and i32 %t214, 65535
  %t217 = icmp eq i32 %t215, 1
  %t218 = select i1 %t217, i32 1, i32 0
  %t219 = icmp eq i32 %t214, 0
  %t220 = shl i32 %t218, 16
  %t221 = or i32 %t220, %t216
  %t222 = select i1 %t219, i32 0, i32 %t221
  %t224 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t222, 0
  store { i32, { i64, ptr } } %t224, ptr %rv
  br label %ret
bb53:
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_582986fcdf40d11c_2a39a940a03de888)
  unreachable
bb55:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d117, i32 0, i32 1) }, ptr %l77, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t225, ptr %l78, !tbaa !27
  %t226 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t226, 0
  store i64 %t227, ptr %l79, !tbaa !24
  %t228 = load i64, ptr %l79, !tbaa !24
  %t229 = mul i64 %t228, 1
  %t230 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t229)
  %t231 = insertvalue { i64, ptr } undef, i64 %t228, 0
  %t232 = insertvalue { i64, ptr } %t231, ptr %t230, 1
  store { i64, ptr } %t232, ptr %l80, !tbaa !27
  %t233 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = load i64, ptr %l79, !tbaa !24
  %t238 = mul i64 %t237, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t234, ptr %t236, i64 %t238, i1 false)
  %t239 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t239, ptr %l78, !tbaa !27
  %t240 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t241 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t240, 1
  store { i32, { i64, ptr } } %t241, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efunction(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i1
  %l5 = alloca %"compiler/bindgen:ctype"
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %lp15 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l24 = alloca i1
  %l27 = alloca i64
  %l31 = alloca %"compiler/bindgen:ctype"
  %l36 = alloca i32
  %l42 = alloca i32
  %l44 = alloca %"std/prelude/text:StringBuilder"
  %l50 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l55 = alloca i64
  %l58 = alloca i64
  %l79 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l102 = alloca i64
  %l103 = alloca { i64, ptr }
  %l104 = alloca i32
  %l111 = alloca i1
  %l112 = alloca ptr
  %l115 = alloca { i64, ptr }
  %l120 = alloca %"compiler/bindgen:ctype"
  %l124 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l128 = alloca i32
  %l137 = alloca %"compiler/bindgen:ctype"
  %l140 = alloca i1
  %l143 = alloca i1
  %l152 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s14 = alloca %olang.scope
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
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/bindgen:cFunc", ptr %t21, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t25 = load { i64, ptr }, ptr @G_2ecompiler_2fbindgen_2eNoReturnAttr, !tbaa !27
  %t26 = load ptr, ptr @__olang_prog_scope
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %t26, { i64, ptr } %t24, { i64, ptr } %t25)
  store i1 %t29, ptr %l24
  br label %bb2
bb2:
  %t30 = load i1, ptr %l24, !tbaa !21
  store i1 %t30, ptr %l3, !tbaa !21
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t35 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %s0, ptr %t31, { i64, ptr } %t32, i64 0)
  store i64 %t35, ptr %l27
  br label %bb3
bb3:
  %t36 = load i64, ptr %l27, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/bindgen:gen", ptr %t37, i32 0, i32 16
  %t43 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t39, i64 %t36)
  store %"compiler/bindgen:ctype" %t43, ptr %l31
  br label %bb4
bb4:
  %t44 = load %"compiler/bindgen:ctype", ptr %l31
  store %"compiler/bindgen:ctype" %t44, ptr %l5
  %t45 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 0
  %t46 = load i32, ptr %t45, !range !{i32 0, i32 7}
  %t48 = trunc i64 6 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb5, label %bb6
bb5:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 1
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  %t56 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t51, { i64, ptr } %t53)
  store i32 %t56, ptr %l36
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb8, label %ok.58, !prof !99
ok.58:
  br label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb9
bb8:
  %t59 = load i32, ptr %l36, !tbaa !23
  %t60 = lshr i32 %t59, 16
  %t61 = and i32 %t59, 65535
  %t62 = icmp eq i32 %t60, 1
  %t63 = select i1 %t62, i32 1, i32 0
  %t64 = icmp eq i32 %t59, 0
  %t65 = shl i32 %t63, 16
  %t66 = or i32 %t65, %t61
  %t67 = select i1 %t64, i32 0, i32 %t66
  call void @__olang_scope_close(ptr %s0)
  %t69 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t67, 0
  store { i32, { i64, ptr } } %t69, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t70 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 0
  %t71 = load i32, ptr %t70, !range !{i32 0, i32 7}
  %t73 = trunc i64 5 to i32
  %t74 = icmp eq i32 %t71, %t73
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb11, label %bb12
bb11:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t78, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d118, i32 0, i32 1) })
  store i32 %t80, ptr %l42
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb14, label %ok.82, !prof !99
ok.82:
  br label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb15
bb14:
  %t83 = load i32, ptr %l42, !tbaa !23
  %t84 = lshr i32 %t83, 16
  %t85 = and i32 %t83, 65535
  %t86 = icmp eq i32 %t84, 1
  %t87 = select i1 %t86, i32 1, i32 0
  %t88 = icmp eq i32 %t83, 0
  %t89 = shl i32 %t87, 16
  %t90 = or i32 %t89, %t85
  %t91 = select i1 %t88, i32 0, i32 %t90
  call void @__olang_scope_close(ptr %s0)
  %t93 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t91, 0
  store { i32, { i64, ptr } } %t93, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t94 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t94, ptr %l44
  br label %bb17
bb17:
  %t95 = load %"std/prelude/text:StringBuilder", ptr %l44
  store %"std/prelude/text:StringBuilder" %t95, ptr %l6
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/bindgen:cFunc", ptr %t96, i32 0, i32 0
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  %t100 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t103 = extractvalue { i64, ptr } %t99, 1
  %t104 = extractvalue { i64, ptr } %t99, 0
  %t105 = add i64 %t101, %t104
  %t106 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t108 = add i64 %t105, %t107
  %t109 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t108)
  call void @olang_textcopy(ptr %t109, ptr %t100, i64 %t101)
  %t110 = getelementptr i8, ptr %t109, i64 %t101
  call void @olang_textcopy(ptr %t110, ptr %t103, i64 %t104)
  %t111 = getelementptr i8, ptr %t110, i64 %t104
  call void @olang_textcopy(ptr %t111, ptr %t106, i64 %t107)
  %t112 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t109, 1
  %t115 = extractvalue { i64, ptr } %t113, 0
  %t116 = extractvalue { i64, ptr } %t113, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t120)
  br label %bb18
bb18:
  %t123 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t123, ptr %l50
  br label %bb19
bb19:
  %t124 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t124, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  %t125 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 4
  %t126 = load i64, ptr %t125, !tbaa !24
  store i64 %t126, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t128 = load i64, ptr %l9, !tbaa !24
  %t129 = load i64, ptr %l8, !tbaa !24
  %t132 = icmp sgt i64 %t128, %t129
  br i1 %t132, label %bb20, label %bb21
bb20:
  %t134 = load i64, ptr %l10, !tbaa !24
  %t136 = icmp sgt i64 %t134, 0
  br i1 %t136, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb25
bb22:
  %t138 = load i64, ptr %l9, !tbaa !24
  %t139 = load i64, ptr %l8, !tbaa !24
  %t142 = sub i64 %t138, %t139
  %t143 = load i64, ptr %l10, !tbaa !24
  %t146 = add i64 %t142, %t143
  %t148 = sub i64 %t146, 1
  %t149 = load i64, ptr %l10, !tbaa !24
  %t152 = sdiv i64 %t148, %t149
  store i64 %t152, ptr %l58, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb24
bb24:
  %t154 = load i64, ptr %l58, !tbaa !24
  store i64 %t154, ptr %l55, !tbaa !24
  br label %bb25
bb25:
  %t155 = load i64, ptr %l55, !tbaa !24
  store i64 %t155, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb26
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t156 = load i64, ptr %l12, !tbaa !24
  %t157 = load i64, ptr %l11, !tbaa !24
  %t160 = icmp slt i64 %t156, %t157
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s5)
  br label %bb44
bb28:
  br label %bb29
bb29:
  %t164 = load i64, ptr %l8, !tbaa !24
  %t165 = load i64, ptr %l12, !tbaa !24
  %t166 = load i64, ptr %l10, !tbaa !24
  %t169 = mul i64 %t165, %t166
  %t172 = add i64 %t164, %t169
  store i64 %t172, ptr %l13, !tbaa !24
  %t174 = load i64, ptr %l13, !tbaa !24
  %t176 = icmp sgt i64 %t174, 0
  br i1 %t176, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l6, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d121, i32 0, i32 1) })
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_scope_close(ptr %s6)
  br label %bb33
bb33:
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l79, !tbaa !29
  %t180 = load i64, ptr %l13, !tbaa !24
  %t181 = load ptr, ptr %l1, !tbaa !29
  %t183 = getelementptr %"compiler/bindgen:cFunc", ptr %t181, i32 0, i32 2
  %t184 = load { i64, ptr }, ptr %t183, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t184, 0
  %t189 = icmp slt i64 %t180, %t186
  br i1 %t189, label %bb34, label %bb35
bb34:
  %t191 = load ptr, ptr %l1, !tbaa !29
  %t193 = getelementptr %"compiler/bindgen:cFunc", ptr %t191, i32 0, i32 2
  %t194 = load { i64, ptr }, ptr %t193, !tbaa !27
  store { i64, ptr } %t194, ptr %l87, !tbaa !27
  %t195 = load i64, ptr %l13, !tbaa !24
  %t197 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr { i64, ptr }, ptr %t198, i64 %t195
  %t200 = load { i64, ptr }, ptr %t199, !tbaa !37
  store { i64, ptr } %t200, ptr %l85, !tbaa !27
  br label %bb36
bb35:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d122, i32 0, i32 1) }, ptr %l85, !tbaa !27
  br label %bb36
bb36:
  %t202 = load i64, ptr %l13, !tbaa !24
  %t203 = load ptr, ptr %l79, !tbaa !29
  %t204 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t207 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamName(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t203, { i64, ptr } %t204, i64 %t202, ptr %l7)
  store { i64, ptr } %t207, ptr %l92
  br label %bb37
bb37:
  %t208 = load { i64, ptr }, ptr %l92, !tbaa !27
  store ptr %l6, ptr %l93, !tbaa !29
  store { i64, ptr } %t208, ptr %l94, !tbaa !27
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l96, !tbaa !29
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/bindgen:gen", ptr %t211, i32 0, i32 17
  %t214 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 5
  %t215 = load i64, ptr %t214, !tbaa !24
  %t216 = load i64, ptr %l13, !tbaa !24
  %t219 = add i64 %t215, %t216
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t213, i64 %t219)
  store i64 %t222, ptr %l102
  br label %bb38
bb38:
  %t223 = load ptr, ptr %l96, !tbaa !29
  %t224 = load i64, ptr %l102, !tbaa !24
  %t225 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamType(ptr %v0, ptr %s5, ptr %t223, i64 %t224)
  %t226 = extractvalue { i32, { i64, ptr } } %t225, 1
  %t227 = extractvalue { i32, { i64, ptr } } %t225, 0
  store i32 %t227, ptr %l104
  %t228 = icmp ne i32 %t227, 0
  br i1 %t228, label %bb40, label %ok.229, !prof !99
ok.229:
  store { i64, ptr } %t226, ptr %l103
  br label %bb39
bb39:
  %t230 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t230, ptr %l95, !tbaa !27
  br label %bb41
bb40:
  %t231 = load i32, ptr %l104, !tbaa !23
  %t232 = lshr i32 %t231, 16
  %t233 = and i32 %t231, 65535
  %t234 = icmp eq i32 %t232, 1
  %t235 = select i1 %t234, i32 1, i32 0
  %t236 = icmp eq i32 %t231, 0
  %t237 = shl i32 %t235, 16
  %t238 = or i32 %t237, %t233
  %t239 = select i1 %t236, i32 0, i32 %t238
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t241 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t239, 0
  store { i32, { i64, ptr } } %t241, ptr %rv
  br label %ret
bb41:
  %t242 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = extractvalue { i64, ptr } %t242, 0
  %t245 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t246 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t247 = add i64 %t244, %t246
  %t248 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t249 = extractvalue { i64, ptr } %t248, 1
  %t250 = extractvalue { i64, ptr } %t248, 0
  %t251 = add i64 %t247, %t250
  %t252 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t251)
  call void @olang_textcopy(ptr %t252, ptr %t243, i64 %t244)
  %t253 = getelementptr i8, ptr %t252, i64 %t244
  call void @olang_textcopy(ptr %t253, ptr %t245, i64 %t246)
  %t254 = getelementptr i8, ptr %t253, i64 %t246
  call void @olang_textcopy(ptr %t254, ptr %t249, i64 %t250)
  %t255 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t252, 1
  %t258 = extractvalue { i64, ptr } %t256, 0
  %t259 = extractvalue { i64, ptr } %t256, 1
  %t260 = mul i64 %t258, 1
  %t261 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t260)
  call void @llvm.memcpy.p0.p0.i64(ptr %t261, ptr %t259, i64 %t260, i1 false)
  %t262 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr %t261, 1
  %t264 = load ptr, ptr %l93, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t264, { i64, ptr } %t263)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s5)
  br label %bb43
bb43:
  %t266 = load i64, ptr %l12, !tbaa !24
  %t268 = add i64 %t266, 1
  store i64 %t268, ptr %l12, !tbaa !24
  br label %bb26
bb44:
  %t270 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 1
  %t271 = load { i64, ptr }, ptr %t270, !tbaa !27
  %t273 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t271, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d124, i32 0, i32 1) })
  store i1 %t273, ptr %l111
  br label %bb45
bb45:
  %t274 = load i1, ptr %l111, !tbaa !21
  br i1 %t274, label %bb46, label %bb47
bb46:
  store %olang.scope zeroinitializer, ptr %s9
  store ptr %l6, ptr %l112, !tbaa !29
  %t275 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 4
  %t276 = load i64, ptr %t275, !tbaa !24
  %t278 = icmp sgt i64 %t276, 0
  br i1 %t278, label %bb48, label %bb49
bb47:
  br label %bb52
bb48:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d125, i32 0, i32 1) }, ptr %l115, !tbaa !27
  br label %bb50
bb49:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d126, i32 0, i32 1) }, ptr %l115, !tbaa !27
  br label %bb50
bb50:
  %t280 = load ptr, ptr %l112, !tbaa !29
  %t281 = load { i64, ptr }, ptr %l115, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %t280, { i64, ptr } %t281)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s9)
  br label %bb52
bb52:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) })
  br label %bb53
bb53:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/bindgen:gen", ptr %t283, i32 0, i32 16
  %t286 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 2
  %t287 = load i64, ptr %t286, !tbaa !24
  %t290 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s0, ptr %t285, i64 %t287)
  store %"compiler/bindgen:ctype" %t290, ptr %l120
  br label %bb54
bb54:
  %t291 = getelementptr %"compiler/bindgen:ctype", ptr %l120, i32 0, i32 0
  %t292 = load i32, ptr %t291, !range !{i32 0, i32 7}
  %t294 = trunc i64 0 to i32
  %t295 = icmp eq i32 %t292, %t294
  %t297 = xor i1 %t295, true
  br i1 %t297, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s10
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 2
  %t301 = load i64, ptr %t300, !tbaa !24
  %t304 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2evalueType(ptr %v0, ptr %v0, ptr %t299, i64 %t301, i1 false)
  %t305 = extractvalue { i32, { i64, ptr } } %t304, 1
  %t306 = extractvalue { i32, { i64, ptr } } %t304, 0
  store i32 %t306, ptr %l128
  %t307 = icmp ne i32 %t306, 0
  br i1 %t307, label %bb58, label %ok.308, !prof !99
ok.308:
  store { i64, ptr } %t305, ptr %l127
  br label %bb57
bb56:
  %t309 = load i1, ptr %l3, !tbaa !21
  br i1 %t309, label %bb70, label %bb71
bb57:
  %t311 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t311, ptr %l124, !tbaa !27
  br label %bb59
bb58:
  %t312 = load i32, ptr %l128, !tbaa !23
  %t313 = lshr i32 %t312, 16
  %t314 = and i32 %t312, 65535
  %t315 = icmp eq i32 %t313, 1
  %t316 = select i1 %t315, i32 1, i32 0
  %t317 = icmp eq i32 %t312, 0
  %t318 = shl i32 %t316, 16
  %t319 = or i32 %t318, %t314
  %t320 = select i1 %t317, i32 0, i32 %t319
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t322 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t320, 0
  store { i32, { i64, ptr } } %t322, ptr %rv
  br label %ret
bb59:
  %t323 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t323, ptr %lp15
  %t324 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t325 = load ptr, ptr %lp15
  store { i64, ptr } %t324, ptr %t325, !tbaa !27
  %t326 = load ptr, ptr %lp15
  %t327 = load { i64, ptr }, ptr %t326, !tbaa !27
  %t328 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t329 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t331 = extractvalue { i64, ptr } %t327, 1
  %t332 = extractvalue { i64, ptr } %t327, 0
  %t333 = add i64 %t329, %t332
  %t334 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t333)
  call void @olang_textcopy(ptr %t334, ptr %t328, i64 %t329)
  %t335 = getelementptr i8, ptr %t334, i64 %t329
  call void @olang_textcopy(ptr %t335, ptr %t331, i64 %t332)
  %t336 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t337 = insertvalue { i64, ptr } %t336, ptr %t334, 1
  %t339 = extractvalue { i64, ptr } %t337, 0
  %t340 = extractvalue { i64, ptr } %t337, 1
  %t341 = mul i64 %t339, 1
  %t342 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t341)
  call void @llvm.memcpy.p0.p0.i64(ptr %t342, ptr %t340, i64 %t341, i1 false)
  %t343 = insertvalue { i64, ptr } undef, i64 %t339, 0
  %t344 = insertvalue { i64, ptr } %t343, ptr %t342, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %l6, { i64, ptr } %t344)
  br label %bb60
bb60:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t349 = getelementptr %"compiler/bindgen:gen", ptr %t347, i32 0, i32 16
  %t350 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 2
  %t351 = load i64, ptr %t350, !tbaa !24
  %t354 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s10, ptr %t349, i64 %t351)
  store %"compiler/bindgen:ctype" %t354, ptr %l137
  br label %bb61
bb61:
  %t355 = getelementptr %"compiler/bindgen:ctype", ptr %l137, i32 0, i32 0
  %t356 = load i32, ptr %t355, !range !{i32 0, i32 7}
  %t358 = trunc i64 1 to i32
  %t359 = icmp eq i32 %t356, %t358
  br i1 %t359, label %bb62, label %bb63
bb62:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load %"compiler/bindgen:ctype", ptr %l5
  %t365 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enumbersOnly(ptr %v0, ptr %v0, ptr %t361, %"compiler/bindgen:ctype" %t362)
  store i1 %t365, ptr %l143
  br label %bb64
bb63:
  store i1 false, ptr %l140, !tbaa !21
  br label %bb65
bb64:
  %t366 = load i1, ptr %l143, !tbaa !21
  store i1 %t366, ptr %l140, !tbaa !21
  br label %bb65
bb65:
  %t367 = load i1, ptr %l140, !tbaa !21
  br i1 %t367, label %bb66, label %bb67
bb66:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t370 = getelementptr %"compiler/bindgen:gen", ptr %t368, i32 0, i32 15
  %t371 = load ptr, ptr %l1, !tbaa !29
  %t373 = getelementptr %"compiler/bindgen:cFunc", ptr %t371, i32 0, i32 0
  %t374 = load { i64, ptr }, ptr %t373, !tbaa !27
  %t375 = load ptr, ptr %lp15
  %t376 = load { i64, ptr }, ptr %t375, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v0, ptr %t370, { i64, ptr } %t374, { i64, ptr } %t376)
  br label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s10)
  br label %bb74
bb70:
  store %olang.scope zeroinitializer, ptr %s14
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %l6, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d129, i32 0, i32 1) })
  br label %bb72
bb71:
  br label %bb73
bb72:
  call void @__olang_scope_close(ptr %s14)
  br label %bb73
bb73:
  br label %bb74
bb74:
  %t382 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l6)
  store { i64, ptr } %t382, ptr %l152
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s0)
  %t383 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t384 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t383, 1
  store { i32, { i64, ptr } } %t384, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eintMacros(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/bindgen:cMacro"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l13 = alloca i64
  %l19 = alloca %"compiler/bindgen:cMacro"
  %l21 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l31 = alloca i1
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca i32
  %l45 = alloca i1
  %l47 = alloca i64
  %l49 = alloca i1
  %l51 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/bindgen:gen", ptr %t3, i32 0, i32 12
  store ptr %t5, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l3, !tbaa !24
  store i64 %t7, ptr %l11, !tbaa !24
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l13
  br label %bb3
bb3:
  %t11 = load i64, ptr %l11, !tbaa !24
  %t12 = load i64, ptr %l13, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb5:
  br label %bb6
bb6:
  %t17 = load i64, ptr %l3, !tbaa !24
  store i64 %t17, ptr %l4, !tbaa !24
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store %"compiler/bindgen:cMacro" %t23, ptr %l19
  br label %bb7
bb7:
  %t24 = load %"compiler/bindgen:cMacro", ptr %l19
  store %"compiler/bindgen:cMacro" %t24, ptr %l5
  %t25 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t26, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d130, i32 0, i32 1) })
  store i1 %t28, ptr %l21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l21, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb11
bb10:
  %t30 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 1
  %t31 = load i1, ptr %t30, !tbaa !21
  store i1 %t31, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  %t33 = load i1, ptr %l22, !tbaa !21
  br i1 %t33, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb14
bb13:
  %t34 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 4
  %t35 = load i1, ptr %t34, !tbaa !21
  %t37 = xor i1 %t35, true
  store i1 %t37, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t39 = load i1, ptr %l24, !tbaa !21
  br i1 %t39, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb18
bb16:
  %t40 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t43 = call i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %t41)
  store i1 %t43, ptr %l29
  br label %bb17
bb17:
  %t44 = load i1, ptr %l29, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t47 = load i1, ptr %l27, !tbaa !21
  br i1 %t47, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb21
bb20:
  %t48 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 3
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t53 = icmp eq i64 %t51, 0
  store i1 %t53, ptr %l31, !tbaa !21
  br label %bb21
bb21:
  %t55 = load i1, ptr %l31, !tbaa !21
  br i1 %t55, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb23:
  br label %bb24
bb24:
  %t56 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l35
  br label %bb25
bb25:
  %t57 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l6
  %t58 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %v0, ptr %l6, { i64, ptr } %t59)
  br label %bb26
bb26:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 3
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  %t68 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v0, ptr %s2, ptr %v0, ptr %t62, { i64, ptr } %t64, ptr %l6, i64 0)
  %t69 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t68, 1
  %t70 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t68, 0
  store i32 %t70, ptr %l43
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb28, label %ok.72, !prof !99
ok.72:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l42
  br label %bb27
bb27:
  %t73 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t73, ptr %l38
  br label %bb30
bb28:
  %t74 = load i32, ptr %l43, !tbaa !23
  %t75 = ashr i32 %t74, 16
  %t77 = icmp eq i32 %t75, 1
  store i1 %t77, ptr %l45, !tbaa !21
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb30:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l7
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %l7)
  store i64 %t80, ptr %l47
  br label %bb31
bb31:
  %t81 = load i64, ptr %l47, !tbaa !24
  %t82 = icmp eq i64 %t81, 0
  br i1 %t82, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb35
bb33:
  %t85 = call i64 @compiler_2fbindgen_2ebodyKind(ptr %v0, ptr %l7)
  store i64 %t85, ptr %l51
  br label %bb34
bb34:
  %t86 = load i64, ptr %l51, !tbaa !24
  %t87 = icmp ne i64 %t86, 0
  store i1 %t87, ptr %l49, !tbaa !21
  br label %bb35
bb35:
  %t89 = load i1, ptr %l49, !tbaa !21
  br i1 %t89, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb37:
  br label %bb38
bb38:
  %t90 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l1, i64 %t90)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb40:
  %t93 = load i64, ptr %l3, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l3, !tbaa !24
  br label %bb2
bb41:
  %t97 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
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
  %t26 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s0, ptr %v0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x { i64, ptr }] }>, ptr @.d131, i32 0, i32 1) }, { i64, ptr } %t22)
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
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t22, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d132, i32 0, i32 1) })
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
  %t42 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t40, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d133, i32 0, i32 1) })
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
  %t110 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t112 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t115 = add i64 %t111, %t114
  %t116 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
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
  %t157 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t158 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d137, i32 0, i32 1) })
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
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d138, i32 0, i32 1) }, ptr %l106, !tbaa !27
  br label %bb47
bb46:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d139, i32 0, i32 1) }, ptr %l106, !tbaa !27
  br label %bb47
bb47:
  %t243 = load i64, ptr %l12, !tbaa !24
  %t244 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t244, 1
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t247 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t248 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) })
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s5)
  br label %bb52
bb52:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d142, i32 0, i32 1) })
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
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d143, i32 0, i32 1) }, ptr %l144, !tbaa !27
  br label %bb66
bb65:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d144, i32 0, i32 1) }, ptr %l144, !tbaa !27
  br label %bb66
bb66:
  %t331 = load i64, ptr %l18, !tbaa !24
  %t332 = load i64, ptr %l18, !tbaa !24
  %t333 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t334 = extractvalue { i64, ptr } %t333, 1
  %t335 = extractvalue { i64, ptr } %t333, 0
  %t336 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t337 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t338 = add i64 %t335, %t337
  %t340 = call i64 @__olang_fmt_i64(ptr null, i64 %t331)
  %t341 = add i64 %t338, %t340
  %t342 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t343 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d147, i32 0, i32 1) })
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
  %t382 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t383 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d149, i32 0, i32 1) }, ptr %l167, !tbaa !27
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
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d150, i32 0, i32 1) }, ptr %l172, !tbaa !27
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
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d151, i32 0, i32 1) }, ptr %l174, !tbaa !27
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
  %t446 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t447 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t448 = add i64 %t445, %t447
  %t450 = extractvalue { i64, ptr } %t442, 1
  %t451 = extractvalue { i64, ptr } %t442, 0
  %t452 = add i64 %t448, %t451
  %t453 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t454 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
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

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecord(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %lp4 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l15 = alloca %"compiler/bindgen:record"
  %l17 = alloca %"compiler/bindgen:record"
  %l19 = alloca i64
  %l22 = alloca { i64, ptr }
  %l25 = alloca i1
  %l27 = alloca i1
  %l31 = alloca %"compiler/bindgen:record"
  %l33 = alloca %"compiler/bindgen:record"
  %l35 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l49 = alloca i1
  %l50 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i32
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l71 = alloca { i64, ptr }
  %l74 = alloca i1
  %l76 = alloca i64
  %l79 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l86 = alloca i1
  %l87 = alloca i1
  %l89 = alloca i1
  %l91 = alloca i64
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l104 = alloca ptr
  %l106 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t5 = alloca %"compiler/bindgen:record", align 8
  %t8 = alloca %"compiler/bindgen:record", align 8
  %t51 = alloca %"compiler/bindgen:record", align 8
  %t54 = alloca %"compiler/bindgen:record", align 8
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t5, ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %t5, i64 216, i1 false)
  br label %bb1
bb1:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t8, ptr %s0, ptr %l15)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t8, i64 216, i1 false)
  br label %bb2
bb2:
  %t10 = getelementptr %"compiler/bindgen:record", ptr %l17, i32 0, i32 0
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  %t13 = ptrtoint ptr %v0 to i64
  store i64 %t13, ptr %l19, !tbaa !24
  %t14 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2enameRecord_2elocal_2e4
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = call ptr @__olang_region_make(ptr %v0)
  %t17 = ptrtoint ptr %t16 to i64
  store i64 %t17, ptr %l19, !tbaa !24
  br label %bb4
bb4:
  %t20 = extractvalue { i64, ptr } %a2, 1
  %t21 = extractvalue { i64, ptr } %a2, 0
  %t22 = load i64, ptr %l19
  %t23 = inttoptr i64 %t22 to ptr
  %t24 = call ptr @__olang_scope_alloc(ptr %t23, i64 %t21)
  call void @olang_textcopy(ptr %t24, ptr %t20, i64 %t21)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l22, !tbaa !27
  %t27 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2enameRecord_2elocal_2e4
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load i64, ptr %l19
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = load { i64, ptr }, ptr %l22
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = call ptr @__olang_region_or(ptr %t32, ptr null)
  %t34 = icmp ne ptr %t33, null
  %t35 = select i1 %t34, ptr %t33, ptr null
  %t36 = icmp eq ptr %t35, %t30
  call void @__olang_region_settle(ptr %t30, i1 %t36)
  br label %bb6
bb6:
  %t37 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t37, ptr %lp4
  %t38 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t39 = load ptr, ptr %lp4
  store { i64, ptr } %t38, ptr %t39, !tbaa !27
  %t40 = load ptr, ptr %lp4
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d154, i32 0, i32 1) })
  store i1 %t43, ptr %l25
  br label %bb7
bb7:
  %t44 = load i1, ptr %l25, !tbaa !21
  %t45 = xor i1 %t44, true
  br i1 %t45, label %bb8, label %bb9
bb8:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/bindgen:gen", ptr %t47, i32 0, i32 5
  %t50 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t51, ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t51, i64 216, i1 false)
  br label %bb10
bb9:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb13
bb10:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t54, ptr %s0, ptr %l31)
  call void @llvm.memmove.p0.p0.i64(ptr %l33, ptr %t54, i64 216, i1 false)
  br label %bb11
bb11:
  %t56 = getelementptr %"compiler/bindgen:record", ptr %l33, i32 0, i32 11
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d155, i32 0, i32 1) })
  store i1 %t59, ptr %l35
  br label %bb12
bb12:
  %t60 = load i1, ptr %l35, !tbaa !21
  store i1 %t60, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t61 = load i1, ptr %l27, !tbaa !21
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t62 = load i64, ptr %l1, !tbaa !24
  %t64 = load ptr, ptr %lp4
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 1
  %t68 = extractvalue { i64, ptr } %t65, 0
  %t69 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t67, i64 %t68)
  %t70 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = extractvalue { i64, ptr } %t71, 1
  %t75 = mul i64 %t73, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t75)
  call void @llvm.memcpy.p0.p0.i64(ptr %t76, ptr %t74, i64 %t75, i1 false)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  store { i64, ptr } %t78, ptr %l6, !tbaa !27
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/bindgen:gen", ptr %t80, i32 0, i32 5
  %t86 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t82, i64 %t62)
  store ptr %t86, ptr %l43
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t87 = load ptr, ptr %l43, !tbaa !29
  store ptr %t87, ptr %l44, !tbaa !29
  %t89 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t90 = load ptr, ptr %l44, !tbaa !29
  %t91 = getelementptr %"compiler/bindgen:record", ptr %t90, i32 0, i32 11
  %t92 = load { i64, ptr }, ptr %t91, !tbaa !27
  store { i64, ptr } %t92, ptr %l46, !tbaa !27
  %t94 = load ptr, ptr %l44, !tbaa !29
  %t95 = getelementptr %"compiler/bindgen:record", ptr %t94, i32 0, i32 11
  store { i64, ptr } %t89, ptr %t95, !tbaa !27
  %t96 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e11
  br i1 %t96, label %bb17, label %bb18
bb17:
  %t98 = load { i64, ptr }, ptr %l46
  %t99 = extractvalue { i64, ptr } %t98, 1
  call void @__olang_region_release(ptr %t99)
  store { i64, ptr } zeroinitializer, ptr %l46
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t100 = load ptr, ptr %lp4
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  %t103 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t101, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d156, i32 0, i32 1) })
  store i1 %t103, ptr %l49
  br label %bb20
bb20:
  %t104 = load i1, ptr %l49, !tbaa !21
  br i1 %t104, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s4
  %t105 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t107 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s4, { i64, ptr } %t105, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d157, i32 0, i32 1) })
  %t108 = extractvalue { i32, i64 } %t107, 1
  %t109 = extractvalue { i32, i64 } %t107, 0
  store i32 %t109, ptr %l53
  %t110 = icmp ne i32 %t109, 0
  br i1 %t110, label %bb24, label %ok.111, !prof !99
ok.111:
  store i64 %t108, ptr %l52
  br label %bb23
bb22:
  br label %bb38
bb23:
  %t112 = load i64, ptr %l52, !tbaa !24
  store i64 %t112, ptr %l50, !tbaa !24
  br label %bb26
bb24:
  br label %bb25
bb25:
  store i64 -1, ptr %l50, !tbaa !24
  br label %bb26
bb26:
  %t113 = load i64, ptr %l50, !tbaa !24
  store i64 %t113, ptr %l8, !tbaa !24
  %t114 = load i64, ptr %l8, !tbaa !24
  %t116 = icmp sge i64 %t114, 0
  br i1 %t116, label %bb27, label %bb28
bb27:
  %t118 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t118, ptr %l57, !tbaa !27
  %t119 = load i64, ptr %l8, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l59, !tbaa !24
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t122, 0
  store i64 %t125, ptr %l62, !tbaa !24
  %t126 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 0
  store i64 %t127, ptr %l63, !tbaa !24
  %t128 = load i64, ptr %l59, !tbaa !24
  %t129 = icmp sge i64 %t128, 0
  br i1 %t129, label %bb29, label %bb30
bb28:
  %t131 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 1
  %t134 = extractvalue { i64, ptr } %t131, 0
  %t135 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t134)
  call void @olang_textcopy(ptr %t135, ptr %t133, i64 %t134)
  %t136 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  store { i64, ptr } %t137, ptr %l56, !tbaa !27
  br label %bb35
bb29:
  %t139 = load i64, ptr %l59, !tbaa !24
  %t140 = load i64, ptr %l62, !tbaa !24
  %t141 = icmp sle i64 %t139, %t140
  br i1 %t141, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_7e828aa3d49398bd_dbb08dcf54087001)
  unreachable
bb31:
  %t143 = load i64, ptr %l62, !tbaa !24
  %t144 = load i64, ptr %l63, !tbaa !24
  %t145 = icmp sle i64 %t143, %t144
  br i1 %t145, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_7e828aa3d49398bd_dbb08dcf54087001)
  unreachable
bb33:
  %t147 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = load i64, ptr %l59, !tbaa !24
  %t150 = load i64, ptr %l62, !tbaa !24
  %t151 = getelementptr i8, ptr %t148, i64 %t149
  %t152 = sub i64 %t150, %t149
  %t153 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t151, 1
  %t156 = extractvalue { i64, ptr } %t154, 1
  %t157 = extractvalue { i64, ptr } %t154, 0
  %t158 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t157)
  call void @olang_textcopy(ptr %t158, ptr %t156, i64 %t157)
  %t159 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  store { i64, ptr } %t160, ptr %l56, !tbaa !27
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_7e828aa3d49398bd_dbb08dcf54087001)
  unreachable
bb35:
  %t162 = load ptr, ptr %lp4
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  store { i64, ptr } %t163, ptr %l71, !tbaa !27
  %t164 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t165 = load ptr, ptr %lp4
  store { i64, ptr } %t164, ptr %t165, !tbaa !27
  %t166 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2enameRecord_2elocal_2e4
  br i1 %t166, label %bb36, label %bb37
bb36:
  %t168 = load { i64, ptr }, ptr %l71
  %t169 = extractvalue { i64, ptr } %t168, 1
  call void @__olang_region_release(ptr %t169)
  store { i64, ptr } zeroinitializer, ptr %l71
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s4)
  br label %bb38
bb38:
  %t170 = load ptr, ptr %lp4
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  %t173 = call i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %t171)
  store i1 %t173, ptr %l74
  br label %bb39
bb39:
  %t174 = load i1, ptr %l74, !tbaa !21
  %t175 = xor i1 %t174, true
  br i1 %t175, label %bb40, label %bb41
bb40:
  %t177 = ptrtoint ptr %v0 to i64
  store i64 %t177, ptr %l76, !tbaa !24
  %t178 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2enameRecord_2elocal_2e4
  br i1 %t178, label %bb42, label %bb43
bb41:
  br label %bb48
bb42:
  %t180 = call ptr @__olang_region_make(ptr %v0)
  %t181 = ptrtoint ptr %t180 to i64
  store i64 %t181, ptr %l76, !tbaa !24
  br label %bb43
bb43:
  %t182 = load ptr, ptr %lp4
  %t183 = load { i64, ptr }, ptr %t182, !tbaa !27
  %t184 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t187 = extractvalue { i64, ptr } %t183, 1
  %t188 = extractvalue { i64, ptr } %t183, 0
  %t189 = add i64 %t185, %t188
  %t190 = load i64, ptr %l76
  %t191 = inttoptr i64 %t190 to ptr
  %t192 = call ptr @__olang_scope_alloc(ptr %t191, i64 %t189)
  call void @olang_textcopy(ptr %t192, ptr %t184, i64 %t185)
  %t193 = getelementptr i8, ptr %t192, i64 %t185
  call void @olang_textcopy(ptr %t193, ptr %t187, i64 %t188)
  %t194 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t192, 1
  store { i64, ptr } %t195, ptr %l79, !tbaa !27
  %t196 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2enameRecord_2elocal_2e4
  br i1 %t196, label %bb44, label %bb45
bb44:
  %t198 = load i64, ptr %l76
  %t199 = inttoptr i64 %t198 to ptr
  %t200 = load { i64, ptr }, ptr %l79
  %t201 = extractvalue { i64, ptr } %t200, 1
  %t202 = call ptr @__olang_region_or(ptr %t201, ptr null)
  %t203 = icmp ne ptr %t202, null
  %t204 = select i1 %t203, ptr %t202, ptr null
  %t205 = icmp eq ptr %t204, %t199
  call void @__olang_region_settle(ptr %t199, i1 %t205)
  br label %bb45
bb45:
  %t206 = load ptr, ptr %lp4
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  store { i64, ptr } %t207, ptr %l81, !tbaa !27
  %t208 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t209 = load ptr, ptr %lp4
  store { i64, ptr } %t208, ptr %t209, !tbaa !27
  %t210 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2enameRecord_2elocal_2e4
  br i1 %t210, label %bb46, label %bb47
bb46:
  %t212 = load { i64, ptr }, ptr %l81
  %t213 = extractvalue { i64, ptr } %t212, 1
  call void @__olang_region_release(ptr %t213)
  store { i64, ptr } zeroinitializer, ptr %l81
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/bindgen:gen", ptr %t214, i32 0, i32 21
  %t217 = load ptr, ptr %lp4
  %t218 = load { i64, ptr }, ptr %t217, !tbaa !27
  %t221 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t216, { i64, ptr } %t218)
  store i1 %t221, ptr %l86
  br label %bb50
bb50:
  %t222 = load i1, ptr %l86, !tbaa !21
  br i1 %t222, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb54
bb52:
  %t223 = load ptr, ptr %lp4
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !27
  %t226 = call i1 @compiler_2fbindgen_2epreludeName(ptr %v0, { i64, ptr } %t224)
  store i1 %t226, ptr %l89
  br label %bb53
bb53:
  %t227 = load i1, ptr %l89, !tbaa !21
  store i1 %t227, ptr %l87, !tbaa !21
  br label %bb54
bb54:
  %t228 = load i1, ptr %l87, !tbaa !21
  %t229 = xor i1 %t228, true
  br i1 %t229, label %bb55, label %bb56
bb55:
  br label %bb65
bb56:
  br label %bb57
bb57:
  %t231 = ptrtoint ptr %v0 to i64
  store i64 %t231, ptr %l91, !tbaa !24
  %t232 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2enameRecord_2elocal_2e4
  br i1 %t232, label %bb58, label %bb59
bb58:
  %t234 = call ptr @__olang_region_make(ptr %v0)
  %t235 = ptrtoint ptr %t234 to i64
  store i64 %t235, ptr %l91, !tbaa !24
  br label %bb59
bb59:
  %t236 = load ptr, ptr %lp4
  %t237 = load { i64, ptr }, ptr %t236, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t237, 1
  %t240 = extractvalue { i64, ptr } %t237, 0
  %t241 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t243 = add i64 %t240, %t242
  %t244 = load i64, ptr %l91
  %t245 = inttoptr i64 %t244 to ptr
  %t246 = call ptr @__olang_scope_alloc(ptr %t245, i64 %t243)
  call void @olang_textcopy(ptr %t246, ptr %t239, i64 %t240)
  %t247 = getelementptr i8, ptr %t246, i64 %t240
  call void @olang_textcopy(ptr %t247, ptr %t241, i64 %t242)
  %t248 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t246, 1
  store { i64, ptr } %t249, ptr %l94, !tbaa !27
  %t250 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2enameRecord_2elocal_2e4
  br i1 %t250, label %bb60, label %bb61
bb60:
  %t252 = load i64, ptr %l91
  %t253 = inttoptr i64 %t252 to ptr
  %t254 = load { i64, ptr }, ptr %l94
  %t255 = extractvalue { i64, ptr } %t254, 1
  %t256 = call ptr @__olang_region_or(ptr %t255, ptr null)
  %t257 = icmp ne ptr %t256, null
  %t258 = select i1 %t257, ptr %t256, ptr null
  %t259 = icmp eq ptr %t258, %t253
  call void @__olang_region_settle(ptr %t253, i1 %t259)
  br label %bb61
bb61:
  %t260 = load ptr, ptr %lp4
  %t261 = load { i64, ptr }, ptr %t260, !tbaa !27
  store { i64, ptr } %t261, ptr %l96, !tbaa !27
  %t262 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t263 = load ptr, ptr %lp4
  store { i64, ptr } %t262, ptr %t263, !tbaa !27
  %t264 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2enameRecord_2elocal_2e4
  br i1 %t264, label %bb62, label %bb63
bb62:
  %t266 = load { i64, ptr }, ptr %l96
  %t267 = extractvalue { i64, ptr } %t266, 1
  call void @__olang_region_release(ptr %t267)
  store { i64, ptr } zeroinitializer, ptr %l96
  br label %bb63
bb63:
  br label %bb64
bb64:
  br label %bb49
bb65:
  %t268 = load i64, ptr %l1, !tbaa !24
  %t270 = load ptr, ptr %lp4
  %t271 = load { i64, ptr }, ptr %t270, !tbaa !27
  store { i64, ptr } %t271, ptr %l10, !tbaa !27
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/bindgen:gen", ptr %t273, i32 0, i32 5
  %t279 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t275, i64 %t268)
  store ptr %t279, ptr %l103
  br label %bb66
bb66:
  %t280 = load ptr, ptr %l103, !tbaa !29
  store ptr %t280, ptr %l104, !tbaa !29
  %t282 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t283 = load ptr, ptr %l104, !tbaa !29
  %t284 = getelementptr %"compiler/bindgen:record", ptr %t283, i32 0, i32 7
  %t285 = load { i64, ptr }, ptr %t284, !tbaa !27
  store { i64, ptr } %t285, ptr %l106, !tbaa !27
  %t287 = load ptr, ptr %l104, !tbaa !29
  %t288 = getelementptr %"compiler/bindgen:record", ptr %t287, i32 0, i32 7
  store { i64, ptr } %t282, ptr %t288, !tbaa !27
  %t289 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e7
  br i1 %t289, label %bb67, label %bb68
bb67:
  %t291 = load { i64, ptr }, ptr %l106
  %t292 = extractvalue { i64, ptr } %t291, 1
  call void @__olang_region_release(ptr %t292)
  store { i64, ptr } zeroinitializer, ptr %l106
  br label %bb68
bb68:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/bindgen:gen", ptr %t293, i32 0, i32 21
  %t296 = load ptr, ptr %lp4
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t295, { i64, ptr } %t297, i64 0)
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enamedConst(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l5 = alloca i1
  %l7 = alloca i1
  %l12 = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @compiler_2fbindgen_2eusable(ptr %v1, { i64, ptr } %t1)
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/bindgen:gen", ptr %t9, i32 0, i32 10
  %t15 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %t11, { i64, ptr } %t7)
  store i1 %t15, ptr %l12
  br label %bb4
bb4:
  %t16 = load i1, ptr %l12, !tbaa !21
  store i1 %t16, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l7, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/bindgen:gen", ptr %t18, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v2, ptr %t20, { i64, ptr } %a2)
  br label %bb9
bb9:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/bindgen:gen", ptr %t24, i32 0, i32 10
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %t26, { i64, ptr } %t27, i64 0)
  br label %bb10
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/bindgen:gen", ptr %t30, i32 0, i32 21
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %t32, { i64, ptr } %t33, i64 0)
  br label %bb11
bb11:
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

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enumType(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i64
  %l11 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i64
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i32
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l30 = alloca i1
  %l33 = alloca i64
  %l35 = alloca i1
  %l38 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i64
  %l45 = alloca i1
  %l48 = alloca i64
  %l50 = alloca i1
  %l53 = alloca i64
  %l55 = alloca i1
  %l57 = alloca i64
  %l61 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i32
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca i32
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca ptr
  %l75 = alloca i32
  %l77 = alloca { i64, ptr }
  %l78 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d160, i32 0, i32 1) })
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t5, i32 0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d161, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t8, ptr %l9
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load i64, ptr %l9, !tbaa !24
  store i64 %t9, ptr %rv
  br label %ret
bb5:
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d162, i32 0, i32 1) })
  store i1 %t12, ptr %l11
  br label %bb6
bb6:
  %t13 = load i1, ptr %l11, !tbaa !21
  br i1 %t13, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb10
bb8:
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t14, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d163, i32 0, i32 1) })
  store i1 %t16, ptr %l14
  br label %bb9
bb9:
  %t17 = load i1, ptr %l14, !tbaa !21
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb10
bb10:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb11, label %bb12
bb11:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t22 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t19, i32 1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d164, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t22, ptr %l17
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t23 = load i64, ptr %l17, !tbaa !24
  store i64 %t23, ptr %rv
  br label %ret
bb14:
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t26 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t24, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d165, i32 0, i32 1) })
  store i1 %t26, ptr %l19
  br label %bb15
bb15:
  %t27 = load i1, ptr %l19, !tbaa !21
  br i1 %t27, label %bb16, label %bb17
bb16:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l20, !tbaa !29
  store i32 1, ptr %l21
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = icmp eq i64 %t29, 1
  br i1 %t31, label %bb18, label %bb19
bb17:
  br label %bb25
bb18:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d166, i32 0, i32 1) }, ptr %l24, !tbaa !27
  br label %bb23
bb19:
  %t33 = load i64, ptr %l2, !tbaa !24
  %t35 = icmp eq i64 %t33, 2
  br i1 %t35, label %bb20, label %bb21
bb20:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d167, i32 0, i32 1) }, ptr %l27, !tbaa !27
  br label %bb22
bb21:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d168, i32 0, i32 1) }, ptr %l27, !tbaa !27
  br label %bb22
bb22:
  %t37 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t37, ptr %l24, !tbaa !27
  br label %bb23
bb23:
  %t38 = load ptr, ptr %l20, !tbaa !29
  %t39 = load i32, ptr %l21, !range !{i32 0, i32 7}
  %t40 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t41 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t38, i32 %t39, { i64, ptr } %t40, i64 -1, i1 false, i64 0)
  store i64 %t41, ptr %l28
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t42 = load i64, ptr %l28, !tbaa !24
  store i64 %t42, ptr %rv
  br label %ret
bb25:
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t45 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t43, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d169, i32 0, i32 1) })
  store i1 %t45, ptr %l30
  br label %bb26
bb26:
  %t46 = load i1, ptr %l30, !tbaa !21
  br i1 %t46, label %bb27, label %bb28
bb27:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t50 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t47, i32 1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d170, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t50, ptr %l33
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t51 = load i64, ptr %l33, !tbaa !24
  store i64 %t51, ptr %rv
  br label %ret
bb30:
  %t52 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d171, i32 0, i32 1) })
  store i1 %t54, ptr %l35
  br label %bb31
bb31:
  %t55 = load i1, ptr %l35, !tbaa !21
  br i1 %t55, label %bb32, label %bb33
bb32:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb34, label %bb35
bb33:
  br label %bb39
bb34:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t60, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d172, i32 0, i32 1) })
  store i64 %t62, ptr %l40
  br label %bb36
bb35:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t66 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t63, i32 1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d173, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t66, ptr %l43
  br label %bb37
bb36:
  %t67 = load i64, ptr %l40, !tbaa !24
  store i64 %t67, ptr %l38, !tbaa !24
  br label %bb38
bb37:
  %t68 = load i64, ptr %l43, !tbaa !24
  store i64 %t68, ptr %l38, !tbaa !24
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t69 = load i64, ptr %l38, !tbaa !24
  store i64 %t69, ptr %rv
  br label %ret
bb39:
  %t70 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t70, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d174, i32 0, i32 1) })
  store i1 %t72, ptr %l45
  br label %bb40
bb40:
  %t73 = load i1, ptr %l45, !tbaa !21
  br i1 %t73, label %bb41, label %bb42
bb41:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t77 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t74, i32 1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d175, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t77, ptr %l48
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_scope_close(ptr %s0)
  %t78 = load i64, ptr %l48, !tbaa !24
  store i64 %t78, ptr %rv
  br label %ret
bb44:
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t81 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t79, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d176, i32 0, i32 1) })
  store i1 %t81, ptr %l50
  br label %bb45
bb45:
  %t82 = load i1, ptr %l50, !tbaa !21
  br i1 %t82, label %bb46, label %bb47
bb46:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t86 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t83, i32 1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d177, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t86, ptr %l53
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  %t87 = load i64, ptr %l53, !tbaa !24
  store i64 %t87, ptr %rv
  br label %ret
bb49:
  %t88 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t90 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t88, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d178, i32 0, i32 1) })
  store i1 %t90, ptr %l55
  br label %bb50
bb50:
  %t91 = load i1, ptr %l55, !tbaa !21
  br i1 %t91, label %bb51, label %bb52
bb51:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t92, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d179, i32 0, i32 1) })
  store i64 %t94, ptr %l57
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t95 = load i64, ptr %l57, !tbaa !24
  store i64 %t95, ptr %rv
  br label %ret
bb54:
  %t96 = load i64, ptr %l2, !tbaa !24
  %t98 = icmp eq i64 %t96, 2
  store i1 %t98, ptr %l4, !tbaa !21
  %t100 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t102 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t100, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d180, i32 0, i32 1) })
  store i1 %t102, ptr %l61
  br label %bb55
bb55:
  %t103 = load i1, ptr %l61, !tbaa !21
  br i1 %t103, label %bb56, label %bb57
bb56:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l62, !tbaa !29
  store i32 1, ptr %l63
  %t105 = load i1, ptr %l4, !tbaa !21
  br i1 %t105, label %bb58, label %bb59
bb57:
  br label %bb62
bb58:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d181, i32 0, i32 1) }, ptr %l65, !tbaa !27
  br label %bb60
bb59:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d182, i32 0, i32 1) }, ptr %l65, !tbaa !27
  br label %bb60
bb60:
  %t107 = load ptr, ptr %l62, !tbaa !29
  %t108 = load i32, ptr %l63, !range !{i32 0, i32 7}
  %t109 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t110 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t107, i32 %t108, { i64, ptr } %t109, i64 -1, i1 false, i64 0)
  store i64 %t110, ptr %l66
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  %t111 = load i64, ptr %l66, !tbaa !24
  store i64 %t111, ptr %rv
  br label %ret
bb62:
  %t112 = load i64, ptr %l3, !tbaa !24
  %t114 = icmp sgt i64 %t112, 0
  br i1 %t114, label %bb63, label %bb64
bb63:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l69, !tbaa !29
  store i32 1, ptr %l70
  %t117 = load i1, ptr %l4, !tbaa !21
  br i1 %t117, label %bb65, label %bb66
bb64:
  br label %bb69
bb65:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d183, i32 0, i32 1) }, ptr %l72, !tbaa !27
  br label %bb67
bb66:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d184, i32 0, i32 1) }, ptr %l72, !tbaa !27
  br label %bb67
bb67:
  %t119 = load ptr, ptr %l69, !tbaa !29
  %t120 = load i32, ptr %l70, !range !{i32 0, i32 7}
  %t121 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t122 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t119, i32 %t120, { i64, ptr } %t121, i64 -1, i1 false, i64 0)
  store i64 %t122, ptr %l73
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s0)
  %t123 = load i64, ptr %l73, !tbaa !24
  store i64 %t123, ptr %rv
  br label %ret
bb69:
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l74, !tbaa !29
  store i32 1, ptr %l75
  %t125 = load i1, ptr %l4, !tbaa !21
  br i1 %t125, label %bb70, label %bb71
bb70:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d185, i32 0, i32 1) }, ptr %l77, !tbaa !27
  br label %bb72
bb71:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d186, i32 0, i32 1) }, ptr %l77, !tbaa !27
  br label %bb72
bb72:
  %t127 = load ptr, ptr %l74, !tbaa !29
  %t128 = load i32, ptr %l75, !range !{i32 0, i32 7}
  %t129 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t130 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t127, i32 %t128, { i64, ptr } %t129, i64 -1, i1 false, i64 0)
  store i64 %t130, ptr %l78
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s0)
  %t131 = load i64, ptr %l78, !tbaa !24
  store i64 %t131, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enumbersOnly(ptr %v0, ptr %v1, ptr %a0, %"compiler/bindgen:ctype" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/bindgen:ctype"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i1
  %l15 = alloca i64
  %l18 = alloca i64
  %l37 = alloca ptr
  %l43 = alloca i64
  %l44 = alloca %"compiler/bindgen:ctype"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/bindgen:ctype" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/bindgen:ctype", ptr %l1, i32 0, i32 1
  %t2 = load { i64, ptr }, ptr %t1, !tbaa !27
  %t4 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t2, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d187, i32 0, i32 1) })
  store i1 %t4, ptr %l9
  br label %bb1
bb1:
  %t5 = load i1, ptr %l9, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l2, !tbaa !24
  %t7 = getelementptr %"compiler/bindgen:ctype", ptr %l1, i32 0, i32 4
  %t8 = load i64, ptr %t7, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sgt i64 %t10, %t11
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb10
bb7:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t20, %t21
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = add i64 %t24, %t25
  %t30 = sub i64 %t28, 1
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = sdiv i64 %t30, %t31
  store i64 %t34, ptr %l18, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb9
bb9:
  %t36 = load i64, ptr %l18, !tbaa !24
  store i64 %t36, ptr %l15, !tbaa !24
  br label %bb10
bb10:
  %t37 = load i64, ptr %l15, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = mul i64 %t47, %t48
  %t54 = add i64 %t46, %t51
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/bindgen:gen", ptr %t56, i32 0, i32 16
  store ptr %t58, ptr %l37, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/bindgen:gen", ptr %t59, i32 0, i32 17
  %t62 = getelementptr %"compiler/bindgen:ctype", ptr %l1, i32 0, i32 5
  %t63 = load i64, ptr %t62, !tbaa !24
  %t67 = add i64 %t63, %t54
  %t70 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t61, i64 %t67)
  store i64 %t70, ptr %l43
  br label %bb15
bb15:
  %t71 = load ptr, ptr %l37, !tbaa !29
  %t72 = load i64, ptr %l43, !tbaa !24
  %t73 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s3, ptr %t71, i64 %t72)
  store %"compiler/bindgen:ctype" %t73, ptr %l44
  br label %bb16
bb16:
  %t74 = getelementptr %"compiler/bindgen:ctype", ptr %l44, i32 0, i32 0
  %t75 = load i32, ptr %t74, !range !{i32 0, i32 7}
  %t77 = trunc i64 1 to i32
  %t78 = icmp eq i32 %t75, %t77
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l6, !tbaa !24
  br label %bb11
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eotherConsts(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/bindgen:cMacro"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"compiler/bindgen:cparse"
  %l11 = alloca %"compiler/bindgen:cx"
  %l12 = alloca i1
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca %"compiler/bindgen:cMacro"
  %l24 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
  %l34 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l45 = alloca i1
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca i32
  %l59 = alloca i1
  %l65 = alloca i64
  %l69 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l72 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca { i64, ptr }
  %l77 = alloca i64
  %l85 = alloca i64
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l94 = alloca %"compiler/bindgen:cparse"
  %l95 = alloca %"compiler/bindgen:cx"
  %l98 = alloca %"compiler/bindgen:cx"
  %l99 = alloca i32
  %l101 = alloca i1
  %l106 = alloca i64
  %l108 = alloca i64
  %l110 = alloca i1
  %l115 = alloca i64
  %l117 = alloca i1
  %l119 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l122 = alloca i1
  %l123 = alloca i1
  %l125 = alloca i64
  %l127 = alloca i1
  %l129 = alloca { i64, ptr }
  %l130 = alloca i1
  %l131 = alloca i1
  %l133 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l136 = alloca i1
  %l137 = alloca ptr
  %l138 = alloca { i64, ptr }
  %l139 = alloca i64
  %l141 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
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
  store i64 %t5, ptr %l15, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l17
  br label %bb2
bb2:
  %t9 = load i64, ptr %l15, !tbaa !24
  %t10 = load i64, ptr %l17, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb108
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/bindgen:cMacro" %t19, ptr %l22
  br label %bb6
bb6:
  %t20 = load %"compiler/bindgen:cMacro", ptr %l22
  store %"compiler/bindgen:cMacro" %t20, ptr %l3
  %t21 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t22, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d188, i32 0, i32 1) })
  store i1 %t24, ptr %l24
  br label %bb7
bb7:
  %t25 = load i1, ptr %l24, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb10
bb9:
  %t26 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 1
  %t27 = load i1, ptr %t26, !tbaa !21
  store i1 %t27, ptr %l25, !tbaa !21
  br label %bb10
bb10:
  %t29 = load i1, ptr %l25, !tbaa !21
  br i1 %t29, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb13
bb12:
  %t30 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 4
  %t31 = load i1, ptr %t30, !tbaa !21
  %t33 = xor i1 %t31, true
  store i1 %t33, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t35 = load i1, ptr %l27, !tbaa !21
  br i1 %t35, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb17
bb15:
  %t36 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t39 = call i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %t37)
  store i1 %t39, ptr %l32
  br label %bb16
bb16:
  %t40 = load i1, ptr %l32, !tbaa !21
  %t41 = xor i1 %t40, true
  store i1 %t41, ptr %l30, !tbaa !21
  br label %bb17
bb17:
  %t43 = load i1, ptr %l30, !tbaa !21
  br i1 %t43, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb21
bb19:
  %t44 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/bindgen:gen", ptr %t47, i32 0, i32 10
  %t53 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t49, { i64, ptr } %t45)
  store i1 %t53, ptr %l39
  br label %bb20
bb20:
  %t54 = load i1, ptr %l39, !tbaa !21
  store i1 %t54, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t55 = load i1, ptr %l34, !tbaa !21
  br i1 %t55, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb25
bb23:
  %t56 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/bindgen:gen", ptr %t59, i32 0, i32 21
  %t65 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t61, { i64, ptr } %t57)
  store i1 %t65, ptr %l45
  br label %bb24
bb24:
  %t66 = load i1, ptr %l45, !tbaa !21
  store i1 %t66, ptr %l40, !tbaa !21
  br label %bb25
bb25:
  %t67 = load i1, ptr %l40, !tbaa !21
  br i1 %t67, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb107
bb27:
  br label %bb28
bb28:
  %t68 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 3
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t73 = icmp eq i64 %t71, 0
  br i1 %t73, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb107
bb30:
  br label %bb31
bb31:
  %t75 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %l49
  br label %bb32
bb32:
  %t76 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l6
  %t77 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %v0, ptr %l6, { i64, ptr } %t78)
  br label %bb33
bb33:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 3
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  %t87 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v0, ptr %s2, ptr %v0, ptr %t81, { i64, ptr } %t83, ptr %l6, i64 0)
  %t88 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t87, 1
  %t89 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t87, 0
  store i32 %t89, ptr %l57
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb35, label %ok.91, !prof !99
ok.91:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l56
  br label %bb34
bb34:
  %t92 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l52
  br label %bb38
bb35:
  %t93 = load i32, ptr %l57, !tbaa !23
  %t94 = ashr i32 %t93, 16
  %t96 = icmp eq i32 %t94, 1
  store i1 %t96, ptr %l59, !tbaa !21
  br label %bb36
bb36:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/bindgen:gen", ptr %t100, i32 0, i32 25
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v0, ptr %v0, ptr %t97, { i64, ptr } %t99, { i64, ptr } %t103)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s2)
  br label %bb107
bb38:
  %t107 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l7
  %t109 = call i64 @compiler_2fbindgen_2ebodyKind(ptr %v0, ptr %l7)
  store i64 %t109, ptr %l65
  br label %bb39
bb39:
  %t110 = load i64, ptr %l65, !tbaa !24
  store i64 %t110, ptr %l8, !tbaa !24
  %t111 = load i64, ptr %l8, !tbaa !24
  %t113 = icmp eq i64 %t111, 2
  br i1 %t113, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s6
  %t116 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v0, ptr %l7)
  store { i64, ptr } %t116, ptr %l69
  br label %bb42
bb41:
  br label %bb52
bb42:
  %t117 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t118 = call { i64, ptr } @compiler_2fbindgen_2etextLiteral(ptr %v0, ptr %s6, { i64, ptr } %t117)
  store { i64, ptr } %t118, ptr %l70
  br label %bb43
bb43:
  %t119 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t119, ptr %l9, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t122 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s6, { i64, ptr } %t120, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d189, i32 0, i32 1) })
  store i1 %t122, ptr %l72
  br label %bb44
bb44:
  %t123 = load i1, ptr %l72, !tbaa !21
  br i1 %t123, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s7
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v0, ptr %s7, ptr %t124, { i64, ptr } %t126, { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d190, i32 0, i32 1) })
  br label %bb47
bb46:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l75, !tbaa !29
  %t130 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  store { i64, ptr } %t131, ptr %l76, !tbaa !27
  %t132 = ptrtoint ptr %v0 to i64
  store i64 %t132, ptr %l77, !tbaa !24
  %t133 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t133, label %bb48, label %bb49
bb47:
  call void @__olang_scope_close(ptr %s7)
  br label %bb51
bb48:
  %t135 = call ptr @__olang_region_make(ptr %v0)
  %t136 = ptrtoint ptr %t135 to i64
  store i64 %t136, ptr %l77, !tbaa !24
  br label %bb49
bb49:
  %t137 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  %t139 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t138, 1
  %t142 = extractvalue { i64, ptr } %t138, 0
  %t143 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  %t145 = add i64 %t142, %t144
  %t147 = extractvalue { i64, ptr } %t139, 1
  %t148 = extractvalue { i64, ptr } %t139, 0
  %t149 = add i64 %t145, %t148
  %t150 = load i64, ptr %l77
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = call ptr @__olang_scope_alloc(ptr %t151, i64 %t149)
  call void @olang_textcopy(ptr %t152, ptr %t141, i64 %t142)
  %t153 = getelementptr i8, ptr %t152, i64 %t142
  call void @olang_textcopy(ptr %t153, ptr %t143, i64 %t144)
  %t154 = getelementptr i8, ptr %t153, i64 %t144
  call void @olang_textcopy(ptr %t154, ptr %t147, i64 %t148)
  %t155 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t152, 1
  %t158 = load i64, ptr %l77
  %t159 = inttoptr i64 %t158 to ptr
  %t160 = extractvalue { i64, ptr } %t156, 0
  %t161 = extractvalue { i64, ptr } %t156, 1
  %t162 = mul i64 %t160, 1
  %t163 = call ptr @__olang_scope_alloc(ptr %t159, i64 %t162)
  call void @llvm.memcpy.p0.p0.i64(ptr %t163, ptr %t161, i64 %t162, i1 false)
  %t164 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  %t166 = load ptr, ptr %l75, !tbaa !29
  %t167 = load { i64, ptr }, ptr %l76, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enamedConst(ptr %v0, ptr %v0, ptr %v0, ptr %t166, { i64, ptr } %t167, { i64, ptr } %t165)
  br label %bb50
bb50:
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s2)
  br label %bb107
bb52:
  %t169 = load i64, ptr %l8, !tbaa !24
  %t171 = icmp eq i64 %t169, 1
  br i1 %t171, label %bb53, label %bb54
bb53:
  store %olang.scope zeroinitializer, ptr %s10
  %t173 = ptrtoint ptr %v0 to i64
  store i64 %t173, ptr %l85, !tbaa !24
  %t174 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acparse_2e0
  br i1 %t174, label %bb55, label %bb56
bb54:
  br label %bb105
bb55:
  %t176 = call ptr @__olang_region_make(ptr %v0)
  %t177 = ptrtoint ptr %t176 to i64
  store i64 %t177, ptr %l85, !tbaa !24
  br label %bb56
bb56:
  %t178 = load i64, ptr %l85
  %t179 = inttoptr i64 %t178 to ptr
  %t181 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %t179, ptr %l7)
  store { i64, ptr } %t181, ptr %l88
  br label %bb57
bb57:
  %t182 = ptrtoint ptr %s10 to i64
  store i64 %t182, ptr %l89, !tbaa !24
  %t183 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acparse_2e1
  br i1 %t183, label %bb58, label %bb59
bb58:
  %t185 = call ptr @__olang_region_make(ptr %s10)
  %t186 = ptrtoint ptr %t185 to i64
  store i64 %t186, ptr %l89, !tbaa !24
  br label %bb59
bb59:
  %t187 = icmp sge i64 0, 0
  br i1 %t187, label %bb60, label %bb61
bb60:
  %t189 = icmp sle i64 0, 576460752303423487
  br i1 %t189, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_588cbeac7c6acbe1_e04f9e86f435a7f5)
  unreachable
bb62:
  %t191 = mul i64 0, 16
  %t192 = load i64, ptr %l89
  %t193 = inttoptr i64 %t192 to ptr
  %t194 = insertvalue { i64, ptr } undef, i64 0, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t196 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t198 = call %"compiler/bindgen:cparse" @compiler_2fbindgen_3acparse_2ector(ptr %v0, ptr %s10, ptr %s10, { i64, ptr } %t196, { i64, ptr } %t195)
  store %"compiler/bindgen:cparse" %t198, ptr %l94
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_588cbeac7c6acbe1_e04f9e86f435a7f5)
  unreachable
bb64:
  %t199 = load %"compiler/bindgen:cparse", ptr %l94
  store %"compiler/bindgen:cparse" %t199, ptr %l10
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t203 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %s10, ptr %s10, ptr %t200, ptr %l10)
  %t204 = extractvalue { i32, %"compiler/bindgen:cx" } %t203, 1
  %t205 = extractvalue { i32, %"compiler/bindgen:cx" } %t203, 0
  store i32 %t205, ptr %l99
  %t206 = icmp ne i32 %t205, 0
  br i1 %t206, label %bb66, label %ok.207, !prof !99
ok.207:
  store %"compiler/bindgen:cx" %t204, ptr %l98
  br label %bb65
bb65:
  %t208 = load %"compiler/bindgen:cx", ptr %l98
  store %"compiler/bindgen:cx" %t208, ptr %l95
  br label %bb69
bb66:
  %t209 = load i32, ptr %l99, !tbaa !23
  %t210 = ashr i32 %t209, 16
  %t212 = icmp eq i32 %t210, 1
  store i1 %t212, ptr %l101, !tbaa !21
  br label %bb67
bb67:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t215 = load { i64, ptr }, ptr %t214, !tbaa !27
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/bindgen:gen", ptr %t216, i32 0, i32 25
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v0, ptr %v0, ptr %t213, { i64, ptr } %t215, { i64, ptr } %t219)
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s2)
  br label %bb107
bb69:
  %t223 = load %"compiler/bindgen:cx", ptr %l95
  store %"compiler/bindgen:cx" %t223, ptr %l11
  %t224 = getelementptr %"compiler/bindgen:cparse", ptr %l10, i32 0, i32 2
  %t225 = load i64, ptr %t224, !tbaa !24
  store i64 %t225, ptr %l106, !tbaa !24
  %t227 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %l7)
  store i64 %t227, ptr %l108
  br label %bb70
bb70:
  %t228 = load i64, ptr %l106, !tbaa !24
  %t229 = load i64, ptr %l108, !tbaa !24
  %t230 = icmp eq i64 %t228, %t229
  br i1 %t230, label %bb71, label %bb72
bb71:
  %t232 = getelementptr %"compiler/bindgen:cx", ptr %l11, i32 0, i32 1
  %t233 = load i64, ptr %t232, !tbaa !24
  %t234 = load i64, ptr @G_2ecompiler_2fbindgen_2eKFloat, !tbaa !24
  %t237 = icmp eq i64 %t233, %t234
  store i1 %t237, ptr %l110, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb73
bb73:
  %t239 = load i1, ptr %l110, !tbaa !21
  br i1 %t239, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s12
  %t241 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %l7)
  store i64 %t241, ptr %l115
  br label %bb76
bb75:
  br label %bb104
bb76:
  %t242 = load i64, ptr %l115, !tbaa !24
  %t243 = icmp eq i64 %t242, 1
  br i1 %t243, label %bb77, label %bb78
bb77:
  %t246 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %l7, i64 0)
  store { i64, ptr } %t246, ptr %l119
  br label %bb79
bb78:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb82
bb79:
  %t247 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t248 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %s12, { i64, ptr } %t247)
  store { i64, ptr } %t248, ptr %l120
  br label %bb80
bb80:
  %t249 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t249, 0
  %t251 = extractvalue { i64, ptr } %t249, 1
  %t252 = mul i64 %t250, 1
  %t253 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t252)
  call void @llvm.memcpy.p0.p0.i64(ptr %t253, ptr %t251, i64 %t252, i1 false)
  %t254 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t253, 1
  %t257 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s12, ptr %s12, { i64, ptr } %t255, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d192, i32 0, i32 1) })
  store i1 %t257, ptr %l122
  br label %bb81
bb81:
  %t258 = load i1, ptr %l122, !tbaa !21
  store i1 %t258, ptr %l117, !tbaa !21
  br label %bb82
bb82:
  %t259 = load i1, ptr %l117, !tbaa !21
  br i1 %t259, label %bb83, label %bb84
bb83:
  store i1 true, ptr %l123, !tbaa !21
  br label %bb97
bb84:
  %t261 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %l7)
  store i64 %t261, ptr %l125
  br label %bb85
bb85:
  %t262 = load i64, ptr %l125, !tbaa !24
  %t263 = icmp eq i64 %t262, 3
  br i1 %t263, label %bb86, label %bb87
bb86:
  %t266 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %l7, i64 0)
  store { i64, ptr } %t266, ptr %l129
  br label %bb88
bb87:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb90
bb88:
  %t267 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t268 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s12, { i64, ptr } %t267, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d193, i32 0, i32 1) })
  store i1 %t268, ptr %l130
  br label %bb89
bb89:
  %t269 = load i1, ptr %l130, !tbaa !21
  store i1 %t269, ptr %l127, !tbaa !21
  br label %bb90
bb90:
  %t270 = load i1, ptr %l127, !tbaa !21
  br i1 %t270, label %bb91, label %bb92
bb91:
  %t272 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %l7, i64 1)
  store { i64, ptr } %t272, ptr %l133
  br label %bb93
bb92:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb96
bb93:
  %t273 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t274 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %s12, { i64, ptr } %t273)
  store { i64, ptr } %t274, ptr %l134
  br label %bb94
bb94:
  %t275 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t275, 0
  %t277 = extractvalue { i64, ptr } %t275, 1
  %t278 = mul i64 %t276, 1
  %t279 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t278)
  call void @llvm.memcpy.p0.p0.i64(ptr %t279, ptr %t277, i64 %t278, i1 false)
  %t280 = insertvalue { i64, ptr } undef, i64 %t276, 0
  %t281 = insertvalue { i64, ptr } %t280, ptr %t279, 1
  %t283 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s12, ptr %s12, { i64, ptr } %t281, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d194, i32 0, i32 1) })
  store i1 %t283, ptr %l136
  br label %bb95
bb95:
  %t284 = load i1, ptr %l136, !tbaa !21
  store i1 %t284, ptr %l131, !tbaa !21
  br label %bb96
bb96:
  %t285 = load i1, ptr %l131, !tbaa !21
  store i1 %t285, ptr %l123, !tbaa !21
  br label %bb97
bb97:
  %t286 = load i1, ptr %l123, !tbaa !21
  store i1 %t286, ptr %l12, !tbaa !21
  %t287 = load ptr, ptr %l0, !tbaa !29
  store ptr %t287, ptr %l137, !tbaa !29
  %t288 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !27
  store { i64, ptr } %t289, ptr %l138, !tbaa !27
  %t290 = ptrtoint ptr %v0 to i64
  store i64 %t290, ptr %l139, !tbaa !24
  %t291 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t291, label %bb98, label %bb99
bb98:
  %t293 = call ptr @__olang_region_make(ptr %v0)
  %t294 = ptrtoint ptr %t293 to i64
  store i64 %t294, ptr %l139, !tbaa !24
  br label %bb99
bb99:
  %t295 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t296 = load { i64, ptr }, ptr %t295, !tbaa !27
  store { i64, ptr } %t296, ptr %l141, !tbaa !27
  %t297 = load i1, ptr %l12, !tbaa !21
  br i1 %t297, label %bb100, label %bb101
bb100:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d195, i32 0, i32 1) }, ptr %l143, !tbaa !27
  br label %bb102
bb101:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d196, i32 0, i32 1) }, ptr %l143, !tbaa !27
  br label %bb102
bb102:
  %t299 = getelementptr %"compiler/bindgen:cx", ptr %l11, i32 0, i32 0
  %t300 = load { i64, ptr }, ptr %t299, !tbaa !27
  %t301 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t301, 1
  %t303 = extractvalue { i64, ptr } %t301, 0
  %t304 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t305 = extractvalue { i64, ptr } %t304, 1
  %t306 = extractvalue { i64, ptr } %t304, 0
  %t307 = add i64 %t303, %t306
  %t309 = extractvalue { i64, ptr } %t300, 1
  %t310 = extractvalue { i64, ptr } %t300, 0
  %t311 = add i64 %t307, %t310
  %t312 = load i64, ptr %l139
  %t313 = inttoptr i64 %t312 to ptr
  %t314 = call ptr @__olang_scope_alloc(ptr %t313, i64 %t311)
  call void @olang_textcopy(ptr %t314, ptr %t302, i64 %t303)
  %t315 = getelementptr i8, ptr %t314, i64 %t303
  call void @olang_textcopy(ptr %t315, ptr %t305, i64 %t306)
  %t316 = getelementptr i8, ptr %t315, i64 %t306
  call void @olang_textcopy(ptr %t316, ptr %t309, i64 %t310)
  %t317 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t314, 1
  %t320 = load i64, ptr %l139
  %t321 = inttoptr i64 %t320 to ptr
  %t322 = extractvalue { i64, ptr } %t318, 0
  %t323 = extractvalue { i64, ptr } %t318, 1
  %t324 = mul i64 %t322, 1
  %t325 = call ptr @__olang_scope_alloc(ptr %t321, i64 %t324)
  call void @llvm.memcpy.p0.p0.i64(ptr %t325, ptr %t323, i64 %t324, i1 false)
  %t326 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t327 = insertvalue { i64, ptr } %t326, ptr %t325, 1
  %t328 = load ptr, ptr %l137, !tbaa !29
  %t329 = load { i64, ptr }, ptr %l138, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enamedConst(ptr %v0, ptr %v0, ptr %v0, ptr %t328, { i64, ptr } %t329, { i64, ptr } %t327)
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s2)
  br label %bb107
bb104:
  call void @__olang_scope_close(ptr %s10)
  br label %bb105
bb105:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v0, ptr %s2, ptr %t331, { i64, ptr } %t333, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d197, i32 0, i32 1) })
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s2)
  br label %bb107
bb107:
  %t336 = load i64, ptr %l2, !tbaa !24
  %t338 = add i64 %t336, 1
  store i64 %t338, ptr %l2, !tbaa !24
  br label %bb1
bb108:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epackedFloat(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca %"compiler/bindgen:ctype"
  %l9 = alloca %"compiler/bindgen:record"
  %l11 = alloca %"compiler/bindgen:record"
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca %"compiler/bindgen:ctype"
  %l29 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l34 = alloca i1
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i1
  %t5 = alloca %"compiler/bindgen:record", align 8
  %t8 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t5, ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %t5, i64 216, i1 false)
  br label %bb1
bb1:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t8, ptr %v0, ptr %l9)
  call void @llvm.memmove.p0.p0.i64(ptr %l11, ptr %t8, i64 216, i1 false)
  br label %bb2
bb2:
  %t10 = getelementptr %"compiler/bindgen:record", ptr %l11, i32 0, i32 5
  store ptr %t10, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t12 = load i64, ptr %l3, !tbaa !24
  store i64 %t12, ptr %l13, !tbaa !24
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s1, ptr %t13)
  store i64 %t15, ptr %l15
  br label %bb4
bb4:
  %t16 = load i64, ptr %l13, !tbaa !24
  %t17 = load i64, ptr %l15, !tbaa !24
  %t18 = icmp slt i64 %t16, %t17
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb6:
  br label %bb7
bb7:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s1, ptr %s1, ptr %t22, i64 %t23)
  store { i64, ptr } %t26, ptr %l20
  br label %bb8
bb8:
  %t27 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/bindgen:gen", ptr %t28, i32 0, i32 16
  store ptr %t30, ptr %l22, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t35 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %s1, ptr %t31, { i64, ptr } %t27, i64 0)
  store i64 %t35, ptr %l25
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l22, !tbaa !29
  %t37 = load i64, ptr %l25, !tbaa !24
  %t38 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t36, i64 %t37)
  store %"compiler/bindgen:ctype" %t38, ptr %l26
  br label %bb10
bb10:
  %t39 = load %"compiler/bindgen:ctype", ptr %l26
  store %"compiler/bindgen:ctype" %t39, ptr %l5
  %t40 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 0
  %t41 = load i32, ptr %t40, !range !{i32 0, i32 7}
  %t43 = trunc i64 1 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 1
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t47, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d198, i32 0, i32 1) })
  store i1 %t49, ptr %l31
  br label %bb13
bb12:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb18
bb13:
  %t50 = load i1, ptr %l31, !tbaa !21
  br i1 %t50, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb17
bb15:
  %t51 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d199, i32 0, i32 1) })
  store i1 %t54, ptr %l34
  br label %bb16
bb16:
  %t55 = load i1, ptr %l34, !tbaa !21
  store i1 %t55, ptr %l32, !tbaa !21
  br label %bb17
bb17:
  %t56 = load i1, ptr %l32, !tbaa !21
  store i1 %t56, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t57 = load i1, ptr %l29, !tbaa !21
  br i1 %t57, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t59 = load i64, ptr %l3, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l3, !tbaa !24
  br label %bb3
bb23:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %lp5 = alloca ptr
  %l12 = alloca i1
  %l13 = alloca { i64, ptr }
  %l20 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l32 = alloca { i64, ptr }
  %l35 = alloca i1
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l44 = alloca i1
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca { i64, ptr }
  %l51 = alloca i1
  %l52 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l57 = alloca i1
  %l58 = alloca i64
  %l61 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca i64
  %l69 = alloca { i64, ptr }
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
  %t26 = ptrtoint ptr %v3 to i64
  store i64 %t26, ptr %l20, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eparamName_2elocal_2e5
  br i1 %t27, label %bb10, label %bb11
bb10:
  %t29 = call ptr @__olang_region_make(ptr %v3)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l20, !tbaa !24
  br label %bb11
bb11:
  %t31 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t31, ptr %l22, !tbaa !27
  %t32 = load i64, ptr %l4, !tbaa !24
  store i64 %t32, ptr %l23, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t33, 0
  store i64 %t36, ptr %l26, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l27, !tbaa !24
  %t39 = load i64, ptr %l23, !tbaa !24
  %t40 = icmp sge i64 %t39, 0
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t42 = load i64, ptr %l23, !tbaa !24
  %t43 = load i64, ptr %l26, !tbaa !24
  %t44 = icmp sle i64 %t42, %t43
  br i1 %t44, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_76a2c5c4ca94453d_57e44e0801590749)
  unreachable
bb14:
  %t46 = load i64, ptr %l26, !tbaa !24
  %t47 = load i64, ptr %l27, !tbaa !24
  %t48 = icmp sle i64 %t46, %t47
  br i1 %t48, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_76a2c5c4ca94453d_57e44e0801590749)
  unreachable
bb16:
  %t50 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = load i64, ptr %l23, !tbaa !24
  %t53 = load i64, ptr %l26, !tbaa !24
  %t54 = getelementptr i8, ptr %t51, i64 %t52
  %t55 = sub i64 %t53, %t52
  %t56 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t54, 1
  %t59 = extractvalue { i64, ptr } %t57, 1
  %t60 = extractvalue { i64, ptr } %t57, 0
  %t61 = load i64, ptr %l20
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = call ptr @__olang_scope_alloc(ptr %t62, i64 %t60)
  call void @olang_textcopy(ptr %t63, ptr %t59, i64 %t60)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l32, !tbaa !27
  %t66 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eparamName_2elocal_2e5
  br i1 %t66, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_76a2c5c4ca94453d_57e44e0801590749)
  unreachable
bb18:
  %t68 = load i64, ptr %l20
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = load { i64, ptr }, ptr %l32
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = call ptr @__olang_region_or(ptr %t71, ptr null)
  %t73 = icmp ne ptr %t72, null
  %t74 = select i1 %t73, ptr %t72, ptr null
  %t75 = icmp eq ptr %t74, %t69
  call void @__olang_region_settle(ptr %t69, i1 %t75)
  br label %bb19
bb19:
  %t76 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store ptr %t76, ptr %lp5
  %t77 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t78 = load ptr, ptr %lp5
  store { i64, ptr } %t77, ptr %t78, !tbaa !27
  %t79 = load ptr, ptr %lp5
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  %t82 = call i1 @compiler_2fbindgen_2eusable(ptr %v3, { i64, ptr } %t80)
  store i1 %t82, ptr %l35
  br label %bb20
bb20:
  %t83 = load i1, ptr %l35, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb24
bb22:
  %t86 = load ptr, ptr %lp5
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  store { i64, ptr } %t87, ptr %l38, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 0
  store i64 %t89, ptr %l39, !tbaa !24
  %t90 = load i64, ptr %l39, !tbaa !24
  %t91 = mul i64 %t90, 1
  %t92 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t91)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l40, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = load i64, ptr %l39, !tbaa !24
  %t100 = mul i64 %t99, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t96, ptr %t98, i64 %t100, i1 false)
  %t101 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t104 = getelementptr %"compiler/bindgen:gen", ptr %a0, i32 0, i32 21
  %t108 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %s0, ptr %t104, { i64, ptr } %t101)
  store i1 %t108, ptr %l44
  br label %bb23
bb23:
  %t109 = load i1, ptr %l44, !tbaa !21
  store i1 %t109, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t110 = load i1, ptr %l37, !tbaa !21
  br i1 %t110, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb28
bb26:
  %t111 = load ptr, ptr %lp5
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  store { i64, ptr } %t112, ptr %l46, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  store i64 %t114, ptr %l47, !tbaa !24
  %t115 = load i64, ptr %l47, !tbaa !24
  %t116 = mul i64 %t115, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t116)
  %t118 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  store { i64, ptr } %t119, ptr %l48, !tbaa !27
  %t120 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = load i64, ptr %l47, !tbaa !24
  %t125 = mul i64 %t124, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t121, ptr %t123, i64 %t125, i1 false)
  %t126 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t127 = load ptr, ptr %l3, !tbaa !29
  %t131 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v2, ptr %s0, ptr %t127, { i64, ptr } %t126)
  store i1 %t131, ptr %l51
  br label %bb27
bb27:
  %t132 = load i1, ptr %l51, !tbaa !21
  store i1 %t132, ptr %l45, !tbaa !21
  br label %bb28
bb28:
  %t133 = load i1, ptr %l45, !tbaa !21
  br i1 %t133, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb32
bb30:
  %t134 = load ptr, ptr %lp5
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  %t137 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t135, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d200, i32 0, i32 1) })
  store i1 %t137, ptr %l54
  br label %bb31
bb31:
  %t138 = load i1, ptr %l54, !tbaa !21
  store i1 %t138, ptr %l52, !tbaa !21
  br label %bb32
bb32:
  %t139 = load i1, ptr %l52, !tbaa !21
  br i1 %t139, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb36
bb34:
  %t140 = load ptr, ptr %lp5
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  %t143 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t141, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d201, i32 0, i32 1) })
  store i1 %t143, ptr %l57
  br label %bb35
bb35:
  %t144 = load i1, ptr %l57, !tbaa !21
  store i1 %t144, ptr %l55, !tbaa !21
  br label %bb36
bb36:
  %t145 = load i1, ptr %l55, !tbaa !21
  br i1 %t145, label %bb37, label %bb38
bb37:
  %t146 = ptrtoint ptr %v3 to i64
  store i64 %t146, ptr %l58, !tbaa !24
  %t147 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eparamName_2elocal_2e5
  br i1 %t147, label %bb39, label %bb40
bb38:
  br label %bb45
bb39:
  %t149 = call ptr @__olang_region_make(ptr %v3)
  %t150 = ptrtoint ptr %t149 to i64
  store i64 %t150, ptr %l58, !tbaa !24
  br label %bb40
bb40:
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t155 = call i64 @__olang_fmt_i64(ptr null, i64 %a2)
  %t156 = add i64 %t153, %t155
  %t157 = load i64, ptr %l58
  %t158 = inttoptr i64 %t157 to ptr
  %t159 = call ptr @__olang_scope_alloc(ptr %t158, i64 %t156)
  call void @olang_textcopy(ptr %t159, ptr %t152, i64 %t153)
  %t160 = getelementptr i8, ptr %t159, i64 %t153
  %t161 = call i64 @__olang_fmt_i64(ptr %t160, i64 %a2)
  %t162 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t159, 1
  store { i64, ptr } %t163, ptr %l61, !tbaa !27
  %t164 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eparamName_2elocal_2e5
  br i1 %t164, label %bb41, label %bb42
bb41:
  %t166 = load i64, ptr %l58
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = load { i64, ptr }, ptr %l61
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = call ptr @__olang_region_or(ptr %t169, ptr null)
  %t171 = icmp ne ptr %t170, null
  %t172 = select i1 %t171, ptr %t170, ptr null
  %t173 = icmp eq ptr %t172, %t167
  call void @__olang_region_settle(ptr %t167, i1 %t173)
  br label %bb42
bb42:
  %t174 = load ptr, ptr %lp5
  %t175 = load { i64, ptr }, ptr %t174, !tbaa !27
  store { i64, ptr } %t175, ptr %l63, !tbaa !27
  %t176 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t177 = load ptr, ptr %lp5
  store { i64, ptr } %t176, ptr %t177, !tbaa !27
  %t178 = load i1, ptr @olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eparamName_2elocal_2e5
  br i1 %t178, label %bb43, label %bb44
bb43:
  %t180 = load { i64, ptr }, ptr %l63
  %t181 = extractvalue { i64, ptr } %t180, 1
  call void @__olang_region_release(ptr %t181)
  store { i64, ptr } zeroinitializer, ptr %l63
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t182 = load ptr, ptr %l3, !tbaa !29
  %t183 = load ptr, ptr %lp5
  %t184 = load { i64, ptr }, ptr %t183, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v2, ptr %v3, ptr %t182, { i64, ptr } %t184, i64 0)
  br label %bb46
bb46:
  %t187 = load ptr, ptr %lp5
  %t188 = load { i64, ptr }, ptr %t187, !tbaa !27
  store { i64, ptr } %t188, ptr %l67, !tbaa !27
  %t189 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t189, 0
  store i64 %t190, ptr %l68, !tbaa !24
  %t191 = load i64, ptr %l68, !tbaa !24
  %t192 = mul i64 %t191, 1
  %t193 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t192)
  %t194 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t193, 1
  store { i64, ptr } %t195, ptr %l69, !tbaa !27
  %t196 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = load i64, ptr %l68, !tbaa !24
  %t201 = mul i64 %t200, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t197, ptr %t199, i64 %t201, i1 false)
  %t202 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t202, ptr %l67, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t203 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t203, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t175, ptr %s6, ptr %l116)
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
  %t183 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s6, { i64, ptr } %t182, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d203, i32 0, i32 1) })
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

define dso_local { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epointerParam(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca %"compiler/bindgen:ctype"
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca %"compiler/bindgen:ctype"
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l19 = alloca %"compiler/bindgen:ctype"
  %l24 = alloca i1
  %l25 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l39 = alloca i64
  %l41 = alloca i1
  %l44 = alloca i1
  %l46 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l56 = alloca %"compiler/bindgen:ctype"
  %l59 = alloca i1
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l68 = alloca i64
  %l71 = alloca i1
  %l75 = alloca { i64, ptr }
  %l79 = alloca i1
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca i64
  %l85 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l91 = alloca i1
  %l93 = alloca i32
  %l95 = alloca %"std/prelude/text:StringBuilder"
  %l101 = alloca i64
  %l104 = alloca i64
  %l125 = alloca ptr
  %l126 = alloca i64
  %l127 = alloca { i64, ptr }
  %l128 = alloca ptr
  %l134 = alloca i64
  %l135 = alloca { i64, ptr }
  %l136 = alloca i32
  %l146 = alloca %"compiler/bindgen:ctype"
  %l150 = alloca ptr
  %l151 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l155 = alloca i32
  %l160 = alloca { i64, ptr }
  %l165 = alloca i32
  %l168 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 16
  %t7 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/bindgen:ctype" %t7, ptr %l19
  br label %bb1
bb1:
  %t8 = load %"compiler/bindgen:ctype", ptr %l19
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
  br label %bb12
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t18, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d204, i32 0, i32 1) })
  store i1 %t20, ptr %l24
  br label %bb5
bb5:
  %t21 = load i1, ptr %l24, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d205, i32 0, i32 1) }, ptr %l25, !tbaa !27
  br label %bb8
bb7:
  %t22 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 1
  %t26 = extractvalue { i64, ptr } %t23, 0
  %t27 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t25, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = extractvalue { i64, ptr } %t29, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l25, !tbaa !27
  br label %bb8
bb8:
  %t38 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t38, ptr %l5, !tbaa !27
  %t39 = load i1, ptr %l2, !tbaa !21
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t42 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  %t45 = extractvalue { i64, ptr } %t41, 1
  %t46 = extractvalue { i64, ptr } %t41, 0
  %t47 = add i64 %t43, %t46
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  %t50 = add i64 %t47, %t49
  %t51 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t50)
  call void @olang_textcopy(ptr %t51, ptr %t42, i64 %t43)
  %t52 = getelementptr i8, ptr %t51, i64 %t43
  call void @olang_textcopy(ptr %t52, ptr %t45, i64 %t46)
  %t53 = getelementptr i8, ptr %t52, i64 %t46
  call void @olang_textcopy(ptr %t53, ptr %t48, i64 %t49)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t51, 1
  store { i64, ptr } %t55, ptr %l30, !tbaa !27
  br label %bb11
bb10:
  %t57 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t58 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  %t61 = extractvalue { i64, ptr } %t57, 1
  %t62 = extractvalue { i64, ptr } %t57, 0
  %t63 = add i64 %t59, %t62
  %t64 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
  %t66 = add i64 %t63, %t65
  %t67 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t66)
  call void @olang_textcopy(ptr %t67, ptr %t58, i64 %t59)
  %t68 = getelementptr i8, ptr %t67, i64 %t59
  call void @olang_textcopy(ptr %t68, ptr %t61, i64 %t62)
  %t69 = getelementptr i8, ptr %t68, i64 %t62
  call void @olang_textcopy(ptr %t69, ptr %t64, i64 %t65)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t67, 1
  store { i64, ptr } %t71, ptr %l30, !tbaa !27
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s1)
  %t73 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t74 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t73, 1
  store { i32, { i64, ptr } } %t74, ptr %rv
  br label %ret
bb12:
  %t75 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t77 = trunc i64 2 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb25
bb15:
  store %olang.scope zeroinitializer, ptr %s5
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  %t85 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v0, ptr %t80, { i64, ptr } %t82)
  store i64 %t85, ptr %l39
  br label %bb16
bb16:
  %t86 = load i64, ptr %l39, !tbaa !24
  store i64 %t86, ptr %l6, !tbaa !24
  %t87 = load i1, ptr %l2, !tbaa !21
  br i1 %t87, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb20
bb18:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i64, ptr %l6, !tbaa !24
  %t93 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %t89, i64 %t90)
  store i1 %t93, ptr %l44
  br label %bb19
bb19:
  %t94 = load i1, ptr %l44, !tbaa !21
  %t95 = xor i1 %t94, true
  store i1 %t95, ptr %l41, !tbaa !21
  br label %bb20
bb20:
  %t97 = load i1, ptr %l41, !tbaa !21
  br i1 %t97, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d210, i32 0, i32 1) }, ptr %l46, !tbaa !27
  br label %bb23
bb22:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d211, i32 0, i32 1) }, ptr %l46, !tbaa !27
  br label %bb23
bb23:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i64, ptr %l6, !tbaa !24
  %t102 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %s5, ptr %t98, i64 %t99)
  store { i64, ptr } %t102, ptr %l49
  br label %bb24
bb24:
  %t103 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t106 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = add i64 %t105, %t108
  %t110 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  %t112 = add i64 %t109, %t111
  %t113 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t112)
  call void @olang_textcopy(ptr %t113, ptr %t104, i64 %t105)
  %t114 = getelementptr i8, ptr %t113, i64 %t105
  call void @olang_textcopy(ptr %t114, ptr %t107, i64 %t108)
  %t115 = getelementptr i8, ptr %t114, i64 %t108
  call void @olang_textcopy(ptr %t115, ptr %t110, i64 %t111)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t113, 1
  call void @__olang_scope_close(ptr %s5)
  %t119 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t117, 1
  store { i32, { i64, ptr } } %t119, ptr %rv
  br label %ret
bb25:
  %t120 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t122 = trunc i64 3 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb50
bb28:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/bindgen:gen", ptr %t125, i32 0, i32 16
  %t128 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 2
  %t129 = load i64, ptr %t128, !tbaa !24
  %t132 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t127, i64 %t129)
  store %"compiler/bindgen:ctype" %t132, ptr %l56
  br label %bb29
bb29:
  %t133 = load %"compiler/bindgen:ctype", ptr %l56
  store %"compiler/bindgen:ctype" %t133, ptr %l7
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 2
  %t136 = load i64, ptr %t135, !tbaa !24
  %t139 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eisChar(ptr %v0, ptr %t134, i64 %t136)
  store i1 %t139, ptr %l59
  br label %bb30
bb30:
  %t140 = load i1, ptr %l59, !tbaa !21
  br i1 %t140, label %bb31, label %bb32
bb31:
  store { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d213, i32 0, i32 1) }, ptr %l60, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t141, ptr %l61, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  store i64 %t143, ptr %l62, !tbaa !24
  %t144 = load i64, ptr %l62, !tbaa !24
  %t145 = mul i64 %t144, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t145)
  %t147 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  store { i64, ptr } %t148, ptr %l63, !tbaa !27
  %t149 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = load i64, ptr %l62, !tbaa !24
  %t154 = mul i64 %t153, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t150, ptr %t152, i64 %t154, i1 false)
  %t155 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t155, ptr %l61, !tbaa !27
  %t156 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t157 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t156, 1
  store { i32, { i64, ptr } } %t157, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t158 = getelementptr %"compiler/bindgen:ctype", ptr %l7, i32 0, i32 0
  %t159 = load i32, ptr %t158, !range !{i32 0, i32 7}
  %t161 = trunc i64 2 to i32
  %t162 = icmp eq i32 %t159, %t161
  br i1 %t162, label %bb34, label %bb35
bb34:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/bindgen:ctype", ptr %l7, i32 0, i32 1
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  %t169 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v0, ptr %t164, { i64, ptr } %t166)
  store i64 %t169, ptr %l68
  br label %bb36
bb35:
  br label %bb42
bb36:
  %t170 = load i64, ptr %l68, !tbaa !24
  store i64 %t170, ptr %l8, !tbaa !24
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i64, ptr %l8, !tbaa !24
  %t175 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %t171, i64 %t172)
  store i1 %t175, ptr %l71
  br label %bb37
bb37:
  %t176 = load i1, ptr %l71, !tbaa !21
  %t177 = xor i1 %t176, true
  br i1 %t177, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s10
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i64, ptr %l8, !tbaa !24
  %t183 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %s10, ptr %t179, i64 %t180)
  store { i64, ptr } %t183, ptr %l75
  br label %bb40
bb39:
  br label %bb41
bb40:
  %t184 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
  %t186 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 1
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t189 = add i64 %t185, %t188
  %t190 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t193 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t192)
  call void @olang_textcopy(ptr %t193, ptr %t184, i64 %t185)
  %t194 = getelementptr i8, ptr %t193, i64 %t185
  call void @olang_textcopy(ptr %t194, ptr %t187, i64 %t188)
  %t195 = getelementptr i8, ptr %t194, i64 %t188
  call void @olang_textcopy(ptr %t195, ptr %t190, i64 %t191)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t193, 1
  call void @__olang_scope_close(ptr %s10)
  %t199 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t197, 1
  store { i32, { i64, ptr } } %t199, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t200 = getelementptr %"compiler/bindgen:ctype", ptr %l7, i32 0, i32 0
  %t201 = load i32, ptr %t200, !range !{i32 0, i32 7}
  %t203 = trunc i64 0 to i32
  %t204 = icmp eq i32 %t201, %t203
  br i1 %t204, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb45
bb44:
  %t206 = getelementptr %"compiler/bindgen:ctype", ptr %l7, i32 0, i32 0
  %t207 = load i32, ptr %t206, !range !{i32 0, i32 7}
  %t209 = trunc i64 2 to i32
  %t210 = icmp eq i32 %t207, %t209
  store i1 %t210, ptr %l79, !tbaa !21
  br label %bb45
bb45:
  %t212 = load i1, ptr %l79, !tbaa !21
  br i1 %t212, label %bb46, label %bb47
bb46:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d216, i32 0, i32 1) }, ptr %l82, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t213, ptr %l83, !tbaa !27
  %t214 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t214, 0
  store i64 %t215, ptr %l84, !tbaa !24
  %t216 = load i64, ptr %l84, !tbaa !24
  %t217 = mul i64 %t216, 1
  %t218 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t217)
  %t219 = insertvalue { i64, ptr } undef, i64 %t216, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t218, 1
  store { i64, ptr } %t220, ptr %l85, !tbaa !27
  %t221 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = load i64, ptr %l84, !tbaa !24
  %t226 = mul i64 %t225, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t222, ptr %t224, i64 %t226, i1 false)
  %t227 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t227, ptr %l83, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t229 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t228, 1
  store { i32, { i64, ptr } } %t229, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t230 = load i1, ptr %l2, !tbaa !21
  %t232 = call { i64, ptr } @compiler_2fbindgen_2evoidRef(ptr %v1, i1 %t230)
  store { i64, ptr } %t232, ptr %l87
  br label %bb49
bb49:
  %t233 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t234 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t233, 1
  store { i32, { i64, ptr } } %t234, ptr %rv
  br label %ret
bb50:
  %t235 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t237 = trunc i64 5 to i32
  %t238 = icmp eq i32 %t235, %t237
  br i1 %t238, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb94
bb53:
  store %olang.scope zeroinitializer, ptr %s13
  %t240 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t241 = load { i64, ptr }, ptr %t240, !tbaa !27
  %t243 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s13, { i64, ptr } %t241, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d217, i32 0, i32 1) })
  store i1 %t243, ptr %l91
  br label %bb54
bb54:
  %t244 = load i1, ptr %l91, !tbaa !21
  br i1 %t244, label %bb55, label %bb56
bb55:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t245, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d218, i32 0, i32 1) })
  store i32 %t247, ptr %l93
  %t248 = icmp ne i32 %t247, 0
  br i1 %t248, label %bb58, label %ok.249, !prof !99
ok.249:
  br label %bb57
bb56:
  br label %bb60
bb57:
  br label %bb59
bb58:
  %t250 = load i32, ptr %l93, !tbaa !23
  %t251 = lshr i32 %t250, 16
  %t252 = and i32 %t250, 65535
  %t253 = icmp eq i32 %t251, 1
  %t254 = select i1 %t253, i32 1, i32 0
  %t255 = icmp eq i32 %t250, 0
  %t256 = shl i32 %t254, 16
  %t257 = or i32 %t256, %t252
  %t258 = select i1 %t255, i32 0, i32 %t257
  call void @__olang_scope_close(ptr %s13)
  %t260 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t258, 0
  store { i32, { i64, ptr } } %t260, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t261 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s13)
  store %"std/prelude/text:StringBuilder" %t261, ptr %l95
  br label %bb61
bb61:
  %t262 = load %"std/prelude/text:StringBuilder", ptr %l95
  store %"std/prelude/text:StringBuilder" %t262, ptr %l9
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s13, ptr %l9, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d219, i32 0, i32 1) })
  br label %bb62
bb62:
  store i64 0, ptr %l10, !tbaa !24
  %t264 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 4
  %t265 = load i64, ptr %t264, !tbaa !24
  store i64 %t265, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t267 = load i64, ptr %l11, !tbaa !24
  %t268 = load i64, ptr %l10, !tbaa !24
  %t271 = icmp sgt i64 %t267, %t268
  br i1 %t271, label %bb63, label %bb64
bb63:
  %t273 = load i64, ptr %l12, !tbaa !24
  %t275 = icmp sgt i64 %t273, 0
  br i1 %t275, label %bb65, label %bb66
bb64:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb68
bb65:
  %t277 = load i64, ptr %l11, !tbaa !24
  %t278 = load i64, ptr %l10, !tbaa !24
  %t281 = sub i64 %t277, %t278
  %t282 = load i64, ptr %l12, !tbaa !24
  %t285 = add i64 %t281, %t282
  %t287 = sub i64 %t285, 1
  %t288 = load i64, ptr %l12, !tbaa !24
  %t291 = sdiv i64 %t287, %t288
  store i64 %t291, ptr %l104, !tbaa !24
  br label %bb67
bb66:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb67
bb67:
  %t293 = load i64, ptr %l104, !tbaa !24
  store i64 %t293, ptr %l101, !tbaa !24
  br label %bb68
bb68:
  %t294 = load i64, ptr %l101, !tbaa !24
  store i64 %t294, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb69
bb69:
  store %olang.scope zeroinitializer, ptr %s16
  %t295 = load i64, ptr %l14, !tbaa !24
  %t296 = load i64, ptr %l13, !tbaa !24
  %t299 = icmp slt i64 %t295, %t296
  %t301 = xor i1 %t299, true
  br i1 %t301, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s16)
  br label %bb83
bb71:
  br label %bb72
bb72:
  %t303 = load i64, ptr %l10, !tbaa !24
  %t304 = load i64, ptr %l14, !tbaa !24
  %t305 = load i64, ptr %l12, !tbaa !24
  %t308 = mul i64 %t304, %t305
  %t311 = add i64 %t303, %t308
  store i64 %t311, ptr %l15, !tbaa !24
  %t313 = load i64, ptr %l15, !tbaa !24
  %t315 = icmp sgt i64 %t313, 0
  br i1 %t315, label %bb73, label %bb74
bb73:
  store %olang.scope zeroinitializer, ptr %s17
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s17, ptr %l9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d220, i32 0, i32 1) })
  br label %bb75
bb74:
  br label %bb76
bb75:
  call void @__olang_scope_close(ptr %s17)
  br label %bb76
bb76:
  store ptr %l9, ptr %l125, !tbaa !29
  %t318 = load i64, ptr %l15, !tbaa !24
  store i64 %t318, ptr %l126, !tbaa !24
  %t319 = load ptr, ptr %l0, !tbaa !29
  store ptr %t319, ptr %l128, !tbaa !29
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/bindgen:gen", ptr %t320, i32 0, i32 17
  %t323 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 5
  %t324 = load i64, ptr %t323, !tbaa !24
  %t325 = load i64, ptr %l15, !tbaa !24
  %t328 = add i64 %t324, %t325
  %t331 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t322, i64 %t328)
  store i64 %t331, ptr %l134
  br label %bb77
bb77:
  %t332 = load ptr, ptr %l128, !tbaa !29
  %t333 = load i64, ptr %l134, !tbaa !24
  %t334 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2evalueType(ptr %v0, ptr %s16, ptr %t332, i64 %t333, i1 true)
  %t335 = extractvalue { i32, { i64, ptr } } %t334, 1
  %t336 = extractvalue { i32, { i64, ptr } } %t334, 0
  store i32 %t336, ptr %l136
  %t337 = icmp ne i32 %t336, 0
  br i1 %t337, label %bb79, label %ok.338, !prof !99
ok.338:
  store { i64, ptr } %t335, ptr %l135
  br label %bb78
bb78:
  %t339 = load { i64, ptr }, ptr %l135, !tbaa !27
  store { i64, ptr } %t339, ptr %l127, !tbaa !27
  br label %bb80
bb79:
  %t340 = load i32, ptr %l136, !tbaa !23
  %t341 = lshr i32 %t340, 16
  %t342 = and i32 %t340, 65535
  %t343 = icmp eq i32 %t341, 1
  %t344 = select i1 %t343, i32 1, i32 0
  %t345 = icmp eq i32 %t340, 0
  %t346 = shl i32 %t344, 16
  %t347 = or i32 %t346, %t342
  %t348 = select i1 %t345, i32 0, i32 %t347
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s13)
  %t350 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t348, 0
  store { i32, { i64, ptr } } %t350, ptr %rv
  br label %ret
bb80:
  %t351 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d221, i32 0, i32 1) }, 1
  %t352 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d221, i32 0, i32 1) }, 0
  %t353 = load i64, ptr %l126, !tbaa !24
  %t354 = call i64 @__olang_fmt_i64(ptr null, i64 %t353)
  %t355 = add i64 %t352, %t354
  %t356 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t357 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  %t358 = add i64 %t355, %t357
  %t359 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t360 = extractvalue { i64, ptr } %t359, 1
  %t361 = extractvalue { i64, ptr } %t359, 0
  %t362 = add i64 %t358, %t361
  %t363 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t362)
  call void @olang_textcopy(ptr %t363, ptr %t351, i64 %t352)
  %t364 = getelementptr i8, ptr %t363, i64 %t352
  %t365 = call i64 @__olang_fmt_i64(ptr %t364, i64 %t353)
  %t366 = getelementptr i8, ptr %t364, i64 %t354
  call void @olang_textcopy(ptr %t366, ptr %t356, i64 %t357)
  %t367 = getelementptr i8, ptr %t366, i64 %t357
  call void @olang_textcopy(ptr %t367, ptr %t360, i64 %t361)
  %t368 = insertvalue { i64, ptr } undef, i64 %t362, 0
  %t369 = insertvalue { i64, ptr } %t368, ptr %t363, 1
  %t371 = extractvalue { i64, ptr } %t369, 0
  %t372 = extractvalue { i64, ptr } %t369, 1
  %t373 = mul i64 %t371, 1
  %t374 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t373)
  call void @llvm.memcpy.p0.p0.i64(ptr %t374, ptr %t372, i64 %t373, i1 false)
  %t375 = insertvalue { i64, ptr } undef, i64 %t371, 0
  %t376 = insertvalue { i64, ptr } %t375, ptr %t374, 1
  %t377 = load ptr, ptr %l125, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s16, ptr %t377, { i64, ptr } %t376)
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s16)
  br label %bb82
bb82:
  %t379 = load i64, ptr %l14, !tbaa !24
  %t381 = add i64 %t379, 1
  store i64 %t381, ptr %l14, !tbaa !24
  br label %bb69
bb83:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s13, ptr %l9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d223, i32 0, i32 1) })
  br label %bb84
bb84:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t386 = getelementptr %"compiler/bindgen:gen", ptr %t384, i32 0, i32 16
  %t387 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 2
  %t388 = load i64, ptr %t387, !tbaa !24
  %t391 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s13, ptr %t386, i64 %t388)
  store %"compiler/bindgen:ctype" %t391, ptr %l146
  br label %bb85
bb85:
  %t392 = getelementptr %"compiler/bindgen:ctype", ptr %l146, i32 0, i32 0
  %t393 = load i32, ptr %t392, !range !{i32 0, i32 7}
  %t395 = trunc i64 0 to i32
  %t396 = icmp eq i32 %t393, %t395
  %t398 = xor i1 %t396, true
  br i1 %t398, label %bb86, label %bb87
bb86:
  store %olang.scope zeroinitializer, ptr %s20
  store ptr %l9, ptr %l150, !tbaa !29
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 2
  %t402 = load i64, ptr %t401, !tbaa !24
  %t405 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2evalueType(ptr %v0, ptr %s20, ptr %t400, i64 %t402, i1 true)
  %t406 = extractvalue { i32, { i64, ptr } } %t405, 1
  %t407 = extractvalue { i32, { i64, ptr } } %t405, 0
  store i32 %t407, ptr %l155
  %t408 = icmp ne i32 %t407, 0
  br i1 %t408, label %bb89, label %ok.409, !prof !99
ok.409:
  store { i64, ptr } %t406, ptr %l154
  br label %bb88
bb87:
  br label %bb92
bb88:
  %t410 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t410, ptr %l151, !tbaa !27
  br label %bb90
bb89:
  %t411 = load i32, ptr %l155, !tbaa !23
  %t412 = lshr i32 %t411, 16
  %t413 = and i32 %t411, 65535
  %t414 = icmp eq i32 %t412, 1
  %t415 = select i1 %t414, i32 1, i32 0
  %t416 = icmp eq i32 %t411, 0
  %t417 = shl i32 %t415, 16
  %t418 = or i32 %t417, %t413
  %t419 = select i1 %t416, i32 0, i32 %t418
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s13)
  %t421 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t419, 0
  store { i32, { i64, ptr } } %t421, ptr %rv
  br label %ret
bb90:
  %t422 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t423 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  %t424 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t425 = extractvalue { i64, ptr } %t424, 1
  %t426 = extractvalue { i64, ptr } %t424, 0
  %t427 = add i64 %t423, %t426
  %t428 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t427)
  call void @olang_textcopy(ptr %t428, ptr %t422, i64 %t423)
  %t429 = getelementptr i8, ptr %t428, i64 %t423
  call void @olang_textcopy(ptr %t429, ptr %t425, i64 %t426)
  %t430 = insertvalue { i64, ptr } undef, i64 %t427, 0
  %t431 = insertvalue { i64, ptr } %t430, ptr %t428, 1
  %t433 = extractvalue { i64, ptr } %t431, 0
  %t434 = extractvalue { i64, ptr } %t431, 1
  %t435 = mul i64 %t433, 1
  %t436 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t435)
  call void @llvm.memcpy.p0.p0.i64(ptr %t436, ptr %t434, i64 %t435, i1 false)
  %t437 = insertvalue { i64, ptr } undef, i64 %t433, 0
  %t438 = insertvalue { i64, ptr } %t437, ptr %t436, 1
  %t439 = load ptr, ptr %l150, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s20, ptr %t439, { i64, ptr } %t438)
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s20)
  br label %bb92
bb92:
  %t442 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s13, ptr %v1, ptr %l9)
  store { i64, ptr } %t442, ptr %l160
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s13)
  %t443 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t444 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t443, 1
  store { i32, { i64, ptr } } %t444, ptr %rv
  br label %ret
bb94:
  %t445 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t447 = trunc i64 6 to i32
  %t448 = icmp eq i32 %t445, %t447
  br i1 %t448, label %bb95, label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb101
bb97:
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t451 = getelementptr %"compiler/bindgen:ctype", ptr %l3, i32 0, i32 1
  %t452 = load { i64, ptr }, ptr %t451, !tbaa !27
  %t455 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t450, { i64, ptr } %t452)
  store i32 %t455, ptr %l165
  %t456 = icmp ne i32 %t455, 0
  br i1 %t456, label %bb99, label %ok.457, !prof !99
ok.457:
  br label %bb98
bb98:
  br label %bb100
bb99:
  %t458 = load i32, ptr %l165, !tbaa !23
  %t459 = lshr i32 %t458, 16
  %t460 = and i32 %t458, 65535
  %t461 = icmp eq i32 %t459, 1
  %t462 = select i1 %t461, i32 1, i32 0
  %t463 = icmp eq i32 %t458, 0
  %t464 = shl i32 %t462, 16
  %t465 = or i32 %t464, %t460
  %t466 = select i1 %t463, i32 0, i32 %t465
  %t468 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t466, 0
  store { i32, { i64, ptr } } %t468, ptr %rv
  br label %ret
bb100:
  br label %bb106
bb101:
  br i1 true, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb106
bb105:
  call void @__olang_check_failed(ptr @olang_loc_55ef846781ac27aa_5519550b25564c26)
  unreachable
bb106:
  %t469 = load i1, ptr %l2, !tbaa !21
  %t471 = call { i64, ptr } @compiler_2fbindgen_2evoidRef(ptr %v1, i1 %t469)
  store { i64, ptr } %t471, ptr %l168
  br label %bb107
bb107:
  %t472 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t473 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t472, 1
  store { i32, { i64, ptr } } %t473, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %lp15 = alloca ptr
  %lp16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i64
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %lp35 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l80 = alloca ptr
  %l90 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca i1
  %l96 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l114 = alloca ptr
  %l117 = alloca i64
  %l119 = alloca ptr
  %l121 = alloca { i64, ptr }
  %l123 = alloca i64
  %l124 = alloca i32
  %l127 = alloca i1
  %l129 = alloca i1
  %l130 = alloca i1
  %l132 = alloca i1
  %l142 = alloca ptr
  %l143 = alloca ptr
  %l145 = alloca { i64, ptr }
  %l150 = alloca %"compiler/bindgen:record"
  %l152 = alloca %"compiler/bindgen:record"
  %l154 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca ptr
  %l165 = alloca { i64, ptr }
  %l170 = alloca i1
  %l171 = alloca ptr
  %l172 = alloca ptr
  %l173 = alloca { i64, ptr }
  %l176 = alloca i1
  %l178 = alloca i1
  %l180 = alloca { i64, ptr }
  %l188 = alloca { i64, ptr }
  %l192 = alloca { i64, ptr }
  %l194 = alloca i1
  %l197 = alloca { i64, ptr }
  %l199 = alloca i1
  %l201 = alloca i64
  %l202 = alloca { i64, ptr }
  %l203 = alloca i64
  %l204 = alloca i32
  %l205 = alloca i64
  %l206 = alloca i32
  %l209 = alloca { i64, ptr }
  %l216 = alloca i1
  %l225 = alloca i1
  %l226 = alloca i1
  %l229 = alloca i1
  %l230 = alloca i1
  %l232 = alloca i1
  %l234 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l236 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l239 = alloca { i64, ptr }
  %l247 = alloca { i64, ptr }
  %l251 = alloca { i64, ptr }
  %l253 = alloca i1
  %l254 = alloca ptr
  %l255 = alloca i64
  %l258 = alloca { i64, ptr }
  %l260 = alloca ptr
  %l261 = alloca i64
  %l264 = alloca { i64, ptr }
  %l269 = alloca { i64, ptr }
  %l271 = alloca i1
  %l272 = alloca i1
  %l274 = alloca i1
  %l277 = alloca i1
  %l283 = alloca { i64, ptr }
  %l285 = alloca i1
  %l286 = alloca i1
  %l289 = alloca i1
  %l290 = alloca { i64, ptr }
  %l295 = alloca ptr
  %l296 = alloca { i64, ptr }
  %l297 = alloca i64
  %l300 = alloca { i64, ptr }
  %l301 = alloca { i64, ptr }
  %l302 = alloca i64
  %l305 = alloca { i64, ptr }
  %l306 = alloca i64
  %l309 = alloca { i64, ptr }
  %l312 = alloca %"compiler/bindgen:cFunc"
  %l314 = alloca i1
  %l315 = alloca i1
  %l318 = alloca i1
  %l319 = alloca i1
  %l321 = alloca i1
  %l322 = alloca i1
  %l324 = alloca { i64, ptr }
  %l326 = alloca i1
  %l329 = alloca ptr
  %l330 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %t245 = alloca %"compiler/bindgen:record", align 8
  %t248 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %v1, ptr %s1, ptr %a1)
  store { i64, ptr } %t3, ptr %l46
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = mul i64 %t5, 8
  %t8 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t7)
  call void @llvm.memcpy.p0.p0.i64(ptr %t8, ptr %t6, i64 %t7, i1 false)
  %t9 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  store { i64, ptr } %t10, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb198
bb4:
  br label %bb5
bb5:
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t24, ptr %l54, !tbaa !27
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr ptr, ptr %t28, i64 %t25
  %t30 = load ptr, ptr %t29, !tbaa !39
  store ptr %t30, ptr %l6, !tbaa !29
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = call ptr @compiler_2fbindgen_2emember(ptr %s1, ptr %s2, ptr %s1, ptr %t32, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d225, i32 0, i32 1) })
  store ptr %t34, ptr %l58
  br label %bb6
bb6:
  %t35 = load ptr, ptr %l58, !tbaa !29
  store ptr %t35, ptr %l7, !tbaa !29
  %t36 = load ptr, ptr %l7, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb7, label %bb8
bb7:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l7, !tbaa !29
  %t44 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrack(ptr %v0, ptr %s1, ptr %v2, ptr %t42, ptr %t43, { i64, ptr } %t44)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/bindgen:gen", ptr %t48, i32 0, i32 26
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l8, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s4
  %t53 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d226, i32 0, i32 1) }, 0
  %t54 = insertvalue [3 x { i64, ptr }] %t53, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d227, i32 0, i32 1) }, 1
  %t55 = insertvalue [3 x { i64, ptr }] %t54, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d228, i32 0, i32 1) }, 2
  %t57 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 48, i64 8)
  store [3 x { i64, ptr }] %t55, ptr %t57
  store ptr %t57, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t59 = load ptr, ptr %l9
  store i64 3, ptr %l11, !tbaa !24
  br label %bb11
bb11:
  %t62 = load i64, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l11, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t70 = load ptr, ptr %l9
  %t71 = load i64, ptr %l10, !tbaa !24
  %t74 = getelementptr [3 x { i64, ptr }], ptr %t70, i64 0, i64 %t71
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !37
  %t77 = load ptr, ptr %l6, !tbaa !29
  %t79 = load ptr, ptr @__olang_prog_scope
  %t82 = call ptr @compiler_2fbindgen_2emember(ptr %s1, ptr %t79, ptr %s1, ptr %t77, { i64, ptr } %t75)
  store ptr %t82, ptr %l80
  br label %bb15
bb15:
  %t83 = load ptr, ptr %l80, !tbaa !29
  store ptr %t83, ptr %l13, !tbaa !29
  %t84 = load ptr, ptr %l13, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb16, label %bb17
bb16:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load ptr, ptr %l13, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrack(ptr %v0, ptr %s1, ptr %v2, ptr %t90, ptr %t91, { i64, ptr } %t92)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t96 = load i64, ptr %l10, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l10, !tbaa !24
  br label %bb11
bb21:
  call void @__olang_scope_close(ptr %s4)
  %t100 = load ptr, ptr %l6, !tbaa !29
  %t102 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s1, ptr %s2, ptr %s2, ptr %t100, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d229, i32 0, i32 1) })
  store { i64, ptr } %t102, ptr %l90
  br label %bb22
bb22:
  %t103 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t103, ptr %l14, !tbaa !27
  %t104 = load ptr, ptr %l6, !tbaa !29
  %t106 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s1, ptr %s2, ptr %v0, ptr %t104, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d230, i32 0, i32 1) })
  store { i64, ptr } %t106, ptr %l92
  br label %bb23
bb23:
  %t107 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t107, ptr %lp15
  %t108 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t109 = load ptr, ptr %lp15
  store { i64, ptr } %t108, ptr %t109, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t112 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t110, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d231, i32 0, i32 1) })
  store i1 %t112, ptr %l94
  br label %bb24
bb24:
  %t113 = load i1, ptr %l94, !tbaa !21
  br i1 %t113, label %bb25, label %bb26
bb25:
  %t114 = load ptr, ptr %l6, !tbaa !29
  %t116 = call { i64, ptr } @compiler_2fbindgen_2etypeOf(ptr %s1, ptr %v0, ptr %t114)
  store { i64, ptr } %t116, ptr %l96
  br label %bb27
bb26:
  br label %bb69
bb27:
  %t117 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t117, ptr %lp16
  %t118 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t119 = load ptr, ptr %lp16
  store { i64, ptr } %t118, ptr %t119, !tbaa !27
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/bindgen:gen", ptr %t120, i32 0, i32 4
  %t123 = load ptr, ptr %lp15
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  %t125 = load ptr, ptr %lp16
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t122, { i64, ptr } %t124, { i64, ptr } %t126)
  br label %bb28
bb28:
  store %olang.scope zeroinitializer, ptr %s9
  %t130 = load ptr, ptr %l6, !tbaa !29
  %t132 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s1, ptr %s9, ptr %t130)
  store { i64, ptr } %t132, ptr %l102
  br label %bb29
bb29:
  %t133 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 0
  %t135 = extractvalue { i64, ptr } %t133, 1
  %t136 = mul i64 %t134, 8
  %t137 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t136)
  call void @llvm.memcpy.p0.p0.i64(ptr %t137, ptr %t135, i64 %t136, i1 false)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  store { i64, ptr } %t139, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t141 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t141, 0
  store i64 %t143, ptr %l19, !tbaa !24
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s10
  %t145 = load i64, ptr %l18, !tbaa !24
  %t146 = load i64, ptr %l19, !tbaa !24
  %t149 = icmp slt i64 %t145, %t146
  %t151 = xor i1 %t149, true
  br i1 %t151, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s10)
  br label %bb68
bb32:
  br label %bb33
bb33:
  %t153 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t153, ptr %l110, !tbaa !27
  %t154 = load i64, ptr %l18, !tbaa !24
  %t156 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr ptr, ptr %t157, i64 %t154
  %t159 = load ptr, ptr %t158, !tbaa !39
  %t163 = call ptr @compiler_2fbindgen_2emember(ptr %s9, ptr %s10, ptr %s9, ptr %t159, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d232, i32 0, i32 1) })
  store ptr %t163, ptr %l114
  br label %bb34
bb34:
  %t164 = load ptr, ptr %l114, !tbaa !29
  store ptr %t164, ptr %l21, !tbaa !29
  %t165 = load ptr, ptr %l21, !tbaa !29
  %t167 = icmp eq ptr %t165, null
  br i1 %t167, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s10)
  br label %bb67
bb36:
  br label %bb37
bb37:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/bindgen:gen", ptr %t169, i32 0, i32 7
  store ptr %t171, ptr %l119, !tbaa !29
  %t172 = load ptr, ptr %l21, !tbaa !29
  %t174 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s9, ptr %s10, ptr %s10, ptr %t172, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d233, i32 0, i32 1) })
  store { i64, ptr } %t174, ptr %l121
  br label %bb38
bb38:
  %t175 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 0
  %t177 = extractvalue { i64, ptr } %t175, 1
  %t178 = mul i64 %t176, 1
  %t179 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t178)
  call void @llvm.memcpy.p0.p0.i64(ptr %t179, ptr %t177, i64 %t178, i1 false)
  %t180 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t179, 1
  %t182 = load ptr, ptr %l119, !tbaa !29
  %t184 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %s10, ptr %t182, { i64, ptr } %t181)
  %t185 = extractvalue { i32, i64 } %t184, 1
  %t186 = extractvalue { i32, i64 } %t184, 0
  store i32 %t186, ptr %l124
  %t187 = icmp ne i32 %t186, 0
  br i1 %t187, label %bb40, label %ok.188, !prof !99
ok.188:
  store i64 %t185, ptr %l123
  br label %bb39
bb39:
  %t189 = load i64, ptr %l123, !tbaa !24
  store i64 %t189, ptr %l117, !tbaa !24
  br label %bb42
bb40:
  br label %bb41
bb41:
  store i64 -1, ptr %l117, !tbaa !24
  br label %bb42
bb42:
  %t190 = load i64, ptr %l117, !tbaa !24
  store i64 %t190, ptr %l22, !tbaa !24
  %t191 = load i64, ptr %l22, !tbaa !24
  %t193 = icmp sge i64 %t191, 0
  br i1 %t193, label %bb43, label %bb44
bb43:
  %t195 = load ptr, ptr %lp16
  %t196 = load { i64, ptr }, ptr %t195, !tbaa !27
  %t198 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s10, { i64, ptr } %t196, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d234, i32 0, i32 1) })
  store i1 %t198, ptr %l129
  br label %bb45
bb44:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb50
bb45:
  %t199 = load i1, ptr %l129, !tbaa !21
  br i1 %t199, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb49
bb47:
  %t200 = load ptr, ptr %lp16
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  %t203 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s10, { i64, ptr } %t201, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d235, i32 0, i32 1) })
  store i1 %t203, ptr %l132
  br label %bb48
bb48:
  %t204 = load i1, ptr %l132, !tbaa !21
  store i1 %t204, ptr %l130, !tbaa !21
  br label %bb49
bb49:
  %t205 = load i1, ptr %l130, !tbaa !21
  store i1 %t205, ptr %l127, !tbaa !21
  br label %bb50
bb50:
  %t206 = load i1, ptr %l127, !tbaa !21
  br i1 %t206, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s12
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/bindgen:gen", ptr %t207, i32 0, i32 6
  %t210 = load ptr, ptr %lp16
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !27
  %t212 = load i64, ptr %l22, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t209, { i64, ptr } %t211, i64 %t212)
  br label %bb53
bb52:
  br label %bb66
bb53:
  %t216 = load i64, ptr %l22, !tbaa !24
  %t218 = load ptr, ptr %lp16
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  store { i64, ptr } %t219, ptr %l24, !tbaa !27
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/bindgen:gen", ptr %t221, i32 0, i32 5
  %t227 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t223, i64 %t216)
  store ptr %t227, ptr %l142
  br label %bb54
bb54:
  %t228 = load ptr, ptr %l142, !tbaa !29
  store ptr %t228, ptr %l143, !tbaa !29
  %t230 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t231 = load ptr, ptr %l143, !tbaa !29
  %t232 = getelementptr %"compiler/bindgen:record", ptr %t231, i32 0, i32 0
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  store { i64, ptr } %t233, ptr %l145, !tbaa !27
  %t235 = load ptr, ptr %l143, !tbaa !29
  %t236 = getelementptr %"compiler/bindgen:record", ptr %t235, i32 0, i32 0
  store { i64, ptr } %t230, ptr %t236, !tbaa !27
  %t237 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e0
  br i1 %t237, label %bb55, label %bb56
bb55:
  %t239 = load { i64, ptr }, ptr %l145
  %t240 = extractvalue { i64, ptr } %t239, 1
  call void @__olang_region_release(ptr %t240)
  store { i64, ptr } zeroinitializer, ptr %l145
  br label %bb56
bb56:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/bindgen:gen", ptr %t241, i32 0, i32 5
  %t244 = load i64, ptr %l22, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t245, ptr %v0, ptr %v0, ptr %t243, i64 %t244)
  call void @llvm.memmove.p0.p0.i64(ptr %l150, ptr %t245, i64 216, i1 false)
  br label %bb57
bb57:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t248, ptr %s12, ptr %l150)
  call void @llvm.memmove.p0.p0.i64(ptr %l152, ptr %t248, i64 216, i1 false)
  br label %bb58
bb58:
  %t250 = getelementptr %"compiler/bindgen:record", ptr %l152, i32 0, i32 11
  %t251 = load { i64, ptr }, ptr %t250, !tbaa !27
  %t253 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s12, { i64, ptr } %t251, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d236, i32 0, i32 1) })
  store i1 %t253, ptr %l154
  br label %bb59
bb59:
  %t254 = load i1, ptr %l154, !tbaa !21
  br i1 %t254, label %bb60, label %bb61
bb60:
  %t255 = load i64, ptr %l22, !tbaa !24
  %t257 = load ptr, ptr %lp15
  %t258 = load { i64, ptr }, ptr %t257, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t258, 1
  %t261 = extractvalue { i64, ptr } %t258, 0
  %t262 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t261)
  call void @olang_textcopy(ptr %t262, ptr %t260, i64 %t261)
  %t263 = insertvalue { i64, ptr } undef, i64 %t261, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t262, 1
  %t266 = extractvalue { i64, ptr } %t264, 0
  %t267 = extractvalue { i64, ptr } %t264, 1
  %t268 = mul i64 %t266, 1
  %t269 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t268)
  call void @llvm.memcpy.p0.p0.i64(ptr %t269, ptr %t267, i64 %t268, i1 false)
  %t270 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t269, 1
  store { i64, ptr } %t271, ptr %l27, !tbaa !27
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/bindgen:gen", ptr %t273, i32 0, i32 5
  %t279 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t275, i64 %t255)
  store ptr %t279, ptr %l162
  br label %bb62
bb61:
  br label %bb65
bb62:
  %t280 = load ptr, ptr %l162, !tbaa !29
  store ptr %t280, ptr %l163, !tbaa !29
  %t282 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t283 = load ptr, ptr %l163, !tbaa !29
  %t284 = getelementptr %"compiler/bindgen:record", ptr %t283, i32 0, i32 11
  %t285 = load { i64, ptr }, ptr %t284, !tbaa !27
  store { i64, ptr } %t285, ptr %l165, !tbaa !27
  %t287 = load ptr, ptr %l163, !tbaa !29
  %t288 = getelementptr %"compiler/bindgen:record", ptr %t287, i32 0, i32 11
  store { i64, ptr } %t282, ptr %t288, !tbaa !27
  %t289 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e11
  br i1 %t289, label %bb63, label %bb64
bb63:
  %t291 = load { i64, ptr }, ptr %l165
  %t292 = extractvalue { i64, ptr } %t291, 1
  call void @__olang_region_release(ptr %t292)
  store { i64, ptr } zeroinitializer, ptr %l165
  br label %bb64
bb64:
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s12)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s10)
  br label %bb67
bb67:
  %t293 = load i64, ptr %l18, !tbaa !24
  %t295 = add i64 %t293, 1
  store i64 %t295, ptr %l18, !tbaa !24
  br label %bb30
bb68:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s2)
  br label %bb197
bb69:
  %t297 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t299 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t297, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d237, i32 0, i32 1) })
  store i1 %t299, ptr %l170
  br label %bb70
bb70:
  %t300 = load i1, ptr %l170, !tbaa !21
  br i1 %t300, label %bb71, label %bb72
bb71:
  %t301 = load ptr, ptr %l0, !tbaa !29
  store ptr %t301, ptr %l171, !tbaa !29
  %t302 = load ptr, ptr %l6, !tbaa !29
  store ptr %t302, ptr %l172, !tbaa !29
  %t303 = load ptr, ptr %lp15
  %t304 = load { i64, ptr }, ptr %t303, !tbaa !27
  store { i64, ptr } %t304, ptr %l173, !tbaa !27
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load i64, ptr %l8, !tbaa !24
  %t309 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewanted(ptr %v0, ptr %t305, i64 %t306)
  store i1 %t309, ptr %l176
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t310 = load ptr, ptr %l171, !tbaa !29
  %t311 = load ptr, ptr %l172, !tbaa !29
  %t312 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t313 = load i1, ptr %l176, !tbaa !21
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordDecl(ptr %v0, ptr %s1, ptr %v0, ptr %t310, ptr %t311, { i64, ptr } %t312, i1 %t313)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s2)
  br label %bb197
bb75:
  %t314 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t316 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t314, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d238, i32 0, i32 1) })
  store i1 %t316, ptr %l178
  br label %bb76
bb76:
  %t317 = load i1, ptr %l178, !tbaa !21
  br i1 %t317, label %bb77, label %bb78
bb77:
  store i64 0, ptr %l29, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s18
  %t318 = load ptr, ptr %l6, !tbaa !29
  %t320 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s1, ptr %s18, ptr %t318)
  store { i64, ptr } %t320, ptr %l180
  br label %bb79
bb78:
  br label %bb109
bb79:
  %t321 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t322 = extractvalue { i64, ptr } %t321, 0
  %t323 = extractvalue { i64, ptr } %t321, 1
  %t324 = mul i64 %t322, 8
  %t325 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t324)
  call void @llvm.memcpy.p0.p0.i64(ptr %t325, ptr %t323, i64 %t324, i1 false)
  %t326 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t327 = insertvalue { i64, ptr } %t326, ptr %t325, 1
  store { i64, ptr } %t327, ptr %l30, !tbaa !27
  store i64 0, ptr %l31, !tbaa !24
  %t329 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t331 = extractvalue { i64, ptr } %t329, 0
  store i64 %t331, ptr %l32, !tbaa !24
  br label %bb80
bb80:
  store %olang.scope zeroinitializer, ptr %s19
  %t333 = load i64, ptr %l31, !tbaa !24
  %t334 = load i64, ptr %l32, !tbaa !24
  %t337 = icmp slt i64 %t333, %t334
  %t339 = xor i1 %t337, true
  br i1 %t339, label %bb81, label %bb82
bb81:
  call void @__olang_scope_close(ptr %s19)
  br label %bb108
bb82:
  br label %bb83
bb83:
  %t341 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t341, ptr %l188, !tbaa !27
  %t342 = load i64, ptr %l31, !tbaa !24
  %t344 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !27
  %t346 = getelementptr ptr, ptr %t345, i64 %t342
  %t347 = load ptr, ptr %t346, !tbaa !39
  store ptr %t347, ptr %l33, !tbaa !29
  %t349 = load ptr, ptr %l33, !tbaa !29
  %t351 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s18, ptr %s19, ptr %s19, ptr %t349, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d239, i32 0, i32 1) })
  store { i64, ptr } %t351, ptr %l192
  br label %bb84
bb84:
  %t352 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t353 = extractvalue { i64, ptr } %t352, 0
  %t354 = extractvalue { i64, ptr } %t352, 1
  %t355 = mul i64 %t353, 1
  %t356 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t355)
  call void @llvm.memcpy.p0.p0.i64(ptr %t356, ptr %t354, i64 %t355, i1 false)
  %t357 = insertvalue { i64, ptr } undef, i64 %t353, 0
  %t358 = insertvalue { i64, ptr } %t357, ptr %t356, 1
  %t360 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s19, ptr %s19, { i64, ptr } %t358, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d240, i32 0, i32 1) })
  store i1 %t360, ptr %l194
  br label %bb85
bb85:
  %t361 = load i1, ptr %l194, !tbaa !21
  %t362 = xor i1 %t361, true
  br i1 %t362, label %bb86, label %bb87
bb86:
  call void @__olang_scope_close(ptr %s19)
  br label %bb107
bb87:
  br label %bb88
bb88:
  %t364 = load ptr, ptr %l33, !tbaa !29
  %t366 = call { i64, ptr } @compiler_2fbindgen_2econstValue(ptr %s18, ptr %s19, ptr %t364)
  store { i64, ptr } %t366, ptr %l197
  br label %bb89
bb89:
  %t367 = load { i64, ptr }, ptr %l197, !tbaa !27
  store { i64, ptr } %t367, ptr %l34, !tbaa !27
  %t368 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t370 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s19, ptr %s19, { i64, ptr } %t368, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d241, i32 0, i32 1) })
  store i1 %t370, ptr %l199
  br label %bb90
bb90:
  %t371 = load i1, ptr %l199, !tbaa !21
  %t372 = xor i1 %t371, true
  br i1 %t372, label %bb91, label %bb92
bb91:
  store %olang.scope zeroinitializer, ptr %s21
  %t374 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t374, ptr %l202, !tbaa !27
  %t375 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s21, i64 10)
  %t376 = extractvalue { i32, i64 } %t375, 1
  %t377 = extractvalue { i32, i64 } %t375, 0
  store i32 %t377, ptr %l204
  %t378 = icmp ne i32 %t377, 0
  br i1 %t378, label %bb94, label %ok.379, !prof !99
ok.379:
  store i64 %t376, ptr %l203
  br label %bb93
bb92:
  br label %bb99
bb93:
  %t380 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t381 = load i64, ptr %l203, !tbaa !24
  %t382 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s19, { i64, ptr } %t380, i64 %t381)
  %t383 = extractvalue { i32, i64 } %t382, 1
  %t384 = extractvalue { i32, i64 } %t382, 0
  store i32 %t384, ptr %l206
  %t385 = icmp ne i32 %t384, 0
  br i1 %t385, label %bb97, label %ok.386, !prof !99
ok.386:
  store i64 %t383, ptr %l205
  br label %bb96
bb94:
  br label %bb95
bb95:
  %t387 = load i64, ptr %l29, !tbaa !24
  store i64 %t387, ptr %l201, !tbaa !24
  br label %bb98
bb96:
  %t389 = load i64, ptr %l205, !tbaa !24
  store i64 %t389, ptr %l201, !tbaa !24
  br label %bb98
bb97:
  br label %bb95
bb98:
  %t390 = load i64, ptr %l201, !tbaa !24
  store i64 %t390, ptr %l29, !tbaa !24
  call void @__olang_scope_close(ptr %s21)
  br label %bb99
bb99:
  %t391 = load ptr, ptr %l33, !tbaa !29
  %t393 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s18, ptr %s19, ptr %v0, ptr %t391, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d242, i32 0, i32 1) })
  store { i64, ptr } %t393, ptr %l209
  br label %bb100
bb100:
  %t394 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t394, ptr %lp35
  %t395 = load { i64, ptr }, ptr %l209, !tbaa !27
  %t396 = load ptr, ptr %lp35
  store { i64, ptr } %t395, ptr %t396, !tbaa !27
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/bindgen:gen", ptr %t397, i32 0, i32 11
  %t400 = load ptr, ptr %lp35
  %t401 = load { i64, ptr }, ptr %t400, !tbaa !27
  %t402 = load i64, ptr %l29, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t399, { i64, ptr } %t401, i64 %t402)
  br label %bb101
bb101:
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t407 = load i64, ptr %l8, !tbaa !24
  %t410 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewanted(ptr %v0, ptr %t406, i64 %t407)
  store i1 %t410, ptr %l216
  br label %bb102
bb102:
  %t411 = load i1, ptr %l216, !tbaa !21
  br i1 %t411, label %bb103, label %bb104
bb103:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t413 = load ptr, ptr %lp35
  %t414 = load { i64, ptr }, ptr %t413, !tbaa !27
  %t415 = load i64, ptr %l29, !tbaa !24
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2econstant(ptr %v0, ptr %v0, ptr %t412, { i64, ptr } %t414, i64 %t415)
  br label %bb105
bb104:
  br label %bb106
bb105:
  br label %bb106
bb106:
  %t419 = load i64, ptr %l29, !tbaa !24
  %t421 = add i64 %t419, 1
  store i64 %t421, ptr %l29, !tbaa !24
  call void @__olang_scope_close(ptr %s19)
  br label %bb107
bb107:
  %t423 = load i64, ptr %l31, !tbaa !24
  %t425 = add i64 %t423, 1
  store i64 %t425, ptr %l31, !tbaa !24
  br label %bb80
bb108:
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s2)
  br label %bb197
bb109:
  %t427 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t429 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t427, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d243, i32 0, i32 1) })
  store i1 %t429, ptr %l225
  br label %bb110
bb110:
  %t430 = load i1, ptr %l225, !tbaa !21
  br i1 %t430, label %bb111, label %bb112
bb111:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t432 = load i64, ptr %l8, !tbaa !24
  %t435 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewanted(ptr %v0, ptr %t431, i64 %t432)
  store i1 %t435, ptr %l229
  br label %bb113
bb112:
  store i1 false, ptr %l226, !tbaa !21
  br label %bb114
bb113:
  %t436 = load i1, ptr %l229, !tbaa !21
  store i1 %t436, ptr %l226, !tbaa !21
  br label %bb114
bb114:
  %t437 = load i1, ptr %l226, !tbaa !21
  br i1 %t437, label %bb115, label %bb116
bb115:
  %t438 = load ptr, ptr %l6, !tbaa !29
  %t440 = call i1 @compiler_2fbindgen_2eflag(ptr %s1, ptr %s2, ptr %t438, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d244, i32 0, i32 1) })
  store i1 %t440, ptr %l232
  br label %bb117
bb116:
  store i1 false, ptr %l230, !tbaa !21
  br label %bb118
bb117:
  %t441 = load i1, ptr %l232, !tbaa !21
  %t442 = xor i1 %t441, true
  store i1 %t442, ptr %l230, !tbaa !21
  br label %bb118
bb118:
  %t444 = load i1, ptr %l230, !tbaa !21
  br i1 %t444, label %bb119, label %bb120
bb119:
  store %olang.scope zeroinitializer, ptr %s24
  %t445 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t445, ptr %l234
  br label %bb121
bb120:
  br label %bb176
bb121:
  %t446 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l234
  %t447 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t446, ptr %t447
  store ptr %t447, ptr %l36, !tbaa !29
  %t449 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t449, ptr %l236
  br label %bb122
bb122:
  %t450 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l236
  %t451 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t450, ptr %t451
  store ptr %t451, ptr %l37, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s25
  %t453 = load ptr, ptr %l6, !tbaa !29
  %t455 = call { i64, ptr } @compiler_2fbindgen_2einner(ptr %s1, ptr %s25, ptr %t453)
  store { i64, ptr } %t455, ptr %l239
  br label %bb123
bb123:
  %t456 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t457 = extractvalue { i64, ptr } %t456, 0
  %t458 = extractvalue { i64, ptr } %t456, 1
  %t459 = mul i64 %t457, 8
  %t460 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t459)
  call void @llvm.memcpy.p0.p0.i64(ptr %t460, ptr %t458, i64 %t459, i1 false)
  %t461 = insertvalue { i64, ptr } undef, i64 %t457, 0
  %t462 = insertvalue { i64, ptr } %t461, ptr %t460, 1
  store { i64, ptr } %t462, ptr %l38, !tbaa !27
  store i64 0, ptr %l39, !tbaa !24
  %t464 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t466 = extractvalue { i64, ptr } %t464, 0
  store i64 %t466, ptr %l40, !tbaa !24
  br label %bb124
bb124:
  store %olang.scope zeroinitializer, ptr %s26
  %t468 = load i64, ptr %l39, !tbaa !24
  %t469 = load i64, ptr %l40, !tbaa !24
  %t472 = icmp slt i64 %t468, %t469
  %t474 = xor i1 %t472, true
  br i1 %t474, label %bb125, label %bb126
bb125:
  call void @__olang_scope_close(ptr %s26)
  br label %bb142
bb126:
  br label %bb127
bb127:
  %t476 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t476, ptr %l247, !tbaa !27
  %t477 = load i64, ptr %l39, !tbaa !24
  %t479 = getelementptr { i64, ptr }, ptr %l247, i32 0, i32 1
  %t480 = load ptr, ptr %t479, !tbaa !27
  %t481 = getelementptr ptr, ptr %t480, i64 %t477
  %t482 = load ptr, ptr %t481, !tbaa !39
  store ptr %t482, ptr %l41, !tbaa !29
  %t484 = load ptr, ptr %l41, !tbaa !29
  %t486 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s25, ptr %s26, ptr %s26, ptr %t484, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d245, i32 0, i32 1) })
  store { i64, ptr } %t486, ptr %l251
  br label %bb128
bb128:
  %t487 = load { i64, ptr }, ptr %l251, !tbaa !27
  %t488 = extractvalue { i64, ptr } %t487, 0
  %t489 = extractvalue { i64, ptr } %t487, 1
  %t490 = mul i64 %t488, 1
  %t491 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t490)
  call void @llvm.memcpy.p0.p0.i64(ptr %t491, ptr %t489, i64 %t490, i1 false)
  %t492 = insertvalue { i64, ptr } undef, i64 %t488, 0
  %t493 = insertvalue { i64, ptr } %t492, ptr %t491, 1
  %t495 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s26, ptr %s26, { i64, ptr } %t493, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d246, i32 0, i32 1) })
  store i1 %t495, ptr %l253
  br label %bb129
bb129:
  %t496 = load i1, ptr %l253, !tbaa !21
  br i1 %t496, label %bb130, label %bb131
bb130:
  store %olang.scope zeroinitializer, ptr %s27
  %t497 = load ptr, ptr %l36, !tbaa !29
  store ptr %t497, ptr %l254, !tbaa !29
  %t498 = ptrtoint ptr %v0 to i64
  store i64 %t498, ptr %l255, !tbaa !24
  %t499 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t499, label %bb132, label %bb133
bb131:
  br label %bb140
bb132:
  %t501 = call ptr @__olang_region_make(ptr %v0)
  %t502 = ptrtoint ptr %t501 to i64
  store i64 %t502, ptr %l255, !tbaa !24
  br label %bb133
bb133:
  %t503 = load ptr, ptr %l41, !tbaa !29
  %t504 = load i64, ptr %l255
  %t505 = inttoptr i64 %t504 to ptr
  %t507 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s25, ptr %s27, ptr %t505, ptr %t503, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d247, i32 0, i32 1) })
  store { i64, ptr } %t507, ptr %l258
  br label %bb134
bb134:
  %t508 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t509 = load i64, ptr %l255
  %t510 = inttoptr i64 %t509 to ptr
  %t511 = extractvalue { i64, ptr } %t508, 0
  %t512 = extractvalue { i64, ptr } %t508, 1
  %t513 = mul i64 %t511, 1
  %t514 = call ptr @__olang_scope_alloc(ptr %t510, i64 %t513)
  call void @llvm.memcpy.p0.p0.i64(ptr %t514, ptr %t512, i64 %t513, i1 false)
  %t515 = insertvalue { i64, ptr } undef, i64 %t511, 0
  %t516 = insertvalue { i64, ptr } %t515, ptr %t514, 1
  %t517 = load ptr, ptr %l254, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t517, { i64, ptr } %t516)
  br label %bb135
bb135:
  %t519 = load ptr, ptr %l37, !tbaa !29
  store ptr %t519, ptr %l260, !tbaa !29
  %t520 = ptrtoint ptr %v0 to i64
  store i64 %t520, ptr %l261, !tbaa !24
  %t521 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t521, label %bb136, label %bb137
bb136:
  %t523 = call ptr @__olang_region_make(ptr %v0)
  %t524 = ptrtoint ptr %t523 to i64
  store i64 %t524, ptr %l261, !tbaa !24
  br label %bb137
bb137:
  %t525 = load ptr, ptr %l41, !tbaa !29
  %t526 = load i64, ptr %l261
  %t527 = inttoptr i64 %t526 to ptr
  %t529 = call { i64, ptr } @compiler_2fbindgen_2etypeOf(ptr %s25, ptr %t527, ptr %t525)
  store { i64, ptr } %t529, ptr %l264
  br label %bb138
bb138:
  %t530 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t531 = load i64, ptr %l261
  %t532 = inttoptr i64 %t531 to ptr
  %t533 = extractvalue { i64, ptr } %t530, 0
  %t534 = extractvalue { i64, ptr } %t530, 1
  %t535 = mul i64 %t533, 1
  %t536 = call ptr @__olang_scope_alloc(ptr %t532, i64 %t535)
  call void @llvm.memcpy.p0.p0.i64(ptr %t536, ptr %t534, i64 %t535, i1 false)
  %t537 = insertvalue { i64, ptr } undef, i64 %t533, 0
  %t538 = insertvalue { i64, ptr } %t537, ptr %t536, 1
  %t539 = load ptr, ptr %l260, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t539, { i64, ptr } %t538)
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s27)
  br label %bb140
bb140:
  call void @__olang_scope_close(ptr %s26)
  br label %bb141
bb141:
  %t541 = load i64, ptr %l39, !tbaa !24
  %t543 = add i64 %t541, 1
  store i64 %t543, ptr %l39, !tbaa !24
  br label %bb124
bb142:
  call void @__olang_scope_close(ptr %s25)
  %t545 = load ptr, ptr %l6, !tbaa !29
  %t547 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s1, ptr %s24, ptr %s24, ptr %t545, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d248, i32 0, i32 1) })
  store { i64, ptr } %t547, ptr %l269
  br label %bb143
bb143:
  %t548 = load { i64, ptr }, ptr %l269, !tbaa !27
  %t549 = extractvalue { i64, ptr } %t548, 0
  %t550 = extractvalue { i64, ptr } %t548, 1
  %t551 = mul i64 %t549, 1
  %t552 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t551)
  call void @llvm.memcpy.p0.p0.i64(ptr %t552, ptr %t550, i64 %t551, i1 false)
  %t553 = insertvalue { i64, ptr } undef, i64 %t549, 0
  %t554 = insertvalue { i64, ptr } %t553, ptr %t552, 1
  %t556 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s24, ptr %s24, { i64, ptr } %t554, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d249, i32 0, i32 1) })
  store i1 %t556, ptr %l271
  br label %bb144
bb144:
  %t557 = load i1, ptr %l271, !tbaa !21
  br i1 %t557, label %bb145, label %bb146
bb145:
  store i1 true, ptr %l272, !tbaa !21
  br label %bb148
bb146:
  %t558 = load ptr, ptr %l6, !tbaa !29
  %t560 = call i1 @compiler_2fbindgen_2eflag(ptr %s1, ptr %s24, ptr %t558, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d250, i32 0, i32 1) })
  store i1 %t560, ptr %l274
  br label %bb147
bb147:
  %t561 = load i1, ptr %l274, !tbaa !21
  store i1 %t561, ptr %l272, !tbaa !21
  br label %bb148
bb148:
  %t562 = load i1, ptr %l272, !tbaa !21
  store i1 %t562, ptr %l42, !tbaa !21
  %t563 = load i64, ptr %l8, !tbaa !24
  %t565 = icmp eq i64 %t563, 1
  br i1 %t565, label %bb149, label %bb150
bb149:
  %t567 = load i1, ptr %l42, !tbaa !21
  store i1 %t567, ptr %l277, !tbaa !21
  br label %bb151
bb150:
  store i1 false, ptr %l277, !tbaa !21
  br label %bb151
bb151:
  %t569 = load i1, ptr %l277, !tbaa !21
  br i1 %t569, label %bb152, label %bb153
bb152:
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t572 = getelementptr %"compiler/bindgen:gen", ptr %t570, i32 0, i32 24
  %t573 = load ptr, ptr %lp15
  %t574 = load { i64, ptr }, ptr %t573, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t572, { i64, ptr } %t574, i64 0)
  br label %bb154
bb153:
  br label %bb155
bb154:
  br label %bb155
bb155:
  %t577 = load ptr, ptr %l6, !tbaa !29
  %t579 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s1, ptr %s24, ptr %s24, ptr %t577, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d251, i32 0, i32 1) })
  store { i64, ptr } %t579, ptr %l283
  br label %bb156
bb156:
  %t580 = load { i64, ptr }, ptr %l283, !tbaa !27
  store { i64, ptr } %t580, ptr %l43, !tbaa !27
  %t581 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t583 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s24, ptr %s24, { i64, ptr } %t581, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d252, i32 0, i32 1) })
  store i1 %t583, ptr %l285
  br label %bb157
bb157:
  %t584 = load i1, ptr %l285, !tbaa !21
  br i1 %t584, label %bb158, label %bb159
bb158:
  store i1 true, ptr %l286, !tbaa !21
  br label %bb161
bb159:
  %t585 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t586 = load ptr, ptr %lp15
  %t587 = load { i64, ptr }, ptr %t586, !tbaa !27
  %t590 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s24, ptr %v0, { i64, ptr } %t585, { i64, ptr } %t587)
  store i1 %t590, ptr %l289
  br label %bb160
bb160:
  %t591 = load i1, ptr %l289, !tbaa !21
  store i1 %t591, ptr %l286, !tbaa !21
  br label %bb161
bb161:
  %t592 = load i1, ptr %l286, !tbaa !21
  br i1 %t592, label %bb162, label %bb163
bb162:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d253, i32 0, i32 1) }, ptr %l290, !tbaa !27
  br label %bb164
bb163:
  %t593 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t593, ptr %l290, !tbaa !27
  br label %bb164
bb164:
  %t595 = load { i64, ptr }, ptr %l290, !tbaa !27
  %t596 = extractvalue { i64, ptr } %t595, 1
  %t597 = extractvalue { i64, ptr } %t595, 0
  %t598 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t597)
  call void @olang_textcopy(ptr %t598, ptr %t596, i64 %t597)
  %t599 = insertvalue { i64, ptr } undef, i64 %t597, 0
  %t600 = insertvalue { i64, ptr } %t599, ptr %t598, 1
  %t602 = extractvalue { i64, ptr } %t600, 0
  %t603 = extractvalue { i64, ptr } %t600, 1
  %t604 = mul i64 %t602, 1
  %t605 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t604)
  call void @llvm.memcpy.p0.p0.i64(ptr %t605, ptr %t603, i64 %t604, i1 false)
  %t606 = insertvalue { i64, ptr } undef, i64 %t602, 0
  %t607 = insertvalue { i64, ptr } %t606, ptr %t605, 1
  store { i64, ptr } %t607, ptr %l44, !tbaa !27
  %t609 = load ptr, ptr %l0, !tbaa !29
  %t611 = getelementptr %"compiler/bindgen:gen", ptr %t609, i32 0, i32 8
  store ptr %t611, ptr %l295, !tbaa !29
  %t612 = load ptr, ptr %lp15
  %t613 = load { i64, ptr }, ptr %t612, !tbaa !27
  store { i64, ptr } %t613, ptr %l296, !tbaa !27
  %t614 = ptrtoint ptr %v0 to i64
  store i64 %t614, ptr %l297, !tbaa !24
  %t615 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acFunc_2e1
  br i1 %t615, label %bb165, label %bb166
bb165:
  %t617 = call ptr @__olang_region_make(ptr %v0)
  %t618 = ptrtoint ptr %t617 to i64
  store i64 %t618, ptr %l297, !tbaa !24
  br label %bb166
bb166:
  %t619 = load ptr, ptr %l6, !tbaa !29
  %t620 = load i64, ptr %l297
  %t621 = inttoptr i64 %t620 to ptr
  %t623 = call { i64, ptr } @compiler_2fbindgen_2etypeOf(ptr %s1, ptr %t621, ptr %t619)
  store { i64, ptr } %t623, ptr %l300
  br label %bb167
bb167:
  %t624 = load { i64, ptr }, ptr %l300, !tbaa !27
  %t625 = load i64, ptr %l297
  %t626 = inttoptr i64 %t625 to ptr
  %t627 = extractvalue { i64, ptr } %t624, 0
  %t628 = extractvalue { i64, ptr } %t624, 1
  %t629 = mul i64 %t627, 1
  %t630 = call ptr @__olang_scope_alloc(ptr %t626, i64 %t629)
  call void @llvm.memcpy.p0.p0.i64(ptr %t630, ptr %t628, i64 %t629, i1 false)
  %t631 = insertvalue { i64, ptr } undef, i64 %t627, 0
  %t632 = insertvalue { i64, ptr } %t631, ptr %t630, 1
  store { i64, ptr } %t632, ptr %l301, !tbaa !27
  %t633 = ptrtoint ptr %v0 to i64
  store i64 %t633, ptr %l302, !tbaa !24
  %t634 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acFunc_2e2
  br i1 %t634, label %bb168, label %bb169
bb168:
  %t636 = call ptr @__olang_region_make(ptr %v0)
  %t637 = ptrtoint ptr %t636 to i64
  store i64 %t637, ptr %l302, !tbaa !24
  br label %bb169
bb169:
  %t638 = load ptr, ptr %l36, !tbaa !29
  %t639 = load i64, ptr %l302
  %t640 = inttoptr i64 %t639 to ptr
  %t642 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %t640, ptr %t638)
  store { i64, ptr } %t642, ptr %l305
  br label %bb170
bb170:
  %t643 = ptrtoint ptr %v0 to i64
  store i64 %t643, ptr %l306, !tbaa !24
  %t644 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acFunc_2e3
  br i1 %t644, label %bb171, label %bb172
bb171:
  %t646 = call ptr @__olang_region_make(ptr %v0)
  %t647 = ptrtoint ptr %t646 to i64
  store i64 %t647, ptr %l306, !tbaa !24
  br label %bb172
bb172:
  %t648 = load ptr, ptr %l37, !tbaa !29
  %t649 = load i64, ptr %l306
  %t650 = inttoptr i64 %t649 to ptr
  %t652 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %t650, ptr %t648)
  store { i64, ptr } %t652, ptr %l309
  br label %bb173
bb173:
  %t653 = load i1, ptr %l42, !tbaa !21
  %t654 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t655 = load { i64, ptr }, ptr %l296, !tbaa !27
  %t656 = load { i64, ptr }, ptr %l301, !tbaa !27
  %t657 = load { i64, ptr }, ptr %l305, !tbaa !27
  %t658 = load { i64, ptr }, ptr %l309, !tbaa !27
  %t661 = call %"compiler/bindgen:cFunc" @compiler_2fbindgen_3acFunc_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t655, { i64, ptr } %t656, { i64, ptr } %t657, { i64, ptr } %t658, i1 %t653, { i64, ptr } %t654)
  store %"compiler/bindgen:cFunc" %t661, ptr %l312
  br label %bb174
bb174:
  %t662 = load ptr, ptr %l295, !tbaa !29
  %t663 = load %"compiler/bindgen:cFunc", ptr %l312
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2ePush_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v0, ptr %t662, %"compiler/bindgen:cFunc" %t663)
  br label %bb175
bb175:
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s2)
  br label %bb197
bb176:
  %t664 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t666 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t664, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d254, i32 0, i32 1) })
  store i1 %t666, ptr %l314
  br label %bb177
bb177:
  %t667 = load i1, ptr %l314, !tbaa !21
  br i1 %t667, label %bb178, label %bb179
bb178:
  %t668 = load ptr, ptr %l0, !tbaa !29
  %t669 = load i64, ptr %l8, !tbaa !24
  %t672 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewanted(ptr %v0, ptr %t668, i64 %t669)
  store i1 %t672, ptr %l318
  br label %bb180
bb179:
  store i1 false, ptr %l315, !tbaa !21
  br label %bb181
bb180:
  %t673 = load i1, ptr %l318, !tbaa !21
  store i1 %t673, ptr %l315, !tbaa !21
  br label %bb181
bb181:
  %t674 = load i1, ptr %l315, !tbaa !21
  br i1 %t674, label %bb182, label %bb183
bb182:
  %t675 = load ptr, ptr %lp15
  %t676 = load { i64, ptr }, ptr %t675, !tbaa !27
  %t678 = call i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %t676)
  store i1 %t678, ptr %l321
  br label %bb184
bb183:
  store i1 false, ptr %l319, !tbaa !21
  br label %bb185
bb184:
  %t679 = load i1, ptr %l321, !tbaa !21
  store i1 %t679, ptr %l319, !tbaa !21
  br label %bb185
bb185:
  %t680 = load i1, ptr %l319, !tbaa !21
  br i1 %t680, label %bb186, label %bb187
bb186:
  %t681 = load ptr, ptr %l6, !tbaa !29
  %t683 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s1, ptr %s2, ptr %s2, ptr %t681, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d255, i32 0, i32 1) })
  store { i64, ptr } %t683, ptr %l324
  br label %bb188
bb187:
  store i1 false, ptr %l322, !tbaa !21
  br label %bb190
bb188:
  %t684 = load { i64, ptr }, ptr %l324, !tbaa !27
  %t685 = extractvalue { i64, ptr } %t684, 0
  %t686 = extractvalue { i64, ptr } %t684, 1
  %t687 = mul i64 %t685, 1
  %t688 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t687)
  call void @llvm.memcpy.p0.p0.i64(ptr %t688, ptr %t686, i64 %t687, i1 false)
  %t689 = insertvalue { i64, ptr } undef, i64 %t685, 0
  %t690 = insertvalue { i64, ptr } %t689, ptr %t688, 1
  %t692 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t690, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d256, i32 0, i32 1) })
  store i1 %t692, ptr %l326
  br label %bb189
bb189:
  %t693 = load i1, ptr %l326, !tbaa !21
  %t694 = xor i1 %t693, true
  store i1 %t694, ptr %l322, !tbaa !21
  br label %bb190
bb190:
  %t696 = load i1, ptr %l322, !tbaa !21
  br i1 %t696, label %bb191, label %bb192
bb191:
  %t697 = load ptr, ptr %l0, !tbaa !29
  %t699 = getelementptr %"compiler/bindgen:gen", ptr %t697, i32 0, i32 18
  store ptr %t699, ptr %l329, !tbaa !29
  %t700 = ptrtoint ptr %v0 to i64
  store i64 %t700, ptr %l330, !tbaa !24
  %t701 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t701, label %bb193, label %bb194
bb192:
  br label %bb196
bb193:
  %t703 = call ptr @__olang_region_make(ptr %v0)
  %t704 = ptrtoint ptr %t703 to i64
  store i64 %t704, ptr %l330, !tbaa !24
  br label %bb194
bb194:
  %t705 = load ptr, ptr %lp15
  %t706 = load { i64, ptr }, ptr %t705, !tbaa !27
  %t708 = extractvalue { i64, ptr } %t706, 1
  %t709 = extractvalue { i64, ptr } %t706, 0
  %t710 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t711 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
  %t712 = add i64 %t709, %t711
  %t713 = load i64, ptr %l330
  %t714 = inttoptr i64 %t713 to ptr
  %t715 = call ptr @__olang_scope_alloc(ptr %t714, i64 %t712)
  call void @olang_textcopy(ptr %t715, ptr %t708, i64 %t709)
  %t716 = getelementptr i8, ptr %t715, i64 %t709
  call void @olang_textcopy(ptr %t716, ptr %t710, i64 %t711)
  %t717 = insertvalue { i64, ptr } undef, i64 %t712, 0
  %t718 = insertvalue { i64, ptr } %t717, ptr %t715, 1
  %t720 = load i64, ptr %l330
  %t721 = inttoptr i64 %t720 to ptr
  %t722 = extractvalue { i64, ptr } %t718, 0
  %t723 = extractvalue { i64, ptr } %t718, 1
  %t724 = mul i64 %t722, 1
  %t725 = call ptr @__olang_scope_alloc(ptr %t721, i64 %t724)
  call void @llvm.memcpy.p0.p0.i64(ptr %t725, ptr %t723, i64 %t724, i1 false)
  %t726 = insertvalue { i64, ptr } undef, i64 %t722, 0
  %t727 = insertvalue { i64, ptr } %t726, ptr %t725, 1
  %t728 = load ptr, ptr %l329, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t728, { i64, ptr } %t727)
  br label %bb195
bb195:
  br label %bb196
bb196:
  call void @__olang_scope_close(ptr %s2)
  br label %bb197
bb197:
  %t730 = load i64, ptr %l4, !tbaa !24
  %t732 = add i64 %t730, 1
  store i64 %t732, ptr %l4, !tbaa !24
  br label %bb2
bb198:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l13 = alloca ptr
  %l15 = alloca %"compiler/bindgen:record"
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l21 = alloca i64
  %l25 = alloca i64
  %rv = alloca i64
  %t24 = alloca %"compiler/bindgen:record", align 8
  %t27 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 6
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t12 = load i64, ptr %l7, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l2, !tbaa !24
  store i64 %t18, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/bindgen:gen", ptr %t20, i32 0, i32 5
  store ptr %t22, ptr %l13, !tbaa !29
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fbindgen_3arecord_2ector(ptr %t24, ptr %v1, ptr %v0, { i64, ptr } %t23)
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %t24, i64 216, i1 false)
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l13, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t27, ptr %l15, i64 216, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2ePush_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t26, ptr %t27)
  br label %bb9
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/bindgen:gen", ptr %t28, i32 0, i32 6
  store ptr %t30, ptr %l17, !tbaa !29
  %t31 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t31, ptr %l18, !tbaa !27
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/bindgen:gen", ptr %t32, i32 0, i32 5
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t34)
  store i64 %t36, ptr %l21
  br label %bb10
bb10:
  %t37 = load i64, ptr %l21, !tbaa !24
  %t38 = sub i64 %t37, 1
  %t39 = load ptr, ptr %l17, !tbaa !29
  %t40 = load { i64, ptr }, ptr %l18, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %t39, { i64, ptr } %t40, i64 %t38)
  br label %bb11
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/bindgen:gen", ptr %t42, i32 0, i32 5
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l25
  br label %bb12
bb12:
  %t47 = load i64, ptr %l25, !tbaa !24
  %t48 = sub i64 %t47, 1
  store i64 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t223 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t221, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d258, i32 0, i32 1) })
  store i1 %t223, ptr %l159
  br label %bb51
bb51:
  %t224 = load i1, ptr %l159, !tbaa !21
  br i1 %t224, label %bb52, label %bb53
bb52:
  %t225 = load ptr, ptr %l22, !tbaa !29
  %t227 = getelementptr %"compiler/bindgen:record", ptr %t225, i32 0, i32 11
  %t228 = load { i64, ptr }, ptr %t227, !tbaa !27
  %t230 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t228, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d259, i32 0, i32 1) })
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
  %t251 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d260, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d260, i32 0, i32 1) }, 0
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
  %t299 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d261, i32 0, i32 1) }, 1
  %t300 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d261, i32 0, i32 1) }, 0
  %t301 = load i64, ptr %l187, !tbaa !24
  %t302 = call i64 @__olang_fmt_i64(ptr null, i64 %t301)
  %t303 = add i64 %t300, %t302
  %t304 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d262, i32 0, i32 1) }, 1
  %t305 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d262, i32 0, i32 1) }, 0
  %t306 = add i64 %t303, %t305
  %t307 = load i64, ptr %l188, !tbaa !24
  %t308 = call i64 @__olang_fmt_i64(ptr null, i64 %t307)
  %t309 = add i64 %t306, %t308
  %t310 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t311 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
  %t312 = add i64 %t309, %t311
  %t313 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t314 = extractvalue { i64, ptr } %t313, 1
  %t315 = extractvalue { i64, ptr } %t313, 0
  %t316 = add i64 %t312, %t315
  %t317 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d264, i32 0, i32 1) }, 1
  %t318 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d264, i32 0, i32 1) }, 0
  %t319 = add i64 %t316, %t318
  %t320 = load i64, ptr %l192, !tbaa !24
  %t321 = call i64 @__olang_fmt_i64(ptr null, i64 %t320)
  %t322 = add i64 %t319, %t321
  %t323 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d265, i32 0, i32 1) }, 1
  %t324 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d265, i32 0, i32 1) }, 0
  %t325 = add i64 %t322, %t324
  %t326 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t326, 1
  %t328 = extractvalue { i64, ptr } %t326, 0
  %t329 = add i64 %t325, %t328
  %t330 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d266, i32 0, i32 1) }, 1
  %t331 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d266, i32 0, i32 1) }, 0
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
  %t389 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t387, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d267, i32 0, i32 1) })
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
  %t460 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s19, ptr %s20, ptr %s20, ptr %t458, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d268, i32 0, i32 1) })
  store { i64, ptr } %t460, ptr %l234
  br label %bb97
bb97:
  %t461 = load { i64, ptr }, ptr %l234, !tbaa !27
  store { i64, ptr } %t461, ptr %l33, !tbaa !27
  %t462 = load ptr, ptr %l32, !tbaa !29
  %t464 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %s19, ptr %s20, ptr %s20, ptr %t462, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d269, i32 0, i32 1) })
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
  %t473 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s20, ptr %s20, { i64, ptr } %t471, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d270, i32 0, i32 1) })
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
  %t479 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s20, ptr %s20, { i64, ptr } %t477, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d271, i32 0, i32 1) })
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

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca { i64, ptr }
  %l20 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i64
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 18
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t6)
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
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store { i64, ptr } %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 1
  %t25 = extractvalue { i64, ptr } %t22, 0
  %t26 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d272, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d272, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t24, i64 %t25)
  %t30 = getelementptr i8, ptr %t29, i64 %t25
  call void @olang_textcopy(ptr %t30, ptr %t26, i64 %t27)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t29, 1
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = extractvalue { i64, ptr } %t32, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  %t42 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t20, { i64, ptr } %t39)
  store i1 %t42, ptr %l20
  br label %bb7
bb7:
  %t43 = load i1, ptr %l20, !tbaa !21
  br i1 %t43, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb9:
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t44 = load i64, ptr %l4, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l4, !tbaa !24
  br label %bb1
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/bindgen:gen", ptr %t48, i32 0, i32 18
  store ptr %t50, ptr %l24, !tbaa !29
  %t51 = ptrtoint ptr %v0 to i64
  store i64 %t51, ptr %l25, !tbaa !24
  %t52 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t54 = call ptr @__olang_region_make(ptr %v0)
  %t55 = ptrtoint ptr %t54 to i64
  store i64 %t55, ptr %l25, !tbaa !24
  br label %bb14
bb14:
  %t56 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t56, 1
  %t60 = extractvalue { i64, ptr } %t56, 0
  %t61 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d273, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d273, i32 0, i32 1) }, 0
  %t63 = add i64 %t60, %t62
  %t65 = extractvalue { i64, ptr } %a2, 1
  %t66 = extractvalue { i64, ptr } %a2, 0
  %t67 = add i64 %t63, %t66
  %t68 = load i64, ptr %l25
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = call ptr @__olang_scope_alloc(ptr %t69, i64 %t67)
  call void @olang_textcopy(ptr %t70, ptr %t59, i64 %t60)
  %t71 = getelementptr i8, ptr %t70, i64 %t60
  call void @olang_textcopy(ptr %t71, ptr %t61, i64 %t62)
  %t72 = getelementptr i8, ptr %t71, i64 %t62
  call void @olang_textcopy(ptr %t72, ptr %t65, i64 %t66)
  %t73 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t70, 1
  %t76 = load i64, ptr %l25
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = extractvalue { i64, ptr } %t74, 0
  %t79 = extractvalue { i64, ptr } %t74, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %t77, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t84 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t84, { i64, ptr } %t83)
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
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
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d274, i32 0, i32 1) })
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
  %t3 = call { i64, ptr } @compiler_2fbindgen_2etext(ptr %v0, ptr %s0, ptr %v1, ptr %t1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d275, i32 0, i32 1) })
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
  %t10 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t8, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d276, i32 0, i32 1) })
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
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s3, { i64, ptr } %t55, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d277, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d278, i32 0, i32 1) }, ptr %l33, !tbaa !27
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
  %t5 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v0, ptr %v1, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 -1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d279, i32 0, i32 1) })
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

define dso_local { i64, ptr } @compiler_2fbindgen_2efirstError(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/text:LineIter"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l5 = alloca %"std/prelude/text:LineIter"
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l11 = alloca i1
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l31 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %t1)
  store %"std/prelude/text:LineIter" %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load %"std/prelude/text:LineIter", ptr %l5
  store %"std/prelude/text:LineIter" %t4, ptr %l1
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t6 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l1)
  %t7 = extractvalue { i32, { i64, ptr } } %t6, 1
  %t8 = extractvalue { i32, { i64, ptr } } %t6, 0
  store i32 %t8, ptr %l9
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb4, label %ok.10, !prof !99
ok.10:
  store { i64, ptr } %t7, ptr %l8
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t11, ptr %l6, !tbaa !27
  br label %bb6
bb4:
  %t12 = load i32, ptr %l9, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  store i1 %t15, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb6:
  %t16 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t16, ptr %l2, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t19 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s2, { i64, ptr } %t17, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d280, i32 0, i32 1) })
  %t20 = extractvalue { i32, i64 } %t19, 1
  %t21 = extractvalue { i32, i64 } %t19, 0
  store i32 %t21, ptr %l15
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb8, label %ok.23, !prof !99
ok.23:
  store i64 %t20, ptr %l14
  br label %bb7
bb7:
  %t24 = load i64, ptr %l14, !tbaa !24
  store i64 %t24, ptr %l12, !tbaa !24
  br label %bb10
bb8:
  br label %bb9
bb9:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb10
bb10:
  %t25 = load i64, ptr %l12, !tbaa !24
  store i64 %t25, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = icmp sge i64 %t26, 0
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t30, ptr %l18, !tbaa !27
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = add i64 %t31, 7
  store i64 %t33, ptr %l20, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t34, 0
  store i64 %t37, ptr %l23, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l24, !tbaa !24
  %t40 = load i64, ptr %l20, !tbaa !24
  %t41 = icmp sge i64 %t40, 0
  br i1 %t41, label %bb13, label %bb14
bb12:
  br label %bb19
bb13:
  %t43 = load i64, ptr %l20, !tbaa !24
  %t44 = load i64, ptr %l23, !tbaa !24
  %t45 = icmp sle i64 %t43, %t44
  br i1 %t45, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_b4f4b1f3947eb18f_4b11d328df759133)
  unreachable
bb15:
  %t47 = load i64, ptr %l23, !tbaa !24
  %t48 = load i64, ptr %l24, !tbaa !24
  %t49 = icmp sle i64 %t47, %t48
  br i1 %t49, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_b4f4b1f3947eb18f_4b11d328df759133)
  unreachable
bb17:
  %t51 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l20, !tbaa !24
  %t54 = load i64, ptr %l23, !tbaa !24
  %t55 = getelementptr i8, ptr %t52, i64 %t53
  %t56 = sub i64 %t54, %t53
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = extractvalue { i64, ptr } %t58, 0
  %t62 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t60, i64 %t61)
  %t63 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t64, ptr %rv
  br label %ret
bb18:
  call void @__olang_check_failed(ptr @olang_loc_b4f4b1f3947eb18f_4b11d328df759133)
  unreachable
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb20:
  br label %bb2
bb21:
  %t66 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t68 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s0, { i64, ptr } %t66)
  store { i64, ptr } %t68, ptr %l31
  br label %bb22
bb22:
  %t69 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 1
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t72 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t71)
  call void @olang_textcopy(ptr %t72, ptr %t70, i64 %t71)
  %t73 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t74, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fbindgen_2eflag(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %rv = alloca i1
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
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l2, !tbaa !29
  store ptr %t12, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t13 = load ptr, ptr %l10, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l10, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 8}
  %t19 = icmp eq i64 %t17, 1
  store i1 %t19, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t20 = load i1, ptr %l11, !tbaa !21
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { i1 }, ptr %t23, i32 0, i32 0
  %t25 = load i1, ptr %t24
  store i1 %t25, ptr %l3, !tbaa !21
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t27 = load i1, ptr %l3, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_c89c4e9e31b29b9e_9d77991e4d65189a)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2einner(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call ptr @compiler_2fbindgen_2emember(ptr %v0, ptr %s0, ptr %v0, ptr %a0, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d281, i32 0, i32 1) })
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb4, label %bb5
bb3:
  br label %bb15
bb4:
  %t15 = load ptr, ptr %l8, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 8}
  %t18 = icmp eq i64 %t16, 6
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { { i64, ptr } }, ptr %t22, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23
  store { i64, ptr } %t24, ptr %l2, !tbaa !27
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l15, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l16, !tbaa !24
  %t30 = load i64, ptr %l16, !tbaa !24
  %t31 = mul i64 %t30, 8
  %t32 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l17, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l16, !tbaa !24
  %t40 = mul i64 %t39, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t41, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t42 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t42, ptr %rv
  br label %ret
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_6ea08524187c2be0_2ef7bb2e3d9cc7b4)
  unreachable
bb14:
  br label %bb15
bb15:
  %t43 = icmp sge i64 0, 0
  br i1 %t43, label %bb16, label %bb17
bb16:
  %t45 = icmp sle i64 0, 1152921504606846975
  br i1 %t45, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_feb39f4cfa8fb0e2_4824786a1f7bac1e)
  unreachable
bb18:
  %t47 = mul i64 0, 8
  %t48 = insertvalue { i64, ptr } undef, i64 0, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t49, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_feb39f4cfa8fb0e2_4824786a1f7bac1e)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fbindgen_2emember(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l42 = alloca { i64, ptr }
  %l46 = alloca i1
  %l48 = alloca { i64, ptr }
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { ptr }, ptr %t12, i32 0, i32 0
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb23
bb5:
  store i64 0, ptr %l3, !tbaa !24
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = call i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l16
  br label %bb6
bb6:
  %t19 = load i64, ptr %l16, !tbaa !24
  store i64 %t19, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb12
bb9:
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l23, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb11
bb11:
  %t46 = load i64, ptr %l23, !tbaa !24
  store i64 %t46, ptr %l20, !tbaa !24
  br label %bb12
bb12:
  %t47 = load i64, ptr %l20, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb14, label %bb15
bb14:
  br label %bb22
bb15:
  br label %bb16
bb16:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l8, !tbaa !24
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"std/json:Object", ptr %t66, i32 0, i32 0
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l42, !tbaa !27
  %t70 = load i64, ptr %l8, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr { i64, ptr }, ptr %t73, i64 %t70
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !37
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t75, { i64, ptr } %a1)
  store i1 %t79, ptr %l46
  br label %bb17
bb17:
  %t80 = load i1, ptr %l46, !tbaa !21
  br i1 %t80, label %bb18, label %bb19
bb18:
  %t81 = load ptr, ptr %l2, !tbaa !29
  %t83 = getelementptr %"std/json:Object", ptr %t81, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l48, !tbaa !27
  %t85 = load i64, ptr %l8, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr ptr, ptr %t88, i64 %t85
  %t90 = load ptr, ptr %t89, !tbaa !39
  store ptr %t90, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l7, !tbaa !24
  br label %bb13
bb22:
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_76a363c24681a0e6_dedc35590a663c5a)
  unreachable
bb28:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2enoReturnOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = load { i64, ptr }, ptr @G_2ecompiler_2fbindgen_2eNoReturnAttr, !tbaa !27
  %t3 = load ptr, ptr @__olang_prog_scope
  %t6 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %t3, { i64, ptr } %t1, { i64, ptr } %t2)
  store i1 %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load i1, ptr %l3, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t12 = load { i64, ptr }, ptr @G_2ecompiler_2fbindgen_2eNoReturnAttr, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t17 = sub i64 %t11, %t14
  store i64 %t17, ptr %l9, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  store i64 %t19, ptr %l10, !tbaa !24
  %t20 = icmp sge i64 0, 0
  br i1 %t20, label %bb4, label %bb5
bb3:
  br label %bb10
bb4:
  %t22 = load i64, ptr %l9, !tbaa !24
  %t23 = icmp sle i64 0, %t22
  br i1 %t23, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_98d0b4f031acf4f7_7a1fbeedfef40c4b)
  unreachable
bb6:
  %t25 = load i64, ptr %l9, !tbaa !24
  %t26 = load i64, ptr %l10, !tbaa !24
  %t27 = icmp sle i64 %t25, %t26
  br i1 %t27, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_98d0b4f031acf4f7_7a1fbeedfef40c4b)
  unreachable
bb8:
  %t29 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l9, !tbaa !24
  %t32 = getelementptr i8, ptr %t30, i64 0
  %t33 = sub i64 %t31, 0
  %t34 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t32, 1
  %t37 = extractvalue { i64, ptr } %t35, 1
  %t38 = extractvalue { i64, ptr } %t35, 0
  %t39 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t38)
  call void @olang_textcopy(ptr %t39, ptr %t37, i64 %t38)
  %t40 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %rv
  br label %ret
bb9:
  call void @__olang_check_failed(ptr @olang_loc_98d0b4f031acf4f7_7a1fbeedfef40c4b)
  unreachable
bb10:
  %t43 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fbindgen_2enumBits(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i1
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i64
  %l27 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d282, i32 0, i32 1) })
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d283, i32 0, i32 1) })
  store i1 %t7, ptr %l5
  br label %bb4
bb4:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i64 8, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t11, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d284, i32 0, i32 1) })
  store i1 %t13, ptr %l8
  br label %bb9
bb9:
  %t14 = load i1, ptr %l8, !tbaa !21
  br i1 %t14, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i64 16, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = icmp slt i64 %t18, 2
  br i1 %t20, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t23, ptr %l15, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t24, 0
  store i64 %t27, ptr %l18, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l19, !tbaa !24
  %t30 = icmp sge i64 1, 0
  br i1 %t30, label %bb16, label %bb17
bb16:
  %t32 = load i64, ptr %l18, !tbaa !24
  %t33 = icmp sle i64 1, %t32
  br i1 %t33, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_b9ed3bac91748577_8bd4ae03d42ae063)
  unreachable
bb18:
  %t35 = load i64, ptr %l18, !tbaa !24
  %t36 = load i64, ptr %l19, !tbaa !24
  %t37 = icmp sle i64 %t35, %t36
  br i1 %t37, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_b9ed3bac91748577_8bd4ae03d42ae063)
  unreachable
bb20:
  %t39 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l18, !tbaa !24
  %t42 = getelementptr i8, ptr %t40, i64 1
  %t43 = sub i64 %t41, 1
  %t44 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  store { i64, ptr } %t45, ptr %l23, !tbaa !27
  %t46 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t47 = extractvalue { i32, i64 } %t46, 1
  %t48 = extractvalue { i32, i64 } %t46, 0
  store i32 %t48, ptr %l25
  %t49 = icmp ne i32 %t48, 0
  br i1 %t49, label %bb23, label %ok.50, !prof !99
ok.50:
  store i64 %t47, ptr %l24
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_b9ed3bac91748577_8bd4ae03d42ae063)
  unreachable
bb22:
  %t51 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t52 = load i64, ptr %l24, !tbaa !24
  %t53 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t51, i64 %t52)
  %t54 = extractvalue { i32, i64 } %t53, 1
  %t55 = extractvalue { i32, i64 } %t53, 0
  store i32 %t55, ptr %l27
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb26, label %ok.57, !prof !99
ok.57:
  store i64 %t54, ptr %l26
  br label %bb25
bb23:
  br label %bb24
bb24:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb27
bb25:
  %t58 = load i64, ptr %l26, !tbaa !24
  store i64 %t58, ptr %l14, !tbaa !24
  br label %bb27
bb26:
  br label %bb24
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load i64, ptr %l14, !tbaa !24
  store i64 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fbindgen_2epreludeName(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue { i64, ptr } undef, i64 19, 0
  %t5 = insertvalue { i64, ptr } %t4, ptr @G_2ecompiler_2fbindgen_2epreludeNames, 1
  %t7 = load ptr, ptr @__olang_prog_scope
  %t10 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %t7, ptr %v0, { i64, ptr } %t5, { i64, ptr } %a0)
  store i1 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i1, ptr %l6, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d285, i32 0, i32 1) })
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d286, i32 0, i32 1) }, ptr %l7, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d287, i32 0, i32 1) }, ptr %l35, !tbaa !27
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d288, i32 0, i32 1) }, ptr %l49, !tbaa !27
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
  %t122 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t120, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d289, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d290, i32 0, i32 1) }, ptr %l54, !tbaa !27
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

define dso_local { i64, ptr } @compiler_2fbindgen_2etextLiteral(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i8
  %l8 = alloca i8
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca %"std/prelude/text:StringBuilder"
  %l28 = alloca { i64, ptr }
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l55 = alloca i1
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l86 = alloca i1
  %l87 = alloca { i64, ptr }
  %l90 = alloca i1
  %l91 = alloca i1
  %l92 = alloca { i64, ptr }
  %l95 = alloca i8
  %l97 = alloca i1
  %l98 = alloca { i64, ptr }
  %l101 = alloca i8
  %l106 = alloca i64
  %l107 = alloca { i64, ptr }
  %l109 = alloca i64
  %l110 = alloca i64
  %l111 = alloca i64
  %l115 = alloca { i64, ptr }
  %l116 = alloca i64
  %l117 = alloca i32
  %l118 = alloca i64
  %l119 = alloca i32
  %l123 = alloca i1
  %l132 = alloca i1
  %l137 = alloca i1
  %l138 = alloca { i64, ptr }
  %l142 = alloca i1
  %l143 = alloca { i64, ptr }
  %l150 = alloca i64
  %l151 = alloca { i64, ptr }
  %l152 = alloca i64
  %l153 = alloca i64
  %l154 = alloca i64
  %l158 = alloca { i64, ptr }
  %l159 = alloca i64
  %l160 = alloca i32
  %l161 = alloca i64
  %l162 = alloca i32
  %l164 = alloca i64
  %l186 = alloca i1
  %l189 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %l191 = alloca i64
  %l192 = alloca { i64, ptr }
  %l195 = alloca i1
  %l204 = alloca i1
  %l211 = alloca ptr
  %l213 = alloca i8
  %l214 = alloca i64
  %l215 = alloca i32
  %l216 = alloca { i64, ptr }
  %l218 = alloca { i64, ptr }
  %l224 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d291, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t7, ptr %l16, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l17, !tbaa !24
  %t10 = load i64, ptr %l17, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l18, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l17, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t21, ptr %l16, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t22 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t23 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t23, ptr %l19
  br label %bb4
bb4:
  %t24 = load %"std/prelude/text:StringBuilder", ptr %l19
  store %"std/prelude/text:StringBuilder" %t24, ptr %l1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 34)
  br label %bb5
bb5:
  %t26 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t26, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb7, label %bb8
bb7:
  br label %bb163
bb8:
  br label %bb9
bb9:
  %t40 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t40, ptr %l28, !tbaa !27
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %t44, i64 %t41
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !37
  store { i64, ptr } %t46, ptr %l5, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t52 = icmp slt i64 %t50, 2
  br i1 %t52, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb12
bb11:
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t54, ptr %l35, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i8, ptr %t56, i64 0
  %t58 = load i8, ptr %t57, !tbaa !32
  %t60 = icmp ne i8 %t58, 34
  store i1 %t60, ptr %l34, !tbaa !21
  br label %bb12
bb12:
  %t62 = load i1, ptr %l34, !tbaa !21
  br i1 %t62, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d292, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t63, ptr %l39, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l40, !tbaa !24
  %t66 = load i64, ptr %l40, !tbaa !24
  %t67 = mul i64 %t66, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t67)
  %t69 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  store { i64, ptr } %t70, ptr %l41, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = load i64, ptr %l40, !tbaa !24
  %t76 = mul i64 %t75, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t72, ptr %t74, i64 %t76, i1 false)
  %t77 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t77, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t78 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t78, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  store i64 1, ptr %l6, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t80 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t84 = sub i64 %t82, 1
  %t87 = icmp slt i64 %t79, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb17, label %bb18
bb17:
  br label %bb161
bb18:
  br label %bb19
bb19:
  %t91 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t91, ptr %l48, !tbaa !27
  %t92 = load i64, ptr %l6, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i8, ptr %t95, i64 %t92
  %t97 = load i8, ptr %t96, !tbaa !32
  store i8 %t97, ptr %l7, !tbaa !22
  %t99 = load i8, ptr %l7, !tbaa !22
  %t101 = icmp ne i8 %t99, 92
  br i1 %t101, label %bb20, label %bb21
bb20:
  %t103 = load i8, ptr %l7, !tbaa !22
  %t105 = icmp eq i8 %t103, 34
  br i1 %t105, label %bb22, label %bb23
bb21:
  br label %bb30
bb22:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb24
bb23:
  %t107 = load i8, ptr %l7, !tbaa !22
  %t109 = icmp eq i8 %t107, 92
  store i1 %t109, ptr %l55, !tbaa !21
  br label %bb24
bb24:
  %t111 = load i1, ptr %l55, !tbaa !21
  br i1 %t111, label %bb25, label %bb26
bb25:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 92)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  %t113 = load i8, ptr %l7, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t113)
  br label %bb29
bb29:
  %t116 = load i64, ptr %l6, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l6, !tbaa !24
  br label %bb160
bb30:
  %t120 = load i64, ptr %l6, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l6, !tbaa !24
  %t124 = load i64, ptr %l6, !tbaa !24
  %t125 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t129 = sub i64 %t127, 1
  %t132 = icmp sge i64 %t124, %t129
  br i1 %t132, label %bb31, label %bb32
bb31:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d293, i32 0, i32 1) }, ptr %l70, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t134, ptr %l71, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 0
  store i64 %t136, ptr %l72, !tbaa !24
  %t137 = load i64, ptr %l72, !tbaa !24
  %t138 = mul i64 %t137, 1
  %t139 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t138)
  %t140 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  store { i64, ptr } %t141, ptr %l73, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = load i64, ptr %l72, !tbaa !24
  %t147 = mul i64 %t146, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t143, ptr %t145, i64 %t147, i1 false)
  %t148 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t148, ptr %l71, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t149 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t149, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t150 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t150, ptr %l74, !tbaa !27
  %t151 = load i64, ptr %l6, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i8, ptr %t154, i64 %t151
  %t156 = load i8, ptr %t155, !tbaa !32
  store i8 %t156, ptr %l8, !tbaa !22
  store i64 -1, ptr %l9, !tbaa !24
  %t158 = load i8, ptr %l8, !tbaa !22
  %t160 = icmp eq i8 %t158, 120
  br i1 %t160, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s9
  %t162 = load i64, ptr %l6, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l10, !tbaa !24
  br label %bb36
bb35:
  %t166 = load i8, ptr %l8, !tbaa !22
  %t168 = icmp uge i8 %t166, 48
  br i1 %t168, label %bb66, label %bb67
bb36:
  %t170 = load i64, ptr %l10, !tbaa !24
  %t171 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t175 = sub i64 %t173, 1
  %t178 = icmp slt i64 %t170, %t175
  br i1 %t178, label %bb37, label %bb38
bb37:
  %t180 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t180, ptr %l87, !tbaa !27
  %t181 = load i64, ptr %l10, !tbaa !24
  %t183 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr i8, ptr %t184, i64 %t181
  %t186 = load i8, ptr %t185, !tbaa !32
  %t188 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t186)
  store i1 %t188, ptr %l90
  br label %bb39
bb38:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb48
bb39:
  %t189 = load i1, ptr %l90, !tbaa !21
  br i1 %t189, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb47
bb41:
  %t190 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t190, ptr %l92, !tbaa !27
  %t191 = load i64, ptr %l10, !tbaa !24
  %t193 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr i8, ptr %t194, i64 %t191
  %t196 = load i8, ptr %t195, !tbaa !32
  %t198 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %t196)
  store i8 %t198, ptr %l95
  br label %bb42
bb42:
  %t199 = load i8, ptr %l95, !tbaa !22
  %t200 = icmp uge i8 %t199, 97
  br i1 %t200, label %bb43, label %bb44
bb43:
  %t202 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t202, ptr %l98, !tbaa !27
  %t203 = load i64, ptr %l10, !tbaa !24
  %t205 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i8, ptr %t206, i64 %t203
  %t208 = load i8, ptr %t207, !tbaa !32
  %t210 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %t208)
  store i8 %t210, ptr %l101
  br label %bb45
bb44:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb46
bb45:
  %t211 = load i8, ptr %l101, !tbaa !22
  %t212 = icmp ule i8 %t211, 102
  store i1 %t212, ptr %l97, !tbaa !21
  br label %bb46
bb46:
  %t214 = load i1, ptr %l97, !tbaa !21
  store i1 %t214, ptr %l91, !tbaa !21
  br label %bb47
bb47:
  %t215 = load i1, ptr %l91, !tbaa !21
  store i1 %t215, ptr %l86, !tbaa !21
  br label %bb48
bb48:
  %t216 = load i1, ptr %l86, !tbaa !21
  %t217 = xor i1 %t216, true
  br i1 %t217, label %bb49, label %bb50
bb49:
  br label %bb53
bb50:
  br label %bb51
bb51:
  %t219 = load i64, ptr %l10, !tbaa !24
  %t221 = add i64 %t219, 1
  store i64 %t221, ptr %l10, !tbaa !24
  br label %bb52
bb52:
  br label %bb36
bb53:
  %t223 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t223, ptr %l107, !tbaa !27
  %t224 = load i64, ptr %l6, !tbaa !24
  %t226 = add i64 %t224, 1
  store i64 %t226, ptr %l109, !tbaa !24
  %t227 = load i64, ptr %l10, !tbaa !24
  store i64 %t227, ptr %l110, !tbaa !24
  %t228 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t228, 0
  store i64 %t229, ptr %l111, !tbaa !24
  %t230 = load i64, ptr %l109, !tbaa !24
  %t231 = icmp sge i64 %t230, 0
  br i1 %t231, label %bb54, label %bb55
bb54:
  %t233 = load i64, ptr %l109, !tbaa !24
  %t234 = load i64, ptr %l110, !tbaa !24
  %t235 = icmp sle i64 %t233, %t234
  br i1 %t235, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_d82489adf04aec69_8da73aeba875ea7d)
  unreachable
bb56:
  %t237 = load i64, ptr %l110, !tbaa !24
  %t238 = load i64, ptr %l111, !tbaa !24
  %t239 = icmp sle i64 %t237, %t238
  br i1 %t239, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_d82489adf04aec69_8da73aeba875ea7d)
  unreachable
bb58:
  %t241 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = load i64, ptr %l109, !tbaa !24
  %t244 = load i64, ptr %l110, !tbaa !24
  %t245 = getelementptr i8, ptr %t242, i64 %t243
  %t246 = sub i64 %t244, %t243
  %t247 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t245, 1
  store { i64, ptr } %t248, ptr %l115, !tbaa !27
  %t249 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s9, i64 16)
  %t250 = extractvalue { i32, i64 } %t249, 1
  %t251 = extractvalue { i32, i64 } %t249, 0
  store i32 %t251, ptr %l117
  %t252 = icmp ne i32 %t251, 0
  br i1 %t252, label %bb61, label %ok.253, !prof !99
ok.253:
  store i64 %t250, ptr %l116
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_d82489adf04aec69_8da73aeba875ea7d)
  unreachable
bb60:
  %t254 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t255 = load i64, ptr %l116, !tbaa !24
  %t256 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t254, i64 %t255)
  %t257 = extractvalue { i32, i64 } %t256, 1
  %t258 = extractvalue { i32, i64 } %t256, 0
  store i32 %t258, ptr %l119
  %t259 = icmp ne i32 %t258, 0
  br i1 %t259, label %bb64, label %ok.260, !prof !99
ok.260:
  store i64 %t257, ptr %l118
  br label %bb63
bb61:
  br label %bb62
bb62:
  store i64 -1, ptr %l106, !tbaa !24
  br label %bb65
bb63:
  %t261 = load i64, ptr %l118, !tbaa !24
  store i64 %t261, ptr %l106, !tbaa !24
  br label %bb65
bb64:
  br label %bb62
bb65:
  %t262 = load i64, ptr %l106, !tbaa !24
  store i64 %t262, ptr %l9, !tbaa !24
  %t263 = load i64, ptr %l10, !tbaa !24
  store i64 %t263, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s9)
  br label %bb132
bb66:
  %t265 = load i8, ptr %l8, !tbaa !22
  %t267 = icmp ule i8 %t265, 55
  store i1 %t267, ptr %l123, !tbaa !21
  br label %bb68
bb67:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb68
bb68:
  %t269 = load i1, ptr %l123, !tbaa !21
  br i1 %t269, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s12
  %t270 = load i64, ptr %l6, !tbaa !24
  store i64 %t270, ptr %l11, !tbaa !24
  br label %bb71
bb70:
  %t272 = load i8, ptr %l8, !tbaa !22
  %t274 = icmp eq i8 %t272, 110
  br i1 %t274, label %bb98, label %bb99
bb71:
  %t276 = load i64, ptr %l11, !tbaa !24
  %t277 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t277, 0
  %t281 = sub i64 %t279, 1
  %t284 = icmp slt i64 %t276, %t281
  br i1 %t284, label %bb72, label %bb73
bb72:
  %t286 = load i64, ptr %l11, !tbaa !24
  %t287 = load i64, ptr %l6, !tbaa !24
  %t289 = add i64 %t287, 3
  %t292 = icmp slt i64 %t286, %t289
  store i1 %t292, ptr %l132, !tbaa !21
  br label %bb74
bb73:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb74
bb74:
  %t294 = load i1, ptr %l132, !tbaa !21
  br i1 %t294, label %bb75, label %bb76
bb75:
  %t295 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t295, ptr %l138, !tbaa !27
  %t296 = load i64, ptr %l11, !tbaa !24
  %t298 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !27
  %t300 = getelementptr i8, ptr %t299, i64 %t296
  %t301 = load i8, ptr %t300, !tbaa !32
  %t303 = icmp uge i8 %t301, 48
  store i1 %t303, ptr %l137, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l137, !tbaa !21
  br label %bb77
bb77:
  %t305 = load i1, ptr %l137, !tbaa !21
  br i1 %t305, label %bb78, label %bb79
bb78:
  %t306 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t306, ptr %l143, !tbaa !27
  %t307 = load i64, ptr %l11, !tbaa !24
  %t309 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr i8, ptr %t310, i64 %t307
  %t312 = load i8, ptr %t311, !tbaa !32
  %t314 = icmp ule i8 %t312, 55
  store i1 %t314, ptr %l142, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l142, !tbaa !21
  br label %bb80
bb80:
  %t316 = load i1, ptr %l142, !tbaa !21
  %t317 = xor i1 %t316, true
  br i1 %t317, label %bb81, label %bb82
bb81:
  br label %bb85
bb82:
  br label %bb83
bb83:
  %t319 = load i64, ptr %l11, !tbaa !24
  %t321 = add i64 %t319, 1
  store i64 %t321, ptr %l11, !tbaa !24
  br label %bb84
bb84:
  br label %bb71
bb85:
  %t323 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t323, ptr %l151, !tbaa !27
  %t324 = load i64, ptr %l6, !tbaa !24
  store i64 %t324, ptr %l152, !tbaa !24
  %t325 = load i64, ptr %l11, !tbaa !24
  store i64 %t325, ptr %l153, !tbaa !24
  %t326 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t326, 0
  store i64 %t327, ptr %l154, !tbaa !24
  %t328 = load i64, ptr %l152, !tbaa !24
  %t329 = icmp sge i64 %t328, 0
  br i1 %t329, label %bb86, label %bb87
bb86:
  %t331 = load i64, ptr %l152, !tbaa !24
  %t332 = load i64, ptr %l153, !tbaa !24
  %t333 = icmp sle i64 %t331, %t332
  br i1 %t333, label %bb88, label %bb89
bb87:
  call void @__olang_check_failed(ptr @olang_loc_e159f608b90be7c_888d447c7b7c1020)
  unreachable
bb88:
  %t335 = load i64, ptr %l153, !tbaa !24
  %t336 = load i64, ptr %l154, !tbaa !24
  %t337 = icmp sle i64 %t335, %t336
  br i1 %t337, label %bb90, label %bb91
bb89:
  call void @__olang_check_failed(ptr @olang_loc_e159f608b90be7c_888d447c7b7c1020)
  unreachable
bb90:
  %t339 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !27
  %t341 = load i64, ptr %l152, !tbaa !24
  %t342 = load i64, ptr %l153, !tbaa !24
  %t343 = getelementptr i8, ptr %t340, i64 %t341
  %t344 = sub i64 %t342, %t341
  %t345 = insertvalue { i64, ptr } undef, i64 %t344, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t343, 1
  store { i64, ptr } %t346, ptr %l158, !tbaa !27
  %t347 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s12, i64 8)
  %t348 = extractvalue { i32, i64 } %t347, 1
  %t349 = extractvalue { i32, i64 } %t347, 0
  store i32 %t349, ptr %l160
  %t350 = icmp ne i32 %t349, 0
  br i1 %t350, label %bb93, label %ok.351, !prof !99
ok.351:
  store i64 %t348, ptr %l159
  br label %bb92
bb91:
  call void @__olang_check_failed(ptr @olang_loc_e159f608b90be7c_888d447c7b7c1020)
  unreachable
bb92:
  %t352 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t353 = load i64, ptr %l159, !tbaa !24
  %t354 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t352, i64 %t353)
  %t355 = extractvalue { i32, i64 } %t354, 1
  %t356 = extractvalue { i32, i64 } %t354, 0
  store i32 %t356, ptr %l162
  %t357 = icmp ne i32 %t356, 0
  br i1 %t357, label %bb96, label %ok.358, !prof !99
ok.358:
  store i64 %t355, ptr %l161
  br label %bb95
bb93:
  br label %bb94
bb94:
  store i64 -1, ptr %l150, !tbaa !24
  br label %bb97
bb95:
  %t359 = load i64, ptr %l161, !tbaa !24
  store i64 %t359, ptr %l150, !tbaa !24
  br label %bb97
bb96:
  br label %bb94
bb97:
  %t360 = load i64, ptr %l150, !tbaa !24
  store i64 %t360, ptr %l9, !tbaa !24
  %t361 = load i64, ptr %l11, !tbaa !24
  store i64 %t361, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s12)
  br label %bb131
bb98:
  br label %bb100
bb99:
  br label %bb101
bb100:
  store i64 10, ptr %l164, !tbaa !24
  br label %bb130
bb101:
  %t363 = load i8, ptr %l8, !tbaa !22
  %t365 = icmp eq i8 %t363, 116
  br i1 %t365, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  store i64 9, ptr %l164, !tbaa !24
  br label %bb130
bb105:
  %t367 = load i8, ptr %l8, !tbaa !22
  %t369 = icmp eq i8 %t367, 114
  br i1 %t369, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb109
bb108:
  store i64 13, ptr %l164, !tbaa !24
  br label %bb130
bb109:
  %t371 = load i8, ptr %l8, !tbaa !22
  %t373 = icmp eq i8 %t371, 97
  br i1 %t373, label %bb110, label %bb111
bb110:
  br label %bb112
bb111:
  br label %bb113
bb112:
  store i64 7, ptr %l164, !tbaa !24
  br label %bb130
bb113:
  %t375 = load i8, ptr %l8, !tbaa !22
  %t377 = icmp eq i8 %t375, 98
  br i1 %t377, label %bb114, label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb117
bb116:
  store i64 8, ptr %l164, !tbaa !24
  br label %bb130
bb117:
  %t379 = load i8, ptr %l8, !tbaa !22
  %t381 = icmp eq i8 %t379, 102
  br i1 %t381, label %bb118, label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb121
bb120:
  store i64 12, ptr %l164, !tbaa !24
  br label %bb130
bb121:
  %t383 = load i8, ptr %l8, !tbaa !22
  %t385 = icmp eq i8 %t383, 118
  br i1 %t385, label %bb122, label %bb123
bb122:
  br label %bb124
bb123:
  br label %bb125
bb124:
  store i64 11, ptr %l164, !tbaa !24
  br label %bb130
bb125:
  br i1 true, label %bb126, label %bb127
bb126:
  br label %bb128
bb127:
  br label %bb129
bb128:
  %t387 = load i8, ptr %l8, !tbaa !22
  %t390 = zext i8 %t387 to i64
  store i64 %t390, ptr %l164, !tbaa !24
  br label %bb130
bb129:
  call void @__olang_check_failed(ptr @olang_loc_2265f42fe0f29d10_7d9e15ddc2058014)
  unreachable
bb130:
  %t392 = load i64, ptr %l164, !tbaa !24
  store i64 %t392, ptr %l9, !tbaa !24
  %t393 = load i64, ptr %l6, !tbaa !24
  %t395 = add i64 %t393, 1
  store i64 %t395, ptr %l6, !tbaa !24
  br label %bb131
bb131:
  br label %bb132
bb132:
  %t397 = load i64, ptr %l9, !tbaa !24
  %t399 = icmp slt i64 %t397, 0
  br i1 %t399, label %bb133, label %bb134
bb133:
  store i1 true, ptr %l186, !tbaa !21
  br label %bb135
bb134:
  %t401 = load i64, ptr %l9, !tbaa !24
  %t403 = icmp sgt i64 %t401, 255
  store i1 %t403, ptr %l186, !tbaa !21
  br label %bb135
bb135:
  %t405 = load i1, ptr %l186, !tbaa !21
  br i1 %t405, label %bb136, label %bb137
bb136:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d294, i32 0, i32 1) }, ptr %l189, !tbaa !27
  %t406 = load { i64, ptr }, ptr %l189, !tbaa !27
  store { i64, ptr } %t406, ptr %l190, !tbaa !27
  %t407 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t408 = extractvalue { i64, ptr } %t407, 0
  store i64 %t408, ptr %l191, !tbaa !24
  %t409 = load i64, ptr %l191, !tbaa !24
  %t410 = mul i64 %t409, 1
  %t411 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t410)
  %t412 = insertvalue { i64, ptr } undef, i64 %t409, 0
  %t413 = insertvalue { i64, ptr } %t412, ptr %t411, 1
  store { i64, ptr } %t413, ptr %l192, !tbaa !27
  %t414 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !27
  %t416 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t417 = load ptr, ptr %t416, !tbaa !27
  %t418 = load i64, ptr %l191, !tbaa !24
  %t419 = mul i64 %t418, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t415, ptr %t417, i64 %t419, i1 false)
  %t420 = load { i64, ptr }, ptr %l192, !tbaa !27
  store { i64, ptr } %t420, ptr %l190, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t421 = load { i64, ptr }, ptr %l190, !tbaa !27
  store { i64, ptr } %t421, ptr %rv
  br label %ret
bb137:
  br label %bb138
bb138:
  %t422 = load i64, ptr %l9, !tbaa !24
  %t424 = icmp eq i64 %t422, 34
  br i1 %t424, label %bb139, label %bb140
bb139:
  store i1 true, ptr %l195, !tbaa !21
  br label %bb141
bb140:
  %t426 = load i64, ptr %l9, !tbaa !24
  %t428 = icmp eq i64 %t426, 92
  store i1 %t428, ptr %l195, !tbaa !21
  br label %bb141
bb141:
  %t430 = load i1, ptr %l195, !tbaa !21
  br i1 %t430, label %bb142, label %bb143
bb142:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 92)
  br label %bb144
bb143:
  %t432 = load i64, ptr %l9, !tbaa !24
  %t434 = icmp sge i64 %t432, 32
  br i1 %t434, label %bb146, label %bb147
bb144:
  %t436 = load i64, ptr %l9, !tbaa !24
  %t438 = trunc i64 %t436 to i8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t438)
  br label %bb145
bb145:
  br label %bb159
bb146:
  %t441 = load i64, ptr %l9, !tbaa !24
  %t443 = icmp slt i64 %t441, 127
  store i1 %t443, ptr %l204, !tbaa !21
  br label %bb148
bb147:
  store i1 false, ptr %l204, !tbaa !21
  br label %bb148
bb148:
  %t445 = load i1, ptr %l204, !tbaa !21
  br i1 %t445, label %bb149, label %bb150
bb149:
  %t446 = load i64, ptr %l9, !tbaa !24
  %t448 = trunc i64 %t446 to i8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t448)
  br label %bb151
bb150:
  store %olang.scope zeroinitializer, ptr %s27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s27, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d295, i32 0, i32 1) })
  br label %bb152
bb151:
  br label %bb158
bb152:
  store ptr %l1, ptr %l211, !tbaa !29
  %t452 = load i64, ptr %l9, !tbaa !24
  %t454 = trunc i64 %t452 to i8
  store i8 %t454, ptr %l213, !tbaa !22
  %t455 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s27, i64 16)
  %t456 = extractvalue { i32, i64 } %t455, 1
  %t457 = extractvalue { i32, i64 } %t455, 0
  store i32 %t457, ptr %l215
  %t458 = icmp ne i32 %t457, 0
  br i1 %t458, label %bb154, label %ok.459, !prof !99
ok.459:
  store i64 %t456, ptr %l214
  br label %bb153
bb153:
  %t460 = load i8, ptr %l213, !tbaa !22
  %t461 = load i64, ptr %l214, !tbaa !24
  %t462 = call { i64, ptr } @std_2fprelude_2ftext_2eU8_2eFormat(ptr %s27, i8 %t460, i64 %t461)
  store { i64, ptr } %t462, ptr %l216
  br label %bb155
bb154:
  call void @__olang_check_failed(ptr @olang_loc_6de4e6ae025697a1_ab8e19fa95fbb0c5)
  unreachable
bb155:
  %t463 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t464 = extractvalue { i64, ptr } %t463, 0
  %t465 = extractvalue { i64, ptr } %t463, 1
  %t466 = mul i64 %t464, 1
  %t467 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t466)
  call void @llvm.memcpy.p0.p0.i64(ptr %t467, ptr %t465, i64 %t466, i1 false)
  %t468 = insertvalue { i64, ptr } undef, i64 %t464, 0
  %t469 = insertvalue { i64, ptr } %t468, ptr %t467, 1
  %t471 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %s27, ptr %s27, { i64, ptr } %t469, i64 2, i8 48)
  store { i64, ptr } %t471, ptr %l218
  br label %bb156
bb156:
  %t472 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t473 = extractvalue { i64, ptr } %t472, 0
  %t474 = extractvalue { i64, ptr } %t472, 1
  %t475 = mul i64 %t473, 1
  %t476 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t475)
  call void @llvm.memcpy.p0.p0.i64(ptr %t476, ptr %t474, i64 %t475, i1 false)
  %t477 = insertvalue { i64, ptr } undef, i64 %t473, 0
  %t478 = insertvalue { i64, ptr } %t477, ptr %t476, 1
  %t479 = load ptr, ptr %l211, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s27, ptr %t479, { i64, ptr } %t478)
  br label %bb157
bb157:
  call void @__olang_scope_close(ptr %s27)
  br label %bb158
bb158:
  br label %bb159
bb159:
  br label %bb160
bb160:
  br label %bb16
bb161:
  br label %bb162
bb162:
  %t481 = load i64, ptr %l3, !tbaa !24
  %t483 = add i64 %t481, 1
  store i64 %t483, ptr %l3, !tbaa !24
  br label %bb6
bb163:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 34)
  br label %bb164
bb164:
  %t487 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t487, ptr %l224
  br label %bb165
bb165:
  call void @__olang_scope_close(ptr %s0)
  %t488 = load { i64, ptr }, ptr %l224, !tbaa !27
  store { i64, ptr } %t488, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i8
  %l6 = alloca i1
  %l7 = alloca i1
  %l9 = alloca i1
  %l11 = alloca { i64, ptr }
  %l14 = alloca i1
  %l18 = alloca i1
  %l19 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l25 = alloca i1
  %l34 = alloca { i64, ptr }
  %l38 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i1
  %l52 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d296, i32 0, i32 1) })
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d297, i32 0, i32 1) })
  store i1 %t7, ptr %l9
  br label %bb4
bb4:
  %t8 = load i1, ptr %l9, !tbaa !21
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l11, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 0
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = icmp eq i8 %t15, 95
  br i1 %t17, label %bb9, label %bb10
bb9:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t23 = icmp slt i64 %t21, 2
  br i1 %t23, label %bb11, label %bb12
bb10:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb18
bb11:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb13
bb12:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t25, ptr %l19, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i8, ptr %t27, i64 1
  %t29 = load i8, ptr %t28, !tbaa !32
  %t31 = icmp eq i8 %t29, 95
  store i1 %t31, ptr %l18, !tbaa !21
  br label %bb13
bb13:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb17
bb15:
  %t34 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t34, ptr %l23, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr i8, ptr %t36, i64 1
  %t38 = load i8, ptr %t37, !tbaa !32
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t38)
  store i1 %t40, ptr %l25
  br label %bb16
bb16:
  %t41 = load i1, ptr %l25, !tbaa !21
  store i1 %t41, ptr %l22, !tbaa !21
  br label %bb17
bb17:
  %t42 = load i1, ptr %l22, !tbaa !21
  store i1 %t42, ptr %l14, !tbaa !21
  br label %bb18
bb18:
  %t43 = load i1, ptr %l14, !tbaa !21
  br i1 %t43, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t45, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb22
bb22:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb23, label %bb24
bb23:
  br label %bb38
bb24:
  br label %bb25
bb25:
  %t59 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t59, ptr %l34, !tbaa !27
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i8, ptr %t63, i64 %t60
  %t65 = load i8, ptr %t64, !tbaa !32
  store i8 %t65, ptr %l4, !tbaa !22
  %t67 = load i8, ptr %l4, !tbaa !22
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t67)
  store i1 %t69, ptr %l38
  br label %bb26
bb26:
  %t70 = load i1, ptr %l38, !tbaa !21
  br i1 %t70, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb30
bb28:
  %t71 = load i8, ptr %l4, !tbaa !22
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t71)
  store i1 %t73, ptr %l41
  br label %bb29
bb29:
  %t74 = load i1, ptr %l41, !tbaa !21
  store i1 %t74, ptr %l39, !tbaa !21
  br label %bb30
bb30:
  %t75 = load i1, ptr %l39, !tbaa !21
  br i1 %t75, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb33
bb32:
  %t76 = load i8, ptr %l4, !tbaa !22
  %t78 = icmp eq i8 %t76, 95
  store i1 %t78, ptr %l42, !tbaa !21
  br label %bb33
bb33:
  %t80 = load i1, ptr %l42, !tbaa !21
  %t81 = xor i1 %t80, true
  br i1 %t81, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t84 = load i64, ptr %l2, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l2, !tbaa !24
  br label %bb22
bb38:
  %t88 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t94 = call i32 @compiler_2ftoken_2eTok_2eKeyword(ptr %v0, { i64, ptr } %t88, i64 0, i64 %t91)
  store i32 %t94, ptr %l52
  br label %bb39
bb39:
  %t95 = load i32, ptr %l52, !range !{i32 0, i32 113}
  %t97 = trunc i64 1 to i32
  %t98 = icmp eq i32 %t95, %t97
  call void @__olang_scope_close(ptr %s0)
  store i1 %t98, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/bindgen:Translation" @compiler_2fbindgen_3aTranslation_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/bindgen:Translation"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d298, i32 0, i32 1) }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d299, i32 0, i32 1) }, ptr %l1, !tbaa !27
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l5, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l5
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l7
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e2
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l5
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = call ptr @__olang_region_home(ptr %t16)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = icmp eq ptr %t19, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t20)
  br label %bb5
bb5:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d300, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t23 = insertvalue %"compiler/bindgen:Translation" undef, { i64, ptr } %t22, 0
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t25 = insertvalue %"compiler/bindgen:Translation" %t23, { i64, ptr } %t24, 1
  %t27 = insertvalue %"compiler/bindgen:Translation" %t25, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, 2
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = insertvalue %"compiler/bindgen:Translation" %t27, { i64, ptr } %t28, 3
  %t31 = insertvalue %"compiler/bindgen:Translation" %t29, i1 false, 4
  store %"compiler/bindgen:Translation" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:Translation", ptr %rv
  ret %"compiler/bindgen:Translation" %rr
}

define dso_local %"compiler/bindgen:cFunc" @compiler_2fbindgen_3acFunc_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i1 %a4, { i64, ptr } %a5) #0 {
entry:
  %rv = alloca %"compiler/bindgen:cFunc"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/bindgen:cFunc" undef, { i64, ptr } %a0, 0
  %t16 = insertvalue %"compiler/bindgen:cFunc" %t14, { i64, ptr } %a1, 1
  %t18 = insertvalue %"compiler/bindgen:cFunc" %t16, { i64, ptr } %a2, 2
  %t20 = insertvalue %"compiler/bindgen:cFunc" %t18, { i64, ptr } %a3, 3
  %t22 = insertvalue %"compiler/bindgen:cFunc" %t20, i1 %a4, 4
  %t24 = insertvalue %"compiler/bindgen:cFunc" %t22, { i64, ptr } %a5, 5
  store %"compiler/bindgen:cFunc" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cFunc", ptr %rv
  ret %"compiler/bindgen:cFunc" %rr
}

define dso_local %"compiler/bindgen:cMacro" @compiler_2fbindgen_3acMacro_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, i1 %a1, { i64, ptr } %a2, { i64, ptr } %a3, i1 %a4) #0 {
entry:
  %rv = alloca %"compiler/bindgen:cMacro"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/bindgen:cMacro" undef, { i64, ptr } %a0, 0
  %t14 = insertvalue %"compiler/bindgen:cMacro" %t12, i1 %a1, 1
  %t16 = insertvalue %"compiler/bindgen:cMacro" %t14, { i64, ptr } %a2, 2
  %t18 = insertvalue %"compiler/bindgen:cMacro" %t16, { i64, ptr } %a3, 3
  %t20 = insertvalue %"compiler/bindgen:cMacro" %t18, i1 %a4, 4
  %t22 = insertvalue %"compiler/bindgen:cMacro" %t20, i1 false, 5
  store %"compiler/bindgen:cMacro" %t22, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cMacro", ptr %rv
  ret %"compiler/bindgen:cMacro" %rr
}

define dso_local %"compiler/bindgen:ctp" @compiler_2fbindgen_3actp_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %rv = alloca %"compiler/bindgen:ctp"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"compiler/bindgen:ctp" undef, { i64, ptr } %a0, 0
  %t6 = insertvalue %"compiler/bindgen:ctp" %t4, i64 0, 1
  store %"compiler/bindgen:ctp" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:ctp", ptr %rv
  ret %"compiler/bindgen:ctp" %rr
}

define dso_local %"compiler/bindgen:ctype" @compiler_2fbindgen_3actype_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1, i64 %a2, i1 %a3, i64 %a4) #0 {
entry:
  %rv = alloca %"compiler/bindgen:ctype"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/bindgen:ctype" undef, i32 %a0, 0
  %t14 = insertvalue %"compiler/bindgen:ctype" %t12, { i64, ptr } %a1, 1
  %t16 = insertvalue %"compiler/bindgen:ctype" %t14, i64 %a2, 2
  %t18 = insertvalue %"compiler/bindgen:ctype" %t16, i1 %a3, 3
  %t20 = insertvalue %"compiler/bindgen:ctype" %t18, i64 %a4, 4
  %t22 = insertvalue %"compiler/bindgen:ctype" %t20, i64 0, 5
  store %"compiler/bindgen:ctype" %t22, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:ctype", ptr %rv
  ret %"compiler/bindgen:ctype" %rr
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

define dso_local void @compiler_2fbindgen_3arecord_2ector(ptr %out, ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i1
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i64
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"compiler/bindgen:record"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  store i1 false, ptr %l2, !tbaa !21
  store i1 false, ptr %l3, !tbaa !21
  store i1 false, ptr %l4, !tbaa !21
  %t3 = ptrtoint ptr %v1 to i64
  store i64 %t3, ptr %l19, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e4
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v1)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l19, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l19
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l21
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e4
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l19
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = call ptr @__olang_region_home(ptr %t18)
  %t20 = icmp ne ptr %t19, null
  %t21 = select i1 %t20, ptr %t19, ptr null
  %t22 = icmp eq ptr %t21, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t22)
  br label %bb5
bb5:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l5
  %t24 = ptrtoint ptr %v1 to i64
  store i64 %t24, ptr %l23, !tbaa !24
  %t25 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e5
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = call ptr @__olang_region_make(ptr %v1)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l23
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t30, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l25
  br label %bb8
bb8:
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e5
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load i64, ptr %l23
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = call ptr @__olang_region_or(ptr %t38, ptr null)
  %t40 = call ptr @__olang_region_home(ptr %t39)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t35
  call void @__olang_region_settle(ptr %t35, i1 %t43)
  br label %bb10
bb10:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l6
  store i1 false, ptr %l7, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d301, i32 0, i32 1) }, ptr %l8, !tbaa !27
  store i1 false, ptr %l9, !tbaa !21
  store i64 -1, ptr %l10, !tbaa !24
  store i1 false, ptr %l11, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d302, i32 0, i32 1) }, ptr %l12, !tbaa !27
  store i1 false, ptr %l13, !tbaa !21
  store i64 -1, ptr %l14, !tbaa !24
  store i64 -1, ptr %l15, !tbaa !24
  store i1 false, ptr %l16, !tbaa !21
  %t45 = ptrtoint ptr %v1 to i64
  store i64 %t45, ptr %l27, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e16
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = call ptr @__olang_region_make(ptr %v1)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l27, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l27
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t51, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l29
  br label %bb13
bb13:
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e16
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load i64, ptr %l27
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = call ptr @__olang_region_home(ptr %t60)
  %t62 = icmp ne ptr %t61, null
  %t63 = select i1 %t62, ptr %t61, ptr null
  %t64 = icmp eq ptr %t63, %t56
  call void @__olang_region_settle(ptr %t56, i1 %t64)
  br label %bb15
bb15:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t66 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 0
  %t67 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t67, ptr %t66, !tbaa !27
  %t68 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 1
  %t69 = load i1, ptr %l2, !tbaa !21
  store i1 %t69, ptr %t68, !tbaa !21
  %t70 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 2
  %t71 = load i1, ptr %l3, !tbaa !21
  store i1 %t71, ptr %t70, !tbaa !21
  %t72 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 3
  %t73 = load i1, ptr %l4, !tbaa !21
  store i1 %t73, ptr %t72, !tbaa !21
  %t74 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 4
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %t74
  %t76 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 5
  %t77 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %t76
  %t78 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 6
  %t79 = load i1, ptr %l7, !tbaa !21
  store i1 %t79, ptr %t78, !tbaa !21
  %t80 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 7
  %t81 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t81, ptr %t80, !tbaa !27
  %t82 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 8
  %t83 = load i1, ptr %l9, !tbaa !21
  store i1 %t83, ptr %t82, !tbaa !21
  %t84 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 9
  %t85 = load i64, ptr %l10, !tbaa !24
  store i64 %t85, ptr %t84, !tbaa !24
  %t86 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 10
  %t87 = load i1, ptr %l11, !tbaa !21
  store i1 %t87, ptr %t86, !tbaa !21
  %t88 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 11
  %t89 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t89, ptr %t88, !tbaa !27
  %t90 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 12
  %t91 = load i1, ptr %l13, !tbaa !21
  store i1 %t91, ptr %t90, !tbaa !21
  %t92 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 13
  %t93 = load i64, ptr %l14, !tbaa !24
  store i64 %t93, ptr %t92, !tbaa !24
  %t94 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 14
  %t95 = load i64, ptr %l15, !tbaa !24
  store i64 %t95, ptr %t94, !tbaa !24
  %t96 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 15
  %t97 = load i1, ptr %l16, !tbaa !21
  store i1 %t97, ptr %t96, !tbaa !21
  %t98 = getelementptr %"compiler/bindgen:record", ptr %l31, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %t98
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l31, i64 216, i1 false)
  br label %ret
ret:
  ret void
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
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"0x" }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"e" }>, align 8
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
declare void @__olang_check_failed(ptr) cold noreturn
@.d3 = private constant <{ i64, [4 x { i64, ptr }] }> <{ i64 0, [4 x { i64, ptr }] [{ i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d303, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d304, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d305, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d306, i32 0, i32 1) }] }>, align 8
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"<<=" }>, align 8
@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c">>=" }>, align 8
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"<<" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">>" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"<=" }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">=" }>, align 8
@.d11 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"==" }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!=" }>, align 8
@.d13 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&&" }>, align 8
@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"||" }>, align 8
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"##" }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"->" }>, align 8
@.d17 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"++" }>, align 8
@.d18 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"--" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&&" }>, align 8
@.d21 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"||" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acx_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&&" }>, align 8
@.d23 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" and " }>, align 8
@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" or " }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fbindgen_3acx_2e3 = weak hidden constant i1 false
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d38 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a ? with no :" }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d40 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" if " }>, align 8
@.d41 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" else " }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d45 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" if " }>, align 8
@.d46 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" else " }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d48 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"0x" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"e" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"p" }>, align 8
@.d52 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"a hexadecimal float" }>, align 8
@.d53 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a long double" }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d56 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".0" }>, align 8
@.d57 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"0b" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3agen_2e25 = weak hidden constant i1 false
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d61 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"', which is no number read here" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"+" }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"~" }>, align 8
@.d65 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"+" }>, align 8
@.d66 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d67 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d68 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d69 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(not " }>, align 8
@.d70 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d71 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d75 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d77 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d79 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d80 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d81 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d82 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d83 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d84 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d85 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"-fsyntax-only" }>, align 8
@.d86 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-w" }>, align 8
@.d87 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"-ferror-limit=0" }>, align 8
@.d88 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-Xclang" }>, align 8
@.d89 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"-ast-dump=json" }>, align 8
@.d90 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"clang could not be run" }>, align 8
declare void @__olang_errpay_pop()
@.d91 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"clang's tree could not be read" }>, align 8
@.d92 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"its expansion is too deep" }>, align 8
@.d93 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
@.d94 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"##" }>, align 8
@.d95 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"it uses # or ##, which make text rather than an expression" }>, align 8
@.d96 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d97 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d98 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"it uses " }>, align 8
@.d99 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c", which takes a variable number of arguments" }>, align 8
@olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eexpand_2elocal_2e14 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
@.d100 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d101 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d102 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
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
@.d103 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"its use of " }>, align 8
@.d104 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" is not closed" }>, align 8
@.d105 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"it gives " }>, align 8
@.d106 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" another number of arguments" }>, align 8
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
define internal i1 @olang_lambda_107(ptr %env, ptr %v0, { i64, ptr } %a0) #0 {
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

@.d108 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d109 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d110 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d111 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d112 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"a struct held in place that is not plain data (X11)" }>, align 8
@.d113 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"CStr?&" }>, align 8
@.d114 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d115 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"CVoid?&" }>, align 8
@.d116 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a field of this type, which has no olang form" }>, align 8
@.d117 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d118 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"its type is no function's" }>, align 8
@.d119 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d120 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d121 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d122 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d123 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d124 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"variadic" }>, align 8
@.d125 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", ..." }>, align 8
@.d126 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d127 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d128 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d129 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" noreturn" }>, align 8
@.d130 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d131 = private constant <{ i64, [3 x { i64, ptr }] }> <{ i64 0, [3 x { i64, ptr }] [{ i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d307, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d308, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d309, i32 0, i32 1) }] }>, align 8
@.d132 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d133 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"its body is empty" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acparse_2e0 = weak hidden constant i1 false
@.d134 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"its body is no expression read here, at '" }>, align 8
@.d135 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d136 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d137 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d138 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d139 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d140 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"T" }>, align 8
@.d141 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d142 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d143 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d144 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d145 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d146 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" T" }>, align 8
@.d147 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c") " }>, align 8
@.d148 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"T" }>, align 8
@.d149 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d150 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d151 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d152 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" { return " }>, align 8
@.d153 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
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

@olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2enameRecord_2elocal_2e4 = weak hidden constant i1 false
@.d154 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d155 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e11 = weak hidden constant i1 false
@.d156 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d157 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d158 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"c_" }>, align 8
@.d159 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"_t" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e7 = weak hidden constant i1 false
@.d160 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d161 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d162 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"_Bool" }>, align 8
@.d163 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"bool" }>, align 8
@.d164 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d165 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d166 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d167 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d168 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d169 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d170 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F32" }>, align 8
@.d171 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"double" }>, align 8
@.d172 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"long double" }>, align 8
@.d173 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d174 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"_Float16" }>, align 8
@.d175 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F16" }>, align 8
@.d176 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"__bf16" }>, align 8
@.d177 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d178 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__int128" }>, align 8
@.d179 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__int128" }>, align 8
@.d180 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"short" }>, align 8
@.d181 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d182 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I16" }>, align 8
@.d183 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d184 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d185 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d186 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d187 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"variadic" }>, align 8
@.d188 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d189 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d190 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"its text is no olang text literal" }>, align 8
@.d191 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" String = " }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acparse_2e1 = weak hidden constant i1 false
@__olang_empty_array = external constant [16 x i64]
@.d192 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"f" }>, align 8
@.d193 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d194 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"f" }>, align 8
@.d195 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" F32 = " }>, align 8
@.d196 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" F64 = " }>, align 8
@.d197 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"its body is no constant" }>, align 8
@.d198 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"F" }>, align 8
@.d199 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@olang_2esole_2ecompiler__2fbindgen__2ecompiler__2fbindgen__3agen__2eparamName_2elocal_2e5 = weak hidden constant i1 false
@.d200 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"CVoid" }>, align 8
@.d201 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"CStr" }>, align 8
@.d202 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d203 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d204 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d205 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d206 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d207 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d208 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"mut Array<" }>, align 8
@.d209 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">&" }>, align 8
@.d210 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d211 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d212 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d213 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"mut Array<CStr?&>&" }>, align 8
@.d214 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"mut Array<" }>, align 8
@.d215 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"?&>&" }>, align 8
@.d216 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mut Array<CVoid?&>&" }>, align 8
@.d217 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"variadic" }>, align 8
@.d218 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"a callback taking a variable number of arguments" }>, align 8
@.d219 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fn?&(" }>, align 8
@.d220 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d221 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d222 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d223 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d224 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d225 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"loc" }>, align 8
@.d226 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"range" }>, align 8
@.d227 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"type" }>, align 8
@.d228 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"inner" }>, align 8
@.d229 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d230 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d231 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"TypedefDecl" }>, align 8
@.d232 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"ownedTagDecl" }>, align 8
@.d233 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"id" }>, align 8
@.d234 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"struct " }>, align 8
@.d235 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"union " }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e0 = weak hidden constant i1 false
@.d236 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d237 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"RecordDecl" }>, align 8
@.d238 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"EnumDecl" }>, align 8
@.d239 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d240 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"EnumConstantDecl" }>, align 8
@.d241 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d242 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d243 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"FunctionDecl" }>, align 8
@.d244 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"isImplicit" }>, align 8
@.d245 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d246 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"ParmVarDecl" }>, align 8
@.d247 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d248 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"storageClass" }>, align 8
@.d249 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"static" }>, align 8
@.d250 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"inline" }>, align 8
@.d251 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"mangledName" }>, align 8
@.d252 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d253 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acFunc_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3acFunc_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3acFunc_2e3 = weak hidden constant i1 false
@.d254 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"VarDecl" }>, align 8
@.d255 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"storageClass" }>, align 8
@.d256 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"static" }>, align 8
@.d257 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c": a variable - an extern variable has no olang form (X1)" }>, align 8
@.d258 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d259 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d260 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d261 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"enum __olang_l" }>, align 8
@.d262 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" : long long { __olang_z" }>, align 8
@.d263 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" = sizeof(" }>, align 8
@.d264 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"), __olang_a" }>, align 8
@.d265 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" = _Alignof(" }>, align 8
@.d266 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c") };\0A" }>, align 8
@.d267 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"the probe cannot be written" }>, align 8
@.d268 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d269 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kind" }>, align 8
@.d270 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"EnumDecl" }>, align 8
@.d271 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"__olang_l" }>, align 8
@.d272 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d273 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c": a macro - " }>, align 8
@.d274 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d275 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"value" }>, align 8
@.d276 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d277 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d278 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d279 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d280 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"error: " }>, align 8
@.d281 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"inner" }>, align 8
@.d282 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d283 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d284 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d285 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d286 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d287 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d288 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d289 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d290 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d291 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d292 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d293 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d294 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d295 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Cx" }>, align 8
@.d296 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d297 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d298 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d299 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3aTranslation_2e2 = weak hidden constant i1 false
@.d300 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e5 = weak hidden constant i1 false
@.d301 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d302 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e16 = weak hidden constant i1 false
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
@.d303 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"L" }>, align 8
@.d304 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"u" }>, align 8
@.d305 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"U" }>, align 8
@.d306 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"u8" }>, align 8
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
@.d307 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d308 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d309 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
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
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
@olang_loc_4691cb288a833ba5_dfaa9dffbec0c2d9 = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_8de001e7a64c0b48_1a9d06562d43232c = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_9f24fc1b10bf4163_f387df93e06eee97 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fbindgen_2ecPrec(ptr %v0, { i64, ptr } %a0)
declare %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecBool(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/bindgen:cx" %a1)
declare %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/bindgen:cx" %a1)
declare %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecLead(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/bindgen:cx" %a1, %"compiler/bindgen:cx" %a2)
declare i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_2281448cce404233_754aa41ddbc9325f = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_231822a9f2b4ccd6_f89b0d7c0520fae2 = external constant [0 x i8]
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_3945c858895394b5_b3e6527511891161 = external constant [0 x i8]
@olang_loc_5833c224f66d4858_52a9715d8b07374 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_8ffdd2b799db8b57_8707d2f5a85c3a7b = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecastType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecPrimary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/os:Output" } @compiler_2fbindgen_2eclangSays(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Hdc04e7543082eec80486670259c0789b(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H40771be639b3022d183b79789a9eab56(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_Hbb0b9cf8ae0bb786ffc6cf28ae45ef64(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eFindIndex_3cstd_2f_H0cdaf28864c9da4990596b1986b376a0(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H21d8db2bdfeb46fab755f8173a35f95e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_582986fcdf40d11c_2a39a940a03de888 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparamType(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2evalueType(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/bindgen:cparse" @compiler_2fbindgen_3acparse_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_7ea854ff7e2640a8_63f49c54b749b4b4 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_7e828aa3d49398bd_dbb08dcf54087001 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2ePush_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/bindgen:ctype" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eLen_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_588cbeac7c6acbe1_e04f9e86f435a7f5 = external constant [0 x i8]
@olang_loc_76a2c5c4ca94453d_57e44e0801590749 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2epackedFields(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbindgen_2evoidRef(ptr %v0, i1 %a0)
@olang_loc_55ef846781ac27aa_5519550b25564c26 = external constant [0 x i8]
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrack(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fbindgen_2etext(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbindgen_2etypeOf(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewanted(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2ePush_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/bindgen:cFunc" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2ePush_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eLen_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %a0)
declare %"compiler/bindgen:cFunc" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eAt_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_f6b0d4dcea5d2bc9_16e8d1d827605cbd = external constant [0 x i8]
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_b4f4b1f3947eb18f_4b11d328df759133 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_c89c4e9e31b29b9e_9d77991e4d65189a = external constant [0 x i8]
@olang_loc_6ea08524187c2be0_2ef7bb2e3d9cc7b4 = external constant [0 x i8]
@olang_loc_feb39f4cfa8fb0e2_4824786a1f7bac1e = external constant [0 x i8]
declare i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v0, ptr %a0)
@olang_loc_76a363c24681a0e6_dedc35590a663c5a = external constant [0 x i8]
@olang_loc_98d0b4f031acf4f7_7a1fbeedfef40c4b = external constant [0 x i8]
@olang_loc_b9ed3bac91748577_8bd4ae03d42ae063 = external constant [0 x i8]
@olang_loc_63a5955120245215_3bb90f7c84aecf01 = external constant [0 x i8]
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %a0)
@olang_loc_d82489adf04aec69_8da73aeba875ea7d = external constant [0 x i8]
@olang_loc_e159f608b90be7c_888d447c7b7c1020 = external constant [0 x i8]
@olang_loc_2265f42fe0f29d10_7d9e15ddc2058014 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2eU8_2eFormat(ptr %v0, i8 %a0, i64 %a1)
@olang_loc_6de4e6ae025697a1_ab8e19fa95fbb0c5 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare i32 @compiler_2ftoken_2eTok_2eKeyword(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2)

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
