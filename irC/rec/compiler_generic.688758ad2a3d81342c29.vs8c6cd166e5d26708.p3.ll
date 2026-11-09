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
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/generic:fnRow" = type { i64, ptr, i1 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:instance" = type { i64, i32, i32, { i64, ptr }, { i64, ptr }, %"compiler/generic:Origin" }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/generic:cursor" = type { { i64, ptr }, i64 }
%"compiler/generic:genRoots" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64 }
%"compiler/generic:folded" = type { i64, i64, i32 }
%"compiler/generic:ConstAsk" = type { i64, ptr, i32, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
define dso_local i64 @compiler_2fgeneric_2eFnOwner(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = mul i64 %a0, 2
  %t5 = add i64 %t3, 1
  store i64 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fgeneric_2ebyValueParam(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Param", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/ast:Param", ptr %t9, i32 0, i32 2
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_16dbf6b4ccd94c8c_8f0170059e61e7c0)
  unreachable
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/ast:Param", ptr %t16, i32 0, i32 2
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l1, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l12, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 8}
  %t28 = icmp eq i64 %t26, 3
  store i1 %t28, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l13, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t31 = load ptr, ptr %l16, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb11, label %bb12
bb11:
  %t34 = load ptr, ptr %l16, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 8}
  %t37 = icmp eq i64 %t35, 4
  store i1 %t37, ptr %l17, !tbaa !21
  br label %bb12
bb12:
  %t38 = load i1, ptr %l17, !tbaa !21
  br i1 %t38, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_b4eb6cf3622f1222_98250c586f701fa6)
  unreachable
bb21:
  %t39 = load i1, ptr %l11, !tbaa !21
  store i1 %t39, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca %"compiler/generic:Context"
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l26 = alloca i32
  %l34 = alloca i1
  %l39 = alloca i32
  %l42 = alloca i32
  %l48 = alloca i1
  %l52 = alloca i64
  %l56 = alloca i32
  %l60 = alloca i32
  %l65 = alloca i1
  %l66 = alloca i32
  %l69 = alloca i32
  %l70 = alloca ptr
  %l74 = alloca i32
  %l77 = alloca i32
  %l79 = alloca ptr
  %l80 = alloca i32
  %l81 = alloca i32
  %l85 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca i32
  %l94 = alloca { i64, ptr }
  %l95 = alloca ptr
  %l99 = alloca i32
  %l102 = alloca i32
  %l106 = alloca ptr
  %l107 = alloca i32
  %l108 = alloca ptr
  %l112 = alloca i32
  %l115 = alloca i32
  %l122 = alloca i1
  %l126 = alloca i32
  %l129 = alloca ptr
  %l133 = alloca i32
  %l136 = alloca ptr
  %l140 = alloca i32
  %l144 = alloca ptr
  %l157 = alloca %"compiler/generic:Context"
  %l160 = alloca ptr
  %l161 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca i32
  %l172 = alloca i32
  %l176 = alloca ptr
  %l177 = alloca i1
  %l183 = alloca i64
  %l188 = alloca i64
  %l197 = alloca i64
  %l200 = alloca i64
  %l219 = alloca { i64, ptr }
  %l223 = alloca i64
  %l226 = alloca { i64, ptr }
  %l230 = alloca i32
  %l234 = alloca ptr
  %l235 = alloca i32
  %l236 = alloca { i64, ptr }
  %l240 = alloca i32
  %l241 = alloca ptr
  %l242 = alloca i1
  %l248 = alloca ptr
  %l249 = alloca i32
  %l254 = alloca i32
  %l255 = alloca ptr
  %l256 = alloca i1
  %l259 = alloca ptr
  %l260 = alloca i1
  %s0 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca i1
  %t266 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l26
  br label %bb1
bb1:
  %t8 = load i32, ptr %l26, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l34
  br label %bb5
bb5:
  %t23 = load i1, ptr %l34, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l39
  br label %bb9
bb9:
  %t32 = load i32, ptr %l39, !tbaa !23
  store i32 %t32, ptr %l2, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l42
  br label %bb10
bb10:
  %t38 = load i32, ptr %l42, !tbaa !23
  store i32 %t38, ptr %l3, !tbaa !23
  %t39 = load i32, ptr %l1, !tbaa !23
  %t40 = load i32, ptr %l3, !tbaa !23
  %t43 = icmp ne i32 %t39, %t40
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l3, !tbaa !23
  %t49 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t45, i32 %t46)
  store i1 %t49, ptr %l48
  br label %bb13
bb12:
  br label %bb76
bb13:
  %t50 = load i1, ptr %l48, !tbaa !21
  %t51 = xor i1 %t50, true
  br i1 %t51, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t54 = load i32, ptr %l2, !tbaa !23
  %t56 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t54)
  store i64 %t56, ptr %l52
  br label %bb17
bb17:
  %t57 = load i64, ptr %l52, !tbaa !24
  store i64 %t57, ptr %l4, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %l1, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l56
  br label %bb18
bb18:
  %t65 = load i32, ptr %l56, !tbaa !23
  store i32 %t65, ptr %l5, !tbaa !23
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l2, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l60
  br label %bb19
bb19:
  %t73 = load i32, ptr %l60, !range !{i32 0, i32 6}
  store i32 %t73, ptr %l6
  %t74 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t76 = trunc i64 0 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb32
bb22:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l1, !tbaa !23
  %t83 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l65
  br label %bb23
bb23:
  %t84 = load i1, ptr %l65, !tbaa !21
  br i1 %t84, label %bb24, label %bb25
bb24:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l1, !tbaa !23
  %t89 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecolumnFields(ptr %v0, ptr %t85, i32 %t86)
  store i32 %t89, ptr %l69
  br label %bb26
bb25:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l70, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l3, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l74
  br label %bb27
bb26:
  %t98 = load i32, ptr %l69, !tbaa !23
  store i32 %t98, ptr %l66, !tbaa !23
  br label %bb29
bb27:
  %t99 = load i64, ptr %l4, !tbaa !24
  %t100 = load i32, ptr %l5, !tbaa !23
  %t101 = load ptr, ptr %l70, !tbaa !29
  %t102 = load i32, ptr %l74, !tbaa !23
  %t105 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstList(ptr %v0, ptr %t101, i32 %t102, i64 %t99, i32 %t100)
  store i32 %t105, ptr %l77
  br label %bb28
bb28:
  %t106 = load i32, ptr %l77, !tbaa !23
  store i32 %t106, ptr %l66, !tbaa !23
  br label %bb29
bb29:
  %t107 = load i32, ptr %l66, !tbaa !23
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 2
  store ptr %t110, ptr %l79, !tbaa !29
  %t111 = load i32, ptr %l1, !tbaa !23
  store i32 %t111, ptr %l80, !tbaa !23
  store i32 %t107, ptr %l81, !tbaa !23
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  %t116 = load i32, ptr %l3, !tbaa !23
  %t119 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDtorWritten(ptr %v0, ptr %t115, i32 %t116)
  store i1 %t119, ptr %l85
  br label %bb30
bb30:
  %t120 = load ptr, ptr %l79, !tbaa !29
  %t121 = load i32, ptr %l80, !tbaa !23
  %t122 = load i32, ptr %l81, !tbaa !23
  %t123 = load i1, ptr %l85, !tbaa !21
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetStructBody(ptr %v0, ptr %t120, i32 %t121, i32 %t122, i1 %t123)
  br label %bb31
bb31:
  br label %bb53
bb32:
  %t124 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t126 = trunc i64 1 to i32
  %t127 = icmp eq i32 %t124, %t126
  br i1 %t127, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb40
bb35:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  store ptr %t131, ptr %l89, !tbaa !29
  %t132 = load i32, ptr %l1, !tbaa !23
  store i32 %t132, ptr %l90, !tbaa !23
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  %t136 = load i32, ptr %l3, !tbaa !23
  %t139 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v0, ptr %t135, i32 %t136)
  store { i64, ptr } %t139, ptr %l94
  br label %bb36
bb36:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l95, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %l3, !tbaa !23
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t147, ptr %l99
  br label %bb37
bb37:
  %t148 = load i64, ptr %l4, !tbaa !24
  %t149 = load i32, ptr %l5, !tbaa !23
  %t150 = load ptr, ptr %l95, !tbaa !29
  %t151 = load i32, ptr %l99, !tbaa !23
  %t154 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstList(ptr %v0, ptr %t150, i32 %t151, i64 %t148, i32 %t149)
  store i32 %t154, ptr %l102
  br label %bb38
bb38:
  %t155 = load ptr, ptr %l89, !tbaa !29
  %t156 = load i32, ptr %l90, !tbaa !23
  %t157 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t158 = load i32, ptr %l102, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEnumBody(ptr %v0, ptr %v0, ptr %t155, i32 %t156, { i64, ptr } %t157, i32 %t158)
  br label %bb39
bb39:
  br label %bb53
bb40:
  %t159 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t161 = trunc i64 4 to i32
  %t162 = icmp eq i32 %t159, %t161
  br i1 %t162, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb47
bb43:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/generic:Program", ptr %t164, i32 0, i32 2
  store ptr %t166, ptr %l106, !tbaa !29
  %t167 = load i32, ptr %l1, !tbaa !23
  store i32 %t167, ptr %l107, !tbaa !23
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l108, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 2
  %t172 = load i32, ptr %l3, !tbaa !23
  %t175 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t171, i32 %t172)
  store i32 %t175, ptr %l112
  br label %bb44
bb44:
  %t176 = load i64, ptr %l4, !tbaa !24
  %t177 = load i32, ptr %l5, !tbaa !23
  %t178 = load ptr, ptr %l108, !tbaa !29
  %t179 = load i32, ptr %l112, !tbaa !23
  %t182 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t178, i32 %t179, i64 %t176, i32 %t177)
  store i32 %t182, ptr %l115
  br label %bb45
bb45:
  %t183 = load ptr, ptr %l106, !tbaa !29
  %t184 = load i32, ptr %l107, !tbaa !23
  %t185 = load i32, ptr %l115, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetOverBody(ptr %v0, ptr %t183, i32 %t184, i32 %t185)
  br label %bb46
bb46:
  br label %bb53
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/generic:Program", ptr %t186, i32 0, i32 2
  %t189 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEmptyBody(ptr %v0, ptr %t188, i32 %t189)
  br label %bb51
bb51:
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_dbe52b8ce495020a_fa2e1742f6a7a7de)
  unreachable
bb53:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 2
  %t195 = load i32, ptr %l1, !tbaa !23
  %t198 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t194, i32 %t195)
  store i1 %t198, ptr %l122
  br label %bb54
bb54:
  %t199 = load i1, ptr %l122, !tbaa !21
  br i1 %t199, label %bb55, label %bb56
bb55:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/generic:Program", ptr %t200, i32 0, i32 2
  %t203 = load i32, ptr %l2, !tbaa !23
  %t206 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t202, i32 %t203)
  store i32 %t206, ptr %l126
  br label %bb57
bb56:
  br label %bb75
bb57:
  %t207 = load i32, ptr %l126, !range !{i32 0, i32 6}
  store i32 %t207, ptr %l8
  %t208 = load i32, ptr %l8, !range !{i32 0, i32 6}
  %t210 = trunc i64 0 to i32
  %t211 = icmp eq i32 %t208, %t210
  br i1 %t211, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb63
bb60:
  %t213 = load ptr, ptr %l0, !tbaa !29
  store ptr %t213, ptr %l129, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/generic:Program", ptr %t214, i32 0, i32 2
  %t217 = load i32, ptr %l1, !tbaa !23
  %t220 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t216, i32 %t217)
  store i32 %t220, ptr %l133
  br label %bb61
bb61:
  %t221 = load ptr, ptr %l129, !tbaa !29
  %t222 = load i32, ptr %l133, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpandList(ptr %v0, ptr %t221, i32 %t222, i64 0)
  br label %bb62
bb62:
  br label %bb74
bb63:
  %t223 = load i32, ptr %l8, !range !{i32 0, i32 6}
  %t225 = trunc i64 1 to i32
  %t226 = icmp eq i32 %t223, %t225
  br i1 %t226, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb69
bb66:
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l136, !tbaa !29
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/generic:Program", ptr %t229, i32 0, i32 2
  %t232 = load i32, ptr %l1, !tbaa !23
  %t235 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t231, i32 %t232)
  store i32 %t235, ptr %l140
  br label %bb67
bb67:
  %t236 = load ptr, ptr %l136, !tbaa !29
  %t237 = load i32, ptr %l140, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpandList(ptr %v0, ptr %t236, i32 %t237, i64 0)
  br label %bb68
bb68:
  br label %bb74
bb69:
  br i1 true, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_19a69728787b464b_16ae308be2e5745f)
  unreachable
bb74:
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb76:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i32, ptr %l2, !tbaa !23
  %t243 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t239, i32 %t240)
  store ptr %t243, ptr %l144
  br label %bb77
bb77:
  %t244 = load ptr, ptr %l144, !tbaa !29
  store ptr %t244, ptr %l9, !tbaa !29
  %t245 = load ptr, ptr %l9, !tbaa !29
  %t247 = icmp eq ptr %t245, null
  br i1 %t247, label %bb78, label %bb79
bb78:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/generic:Program", ptr %t249, i32 0, i32 2
  %t252 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEmptyBody(ptr %v0, ptr %t251, i32 %t252)
  br label %bb80
bb79:
  br label %bb81
bb80:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb81:
  %t256 = load ptr, ptr %l9, !tbaa !29
  %t258 = getelementptr %"compiler/ast:TypeDecl", ptr %t256, i32 0, i32 3
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = icmp eq ptr %t259, null
  br i1 %t261, label %bb82, label %bb83
bb82:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb83:
  br label %bb84
bb84:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t266, ptr %v0, ptr %s0, ptr %t264, i32 %t265)
  call void @llvm.memmove.p0.p0.i64(ptr %l157, ptr %t266, i64 160, i1 false)
  br label %bb85
bb85:
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %l157, i64 160, i1 false)
  %t269 = load ptr, ptr %l9, !tbaa !29
  %t271 = getelementptr %"compiler/ast:TypeDecl", ptr %t269, i32 0, i32 3
  %t272 = load ptr, ptr %t271, !tbaa !29
  store ptr %t272, ptr %l11, !tbaa !29
  %t274 = load ptr, ptr %l11, !tbaa !29
  store ptr %t274, ptr %l160, !tbaa !29
  store i1 false, ptr %l161, !tbaa !21
  %t275 = load ptr, ptr %l160, !tbaa !29
  %t276 = icmp ne ptr %t275, null
  br i1 %t276, label %bb86, label %bb87
bb86:
  %t278 = load ptr, ptr %l160, !tbaa !29
  %t279 = load i64, ptr %t278, !range !{i64 0, i64 5}
  %t281 = icmp eq i64 %t279, 0
  store i1 %t281, ptr %l161, !tbaa !21
  br label %bb87
bb87:
  %t282 = load i1, ptr %l161, !tbaa !21
  br i1 %t282, label %bb88, label %bb89
bb88:
  %t283 = load ptr, ptr %l11, !tbaa !29
  %t285 = getelementptr { i64, [6 x i64] }, ptr %t283, i32 0, i32 1
  %t286 = getelementptr { ptr }, ptr %t285, i32 0, i32 0
  %t287 = load ptr, ptr %t286
  store ptr %t287, ptr %l12, !tbaa !29
  br label %bb90
bb89:
  br label %bb93
bb90:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/generic:Program", ptr %t289, i32 0, i32 2
  store ptr %t291, ptr %l167, !tbaa !29
  %t292 = load i32, ptr %l1, !tbaa !23
  store i32 %t292, ptr %l168, !tbaa !23
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load ptr, ptr %l12, !tbaa !29
  %t298 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efields(ptr %v0, ptr %s0, ptr %v0, ptr %t293, ptr %l10, ptr %t294)
  store i32 %t298, ptr %l172
  br label %bb91
bb91:
  %t299 = load ptr, ptr %l12, !tbaa !29
  %t301 = getelementptr %"compiler/ast:StructBody", ptr %t299, i32 0, i32 3
  %t302 = getelementptr %"compiler/source:Span", ptr %t301, i32 0, i32 1
  %t303 = load i32, ptr %t302, !tbaa !23
  %t305 = icmp sgt i32 %t303, 0
  %t306 = load ptr, ptr %l167, !tbaa !29
  %t307 = load i32, ptr %l168, !tbaa !23
  %t308 = load i32, ptr %l172, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetStructBody(ptr %v0, ptr %t306, i32 %t307, i32 %t308, i1 %t305)
  br label %bb92
bb92:
  br label %bb142
bb93:
  %t310 = load ptr, ptr %l11, !tbaa !29
  store ptr %t310, ptr %l176, !tbaa !29
  store i1 false, ptr %l177, !tbaa !21
  %t311 = load ptr, ptr %l176, !tbaa !29
  %t312 = icmp ne ptr %t311, null
  br i1 %t312, label %bb94, label %bb95
bb94:
  %t314 = load ptr, ptr %l176, !tbaa !29
  %t315 = load i64, ptr %t314, !range !{i64 0, i64 5}
  %t317 = icmp eq i64 %t315, 1
  store i1 %t317, ptr %l177, !tbaa !21
  br label %bb95
bb95:
  %t318 = load i1, ptr %l177, !tbaa !21
  br i1 %t318, label %bb96, label %bb97
bb96:
  %t319 = load ptr, ptr %l11, !tbaa !29
  %t321 = getelementptr { i64, [6 x i64] }, ptr %t319, i32 0, i32 1
  %t322 = getelementptr { { i64, ptr }, ptr }, ptr %t321, i32 0, i32 0
  %t323 = load { i64, ptr }, ptr %t322
  store { i64, ptr } %t323, ptr %l13, !tbaa !27
  br label %bb98
bb97:
  br label %bb122
bb98:
  store %olang.scope zeroinitializer, ptr %s16
  %t325 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t325, 0
  store i64 %t327, ptr %l183, !tbaa !24
  %t328 = load i64, ptr %l183, !tbaa !24
  %t329 = icmp sge i64 %t328, 0
  br i1 %t329, label %bb99, label %bb100
bb99:
  %t331 = load i64, ptr %l183, !tbaa !24
  %t332 = icmp sle i64 %t331, 2305843009213693951
  br i1 %t332, label %bb101, label %bb102
bb100:
  call void @__olang_check_failed(ptr @olang_loc_e3a2ba8c5e067247_8b3ee33876f19483)
  unreachable
bb101:
  %t334 = load i64, ptr %l183, !tbaa !24
  %t335 = mul i64 %t334, 4
  %t336 = call ptr @__olang_scope_alloc_zeroed(ptr %s16, i64 %t335)
  %t337 = insertvalue { i64, ptr } undef, i64 %t334, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t336, 1
  store { i64, ptr } %t338, ptr %l14, !tbaa !27
  %t340 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t342 = extractvalue { i64, ptr } %t340, 0
  store i64 %t342, ptr %l188, !tbaa !24
  %t343 = load i64, ptr %l188, !tbaa !24
  %t344 = icmp sge i64 %t343, 0
  br i1 %t344, label %bb103, label %bb104
bb102:
  call void @__olang_check_failed(ptr @olang_loc_e3a2ba8c5e067247_8b3ee33876f19483)
  unreachable
bb103:
  %t346 = load i64, ptr %l188, !tbaa !24
  %t347 = icmp sle i64 %t346, 2305843009213693951
  br i1 %t347, label %bb105, label %bb106
bb104:
  call void @__olang_check_failed(ptr @olang_loc_9761a243a5640f52_e0132c3d672b758e)
  unreachable
bb105:
  %t349 = load i64, ptr %l188, !tbaa !24
  %t350 = mul i64 %t349, 4
  %t351 = call ptr @__olang_scope_alloc_zeroed(ptr %s16, i64 %t350)
  %t352 = insertvalue { i64, ptr } undef, i64 %t349, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t351, 1
  store { i64, ptr } %t353, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t355 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t357 = extractvalue { i64, ptr } %t355, 0
  store i64 %t357, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t359 = load i64, ptr %l17, !tbaa !24
  %t360 = load i64, ptr %l16, !tbaa !24
  %t363 = icmp sgt i64 %t359, %t360
  br i1 %t363, label %bb107, label %bb108
bb106:
  call void @__olang_check_failed(ptr @olang_loc_9761a243a5640f52_e0132c3d672b758e)
  unreachable
bb107:
  %t365 = load i64, ptr %l18, !tbaa !24
  %t367 = icmp sgt i64 %t365, 0
  br i1 %t367, label %bb109, label %bb110
bb108:
  store i64 0, ptr %l197, !tbaa !24
  br label %bb112
bb109:
  %t369 = load i64, ptr %l17, !tbaa !24
  %t370 = load i64, ptr %l16, !tbaa !24
  %t373 = sub i64 %t369, %t370
  %t374 = load i64, ptr %l18, !tbaa !24
  %t377 = add i64 %t373, %t374
  %t379 = sub i64 %t377, 1
  %t380 = load i64, ptr %l18, !tbaa !24
  %t383 = sdiv i64 %t379, %t380
  store i64 %t383, ptr %l200, !tbaa !24
  br label %bb111
bb110:
  store i64 0, ptr %l200, !tbaa !24
  br label %bb111
bb111:
  %t385 = load i64, ptr %l200, !tbaa !24
  store i64 %t385, ptr %l197, !tbaa !24
  br label %bb112
bb112:
  %t386 = load i64, ptr %l197, !tbaa !24
  store i64 %t386, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb113
bb113:
  %t387 = load i64, ptr %l20, !tbaa !24
  %t388 = load i64, ptr %l19, !tbaa !24
  %t391 = icmp slt i64 %t387, %t388
  %t393 = xor i1 %t391, true
  br i1 %t393, label %bb114, label %bb115
bb114:
  br label %bb119
bb115:
  br label %bb116
bb116:
  %t395 = load i64, ptr %l16, !tbaa !24
  %t396 = load i64, ptr %l20, !tbaa !24
  %t397 = load i64, ptr %l18, !tbaa !24
  %t400 = mul i64 %t396, %t397
  %t403 = add i64 %t395, %t400
  store i64 %t403, ptr %l21, !tbaa !24
  %t405 = load i64, ptr %l21, !tbaa !24
  %t406 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t406, ptr %l219, !tbaa !27
  %t407 = load i64, ptr %l21, !tbaa !24
  %t409 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t410 = load ptr, ptr %t409, !tbaa !27
  %t411 = getelementptr ptr, ptr %t410, i64 %t407
  %t412 = load ptr, ptr %t411, !tbaa !39
  %t414 = getelementptr %"compiler/ast:CaseDecl", ptr %t412, i32 0, i32 1
  %t415 = load i32, ptr %t414, !tbaa !23
  %t418 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t419 = load ptr, ptr %t418, !tbaa !27
  %t420 = getelementptr i32, ptr %t419, i64 %t405
  store i32 %t415, ptr %t420, !tbaa !33
  %t421 = load i64, ptr %l21, !tbaa !24
  store i64 %t421, ptr %l223, !tbaa !24
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t423 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t423, ptr %l226, !tbaa !27
  %t424 = load i64, ptr %l21, !tbaa !24
  %t426 = getelementptr { i64, ptr }, ptr %l226, i32 0, i32 1
  %t427 = load ptr, ptr %t426, !tbaa !27
  %t428 = getelementptr ptr, ptr %t427, i64 %t424
  %t429 = load ptr, ptr %t428, !tbaa !39
  %t430 = load i32, ptr %l2, !tbaa !23
  %t435 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epayload(ptr %v0, ptr %s0, ptr %v0, ptr %t422, ptr %l10, ptr %t429, i32 %t430)
  store i32 %t435, ptr %l230
  br label %bb117
bb117:
  %t436 = load i32, ptr %l230, !tbaa !23
  %t437 = load i64, ptr %l223, !tbaa !24
  %t438 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t439 = load ptr, ptr %t438, !tbaa !27
  %t440 = getelementptr i32, ptr %t439, i64 %t437
  store i32 %t436, ptr %t440, !tbaa !33
  br label %bb118
bb118:
  %t441 = load i64, ptr %l20, !tbaa !24
  %t443 = add i64 %t441, 1
  store i64 %t443, ptr %l20, !tbaa !24
  br label %bb113
bb119:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/generic:Program", ptr %t445, i32 0, i32 2
  store ptr %t447, ptr %l234, !tbaa !29
  %t448 = load i32, ptr %l1, !tbaa !23
  store i32 %t448, ptr %l235, !tbaa !23
  %t449 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t449, ptr %l236, !tbaa !27
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t452 = getelementptr %"compiler/generic:Program", ptr %t450, i32 0, i32 2
  %t453 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t456 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s16, ptr %t452, { i64, ptr } %t453)
  store i32 %t456, ptr %l240
  br label %bb120
bb120:
  %t457 = load ptr, ptr %l234, !tbaa !29
  %t458 = load i32, ptr %l235, !tbaa !23
  %t459 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t460 = load i32, ptr %l240, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEnumBody(ptr %v0, ptr %s16, ptr %t457, i32 %t458, { i64, ptr } %t459, i32 %t460)
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s16)
  br label %bb142
bb122:
  %t461 = load ptr, ptr %l11, !tbaa !29
  store ptr %t461, ptr %l241, !tbaa !29
  store i1 false, ptr %l242, !tbaa !21
  %t462 = load ptr, ptr %l241, !tbaa !29
  %t463 = icmp ne ptr %t462, null
  br i1 %t463, label %bb123, label %bb124
bb123:
  %t465 = load ptr, ptr %l241, !tbaa !29
  %t466 = load i64, ptr %t465, !range !{i64 0, i64 5}
  %t468 = icmp eq i64 %t466, 3
  store i1 %t468, ptr %l242, !tbaa !21
  br label %bb124
bb124:
  %t469 = load i1, ptr %l242, !tbaa !21
  br i1 %t469, label %bb125, label %bb126
bb125:
  %t470 = load ptr, ptr %l11, !tbaa !29
  %t472 = getelementptr { i64, [6 x i64] }, ptr %t470, i32 0, i32 1
  %t473 = getelementptr { ptr, ptr }, ptr %t472, i32 0, i32 0
  %t474 = load ptr, ptr %t473
  store ptr %t474, ptr %l22, !tbaa !29
  br label %bb127
bb126:
  br label %bb130
bb127:
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t478 = getelementptr %"compiler/generic:Program", ptr %t476, i32 0, i32 2
  store ptr %t478, ptr %l248, !tbaa !29
  %t479 = load i32, ptr %l1, !tbaa !23
  store i32 %t479, ptr %l249, !tbaa !23
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load ptr, ptr %l22, !tbaa !29
  %t486 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v0, ptr %t480, ptr %l10, ptr %t481)
  store i32 %t486, ptr %l254
  br label %bb128
bb128:
  %t487 = load ptr, ptr %l248, !tbaa !29
  %t488 = load i32, ptr %l249, !tbaa !23
  %t489 = load i32, ptr %l254, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetOverBody(ptr %v0, ptr %t487, i32 %t488, i32 %t489)
  br label %bb129
bb129:
  br label %bb142
bb130:
  %t490 = load ptr, ptr %l11, !tbaa !29
  store ptr %t490, ptr %l255, !tbaa !29
  store i1 false, ptr %l256, !tbaa !21
  %t491 = load ptr, ptr %l255, !tbaa !29
  %t492 = icmp ne ptr %t491, null
  br i1 %t492, label %bb131, label %bb132
bb131:
  %t494 = load ptr, ptr %l255, !tbaa !29
  %t495 = load i64, ptr %t494, !range !{i64 0, i64 5}
  %t497 = icmp eq i64 %t495, 2
  store i1 %t497, ptr %l256, !tbaa !21
  br label %bb132
bb132:
  %t498 = load i1, ptr %l256, !tbaa !21
  br i1 %t498, label %bb133, label %bb134
bb133:
  br label %bb139
bb134:
  %t499 = load ptr, ptr %l11, !tbaa !29
  store ptr %t499, ptr %l259, !tbaa !29
  store i1 false, ptr %l260, !tbaa !21
  %t500 = load ptr, ptr %l259, !tbaa !29
  %t501 = icmp ne ptr %t500, null
  br i1 %t501, label %bb135, label %bb136
bb135:
  %t503 = load ptr, ptr %l259, !tbaa !29
  %t504 = load i64, ptr %t503, !range !{i64 0, i64 5}
  %t506 = icmp eq i64 %t504, 4
  store i1 %t506, ptr %l260, !tbaa !21
  br label %bb136
bb136:
  %t507 = load i1, ptr %l260, !tbaa !21
  br i1 %t507, label %bb137, label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb141
bb139:
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t510 = getelementptr %"compiler/generic:Program", ptr %t508, i32 0, i32 2
  %t511 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEmptyBody(ptr %v0, ptr %t510, i32 %t511)
  br label %bb140
bb140:
  br label %bb142
bb141:
  call void @__olang_check_failed(ptr @olang_loc_e47f82bcf36ef746_b94daf5318f6e942)
  unreachable
bb142:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l4 = alloca i32
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
  %l18 = alloca ptr
  %l22 = alloca i32
  %l25 = alloca i32
  %l29 = alloca i32
  %l31 = alloca i32
  %l34 = alloca i64
  %l37 = alloca i64
  %l39 = alloca ptr
  %l43 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l44 = alloca i64
  %l45 = alloca i32
  %l51 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca i1
  %l64 = alloca i1
  %l66 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca i1
  %l75 = alloca i64
  %l79 = alloca i64
  %l80 = alloca i32
  %l86 = alloca i64
  %l90 = alloca i64
  %l93 = alloca i64
  %l114 = alloca i64
  %l118 = alloca %"compiler/generic:fnRow"
  %l126 = alloca i64
  %l129 = alloca ptr
  %l130 = alloca i32
  %l133 = alloca i32
  %l134 = alloca i1
  %s1 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 2
  store ptr %t5, ptr %l18, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l22
  br label %bb2
bb2:
  %t13 = load i32, ptr %l22, !range !{i32 0, i32 33}
  %t15 = trunc i64 20 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l29
  br label %bb5
bb4:
  %t25 = load i32, ptr %l1, !tbaa !23
  store i32 %t25, ptr %l25, !tbaa !23
  br label %bb6
bb5:
  %t27 = load i32, ptr %l29, !tbaa !23
  store i32 %t27, ptr %l25, !tbaa !23
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l18, !tbaa !29
  %t29 = load i32, ptr %l25, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t30, ptr %l31
  br label %bb7
bb7:
  %t31 = load i32, ptr %l31, !tbaa !23
  store i32 %t31, ptr %l4, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l4, !tbaa !23
  %t36 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeKey(ptr %v0, ptr %t32, i32 %t33)
  store i64 %t36, ptr %l34
  br label %bb8
bb8:
  %t37 = load i64, ptr %l34, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp sge i64 %t38, 0
  br i1 %t40, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 40
  store ptr %t44, ptr %l39, !tbaa !29
  %t45 = load i64, ptr %l5, !tbaa !24
  %t46 = load i32, ptr %l2, !tbaa !23
  %t48 = sext i32 %t46 to i64
  %t51 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s1, i64 %t45, i64 %t48)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t51, ptr %l43
  br label %bb11
bb10:
  br label %bb52
bb11:
  %t52 = load ptr, ptr %l39, !tbaa !29
  %t53 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l43
  %t54 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t52, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t53)
  %t55 = extractvalue { i32, i64 } %t54, 1
  %t56 = extractvalue { i32, i64 } %t54, 0
  store i32 %t56, ptr %l45
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb13, label %ok.58, !prof !99
ok.58:
  store i64 %t55, ptr %l44
  br label %bb12
bb12:
  %t59 = load i64, ptr %l44, !tbaa !24
  store i64 %t59, ptr %l37, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 -1, ptr %l37, !tbaa !24
  br label %bb15
bb15:
  %t60 = load i64, ptr %l37, !tbaa !24
  store i64 %t60, ptr %l6, !tbaa !24
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb16
bb16:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = icmp sge i64 %t61, 0
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb17, label %bb18
bb17:
  br label %bb48
bb18:
  br label %bb19
bb19:
  br i1 %a3, label %bb20, label %bb21
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  store ptr %t71, ptr %l51, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t72, i64 %t73)
  store i32 %t76, ptr %l54
  br label %bb22
bb21:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i32, ptr %l4, !tbaa !23
  %t83 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownerApplies(ptr %v0, ptr %t77, i64 %t78, i32 %t79)
  store i1 %t83, ptr %l64
  br label %bb30
bb22:
  %t84 = load ptr, ptr %l51, !tbaa !29
  %t85 = load i32, ptr %l54, !tbaa !23
  %t86 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t84, i32 %t85)
  store i1 %t86, ptr %l55
  br label %bb23
bb23:
  %t87 = load i1, ptr %l55, !tbaa !21
  %t88 = xor i1 %t87, true
  br i1 %t88, label %bb24, label %bb25
bb24:
  %t90 = load i64, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t90, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t92 = load i64, ptr %l7, !tbaa !24
  %t94 = icmp slt i64 %t92, 0
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t96 = load i64, ptr %l6, !tbaa !24
  store i64 %t96, ptr %l7, !tbaa !24
  br label %bb29
bb28:
  br label %bb29
bb29:
  br label %bb42
bb30:
  %t98 = load i1, ptr %l64, !tbaa !21
  br i1 %t98, label %bb31, label %bb32
bb31:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  store ptr %t101, ptr %l66, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i64, ptr %l6, !tbaa !24
  %t106 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t102, i64 %t103)
  store i32 %t106, ptr %l69
  br label %bb33
bb32:
  br label %bb41
bb33:
  %t107 = load ptr, ptr %l66, !tbaa !29
  %t108 = load i32, ptr %l69, !tbaa !23
  %t109 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t107, i32 %t108)
  store i1 %t109, ptr %l70
  br label %bb34
bb34:
  %t110 = load i1, ptr %l70, !tbaa !21
  br i1 %t110, label %bb35, label %bb36
bb35:
  %t111 = load i64, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t111, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t113 = load i64, ptr %l7, !tbaa !24
  %t115 = icmp slt i64 %t113, 0
  br i1 %t115, label %bb38, label %bb39
bb38:
  %t117 = load i64, ptr %l6, !tbaa !24
  store i64 %t117, ptr %l7, !tbaa !24
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/generic:Program", ptr %t119, i32 0, i32 37
  %t122 = load i64, ptr %l6, !tbaa !24
  %t125 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t121, i64 %t122)
  %t126 = extractvalue { i32, i64 } %t125, 1
  %t127 = extractvalue { i32, i64 } %t125, 0
  store i32 %t127, ptr %l80
  %t128 = icmp ne i32 %t127, 0
  br i1 %t128, label %bb44, label %ok.129, !prof !99
ok.129:
  store i64 %t126, ptr %l79
  br label %bb43
bb43:
  %t130 = load i64, ptr %l79, !tbaa !24
  store i64 %t130, ptr %l75, !tbaa !24
  br label %bb46
bb44:
  br label %bb45
bb45:
  store i64 -1, ptr %l75, !tbaa !24
  br label %bb46
bb46:
  %t131 = load i64, ptr %l75, !tbaa !24
  store i64 %t131, ptr %l6, !tbaa !24
  br label %bb47
bb47:
  br label %bb16
bb48:
  %t132 = load i64, ptr %l7, !tbaa !24
  %t134 = icmp sge i64 %t132, 0
  br i1 %t134, label %bb49, label %bb50
bb49:
  %t136 = load i64, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t136, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s1)
  br label %bb52
bb52:
  store i64 0, ptr %l8, !tbaa !24
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 41
  %t142 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t140)
  store i64 %t142, ptr %l86
  br label %bb53
bb53:
  %t143 = load i64, ptr %l86, !tbaa !24
  store i64 %t143, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t144 = load i64, ptr %l9, !tbaa !24
  %t145 = load i64, ptr %l8, !tbaa !24
  %t148 = icmp sgt i64 %t144, %t145
  br i1 %t148, label %bb54, label %bb55
bb54:
  %t150 = load i64, ptr %l10, !tbaa !24
  %t152 = icmp sgt i64 %t150, 0
  br i1 %t152, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb59
bb56:
  %t154 = load i64, ptr %l9, !tbaa !24
  %t155 = load i64, ptr %l8, !tbaa !24
  %t158 = sub i64 %t154, %t155
  %t159 = load i64, ptr %l10, !tbaa !24
  %t162 = add i64 %t158, %t159
  %t164 = sub i64 %t162, 1
  %t165 = load i64, ptr %l10, !tbaa !24
  %t168 = sdiv i64 %t164, %t165
  store i64 %t168, ptr %l93, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb58
bb58:
  %t170 = load i64, ptr %l93, !tbaa !24
  store i64 %t170, ptr %l90, !tbaa !24
  br label %bb59
bb59:
  %t171 = load i64, ptr %l90, !tbaa !24
  store i64 %t171, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb60
bb60:
  store %olang.scope zeroinitializer, ptr %s12
  %t172 = load i64, ptr %l12, !tbaa !24
  %t173 = load i64, ptr %l11, !tbaa !24
  %t176 = icmp slt i64 %t172, %t173
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s12)
  br label %bb76
bb62:
  br label %bb63
bb63:
  %t180 = load i64, ptr %l8, !tbaa !24
  %t181 = load i64, ptr %l12, !tbaa !24
  %t182 = load i64, ptr %l10, !tbaa !24
  %t185 = mul i64 %t181, %t182
  %t188 = add i64 %t180, %t185
  store i64 %t188, ptr %l13, !tbaa !24
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 41
  %t193 = load i64, ptr %l13, !tbaa !24
  %t196 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t192, i64 %t193)
  store i64 %t196, ptr %l114
  br label %bb64
bb64:
  %t197 = load i64, ptr %l114, !tbaa !24
  store i64 %t197, ptr %l14, !tbaa !24
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/generic:Program", ptr %t198, i32 0, i32 29
  %t201 = load i64, ptr %l14, !tbaa !24
  %t204 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s12, ptr %t200, i64 %t201)
  store %"compiler/generic:fnRow" %t204, ptr %l118
  br label %bb65
bb65:
  %t205 = getelementptr %"compiler/generic:fnRow", ptr %l118, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = getelementptr %"compiler/ast:Func", ptr %t206, i32 0, i32 10
  %t209 = load i32, ptr %t208, !tbaa !23
  %t210 = load i32, ptr %l2, !tbaa !23
  %t213 = icmp ne i32 %t209, %t210
  br i1 %t213, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s12)
  br label %bb75
bb67:
  br label %bb68
bb68:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 42
  %t218 = load i64, ptr %l13, !tbaa !24
  %t221 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t217, i64 %t218)
  store i64 %t221, ptr %l126
  br label %bb69
bb69:
  %t222 = load i64, ptr %l126, !tbaa !24
  %t223 = trunc i64 %t222 to i32
  %t226 = load ptr, ptr %l0, !tbaa !29
  store ptr %t226, ptr %l129, !tbaa !29
  %t227 = load i32, ptr %l4, !tbaa !23
  store i32 %t227, ptr %l130, !tbaa !23
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t232 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t228, i32 %t223)
  store i32 %t232, ptr %l133
  br label %bb70
bb70:
  %t233 = load ptr, ptr %l129, !tbaa !29
  %t234 = load i32, ptr %l130, !tbaa !23
  %t235 = load i32, ptr %l133, !tbaa !23
  %t236 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSatisfies(ptr %v0, ptr %t233, i32 %t234, i32 %t235)
  store i1 %t236, ptr %l134
  br label %bb71
bb71:
  %t237 = load i1, ptr %l134, !tbaa !21
  br i1 %t237, label %bb72, label %bb73
bb72:
  %t238 = load i64, ptr %l14, !tbaa !24
  call void @__olang_scope_close(ptr %s12)
  store i64 %t238, ptr %rv
  br label %ret
bb73:
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s12)
  br label %bb75
bb75:
  %t240 = load i64, ptr %l12, !tbaa !24
  %t242 = add i64 %t240, 1
  store i64 %t242, ptr %l12, !tbaa !24
  br label %bb60
bb76:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i32
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca ptr
  %l32 = alloca i1
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca i1
  %l51 = alloca i1
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca i64
  %l85 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 2
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t5, i32 %t6)
  store i32 %t9, ptr %l15
  br label %bb2
bb2:
  %t10 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t12 = trunc i64 18 to i32
  %t13 = icmp eq i32 %t10, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s1, ptr %l3)
  store { i64, ptr } %t18, ptr %l20
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t19 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t19, ptr %l21, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l22, !tbaa !24
  %t22 = load i64, ptr %l22, !tbaa !24
  %t23 = mul i64 %t22, 4
  %t24 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l23, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l22, !tbaa !24
  %t32 = mul i64 %t31, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t28, ptr %t30, i64 %t32, i1 false)
  %t33 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t33, ptr %l21, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t34 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t34, ptr %rv
  br label %ret
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l24, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l1, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l28
  br label %bb7
bb7:
  %t43 = load ptr, ptr %l24, !tbaa !29
  %t44 = load i32, ptr %l28, !tbaa !23
  %t45 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t43, i32 %t44)
  store ptr %t45, ptr %l29
  br label %bb8
bb8:
  %t46 = load ptr, ptr %l29, !tbaa !29
  store ptr %t46, ptr %l4, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t49 = icmp eq ptr %t47, null
  br i1 %t49, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb11
bb10:
  %t51 = load ptr, ptr %l4, !tbaa !29
  %t53 = getelementptr %"compiler/ast:TypeDecl", ptr %t51, i32 0, i32 3
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = icmp eq ptr %t54, null
  store i1 %t56, ptr %l32, !tbaa !21
  br label %bb11
bb11:
  %t58 = load i1, ptr %l32, !tbaa !21
  br i1 %t58, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t60 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s2, ptr %l3)
  store { i64, ptr } %t60, ptr %l37
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t61 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t61, ptr %l38, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  store i64 %t63, ptr %l39, !tbaa !24
  %t64 = load i64, ptr %l39, !tbaa !24
  %t65 = mul i64 %t64, 4
  %t66 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t65)
  %t67 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l40, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = load i64, ptr %l39, !tbaa !24
  %t74 = mul i64 %t73, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t70, ptr %t72, i64 %t74, i1 false)
  %t75 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t75, ptr %l38, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t76 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t76, ptr %rv
  br label %ret
bb15:
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t79 = getelementptr %"compiler/ast:TypeDecl", ptr %t77, i32 0, i32 3
  %t80 = load ptr, ptr %t79, !tbaa !29
  store ptr %t80, ptr %l5, !tbaa !29
  %t82 = load ptr, ptr %l5, !tbaa !29
  store ptr %t82, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t83 = load ptr, ptr %l43, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb16, label %bb17
bb16:
  %t86 = load ptr, ptr %l43, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 5}
  %t89 = icmp eq i64 %t87, 1
  store i1 %t89, ptr %l44, !tbaa !21
  br label %bb17
bb17:
  %t90 = load i1, ptr %l44, !tbaa !21
  br i1 %t90, label %bb18, label %bb19
bb18:
  %t91 = load ptr, ptr %l5, !tbaa !29
  %t93 = getelementptr { i64, [6 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { { i64, ptr }, ptr }, ptr %t93, i32 0, i32 0
  %t95 = load { i64, ptr }, ptr %t94
  store { i64, ptr } %t95, ptr %l6, !tbaa !27
  br label %bb20
bb19:
  br label %bb37
bb20:
  %t97 = load i64, ptr %l2, !tbaa !24
  %t99 = icmp sge i64 %t97, 0
  br i1 %t99, label %bb21, label %bb22
bb21:
  %t101 = load i64, ptr %l2, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t107 = icmp slt i64 %t101, %t104
  store i1 %t107, ptr %l51, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb23
bb23:
  %t109 = load i1, ptr %l51, !tbaa !21
  br i1 %t109, label %bb24, label %bb25
bb24:
  %t110 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t110, ptr %l57, !tbaa !27
  %t111 = load i64, ptr %l2, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr ptr, ptr %t114, i64 %t111
  %t116 = load ptr, ptr %t115, !tbaa !39
  %t118 = getelementptr %"compiler/ast:CaseDecl", ptr %t116, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t123 = icmp sgt i64 %t121, 0
  store i1 %t123, ptr %l56, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb26
bb26:
  %t125 = load i1, ptr %l56, !tbaa !21
  br i1 %t125, label %bb27, label %bb28
bb27:
  %t126 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t126, ptr %l63, !tbaa !27
  %t127 = load i64, ptr %l2, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr ptr, ptr %t130, i64 %t127
  %t132 = load ptr, ptr %t131, !tbaa !39
  %t134 = getelementptr %"compiler/ast:CaseDecl", ptr %t132, i32 0, i32 2
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  store { i64, ptr } %t135, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t137 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  store i64 %t139, ptr %l9, !tbaa !24
  br label %bb29
bb28:
  br label %bb36
bb29:
  %t141 = load i64, ptr %l8, !tbaa !24
  %t142 = load i64, ptr %l9, !tbaa !24
  %t145 = icmp slt i64 %t141, %t142
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb30, label %bb31
bb30:
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t149 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t149, ptr %l73, !tbaa !27
  %t150 = load i64, ptr %l8, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr ptr, ptr %t153, i64 %t150
  %t155 = load ptr, ptr %t154, !tbaa !39
  %t159 = getelementptr %"compiler/ast:Param", ptr %t155, i32 0, i32 1
  %t160 = load i32, ptr %t159, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l3, i32 %t160)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t163 = load i64, ptr %l8, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l8, !tbaa !24
  br label %bb29
bb35:
  br label %bb36
bb36:
  br label %bb42
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_418de96ceb9602da_9cbeacdc8e10376e)
  unreachable
bb42:
  %t168 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t168, ptr %l82
  br label %bb43
bb43:
  %t169 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t169, ptr %l83, !tbaa !27
  %t170 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 0
  store i64 %t171, ptr %l84, !tbaa !24
  %t172 = load i64, ptr %l84, !tbaa !24
  %t173 = mul i64 %t172, 4
  %t174 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t173)
  %t175 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  store { i64, ptr } %t176, ptr %l85, !tbaa !27
  %t177 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = load i64, ptr %l84, !tbaa !24
  %t182 = mul i64 %t181, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t178, ptr %t180, i64 %t182, i1 false)
  %t183 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t183, ptr %l83, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t184 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t184, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorParams(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l11 = alloca i32
  %l17 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca ptr
  %l25 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 0, i64 8)
  store ptr %t1, ptr %lp2
  %t3 = load ptr, ptr %lp2
  store [0 x ptr] zeroinitializer, ptr %t3
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l11
  br label %bb1
bb1:
  %t11 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t13 = trunc i64 18 to i32
  %t14 = icmp eq i32 %t11, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load ptr, ptr %lp2
  %t20 = insertvalue { i64, ptr } undef, i64 0, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t18, 1
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l17, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l21
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l17, !tbaa !29
  %t32 = load i32, ptr %l21, !tbaa !23
  %t33 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t31, i32 %t32)
  store ptr %t33, ptr %l22
  br label %bb6
bb6:
  %t34 = load ptr, ptr %l22, !tbaa !29
  store ptr %t34, ptr %l3, !tbaa !29
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  br i1 %t37, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb9
bb8:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr %"compiler/ast:TypeDecl", ptr %t39, i32 0, i32 3
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  store i1 %t44, ptr %l25, !tbaa !21
  br label %bb9
bb9:
  %t46 = load i1, ptr %l25, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %lp2
  %t49 = insertvalue { i64, ptr } undef, i64 0, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t47, 1
  store { i64, ptr } %t50, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = getelementptr %"compiler/ast:TypeDecl", ptr %t52, i32 0, i32 3
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %l4, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  store ptr %t57, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t58 = load ptr, ptr %l33, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb13, label %bb14
bb13:
  %t61 = load ptr, ptr %l33, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 5}
  %t64 = icmp eq i64 %t62, 0
  store i1 %t64, ptr %l34, !tbaa !21
  br label %bb14
bb14:
  %t65 = load i1, ptr %l34, !tbaa !21
  br i1 %t65, label %bb15, label %bb16
bb15:
  %t66 = load ptr, ptr %l4, !tbaa !29
  %t68 = getelementptr { i64, [6 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { ptr }, ptr %t68, i32 0, i32 0
  %t70 = load ptr, ptr %t69
  store ptr %t70, ptr %l5, !tbaa !29
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t72 = load ptr, ptr %l5, !tbaa !29
  %t74 = getelementptr %"compiler/ast:StructBody", ptr %t72, i32 0, i32 0
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %rv
  br label %ret
bb18:
  %t77 = load ptr, ptr %l4, !tbaa !29
  store ptr %t77, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t78 = load ptr, ptr %l41, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb19, label %bb20
bb19:
  %t81 = load ptr, ptr %l41, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 5}
  %t84 = icmp eq i64 %t82, 3
  store i1 %t84, ptr %l42, !tbaa !21
  br label %bb20
bb20:
  %t85 = load i1, ptr %l42, !tbaa !21
  br i1 %t85, label %bb21, label %bb22
bb21:
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t88 = getelementptr { i64, [6 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { ptr, ptr }, ptr %t88, i32 0, i32 1
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l6, !tbaa !29
  br label %bb23
bb22:
  br label %bb27
bb23:
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t94 = icmp eq ptr %t92, null
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb24, label %bb25
bb24:
  %t98 = load ptr, ptr %l6, !tbaa !29
  %t100 = getelementptr %"compiler/ast:Func", ptr %t98, i32 0, i32 3
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"compiler/ast:Sig", ptr %t101, i32 0, i32 0
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_41496c53cef75c6_a63bcc71a26a0752)
  unreachable
bb32:
  %t106 = load ptr, ptr %lp2
  %t108 = insertvalue { i64, ptr } undef, i64 0, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t106, 1
  store { i64, ptr } %t109, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSigAt(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/generic:Context"
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l11 = alloca i32
  %l16 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca ptr
  %l24 = alloca i1
  %l32 = alloca %"compiler/generic:Context"
  %l35 = alloca ptr
  %l36 = alloca i1
  %l48 = alloca i32
  %l49 = alloca ptr
  %l50 = alloca i1
  %l67 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t46 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t15, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l16, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l20
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t26 = load i32, ptr %l20, !tbaa !23
  %t27 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t25, i32 %t26)
  store ptr %t27, ptr %l21
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l21, !tbaa !29
  store ptr %t28, ptr %l3, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  br i1 %t31, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb9
bb8:
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t35 = getelementptr %"compiler/ast:TypeDecl", ptr %t33, i32 0, i32 3
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  store i1 %t38, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l24, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t41 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t41, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorContext(ptr %t46, ptr %v0, ptr %s0, ptr %t43, i32 %t44, i32 %a2)
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %t46, i64 160, i1 false)
  br label %bb13
bb13:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l32, i64 160, i1 false)
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t52 = getelementptr %"compiler/ast:TypeDecl", ptr %t50, i32 0, i32 3
  %t53 = load ptr, ptr %t52, !tbaa !29
  store ptr %t53, ptr %l5, !tbaa !29
  %t55 = load ptr, ptr %l5, !tbaa !29
  store ptr %t55, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t56 = load ptr, ptr %l35, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb14, label %bb15
bb14:
  %t59 = load ptr, ptr %l35, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 5}
  %t62 = icmp eq i64 %t60, 0
  store i1 %t62, ptr %l36, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l36, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t66 = getelementptr { i64, [6 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { ptr }, ptr %t66, i32 0, i32 0
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l6, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l6, !tbaa !29
  %t73 = getelementptr %"compiler/ast:StructBody", ptr %t71, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t75 = load ptr, ptr %l6, !tbaa !29
  %t77 = getelementptr %"compiler/ast:StructBody", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = load i32, ptr %l1, !tbaa !23
  %t85 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamsSig(ptr %v0, ptr %s0, ptr %v0, ptr %v0, ptr %t70, ptr %l4, { i64, ptr } %t74, ptr %t78, i32 %t79)
  store i32 %t85, ptr %l48
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t86 = load i32, ptr %l48, !tbaa !23
  store i32 %t86, ptr %rv
  br label %ret
bb20:
  %t87 = load ptr, ptr %l5, !tbaa !29
  store ptr %t87, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t88 = load ptr, ptr %l49, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb21, label %bb22
bb21:
  %t91 = load ptr, ptr %l49, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 5}
  %t94 = icmp eq i64 %t92, 3
  store i1 %t94, ptr %l50, !tbaa !21
  br label %bb22
bb22:
  %t95 = load i1, ptr %l50, !tbaa !21
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t96 = load ptr, ptr %l5, !tbaa !29
  %t98 = getelementptr { i64, [6 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { ptr, ptr }, ptr %t98, i32 0, i32 1
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l7, !tbaa !29
  br label %bb25
bb24:
  br label %bb30
bb25:
  %t102 = load ptr, ptr %l7, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  br i1 %t104, label %bb26, label %bb27
bb26:
  %t106 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t106, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l7, !tbaa !29
  %t111 = getelementptr %"compiler/ast:Func", ptr %t109, i32 0, i32 3
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/ast:Sig", ptr %t112, i32 0, i32 0
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t116 = load ptr, ptr %l7, !tbaa !29
  %t118 = getelementptr %"compiler/ast:Func", ptr %t116, i32 0, i32 3
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = load i32, ptr %l1, !tbaa !23
  %t127 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamsSig(ptr %v0, ptr %s0, ptr %v0, ptr %v0, ptr %t108, ptr %l4, { i64, ptr } %t115, ptr %t119, i32 %t121)
  store i32 %t127, ptr %l67
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t128 = load i32, ptr %l67, !tbaa !23
  store i32 %t128, ptr %rv
  br label %ret
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  %t129 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t129, ptr %rv
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_58d2bf46824473dc_520b730989ac43d8)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclaredFunc(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l9 = alloca i32
  %l13 = alloca i1
  %l15 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i32
  %l25 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l47 = alloca i1
  %l53 = alloca i1
  %l59 = alloca i32
  %l63 = alloca i32
  %l69 = alloca ptr
  %l73 = alloca i32
  %l77 = alloca i32
  %l81 = alloca i32
  %l85 = alloca i32
  %l89 = alloca i64
  %l90 = alloca i32
  %l94 = alloca i64
  %l95 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load i32, ptr %l9, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l15, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l19
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = load i32, ptr %l19, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t27, ptr %l20
  br label %bb5
bb5:
  %t28 = load i32, ptr %l20, !range !{i32 0, i32 6}
  %t30 = trunc i64 4 to i32
  %t31 = icmp eq i32 %t28, %t30
  %t33 = xor i1 %t31, true
  store i1 %t33, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t35 = load i1, ptr %l13, !tbaa !21
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t36 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t36, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 2
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l29
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l25, !tbaa !29
  %t47 = load i32, ptr %l29, !tbaa !23
  %t48 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t46, i32 %t47)
  store ptr %t48, ptr %l30
  br label %bb11
bb11:
  %t49 = load ptr, ptr %l30, !tbaa !29
  store ptr %t49, ptr %l2, !tbaa !29
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = icmp eq ptr %t50, null
  br i1 %t52, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb14
bb13:
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = getelementptr %"compiler/ast:TypeDecl", ptr %t54, i32 0, i32 3
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  store i1 %t59, ptr %l33, !tbaa !21
  br label %bb14
bb14:
  %t61 = load i1, ptr %l33, !tbaa !21
  br i1 %t61, label %bb15, label %bb16
bb15:
  %t62 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t62, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t66 = getelementptr %"compiler/ast:TypeDecl", ptr %t64, i32 0, i32 3
  %t67 = load ptr, ptr %t66, !tbaa !29
  store ptr %t67, ptr %l3, !tbaa !29
  %t69 = load ptr, ptr %l3, !tbaa !29
  store ptr %t69, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t70 = load ptr, ptr %l40, !tbaa !29
  %t71 = icmp ne ptr %t70, null
  br i1 %t71, label %bb18, label %bb19
bb18:
  %t73 = load ptr, ptr %l40, !tbaa !29
  %t74 = load i64, ptr %t73, !range !{i64 0, i64 5}
  %t76 = icmp eq i64 %t74, 3
  store i1 %t76, ptr %l41, !tbaa !21
  br label %bb19
bb19:
  %t77 = load i1, ptr %l41, !tbaa !21
  br i1 %t77, label %bb20, label %bb21
bb20:
  %t78 = load ptr, ptr %l3, !tbaa !29
  %t80 = getelementptr { i64, [6 x i64] }, ptr %t78, i32 0, i32 1
  %t81 = getelementptr { ptr, ptr }, ptr %t80, i32 0, i32 0
  %t82 = load ptr, ptr %t81
  store ptr %t82, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb27
bb22:
  %t84 = load ptr, ptr %l4, !tbaa !29
  %t86 = call i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsFunc(ptr %v0, ptr %t84)
  store i1 %t86, ptr %l47
  br label %bb23
bb23:
  %t87 = load i1, ptr %l47, !tbaa !21
  %t88 = xor i1 %t87, true
  br i1 %t88, label %bb24, label %bb25
bb24:
  %t90 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t90, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t92 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t92, ptr %rv
  br label %ret
bb31:
  call void @__olang_check_failed(ptr @olang_loc_793add10df93614a_995dc047d9acd1be)
  unreachable
bb32:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l1, !tbaa !23
  %t98 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t94, i32 %t95)
  store i1 %t98, ptr %l53
  br label %bb33
bb33:
  %t99 = load i1, ptr %l53, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb34, label %bb35
bb34:
  %t102 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t102, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %l1, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l59
  br label %bb37
bb37:
  %t111 = load i32, ptr %l59, !tbaa !23
  store i32 %t111, ptr %l5, !tbaa !23
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 2
  %t115 = load i32, ptr %l5, !tbaa !23
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t114, i32 %t115)
  store i32 %t118, ptr %l63
  br label %bb38
bb38:
  %t119 = load i32, ptr %l63, !range !{i32 0, i32 33}
  %t121 = trunc i64 21 to i32
  %t122 = icmp eq i32 %t119, %t121
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb39, label %bb40
bb39:
  %t126 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t126, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/generic:Program", ptr %t128, i32 0, i32 2
  store ptr %t130, ptr %l69, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/generic:Program", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %l5, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l73
  br label %bb42
bb42:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 2
  %t141 = load i32, ptr %l5, !tbaa !23
  %t144 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t140, i32 %t141)
  store i32 %t144, ptr %l77
  br label %bb43
bb43:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 2
  %t148 = load i32, ptr %l5, !tbaa !23
  %t151 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t147, i32 %t148)
  store i32 %t151, ptr %l81
  br label %bb44
bb44:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 2
  %t155 = load i32, ptr %l5, !tbaa !23
  %t158 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t154, i32 %t155)
  store i32 %t158, ptr %l85
  br label %bb45
bb45:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 2
  %t162 = load i32, ptr %l5, !tbaa !23
  %t165 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t161, i32 %t162)
  store i64 %t165, ptr %l89
  br label %bb46
bb46:
  %t166 = load i32, ptr %l1, !tbaa !23
  store i32 %t166, ptr %l90, !tbaa !23
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 2
  %t170 = load i32, ptr %l5, !tbaa !23
  %t173 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t169, i32 %t170)
  store i64 %t173, ptr %l94
  br label %bb47
bb47:
  %t174 = load ptr, ptr %l69, !tbaa !29
  %t175 = load i32, ptr %l73, !tbaa !23
  %t176 = load i32, ptr %l77, !tbaa !23
  %t177 = load i32, ptr %l81, !tbaa !23
  %t178 = load i32, ptr %l85, !tbaa !23
  %t179 = load i64, ptr %l89, !tbaa !24
  %t180 = load i32, ptr %l90, !tbaa !23
  %t181 = load i64, ptr %l94, !tbaa !24
  %t182 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t174, i32 %t175, i32 %t176, i32 %t177, i32 %t178, i64 %t179, i1 false, i32 %t180, i64 %t181)
  store i32 %t182, ptr %l95
  br label %bb48
bb48:
  %t183 = load i32, ptr %l95, !tbaa !23
  store i32 %t183, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetUnion(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l55 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l58 = alloca i32
  %l59 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 2
  store ptr %t5, ptr %l14, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t8, i32 %a1)
  store i32 %t12, ptr %l18
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l14, !tbaa !29
  %t14 = load i32, ptr %l18, !tbaa !23
  %t15 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t13, i32 %t14)
  store { i64, ptr } %t15, ptr %l19
  br label %bb3
bb3:
  %t16 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = icmp slt i64 %t21, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t29 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t29, ptr %l26, !tbaa !27
  %t30 = load i64, ptr %l5, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr i32, ptr %t33, i64 %t30
  %t35 = load i32, ptr %t34, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l3, i32 %t35)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l5, !tbaa !24
  br label %bb4
bb10:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  store ptr %t46, ptr %l34, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t49, i32 %a2)
  store i32 %t53, ptr %l38
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l34, !tbaa !29
  %t55 = load i32, ptr %l38, !tbaa !23
  %t56 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t54, i32 %t55)
  store { i64, ptr } %t56, ptr %l39
  br label %bb12
bb12:
  %t57 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t57, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  store i64 %t60, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l10, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb14, label %bb15
bb14:
  br label %bb19
bb15:
  br label %bb16
bb16:
  %t70 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t70, ptr %l46, !tbaa !27
  %t71 = load i64, ptr %l9, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i32, ptr %t74, i64 %t71
  %t76 = load i32, ptr %t75, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l3, i32 %t76)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t81 = load i64, ptr %l9, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l9, !tbaa !24
  br label %bb13
bb19:
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l53, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  store ptr %t88, ptr %l55, !tbaa !29
  %t90 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t90, ptr %l57
  br label %bb20
bb20:
  %t91 = load ptr, ptr %l55, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t93 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t91, { i64, ptr } %t92)
  store i32 %t93, ptr %l58
  br label %bb21
bb21:
  %t94 = load ptr, ptr %l53, !tbaa !29
  %t95 = load i32, ptr %l58, !tbaa !23
  %t96 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t94, i32 %t95)
  store i32 %t96, ptr %l59
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t97 = load i32, ptr %l59, !tbaa !23
  store i32 %t97, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValWordText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l21 = alloca i1
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l37 = alloca i32
  %l38 = alloca i32
  %l41 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca { i64, ptr }
  %l55 = alloca i64
  %l60 = alloca ptr
  %l68 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  store ptr %t3, ptr %l10, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = load i32, ptr %l14, !tbaa !23
  %t13 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t11, i32 %t12)
  store { i64, ptr } %t13, ptr %l15
  br label %bb2
bb2:
  %t14 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  %t15 = load i64, ptr %l2, !tbaa !24
  %t17 = ashr i64 %t15, 16
  %t19 = sub i64 %t17, 1
  store i64 %t19, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp slt i64 %t21, 0
  br i1 %t23, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb5
bb4:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t31 = icmp sge i64 %t25, %t28
  store i1 %t31, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t33 = load i1, ptr %l21, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t34, ptr %l27, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  store i64 %t36, ptr %l28, !tbaa !24
  %t37 = load i64, ptr %l28, !tbaa !24
  %t38 = mul i64 %t37, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t38)
  %t40 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l29, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = load i64, ptr %l28, !tbaa !24
  %t47 = mul i64 %t46, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t43, ptr %t45, i64 %t47, i1 false)
  %t48 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t48, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t49 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t49, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  store ptr %t52, ptr %l31, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t56, ptr %l34, !tbaa !27
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i32, ptr %t60, i64 %t57
  %t62 = load i32, ptr %t61, !tbaa !33
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t55, i32 %t62)
  store i32 %t65, ptr %l37
  br label %bb9
bb9:
  %t66 = load ptr, ptr %l31, !tbaa !29
  %t67 = load i32, ptr %l37, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t66, i32 %t67)
  store i32 %t68, ptr %l38
  br label %bb10
bb10:
  %t69 = load i32, ptr %l38, !tbaa !23
  store i32 %t69, ptr %l5, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l5, !tbaa !23
  %t74 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t70, i32 %t71)
  store { i64, ptr } %t74, ptr %l41
  br label %bb11
bb11:
  %t75 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t76 = load i64, ptr %l2, !tbaa !24
  %t78 = and i64 %t76, 65535
  store i64 %t78, ptr %l7, !tbaa !24
  %t80 = load i64, ptr %l7, !tbaa !24
  %t83 = extractvalue { i64, ptr } %t75, 0
  %t86 = icmp sge i64 %t80, %t83
  br i1 %t86, label %bb12, label %bb13
bb12:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l48, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t88, ptr %l49, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 0
  store i64 %t90, ptr %l50, !tbaa !24
  %t91 = load i64, ptr %l50, !tbaa !24
  %t92 = mul i64 %t91, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t92)
  %t94 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  store { i64, ptr } %t95, ptr %l51, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = load i64, ptr %l50, !tbaa !24
  %t101 = mul i64 %t100, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t97, ptr %t99, i64 %t101, i1 false)
  %t102 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t102, ptr %l49, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t103 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t103, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %l5, !tbaa !23
  %t110 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t106, i32 %t107)
  store i64 %t110, ptr %l55
  br label %bb15
bb15:
  %t111 = load i64, ptr %l55, !tbaa !24
  store i64 %t111, ptr %l8, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 0
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = getelementptr %"compiler/load:Loader", ptr %t115, i32 0, i32 10
  %t118 = load i64, ptr %l8, !tbaa !24
  %t121 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t117, i64 %t118)
  store ptr %t121, ptr %l60
  br label %bb16
bb16:
  %t122 = load ptr, ptr %l60, !tbaa !29
  %t124 = getelementptr %"compiler/load:Module", ptr %t122, i32 0, i32 2
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  %t126 = load i64, ptr %l8, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 0
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/load:Loader", ptr %t130, i32 0, i32 12
  %t133 = load i64, ptr %t132, !tbaa !24
  %t136 = icmp eq i64 %t126, %t133
  %t139 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %s0, { i64, ptr } %t125, i1 %t136)
  store { i64, ptr } %t139, ptr %l68
  br label %bb17
bb17:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l5, !tbaa !23
  %t142 = load i64, ptr %l7, !tbaa !24
  %t146 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %s0, ptr %t140, i32 %t141, i64 %t142)
  store { i64, ptr } %t146, ptr %l72
  br label %bb18
bb18:
  %t147 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 1
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t150 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = extractvalue { i64, ptr } %t150, 0
  %t153 = add i64 %t149, %t152
  %t154 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t153)
  call void @olang_textcopy(ptr %t154, ptr %t148, i64 %t149)
  %t155 = getelementptr i8, ptr %t154, i64 %t149
  call void @olang_textcopy(ptr %t155, ptr %t151, i64 %t152)
  %t156 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t154, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t157, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i32
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l27 = alloca i1
  %l28 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca ptr
  %l41 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l53 = alloca i1
  %l59 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l60 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca i32
  %l65 = alloca i1
  %l74 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca i64
  %l85 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %wh5 = alloca ptr
  %wc5 = alloca ptr
  %ws5 = alloca i32
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 2
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t5, i32 %t6)
  store i32 %t9, ptr %l16
  br label %bb2
bb2:
  %t10 = load i32, ptr %l16, !range !{i32 0, i32 33}
  %t12 = trunc i64 18 to i32
  %t13 = icmp eq i32 %t10, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s1, ptr %l2)
  store { i64, ptr } %t18, ptr %l21
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t19 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t19, ptr %l22, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l23, !tbaa !24
  %t22 = load i64, ptr %l23, !tbaa !24
  %t23 = mul i64 %t22, 4
  %t24 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l24, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l23, !tbaa !24
  %t32 = mul i64 %t31, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t28, ptr %t30, i64 %t32, i1 false)
  %t33 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t33, ptr %l22, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t34 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t34, ptr %rv
  br label %ret
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %t35, i32 %t36)
  store i1 %t39, ptr %l27
  br label %bb7
bb7:
  %t40 = load i1, ptr %l27, !tbaa !21
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l28, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l1, !tbaa !23
  %t46 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l31
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t47 = load ptr, ptr %l28, !tbaa !29
  %t48 = load i32, ptr %l31, !tbaa !23
  %t49 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %t47, i32 %t48)
  store { i64, ptr } %t49, ptr %l32
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t50 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t50, ptr %rv
  br label %ret
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l33, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l37
  br label %bb13
bb13:
  %t59 = load ptr, ptr %l33, !tbaa !29
  %t60 = load i32, ptr %l37, !tbaa !23
  %t61 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t59, i32 %t60)
  store ptr %t61, ptr %l38
  br label %bb14
bb14:
  %t62 = load ptr, ptr %l38, !tbaa !29
  store ptr %t62, ptr %l3, !tbaa !29
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  br i1 %t65, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb17
bb16:
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t69 = getelementptr %"compiler/ast:TypeDecl", ptr %t67, i32 0, i32 3
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = icmp eq ptr %t70, null
  store i1 %t72, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  %t74 = load i1, ptr %l41, !tbaa !21
  br i1 %t74, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  %t76 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s3, ptr %l2)
  store { i64, ptr } %t76, ptr %l46
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t77 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t77, ptr %l47, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  store i64 %t79, ptr %l48, !tbaa !24
  %t80 = load i64, ptr %l48, !tbaa !24
  %t81 = mul i64 %t80, 4
  %t82 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t81)
  %t83 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  store { i64, ptr } %t84, ptr %l49, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = load i64, ptr %l48, !tbaa !24
  %t90 = mul i64 %t89, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t86, ptr %t88, i64 %t90, i1 false)
  %t91 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t91, ptr %l47, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t92 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t92, ptr %rv
  br label %ret
bb21:
  %t93 = load ptr, ptr %l3, !tbaa !29
  %t95 = getelementptr %"compiler/ast:TypeDecl", ptr %t93, i32 0, i32 3
  %t96 = load ptr, ptr %t95, !tbaa !29
  store ptr %t96, ptr %l4, !tbaa !29
  %t98 = load ptr, ptr %l4, !tbaa !29
  store ptr %t98, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t99 = load ptr, ptr %l52, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb22, label %bb23
bb22:
  %t102 = load ptr, ptr %l52, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 5}
  %t105 = icmp eq i64 %t103, 0
  store i1 %t105, ptr %l53, !tbaa !21
  br label %bb23
bb23:
  %t106 = load i1, ptr %l53, !tbaa !21
  br i1 %t106, label %bb24, label %bb25
bb24:
  %t107 = load ptr, ptr %l4, !tbaa !29
  %t109 = getelementptr { i64, [6 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { ptr }, ptr %t109, i32 0, i32 0
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb42
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t113 = load ptr, ptr %l5, !tbaa !29
  %t115 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %s5, ptr %t113)
  %t116 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t115, 0, 1
  %t117 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t115, 0, 0
  store ptr %t116, ptr %wh5
  store ptr %t117, ptr %wc5
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t115, ptr %l59
  br label %bb27
bb27:
  %t118 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l59
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t118, ptr %l6
  br label %bb28
bb28:
  %t120 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s5, ptr %l6)
  %t121 = extractvalue { i32, ptr } %t120, 1
  %t122 = extractvalue { i32, ptr } %t120, 0
  store i32 %t122, ptr %l63
  %t123 = icmp ne i32 %t122, 0
  br i1 %t123, label %bb30, label %ok.124, !prof !99
ok.124:
  store ptr %t121, ptr %l62
  br label %bb29
bb29:
  %t125 = load ptr, ptr %l62, !tbaa !29
  store ptr %t125, ptr %l60, !tbaa !29
  br label %bb32
bb30:
  %t126 = load i32, ptr %l63, !tbaa !23
  %t127 = ashr i32 %t126, 16
  %t129 = icmp eq i32 %t127, 1
  store i1 %t129, ptr %l65, !tbaa !21
  br label %bb31
bb31:
  br label %bb41
bb32:
  %t130 = load ptr, ptr %l60, !tbaa !29
  %t133 = getelementptr %"compiler/ast:VarDecl", ptr %t130, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  store { i64, ptr } %t134, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t136 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t136, 0
  store i64 %t138, ptr %l10, !tbaa !24
  br label %bb33
bb33:
  %t140 = load i64, ptr %l9, !tbaa !24
  %t141 = load i64, ptr %l10, !tbaa !24
  %t144 = icmp slt i64 %t140, %t141
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb34, label %bb35
bb34:
  br label %bb39
bb35:
  br label %bb36
bb36:
  %t148 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t148, ptr %l74, !tbaa !27
  %t149 = load i64, ptr %l9, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr i32, ptr %t152, i64 %t149
  %t154 = load i32, ptr %t153, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l2, i32 %t154)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t159 = load i64, ptr %l9, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l9, !tbaa !24
  br label %bb33
bb39:
  br label %bb40
bb40:
  br label %bb28
bb41:
  store i32 0, ptr %ws5
  br label %wend5
wend5.c0:
  call void @__olang_scope_close(ptr %s5)
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
  call void @__olang_check_failed(ptr @olang_loc_2a66b784d9289786_f31abe169e6a7bb2)
  unreachable
bb47:
  %t164 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t164, ptr %l82
  br label %bb48
bb48:
  %t165 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t165, ptr %l83, !tbaa !27
  %t166 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t166, 0
  store i64 %t167, ptr %l84, !tbaa !24
  %t168 = load i64, ptr %l84, !tbaa !24
  %t169 = mul i64 %t168, 4
  %t170 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t169)
  %t171 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t170, 1
  store { i64, ptr } %t172, ptr %l85, !tbaa !27
  %t173 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = load i64, ptr %l84, !tbaa !24
  %t178 = mul i64 %t177, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t174, ptr %t176, i64 %t178, i1 false)
  %t179 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t179, ptr %l83, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t180 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t180, ptr %rv
  br label %ret
wend5:
  %t181 = load ptr, ptr %wh5
  %t182 = load ptr, ptr %wc5
  %t183 = call ptr @llvm.coro.promise(ptr %t181, i32 8, i1 false)
  %t184 = getelementptr { { i32, ptr }, i32 }, ptr %t183, i32 0, i32 1
  store i32 2, ptr %t184
  %t185 = call { i32, ptr } %t182(ptr %t181, ptr null)
  %t186 = load i32, ptr %ws5
  switch i32 %t186, label %wend5.c0 [ ]
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 29
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eLen_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnKey(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/generic:fnRow"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca %"compiler/generic:fnRow"
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca ptr
  %l20 = alloca ptr
  %l30 = alloca i32
  %l34 = alloca i32
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l40 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca i32
  %l46 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 29
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store %"compiler/generic:fnRow" %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:fnRow", ptr %l13
  store %"compiler/generic:fnRow" %t8, ptr %l2
  %t9 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t9, ptr %l14
  br label %bb2
bb2:
  %t10 = load %"std/prelude/text:StringBuilder", ptr %l14
  store %"std/prelude/text:StringBuilder" %t10, ptr %l3
  store ptr %l3, ptr %l15, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/load:Loader", ptr %t14, i32 0, i32 10
  %t17 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 0
  %t18 = load i64, ptr %t17, !tbaa !24
  %t21 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t16, i64 %t18)
  store ptr %t21, ptr %l20
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l20, !tbaa !29
  %t24 = getelementptr %"compiler/load:Module", ptr %t22, i32 0, i32 2
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t26 = load ptr, ptr %l15, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t26, { i64, ptr } %t25)
  br label %bb4
bb4:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 58)
  br label %bb5
bb5:
  %t29 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/ast:Func", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i64, ptr %l1, !tbaa !24
  %t43 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvOf(ptr %v0, ptr %t39, i64 %t40)
  store i32 %t43, ptr %l30
  br label %bb8
bb7:
  br label %bb18
bb8:
  %t44 = load i32, ptr %l30, !tbaa !23
  store i32 %t44, ptr %l4, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l4, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l34
  br label %bb9
bb9:
  %t52 = load i32, ptr %l34, !range !{i32 0, i32 33}
  %t54 = trunc i64 18 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb10, label %bb11
bb10:
  store ptr %l3, ptr %l37, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l38, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  store ptr %t60, ptr %l40, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l4, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l44
  br label %bb12
bb11:
  br label %bb16
bb12:
  %t68 = load ptr, ptr %l40, !tbaa !29
  %t69 = load i32, ptr %l44, !tbaa !23
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t70, ptr %l45
  br label %bb13
bb13:
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t72 = load i32, ptr %l45, !tbaa !23
  %t73 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t71, i32 %t72)
  store { i64, ptr } %t73, ptr %l46
  br label %bb14
bb14:
  %t74 = load ptr, ptr %l37, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l46, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t74, { i64, ptr } %t75)
  br label %bb15
bb15:
  br label %bb16
bb16:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 46)
  br label %bb17
bb17:
  br label %bb18
bb18:
  store ptr %l3, ptr %l48, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/ast:Func", ptr %t79, i32 0, i32 2
  %t82 = load i32, ptr %t81, !tbaa !23
  %t85 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t77, i32 %t82)
  store { i64, ptr } %t85, ptr %l52
  br label %bb19
bb19:
  %t86 = load ptr, ptr %l48, !tbaa !29
  %t87 = load { i64, ptr }, ptr %l52, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t86, { i64, ptr } %t87)
  br label %bb20
bb20:
  store i64 -3750763034362895579, ptr %l5, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s3
  %t89 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s3, ptr %l3)
  store { i64, ptr } %t89, ptr %l54
  br label %bb21
bb21:
  %t90 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t92 = extractvalue { i64, ptr } %t90, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  store { i64, ptr } %t96, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 0
  store i64 %t100, ptr %l8, !tbaa !24
  br label %bb22
bb22:
  %t102 = load i64, ptr %l7, !tbaa !24
  %t103 = load i64, ptr %l8, !tbaa !24
  %t106 = icmp slt i64 %t102, %t103
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t110 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t110, ptr %l62, !tbaa !27
  %t111 = load i64, ptr %l7, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i8, ptr %t114, i64 %t111
  %t116 = load i8, ptr %t115, !tbaa !32
  %t118 = load i64, ptr %l5, !tbaa !24
  %t121 = zext i8 %t116 to i64
  %t124 = xor i64 %t118, %t121
  %t126 = mul i64 %t124, 1099511628211
  store i64 %t126, ptr %l5, !tbaa !24
  br label %bb26
bb26:
  %t128 = load i64, ptr %l7, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l7, !tbaa !24
  br label %bb22
bb27:
  call void @__olang_scope_close(ptr %s3)
  %t132 = load i64, ptr %l5, !tbaa !24
  %t134 = and i64 %t132, 4611686018427387903
  call void @__olang_scope_close(ptr %s0)
  store i64 %t134, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l6 = alloca ptr
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyGlobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  store ptr %t8, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasHash(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %a0, i32 %a1, i64 0)
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHeld(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eheld(ptr %v0, ptr %a0, i32 %a1)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !tbaa !23
  store i32 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l8 = alloca i32
  %l12 = alloca i64
  %l21 = alloca i1
  %l25 = alloca i1
  %l29 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t5 = load i32, ptr %l2, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t3, i32 %t4, i32 %t5)
  store i32 %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load i32, ptr %l8, !tbaa !23
  store i32 %t10, ptr %l3, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 2
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDepth(ptr %v0, ptr %t13, i32 %t14)
  store i64 %t17, ptr %l12
  br label %bb2
bb2:
  %t18 = load i64, ptr @G_2ecompiler_2fgeneric_2eMaxDepth, !tbaa !24
  %t20 = add i64 %t18, 1
  %t21 = load i64, ptr %l12, !tbaa !24
  %t23 = icmp sgt i64 %t21, %t20
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunbounded(ptr %v0, ptr %t25, i32 %t26)
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t29 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t29, ptr %rv
  br label %ret
bb6:
  %t31 = load i32, ptr %l2, !tbaa !23
  %t33 = icmp ne i32 %t31, 0
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 51
  %t38 = getelementptr %"compiler/generic:Origin", ptr %t37, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t41 = icmp sge i64 %t39, 0
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t43 = load i1, ptr %l21, !tbaa !21
  br i1 %t43, label %bb10, label %bb11
bb10:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 52
  %t47 = load i32, ptr %l3, !tbaa !23
  %t50 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Hf7241cd153db7dbb97afc4b39a688af4(ptr %v0, ptr %t46, i32 %t47)
  store i1 %t50, ptr %l29
  br label %bb12
bb11:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb13
bb12:
  %t51 = load i1, ptr %l29, !tbaa !21
  %t52 = xor i1 %t51, true
  store i1 %t52, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t54 = load i1, ptr %l25, !tbaa !21
  br i1 %t54, label %bb14, label %bb15
bb14:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 52
  %t58 = load i32, ptr %l3, !tbaa !23
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 51
  %t62 = load %"compiler/generic:Origin", ptr %t61
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H52a70901e2e6ceea4e17edd807bbe24b(ptr %v0, ptr %t57, i32 %t58, %"compiler/generic:Origin" %t62)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t66 = load i32, ptr %l3, !tbaa !23
  store i32 %t66, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:instance"
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 44
  %t7 = call %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %v1, ptr %t3, i64 %a1)
  store %"compiler/generic:instance" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:instance", ptr %l5, i32 0, i32 3
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceText(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:instance"
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 44
  %t7 = call %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %v1, ptr %t3, i64 %a1)
  store %"compiler/generic:instance" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:instance", ptr %l5, i32 0, i32 4
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l15 = alloca i32
  %l17 = alloca i1
  %l20 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp eq i64 %t9, 1
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t13, ptr %l10, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i32, ptr %t15, i64 0
  %t17 = load i32, ptr %t16, !tbaa !33
  store i32 %t17, ptr %l11, !tbaa !23
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  %t25 = load i32, ptr %l11, !tbaa !23
  %t26 = load i32, ptr %l15, !tbaa !23
  %t27 = icmp eq i32 %t25, %t26
  store i1 %t27, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l9, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %s0, ptr %t30, i32 %t31)
  store { i64, ptr } %t34, ptr %l20
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb9
bb8:
  %t35 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  %t38 = icmp eq i64 %t36, 0
  store i1 %t38, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load i1, ptr %l17, !tbaa !21
  store i1 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l34 = alloca i32
  %l37 = alloca i1
  %l39 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca { i64, ptr }
  %l48 = alloca i1
  %l53 = alloca ptr
  %l57 = alloca i32
  %l68 = alloca ptr
  %l73 = alloca i1
  %l78 = alloca i1
  %l82 = alloca i32
  %l85 = alloca ptr
  %l89 = alloca i32
  %l94 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l107 = alloca i1
  %l112 = alloca i1
  %l116 = alloca i1
  %l118 = alloca ptr
  %l122 = alloca i32
  %l123 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l141 = alloca i1
  %l143 = alloca ptr
  %l149 = alloca i64
  %l153 = alloca ptr
  %l154 = alloca i32
  %l156 = alloca i64
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %t3, i32 %t4)
  store i64 %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load i64, ptr %l16, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t10 = load i64, ptr @G_2ecompiler_2ftypes_2eLaidOut, !tbaa !24
  %t13 = icmp eq i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr @G_2ecompiler_2ftypes_2eNoLayout, !tbaa !24
  %t20 = icmp eq i64 %t16, %t17
  br i1 %t20, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t23 = load i64, ptr %l2, !tbaa !24
  %t24 = load i64, ptr @G_2ecompiler_2ftypes_2eLayingOut, !tbaa !24
  %t27 = icmp eq i64 %t23, %t24
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eholdsItself(ptr %v0, ptr %t29, i32 %t30)
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb11:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l34
  br label %bb12
bb12:
  %t41 = load i32, ptr %l34, !range !{i32 0, i32 33}
  %t43 = trunc i64 18 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb13, label %bb14
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  store ptr %t48, ptr %l39, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l1, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l43
  br label %bb15
bb14:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb17
bb15:
  %t56 = load ptr, ptr %l39, !tbaa !29
  %t57 = load i32, ptr %l43, !tbaa !23
  %t58 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t56, i32 %t57)
  store { i64, ptr } %t58, ptr %l44
  br label %bb16
bb16:
  %t59 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  %t62 = icmp sgt i64 %t60, 0
  store i1 %t62, ptr %l37, !tbaa !21
  br label %bb17
bb17:
  %t64 = load i1, ptr %l37, !tbaa !21
  store i1 %t64, ptr %l3, !tbaa !21
  %t65 = load i1, ptr %l3, !tbaa !21
  br i1 %t65, label %bb18, label %bb19
bb18:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 50
  %t70 = load i64, ptr %t69, !tbaa !24
  %t71 = load i64, ptr @G_2ecompiler_2fgeneric_2eMaxChain, !tbaa !24
  %t74 = icmp sge i64 %t70, %t71
  store i1 %t74, ptr %l48, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb20
bb20:
  %t76 = load i1, ptr %l48, !tbaa !21
  br i1 %t76, label %bb21, label %bb22
bb21:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l53, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 2
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t80, i32 %t81)
  store i32 %t84, ptr %l57
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t85 = load ptr, ptr %l53, !tbaa !29
  %t86 = load i32, ptr %l57, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunbounded(ptr %v0, ptr %t85, i32 %t86)
  br label %bb24
bb24:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l1, !tbaa !23
  %t91 = load i64, ptr @G_2ecompiler_2ftypes_2eNoLayout, !tbaa !24
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetLayoutState(ptr %v0, ptr %t89, i32 %t90, i64 %t91)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb26:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  %t99 = load i32, ptr %l1, !tbaa !23
  %t100 = load i64, ptr @G_2ecompiler_2ftypes_2eLayingOut, !tbaa !24
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetLayoutState(ptr %v0, ptr %t98, i32 %t99, i64 %t100)
  br label %bb27
bb27:
  %t104 = load i1, ptr %l3, !tbaa !21
  br i1 %t104, label %bb28, label %bb29
bb28:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l68, !tbaa !29
  %t107 = load ptr, ptr %l68, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 50
  %t109 = load i64, ptr %t108, !tbaa !24
  %t111 = add i64 %t109, 1
  %t113 = load ptr, ptr %l68, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 50
  store i64 %t111, ptr %t114, !tbaa !24
  br label %bb30
bb29:
  br label %bb30
bb30:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i32, ptr %l1, !tbaa !23
  %t119 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t115, i32 %t116)
  store i1 %t119, ptr %l73
  br label %bb31
bb31:
  %t120 = load i1, ptr %l73, !tbaa !21
  store i1 %t120, ptr %l4, !tbaa !21
  %t121 = load i1, ptr %l4, !tbaa !21
  br i1 %t121, label %bb32, label %bb33
bb32:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereprReady(ptr %v0, ptr %t123, i32 %t124)
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb35
bb35:
  %t127 = load i1, ptr %l4, !tbaa !21
  br i1 %t127, label %bb36, label %bb37
bb36:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  %t132 = load i32, ptr %l1, !tbaa !23
  %t135 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t131, i32 %t132)
  store i32 %t135, ptr %l82
  br label %bb38
bb37:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb39
bb38:
  %t136 = load i32, ptr %l82, !range !{i32 0, i32 33}
  %t138 = trunc i64 20 to i32
  %t139 = icmp eq i32 %t136, %t138
  store i1 %t139, ptr %l78, !tbaa !21
  br label %bb39
bb39:
  %t141 = load i1, ptr %l78, !tbaa !21
  br i1 %t141, label %bb40, label %bb41
bb40:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l85, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  %t146 = load i32, ptr %l1, !tbaa !23
  %t149 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t145, i32 %t146)
  store i32 %t149, ptr %l89
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t150 = load ptr, ptr %l85, !tbaa !29
  %t151 = load i32, ptr %l89, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereprReady(ptr %v0, ptr %t150, i32 %t151)
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t152 = load i1, ptr %l4, !tbaa !21
  br i1 %t152, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s9
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/generic:Program", ptr %t154, i32 0, i32 2
  %t157 = load i32, ptr %l1, !tbaa !23
  %t160 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %s9, ptr %t156, i32 %t157)
  store { i64, ptr } %t160, ptr %l94
  br label %bb47
bb46:
  br label %bb58
bb47:
  %t161 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  %t163 = extractvalue { i64, ptr } %t161, 1
  %t164 = mul i64 %t162, 4
  %t165 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  store { i64, ptr } %t167, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t169 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t169, 0
  store i64 %t171, ptr %l7, !tbaa !24
  br label %bb48
bb48:
  %t173 = load i64, ptr %l6, !tbaa !24
  %t174 = load i64, ptr %l7, !tbaa !24
  %t177 = icmp slt i64 %t173, %t174
  %t179 = xor i1 %t177, true
  br i1 %t179, label %bb49, label %bb50
bb49:
  br label %bb57
bb50:
  br label %bb51
bb51:
  %t181 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t181, ptr %l102, !tbaa !27
  %t182 = load i64, ptr %l6, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr i32, ptr %t185, i64 %t182
  %t187 = load i32, ptr %t186, !tbaa !33
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t193 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t189, i32 %t187)
  store i1 %t193, ptr %l107
  br label %bb52
bb52:
  %t194 = load i1, ptr %l107, !tbaa !21
  %t195 = xor i1 %t194, true
  br i1 %t195, label %bb53, label %bb54
bb53:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb55
bb54:
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t197 = load i64, ptr %l6, !tbaa !24
  %t199 = add i64 %t197, 1
  store i64 %t199, ptr %l6, !tbaa !24
  br label %bb48
bb57:
  call void @__olang_scope_close(ptr %s9)
  br label %bb58
bb58:
  %t201 = load i1, ptr %l4, !tbaa !21
  br i1 %t201, label %bb59, label %bb60
bb59:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/generic:Program", ptr %t203, i32 0, i32 2
  %t206 = load i32, ptr %l1, !tbaa !23
  %t209 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t205, i32 %t206)
  store i1 %t209, ptr %l116
  br label %bb61
bb60:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb62
bb61:
  %t210 = load i1, ptr %l116, !tbaa !21
  store i1 %t210, ptr %l112, !tbaa !21
  br label %bb62
bb62:
  %t211 = load i1, ptr %l112, !tbaa !21
  br i1 %t211, label %bb63, label %bb64
bb63:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/generic:Program", ptr %t212, i32 0, i32 2
  store ptr %t214, ptr %l118, !tbaa !29
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 2
  %t218 = load i32, ptr %l1, !tbaa !23
  %t221 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t217, i32 %t218)
  store i32 %t221, ptr %l122
  br label %bb65
bb64:
  br label %bb74
bb65:
  %t222 = load ptr, ptr %l118, !tbaa !29
  %t223 = load i32, ptr %l122, !tbaa !23
  %t224 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t222, i32 %t223)
  store { i64, ptr } %t224, ptr %l123
  br label %bb66
bb66:
  %t225 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t225, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t226 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t226, 0
  store i64 %t228, ptr %l11, !tbaa !24
  br label %bb67
bb67:
  %t230 = load i64, ptr %l10, !tbaa !24
  %t231 = load i64, ptr %l11, !tbaa !24
  %t234 = icmp slt i64 %t230, %t231
  %t236 = xor i1 %t234, true
  br i1 %t236, label %bb68, label %bb69
bb68:
  br label %bb73
bb69:
  br label %bb70
bb70:
  %t238 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t238, ptr %l130, !tbaa !27
  %t239 = load i64, ptr %l10, !tbaa !24
  %t241 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr i32, ptr %t242, i64 %t239
  %t244 = load i32, ptr %t243, !tbaa !33
  %t246 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enoteRawType(ptr %v0, ptr %t246, i32 %t244)
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t250 = load i64, ptr %l10, !tbaa !24
  %t252 = add i64 %t250, 1
  store i64 %t252, ptr %l10, !tbaa !24
  br label %bb67
bb73:
  br label %bb74
bb74:
  %t254 = load i1, ptr %l4, !tbaa !21
  br i1 %t254, label %bb75, label %bb76
bb75:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/generic:Program", ptr %t256, i32 0, i32 2
  %t259 = load i32, ptr %l1, !tbaa !23
  %t262 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eComputeLayout(ptr %v0, ptr %t258, i32 %t259)
  store i1 %t262, ptr %l141
  br label %bb77
bb76:
  br label %bb78
bb77:
  %t263 = load i1, ptr %l141, !tbaa !21
  store i1 %t263, ptr %l4, !tbaa !21
  br label %bb78
bb78:
  %t264 = load i1, ptr %l3, !tbaa !21
  br i1 %t264, label %bb79, label %bb80
bb79:
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l143, !tbaa !29
  %t267 = load ptr, ptr %l143, !tbaa !29
  %t268 = getelementptr %"compiler/generic:Program", ptr %t267, i32 0, i32 50
  %t269 = load i64, ptr %t268, !tbaa !24
  %t271 = sub i64 %t269, 1
  %t273 = load ptr, ptr %l143, !tbaa !29
  %t274 = getelementptr %"compiler/generic:Program", ptr %t273, i32 0, i32 50
  store i64 %t271, ptr %t274, !tbaa !24
  br label %bb81
bb80:
  br label %bb81
bb81:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/generic:Program", ptr %t275, i32 0, i32 2
  %t278 = load i32, ptr %l1, !tbaa !23
  %t281 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %t277, i32 %t278)
  store i64 %t281, ptr %l149
  br label %bb82
bb82:
  %t282 = load i64, ptr @G_2ecompiler_2ftypes_2eLayingOut, !tbaa !24
  %t283 = load i64, ptr %l149, !tbaa !24
  %t285 = icmp eq i64 %t283, %t282
  br i1 %t285, label %bb83, label %bb84
bb83:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/generic:Program", ptr %t287, i32 0, i32 2
  store ptr %t289, ptr %l153, !tbaa !29
  %t290 = load i32, ptr %l1, !tbaa !23
  store i32 %t290, ptr %l154, !tbaa !23
  %t291 = load i1, ptr %l4, !tbaa !21
  br i1 %t291, label %bb85, label %bb86
bb84:
  br label %bb89
bb85:
  %t293 = load i64, ptr @G_2ecompiler_2ftypes_2eLaidOut, !tbaa !24
  store i64 %t293, ptr %l156, !tbaa !24
  br label %bb87
bb86:
  %t295 = load i64, ptr @G_2ecompiler_2ftypes_2eNoLayout, !tbaa !24
  store i64 %t295, ptr %l156, !tbaa !24
  br label %bb87
bb87:
  %t297 = load ptr, ptr %l153, !tbaa !29
  %t298 = load i32, ptr %l154, !tbaa !23
  %t299 = load i64, ptr %l156, !tbaa !24
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetLayoutState(ptr %v0, ptr %t297, i32 %t298, i64 %t299)
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t300 = load i1, ptr %l4, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t300, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l7 = alloca i1
  %l12 = alloca i32
  %l16 = alloca i1
  %l20 = alloca i32
  %l28 = alloca i32
  %l30 = alloca i1
  %l32 = alloca ptr
  %l36 = alloca i32
  %l40 = alloca i32
  %l41 = alloca i1
  %l44 = alloca ptr
  %l48 = alloca i32
  %l52 = alloca i32
  %l53 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t5 = load i32, ptr %l2, !tbaa !23
  %t9 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t3, i32 %t4, i32 %t5)
  store i1 %t9, ptr %l7
  br label %bb1
bb1:
  %t10 = load i1, ptr %l7, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l12
  br label %bb5
bb5:
  %t19 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t21 = trunc i64 19 to i32
  %t22 = icmp eq i32 %t19, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb9
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l2, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l20
  br label %bb8
bb8:
  %t33 = load i32, ptr %l20, !range !{i32 0, i32 33}
  %t35 = trunc i64 19 to i32
  %t36 = icmp eq i32 %t33, %t35
  %t38 = xor i1 %t36, true
  store i1 %t38, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l16, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l2, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t44, i32 %t45)
  store i32 %t48, ptr %l28
  br label %bb13
bb13:
  %t49 = load i32, ptr %l28, !tbaa !23
  %t50 = icmp ne i32 %t49, 0
  br i1 %t50, label %bb14, label %bb15
bb14:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  store ptr %t54, ptr %l32, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l1, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l36
  br label %bb16
bb15:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb19
bb16:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l2, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l40
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l32, !tbaa !29
  %t70 = load i32, ptr %l36, !tbaa !23
  %t71 = load i32, ptr %l40, !tbaa !23
  %t72 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t69, i32 %t70, i32 %t71)
  store i1 %t72, ptr %l41
  br label %bb18
bb18:
  %t73 = load i1, ptr %l41, !tbaa !21
  %t74 = xor i1 %t73, true
  store i1 %t74, ptr %l30, !tbaa !21
  br label %bb19
bb19:
  %t76 = load i1, ptr %l30, !tbaa !21
  br i1 %t76, label %bb20, label %bb21
bb20:
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l44, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 2
  %t82 = load i32, ptr %l1, !tbaa !23
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t81, i32 %t82)
  store i32 %t85, ptr %l48
  br label %bb23
bb23:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  %t89 = load i32, ptr %l2, !tbaa !23
  %t92 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t88, i32 %t89)
  store i32 %t92, ptr %l52
  br label %bb24
bb24:
  %t93 = load ptr, ptr %l44, !tbaa !29
  %t94 = load i32, ptr %l48, !tbaa !23
  %t95 = load i32, ptr %l52, !tbaa !23
  %t96 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %t93, i32 %t94, i32 %t95)
  store i1 %t96, ptr %l53
  br label %bb25
bb25:
  %t97 = load i1, ptr %l53, !tbaa !21
  store i1 %t97, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMatches(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3, i64 %a4, i1 %a5) #0 {
entry:
  %l6 = alloca %"compiler/generic:Binding"
  %l9 = alloca %"compiler/generic:Binding"
  %l15 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %a3, i64 %a4)
  store %"compiler/generic:Binding" %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load %"compiler/generic:Binding", ptr %l9
  store %"compiler/generic:Binding" %t6, ptr %l6
  %t16 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %s0, ptr %a0, i32 %a1, i32 %a2, ptr %l6, i1 false, i1 %a5)
  store i32 %t16, ptr %l15
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb3, label %ok.18, !prof !99
ok.18:
  br label %bb2
bb2:
  br label %bb5
bb3:
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeetTyped(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr %l6, !tbaa !23
  store i32 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnVarIndexes(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/generic:fnRow"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %lp4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l20 = alloca %"compiler/generic:fnRow"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca ptr
  %l27 = alloca i64
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca { i64, ptr }
  %l64 = alloca i1
  %l79 = alloca { i64, ptr }
  %l86 = alloca i1
  %l96 = alloca i1
  %l101 = alloca i1
  %l106 = alloca i1
  %l110 = alloca i64
  %l112 = alloca i64
  %l118 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 29
  %t7 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/generic:fnRow" %t7, ptr %l20
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:fnRow", ptr %l20
  store %"compiler/generic:fnRow" %t8, ptr %l2
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l21
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l3
  %t11 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/ast:Func", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l26, !tbaa !29
  %t22 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 0
  %t23 = load i64, ptr %t22, !tbaa !24
  store i64 %t23, ptr %l27, !tbaa !24
  %t24 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/ast:Func", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  br i1 %t30, label %bb5, label %bb6
bb4:
  br label %bb9
bb5:
  call void @__olang_check_failed(ptr @olang_loc_91e581c61227d1c4_deb54d58cf8aa350)
  unreachable
bb6:
  br label %bb7
bb7:
  %t32 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/ast:Func", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t39 = getelementptr %"compiler/ast:Param", ptr %t36, i32 0, i32 2
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load ptr, ptr %l26, !tbaa !29
  %t42 = load i64, ptr %l27, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v0, ptr %s0, ptr %t41, i64 %t42, ptr %t40, ptr %l3, i1 false)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t45 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/ast:Func", ptr %t46, i32 0, i32 9
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = icmp eq ptr %t49, null
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 0
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Func", ptr %t59, i32 0, i32 9
  %t62 = load ptr, ptr %t61, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v0, ptr %s0, ptr %t55, i64 %t57, ptr %t62, ptr %l3, i1 false)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  %t67 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l45
  br label %bb14
bb14:
  %t68 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t68, ptr %lp4
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  %t70 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %t70
  %t71 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/ast:Func", ptr %t72, i32 0, i32 5
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t79 = icmp sgt i64 %t77, 0
  br i1 %t79, label %bb15, label %bb16
bb15:
  %t81 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/ast:Func", ptr %t82, i32 0, i32 5
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  store { i64, ptr } %t85, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t87, 0
  store i64 %t89, ptr %l7, !tbaa !24
  br label %bb17
bb16:
  br label %bb66
bb17:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t92 = load i64, ptr %l7, !tbaa !24
  %t95 = icmp slt i64 %t91, %t92
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb18, label %bb19
bb18:
  br label %bb27
bb19:
  br label %bb20
bb20:
  %t99 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t99, ptr %l58, !tbaa !27
  %t100 = load i64, ptr %l6, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr ptr, ptr %t103, i64 %t100
  %t105 = load ptr, ptr %t104, !tbaa !39
  store ptr %t105, ptr %l8, !tbaa !29
  %t107 = load ptr, ptr %l8, !tbaa !29
  %t109 = getelementptr %"compiler/ast:TypeParam", ptr %t107, i32 0, i32 1
  %t110 = load i32, ptr %t109, !tbaa !23
  %t113 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l3, i32 %t110)
  store i1 %t113, ptr %l64
  br label %bb21
bb21:
  %t114 = load i1, ptr %l64, !tbaa !21
  %t115 = xor i1 %t114, true
  br i1 %t115, label %bb22, label %bb23
bb22:
  %t117 = load ptr, ptr %l8, !tbaa !29
  %t119 = getelementptr %"compiler/ast:TypeParam", ptr %t117, i32 0, i32 1
  %t120 = load i32, ptr %t119, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l3, i32 %t120)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t123 = load i64, ptr %l6, !tbaa !24
  %t125 = add i64 %t123, 1
  store i64 %t125, ptr %l6, !tbaa !24
  br label %bb17
bb27:
  %t127 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/ast:Func", ptr %t128, i32 0, i32 5
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  store { i64, ptr } %t131, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t133 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 0
  store i64 %t135, ptr %l11, !tbaa !24
  br label %bb28
bb28:
  %t137 = load i64, ptr %l10, !tbaa !24
  %t138 = load i64, ptr %l11, !tbaa !24
  %t141 = icmp slt i64 %t137, %t138
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb29, label %bb30
bb29:
  br label %bb65
bb30:
  br label %bb31
bb31:
  %t145 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t145, ptr %l79, !tbaa !27
  %t146 = load i64, ptr %l10, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr ptr, ptr %t149, i64 %t146
  %t151 = load ptr, ptr %t150, !tbaa !39
  store ptr %t151, ptr %l12, !tbaa !29
  %t153 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = getelementptr %"compiler/ast:Func", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = icmp eq ptr %t157, null
  %t161 = xor i1 %t159, true
  br i1 %t161, label %bb32, label %bb33
bb32:
  %t163 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t166 = getelementptr %"compiler/ast:Func", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t169 = icmp eq ptr %t167, null
  br i1 %t169, label %bb34, label %bb35
bb33:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb38
bb34:
  call void @__olang_check_failed(ptr @olang_loc_632aa6436eca4593_afccf639e057e8af)
  unreachable
bb35:
  br label %bb36
bb36:
  %t171 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = getelementptr %"compiler/ast:Func", ptr %t172, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t178 = getelementptr %"compiler/ast:Param", ptr %t175, i32 0, i32 2
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t180 = load ptr, ptr %l12, !tbaa !29
  %t182 = getelementptr %"compiler/ast:TypeParam", ptr %t180, i32 0, i32 1
  %t183 = load i32, ptr %t182, !tbaa !23
  %t186 = call i1 @compiler_2fgeneric_2ementionsName(ptr %v0, ptr %t179, i32 %t183)
  store i1 %t186, ptr %l96
  br label %bb37
bb37:
  %t187 = load i1, ptr %l96, !tbaa !21
  store i1 %t187, ptr %l86, !tbaa !21
  br label %bb38
bb38:
  %t188 = load i1, ptr %l86, !tbaa !21
  br i1 %t188, label %bb39, label %bb40
bb39:
  br label %bb64
bb40:
  br label %bb41
bb41:
  %t189 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/ast:Func", ptr %t190, i32 0, i32 9
  %t193 = load ptr, ptr %t192, !tbaa !29
  %t195 = icmp eq ptr %t193, null
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb42, label %bb43
bb42:
  %t199 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t202 = getelementptr %"compiler/ast:Func", ptr %t200, i32 0, i32 9
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t204 = load ptr, ptr %l12, !tbaa !29
  %t206 = getelementptr %"compiler/ast:TypeParam", ptr %t204, i32 0, i32 1
  %t207 = load i32, ptr %t206, !tbaa !23
  %t210 = call i1 @compiler_2fgeneric_2ementionsName(ptr %v0, ptr %t203, i32 %t207)
  store i1 %t210, ptr %l106
  br label %bb44
bb43:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb45
bb44:
  %t211 = load i1, ptr %l106, !tbaa !21
  store i1 %t211, ptr %l101, !tbaa !21
  br label %bb45
bb45:
  %t212 = load i1, ptr %l101, !tbaa !21
  br i1 %t212, label %bb46, label %bb47
bb46:
  br label %bb64
bb47:
  br label %bb48
bb48:
  %t213 = load ptr, ptr %l12, !tbaa !29
  %t215 = getelementptr %"compiler/ast:TypeParam", ptr %t213, i32 0, i32 4
  %t216 = load i1, ptr %t215, !tbaa !21
  br i1 %t216, label %bb49, label %bb50
bb49:
  br label %bb64
bb50:
  br label %bb51
bb51:
  store ptr %l3, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb52
bb52:
  %t219 = load i64, ptr %l14, !tbaa !24
  store i64 %t219, ptr %l110, !tbaa !24
  %t220 = load ptr, ptr %l13, !tbaa !29
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t220)
  store i64 %t222, ptr %l112
  br label %bb53
bb53:
  %t223 = load i64, ptr %l110, !tbaa !24
  %t224 = load i64, ptr %l112, !tbaa !24
  %t225 = icmp slt i64 %t223, %t224
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb54, label %bb55
bb54:
  br label %bb63
bb55:
  br label %bb56
bb56:
  %t229 = load i64, ptr %l14, !tbaa !24
  store i64 %t229, ptr %l15, !tbaa !24
  %t231 = load ptr, ptr %l13, !tbaa !29
  %t232 = load i64, ptr %l14, !tbaa !24
  %t235 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t231, i64 %t232)
  store i32 %t235, ptr %l118
  br label %bb57
bb57:
  %t236 = load i32, ptr %l118, !tbaa !23
  %t238 = load ptr, ptr %l12, !tbaa !29
  %t240 = getelementptr %"compiler/ast:TypeParam", ptr %t238, i32 0, i32 1
  %t241 = load i32, ptr %t240, !tbaa !23
  %t244 = icmp eq i32 %t236, %t241
  br i1 %t244, label %bb58, label %bb59
bb58:
  %t246 = load ptr, ptr %lp4
  %t247 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t246, i64 %t247)
  br label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t250 = load i64, ptr %l14, !tbaa !24
  %t252 = add i64 %t250, 1
  store i64 %t252, ptr %l14, !tbaa !24
  br label %bb52
bb63:
  br label %bb64
bb64:
  %t254 = load i64, ptr %l10, !tbaa !24
  %t256 = add i64 %t254, 1
  store i64 %t256, ptr %l10, !tbaa !24
  br label %bb28
bb65:
  br label %bb66
bb66:
  %t258 = load ptr, ptr %lp4
  %t259 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t258
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t259, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca %"compiler/generic:fnRow"
  %l7 = alloca i1
  %l12 = alloca i32
  %l13 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 29
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store %"compiler/generic:fnRow" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:fnRow", ptr %l5, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t9)
  store i1 %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load i1, ptr %l7, !tbaa !21
  %t13 = xor i1 %t12, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t15, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t17, i64 %t18)
  store i32 %t21, ptr %l12
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 43
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %t24, i64 %t25)
  %t29 = extractvalue { i32, i32 } %t28, 1
  %t30 = extractvalue { i32, i32 } %t28, 0
  store i32 %t30, ptr %l18
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb8, label %ok.32, !prof !99
ok.32:
  store i32 %t29, ptr %l17
  br label %bb7
bb7:
  %t33 = load i32, ptr %l17, !tbaa !23
  store i32 %t33, ptr %l13, !tbaa !23
  br label %bb10
bb8:
  br label %bb9
bb9:
  %t34 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t34, ptr %l13, !tbaa !23
  br label %bb10
bb10:
  %t36 = load i32, ptr %l13, !tbaa !23
  store i32 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeFn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i64
  %l18 = alloca i32
  %l19 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eensureModules(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 24
  %t9 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t5, { i64, ptr } %a1)
  %t10 = extractvalue { i32, i64 } %t9, 1
  %t11 = extractvalue { i32, i64 } %t9, 0
  store i32 %t11, ptr %l10
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb3, label %ok.13, !prof !99
ok.13:
  store i64 %t10, ptr %l9
  br label %bb2
bb2:
  %t14 = load i64, ptr %l9, !tbaa !24
  store i64 %t14, ptr %l5, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %rv
  br label %ret
bb5:
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l12, !tbaa !29
  store i64 %t16, ptr %l13, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/load:Loader", ptr %t22, i32 0, i32 3
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t29 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v2, ptr %t25, { i64, ptr } %a2)
  store i32 %t29, ptr %l18
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l12, !tbaa !29
  %t31 = load i64, ptr %l13, !tbaa !24
  %t32 = load i32, ptr %l18, !tbaa !23
  %t33 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t30, i64 %t31, i32 %t32)
  store i64 %t33, ptr %l19
  br label %bb7
bb7:
  %t34 = load i64, ptr %l19, !tbaa !24
  store i64 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedAt(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca ptr
  %l12 = alloca i1
  %l18 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorDecl(ptr %v0, ptr %v0, ptr %a0, i32 %a1)
  store ptr %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l6, !tbaa !29
  store ptr %t6, ptr %l2, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 0, i32 0)
  store %"compiler/source:Span" %t11, ptr %l9
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t12 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t12, ptr %rv
  br label %ret
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  store ptr %t13, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t17 = load ptr, ptr %l11, !tbaa !29
  %t18 = load i64, ptr %t17, !range !{i64 0, i64 11}
  %t20 = icmp eq i64 %t18, 5
  store i1 %t20, ptr %l12, !tbaa !21
  br label %bb7
bb7:
  %t21 = load i1, ptr %l12, !tbaa !21
  br i1 %t21, label %bb8, label %bb9
bb8:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr { i64, [8 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t24, i32 0, i32 0
  %t26 = load %"compiler/source:Span", ptr %t25
  store %"compiler/source:Span" %t26, ptr %l3
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t28 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t28, ptr %l10
  br label %bb17
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t30 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t30, ptr %l18
  br label %bb15
bb15:
  %t31 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t31, ptr %l10
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_7fa838ee20be17d9_9f8073ee4b7324d5)
  unreachable
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeOrigin(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"compiler/generic:Origin"
  %l6 = alloca %"compiler/generic:Origin"
  %l7 = alloca i32
  %rv = alloca %"compiler/generic:Origin"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 52
  %t7 = call { i32, %"compiler/generic:Origin" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Hb8bca524fd2b8cbf323e30d364740da1(ptr %v0, ptr %t3, i32 %a1)
  %t8 = extractvalue { i32, %"compiler/generic:Origin" } %t7, 1
  %t9 = extractvalue { i32, %"compiler/generic:Origin" } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store %"compiler/generic:Origin" %t8, ptr %l6
  br label %bb1
bb1:
  %t12 = load %"compiler/generic:Origin", ptr %l6
  store %"compiler/generic:Origin" %t12, ptr %l2
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t13 = load %"compiler/generic:Origin", ptr @G_2ecompiler_2fgeneric_2eNoOrigin
  store %"compiler/generic:Origin" %t13, ptr %l2
  br label %bb4
bb4:
  %t15 = load %"compiler/generic:Origin", ptr %l2
  store %"compiler/generic:Origin" %t15, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Origin", ptr %rv
  ret %"compiler/generic:Origin" %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i32
  %l7 = alloca i32
  %l11 = alloca i1
  %l18 = alloca i32
  %l21 = alloca i1
  %l25 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l34 = alloca i64
  %l38 = alloca i32
  %l45 = alloca i32
  %l48 = alloca i1
  %l49 = alloca i32
  %l51 = alloca i32
  %l53 = alloca i1
  %l55 = alloca i1
  %l59 = alloca i32
  %l63 = alloca i32
  %l65 = alloca i1
  %l68 = alloca i1
  %l69 = alloca i1
  %l71 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca i32
  %l79 = alloca ptr
  %l80 = alloca i32
  %l84 = alloca i32
  %l88 = alloca i32
  %l90 = alloca i32
  %l92 = alloca i32
  %l94 = alloca i1
  %l103 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i1 %a4, ptr %l4
  store i1 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  store i1 %t11, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l11, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i32 0, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %l1, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l18
  br label %bb7
bb7:
  %t21 = load i32, ptr %l18, !range !{i32 0, i32 33}
  store i32 %t21, ptr %l6
  %t22 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t24 = trunc i64 25 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t29, i32 %t30)
  store i64 %t33, ptr %l25
  br label %bb10
bb9:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb10:
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Binding", ptr %t34, i32 0, i32 0
  %t37 = load i64, ptr %t36, !tbaa !24
  %t38 = load i64, ptr %l25, !tbaa !24
  %t40 = icmp eq i64 %t38, %t37
  store i1 %t40, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l21, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l29, !tbaa !29
  %t44 = load ptr, ptr %l3, !tbaa !29
  store ptr %t44, ptr %l30, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t47, i32 %t48)
  store i64 %t51, ptr %l34
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t52 = load i32, ptr %l2, !tbaa !23
  %t53 = load i1, ptr %l4, !tbaa !21
  %t54 = load i1, ptr %l5, !tbaa !21
  %t55 = load ptr, ptr %l29, !tbaa !29
  %t56 = load ptr, ptr %l30, !tbaa !29
  %t57 = load i64, ptr %l34, !tbaa !24
  %t61 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebind(ptr %v0, ptr %v1, ptr %t55, ptr %t56, i64 %t57, i32 %t52, i1 %t53, i1 %t54)
  store i32 %t61, ptr %l38
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb16, label %ok.63, !prof !99
ok.63:
  br label %bb15
bb15:
  br label %bb17
bb16:
  %t64 = load i32, ptr %l38, !tbaa !23
  %t65 = lshr i32 %t64, 16
  %t66 = and i32 %t64, 65535
  %t67 = icmp eq i32 %t65, 1
  %t68 = select i1 %t67, i32 1, i32 0
  %t69 = icmp eq i32 %t64, 0
  %t70 = shl i32 %t68, 16
  %t71 = or i32 %t70, %t66
  %t72 = select i1 %t69, i32 0, i32 %t71
  store i32 %t72, ptr %rv
  br label %ret
bb17:
  store i32 0, ptr %rv
  br label %ret
bb18:
  %t74 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t76 = trunc i64 27 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb19, label %bb20
bb19:
  store i32 0, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 2
  %t82 = load i32, ptr %l2, !tbaa !23
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t81, i32 %t82)
  store i32 %t85, ptr %l45
  br label %bb22
bb22:
  %t86 = load i32, ptr %l45, !range !{i32 0, i32 33}
  store i32 %t86, ptr %l7
  %t87 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t89 = trunc i64 18 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb23, label %bb24
bb23:
  %t92 = load i32, ptr %l6, !range !{i32 0, i32 33}
  store i32 %t92, ptr %l49
  %t93 = load i32, ptr %l7, !range !{i32 0, i32 33}
  store i32 %t93, ptr %l51
  %t96 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftypes_3aKind(ptr %l49, ptr %l51)
  store i1 %t96, ptr %l53
  br label %bb25
bb24:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb31
bb25:
  %t97 = load i1, ptr %l53, !tbaa !21
  %t98 = xor i1 %t97, true
  br i1 %t98, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb30
bb27:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l1, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t106, ptr %l59
  br label %bb28
bb28:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  %t110 = load i32, ptr %l2, !tbaa !23
  %t113 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t109, i32 %t110)
  store i32 %t113, ptr %l63
  br label %bb29
bb29:
  %t114 = load i32, ptr %l59, !tbaa !23
  %t115 = load i32, ptr %l63, !tbaa !23
  %t116 = icmp ne i32 %t114, %t115
  store i1 %t116, ptr %l55, !tbaa !21
  br label %bb30
bb30:
  %t118 = load i1, ptr %l55, !tbaa !21
  store i1 %t118, ptr %l48, !tbaa !21
  br label %bb31
bb31:
  %t119 = load i1, ptr %l48, !tbaa !21
  br i1 %t119, label %bb32, label %bb33
bb32:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i32, ptr %l2, !tbaa !23
  %t124 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t120, i32 %t121)
  store i1 %t124, ptr %l68
  br label %bb34
bb33:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb35
bb34:
  %t125 = load i1, ptr %l68, !tbaa !21
  store i1 %t125, ptr %l65, !tbaa !21
  br label %bb35
bb35:
  %t126 = load i1, ptr %l65, !tbaa !21
  br i1 %t126, label %bb36, label %bb37
bb36:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 2
  store ptr %t129, ptr %l71, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  %t133 = load i32, ptr %l2, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t136, ptr %l75
  br label %bb38
bb37:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb40
bb38:
  %t137 = load ptr, ptr %l71, !tbaa !29
  %t138 = load i32, ptr %l75, !tbaa !23
  %t139 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t137, i32 %t138)
  store i32 %t139, ptr %l76
  br label %bb39
bb39:
  %t140 = load i32, ptr %l76, !range !{i32 0, i32 6}
  %t142 = trunc i64 4 to i32
  %t143 = icmp eq i32 %t140, %t142
  store i1 %t143, ptr %l69, !tbaa !21
  br label %bb40
bb40:
  %t145 = load i1, ptr %l69, !tbaa !21
  br i1 %t145, label %bb41, label %bb42
bb41:
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l79, !tbaa !29
  %t147 = load i32, ptr %l1, !tbaa !23
  store i32 %t147, ptr %l80, !tbaa !23
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 2
  %t151 = load i32, ptr %l2, !tbaa !23
  %t154 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t150, i32 %t151)
  store i32 %t154, ptr %l84
  br label %bb43
bb42:
  br label %bb47
bb43:
  %t155 = load ptr, ptr %l3, !tbaa !29
  %t156 = load i1, ptr %l4, !tbaa !21
  %t157 = load i1, ptr %l5, !tbaa !21
  %t158 = load ptr, ptr %l79, !tbaa !29
  %t159 = load i32, ptr %l80, !tbaa !23
  %t160 = load i32, ptr %l84, !tbaa !23
  %t164 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %t158, i32 %t159, i32 %t160, ptr %t155, i1 %t156, i1 %t157)
  store i32 %t164, ptr %l88
  %t165 = icmp ne i32 %t164, 0
  br i1 %t165, label %bb45, label %ok.166, !prof !99
ok.166:
  br label %bb44
bb44:
  br label %bb46
bb45:
  %t167 = load i32, ptr %l88, !tbaa !23
  %t168 = lshr i32 %t167, 16
  %t169 = and i32 %t167, 65535
  %t170 = icmp eq i32 %t168, 1
  %t171 = select i1 %t170, i32 1, i32 0
  %t172 = icmp eq i32 %t167, 0
  %t173 = shl i32 %t171, 16
  %t174 = or i32 %t173, %t169
  %t175 = select i1 %t172, i32 0, i32 %t174
  store i32 %t175, ptr %rv
  br label %ret
bb46:
  store i32 0, ptr %rv
  br label %ret
bb47:
  %t177 = load i32, ptr %l6, !range !{i32 0, i32 33}
  store i32 %t177, ptr %l90
  %t178 = load i32, ptr %l7, !range !{i32 0, i32 33}
  store i32 %t178, ptr %l92
  %t181 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftypes_3aKind(ptr %l90, ptr %l92)
  store i1 %t181, ptr %l94
  br label %bb48
bb48:
  %t182 = load i1, ptr %l94, !tbaa !21
  %t183 = xor i1 %t182, true
  br i1 %t183, label %bb49, label %bb50
bb49:
  store i32 65536, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t188 = load i32, ptr %l1, !tbaa !23
  %t189 = load i32, ptr %l2, !tbaa !23
  %t190 = load ptr, ptr %l3, !tbaa !29
  %t191 = load i1, ptr %l5, !tbaa !21
  %t198 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyKind(ptr %v0, ptr %v1, ptr %t186, i32 %t187, i32 %t188, i32 %t189, ptr %t190, i1 %t191)
  store i32 %t198, ptr %l103
  %t199 = icmp ne i32 %t198, 0
  br i1 %t199, label %bb53, label %ok.200, !prof !99
ok.200:
  br label %bb52
bb52:
  br label %bb54
bb53:
  %t201 = load i32, ptr %l103, !tbaa !23
  %t202 = lshr i32 %t201, 16
  %t203 = and i32 %t201, 65535
  %t204 = icmp eq i32 %t202, 1
  %t205 = select i1 %t204, i32 1, i32 0
  %t206 = icmp eq i32 %t201, 0
  %t207 = shl i32 %t205, 16
  %t208 = or i32 %t207, %t203
  %t209 = select i1 %t206, i32 0, i32 %t208
  store i32 %t209, ptr %rv
  br label %ret
bb54:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyBound(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l8 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t9 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyBound(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i64 0)
  store i64 %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load i64, ptr %l8, !tbaa !24
  store i64 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyErrors(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l8 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t9 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyErrs(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  br label %bb1
bb1:
  br label %bb3
bb2:
  %t12 = load i32, ptr %l8, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  store i32 %t20, ptr %rv
  br label %ret
bb3:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2earrayMade(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i32
  %l14 = alloca i1
  %l18 = alloca i32
  %l21 = alloca i1
  %l25 = alloca i32
  %l30 = alloca { i64, ptr }
  %l33 = alloca i32
  %l37 = alloca i32
  %l40 = alloca i1
  %l44 = alloca i32
  %l46 = alloca i1
  %l50 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i32
  %l57 = alloca { i64, ptr }
  %l60 = alloca i32
  %l61 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t3, i32 %a3)
  store i32 %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load i32, ptr %l10, !tbaa !23
  store i32 %t8, ptr %l5, !tbaa !23
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t13 = icmp eq i64 %t11, 2
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l5, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l18
  br label %bb4
bb3:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb5
bb4:
  %t22 = load i32, ptr %l18, !range !{i32 0, i32 33}
  %t24 = trunc i64 19 to i32
  %t25 = icmp eq i32 %t22, %t24
  store i1 %t25, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l14, !tbaa !21
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %l5, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l25
  br label %bb8
bb7:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb9
bb8:
  %t35 = load i32, ptr %l25, !tbaa !23
  %t36 = icmp eq i32 %t35, 0
  store i1 %t36, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t42, ptr %l30, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr ptr, ptr %t44, i64 1
  %t46 = load ptr, ptr %t45, !tbaa !39
  %t52 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t39, ptr %t40, ptr %a2, ptr %t46)
  store i32 %t52, ptr %l33
  br label %bb12
bb11:
  br label %bb25
bb12:
  %t53 = load i32, ptr %l33, !tbaa !23
  store i32 %t53, ptr %l6, !tbaa !23
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = load i32, ptr %l6, !tbaa !23
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t56, i32 %t57)
  store i32 %t60, ptr %l37
  br label %bb13
bb13:
  %t61 = load i32, ptr %l37, !range !{i32 0, i32 33}
  %t63 = trunc i64 19 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb14, label %bb15
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l6, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l44
  br label %bb16
bb15:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb17
bb16:
  %t73 = load i32, ptr %l44, !tbaa !23
  %t74 = icmp ne i32 %t73, 0
  store i1 %t74, ptr %l40, !tbaa !21
  br label %bb17
bb17:
  %t76 = load i1, ptr %l40, !tbaa !21
  br i1 %t76, label %bb18, label %bb19
bb18:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l6, !tbaa !23
  %t79 = load i32, ptr %l5, !tbaa !23
  %t83 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %t77, i32 %t78, i32 %t79)
  store i1 %t83, ptr %l50
  br label %bb20
bb19:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb21
bb20:
  %t84 = load i1, ptr %l50, !tbaa !21
  store i1 %t84, ptr %l46, !tbaa !21
  br label %bb21
bb21:
  %t85 = load i1, ptr %l46, !tbaa !21
  br i1 %t85, label %bb22, label %bb23
bb22:
  %t86 = load i32, ptr %l6, !tbaa !23
  store i32 %t86, ptr %l5, !tbaa !23
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  store ptr %t90, ptr %l53, !tbaa !29
  %t91 = load i32, ptr %l5, !tbaa !23
  store i32 %t91, ptr %l54, !tbaa !23
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t94 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t94, ptr %l57, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr ptr, ptr %t96, i64 0
  %t98 = load ptr, ptr %t97, !tbaa !39
  %t103 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldLength(ptr %v0, ptr %v1, ptr %v3, ptr %t92, ptr %t93, ptr %t98)
  store i32 %t103, ptr %l60
  br label %bb26
bb26:
  %t104 = load ptr, ptr %l53, !tbaa !29
  %t105 = load i32, ptr %l54, !tbaa !23
  %t106 = load i32, ptr %l60, !tbaa !23
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t104, i32 %t105, i32 %t106)
  store i32 %t107, ptr %l61
  br label %bb27
bb27:
  %t108 = load i32, ptr %l61, !tbaa !23
  store i32 %t108, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebind(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i32 %a3, i1 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i1
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i32
  %l19 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l28 = alloca i1
  %l32 = alloca i32
  %l36 = alloca i32
  %l41 = alloca i32
  %l45 = alloca i32
  %l48 = alloca i32
  %l53 = alloca i32
  %l57 = alloca i1
  %l61 = alloca i32
  %l64 = alloca i1
  %l67 = alloca i1
  %l68 = alloca i1
  %l70 = alloca ptr
  %l74 = alloca i32
  %l75 = alloca i32
  %l78 = alloca i1
  %l82 = alloca i1
  %l87 = alloca i32
  %l89 = alloca { i64, ptr }
  %l95 = alloca i1
  %l97 = alloca { i64, ptr }
  %l100 = alloca i1
  %l104 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l118 = alloca i1
  %l123 = alloca i1
  %l126 = alloca { i64, ptr }
  %l129 = alloca i1
  %l133 = alloca i1
  %l134 = alloca i1
  %l138 = alloca i1
  %l139 = alloca i1
  %l143 = alloca i1
  %l145 = alloca { i64, ptr }
  %l151 = alloca i32
  %l154 = alloca i1
  %l158 = alloca i32
  %l162 = alloca i1
  %l164 = alloca ptr
  %l168 = alloca i32
  %l169 = alloca i32
  %l175 = alloca i32
  %l178 = alloca i32
  %l180 = alloca ptr
  %l184 = alloca i32
  %l185 = alloca i32
  %l190 = alloca i32
  %l193 = alloca i1
  %l197 = alloca i32
  %l200 = alloca i1
  %l202 = alloca ptr
  %l206 = alloca i32
  %l210 = alloca i32
  %l211 = alloca i1
  %l212 = alloca i1
  %l214 = alloca { i64, ptr }
  %l221 = alloca i32
  %l223 = alloca i1
  %l227 = alloca i32
  %l231 = alloca i32
  %l234 = alloca { i64, ptr }
  %l235 = alloca i64
  %l237 = alloca ptr
  %l241 = alloca i32
  %l242 = alloca i32
  %l244 = alloca ptr
  %l247 = alloca i32
  %l248 = alloca i1
  %l249 = alloca i1
  %l251 = alloca ptr
  %l254 = alloca i32
  %l255 = alloca i1
  %l259 = alloca i1
  %l263 = alloca i1
  %l264 = alloca i1
  %l266 = alloca { i64, ptr }
  %l271 = alloca { i64, ptr }
  %l278 = alloca i32
  %l281 = alloca i1
  %l285 = alloca i32
  %l288 = alloca i1
  %l292 = alloca i32
  %l296 = alloca i32
  %l301 = alloca i64
  %l305 = alloca i64
  %l307 = alloca { i64, ptr }
  %l312 = alloca { i64, ptr }
  %l313 = alloca i64
  %l315 = alloca ptr
  %l319 = alloca i32
  %l331 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l3, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t10 = trunc i64 30 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Binding", ptr %t13, i32 0, i32 2
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  store { i64, ptr } %t16, ptr %l19, !tbaa !27
  %t17 = load i64, ptr %l2, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i32, ptr %t20, i64 %t17
  %t22 = load i32, ptr %t21, !tbaa !33
  store i32 %t22, ptr %l6, !tbaa !23
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Binding", ptr %t24, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l23, !tbaa !27
  %t28 = load i64, ptr %l2, !tbaa !24
  store i64 %t28, ptr %l24, !tbaa !24
  %t29 = load i32, ptr %l6, !tbaa !23
  %t30 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t33 = icmp eq i32 %t29, %t30
  br i1 %t33, label %bb4, label %bb5
bb3:
  br label %bb12
bb4:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb7
bb5:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l6, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l32
  br label %bb6
bb6:
  %t42 = load i32, ptr %l32, !range !{i32 0, i32 33}
  %t44 = trunc i64 30 to i32
  %t45 = icmp eq i32 %t42, %t44
  %t47 = xor i1 %t45, true
  store i1 %t47, ptr %l28, !tbaa !21
  br label %bb7
bb7:
  %t49 = load i1, ptr %l28, !tbaa !21
  br i1 %t49, label %bb8, label %bb9
bb8:
  %t50 = load i32, ptr %l3, !tbaa !23
  store i32 %t50, ptr %l36, !tbaa !23
  br label %bb11
bb9:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i32, ptr %l6, !tbaa !23
  %t54 = load i32, ptr %l3, !tbaa !23
  %t58 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetUnion(ptr %v0, ptr %t52, i32 %t53, i32 %t54)
  store i32 %t58, ptr %l41
  br label %bb10
bb10:
  %t59 = load i32, ptr %l41, !tbaa !23
  store i32 %t59, ptr %l36, !tbaa !23
  br label %bb11
bb11:
  %t60 = load i32, ptr %l36, !tbaa !23
  %t61 = load i64, ptr %l24, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i32, ptr %t63, i64 %t61
  store i32 %t60, ptr %t64, !tbaa !33
  store i32 0, ptr %rv
  br label %ret
bb12:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l3, !tbaa !23
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t71, ptr %l45
  br label %bb13
bb13:
  %t72 = load i32, ptr %l45, !range !{i32 0, i32 33}
  %t74 = trunc i64 21 to i32
  %t75 = icmp eq i32 %t72, %t74
  br i1 %t75, label %bb14, label %bb15
bb14:
  %t77 = load i32, ptr %l3, !tbaa !23
  store i32 %t77, ptr %l48, !tbaa !23
  br label %bb17
bb15:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 2
  %t82 = load i32, ptr %l3, !tbaa !23
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t81, i32 %t82)
  store i32 %t85, ptr %l53
  br label %bb16
bb16:
  %t86 = load i32, ptr %l53, !tbaa !23
  store i32 %t86, ptr %l48, !tbaa !23
  br label %bb17
bb17:
  %t87 = load i32, ptr %l48, !tbaa !23
  store i32 %t87, ptr %l7, !tbaa !23
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 11
  %t91 = load i64, ptr %t90, !tbaa !24
  %t93 = icmp eq i64 %t91, 0
  br i1 %t93, label %bb18, label %bb19
bb18:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %l7, !tbaa !23
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t97, i32 %t98)
  store i32 %t101, ptr %l61
  br label %bb20
bb19:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb21
bb20:
  %t102 = load i32, ptr %l61, !range !{i32 0, i32 33}
  %t104 = trunc i64 18 to i32
  %t105 = icmp eq i32 %t102, %t104
  store i1 %t105, ptr %l57, !tbaa !21
  br label %bb21
bb21:
  %t107 = load i1, ptr %l57, !tbaa !21
  br i1 %t107, label %bb22, label %bb23
bb22:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i32, ptr %l7, !tbaa !23
  %t112 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t108, i32 %t109)
  store i1 %t112, ptr %l67
  br label %bb24
bb23:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb25
bb24:
  %t113 = load i1, ptr %l67, !tbaa !21
  store i1 %t113, ptr %l64, !tbaa !21
  br label %bb25
bb25:
  %t114 = load i1, ptr %l64, !tbaa !21
  br i1 %t114, label %bb26, label %bb27
bb26:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/generic:Program", ptr %t115, i32 0, i32 2
  store ptr %t117, ptr %l70, !tbaa !29
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 2
  %t121 = load i32, ptr %l7, !tbaa !23
  %t124 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t124, ptr %l74
  br label %bb28
bb27:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb30
bb28:
  %t125 = load ptr, ptr %l70, !tbaa !29
  %t126 = load i32, ptr %l74, !tbaa !23
  %t127 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t125, i32 %t126)
  store i32 %t127, ptr %l75
  br label %bb29
bb29:
  %t128 = load i32, ptr %l75, !range !{i32 0, i32 6}
  %t130 = trunc i64 0 to i32
  %t131 = icmp eq i32 %t128, %t130
  store i1 %t131, ptr %l68, !tbaa !21
  br label %bb30
bb30:
  %t133 = load i1, ptr %l68, !tbaa !21
  br i1 %t133, label %bb31, label %bb32
bb31:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/generic:Program", ptr %t134, i32 0, i32 2
  %t137 = load i32, ptr %l7, !tbaa !23
  %t140 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t136, i32 %t137)
  store i1 %t140, ptr %l82
  br label %bb33
bb32:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb34
bb33:
  %t141 = load i1, ptr %l82, !tbaa !21
  store i1 %t141, ptr %l78, !tbaa !21
  br label %bb34
bb34:
  %t142 = load i1, ptr %l78, !tbaa !21
  br i1 %t142, label %bb35, label %bb36
bb35:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  %t146 = load i32, ptr %l7, !tbaa !23
  %t147 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t151 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t145, i32 %t146, i64 %t147)
  store i32 %t151, ptr %l87
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t152 = load i32, ptr %l87, !tbaa !23
  store i32 %t152, ptr %l7, !tbaa !23
  br label %bb38
bb38:
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Binding", ptr %t153, i32 0, i32 2
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  store { i64, ptr } %t156, ptr %l89, !tbaa !27
  %t157 = load i64, ptr %l2, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i32, ptr %t160, i64 %t157
  %t162 = load i32, ptr %t161, !tbaa !33
  store i32 %t162, ptr %l8, !tbaa !23
  %t164 = load i32, ptr %l8, !tbaa !23
  %t165 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t168 = icmp eq i32 %t164, %t165
  br i1 %t168, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l95, !tbaa !21
  br label %bb44
bb40:
  %t170 = load ptr, ptr %l1, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Binding", ptr %t170, i32 0, i32 3
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  store { i64, ptr } %t173, ptr %l97, !tbaa !27
  %t174 = load i64, ptr %l2, !tbaa !24
  %t176 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr i1, ptr %t177, i64 %t174
  %t179 = load i1, ptr %t178, !tbaa !31
  br i1 %t179, label %bb41, label %bb42
bb41:
  %t181 = load i1, ptr %l4, !tbaa !21
  %t183 = xor i1 %t181, true
  store i1 %t183, ptr %l100, !tbaa !21
  br label %bb43
bb42:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb43
bb43:
  %t185 = load i1, ptr %l100, !tbaa !21
  store i1 %t185, ptr %l95, !tbaa !21
  br label %bb44
bb44:
  %t186 = load i1, ptr %l95, !tbaa !21
  br i1 %t186, label %bb45, label %bb46
bb45:
  %t187 = load ptr, ptr %l1, !tbaa !29
  %t189 = getelementptr %"compiler/generic:Binding", ptr %t187, i32 0, i32 2
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  store { i64, ptr } %t190, ptr %l104, !tbaa !27
  %t191 = load i64, ptr %l2, !tbaa !24
  %t192 = load i32, ptr %l7, !tbaa !23
  %t195 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr i32, ptr %t196, i64 %t191
  store i32 %t192, ptr %t197, !tbaa !33
  %t198 = load ptr, ptr %l1, !tbaa !29
  %t200 = getelementptr %"compiler/generic:Binding", ptr %t198, i32 0, i32 3
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  store { i64, ptr } %t201, ptr %l108, !tbaa !27
  %t202 = load i64, ptr %l2, !tbaa !24
  %t203 = load i1, ptr %l4, !tbaa !21
  %t206 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr i1, ptr %t207, i64 %t202
  store i1 %t203, ptr %t208, !tbaa !31
  %t209 = load ptr, ptr %l1, !tbaa !29
  %t211 = getelementptr %"compiler/generic:Binding", ptr %t209, i32 0, i32 4
  %t212 = load { i64, ptr }, ptr %t211, !tbaa !27
  store { i64, ptr } %t212, ptr %l112, !tbaa !27
  %t213 = load i64, ptr %l2, !tbaa !24
  %t217 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !27
  %t219 = getelementptr i1, ptr %t218, i64 %t213
  store i1 %a5, ptr %t219, !tbaa !31
  store i32 0, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t220 = load i32, ptr %l8, !tbaa !23
  %t221 = load i32, ptr %l7, !tbaa !23
  %t224 = icmp eq i32 %t220, %t221
  br i1 %t224, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l118, !tbaa !21
  br label %bb51
bb49:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/generic:Program", ptr %t226, i32 0, i32 2
  %t229 = load i32, ptr %l8, !tbaa !23
  %t230 = load i32, ptr %l7, !tbaa !23
  %t234 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t228, i32 %t229, i32 %t230)
  store i1 %t234, ptr %l123
  br label %bb50
bb50:
  %t235 = load i1, ptr %l123, !tbaa !21
  store i1 %t235, ptr %l118, !tbaa !21
  br label %bb51
bb51:
  %t236 = load i1, ptr %l118, !tbaa !21
  br i1 %t236, label %bb52, label %bb53
bb52:
  store i32 0, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  %t237 = load i1, ptr %l4, !tbaa !21
  br i1 %t237, label %bb55, label %bb56
bb55:
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t241 = getelementptr %"compiler/generic:Binding", ptr %t239, i32 0, i32 3
  %t242 = load { i64, ptr }, ptr %t241, !tbaa !27
  store { i64, ptr } %t242, ptr %l126, !tbaa !27
  %t243 = load i64, ptr %l2, !tbaa !24
  %t245 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr i1, ptr %t246, i64 %t243
  %t248 = load i1, ptr %t247, !tbaa !31
  br i1 %t248, label %bb57, label %bb58
bb56:
  br label %bb72
bb57:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load i32, ptr %l8, !tbaa !23
  %t252 = load i32, ptr %l7, !tbaa !23
  %t256 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %t250, i32 %t251, i32 %t252)
  store i1 %t256, ptr %l133
  br label %bb59
bb58:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb68
bb59:
  %t257 = load i1, ptr %l133, !tbaa !21
  br i1 %t257, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb67
bb61:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"compiler/generic:Program", ptr %t258, i32 0, i32 2
  %t261 = load i32, ptr %l8, !tbaa !23
  %t264 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t260, i32 %t261)
  store i1 %t264, ptr %l138
  br label %bb62
bb62:
  %t265 = load i1, ptr %l138, !tbaa !21
  br i1 %t265, label %bb63, label %bb64
bb63:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/generic:Program", ptr %t266, i32 0, i32 2
  %t269 = load i32, ptr %l7, !tbaa !23
  %t272 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t268, i32 %t269)
  store i1 %t272, ptr %l143
  br label %bb65
bb64:
  store i1 false, ptr %l139, !tbaa !21
  br label %bb66
bb65:
  %t273 = load i1, ptr %l143, !tbaa !21
  store i1 %t273, ptr %l139, !tbaa !21
  br label %bb66
bb66:
  %t274 = load i1, ptr %l139, !tbaa !21
  store i1 %t274, ptr %l134, !tbaa !21
  br label %bb67
bb67:
  %t275 = load i1, ptr %l134, !tbaa !21
  store i1 %t275, ptr %l129, !tbaa !21
  br label %bb68
bb68:
  %t276 = load i1, ptr %l129, !tbaa !21
  br i1 %t276, label %bb69, label %bb70
bb69:
  %t277 = load ptr, ptr %l1, !tbaa !29
  %t279 = getelementptr %"compiler/generic:Binding", ptr %t277, i32 0, i32 2
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  store { i64, ptr } %t280, ptr %l145, !tbaa !27
  %t281 = load i64, ptr %l2, !tbaa !24
  %t282 = load i32, ptr %l7, !tbaa !23
  %t285 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !27
  %t287 = getelementptr i32, ptr %t286, i64 %t281
  store i32 %t282, ptr %t287, !tbaa !33
  br label %bb71
bb70:
  br label %bb71
bb71:
  store i32 0, ptr %rv
  br label %ret
bb72:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr %"compiler/generic:Program", ptr %t288, i32 0, i32 2
  %t291 = load i32, ptr %l7, !tbaa !23
  %t294 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t290, i32 %t291)
  store i32 %t294, ptr %l151
  br label %bb73
bb73:
  %t295 = load i32, ptr %l151, !range !{i32 0, i32 33}
  %t297 = trunc i64 20 to i32
  %t298 = icmp eq i32 %t295, %t297
  br i1 %t298, label %bb74, label %bb75
bb74:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/generic:Program", ptr %t300, i32 0, i32 2
  %t303 = load i32, ptr %l8, !tbaa !23
  %t306 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t302, i32 %t303)
  store i32 %t306, ptr %l158
  br label %bb76
bb75:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb77
bb76:
  %t307 = load i32, ptr %l158, !range !{i32 0, i32 33}
  %t309 = trunc i64 20 to i32
  %t310 = icmp eq i32 %t307, %t309
  %t312 = xor i1 %t310, true
  store i1 %t312, ptr %l154, !tbaa !21
  br label %bb77
bb77:
  %t314 = load i1, ptr %l154, !tbaa !21
  br i1 %t314, label %bb78, label %bb79
bb78:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/generic:Program", ptr %t315, i32 0, i32 2
  store ptr %t317, ptr %l164, !tbaa !29
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = getelementptr %"compiler/generic:Program", ptr %t318, i32 0, i32 2
  %t321 = load i32, ptr %l7, !tbaa !23
  %t324 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t320, i32 %t321)
  store i32 %t324, ptr %l168
  br label %bb80
bb79:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb82
bb80:
  %t325 = load ptr, ptr %l164, !tbaa !29
  %t326 = load i32, ptr %l168, !tbaa !23
  %t327 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t325, i32 %t326)
  store i32 %t327, ptr %l169
  br label %bb81
bb81:
  %t328 = load i32, ptr %l8, !tbaa !23
  %t329 = load i32, ptr %l169, !tbaa !23
  %t331 = icmp eq i32 %t329, %t328
  store i1 %t331, ptr %l162, !tbaa !21
  br label %bb82
bb82:
  %t333 = load i1, ptr %l162, !tbaa !21
  br i1 %t333, label %bb83, label %bb84
bb83:
  store i32 0, ptr %rv
  br label %ret
bb84:
  br label %bb85
bb85:
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t336 = getelementptr %"compiler/generic:Program", ptr %t334, i32 0, i32 2
  %t337 = load i32, ptr %l7, !tbaa !23
  %t340 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t336, i32 %t337)
  store i32 %t340, ptr %l175
  br label %bb86
bb86:
  %t341 = load i32, ptr %l175, !range !{i32 0, i32 33}
  %t343 = trunc i64 20 to i32
  %t344 = icmp eq i32 %t341, %t343
  br i1 %t344, label %bb87, label %bb88
bb87:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t348 = getelementptr %"compiler/generic:Program", ptr %t346, i32 0, i32 2
  store ptr %t348, ptr %l180, !tbaa !29
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/generic:Program", ptr %t349, i32 0, i32 2
  %t352 = load i32, ptr %l7, !tbaa !23
  %t355 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t351, i32 %t352)
  store i32 %t355, ptr %l184
  br label %bb89
bb88:
  %t356 = load i32, ptr %l7, !tbaa !23
  store i32 %t356, ptr %l178, !tbaa !23
  br label %bb91
bb89:
  %t358 = load ptr, ptr %l180, !tbaa !29
  %t359 = load i32, ptr %l184, !tbaa !23
  %t360 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t358, i32 %t359)
  store i32 %t360, ptr %l185
  br label %bb90
bb90:
  %t361 = load i32, ptr %l185, !tbaa !23
  store i32 %t361, ptr %l178, !tbaa !23
  br label %bb91
bb91:
  %t362 = load i32, ptr %l178, !tbaa !23
  store i32 %t362, ptr %l9, !tbaa !23
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/generic:Program", ptr %t363, i32 0, i32 2
  %t366 = load i32, ptr %l8, !tbaa !23
  %t369 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t365, i32 %t366)
  store i32 %t369, ptr %l190
  br label %bb92
bb92:
  %t370 = load i32, ptr %l190, !range !{i32 0, i32 33}
  %t372 = trunc i64 19 to i32
  %t373 = icmp eq i32 %t370, %t372
  br i1 %t373, label %bb93, label %bb94
bb93:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t377 = getelementptr %"compiler/generic:Program", ptr %t375, i32 0, i32 2
  %t378 = load i32, ptr %l9, !tbaa !23
  %t381 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t377, i32 %t378)
  store i32 %t381, ptr %l197
  br label %bb95
bb94:
  store i1 false, ptr %l193, !tbaa !21
  br label %bb96
bb95:
  %t382 = load i32, ptr %l197, !range !{i32 0, i32 33}
  %t384 = trunc i64 19 to i32
  %t385 = icmp eq i32 %t382, %t384
  store i1 %t385, ptr %l193, !tbaa !21
  br label %bb96
bb96:
  %t387 = load i1, ptr %l193, !tbaa !21
  br i1 %t387, label %bb97, label %bb98
bb97:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/generic:Program", ptr %t388, i32 0, i32 2
  store ptr %t390, ptr %l202, !tbaa !29
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t393 = getelementptr %"compiler/generic:Program", ptr %t391, i32 0, i32 2
  %t394 = load i32, ptr %l8, !tbaa !23
  %t397 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t393, i32 %t394)
  store i32 %t397, ptr %l206
  br label %bb99
bb98:
  store i1 false, ptr %l200, !tbaa !21
  br label %bb102
bb99:
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t400 = getelementptr %"compiler/generic:Program", ptr %t398, i32 0, i32 2
  %t401 = load i32, ptr %l9, !tbaa !23
  %t404 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t400, i32 %t401)
  store i32 %t404, ptr %l210
  br label %bb100
bb100:
  %t405 = load ptr, ptr %l202, !tbaa !29
  %t406 = load i32, ptr %l206, !tbaa !23
  %t407 = load i32, ptr %l210, !tbaa !23
  %t408 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t405, i32 %t406, i32 %t407)
  store i1 %t408, ptr %l211
  br label %bb101
bb101:
  %t409 = load i1, ptr %l211, !tbaa !21
  store i1 %t409, ptr %l200, !tbaa !21
  br label %bb102
bb102:
  %t410 = load i1, ptr %l200, !tbaa !21
  br i1 %t410, label %bb103, label %bb104
bb103:
  %t411 = load ptr, ptr %l1, !tbaa !29
  %t413 = getelementptr %"compiler/generic:Binding", ptr %t411, i32 0, i32 4
  %t414 = load { i64, ptr }, ptr %t413, !tbaa !27
  store { i64, ptr } %t414, ptr %l214, !tbaa !27
  %t415 = load i64, ptr %l2, !tbaa !24
  %t417 = getelementptr { i64, ptr }, ptr %l214, i32 0, i32 1
  %t418 = load ptr, ptr %t417, !tbaa !27
  %t419 = getelementptr i1, ptr %t418, i64 %t415
  %t420 = load i1, ptr %t419, !tbaa !31
  %t422 = xor i1 %t420, true
  store i1 %t422, ptr %l212, !tbaa !21
  br label %bb105
bb104:
  store i1 false, ptr %l212, !tbaa !21
  br label %bb105
bb105:
  %t424 = load i1, ptr %l212, !tbaa !21
  br i1 %t424, label %bb106, label %bb107
bb106:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/generic:Program", ptr %t425, i32 0, i32 2
  %t428 = load i32, ptr %l8, !tbaa !23
  %t431 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t427, i32 %t428)
  store i32 %t431, ptr %l221
  br label %bb108
bb107:
  br label %bb119
bb108:
  %t432 = load i32, ptr %l221, !tbaa !23
  %t433 = icmp ne i32 %t432, 0
  br i1 %t433, label %bb109, label %bb110
bb109:
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t437 = getelementptr %"compiler/generic:Program", ptr %t435, i32 0, i32 2
  %t438 = load i32, ptr %l9, !tbaa !23
  %t441 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t437, i32 %t438)
  store i32 %t441, ptr %l227
  br label %bb111
bb110:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb113
bb111:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/generic:Program", ptr %t442, i32 0, i32 2
  %t445 = load i32, ptr %l8, !tbaa !23
  %t448 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t444, i32 %t445)
  store i32 %t448, ptr %l231
  br label %bb112
bb112:
  %t449 = load i32, ptr %l227, !tbaa !23
  %t450 = load i32, ptr %l231, !tbaa !23
  %t451 = icmp ne i32 %t449, %t450
  store i1 %t451, ptr %l223, !tbaa !21
  br label %bb113
bb113:
  %t453 = load i1, ptr %l223, !tbaa !21
  br i1 %t453, label %bb114, label %bb115
bb114:
  %t454 = load ptr, ptr %l1, !tbaa !29
  %t456 = getelementptr %"compiler/generic:Binding", ptr %t454, i32 0, i32 2
  %t457 = load { i64, ptr }, ptr %t456, !tbaa !27
  store { i64, ptr } %t457, ptr %l234, !tbaa !27
  %t458 = load i64, ptr %l2, !tbaa !24
  store i64 %t458, ptr %l235, !tbaa !24
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t461 = getelementptr %"compiler/generic:Program", ptr %t459, i32 0, i32 2
  store ptr %t461, ptr %l237, !tbaa !29
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t464 = getelementptr %"compiler/generic:Program", ptr %t462, i32 0, i32 2
  %t465 = load i32, ptr %l8, !tbaa !23
  %t468 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t464, i32 %t465)
  store i32 %t468, ptr %l241
  br label %bb116
bb115:
  br label %bb118
bb116:
  %t469 = load ptr, ptr %l237, !tbaa !29
  %t470 = load i32, ptr %l241, !tbaa !23
  %t471 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t469, i32 %t470, i32 0)
  store i32 %t471, ptr %l242
  br label %bb117
bb117:
  %t472 = load i32, ptr %l242, !tbaa !23
  %t473 = load i64, ptr %l235, !tbaa !24
  %t474 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t475 = load ptr, ptr %t474, !tbaa !27
  %t476 = getelementptr i32, ptr %t475, i64 %t473
  store i32 %t472, ptr %t476, !tbaa !33
  br label %bb118
bb118:
  store i32 0, ptr %rv
  br label %ret
bb119:
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t479 = getelementptr %"compiler/generic:Program", ptr %t477, i32 0, i32 2
  store ptr %t479, ptr %l244, !tbaa !29
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load i32, ptr %l8, !tbaa !23
  %t484 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enumberOf(ptr %v0, ptr %t480, i32 %t481)
  store i32 %t484, ptr %l247
  br label %bb120
bb120:
  %t485 = load ptr, ptr %l244, !tbaa !29
  %t486 = load i32, ptr %l247, !tbaa !23
  %t487 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t485, i32 %t486)
  store i1 %t487, ptr %l248
  br label %bb121
bb121:
  %t488 = load i1, ptr %l248, !tbaa !21
  br i1 %t488, label %bb122, label %bb123
bb122:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t491 = getelementptr %"compiler/generic:Program", ptr %t489, i32 0, i32 2
  store ptr %t491, ptr %l251, !tbaa !29
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t493 = load i32, ptr %l7, !tbaa !23
  %t496 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enumberOf(ptr %v0, ptr %t492, i32 %t493)
  store i32 %t496, ptr %l254
  br label %bb124
bb123:
  store i1 false, ptr %l249, !tbaa !21
  br label %bb126
bb124:
  %t497 = load ptr, ptr %l251, !tbaa !29
  %t498 = load i32, ptr %l254, !tbaa !23
  %t499 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t497, i32 %t498)
  store i1 %t499, ptr %l255
  br label %bb125
bb125:
  %t500 = load i1, ptr %l255, !tbaa !21
  store i1 %t500, ptr %l249, !tbaa !21
  br label %bb126
bb126:
  %t501 = load i1, ptr %l249, !tbaa !21
  br i1 %t501, label %bb127, label %bb128
bb127:
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t503 = load i32, ptr %l7, !tbaa !23
  %t504 = load i32, ptr %l8, !tbaa !23
  %t508 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %t502, i32 %t503, i32 %t504)
  store i1 %t508, ptr %l259
  br label %bb129
bb128:
  br label %bb140
bb129:
  %t509 = load i1, ptr %l259, !tbaa !21
  br i1 %t509, label %bb130, label %bb131
bb130:
  store i32 0, ptr %rv
  br label %ret
bb131:
  br label %bb132
bb132:
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = load i32, ptr %l8, !tbaa !23
  %t512 = load i32, ptr %l7, !tbaa !23
  %t516 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %t510, i32 %t511, i32 %t512)
  store i1 %t516, ptr %l263
  br label %bb133
bb133:
  %t517 = load i1, ptr %l263, !tbaa !21
  br i1 %t517, label %bb134, label %bb135
bb134:
  %t518 = load ptr, ptr %l1, !tbaa !29
  %t520 = getelementptr %"compiler/generic:Binding", ptr %t518, i32 0, i32 4
  %t521 = load { i64, ptr }, ptr %t520, !tbaa !27
  store { i64, ptr } %t521, ptr %l266, !tbaa !27
  %t522 = load i64, ptr %l2, !tbaa !24
  %t524 = getelementptr { i64, ptr }, ptr %l266, i32 0, i32 1
  %t525 = load ptr, ptr %t524, !tbaa !27
  %t526 = getelementptr i1, ptr %t525, i64 %t522
  %t527 = load i1, ptr %t526, !tbaa !31
  %t529 = xor i1 %t527, true
  store i1 %t529, ptr %l264, !tbaa !21
  br label %bb136
bb135:
  store i1 false, ptr %l264, !tbaa !21
  br label %bb136
bb136:
  %t531 = load i1, ptr %l264, !tbaa !21
  br i1 %t531, label %bb137, label %bb138
bb137:
  %t532 = load ptr, ptr %l1, !tbaa !29
  %t534 = getelementptr %"compiler/generic:Binding", ptr %t532, i32 0, i32 2
  %t535 = load { i64, ptr }, ptr %t534, !tbaa !27
  store { i64, ptr } %t535, ptr %l271, !tbaa !27
  %t536 = load i64, ptr %l2, !tbaa !24
  %t537 = load i32, ptr %l7, !tbaa !23
  %t540 = getelementptr { i64, ptr }, ptr %l271, i32 0, i32 1
  %t541 = load ptr, ptr %t540, !tbaa !27
  %t542 = getelementptr i32, ptr %t541, i64 %t536
  store i32 %t537, ptr %t542, !tbaa !33
  store i32 0, ptr %rv
  br label %ret
bb138:
  br label %bb139
bb139:
  store i32 65536, ptr %rv
  br label %ret
bb140:
  %t544 = load ptr, ptr %l0, !tbaa !29
  %t546 = getelementptr %"compiler/generic:Program", ptr %t544, i32 0, i32 2
  %t547 = load i32, ptr %l8, !tbaa !23
  %t550 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t546, i32 %t547)
  store i32 %t550, ptr %l278
  br label %bb141
bb141:
  %t551 = load i32, ptr %l278, !range !{i32 0, i32 33}
  %t553 = trunc i64 20 to i32
  %t554 = icmp eq i32 %t551, %t553
  br i1 %t554, label %bb142, label %bb143
bb142:
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t558 = getelementptr %"compiler/generic:Program", ptr %t556, i32 0, i32 2
  %t559 = load i32, ptr %l7, !tbaa !23
  %t562 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t558, i32 %t559)
  store i32 %t562, ptr %l285
  br label %bb144
bb143:
  store i1 false, ptr %l281, !tbaa !21
  br label %bb145
bb144:
  %t563 = load i32, ptr %l285, !range !{i32 0, i32 33}
  %t565 = trunc i64 20 to i32
  %t566 = icmp eq i32 %t563, %t565
  store i1 %t566, ptr %l281, !tbaa !21
  br label %bb145
bb145:
  %t568 = load i1, ptr %l281, !tbaa !21
  br i1 %t568, label %bb146, label %bb147
bb146:
  %t569 = load ptr, ptr %l0, !tbaa !29
  %t571 = getelementptr %"compiler/generic:Program", ptr %t569, i32 0, i32 2
  %t572 = load i32, ptr %l8, !tbaa !23
  %t575 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t571, i32 %t572)
  store i32 %t575, ptr %l292
  br label %bb148
bb147:
  store i1 false, ptr %l288, !tbaa !21
  br label %bb150
bb148:
  %t576 = load ptr, ptr %l0, !tbaa !29
  %t578 = getelementptr %"compiler/generic:Program", ptr %t576, i32 0, i32 2
  %t579 = load i32, ptr %l7, !tbaa !23
  %t582 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t578, i32 %t579)
  store i32 %t582, ptr %l296
  br label %bb149
bb149:
  %t583 = load i32, ptr %l292, !tbaa !23
  %t584 = load i32, ptr %l296, !tbaa !23
  %t585 = icmp eq i32 %t583, %t584
  store i1 %t585, ptr %l288, !tbaa !21
  br label %bb150
bb150:
  %t587 = load i1, ptr %l288, !tbaa !21
  br i1 %t587, label %bb151, label %bb152
bb151:
  %t588 = load ptr, ptr %l0, !tbaa !29
  %t590 = getelementptr %"compiler/generic:Program", ptr %t588, i32 0, i32 2
  %t591 = load i32, ptr %l8, !tbaa !23
  %t594 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t590, i32 %t591)
  store i64 %t594, ptr %l301
  br label %bb153
bb152:
  br label %bb160
bb153:
  %t595 = load i64, ptr %l301, !tbaa !24
  store i64 %t595, ptr %l10, !tbaa !24
  %t596 = load ptr, ptr %l0, !tbaa !29
  %t598 = getelementptr %"compiler/generic:Program", ptr %t596, i32 0, i32 2
  %t599 = load i32, ptr %l7, !tbaa !23
  %t602 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t598, i32 %t599)
  store i64 %t602, ptr %l305
  br label %bb154
bb154:
  %t603 = load i64, ptr %l305, !tbaa !24
  store i64 %t603, ptr %l11, !tbaa !24
  %t604 = load ptr, ptr %l1, !tbaa !29
  %t606 = getelementptr %"compiler/generic:Binding", ptr %t604, i32 0, i32 4
  %t607 = load { i64, ptr }, ptr %t606, !tbaa !27
  store { i64, ptr } %t607, ptr %l307, !tbaa !27
  %t608 = load i64, ptr %l2, !tbaa !24
  %t610 = getelementptr { i64, ptr }, ptr %l307, i32 0, i32 1
  %t611 = load ptr, ptr %t610, !tbaa !27
  %t612 = getelementptr i1, ptr %t611, i64 %t608
  %t613 = load i1, ptr %t612, !tbaa !31
  %t615 = xor i1 %t613, true
  br i1 %t615, label %bb155, label %bb156
bb155:
  %t617 = load ptr, ptr %l1, !tbaa !29
  %t619 = getelementptr %"compiler/generic:Binding", ptr %t617, i32 0, i32 2
  %t620 = load { i64, ptr }, ptr %t619, !tbaa !27
  store { i64, ptr } %t620, ptr %l312, !tbaa !27
  %t621 = load i64, ptr %l2, !tbaa !24
  store i64 %t621, ptr %l313, !tbaa !24
  %t622 = load ptr, ptr %l0, !tbaa !29
  %t624 = getelementptr %"compiler/generic:Program", ptr %t622, i32 0, i32 2
  store ptr %t624, ptr %l315, !tbaa !29
  %t625 = load ptr, ptr %l0, !tbaa !29
  %t627 = getelementptr %"compiler/generic:Program", ptr %t625, i32 0, i32 2
  %t628 = load i32, ptr %l7, !tbaa !23
  %t631 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t627, i32 %t628)
  store i32 %t631, ptr %l319
  br label %bb157
bb156:
  br label %bb159
bb157:
  %t632 = load i64, ptr %l10, !tbaa !24
  %t633 = load i64, ptr %l11, !tbaa !24
  %t636 = and i64 %t632, %t633
  %t637 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t640 = and i64 %t636, %t637
  %t641 = load i64, ptr %l10, !tbaa !24
  %t642 = load i64, ptr %l11, !tbaa !24
  %t645 = or i64 %t641, %t642
  %t646 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t649 = and i64 %t645, %t646
  %t652 = or i64 %t640, %t649
  %t653 = load ptr, ptr %l315, !tbaa !29
  %t654 = load i32, ptr %l319, !tbaa !23
  %t656 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t653, i32 %t654, i64 %t652)
  store i32 %t656, ptr %l331
  br label %bb158
bb158:
  %t657 = load i32, ptr %l331, !tbaa !23
  %t658 = load i64, ptr %l313, !tbaa !24
  %t659 = getelementptr { i64, ptr }, ptr %l312, i32 0, i32 1
  %t660 = load ptr, ptr %t659, !tbaa !27
  %t661 = getelementptr i32, ptr %t660, i64 %t658
  store i32 %t657, ptr %t661, !tbaa !33
  br label %bb159
bb159:
  store i32 0, ptr %rv
  br label %ret
bb160:
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eentriesOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca %"compiler/generic:Context"
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l21 = alloca i32
  %l25 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l47 = alloca i1
  %l51 = alloca i32
  %l60 = alloca i32
  %l63 = alloca { i64, ptr }
  %l70 = alloca i64
  %l72 = alloca i64
  %l77 = alloca i32
  %l88 = alloca i64
  %l89 = alloca %"compiler/generic:Context"
  %l97 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l101 = alloca ptr
  %l102 = alloca i64
  %l107 = alloca i32
  %l112 = alloca i32
  %l114 = alloca i32
  %l115 = alloca i32
  %l121 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %t143 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l21
  br label %bb1
bb1:
  %t8 = load i32, ptr %l21, !range !{i32 0, i32 33}
  %t10 = trunc i64 30 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  store ptr %t15, ptr %l25, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l29
  br label %bb4
bb3:
  br label %bb13
bb4:
  %t23 = load ptr, ptr %l25, !tbaa !29
  %t24 = load i32, ptr %l29, !tbaa !23
  %t25 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t23, i32 %t24)
  store { i64, ptr } %t25, ptr %l30
  br label %bb5
bb5:
  %t26 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t39, ptr %l37, !tbaa !27
  %t40 = load i64, ptr %l5, !tbaa !24
  %t42 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr i32, ptr %t43, i64 %t40
  %t45 = load i32, ptr %t44, !tbaa !33
  %t47 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t47, i32 %t45)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l5, !tbaa !24
  br label %bb6
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  %t55 = load i32, ptr %l1, !tbaa !23
  %t56 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t59 = icmp eq i32 %t55, %t56
  br i1 %t59, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb17
bb15:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l1, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l51
  br label %bb16
bb16:
  %t68 = load i32, ptr %l51, !range !{i32 0, i32 33}
  %t70 = trunc i64 18 to i32
  %t71 = icmp eq i32 %t68, %t70
  %t73 = xor i1 %t71, true
  store i1 %t73, ptr %l47, !tbaa !21
  br label %bb17
bb17:
  %t75 = load i1, ptr %l47, !tbaa !21
  br i1 %t75, label %bb18, label %bb19
bb18:
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t77 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t76, i32 %t77)
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb21:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l1, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l60
  br label %bb22
bb22:
  %t87 = load i32, ptr %l60, !tbaa !23
  store i32 %t87, ptr %l8, !tbaa !23
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i32, ptr %l8, !tbaa !23
  %t92 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %v0, ptr %t88, i32 %t89)
  store { i64, ptr } %t92, ptr %l63
  br label %bb23
bb23:
  %t93 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t93, ptr %l9, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t98 = icmp eq i64 %t96, 0
  br i1 %t98, label %bb24, label %bb25
bb24:
  %t100 = load ptr, ptr %l2, !tbaa !29
  %t101 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t100, i32 %t101)
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb27:
  %t104 = load ptr, ptr %l3, !tbaa !29
  store ptr %t104, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb28
bb28:
  %t106 = load i64, ptr %l11, !tbaa !24
  store i64 %t106, ptr %l70, !tbaa !24
  %t107 = load ptr, ptr %l10, !tbaa !29
  %t109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2eLen_3ccompiler_2ftypes_3aDeclId_3e(ptr %v2, ptr %t107)
  store i64 %t109, ptr %l72
  br label %bb29
bb29:
  %t110 = load i64, ptr %l70, !tbaa !24
  %t111 = load i64, ptr %l72, !tbaa !24
  %t112 = icmp slt i64 %t110, %t111
  %t114 = xor i1 %t112, true
  br i1 %t114, label %bb30, label %bb31
bb30:
  br label %bb38
bb31:
  br label %bb32
bb32:
  %t116 = load ptr, ptr %l10, !tbaa !29
  %t117 = load i64, ptr %l11, !tbaa !24
  %t120 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2eAt_3ccompiler_2ftypes_3aDeclId_3e(ptr %v2, ptr %t116, i64 %t117)
  store i32 %t120, ptr %l77
  br label %bb33
bb33:
  %t121 = load i32, ptr %l77, !tbaa !23
  %t123 = load i32, ptr %l8, !tbaa !23
  %t126 = icmp eq i32 %t121, %t123
  br i1 %t126, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t128 = load i64, ptr %l11, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l11, !tbaa !24
  br label %bb28
bb38:
  %t132 = load ptr, ptr %l3, !tbaa !29
  %t133 = load i32, ptr %l8, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ePush_3ccompiler_2ftypes_3aDeclId_3e(ptr %v2, ptr %t132, i32 %t133)
  br label %bb39
bb39:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  %t139 = load i32, ptr %l8, !tbaa !23
  %t142 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t138, i32 %t139)
  store i64 %t142, ptr %l88
  br label %bb40
bb40:
  %t144 = load i64, ptr %l88, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t143, ptr %s0, i64 %t144, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l89, ptr %t143, i64 160, i1 false)
  br label %bb41
bb41:
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %l89, i64 160, i1 false)
  %t145 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t145, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t147 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t147, 0
  store i64 %t149, ptr %l16, !tbaa !24
  br label %bb42
bb42:
  %t151 = load i64, ptr %l15, !tbaa !24
  %t152 = load i64, ptr %l16, !tbaa !24
  %t155 = icmp slt i64 %t151, %t152
  %t157 = xor i1 %t155, true
  br i1 %t157, label %bb43, label %bb44
bb43:
  br label %bb51
bb44:
  br label %bb45
bb45:
  %t159 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t159, ptr %l97, !tbaa !27
  %t160 = load i64, ptr %l15, !tbaa !24
  %t162 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr ptr, ptr %t163, i64 %t160
  %t165 = load ptr, ptr %t164, !tbaa !39
  store ptr %t165, ptr %l17, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l100, !tbaa !29
  %t168 = load ptr, ptr %l17, !tbaa !29
  store ptr %t168, ptr %l101, !tbaa !29
  %t169 = ptrtoint ptr %v0 to i64
  store i64 %t169, ptr %l102, !tbaa !24
  %t170 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t170, label %bb46, label %bb47
bb46:
  %t172 = load ptr, ptr %l101, !tbaa !29
  %t173 = call ptr @__olang_region_or(ptr %t172, ptr %v0)
  %t174 = ptrtoint ptr %t173 to i64
  store i64 %t174, ptr %l102, !tbaa !24
  br label %bb47
bb47:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l17, !tbaa !29
  %t177 = load i64, ptr %l102
  %t178 = inttoptr i64 %t177 to ptr
  %t182 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetItem(ptr %v0, ptr %s0, ptr %t178, ptr %t175, ptr %l13, ptr %t176)
  store i32 %t182, ptr %l107
  br label %bb48
bb48:
  %t183 = load ptr, ptr %l2, !tbaa !29
  %t184 = load ptr, ptr %l3, !tbaa !29
  %t185 = load ptr, ptr %l100, !tbaa !29
  %t186 = load i32, ptr %l107, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eentriesOf(ptr %v0, ptr %v1, ptr %v2, ptr %t185, i32 %t186, ptr %t183, ptr %t184)
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t189 = load i64, ptr %l15, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l15, !tbaa !24
  br label %bb42
bb51:
  %t193 = load ptr, ptr %l3, !tbaa !29
  %t195 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ePop_3ccompiler_2ftypes_3aDeclId_3e(ptr %v2, ptr %t193)
  %t196 = extractvalue { i32, i32 } %t195, 1
  %t197 = extractvalue { i32, i32 } %t195, 0
  store i32 %t197, ptr %l115
  %t198 = icmp ne i32 %t197, 0
  br i1 %t198, label %bb53, label %ok.199, !prof !99
ok.199:
  store i32 %t196, ptr %l114
  br label %bb52
bb52:
  %t200 = load i32, ptr %l114, !tbaa !23
  store i32 %t200, ptr %l112, !tbaa !23
  br label %bb60
bb53:
  %t201 = load i32, ptr %l115, !tbaa !23
  %t202 = icmp eq i32 %t201, 65536
  br i1 %t202, label %bb54, label %bb55
bb54:
  call void @__olang_bang_failed_plain(ptr @olang_loc_720125e199c24f22_e8379e985b9f3c66)
  unreachable
bb55:
  %t204 = load i32, ptr %l115, !tbaa !23
  %t205 = icmp eq i32 %t204, 65537
  br i1 %t205, label %bb56, label %bb57
bb56:
  call void @__olang_bang_failed_plain(ptr @olang_loc_227a3f0eae681c4f_61bdff3e0ec7ebb3)
  unreachable
bb57:
  %t207 = load i32, ptr %l115, !tbaa !23
  %t208 = icmp eq i32 %t207, 65538
  br i1 %t208, label %bb58, label %bb59
bb58:
  call void @__olang_bang_failed_plain(ptr @olang_loc_f703e5bec6c76f87_ea1686e8125b66ab)
  unreachable
bb59:
  call void @__olang_bang_failed_plain(ptr @olang_loc_bbb5b8b709f50d79_9796b462e6590e5d)
  unreachable
bb60:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load i32, ptr %l8, !tbaa !23
  %t214 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t210, i32 %t211)
  store { i64, ptr } %t214, ptr %l121
  br label %bb61
bb61:
  %t215 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 0
  %t218 = icmp sgt i64 %t216, 0
  br i1 %t218, label %bb62, label %bb63
bb62:
  %t220 = load ptr, ptr %l2, !tbaa !29
  %t221 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t220, i32 %t221)
  br label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i32
  %l23 = alloca { i64, ptr }
  %l25 = alloca i32
  %l26 = alloca i32
  %l29 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i32
  %l48 = alloca i1
  %l51 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i1
  %l62 = alloca { i64, ptr }
  %l64 = alloca i32
  %l67 = alloca ptr
  %l68 = alloca ptr
  %l70 = alloca %"compiler/source:Span"
  %l71 = alloca i32
  %l73 = alloca { i64, ptr }
  %l77 = alloca i32
  %l81 = alloca i32
  %l88 = alloca i1
  %l92 = alloca ptr
  %l93 = alloca ptr
  %l95 = alloca %"compiler/source:Span"
  %l97 = alloca { i64, ptr }
  %l99 = alloca i64
  %l100 = alloca i64
  %l105 = alloca %"compiler/ast:Path"
  %l107 = alloca i32
  %l111 = alloca i1
  %l112 = alloca ptr
  %l116 = alloca i32
  %l117 = alloca i1
  %l119 = alloca ptr
  %l123 = alloca i32
  %l124 = alloca { i64, ptr }
  %l130 = alloca i64
  %l133 = alloca i64
  %l151 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l162 = alloca i32
  %l166 = alloca i64
  %l168 = alloca i32
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Path", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 1
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Context", ptr %t10, i32 0, i32 2
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/ast:Path", ptr %t13, i32 0, i32 1
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  store { i64, ptr } %t16, ptr %l23, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr i32, ptr %t18, i64 0
  %t20 = load i32, ptr %t19, !tbaa !33
  %t23 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v1, ptr %t12, i32 %t20)
  %t24 = extractvalue { i32, i32 } %t23, 1
  %t25 = extractvalue { i32, i32 } %t23, 0
  store i32 %t25, ptr %l26
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb4, label %ok.27, !prof !99
ok.27:
  store i32 %t24, ptr %l25
  br label %bb3
bb2:
  br label %bb21
bb3:
  %t28 = load i32, ptr %l25, !tbaa !23
  store i32 %t28, ptr %l19, !tbaa !23
  br label %bb6
bb4:
  br label %bb5
bb5:
  store i32 -1, ptr %l19, !tbaa !23
  br label %bb6
bb6:
  %t29 = load i32, ptr %l19, !tbaa !23
  store i32 %t29, ptr %l3, !tbaa !23
  %t30 = load i32, ptr %l3, !tbaa !23
  %t32 = icmp sge i32 %t30, 0
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l3, !tbaa !23
  %t38 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t38, ptr %l32
  br label %bb9
bb8:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb14
bb9:
  %t39 = load i1, ptr %l32, !tbaa !21
  br i1 %t39, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb13
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l3, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l37
  br label %bb12
bb12:
  %t47 = load i32, ptr %l37, !range !{i32 0, i32 33}
  %t49 = trunc i64 30 to i32
  %t50 = icmp eq i32 %t47, %t49
  store i1 %t50, ptr %l33, !tbaa !21
  br label %bb13
bb13:
  %t52 = load i1, ptr %l33, !tbaa !21
  store i1 %t52, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t54 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t54, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t56 = load i32, ptr %l3, !tbaa !23
  %t58 = icmp sge i32 %t56, 0
  br i1 %t58, label %bb18, label %bb19
bb18:
  %t60 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t60, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t64 = getelementptr %"compiler/ast:Path", ptr %t62, i32 0, i32 1
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t69 = icmp sge i64 %t67, 2
  br i1 %t69, label %bb22, label %bb23
bb22:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t74 = getelementptr %"compiler/ast:Path", ptr %t72, i32 0, i32 1
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %l51, !tbaa !27
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t78 = getelementptr %"compiler/ast:Path", ptr %t76, i32 0, i32 1
  %t79 = load { i64, ptr }, ptr %t78, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t83 = sub i64 %t81, 1
  %t85 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i32, ptr %t86, i64 %t83
  %t88 = load i32, ptr %t87, !tbaa !33
  %t91 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t71, i32 %t88)
  store { i64, ptr } %t91, ptr %l57
  br label %bb24
bb23:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb26
bb24:
  %t92 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t93 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t92, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t93, ptr %l58
  br label %bb25
bb25:
  %t94 = load i1, ptr %l58, !tbaa !21
  store i1 %t94, ptr %l48, !tbaa !21
  br label %bb26
bb26:
  %t95 = load i1, ptr %l48, !tbaa !21
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t100 = getelementptr %"compiler/ast:Path", ptr %t98, i32 0, i32 1
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  store { i64, ptr } %t101, ptr %l62, !tbaa !27
  %t102 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i32, ptr %t103, i64 0
  %t105 = load i32, ptr %t104, !tbaa !33
  %t109 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflHead(ptr %v0, ptr %v1, ptr %t96, ptr %t97, i32 %t105)
  store i32 %t109, ptr %l64
  br label %bb29
bb28:
  br label %bb38
bb29:
  %t110 = load i32, ptr %l64, !tbaa !23
  store i32 %t110, ptr %l4, !tbaa !23
  %t111 = load i32, ptr %l4, !tbaa !23
  %t113 = icmp sge i32 %t111, 0
  br i1 %t113, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l67, !tbaa !29
  %t116 = load ptr, ptr %l1, !tbaa !29
  store ptr %t116, ptr %l68, !tbaa !29
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t119 = getelementptr %"compiler/ast:Path", ptr %t117, i32 0, i32 0
  %t120 = load %"compiler/source:Span", ptr %t119
  store %"compiler/source:Span" %t120, ptr %l70
  %t121 = load i32, ptr %l4, !tbaa !23
  store i32 %t121, ptr %l71, !tbaa !23
  %t122 = load ptr, ptr %l2, !tbaa !29
  %t124 = getelementptr %"compiler/ast:Path", ptr %t122, i32 0, i32 1
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  store { i64, ptr } %t125, ptr %l73, !tbaa !27
  %t126 = icmp sge i64 0, 0
  br i1 %t126, label %bb32, label %bb33
bb31:
  br label %bb37
bb32:
  %t128 = icmp sle i64 0, 1152921504606846975
  br i1 %t128, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_189a19e9a5fd6b5a_b53b3f6ea3786e1e)
  unreachable
bb34:
  %t130 = mul i64 0, 8
  %t131 = insertvalue { i64, ptr } undef, i64 0, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t133 = load ptr, ptr %l67, !tbaa !29
  %t134 = load ptr, ptr %l68, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l70
  %t136 = load i32, ptr %l71, !tbaa !23
  %t137 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t139 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eprojectPath(ptr %v0, ptr %v1, ptr %v2, ptr %s5, ptr %t133, ptr %t134, %"compiler/source:Span" %t135, i32 %t136, { i64, ptr } %t137, { i64, ptr } %t132)
  store i32 %t139, ptr %l77
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_189a19e9a5fd6b5a_b53b3f6ea3786e1e)
  unreachable
bb36:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t140 = load i32, ptr %l77, !tbaa !23
  store i32 %t140, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t143 = load ptr, ptr %l2, !tbaa !29
  %t147 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorType(ptr %v0, ptr %v1, ptr %v2, ptr %t141, ptr %t142, ptr %t143)
  store i32 %t147, ptr %l81
  br label %bb39
bb39:
  %t148 = load i32, ptr %l81, !tbaa !23
  store i32 %t148, ptr %l5, !tbaa !23
  %t149 = load ptr, ptr %l2, !tbaa !29
  %t151 = getelementptr %"compiler/ast:Path", ptr %t149, i32 0, i32 1
  %t152 = load { i64, ptr }, ptr %t151, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t152, 0
  store i64 %t154, ptr %l6, !tbaa !24
  %t156 = load i32, ptr %l5, !tbaa !23
  %t157 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t160 = icmp ne i32 %t156, %t157
  br i1 %t160, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb42
bb41:
  %t162 = load i64, ptr %l6, !tbaa !24
  %t164 = icmp slt i64 %t162, 2
  store i1 %t164, ptr %l88, !tbaa !21
  br label %bb42
bb42:
  %t166 = load i1, ptr %l88, !tbaa !21
  br i1 %t166, label %bb43, label %bb44
bb43:
  %t167 = load i32, ptr %l5, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t167, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l92, !tbaa !29
  %t170 = load ptr, ptr %l1, !tbaa !29
  store ptr %t170, ptr %l93, !tbaa !29
  %t171 = load ptr, ptr %l2, !tbaa !29
  %t173 = getelementptr %"compiler/ast:Path", ptr %t171, i32 0, i32 0
  %t174 = load %"compiler/source:Span", ptr %t173
  store %"compiler/source:Span" %t174, ptr %l95
  %t175 = load ptr, ptr %l2, !tbaa !29
  %t177 = getelementptr %"compiler/ast:Path", ptr %t175, i32 0, i32 1
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %l97, !tbaa !27
  %t179 = load i64, ptr %l6, !tbaa !24
  %t181 = sub i64 %t179, 1
  store i64 %t181, ptr %l99, !tbaa !24
  %t182 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 0
  store i64 %t183, ptr %l100, !tbaa !24
  %t184 = icmp sge i64 0, 0
  br i1 %t184, label %bb46, label %bb47
bb46:
  %t186 = load i64, ptr %l99, !tbaa !24
  %t187 = icmp sle i64 0, %t186
  br i1 %t187, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_30deabb7ecc8eb8f_a9174381e9755ebb)
  unreachable
bb48:
  %t189 = load i64, ptr %l99, !tbaa !24
  %t190 = load i64, ptr %l100, !tbaa !24
  %t191 = icmp sle i64 %t189, %t190
  br i1 %t191, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_30deabb7ecc8eb8f_a9174381e9755ebb)
  unreachable
bb50:
  %t193 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = load i64, ptr %l99, !tbaa !24
  %t196 = getelementptr i32, ptr %t194, i64 0
  %t197 = sub i64 %t195, 0
  %t198 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t196, 1
  %t200 = load %"compiler/source:Span", ptr %l95
  %t202 = call %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v2, ptr %s0, %"compiler/source:Span" %t200, { i64, ptr } %t199)
  store %"compiler/ast:Path" %t202, ptr %l105
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_30deabb7ecc8eb8f_a9174381e9755ebb)
  unreachable
bb52:
  %t203 = load ptr, ptr %l92, !tbaa !29
  %t204 = load ptr, ptr %l93, !tbaa !29
  %t206 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorType(ptr %v0, ptr %v1, ptr %s0, ptr %t203, ptr %t204, ptr %l105)
  store i32 %t206, ptr %l107
  br label %bb53
bb53:
  %t207 = load i32, ptr %l107, !tbaa !23
  store i32 %t207, ptr %l7, !tbaa !23
  %t208 = load i32, ptr %l7, !tbaa !23
  %t209 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t212 = icmp eq i32 %t208, %t209
  br i1 %t212, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb58
bb55:
  %t214 = load ptr, ptr %l0, !tbaa !29
  store ptr %t214, ptr %l112, !tbaa !29
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 2
  %t218 = load i32, ptr %l7, !tbaa !23
  %t221 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t217, i32 %t218)
  store i32 %t221, ptr %l116
  br label %bb56
bb56:
  %t222 = load ptr, ptr %l112, !tbaa !29
  %t223 = load i32, ptr %l116, !tbaa !23
  %t224 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t222, i32 %t223)
  store i1 %t224, ptr %l117
  br label %bb57
bb57:
  %t225 = load i1, ptr %l117, !tbaa !21
  store i1 %t225, ptr %l111, !tbaa !21
  br label %bb58
bb58:
  %t226 = load i1, ptr %l111, !tbaa !21
  br i1 %t226, label %bb59, label %bb60
bb59:
  %t227 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t227, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l119, !tbaa !29
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/generic:Program", ptr %t230, i32 0, i32 2
  %t233 = load i32, ptr %l7, !tbaa !23
  %t236 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t232, i32 %t233)
  store i32 %t236, ptr %l123
  br label %bb62
bb62:
  %t237 = load ptr, ptr %l119, !tbaa !29
  %t238 = load i32, ptr %l123, !tbaa !23
  %t239 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t237, i32 %t238)
  store { i64, ptr } %t239, ptr %l124
  br label %bb63
bb63:
  %t240 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t240, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t241 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t241, 0
  store i64 %t243, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t245 = load i64, ptr %l10, !tbaa !24
  %t246 = load i64, ptr %l9, !tbaa !24
  %t249 = icmp sgt i64 %t245, %t246
  br i1 %t249, label %bb64, label %bb65
bb64:
  %t251 = load i64, ptr %l11, !tbaa !24
  %t253 = icmp sgt i64 %t251, 0
  br i1 %t253, label %bb66, label %bb67
bb65:
  store i64 0, ptr %l130, !tbaa !24
  br label %bb69
bb66:
  %t255 = load i64, ptr %l10, !tbaa !24
  %t256 = load i64, ptr %l9, !tbaa !24
  %t259 = sub i64 %t255, %t256
  %t260 = load i64, ptr %l11, !tbaa !24
  %t263 = add i64 %t259, %t260
  %t265 = sub i64 %t263, 1
  %t266 = load i64, ptr %l11, !tbaa !24
  %t269 = sdiv i64 %t265, %t266
  store i64 %t269, ptr %l133, !tbaa !24
  br label %bb68
bb67:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb68
bb68:
  %t271 = load i64, ptr %l133, !tbaa !24
  store i64 %t271, ptr %l130, !tbaa !24
  br label %bb69
bb69:
  %t272 = load i64, ptr %l130, !tbaa !24
  store i64 %t272, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb70
bb70:
  %t273 = load i64, ptr %l13, !tbaa !24
  %t274 = load i64, ptr %l12, !tbaa !24
  %t277 = icmp slt i64 %t273, %t274
  %t279 = xor i1 %t277, true
  br i1 %t279, label %bb71, label %bb72
bb71:
  br label %bb82
bb72:
  br label %bb73
bb73:
  %t281 = load i64, ptr %l9, !tbaa !24
  %t282 = load i64, ptr %l13, !tbaa !24
  %t283 = load i64, ptr %l11, !tbaa !24
  %t286 = mul i64 %t282, %t283
  %t289 = add i64 %t281, %t286
  store i64 %t289, ptr %l14, !tbaa !24
  %t291 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t291, ptr %l151, !tbaa !27
  %t292 = load i64, ptr %l14, !tbaa !24
  %t294 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !27
  %t296 = getelementptr i32, ptr %t295, i64 %t292
  %t297 = load i32, ptr %t296, !tbaa !33
  %t298 = load ptr, ptr %l2, !tbaa !29
  %t300 = getelementptr %"compiler/ast:Path", ptr %t298, i32 0, i32 1
  %t301 = load { i64, ptr }, ptr %t300, !tbaa !27
  store { i64, ptr } %t301, ptr %l155, !tbaa !27
  %t302 = load i64, ptr %l6, !tbaa !24
  %t304 = sub i64 %t302, 1
  %t306 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr i32, ptr %t307, i64 %t304
  %t309 = load i32, ptr %t308, !tbaa !33
  %t312 = icmp eq i32 %t297, %t309
  br i1 %t312, label %bb74, label %bb75
bb74:
  %t314 = load i64, ptr %l14, !tbaa !24
  %t316 = icmp slt i64 %t314, 64
  br i1 %t316, label %bb76, label %bb77
bb75:
  br label %bb80
bb76:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = getelementptr %"compiler/generic:Program", ptr %t318, i32 0, i32 2
  %t321 = load i32, ptr %l7, !tbaa !23
  %t322 = load i64, ptr %l14, !tbaa !24
  store i64 %t322, ptr %l166, !tbaa !24
  %t323 = load i64, ptr %l166, !tbaa !24
  %t324 = load i64, ptr %l166, !tbaa !24
  %t325 = shl i64 1, %t324
  %t329 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t320, i32 %t321, i64 %t325)
  store i32 %t329, ptr %l168
  br label %bb78
bb77:
  %t330 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t330, ptr %l162, !tbaa !23
  br label %bb79
bb78:
  %t332 = load i32, ptr %l168, !tbaa !23
  store i32 %t332, ptr %l162, !tbaa !23
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s0)
  %t333 = load i32, ptr %l162, !tbaa !23
  store i32 %t333, ptr %rv
  br label %ret
bb80:
  br label %bb81
bb81:
  %t334 = load i64, ptr %l13, !tbaa !24
  %t336 = add i64 %t334, 1
  store i64 %t336, ptr %l13, !tbaa !24
  br label %bb70
bb82:
  %t338 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t338, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpandList(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l12 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp eq i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t7, i32 %t8)
  store { i64, ptr } %t11, ptr %l12
  br label %bb4
bb4:
  %t12 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t12, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp slt i64 %t17, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb6, label %bb7
bb6:
  br label %bb11
bb7:
  br label %bb8
bb8:
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t25, ptr %l19, !tbaa !27
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr i32, ptr %t29, i64 %t26
  %t31 = load i32, ptr %t30, !tbaa !33
  %t33 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpand(ptr %v0, ptr %t33, i32 %t31, i64 %a2)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l4, !tbaa !24
  br label %bb5
bb11:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eextends(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %a0, i32 %a1)
  store ptr %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l5, !tbaa !29
  store ptr %t6, ptr %l2, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/ast:TypeDecl", ptr %t13, i32 0, i32 2
  %t16 = load i1, ptr %t15, !tbaa !21
  store i1 %t16, ptr %l9, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l9, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthLevels(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i1 %a2, i32 %a3, i64 %a4, ptr %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l20 = alloca i32
  %l23 = alloca ptr
  %l27 = alloca i32
  %l35 = alloca i1
  %l39 = alloca i32
  %l41 = alloca %"std/prelude/text:StringBuilder"
  %l42 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l50 = alloca i64
  %l53 = alloca i64
  %l75 = alloca ptr
  %l78 = alloca ptr
  %l80 = alloca { i64, ptr }
  %l82 = alloca i32
  %l85 = alloca ptr
  %l89 = alloca i32
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store ptr %a5, ptr %l5
  store ptr %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp sgt i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l20
  br label %bb4
bb4:
  %t12 = load i32, ptr %l20, !range !{i32 0, i32 33}
  store i32 %t12, ptr %l7
  %t13 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t15 = trunc i64 20 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l23, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l27
  br label %bb8
bb8:
  %t26 = load i32, ptr %l3, !tbaa !23
  %t27 = load i64, ptr %l4, !tbaa !24
  %t28 = load ptr, ptr %l5, !tbaa !29
  %t29 = load ptr, ptr %l6, !tbaa !29
  %t30 = load ptr, ptr %l23, !tbaa !29
  %t31 = load i32, ptr %l27, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthLevels(ptr %v0, ptr %v1, ptr %v2, ptr %t30, i32 %t31, i1 false, i32 %t26, i64 %t27, ptr %t28, ptr %t29)
  br label %bb9
bb9:
  br label %bb49
bb10:
  %t36 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t38 = trunc i64 19 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb44
bb13:
  br i1 %a2, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l1, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l39
  br label %bb16
bb15:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb17
bb16:
  %t50 = load i32, ptr %l39, !tbaa !23
  %t51 = icmp eq i32 %t50, 0
  store i1 %t51, ptr %l35, !tbaa !21
  br label %bb17
bb17:
  %t53 = load i1, ptr %l35, !tbaa !21
  br i1 %t53, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  %t54 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s4)
  store %"std/prelude/text:StringBuilder" %t54, ptr %l41
  br label %bb20
bb19:
  br label %bb41
bb20:
  %t55 = load %"std/prelude/text:StringBuilder", ptr %l41
  store %"std/prelude/text:StringBuilder" %t55, ptr %l8
  store ptr %l8, ptr %l42, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l3, !tbaa !23
  %t60 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t56, i32 %t57)
  store { i64, ptr } %t60, ptr %l45
  br label %bb21
bb21:
  %t61 = load ptr, ptr %l42, !tbaa !29
  %t62 = load { i64, ptr }, ptr %l45, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s4, ptr %v0, ptr %t61, { i64, ptr } %t62)
  br label %bb22
bb22:
  store i64 0, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l4, !tbaa !24
  store i64 %t63, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t65 = load i64, ptr %l10, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = icmp sgt i64 %t65, %t66
  br i1 %t69, label %bb23, label %bb24
bb23:
  %t71 = load i64, ptr %l11, !tbaa !24
  %t73 = icmp sgt i64 %t71, 0
  br i1 %t73, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb28
bb25:
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load i64, ptr %l11, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t85 = sub i64 %t83, 1
  %t86 = load i64, ptr %l11, !tbaa !24
  %t89 = sdiv i64 %t85, %t86
  store i64 %t89, ptr %l53, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb27
bb27:
  %t91 = load i64, ptr %l53, !tbaa !24
  store i64 %t91, ptr %l50, !tbaa !24
  br label %bb28
bb28:
  %t92 = load i64, ptr %l50, !tbaa !24
  store i64 %t92, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s6
  %t93 = load i64, ptr %l13, !tbaa !24
  %t94 = load i64, ptr %l12, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s6)
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t101 = load i64, ptr %l9, !tbaa !24
  %t102 = load i64, ptr %l13, !tbaa !24
  %t103 = load i64, ptr %l11, !tbaa !24
  %t106 = mul i64 %t102, %t103
  %t109 = add i64 %t101, %t106
  store i64 %t109, ptr %l14, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s4, ptr %s6, ptr %l8, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) })
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s6)
  br label %bb34
bb34:
  %t112 = load i64, ptr %l13, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l13, !tbaa !24
  br label %bb29
bb35:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s4, ptr %s4, ptr %l8, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d4, i32 0, i32 1) })
  br label %bb36
bb36:
  %t117 = load ptr, ptr %l5, !tbaa !29
  store ptr %t117, ptr %l75, !tbaa !29
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 0
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = getelementptr %"compiler/load:Loader", ptr %t121, i32 0, i32 3
  %t124 = load ptr, ptr %t123, !tbaa !29
  store ptr %t124, ptr %l78, !tbaa !29
  %t126 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s4, ptr %s4, ptr %l8)
  store { i64, ptr } %t126, ptr %l80
  br label %bb37
bb37:
  %t127 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 0
  %t129 = extractvalue { i64, ptr } %t127, 1
  %t130 = mul i64 %t128, 1
  %t131 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t130)
  call void @llvm.memcpy.p0.p0.i64(ptr %t131, ptr %t129, i64 %t130, i1 false)
  %t132 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  %t134 = load ptr, ptr %l78, !tbaa !29
  %t136 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s4, ptr %t134, { i64, ptr } %t133)
  store i32 %t136, ptr %l82
  br label %bb38
bb38:
  %t137 = load ptr, ptr %l75, !tbaa !29
  %t138 = load i32, ptr %l82, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v1, ptr %t137, i32 %t138)
  br label %bb39
bb39:
  %t139 = load ptr, ptr %l6, !tbaa !29
  %t140 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t139, i64 %t140)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s4)
  br label %bb41
bb41:
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l85, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/generic:Program", ptr %t144, i32 0, i32 2
  %t147 = load i32, ptr %l1, !tbaa !23
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t146, i32 %t147)
  store i32 %t150, ptr %l89
  br label %bb42
bb42:
  %t151 = load i32, ptr %l3, !tbaa !23
  %t152 = load i64, ptr %l4, !tbaa !24
  %t154 = add i64 %t152, 1
  %t155 = load ptr, ptr %l5, !tbaa !29
  %t156 = load ptr, ptr %l6, !tbaa !29
  %t157 = load ptr, ptr %l85, !tbaa !29
  %t158 = load i32, ptr %l89, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthLevels(ptr %v0, ptr %v1, ptr %v2, ptr %t157, i32 %t158, i1 true, i32 %t151, i64 %t154, ptr %t155, ptr %t156)
  br label %bb43
bb43:
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_e8a0dc9ccb955f9f_ce9beed0e9e57113)
  unreachable
bb49:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emayHold(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l5 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 2
  %t7 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t3, i32 %a1)
  store i1 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeets(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, i32 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/generic:Context"
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca i32
  %l23 = alloca i64
  %l26 = alloca %"compiler/generic:Context"
  %l27 = alloca ptr
  %l33 = alloca i32
  %l35 = alloca i64
  %l37 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca i32
  %l45 = alloca { i64, ptr }
  %l47 = alloca i1
  %l51 = alloca { i64, ptr }
  %l52 = alloca i1
  %l54 = alloca i1
  %l59 = alloca i1
  %l65 = alloca { i64, ptr }
  %l66 = alloca i1
  %l67 = alloca i1
  %l72 = alloca i1
  %l74 = alloca i1
  %l77 = alloca i1
  %l82 = alloca i32
  %l88 = alloca ptr
  %l92 = alloca i32
  %l93 = alloca { i64, ptr }
  %l95 = alloca ptr
  %l99 = alloca i32
  %l100 = alloca { i64, ptr }
  %l112 = alloca i1
  %l114 = alloca { i64, ptr }
  %l116 = alloca i1
  %l122 = alloca i1
  %l125 = alloca { i64, ptr }
  %l127 = alloca i32
  %l130 = alloca i1
  %l133 = alloca { i64, ptr }
  %l135 = alloca i64
  %l145 = alloca i64
  %l148 = alloca i64
  %l167 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %l174 = alloca i1
  %l182 = alloca i32
  %l186 = alloca i32
  %l191 = alloca i1
  %l192 = alloca i1
  %l196 = alloca i1
  %l200 = alloca i1
  %l201 = alloca ptr
  %l205 = alloca i32
  %l209 = alloca i32
  %l210 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t14 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t3 = load ptr, ptr %l4, !tbaa !29
  %t5 = getelementptr %"compiler/ast:Func", ptr %t3, i32 0, i32 2
  %t6 = load i32, ptr %t5, !tbaa !23
  %t10 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t1, i32 %t2, i32 %t6)
  store i64 %t10, ptr %l23
  br label %bb1
bb1:
  %t11 = load i64, ptr %l23, !tbaa !24
  store i64 %t11, ptr %l5, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t14, ptr %v0, ptr %s0, ptr %t12, i32 %t13)
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t14, i64 160, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l26, i64 160, i1 false)
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l27, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load ptr, ptr %l4, !tbaa !29
  %t21 = getelementptr %"compiler/ast:Func", ptr %t19, i32 0, i32 3
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t28 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %s0, ptr %v1, ptr %t18, ptr %l6, ptr %t22, i32 %t23, i32 0)
  store i32 %t28, ptr %l33
  br label %bb3
bb3:
  %t29 = load i32, ptr %l2, !tbaa !23
  %t31 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t29)
  store i64 %t31, ptr %l35
  br label %bb4
bb4:
  %t33 = load ptr, ptr %l27, !tbaa !29
  %t34 = load i32, ptr %l33, !tbaa !23
  %t35 = load i64, ptr %l35, !tbaa !24
  %t37 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t33, i32 %t34, i64 %t35, i32 %a3)
  store i32 %t37, ptr %l37
  br label %bb5
bb5:
  %t38 = load i32, ptr %l37, !tbaa !23
  store i32 %t38, ptr %l7, !tbaa !23
  %t39 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t39, 0
  br i1 %t41, label %bb6, label %bb7
bb6:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l40, !tbaa !29
  %t44 = load i32, ptr %l1, !tbaa !23
  store i32 %t44, ptr %l41, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t48 = getelementptr %"compiler/ast:Func", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %t48, !tbaa !23
  %t52 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t45, i32 %t49)
  store { i64, ptr } %t52, ptr %l45
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t53 = load i32, ptr %l7, !tbaa !23
  %t54 = load ptr, ptr %l40, !tbaa !29
  %t55 = load i32, ptr %l41, !tbaa !23
  %t56 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t58 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esuppliedMeets(ptr %v0, ptr %v0, ptr %t54, i32 %t55, { i64, ptr } %t56, i32 %t53)
  store i1 %t58, ptr %l47
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load i1, ptr %l47, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
bb10:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t63 = getelementptr %"compiler/ast:Func", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %t63, !tbaa !23
  %t67 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t60, i32 %t64)
  store { i64, ptr } %t67, ptr %l51
  br label %bb11
bb11:
  %t68 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t69 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t68)
  store i1 %t69, ptr %l52
  br label %bb12
bb12:
  %t70 = load i1, ptr %l52, !tbaa !21
  %t71 = xor i1 %t70, true
  br i1 %t71, label %bb13, label %bb14
bb13:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l1, !tbaa !23
  %t75 = load i32, ptr %l2, !tbaa !23
  %t76 = load i64, ptr %l5, !tbaa !24
  %t81 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esealedBy(ptr %v0, ptr %t73, i32 %t74, i32 %t75, i64 %t76)
  store i1 %t81, ptr %l59
  br label %bb15
bb14:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb16
bb15:
  %t82 = load i1, ptr %l59, !tbaa !21
  %t83 = xor i1 %t82, true
  store i1 %t83, ptr %l54, !tbaa !21
  br label %bb16
bb16:
  %t85 = load i1, ptr %l54, !tbaa !21
  br i1 %t85, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l4, !tbaa !29
  %t90 = getelementptr %"compiler/ast:Func", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %t90, !tbaa !23
  %t94 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t87, i32 %t91)
  store { i64, ptr } %t94, ptr %l65
  br label %bb20
bb20:
  %t95 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t96 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t95, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t96, ptr %l66
  br label %bb21
bb21:
  %t97 = load i1, ptr %l66, !tbaa !21
  br i1 %t97, label %bb22, label %bb23
bb22:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l1, !tbaa !23
  %t100 = load ptr, ptr %l4, !tbaa !29
  %t102 = getelementptr %"compiler/ast:Func", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %t102, !tbaa !23
  %t107 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownMethod(ptr %v0, ptr %t98, i32 %t99, i32 %t103)
  store i1 %t107, ptr %l72
  br label %bb24
bb23:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb25
bb24:
  %t108 = load i1, ptr %l72, !tbaa !21
  %t109 = xor i1 %t108, true
  store i1 %t109, ptr %l67, !tbaa !21
  br label %bb25
bb25:
  %t111 = load i1, ptr %l67, !tbaa !21
  br i1 %t111, label %bb26, label %bb27
bb26:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i32, ptr %l1, !tbaa !23
  %t116 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %t112, i32 %t113)
  store i1 %t116, ptr %l77
  br label %bb28
bb27:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb29
bb28:
  %t117 = load i1, ptr %l77, !tbaa !21
  store i1 %t117, ptr %l74, !tbaa !21
  br label %bb29
bb29:
  %t118 = load i1, ptr %l74, !tbaa !21
  br i1 %t118, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i64, ptr %l5, !tbaa !24
  %t122 = load i32, ptr %l1, !tbaa !23
  %t126 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %t120, i64 %t121, i32 %t122)
  store i32 %t126, ptr %l82
  br label %bb33
bb33:
  %t127 = load i32, ptr %l82, !tbaa !23
  store i32 %t127, ptr %l8, !tbaa !23
  %t128 = load i32, ptr %l8, !tbaa !23
  %t129 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t132 = icmp eq i32 %t128, %t129
  br i1 %t132, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  store ptr %t137, ptr %l88, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 2
  %t141 = load i32, ptr %l8, !tbaa !23
  %t144 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t140, i32 %t141)
  store i32 %t144, ptr %l92
  br label %bb37
bb37:
  %t145 = load ptr, ptr %l88, !tbaa !29
  %t146 = load i32, ptr %l92, !tbaa !23
  %t147 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t145, i32 %t146)
  store { i64, ptr } %t147, ptr %l93
  br label %bb38
bb38:
  %t148 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t148, ptr %l9, !tbaa !27
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/generic:Program", ptr %t149, i32 0, i32 2
  store ptr %t151, ptr %l95, !tbaa !29
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 2
  %t155 = load i32, ptr %l7, !tbaa !23
  %t158 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t154, i32 %t155)
  store i32 %t158, ptr %l99
  br label %bb39
bb39:
  %t159 = load ptr, ptr %l95, !tbaa !29
  %t160 = load i32, ptr %l99, !tbaa !23
  %t161 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t159, i32 %t160)
  store { i64, ptr } %t161, ptr %l100
  br label %bb40
bb40:
  %t162 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t162, ptr %l10, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t170 = add i64 %t168, 1
  %t173 = icmp ne i64 %t165, %t170
  br i1 %t173, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  %t176 = load ptr, ptr %l4, !tbaa !29
  %t178 = getelementptr %"compiler/ast:Func", ptr %t176, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t181 = icmp eq ptr %t179, null
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb44, label %bb45
bb44:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t186, ptr %l114, !tbaa !27
  %t187 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i32, ptr %t188, i64 0
  %t190 = load i32, ptr %t189, !tbaa !33
  %t193 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewritableRecv(ptr %v0, ptr %t185, i32 %t190)
  store i1 %t193, ptr %l116
  br label %bb46
bb45:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb47
bb46:
  %t194 = load i1, ptr %l116, !tbaa !21
  %t195 = xor i1 %t194, true
  store i1 %t195, ptr %l112, !tbaa !21
  br label %bb47
bb47:
  %t197 = load i1, ptr %l112, !tbaa !21
  br i1 %t197, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  %t199 = load ptr, ptr %l4, !tbaa !29
  %t201 = getelementptr %"compiler/ast:Func", ptr %t199, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = icmp eq ptr %t202, null
  br i1 %t204, label %bb51, label %bb52
bb51:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/generic:Program", ptr %t206, i32 0, i32 2
  %t209 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t209, ptr %l125, !tbaa !27
  %t210 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr i32, ptr %t211, i64 0
  %t213 = load i32, ptr %t212, !tbaa !33
  %t216 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t208, i32 %t213)
  store i32 %t216, ptr %l127
  br label %bb53
bb52:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb54
bb53:
  %t217 = load i32, ptr %l127, !range !{i32 0, i32 33}
  %t219 = trunc i64 20 to i32
  %t220 = icmp eq i32 %t217, %t219
  store i1 %t220, ptr %l122, !tbaa !21
  br label %bb54
bb54:
  %t222 = load i1, ptr %l122, !tbaa !21
  br i1 %t222, label %bb55, label %bb56
bb55:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/generic:Program", ptr %t223, i32 0, i32 2
  %t226 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t226, ptr %l133, !tbaa !27
  %t227 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = getelementptr i32, ptr %t228, i64 0
  %t230 = load i32, ptr %t229, !tbaa !33
  %t233 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t225, i32 %t230)
  store i64 %t233, ptr %l135
  br label %bb57
bb56:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb58
bb57:
  %t234 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t235 = load i64, ptr %l135, !tbaa !24
  %t237 = and i64 %t235, %t234
  %t239 = icmp ne i64 %t237, 0
  store i1 %t239, ptr %l130, !tbaa !21
  br label %bb58
bb58:
  %t241 = load i1, ptr %l130, !tbaa !21
  br i1 %t241, label %bb59, label %bb60
bb59:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  store i64 0, ptr %l11, !tbaa !24
  %t243 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t243, 0
  store i64 %t245, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t247 = load i64, ptr %l12, !tbaa !24
  %t248 = load i64, ptr %l11, !tbaa !24
  %t251 = icmp sgt i64 %t247, %t248
  br i1 %t251, label %bb62, label %bb63
bb62:
  %t253 = load i64, ptr %l13, !tbaa !24
  %t255 = icmp sgt i64 %t253, 0
  br i1 %t255, label %bb64, label %bb65
bb63:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb67
bb64:
  %t257 = load i64, ptr %l12, !tbaa !24
  %t258 = load i64, ptr %l11, !tbaa !24
  %t261 = sub i64 %t257, %t258
  %t262 = load i64, ptr %l13, !tbaa !24
  %t265 = add i64 %t261, %t262
  %t267 = sub i64 %t265, 1
  %t268 = load i64, ptr %l13, !tbaa !24
  %t271 = sdiv i64 %t267, %t268
  store i64 %t271, ptr %l148, !tbaa !24
  br label %bb66
bb65:
  store i64 0, ptr %l148, !tbaa !24
  br label %bb66
bb66:
  %t273 = load i64, ptr %l148, !tbaa !24
  store i64 %t273, ptr %l145, !tbaa !24
  br label %bb67
bb67:
  %t274 = load i64, ptr %l145, !tbaa !24
  store i64 %t274, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb68
bb68:
  %t275 = load i64, ptr %l15, !tbaa !24
  %t276 = load i64, ptr %l14, !tbaa !24
  %t279 = icmp slt i64 %t275, %t276
  %t281 = xor i1 %t279, true
  br i1 %t281, label %bb69, label %bb70
bb69:
  br label %bb77
bb70:
  br label %bb71
bb71:
  %t283 = load i64, ptr %l11, !tbaa !24
  %t284 = load i64, ptr %l15, !tbaa !24
  %t285 = load i64, ptr %l13, !tbaa !24
  %t288 = mul i64 %t284, %t285
  %t291 = add i64 %t283, %t288
  store i64 %t291, ptr %l16, !tbaa !24
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t294, ptr %l167, !tbaa !27
  %t295 = load i64, ptr %l16, !tbaa !24
  %t297 = add i64 %t295, 1
  %t299 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !27
  %t301 = getelementptr i32, ptr %t300, i64 %t297
  %t302 = load i32, ptr %t301, !tbaa !33
  %t303 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t303, ptr %l171, !tbaa !27
  %t304 = load i64, ptr %l16, !tbaa !24
  %t306 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr i32, ptr %t307, i64 %t304
  %t309 = load i32, ptr %t308, !tbaa !33
  %t313 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esameUpToShape(ptr %v0, ptr %t293, i32 %t302, i32 %t309)
  store i1 %t313, ptr %l174
  br label %bb72
bb72:
  %t314 = load i1, ptr %l174, !tbaa !21
  %t315 = xor i1 %t314, true
  br i1 %t315, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb74:
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t318 = load i64, ptr %l15, !tbaa !24
  %t320 = add i64 %t318, 1
  store i64 %t320, ptr %l15, !tbaa !24
  br label %bb68
bb77:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/generic:Program", ptr %t322, i32 0, i32 2
  %t325 = load i32, ptr %l8, !tbaa !23
  %t328 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t324, i32 %t325)
  store i32 %t328, ptr %l182
  br label %bb78
bb78:
  %t329 = load i32, ptr %l182, !tbaa !23
  store i32 %t329, ptr %l17, !tbaa !23
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/generic:Program", ptr %t330, i32 0, i32 2
  %t333 = load i32, ptr %l7, !tbaa !23
  %t336 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t332, i32 %t333)
  store i32 %t336, ptr %l186
  br label %bb79
bb79:
  %t337 = load i32, ptr %l186, !tbaa !23
  store i32 %t337, ptr %l18, !tbaa !23
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t340 = getelementptr %"compiler/generic:Program", ptr %t338, i32 0, i32 2
  %t341 = load i32, ptr %l17, !tbaa !23
  %t342 = load i32, ptr %l18, !tbaa !23
  %t346 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t340, i32 %t341, i32 %t342)
  store i1 %t346, ptr %l191
  br label %bb80
bb80:
  %t347 = load i1, ptr %l191, !tbaa !21
  br i1 %t347, label %bb81, label %bb82
bb81:
  store i1 true, ptr %l192, !tbaa !21
  br label %bb86
bb82:
  %t348 = load i32, ptr %l17, !tbaa !23
  %t349 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t352 = icmp eq i32 %t348, %t349
  br i1 %t352, label %bb83, label %bb84
bb83:
  %t354 = load i32, ptr %l18, !tbaa !23
  %t355 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t358 = icmp eq i32 %t354, %t355
  store i1 %t358, ptr %l196, !tbaa !21
  br label %bb85
bb84:
  store i1 false, ptr %l196, !tbaa !21
  br label %bb85
bb85:
  %t360 = load i1, ptr %l196, !tbaa !21
  store i1 %t360, ptr %l192, !tbaa !21
  br label %bb86
bb86:
  %t361 = load i1, ptr %l192, !tbaa !21
  br i1 %t361, label %bb87, label %bb88
bb87:
  %t362 = load ptr, ptr %l0, !tbaa !29
  store ptr %t362, ptr %l201, !tbaa !29
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/generic:Program", ptr %t363, i32 0, i32 2
  %t366 = load i32, ptr %l8, !tbaa !23
  %t369 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t365, i32 %t366)
  store i32 %t369, ptr %l205
  br label %bb89
bb88:
  store i1 false, ptr %l200, !tbaa !21
  br label %bb92
bb89:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t372 = getelementptr %"compiler/generic:Program", ptr %t370, i32 0, i32 2
  %t373 = load i32, ptr %l7, !tbaa !23
  %t376 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t372, i32 %t373)
  store i32 %t376, ptr %l209
  br label %bb90
bb90:
  %t377 = load ptr, ptr %l201, !tbaa !29
  %t378 = load i32, ptr %l205, !tbaa !23
  %t379 = load i32, ptr %l209, !tbaa !23
  %t380 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrsHeld(ptr %v0, ptr %t377, i32 %t378, i32 %t379)
  store i1 %t380, ptr %l210
  br label %bb91
bb91:
  %t381 = load i1, ptr %l210, !tbaa !21
  store i1 %t381, ptr %l200, !tbaa !21
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s0)
  %t382 = load i1, ptr %l200, !tbaa !21
  store i1 %t382, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l14 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %v1, ptr %v2, ptr %t1, { i64, ptr } %a1, { i64, ptr } %a2)
  %t8 = extractvalue { i32, i32 } %t7, 1
  %t9 = extractvalue { i32, i32 } %t7, 0
  store i32 %t9, ptr %l9
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i32 %t8, ptr %l8
  br label %bb1
bb1:
  %t12 = load i32, ptr %l8, !tbaa !23
  store i32 %t12, ptr %l4, !tbaa !23
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t13, ptr %rv
  br label %ret
bb4:
  %t15 = load i32, ptr %l4, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t18, i32 %t15, i32 0)
  store i32 %t22, ptr %l14
  br label %bb5
bb5:
  %t23 = load i32, ptr %l14, !tbaa !23
  store i32 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca i1
  %l28 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca %"compiler/names:Ref"
  %l38 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i32
  %l45 = alloca i32
  %l46 = alloca i32
  %l48 = alloca i32
  %l54 = alloca i1
  %l57 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca i1
  %l78 = alloca ptr
  %l79 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca i1
  %l106 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %l119 = alloca i1
  %l120 = alloca i1
  %l125 = alloca i1
  %l126 = alloca ptr
  %l127 = alloca i1
  %l140 = alloca i1
  %l141 = alloca i1
  %l146 = alloca i1
  %l147 = alloca i1
  %l152 = alloca i1
  %l153 = alloca ptr
  %l154 = alloca i1
  %l165 = alloca i1
  %l167 = alloca i1
  %l172 = alloca i1
  %l173 = alloca i1
  %l177 = alloca i1
  %l178 = alloca ptr
  %l179 = alloca i1
  %l190 = alloca i1
  %l191 = alloca i1
  %l195 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t7 = load ptr, ptr %l19, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l19, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 30}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l20, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l20, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32 }, ptr %t17, i32 0, i32 0
  %t19 = load %"compiler/source:Span", ptr %t18
  store %"compiler/source:Span" %t19, ptr %l3
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32 }, ptr %t23, i32 0, i32 1
  %t25 = load i32, ptr %t24
  store i32 %t25, ptr %l4, !tbaa !23
  br label %bb8
bb7:
  br label %bb25
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  store ptr %t30, ptr %l28, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Context", ptr %t32, i32 0, i32 0
  %t35 = load i64, ptr %t34, !tbaa !24
  %t38 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t31, i64 %t35)
  store i64 %t38, ptr %l32
  br label %bb9
bb9:
  %t39 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t40 = load i32, ptr %t39, !tbaa !23
  %t41 = load ptr, ptr %l28, !tbaa !29
  %t42 = load i64, ptr %l32, !tbaa !24
  %t44 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t41, i64 %t42, i32 %t40)
  store %"compiler/names:Ref" %t44, ptr %l34
  br label %bb10
bb10:
  %t45 = getelementptr %"compiler/names:Ref", ptr %l34, i32 0, i32 0
  %t46 = load i32, ptr %t45, !range !{i32 0, i32 9}
  store i32 %t46, ptr %l5
  %t48 = load i32, ptr %l5, !range !{i32 0, i32 9}
  %t50 = trunc i64 1 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  store ptr %t55, ptr %l40, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Context", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l4, !tbaa !23
  %t62 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v1, ptr %t58, i32 %t59)
  %t63 = extractvalue { i32, i32 } %t62, 1
  %t64 = extractvalue { i32, i32 } %t62, 0
  store i32 %t64, ptr %l46
  %t65 = icmp ne i32 %t64, 0
  br i1 %t65, label %bb14, label %ok.66, !prof !99
ok.66:
  store i32 %t63, ptr %l45
  br label %bb13
bb12:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb18
bb13:
  %t67 = load i32, ptr %l45, !tbaa !23
  store i32 %t67, ptr %l41, !tbaa !23
  br label %bb16
bb14:
  br label %bb15
bb15:
  %t68 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t68, ptr %l41, !tbaa !23
  br label %bb16
bb16:
  %t70 = load ptr, ptr %l40, !tbaa !29
  %t71 = load i32, ptr %l41, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t72, ptr %l48
  br label %bb17
bb17:
  %t73 = load i32, ptr %l48, !range !{i32 0, i32 33}
  %t75 = trunc i64 26 to i32
  %t76 = icmp eq i32 %t73, %t75
  store i1 %t76, ptr %l38, !tbaa !21
  br label %bb18
bb18:
  %t78 = load i1, ptr %l38, !tbaa !21
  br i1 %t78, label %bb19, label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t80 = load i32, ptr %l5, !range !{i32 0, i32 9}
  %t82 = trunc i64 1 to i32
  %t83 = icmp eq i32 %t80, %t82
  br i1 %t83, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb24
bb23:
  %t85 = load i32, ptr %l5, !range !{i32 0, i32 9}
  %t87 = trunc i64 0 to i32
  %t88 = icmp eq i32 %t85, %t87
  store i1 %t88, ptr %l54, !tbaa !21
  br label %bb24
bb24:
  %t90 = load i1, ptr %l54, !tbaa !21
  store i1 %t90, ptr %rv
  br label %ret
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_a46b2f31ebf5190e_f847dc4b865f1d9a)
  unreachable
bb30:
  %t91 = load ptr, ptr %l2, !tbaa !29
  store ptr %t91, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t92 = load ptr, ptr %l58, !tbaa !29
  %t93 = icmp ne ptr %t92, null
  br i1 %t93, label %bb31, label %bb32
bb31:
  %t95 = load ptr, ptr %l58, !tbaa !29
  %t96 = load i64, ptr %t95, !range !{i64 0, i64 30}
  %t98 = icmp eq i64 %t96, 1
  store i1 %t98, ptr %l59, !tbaa !21
  br label %bb32
bb32:
  %t99 = load i1, ptr %l59, !tbaa !21
  br i1 %t99, label %bb33, label %bb34
bb33:
  br label %bb39
bb34:
  %t100 = load ptr, ptr %l2, !tbaa !29
  store ptr %t100, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t101 = load ptr, ptr %l62, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb35, label %bb36
bb35:
  %t104 = load ptr, ptr %l62, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 30}
  %t107 = icmp eq i64 %t105, 25
  store i1 %t107, ptr %l63, !tbaa !21
  br label %bb36
bb36:
  %t108 = load i1, ptr %l63, !tbaa !21
  br i1 %t108, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb124
bb40:
  %t109 = load ptr, ptr %l2, !tbaa !29
  store ptr %t109, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t110 = load ptr, ptr %l66, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb41, label %bb42
bb41:
  %t113 = load ptr, ptr %l66, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 30}
  %t116 = icmp eq i64 %t114, 2
  store i1 %t116, ptr %l67, !tbaa !21
  br label %bb42
bb42:
  %t117 = load i1, ptr %l67, !tbaa !21
  br i1 %t117, label %bb43, label %bb44
bb43:
  %t118 = load ptr, ptr %l2, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", ptr }, ptr %t120, i32 0, i32 1
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l6, !tbaa !29
  br label %bb65
bb44:
  %t124 = load ptr, ptr %l2, !tbaa !29
  store ptr %t124, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t125 = load ptr, ptr %l72, !tbaa !29
  %t126 = icmp ne ptr %t125, null
  br i1 %t126, label %bb45, label %bb46
bb45:
  %t128 = load ptr, ptr %l72, !tbaa !29
  %t129 = load i64, ptr %t128, !range !{i64 0, i64 30}
  %t131 = icmp eq i64 %t129, 26
  store i1 %t131, ptr %l73, !tbaa !21
  br label %bb46
bb46:
  %t132 = load i1, ptr %l73, !tbaa !21
  br i1 %t132, label %bb47, label %bb48
bb47:
  %t133 = load ptr, ptr %l2, !tbaa !29
  %t135 = getelementptr { i64, [4 x i64] }, ptr %t133, i32 0, i32 1
  %t136 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t135, i32 0, i32 2
  %t137 = load ptr, ptr %t136
  store ptr %t137, ptr %l6, !tbaa !29
  br label %bb65
bb48:
  %t139 = load ptr, ptr %l2, !tbaa !29
  store ptr %t139, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t140 = load ptr, ptr %l78, !tbaa !29
  %t141 = icmp ne ptr %t140, null
  br i1 %t141, label %bb49, label %bb50
bb49:
  %t143 = load ptr, ptr %l78, !tbaa !29
  %t144 = load i64, ptr %t143, !range !{i64 0, i64 30}
  %t146 = icmp eq i64 %t144, 28
  store i1 %t146, ptr %l79, !tbaa !21
  br label %bb50
bb50:
  %t147 = load i1, ptr %l79, !tbaa !21
  br i1 %t147, label %bb51, label %bb52
bb51:
  %t148 = load ptr, ptr %l2, !tbaa !29
  %t150 = getelementptr { i64, [4 x i64] }, ptr %t148, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", ptr }, ptr %t150, i32 0, i32 1
  %t152 = load ptr, ptr %t151
  store ptr %t152, ptr %l6, !tbaa !29
  br label %bb65
bb52:
  %t154 = load ptr, ptr %l2, !tbaa !29
  store ptr %t154, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t155 = load ptr, ptr %l84, !tbaa !29
  %t156 = icmp ne ptr %t155, null
  br i1 %t156, label %bb53, label %bb54
bb53:
  %t158 = load ptr, ptr %l84, !tbaa !29
  %t159 = load i64, ptr %t158, !range !{i64 0, i64 30}
  %t161 = icmp eq i64 %t159, 3
  store i1 %t161, ptr %l85, !tbaa !21
  br label %bb54
bb54:
  %t162 = load i1, ptr %l85, !tbaa !21
  br i1 %t162, label %bb55, label %bb56
bb55:
  %t163 = load ptr, ptr %l2, !tbaa !29
  %t165 = getelementptr { i64, [4 x i64] }, ptr %t163, i32 0, i32 1
  %t166 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t165, i32 0, i32 2
  %t167 = load ptr, ptr %t166
  store ptr %t167, ptr %l6, !tbaa !29
  br label %bb65
bb56:
  %t169 = load ptr, ptr %l2, !tbaa !29
  store ptr %t169, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t170 = load ptr, ptr %l90, !tbaa !29
  %t171 = icmp ne ptr %t170, null
  br i1 %t171, label %bb57, label %bb58
bb57:
  %t173 = load ptr, ptr %l90, !tbaa !29
  %t174 = load i64, ptr %t173, !range !{i64 0, i64 30}
  %t176 = icmp eq i64 %t174, 14
  store i1 %t176, ptr %l91, !tbaa !21
  br label %bb58
bb58:
  %t177 = load i1, ptr %l91, !tbaa !21
  br i1 %t177, label %bb59, label %bb60
bb59:
  %t178 = load ptr, ptr %l2, !tbaa !29
  %t180 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t180, i32 0, i32 1
  %t182 = load ptr, ptr %t181
  store ptr %t182, ptr %l6, !tbaa !29
  br label %bb65
bb60:
  %t184 = load ptr, ptr %l2, !tbaa !29
  store ptr %t184, ptr %l96, !tbaa !29
  store i1 false, ptr %l97, !tbaa !21
  %t185 = load ptr, ptr %l96, !tbaa !29
  %t186 = icmp ne ptr %t185, null
  br i1 %t186, label %bb61, label %bb62
bb61:
  %t188 = load ptr, ptr %l96, !tbaa !29
  %t189 = load i64, ptr %t188, !range !{i64 0, i64 30}
  %t191 = icmp eq i64 %t189, 13
  store i1 %t191, ptr %l97, !tbaa !21
  br label %bb62
bb62:
  %t192 = load i1, ptr %l97, !tbaa !21
  br i1 %t192, label %bb63, label %bb64
bb63:
  %t193 = load ptr, ptr %l2, !tbaa !29
  %t195 = getelementptr { i64, [4 x i64] }, ptr %t193, i32 0, i32 1
  %t196 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t195, i32 0, i32 1
  %t197 = load ptr, ptr %t196
  store ptr %t197, ptr %l6, !tbaa !29
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t201 = load ptr, ptr %l6, !tbaa !29
  %t206 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t199, ptr %t200, ptr %t201)
  store i1 %t206, ptr %l106
  br label %bb66
bb66:
  %t207 = load i1, ptr %l106, !tbaa !21
  store i1 %t207, ptr %l57, !tbaa !21
  br label %bb124
bb67:
  %t208 = load ptr, ptr %l2, !tbaa !29
  store ptr %t208, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t209 = load ptr, ptr %l107, !tbaa !29
  %t210 = icmp ne ptr %t209, null
  br i1 %t210, label %bb68, label %bb69
bb68:
  %t212 = load ptr, ptr %l107, !tbaa !29
  %t213 = load i64, ptr %t212, !range !{i64 0, i64 30}
  %t215 = icmp eq i64 %t213, 5
  store i1 %t215, ptr %l108, !tbaa !21
  br label %bb69
bb69:
  %t216 = load i1, ptr %l108, !tbaa !21
  br i1 %t216, label %bb70, label %bb71
bb70:
  %t217 = load ptr, ptr %l2, !tbaa !29
  %t219 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 1
  %t220 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t219, i32 0, i32 2
  %t221 = load ptr, ptr %t220
  store ptr %t221, ptr %l7, !tbaa !29
  %t223 = load ptr, ptr %l2, !tbaa !29
  %t225 = getelementptr { i64, [4 x i64] }, ptr %t223, i32 0, i32 1
  %t226 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t225, i32 0, i32 3
  %t227 = load ptr, ptr %t226
  store ptr %t227, ptr %l8, !tbaa !29
  br label %bb72
bb71:
  br label %bb78
bb72:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load ptr, ptr %l1, !tbaa !29
  %t231 = load ptr, ptr %l7, !tbaa !29
  %t236 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t229, ptr %t230, ptr %t231)
  store i1 %t236, ptr %l119
  br label %bb73
bb73:
  %t237 = load i1, ptr %l119, !tbaa !21
  br i1 %t237, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l120, !tbaa !21
  br label %bb77
bb75:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t240 = load ptr, ptr %l8, !tbaa !29
  %t245 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t238, ptr %t239, ptr %t240)
  store i1 %t245, ptr %l125
  br label %bb76
bb76:
  %t246 = load i1, ptr %l125, !tbaa !21
  store i1 %t246, ptr %l120, !tbaa !21
  br label %bb77
bb77:
  %t247 = load i1, ptr %l120, !tbaa !21
  store i1 %t247, ptr %l57, !tbaa !21
  br label %bb124
bb78:
  %t248 = load ptr, ptr %l2, !tbaa !29
  store ptr %t248, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t249 = load ptr, ptr %l126, !tbaa !29
  %t250 = icmp ne ptr %t249, null
  br i1 %t250, label %bb79, label %bb80
bb79:
  %t252 = load ptr, ptr %l126, !tbaa !29
  %t253 = load i64, ptr %t252, !range !{i64 0, i64 30}
  %t255 = icmp eq i64 %t253, 8
  store i1 %t255, ptr %l127, !tbaa !21
  br label %bb80
bb80:
  %t256 = load i1, ptr %l127, !tbaa !21
  br i1 %t256, label %bb81, label %bb82
bb81:
  %t257 = load ptr, ptr %l2, !tbaa !29
  %t259 = getelementptr { i64, [4 x i64] }, ptr %t257, i32 0, i32 1
  %t260 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t259, i32 0, i32 1
  %t261 = load ptr, ptr %t260
  store ptr %t261, ptr %l9, !tbaa !29
  %t263 = load ptr, ptr %l2, !tbaa !29
  %t265 = getelementptr { i64, [4 x i64] }, ptr %t263, i32 0, i32 1
  %t266 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t265, i32 0, i32 2
  %t267 = load ptr, ptr %t266
  store ptr %t267, ptr %l10, !tbaa !29
  %t269 = load ptr, ptr %l2, !tbaa !29
  %t271 = getelementptr { i64, [4 x i64] }, ptr %t269, i32 0, i32 1
  %t272 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t271, i32 0, i32 3
  %t273 = load ptr, ptr %t272
  store ptr %t273, ptr %l11, !tbaa !29
  br label %bb83
bb82:
  br label %bb93
bb83:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load ptr, ptr %l1, !tbaa !29
  %t277 = load ptr, ptr %l9, !tbaa !29
  %t282 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t275, ptr %t276, ptr %t277)
  store i1 %t282, ptr %l140
  br label %bb84
bb84:
  %t283 = load i1, ptr %l140, !tbaa !21
  br i1 %t283, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l141, !tbaa !21
  br label %bb88
bb86:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load ptr, ptr %l1, !tbaa !29
  %t286 = load ptr, ptr %l10, !tbaa !29
  %t291 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t284, ptr %t285, ptr %t286)
  store i1 %t291, ptr %l146
  br label %bb87
bb87:
  %t292 = load i1, ptr %l146, !tbaa !21
  store i1 %t292, ptr %l141, !tbaa !21
  br label %bb88
bb88:
  %t293 = load i1, ptr %l141, !tbaa !21
  br i1 %t293, label %bb89, label %bb90
bb89:
  store i1 true, ptr %l147, !tbaa !21
  br label %bb92
bb90:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load ptr, ptr %l1, !tbaa !29
  %t296 = load ptr, ptr %l11, !tbaa !29
  %t301 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t294, ptr %t295, ptr %t296)
  store i1 %t301, ptr %l152
  br label %bb91
bb91:
  %t302 = load i1, ptr %l152, !tbaa !21
  store i1 %t302, ptr %l147, !tbaa !21
  br label %bb92
bb92:
  %t303 = load i1, ptr %l147, !tbaa !21
  store i1 %t303, ptr %l57, !tbaa !21
  br label %bb124
bb93:
  %t304 = load ptr, ptr %l2, !tbaa !29
  store ptr %t304, ptr %l153, !tbaa !29
  store i1 false, ptr %l154, !tbaa !21
  %t305 = load ptr, ptr %l153, !tbaa !29
  %t306 = icmp ne ptr %t305, null
  br i1 %t306, label %bb94, label %bb95
bb94:
  %t308 = load ptr, ptr %l153, !tbaa !29
  %t309 = load i64, ptr %t308, !range !{i64 0, i64 30}
  %t311 = icmp eq i64 %t309, 12
  store i1 %t311, ptr %l154, !tbaa !21
  br label %bb95
bb95:
  %t312 = load i1, ptr %l154, !tbaa !21
  br i1 %t312, label %bb96, label %bb97
bb96:
  %t313 = load ptr, ptr %l2, !tbaa !29
  %t315 = getelementptr { i64, [4 x i64] }, ptr %t313, i32 0, i32 1
  %t316 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t315, i32 0, i32 1
  %t317 = load ptr, ptr %t316
  store ptr %t317, ptr %l12, !tbaa !29
  %t319 = load ptr, ptr %l2, !tbaa !29
  %t321 = getelementptr { i64, [4 x i64] }, ptr %t319, i32 0, i32 1
  %t322 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t321, i32 0, i32 2
  %t323 = load { i64, ptr }, ptr %t322
  store { i64, ptr } %t323, ptr %l13, !tbaa !27
  br label %bb98
bb97:
  br label %bb108
bb98:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load ptr, ptr %l1, !tbaa !29
  %t327 = load ptr, ptr %l12, !tbaa !29
  %t328 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t333 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2einstanceLen(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t325, ptr %t326, ptr %t327, { i64, ptr } %t328)
  store i1 %t333, ptr %l165
  br label %bb99
bb99:
  %t334 = load i1, ptr %l165, !tbaa !21
  %t335 = xor i1 %t334, true
  br i1 %t335, label %bb100, label %bb101
bb100:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load ptr, ptr %l1, !tbaa !29
  %t339 = load ptr, ptr %l12, !tbaa !29
  %t344 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t337, ptr %t338, ptr %t339)
  store i1 %t344, ptr %l172
  br label %bb102
bb101:
  store i1 false, ptr %l167, !tbaa !21
  br label %bb107
bb102:
  %t345 = load i1, ptr %l172, !tbaa !21
  br i1 %t345, label %bb103, label %bb104
bb103:
  store i1 true, ptr %l173, !tbaa !21
  br label %bb106
bb104:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load ptr, ptr %l1, !tbaa !29
  %t348 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t352 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyReadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t346, ptr %t347, { i64, ptr } %t348)
  store i1 %t352, ptr %l177
  br label %bb105
bb105:
  %t353 = load i1, ptr %l177, !tbaa !21
  store i1 %t353, ptr %l173, !tbaa !21
  br label %bb106
bb106:
  %t354 = load i1, ptr %l173, !tbaa !21
  store i1 %t354, ptr %l167, !tbaa !21
  br label %bb107
bb107:
  %t355 = load i1, ptr %l167, !tbaa !21
  store i1 %t355, ptr %l57, !tbaa !21
  br label %bb124
bb108:
  %t356 = load ptr, ptr %l2, !tbaa !29
  store ptr %t356, ptr %l178, !tbaa !29
  store i1 false, ptr %l179, !tbaa !21
  %t357 = load ptr, ptr %l178, !tbaa !29
  %t358 = icmp ne ptr %t357, null
  br i1 %t358, label %bb109, label %bb110
bb109:
  %t360 = load ptr, ptr %l178, !tbaa !29
  %t361 = load i64, ptr %t360, !range !{i64 0, i64 30}
  %t363 = icmp eq i64 %t361, 15
  store i1 %t363, ptr %l179, !tbaa !21
  br label %bb110
bb110:
  %t364 = load i1, ptr %l179, !tbaa !21
  br i1 %t364, label %bb111, label %bb112
bb111:
  %t365 = load ptr, ptr %l2, !tbaa !29
  %t367 = getelementptr { i64, [4 x i64] }, ptr %t365, i32 0, i32 1
  %t368 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t367, i32 0, i32 1
  %t369 = load ptr, ptr %t368
  store ptr %t369, ptr %l14, !tbaa !29
  %t371 = load ptr, ptr %l2, !tbaa !29
  %t373 = getelementptr { i64, [4 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t373, i32 0, i32 2
  %t375 = load { i64, ptr }, ptr %t374
  store { i64, ptr } %t375, ptr %l15, !tbaa !27
  br label %bb113
bb112:
  br label %bb119
bb113:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load ptr, ptr %l1, !tbaa !29
  %t379 = load ptr, ptr %l14, !tbaa !29
  %t384 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t377, ptr %t378, ptr %t379)
  store i1 %t384, ptr %l190
  br label %bb114
bb114:
  %t385 = load i1, ptr %l190, !tbaa !21
  br i1 %t385, label %bb115, label %bb116
bb115:
  store i1 true, ptr %l191, !tbaa !21
  br label %bb118
bb116:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load ptr, ptr %l1, !tbaa !29
  %t388 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t392 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyReadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t386, ptr %t387, { i64, ptr } %t388)
  store i1 %t392, ptr %l195
  br label %bb117
bb117:
  %t393 = load i1, ptr %l195, !tbaa !21
  store i1 %t393, ptr %l191, !tbaa !21
  br label %bb118
bb118:
  %t394 = load i1, ptr %l191, !tbaa !21
  store i1 %t394, ptr %l57, !tbaa !21
  br label %bb124
bb119:
  br i1 true, label %bb120, label %bb121
bb120:
  br label %bb122
bb121:
  br label %bb123
bb122:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb124
bb123:
  call void @__olang_check_failed(ptr @olang_loc_d5893f1f042b494f_34caff30dd5c379b)
  unreachable
bb124:
  %t395 = load i1, ptr %l57, !tbaa !21
  store i1 %t395, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erefType(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i32
  %l9 = alloca i32
  %l13 = alloca i32
  %l17 = alloca i32
  %l21 = alloca i32
  %l26 = alloca i32
  %l30 = alloca i32
  %l33 = alloca ptr
  %l34 = alloca i32
  %l36 = alloca i64
  %l39 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l3, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load i32, ptr %l9, !range !{i32 0, i32 33}
  %t10 = trunc i64 21 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i1, ptr %l4, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb3:
  br label %bb8
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l17
  br label %bb6
bb5:
  %t22 = load i32, ptr %l3, !tbaa !23
  store i32 %t22, ptr %l13, !tbaa !23
  br label %bb7
bb6:
  %t24 = load i32, ptr %l17, !tbaa !23
  store i32 %t24, ptr %l13, !tbaa !23
  br label %bb7
bb7:
  %t25 = load i32, ptr %l13, !tbaa !23
  store i32 %t25, ptr %rv
  br label %ret
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l3, !tbaa !23
  %t30 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclaredFunc(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l21
  br label %bb9
bb9:
  %t31 = load i32, ptr %l21, !tbaa !23
  store i32 %t31, ptr %l5, !tbaa !23
  %t32 = load i32, ptr %l5, !tbaa !23
  %t33 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t36 = icmp ne i32 %t32, %t33
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load i1, ptr %l4, !tbaa !21
  br i1 %t38, label %bb12, label %bb13
bb11:
  br label %bb16
bb12:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l5, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l30
  br label %bb14
bb13:
  %t47 = load i32, ptr %l5, !tbaa !23
  store i32 %t47, ptr %l26, !tbaa !23
  br label %bb15
bb14:
  %t49 = load i32, ptr %l30, !tbaa !23
  store i32 %t49, ptr %l26, !tbaa !23
  br label %bb15
bb15:
  %t50 = load i32, ptr %l26, !tbaa !23
  store i32 %t50, ptr %rv
  br label %ret
bb16:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  store ptr %t53, ptr %l33, !tbaa !29
  %t54 = load i32, ptr %l3, !tbaa !23
  store i32 %t54, ptr %l34, !tbaa !23
  %t55 = load i1, ptr %l4, !tbaa !21
  br i1 %t55, label %bb17, label %bb18
bb17:
  %t57 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  store i64 %t57, ptr %l36, !tbaa !24
  br label %bb19
bb18:
  %t59 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  store i64 %t59, ptr %l36, !tbaa !24
  br label %bb19
bb19:
  %t61 = load ptr, ptr %l33, !tbaa !29
  %t62 = load i32, ptr %l34, !tbaa !23
  %t63 = load i64, ptr %l36, !tbaa !24
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t61, i32 %t62, i64 %t63)
  store i32 %t64, ptr %l39
  br label %bb20
bb20:
  %t65 = load i32, ptr %l39, !tbaa !23
  store i32 %t65, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflHead(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l17 = alloca i32
  %l20 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i32
  %l36 = alloca i32
  %l37 = alloca i32
  %l40 = alloca i1
  %l44 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Context", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l2, !tbaa !23
  %t7 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v1, ptr %t3, i32 %t4)
  %t8 = extractvalue { i32, i32 } %t7, 1
  %t9 = extractvalue { i32, i32 } %t7, 0
  store i32 %t9, ptr %l11
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i32 %t8, ptr %l10
  br label %bb1
bb1:
  %t12 = load i32, ptr %l10, !tbaa !23
  store i32 %t12, ptr %l6, !tbaa !23
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i32 -1, ptr %l6, !tbaa !23
  br label %bb4
bb4:
  %t13 = load i32, ptr %l6, !tbaa !23
  store i32 %t13, ptr %l3, !tbaa !23
  %t14 = load i32, ptr %l3, !tbaa !23
  %t16 = icmp sge i32 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l3, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l17
  br label %bb7
bb6:
  br label %bb21
bb7:
  %t25 = load i32, ptr %l17, !range !{i32 0, i32 33}
  store i32 %t25, ptr %l4
  %t26 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t28 = trunc i64 26 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb10
bb9:
  %t31 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t33 = trunc i64 27 to i32
  %t34 = icmp eq i32 %t31, %t33
  store i1 %t34, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t36 = load i1, ptr %l20, !tbaa !21
  br i1 %t36, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb13
bb12:
  %t37 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t39 = trunc i64 30 to i32
  %t40 = icmp eq i32 %t37, %t39
  store i1 %t40, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t42 = load i1, ptr %l23, !tbaa !21
  br i1 %t42, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb17
bb15:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l3, !tbaa !23
  %t47 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %t43, i32 %t44)
  store i1 %t47, ptr %l29
  br label %bb16
bb16:
  %t48 = load i1, ptr %l29, !tbaa !21
  store i1 %t48, ptr %l26, !tbaa !21
  br label %bb17
bb17:
  %t49 = load i1, ptr %l26, !tbaa !21
  br i1 %t49, label %bb18, label %bb19
bb18:
  store i32 -1, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t51 = load i32, ptr %l3, !tbaa !23
  store i32 %t51, ptr %rv
  br label %ret
bb21:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Context", ptr %t53, i32 0, i32 3
  %t56 = load i32, ptr %l2, !tbaa !23
  %t59 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v1, ptr %t55, i32 %t56)
  %t60 = extractvalue { i32, i32 } %t59, 1
  %t61 = extractvalue { i32, i32 } %t59, 0
  store i32 %t61, ptr %l37
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb23, label %ok.63, !prof !99
ok.63:
  store i32 %t60, ptr %l36
  br label %bb22
bb22:
  %t64 = load i32, ptr %l36, !tbaa !23
  store i32 %t64, ptr %l32, !tbaa !23
  br label %bb25
bb23:
  br label %bb24
bb24:
  store i32 -1, ptr %l32, !tbaa !23
  br label %bb25
bb25:
  %t65 = load i32, ptr %l32, !tbaa !23
  store i32 %t65, ptr %l5, !tbaa !23
  %t66 = load i32, ptr %l5, !tbaa !23
  %t68 = icmp sge i32 %t66, 0
  br i1 %t68, label %bb26, label %bb27
bb26:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = load i32, ptr %l5, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l44
  br label %bb28
bb27:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb29
bb28:
  %t77 = load i32, ptr %l44, !range !{i32 0, i32 33}
  %t79 = trunc i64 26 to i32
  %t80 = icmp eq i32 %t77, %t79
  %t82 = xor i1 %t80, true
  store i1 %t82, ptr %l40, !tbaa !21
  br label %bb29
bb29:
  %t84 = load i1, ptr %l40, !tbaa !21
  br i1 %t84, label %bb30, label %bb31
bb30:
  %t85 = load i32, ptr %l5, !tbaa !23
  store i32 %t85, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  store i32 -1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t11 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %t7, i32 %a1)
  store { i64, ptr } %t11, ptr %l6
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t12, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca i1
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l15 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l37 = alloca i32
  %l39 = alloca i1
  %l43 = alloca i32
  %l46 = alloca i32
  %l47 = alloca ptr
  %l51 = alloca i32
  %l54 = alloca i32
  %l61 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEnds(ptr %v0, ptr %t3, i32 %t4)
  store i1 %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load i1, ptr %l15, !tbaa !21
  store i1 %t8, ptr %l5, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  store ptr %t11, ptr %l17, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l21
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l17, !tbaa !29
  %t20 = load i32, ptr %l21, !tbaa !23
  %t21 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t19, i32 %t20)
  store { i64, ptr } %t21, ptr %l22
  br label %bb3
bb3:
  %t22 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t22, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  store i64 %t25, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t27 = load i64, ptr %l7, !tbaa !24
  %t28 = load i64, ptr %l8, !tbaa !24
  %t31 = icmp slt i64 %t27, %t28
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb5, label %bb6
bb5:
  br label %bb26
bb6:
  br label %bb7
bb7:
  %t35 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t35, ptr %l29, !tbaa !27
  %t36 = load i64, ptr %l7, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i32, ptr %t39, i64 %t36
  %t41 = load i32, ptr %t40, !tbaa !33
  store i32 %t41, ptr %l9, !tbaa !23
  %t43 = load i32, ptr %l9, !tbaa !23
  %t45 = icmp eq i32 %t43, 0
  br i1 %t45, label %bb8, label %bb9
bb8:
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %l9, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l37
  br label %bb11
bb11:
  %t54 = load i32, ptr %l37, !tbaa !23
  store i32 %t54, ptr %l10, !tbaa !23
  %t55 = load i1, ptr %l5, !tbaa !21
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l10, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l43
  br label %bb14
bb13:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb15
bb14:
  %t64 = load i32, ptr %l43, !range !{i32 0, i32 33}
  %t66 = trunc i64 19 to i32
  %t67 = icmp eq i32 %t64, %t66
  store i1 %t67, ptr %l39, !tbaa !21
  br label %bb15
bb15:
  %t69 = load i1, ptr %l39, !tbaa !21
  br i1 %t69, label %bb16, label %bb17
bb16:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l47, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l10, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l51
  br label %bb18
bb17:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l9, !tbaa !23
  %t80 = load ptr, ptr %l2, !tbaa !29
  %t81 = load i64, ptr %l3, !tbaa !24
  %t83 = add i64 %t81, 1
  %t90 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %t78, i32 %t79, ptr %t80, i64 %t83, i1 %a4)
  store i32 %t90, ptr %l61
  br label %bb20
bb18:
  %t91 = load ptr, ptr %l2, !tbaa !29
  %t92 = load i64, ptr %l3, !tbaa !24
  %t93 = load ptr, ptr %l47, !tbaa !29
  %t94 = load i32, ptr %l51, !tbaa !23
  %t97 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebufferUnended(ptr %v0, ptr %v1, ptr %t93, i32 %t94, ptr %t91, i64 %t92)
  store i32 %t97, ptr %l54
  br label %bb19
bb19:
  %t98 = load i32, ptr %l54, !tbaa !23
  store i32 %t98, ptr %l46, !tbaa !23
  br label %bb21
bb20:
  %t99 = load i32, ptr %l61, !tbaa !23
  store i32 %t99, ptr %l46, !tbaa !23
  br label %bb21
bb21:
  %t100 = load i32, ptr %l46, !tbaa !23
  store i32 %t100, ptr %l11, !tbaa !23
  %t101 = load i32, ptr %l11, !tbaa !23
  %t102 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t105 = icmp ne i32 %t101, %t102
  br i1 %t105, label %bb22, label %bb23
bb22:
  %t107 = load i32, ptr %l11, !tbaa !23
  store i32 %t107, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l7, !tbaa !24
  br label %bb4
bb26:
  %t113 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t113, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyErrs(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l18 = alloca i1
  %l24 = alloca i32
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l43 = alloca i1
  %l47 = alloca i64
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l69 = alloca i1
  %l76 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca ptr
  %l84 = alloca i64
  %l85 = alloca ptr
  %l87 = alloca ptr
  %l89 = alloca { i64, ptr }
  %l90 = alloca i32
  %l91 = alloca i32
  %l92 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t3 = load ptr, ptr %l3, !tbaa !29
  %t7 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrsHaveVar(ptr %v0, ptr %v1, ptr %t1, i32 %t2, ptr %t3)
  store i1 %t7, ptr %l18
  br label %bb1
bb1:
  %t8 = load i1, ptr %l18, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t13 = load i32, ptr %l2, !tbaa !23
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t19 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyLists(ptr %v0, ptr %v1, ptr %t11, i32 %t12, i32 %t13, ptr %t14, i1 false)
  store i32 %t19, ptr %l24
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb5, label %ok.21, !prof !99
ok.21:
  br label %bb4
bb3:
  br label %bb7
bb4:
  br label %bb6
bb5:
  %t22 = load i32, ptr %l24, !tbaa !23
  %t23 = lshr i32 %t22, 16
  %t24 = and i32 %t22, 65535
  %t25 = icmp eq i32 %t23, 1
  %t26 = select i1 %t25, i32 1, i32 0
  %t27 = icmp eq i32 %t22, 0
  %t28 = shl i32 %t26, 16
  %t29 = or i32 %t28, %t24
  %t30 = select i1 %t27, i32 0, i32 %t29
  call void @__olang_scope_close(ptr %s0)
  store i32 %t30, ptr %rv
  br label %ret
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb7:
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l26
  br label %bb8
bb8:
  %t33 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l4
  store i64 -1, ptr %l5, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t36, i32 %t37)
  store { i64, ptr } %t40, ptr %l30
  br label %bb9
bb9:
  %t41 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t41, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  store i64 %t44, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  %t46 = load i64, ptr %l7, !tbaa !24
  %t47 = load i64, ptr %l8, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb11, label %bb12
bb11:
  br label %bb21
bb12:
  br label %bb13
bb13:
  %t54 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t54, ptr %l37, !tbaa !27
  %t55 = load i64, ptr %l7, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i32, ptr %t58, i64 %t55
  %t60 = load i32, ptr %t59, !tbaa !33
  store i32 %t60, ptr %l9, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i32, ptr %l9, !tbaa !23
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t68 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisVar(ptr %v0, ptr %v1, ptr %t62, i32 %t63, ptr %t64)
  store i1 %t68, ptr %l43
  br label %bb14
bb14:
  %t69 = load i1, ptr %l43, !tbaa !21
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = load i32, ptr %l9, !tbaa !23
  %t76 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t72, i32 %t73)
  store i64 %t76, ptr %l47
  br label %bb17
bb16:
  %t77 = load i32, ptr %l9, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l4, i32 %t77)
  br label %bb18
bb17:
  %t80 = load i64, ptr %l47, !tbaa !24
  store i64 %t80, ptr %l5, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t81 = load i64, ptr %l7, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l7, !tbaa !24
  br label %bb10
bb21:
  %t85 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %l52
  br label %bb22
bb22:
  %t86 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l10
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l2, !tbaa !23
  %t93 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t89, i32 %t90)
  store { i64, ptr } %t93, ptr %l56
  br label %bb23
bb23:
  %t94 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t94, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t95, 0
  store i64 %t97, ptr %l13, !tbaa !24
  br label %bb24
bb24:
  %t99 = load i64, ptr %l12, !tbaa !24
  %t100 = load i64, ptr %l13, !tbaa !24
  %t103 = icmp slt i64 %t99, %t100
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb25, label %bb26
bb25:
  br label %bb40
bb26:
  br label %bb27
bb27:
  %t107 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t107, ptr %l63, !tbaa !27
  %t108 = load i64, ptr %l12, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i32, ptr %t111, i64 %t108
  %t113 = load i32, ptr %t112, !tbaa !33
  store i32 %t113, ptr %l14, !tbaa !23
  %t115 = load i32, ptr %l14, !tbaa !23
  %t116 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t119 = icmp eq i32 %t115, %t116
  br i1 %t119, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb30
bb29:
  %t121 = load i32, ptr %l14, !tbaa !23
  %t122 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t125 = icmp eq i32 %t121, %t122
  store i1 %t125, ptr %l69, !tbaa !21
  br label %bb30
bb30:
  %t127 = load i1, ptr %l69, !tbaa !21
  br i1 %t127, label %bb31, label %bb32
bb31:
  br label %bb39
bb32:
  br label %bb33
bb33:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i32, ptr %l14, !tbaa !23
  %t133 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eentryHeld(ptr %v0, ptr %s0, ptr %t128, i32 %t129, ptr %l4)
  store i1 %t133, ptr %l76
  br label %bb34
bb34:
  %t134 = load i1, ptr %l76, !tbaa !21
  %t135 = xor i1 %t134, true
  br i1 %t135, label %bb35, label %bb36
bb35:
  %t137 = load i32, ptr %l14, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l10, i32 %t137)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t140 = load i64, ptr %l12, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l12, !tbaa !24
  br label %bb24
bb40:
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l82, !tbaa !29
  %t145 = load ptr, ptr %l3, !tbaa !29
  store ptr %t145, ptr %l83, !tbaa !29
  %t146 = load i64, ptr %l5, !tbaa !24
  store i64 %t146, ptr %l84, !tbaa !24
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l85, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 2
  store ptr %t150, ptr %l87, !tbaa !29
  %t152 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l10)
  store { i64, ptr } %t152, ptr %l89
  br label %bb41
bb41:
  %t153 = load ptr, ptr %l87, !tbaa !29
  %t154 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t155 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t153, { i64, ptr } %t154)
  store i32 %t155, ptr %l90
  br label %bb42
bb42:
  %t156 = load ptr, ptr %l85, !tbaa !29
  %t157 = load i32, ptr %l90, !tbaa !23
  %t158 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t156, i32 %t157)
  store i32 %t158, ptr %l91
  br label %bb43
bb43:
  %t159 = load ptr, ptr %l82, !tbaa !29
  %t160 = load ptr, ptr %l83, !tbaa !29
  %t161 = load i64, ptr %l84, !tbaa !24
  %t162 = load i32, ptr %l91, !tbaa !23
  %t163 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebind(ptr %v0, ptr %v1, ptr %t159, ptr %t160, i64 %t161, i32 %t162, i1 false, i1 false)
  store i32 %t163, ptr %l92
  %t164 = icmp ne i32 %t163, 0
  br i1 %t164, label %bb45, label %ok.165, !prof !99
ok.165:
  br label %bb44
bb44:
  br label %bb46
bb45:
  %t166 = load i32, ptr %l92, !tbaa !23
  %t167 = lshr i32 %t166, 16
  %t168 = and i32 %t166, 65535
  %t169 = icmp eq i32 %t167, 1
  %t170 = select i1 %t169, i32 1, i32 0
  %t171 = icmp eq i32 %t166, 0
  %t172 = shl i32 %t170, 16
  %t173 = or i32 %t172, %t168
  %t174 = select i1 %t171, i32 0, i32 %t173
  call void @__olang_scope_close(ptr %s0)
  store i32 %t174, ptr %rv
  br label %ret
bb46:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eviewNext(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca i1
  %l19 = alloca i1
  %l25 = alloca ptr
  %l28 = alloca i1
  %l40 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l50 = alloca i1
  %l53 = alloca i1
  %l54 = alloca ptr
  %l67 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/generic:fnRow", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/ast:Func", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/load:Loader", ptr %t14, i32 0, i32 3
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/generic:fnRow", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/ast:Func", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %t23, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t17, i32 %t24)
  store { i64, ptr } %t27, ptr %l16
  br label %bb3
bb3:
  %t28 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t29, ptr %l17
  br label %bb4
bb4:
  %t30 = load i1, ptr %l17, !tbaa !21
  %t31 = xor i1 %t30, true
  store i1 %t31, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t33 = load i1, ptr %l9, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb10
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/load:Loader", ptr %t37, i32 0, i32 10
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/generic:fnRow", ptr %t40, i32 0, i32 0
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t39, i64 %t43)
  store ptr %t46, ptr %l25
  br label %bb8
bb8:
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t49 = getelementptr %"compiler/load:Module", ptr %t47, i32 0, i32 2
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t52 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t50, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t52, ptr %l28
  br label %bb9
bb9:
  %t53 = load i1, ptr %l28, !tbaa !21
  %t54 = xor i1 %t53, true
  store i1 %t54, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  %t56 = load i1, ptr %l19, !tbaa !21
  br i1 %t56, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/generic:fnRow", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/ast:Func", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = icmp eq ptr %t64, null
  br i1 %t66, label %bb14, label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_ea43b29642517977_1af2b7cce6fe287b)
  unreachable
bb15:
  br label %bb16
bb16:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr %"compiler/generic:fnRow", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/ast:Func", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/ast:Param", ptr %t74, i32 0, i32 2
  %t78 = load ptr, ptr %t77, !tbaa !29
  store ptr %t78, ptr %l2, !tbaa !29
  %t80 = load ptr, ptr %l2, !tbaa !29
  store ptr %t80, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t81 = load ptr, ptr %l41, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb17, label %bb18
bb17:
  %t84 = load ptr, ptr %l41, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 8}
  %t87 = icmp eq i64 %t85, 4
  store i1 %t87, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t88 = load i1, ptr %l42, !tbaa !21
  br i1 %t88, label %bb19, label %bb20
bb19:
  %t89 = load ptr, ptr %l2, !tbaa !29
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t91, i32 0, i32 1
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l3, !tbaa !29
  br label %bb21
bb20:
  br label %bb26
bb21:
  %t95 = load ptr, ptr %l3, !tbaa !29
  %t97 = icmp eq ptr %t95, null
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb22, label %bb23
bb22:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l3, !tbaa !29
  %t105 = call i1 @compiler_2fgeneric_2eviewGenTy(ptr %v0, ptr %v1, ptr %t101, ptr %t102)
  store i1 %t105, ptr %l53
  br label %bb24
bb23:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb25
bb24:
  %t106 = load i1, ptr %l53, !tbaa !21
  store i1 %t106, ptr %l50, !tbaa !21
  br label %bb25
bb25:
  %t107 = load i1, ptr %l50, !tbaa !21
  store i1 %t107, ptr %l40, !tbaa !21
  br label %bb38
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb37
bb29:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l54, !tbaa !29
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr %"compiler/generic:fnRow", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/ast:Func", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = icmp eq ptr %t115, null
  br i1 %t117, label %bb30, label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_2ac89deeabe02958_a25efd24ea33a60c)
  unreachable
bb31:
  br label %bb32
bb32:
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = getelementptr %"compiler/generic:fnRow", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/ast:Func", ptr %t122, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t128 = getelementptr %"compiler/ast:Param", ptr %t125, i32 0, i32 2
  %t129 = load ptr, ptr %t128, !tbaa !29
  store ptr %t129, ptr %l4, !tbaa !29
  %t131 = load ptr, ptr %l4, !tbaa !29
  %t133 = icmp eq ptr %t131, null
  br i1 %t133, label %bb33, label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_2ac89deeabe02958_a25efd24ea33a60c)
  unreachable
bb34:
  br label %bb35
bb35:
  %t135 = load ptr, ptr %l4, !tbaa !29
  %t136 = load ptr, ptr %l54, !tbaa !29
  %t138 = call i1 @compiler_2fgeneric_2eviewGenTy(ptr %v0, ptr %v1, ptr %t136, ptr %t135)
  store i1 %t138, ptr %l67
  br label %bb36
bb36:
  %t139 = load i1, ptr %l67, !tbaa !21
  store i1 %t139, ptr %l40, !tbaa !21
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_97cd5f16af0b6614_78a73ec613500ec8)
  unreachable
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t140 = load i1, ptr %l40, !tbaa !21
  store i1 %t140, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l15 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l27 = alloca i1
  %l30 = alloca ptr
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:cursor", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = add i64 %t4, %t7
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/generic:cursor", ptr %t11, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t19 = icmp sgt i64 %t10, %t16
  br i1 %t19, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:cursor", ptr %t22, i32 0, i32 0
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l13, !tbaa !27
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/generic:cursor", ptr %t26, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  store i64 %t29, ptr %l15, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/generic:cursor", ptr %t30, i32 0, i32 1
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t39 = add i64 %t33, %t36
  store i64 %t39, ptr %l20, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l21, !tbaa !24
  %t42 = load i64, ptr %l15, !tbaa !24
  %t43 = icmp sge i64 %t42, 0
  br i1 %t43, label %bb4, label %bb5
bb4:
  %t45 = load i64, ptr %l15, !tbaa !24
  %t46 = load i64, ptr %l20, !tbaa !24
  %t47 = icmp sle i64 %t45, %t46
  br i1 %t47, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_759448a6dcc06fe9_971bda559b794c25)
  unreachable
bb6:
  %t49 = load i64, ptr %l20, !tbaa !24
  %t50 = load i64, ptr %l21, !tbaa !24
  %t51 = icmp sle i64 %t49, %t50
  br i1 %t51, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_759448a6dcc06fe9_971bda559b794c25)
  unreachable
bb8:
  %t53 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = load i64, ptr %l15, !tbaa !24
  %t56 = load i64, ptr %l20, !tbaa !24
  %t57 = getelementptr i8, ptr %t54, i64 %t55
  %t58 = sub i64 %t56, %t55
  %t59 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t57, 1
  %t61 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t60, { i64, ptr } %t61)
  store i1 %t64, ptr %l27
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_759448a6dcc06fe9_971bda559b794c25)
  unreachable
bb10:
  %t65 = load i1, ptr %l27, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l30, !tbaa !29
  %t70 = load ptr, ptr %l30, !tbaa !29
  %t71 = getelementptr %"compiler/generic:cursor", ptr %t70, i32 0, i32 1
  %t72 = load i64, ptr %t71, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t78 = add i64 %t72, %t75
  %t80 = load ptr, ptr %l30, !tbaa !29
  %t81 = getelementptr %"compiler/generic:cursor", ptr %t80, i32 0, i32 1
  store i64 %t78, ptr %t81, !tbaa !24
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca i8
  %l9 = alloca { i64, ptr }
  %rv = alloca i8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:cursor", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:cursor", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp slt i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:cursor", ptr %t15, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l9, !tbaa !27
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:cursor", ptr %t19, i32 0, i32 1
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i8, ptr %t25, i64 %t22
  %t27 = load i8, ptr %t26, !tbaa !32
  store i8 %t27, ptr %l7, !tbaa !22
  br label %bb3
bb2:
  store i8 0, ptr %l7, !tbaa !22
  br label %bb3
bb3:
  %t29 = load i8, ptr %l7, !tbaa !22
  store i8 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2edeclared(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l16 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca i32
  %l30 = alloca { i64, ptr }
  %l34 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca i32
  %l43 = alloca { i64, ptr }
  %l46 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:VarDecl", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb17
bb3:
  br label %bb4
bb4:
  %t18 = load i64, ptr %l3, !tbaa !24
  store i64 %t18, ptr %l5, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t20, ptr %l16, !tbaa !27
  %t21 = load i64, ptr %l3, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i32, ptr %t24, i64 %t21
  %t26 = load i32, ptr %t25, !tbaa !33
  store i32 %t26, ptr %l6, !tbaa !23
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/ast:VarDecl", ptr %t28, i32 0, i32 3
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/ast:VarDecl", ptr %t34, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t42 = icmp eq i64 %t33, %t39
  br i1 %t42, label %bb5, label %bb6
bb5:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l26, !tbaa !29
  %t45 = load i32, ptr %l6, !tbaa !23
  store i32 %t45, ptr %l27, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr %"compiler/ast:VarDecl", ptr %t47, i32 0, i32 3
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  store { i64, ptr } %t50, ptr %l30, !tbaa !27
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr ptr, ptr %t54, i64 %t51
  %t56 = load ptr, ptr %t55, !tbaa !39
  %t60 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t46, ptr %t56)
  store i64 %t60, ptr %l34
  br label %bb7
bb6:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr %"compiler/ast:VarDecl", ptr %t61, i32 0, i32 3
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t68 = icmp eq i64 %t66, 1
  br i1 %t68, label %bb9, label %bb10
bb7:
  %t70 = load ptr, ptr %l26, !tbaa !29
  %t71 = load i32, ptr %l27, !tbaa !23
  %t72 = load i64, ptr %l34, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %t70, i32 %t71, i64 %t72)
  br label %bb8
bb8:
  br label %bb15
bb9:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l39, !tbaa !29
  %t74 = load i32, ptr %l6, !tbaa !23
  store i32 %t74, ptr %l40, !tbaa !23
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr %"compiler/ast:VarDecl", ptr %t76, i32 0, i32 3
  %t79 = load { i64, ptr }, ptr %t78, !tbaa !27
  store { i64, ptr } %t79, ptr %l43, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr ptr, ptr %t81, i64 0
  %t83 = load ptr, ptr %t82, !tbaa !39
  %t87 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t75, ptr %t83)
  store i64 %t87, ptr %l46
  br label %bb11
bb10:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i32, ptr %l6, !tbaa !23
  %t90 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenLocalBit, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %t88, i32 %t89, i64 %t90)
  br label %bb13
bb11:
  %t94 = load ptr, ptr %l39, !tbaa !29
  %t95 = load i32, ptr %l40, !tbaa !23
  %t96 = load i64, ptr %l46, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %t94, i32 %t95, i64 %t96)
  br label %bb12
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t97 = load i64, ptr %l3, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l3, !tbaa !24
  br label %bb1
bb17:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eparamBit(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l36 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca i1
  %l48 = alloca i64
  %l50 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:genRoots", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb6
bb3:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t34 = load i64, ptr %l17, !tbaa !24
  store i64 %t34, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l14, !tbaa !24
  store i64 %t35, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb8, label %bb9
bb8:
  br label %bb21
bb9:
  br label %bb10
bb10:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l7, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/generic:genRoots", ptr %t54, i32 0, i32 0
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  store { i64, ptr } %t57, ptr %l36, !tbaa !27
  %t58 = load i64, ptr %l7, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i32, ptr %t61, i64 %t58
  %t63 = load i32, ptr %t62, !tbaa !33
  %t67 = icmp ne i32 %t63, %a1
  br i1 %t67, label %bb11, label %bb12
bb11:
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/generic:genRoots", ptr %t69, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l42, !tbaa !27
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i1, ptr %t76, i64 %t73
  %t78 = load i1, ptr %t77, !tbaa !31
  br i1 %t78, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb16
bb15:
  %t80 = load i64, ptr %l7, !tbaa !24
  %t82 = icmp sge i64 %t80, 62
  store i1 %t82, ptr %l45, !tbaa !21
  br label %bb16
bb16:
  %t84 = load i1, ptr %l45, !tbaa !21
  br i1 %t84, label %bb17, label %bb18
bb17:
  %t85 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenLocalBit, !tbaa !24
  store i64 %t85, ptr %l48, !tbaa !24
  br label %bb19
bb18:
  %t87 = load i64, ptr %l7, !tbaa !24
  store i64 %t87, ptr %l50, !tbaa !24
  %t88 = load i64, ptr %l50, !tbaa !24
  %t89 = load i64, ptr %l50, !tbaa !24
  %t90 = shl i64 1, %t89
  store i64 %t90, ptr %l48, !tbaa !24
  br label %bb19
bb19:
  %t92 = load i64, ptr %l48, !tbaa !24
  store i64 %t92, ptr %rv
  br label %ret
bb20:
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l6, !tbaa !24
  br label %bb7
bb21:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estored(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l32 = alloca { i64, ptr }
  %l35 = alloca i64
  %l39 = alloca i64
  %l43 = alloca ptr
  %l45 = alloca i32
  %l47 = alloca ptr
  %l48 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb26
bb5:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t23 = load ptr, ptr %l19, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l19, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 30}
  %t29 = icmp eq i64 %t27, 14
  store i1 %t29, ptr %l20, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l20, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t33, i32 0, i32 1
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l4, !tbaa !29
  br label %bb10
bb9:
  br label %bb20
bb10:
  store i64 0, ptr %l5, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t37, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t51 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t51, ptr %l32, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  %t59 = load i64, ptr %l5, !tbaa !24
  store i64 %t59, ptr %l35, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t65 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t60, ptr %t57)
  store i64 %t65, ptr %l39
  br label %bb15
bb15:
  %t66 = load i64, ptr %l35, !tbaa !24
  %t67 = load i64, ptr %l39, !tbaa !24
  %t68 = or i64 %t66, %t67
  store i64 %t68, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l7, !tbaa !24
  br label %bb11
bb17:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l43, !tbaa !29
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t77 = call i32 @compiler_2fgeneric_2ebaseName(ptr %v1, ptr %t75)
  store i32 %t77, ptr %l45
  br label %bb18
bb18:
  %t78 = load i64, ptr %l5, !tbaa !24
  %t79 = load ptr, ptr %l43, !tbaa !29
  %t80 = load i32, ptr %l45, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %t79, i32 %t80, i64 %t78)
  br label %bb19
bb19:
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_9c4890b7bb1b8338_bc401ee50d7cf5ac)
  unreachable
bb25:
  br label %bb38
bb26:
  %t82 = load ptr, ptr %l1, !tbaa !29
  store ptr %t82, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t83 = load ptr, ptr %l47, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb27, label %bb28
bb27:
  %t86 = load ptr, ptr %l47, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 30}
  %t89 = icmp eq i64 %t87, 21
  store i1 %t89, ptr %l48, !tbaa !21
  br label %bb28
bb28:
  %t90 = load i1, ptr %l48, !tbaa !21
  br i1 %t90, label %bb29, label %bb30
bb29:
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr { i64, [4 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t93, i32 0, i32 1
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l10, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estored(ptr %v0, ptr %v1, ptr %t97, ptr %t98)
  br label %bb32
bb32:
  br label %bb38
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_a1cd62d4a2c4a909_c9084e1cb558785d)
  unreachable
bb38:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fgeneric_2efieldAttrs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l1 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l12 = alloca i1
  %l27 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:VarDecl", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb3
bb2:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/ast:VarDecl", ptr %t10, i32 0, i32 3
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = icmp sgt i64 %t15, 0
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l12, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/ast:VarDecl", ptr %t20, i32 0, i32 6
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t27 = getelementptr %"compiler/ast:StructBody", ptr %a0, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  store i64 %t32, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l5, !tbaa !24
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb8, label %bb9
bb8:
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t42 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t42, ptr %l27, !tbaa !27
  %t43 = load i64, ptr %l5, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr ptr, ptr %t46, i64 %t43
  %t48 = load ptr, ptr %t47, !tbaa !39
  store ptr %t48, ptr %l7, !tbaa !29
  %t50 = load ptr, ptr %l7, !tbaa !29
  %t52 = getelementptr %"compiler/ast:Param", ptr %t50, i32 0, i32 1
  %t53 = load i32, ptr %t52, !tbaa !23
  %t57 = icmp eq i32 %t53, %a2
  br i1 %t57, label %bb11, label %bb12
bb11:
  %t59 = load ptr, ptr %l7, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Param", ptr %t59, i32 0, i32 4
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t64 = load i64, ptr %l5, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l5, !tbaa !24
  br label %bb7
bb15:
  store { i64, ptr } %a3, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded() #0 {
entry:
  %l2 = alloca %"compiler/generic:folded"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/generic:folded"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr @G_2ecompiler_2fgeneric_2eUnfolded, !tbaa !24
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s0, i64 %t1, i64 0, i32 %t2)
  store %"compiler/generic:folded" %t5, ptr %l2
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t6 = load %"compiler/generic:folded", ptr %l2
  store %"compiler/generic:folded" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:folded", ptr %rv
  ret %"compiler/generic:folded" %rr
}

define dso_local ptr @compiler_2fgeneric_2elisted(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l17 = alloca { i64, ptr }
  %rv = alloca ptr
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb12
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l17, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t32 = getelementptr %"compiler/ast:TypeParam", ptr %t30, i32 0, i32 1
  %t33 = load i32, ptr %t32, !tbaa !23
  %t37 = icmp eq i32 %t33, %a1
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr %"compiler/ast:TypeParam", ptr %t39, i32 0, i32 2
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l3, !tbaa !24
  br label %bb4
bb12:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fgeneric_2elitOnly(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l23 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb25
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 30}
  %t17 = icmp eq i64 %t15, 3
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l9, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l1, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = call i1 @compiler_2fgeneric_2elitOnly(ptr %v0, ptr %t25)
  store i1 %t27, ptr %l15
  br label %bb12
bb12:
  %t28 = load i1, ptr %l15, !tbaa !21
  store i1 %t28, ptr %l3, !tbaa !21
  br label %bb25
bb13:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb14, label %bb15
bb14:
  %t33 = load ptr, ptr %l16, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 30}
  %t36 = icmp eq i64 %t34, 2
  store i1 %t36, ptr %l17, !tbaa !21
  br label %bb15
bb15:
  %t37 = load i1, ptr %l17, !tbaa !21
  br i1 %t37, label %bb16, label %bb17
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", ptr }, ptr %t40, i32 0, i32 1
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l2, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = call i1 @compiler_2fgeneric_2elitOnly(ptr %v0, ptr %t44)
  store i1 %t46, ptr %l23
  br label %bb19
bb19:
  %t47 = load i1, ptr %l23, !tbaa !21
  store i1 %t47, ptr %l3, !tbaa !21
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_de533036e7174fdb_fce805c56f435877)
  unreachable
bb25:
  %t48 = load i1, ptr %l3, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2emadeByCall(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l20 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store i1 false, ptr %l4, !tbaa !21
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb22
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l7, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 30}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l8, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", ptr }, ptr %t21, i32 0, i32 1
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l1, !tbaa !29
  br label %bb15
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t26 = load ptr, ptr %l13, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l13, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 30}
  %t32 = icmp eq i64 %t30, 21
  store i1 %t32, ptr %l14, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l14, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t36, i32 0, i32 1
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l1, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = call i1 @compiler_2fgeneric_2emadeByCall(ptr %v0, ptr %t40)
  store i1 %t42, ptr %l20
  br label %bb16
bb16:
  %t43 = load i1, ptr %l20, !tbaa !21
  store i1 %t43, ptr %l2, !tbaa !21
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_56a9f796d6022e8a_9e3c205a980da41e)
  unreachable
bb22:
  %t44 = load i1, ptr %l2, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2enameChar(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t5)
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
  store i1 true, ptr %l6, !tbaa !21
  br label %bb8
bb7:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp eq i8 %t10, 95
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb8
bb8:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb11
bb10:
  %t15 = load i8, ptr %l0, !tbaa !22
  %t17 = icmp eq i8 %t15, 47
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb11
bb11:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb14
bb13:
  %t20 = load i8, ptr %l0, !tbaa !22
  %t22 = icmp eq i8 %t20, 46
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb14
bb14:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb17
bb16:
  %t25 = load i8, ptr %l0, !tbaa !22
  %t27 = icmp eq i8 %t25, 45
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb17
bb17:
  %t29 = load i1, ptr %l15, !tbaa !21
  br i1 %t29, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb20
bb19:
  %t30 = load i8, ptr %l0, !tbaa !22
  %t32 = icmp eq i8 %t30, 64
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb20
bb20:
  %t34 = load i1, ptr %l18, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2eskipBlank(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca i64
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp slt i64 %t3, %a2
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l9, !tbaa !27
  %t10 = load i64, ptr %l3, !tbaa !24
  %t12 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 %t10
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = icmp eq i8 %t15, 32
  br i1 %t17, label %bb4, label %bb5
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb7
bb4:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t19, ptr %l14, !tbaa !27
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i8, ptr %t23, i64 %t20
  %t25 = load i8, ptr %t24, !tbaa !32
  %t27 = icmp eq i8 %t25, 9
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t29 = load i1, ptr %l13, !tbaa !21
  store i1 %t29, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l8, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb11
bb11:
  br label %bb1
bb12:
  %t37 = load i64, ptr %l3, !tbaa !24
  store i64 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/generic:ConstAsk" @compiler_2fgeneric_3aConstAsk_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i64 %a0, ptr %a1, i32 %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5, { i64, ptr } %a6) #0 {
entry:
  %rv = alloca %"compiler/generic:ConstAsk"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/generic:ConstAsk" undef, i64 %a0, 0
  %t18 = insertvalue %"compiler/generic:ConstAsk" %t16, ptr %a1, 1
  %t20 = insertvalue %"compiler/generic:ConstAsk" %t18, i32 %a2, 2
  %t22 = insertvalue %"compiler/generic:ConstAsk" %t20, i64 %a3, 3
  %t24 = insertvalue %"compiler/generic:ConstAsk" %t22, { i64, ptr } %a4, 4
  %t26 = insertvalue %"compiler/generic:ConstAsk" %t24, { i64, ptr } %a5, 5
  %t28 = insertvalue %"compiler/generic:ConstAsk" %t26, { i64, ptr } %a6, 6
  store %"compiler/generic:ConstAsk" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:ConstAsk", ptr %rv
  ret %"compiler/generic:ConstAsk" %rr
}

define dso_local void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca %"compiler/generic:Context"
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %l2, !tbaa !24
  store i64 %a1, ptr %l3, !tbaa !24
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aContext_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l8
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Hcd3bbe8e64537e19c3182f51d0fe16c9(ptr %t11)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t12, ptr %l10
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aContext_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l8
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10, i32 0, i32 2
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = call ptr @__olang_region_or(ptr %t25, ptr null)
  %t27 = icmp ne ptr %t26, null
  %t28 = select i1 %t27, ptr %t26, ptr %t22
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = call ptr @__olang_region_or(ptr %t31, ptr null)
  %t33 = icmp ne ptr %t32, null
  %t34 = select i1 %t33, ptr %t32, ptr %t28
  %t35 = icmp eq ptr %t34, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t35)
  br label %bb5
bb5:
  %t36 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t36, ptr %l4
  %t37 = ptrtoint ptr %v0 to i64
  store i64 %t37, ptr %l12, !tbaa !24
  %t38 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aContext_2e3
  br i1 %t38, label %bb6, label %bb7
bb6:
  %t40 = call ptr @__olang_region_make(ptr %v0)
  %t41 = ptrtoint ptr %t40 to i64
  store i64 %t41, ptr %l12, !tbaa !24
  br label %bb7
bb7:
  %t42 = load i64, ptr %l12
  %t43 = inttoptr i64 %t42 to ptr
  %t44 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Hcd3bbe8e64537e19c3182f51d0fe16c9(ptr %t43)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t44, ptr %l14
  br label %bb8
bb8:
  %t45 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aContext_2e3
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load i64, ptr %l12
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 2
  %t50 = load { i64, ptr }, ptr %t49
  %t51 = extractvalue { i64, ptr } %t50, 1
  %t52 = call ptr @__olang_region_or(ptr %t51, ptr null)
  %t53 = icmp ne ptr %t52, null
  %t54 = select i1 %t53, ptr %t52, ptr null
  %t55 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 1
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = icmp ne ptr %t58, null
  %t60 = select i1 %t59, ptr %t58, ptr %t54
  %t61 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 0
  %t62 = load { i64, ptr }, ptr %t61
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = call ptr @__olang_region_or(ptr %t63, ptr null)
  %t65 = icmp ne ptr %t64, null
  %t66 = select i1 %t65, ptr %t64, ptr %t60
  %t67 = icmp eq ptr %t66, %t48
  call void @__olang_region_settle(ptr %t48, i1 %t67)
  br label %bb10
bb10:
  %t68 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  %t69 = getelementptr %"compiler/generic:Context", ptr %l16, i32 0, i32 0
  %t70 = load i64, ptr %l2, !tbaa !24
  store i64 %t70, ptr %t69, !tbaa !24
  %t71 = getelementptr %"compiler/generic:Context", ptr %l16, i32 0, i32 1
  %t72 = load i64, ptr %l3, !tbaa !24
  store i64 %t72, ptr %t71, !tbaa !24
  %t73 = getelementptr %"compiler/generic:Context", ptr %l16, i32 0, i32 2
  %t74 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t74, ptr %t73
  %t75 = getelementptr %"compiler/generic:Context", ptr %l16, i32 0, i32 3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t68, ptr %t75
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l16, i64 160, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/generic:cursor" @compiler_2fgeneric_3acursor_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %rv = alloca %"compiler/generic:cursor"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"compiler/generic:cursor" undef, { i64, ptr } %a0, 0
  %t6 = insertvalue %"compiler/generic:cursor" %t4, i64 0, 1
  store %"compiler/generic:cursor" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:cursor", ptr %rv
  ret %"compiler/generic:cursor" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare ptr @llvm.coro.promise(ptr, i32, i1)
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftypes_3aKind(ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 33}
  %t3 = sext i32 %t2 to i64
  %t5 = load i32, ptr %a1, !range !{i32 0, i32 33}
  %t6 = sext i32 %t5 to i64
  %t9 = icmp eq i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t11 = load i1, ptr %l2, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@.d2 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Errors" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"[0]" }>, align 8
@.d4 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".Len()" }>, align 8
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Next" }>, align 8
@.d7 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@olang_2esole_2ecompiler_2fgeneric_3aContext_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Hcd3bbe8e64537e19c3182f51d0fe16c9(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fgeneric_3aContext_2e3 = weak hidden constant i1 false
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
@olang_loc_16dbf6b4ccd94c8c_8f0170059e61e7c0 = external constant [0 x i8]
@olang_loc_b4eb6cf3622f1222_98250c586f701fa6 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecolumnFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstList(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDtorWritten(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetStructBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEnumBody(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetOverBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEmptyBody(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_dbe52b8ce495020a_fa2e1742f6a7a7de = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_19a69728787b464b_16ae308be2e5745f = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efields(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_e3a2ba8c5e067247_8b3ee33876f19483 = external constant [0 x i8]
@olang_loc_9761a243a5640f52_e0132c3d672b758e = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epayload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_e47f82bcf36ef746_b94daf5318f6e942 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeKey(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownerApplies(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSatisfies(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_418de96ceb9602da_9cbeacdc8e10376e = external constant [0 x i8]
@olang_loc_41496c53cef75c6_a63bcc71a26a0752 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamsSig(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3, i32 %a4)
@olang_loc_58d2bf46824473dc_520b730989ac43d8 = external constant [0 x i8]
declare i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsFunc(ptr %v0, ptr %a0)
@olang_loc_793add10df93614a_995dc047d9acd1be = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
@olang_loc_2a66b784d9289786_f31abe169e6a7bb2 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eLen_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvOf(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyGlobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eheld(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDepth(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eMaxDepth = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\30\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunbounded(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Hf7241cd153db7dbb97afc4b39a688af4(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H52a70901e2e6ceea4e17edd807bbe24b(ptr %v0, ptr %a0, i32 %a1, %"compiler/generic:Origin" %a2)
declare %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eLaidOut = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoLayout = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eLayingOut = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eholdsItself(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eMaxChain = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\E8\03\00\00\00\00\00\00" }>, align 8
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetLayoutState(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereprReady(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enoteRawType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eComputeLayout(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeetTyped(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_91e581c61227d1c4_deb54d58cf8aa350 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i1 %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_632aa6436eca4593_afccf639e057e8af = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ementionsName(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eensureModules(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@olang_loc_7fa838ee20be17d9_9f8073ee4b7324d5 = external constant [0 x i8]
declare { i32, %"compiler/generic:Origin" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Hb8bca524fd2b8cbf323e30d364740da1(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eNoOrigin = available_externally constant <{ [32 x i8] }> <{ [32 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\01\00\00\00\00\00\00\00" }>, align 32
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyKind(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, i32 %a3, ptr %a4, i1 %a5)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyBound(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i64 %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldLength(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enumberOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eNullable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2eLen_3ccompiler_2ftypes_3aDeclId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2eAt_3ccompiler_2ftypes_3aDeclId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ePush_3ccompiler_2ftypes_3aDeclId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ePop_3ccompiler_2ftypes_3aDeclId_3e(ptr %v0, ptr %a0)
@olang_loc_720125e199c24f22_e8379e985b9f3c66 = external constant [0 x i8]
@olang_loc_227a3f0eae681c4f_61bdff3e0ec7ebb3 = external constant [0 x i8]
@olang_loc_f703e5bec6c76f87_ea1686e8125b66ab = external constant [0 x i8]
@olang_loc_bbb5b8b709f50d79_9796b462e6590e5d = external constant [0 x i8]
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_189a19e9a5fd6b5a_b53b3f6ea3786e1e = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eprojectPath(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4, { i64, ptr } %a5)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_30deabb7ecc8eb8f_a9174381e9755ebb = external constant [0 x i8]
declare %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpand(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_e8a0dc9ccb955f9f_ce9beed0e9e57113 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i32 %a4)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esuppliedMeets(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3)
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esealedBy(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownMethod(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewritableRecv(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esameUpToShape(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrsHeld(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_a46b2f31ebf5190e_f847dc4b865f1d9a = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2einstanceLen(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyReadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
@olang_loc_d5893f1f042b494f_34caff30dd5c379b = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEnds(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebufferUnended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrsHaveVar(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyLists(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisVar(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eentryHeld(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
@olang_loc_ea43b29642517977_1af2b7cce6fe287b = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2eviewGenTy(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_2ac89deeabe02958_a25efd24ea33a60c = external constant [0 x i8]
@olang_loc_97cd5f16af0b6614_78a73ec613500ec8 = external constant [0 x i8]
@olang_loc_759448a6dcc06fe9_971bda559b794c25 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fgeneric_2eGenLocalBit = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\40" }>, align 8
declare i32 @compiler_2fgeneric_2ebaseName(ptr %v0, ptr %a0)
@olang_loc_9c4890b7bb1b8338_bc401ee50d7cf5ac = external constant [0 x i8]
@olang_loc_a1cd62d4a2c4a909_c9084e1cb558785d = external constant [0 x i8]
@G_2ecompiler_2fgeneric_2eUnfolded = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2)
@olang_loc_de533036e7174fdb_fce805c56f435877 = external constant [0 x i8]
@olang_loc_56a9f796d6022e8a_9e3c205a980da41e = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)

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
