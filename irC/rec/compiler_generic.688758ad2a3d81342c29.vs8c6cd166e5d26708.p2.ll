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
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/generic:fnRow" = type { i64, ptr, i1 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/generic:Unmet" = type { i64, i32, i32, i1, i1, i1 }
%"compiler/generic:instance" = type { i64, i32, i32, { i64, ptr }, { i64, ptr }, %"compiler/generic:Origin" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/generic:cursor" = type { { i64, ptr }, i64 }
%"compiler/generic:folded" = type { i64, i64, i32 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32 }
%"compiler/generic:genRoots" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64 }
define dso_local i64 @compiler_2fgeneric_2eCtorOwner(i32 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = sext i32 %a0 to i64
  %t5 = mul i64 %t3, 2
  %t7 = add i64 %t5, 2
  %t9 = sub i64 0, %t7
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp sgt i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = sub i64 %t10, 1
  %t14 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr ptr, ptr %t15, i64 %t12
  %t17 = load ptr, ptr %t16, !tbaa !39
  %t19 = call i1 @compiler_2fgeneric_2eisErrsArg(ptr %v0, ptr %t17)
  store i1 %t19, ptr %l11
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb4
bb3:
  %t20 = load i1, ptr %l11, !tbaa !21
  store i1 %t20, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l6, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t22 = load i64, ptr %l1, !tbaa !24
  %t24 = sub i64 %t22, 1
  store i64 %t24, ptr %l12, !tbaa !24
  br label %bb7
bb6:
  %t26 = load i64, ptr %l1, !tbaa !24
  store i64 %t26, ptr %l12, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l12, !tbaa !24
  store i64 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eApply(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l19 = alloca i64
  %l24 = alloca i1
  %l25 = alloca { i64, ptr }
  %l29 = alloca i1
  %l32 = alloca i1
  %l34 = alloca i64
  %l42 = alloca i1
  %l47 = alloca i64
  %l55 = alloca i64
  %l58 = alloca i64
  %l80 = alloca i1
  %l83 = alloca i1
  %l84 = alloca i64
  %l86 = alloca i32
  %l89 = alloca { i64, ptr }
  %l92 = alloca i32
  %l94 = alloca i32
  %l95 = alloca i64
  %l98 = alloca { i64, ptr }
  %l102 = alloca i32
  %l105 = alloca ptr
  %l106 = alloca i32
  %l110 = alloca i32
  %l111 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %t1, i32 %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t7, i32 %t8)
  store i64 %t11, ptr %l19
  br label %bb2
bb2:
  %t12 = load i64, ptr %l19, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t21, ptr %l25, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = sub i64 %t22, 1
  %t26 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  %t31 = call i1 @compiler_2fgeneric_2eisErrsArg(ptr %v2, ptr %t29)
  store i1 %t31, ptr %l29
  br label %bb5
bb4:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb6
bb5:
  %t32 = load i1, ptr %l29, !tbaa !21
  store i1 %t32, ptr %l24, !tbaa !21
  br label %bb6
bb6:
  %t33 = load i1, ptr %l24, !tbaa !21
  store i1 %t33, ptr %l6, !tbaa !21
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l2, !tbaa !23
  %t38 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t38, ptr %l32
  br label %bb7
bb7:
  %t39 = load i1, ptr %l32, !tbaa !21
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t40 = load i1, ptr %l6, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb9:
  %t42 = load i1, ptr %l6, !tbaa !21
  br i1 %t42, label %bb16, label %bb17
bb10:
  %t44 = load i64, ptr %l5, !tbaa !24
  store i64 %t44, ptr %l34, !tbaa !24
  br label %bb12
bb11:
  %t46 = load i64, ptr %l5, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load i64, ptr %l34, !tbaa !24
  %t53 = icmp ne i64 %t51, %t50
  br i1 %t53, label %bb13, label %bb14
bb13:
  %t55 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t55, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb22
bb16:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb18
bb17:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = icmp ne i64 %t57, %t58
  store i1 %t61, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t63 = load i1, ptr %l42, !tbaa !21
  br i1 %t63, label %bb19, label %bb20
bb19:
  %t64 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t64, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t66 = load i64, ptr %l4, !tbaa !24
  store i64 %t66, ptr %l47, !tbaa !24
  %t67 = load i64, ptr %l47, !tbaa !24
  %t68 = icmp sge i64 %t67, 0
  br i1 %t68, label %bb23, label %bb24
bb23:
  %t70 = load i64, ptr %l47, !tbaa !24
  %t71 = icmp sle i64 %t70, 2305843009213693951
  br i1 %t71, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_9ad358ce4cd92925_29c80ed6090eef61)
  unreachable
bb25:
  %t73 = load i64, ptr %l47, !tbaa !24
  %t74 = mul i64 %t73, 4
  %t75 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t74)
  %t76 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  store { i64, ptr } %t77, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t79 = load i64, ptr %l4, !tbaa !24
  store i64 %t79, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  %t82 = load i64, ptr %l8, !tbaa !24
  %t85 = icmp sgt i64 %t81, %t82
  br i1 %t85, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_9ad358ce4cd92925_29c80ed6090eef61)
  unreachable
bb27:
  %t87 = load i64, ptr %l10, !tbaa !24
  %t89 = icmp sgt i64 %t87, 0
  br i1 %t89, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb32
bb29:
  %t91 = load i64, ptr %l9, !tbaa !24
  %t92 = load i64, ptr %l8, !tbaa !24
  %t95 = sub i64 %t91, %t92
  %t96 = load i64, ptr %l10, !tbaa !24
  %t99 = add i64 %t95, %t96
  %t101 = sub i64 %t99, 1
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = sdiv i64 %t101, %t102
  store i64 %t105, ptr %l58, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb31
bb31:
  %t107 = load i64, ptr %l58, !tbaa !24
  store i64 %t107, ptr %l55, !tbaa !24
  br label %bb32
bb32:
  %t108 = load i64, ptr %l55, !tbaa !24
  store i64 %t108, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb33
bb33:
  %t109 = load i64, ptr %l12, !tbaa !24
  %t110 = load i64, ptr %l11, !tbaa !24
  %t113 = icmp slt i64 %t109, %t110
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb34, label %bb35
bb34:
  br label %bb51
bb35:
  br label %bb36
bb36:
  %t117 = load i64, ptr %l8, !tbaa !24
  %t118 = load i64, ptr %l12, !tbaa !24
  %t119 = load i64, ptr %l10, !tbaa !24
  %t122 = mul i64 %t118, %t119
  %t125 = add i64 %t117, %t122
  store i64 %t125, ptr %l13, !tbaa !24
  %t127 = load i64, ptr %l13, !tbaa !24
  %t128 = load i64, ptr %l4, !tbaa !24
  %t130 = sub i64 %t128, 1
  %t133 = icmp eq i64 %t127, %t130
  br i1 %t133, label %bb37, label %bb38
bb37:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load i32, ptr %l2, !tbaa !23
  %t139 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %t135, i32 %t136)
  store i1 %t139, ptr %l83
  br label %bb39
bb38:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb40
bb39:
  %t140 = load i1, ptr %l83, !tbaa !21
  store i1 %t140, ptr %l80, !tbaa !21
  br label %bb40
bb40:
  %t141 = load i1, ptr %l80, !tbaa !21
  br i1 %t141, label %bb41, label %bb42
bb41:
  %t142 = load i64, ptr %l13, !tbaa !24
  store i64 %t142, ptr %l84, !tbaa !24
  %t143 = load i1, ptr %l6, !tbaa !21
  br i1 %t143, label %bb43, label %bb44
bb42:
  %t145 = load i64, ptr %l13, !tbaa !24
  store i64 %t145, ptr %l95, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l1, !tbaa !29
  %t148 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t148, ptr %l98, !tbaa !27
  %t149 = load i64, ptr %l13, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr ptr, ptr %t152, i64 %t149
  %t154 = load ptr, ptr %t153, !tbaa !39
  %t159 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t146, ptr %t147, ptr %t154)
  store i32 %t159, ptr %l102
  br label %bb48
bb43:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t162 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t162, ptr %l89, !tbaa !27
  %t163 = load i64, ptr %l13, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr ptr, ptr %t166, i64 %t163
  %t168 = load ptr, ptr %t167, !tbaa !39
  %t172 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrsArg(ptr %v0, ptr %v1, ptr %v2, ptr %t160, ptr %t161, ptr %t168)
  store i32 %t172, ptr %l92
  br label %bb45
bb44:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t173, i32 0)
  store i32 %t175, ptr %l94
  br label %bb46
bb45:
  %t176 = load i32, ptr %l92, !tbaa !23
  store i32 %t176, ptr %l86, !tbaa !23
  br label %bb47
bb46:
  %t177 = load i32, ptr %l94, !tbaa !23
  store i32 %t177, ptr %l86, !tbaa !23
  br label %bb47
bb47:
  %t178 = load i32, ptr %l86, !tbaa !23
  %t179 = load i64, ptr %l84, !tbaa !24
  %t180 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = getelementptr i32, ptr %t181, i64 %t179
  store i32 %t178, ptr %t182, !tbaa !33
  br label %bb49
bb48:
  %t183 = load i32, ptr %l102, !tbaa !23
  %t184 = load i64, ptr %l95, !tbaa !24
  %t185 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !27
  %t187 = getelementptr i32, ptr %t186, i64 %t184
  store i32 %t183, ptr %t187, !tbaa !33
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t188 = load i64, ptr %l12, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l12, !tbaa !24
  br label %bb33
bb51:
  %t192 = load ptr, ptr %l0, !tbaa !29
  store ptr %t192, ptr %l105, !tbaa !29
  %t193 = load i32, ptr %l2, !tbaa !23
  store i32 %t193, ptr %l106, !tbaa !23
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/generic:Program", ptr %t194, i32 0, i32 2
  %t197 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t200 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t196, { i64, ptr } %t197)
  store i32 %t200, ptr %l110
  br label %bb52
bb52:
  %t201 = load ptr, ptr %l105, !tbaa !29
  %t202 = load i32, ptr %l106, !tbaa !23
  %t203 = load i32, ptr %l110, !tbaa !23
  %t204 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t201, i32 %t202, i32 %t203)
  store i32 %t204, ptr %l111
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t205 = load i32, ptr %l111, !tbaa !23
  store i32 %t205, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOverlap(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/generic:fnRow"
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca %"compiler/generic:fnRow"
  %l11 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l22 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l23 = alloca i64
  %l24 = alloca i32
  %l27 = alloca i1
  %l33 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca i1
  %l39 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i1
  %l45 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca i32
  %l52 = alloca i32
  %l53 = alloca i1
  %l55 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i32
  %s0 = alloca %olang.scope
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
  store %"compiler/generic:fnRow" %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:fnRow", ptr %l8
  store %"compiler/generic:fnRow" %t8, ptr %l2
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderKey(ptr %v0, ptr %t9, i64 %t10)
  store i64 %t13, ptr %l11
  br label %bb2
bb2:
  %t14 = load i64, ptr %l11, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t17 = icmp slt i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 40
  store ptr %t22, ptr %l17, !tbaa !29
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/ast:Func", ptr %t25, i32 0, i32 10
  %t28 = load i32, ptr %t27, !tbaa !23
  %t30 = sext i32 %t28 to i64
  %t33 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t23, i64 %t30)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t33, ptr %l22
  br label %bb6
bb6:
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l22
  %t36 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t34, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t35)
  %t37 = extractvalue { i32, i64 } %t36, 1
  %t38 = extractvalue { i32, i64 } %t36, 0
  store i32 %t38, ptr %l24
  %t39 = icmp ne i32 %t38, 0
  br i1 %t39, label %bb8, label %ok.40, !prof !99
ok.40:
  store i64 %t37, ptr %l23
  br label %bb7
bb7:
  %t41 = load i64, ptr %l23, !tbaa !24
  store i64 %t41, ptr %l15, !tbaa !24
  br label %bb10
bb8:
  br label %bb9
bb9:
  store i64 -1, ptr %l15, !tbaa !24
  br label %bb10
bb10:
  %t42 = load i64, ptr %l15, !tbaa !24
  store i64 %t42, ptr %l4, !tbaa !24
  br label %bb11
bb11:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t45 = icmp sge i64 %t43, 0
  br i1 %t45, label %bb12, label %bb13
bb12:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t48 = load i64, ptr %l1, !tbaa !24
  %t51 = icmp ne i64 %t47, %t48
  store i1 %t51, ptr %l27, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l27, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb15, label %bb16
bb15:
  br label %bb36
bb16:
  br label %bb17
bb17:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  store ptr %t58, ptr %l33, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t59, i64 %t60)
  store i32 %t63, ptr %l36
  br label %bb18
bb18:
  %t64 = load ptr, ptr %l33, !tbaa !29
  %t65 = load i32, ptr %l36, !tbaa !23
  %t66 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t64, i32 %t65)
  store i1 %t66, ptr %l37
  br label %bb19
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l39, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i64, ptr %l1, !tbaa !24
  %t74 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t70, i64 %t71)
  store i32 %t74, ptr %l42
  br label %bb20
bb20:
  %t75 = load ptr, ptr %l39, !tbaa !29
  %t76 = load i32, ptr %l42, !tbaa !23
  %t77 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t75, i32 %t76)
  store i1 %t77, ptr %l43
  br label %bb21
bb21:
  %t78 = load i1, ptr %l37, !tbaa !21
  %t79 = load i1, ptr %l43, !tbaa !21
  %t80 = icmp eq i1 %t78, %t79
  br i1 %t80, label %bb22, label %bb23
bb22:
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l46, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l4, !tbaa !24
  %t87 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t83, i64 %t84)
  store i32 %t87, ptr %l49
  br label %bb24
bb23:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb27
bb24:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i64, ptr %l1, !tbaa !24
  %t92 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t88, i64 %t89)
  store i32 %t92, ptr %l52
  br label %bb25
bb25:
  %t93 = load ptr, ptr %l46, !tbaa !29
  %t94 = load i32, ptr %l49, !tbaa !23
  %t95 = load i32, ptr %l52, !tbaa !23
  %t96 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypesOverlap(ptr %v0, ptr %t93, i32 %t94, i32 %t95, i64 0)
  store i1 %t96, ptr %l53
  br label %bb26
bb26:
  %t97 = load i1, ptr %l53, !tbaa !21
  store i1 %t97, ptr %l45, !tbaa !21
  br label %bb27
bb27:
  %t98 = load i1, ptr %l45, !tbaa !21
  br i1 %t98, label %bb28, label %bb29
bb28:
  %t99 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t99, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/generic:Program", ptr %t101, i32 0, i32 37
  %t104 = load i64, ptr %l4, !tbaa !24
  %t107 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t103, i64 %t104)
  %t108 = extractvalue { i32, i64 } %t107, 1
  %t109 = extractvalue { i32, i64 } %t107, 0
  store i32 %t109, ptr %l60
  %t110 = icmp ne i32 %t109, 0
  br i1 %t110, label %bb32, label %ok.111, !prof !99
ok.111:
  store i64 %t108, ptr %l59
  br label %bb31
bb31:
  %t112 = load i64, ptr %l59, !tbaa !24
  store i64 %t112, ptr %l55, !tbaa !24
  br label %bb34
bb32:
  br label %bb33
bb33:
  store i64 -1, ptr %l55, !tbaa !24
  br label %bb34
bb34:
  %t113 = load i64, ptr %l55, !tbaa !24
  store i64 %t113, ptr %l4, !tbaa !24
  br label %bb35
bb35:
  br label %bb11
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuildersOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %lp2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/generic:fnRow"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca ptr
  %l19 = alloca i32
  %l22 = alloca i32
  %l26 = alloca i32
  %l28 = alloca i32
  %l29 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l32 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l60 = alloca %"compiler/generic:fnRow"
  %l62 = alloca i1
  %l64 = alloca i1
  %l69 = alloca i1
  %l74 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l13
  br label %bb2
bb2:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t4, ptr %lp2
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t6 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  store ptr %t9, ptr %l15, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l19
  br label %bb3
bb3:
  %t17 = load i32, ptr %l19, !range !{i32 0, i32 33}
  %t19 = trunc i64 20 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l26
  br label %bb6
bb5:
  %t29 = load i32, ptr %l1, !tbaa !23
  store i32 %t29, ptr %l22, !tbaa !23
  br label %bb7
bb6:
  %t31 = load i32, ptr %l26, !tbaa !23
  store i32 %t31, ptr %l22, !tbaa !23
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l15, !tbaa !29
  %t33 = load i32, ptr %l22, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t34, ptr %l28
  br label %bb8
bb8:
  %t35 = load i32, ptr %l28, !tbaa !23
  store i32 %t35, ptr %l3, !tbaa !23
  %t36 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t36, ptr %l29
  br label %bb9
bb9:
  %t37 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l29
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t37, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 29
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eLen_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l32
  br label %bb10
bb10:
  %t43 = load i64, ptr %l32, !tbaa !24
  store i64 %t43, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = icmp sgt i64 %t44, %t45
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = load i64, ptr %l7, !tbaa !24
  %t52 = icmp sgt i64 %t50, 0
  br i1 %t52, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb16
bb13:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = sub i64 %t54, %t55
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = sub i64 %t62, 1
  %t65 = load i64, ptr %l7, !tbaa !24
  %t68 = sdiv i64 %t64, %t65
  store i64 %t68, ptr %l39, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb15
bb15:
  %t70 = load i64, ptr %l39, !tbaa !24
  store i64 %t70, ptr %l36, !tbaa !24
  br label %bb16
bb16:
  %t71 = load i64, ptr %l36, !tbaa !24
  store i64 %t71, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb17
bb17:
  %t72 = load i64, ptr %l9, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  %t76 = icmp slt i64 %t72, %t73
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb18, label %bb19
bb18:
  br label %bb37
bb19:
  br label %bb20
bb20:
  %t80 = load i64, ptr %l5, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  %t82 = load i64, ptr %l7, !tbaa !24
  %t85 = mul i64 %t81, %t82
  %t88 = add i64 %t80, %t85
  store i64 %t88, ptr %l10, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 29
  %t93 = load i64, ptr %l10, !tbaa !24
  %t96 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t92, i64 %t93)
  store %"compiler/generic:fnRow" %t96, ptr %l60
  br label %bb21
bb21:
  %t97 = load %"compiler/generic:fnRow", ptr %l60
  store %"compiler/generic:fnRow" %t97, ptr %l11
  %t98 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t99)
  store i1 %t101, ptr %l62
  br label %bb22
bb22:
  %t102 = load i1, ptr %l62, !tbaa !21
  %t103 = xor i1 %t102, true
  br i1 %t103, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb26
bb24:
  %t105 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/ast:Func", ptr %t106, i32 0, i32 10
  %t109 = load i32, ptr %t108, !tbaa !23
  %t111 = sext i32 %t109 to i64
  %t114 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l4, i64 %t111)
  store i1 %t114, ptr %l69
  br label %bb25
bb25:
  %t115 = load i1, ptr %l69, !tbaa !21
  store i1 %t115, ptr %l64, !tbaa !21
  br label %bb26
bb26:
  %t116 = load i1, ptr %l64, !tbaa !21
  br i1 %t116, label %bb27, label %bb28
bb27:
  br label %bb36
bb28:
  br label %bb29
bb29:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l3, !tbaa !23
  %t119 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/ast:Func", ptr %t120, i32 0, i32 10
  %t123 = load i32, ptr %t122, !tbaa !23
  %t127 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %t117, i32 %t118, i32 %t123, i1 false)
  store i64 %t127, ptr %l74
  br label %bb30
bb30:
  %t128 = load i64, ptr %l10, !tbaa !24
  %t129 = load i64, ptr %l74, !tbaa !24
  %t131 = icmp ne i64 %t129, %t128
  br i1 %t131, label %bb31, label %bb32
bb31:
  br label %bb36
bb32:
  br label %bb33
bb33:
  %t133 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = getelementptr %"compiler/ast:Func", ptr %t134, i32 0, i32 10
  %t137 = load i32, ptr %t136, !tbaa !23
  %t139 = sext i32 %t137 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l4, i64 %t139, i1 true)
  br label %bb34
bb34:
  %t142 = load ptr, ptr %lp2
  %t143 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t142, i64 %t143)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t146 = load i64, ptr %l9, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l9, !tbaa !24
  br label %bb17
bb37:
  %t150 = load ptr, ptr %lp2
  %t151 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t150
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t151, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %lp3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l15 = alloca %"compiler/generic:Context"
  %l19 = alloca i32
  %l21 = alloca i64
  %l25 = alloca { i64, ptr }
  %l28 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l53 = alloca ptr
  %l57 = alloca %"compiler/generic:varRow"
  %l58 = alloca i32
  %l63 = alloca i32
  %l64 = alloca { i64, ptr }
  %l72 = alloca i32
  %l75 = alloca %"compiler/generic:Context"
  %t3 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %t3, ptr %v0, ptr %v1, ptr %t1, i32 %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %t3, i64 160, i1 false)
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 160, i64 8)
  store ptr %t6, ptr %lp3
  %t7 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t7, ptr %l15, i64 160, i1 false)
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l19
  br label %bb2
bb2:
  %t15 = load i32, ptr %l19, !tbaa !23
  store i32 %t15, ptr %l4, !tbaa !23
  %t16 = load i32, ptr %l4, !tbaa !23
  %t18 = call i64 @compiler_2fgeneric_2eCtorOwner(i32 %t16)
  store i64 %t18, ptr %l21
  br label %bb3
bb3:
  %t19 = load i64, ptr %l21, !tbaa !24
  store i64 %t19, ptr %l5, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t26 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t22, i32 %a2)
  store { i64, ptr } %t26, ptr %l25
  br label %bb4
bb4:
  %t27 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t27, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l4, !tbaa !23
  %t32 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorVars(ptr %v0, ptr %t28, i32 %t29)
  store i64 %t32, ptr %l28
  br label %bb5
bb5:
  %t33 = load i64, ptr %l28, !tbaa !24
  store i64 %t33, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t34 = load i64, ptr %l8, !tbaa !24
  %t35 = load i64, ptr %l7, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb6, label %bb7
bb6:
  %t40 = load i64, ptr %l9, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb11
bb8:
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l9, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l35, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb10
bb10:
  %t60 = load i64, ptr %l35, !tbaa !24
  store i64 %t60, ptr %l32, !tbaa !24
  br label %bb11
bb11:
  %t61 = load i64, ptr %l32, !tbaa !24
  store i64 %t61, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  %t62 = load i64, ptr %l11, !tbaa !24
  %t63 = load i64, ptr %l10, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb13, label %bb14
bb13:
  br label %bb23
bb14:
  br label %bb15
bb15:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t71 = load i64, ptr %l11, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l12, !tbaa !24
  %t80 = load ptr, ptr %lp3
  %t81 = getelementptr %"compiler/generic:Context", ptr %t80, i32 0, i32 2
  store ptr %t81, ptr %l53, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l5, !tbaa !24
  %t84 = load i64, ptr %l12, !tbaa !24
  %t88 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t82, i64 %t83, i64 %t84)
  store %"compiler/generic:varRow" %t88, ptr %l57
  br label %bb16
bb16:
  %t89 = getelementptr %"compiler/generic:varRow", ptr %l57, i32 0, i32 1
  %t90 = load i32, ptr %t89, !tbaa !23
  store i32 %t90, ptr %l58, !tbaa !23
  %t91 = load i64, ptr %l12, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t97 = icmp slt i64 %t91, %t94
  br i1 %t97, label %bb17, label %bb18
bb17:
  %t99 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t99, ptr %l64, !tbaa !27
  %t100 = load i64, ptr %l12, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i32, ptr %t103, i64 %t100
  %t105 = load i32, ptr %t104, !tbaa !33
  store i32 %t105, ptr %l63, !tbaa !23
  br label %bb20
bb18:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  %t110 = load i64, ptr %l5, !tbaa !24
  %t111 = load i64, ptr %l12, !tbaa !24
  %t112 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t109, i64 %t110, i64 %t111, i64 %t112)
  store i32 %t117, ptr %l72
  br label %bb19
bb19:
  %t118 = load i32, ptr %l72, !tbaa !23
  store i32 %t118, ptr %l63, !tbaa !23
  br label %bb20
bb20:
  %t119 = load ptr, ptr %l53, !tbaa !29
  %t120 = load i32, ptr %l58, !tbaa !23
  %t121 = load i32, ptr %l63, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v1, ptr %t119, i32 %t120, i32 %t121)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t122 = load i64, ptr %l11, !tbaa !24
  %t124 = add i64 %t122, 1
  store i64 %t124, ptr %l11, !tbaa !24
  br label %bb12
bb23:
  %t126 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l75, ptr %t126, i64 160, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l75, i64 160, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrDeclOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l7 = alloca i1
  %l13 = alloca i32
  %l18 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l34 = alloca i32
  %l35 = alloca i32
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
  %t7 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t3, i32 %t4)
  store i1 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i1, ptr %l7, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i32 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValName(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l13
  br label %bb5
bb5:
  %t19 = load i32, ptr %l13, !tbaa !23
  store i32 %t19, ptr %l2, !tbaa !23
  %t20 = load i32, ptr %l2, !tbaa !23
  %t22 = icmp sge i32 %t20, 0
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load i32, ptr %l2, !tbaa !23
  store i32 %t24, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  store ptr %t28, ptr %l18, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l22
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t37 = load i32, ptr %l22, !tbaa !23
  %t38 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t36, i32 %t37)
  store { i64, ptr } %t38, ptr %l23
  br label %bb10
bb10:
  %t39 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t39, ptr %l3, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t44 = icmp ne i64 %t42, 1
  br i1 %t44, label %bb11, label %bb12
bb11:
  store i32 -1, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  store ptr %t49, ptr %l29, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t53, ptr %l32, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i32, ptr %t55, i64 0
  %t57 = load i32, ptr %t56, !tbaa !33
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t52, i32 %t57)
  store i32 %t60, ptr %l34
  br label %bb14
bb14:
  %t61 = load ptr, ptr %l29, !tbaa !29
  %t62 = load i32, ptr %l34, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t63, ptr %l35
  br label %bb15
bb15:
  %t64 = load i32, ptr %l35, !tbaa !23
  store i32 %t64, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarIndex(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i32
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t1)
  store i64 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i64, ptr %l10, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t5, i64 %t6)
  store i32 %t9, ptr %l13
  br label %bb2
bb2:
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t10, i64 %t11)
  store i64 %t14, ptr %l16
  br label %bb3
bb3:
  %t15 = load i64, ptr %l16, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb9
bb6:
  %t26 = load i64, ptr %l4, !tbaa !24
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l23, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l23, !tbaa !24
  store i64 %t42, ptr %l20, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l20, !tbaa !24
  store i64 %t43, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb11, label %bb12
bb11:
  br label %bb19
bb12:
  br label %bb13
bb13:
  %t52 = load i64, ptr %l3, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l8, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i64, ptr %l2, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t68 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %t62, i64 %t63, i64 %t64)
  store i1 %t68, ptr %l44
  br label %bb14
bb14:
  %t69 = load i1, ptr %l44, !tbaa !21
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t70 = load i64, ptr %l8, !tbaa !24
  store i64 %t70, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l7, !tbaa !24
  br label %bb10
bb19:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, { i64, ptr } %a3) #0 {
entry:
  %l8 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t9 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, { i64, ptr } %a3)
  store i32 %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load i32, ptr %l8, !tbaa !23
  store i32 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtended(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/generic:Context"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i32
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l28 = alloca i32
  %l31 = alloca ptr
  %l34 = alloca i1
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l46 = alloca i1
  %l53 = alloca %"compiler/generic:Context"
  %l61 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l70 = alloca i32
  %l72 = alloca i64
  %l76 = alloca i32
  %l77 = alloca i32
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca i64
  %l84 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t101 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  %t18 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s1, ptr %l2)
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
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l28
  br label %bb7
bb7:
  %t42 = load i32, ptr %l28, !tbaa !23
  store i32 %t42, ptr %l3, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l3, !tbaa !23
  %t47 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t43, i32 %t44)
  store ptr %t47, ptr %l31
  br label %bb8
bb8:
  %t48 = load ptr, ptr %l31, !tbaa !29
  store ptr %t48, ptr %l4, !tbaa !29
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t51 = icmp eq ptr %t49, null
  br i1 %t51, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb11
bb10:
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t55 = getelementptr %"compiler/ast:TypeDecl", ptr %t53, i32 0, i32 3
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = icmp eq ptr %t56, null
  store i1 %t58, ptr %l34, !tbaa !21
  br label %bb11
bb11:
  %t60 = load i1, ptr %l34, !tbaa !21
  br i1 %t60, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t62 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s2, ptr %l2)
  store { i64, ptr } %t62, ptr %l39
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t63 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t63, ptr %l40, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l41, !tbaa !24
  %t66 = load i64, ptr %l41, !tbaa !24
  %t67 = mul i64 %t66, 4
  %t68 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t67)
  %t69 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  store { i64, ptr } %t70, ptr %l42, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = load i64, ptr %l41, !tbaa !24
  %t76 = mul i64 %t75, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t72, ptr %t74, i64 %t76, i1 false)
  %t77 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t77, ptr %l40, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t78 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t78, ptr %rv
  br label %ret
bb15:
  %t79 = load ptr, ptr %l4, !tbaa !29
  %t81 = getelementptr %"compiler/ast:TypeDecl", ptr %t79, i32 0, i32 3
  %t82 = load ptr, ptr %t81, !tbaa !29
  store ptr %t82, ptr %l5, !tbaa !29
  %t84 = load ptr, ptr %l5, !tbaa !29
  store ptr %t84, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t85 = load ptr, ptr %l45, !tbaa !29
  %t86 = icmp ne ptr %t85, null
  br i1 %t86, label %bb16, label %bb17
bb16:
  %t88 = load ptr, ptr %l45, !tbaa !29
  %t89 = load i64, ptr %t88, !range !{i64 0, i64 5}
  %t91 = icmp eq i64 %t89, 2
  store i1 %t91, ptr %l46, !tbaa !21
  br label %bb17
bb17:
  %t92 = load i1, ptr %l46, !tbaa !21
  br i1 %t92, label %bb18, label %bb19
bb18:
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t95 = getelementptr { i64, [6 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t95, i32 0, i32 1
  %t97 = load { i64, ptr }, ptr %t96
  store { i64, ptr } %t97, ptr %l6, !tbaa !27
  br label %bb20
bb19:
  br label %bb33
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t101, ptr %v0, ptr %s3, ptr %t99, i32 %t100)
  call void @llvm.memmove.p0.p0.i64(ptr %l53, ptr %t101, i64 160, i1 false)
  br label %bb21
bb21:
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l53, i64 160, i1 false)
  %t104 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t104, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  store i64 %t108, ptr %l10, !tbaa !24
  br label %bb22
bb22:
  %t110 = load i64, ptr %l9, !tbaa !24
  %t111 = load i64, ptr %l10, !tbaa !24
  %t114 = icmp slt i64 %t110, %t111
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb23, label %bb24
bb23:
  br label %bb32
bb24:
  br label %bb25
bb25:
  %t118 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t118, ptr %l61, !tbaa !27
  %t119 = load i64, ptr %l9, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr ptr, ptr %t122, i64 %t119
  %t124 = load ptr, ptr %t123, !tbaa !39
  store ptr %l2, ptr %l64, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l65, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t133 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s3, ptr %v0, ptr %t127, ptr %l7, ptr %t124)
  store i32 %t133, ptr %l70
  br label %bb26
bb26:
  %t134 = load i32, ptr %l3, !tbaa !23
  %t136 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t134)
  store i64 %t136, ptr %l72
  br label %bb27
bb27:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/generic:Program", ptr %t137, i32 0, i32 2
  %t140 = load i32, ptr %l1, !tbaa !23
  %t143 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t139, i32 %t140)
  store i32 %t143, ptr %l76
  br label %bb28
bb28:
  %t144 = load ptr, ptr %l65, !tbaa !29
  %t145 = load i32, ptr %l70, !tbaa !23
  %t146 = load i64, ptr %l72, !tbaa !24
  %t147 = load i32, ptr %l76, !tbaa !23
  %t148 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t144, i32 %t145, i64 %t146, i32 %t147)
  store i32 %t148, ptr %l77
  br label %bb29
bb29:
  %t149 = load ptr, ptr %l64, !tbaa !29
  %t150 = load i32, ptr %l77, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t149, i32 %t150)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t151 = load i64, ptr %l9, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l9, !tbaa !24
  br label %bb22
bb32:
  call void @__olang_scope_close(ptr %s3)
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
  call void @__olang_check_failed(ptr @olang_loc_b59432b088c5606d_7020d2b0800457f9)
  unreachable
bb38:
  %t156 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t156, ptr %l81
  br label %bb39
bb39:
  %t157 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t157, ptr %l82, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 0
  store i64 %t159, ptr %l83, !tbaa !24
  %t160 = load i64, ptr %l83, !tbaa !24
  %t161 = mul i64 %t160, 4
  %t162 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t161)
  %t163 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  store { i64, ptr } %t164, ptr %l84, !tbaa !27
  %t165 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = load i64, ptr %l83, !tbaa !24
  %t170 = mul i64 %t169, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t166, ptr %t168, i64 %t170, i1 false)
  %t171 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t171, ptr %l82, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t172 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t172, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFirstUnmet(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/generic:varRow"
  %l11 = alloca i32
  %l12 = alloca %"compiler/generic:Unmet"
  %l16 = alloca { i64, ptr }
  %l22 = alloca i64
  %l25 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l51 = alloca %"compiler/generic:varRow"
  %l55 = alloca i1
  %l58 = alloca { i64, ptr }
  %l61 = alloca i1
  %l67 = alloca i32
  %l71 = alloca i1
  %l74 = alloca { i64, ptr }
  %l78 = alloca %"compiler/generic:Unmet"
  %l87 = alloca %"compiler/generic:Unmet"
  %l90 = alloca %"compiler/generic:Unmet"
  %s6 = alloca %olang.scope
  %rv = alloca %"compiler/generic:Unmet"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l2, !tbaa !23
  %t7 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t3, i32 %t4)
  store { i64, ptr } %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb4:
  %t23 = load i64, ptr %l5, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l25, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l25, !tbaa !24
  store i64 %t39, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l22, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  br label %bb35
bb10:
  br label %bb11
bb11:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l9, !tbaa !24
  %t59 = load i64, ptr %l9, !tbaa !24
  store i64 %t59, ptr %l43, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i64, ptr %l1, !tbaa !24
  %t64 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t60, i64 %t61)
  store i64 %t64, ptr %l46
  br label %bb12
bb12:
  %t65 = load i64, ptr %l43, !tbaa !24
  %t66 = load i64, ptr %l46, !tbaa !24
  %t67 = icmp sge i64 %t65, %t66
  br i1 %t67, label %bb13, label %bb14
bb13:
  br label %bb35
bb14:
  br label %bb15
bb15:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l1, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t75 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t69, i64 %t70, i64 %t71)
  store %"compiler/generic:varRow" %t75, ptr %l51
  br label %bb16
bb16:
  %t76 = load %"compiler/generic:varRow", ptr %l51
  store %"compiler/generic:varRow" %t76, ptr %l10
  %t77 = getelementptr %"compiler/generic:varRow", ptr %l10, i32 0, i32 3
  %t78 = load i32, ptr %t77, !tbaa !23
  %t79 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t82 = icmp eq i32 %t78, %t79
  br i1 %t82, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb20
bb18:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 2
  %t87 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t87, ptr %l58, !tbaa !27
  %t88 = load i64, ptr %l9, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i32, ptr %t91, i64 %t88
  %t93 = load i32, ptr %t92, !tbaa !33
  %t96 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t86, i32 %t93)
  store i1 %t96, ptr %l61
  br label %bb19
bb19:
  %t97 = load i1, ptr %l61, !tbaa !21
  %t98 = xor i1 %t97, true
  store i1 %t98, ptr %l55, !tbaa !21
  br label %bb20
bb20:
  %t100 = load i1, ptr %l55, !tbaa !21
  br i1 %t100, label %bb21, label %bb22
bb21:
  br label %bb34
bb22:
  br label %bb23
bb23:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/generic:varRow", ptr %l10, i32 0, i32 3
  %t103 = load i32, ptr %t102, !tbaa !23
  %t104 = load i64, ptr %l1, !tbaa !24
  %t105 = load i32, ptr %l2, !tbaa !23
  %t110 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t101, i32 %t103, i64 %t104, i32 %t105)
  store i32 %t110, ptr %l67
  br label %bb24
bb24:
  %t111 = load i32, ptr %l67, !tbaa !23
  store i32 %t111, ptr %l11, !tbaa !23
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 2
  %t115 = load i32, ptr %l11, !tbaa !23
  %t118 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t114, i32 %t115)
  store i1 %t118, ptr %l71
  br label %bb25
bb25:
  %t119 = load i1, ptr %l71, !tbaa !21
  %t120 = xor i1 %t119, true
  br i1 %t120, label %bb26, label %bb27
bb26:
  br label %bb34
bb27:
  br label %bb28
bb28:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t123, ptr %l74, !tbaa !27
  %t124 = load i64, ptr %l9, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i32, ptr %t127, i64 %t124
  %t129 = load i32, ptr %t128, !tbaa !33
  %t130 = load i32, ptr %l11, !tbaa !23
  %t134 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %t122, i32 %t129, i32 %t130, i1 true, i64 0)
  store %"compiler/generic:Unmet" %t134, ptr %l78
  br label %bb29
bb29:
  %t135 = load %"compiler/generic:Unmet", ptr %l78
  store %"compiler/generic:Unmet" %t135, ptr %l12
  %t136 = getelementptr %"compiler/generic:Unmet", ptr %l12, i32 0, i32 0
  %t137 = load i64, ptr %t136, !tbaa !24
  %t139 = icmp sge i64 %t137, 0
  br i1 %t139, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t141 = load i64, ptr %l9, !tbaa !24
  %t142 = getelementptr %"compiler/generic:Unmet", ptr %l12, i32 0, i32 1
  %t143 = load i32, ptr %t142, !tbaa !23
  %t144 = getelementptr %"compiler/generic:Unmet", ptr %l12, i32 0, i32 2
  %t145 = load i32, ptr %t144, !tbaa !23
  %t146 = getelementptr %"compiler/generic:Unmet", ptr %l12, i32 0, i32 3
  %t147 = load i1, ptr %t146, !tbaa !21
  %t148 = getelementptr %"compiler/generic:Unmet", ptr %l12, i32 0, i32 4
  %t149 = load i1, ptr %t148, !tbaa !21
  %t150 = getelementptr %"compiler/generic:Unmet", ptr %l12, i32 0, i32 5
  %t151 = load i1, ptr %t150, !tbaa !21
  %t158 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s6, i64 %t141, i32 %t143, i32 %t145, i1 %t147, i1 %t149, i1 %t151)
  store %"compiler/generic:Unmet" %t158, ptr %l87
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_scope_close(ptr %s6)
  %t159 = load %"compiler/generic:Unmet", ptr %l87
  store %"compiler/generic:Unmet" %t159, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t160 = load i64, ptr %l8, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l8, !tbaa !24
  br label %bb8
bb35:
  %t164 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2eUnmet_2emet()
  store %"compiler/generic:Unmet" %t164, ptr %l90
  br label %bb36
bb36:
  %t165 = load %"compiler/generic:Unmet", ptr %l90
  store %"compiler/generic:Unmet" %t165, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Unmet", ptr %rv
  ret %"compiler/generic:Unmet" %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %lp4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i32
  %l20 = alloca %"compiler/generic:fnRow"
  %l23 = alloca %"compiler/generic:Context"
  %l27 = alloca { i64, ptr }
  %l30 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l55 = alloca ptr
  %l59 = alloca %"compiler/generic:varRow"
  %l60 = alloca i32
  %l65 = alloca i32
  %l66 = alloca { i64, ptr }
  %l74 = alloca i32
  %l77 = alloca %"compiler/generic:Context"
  %s0 = alloca %olang.scope
  %t20 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t1)
  store i64 %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load i64, ptr %l13, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t5, i64 %t6)
  store i32 %t9, ptr %l16
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 29
  %t13 = load i64, ptr %l1, !tbaa !24
  %t16 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s0, ptr %t12, i64 %t13)
  store %"compiler/generic:fnRow" %t16, ptr %l20
  br label %bb3
bb3:
  %t17 = getelementptr %"compiler/generic:fnRow", ptr %l20, i32 0, i32 0
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t20, ptr %v1, i64 %t18, i64 %t19)
  call void @llvm.memmove.p0.p0.i64(ptr %l23, ptr %t20, i64 160, i1 false)
  br label %bb4
bb4:
  %t23 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 160, i64 8)
  store ptr %t23, ptr %lp4
  %t24 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %t24, ptr %l23, i64 160, i1 false)
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t31 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t27, i32 %a2)
  store { i64, ptr } %t31, ptr %l27
  br label %bb5
bb5:
  %t32 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t32, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t33, i64 %t34)
  store i64 %t37, ptr %l30
  br label %bb6
bb6:
  %t38 = load i64, ptr %l30, !tbaa !24
  store i64 %t38, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb7, label %bb8
bb7:
  %t45 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb12
bb9:
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = sub i64 %t49, %t50
  %t54 = load i64, ptr %l8, !tbaa !24
  %t57 = add i64 %t53, %t54
  %t59 = sub i64 %t57, 1
  %t60 = load i64, ptr %l8, !tbaa !24
  %t63 = sdiv i64 %t59, %t60
  store i64 %t63, ptr %l37, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb11
bb11:
  %t65 = load i64, ptr %l37, !tbaa !24
  store i64 %t65, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t66 = load i64, ptr %l34, !tbaa !24
  store i64 %t66, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t67 = load i64, ptr %l10, !tbaa !24
  %t68 = load i64, ptr %l9, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb14, label %bb15
bb14:
  br label %bb24
bb15:
  br label %bb16
bb16:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t76 = load i64, ptr %l10, !tbaa !24
  %t77 = load i64, ptr %l8, !tbaa !24
  %t80 = mul i64 %t76, %t77
  %t83 = add i64 %t75, %t80
  store i64 %t83, ptr %l11, !tbaa !24
  %t85 = load ptr, ptr %lp4
  %t86 = getelementptr %"compiler/generic:Context", ptr %t85, i32 0, i32 2
  store ptr %t86, ptr %l55, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l3, !tbaa !24
  %t89 = load i64, ptr %l11, !tbaa !24
  %t93 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t87, i64 %t88, i64 %t89)
  store %"compiler/generic:varRow" %t93, ptr %l59
  br label %bb17
bb17:
  %t94 = getelementptr %"compiler/generic:varRow", ptr %l59, i32 0, i32 1
  %t95 = load i32, ptr %t94, !tbaa !23
  store i32 %t95, ptr %l60, !tbaa !23
  %t96 = load i64, ptr %l11, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t102 = icmp slt i64 %t96, %t99
  br i1 %t102, label %bb18, label %bb19
bb18:
  %t104 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t104, ptr %l66, !tbaa !27
  %t105 = load i64, ptr %l11, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i32, ptr %t108, i64 %t105
  %t110 = load i32, ptr %t109, !tbaa !33
  store i32 %t110, ptr %l65, !tbaa !23
  br label %bb21
bb19:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 2
  %t115 = load i64, ptr %l3, !tbaa !24
  %t116 = load i64, ptr %l11, !tbaa !24
  %t117 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t114, i64 %t115, i64 %t116, i64 %t117)
  store i32 %t122, ptr %l74
  br label %bb20
bb20:
  %t123 = load i32, ptr %l74, !tbaa !23
  store i32 %t123, ptr %l65, !tbaa !23
  br label %bb21
bb21:
  %t124 = load ptr, ptr %l55, !tbaa !29
  %t125 = load i32, ptr %l60, !tbaa !23
  %t126 = load i32, ptr %l65, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v1, ptr %t124, i32 %t125, i32 %t126)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t127 = load i64, ptr %l10, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l10, !tbaa !24
  br label %bb13
bb24:
  %t131 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %l77, ptr %t131, i64 160, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l77, i64 160, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:fnRow"
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 29
  %t7 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v1, ptr %t3, i64 %a1)
  store %"compiler/generic:fnRow" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:fnRow", ptr %l5, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHoldsVarByValue(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i32
  %l34 = alloca i32
  %l40 = alloca i64
  %l43 = alloca i1
  %l47 = alloca i64
  %l55 = alloca i32
  %l59 = alloca i32
  %l69 = alloca i1
  %l78 = alloca i1
  %l81 = alloca ptr
  %l85 = alloca i32
  %l90 = alloca i1
  %l96 = alloca ptr
  %l100 = alloca i32
  %l101 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l117 = alloca i1
  %l125 = alloca ptr
  %l129 = alloca i32
  %l130 = alloca { i64, ptr }
  %l138 = alloca i32
  %l141 = alloca i32
  %l147 = alloca i64
  %l150 = alloca i64
  %l169 = alloca { i64, ptr }
  %l176 = alloca i1
  %l180 = alloca i1
  %l184 = alloca ptr
  %l188 = alloca i32
  %l189 = alloca { i64, ptr }
  %l196 = alloca { i64, ptr }
  %l199 = alloca ptr
  %l200 = alloca i32
  %l202 = alloca i64
  %l206 = alloca i1
  %l211 = alloca ptr
  %l215 = alloca i32
  %l216 = alloca { i64, ptr }
  %l223 = alloca { i64, ptr }
  %l228 = alloca i1
  %l229 = alloca ptr
  %l230 = alloca i32
  %l232 = alloca i64
  %l236 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l34
  br label %bb4
bb4:
  %t13 = load i32, ptr %l34, !range !{i32 0, i32 33}
  store i32 %t13, ptr %l5
  %t14 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t16 = trunc i64 25 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb13
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t21, i32 %t22)
  store i64 %t25, ptr %l40
  br label %bb8
bb8:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t27 = load i64, ptr %l40, !tbaa !24
  %t29 = icmp eq i64 %t27, %t26
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l1, !tbaa !23
  %t37 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t33, i32 %t34)
  store i64 %t37, ptr %l47
  br label %bb11
bb10:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb12
bb11:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l47, !tbaa !24
  %t41 = icmp eq i64 %t39, %t38
  store i1 %t41, ptr %l43, !tbaa !21
  br label %bb12
bb12:
  %t43 = load i1, ptr %l43, !tbaa !21
  store i1 %t43, ptr %rv
  br label %ret
bb13:
  %t44 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t46 = trunc i64 20 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb23
bb16:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l1, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l55
  br label %bb17
bb17:
  %t56 = load i32, ptr %l55, !tbaa !23
  store i32 %t56, ptr %l6, !tbaa !23
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l6, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l59
  br label %bb18
bb18:
  %t64 = load i32, ptr %l59, !range !{i32 0, i32 33}
  %t66 = trunc i64 25 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb19, label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l6, !tbaa !23
  %t72 = load i64, ptr %l2, !tbaa !24
  %t73 = load i64, ptr %l3, !tbaa !24
  %t74 = load i64, ptr %l4, !tbaa !24
  %t76 = add i64 %t74, 1
  %t82 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHoldsVarByValue(ptr %v0, ptr %t70, i32 %t71, i64 %t72, i64 %t73, i64 %t76)
  store i1 %t82, ptr %l69
  br label %bb22
bb22:
  %t83 = load i1, ptr %l69, !tbaa !21
  store i1 %t83, ptr %rv
  br label %ret
bb23:
  %t84 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t86 = trunc i64 21 to i32
  %t87 = icmp eq i32 %t84, %t86
  br i1 %t87, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i32, ptr %l1, !tbaa !23
  %t91 = load i64, ptr %l2, !tbaa !24
  %t92 = load i64, ptr %l3, !tbaa !24
  %t93 = load i64, ptr %l4, !tbaa !24
  %t95 = add i64 %t93, 1
  %t101 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsVar(ptr %v0, ptr %t89, i32 %t90, i64 %t91, i64 %t92, i64 %t95)
  store i1 %t101, ptr %l78
  br label %bb27
bb27:
  %t102 = load i1, ptr %l78, !tbaa !21
  store i1 %t102, ptr %rv
  br label %ret
bb28:
  %t103 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t105 = trunc i64 19 to i32
  %t106 = icmp eq i32 %t103, %t105
  br i1 %t106, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb34
bb31:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l81, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %l1, !tbaa !23
  %t115 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l85
  br label %bb32
bb32:
  %t116 = load i64, ptr %l2, !tbaa !24
  %t117 = load i64, ptr %l3, !tbaa !24
  %t118 = load i64, ptr %l4, !tbaa !24
  %t120 = add i64 %t118, 1
  %t121 = load ptr, ptr %l81, !tbaa !29
  %t122 = load i32, ptr %l85, !tbaa !23
  %t126 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHoldsVarByValue(ptr %v0, ptr %t121, i32 %t122, i64 %t116, i64 %t117, i64 %t120)
  store i1 %t126, ptr %l90
  br label %bb33
bb33:
  %t127 = load i1, ptr %l90, !tbaa !21
  store i1 %t127, ptr %rv
  br label %ret
bb34:
  %t128 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t130 = trunc i64 22 to i32
  %t131 = icmp eq i32 %t128, %t130
  br i1 %t131, label %bb35, label %bb36
bb35:
  br label %bb39
bb36:
  %t133 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t135 = trunc i64 23 to i32
  %t136 = icmp eq i32 %t133, %t135
  br i1 %t136, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb52
bb39:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 2
  store ptr %t140, ptr %l96, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %l1, !tbaa !23
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t147, ptr %l100
  br label %bb40
bb40:
  %t148 = load ptr, ptr %l96, !tbaa !29
  %t149 = load i32, ptr %l100, !tbaa !23
  %t150 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t148, i32 %t149)
  store { i64, ptr } %t150, ptr %l101
  br label %bb41
bb41:
  %t151 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t151, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t152 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t152, 0
  store i64 %t154, ptr %l9, !tbaa !24
  br label %bb42
bb42:
  %t156 = load i64, ptr %l8, !tbaa !24
  %t157 = load i64, ptr %l9, !tbaa !24
  %t160 = icmp slt i64 %t156, %t157
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb43, label %bb44
bb43:
  br label %bb51
bb44:
  br label %bb45
bb45:
  %t164 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t164, ptr %l108, !tbaa !27
  %t165 = load i64, ptr %l8, !tbaa !24
  %t167 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr i32, ptr %t168, i64 %t165
  %t170 = load i32, ptr %t169, !tbaa !33
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = load i64, ptr %l2, !tbaa !24
  %t175 = load i64, ptr %l3, !tbaa !24
  %t176 = load i64, ptr %l4, !tbaa !24
  %t178 = add i64 %t176, 1
  %t184 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHoldsVarByValue(ptr %v0, ptr %t172, i32 %t170, i64 %t174, i64 %t175, i64 %t178)
  store i1 %t184, ptr %l117
  br label %bb46
bb46:
  %t185 = load i1, ptr %l117, !tbaa !21
  br i1 %t185, label %bb47, label %bb48
bb47:
  store i1 true, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t187 = load i64, ptr %l8, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l8, !tbaa !24
  br label %bb42
bb51:
  store i1 false, ptr %rv
  br label %ret
bb52:
  %t192 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t194 = trunc i64 18 to i32
  %t195 = icmp eq i32 %t192, %t194
  br i1 %t195, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb112
bb55:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/generic:Program", ptr %t197, i32 0, i32 2
  store ptr %t199, ptr %l125, !tbaa !29
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/generic:Program", ptr %t200, i32 0, i32 2
  %t203 = load i32, ptr %l1, !tbaa !23
  %t206 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t202, i32 %t203)
  store i32 %t206, ptr %l129
  br label %bb56
bb56:
  %t207 = load ptr, ptr %l125, !tbaa !29
  %t208 = load i32, ptr %l129, !tbaa !23
  %t209 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t207, i32 %t208)
  store { i64, ptr } %t209, ptr %l130
  br label %bb57
bb57:
  %t210 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t210, ptr %l11, !tbaa !27
  %t211 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t211, 0
  %t215 = icmp eq i64 %t213, 0
  br i1 %t215, label %bb58, label %bb59
bb58:
  store i1 false, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/generic:Program", ptr %t218, i32 0, i32 2
  %t221 = load i32, ptr %l1, !tbaa !23
  %t224 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t220, i32 %t221)
  store i32 %t224, ptr %l138
  br label %bb61
bb61:
  %t225 = load i32, ptr %l138, !tbaa !23
  store i32 %t225, ptr %l12, !tbaa !23
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load i32, ptr %l12, !tbaa !23
  %t230 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t226, i32 %t227)
  store i32 %t230, ptr %l141
  br label %bb62
bb62:
  %t231 = load i32, ptr %l141, !tbaa !23
  store i32 %t231, ptr %l13, !tbaa !23
  store i64 0, ptr %l14, !tbaa !24
  %t232 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t232, 0
  store i64 %t234, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t236 = load i64, ptr %l15, !tbaa !24
  %t237 = load i64, ptr %l14, !tbaa !24
  %t240 = icmp sgt i64 %t236, %t237
  br i1 %t240, label %bb63, label %bb64
bb63:
  %t242 = load i64, ptr %l16, !tbaa !24
  %t244 = icmp sgt i64 %t242, 0
  br i1 %t244, label %bb65, label %bb66
bb64:
  store i64 0, ptr %l147, !tbaa !24
  br label %bb68
bb65:
  %t246 = load i64, ptr %l15, !tbaa !24
  %t247 = load i64, ptr %l14, !tbaa !24
  %t250 = sub i64 %t246, %t247
  %t251 = load i64, ptr %l16, !tbaa !24
  %t254 = add i64 %t250, %t251
  %t256 = sub i64 %t254, 1
  %t257 = load i64, ptr %l16, !tbaa !24
  %t260 = sdiv i64 %t256, %t257
  store i64 %t260, ptr %l150, !tbaa !24
  br label %bb67
bb66:
  store i64 0, ptr %l150, !tbaa !24
  br label %bb67
bb67:
  %t262 = load i64, ptr %l150, !tbaa !24
  store i64 %t262, ptr %l147, !tbaa !24
  br label %bb68
bb68:
  %t263 = load i64, ptr %l147, !tbaa !24
  store i64 %t263, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb69
bb69:
  %t264 = load i64, ptr %l18, !tbaa !24
  %t265 = load i64, ptr %l17, !tbaa !24
  %t268 = icmp slt i64 %t264, %t265
  %t270 = xor i1 %t268, true
  br i1 %t270, label %bb70, label %bb71
bb70:
  br label %bb111
bb71:
  br label %bb72
bb72:
  %t272 = load i64, ptr %l14, !tbaa !24
  %t273 = load i64, ptr %l18, !tbaa !24
  %t274 = load i64, ptr %l16, !tbaa !24
  %t277 = mul i64 %t273, %t274
  %t280 = add i64 %t272, %t277
  store i64 %t280, ptr %l19, !tbaa !24
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t283, ptr %l169, !tbaa !27
  %t284 = load i64, ptr %l19, !tbaa !24
  %t286 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !27
  %t288 = getelementptr i32, ptr %t287, i64 %t284
  %t289 = load i32, ptr %t288, !tbaa !33
  %t290 = load i64, ptr %l2, !tbaa !24
  %t291 = load i64, ptr %l3, !tbaa !24
  %t292 = load i64, ptr %l4, !tbaa !24
  %t294 = add i64 %t292, 1
  %t300 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHoldsVarByValue(ptr %v0, ptr %t282, i32 %t289, i64 %t290, i64 %t291, i64 %t294)
  store i1 %t300, ptr %l176
  br label %bb73
bb73:
  %t301 = load i1, ptr %l176, !tbaa !21
  %t302 = xor i1 %t301, true
  br i1 %t302, label %bb74, label %bb75
bb74:
  br label %bb110
bb75:
  br label %bb76
bb76:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load i32, ptr %l13, !tbaa !23
  %t308 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t304, i32 %t305)
  store i1 %t308, ptr %l180
  br label %bb77
bb77:
  %t309 = load i1, ptr %l180, !tbaa !21
  %t310 = xor i1 %t309, true
  br i1 %t310, label %bb78, label %bb79
bb78:
  store i1 true, ptr %rv
  br label %ret
bb79:
  br label %bb80
bb80:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = getelementptr %"compiler/generic:Program", ptr %t313, i32 0, i32 2
  store ptr %t315, ptr %l184, !tbaa !29
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/generic:Program", ptr %t316, i32 0, i32 2
  %t319 = load i32, ptr %l13, !tbaa !23
  %t322 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t318, i32 %t319)
  store i32 %t322, ptr %l188
  br label %bb81
bb81:
  %t323 = load ptr, ptr %l184, !tbaa !29
  %t324 = load i32, ptr %l188, !tbaa !23
  %t325 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t323, i32 %t324)
  store { i64, ptr } %t325, ptr %l189
  br label %bb82
bb82:
  %t326 = load { i64, ptr }, ptr %l189, !tbaa !27
  store { i64, ptr } %t326, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t327 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t327, 0
  store i64 %t329, ptr %l22, !tbaa !24
  br label %bb83
bb83:
  %t331 = load i64, ptr %l21, !tbaa !24
  %t332 = load i64, ptr %l22, !tbaa !24
  %t335 = icmp slt i64 %t331, %t332
  %t337 = xor i1 %t335, true
  br i1 %t337, label %bb84, label %bb85
bb84:
  br label %bb93
bb85:
  br label %bb86
bb86:
  %t339 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t339, ptr %l196, !tbaa !27
  %t340 = load i64, ptr %l21, !tbaa !24
  %t342 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !27
  %t344 = getelementptr i32, ptr %t343, i64 %t340
  %t345 = load i32, ptr %t344, !tbaa !33
  %t347 = load ptr, ptr %l0, !tbaa !29
  store ptr %t347, ptr %l199, !tbaa !29
  store i32 %t345, ptr %l200, !tbaa !23
  %t349 = load i32, ptr %l12, !tbaa !23
  %t351 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t349)
  store i64 %t351, ptr %l202
  br label %bb87
bb87:
  %t352 = load i64, ptr %l19, !tbaa !24
  %t353 = load i64, ptr %l4, !tbaa !24
  %t355 = add i64 %t353, 1
  %t356 = load ptr, ptr %l199, !tbaa !29
  %t357 = load i32, ptr %l200, !tbaa !23
  %t358 = load i64, ptr %l202, !tbaa !24
  %t361 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHoldsVarByValue(ptr %v0, ptr %t356, i32 %t357, i64 %t358, i64 %t352, i64 %t355)
  store i1 %t361, ptr %l206
  br label %bb88
bb88:
  %t362 = load i1, ptr %l206, !tbaa !21
  br i1 %t362, label %bb89, label %bb90
bb89:
  store i1 true, ptr %rv
  br label %ret
bb90:
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t364 = load i64, ptr %l21, !tbaa !24
  %t366 = add i64 %t364, 1
  store i64 %t366, ptr %l21, !tbaa !24
  br label %bb83
bb93:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t370 = getelementptr %"compiler/generic:Program", ptr %t368, i32 0, i32 2
  store ptr %t370, ptr %l211, !tbaa !29
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr %"compiler/generic:Program", ptr %t371, i32 0, i32 2
  %t374 = load i32, ptr %l13, !tbaa !23
  %t377 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t373, i32 %t374)
  store i32 %t377, ptr %l215
  br label %bb94
bb94:
  %t378 = load ptr, ptr %l211, !tbaa !29
  %t379 = load i32, ptr %l215, !tbaa !23
  %t380 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t378, i32 %t379)
  store { i64, ptr } %t380, ptr %l216
  br label %bb95
bb95:
  %t381 = load { i64, ptr }, ptr %l216, !tbaa !27
  store { i64, ptr } %t381, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t382 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t384 = extractvalue { i64, ptr } %t382, 0
  store i64 %t384, ptr %l26, !tbaa !24
  br label %bb96
bb96:
  %t386 = load i64, ptr %l25, !tbaa !24
  %t387 = load i64, ptr %l26, !tbaa !24
  %t390 = icmp slt i64 %t386, %t387
  %t392 = xor i1 %t390, true
  br i1 %t392, label %bb97, label %bb98
bb97:
  br label %bb109
bb98:
  br label %bb99
bb99:
  %t394 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t394, ptr %l223, !tbaa !27
  %t395 = load i64, ptr %l25, !tbaa !24
  %t397 = getelementptr { i64, ptr }, ptr %l223, i32 0, i32 1
  %t398 = load ptr, ptr %t397, !tbaa !27
  %t399 = getelementptr i32, ptr %t398, i64 %t395
  %t400 = load i32, ptr %t399, !tbaa !33
  store i32 %t400, ptr %l27, !tbaa !23
  %t402 = load i32, ptr %l27, !tbaa !23
  %t404 = icmp ne i32 %t402, 0
  br i1 %t404, label %bb100, label %bb101
bb100:
  %t406 = load ptr, ptr %l0, !tbaa !29
  store ptr %t406, ptr %l229, !tbaa !29
  %t407 = load i32, ptr %l27, !tbaa !23
  store i32 %t407, ptr %l230, !tbaa !23
  %t408 = load i32, ptr %l12, !tbaa !23
  %t410 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t408)
  store i64 %t410, ptr %l232
  br label %bb102
bb101:
  store i1 false, ptr %l228, !tbaa !21
  br label %bb104
bb102:
  %t411 = load i64, ptr %l19, !tbaa !24
  %t412 = load i64, ptr %l4, !tbaa !24
  %t414 = add i64 %t412, 1
  %t415 = load ptr, ptr %l229, !tbaa !29
  %t416 = load i32, ptr %l230, !tbaa !23
  %t417 = load i64, ptr %l232, !tbaa !24
  %t420 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHoldsVarByValue(ptr %v0, ptr %t415, i32 %t416, i64 %t417, i64 %t411, i64 %t414)
  store i1 %t420, ptr %l236
  br label %bb103
bb103:
  %t421 = load i1, ptr %l236, !tbaa !21
  store i1 %t421, ptr %l228, !tbaa !21
  br label %bb104
bb104:
  %t422 = load i1, ptr %l228, !tbaa !21
  br i1 %t422, label %bb105, label %bb106
bb105:
  store i1 true, ptr %rv
  br label %ret
bb106:
  br label %bb107
bb107:
  br label %bb108
bb108:
  %t424 = load i64, ptr %l25, !tbaa !24
  %t426 = add i64 %t424, 1
  store i64 %t426, ptr %l25, !tbaa !24
  br label %bb96
bb109:
  br label %bb110
bb110:
  %t428 = load i64, ptr %l18, !tbaa !24
  %t430 = add i64 %t428, 1
  store i64 %t430, ptr %l18, !tbaa !24
  br label %bb69
bb111:
  store i1 false, ptr %rv
  br label %ret
bb112:
  br i1 true, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb116
bb115:
  store i1 false, ptr %rv
  br label %ret
bb116:
  call void @__olang_check_failed(ptr @olang_loc_f85b3d57f52ff5f3_99e1343e21fb4c8f)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceCount(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 44
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eLen_Hf1590ba3dea8cd8a914b2a9f5344a2c6(ptr %v0, ptr %t3)
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

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:instance"
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 44
  %t7 = call %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %s0, ptr %t3, i64 %a1)
  store %"compiler/generic:instance" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:instance", ptr %l5, i32 0, i32 0
  %t9 = load i64, ptr %t8, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:instance"
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 44
  %t7 = call %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %s0, ptr %t3, i64 %a1)
  store %"compiler/generic:instance" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:instance", ptr %l5, i32 0, i32 2
  %t9 = load i32, ptr %t8, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l8 = alloca i32
  %l13 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca ptr
  %l21 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %rv = alloca i1
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
  store i32 %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load i32, ptr %l8, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l13, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l17
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l13, !tbaa !29
  %t25 = load i32, ptr %l17, !tbaa !23
  %t26 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t24, i32 %t25)
  store ptr %t26, ptr %l18
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l18, !tbaa !29
  store ptr %t27, ptr %l2, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  br i1 %t30, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb9
bb8:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr %"compiler/ast:TypeDecl", ptr %t32, i32 0, i32 3
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  store i1 %t37, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = getelementptr %"compiler/ast:TypeDecl", ptr %t41, i32 0, i32 3
  %t44 = load ptr, ptr %t43, !tbaa !29
  store ptr %t44, ptr %l3, !tbaa !29
  %t46 = load ptr, ptr %l3, !tbaa !29
  store ptr %t46, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t47 = load ptr, ptr %l28, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l28, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 5}
  %t53 = icmp eq i64 %t51, 2
  store i1 %t53, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l29, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = getelementptr { i64, [6 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t57, i32 0, i32 2
  %t59 = load { i64, ptr }, ptr %t58
  store { i64, ptr } %t59, ptr %l4, !tbaa !27
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t61 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t65 = icmp sgt i64 %t63, 0
  store i1 %t65, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  call void @__olang_check_failed(ptr @olang_loc_23dbec30ec11f2fa_ab3fa8ca5a280626)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeNamed(ptr %v0, ptr %s0, ptr %a0, i32 %a1, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeetsBound(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i32
  %l5 = alloca %"compiler/generic:varRow"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l18 = alloca %"compiler/generic:varRow"
  %l26 = alloca { i64, ptr }
  %l28 = alloca i64
  %l37 = alloca i64
  %l40 = alloca i64
  %l58 = alloca i64
  %l62 = alloca i32
  %l64 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca i64
  %l75 = alloca i32
  %l76 = alloca i32
  %l80 = alloca i1
  %l86 = alloca %"compiler/generic:Unmet"
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t7 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t1, i64 %t2, i64 %t3)
  store %"compiler/generic:varRow" %t7, ptr %l18
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:varRow", ptr %l18
  store %"compiler/generic:varRow" %t8, ptr %l5
  %t9 = getelementptr %"compiler/generic:varRow", ptr %l5, i32 0, i32 3
  %t10 = load i32, ptr %t9, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t23 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t19, i32 %a3)
  store { i64, ptr } %t23, ptr %l26
  br label %bb5
bb5:
  %t24 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t24, ptr %l6, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l28, !tbaa !24
  %t28 = load i64, ptr %l28, !tbaa !24
  %t29 = icmp sge i64 %t28, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load i64, ptr %l28, !tbaa !24
  %t32 = icmp sle i64 %t31, 2305843009213693951
  br i1 %t32, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_5d5ac97d78861951_ba50dfe20371558d)
  unreachable
bb8:
  %t34 = load i64, ptr %l28, !tbaa !24
  %t35 = mul i64 %t34, 4
  %t36 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  store i64 %t42, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t44 = load i64, ptr %l9, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t48 = icmp sgt i64 %t44, %t45
  br i1 %t48, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_5d5ac97d78861951_ba50dfe20371558d)
  unreachable
bb10:
  %t50 = load i64, ptr %l10, !tbaa !24
  %t52 = icmp sgt i64 %t50, 0
  br i1 %t52, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb15
bb12:
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = sub i64 %t54, %t55
  %t59 = load i64, ptr %l10, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = sub i64 %t62, 1
  %t65 = load i64, ptr %l10, !tbaa !24
  %t68 = sdiv i64 %t64, %t65
  store i64 %t68, ptr %l40, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb14
bb14:
  %t70 = load i64, ptr %l40, !tbaa !24
  store i64 %t70, ptr %l37, !tbaa !24
  br label %bb15
bb15:
  %t71 = load i64, ptr %l37, !tbaa !24
  store i64 %t71, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb16
bb16:
  %t72 = load i64, ptr %l12, !tbaa !24
  %t73 = load i64, ptr %l11, !tbaa !24
  %t76 = icmp slt i64 %t72, %t73
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb17, label %bb18
bb17:
  br label %bb24
bb18:
  br label %bb19
bb19:
  %t80 = load i64, ptr %l8, !tbaa !24
  %t81 = load i64, ptr %l12, !tbaa !24
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = mul i64 %t81, %t82
  %t88 = add i64 %t80, %t85
  store i64 %t88, ptr %l13, !tbaa !24
  %t90 = load i64, ptr %l13, !tbaa !24
  store i64 %t90, ptr %l58, !tbaa !24
  %t91 = load i64, ptr %l13, !tbaa !24
  %t92 = load i64, ptr %l2, !tbaa !24
  %t95 = icmp eq i64 %t91, %t92
  br i1 %t95, label %bb20, label %bb21
bb20:
  %t97 = load i32, ptr %l4, !tbaa !23
  store i32 %t97, ptr %l62, !tbaa !23
  br label %bb22
bb21:
  %t99 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t99, ptr %l64, !tbaa !27
  %t100 = load i64, ptr %l13, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i32, ptr %t103, i64 %t100
  %t105 = load i32, ptr %t104, !tbaa !33
  store i32 %t105, ptr %l62, !tbaa !23
  br label %bb22
bb22:
  %t107 = load i32, ptr %l62, !tbaa !23
  %t108 = load i64, ptr %l58, !tbaa !24
  %t109 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr i32, ptr %t110, i64 %t108
  store i32 %t107, ptr %t111, !tbaa !33
  br label %bb23
bb23:
  %t112 = load i64, ptr %l12, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l12, !tbaa !24
  br label %bb16
bb24:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l69, !tbaa !29
  %t117 = getelementptr %"compiler/generic:varRow", ptr %l5, i32 0, i32 3
  %t118 = load i32, ptr %t117, !tbaa !23
  store i32 %t118, ptr %l70, !tbaa !23
  %t119 = load i64, ptr %l1, !tbaa !24
  store i64 %t119, ptr %l71, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t122, { i64, ptr } %t123)
  store i32 %t126, ptr %l75
  br label %bb25
bb25:
  %t127 = load ptr, ptr %l69, !tbaa !29
  %t128 = load i32, ptr %l70, !tbaa !23
  %t129 = load i64, ptr %l71, !tbaa !24
  %t130 = load i32, ptr %l75, !tbaa !23
  %t131 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t127, i32 %t128, i64 %t129, i32 %t130)
  store i32 %t131, ptr %l76
  br label %bb26
bb26:
  %t132 = load i32, ptr %l76, !tbaa !23
  store i32 %t132, ptr %l14, !tbaa !23
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  %t136 = load i32, ptr %l14, !tbaa !23
  %t139 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t135, i32 %t136)
  store i1 %t139, ptr %l80
  br label %bb27
bb27:
  %t140 = load i1, ptr %l80, !tbaa !21
  %t141 = xor i1 %t140, true
  br i1 %t141, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i32, ptr %l4, !tbaa !23
  %t146 = load i32, ptr %l14, !tbaa !23
  %t150 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %t144, i32 %t145, i32 %t146, i1 true, i64 0)
  store %"compiler/generic:Unmet" %t150, ptr %l86
  br label %bb31
bb31:
  %t151 = getelementptr %"compiler/generic:Unmet", ptr %l86, i32 0, i32 0
  %t152 = load i64, ptr %t151, !tbaa !24
  %t154 = icmp slt i64 %t152, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t154, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %lp5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i32
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca { i64, ptr }
  %l30 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l38 = alloca { i64, ptr }
  %l48 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 20
  %t9 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H6743fd6fdd876d533cce32e3c0cd25b6(ptr %v0, ptr %t5, i32 %t1)
  store i1 %t9, ptr %l14
  br label %bb1
bb1:
  %t10 = load i1, ptr %l14, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 20
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_Hcfc2a2943c600247d4ded3fb914681ab(ptr %v0, ptr %v1, ptr %t13, i32 %t14)
  %t18 = extractvalue { i32, { i64, ptr } } %t17, 1
  %t19 = extractvalue { i32, { i64, ptr } } %t17, 0
  store i32 %t19, ptr %l20
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb5, label %ok.21, !prof !99
ok.21:
  store { i64, ptr } %t18, ptr %l19
  br label %bb4
bb3:
  br label %bb12
bb4:
  %t22 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t22, ptr %l15, !tbaa !27
  br label %bb11
bb5:
  br label %bb6
bb6:
  %t23 = icmp sge i64 0, 0
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = icmp sle i64 0, 2305843009213693951
  br i1 %t25, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_25bcbd8d25f60d50_252e633c827b5284)
  unreachable
bb9:
  %t27 = mul i64 0, 4
  %t28 = insertvalue { i64, ptr } undef, i64 0, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t29, ptr %l15, !tbaa !27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_25bcbd8d25f60d50_252e633c827b5284)
  unreachable
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t31 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t31, ptr %rv
  br label %ret
bb12:
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l24
  br label %bb13
bb13:
  %t33 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l3
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emembers(ptr %v0, ptr %s0, ptr %t34, i32 %t35, ptr %l3, i64 0)
  br label %bb14
bb14:
  %t40 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %v1, ptr %l3)
  store { i64, ptr } %t40, ptr %l29
  br label %bb15
bb15:
  %t41 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t41, ptr %l4, !tbaa !27
  %t42 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t42, ptr %l30
  br label %bb16
bb16:
  %t43 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store ptr %t43, ptr %lp5
  %t44 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l30
  %t45 = load ptr, ptr %lp5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t44, ptr %t45
  %t46 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t46, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  store i64 %t50, ptr %l8, !tbaa !24
  br label %bb17
bb17:
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t56 = icmp slt i64 %t52, %t53
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb18, label %bb19
bb18:
  br label %bb23
bb19:
  br label %bb20
bb20:
  %t60 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t60, ptr %l38, !tbaa !27
  %t61 = load i64, ptr %l7, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i32, ptr %t64, i64 %t61
  %t66 = load i32, ptr %t65, !tbaa !33
  %t68 = load ptr, ptr %lp5
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %t68, i32 %t66, i1 true)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l7, !tbaa !24
  br label %bb17
bb23:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  %t79 = load i32, ptr %l1, !tbaa !23
  %t82 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t78, i32 %t79)
  store i1 %t82, ptr %l48
  br label %bb24
bb24:
  %t83 = load i1, ptr %l48, !tbaa !21
  br i1 %t83, label %bb25, label %bb26
bb25:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 20
  %t87 = load i32, ptr %l1, !tbaa !23
  %t88 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_Ha2fdd285cc075e465cab85a1d0fe3f31(ptr %v0, ptr %v1, ptr %t86, i32 %t87, { i64, ptr } %t88)
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 21
  %t95 = load i32, ptr %l1, !tbaa !23
  %t96 = load ptr, ptr %lp5
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hc32bd40495535e8a7e7ddcc641d0c371(ptr %v0, ptr %v0, ptr %t94, i32 %t95, ptr %t96)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t100 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t100, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerVarCount(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/generic:fnRow"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"compiler/generic:fnRow"
  %l9 = alloca i1
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 29
  %t7 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/generic:fnRow" %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:fnRow", ptr %l7
  store %"compiler/generic:fnRow" %t8, ptr %l2
  %t9 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t10)
  store i1 %t12, ptr %l9
  br label %bb2
bb2:
  %t13 = load i1, ptr %l9, !tbaa !21
  %t14 = xor i1 %t13, true
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l12
  br label %bb6
bb6:
  %t18 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l3
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 0
  %t21 = load i64, ptr %t20, !tbaa !24
  %t22 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/ast:Func", ptr %t23, i32 0, i32 9
  %t26 = load ptr, ptr %t25, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v0, ptr %s0, ptr %t19, i64 %t21, ptr %t26, ptr %l3, i1 false)
  br label %bb7
bb7:
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l3)
  store i64 %t32, ptr %l19
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l10 = alloca i1
  %l14 = alloca i32
  %l22 = alloca i32
  %l26 = alloca i32
  %l31 = alloca i32
  %l36 = alloca i32
  %l37 = alloca i32
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i64
  %l49 = alloca ptr
  %l50 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l58 = alloca i32
  %l59 = alloca i64
  %l64 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca i32
  %l72 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l14
  br label %bb3
bb3:
  %t14 = load i32, ptr %l14, !range !{i32 0, i32 33}
  %t16 = trunc i64 18 to i32
  %t17 = icmp eq i32 %t14, %t16
  %t19 = xor i1 %t17, true
  store i1 %t19, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l10, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t22 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t22, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l22
  br label %bb8
bb8:
  %t31 = load i32, ptr %l22, !tbaa !23
  store i32 %t31, ptr %l2, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l2, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l26
  br label %bb9
bb9:
  %t39 = load i32, ptr %l26, !range !{i32 0, i32 6}
  %t41 = trunc i64 2 to i32
  %t42 = icmp eq i32 %t39, %t41
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t46 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t46, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 9
  %t51 = load i32, ptr %l2, !tbaa !23
  %t53 = sext i32 %t51 to i64
  %t56 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %t50, i64 %t53)
  %t57 = extractvalue { i32, i32 } %t56, 1
  %t58 = extractvalue { i32, i32 } %t56, 0
  store i32 %t58, ptr %l37
  %t59 = icmp ne i32 %t58, 0
  br i1 %t59, label %bb14, label %ok.60, !prof !99
ok.60:
  store i32 %t57, ptr %l36
  br label %bb13
bb13:
  %t61 = load i32, ptr %l36, !tbaa !23
  store i32 %t61, ptr %l31, !tbaa !23
  br label %bb16
bb14:
  br label %bb15
bb15:
  store i32 -1, ptr %l31, !tbaa !23
  br label %bb16
bb16:
  %t62 = load i32, ptr %l31, !tbaa !23
  store i32 %t62, ptr %l3, !tbaa !23
  %t63 = load i32, ptr %l3, !tbaa !23
  %t65 = icmp ne i32 %t63, -1
  br i1 %t65, label %bb17, label %bb18
bb17:
  %t67 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t67, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %l2, !tbaa !23
  %t75 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t71, i32 %t72)
  store i64 %t75, ptr %l44
  br label %bb20
bb20:
  %t76 = load i64, ptr %l44, !tbaa !24
  store i64 %t76, ptr %l4, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l45, !tbaa !29
  %t78 = load i64, ptr %l4, !tbaa !24
  store i64 %t78, ptr %l46, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 0
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/load:Loader", ptr %t82, i32 0, i32 3
  %t85 = load ptr, ptr %t84, !tbaa !29
  store ptr %t85, ptr %l49, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l50, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l2, !tbaa !23
  %t93 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t93, ptr %l54
  br label %bb21
bb21:
  %t94 = load ptr, ptr %l50, !tbaa !29
  %t95 = load i32, ptr %l54, !tbaa !23
  %t96 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t94, i32 %t95)
  store { i64, ptr } %t96, ptr %l55
  br label %bb22
bb22:
  %t97 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t98 = call { i64, ptr } @compiler_2fnames_2ePayloadName(ptr %v0, ptr %s0, { i64, ptr } %t97)
  store { i64, ptr } %t98, ptr %l56
  br label %bb23
bb23:
  %t99 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  %t101 = extractvalue { i64, ptr } %t99, 1
  %t102 = mul i64 %t100, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t102)
  call void @llvm.memcpy.p0.p0.i64(ptr %t103, ptr %t101, i64 %t102, i1 false)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  %t106 = load ptr, ptr %l49, !tbaa !29
  %t108 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t106, { i64, ptr } %t105)
  store i32 %t108, ptr %l58
  br label %bb24
bb24:
  %t109 = load ptr, ptr %l45, !tbaa !29
  %t110 = load i64, ptr %l46, !tbaa !24
  %t111 = load i32, ptr %l58, !tbaa !23
  %t112 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t109, i64 %t110, i32 %t111)
  store i64 %t112, ptr %l59
  br label %bb25
bb25:
  %t113 = load i64, ptr %l59, !tbaa !24
  store i64 %t113, ptr %l5, !tbaa !24
  %t114 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t114, ptr %l6, !tbaa !23
  %t116 = load i64, ptr %l5, !tbaa !24
  %t118 = icmp sge i64 %t116, 0
  br i1 %t118, label %bb26, label %bb27
bb26:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  store ptr %t122, ptr %l64, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i64, ptr %l4, !tbaa !24
  %t125 = load i64, ptr %l5, !tbaa !24
  %t129 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t123, i64 %t124, i64 %t125)
  store i32 %t129, ptr %l68
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t130 = load ptr, ptr %l64, !tbaa !29
  %t131 = load i32, ptr %l68, !tbaa !23
  %t132 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t130, i32 %t131, i32 0)
  store i32 %t132, ptr %l69
  br label %bb29
bb29:
  %t133 = load i32, ptr %l69, !tbaa !23
  store i32 %t133, ptr %l6, !tbaa !23
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i32, ptr %l6, !tbaa !23
  %t138 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t134, i32 %t135)
  store i1 %t138, ptr %l72
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/generic:Program", ptr %t139, i32 0, i32 9
  %t142 = load i32, ptr %l2, !tbaa !23
  %t144 = sext i32 %t142 to i64
  %t145 = load i32, ptr %l6, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %t141, i64 %t144, i32 %t145)
  br label %bb32
bb32:
  %t149 = load i32, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t149, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i1
  %l35 = alloca i32
  %l36 = alloca ptr
  %l37 = alloca i1
  %l48 = alloca i32
  %l49 = alloca ptr
  %l50 = alloca i1
  %l58 = alloca i32
  %l59 = alloca ptr
  %l60 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca %"compiler/source:Span"
  %l76 = alloca i32
  %l78 = alloca i32
  %l79 = alloca ptr
  %l80 = alloca i1
  %l87 = alloca ptr
  %l91 = alloca i32
  %l93 = alloca i32
  %l94 = alloca ptr
  %l95 = alloca i1
  %l101 = alloca ptr
  %l106 = alloca i32
  %l107 = alloca i32
  %l108 = alloca ptr
  %l109 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i1
  %l120 = alloca ptr
  %l122 = alloca ptr
  %l127 = alloca i32
  %l128 = alloca i32
  %l130 = alloca i32
  %rv = alloca i32
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
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l2, !tbaa !29
  store ptr %t7, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t8 = load ptr, ptr %l20, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l20, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 8}
  %t14 = icmp eq i64 %t12, 0
  store i1 %t14, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l21, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t18, i32 0, i32 0
  %t20 = load %"compiler/source:Span", ptr %t19
  store %"compiler/source:Span" %t20, ptr %l3
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t24, i32 0, i32 1
  %t26 = load { i64, ptr }, ptr %t25
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t30, i32 0, i32 2
  %t32 = load { i64, ptr }, ptr %t31
  store { i64, ptr } %t32, ptr %l5, !tbaa !27
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t36 = load %"compiler/source:Span", ptr %l3
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t44 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamed(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t34, ptr %t35, %"compiler/source:Span" %t36, { i64, ptr } %t37, { i64, ptr } %t38)
  store i32 %t44, ptr %l35
  br label %bb9
bb9:
  %t45 = load i32, ptr %l35, !tbaa !23
  store i32 %t45, ptr %l19, !tbaa !23
  br label %bb64
bb10:
  %t46 = load ptr, ptr %l2, !tbaa !29
  store ptr %t46, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t47 = load ptr, ptr %l36, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = load ptr, ptr %l36, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 1
  store i1 %t53, ptr %l37, !tbaa !21
  br label %bb12
bb12:
  %t54 = load i1, ptr %l37, !tbaa !21
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t55 = load ptr, ptr %l2, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", ptr }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l6
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr { i64, [5 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", ptr }, ptr %t63, i32 0, i32 1
  %t65 = load ptr, ptr %t64
  store ptr %t65, ptr %l7, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l6
  %t70 = load ptr, ptr %l7, !tbaa !29
  %t75 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efuncType(ptr %v0, ptr %v1, ptr %v2, ptr %t67, ptr %t68, %"compiler/source:Span" %t69, ptr %t70)
  store i32 %t75, ptr %l48
  br label %bb16
bb16:
  %t76 = load i32, ptr %l48, !tbaa !23
  store i32 %t76, ptr %l19, !tbaa !23
  br label %bb64
bb17:
  %t77 = load ptr, ptr %l2, !tbaa !29
  store ptr %t77, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t78 = load ptr, ptr %l49, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb18, label %bb19
bb18:
  %t81 = load ptr, ptr %l49, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 8}
  %t84 = icmp eq i64 %t82, 2
  store i1 %t84, ptr %l50, !tbaa !21
  br label %bb19
bb19:
  %t85 = load i1, ptr %l50, !tbaa !21
  br i1 %t85, label %bb20, label %bb21
bb20:
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t88 = getelementptr { i64, [5 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", ptr }, ptr %t88, i32 0, i32 1
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l8, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t94 = load ptr, ptr %l8, !tbaa !29
  %t98 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eshape(ptr %v0, ptr %v1, ptr %v2, ptr %t92, ptr %t93, ptr %t94)
  store i32 %t98, ptr %l58
  br label %bb23
bb23:
  %t99 = load i32, ptr %l58, !tbaa !23
  store i32 %t99, ptr %l19, !tbaa !23
  br label %bb64
bb24:
  %t100 = load ptr, ptr %l2, !tbaa !29
  store ptr %t100, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t101 = load ptr, ptr %l59, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb25, label %bb26
bb25:
  %t104 = load ptr, ptr %l59, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 8}
  %t107 = icmp eq i64 %t105, 3
  store i1 %t107, ptr %l60, !tbaa !21
  br label %bb26
bb26:
  %t108 = load i1, ptr %l60, !tbaa !21
  br i1 %t108, label %bb27, label %bb28
bb27:
  %t109 = load ptr, ptr %l2, !tbaa !29
  %t111 = getelementptr { i64, [5 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t111, i32 0, i32 0
  %t113 = load %"compiler/source:Span", ptr %t112
  store %"compiler/source:Span" %t113, ptr %l9
  %t115 = load ptr, ptr %l2, !tbaa !29
  %t117 = getelementptr { i64, [5 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t117, i32 0, i32 1
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l10, !tbaa !29
  %t121 = load ptr, ptr %l2, !tbaa !29
  %t123 = getelementptr { i64, [5 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t123, i32 0, i32 2
  %t125 = load i1, ptr %t124
  store i1 %t125, ptr %l11, !tbaa !21
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l69, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  store ptr %t128, ptr %l70, !tbaa !29
  %t129 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t129, ptr %l71
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t132 = load ptr, ptr %l10, !tbaa !29
  %t137 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t130, ptr %t131, ptr %t132)
  store i32 %t137, ptr %l76
  br label %bb30
bb30:
  %t138 = load i1, ptr %l11, !tbaa !21
  %t139 = load ptr, ptr %l69, !tbaa !29
  %t140 = load ptr, ptr %l70, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l71
  %t142 = load i32, ptr %l76, !tbaa !23
  %t144 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erefType(ptr %v0, ptr %v1, ptr %t139, ptr %t140, %"compiler/source:Span" %t141, i32 %t142, i1 %t138)
  store i32 %t144, ptr %l78
  br label %bb31
bb31:
  %t145 = load i32, ptr %l78, !tbaa !23
  store i32 %t145, ptr %l19, !tbaa !23
  br label %bb64
bb32:
  %t146 = load ptr, ptr %l2, !tbaa !29
  store ptr %t146, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t147 = load ptr, ptr %l79, !tbaa !29
  %t148 = icmp ne ptr %t147, null
  br i1 %t148, label %bb33, label %bb34
bb33:
  %t150 = load ptr, ptr %l79, !tbaa !29
  %t151 = load i64, ptr %t150, !range !{i64 0, i64 8}
  %t153 = icmp eq i64 %t151, 4
  store i1 %t153, ptr %l80, !tbaa !21
  br label %bb34
bb34:
  %t154 = load i1, ptr %l80, !tbaa !21
  br i1 %t154, label %bb35, label %bb36
bb35:
  %t155 = load ptr, ptr %l2, !tbaa !29
  %t157 = getelementptr { i64, [5 x i64] }, ptr %t155, i32 0, i32 1
  %t158 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t157, i32 0, i32 1
  %t159 = load ptr, ptr %t158
  store ptr %t159, ptr %l12, !tbaa !29
  %t161 = load ptr, ptr %l2, !tbaa !29
  %t163 = getelementptr { i64, [5 x i64] }, ptr %t161, i32 0, i32 1
  %t164 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t163, i32 0, i32 2
  %t165 = load i1, ptr %t164
  store i1 %t165, ptr %l13, !tbaa !21
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l87, !tbaa !29
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t170 = load ptr, ptr %l12, !tbaa !29
  %t174 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t168, ptr %t169, ptr %t170)
  store i32 %t174, ptr %l91
  br label %bb38
bb38:
  %t175 = load i1, ptr %l13, !tbaa !21
  %t176 = load ptr, ptr %l87, !tbaa !29
  %t177 = load i32, ptr %l91, !tbaa !23
  %t179 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eperm(ptr %v0, ptr %t176, i32 %t177, i1 %t175)
  store i32 %t179, ptr %l93
  br label %bb39
bb39:
  %t180 = load i32, ptr %l93, !tbaa !23
  store i32 %t180, ptr %l19, !tbaa !23
  br label %bb64
bb40:
  %t181 = load ptr, ptr %l2, !tbaa !29
  store ptr %t181, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t182 = load ptr, ptr %l94, !tbaa !29
  %t183 = icmp ne ptr %t182, null
  br i1 %t183, label %bb41, label %bb42
bb41:
  %t185 = load ptr, ptr %l94, !tbaa !29
  %t186 = load i64, ptr %t185, !range !{i64 0, i64 8}
  %t188 = icmp eq i64 %t186, 5
  store i1 %t188, ptr %l95, !tbaa !21
  br label %bb42
bb42:
  %t189 = load i1, ptr %l95, !tbaa !21
  br i1 %t189, label %bb43, label %bb44
bb43:
  %t190 = load ptr, ptr %l2, !tbaa !29
  %t192 = getelementptr { i64, [5 x i64] }, ptr %t190, i32 0, i32 1
  %t193 = getelementptr { %"compiler/source:Span", ptr }, ptr %t192, i32 0, i32 1
  %t194 = load ptr, ptr %t193
  store ptr %t194, ptr %l14, !tbaa !29
  br label %bb45
bb44:
  br label %bb48
bb45:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/generic:Program", ptr %t196, i32 0, i32 2
  store ptr %t198, ptr %l101, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t201 = load ptr, ptr %l14, !tbaa !29
  %t206 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t199, ptr %t200, ptr %t201)
  store i32 %t206, ptr %l106
  br label %bb46
bb46:
  %t207 = load ptr, ptr %l101, !tbaa !29
  %t208 = load i32, ptr %l106, !tbaa !23
  %t209 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %t207, i32 %t208)
  store i32 %t209, ptr %l107
  br label %bb47
bb47:
  %t210 = load i32, ptr %l107, !tbaa !23
  store i32 %t210, ptr %l19, !tbaa !23
  br label %bb64
bb48:
  %t211 = load ptr, ptr %l2, !tbaa !29
  store ptr %t211, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t212 = load ptr, ptr %l108, !tbaa !29
  %t213 = icmp ne ptr %t212, null
  br i1 %t213, label %bb49, label %bb50
bb49:
  %t215 = load ptr, ptr %l108, !tbaa !29
  %t216 = load i64, ptr %t215, !range !{i64 0, i64 8}
  %t218 = icmp eq i64 %t216, 6
  store i1 %t218, ptr %l109, !tbaa !21
  br label %bb50
bb50:
  %t219 = load i1, ptr %l109, !tbaa !21
  br i1 %t219, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  %t220 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t220, ptr %l19, !tbaa !23
  br label %bb64
bb54:
  %t222 = load ptr, ptr %l2, !tbaa !29
  store ptr %t222, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t223 = load ptr, ptr %l113, !tbaa !29
  %t224 = icmp ne ptr %t223, null
  br i1 %t224, label %bb55, label %bb56
bb55:
  %t226 = load ptr, ptr %l113, !tbaa !29
  %t227 = load i64, ptr %t226, !range !{i64 0, i64 8}
  %t229 = icmp eq i64 %t227, 7
  store i1 %t229, ptr %l114, !tbaa !21
  br label %bb56
bb56:
  %t230 = load i1, ptr %l114, !tbaa !21
  br i1 %t230, label %bb57, label %bb58
bb57:
  %t231 = load ptr, ptr %l2, !tbaa !29
  %t233 = getelementptr { i64, [5 x i64] }, ptr %t231, i32 0, i32 1
  %t234 = getelementptr { %"compiler/source:Span", ptr }, ptr %t233, i32 0, i32 1
  %t235 = load ptr, ptr %t234
  store ptr %t235, ptr %l15, !tbaa !29
  br label %bb59
bb58:
  br label %bb63
bb59:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 2
  store ptr %t239, ptr %l120, !tbaa !29
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/generic:Program", ptr %t240, i32 0, i32 2
  store ptr %t242, ptr %l122, !tbaa !29
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load ptr, ptr %l1, !tbaa !29
  %t245 = load ptr, ptr %l15, !tbaa !29
  %t250 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t243, ptr %t244, ptr %t245)
  store i32 %t250, ptr %l127
  br label %bb60
bb60:
  %t251 = load ptr, ptr %l122, !tbaa !29
  %t252 = load i32, ptr %l127, !tbaa !23
  %t253 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t251, i32 %t252, i32 0)
  store i32 %t253, ptr %l128
  br label %bb61
bb61:
  %t254 = load i64, ptr @G_2ecompiler_2ftypes_2eSpread, !tbaa !24
  %t255 = load ptr, ptr %l120, !tbaa !29
  %t256 = load i32, ptr %l128, !tbaa !23
  %t258 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t255, i32 %t256, i64 %t254)
  store i32 %t258, ptr %l130
  br label %bb62
bb62:
  %t259 = load i32, ptr %l130, !tbaa !23
  store i32 %t259, ptr %l19, !tbaa !23
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_e146017c26ab6c4e_50202815c87e77c2)
  unreachable
bb64:
  %t260 = load i32, ptr %l19, !tbaa !23
  store i32 %t260, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  store ptr %t3, ptr %l11, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l15
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l11, !tbaa !29
  %t12 = load i32, ptr %l15, !tbaa !23
  %t13 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t11, i32 %t12)
  store { i64, ptr } %t13, ptr %l16
  br label %bb2
bb2:
  %t14 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb4, label %bb5
bb4:
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %l23, !tbaa !27
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i32, ptr %t31, i64 %t28
  %t33 = load i32, ptr %t32, !tbaa !33
  %t35 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebodiesOf(ptr %v0, ptr %t35, i32 %t33)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l3, !tbaa !24
  br label %bb3
bb9:
  store %olang.scope zeroinitializer, ptr %s4
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l1, !tbaa !23
  %t49 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s4, ptr %t45, i32 %t46)
  store { i64, ptr } %t49, ptr %l33
  br label %bb10
bb10:
  %t50 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  %t52 = extractvalue { i64, ptr } %t50, 1
  %t53 = mul i64 %t51, 4
  %t54 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t53)
  call void @llvm.memcpy.p0.p0.i64(ptr %t54, ptr %t52, i64 %t53, i1 false)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  store i64 %t60, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t70 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t70, ptr %l41, !tbaa !27
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i32, ptr %t74, i64 %t71
  %t76 = load i32, ptr %t75, !tbaa !33
  %t78 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebodiesOf(ptr %v0, ptr %t78, i32 %t76)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l7, !tbaa !24
  br label %bb11
bb17:
  call void @__olang_scope_close(ptr %s4)
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  %t89 = load i32, ptr %l1, !tbaa !23
  %t92 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %t88, i32 %t89)
  store { i64, ptr } %t92, ptr %l51
  br label %bb18
bb18:
  %t93 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t93, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSynthGlobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l14 = alloca %"compiler/source:Span"
  %l17 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l25 = alloca %"compiler/ast:VarDecl"
  %l28 = alloca ptr
  %l32 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  %t16 = alloca i64
  %t43 = alloca i64
  %t61 = alloca i64
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l5, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aVarDecl_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i32, ptr %l2, !tbaa !23
  store i32 %t6, ptr %l7, !tbaa !23
  %t7 = icmp sge i64 1, 0
  br i1 %t7, label %bb3, label %bb4
bb3:
  %t9 = icmp sle i64 1, 2305843009213693951
  br i1 %t9, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_c20939017dfa028a_da62df5ce2abe84e)
  unreachable
bb5:
  %t11 = mul i64 1, 4
  %t12 = load i64, ptr %l5
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call ptr @__olang_scope_alloc(ptr %t13, i64 %t11)
  %t15 = load i32, ptr %l7, !tbaa !23
  store i64 0, ptr %t16
  br label %fill.17
fill.17:
  %t20 = load i64, ptr %t16
  %t21 = icmp slt i64 %t20, 1
  br i1 %t21, label %fillb.18, label %filld.19
fillb.18:
  %t22 = getelementptr i32, ptr %t14, i64 %t20
  store i32 %t15, ptr %t22
  %t23 = add i64 %t20, 1
  store i64 %t23, ptr %t16
  br label %fill.17
filld.19:
  %t24 = insertvalue { i64, ptr } undef, i64 1, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t14, 1
  store { i64, ptr } %t25, ptr %l10, !tbaa !27
  %t26 = ptrtoint ptr %v0 to i64
  store i64 %t26, ptr %l11, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aVarDecl_2e1
  br i1 %t27, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_c20939017dfa028a_da62df5ce2abe84e)
  unreachable
bb7:
  %t29 = call ptr @__olang_region_make(ptr %v0)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l11, !tbaa !24
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t31)
  store %"compiler/source:Span" %t33, ptr %l14
  br label %bb9
bb9:
  %t34 = icmp sge i64 1, 0
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t36 = icmp sle i64 1, 1152921504606846975
  br i1 %t36, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_c20939017dfa028a_da62df5ce2abe84e)
  unreachable
bb12:
  %t38 = mul i64 1, 8
  %t39 = load i64, ptr %l11
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = call ptr @__olang_scope_alloc(ptr %t40, i64 %t38)
  %t42 = load %"compiler/source:Span", ptr %l14
  store i64 0, ptr %t43
  br label %fill.44
fill.44:
  %t47 = load i64, ptr %t43
  %t48 = icmp slt i64 %t47, 1
  br i1 %t48, label %fillb.45, label %filld.46
fillb.45:
  %t49 = getelementptr %"compiler/source:Span", ptr %t41, i64 %t47
  store %"compiler/source:Span" %t42, ptr %t49
  %t50 = add i64 %t47, 1
  store i64 %t50, ptr %t43
  br label %fill.44
filld.46:
  %t51 = insertvalue { i64, ptr } undef, i64 1, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t41, 1
  store { i64, ptr } %t52, ptr %l17, !tbaa !27
  %t53 = load ptr, ptr %l3, !tbaa !29
  store ptr %t53, ptr %l18, !tbaa !29
  %t54 = icmp sge i64 1, 0
  br i1 %t54, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_c20939017dfa028a_da62df5ce2abe84e)
  unreachable
bb14:
  %t56 = icmp sle i64 1, 1152921504606846975
  br i1 %t56, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_c20939017dfa028a_da62df5ce2abe84e)
  unreachable
bb16:
  %t58 = mul i64 1, 8
  %t59 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t58)
  %t60 = load ptr, ptr %l18, !tbaa !29
  store i64 0, ptr %t61
  br label %fill.62
fill.62:
  %t65 = load i64, ptr %t61
  %t66 = icmp slt i64 %t65, 1
  br i1 %t66, label %fillb.63, label %filld.64
fillb.63:
  %t67 = getelementptr ptr, ptr %t59, i64 %t65
  store ptr %t60, ptr %t67
  %t68 = add i64 %t65, 1
  store i64 %t68, ptr %t61
  br label %fill.62
filld.64:
  %t69 = insertvalue { i64, ptr } undef, i64 1, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t59, 1
  store { i64, ptr } %t70, ptr %l21, !tbaa !27
  %t71 = icmp sge i64 0, 0
  br i1 %t71, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_c20939017dfa028a_da62df5ce2abe84e)
  unreachable
bb18:
  %t73 = icmp sle i64 0, 1152921504606846975
  br i1 %t73, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_24dfd0b2be49105f_81725bf52a128c43)
  unreachable
bb20:
  %t75 = mul i64 0, 8
  %t76 = insertvalue { i64, ptr } undef, i64 0, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t78 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t82 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t78, { i64, ptr } %t79, ptr null, { i64, ptr } %t80, i1 true, i1 false, { i64, ptr } %t77, i1 false)
  store %"compiler/ast:VarDecl" %t82, ptr %l25
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_24dfd0b2be49105f_81725bf52a128c43)
  unreachable
bb22:
  %t83 = load %"compiler/ast:VarDecl", ptr %l25
  %t84 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 88, i64 8)
  store %"compiler/ast:VarDecl" %t83, ptr %t84
  store ptr %t84, ptr %l4, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 59
  store ptr %t88, ptr %l28, !tbaa !29
  %t90 = load i32, ptr %l2, !tbaa !23
  %t92 = sext i32 %t90 to i64
  %t95 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %a1, i64 %t92)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t95, ptr %l32
  br label %bb23
bb23:
  %t96 = load ptr, ptr %l4, !tbaa !29
  %t97 = load ptr, ptr %l28, !tbaa !29
  %t98 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l32
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H6466f280e8b3243621b03e95613f722a(ptr %v0, ptr %v0, ptr %t97, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t98, ptr %t96)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeBuilders(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/generic:fnRow"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l26 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i64
  %l54 = alloca %"compiler/generic:fnRow"
  %l56 = alloca i1
  %l58 = alloca i1
  %l60 = alloca i1
  %l71 = alloca i64
  %l74 = alloca i1
  %l78 = alloca i1
  %l83 = alloca i1
  %l87 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l90 = alloca i1
  %l97 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l99 = alloca i64
  %l100 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l13
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeKey(ptr %v0, ptr %t5, i32 %t6)
  store i64 %t9, ptr %l16
  br label %bb3
bb3:
  %t10 = load i64, ptr %l16, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s1, ptr %l3)
  store { i64, ptr } %t16, ptr %l20
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t17 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t17, ptr %l21, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  store i64 %t19, ptr %l22, !tbaa !24
  %t20 = load i64, ptr %l22, !tbaa !24
  %t21 = mul i64 %t20, 8
  %t22 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t21)
  %t23 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %l23, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = load i64, ptr %l22, !tbaa !24
  %t30 = mul i64 %t29, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t26, ptr %t28, i64 %t30, i1 false)
  %t31 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t31, ptr %l21, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t32 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t32, ptr %rv
  br label %ret
bb7:
  store i64 0, ptr %l5, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 29
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eLen_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l26
  br label %bb8
bb8:
  %t38 = load i64, ptr %l26, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb14
bb11:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = sub i64 %t49, %t50
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = add i64 %t53, %t54
  %t59 = sub i64 %t57, 1
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = sdiv i64 %t59, %t60
  store i64 %t63, ptr %l33, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t65 = load i64, ptr %l33, !tbaa !24
  store i64 %t65, ptr %l30, !tbaa !24
  br label %bb14
bb14:
  %t66 = load i64, ptr %l30, !tbaa !24
  store i64 %t66, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb48
bb17:
  br label %bb18
bb18:
  %t75 = load i64, ptr %l5, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = mul i64 %t76, %t77
  %t83 = add i64 %t75, %t80
  store i64 %t83, ptr %l10, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 29
  %t88 = load i64, ptr %l10, !tbaa !24
  %t91 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t87, i64 %t88)
  store %"compiler/generic:fnRow" %t91, ptr %l54
  br label %bb19
bb19:
  %t92 = load %"compiler/generic:fnRow", ptr %l54
  store %"compiler/generic:fnRow" %t92, ptr %l11
  %t93 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t94)
  store i1 %t96, ptr %l56
  br label %bb20
bb20:
  %t97 = load i1, ptr %l56, !tbaa !21
  %t98 = xor i1 %t97, true
  br i1 %t98, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb23
bb22:
  %t100 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 2
  %t101 = load i1, ptr %t100, !tbaa !21
  store i1 %t101, ptr %l58, !tbaa !21
  br label %bb23
bb23:
  %t103 = load i1, ptr %l58, !tbaa !21
  br i1 %t103, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb26
bb25:
  %t104 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/ast:Func", ptr %t105, i32 0, i32 5
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  %t112 = icmp sgt i64 %t110, 0
  store i1 %t112, ptr %l60, !tbaa !21
  br label %bb26
bb26:
  %t114 = load i1, ptr %l60, !tbaa !21
  br i1 %t114, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb28:
  br label %bb29
bb29:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 0
  %t117 = load i64, ptr %t116, !tbaa !24
  %t118 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = getelementptr %"compiler/ast:Func", ptr %t119, i32 0, i32 9
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t123 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/ast:Func", ptr %t124, i32 0, i32 5
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  %t132 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v0, ptr %v0, ptr %t115, i64 %t117, ptr %t122, { i64, ptr } %t127)
  store i64 %t132, ptr %l71
  br label %bb30
bb30:
  %t133 = load i64, ptr %l4, !tbaa !24
  %t134 = load i64, ptr %l71, !tbaa !24
  %t136 = icmp ne i64 %t134, %t133
  br i1 %t136, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb34
bb32:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i64, ptr %l10, !tbaa !24
  %t140 = load i32, ptr %l1, !tbaa !23
  %t144 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownerApplies(ptr %v0, ptr %t138, i64 %t139, i32 %t140)
  store i1 %t144, ptr %l78
  br label %bb33
bb33:
  %t145 = load i1, ptr %l78, !tbaa !21
  %t146 = xor i1 %t145, true
  store i1 %t146, ptr %l74, !tbaa !21
  br label %bb34
bb34:
  %t148 = load i1, ptr %l74, !tbaa !21
  br i1 %t148, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb36:
  br label %bb37
bb37:
  %t149 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 0
  %t150 = load i64, ptr %t149, !tbaa !24
  %t154 = icmp ne i64 %t150, %a2
  br i1 %t154, label %bb38, label %bb39
bb38:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = getelementptr %"compiler/ast:Func", ptr %t158, i32 0, i32 10
  %t161 = load i32, ptr %t160, !tbaa !23
  %t164 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s3, ptr %t156, i32 %t161)
  store { i64, ptr } %t164, ptr %l87
  br label %bb40
bb39:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb42
bb40:
  %t165 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t165, ptr %l88, !tbaa !27
  %t166 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i8, ptr %t167, i64 0
  %t169 = load i8, ptr %t168, !tbaa !32
  %t171 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t169)
  store i1 %t171, ptr %l90
  br label %bb41
bb41:
  %t172 = load i1, ptr %l90, !tbaa !21
  %t173 = xor i1 %t172, true
  store i1 %t173, ptr %l83, !tbaa !21
  br label %bb42
bb42:
  %t175 = load i1, ptr %l83, !tbaa !21
  br i1 %t175, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb44:
  br label %bb45
bb45:
  %t176 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t176)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb47:
  %t179 = load i64, ptr %l9, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l9, !tbaa !24
  br label %bb15
bb48:
  %t184 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t184, ptr %l97
  br label %bb49
bb49:
  %t185 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t185, ptr %l98, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 0
  store i64 %t187, ptr %l99, !tbaa !24
  %t188 = load i64, ptr %l99, !tbaa !24
  %t189 = mul i64 %t188, 8
  %t190 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t189)
  %t191 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t190, 1
  store { i64, ptr } %t192, ptr %l100, !tbaa !27
  %t193 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = load i64, ptr %l99, !tbaa !24
  %t198 = mul i64 %t197, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t194, ptr %t196, i64 %t198, i1 false)
  %t199 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t199, ptr %l98, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t200 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t200, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeMethods(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/generic:fnRow"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l26 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i64
  %l54 = alloca %"compiler/generic:fnRow"
  %l58 = alloca i1
  %l60 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i1
  %l83 = alloca i1
  %l88 = alloca i1
  %l92 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l95 = alloca i1
  %l102 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l13
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeKey(ptr %v0, ptr %t5, i32 %t6)
  store i64 %t9, ptr %l16
  br label %bb3
bb3:
  %t10 = load i64, ptr %l16, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s1, ptr %l3)
  store { i64, ptr } %t16, ptr %l20
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t17 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t17, ptr %l21, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  store i64 %t19, ptr %l22, !tbaa !24
  %t20 = load i64, ptr %l22, !tbaa !24
  %t21 = mul i64 %t20, 8
  %t22 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t21)
  %t23 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %l23, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = load i64, ptr %l22, !tbaa !24
  %t30 = mul i64 %t29, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t26, ptr %t28, i64 %t30, i1 false)
  %t31 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t31, ptr %l21, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t32 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t32, ptr %rv
  br label %ret
bb7:
  store i64 0, ptr %l5, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 29
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eLen_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l26
  br label %bb8
bb8:
  %t38 = load i64, ptr %l26, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb14
bb11:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = sub i64 %t49, %t50
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = add i64 %t53, %t54
  %t59 = sub i64 %t57, 1
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = sdiv i64 %t59, %t60
  store i64 %t63, ptr %l33, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t65 = load i64, ptr %l33, !tbaa !24
  store i64 %t65, ptr %l30, !tbaa !24
  br label %bb14
bb14:
  %t66 = load i64, ptr %l30, !tbaa !24
  store i64 %t66, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb50
bb17:
  br label %bb18
bb18:
  %t75 = load i64, ptr %l5, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = mul i64 %t76, %t77
  %t83 = add i64 %t75, %t80
  store i64 %t83, ptr %l10, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 29
  %t88 = load i64, ptr %l10, !tbaa !24
  %t91 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t87, i64 %t88)
  store %"compiler/generic:fnRow" %t91, ptr %l54
  br label %bb19
bb19:
  %t92 = load %"compiler/generic:fnRow", ptr %l54
  store %"compiler/generic:fnRow" %t92, ptr %l11
  %t93 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/ast:Func", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = icmp eq ptr %t97, null
  br i1 %t99, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb22
bb21:
  %t101 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 2
  %t102 = load i1, ptr %t101, !tbaa !21
  store i1 %t102, ptr %l58, !tbaa !21
  br label %bb22
bb22:
  %t104 = load i1, ptr %l58, !tbaa !21
  br i1 %t104, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb25
bb24:
  %t105 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/ast:Func", ptr %t106, i32 0, i32 5
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t113 = icmp sgt i64 %t111, 0
  store i1 %t113, ptr %l60, !tbaa !21
  br label %bb25
bb25:
  %t115 = load i1, ptr %l60, !tbaa !21
  br i1 %t115, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb27:
  br label %bb28
bb28:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l65, !tbaa !29
  %t117 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 0
  %t118 = load i64, ptr %t117, !tbaa !24
  store i64 %t118, ptr %l66, !tbaa !24
  %t119 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/ast:Func", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = icmp eq ptr %t123, null
  br i1 %t125, label %bb29, label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_8878e002d59779fd_75c347076df58361)
  unreachable
bb30:
  br label %bb31
bb31:
  %t127 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/ast:Func", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t134 = getelementptr %"compiler/ast:Param", ptr %t131, i32 0, i32 2
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t136 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = getelementptr %"compiler/ast:Func", ptr %t137, i32 0, i32 5
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  %t141 = load ptr, ptr %l65, !tbaa !29
  %t142 = load i64, ptr %l66, !tbaa !24
  %t145 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v0, ptr %v0, ptr %t141, i64 %t142, ptr %t135, { i64, ptr } %t140)
  store i64 %t145, ptr %l76
  br label %bb32
bb32:
  %t146 = load i64, ptr %l4, !tbaa !24
  %t147 = load i64, ptr %l76, !tbaa !24
  %t149 = icmp ne i64 %t147, %t146
  br i1 %t149, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb36
bb34:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i64, ptr %l10, !tbaa !24
  %t153 = load i32, ptr %l1, !tbaa !23
  %t157 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvApplies(ptr %v0, ptr %t151, i64 %t152, i32 %t153)
  store i1 %t157, ptr %l83
  br label %bb35
bb35:
  %t158 = load i1, ptr %l83, !tbaa !21
  %t159 = xor i1 %t158, true
  store i1 %t159, ptr %l79, !tbaa !21
  br label %bb36
bb36:
  %t161 = load i1, ptr %l79, !tbaa !21
  br i1 %t161, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb38:
  br label %bb39
bb39:
  %t162 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 0
  %t163 = load i64, ptr %t162, !tbaa !24
  %t167 = icmp ne i64 %t163, %a2
  br i1 %t167, label %bb40, label %bb41
bb40:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/ast:Func", ptr %t171, i32 0, i32 2
  %t174 = load i32, ptr %t173, !tbaa !23
  %t177 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s3, ptr %t169, i32 %t174)
  store { i64, ptr } %t177, ptr %l92
  br label %bb42
bb41:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb44
bb42:
  %t178 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t178, ptr %l93, !tbaa !27
  %t179 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr i8, ptr %t180, i64 0
  %t182 = load i8, ptr %t181, !tbaa !32
  %t184 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t182)
  store i1 %t184, ptr %l95
  br label %bb43
bb43:
  %t185 = load i1, ptr %l95, !tbaa !21
  %t186 = xor i1 %t185, true
  store i1 %t186, ptr %l88, !tbaa !21
  br label %bb44
bb44:
  %t188 = load i1, ptr %l88, !tbaa !21
  br i1 %t188, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb46:
  br label %bb47
bb47:
  %t189 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t189)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb49:
  %t192 = load i64, ptr %l9, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l9, !tbaa !24
  br label %bb15
bb50:
  %t197 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t197, ptr %l102
  br label %bb51
bb51:
  %t198 = load { i64, ptr }, ptr %l102, !tbaa !27
  store { i64, ptr } %t198, ptr %l103, !tbaa !27
  %t199 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t199, 0
  store i64 %t200, ptr %l104, !tbaa !24
  %t201 = load i64, ptr %l104, !tbaa !24
  %t202 = mul i64 %t201, 8
  %t203 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t202)
  %t204 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  store { i64, ptr } %t205, ptr %l105, !tbaa !27
  %t206 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = load i64, ptr %l104, !tbaa !24
  %t211 = mul i64 %t210, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t207, ptr %t209, i64 %t211, i1 false)
  %t212 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t212, ptr %l103, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t213 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t213, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 0, i1 false)
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca i1
  %l11 = alloca i32
  %l17 = alloca i32
  %l21 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i1
  %l30 = alloca ptr
  %l34 = alloca i32
  %l39 = alloca i32
  %l42 = alloca i1
  %l45 = alloca i1
  %l49 = alloca i32
  %l53 = alloca ptr
  %l54 = alloca i32
  %l58 = alloca i32
  %l62 = alloca i32
  %l70 = alloca i32
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
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t10 = trunc i64 20 to i32
  %t11 = icmp eq i32 %t8, %t10
  store i1 %t11, ptr %l6, !tbaa !21
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l17
  br label %bb2
bb2:
  %t20 = load i32, ptr %l17, !range !{i32 0, i32 33}
  %t22 = trunc i64 20 to i32
  %t23 = icmp eq i32 %t20, %t22
  store i1 %t23, ptr %l7, !tbaa !21
  %t25 = load i1, ptr %l6, !tbaa !21
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load i1, ptr %l7, !tbaa !21
  %t29 = xor i1 %t27, true
  store i1 %t29, ptr %l21, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t31 = load i1, ptr %l21, !tbaa !21
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l1, !tbaa !23
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t38 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisVar(ptr %v0, ptr %v1, ptr %t32, i32 %t33, ptr %t34)
  store i1 %t38, ptr %l28
  br label %bb8
bb7:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb9
bb8:
  %t39 = load i1, ptr %l28, !tbaa !21
  %t40 = xor i1 %t39, true
  store i1 %t40, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t42 = load i1, ptr %l24, !tbaa !21
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l30, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l1, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l34
  br label %bb12
bb11:
  %t51 = load i1, ptr %l7, !tbaa !21
  br i1 %t51, label %bb16, label %bb17
bb12:
  %t53 = load i32, ptr %l2, !tbaa !23
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t55 = load i1, ptr %l4, !tbaa !21
  %t56 = load i1, ptr %l5, !tbaa !21
  %t57 = load ptr, ptr %l30, !tbaa !29
  %t58 = load i32, ptr %l34, !tbaa !23
  %t63 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %t57, i32 %t58, i32 %t53, ptr %t54, i1 %t55, i1 %t56)
  store i32 %t63, ptr %l39
  %t64 = icmp ne i32 %t63, 0
  br i1 %t64, label %bb14, label %ok.65, !prof !99
ok.65:
  br label %bb13
bb13:
  br label %bb15
bb14:
  %t66 = load i32, ptr %l39, !tbaa !23
  %t67 = lshr i32 %t66, 16
  %t68 = and i32 %t66, 65535
  %t69 = icmp eq i32 %t67, 1
  %t70 = select i1 %t69, i32 1, i32 0
  %t71 = icmp eq i32 %t66, 0
  %t72 = shl i32 %t70, 16
  %t73 = or i32 %t72, %t68
  %t74 = select i1 %t71, i32 0, i32 %t73
  store i32 %t74, ptr %rv
  br label %ret
bb15:
  br label %bb33
bb16:
  %t76 = load i1, ptr %l6, !tbaa !21
  %t78 = xor i1 %t76, true
  store i1 %t78, ptr %l42, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t80 = load i1, ptr %l42, !tbaa !21
  br i1 %t80, label %bb19, label %bb20
bb19:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 2
  %t84 = load i32, ptr %l1, !tbaa !23
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t87, ptr %l49
  br label %bb21
bb20:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb22
bb21:
  %t88 = load i32, ptr %l49, !range !{i32 0, i32 33}
  %t90 = trunc i64 25 to i32
  %t91 = icmp eq i32 %t88, %t90
  %t93 = xor i1 %t91, true
  store i1 %t93, ptr %l45, !tbaa !21
  br label %bb22
bb22:
  %t95 = load i1, ptr %l45, !tbaa !21
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l53, !tbaa !29
  %t97 = load i32, ptr %l1, !tbaa !23
  store i32 %t97, ptr %l54, !tbaa !23
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 2
  %t101 = load i32, ptr %l2, !tbaa !23
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t104, ptr %l58
  br label %bb25
bb24:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i32, ptr %l1, !tbaa !23
  %t107 = load i32, ptr %l2, !tbaa !23
  %t108 = load ptr, ptr %l3, !tbaa !29
  %t109 = load i1, ptr %l4, !tbaa !21
  %t110 = load i1, ptr %l5, !tbaa !21
  %t117 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %t105, i32 %t106, i32 %t107, ptr %t108, i1 %t109, i1 %t110)
  store i32 %t117, ptr %l70
  %t118 = icmp ne i32 %t117, 0
  br i1 %t118, label %bb30, label %ok.119, !prof !99
ok.119:
  br label %bb29
bb25:
  %t120 = load ptr, ptr %l3, !tbaa !29
  %t121 = load i1, ptr %l4, !tbaa !21
  %t122 = load i1, ptr %l5, !tbaa !21
  %t123 = load ptr, ptr %l53, !tbaa !29
  %t124 = load i32, ptr %l54, !tbaa !23
  %t125 = load i32, ptr %l58, !tbaa !23
  %t129 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %t123, i32 %t124, i32 %t125, ptr %t120, i1 %t121, i1 %t122)
  store i32 %t129, ptr %l62
  %t130 = icmp ne i32 %t129, 0
  br i1 %t130, label %bb27, label %ok.131, !prof !99
ok.131:
  br label %bb26
bb26:
  br label %bb28
bb27:
  %t132 = load i32, ptr %l62, !tbaa !23
  %t133 = lshr i32 %t132, 16
  %t134 = and i32 %t132, 65535
  %t135 = icmp eq i32 %t133, 1
  %t136 = select i1 %t135, i32 1, i32 0
  %t137 = icmp eq i32 %t132, 0
  %t138 = shl i32 %t136, 16
  %t139 = or i32 %t138, %t134
  %t140 = select i1 %t137, i32 0, i32 %t139
  store i32 %t140, ptr %rv
  br label %ret
bb28:
  br label %bb32
bb29:
  br label %bb31
bb30:
  %t142 = load i32, ptr %l70, !tbaa !23
  %t143 = lshr i32 %t142, 16
  %t144 = and i32 %t142, 65535
  %t145 = icmp eq i32 %t143, 1
  %t146 = select i1 %t145, i32 1, i32 0
  %t147 = icmp eq i32 %t142, 0
  %t148 = shl i32 %t146, 16
  %t149 = or i32 %t148, %t144
  %t150 = select i1 %t147, i32 0, i32 %t149
  store i32 %t150, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddBuilder(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l6 = alloca i64
  %l13 = alloca i64
  %l20 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l21 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i32
  %l36 = alloca i1
  %l38 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = getelementptr %"compiler/ast:Func", ptr %t3, i32 0, i32 9
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/ast:Func", ptr %t7, i32 0, i32 5
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t15 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v1, ptr %v1, ptr %t1, i64 %a1, ptr %t6, { i64, ptr } %t10)
  store i64 %t15, ptr %l13
  br label %bb1
bb1:
  %t16 = load i64, ptr %l13, !tbaa !24
  store i64 %t16, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp slt i64 %t17, 0
  br i1 %t19, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"compiler/ast:Func", ptr %t22, i32 0, i32 10
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = sext i32 %t25 to i64
  %t30 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t21, i64 %t27)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t30, ptr %l20
  br label %bb5
bb5:
  %t31 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t31, ptr %l5
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 40
  %t35 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t38 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t34, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t35)
  %t39 = extractvalue { i32, i64 } %t38, 1
  %t40 = extractvalue { i32, i64 } %t38, 0
  store i32 %t40, ptr %l26
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb7, label %ok.42, !prof !99
ok.42:
  store i64 %t39, ptr %l25
  br label %bb6
bb6:
  %t43 = load i64, ptr %l25, !tbaa !24
  store i64 %t43, ptr %l21, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i64 -1, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t44 = load i64, ptr %l21, !tbaa !24
  store i64 %t44, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp slt i64 %t45, 0
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 40
  %t52 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t53 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t51, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t52, i64 %t53)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb25
bb13:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 37
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t59, i64 %t60)
  store i1 %t63, ptr %l36
  br label %bb14
bb14:
  %t64 = load i1, ptr %l36, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb15, label %bb16
bb15:
  br label %bb23
bb16:
  br label %bb17
bb17:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 37
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t69, i64 %t70)
  %t74 = extractvalue { i32, i64 } %t73, 1
  %t75 = extractvalue { i32, i64 } %t73, 0
  store i32 %t75, ptr %l43
  %t76 = icmp ne i32 %t75, 0
  br i1 %t76, label %bb19, label %ok.77, !prof !99
ok.77:
  store i64 %t74, ptr %l42
  br label %bb18
bb18:
  %t78 = load i64, ptr %l42, !tbaa !24
  store i64 %t78, ptr %l38, !tbaa !24
  br label %bb21
bb19:
  br label %bb20
bb20:
  store i64 -1, ptr %l38, !tbaa !24
  br label %bb21
bb21:
  %t79 = load i64, ptr %l38, !tbaa !24
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb22
bb22:
  br label %bb13
bb23:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 37
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t82, i64 %t83, i64 %t84)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t88 = load i64, ptr %l4, !tbaa !24
  %t90 = ashr i64 %t88, 40
  %t92 = icmp eq i64 %t90, 4
  br i1 %t92, label %bb26, label %bb27
bb26:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/generic:Program", ptr %t94, i32 0, i32 41
  %t97 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t96, i64 %t97)
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 42
  %t103 = load i64, ptr %l4, !tbaa !24
  %t104 = shl i64 1, 40
  %t106 = sub i64 %t104, 1
  %t109 = and i64 %t103, %t106
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t102, i64 %t109)
  br label %bb29
bb29:
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFn(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l6 = alloca i64
  %l7 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l8 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l17 = alloca %"compiler/generic:fnRow"
  %l19 = alloca i1
  %l31 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l32 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i32
  %l43 = alloca ptr
  %l44 = alloca i64
  %l54 = alloca i64
  %l60 = alloca i1
  %l64 = alloca { i64, ptr }
  %l65 = alloca i1
  %l66 = alloca i1
  %l84 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l85 = alloca i64
  %l89 = alloca i64
  %l90 = alloca i32
  %l100 = alloca i1
  %l102 = alloca i64
  %l106 = alloca i64
  %l107 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 29
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eLen_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 29
  store ptr %t9, ptr %l13, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t16 = call %"compiler/generic:fnRow" @compiler_2fgeneric_3afnRow_2ector(ptr %v1, ptr %v0, i64 %t10, ptr %t11, i1 %a3)
  store %"compiler/generic:fnRow" %t16, ptr %l17
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l13, !tbaa !29
  %t18 = load %"compiler/generic:fnRow", ptr %l17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2ePush_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t17, %"compiler/generic:fnRow" %t18)
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v1, ptr %t19)
  store i1 %t21, ptr %l19
  br label %bb4
bb4:
  %t22 = load i1, ptr %l19, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t26 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddBuilder(ptr %v0, ptr %v1, ptr %t23, i64 %t24, ptr %t25, i64 %t26)
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr %"compiler/ast:Func", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load i64, ptr %l1, !tbaa !24
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t41 = getelementptr %"compiler/ast:Func", ptr %t39, i32 0, i32 2
  %t42 = load i32, ptr %t41, !tbaa !23
  %t44 = sext i32 %t42 to i64
  %t47 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t38, i64 %t44)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t47, ptr %l31
  br label %bb11
bb10:
  br label %bb20
bb11:
  %t48 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l31
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t48, ptr %l5
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 34
  %t52 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t55 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t51, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t52)
  %t56 = extractvalue { i32, i64 } %t55, 1
  %t57 = extractvalue { i32, i64 } %t55, 0
  store i32 %t57, ptr %l37
  %t58 = icmp ne i32 %t57, 0
  br i1 %t58, label %bb13, label %ok.59, !prof !99
ok.59:
  store i64 %t56, ptr %l36
  br label %bb12
bb12:
  %t60 = load i64, ptr %l36, !tbaa !24
  store i64 %t60, ptr %l32, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 -1, ptr %l32, !tbaa !24
  br label %bb15
bb15:
  %t61 = load i64, ptr %l32, !tbaa !24
  %t62 = icmp slt i64 %t61, 0
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 34
  %t67 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t68 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t66, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t67, i64 %t68)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb20:
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l43, !tbaa !29
  %t73 = load i64, ptr %l1, !tbaa !24
  store i64 %t73, ptr %l44, !tbaa !24
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr %"compiler/ast:Func", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = icmp eq ptr %t77, null
  br i1 %t79, label %bb21, label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_cab99c6a514cda4c_3636b0df4624338)
  unreachable
bb22:
  br label %bb23
bb23:
  %t81 = load ptr, ptr %l2, !tbaa !29
  %t83 = getelementptr %"compiler/ast:Func", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t87 = getelementptr %"compiler/ast:Param", ptr %t84, i32 0, i32 2
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t89 = load ptr, ptr %l2, !tbaa !29
  %t91 = getelementptr %"compiler/ast:Func", ptr %t89, i32 0, i32 5
  %t92 = load { i64, ptr }, ptr %t91, !tbaa !27
  %t93 = load ptr, ptr %l43, !tbaa !29
  %t94 = load i64, ptr %l44, !tbaa !24
  %t97 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v1, ptr %v1, ptr %t93, i64 %t94, ptr %t88, { i64, ptr } %t92)
  store i64 %t97, ptr %l54
  br label %bb24
bb24:
  %t98 = load i64, ptr %l54, !tbaa !24
  store i64 %t98, ptr %l6, !tbaa !24
  %t99 = load i64, ptr %l6, !tbaa !24
  %t101 = icmp slt i64 %t99, 0
  br i1 %t101, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  br label %bb27
bb27:
  %t103 = load i64, ptr %l6, !tbaa !24
  %t105 = ashr i64 %t103, 40
  %t107 = icmp eq i64 %t105, 1
  br i1 %t107, label %bb28, label %bb29
bb28:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l2, !tbaa !29
  %t112 = getelementptr %"compiler/ast:Func", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %t112, !tbaa !23
  %t116 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t109, i32 %t113)
  store { i64, ptr } %t116, ptr %l64
  br label %bb30
bb29:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb32
bb30:
  %t117 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t118 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t117, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t118, ptr %l65
  br label %bb31
bb31:
  %t119 = load i1, ptr %l65, !tbaa !21
  store i1 %t119, ptr %l60, !tbaa !21
  br label %bb32
bb32:
  %t120 = load i1, ptr %l60, !tbaa !21
  br i1 %t120, label %bb33, label %bb34
bb33:
  %t121 = load ptr, ptr %l2, !tbaa !29
  %t123 = getelementptr %"compiler/ast:Func", ptr %t121, i32 0, i32 3
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/ast:Sig", ptr %t124, i32 0, i32 0
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t127, 0
  %t131 = icmp eq i64 %t129, 0
  store i1 %t131, ptr %l66, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb35
bb35:
  %t133 = load i1, ptr %l66, !tbaa !21
  br i1 %t133, label %bb36, label %bb37
bb36:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/generic:Program", ptr %t134, i32 0, i32 2
  %t137 = load i64, ptr %l6, !tbaa !24
  %t138 = shl i64 1, 40
  %t140 = sub i64 %t138, 1
  %t143 = and i64 %t137, %t140
  %t145 = trunc i64 %t143 to i32
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eMarkCopy(ptr %v0, ptr %t136, i32 %t145)
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  %t149 = load i64, ptr %l6, !tbaa !24
  %t150 = load ptr, ptr %l2, !tbaa !29
  %t152 = getelementptr %"compiler/ast:Func", ptr %t150, i32 0, i32 2
  %t153 = load i32, ptr %t152, !tbaa !23
  %t155 = sext i32 %t153 to i64
  %t158 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t149, i64 %t155)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t158, ptr %l84
  br label %bb40
bb40:
  %t159 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l84
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t159, ptr %l7
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/generic:Program", ptr %t160, i32 0, i32 36
  %t163 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l7
  %t166 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t162, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t163)
  %t167 = extractvalue { i32, i64 } %t166, 1
  %t168 = extractvalue { i32, i64 } %t166, 0
  store i32 %t168, ptr %l90
  %t169 = icmp ne i32 %t168, 0
  br i1 %t169, label %bb42, label %ok.170, !prof !99
ok.170:
  store i64 %t167, ptr %l89
  br label %bb41
bb41:
  %t171 = load i64, ptr %l89, !tbaa !24
  store i64 %t171, ptr %l85, !tbaa !24
  br label %bb44
bb42:
  br label %bb43
bb43:
  store i64 -1, ptr %l85, !tbaa !24
  br label %bb44
bb44:
  %t172 = load i64, ptr %l85, !tbaa !24
  store i64 %t172, ptr %l8, !tbaa !24
  %t173 = load i64, ptr %l8, !tbaa !24
  %t175 = icmp slt i64 %t173, 0
  br i1 %t175, label %bb45, label %bb46
bb45:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/generic:Program", ptr %t177, i32 0, i32 36
  %t180 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l7
  %t181 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t179, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t180, i64 %t181)
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb60
bb48:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/generic:Program", ptr %t185, i32 0, i32 37
  %t188 = load i64, ptr %l8, !tbaa !24
  %t191 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t187, i64 %t188)
  store i1 %t191, ptr %l100
  br label %bb49
bb49:
  %t192 = load i1, ptr %l100, !tbaa !21
  %t193 = xor i1 %t192, true
  br i1 %t193, label %bb50, label %bb51
bb50:
  br label %bb58
bb51:
  br label %bb52
bb52:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/generic:Program", ptr %t195, i32 0, i32 37
  %t198 = load i64, ptr %l8, !tbaa !24
  %t201 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t197, i64 %t198)
  %t202 = extractvalue { i32, i64 } %t201, 1
  %t203 = extractvalue { i32, i64 } %t201, 0
  store i32 %t203, ptr %l107
  %t204 = icmp ne i32 %t203, 0
  br i1 %t204, label %bb54, label %ok.205, !prof !99
ok.205:
  store i64 %t202, ptr %l106
  br label %bb53
bb53:
  %t206 = load i64, ptr %l106, !tbaa !24
  store i64 %t206, ptr %l102, !tbaa !24
  br label %bb56
bb54:
  br label %bb55
bb55:
  store i64 -1, ptr %l102, !tbaa !24
  br label %bb56
bb56:
  %t207 = load i64, ptr %l102, !tbaa !24
  store i64 %t207, ptr %l8, !tbaa !24
  br label %bb57
bb57:
  br label %bb48
bb58:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/generic:Program", ptr %t208, i32 0, i32 37
  %t211 = load i64, ptr %l8, !tbaa !24
  %t212 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t210, i64 %t211, i64 %t212)
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t216 = load i64, ptr %l6, !tbaa !24
  %t218 = ashr i64 %t216, 40
  %t220 = icmp eq i64 %t218, 4
  br i1 %t220, label %bb61, label %bb62
bb61:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/generic:Program", ptr %t222, i32 0, i32 38
  %t225 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t224, i64 %t225)
  br label %bb63
bb62:
  br label %bb65
bb63:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/generic:Program", ptr %t228, i32 0, i32 39
  %t231 = load i64, ptr %l6, !tbaa !24
  %t232 = shl i64 1, 40
  %t234 = sub i64 %t232, 1
  %t237 = and i64 %t231, %t234
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t230, i64 %t237)
  br label %bb64
bb64:
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l11 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load i64, ptr %l11, !tbaa !24
  store i64 %t9, ptr %l1, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 32
  %t13 = load i64, ptr %t12, !tbaa !24
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = icmp eq i64 %t13, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l1, !tbaa !24
  store i64 %t19, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb10
bb7:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l23, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l23, !tbaa !24
  store i64 %t47, ptr %l20, !tbaa !24
  br label %bb10
bb10:
  %t48 = load i64, ptr %l20, !tbaa !24
  store i64 %t48, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l4, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  %t67 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efnsIn(ptr %v0, ptr %t67, i64 %t65)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t71 = load i64, ptr %l6, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l6, !tbaa !24
  br label %bb11
bb17:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t79 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 32
  store i64 %t76, ptr %t79, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonFunc(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l22 = alloca i1
  %l23 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l32 = alloca { i64, ptr }
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l42 = alloca i32
  %l50 = alloca i1
  %l52 = alloca i8
  %l54 = alloca i1
  %l56 = alloca { i64, ptr }
  %l62 = alloca i1
  %l64 = alloca { i64, ptr }
  %l70 = alloca i1
  %l72 = alloca { i64, ptr }
  %l78 = alloca ptr
  %l81 = alloca i32
  %l84 = alloca i32
  %l85 = alloca i32
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l89 = alloca i1
  %l91 = alloca i1
  %l93 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca i32
  %l100 = alloca i32
  %l101 = alloca i32
  %l104 = alloca i1
  %l108 = alloca i64
  %l111 = alloca i64
  %l112 = alloca i32
  %l115 = alloca i1
  %l116 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l117 = alloca ptr
  %l118 = alloca i64
  %l120 = alloca i64
  %l121 = alloca i32
  %l124 = alloca i1
  %l126 = alloca i1
  %l130 = alloca i64
  %l132 = alloca i1
  %l134 = alloca i64
  %l136 = alloca i1
  %l138 = alloca i64
  %l140 = alloca i64
  %l145 = alloca i64
  %l147 = alloca { i64, ptr }
  %l149 = alloca ptr
  %l150 = alloca { i64, ptr }
  %l151 = alloca i64
  %l152 = alloca { i64, ptr }
  %l154 = alloca i64
  %l155 = alloca i64
  %l159 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l162 = alloca i64
  %l165 = alloca i64
  %l166 = alloca i64
  %l171 = alloca i32
  %l173 = alloca ptr
  %l174 = alloca i32
  %l175 = alloca i32
  %l177 = alloca ptr
  %l179 = alloca { i64, ptr }
  %l180 = alloca i32
  %l185 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonList(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %t2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) })
  %t6 = extractvalue { i32, i32 } %t5, 1
  %t7 = extractvalue { i32, i32 } %t5, 0
  store i32 %t7, ptr %l18
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i32 %t6, ptr %l17
  br label %bb1
bb1:
  %t10 = load i32, ptr %l17, !tbaa !23
  store i32 %t10, ptr %l14, !tbaa !23
  br label %bb3
bb2:
  %t11 = load i32, ptr %l18, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t12, 2
  %t17 = select i1 %t16, i32 2, i32 %t15
  %t18 = icmp eq i32 %t11, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t13
  %t21 = select i1 %t18, i32 0, i32 %t20
  call void @__olang_scope_close(ptr %s0)
  %t23 = insertvalue { i32, i32 } zeroinitializer, i32 %t21, 0
  store { i32, i32 } %t23, ptr %rv
  br label %ret
bb3:
  %t24 = load i32, ptr %l14, !tbaa !23
  store i32 %t24, ptr %l4, !tbaa !23
  %t25 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t25, ptr %l5, !tbaa !23
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s0, ptr %t27, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t29, ptr %l22
  br label %bb4
bb4:
  %t30 = load i1, ptr %l22, !tbaa !21
  br i1 %t30, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t35 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonList(ptr %v0, ptr %v1, ptr %s1, ptr %t31, ptr %t32, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) })
  %t36 = extractvalue { i32, i32 } %t35, 1
  %t37 = extractvalue { i32, i32 } %t35, 0
  store i32 %t37, ptr %l27
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb8, label %ok.39, !prof !99
ok.39:
  store i32 %t36, ptr %l26
  br label %bb7
bb6:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/generic:cursor", ptr %t40, i32 0, i32 1
  %t43 = load i64, ptr %t42, !tbaa !24
  %t45 = add i64 %t43, 1
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/generic:cursor", ptr %t46, i32 0, i32 0
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t54 = icmp slt i64 %t45, %t51
  br i1 %t54, label %bb15, label %bb16
bb7:
  %t56 = load i32, ptr %l26, !tbaa !23
  store i32 %t56, ptr %l23, !tbaa !23
  br label %bb9
bb8:
  %t57 = load i32, ptr %l27, !tbaa !23
  %t58 = lshr i32 %t57, 16
  %t59 = and i32 %t57, 65535
  %t60 = icmp eq i32 %t58, 1
  %t61 = select i1 %t60, i32 1, i32 0
  %t62 = icmp eq i32 %t58, 2
  %t63 = select i1 %t62, i32 2, i32 %t61
  %t64 = icmp eq i32 %t57, 0
  %t65 = shl i32 %t63, 16
  %t66 = or i32 %t65, %t59
  %t67 = select i1 %t64, i32 0, i32 %t66
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t69 = insertvalue { i32, i32 } zeroinitializer, i32 %t67, 0
  store { i32, i32 } %t69, ptr %rv
  br label %ret
bb9:
  %t70 = load i32, ptr %l23, !tbaa !23
  store i32 %t70, ptr %l6, !tbaa !23
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l6, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t73, i32 %t74)
  store { i64, ptr } %t77, ptr %l32
  br label %bb10
bb10:
  %t78 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t78, ptr %l7, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t83 = icmp eq i64 %t81, 1
  br i1 %t83, label %bb11, label %bb12
bb11:
  %t85 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t85, ptr %l37, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i32, ptr %t87, i64 0
  %t89 = load i32, ptr %t88, !tbaa !33
  store i32 %t89, ptr %l36, !tbaa !23
  br label %bb14
bb12:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l6, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l42
  br label %bb13
bb13:
  %t98 = load i32, ptr %l42, !tbaa !23
  store i32 %t98, ptr %l36, !tbaa !23
  br label %bb14
bb14:
  %t99 = load i32, ptr %l36, !tbaa !23
  store i32 %t99, ptr %l5, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb34
bb15:
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v1, ptr %t100)
  store i8 %t102, ptr %l52
  br label %bb17
bb16:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb18
bb17:
  %t103 = load i8, ptr %l52, !tbaa !22
  %t104 = icmp eq i8 %t103, 32
  store i1 %t104, ptr %l50, !tbaa !21
  br label %bb18
bb18:
  %t106 = load i1, ptr %l50, !tbaa !21
  br i1 %t106, label %bb19, label %bb20
bb19:
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr %"compiler/generic:cursor", ptr %t107, i32 0, i32 0
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  store { i64, ptr } %t110, ptr %l56, !tbaa !27
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr %"compiler/generic:cursor", ptr %t111, i32 0, i32 1
  %t114 = load i64, ptr %t113, !tbaa !24
  %t116 = add i64 %t114, 1
  %t118 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr i8, ptr %t119, i64 %t116
  %t121 = load i8, ptr %t120, !tbaa !32
  %t123 = icmp ne i8 %t121, 63
  store i1 %t123, ptr %l54, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb21
bb21:
  %t125 = load i1, ptr %l54, !tbaa !21
  br i1 %t125, label %bb22, label %bb23
bb22:
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr %"compiler/generic:cursor", ptr %t126, i32 0, i32 0
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  store { i64, ptr } %t129, ptr %l64, !tbaa !27
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr %"compiler/generic:cursor", ptr %t130, i32 0, i32 1
  %t133 = load i64, ptr %t132, !tbaa !24
  %t135 = add i64 %t133, 1
  %t137 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i8, ptr %t138, i64 %t135
  %t140 = load i8, ptr %t139, !tbaa !32
  %t142 = icmp ne i8 %t140, 126
  store i1 %t142, ptr %l62, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb24
bb24:
  %t144 = load i1, ptr %l62, !tbaa !21
  br i1 %t144, label %bb25, label %bb26
bb25:
  %t145 = load ptr, ptr %l1, !tbaa !29
  %t147 = getelementptr %"compiler/generic:cursor", ptr %t145, i32 0, i32 0
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  store { i64, ptr } %t148, ptr %l72, !tbaa !27
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t151 = getelementptr %"compiler/generic:cursor", ptr %t149, i32 0, i32 1
  %t152 = load i64, ptr %t151, !tbaa !24
  %t154 = add i64 %t152, 1
  %t156 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr i8, ptr %t157, i64 %t154
  %t159 = load i8, ptr %t158, !tbaa !32
  %t161 = icmp ne i8 %t159, 33
  store i1 %t161, ptr %l70, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb27
bb27:
  %t163 = load i1, ptr %l70, !tbaa !21
  br i1 %t163, label %bb28, label %bb29
bb28:
  %t164 = load ptr, ptr %l1, !tbaa !29
  store ptr %t164, ptr %l78, !tbaa !29
  %t165 = load ptr, ptr %l78, !tbaa !29
  %t166 = getelementptr %"compiler/generic:cursor", ptr %t165, i32 0, i32 1
  %t167 = load i64, ptr %t166, !tbaa !24
  %t169 = add i64 %t167, 1
  %t171 = load ptr, ptr %l78, !tbaa !29
  %t172 = getelementptr %"compiler/generic:cursor", ptr %t171, i32 0, i32 1
  store i64 %t169, ptr %t172, !tbaa !24
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t177 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonType(ptr %v0, ptr %v1, ptr %t173, ptr %t174)
  %t178 = extractvalue { i32, i32 } %t177, 1
  %t179 = extractvalue { i32, i32 } %t177, 0
  store i32 %t179, ptr %l85
  %t180 = icmp ne i32 %t179, 0
  br i1 %t180, label %bb31, label %ok.181, !prof !99
ok.181:
  store i32 %t178, ptr %l84
  br label %bb30
bb29:
  br label %bb33
bb30:
  %t182 = load i32, ptr %l84, !tbaa !23
  store i32 %t182, ptr %l81, !tbaa !23
  br label %bb32
bb31:
  %t183 = load i32, ptr %l85, !tbaa !23
  %t184 = lshr i32 %t183, 16
  %t185 = and i32 %t183, 65535
  %t186 = icmp eq i32 %t184, 1
  %t187 = select i1 %t186, i32 1, i32 0
  %t188 = icmp eq i32 %t184, 2
  %t189 = select i1 %t188, i32 2, i32 %t187
  %t190 = icmp eq i32 %t183, 0
  %t191 = shl i32 %t189, 16
  %t192 = or i32 %t191, %t185
  %t193 = select i1 %t190, i32 0, i32 %t192
  call void @__olang_scope_close(ptr %s0)
  %t195 = insertvalue { i32, i32 } zeroinitializer, i32 %t193, 0
  store { i32, i32 } %t195, ptr %rv
  br label %ret
bb32:
  %t196 = load i32, ptr %l81, !tbaa !23
  store i32 %t196, ptr %l5, !tbaa !23
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t197 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t197, ptr %l87
  br label %bb35
bb35:
  %t198 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t198, ptr %l8
  %t199 = load ptr, ptr %l1, !tbaa !29
  %t201 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s0, ptr %t199, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t201, ptr %l89
  br label %bb36
bb36:
  %t202 = load i1, ptr %l89, !tbaa !21
  br i1 %t202, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s4
  %t203 = load ptr, ptr %l1, !tbaa !29
  %t205 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s4, ptr %t203, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t205, ptr %l91
  br label %bb39
bb38:
  br label %bb60
bb39:
  %t206 = load i1, ptr %l91, !tbaa !21
  br i1 %t206, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  %t207 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l8, i32 %t207)
  br label %bb58
bb42:
  store %olang.scope zeroinitializer, ptr %s6
  %t210 = load ptr, ptr %l1, !tbaa !29
  %t212 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s6, ptr %t210, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t212, ptr %l93
  br label %bb43
bb43:
  %t213 = load i1, ptr %l93, !tbaa !21
  br i1 %t213, label %bb44, label %bb45
bb44:
  %t214 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l8, i32 %t214)
  br label %bb46
bb45:
  store ptr %l8, ptr %l96, !tbaa !29
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t221 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonInner(ptr %v0, ptr %v1, ptr %t217, ptr %t218)
  %t222 = extractvalue { i32, i32 } %t221, 1
  %t223 = extractvalue { i32, i32 } %t221, 0
  store i32 %t223, ptr %l101
  %t224 = icmp ne i32 %t223, 0
  br i1 %t224, label %bb48, label %ok.225, !prof !99
ok.225:
  store i32 %t222, ptr %l100
  br label %bb47
bb46:
  br label %bb51
bb47:
  %t226 = load i32, ptr %l100, !tbaa !23
  store i32 %t226, ptr %l97, !tbaa !23
  br label %bb49
bb48:
  %t227 = load i32, ptr %l101, !tbaa !23
  %t228 = lshr i32 %t227, 16
  %t229 = and i32 %t227, 65535
  %t230 = icmp eq i32 %t228, 1
  %t231 = select i1 %t230, i32 1, i32 0
  %t232 = icmp eq i32 %t228, 2
  %t233 = select i1 %t232, i32 2, i32 %t231
  %t234 = icmp eq i32 %t227, 0
  %t235 = shl i32 %t233, 16
  %t236 = or i32 %t235, %t229
  %t237 = select i1 %t234, i32 0, i32 %t236
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t239 = insertvalue { i32, i32 } zeroinitializer, i32 %t237, 0
  store { i32, i32 } %t239, ptr %rv
  br label %ret
bb49:
  %t240 = load ptr, ptr %l96, !tbaa !29
  %t241 = load i32, ptr %l97, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t240, i32 %t241)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t242 = load ptr, ptr %l1, !tbaa !29
  %t244 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s6, ptr %t242, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t244, ptr %l104
  br label %bb52
bb52:
  %t245 = load i1, ptr %l104, !tbaa !21
  %t246 = xor i1 %t245, true
  br i1 %t246, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s6)
  br label %bb57
bb54:
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s6)
  br label %bb56
bb56:
  br label %bb42
bb57:
  br label %bb59
bb58:
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s4)
  br label %bb60
bb60:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load ptr, ptr %l1, !tbaa !29
  %t252 = call { i32, i64 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonPromises(ptr %v0, ptr %v1, ptr %t248, ptr %t249)
  %t253 = extractvalue { i32, i64 } %t252, 1
  %t254 = extractvalue { i32, i64 } %t252, 0
  store i32 %t254, ptr %l112
  %t255 = icmp ne i32 %t254, 0
  br i1 %t255, label %bb62, label %ok.256, !prof !99
ok.256:
  store i64 %t253, ptr %l111
  br label %bb61
bb61:
  %t257 = load i64, ptr %l111, !tbaa !24
  store i64 %t257, ptr %l108, !tbaa !24
  br label %bb63
bb62:
  %t258 = load i32, ptr %l112, !tbaa !23
  %t259 = lshr i32 %t258, 16
  %t260 = and i32 %t258, 65535
  %t261 = icmp eq i32 %t259, 1
  %t262 = select i1 %t261, i32 1, i32 0
  %t263 = icmp eq i32 %t258, 0
  %t264 = shl i32 %t262, 16
  %t265 = or i32 %t264, %t260
  %t266 = select i1 %t263, i32 0, i32 %t265
  call void @__olang_scope_close(ptr %s0)
  %t268 = insertvalue { i32, i32 } zeroinitializer, i32 %t266, 0
  store { i32, i32 } %t268, ptr %rv
  br label %ret
bb63:
  %t269 = load i64, ptr %l108, !tbaa !24
  store i64 %t269, ptr %l9, !tbaa !24
  store i32 0, ptr %l10, !tbaa !23
  %t270 = load ptr, ptr %l1, !tbaa !29
  %t272 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s0, ptr %t270, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t272, ptr %l115
  br label %bb64
bb64:
  %t273 = load i1, ptr %l115, !tbaa !21
  br i1 %t273, label %bb65, label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s11
  %t274 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t274, ptr %l116
  br label %bb67
bb66:
  br label %bb111
bb67:
  %t275 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l116
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t275, ptr %l11
  br label %bb68
bb68:
  store %olang.scope zeroinitializer, ptr %s12
  store ptr %l11, ptr %l117, !tbaa !29
  %t276 = load ptr, ptr %l1, !tbaa !29
  %t278 = call { i32, i64 } @compiler_2fgeneric_2ecanonNumber(ptr %v1, ptr %t276)
  %t279 = extractvalue { i32, i64 } %t278, 1
  %t280 = extractvalue { i32, i64 } %t278, 0
  store i32 %t280, ptr %l121
  %t281 = icmp ne i32 %t280, 0
  br i1 %t281, label %bb70, label %ok.282, !prof !99
ok.282:
  store i64 %t279, ptr %l120
  br label %bb69
bb69:
  %t283 = load i64, ptr %l120, !tbaa !24
  store i64 %t283, ptr %l118, !tbaa !24
  br label %bb71
bb70:
  %t284 = load i32, ptr %l121, !tbaa !23
  %t285 = lshr i32 %t284, 16
  %t286 = and i32 %t284, 65535
  %t287 = icmp eq i32 %t285, 1
  %t288 = select i1 %t287, i32 1, i32 0
  %t289 = icmp eq i32 %t284, 0
  %t290 = shl i32 %t288, 16
  %t291 = or i32 %t290, %t286
  %t292 = select i1 %t289, i32 0, i32 %t291
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t294 = insertvalue { i32, i32 } zeroinitializer, i32 %t292, 0
  store { i32, i32 } %t294, ptr %rv
  br label %ret
bb71:
  %t295 = load ptr, ptr %l117, !tbaa !29
  %t296 = load i64, ptr %l118, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s11, ptr %t295, i64 %t296)
  br label %bb72
bb72:
  %t297 = load ptr, ptr %l1, !tbaa !29
  %t299 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s12, ptr %t297, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t299, ptr %l124
  br label %bb73
bb73:
  %t300 = load i1, ptr %l124, !tbaa !21
  br i1 %t300, label %bb74, label %bb75
bb74:
  call void @__olang_scope_close(ptr %s12)
  br label %bb82
bb75:
  br label %bb76
bb76:
  %t301 = load ptr, ptr %l1, !tbaa !29
  %t303 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s12, ptr %t301, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t303, ptr %l126
  br label %bb77
bb77:
  %t304 = load i1, ptr %l126, !tbaa !21
  %t305 = xor i1 %t304, true
  br i1 %t305, label %bb78, label %bb79
bb78:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t308 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t308, ptr %rv
  br label %ret
bb79:
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s12)
  br label %bb81
bb81:
  br label %bb68
bb82:
  %t310 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s11, ptr %l11)
  store i64 %t310, ptr %l130
  br label %bb83
bb83:
  %t311 = load i64, ptr %l130, !tbaa !24
  %t312 = icmp slt i64 %t311, 2
  br i1 %t312, label %bb84, label %bb85
bb84:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb87
bb85:
  %t315 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s11, ptr %l11, i64 1)
  store i64 %t315, ptr %l134
  br label %bb86
bb86:
  %t316 = load i64, ptr %l134, !tbaa !24
  %t317 = icmp slt i64 %t316, 0
  store i1 %t317, ptr %l132, !tbaa !21
  br label %bb87
bb87:
  %t319 = load i1, ptr %l132, !tbaa !21
  br i1 %t319, label %bb88, label %bb89
bb88:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb92
bb89:
  %t321 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s11, ptr %l11)
  store i64 %t321, ptr %l138
  br label %bb90
bb90:
  %t323 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s11, ptr %l11, i64 1)
  store i64 %t323, ptr %l140
  br label %bb91
bb91:
  %t324 = load i64, ptr %l140, !tbaa !24
  %t325 = add i64 2, %t324
  %t326 = load i64, ptr %l138, !tbaa !24
  %t328 = icmp slt i64 %t326, %t325
  store i1 %t328, ptr %l136, !tbaa !21
  br label %bb92
bb92:
  %t330 = load i1, ptr %l136, !tbaa !21
  br i1 %t330, label %bb93, label %bb94
bb93:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t332 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t332, ptr %rv
  br label %ret
bb94:
  br label %bb95
bb95:
  %t334 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s11, ptr %l11, i64 1)
  store i64 %t334, ptr %l145
  br label %bb96
bb96:
  %t335 = load i64, ptr %l145, !tbaa !24
  store i64 %t335, ptr %l12, !tbaa !24
  %t337 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s11, ptr %s11, ptr %l11)
  store { i64, ptr } %t337, ptr %l147
  br label %bb97
bb97:
  %t338 = load { i64, ptr }, ptr %l147, !tbaa !27
  store { i64, ptr } %t338, ptr %l13, !tbaa !27
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/generic:Program", ptr %t339, i32 0, i32 2
  store ptr %t341, ptr %l149, !tbaa !29
  %t342 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t342, ptr %l150, !tbaa !27
  %t343 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !27
  %t345 = getelementptr i64, ptr %t344, i64 0
  %t346 = load i64, ptr %t345, !tbaa !34
  store i64 %t346, ptr %l151, !tbaa !24
  %t347 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t347, ptr %l152, !tbaa !27
  %t348 = load i64, ptr %l12, !tbaa !24
  %t350 = add i64 2, %t348
  store i64 %t350, ptr %l154, !tbaa !24
  %t351 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t352 = extractvalue { i64, ptr } %t351, 0
  store i64 %t352, ptr %l155, !tbaa !24
  %t353 = icmp sge i64 2, 0
  br i1 %t353, label %bb98, label %bb99
bb98:
  %t355 = load i64, ptr %l154, !tbaa !24
  %t356 = icmp sle i64 2, %t355
  br i1 %t356, label %bb100, label %bb101
bb99:
  call void @__olang_check_failed(ptr @olang_loc_9b5666a46f6f24aa_75ae4afb6f2a0cc6)
  unreachable
bb100:
  %t358 = load i64, ptr %l154, !tbaa !24
  %t359 = load i64, ptr %l155, !tbaa !24
  %t360 = icmp sle i64 %t358, %t359
  br i1 %t360, label %bb102, label %bb103
bb101:
  call void @__olang_check_failed(ptr @olang_loc_9b5666a46f6f24aa_75ae4afb6f2a0cc6)
  unreachable
bb102:
  %t362 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !27
  %t364 = load i64, ptr %l154, !tbaa !24
  %t365 = getelementptr i64, ptr %t363, i64 2
  %t366 = sub i64 %t364, 2
  %t367 = insertvalue { i64, ptr } undef, i64 %t366, 0
  %t368 = insertvalue { i64, ptr } %t367, ptr %t365, 1
  store { i64, ptr } %t368, ptr %l159, !tbaa !27
  %t369 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t369, ptr %l160, !tbaa !27
  %t370 = load i64, ptr %l12, !tbaa !24
  %t372 = add i64 2, %t370
  store i64 %t372, ptr %l162, !tbaa !24
  %t373 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t376 = extractvalue { i64, ptr } %t373, 0
  store i64 %t376, ptr %l165, !tbaa !24
  %t377 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t378 = extractvalue { i64, ptr } %t377, 0
  store i64 %t378, ptr %l166, !tbaa !24
  %t379 = load i64, ptr %l162, !tbaa !24
  %t380 = icmp sge i64 %t379, 0
  br i1 %t380, label %bb104, label %bb105
bb103:
  call void @__olang_check_failed(ptr @olang_loc_9b5666a46f6f24aa_75ae4afb6f2a0cc6)
  unreachable
bb104:
  %t382 = load i64, ptr %l162, !tbaa !24
  %t383 = load i64, ptr %l165, !tbaa !24
  %t384 = icmp sle i64 %t382, %t383
  br i1 %t384, label %bb106, label %bb107
bb105:
  call void @__olang_check_failed(ptr @olang_loc_9b5666a46f6f24aa_75ae4afb6f2a0cc6)
  unreachable
bb106:
  %t386 = load i64, ptr %l165, !tbaa !24
  %t387 = load i64, ptr %l166, !tbaa !24
  %t388 = icmp sle i64 %t386, %t387
  br i1 %t388, label %bb108, label %bb109
bb107:
  call void @__olang_check_failed(ptr @olang_loc_9b5666a46f6f24aa_75ae4afb6f2a0cc6)
  unreachable
bb108:
  %t390 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t391 = load ptr, ptr %t390, !tbaa !27
  %t392 = load i64, ptr %l162, !tbaa !24
  %t393 = load i64, ptr %l165, !tbaa !24
  %t394 = getelementptr i64, ptr %t391, i64 %t392
  %t395 = sub i64 %t393, %t392
  %t396 = insertvalue { i64, ptr } undef, i64 %t395, 0
  %t397 = insertvalue { i64, ptr } %t396, ptr %t394, 1
  %t398 = load ptr, ptr %l149, !tbaa !29
  %t399 = load i64, ptr %l151, !tbaa !24
  %t400 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t402 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %s11, ptr %s11, ptr %t398, i64 %t399, { i64, ptr } %t400, { i64, ptr } %t397)
  store i32 %t402, ptr %l171
  br label %bb110
bb109:
  call void @__olang_check_failed(ptr @olang_loc_9b5666a46f6f24aa_75ae4afb6f2a0cc6)
  unreachable
bb110:
  %t403 = load i32, ptr %l171, !tbaa !23
  store i32 %t403, ptr %l10, !tbaa !23
  call void @__olang_scope_close(ptr %s11)
  br label %bb111
bb111:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t406 = getelementptr %"compiler/generic:Program", ptr %t404, i32 0, i32 2
  store ptr %t406, ptr %l173, !tbaa !29
  %t407 = load i32, ptr %l4, !tbaa !23
  store i32 %t407, ptr %l174, !tbaa !23
  %t408 = load i32, ptr %l5, !tbaa !23
  store i32 %t408, ptr %l175, !tbaa !23
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/generic:Program", ptr %t409, i32 0, i32 2
  store ptr %t411, ptr %l177, !tbaa !29
  %t413 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l8)
  store { i64, ptr } %t413, ptr %l179
  br label %bb112
bb112:
  %t414 = load ptr, ptr %l177, !tbaa !29
  %t415 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t416 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t414, { i64, ptr } %t415)
  store i32 %t416, ptr %l180
  br label %bb113
bb113:
  %t417 = load i32, ptr %l10, !tbaa !23
  %t420 = load i64, ptr %l9, !tbaa !24
  %t421 = load ptr, ptr %l173, !tbaa !29
  %t422 = load i32, ptr %l174, !tbaa !23
  %t423 = load i32, ptr %l175, !tbaa !23
  %t424 = load i32, ptr %l180, !tbaa !23
  %t429 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t421, i32 %t422, i32 %t423, i32 %t424, i32 %t417, i64 0, i1 %a2, i32 %a3, i64 %t420)
  store i32 %t429, ptr %l185
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s0)
  %t430 = load i32, ptr %l185, !tbaa !23
  %t431 = insertvalue { i32, i32 } zeroinitializer, i32 %t430, 1
  store { i32, i32 } %t431, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrsArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca { i64, ptr }
  %l29 = alloca i1
  %l36 = alloca ptr
  %l38 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l41 = alloca i32
  %l42 = alloca i32
  %l44 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb18
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l15
  br label %bb6
bb6:
  %t17 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l4
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  store i64 %t22, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = load i64, ptr %l7, !tbaa !24
  %t28 = icmp slt i64 %t24, %t25
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  br label %bb10
bb10:
  %t32 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t32, ptr %l23, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr ptr, ptr %t36, i64 %t33
  %t38 = load ptr, ptr %t37, !tbaa !39
  store ptr %t38, ptr %l8, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t42 = load ptr, ptr %l8, !tbaa !29
  %t46 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorItemKnown(ptr %v0, ptr %v1, ptr %v2, ptr %t40, ptr %t41, ptr %t42)
  store i1 %t46, ptr %l29
  br label %bb11
bb11:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t49 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetEntries(ptr %v0, ptr %v1, ptr %v2, ptr %s1, ptr %t47, ptr %t48, ptr %t49, ptr %l4)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l6, !tbaa !24
  br label %bb7
bb14:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l36, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  store ptr %t61, ptr %l38, !tbaa !29
  %t63 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s1, ptr %s1, ptr %l4)
  store { i64, ptr } %t63, ptr %l40
  br label %bb15
bb15:
  %t64 = load ptr, ptr %l38, !tbaa !29
  %t65 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s1, ptr %t64, { i64, ptr } %t65)
  store i32 %t66, ptr %l41
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l36, !tbaa !29
  %t68 = load i32, ptr %l41, !tbaa !23
  %t69 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t69, ptr %l42
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  %t70 = load i32, ptr %l42, !tbaa !23
  store i32 %t70, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t71, i32 0)
  store i32 %t73, ptr %l44
  br label %bb22
bb22:
  %t74 = load i32, ptr %l44, !tbaa !23
  store i32 %t74, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_24f0f81fc570bea6_c6e464f22cc6b362)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrsHaveVar(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l10 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l23 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t7 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t3, i32 %a1)
  store { i64, ptr } %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t21, ptr %l17, !tbaa !27
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i32, ptr %t25, i64 %t22
  %t27 = load i32, ptr %t26, !tbaa !33
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t35 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisVar(ptr %v0, ptr %v1, ptr %t29, i32 %t27, ptr %a2)
  store i1 %t35, ptr %l23
  br label %bb6
bb6:
  %t36 = load i1, ptr %l23, !tbaa !21
  br i1 %t36, label %bb7, label %bb8
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l4, !tbaa !24
  br label %bb2
bb11:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efoldGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/generic:Context"
  %l13 = alloca %"compiler/generic:folded"
  %l14 = alloca i32
  %l18 = alloca ptr
  %l21 = alloca %"compiler/generic:folded"
  %l27 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i32
  %l33 = alloca %"compiler/generic:folded"
  %l40 = alloca i64
  %l43 = alloca i64
  %l62 = alloca { i64, ptr }
  %l75 = alloca %"compiler/generic:folded"
  %l80 = alloca %"compiler/generic:Context"
  %l84 = alloca { i64, ptr }
  %l87 = alloca %"compiler/generic:folded"
  %l94 = alloca i1
  %l103 = alloca i32
  %l106 = alloca i1
  %l107 = alloca %"compiler/generic:folded"
  %l108 = alloca i64
  %l112 = alloca i64
  %l114 = alloca %"compiler/generic:folded"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/generic:folded"
  %t134 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load i32, ptr %l2, !tbaa !23
  %t7 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalDecl(ptr %v0, ptr %v0, ptr %t1, i64 %t2, i32 %t3)
  store ptr %t7, ptr %l18
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l18, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t13, ptr %l21
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t14 = load %"compiler/generic:folded", ptr %l21
  store %"compiler/generic:folded" %t14, ptr %rv
  br label %ret
bb5:
  %t15 = load i64, ptr %l1, !tbaa !24
  %t17 = shl i64 %t15, 32
  %t18 = load i32, ptr %l2, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t23 = or i64 %t17, %t20
  store i64 %t23, ptr %l4, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 49
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t27, i64 %t28)
  %t32 = extractvalue { i32, i1 } %t31, 1
  %t33 = extractvalue { i32, i1 } %t31, 0
  store i32 %t33, ptr %l32
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb7, label %ok.35, !prof !99
ok.35:
  store i1 %t32, ptr %l31
  br label %bb6
bb6:
  %t36 = load i1, ptr %l31, !tbaa !21
  store i1 %t36, ptr %l27, !tbaa !21
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l27, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t38 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t38, ptr %l33
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t39 = load %"compiler/generic:folded", ptr %l33
  store %"compiler/generic:folded" %t39, ptr %rv
  br label %ret
bb13:
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = getelementptr %"compiler/ast:VarDecl", ptr %t40, i32 0, i32 0
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = icmp sgt i64 %t47, %t48
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l8, !tbaa !24
  %t55 = icmp sgt i64 %t53, 0
  br i1 %t55, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb19
bb16:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = sub i64 %t57, %t58
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = add i64 %t61, %t62
  %t67 = sub i64 %t65, 1
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = sdiv i64 %t67, %t68
  store i64 %t71, ptr %l43, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb18
bb18:
  %t73 = load i64, ptr %l43, !tbaa !24
  store i64 %t73, ptr %l40, !tbaa !24
  br label %bb19
bb19:
  %t74 = load i64, ptr %l40, !tbaa !24
  store i64 %t74, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb20
bb20:
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb21, label %bb22
bb21:
  br label %bb28
bb22:
  br label %bb23
bb23:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l10, !tbaa !24
  %t85 = load i64, ptr %l8, !tbaa !24
  %t88 = mul i64 %t84, %t85
  %t91 = add i64 %t83, %t88
  store i64 %t91, ptr %l11, !tbaa !24
  %t93 = load ptr, ptr %l3, !tbaa !29
  %t95 = getelementptr %"compiler/ast:VarDecl", ptr %t93, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  store { i64, ptr } %t96, ptr %l62, !tbaa !27
  %t97 = load i64, ptr %l11, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i32, ptr %t100, i64 %t97
  %t102 = load i32, ptr %t101, !tbaa !33
  %t103 = load i32, ptr %l2, !tbaa !23
  %t106 = icmp eq i32 %t102, %t103
  br i1 %t106, label %bb24, label %bb25
bb24:
  %t108 = load i64, ptr %l11, !tbaa !24
  store i64 %t108, ptr %l5, !tbaa !24
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t110 = load i64, ptr %l10, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l10, !tbaa !24
  br label %bb20
bb28:
  %t114 = load i64, ptr %l5, !tbaa !24
  %t115 = load ptr, ptr %l3, !tbaa !29
  %t117 = getelementptr %"compiler/ast:VarDecl", ptr %t115, i32 0, i32 3
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t118, 0
  %t123 = icmp sge i64 %t114, %t120
  br i1 %t123, label %bb29, label %bb30
bb29:
  %t125 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t125, ptr %l75
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t126 = load %"compiler/generic:folded", ptr %l75
  store %"compiler/generic:folded" %t126, ptr %rv
  br label %ret
bb32:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 49
  %t130 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t129, i64 %t130, i1 true)
  br label %bb33
bb33:
  %t133 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t134, ptr %s0, i64 %t133, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l80, ptr %t134, i64 160, i1 false)
  br label %bb34
bb34:
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %l80, i64 160, i1 false)
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load ptr, ptr %l3, !tbaa !29
  %t139 = getelementptr %"compiler/ast:VarDecl", ptr %t137, i32 0, i32 3
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  store { i64, ptr } %t140, ptr %l84, !tbaa !27
  %t141 = load i64, ptr %l5, !tbaa !24
  %t143 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr ptr, ptr %t144, i64 %t141
  %t146 = load ptr, ptr %t145, !tbaa !39
  %t150 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %s0, ptr %v0, ptr %t136, ptr %l12, ptr %t146)
  store %"compiler/generic:folded" %t150, ptr %l87
  br label %bb35
bb35:
  %t151 = load %"compiler/generic:folded", ptr %l87
  store %"compiler/generic:folded" %t151, ptr %l13
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 49
  %t155 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t154, i64 %t155, i1 false)
  br label %bb36
bb36:
  %t158 = getelementptr %"compiler/generic:folded", ptr %l13, i32 0, i32 0
  %t159 = load i64, ptr %t158, !tbaa !24
  %t160 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t163 = icmp ne i64 %t159, %t160
  br i1 %t163, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb39
bb38:
  %t165 = load ptr, ptr %l3, !tbaa !29
  %t167 = getelementptr %"compiler/ast:VarDecl", ptr %t165, i32 0, i32 2
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = icmp eq ptr %t168, null
  store i1 %t170, ptr %l94, !tbaa !21
  br label %bb39
bb39:
  %t172 = load i1, ptr %l94, !tbaa !21
  br i1 %t172, label %bb40, label %bb41
bb40:
  %t173 = load %"compiler/generic:folded", ptr %l13
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:folded" %t173, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l3, !tbaa !29
  %t178 = getelementptr %"compiler/ast:VarDecl", ptr %t176, i32 0, i32 2
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t183 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v0, ptr %t175, ptr %l12, ptr %t179)
  store i32 %t183, ptr %l103
  br label %bb43
bb43:
  %t184 = load i32, ptr %l103, !tbaa !23
  store i32 %t184, ptr %l14, !tbaa !23
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i32, ptr %l14, !tbaa !23
  %t189 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewide(ptr %v0, ptr %t185, i32 %t186)
  store i1 %t189, ptr %l106
  br label %bb44
bb44:
  %t190 = load i1, ptr %l106, !tbaa !21
  br i1 %t190, label %bb45, label %bb46
bb45:
  %t191 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t191, ptr %l107
  br label %bb47
bb46:
  br label %bb48
bb47:
  call void @__olang_scope_close(ptr %s0)
  %t192 = load %"compiler/generic:folded", ptr %l107
  store %"compiler/generic:folded" %t192, ptr %rv
  br label %ret
bb48:
  %t193 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t193, ptr %l108, !tbaa !24
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/generic:folded", ptr %l13, i32 0, i32 1
  %t196 = load i64, ptr %t195, !tbaa !24
  %t197 = load i32, ptr %l14, !tbaa !23
  %t201 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t194, i64 %t196, i32 %t197)
  store i64 %t201, ptr %l112
  br label %bb49
bb49:
  %t202 = load i32, ptr %l14, !tbaa !23
  %t203 = load i64, ptr %l108, !tbaa !24
  %t204 = load i64, ptr %l112, !tbaa !24
  %t206 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s0, i64 %t203, i64 %t204, i32 %t202)
  store %"compiler/generic:folded" %t206, ptr %l114
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s0)
  %t207 = load %"compiler/generic:folded", ptr %l114
  store %"compiler/generic:folded" %t207, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:folded", ptr %rv
  ret %"compiler/generic:folded" %rr
}

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efoldPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca %"compiler/names:Ref"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i32
  %l19 = alloca { i64, ptr }
  %l21 = alloca i32
  %l22 = alloca i32
  %l28 = alloca i32
  %l31 = alloca i64
  %l35 = alloca i64
  %l39 = alloca i32
  %l40 = alloca %"compiler/generic:folded"
  %l43 = alloca %"compiler/generic:folded"
  %l50 = alloca ptr
  %l54 = alloca i64
  %l56 = alloca %"compiler/names:Ref"
  %l60 = alloca %"compiler/generic:folded"
  %l68 = alloca i64
  %l71 = alloca i64
  %l91 = alloca { i64, ptr }
  %l94 = alloca i64
  %l97 = alloca %"compiler/generic:folded"
  %l102 = alloca { i64, ptr }
  %l107 = alloca %"compiler/generic:folded"
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/generic:folded"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Context", ptr %t7, i32 0, i32 2
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t10, ptr %l19, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr i32, ptr %t12, i64 0
  %t14 = load i32, ptr %t13, !tbaa !33
  %t17 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v1, ptr %t9, i32 %t14)
  %t18 = extractvalue { i32, i32 } %t17, 1
  %t19 = extractvalue { i32, i32 } %t17, 0
  store i32 %t19, ptr %l22
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb4, label %ok.21, !prof !99
ok.21:
  store i32 %t18, ptr %l21
  br label %bb3
bb2:
  br label %bb18
bb3:
  %t22 = load i32, ptr %l21, !tbaa !23
  store i32 %t22, ptr %l16, !tbaa !23
  br label %bb6
bb4:
  br label %bb5
bb5:
  store i32 -1, ptr %l16, !tbaa !23
  br label %bb6
bb6:
  %t23 = load i32, ptr %l16, !tbaa !23
  store i32 %t23, ptr %l4, !tbaa !23
  %t24 = load i32, ptr %l4, !tbaa !23
  %t26 = icmp sge i32 %t24, 0
  br i1 %t26, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %l4, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l28
  br label %bb9
bb8:
  br label %bb17
bb9:
  %t35 = load i32, ptr %l28, !range !{i32 0, i32 33}
  %t37 = trunc i64 26 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t40 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t40, ptr %l31, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %l4, !tbaa !23
  %t47 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t43, i32 %t44)
  store i64 %t47, ptr %l35
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %l4, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l39
  br label %bb13
bb13:
  %t55 = load i64, ptr %l31, !tbaa !24
  %t56 = load i64, ptr %l35, !tbaa !24
  %t57 = load i32, ptr %l39, !tbaa !23
  %t58 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s3, i64 %t55, i64 %t56, i32 %t57)
  store %"compiler/generic:folded" %t58, ptr %l40
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  %t59 = load %"compiler/generic:folded", ptr %l40
  store %"compiler/generic:folded" %t59, ptr %rv
  br label %ret
bb15:
  %t60 = load i64, ptr @G_2ecompiler_2fgeneric_2ePending, !tbaa !24
  %t61 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t64 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s2, i64 %t60, i64 0, i32 %t61)
  store %"compiler/generic:folded" %t64, ptr %l43
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  %t65 = load %"compiler/generic:folded", ptr %l43
  store %"compiler/generic:folded" %t65, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Context", ptr %t66, i32 0, i32 0
  %t69 = load i64, ptr %t68, !tbaa !24
  store i64 %t69, ptr %l5, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t75 = icmp sgt i64 %t73, 1
  br i1 %t75, label %bb19, label %bb20
bb19:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  store ptr %t80, ptr %l50, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Context", ptr %t82, i32 0, i32 0
  %t85 = load i64, ptr %t84, !tbaa !24
  %t88 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t81, i64 %t85)
  store i64 %t88, ptr %l54
  br label %bb21
bb20:
  br label %bb44
bb21:
  %t89 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t90 = load i32, ptr %t89, !tbaa !23
  %t91 = load ptr, ptr %l50, !tbaa !29
  %t92 = load i64, ptr %l54, !tbaa !24
  %t94 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t91, i64 %t92, i32 %t90)
  store %"compiler/names:Ref" %t94, ptr %l56
  br label %bb22
bb22:
  %t95 = load %"compiler/names:Ref", ptr %l56
  store %"compiler/names:Ref" %t95, ptr %l6
  %t96 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t97 = load i32, ptr %t96, !range !{i32 0, i32 9}
  %t99 = trunc i64 5 to i32
  %t100 = icmp eq i32 %t97, %t99
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb23, label %bb24
bb23:
  %t104 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t104, ptr %l60
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t105 = load %"compiler/generic:folded", ptr %l60
  store %"compiler/generic:folded" %t105, ptr %rv
  br label %ret
bb26:
  %t106 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 1
  %t107 = load i64, ptr %t106, !tbaa !24
  store i64 %t107, ptr %l5, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t113 = sub i64 %t111, 1
  store i64 %t113, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t115 = load i64, ptr %l8, !tbaa !24
  %t116 = load i64, ptr %l7, !tbaa !24
  %t119 = icmp sgt i64 %t115, %t116
  br i1 %t119, label %bb27, label %bb28
bb27:
  %t121 = load i64, ptr %l9, !tbaa !24
  %t123 = icmp sgt i64 %t121, 0
  br i1 %t123, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb32
bb29:
  %t125 = load i64, ptr %l8, !tbaa !24
  %t126 = load i64, ptr %l7, !tbaa !24
  %t129 = sub i64 %t125, %t126
  %t130 = load i64, ptr %l9, !tbaa !24
  %t133 = add i64 %t129, %t130
  %t135 = sub i64 %t133, 1
  %t136 = load i64, ptr %l9, !tbaa !24
  %t139 = sdiv i64 %t135, %t136
  store i64 %t139, ptr %l71, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb31
bb31:
  %t141 = load i64, ptr %l71, !tbaa !24
  store i64 %t141, ptr %l68, !tbaa !24
  br label %bb32
bb32:
  %t142 = load i64, ptr %l68, !tbaa !24
  store i64 %t142, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb33
bb33:
  %t143 = load i64, ptr %l11, !tbaa !24
  %t144 = load i64, ptr %l10, !tbaa !24
  %t147 = icmp slt i64 %t143, %t144
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb34, label %bb35
bb34:
  br label %bb43
bb35:
  br label %bb36
bb36:
  %t151 = load i64, ptr %l7, !tbaa !24
  %t152 = load i64, ptr %l11, !tbaa !24
  %t153 = load i64, ptr %l9, !tbaa !24
  %t156 = mul i64 %t152, %t153
  %t159 = add i64 %t151, %t156
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i64, ptr %l5, !tbaa !24
  %t163 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t163, ptr %l91, !tbaa !27
  %t166 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i32, ptr %t167, i64 %t159
  %t169 = load i32, ptr %t168, !tbaa !33
  %t173 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ealiasStep(ptr %v0, ptr %t161, i64 %t162, i32 %t169)
  store i64 %t173, ptr %l94
  br label %bb37
bb37:
  %t174 = load i64, ptr %l94, !tbaa !24
  store i64 %t174, ptr %l5, !tbaa !24
  %t175 = load i64, ptr %l5, !tbaa !24
  %t177 = icmp slt i64 %t175, 0
  br i1 %t177, label %bb38, label %bb39
bb38:
  %t179 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t179, ptr %l97
  br label %bb40
bb39:
  br label %bb41
bb40:
  %t180 = load %"compiler/generic:folded", ptr %l97
  store %"compiler/generic:folded" %t180, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t181 = load i64, ptr %l11, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l11, !tbaa !24
  br label %bb33
bb43:
  br label %bb44
bb44:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i64, ptr %l5, !tbaa !24
  %t187 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t187, ptr %l102, !tbaa !27
  %t188 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t188, 0
  %t192 = sub i64 %t190, 1
  %t194 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr i32, ptr %t195, i64 %t192
  %t197 = load i32, ptr %t196, !tbaa !33
  %t201 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efoldGlobal(ptr %v0, ptr %t185, i64 %t186, i32 %t197)
  store %"compiler/generic:folded" %t201, ptr %l107
  br label %bb45
bb45:
  %t202 = load %"compiler/generic:folded", ptr %l107
  store %"compiler/generic:folded" %t202, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:folded", ptr %rv
  ret %"compiler/generic:folded" %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efuncType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l11 = alloca i32
  %l17 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca { i64, ptr }
  %l35 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l36 = alloca i1
  %l40 = alloca i1
  %l41 = alloca i32
  %l48 = alloca ptr
  %l49 = alloca ptr
  %l51 = alloca i64
  %l55 = alloca %"compiler/source:Span"
  %l56 = alloca { i64, [3 x i64] }
  %l57 = alloca %"compiler/diagmsg:Msg"
  %l58 = alloca i64
  %l60 = alloca ptr
  %l61 = alloca i32
  %l65 = alloca i32
  %l69 = alloca i32
  %l73 = alloca i32
  %l74 = alloca i32
  %l76 = alloca ptr
  %l77 = alloca i32
  %l82 = alloca i64
  %l83 = alloca i32
  %l85 = alloca ptr
  %l86 = alloca i32
  %l89 = alloca i64
  %l90 = alloca i32
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = load ptr, ptr %l3, !tbaa !29
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t2, ptr %t3, i32 %t4, i32 0)
  store i32 %t9, ptr %l11
  br label %bb1
bb1:
  %t10 = load i32, ptr %l11, !tbaa !23
  store i32 %t10, ptr %l4, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eflagBans(ptr %v0, ptr %v1, ptr %v2, ptr %t11, ptr %t12, ptr %t13, i32 %t14, i1 false)
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  store ptr %t21, ptr %l17, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l4, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l21
  br label %bb3
bb3:
  %t29 = load ptr, ptr %l17, !tbaa !29
  %t30 = load i32, ptr %l21, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t31, ptr %l22
  br label %bb4
bb4:
  %t32 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t32, ptr %l5, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t37 = icmp eq i64 %t35, 1
  br i1 %t37, label %bb5, label %bb6
bb5:
  %t39 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t39, ptr %l27, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr i32, ptr %t41, i64 0
  %t43 = load i32, ptr %t42, !tbaa !33
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t47 = icmp eq i32 %t43, %t44
  store i1 %t47, ptr %l26, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb7
bb7:
  %t49 = load i1, ptr %l26, !tbaa !21
  br i1 %t49, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Context", ptr %t50, i32 0, i32 0
  %t53 = load i64, ptr %t52, !tbaa !24
  %t54 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t55 = load i32, ptr %t54, !tbaa !23
  %t57 = sext i32 %t55 to i64
  %t60 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s1, i64 %t53, i64 %t57)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t60, ptr %l35
  br label %bb10
bb9:
  br label %bb27
bb10:
  %t61 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l35
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t61, ptr %l6
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 25
  %t65 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l6
  %t68 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %t64, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t65)
  %t69 = extractvalue { i32, i1 } %t68, 1
  %t70 = extractvalue { i32, i1 } %t68, 0
  store i32 %t70, ptr %l41
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb12, label %ok.72, !prof !99
ok.72:
  store i1 %t69, ptr %l40
  br label %bb11
bb11:
  %t73 = load i1, ptr %l40, !tbaa !21
  store i1 %t73, ptr %l36, !tbaa !21
  br label %bb14
bb12:
  br label %bb13
bb13:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb14
bb14:
  %t74 = load i1, ptr %l36, !tbaa !21
  %t75 = xor i1 %t74, true
  br i1 %t75, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 25
  %t80 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l6
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t79, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t80, i1 true)
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/load:Loader", ptr %t86, i32 0, i32 4
  %t89 = load ptr, ptr %t88, !tbaa !29
  store ptr %t89, ptr %l48, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l49, !tbaa !29
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Context", ptr %t91, i32 0, i32 0
  %t94 = load i64, ptr %t93, !tbaa !24
  store i64 %t94, ptr %l51, !tbaa !24
  %t95 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t96 = load i32, ptr %t95, !tbaa !23
  %t97 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t98 = load i32, ptr %t97, !tbaa !23
  %t100 = add i32 %t98, 2
  %t103 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 %t96, i32 %t100)
  store %"compiler/source:Span" %t103, ptr %l55
  br label %bb18
bb18:
  %t104 = load ptr, ptr %l49, !tbaa !29
  %t105 = load i64, ptr %l51, !tbaa !24
  %t106 = load %"compiler/source:Span", ptr %l55
  %t107 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t104, i64 %t105, %"compiler/source:Span" %t106)
  store { i64, [3 x i64] } %t107, ptr %l56
  br label %bb19
bb19:
  %t108 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeErrsUnwritten(ptr %v0)
  store %"compiler/diagmsg:Msg" %t108, ptr %l57
  br label %bb20
bb20:
  %t109 = load ptr, ptr %l48, !tbaa !29
  %t110 = load { i64, [3 x i64] }, ptr %l56
  %t111 = load %"compiler/diagmsg:Msg", ptr %l57
  %t112 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t109, { i64, [3 x i64] } %t110, %"compiler/diagmsg:Msg" %t111)
  store i64 %t112, ptr %l58
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  store ptr %t115, ptr %l60, !tbaa !29
  %t116 = load i32, ptr %l4, !tbaa !23
  store i32 %t116, ptr %l61, !tbaa !23
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/generic:Program", ptr %t117, i32 0, i32 2
  %t120 = load i32, ptr %l4, !tbaa !23
  %t123 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t119, i32 %t120)
  store i32 %t123, ptr %l65
  br label %bb23
bb23:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 2
  %t127 = load i32, ptr %l4, !tbaa !23
  %t130 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t126, i32 %t127)
  store i32 %t130, ptr %l69
  br label %bb24
bb24:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/generic:Program", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %l4, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l73
  br label %bb25
bb25:
  %t138 = load ptr, ptr %l60, !tbaa !29
  %t139 = load i32, ptr %l61, !tbaa !23
  %t140 = load i32, ptr %l65, !tbaa !23
  %t141 = load i32, ptr %l69, !tbaa !23
  %t142 = load i32, ptr %l73, !tbaa !23
  %t143 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %t138, i32 %t139, i32 %t140, i32 %t141, i32 0, i32 %t142, i64 0)
  store i32 %t143, ptr %l74
  br label %bb26
bb26:
  %t144 = load i32, ptr %l74, !tbaa !23
  store i32 %t144, ptr %l4, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb27
bb27:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 2
  store ptr %t147, ptr %l76, !tbaa !29
  %t148 = load i32, ptr %l4, !tbaa !23
  store i32 %t148, ptr %l77, !tbaa !23
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t151 = load ptr, ptr %l3, !tbaa !29
  %t152 = load i32, ptr %l4, !tbaa !23
  %t157 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromisesOf(ptr %v0, ptr %v1, ptr %v2, ptr %t149, ptr %t150, ptr %t151, i32 %t152)
  store i64 %t157, ptr %l82
  br label %bb28
bb28:
  %t158 = load ptr, ptr %l76, !tbaa !29
  %t159 = load i32, ptr %l77, !tbaa !23
  %t160 = load i64, ptr %l82, !tbaa !24
  %t161 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithPromises(ptr %v0, ptr %t158, i32 %t159, i64 %t160)
  store i32 %t161, ptr %l83
  br label %bb29
bb29:
  %t162 = load i32, ptr %l83, !tbaa !23
  store i32 %t162, ptr %l4, !tbaa !23
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/generic:Program", ptr %t163, i32 0, i32 2
  store ptr %t165, ptr %l85, !tbaa !29
  %t166 = load i32, ptr %l4, !tbaa !23
  store i32 %t166, ptr %l86, !tbaa !23
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l3, !tbaa !29
  %t171 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v2, ptr %t167, ptr %t168)
  store i64 %t171, ptr %l89
  br label %bb30
bb30:
  %t172 = load ptr, ptr %l85, !tbaa !29
  %t173 = load i32, ptr %l86, !tbaa !23
  %t174 = load i64, ptr %l89, !tbaa !24
  %t175 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %t172, i32 %t173, i64 %t174)
  store i32 %t175, ptr %l90
  br label %bb31
bb31:
  %t176 = load i32, ptr %l90, !tbaa !23
  store i32 %t176, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2egenericCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/names:Ref"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca %"compiler/names:Ref"
  %l18 = alloca ptr
  %l19 = alloca i1
  %l27 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca %"compiler/names:Ref"
  %l36 = alloca i1
  %l39 = alloca { i64, ptr }
  %l40 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l52 = alloca i32
  %l53 = alloca i32
  %l54 = alloca ptr
  %l55 = alloca i1
  %l61 = alloca ptr
  %l65 = alloca i64
  %l67 = alloca %"compiler/names:Ref"
  %l71 = alloca i1
  %l78 = alloca i32
  %l82 = alloca i64
  %l86 = alloca i64
  %l90 = alloca i64
  %l99 = alloca i64
  %l102 = alloca i64
  %l120 = alloca i64
  %l123 = alloca { i64, ptr }
  %l127 = alloca i32
  %l130 = alloca ptr
  %l131 = alloca ptr
  %l132 = alloca i32
  %l136 = alloca i32
  %l137 = alloca i32
  %l138 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s0, i32 0, i64 -1, i64 -1)
  store %"compiler/names:Ref" %t2, ptr %l17
  br label %bb1
bb1:
  %t3 = load %"compiler/names:Ref", ptr %l17
  store %"compiler/names:Ref" %t3, ptr %l4
  %t4 = load ptr, ptr %l2, !tbaa !29
  store ptr %t4, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t5 = load ptr, ptr %l18, !tbaa !29
  %t6 = icmp ne ptr %t5, null
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = load ptr, ptr %l18, !tbaa !29
  %t9 = load i64, ptr %t8, !range !{i64 0, i64 30}
  %t11 = icmp eq i64 %t9, 0
  store i1 %t11, ptr %l19, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l19, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr { i64, [4 x i64] }, ptr %t13, i32 0, i32 1
  %t16 = getelementptr { %"compiler/source:Span", i32 }, ptr %t15, i32 0, i32 0
  %t17 = load %"compiler/source:Span", ptr %t16
  store %"compiler/source:Span" %t17, ptr %l5
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32 }, ptr %t21, i32 0, i32 1
  %t23 = load i32, ptr %t22
  store i32 %t23, ptr %l6, !tbaa !23
  br label %bb6
bb5:
  br label %bb22
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  store ptr %t28, ptr %l27, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Context", ptr %t30, i32 0, i32 0
  %t33 = load i64, ptr %t32, !tbaa !24
  %t36 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t29, i64 %t33)
  store i64 %t36, ptr %l31
  br label %bb7
bb7:
  %t37 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t38 = load i32, ptr %t37, !tbaa !23
  %t39 = load ptr, ptr %l27, !tbaa !29
  %t40 = load i64, ptr %l31, !tbaa !24
  %t42 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t39, i64 %t40, i32 %t38)
  store %"compiler/names:Ref" %t42, ptr %l33
  br label %bb8
bb8:
  %t43 = load %"compiler/names:Ref", ptr %l33
  store %"compiler/names:Ref" %t43, ptr %l4
  %t44 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t45 = load i32, ptr %t44, !range !{i32 0, i32 9}
  %t47 = trunc i64 7 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb9, label %bb10
bb9:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l6, !tbaa !23
  %t54 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t50, i32 %t51)
  store { i64, ptr } %t54, ptr %l39
  br label %bb11
bb10:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb13
bb11:
  %t55 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t56 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t55, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t56, ptr %l40
  br label %bb12
bb12:
  %t57 = load i1, ptr %l40, !tbaa !21
  store i1 %t57, ptr %l36, !tbaa !21
  br label %bb13
bb13:
  %t58 = load i1, ptr %l36, !tbaa !21
  br i1 %t58, label %bb14, label %bb15
bb14:
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t63 = icmp ne i64 %t61, 1
  br i1 %t63, label %bb16, label %bb17
bb15:
  br label %bb21
bb16:
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t65, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l46, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t72, ptr %l49, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr ptr, ptr %t74, i64 0
  %t76 = load ptr, ptr %t75, !tbaa !39
  %t81 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v3, ptr %t70, ptr %t71, ptr %t76)
  store i32 %t81, ptr %l52
  br label %bb19
bb19:
  %t82 = load ptr, ptr %l46, !tbaa !29
  %t83 = load i32, ptr %l52, !tbaa !23
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t82, i32 %t83, i32 0)
  store i32 %t84, ptr %l53
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t85 = load i32, ptr %l53, !tbaa !23
  store i32 %t85, ptr %rv
  br label %ret
bb21:
  call void @__olang_scope_close(ptr %s1)
  br label %bb35
bb22:
  %t86 = load ptr, ptr %l2, !tbaa !29
  store ptr %t86, ptr %l54, !tbaa !29
  store i1 false, ptr %l55, !tbaa !21
  %t87 = load ptr, ptr %l54, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb23, label %bb24
bb23:
  %t90 = load ptr, ptr %l54, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 30}
  %t93 = icmp eq i64 %t91, 14
  store i1 %t93, ptr %l55, !tbaa !21
  br label %bb24
bb24:
  %t94 = load i1, ptr %l55, !tbaa !21
  br i1 %t94, label %bb25, label %bb26
bb25:
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t97, i32 0, i32 0
  %t99 = load %"compiler/source:Span", ptr %t98
  store %"compiler/source:Span" %t99, ptr %l7
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/generic:Program", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  store ptr %t104, ptr %l61, !tbaa !29
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Context", ptr %t106, i32 0, i32 0
  %t109 = load i64, ptr %t108, !tbaa !24
  %t112 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t105, i64 %t109)
  store i64 %t112, ptr %l65
  br label %bb28
bb28:
  %t113 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 1
  %t114 = load i32, ptr %t113, !tbaa !23
  %t115 = load ptr, ptr %l61, !tbaa !29
  %t116 = load i64, ptr %l65, !tbaa !24
  %t118 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t115, i64 %t116, i32 %t114)
  store %"compiler/names:Ref" %t118, ptr %l67
  br label %bb29
bb29:
  %t119 = load %"compiler/names:Ref", ptr %l67
  store %"compiler/names:Ref" %t119, ptr %l4
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_8c7d78b449474581_137735cf7503269d)
  unreachable
bb35:
  %t120 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t121 = load i32, ptr %t120, !range !{i32 0, i32 9}
  %t123 = trunc i64 4 to i32
  %t124 = icmp eq i32 %t121, %t123
  %t126 = xor i1 %t124, true
  br i1 %t126, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb38
bb37:
  %t128 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t129 = load i64, ptr %t128, !tbaa !24
  %t131 = icmp slt i64 %t129, 0
  store i1 %t131, ptr %l71, !tbaa !21
  br label %bb38
bb38:
  %t133 = load i1, ptr %l71, !tbaa !21
  br i1 %t133, label %bb39, label %bb40
bb39:
  %t134 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t134, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t138 = load i64, ptr %t137, !tbaa !24
  %t139 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t140 = load i64, ptr %t139, !tbaa !24
  %t144 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t136, i64 %t138, i64 %t140)
  store i32 %t144, ptr %l78
  br label %bb42
bb42:
  %t145 = load i32, ptr %l78, !tbaa !23
  store i32 %t145, ptr %l8, !tbaa !23
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %t146, i32 %t147)
  br label %bb43
bb43:
  %t150 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t150, 0
  store i64 %t152, ptr %l82, !tbaa !24
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  %t156 = load i32, ptr %l8, !tbaa !23
  %t159 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t155, i32 %t156)
  store i64 %t159, ptr %l86
  br label %bb44
bb44:
  %t160 = load i64, ptr %l82, !tbaa !24
  %t161 = load i64, ptr %l86, !tbaa !24
  %t162 = icmp ne i64 %t160, %t161
  br i1 %t162, label %bb45, label %bb46
bb45:
  %t164 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t164, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t166 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t166, 0
  store i64 %t168, ptr %l90, !tbaa !24
  %t169 = load i64, ptr %l90, !tbaa !24
  %t170 = icmp sge i64 %t169, 0
  br i1 %t170, label %bb48, label %bb49
bb48:
  %t172 = load i64, ptr %l90, !tbaa !24
  %t173 = icmp sle i64 %t172, 2305843009213693951
  br i1 %t173, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_bfcccee69af0f127_f3360b8adb85577b)
  unreachable
bb50:
  %t175 = load i64, ptr %l90, !tbaa !24
  %t176 = mul i64 %t175, 4
  %t177 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t176)
  %t178 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t177, 1
  store { i64, ptr } %t179, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t181 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t181, 0
  store i64 %t183, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t185 = load i64, ptr %l11, !tbaa !24
  %t186 = load i64, ptr %l10, !tbaa !24
  %t189 = icmp sgt i64 %t185, %t186
  br i1 %t189, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_bfcccee69af0f127_f3360b8adb85577b)
  unreachable
bb52:
  %t191 = load i64, ptr %l12, !tbaa !24
  %t193 = icmp sgt i64 %t191, 0
  br i1 %t193, label %bb54, label %bb55
bb53:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb57
bb54:
  %t195 = load i64, ptr %l11, !tbaa !24
  %t196 = load i64, ptr %l10, !tbaa !24
  %t199 = sub i64 %t195, %t196
  %t200 = load i64, ptr %l12, !tbaa !24
  %t203 = add i64 %t199, %t200
  %t205 = sub i64 %t203, 1
  %t206 = load i64, ptr %l12, !tbaa !24
  %t209 = sdiv i64 %t205, %t206
  store i64 %t209, ptr %l102, !tbaa !24
  br label %bb56
bb55:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb56
bb56:
  %t211 = load i64, ptr %l102, !tbaa !24
  store i64 %t211, ptr %l99, !tbaa !24
  br label %bb57
bb57:
  %t212 = load i64, ptr %l99, !tbaa !24
  store i64 %t212, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb58
bb58:
  %t213 = load i64, ptr %l14, !tbaa !24
  %t214 = load i64, ptr %l13, !tbaa !24
  %t217 = icmp slt i64 %t213, %t214
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb59, label %bb60
bb59:
  br label %bb64
bb60:
  br label %bb61
bb61:
  %t221 = load i64, ptr %l10, !tbaa !24
  %t222 = load i64, ptr %l14, !tbaa !24
  %t223 = load i64, ptr %l12, !tbaa !24
  %t226 = mul i64 %t222, %t223
  %t229 = add i64 %t221, %t226
  store i64 %t229, ptr %l15, !tbaa !24
  %t231 = load i64, ptr %l15, !tbaa !24
  store i64 %t231, ptr %l120, !tbaa !24
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load ptr, ptr %l1, !tbaa !29
  %t234 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t234, ptr %l123, !tbaa !27
  %t235 = load i64, ptr %l15, !tbaa !24
  %t237 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = getelementptr ptr, ptr %t238, i64 %t235
  %t240 = load ptr, ptr %t239, !tbaa !39
  %t245 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v3, ptr %t232, ptr %t233, ptr %t240)
  store i32 %t245, ptr %l127
  br label %bb62
bb62:
  %t246 = load i32, ptr %l127, !tbaa !23
  %t247 = load i64, ptr %l120, !tbaa !24
  %t248 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr i32, ptr %t249, i64 %t247
  store i32 %t246, ptr %t250, !tbaa !33
  br label %bb63
bb63:
  %t251 = load i64, ptr %l14, !tbaa !24
  %t253 = add i64 %t251, 1
  store i64 %t253, ptr %l14, !tbaa !24
  br label %bb58
bb64:
  %t255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t255, ptr %l130, !tbaa !29
  %t256 = load ptr, ptr %l0, !tbaa !29
  store ptr %t256, ptr %l131, !tbaa !29
  %t257 = load i32, ptr %l8, !tbaa !23
  store i32 %t257, ptr %l132, !tbaa !23
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"compiler/generic:Program", ptr %t258, i32 0, i32 2
  %t261 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t264 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t260, { i64, ptr } %t261)
  store i32 %t264, ptr %l136
  br label %bb65
bb65:
  %t265 = load ptr, ptr %l131, !tbaa !29
  %t266 = load i32, ptr %l132, !tbaa !23
  %t267 = load i32, ptr %l136, !tbaa !23
  %t268 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t265, i32 %t266, i32 %t267)
  store i32 %t268, ptr %l137
  br label %bb66
bb66:
  %t269 = load ptr, ptr %l130, !tbaa !29
  %t270 = load i32, ptr %l137, !tbaa !23
  %t271 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eheld(ptr %v0, ptr %t269, i32 %t270)
  store i32 %t271, ptr %l138
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s0)
  %t272 = load i32, ptr %l138, !tbaa !23
  store i32 %t272, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l19 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l37 = alloca i1
  %l48 = alloca i64
  %l51 = alloca i64
  %l70 = alloca { i64, ptr }
  %l75 = alloca i1
  %l77 = alloca i1
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l19
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l19, !tbaa !29
  %t13 = getelementptr %"compiler/load:Module", ptr %t11, i32 0, i32 8
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = icmp eq i64 %t18, 0
  br i1 %t20, label %bb2, label %bb3
bb2:
  store ptr null, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t23, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb6, label %bb7
bb6:
  br label %bb40
bb7:
  br label %bb8
bb8:
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t37, ptr %l33, !tbaa !27
  %t38 = load i64, ptr %l5, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr ptr, ptr %t41, i64 %t38
  %t43 = load ptr, ptr %t42, !tbaa !39
  store ptr %t43, ptr %l7, !tbaa !29
  %t45 = load ptr, ptr %l7, !tbaa !29
  store ptr %t45, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t46 = load ptr, ptr %l36, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb9, label %bb10
bb9:
  %t49 = load ptr, ptr %l36, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 11}
  %t52 = icmp eq i64 %t50, 3
  store i1 %t52, ptr %l37, !tbaa !21
  br label %bb10
bb10:
  %t53 = load i1, ptr %l37, !tbaa !21
  br i1 %t53, label %bb11, label %bb12
bb11:
  %t54 = load ptr, ptr %l7, !tbaa !29
  %t56 = getelementptr { i64, [8 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", ptr }, ptr %t56, i32 0, i32 1
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l8, !tbaa !29
  br label %bb13
bb12:
  br label %bb33
bb13:
  store i64 0, ptr %l9, !tbaa !24
  %t60 = load ptr, ptr %l8, !tbaa !29
  %t62 = getelementptr %"compiler/ast:VarDecl", ptr %t60, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  store i64 %t65, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t67 = load i64, ptr %l10, !tbaa !24
  %t68 = load i64, ptr %l9, !tbaa !24
  %t71 = icmp sgt i64 %t67, %t68
  br i1 %t71, label %bb14, label %bb15
bb14:
  %t73 = load i64, ptr %l11, !tbaa !24
  %t75 = icmp sgt i64 %t73, 0
  br i1 %t75, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb19
bb16:
  %t77 = load i64, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l9, !tbaa !24
  %t81 = sub i64 %t77, %t78
  %t82 = load i64, ptr %l11, !tbaa !24
  %t85 = add i64 %t81, %t82
  %t87 = sub i64 %t85, 1
  %t88 = load i64, ptr %l11, !tbaa !24
  %t91 = sdiv i64 %t87, %t88
  store i64 %t91, ptr %l51, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb18
bb18:
  %t93 = load i64, ptr %l51, !tbaa !24
  store i64 %t93, ptr %l48, !tbaa !24
  br label %bb19
bb19:
  %t94 = load i64, ptr %l48, !tbaa !24
  store i64 %t94, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb20
bb20:
  %t95 = load i64, ptr %l13, !tbaa !24
  %t96 = load i64, ptr %l12, !tbaa !24
  %t99 = icmp slt i64 %t95, %t96
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb21, label %bb22
bb21:
  br label %bb32
bb22:
  br label %bb23
bb23:
  %t103 = load i64, ptr %l9, !tbaa !24
  %t104 = load i64, ptr %l13, !tbaa !24
  %t105 = load i64, ptr %l11, !tbaa !24
  %t108 = mul i64 %t104, %t105
  %t111 = add i64 %t103, %t108
  %t113 = load ptr, ptr %l8, !tbaa !29
  %t115 = getelementptr %"compiler/ast:VarDecl", ptr %t113, i32 0, i32 0
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  store { i64, ptr } %t116, ptr %l70, !tbaa !27
  %t119 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i32, ptr %t120, i64 %t111
  %t122 = load i32, ptr %t121, !tbaa !33
  %t126 = icmp eq i32 %t122, %a2
  br i1 %t126, label %bb24, label %bb25
bb24:
  %t128 = load ptr, ptr %l8, !tbaa !29
  %t130 = call i1 @compiler_2fgeneric_2emutableGlobal(ptr %v0, ptr %t128)
  store i1 %t130, ptr %l77
  br label %bb26
bb25:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb27
bb26:
  %t131 = load i1, ptr %l77, !tbaa !21
  %t132 = xor i1 %t131, true
  store i1 %t132, ptr %l75, !tbaa !21
  br label %bb27
bb27:
  %t134 = load i1, ptr %l75, !tbaa !21
  br i1 %t134, label %bb28, label %bb29
bb28:
  %t135 = load ptr, ptr %l8, !tbaa !29
  store ptr %t135, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t138 = load i64, ptr %l13, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l13, !tbaa !24
  br label %bb20
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
  call void @__olang_check_failed(ptr @olang_loc_3f6d4ec28d03c677_4b12a6ade8d65b03)
  unreachable
bb38:
  br label %bb39
bb39:
  %t142 = load i64, ptr %l5, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l5, !tbaa !24
  br label %bb5
bb40:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i1
  %l20 = alloca i1
  %l30 = alloca i32
  %l36 = alloca i32
  %l40 = alloca i32
  %l43 = alloca ptr
  %l47 = alloca i32
  %l50 = alloca i1
  %l54 = alloca i32
  %l57 = alloca i1
  %l60 = alloca i1
  %l61 = alloca i1
  %l63 = alloca ptr
  %l67 = alloca i32
  %l68 = alloca i32
  %l71 = alloca i1
  %l73 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca i32
  %l81 = alloca i1
  %l84 = alloca i1
  %l86 = alloca i1
  %l90 = alloca i64
  %l92 = alloca ptr
  %l94 = alloca ptr
  %l98 = alloca i32
  %l99 = alloca i32
  %l102 = alloca i1
  %l105 = alloca i1
  %l106 = alloca i1
  %l110 = alloca i64
  %l112 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i32
  %l118 = alloca i64
  %l119 = alloca i1
  %l123 = alloca i64
  %l129 = alloca i1
  %l135 = alloca i1
  %l136 = alloca i1
  %l139 = alloca i1
  %l143 = alloca i1
  %l144 = alloca i1
  %l145 = alloca ptr
  %l146 = alloca i32
  %l150 = alloca i32
  %l151 = alloca i1
  %l158 = alloca ptr
  %l162 = alloca i32
  %l165 = alloca i1
  %l170 = alloca ptr
  %l174 = alloca i32
  %l176 = alloca i1
  %l179 = alloca ptr
  %l183 = alloca i32
  %l185 = alloca i1
  %l190 = alloca i1
  %l194 = alloca ptr
  %l198 = alloca i32
  %l199 = alloca i32
  %l202 = alloca ptr
  %l206 = alloca i32
  %l208 = alloca i1
  %l211 = alloca ptr
  %l215 = alloca i32
  %l217 = alloca i1
  %l220 = alloca i1
  %l222 = alloca ptr
  %l226 = alloca i32
  %l227 = alloca i32
  %l230 = alloca ptr
  %l234 = alloca i32
  %l237 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l14
  br label %bb4
bb4:
  %t13 = load i32, ptr %l14, !range !{i32 0, i32 33}
  store i32 %t13, ptr %l3
  %t14 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t16 = trunc i64 0 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb7
bb6:
  %t19 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t21 = trunc i64 25 to i32
  %t22 = icmp eq i32 %t19, %t21
  store i1 %t22, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l17, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb10
bb9:
  %t25 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t27 = trunc i64 27 to i32
  %t28 = icmp eq i32 %t25, %t27
  store i1 %t28, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t30 = load i1, ptr %l20, !tbaa !21
  br i1 %t30, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t32 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t34 = trunc i64 32 to i32
  %t35 = icmp eq i32 %t32, %t34
  br i1 %t35, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/load:Loader", ptr %t41, i32 0, i32 3
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t44, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i32 %t46, ptr %l30
  br label %bb17
bb17:
  %t47 = load i32, ptr %l30, !tbaa !23
  store i32 %t47, ptr %l4, !tbaa !23
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t50 = trunc i64 20 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb18, label %bb19
bb18:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l1, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l36
  br label %bb20
bb19:
  br label %bb66
bb20:
  %t60 = load i32, ptr %l36, !tbaa !23
  store i32 %t60, ptr %l5, !tbaa !23
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l5, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l40
  br label %bb21
bb21:
  %t68 = load i32, ptr %l40, !range !{i32 0, i32 33}
  %t70 = trunc i64 19 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb22, label %bb23
bb22:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l43, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %l5, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t80, ptr %l47
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t81 = load i64, ptr %l2, !tbaa !24
  %t83 = add i64 %t81, 1
  %t84 = load ptr, ptr %l43, !tbaa !29
  %t85 = load i32, ptr %l47, !tbaa !23
  %t87 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %t84, i32 %t85, i64 %t83)
  store i1 %t87, ptr %l50
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t88 = load i1, ptr %l50, !tbaa !21
  store i1 %t88, ptr %rv
  br label %ret
bb26:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %l5, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l54
  br label %bb27
bb27:
  %t96 = load i32, ptr %l54, !range !{i32 0, i32 33}
  %t98 = trunc i64 18 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb28, label %bb29
bb28:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i32, ptr %l5, !tbaa !23
  %t105 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t101, i32 %t102)
  store i1 %t105, ptr %l60
  br label %bb30
bb29:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb31
bb30:
  %t106 = load i1, ptr %l60, !tbaa !21
  store i1 %t106, ptr %l57, !tbaa !21
  br label %bb31
bb31:
  %t107 = load i1, ptr %l57, !tbaa !21
  br i1 %t107, label %bb32, label %bb33
bb32:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 2
  store ptr %t110, ptr %l63, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 2
  %t114 = load i32, ptr %l5, !tbaa !23
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t113, i32 %t114)
  store i32 %t117, ptr %l67
  br label %bb34
bb33:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb36
bb34:
  %t118 = load ptr, ptr %l63, !tbaa !29
  %t119 = load i32, ptr %l67, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t118, i32 %t119)
  store i32 %t120, ptr %l68
  br label %bb35
bb35:
  %t121 = load i32, ptr %l68, !range !{i32 0, i32 6}
  %t123 = trunc i64 4 to i32
  %t124 = icmp eq i32 %t121, %t123
  store i1 %t124, ptr %l61, !tbaa !21
  br label %bb36
bb36:
  %t126 = load i1, ptr %l61, !tbaa !21
  br i1 %t126, label %bb37, label %bb38
bb37:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 2
  store ptr %t129, ptr %l73, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  %t133 = load i32, ptr %l5, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t136, ptr %l77
  br label %bb39
bb38:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb41
bb39:
  %t137 = load ptr, ptr %l73, !tbaa !29
  %t138 = load i32, ptr %l77, !tbaa !23
  %t139 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t137, i32 %t138)
  store i32 %t139, ptr %l78
  br label %bb40
bb40:
  %t140 = load i32, ptr %l78, !range !{i32 0, i32 33}
  %t142 = trunc i64 19 to i32
  %t143 = icmp eq i32 %t140, %t142
  store i1 %t143, ptr %l71, !tbaa !21
  br label %bb41
bb41:
  %t145 = load i1, ptr %l71, !tbaa !21
  br i1 %t145, label %bb42, label %bb43
bb42:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l5, !tbaa !23
  %t150 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %t146, i32 %t147)
  store i1 %t150, ptr %l84
  br label %bb44
bb43:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb45
bb44:
  %t151 = load i1, ptr %l84, !tbaa !21
  %t152 = xor i1 %t151, true
  store i1 %t152, ptr %l81, !tbaa !21
  br label %bb45
bb45:
  %t154 = load i1, ptr %l81, !tbaa !21
  br i1 %t154, label %bb46, label %bb47
bb46:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i32, ptr %l5, !tbaa !23
  %t157 = load i32, ptr %l4, !tbaa !23
  %t161 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t155, i32 %t156, i32 %t157)
  store i64 %t161, ptr %l90
  br label %bb48
bb47:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb49
bb48:
  %t162 = load i64, ptr %l90, !tbaa !24
  %t163 = icmp slt i64 %t162, 0
  store i1 %t163, ptr %l86, !tbaa !21
  br label %bb49
bb49:
  %t165 = load i1, ptr %l86, !tbaa !21
  br i1 %t165, label %bb50, label %bb51
bb50:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l92, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 2
  store ptr %t169, ptr %l94, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Program", ptr %t170, i32 0, i32 2
  %t173 = load i32, ptr %l5, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l98
  br label %bb52
bb51:
  br label %bb55
bb52:
  %t177 = load ptr, ptr %l94, !tbaa !29
  %t178 = load i32, ptr %l98, !tbaa !23
  %t179 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t177, i32 %t178)
  store i32 %t179, ptr %l99
  br label %bb53
bb53:
  %t180 = load i64, ptr %l2, !tbaa !24
  %t182 = add i64 %t180, 1
  %t183 = load ptr, ptr %l92, !tbaa !29
  %t184 = load i32, ptr %l99, !tbaa !23
  %t186 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %t183, i32 %t184, i64 %t182)
  store i1 %t186, ptr %l102
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s0)
  %t187 = load i1, ptr %l102, !tbaa !21
  store i1 %t187, ptr %rv
  br label %ret
bb55:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i32, ptr %l5, !tbaa !23
  %t192 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %t188, i32 %t189)
  store i1 %t192, ptr %l105
  br label %bb56
bb56:
  %t193 = load i1, ptr %l105, !tbaa !21
  br i1 %t193, label %bb57, label %bb58
bb57:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l5, !tbaa !23
  %t196 = load i32, ptr %l4, !tbaa !23
  %t200 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t194, i32 %t195, i32 %t196)
  store i64 %t200, ptr %l110
  br label %bb59
bb58:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb60
bb59:
  %t201 = load i64, ptr %l110, !tbaa !24
  %t202 = icmp sge i64 %t201, 0
  store i1 %t202, ptr %l106, !tbaa !21
  br label %bb60
bb60:
  %t204 = load i1, ptr %l106, !tbaa !21
  br i1 %t204, label %bb61, label %bb62
bb61:
  %t205 = load ptr, ptr %l0, !tbaa !29
  store ptr %t205, ptr %l113, !tbaa !29
  %t206 = load i32, ptr %l5, !tbaa !23
  store i32 %t206, ptr %l114, !tbaa !23
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i32, ptr %l5, !tbaa !23
  %t209 = load i32, ptr %l4, !tbaa !23
  %t213 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t207, i32 %t208, i32 %t209)
  store i64 %t213, ptr %l118
  br label %bb63
bb62:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb65
bb63:
  %t214 = load ptr, ptr %l113, !tbaa !29
  %t215 = load i32, ptr %l114, !tbaa !23
  %t216 = load i64, ptr %l118, !tbaa !24
  %t217 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashShaped(ptr %v0, ptr %t214, i32 %t215, i64 %t216)
  store i1 %t217, ptr %l119
  br label %bb64
bb64:
  %t218 = load i1, ptr %l119, !tbaa !21
  store i1 %t218, ptr %l112, !tbaa !21
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  %t219 = load i1, ptr %l112, !tbaa !21
  store i1 %t219, ptr %rv
  br label %ret
bb66:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i32, ptr %l1, !tbaa !23
  %t222 = load i32, ptr %l4, !tbaa !23
  %t226 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t220, i32 %t221, i32 %t222)
  store i64 %t226, ptr %l123
  br label %bb67
bb67:
  %t227 = load i64, ptr %l123, !tbaa !24
  store i64 %t227, ptr %l6, !tbaa !24
  %t228 = load i64, ptr %l6, !tbaa !24
  %t230 = icmp sge i64 %t228, 0
  br i1 %t230, label %bb68, label %bb69
bb68:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i32, ptr %l1, !tbaa !23
  %t234 = load i64, ptr %l6, !tbaa !24
  %t238 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashShaped(ptr %v0, ptr %t232, i32 %t233, i64 %t234)
  store i1 %t238, ptr %l129
  br label %bb70
bb69:
  br label %bb79
bb70:
  %t239 = load i1, ptr %l129, !tbaa !21
  %t240 = xor i1 %t239, true
  br i1 %t240, label %bb71, label %bb72
bb71:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb72:
  br label %bb73
bb73:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load i32, ptr %l1, !tbaa !23
  %t245 = load i32, ptr %l4, !tbaa !23
  %t249 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownMethod(ptr %v0, ptr %t243, i32 %t244, i32 %t245)
  store i1 %t249, ptr %l135
  br label %bb74
bb74:
  %t250 = load i1, ptr %l135, !tbaa !21
  br i1 %t250, label %bb75, label %bb76
bb75:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb78
bb76:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load i32, ptr %l1, !tbaa !23
  %t255 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %t251, i32 %t252)
  store i1 %t255, ptr %l139
  br label %bb77
bb77:
  %t256 = load i1, ptr %l139, !tbaa !21
  %t257 = xor i1 %t256, true
  store i1 %t257, ptr %l136, !tbaa !21
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s0)
  %t259 = load i1, ptr %l136, !tbaa !21
  store i1 %t259, ptr %rv
  br label %ret
bb79:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load i32, ptr %l1, !tbaa !23
  %t264 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %t260, i32 %t261)
  store i1 %t264, ptr %l143
  br label %bb80
bb80:
  %t265 = load i1, ptr %l143, !tbaa !21
  br i1 %t265, label %bb81, label %bb82
bb81:
  store i1 true, ptr %l144, !tbaa !21
  br label %bb85
bb82:
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l145, !tbaa !29
  %t267 = load i32, ptr %l1, !tbaa !23
  store i32 %t267, ptr %l146, !tbaa !23
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/generic:Program", ptr %t268, i32 0, i32 0
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t273 = getelementptr %"compiler/load:Loader", ptr %t271, i32 0, i32 3
  %t274 = load ptr, ptr %t273, !tbaa !29
  %t276 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t274, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i32 %t276, ptr %l150
  br label %bb83
bb83:
  %t277 = load ptr, ptr %l145, !tbaa !29
  %t278 = load i32, ptr %l146, !tbaa !23
  %t279 = load i32, ptr %l150, !tbaa !23
  %t280 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownMethod(ptr %v0, ptr %t277, i32 %t278, i32 %t279)
  store i1 %t280, ptr %l151
  br label %bb84
bb84:
  %t281 = load i1, ptr %l151, !tbaa !21
  store i1 %t281, ptr %l144, !tbaa !21
  br label %bb85
bb85:
  %t282 = load i1, ptr %l144, !tbaa !21
  br i1 %t282, label %bb86, label %bb87
bb86:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb87:
  br label %bb88
bb88:
  %t284 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t286 = trunc i64 31 to i32
  %t287 = icmp eq i32 %t284, %t286
  br i1 %t287, label %bb89, label %bb90
bb89:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb90:
  br label %bb91
bb91:
  %t290 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t292 = trunc i64 19 to i32
  %t293 = icmp eq i32 %t290, %t292
  br i1 %t293, label %bb92, label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb97
bb94:
  %t295 = load ptr, ptr %l0, !tbaa !29
  store ptr %t295, ptr %l158, !tbaa !29
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/generic:Program", ptr %t296, i32 0, i32 2
  %t299 = load i32, ptr %l1, !tbaa !23
  %t302 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t298, i32 %t299)
  store i32 %t302, ptr %l162
  br label %bb95
bb95:
  %t303 = load i64, ptr %l2, !tbaa !24
  %t305 = add i64 %t303, 1
  %t306 = load ptr, ptr %l158, !tbaa !29
  %t307 = load i32, ptr %l162, !tbaa !23
  %t309 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %t306, i32 %t307, i64 %t305)
  store i1 %t309, ptr %l165
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s0)
  %t310 = load i1, ptr %l165, !tbaa !21
  store i1 %t310, ptr %rv
  br label %ret
bb97:
  %t311 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t313 = trunc i64 22 to i32
  %t314 = icmp eq i32 %t311, %t313
  br i1 %t314, label %bb98, label %bb99
bb98:
  br label %bb102
bb99:
  %t316 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t318 = trunc i64 23 to i32
  %t319 = icmp eq i32 %t316, %t318
  br i1 %t319, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb105
bb102:
  %t321 = load ptr, ptr %l0, !tbaa !29
  store ptr %t321, ptr %l170, !tbaa !29
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/generic:Program", ptr %t322, i32 0, i32 2
  %t325 = load i32, ptr %l1, !tbaa !23
  %t328 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t324, i32 %t325)
  store i32 %t328, ptr %l174
  br label %bb103
bb103:
  %t329 = load i64, ptr %l2, !tbaa !24
  %t330 = load ptr, ptr %l170, !tbaa !29
  %t331 = load i32, ptr %l174, !tbaa !23
  %t333 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashesAll(ptr %v0, ptr %t330, i32 %t331, i64 %t329)
  store i1 %t333, ptr %l176
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s0)
  %t334 = load i1, ptr %l176, !tbaa !21
  store i1 %t334, ptr %rv
  br label %ret
bb105:
  %t335 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t337 = trunc i64 24 to i32
  %t338 = icmp eq i32 %t335, %t337
  br i1 %t338, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb111
bb108:
  %t340 = load ptr, ptr %l0, !tbaa !29
  store ptr %t340, ptr %l179, !tbaa !29
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/generic:Program", ptr %t341, i32 0, i32 2
  %t344 = load i32, ptr %l1, !tbaa !23
  %t347 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t343, i32 %t344)
  store i32 %t347, ptr %l183
  br label %bb109
bb109:
  %t348 = load i64, ptr %l2, !tbaa !24
  %t349 = load ptr, ptr %l179, !tbaa !29
  %t350 = load i32, ptr %l183, !tbaa !23
  %t352 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashesAll(ptr %v0, ptr %t349, i32 %t350, i64 %t348)
  store i1 %t352, ptr %l185
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s0)
  %t353 = load i1, ptr %l185, !tbaa !21
  store i1 %t353, ptr %rv
  br label %ret
bb111:
  %t354 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t356 = trunc i64 18 to i32
  %t357 = icmp eq i32 %t354, %t356
  br i1 %t357, label %bb112, label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb141
bb114:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load i32, ptr %l1, !tbaa !23
  %t363 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t359, i32 %t360)
  store i1 %t363, ptr %l190
  br label %bb115
bb115:
  %t364 = load i1, ptr %l190, !tbaa !21
  %t365 = xor i1 %t364, true
  br i1 %t365, label %bb116, label %bb117
bb116:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb117:
  br label %bb118
bb118:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t370 = getelementptr %"compiler/generic:Program", ptr %t368, i32 0, i32 2
  store ptr %t370, ptr %l194, !tbaa !29
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr %"compiler/generic:Program", ptr %t371, i32 0, i32 2
  %t374 = load i32, ptr %l1, !tbaa !23
  %t377 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t373, i32 %t374)
  store i32 %t377, ptr %l198
  br label %bb119
bb119:
  %t378 = load ptr, ptr %l194, !tbaa !29
  %t379 = load i32, ptr %l198, !tbaa !23
  %t380 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t378, i32 %t379)
  store i32 %t380, ptr %l199
  br label %bb120
bb120:
  %t381 = load i32, ptr %l199, !range !{i32 0, i32 6}
  store i32 %t381, ptr %l7
  %t382 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t384 = trunc i64 0 to i32
  %t385 = icmp eq i32 %t382, %t384
  br i1 %t385, label %bb121, label %bb122
bb121:
  %t387 = load ptr, ptr %l0, !tbaa !29
  store ptr %t387, ptr %l202, !tbaa !29
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/generic:Program", ptr %t388, i32 0, i32 2
  %t391 = load i32, ptr %l1, !tbaa !23
  %t394 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t390, i32 %t391)
  store i32 %t394, ptr %l206
  br label %bb123
bb122:
  br label %bb125
bb123:
  %t395 = load i64, ptr %l2, !tbaa !24
  %t396 = load ptr, ptr %l202, !tbaa !29
  %t397 = load i32, ptr %l206, !tbaa !23
  %t399 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashesAll(ptr %v0, ptr %t396, i32 %t397, i64 %t395)
  store i1 %t399, ptr %l208
  br label %bb124
bb124:
  call void @__olang_scope_close(ptr %s0)
  %t400 = load i1, ptr %l208, !tbaa !21
  store i1 %t400, ptr %rv
  br label %ret
bb125:
  %t401 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t403 = trunc i64 1 to i32
  %t404 = icmp eq i32 %t401, %t403
  br i1 %t404, label %bb126, label %bb127
bb126:
  %t406 = load ptr, ptr %l0, !tbaa !29
  store ptr %t406, ptr %l211, !tbaa !29
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = getelementptr %"compiler/generic:Program", ptr %t407, i32 0, i32 2
  %t410 = load i32, ptr %l1, !tbaa !23
  %t413 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t409, i32 %t410)
  store i32 %t413, ptr %l215
  br label %bb128
bb127:
  br label %bb130
bb128:
  %t414 = load i64, ptr %l2, !tbaa !24
  %t415 = load ptr, ptr %l211, !tbaa !29
  %t416 = load i32, ptr %l215, !tbaa !23
  %t418 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashesAll(ptr %v0, ptr %t415, i32 %t416, i64 %t414)
  store i1 %t418, ptr %l217
  br label %bb129
bb129:
  call void @__olang_scope_close(ptr %s0)
  %t419 = load i1, ptr %l217, !tbaa !21
  store i1 %t419, ptr %rv
  br label %ret
bb130:
  %t420 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t422 = trunc i64 4 to i32
  %t423 = icmp eq i32 %t420, %t422
  br i1 %t423, label %bb131, label %bb132
bb131:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/generic:Program", ptr %t425, i32 0, i32 2
  store ptr %t427, ptr %l222, !tbaa !29
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = getelementptr %"compiler/generic:Program", ptr %t428, i32 0, i32 2
  %t431 = load i32, ptr %l1, !tbaa !23
  %t434 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t430, i32 %t431)
  store i32 %t434, ptr %l226
  br label %bb133
bb132:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb135
bb133:
  %t435 = load ptr, ptr %l222, !tbaa !29
  %t436 = load i32, ptr %l226, !tbaa !23
  %t437 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t435, i32 %t436)
  store i32 %t437, ptr %l227
  br label %bb134
bb134:
  %t438 = load i32, ptr %l227, !range !{i32 0, i32 33}
  %t440 = trunc i64 19 to i32
  %t441 = icmp eq i32 %t438, %t440
  store i1 %t441, ptr %l220, !tbaa !21
  br label %bb135
bb135:
  %t443 = load i1, ptr %l220, !tbaa !21
  br i1 %t443, label %bb136, label %bb137
bb136:
  %t444 = load ptr, ptr %l0, !tbaa !29
  store ptr %t444, ptr %l230, !tbaa !29
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/generic:Program", ptr %t445, i32 0, i32 2
  %t448 = load i32, ptr %l1, !tbaa !23
  %t451 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t447, i32 %t448)
  store i32 %t451, ptr %l234
  br label %bb138
bb137:
  br label %bb140
bb138:
  %t452 = load i64, ptr %l2, !tbaa !24
  %t454 = add i64 %t452, 1
  %t455 = load ptr, ptr %l230, !tbaa !29
  %t456 = load i32, ptr %l234, !tbaa !23
  %t458 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %t455, i32 %t456, i64 %t454)
  store i1 %t458, ptr %l237
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s0)
  %t459 = load i1, ptr %l237, !tbaa !21
  store i1 %t459, ptr %rv
  br label %ret
bb140:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb141:
  br i1 true, label %bb142, label %bb143
bb142:
  br label %bb144
bb143:
  br label %bb145
bb144:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb145:
  call void @__olang_check_failed(ptr @olang_loc_ee8d77a4a1fda3da_cc07c41aef88f656)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashShaped(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca i32
  %l11 = alloca i1
  %l13 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l21 = alloca i1
  %l25 = alloca i32
  %l28 = alloca i32
  %l30 = alloca i1
  %l34 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %t1, i64 %a2, i32 %a1)
  store i32 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i32, ptr %l7, !tbaa !23
  store i32 %t8, ptr %l3, !tbaa !23
  %t9 = load i32, ptr %l3, !tbaa !23
  %t10 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t13 = icmp ne i32 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l13, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l3, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l17
  br label %bb4
bb3:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb6
bb4:
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t26 = load i32, ptr %l17, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t25, i32 %t26)
  store { i64, ptr } %t27, ptr %l18
  br label %bb5
bb5:
  %t28 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t33 = load i1, ptr %l11, !tbaa !21
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l3, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l25
  br label %bb9
bb8:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb9:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t43, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i32 %t45, ptr %l28
  br label %bb10
bb10:
  %t46 = load i32, ptr %l25, !tbaa !23
  %t47 = load i32, ptr %l28, !tbaa !23
  %t48 = icmp eq i32 %t46, %t47
  store i1 %t48, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t50 = load i1, ptr %l21, !tbaa !21
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  %t54 = load i32, ptr %l3, !tbaa !23
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t57, ptr %l34
  br label %bb14
bb13:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb15
bb14:
  %t58 = load i32, ptr %l34, !tbaa !23
  %t59 = icmp eq i32 %t58, 0
  store i1 %t59, ptr %l30, !tbaa !21
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t61 = load i1, ptr %l30, !tbaa !21
  store i1 %t61, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enoteRawType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l11 = alloca i32
  %l15 = alloca i32
  %l18 = alloca i1
  %l22 = alloca i32
  %l24 = alloca ptr
  %l28 = alloca i32
  %l32 = alloca i32
  %l36 = alloca i1
  %l38 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i32
  %l50 = alloca i32
  %l54 = alloca i32
  %l59 = alloca ptr
  %l62 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i1
  %l76 = alloca ptr
  %l79 = alloca %"compiler/generic:Context"
  %l83 = alloca i32
  %l85 = alloca ptr
  %l89 = alloca i32
  %l90 = alloca i1
  %l91 = alloca i1
  %l93 = alloca ptr
  %l97 = alloca i32
  %l98 = alloca i64
  %s5 = alloca %olang.scope
  %t142 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t3, i32 %a1)
  store i32 %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load i32, ptr %l11, !tbaa !23
  store i32 %t8, ptr %l2, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l15
  br label %bb2
bb2:
  %t16 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t18 = trunc i64 19 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l2, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l22
  br label %bb5
bb4:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb6
bb5:
  %t28 = load i32, ptr %l22, !tbaa !23
  %t29 = icmp ne i32 %t28, 0
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l24, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l2, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l28
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t40 = load ptr, ptr %l24, !tbaa !29
  %t41 = load i32, ptr %l28, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enoteRawType(ptr %v0, ptr %t40, i32 %t41)
  br label %bb10
bb10:
  br label %ret
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l2, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t44, i32 %t45)
  store i32 %t48, ptr %l32
  br label %bb12
bb12:
  %t49 = load i32, ptr %l32, !range !{i32 0, i32 33}
  %t51 = trunc i64 18 to i32
  %t52 = icmp eq i32 %t49, %t51
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb17
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  store ptr %t58, ptr %l38, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l2, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t65, ptr %l42
  br label %bb15
bb15:
  %t66 = load ptr, ptr %l38, !tbaa !29
  %t67 = load i32, ptr %l42, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t66, i32 %t67)
  store i32 %t68, ptr %l43
  br label %bb16
bb16:
  %t69 = load i32, ptr %l43, !range !{i32 0, i32 6}
  %t71 = trunc i64 1 to i32
  %t72 = icmp eq i32 %t69, %t71
  %t74 = xor i1 %t72, true
  store i1 %t74, ptr %l36, !tbaa !21
  br label %bb17
bb17:
  %t76 = load i1, ptr %l36, !tbaa !21
  br i1 %t76, label %bb18, label %bb19
bb18:
  br label %ret
bb19:
  br label %bb20
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load i32, ptr %l2, !tbaa !23
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t79, i32 %t80)
  store i32 %t83, ptr %l50
  br label %bb21
bb21:
  %t84 = load i32, ptr %l50, !tbaa !23
  store i32 %t84, ptr %l3, !tbaa !23
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 2
  %t88 = load i32, ptr %l2, !tbaa !23
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t91, ptr %l54
  br label %bb22
bb22:
  %t92 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t93 = load i32, ptr %l54, !tbaa !23
  %t95 = icmp ne i32 %t93, %t92
  br i1 %t95, label %bb23, label %bb24
bb23:
  br label %ret
bb24:
  br label %bb25
bb25:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l3, !tbaa !23
  %t101 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t97, i32 %t98)
  store ptr %t101, ptr %l59
  br label %bb26
bb26:
  %t102 = load ptr, ptr %l59, !tbaa !29
  store ptr %t102, ptr %l4, !tbaa !29
  %t103 = load ptr, ptr %l4, !tbaa !29
  %t105 = icmp eq ptr %t103, null
  br i1 %t105, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb29
bb28:
  %t107 = load ptr, ptr %l4, !tbaa !29
  %t109 = getelementptr %"compiler/ast:TypeDecl", ptr %t107, i32 0, i32 3
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  store i1 %t112, ptr %l62, !tbaa !21
  br label %bb29
bb29:
  %t114 = load i1, ptr %l62, !tbaa !21
  br i1 %t114, label %bb30, label %bb31
bb30:
  br label %ret
bb31:
  br label %bb32
bb32:
  %t115 = load ptr, ptr %l4, !tbaa !29
  %t117 = getelementptr %"compiler/ast:TypeDecl", ptr %t115, i32 0, i32 3
  %t118 = load ptr, ptr %t117, !tbaa !29
  store ptr %t118, ptr %l5, !tbaa !29
  %t120 = load ptr, ptr %l5, !tbaa !29
  store ptr %t120, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t121 = load ptr, ptr %l68, !tbaa !29
  %t122 = icmp ne ptr %t121, null
  br i1 %t122, label %bb33, label %bb34
bb33:
  %t124 = load ptr, ptr %l68, !tbaa !29
  %t125 = load i64, ptr %t124, !range !{i64 0, i64 5}
  %t127 = icmp eq i64 %t125, 1
  store i1 %t127, ptr %l69, !tbaa !21
  br label %bb34
bb34:
  %t128 = load i1, ptr %l69, !tbaa !21
  br i1 %t128, label %bb35, label %bb36
bb35:
  %t129 = load ptr, ptr %l5, !tbaa !29
  %t131 = getelementptr { i64, [6 x i64] }, ptr %t129, i32 0, i32 1
  %t132 = getelementptr { { i64, ptr }, ptr }, ptr %t131, i32 0, i32 1
  %t133 = load ptr, ptr %t132
  store ptr %t133, ptr %l6, !tbaa !29
  br label %bb37
bb36:
  br label %bb54
bb37:
  store %olang.scope zeroinitializer, ptr %s5
  %t135 = load ptr, ptr %l6, !tbaa !29
  %t137 = icmp eq ptr %t135, null
  br i1 %t137, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s5)
  br label %ret
bb39:
  br label %bb40
bb40:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l76, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t142, ptr %v0, ptr %s5, ptr %t140, i32 %t141)
  call void @llvm.memmove.p0.p0.i64(ptr %l79, ptr %t142, i64 160, i1 false)
  br label %bb41
bb41:
  %t145 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t145, ptr %l79, i64 160, i1 false)
  %t146 = load ptr, ptr %l6, !tbaa !29
  %t148 = load ptr, ptr %l76, !tbaa !29
  %t151 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s5, ptr %v0, ptr %t148, ptr %t145, ptr %t146)
  store i32 %t151, ptr %l83
  br label %bb42
bb42:
  %t152 = load i32, ptr %l83, !tbaa !23
  store i32 %t152, ptr %l7, !tbaa !23
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  store ptr %t155, ptr %l85, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/generic:Program", ptr %t156, i32 0, i32 2
  %t159 = load i32, ptr %l7, !tbaa !23
  %t162 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t158, i32 %t159)
  store i32 %t162, ptr %l89
  br label %bb43
bb43:
  %t163 = load ptr, ptr %l85, !tbaa !29
  %t164 = load i32, ptr %l89, !tbaa !23
  %t165 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t163, i32 %t164)
  store i1 %t165, ptr %l90
  br label %bb44
bb44:
  %t166 = load i1, ptr %l90, !tbaa !21
  br i1 %t166, label %bb45, label %bb46
bb45:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 2
  store ptr %t169, ptr %l93, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Program", ptr %t170, i32 0, i32 2
  %t173 = load i32, ptr %l7, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l97
  br label %bb47
bb46:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb49
bb47:
  %t177 = load ptr, ptr %l93, !tbaa !29
  %t178 = load i32, ptr %l97, !tbaa !23
  %t179 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t177, i32 %t178)
  store i64 %t179, ptr %l98
  br label %bb48
bb48:
  %t180 = load i64, ptr %l98, !tbaa !24
  %t181 = icmp sle i64 %t180, 64
  store i1 %t181, ptr %l91, !tbaa !21
  br label %bb49
bb49:
  %t183 = load i1, ptr %l91, !tbaa !21
  br i1 %t183, label %bb50, label %bb51
bb50:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/generic:Program", ptr %t184, i32 0, i32 2
  %t187 = load i32, ptr %l3, !tbaa !23
  %t188 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetRawType(ptr %v0, ptr %t186, i32 %t187, i32 %t188)
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s5)
  br label %bb59
bb54:
  br i1 true, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_a1c12b43cfcb5ca8_7f9e794136c316fc)
  unreachable
bb59:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamsSig(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l30 = alloca i32
  %l36 = alloca ptr
  %l37 = alloca i64
  %l39 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i32
  %l46 = alloca i32
  %l53 = alloca i32
  %l55 = alloca ptr
  %l57 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l60 = alloca i32
  %l64 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l5
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l14
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l6
  store { i64, ptr } %a2, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l9, !tbaa !24
  br label %bb3
bb3:
  %t11 = load i64, ptr %l8, !tbaa !24
  %t12 = load i64, ptr %l9, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  br label %bb11
bb5:
  br label %bb6
bb6:
  %t19 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t19, ptr %l22, !tbaa !27
  %t20 = load i64, ptr %l8, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr ptr, ptr %t23, i64 %t20
  %t25 = load ptr, ptr %t24, !tbaa !39
  store ptr %l5, ptr %l25, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Param", ptr %t25, i32 0, i32 2
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t36 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t27, ptr %t28, ptr %t32)
  store i32 %t36, ptr %l30
  br label %bb7
bb7:
  %t37 = load ptr, ptr %l25, !tbaa !29
  %t38 = load i32, ptr %l30, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t37, i32 %t38)
  br label %bb8
bb8:
  %t39 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t39)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t42 = load i64, ptr %l8, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l8, !tbaa !24
  br label %bb3
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  store ptr %t48, ptr %l36, !tbaa !29
  %t49 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  store i64 %t49, ptr %l37, !tbaa !24
  %t51 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t51, ptr %l39
  br label %bb12
bb12:
  %t52 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t53 = mul i64 1, 8
  %t54 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t53)
  %t55 = insertvalue { i64, ptr } undef, i64 1, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l41, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i64, ptr %t59, i64 0
  store i64 %t52, ptr %t60, !tbaa !34
  %t61 = load ptr, ptr %l36, !tbaa !29
  %t62 = load i64, ptr %l37, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %s0, ptr %s0, ptr %t61, i64 %t62, { i64, ptr } %t63, { i64, ptr } %t64)
  store i32 %t65, ptr %l42
  br label %bb13
bb13:
  %t66 = load i32, ptr %l42, !tbaa !23
  store i32 %t66, ptr %l11, !tbaa !23
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb14, label %bb15
bb14:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = getelementptr %"compiler/ast:Sig", ptr %t75, i32 0, i32 2
  %t78 = load i1, ptr %t77, !tbaa !21
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/ast:Sig", ptr %t79, i32 0, i32 3
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  %t87 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorList(ptr %v0, ptr %v1, ptr %v3, ptr %t73, ptr %t74, i1 %t78, { i64, ptr } %t82)
  store i32 %t87, ptr %l53
  br label %bb16
bb15:
  store i32 0, ptr %l46, !tbaa !23
  br label %bb17
bb16:
  %t88 = load i32, ptr %l53, !tbaa !23
  store i32 %t88, ptr %l46, !tbaa !23
  br label %bb17
bb17:
  %t89 = load i32, ptr %l46, !tbaa !23
  store i32 %t89, ptr %l12, !tbaa !23
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 2
  store ptr %t92, ptr %l55, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Program", ptr %t93, i32 0, i32 2
  store ptr %t95, ptr %l57, !tbaa !29
  %t97 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t97, ptr %l59
  br label %bb18
bb18:
  %t98 = load ptr, ptr %l57, !tbaa !29
  %t99 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t98, { i64, ptr } %t99)
  store i32 %t100, ptr %l60
  br label %bb19
bb19:
  %t102 = load i32, ptr %l12, !tbaa !23
  %t103 = load i32, ptr %l11, !tbaa !23
  %t104 = load ptr, ptr %l55, !tbaa !29
  %t105 = load i32, ptr %l60, !tbaa !23
  %t109 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t104, i32 %t105, i32 %a4, i32 %t102, i32 %t103, i64 0, i1 false, i32 0, i64 0)
  store i32 %t109, ptr %l64
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t110 = load i32, ptr %l64, !tbaa !23
  store i32 %t110, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i32
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l46 = alloca i32
  %l49 = alloca ptr
  %l50 = alloca ptr
  %l52 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca i32
  %l58 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l64 = alloca i32
  %l65 = alloca { i64, ptr }
  %l70 = alloca i1
  %l73 = alloca { i64, ptr }
  %l77 = alloca i32
  %l80 = alloca i1
  %l83 = alloca { i64, ptr }
  %l87 = alloca i32
  %l98 = alloca i64
  %l101 = alloca i64
  %l124 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l134 = alloca ptr
  %l138 = alloca i32
  %l145 = alloca i64
  %l151 = alloca ptr
  %l152 = alloca ptr
  %l156 = alloca i32
  %l157 = alloca ptr
  %l162 = alloca { i64, ptr }
  %l168 = alloca i32
  %l171 = alloca ptr
  %l172 = alloca ptr
  %l176 = alloca i32
  %l177 = alloca ptr
  %l181 = alloca i1
  %l182 = alloca { i64, ptr }
  %l183 = alloca ptr
  %l187 = alloca i1
  %l188 = alloca { i64, ptr }
  %l190 = alloca ptr
  %l194 = alloca i32
  %l195 = alloca { i64, ptr }
  %l201 = alloca i64
  %l204 = alloca i64
  %l227 = alloca { i64, ptr }
  %l236 = alloca { i64, ptr }
  %l242 = alloca i64
  %l245 = alloca i64
  %l263 = alloca ptr
  %l266 = alloca { i64, ptr }
  %l274 = alloca ptr
  %l278 = alloca i32
  %l279 = alloca { i64, ptr }
  %l285 = alloca i64
  %l288 = alloca i64
  %l306 = alloca ptr
  %l309 = alloca { i64, ptr }
  %l312 = alloca { i64, ptr }
  %l315 = alloca i32
  %l319 = alloca i1
  %l323 = alloca i32
  %l326 = alloca ptr
  %l327 = alloca ptr
  %l329 = alloca ptr
  %l333 = alloca i32
  %l334 = alloca i32
  %l335 = alloca { i64, ptr }
  %l338 = alloca ptr
  %l343 = alloca { i64, ptr }
  %l347 = alloca ptr
  %l351 = alloca i64
  %l359 = alloca i32
  %l361 = alloca ptr
  %l365 = alloca i32
  %l366 = alloca { i64, ptr }
  %l369 = alloca ptr
  %l370 = alloca ptr
  %l374 = alloca i32
  %l375 = alloca { i64, ptr }
  %l385 = alloca i64
  %l388 = alloca i64
  %l409 = alloca ptr
  %l410 = alloca ptr
  %l412 = alloca ptr
  %l414 = alloca ptr
  %l417 = alloca { i64, ptr }
  %l420 = alloca i32
  %l421 = alloca i32
  %l422 = alloca i32
  %l423 = alloca { i64, ptr }
  %l430 = alloca ptr
  %l435 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s35 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l2, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l46
  br label %bb1
bb1:
  %t8 = load i32, ptr %l46, !range !{i32 0, i32 33}
  store i32 %t8, ptr %l3
  %t9 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t11 = trunc i64 18 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb44
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l49, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l50, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  store ptr %t18, ptr %l52, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l56
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l52, !tbaa !29
  %t27 = load i32, ptr %l56, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t28, ptr %l57
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l50, !tbaa !29
  %t30 = load i32, ptr %l57, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t31, ptr %l58
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l49, !tbaa !29
  %t33 = load { i64, ptr }, ptr %l58, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t32, { i64, ptr } %t33)
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  store ptr %t36, ptr %l60, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l2, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l64
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l60, !tbaa !29
  %t45 = load i32, ptr %l64, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t44, i32 %t45)
  store { i64, ptr } %t46, ptr %l65
  br label %bb10
bb10:
  %t47 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t47, ptr %l4, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  store i64 %t50, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t59, ptr %l73, !tbaa !27
  %t60 = load i64, ptr %l5, !tbaa !24
  %t62 = sub i64 %t60, 1
  %t64 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i32, ptr %t65, i64 %t62
  %t67 = load i32, ptr %t66, !tbaa !33
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t58, i32 %t67)
  store i32 %t70, ptr %l77
  br label %bb13
bb12:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb14
bb13:
  %t71 = load i32, ptr %l77, !range !{i32 0, i32 33}
  %t73 = trunc i64 30 to i32
  %t74 = icmp eq i32 %t71, %t73
  store i1 %t74, ptr %l70, !tbaa !21
  br label %bb14
bb14:
  %t76 = load i1, ptr %l70, !tbaa !21
  br i1 %t76, label %bb15, label %bb16
bb15:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t80, ptr %l83, !tbaa !27
  %t81 = load i64, ptr %l5, !tbaa !24
  %t83 = sub i64 %t81, 1
  %t85 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i32, ptr %t86, i64 %t83
  %t88 = load i32, ptr %t87, !tbaa !33
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t79, i32 %t88)
  store i32 %t91, ptr %l87
  br label %bb17
bb16:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb18
bb17:
  %t92 = load i32, ptr %l87, !tbaa !23
  %t93 = icmp eq i32 %t92, 0
  store i1 %t93, ptr %l80, !tbaa !21
  br label %bb18
bb18:
  %t95 = load i1, ptr %l80, !tbaa !21
  br i1 %t95, label %bb19, label %bb20
bb19:
  %t96 = load i64, ptr %l5, !tbaa !24
  %t98 = sub i64 %t96, 1
  store i64 %t98, ptr %l5, !tbaa !24
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t100 = load i64, ptr %l5, !tbaa !24
  %t102 = icmp sgt i64 %t100, 0
  br i1 %t102, label %bb22, label %bb23
bb22:
  %t104 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t104, i8 60)
  br label %bb24
bb23:
  br label %bb43
bb24:
  store i64 0, ptr %l6, !tbaa !24
  %t106 = load i64, ptr %l5, !tbaa !24
  store i64 %t106, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t108 = load i64, ptr %l7, !tbaa !24
  %t109 = load i64, ptr %l6, !tbaa !24
  %t112 = icmp sgt i64 %t108, %t109
  br i1 %t112, label %bb25, label %bb26
bb25:
  %t114 = load i64, ptr %l8, !tbaa !24
  %t116 = icmp sgt i64 %t114, 0
  br i1 %t116, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb30
bb27:
  %t118 = load i64, ptr %l7, !tbaa !24
  %t119 = load i64, ptr %l6, !tbaa !24
  %t122 = sub i64 %t118, %t119
  %t123 = load i64, ptr %l8, !tbaa !24
  %t126 = add i64 %t122, %t123
  %t128 = sub i64 %t126, 1
  %t129 = load i64, ptr %l8, !tbaa !24
  %t132 = sdiv i64 %t128, %t129
  store i64 %t132, ptr %l101, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb29
bb29:
  %t134 = load i64, ptr %l101, !tbaa !24
  store i64 %t134, ptr %l98, !tbaa !24
  br label %bb30
bb30:
  %t135 = load i64, ptr %l98, !tbaa !24
  store i64 %t135, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb31
bb31:
  %t136 = load i64, ptr %l10, !tbaa !24
  %t137 = load i64, ptr %l9, !tbaa !24
  %t140 = icmp slt i64 %t136, %t137
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb32, label %bb33
bb32:
  br label %bb41
bb33:
  br label %bb34
bb34:
  %t144 = load i64, ptr %l6, !tbaa !24
  %t145 = load i64, ptr %l10, !tbaa !24
  %t146 = load i64, ptr %l8, !tbaa !24
  %t149 = mul i64 %t145, %t146
  %t152 = add i64 %t144, %t149
  store i64 %t152, ptr %l11, !tbaa !24
  %t154 = load i64, ptr %l11, !tbaa !24
  %t156 = icmp sgt i64 %t154, 0
  br i1 %t156, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s6
  %t158 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s6, ptr %t158, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s6)
  br label %bb38
bb38:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t162 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t162, ptr %l124, !tbaa !27
  %t163 = load i64, ptr %l11, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i32, ptr %t166, i64 %t163
  %t168 = load i32, ptr %t167, !tbaa !33
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %t160, ptr %t161, i32 %t168)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t172 = load i64, ptr %l10, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l10, !tbaa !24
  br label %bb31
bb41:
  %t176 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t176, i8 62)
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb212
bb44:
  %t178 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t180 = trunc i64 19 to i32
  %t181 = icmp eq i32 %t178, %t180
  br i1 %t181, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb52
bb47:
  store %olang.scope zeroinitializer, ptr %s8
  %t183 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s8, ptr %t183, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb48
bb48:
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l133, !tbaa !29
  %t186 = load ptr, ptr %l1, !tbaa !29
  store ptr %t186, ptr %l134, !tbaa !29
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/generic:Program", ptr %t187, i32 0, i32 2
  %t190 = load i32, ptr %l2, !tbaa !23
  %t193 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t189, i32 %t190)
  store i32 %t193, ptr %l138
  br label %bb49
bb49:
  %t194 = load ptr, ptr %l133, !tbaa !29
  %t195 = load ptr, ptr %l134, !tbaa !29
  %t196 = load i32, ptr %l138, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %t194, ptr %t195, i32 %t196)
  br label %bb50
bb50:
  %t197 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t197, i8 62)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s8)
  br label %bb212
bb52:
  %t199 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t201 = trunc i64 20 to i32
  %t202 = icmp eq i32 %t199, %t201
  br i1 %t202, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb67
bb55:
  store %olang.scope zeroinitializer, ptr %s9
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/generic:Program", ptr %t204, i32 0, i32 2
  %t207 = load i32, ptr %l2, !tbaa !23
  %t210 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t206, i32 %t207)
  store i64 %t210, ptr %l145
  br label %bb56
bb56:
  %t211 = load i64, ptr %l145, !tbaa !24
  store i64 %t211, ptr %l12, !tbaa !24
  %t212 = load i64, ptr %l12, !tbaa !24
  %t213 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t216 = and i64 %t212, %t213
  %t218 = icmp ne i64 %t216, 0
  br i1 %t218, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s10
  %t220 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s10, ptr %t220, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) })
  br label %bb59
bb58:
  br label %bb60
bb59:
  call void @__olang_scope_close(ptr %s10)
  br label %bb60
bb60:
  %t222 = load ptr, ptr %l0, !tbaa !29
  store ptr %t222, ptr %l151, !tbaa !29
  %t223 = load ptr, ptr %l1, !tbaa !29
  store ptr %t223, ptr %l152, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/generic:Program", ptr %t224, i32 0, i32 2
  %t227 = load i32, ptr %l2, !tbaa !23
  %t230 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t226, i32 %t227)
  store i32 %t230, ptr %l156
  br label %bb61
bb61:
  %t231 = load ptr, ptr %l151, !tbaa !29
  %t232 = load ptr, ptr %l152, !tbaa !29
  %t233 = load i32, ptr %l156, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %t231, ptr %t232, i32 %t233)
  br label %bb62
bb62:
  %t234 = load ptr, ptr %l1, !tbaa !29
  store ptr %t234, ptr %l157, !tbaa !29
  %t235 = load i64, ptr %l12, !tbaa !24
  %t236 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t239 = and i64 %t235, %t236
  %t241 = icmp ne i64 %t239, 0
  br i1 %t241, label %bb63, label %bb64
bb63:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l162, !tbaa !27
  br label %bb65
bb64:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l162, !tbaa !27
  br label %bb65
bb65:
  %t243 = load ptr, ptr %l157, !tbaa !29
  %t244 = load { i64, ptr }, ptr %l162, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s9, ptr %t243, { i64, ptr } %t244)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s9)
  br label %bb212
bb67:
  %t245 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t247 = trunc i64 21 to i32
  %t248 = icmp eq i32 %t245, %t247
  br i1 %t248, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb157
bb70:
  store %olang.scope zeroinitializer, ptr %s11
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"compiler/generic:Program", ptr %t250, i32 0, i32 2
  %t253 = load i32, ptr %l2, !tbaa !23
  %t256 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t252, i32 %t253)
  store i32 %t256, ptr %l168
  br label %bb71
bb71:
  %t257 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t258 = load i32, ptr %l168, !tbaa !23
  %t260 = icmp ne i32 %t258, %t257
  br i1 %t260, label %bb72, label %bb73
bb72:
  store %olang.scope zeroinitializer, ptr %s12
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l171, !tbaa !29
  %t263 = load ptr, ptr %l1, !tbaa !29
  store ptr %t263, ptr %l172, !tbaa !29
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/generic:Program", ptr %t264, i32 0, i32 2
  %t267 = load i32, ptr %l2, !tbaa !23
  %t270 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t266, i32 %t267)
  store i32 %t270, ptr %l176
  br label %bb74
bb73:
  br label %bb81
bb74:
  %t271 = load ptr, ptr %l171, !tbaa !29
  %t272 = load ptr, ptr %l172, !tbaa !29
  %t273 = load i32, ptr %l176, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %t271, ptr %t272, i32 %t273)
  br label %bb75
bb75:
  %t274 = load ptr, ptr %l1, !tbaa !29
  store ptr %t274, ptr %l177, !tbaa !29
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/generic:Program", ptr %t275, i32 0, i32 2
  %t278 = load i32, ptr %l2, !tbaa !23
  %t281 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t277, i32 %t278)
  store i1 %t281, ptr %l181
  br label %bb76
bb76:
  %t282 = load i1, ptr %l181, !tbaa !21
  br i1 %t282, label %bb77, label %bb78
bb77:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l182, !tbaa !27
  br label %bb79
bb78:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l182, !tbaa !27
  br label %bb79
bb79:
  %t283 = load ptr, ptr %l177, !tbaa !29
  %t284 = load { i64, ptr }, ptr %l182, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s12, ptr %t283, { i64, ptr } %t284)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s11)
  br label %ret
bb81:
  %t285 = load ptr, ptr %l1, !tbaa !29
  store ptr %t285, ptr %l183, !tbaa !29
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/generic:Program", ptr %t286, i32 0, i32 2
  %t289 = load i32, ptr %l2, !tbaa !23
  %t292 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t288, i32 %t289)
  store i1 %t292, ptr %l187
  br label %bb82
bb82:
  %t293 = load i1, ptr %l187, !tbaa !21
  br i1 %t293, label %bb83, label %bb84
bb83:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l188, !tbaa !27
  br label %bb85
bb84:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l188, !tbaa !27
  br label %bb85
bb85:
  %t294 = load ptr, ptr %l183, !tbaa !29
  %t295 = load { i64, ptr }, ptr %l188, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s11, ptr %t294, { i64, ptr } %t295)
  br label %bb86
bb86:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/generic:Program", ptr %t296, i32 0, i32 2
  store ptr %t298, ptr %l190, !tbaa !29
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/generic:Program", ptr %t299, i32 0, i32 2
  %t302 = load i32, ptr %l2, !tbaa !23
  %t305 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t301, i32 %t302)
  store i32 %t305, ptr %l194
  br label %bb87
bb87:
  %t306 = load ptr, ptr %l190, !tbaa !29
  %t307 = load i32, ptr %l194, !tbaa !23
  %t308 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t306, i32 %t307)
  store { i64, ptr } %t308, ptr %l195
  br label %bb88
bb88:
  %t309 = load { i64, ptr }, ptr %l195, !tbaa !27
  store { i64, ptr } %t309, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t310 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t310, 0
  store i64 %t312, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t314 = load i64, ptr %l15, !tbaa !24
  %t315 = load i64, ptr %l14, !tbaa !24
  %t318 = icmp sgt i64 %t314, %t315
  br i1 %t318, label %bb89, label %bb90
bb89:
  %t320 = load i64, ptr %l16, !tbaa !24
  %t322 = icmp sgt i64 %t320, 0
  br i1 %t322, label %bb91, label %bb92
bb90:
  store i64 0, ptr %l201, !tbaa !24
  br label %bb94
bb91:
  %t324 = load i64, ptr %l15, !tbaa !24
  %t325 = load i64, ptr %l14, !tbaa !24
  %t328 = sub i64 %t324, %t325
  %t329 = load i64, ptr %l16, !tbaa !24
  %t332 = add i64 %t328, %t329
  %t334 = sub i64 %t332, 1
  %t335 = load i64, ptr %l16, !tbaa !24
  %t338 = sdiv i64 %t334, %t335
  store i64 %t338, ptr %l204, !tbaa !24
  br label %bb93
bb92:
  store i64 0, ptr %l204, !tbaa !24
  br label %bb93
bb93:
  %t340 = load i64, ptr %l204, !tbaa !24
  store i64 %t340, ptr %l201, !tbaa !24
  br label %bb94
bb94:
  %t341 = load i64, ptr %l201, !tbaa !24
  store i64 %t341, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb95
bb95:
  %t342 = load i64, ptr %l18, !tbaa !24
  %t343 = load i64, ptr %l17, !tbaa !24
  %t346 = icmp slt i64 %t342, %t343
  %t348 = xor i1 %t346, true
  br i1 %t348, label %bb96, label %bb97
bb96:
  br label %bb105
bb97:
  br label %bb98
bb98:
  %t350 = load i64, ptr %l14, !tbaa !24
  %t351 = load i64, ptr %l18, !tbaa !24
  %t352 = load i64, ptr %l16, !tbaa !24
  %t355 = mul i64 %t351, %t352
  %t358 = add i64 %t350, %t355
  store i64 %t358, ptr %l19, !tbaa !24
  %t360 = load i64, ptr %l19, !tbaa !24
  %t362 = icmp sgt i64 %t360, 0
  br i1 %t362, label %bb99, label %bb100
bb99:
  store %olang.scope zeroinitializer, ptr %s15
  %t364 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s15, ptr %t364, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) })
  br label %bb101
bb100:
  br label %bb102
bb101:
  call void @__olang_scope_close(ptr %s15)
  br label %bb102
bb102:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = load ptr, ptr %l1, !tbaa !29
  %t368 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t368, ptr %l227, !tbaa !27
  %t369 = load i64, ptr %l19, !tbaa !24
  %t371 = getelementptr { i64, ptr }, ptr %l227, i32 0, i32 1
  %t372 = load ptr, ptr %t371, !tbaa !27
  %t373 = getelementptr i32, ptr %t372, i64 %t369
  %t374 = load i32, ptr %t373, !tbaa !33
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %t366, ptr %t367, i32 %t374)
  br label %bb103
bb103:
  br label %bb104
bb104:
  %t378 = load i64, ptr %l18, !tbaa !24
  %t380 = add i64 %t378, 1
  store i64 %t380, ptr %l18, !tbaa !24
  br label %bb95
bb105:
  %t382 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t382, i8 41)
  br label %bb106
bb106:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t386 = getelementptr %"compiler/generic:Program", ptr %t384, i32 0, i32 2
  %t387 = load i32, ptr %l2, !tbaa !23
  %t390 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s11, ptr %t386, i32 %t387)
  store { i64, ptr } %t390, ptr %l236
  br label %bb107
bb107:
  %t391 = load { i64, ptr }, ptr %l236, !tbaa !27
  store { i64, ptr } %t391, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t392 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t394 = extractvalue { i64, ptr } %t392, 0
  store i64 %t394, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t396 = load i64, ptr %l22, !tbaa !24
  %t397 = load i64, ptr %l21, !tbaa !24
  %t400 = icmp sgt i64 %t396, %t397
  br i1 %t400, label %bb108, label %bb109
bb108:
  %t402 = load i64, ptr %l23, !tbaa !24
  %t404 = icmp sgt i64 %t402, 0
  br i1 %t404, label %bb110, label %bb111
bb109:
  store i64 0, ptr %l242, !tbaa !24
  br label %bb113
bb110:
  %t406 = load i64, ptr %l22, !tbaa !24
  %t407 = load i64, ptr %l21, !tbaa !24
  %t410 = sub i64 %t406, %t407
  %t411 = load i64, ptr %l23, !tbaa !24
  %t414 = add i64 %t410, %t411
  %t416 = sub i64 %t414, 1
  %t417 = load i64, ptr %l23, !tbaa !24
  %t420 = sdiv i64 %t416, %t417
  store i64 %t420, ptr %l245, !tbaa !24
  br label %bb112
bb111:
  store i64 0, ptr %l245, !tbaa !24
  br label %bb112
bb112:
  %t422 = load i64, ptr %l245, !tbaa !24
  store i64 %t422, ptr %l242, !tbaa !24
  br label %bb113
bb113:
  %t423 = load i64, ptr %l242, !tbaa !24
  store i64 %t423, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb114
bb114:
  store %olang.scope zeroinitializer, ptr %s18
  %t424 = load i64, ptr %l25, !tbaa !24
  %t425 = load i64, ptr %l24, !tbaa !24
  %t428 = icmp slt i64 %t424, %t425
  %t430 = xor i1 %t428, true
  br i1 %t430, label %bb115, label %bb116
bb115:
  call void @__olang_scope_close(ptr %s18)
  br label %bb124
bb116:
  br label %bb117
bb117:
  %t432 = load i64, ptr %l21, !tbaa !24
  %t433 = load i64, ptr %l25, !tbaa !24
  %t434 = load i64, ptr %l23, !tbaa !24
  %t437 = mul i64 %t433, %t434
  %t440 = add i64 %t432, %t437
  store i64 %t440, ptr %l26, !tbaa !24
  %t442 = load ptr, ptr %l1, !tbaa !29
  store ptr %t442, ptr %l263, !tbaa !29
  %t443 = load i64, ptr %l26, !tbaa !24
  %t445 = icmp sgt i64 %t443, 0
  br i1 %t445, label %bb118, label %bb119
bb118:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l266, !tbaa !27
  br label %bb120
bb119:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l266, !tbaa !27
  br label %bb120
bb120:
  %t447 = load ptr, ptr %l263, !tbaa !29
  %t448 = load { i64, ptr }, ptr %l266, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s18, ptr %t447, { i64, ptr } %t448)
  br label %bb121
bb121:
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t450 = load ptr, ptr %l1, !tbaa !29
  %t451 = load i64, ptr %l26, !tbaa !24
  %t453 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t454 = load ptr, ptr %t453, !tbaa !27
  %t455 = getelementptr i32, ptr %t454, i64 %t451
  %t456 = load i32, ptr %t455, !tbaa !33
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %t449, ptr %t450, i32 %t456)
  br label %bb122
bb122:
  call void @__olang_scope_close(ptr %s18)
  br label %bb123
bb123:
  %t460 = load i64, ptr %l25, !tbaa !24
  %t462 = add i64 %t460, 1
  store i64 %t462, ptr %l25, !tbaa !24
  br label %bb114
bb124:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = getelementptr %"compiler/generic:Program", ptr %t464, i32 0, i32 2
  store ptr %t466, ptr %l274, !tbaa !29
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t469 = getelementptr %"compiler/generic:Program", ptr %t467, i32 0, i32 2
  %t470 = load i32, ptr %l2, !tbaa !23
  %t473 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t469, i32 %t470)
  store i32 %t473, ptr %l278
  br label %bb125
bb125:
  %t474 = load ptr, ptr %l274, !tbaa !29
  %t475 = load i32, ptr %l278, !tbaa !23
  %t476 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t474, i32 %t475)
  store { i64, ptr } %t476, ptr %l279
  br label %bb126
bb126:
  %t477 = load { i64, ptr }, ptr %l279, !tbaa !27
  store { i64, ptr } %t477, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t478 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t480 = extractvalue { i64, ptr } %t478, 0
  store i64 %t480, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t482 = load i64, ptr %l29, !tbaa !24
  %t483 = load i64, ptr %l28, !tbaa !24
  %t486 = icmp sgt i64 %t482, %t483
  br i1 %t486, label %bb127, label %bb128
bb127:
  %t488 = load i64, ptr %l30, !tbaa !24
  %t490 = icmp sgt i64 %t488, 0
  br i1 %t490, label %bb129, label %bb130
bb128:
  store i64 0, ptr %l285, !tbaa !24
  br label %bb132
bb129:
  %t492 = load i64, ptr %l29, !tbaa !24
  %t493 = load i64, ptr %l28, !tbaa !24
  %t496 = sub i64 %t492, %t493
  %t497 = load i64, ptr %l30, !tbaa !24
  %t500 = add i64 %t496, %t497
  %t502 = sub i64 %t500, 1
  %t503 = load i64, ptr %l30, !tbaa !24
  %t506 = sdiv i64 %t502, %t503
  store i64 %t506, ptr %l288, !tbaa !24
  br label %bb131
bb130:
  store i64 0, ptr %l288, !tbaa !24
  br label %bb131
bb131:
  %t508 = load i64, ptr %l288, !tbaa !24
  store i64 %t508, ptr %l285, !tbaa !24
  br label %bb132
bb132:
  %t509 = load i64, ptr %l285, !tbaa !24
  store i64 %t509, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb133
bb133:
  store %olang.scope zeroinitializer, ptr %s21
  %t510 = load i64, ptr %l32, !tbaa !24
  %t511 = load i64, ptr %l31, !tbaa !24
  %t514 = icmp slt i64 %t510, %t511
  %t516 = xor i1 %t514, true
  br i1 %t516, label %bb134, label %bb135
bb134:
  call void @__olang_scope_close(ptr %s21)
  br label %bb154
bb135:
  br label %bb136
bb136:
  %t518 = load i64, ptr %l28, !tbaa !24
  %t519 = load i64, ptr %l32, !tbaa !24
  %t520 = load i64, ptr %l30, !tbaa !24
  %t523 = mul i64 %t519, %t520
  %t526 = add i64 %t518, %t523
  store i64 %t526, ptr %l33, !tbaa !24
  %t528 = load ptr, ptr %l1, !tbaa !29
  store ptr %t528, ptr %l306, !tbaa !29
  %t529 = load i64, ptr %l33, !tbaa !24
  %t531 = icmp sgt i64 %t529, 0
  br i1 %t531, label %bb137, label %bb138
bb137:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l309, !tbaa !27
  br label %bb139
bb138:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l309, !tbaa !27
  br label %bb139
bb139:
  %t533 = load ptr, ptr %l306, !tbaa !29
  %t534 = load { i64, ptr }, ptr %l309, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s21, ptr %t533, { i64, ptr } %t534)
  br label %bb140
bb140:
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t537 = getelementptr %"compiler/generic:Program", ptr %t535, i32 0, i32 2
  %t538 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t538, ptr %l312, !tbaa !27
  %t539 = load i64, ptr %l33, !tbaa !24
  %t541 = getelementptr { i64, ptr }, ptr %l312, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !27
  %t543 = getelementptr i32, ptr %t542, i64 %t539
  %t544 = load i32, ptr %t543, !tbaa !33
  %t547 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t537, i32 %t544)
  store i32 %t547, ptr %l315
  br label %bb141
bb141:
  %t548 = load i32, ptr %l315, !tbaa !23
  store i32 %t548, ptr %l34, !tbaa !23
  %t549 = load i32, ptr %l34, !tbaa !23
  %t550 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t553 = icmp ne i32 %t549, %t550
  br i1 %t553, label %bb142, label %bb143
bb142:
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t557 = getelementptr %"compiler/generic:Program", ptr %t555, i32 0, i32 2
  %t558 = load i32, ptr %l34, !tbaa !23
  %t561 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t557, i32 %t558)
  store i32 %t561, ptr %l323
  br label %bb144
bb143:
  store i1 false, ptr %l319, !tbaa !21
  br label %bb145
bb144:
  %t562 = load i32, ptr %l323, !range !{i32 0, i32 33}
  %t564 = trunc i64 18 to i32
  %t565 = icmp eq i32 %t562, %t564
  store i1 %t565, ptr %l319, !tbaa !21
  br label %bb145
bb145:
  %t567 = load i1, ptr %l319, !tbaa !21
  br i1 %t567, label %bb146, label %bb147
bb146:
  %t568 = load ptr, ptr %l1, !tbaa !29
  store ptr %t568, ptr %l326, !tbaa !29
  %t569 = load ptr, ptr %l0, !tbaa !29
  store ptr %t569, ptr %l327, !tbaa !29
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t572 = getelementptr %"compiler/generic:Program", ptr %t570, i32 0, i32 2
  store ptr %t572, ptr %l329, !tbaa !29
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = getelementptr %"compiler/generic:Program", ptr %t573, i32 0, i32 2
  %t576 = load i32, ptr %l34, !tbaa !23
  %t579 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t575, i32 %t576)
  store i32 %t579, ptr %l333
  br label %bb148
bb147:
  br label %bb152
bb148:
  %t580 = load ptr, ptr %l329, !tbaa !29
  %t581 = load i32, ptr %l333, !tbaa !23
  %t582 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t580, i32 %t581)
  store i32 %t582, ptr %l334
  br label %bb149
bb149:
  %t583 = load ptr, ptr %l327, !tbaa !29
  %t584 = load i32, ptr %l334, !tbaa !23
  %t585 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t583, i32 %t584)
  store { i64, ptr } %t585, ptr %l335
  br label %bb150
bb150:
  %t586 = load ptr, ptr %l326, !tbaa !29
  %t587 = load { i64, ptr }, ptr %l335, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t586, { i64, ptr } %t587)
  br label %bb151
bb151:
  br label %bb152
bb152:
  call void @__olang_scope_close(ptr %s21)
  br label %bb153
bb153:
  %t588 = load i64, ptr %l32, !tbaa !24
  %t590 = add i64 %t588, 1
  store i64 %t590, ptr %l32, !tbaa !24
  br label %bb133
bb154:
  %t592 = load ptr, ptr %l1, !tbaa !29
  store ptr %t592, ptr %l338, !tbaa !29
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t595 = getelementptr %"compiler/generic:Program", ptr %t593, i32 0, i32 2
  %t596 = load i32, ptr %l2, !tbaa !23
  %t598 = inttoptr i64 0 to ptr
  %t601 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseText(ptr %v0, ptr %s11, ptr %t598, ptr %t595, i32 %t596)
  store { i64, ptr } %t601, ptr %l343
  br label %bb155
bb155:
  %t602 = load { i64, ptr }, ptr %l343, !tbaa !27
  %t603 = extractvalue { i64, ptr } %t602, 0
  %t604 = extractvalue { i64, ptr } %t602, 1
  %t605 = mul i64 %t603, 1
  %t606 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t605)
  call void @llvm.memcpy.p0.p0.i64(ptr %t606, ptr %t604, i64 %t605, i1 false)
  %t607 = insertvalue { i64, ptr } undef, i64 %t603, 0
  %t608 = insertvalue { i64, ptr } %t607, ptr %t606, 1
  %t609 = load ptr, ptr %l338, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s11, ptr %t609, { i64, ptr } %t608)
  br label %bb156
bb156:
  call void @__olang_scope_close(ptr %s11)
  br label %bb212
bb157:
  %t611 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t613 = trunc i64 26 to i32
  %t614 = icmp eq i32 %t611, %t613
  br i1 %t614, label %bb158, label %bb159
bb158:
  br label %bb160
bb159:
  br label %bb163
bb160:
  store %olang.scope zeroinitializer, ptr %s24
  %t616 = load ptr, ptr %l1, !tbaa !29
  store ptr %t616, ptr %l347, !tbaa !29
  %t617 = load ptr, ptr %l0, !tbaa !29
  %t619 = getelementptr %"compiler/generic:Program", ptr %t617, i32 0, i32 2
  %t620 = load i32, ptr %l2, !tbaa !23
  %t623 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t619, i32 %t620)
  store i64 %t623, ptr %l351
  br label %bb161
bb161:
  %t624 = load i64, ptr %l351, !tbaa !24
  %t625 = call i64 @__olang_fmt_i64(ptr null, i64 %t624)
  %t626 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t625)
  %t627 = call i64 @__olang_fmt_i64(ptr %t626, i64 %t624)
  %t628 = insertvalue { i64, ptr } undef, i64 %t625, 0
  %t629 = insertvalue { i64, ptr } %t628, ptr %t626, 1
  %t631 = extractvalue { i64, ptr } %t629, 0
  %t632 = extractvalue { i64, ptr } %t629, 1
  %t633 = mul i64 %t631, 1
  %t634 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t633)
  call void @llvm.memcpy.p0.p0.i64(ptr %t634, ptr %t632, i64 %t633, i1 false)
  %t635 = insertvalue { i64, ptr } undef, i64 %t631, 0
  %t636 = insertvalue { i64, ptr } %t635, ptr %t634, 1
  %t637 = load ptr, ptr %l347, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s24, ptr %t637, { i64, ptr } %t636)
  br label %bb162
bb162:
  call void @__olang_scope_close(ptr %s24)
  br label %bb212
bb163:
  %t639 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t641 = trunc i64 32 to i32
  %t642 = icmp eq i32 %t639, %t641
  br i1 %t642, label %bb164, label %bb165
bb164:
  br label %bb166
bb165:
  br label %bb205
bb166:
  %t644 = load ptr, ptr %l0, !tbaa !29
  %t646 = getelementptr %"compiler/generic:Program", ptr %t644, i32 0, i32 2
  %t647 = load i32, ptr %l2, !tbaa !23
  %t650 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValName(ptr %v0, ptr %t646, i32 %t647)
  store i32 %t650, ptr %l359
  br label %bb167
bb167:
  %t651 = load i32, ptr %l359, !tbaa !23
  store i32 %t651, ptr %l35, !tbaa !23
  %t652 = load ptr, ptr %l0, !tbaa !29
  %t654 = getelementptr %"compiler/generic:Program", ptr %t652, i32 0, i32 2
  store ptr %t654, ptr %l361, !tbaa !29
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t657 = getelementptr %"compiler/generic:Program", ptr %t655, i32 0, i32 2
  %t658 = load i32, ptr %l2, !tbaa !23
  %t661 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t657, i32 %t658)
  store i32 %t661, ptr %l365
  br label %bb168
bb168:
  %t662 = load ptr, ptr %l361, !tbaa !29
  %t663 = load i32, ptr %l365, !tbaa !23
  %t664 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t662, i32 %t663)
  store { i64, ptr } %t664, ptr %l366
  br label %bb169
bb169:
  %t665 = load { i64, ptr }, ptr %l366, !tbaa !27
  store { i64, ptr } %t665, ptr %l36, !tbaa !27
  %t666 = load i32, ptr %l35, !tbaa !23
  %t668 = icmp sge i32 %t666, 0
  br i1 %t668, label %bb170, label %bb171
bb170:
  %t670 = load ptr, ptr %l1, !tbaa !29
  store ptr %t670, ptr %l369, !tbaa !29
  %t671 = load ptr, ptr %l0, !tbaa !29
  store ptr %t671, ptr %l370, !tbaa !29
  %t672 = load ptr, ptr %l0, !tbaa !29
  %t674 = getelementptr %"compiler/generic:Program", ptr %t672, i32 0, i32 2
  %t675 = load i32, ptr %l35, !tbaa !23
  %t678 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t674, i32 %t675)
  store i32 %t678, ptr %l374
  br label %bb172
bb171:
  %t679 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t681 = extractvalue { i64, ptr } %t679, 0
  %t683 = icmp ne i64 %t681, 1
  br i1 %t683, label %bb175, label %bb176
bb172:
  %t685 = load ptr, ptr %l370, !tbaa !29
  %t686 = load i32, ptr %l374, !tbaa !23
  %t687 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t685, i32 %t686)
  store { i64, ptr } %t687, ptr %l375
  br label %bb173
bb173:
  %t688 = load ptr, ptr %l369, !tbaa !29
  %t689 = load { i64, ptr }, ptr %l375, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t688, { i64, ptr } %t689)
  br label %bb174
bb174:
  br label %bb204
bb175:
  %t690 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t690, i8 123)
  br label %bb177
bb176:
  br label %bb178
bb177:
  br label %bb178
bb178:
  store i64 0, ptr %l37, !tbaa !24
  %t692 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t694 = extractvalue { i64, ptr } %t692, 0
  store i64 %t694, ptr %l38, !tbaa !24
  store i64 1, ptr %l39, !tbaa !24
  %t696 = load i64, ptr %l38, !tbaa !24
  %t697 = load i64, ptr %l37, !tbaa !24
  %t700 = icmp sgt i64 %t696, %t697
  br i1 %t700, label %bb179, label %bb180
bb179:
  %t702 = load i64, ptr %l39, !tbaa !24
  %t704 = icmp sgt i64 %t702, 0
  br i1 %t704, label %bb181, label %bb182
bb180:
  store i64 0, ptr %l385, !tbaa !24
  br label %bb184
bb181:
  %t706 = load i64, ptr %l38, !tbaa !24
  %t707 = load i64, ptr %l37, !tbaa !24
  %t710 = sub i64 %t706, %t707
  %t711 = load i64, ptr %l39, !tbaa !24
  %t714 = add i64 %t710, %t711
  %t716 = sub i64 %t714, 1
  %t717 = load i64, ptr %l39, !tbaa !24
  %t720 = sdiv i64 %t716, %t717
  store i64 %t720, ptr %l388, !tbaa !24
  br label %bb183
bb182:
  store i64 0, ptr %l388, !tbaa !24
  br label %bb183
bb183:
  %t722 = load i64, ptr %l388, !tbaa !24
  store i64 %t722, ptr %l385, !tbaa !24
  br label %bb184
bb184:
  %t723 = load i64, ptr %l385, !tbaa !24
  store i64 %t723, ptr %l40, !tbaa !24
  store i64 0, ptr %l41, !tbaa !24
  br label %bb185
bb185:
  %t724 = load i64, ptr %l41, !tbaa !24
  %t725 = load i64, ptr %l40, !tbaa !24
  %t728 = icmp slt i64 %t724, %t725
  %t730 = xor i1 %t728, true
  br i1 %t730, label %bb186, label %bb187
bb186:
  br label %bb199
bb187:
  br label %bb188
bb188:
  %t732 = load i64, ptr %l37, !tbaa !24
  %t733 = load i64, ptr %l41, !tbaa !24
  %t734 = load i64, ptr %l39, !tbaa !24
  %t737 = mul i64 %t733, %t734
  %t740 = add i64 %t732, %t737
  store i64 %t740, ptr %l42, !tbaa !24
  %t742 = load i64, ptr %l42, !tbaa !24
  %t744 = icmp sgt i64 %t742, 0
  br i1 %t744, label %bb189, label %bb190
bb189:
  store %olang.scope zeroinitializer, ptr %s32
  %t746 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s32, ptr %t746, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d30, i32 0, i32 1) })
  br label %bb191
bb190:
  br label %bb192
bb191:
  call void @__olang_scope_close(ptr %s32)
  br label %bb192
bb192:
  %t748 = load ptr, ptr %l1, !tbaa !29
  store ptr %t748, ptr %l409, !tbaa !29
  %t749 = load ptr, ptr %l0, !tbaa !29
  store ptr %t749, ptr %l410, !tbaa !29
  %t750 = load ptr, ptr %l0, !tbaa !29
  %t752 = getelementptr %"compiler/generic:Program", ptr %t750, i32 0, i32 2
  store ptr %t752, ptr %l412, !tbaa !29
  %t753 = load ptr, ptr %l0, !tbaa !29
  %t755 = getelementptr %"compiler/generic:Program", ptr %t753, i32 0, i32 2
  store ptr %t755, ptr %l414, !tbaa !29
  %t756 = load ptr, ptr %l0, !tbaa !29
  %t758 = getelementptr %"compiler/generic:Program", ptr %t756, i32 0, i32 2
  %t759 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t759, ptr %l417, !tbaa !27
  %t760 = load i64, ptr %l42, !tbaa !24
  %t762 = getelementptr { i64, ptr }, ptr %l417, i32 0, i32 1
  %t763 = load ptr, ptr %t762, !tbaa !27
  %t764 = getelementptr i32, ptr %t763, i64 %t760
  %t765 = load i32, ptr %t764, !tbaa !33
  %t768 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t758, i32 %t765)
  store i32 %t768, ptr %l420
  br label %bb193
bb193:
  %t769 = load ptr, ptr %l414, !tbaa !29
  %t770 = load i32, ptr %l420, !tbaa !23
  %t771 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t769, i32 %t770)
  store i32 %t771, ptr %l421
  br label %bb194
bb194:
  %t772 = load ptr, ptr %l412, !tbaa !29
  %t773 = load i32, ptr %l421, !tbaa !23
  %t774 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t772, i32 %t773)
  store i32 %t774, ptr %l422
  br label %bb195
bb195:
  %t775 = load ptr, ptr %l410, !tbaa !29
  %t776 = load i32, ptr %l422, !tbaa !23
  %t777 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t775, i32 %t776)
  store { i64, ptr } %t777, ptr %l423
  br label %bb196
bb196:
  %t778 = load ptr, ptr %l409, !tbaa !29
  %t779 = load { i64, ptr }, ptr %l423, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t778, { i64, ptr } %t779)
  br label %bb197
bb197:
  br label %bb198
bb198:
  %t780 = load i64, ptr %l41, !tbaa !24
  %t782 = add i64 %t780, 1
  store i64 %t782, ptr %l41, !tbaa !24
  br label %bb185
bb199:
  %t784 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t786 = extractvalue { i64, ptr } %t784, 0
  %t788 = icmp ne i64 %t786, 1
  br i1 %t788, label %bb200, label %bb201
bb200:
  %t790 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t790, i8 125)
  br label %bb202
bb201:
  br label %bb203
bb202:
  br label %bb203
bb203:
  br label %bb204
bb204:
  br label %bb212
bb205:
  br i1 true, label %bb206, label %bb207
bb206:
  br label %bb208
bb207:
  br label %bb211
bb208:
  store %olang.scope zeroinitializer, ptr %s35
  %t792 = load ptr, ptr %l1, !tbaa !29
  store ptr %t792, ptr %l430, !tbaa !29
  %t793 = load ptr, ptr %l0, !tbaa !29
  %t795 = getelementptr %"compiler/generic:Program", ptr %t793, i32 0, i32 2
  %t796 = load i32, ptr %l2, !tbaa !23
  %t798 = inttoptr i64 0 to ptr
  %t801 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s35, ptr %t798, ptr %t795, i32 %t796)
  store { i64, ptr } %t801, ptr %l435
  br label %bb209
bb209:
  %t802 = load { i64, ptr }, ptr %l435, !tbaa !27
  %t803 = extractvalue { i64, ptr } %t802, 0
  %t804 = extractvalue { i64, ptr } %t802, 1
  %t805 = mul i64 %t803, 1
  %t806 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t805)
  call void @llvm.memcpy.p0.p0.i64(ptr %t806, ptr %t804, i64 %t805, i1 false)
  %t807 = insertvalue { i64, ptr } undef, i64 %t803, 0
  %t808 = insertvalue { i64, ptr } %t807, ptr %t806, 1
  %t809 = load ptr, ptr %l430, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s35, ptr %t809, { i64, ptr } %t808)
  br label %bb210
bb210:
  call void @__olang_scope_close(ptr %s35)
  br label %bb212
bb211:
  call void @__olang_check_failed(ptr @olang_loc_4061a14fd68eb9ea_8e3a57d2843d246e)
  unreachable
bb212:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eroundTrip(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l13 = alloca { i64, ptr }
  %l16 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eParseCanon(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t2)
  %t6 = extractvalue { i32, i32 } %t5, 1
  %t7 = extractvalue { i32, i32 } %t5, 0
  store i32 %t7, ptr %l7
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i32 %t6, ptr %l6
  br label %bb1
bb1:
  %t10 = load i32, ptr %l6, !tbaa !23
  store i32 %t10, ptr %l3, !tbaa !23
  br label %bb4
bb2:
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb4:
  %t12 = load i32, ptr %l3, !tbaa !23
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t18 = inttoptr i64 0 to ptr
  %t21 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s0, ptr %t18, ptr %t15, i32 %t12)
  store { i64, ptr } %t21, ptr %l13
  br label %bb5
bb5:
  %t22 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  %t24 = extractvalue { i64, ptr } %t22, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v1, { i64, ptr } %t28, { i64, ptr } %t29)
  store i1 %t32, ptr %l16
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t33 = load i1, ptr %l16, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esameUpToShape(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca i32
  %l11 = alloca i1
  %l16 = alloca i32
  %l22 = alloca i32
  %l26 = alloca i1
  %l30 = alloca i32
  %l34 = alloca i32
  %l37 = alloca i32
  %l41 = alloca i32
  %l47 = alloca i1
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
  store i1 %t9, ptr %l11
  br label %bb1
bb1:
  %t10 = load i1, ptr %l11, !tbaa !21
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
  store i32 %t18, ptr %l16
  br label %bb5
bb5:
  %t19 = load i32, ptr %l16, !range !{i32 0, i32 33}
  %t21 = trunc i64 20 to i32
  %t22 = icmp eq i32 %t19, %t21
  store i1 %t22, ptr %l3, !tbaa !21
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l22
  br label %bb6
bb6:
  %t31 = load i32, ptr %l22, !range !{i32 0, i32 33}
  %t33 = trunc i64 20 to i32
  %t34 = icmp eq i32 %t31, %t33
  store i1 %t34, ptr %l4, !tbaa !21
  %t36 = load i1, ptr %l3, !tbaa !21
  br i1 %t36, label %bb7, label %bb8
bb7:
  %t38 = load i1, ptr %l4, !tbaa !21
  store i1 %t38, ptr %l26, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l26, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t42 = load i1, ptr %l3, !tbaa !21
  br i1 %t42, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l1, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l34
  br label %bb15
bb14:
  %t51 = load i32, ptr %l1, !tbaa !23
  store i32 %t51, ptr %l30, !tbaa !23
  br label %bb16
bb15:
  %t53 = load i32, ptr %l34, !tbaa !23
  store i32 %t53, ptr %l30, !tbaa !23
  br label %bb16
bb16:
  %t54 = load i32, ptr %l30, !tbaa !23
  store i32 %t54, ptr %l5, !tbaa !23
  %t55 = load i1, ptr %l4, !tbaa !21
  br i1 %t55, label %bb17, label %bb18
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l2, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l41
  br label %bb19
bb18:
  %t64 = load i32, ptr %l2, !tbaa !23
  store i32 %t64, ptr %l37, !tbaa !23
  br label %bb20
bb19:
  %t66 = load i32, ptr %l41, !tbaa !23
  store i32 %t66, ptr %l37, !tbaa !23
  br label %bb20
bb20:
  %t67 = load i32, ptr %l37, !tbaa !23
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %l5, !tbaa !23
  %t76 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t70, i32 %t71, i32 %t67)
  store i1 %t76, ptr %l47
  br label %bb21
bb21:
  %t77 = load i1, ptr %l47, !tbaa !21
  store i1 %t77, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunbounded(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca %"compiler/names:Entry"
  %l4 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i32
  %l19 = alloca i64
  %l24 = alloca ptr
  %l26 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca %"compiler/names:Entry"
  %l35 = alloca ptr
  %l39 = alloca { i64, [3 x i64] }
  %l40 = alloca %"compiler/diagmsg:Msg"
  %l41 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 47
  %t4 = load i32, ptr %l1, !tbaa !23
  %t6 = sext i32 %t4 to i64
  %t9 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t6)
  %t10 = extractvalue { i32, i1 } %t9, 1
  %t11 = extractvalue { i32, i1 } %t9, 0
  store i32 %t11, ptr %l10
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store i1 %t10, ptr %l9
  br label %bb1
bb1:
  %t14 = load i1, ptr %l9, !tbaa !21
  store i1 %t14, ptr %l4, !tbaa !21
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 47
  %t19 = load i32, ptr %l1, !tbaa !23
  %t21 = sext i32 %t19 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t18, i64 %t21, i1 true)
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 12
  %t27 = load i32, ptr %l1, !tbaa !23
  %t29 = sext i32 %t27 to i64
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t26, i64 %t29)
  store i64 %t32, ptr %l19
  br label %bb9
bb9:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %l2, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/names:Resolver", ptr %t37, i32 0, i32 1
  %t40 = load i64, ptr %l2, !tbaa !24
  %t43 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t39, i64 %t40)
  store ptr %t43, ptr %l24
  br label %bb10
bb10:
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t46 = getelementptr %"compiler/names:Table", ptr %t44, i32 0, i32 0
  store ptr %t46, ptr %l26, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 13
  %t50 = load i32, ptr %l1, !tbaa !23
  %t52 = sext i32 %t50 to i64
  %t55 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t49, i64 %t52)
  store i64 %t55, ptr %l31
  br label %bb11
bb11:
  %t56 = load ptr, ptr %l26, !tbaa !29
  %t57 = load i64, ptr %l31, !tbaa !24
  %t58 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t56, i64 %t57)
  store %"compiler/names:Entry" %t58, ptr %l32
  br label %bb12
bb12:
  %t59 = load %"compiler/names:Entry", ptr %l32
  store %"compiler/names:Entry" %t59, ptr %l3
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/load:Loader", ptr %t63, i32 0, i32 4
  %t66 = load ptr, ptr %t65, !tbaa !29
  store ptr %t66, ptr %l35, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l2, !tbaa !24
  %t69 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 1
  %t70 = load %"compiler/source:Span", ptr %t69
  %t74 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t67, i64 %t68, %"compiler/source:Span" %t70)
  store { i64, [3 x i64] } %t74, ptr %l39
  br label %bb13
bb13:
  %t75 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnboundedInstantiation(ptr %v0)
  store %"compiler/diagmsg:Msg" %t75, ptr %l40
  br label %bb14
bb14:
  %t76 = load ptr, ptr %l35, !tbaa !29
  %t77 = load { i64, [3 x i64] }, ptr %l39
  %t78 = load %"compiler/diagmsg:Msg", ptr %l40
  %t79 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t76, { i64, [3 x i64] } %t77, %"compiler/diagmsg:Msg" %t78)
  store i64 %t79, ptr %l41
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyKind(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, i32 %a3, ptr %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l14 = alloca i32
  %l18 = alloca i32
  %l21 = alloca ptr
  %l24 = alloca ptr
  %l28 = alloca i32
  %l32 = alloca i32
  %l35 = alloca i32
  %l37 = alloca ptr
  %l42 = alloca ptr
  %l46 = alloca i32
  %l50 = alloca i32
  %l53 = alloca i32
  %l55 = alloca ptr
  %l58 = alloca ptr
  %l62 = alloca i32
  %l66 = alloca i32
  %l69 = alloca i32
  %l71 = alloca ptr
  %l76 = alloca ptr
  %l80 = alloca i32
  %l84 = alloca i32
  %l87 = alloca i32
  %l89 = alloca ptr
  %l94 = alloca ptr
  %l98 = alloca i32
  %l102 = alloca i32
  %l104 = alloca i32
  %l106 = alloca ptr
  %l109 = alloca ptr
  %l113 = alloca i32
  %l117 = alloca i32
  %l119 = alloca i32
  %l121 = alloca ptr
  %l124 = alloca ptr
  %l128 = alloca i32
  %l132 = alloca i32
  %l134 = alloca i32
  %l136 = alloca ptr
  %l141 = alloca ptr
  %l145 = alloca i32
  %l149 = alloca i32
  %l151 = alloca i32
  %l153 = alloca ptr
  %l160 = alloca ptr
  %l164 = alloca i32
  %l168 = alloca i32
  %l170 = alloca i32
  %l172 = alloca ptr
  %l180 = alloca { i64, ptr }
  %l181 = alloca ptr
  %l185 = alloca { i64, ptr }
  %l187 = alloca i1
  %l190 = alloca ptr
  %l193 = alloca ptr
  %l197 = alloca i32
  %l201 = alloca i32
  %l203 = alloca i32
  %l205 = alloca ptr
  %l210 = alloca ptr
  %l214 = alloca i32
  %l218 = alloca i32
  %l221 = alloca i32
  %l223 = alloca ptr
  %l227 = alloca ptr
  %l230 = alloca ptr
  %s18 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i1 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t2, i32 0, i32 11
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 11
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load i32, ptr %l1, !range !{i32 0, i32 33}
  %t12 = trunc i64 18 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb14
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l14
  br label %bb4
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l18
  br label %bb5
bb5:
  %t29 = load i32, ptr %l14, !tbaa !23
  %t30 = load i32, ptr %l18, !tbaa !23
  %t31 = icmp ne i32 %t29, %t30
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l21, !tbaa !29
  %t34 = load ptr, ptr %l21, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 11
  %t36 = load i64, ptr %t35, !tbaa !24
  %t38 = sub i64 %t36, 1
  %t40 = load ptr, ptr %l21, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 11
  store i64 %t38, ptr %t41, !tbaa !24
  store i32 65536, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l24, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l2, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l28
  br label %bb9
bb9:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  %t54 = load i32, ptr %l3, !tbaa !23
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t57, ptr %l32
  br label %bb10
bb10:
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t59 = load i1, ptr %l5, !tbaa !21
  %t60 = load ptr, ptr %l24, !tbaa !29
  %t61 = load i32, ptr %l28, !tbaa !23
  %t62 = load i32, ptr %l32, !tbaa !23
  %t65 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyLists(ptr %v0, ptr %v1, ptr %t60, i32 %t61, i32 %t62, ptr %t58, i1 %t59)
  store i32 %t65, ptr %l35
  %t66 = icmp ne i32 %t65, 0
  br i1 %t66, label %bb12, label %ok.67, !prof !99
ok.67:
  br label %bb11
bb11:
  br label %bb13
bb12:
  %t68 = load i32, ptr %l35, !tbaa !23
  %t69 = lshr i32 %t68, 16
  %t70 = and i32 %t68, 65535
  %t71 = icmp eq i32 %t69, 1
  %t72 = select i1 %t71, i32 1, i32 0
  %t73 = icmp eq i32 %t68, 0
  %t74 = shl i32 %t72, 16
  %t75 = or i32 %t74, %t70
  %t76 = select i1 %t73, i32 0, i32 %t75
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l37, !tbaa !29
  %t78 = load ptr, ptr %l37, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 11
  %t80 = load i64, ptr %t79, !tbaa !24
  %t82 = sub i64 %t80, 1
  %t84 = load ptr, ptr %l37, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 11
  store i64 %t82, ptr %t85, !tbaa !24
  store i32 %t76, ptr %rv
  br label %ret
bb13:
  br label %bb105
bb14:
  %t87 = load i32, ptr %l1, !range !{i32 0, i32 33}
  %t89 = trunc i64 19 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb28
bb17:
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l42, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Program", ptr %t93, i32 0, i32 2
  %t96 = load i32, ptr %l2, !tbaa !23
  %t99 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t95, i32 %t96)
  store i32 %t99, ptr %l46
  br label %bb18
bb18:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l3, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t106, ptr %l50
  br label %bb19
bb19:
  %t107 = load ptr, ptr %l4, !tbaa !29
  %t108 = load i1, ptr %l5, !tbaa !21
  %t109 = load ptr, ptr %l42, !tbaa !29
  %t110 = load i32, ptr %l46, !tbaa !23
  %t111 = load i32, ptr %l50, !tbaa !23
  %t114 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %t109, i32 %t110, i32 %t111, ptr %t107, i1 false, i1 %t108)
  store i32 %t114, ptr %l53
  %t115 = icmp ne i32 %t114, 0
  br i1 %t115, label %bb21, label %ok.116, !prof !99
ok.116:
  br label %bb20
bb20:
  br label %bb22
bb21:
  %t117 = load i32, ptr %l53, !tbaa !23
  %t118 = lshr i32 %t117, 16
  %t119 = and i32 %t117, 65535
  %t120 = icmp eq i32 %t118, 1
  %t121 = select i1 %t120, i32 1, i32 0
  %t122 = icmp eq i32 %t117, 0
  %t123 = shl i32 %t121, 16
  %t124 = or i32 %t123, %t119
  %t125 = select i1 %t122, i32 0, i32 %t124
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l55, !tbaa !29
  %t127 = load ptr, ptr %l55, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 11
  %t129 = load i64, ptr %t128, !tbaa !24
  %t131 = sub i64 %t129, 1
  %t133 = load ptr, ptr %l55, !tbaa !29
  %t134 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 11
  store i64 %t131, ptr %t134, !tbaa !24
  store i32 %t125, ptr %rv
  br label %ret
bb22:
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l58, !tbaa !29
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/generic:Program", ptr %t137, i32 0, i32 2
  %t140 = load i32, ptr %l2, !tbaa !23
  %t143 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t139, i32 %t140)
  store i32 %t143, ptr %l62
  br label %bb23
bb23:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/generic:Program", ptr %t144, i32 0, i32 2
  %t147 = load i32, ptr %l3, !tbaa !23
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t146, i32 %t147)
  store i32 %t150, ptr %l66
  br label %bb24
bb24:
  %t151 = load ptr, ptr %l4, !tbaa !29
  %t152 = load i1, ptr %l5, !tbaa !21
  %t153 = load ptr, ptr %l58, !tbaa !29
  %t154 = load i32, ptr %l62, !tbaa !23
  %t155 = load i32, ptr %l66, !tbaa !23
  %t158 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %t153, i32 %t154, i32 %t155, ptr %t151, i1 false, i1 %t152)
  store i32 %t158, ptr %l69
  %t159 = icmp ne i32 %t158, 0
  br i1 %t159, label %bb26, label %ok.160, !prof !99
ok.160:
  br label %bb25
bb25:
  br label %bb27
bb26:
  %t161 = load i32, ptr %l69, !tbaa !23
  %t162 = lshr i32 %t161, 16
  %t163 = and i32 %t161, 65535
  %t164 = icmp eq i32 %t162, 1
  %t165 = select i1 %t164, i32 1, i32 0
  %t166 = icmp eq i32 %t161, 0
  %t167 = shl i32 %t165, 16
  %t168 = or i32 %t167, %t163
  %t169 = select i1 %t166, i32 0, i32 %t168
  %t170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t170, ptr %l71, !tbaa !29
  %t171 = load ptr, ptr %l71, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Program", ptr %t171, i32 0, i32 11
  %t173 = load i64, ptr %t172, !tbaa !24
  %t175 = sub i64 %t173, 1
  %t177 = load ptr, ptr %l71, !tbaa !29
  %t178 = getelementptr %"compiler/generic:Program", ptr %t177, i32 0, i32 11
  store i64 %t175, ptr %t178, !tbaa !24
  store i32 %t169, ptr %rv
  br label %ret
bb27:
  br label %bb105
bb28:
  %t180 = load i32, ptr %l1, !range !{i32 0, i32 33}
  %t182 = trunc i64 20 to i32
  %t183 = icmp eq i32 %t180, %t182
  br i1 %t183, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb37
bb31:
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l76, !tbaa !29
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/generic:Program", ptr %t186, i32 0, i32 2
  %t189 = load i32, ptr %l2, !tbaa !23
  %t192 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t188, i32 %t189)
  store i32 %t192, ptr %l80
  br label %bb32
bb32:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/generic:Program", ptr %t193, i32 0, i32 2
  %t196 = load i32, ptr %l3, !tbaa !23
  %t199 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t195, i32 %t196)
  store i32 %t199, ptr %l84
  br label %bb33
bb33:
  %t200 = load ptr, ptr %l4, !tbaa !29
  %t201 = load i1, ptr %l5, !tbaa !21
  %t202 = load ptr, ptr %l76, !tbaa !29
  %t203 = load i32, ptr %l80, !tbaa !23
  %t204 = load i32, ptr %l84, !tbaa !23
  %t207 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %t202, i32 %t203, i32 %t204, ptr %t200, i1 false, i1 %t201)
  store i32 %t207, ptr %l87
  %t208 = icmp ne i32 %t207, 0
  br i1 %t208, label %bb35, label %ok.209, !prof !99
ok.209:
  br label %bb34
bb34:
  br label %bb36
bb35:
  %t210 = load i32, ptr %l87, !tbaa !23
  %t211 = lshr i32 %t210, 16
  %t212 = and i32 %t210, 65535
  %t213 = icmp eq i32 %t211, 1
  %t214 = select i1 %t213, i32 1, i32 0
  %t215 = icmp eq i32 %t210, 0
  %t216 = shl i32 %t214, 16
  %t217 = or i32 %t216, %t212
  %t218 = select i1 %t215, i32 0, i32 %t217
  %t219 = load ptr, ptr %l0, !tbaa !29
  store ptr %t219, ptr %l89, !tbaa !29
  %t220 = load ptr, ptr %l89, !tbaa !29
  %t221 = getelementptr %"compiler/generic:Program", ptr %t220, i32 0, i32 11
  %t222 = load i64, ptr %t221, !tbaa !24
  %t224 = sub i64 %t222, 1
  %t226 = load ptr, ptr %l89, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t226, i32 0, i32 11
  store i64 %t224, ptr %t227, !tbaa !24
  store i32 %t218, ptr %rv
  br label %ret
bb36:
  br label %bb105
bb37:
  %t229 = load i32, ptr %l1, !range !{i32 0, i32 33}
  %t231 = trunc i64 21 to i32
  %t232 = icmp eq i32 %t229, %t231
  br i1 %t232, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb56
bb40:
  %t234 = load ptr, ptr %l0, !tbaa !29
  store ptr %t234, ptr %l94, !tbaa !29
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/generic:Program", ptr %t235, i32 0, i32 2
  %t238 = load i32, ptr %l2, !tbaa !23
  %t241 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t237, i32 %t238)
  store i32 %t241, ptr %l98
  br label %bb41
bb41:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/generic:Program", ptr %t242, i32 0, i32 2
  %t245 = load i32, ptr %l3, !tbaa !23
  %t248 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t244, i32 %t245)
  store i32 %t248, ptr %l102
  br label %bb42
bb42:
  %t249 = load ptr, ptr %l4, !tbaa !29
  %t250 = load ptr, ptr %l94, !tbaa !29
  %t251 = load i32, ptr %l98, !tbaa !23
  %t252 = load i32, ptr %l102, !tbaa !23
  %t254 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyLists(ptr %v0, ptr %v1, ptr %t250, i32 %t251, i32 %t252, ptr %t249, i1 false)
  store i32 %t254, ptr %l104
  %t255 = icmp ne i32 %t254, 0
  br i1 %t255, label %bb44, label %ok.256, !prof !99
ok.256:
  br label %bb43
bb43:
  br label %bb45
bb44:
  %t257 = load i32, ptr %l104, !tbaa !23
  %t258 = lshr i32 %t257, 16
  %t259 = and i32 %t257, 65535
  %t260 = icmp eq i32 %t258, 1
  %t261 = select i1 %t260, i32 1, i32 0
  %t262 = icmp eq i32 %t257, 0
  %t263 = shl i32 %t261, 16
  %t264 = or i32 %t263, %t259
  %t265 = select i1 %t262, i32 0, i32 %t264
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l106, !tbaa !29
  %t267 = load ptr, ptr %l106, !tbaa !29
  %t268 = getelementptr %"compiler/generic:Program", ptr %t267, i32 0, i32 11
  %t269 = load i64, ptr %t268, !tbaa !24
  %t271 = sub i64 %t269, 1
  %t273 = load ptr, ptr %l106, !tbaa !29
  %t274 = getelementptr %"compiler/generic:Program", ptr %t273, i32 0, i32 11
  store i64 %t271, ptr %t274, !tbaa !24
  store i32 %t265, ptr %rv
  br label %ret
bb45:
  %t276 = load ptr, ptr %l0, !tbaa !29
  store ptr %t276, ptr %l109, !tbaa !29
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/generic:Program", ptr %t277, i32 0, i32 2
  %t280 = load i32, ptr %l2, !tbaa !23
  %t283 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t279, i32 %t280)
  store i32 %t283, ptr %l113
  br label %bb46
bb46:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/generic:Program", ptr %t284, i32 0, i32 2
  %t287 = load i32, ptr %l3, !tbaa !23
  %t290 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t286, i32 %t287)
  store i32 %t290, ptr %l117
  br label %bb47
bb47:
  %t291 = load ptr, ptr %l4, !tbaa !29
  %t292 = load ptr, ptr %l109, !tbaa !29
  %t293 = load i32, ptr %l113, !tbaa !23
  %t294 = load i32, ptr %l117, !tbaa !23
  %t296 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %t292, i32 %t293, i32 %t294, ptr %t291, i1 false, i1 false)
  store i32 %t296, ptr %l119
  %t297 = icmp ne i32 %t296, 0
  br i1 %t297, label %bb49, label %ok.298, !prof !99
ok.298:
  br label %bb48
bb48:
  br label %bb50
bb49:
  %t299 = load i32, ptr %l119, !tbaa !23
  %t300 = lshr i32 %t299, 16
  %t301 = and i32 %t299, 65535
  %t302 = icmp eq i32 %t300, 1
  %t303 = select i1 %t302, i32 1, i32 0
  %t304 = icmp eq i32 %t299, 0
  %t305 = shl i32 %t303, 16
  %t306 = or i32 %t305, %t301
  %t307 = select i1 %t304, i32 0, i32 %t306
  %t308 = load ptr, ptr %l0, !tbaa !29
  store ptr %t308, ptr %l121, !tbaa !29
  %t309 = load ptr, ptr %l121, !tbaa !29
  %t310 = getelementptr %"compiler/generic:Program", ptr %t309, i32 0, i32 11
  %t311 = load i64, ptr %t310, !tbaa !24
  %t313 = sub i64 %t311, 1
  %t315 = load ptr, ptr %l121, !tbaa !29
  %t316 = getelementptr %"compiler/generic:Program", ptr %t315, i32 0, i32 11
  store i64 %t313, ptr %t316, !tbaa !24
  store i32 %t307, ptr %rv
  br label %ret
bb50:
  %t318 = load ptr, ptr %l0, !tbaa !29
  store ptr %t318, ptr %l124, !tbaa !29
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/generic:Program", ptr %t319, i32 0, i32 2
  %t322 = load i32, ptr %l2, !tbaa !23
  %t325 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t321, i32 %t322)
  store i32 %t325, ptr %l128
  br label %bb51
bb51:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/generic:Program", ptr %t326, i32 0, i32 2
  %t329 = load i32, ptr %l3, !tbaa !23
  %t332 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t328, i32 %t329)
  store i32 %t332, ptr %l132
  br label %bb52
bb52:
  %t333 = load ptr, ptr %l4, !tbaa !29
  %t334 = load ptr, ptr %l124, !tbaa !29
  %t335 = load i32, ptr %l128, !tbaa !23
  %t336 = load i32, ptr %l132, !tbaa !23
  %t338 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyErrs(ptr %v0, ptr %v1, ptr %t334, i32 %t335, i32 %t336, ptr %t333)
  store i32 %t338, ptr %l134
  %t339 = icmp ne i32 %t338, 0
  br i1 %t339, label %bb54, label %ok.340, !prof !99
ok.340:
  br label %bb53
bb53:
  br label %bb55
bb54:
  %t341 = load i32, ptr %l134, !tbaa !23
  %t342 = lshr i32 %t341, 16
  %t343 = and i32 %t341, 65535
  %t344 = icmp eq i32 %t342, 1
  %t345 = select i1 %t344, i32 1, i32 0
  %t346 = icmp eq i32 %t341, 0
  %t347 = shl i32 %t345, 16
  %t348 = or i32 %t347, %t343
  %t349 = select i1 %t346, i32 0, i32 %t348
  %t350 = load ptr, ptr %l0, !tbaa !29
  store ptr %t350, ptr %l136, !tbaa !29
  %t351 = load ptr, ptr %l136, !tbaa !29
  %t352 = getelementptr %"compiler/generic:Program", ptr %t351, i32 0, i32 11
  %t353 = load i64, ptr %t352, !tbaa !24
  %t355 = sub i64 %t353, 1
  %t357 = load ptr, ptr %l136, !tbaa !29
  %t358 = getelementptr %"compiler/generic:Program", ptr %t357, i32 0, i32 11
  store i64 %t355, ptr %t358, !tbaa !24
  store i32 %t349, ptr %rv
  br label %ret
bb55:
  br label %bb105
bb56:
  %t360 = load i32, ptr %l1, !range !{i32 0, i32 33}
  %t362 = trunc i64 30 to i32
  %t363 = icmp eq i32 %t360, %t362
  br i1 %t363, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb65
bb59:
  %t365 = load ptr, ptr %l0, !tbaa !29
  store ptr %t365, ptr %l141, !tbaa !29
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t368 = getelementptr %"compiler/generic:Program", ptr %t366, i32 0, i32 2
  %t369 = load i32, ptr %l2, !tbaa !23
  %t372 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t368, i32 %t369)
  store i32 %t372, ptr %l145
  br label %bb60
bb60:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = getelementptr %"compiler/generic:Program", ptr %t373, i32 0, i32 2
  %t376 = load i32, ptr %l3, !tbaa !23
  %t379 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t375, i32 %t376)
  store i32 %t379, ptr %l149
  br label %bb61
bb61:
  %t380 = load ptr, ptr %l4, !tbaa !29
  %t381 = load ptr, ptr %l141, !tbaa !29
  %t382 = load i32, ptr %l145, !tbaa !23
  %t383 = load i32, ptr %l149, !tbaa !23
  %t385 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyErrs(ptr %v0, ptr %v1, ptr %t381, i32 %t382, i32 %t383, ptr %t380)
  store i32 %t385, ptr %l151
  %t386 = icmp ne i32 %t385, 0
  br i1 %t386, label %bb63, label %ok.387, !prof !99
ok.387:
  br label %bb62
bb62:
  br label %bb64
bb63:
  %t388 = load i32, ptr %l151, !tbaa !23
  %t389 = lshr i32 %t388, 16
  %t390 = and i32 %t388, 65535
  %t391 = icmp eq i32 %t389, 1
  %t392 = select i1 %t391, i32 1, i32 0
  %t393 = icmp eq i32 %t388, 0
  %t394 = shl i32 %t392, 16
  %t395 = or i32 %t394, %t390
  %t396 = select i1 %t393, i32 0, i32 %t395
  %t397 = load ptr, ptr %l0, !tbaa !29
  store ptr %t397, ptr %l153, !tbaa !29
  %t398 = load ptr, ptr %l153, !tbaa !29
  %t399 = getelementptr %"compiler/generic:Program", ptr %t398, i32 0, i32 11
  %t400 = load i64, ptr %t399, !tbaa !24
  %t402 = sub i64 %t400, 1
  %t404 = load ptr, ptr %l153, !tbaa !29
  %t405 = getelementptr %"compiler/generic:Program", ptr %t404, i32 0, i32 11
  store i64 %t402, ptr %t405, !tbaa !24
  store i32 %t396, ptr %rv
  br label %ret
bb64:
  br label %bb105
bb65:
  %t407 = load i32, ptr %l1, !range !{i32 0, i32 33}
  %t409 = trunc i64 22 to i32
  %t410 = icmp eq i32 %t407, %t409
  br i1 %t410, label %bb66, label %bb67
bb66:
  br label %bb70
bb67:
  %t412 = load i32, ptr %l1, !range !{i32 0, i32 33}
  %t414 = trunc i64 23 to i32
  %t415 = icmp eq i32 %t412, %t414
  br i1 %t415, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb76
bb70:
  %t417 = load ptr, ptr %l0, !tbaa !29
  store ptr %t417, ptr %l160, !tbaa !29
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t420 = getelementptr %"compiler/generic:Program", ptr %t418, i32 0, i32 2
  %t421 = load i32, ptr %l2, !tbaa !23
  %t424 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t420, i32 %t421)
  store i32 %t424, ptr %l164
  br label %bb71
bb71:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/generic:Program", ptr %t425, i32 0, i32 2
  %t428 = load i32, ptr %l3, !tbaa !23
  %t431 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t427, i32 %t428)
  store i32 %t431, ptr %l168
  br label %bb72
bb72:
  %t432 = load ptr, ptr %l4, !tbaa !29
  %t433 = load ptr, ptr %l160, !tbaa !29
  %t434 = load i32, ptr %l164, !tbaa !23
  %t435 = load i32, ptr %l168, !tbaa !23
  %t437 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyLists(ptr %v0, ptr %v1, ptr %t433, i32 %t434, i32 %t435, ptr %t432, i1 false)
  store i32 %t437, ptr %l170
  %t438 = icmp ne i32 %t437, 0
  br i1 %t438, label %bb74, label %ok.439, !prof !99
ok.439:
  br label %bb73
bb73:
  br label %bb75
bb74:
  %t440 = load i32, ptr %l170, !tbaa !23
  %t441 = lshr i32 %t440, 16
  %t442 = and i32 %t440, 65535
  %t443 = icmp eq i32 %t441, 1
  %t444 = select i1 %t443, i32 1, i32 0
  %t445 = icmp eq i32 %t440, 0
  %t446 = shl i32 %t444, 16
  %t447 = or i32 %t446, %t442
  %t448 = select i1 %t445, i32 0, i32 %t447
  %t449 = load ptr, ptr %l0, !tbaa !29
  store ptr %t449, ptr %l172, !tbaa !29
  %t450 = load ptr, ptr %l172, !tbaa !29
  %t451 = getelementptr %"compiler/generic:Program", ptr %t450, i32 0, i32 11
  %t452 = load i64, ptr %t451, !tbaa !24
  %t454 = sub i64 %t452, 1
  %t456 = load ptr, ptr %l172, !tbaa !29
  %t457 = getelementptr %"compiler/generic:Program", ptr %t456, i32 0, i32 11
  store i64 %t454, ptr %t457, !tbaa !24
  store i32 %t448, ptr %rv
  br label %ret
bb75:
  br label %bb105
bb76:
  %t459 = load i32, ptr %l1, !range !{i32 0, i32 33}
  %t461 = trunc i64 24 to i32
  %t462 = icmp eq i32 %t459, %t461
  br i1 %t462, label %bb77, label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb91
bb79:
  store %olang.scope zeroinitializer, ptr %s18
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = getelementptr %"compiler/generic:Program", ptr %t464, i32 0, i32 2
  %t467 = load i32, ptr %l2, !tbaa !23
  %t470 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %s18, ptr %t466, i32 %t467)
  store { i64, ptr } %t470, ptr %l180
  br label %bb80
bb80:
  store ptr %l180, ptr %l181
  %t471 = load ptr, ptr %l0, !tbaa !29
  %t473 = getelementptr %"compiler/generic:Program", ptr %t471, i32 0, i32 2
  %t474 = load i32, ptr %l3, !tbaa !23
  %t477 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %s18, ptr %t473, i32 %t474)
  store { i64, ptr } %t477, ptr %l185
  br label %bb81
bb81:
  %t478 = load ptr, ptr %l181
  %t480 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2fsource_3aNameId_3e_26(ptr %t478, ptr %l185)
  store i1 %t480, ptr %l187
  br label %bb82
bb82:
  %t481 = load i1, ptr %l187, !tbaa !21
  %t482 = xor i1 %t481, true
  br i1 %t482, label %bb83, label %bb84
bb83:
  call void @__olang_scope_close(ptr %s18)
  %t484 = load ptr, ptr %l0, !tbaa !29
  store ptr %t484, ptr %l190, !tbaa !29
  %t485 = load ptr, ptr %l190, !tbaa !29
  %t486 = getelementptr %"compiler/generic:Program", ptr %t485, i32 0, i32 11
  %t487 = load i64, ptr %t486, !tbaa !24
  %t489 = sub i64 %t487, 1
  %t491 = load ptr, ptr %l190, !tbaa !29
  %t492 = getelementptr %"compiler/generic:Program", ptr %t491, i32 0, i32 11
  store i64 %t489, ptr %t492, !tbaa !24
  store i32 65536, ptr %rv
  br label %ret
bb84:
  br label %bb85
bb85:
  %t494 = load ptr, ptr %l0, !tbaa !29
  store ptr %t494, ptr %l193, !tbaa !29
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t497 = getelementptr %"compiler/generic:Program", ptr %t495, i32 0, i32 2
  %t498 = load i32, ptr %l2, !tbaa !23
  %t501 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t497, i32 %t498)
  store i32 %t501, ptr %l197
  br label %bb86
bb86:
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t504 = getelementptr %"compiler/generic:Program", ptr %t502, i32 0, i32 2
  %t505 = load i32, ptr %l3, !tbaa !23
  %t508 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t504, i32 %t505)
  store i32 %t508, ptr %l201
  br label %bb87
bb87:
  %t509 = load ptr, ptr %l4, !tbaa !29
  %t510 = load ptr, ptr %l193, !tbaa !29
  %t511 = load i32, ptr %l197, !tbaa !23
  %t512 = load i32, ptr %l201, !tbaa !23
  %t514 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyLists(ptr %v0, ptr %v1, ptr %t510, i32 %t511, i32 %t512, ptr %t509, i1 false)
  store i32 %t514, ptr %l203
  %t515 = icmp ne i32 %t514, 0
  br i1 %t515, label %bb89, label %ok.516, !prof !99
ok.516:
  br label %bb88
bb88:
  br label %bb90
bb89:
  %t517 = load i32, ptr %l203, !tbaa !23
  %t518 = lshr i32 %t517, 16
  %t519 = and i32 %t517, 65535
  %t520 = icmp eq i32 %t518, 1
  %t521 = select i1 %t520, i32 1, i32 0
  %t522 = icmp eq i32 %t517, 0
  %t523 = shl i32 %t521, 16
  %t524 = or i32 %t523, %t519
  %t525 = select i1 %t522, i32 0, i32 %t524
  call void @__olang_scope_close(ptr %s18)
  %t526 = load ptr, ptr %l0, !tbaa !29
  store ptr %t526, ptr %l205, !tbaa !29
  %t527 = load ptr, ptr %l205, !tbaa !29
  %t528 = getelementptr %"compiler/generic:Program", ptr %t527, i32 0, i32 11
  %t529 = load i64, ptr %t528, !tbaa !24
  %t531 = sub i64 %t529, 1
  %t533 = load ptr, ptr %l205, !tbaa !29
  %t534 = getelementptr %"compiler/generic:Program", ptr %t533, i32 0, i32 11
  store i64 %t531, ptr %t534, !tbaa !24
  store i32 %t525, ptr %rv
  br label %ret
bb90:
  call void @__olang_scope_close(ptr %s18)
  br label %bb105
bb91:
  %t536 = load i32, ptr %l1, !range !{i32 0, i32 33}
  %t538 = trunc i64 29 to i32
  %t539 = icmp eq i32 %t536, %t538
  br i1 %t539, label %bb92, label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb100
bb94:
  %t541 = load ptr, ptr %l0, !tbaa !29
  store ptr %t541, ptr %l210, !tbaa !29
  %t542 = load ptr, ptr %l0, !tbaa !29
  %t544 = getelementptr %"compiler/generic:Program", ptr %t542, i32 0, i32 2
  %t545 = load i32, ptr %l2, !tbaa !23
  %t548 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t544, i32 %t545)
  store i32 %t548, ptr %l214
  br label %bb95
bb95:
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t551 = getelementptr %"compiler/generic:Program", ptr %t549, i32 0, i32 2
  %t552 = load i32, ptr %l3, !tbaa !23
  %t555 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t551, i32 %t552)
  store i32 %t555, ptr %l218
  br label %bb96
bb96:
  %t556 = load ptr, ptr %l4, !tbaa !29
  %t557 = load i1, ptr %l5, !tbaa !21
  %t558 = load ptr, ptr %l210, !tbaa !29
  %t559 = load i32, ptr %l214, !tbaa !23
  %t560 = load i32, ptr %l218, !tbaa !23
  %t563 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %t558, i32 %t559, i32 %t560, ptr %t556, i1 false, i1 %t557)
  store i32 %t563, ptr %l221
  %t564 = icmp ne i32 %t563, 0
  br i1 %t564, label %bb98, label %ok.565, !prof !99
ok.565:
  br label %bb97
bb97:
  br label %bb99
bb98:
  %t566 = load i32, ptr %l221, !tbaa !23
  %t567 = lshr i32 %t566, 16
  %t568 = and i32 %t566, 65535
  %t569 = icmp eq i32 %t567, 1
  %t570 = select i1 %t569, i32 1, i32 0
  %t571 = icmp eq i32 %t566, 0
  %t572 = shl i32 %t570, 16
  %t573 = or i32 %t572, %t568
  %t574 = select i1 %t571, i32 0, i32 %t573
  %t575 = load ptr, ptr %l0, !tbaa !29
  store ptr %t575, ptr %l223, !tbaa !29
  %t576 = load ptr, ptr %l223, !tbaa !29
  %t577 = getelementptr %"compiler/generic:Program", ptr %t576, i32 0, i32 11
  %t578 = load i64, ptr %t577, !tbaa !24
  %t580 = sub i64 %t578, 1
  %t582 = load ptr, ptr %l223, !tbaa !29
  %t583 = getelementptr %"compiler/generic:Program", ptr %t582, i32 0, i32 11
  store i64 %t580, ptr %t583, !tbaa !24
  store i32 %t574, ptr %rv
  br label %ret
bb99:
  br label %bb105
bb100:
  br i1 true, label %bb101, label %bb102
bb101:
  br label %bb103
bb102:
  br label %bb104
bb103:
  %t585 = load ptr, ptr %l0, !tbaa !29
  store ptr %t585, ptr %l227, !tbaa !29
  %t586 = load ptr, ptr %l227, !tbaa !29
  %t587 = getelementptr %"compiler/generic:Program", ptr %t586, i32 0, i32 11
  %t588 = load i64, ptr %t587, !tbaa !24
  %t590 = sub i64 %t588, 1
  %t592 = load ptr, ptr %l227, !tbaa !29
  %t593 = getelementptr %"compiler/generic:Program", ptr %t592, i32 0, i32 11
  store i64 %t590, ptr %t593, !tbaa !24
  store i32 65536, ptr %rv
  br label %ret
bb104:
  call void @__olang_check_failed(ptr @olang_loc_f83e897c6289299d_c5b35c0c7cd0f831)
  unreachable
bb105:
  %t595 = load ptr, ptr %l0, !tbaa !29
  store ptr %t595, ptr %l230, !tbaa !29
  %t596 = load ptr, ptr %l230, !tbaa !29
  %t597 = getelementptr %"compiler/generic:Program", ptr %t596, i32 0, i32 11
  %t598 = load i64, ptr %t597, !tbaa !24
  %t600 = sub i64 %t598, 1
  %t602 = load ptr, ptr %l230, !tbaa !29
  %t603 = getelementptr %"compiler/generic:Program", ptr %t602, i32 0, i32 11
  store i64 %t600, ptr %t603, !tbaa !24
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ebinds(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l50 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l59 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l10, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb13
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t17 = load ptr, ptr %l16, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 9}
  %t23 = icmp eq i64 %t21, 7
  store i1 %t23, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l17, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32 }, ptr %t27, i32 0, i32 1
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l3, !tbaa !23
  br label %bb13
bb8:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t32 = load ptr, ptr %l22, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 9}
  %t38 = icmp eq i64 %t36, 5
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t42, i32 0, i32 2
  %t44 = load i32, ptr %t43
  store i32 %t44, ptr %l3, !tbaa !23
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l3, !tbaa !23
  %t48 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %t46, i32 %t47, i64 %t48)
  br label %bb14
bb14:
  br label %bb44
bb15:
  %t52 = load ptr, ptr %l1, !tbaa !29
  store ptr %t52, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t53 = load ptr, ptr %l31, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb16, label %bb17
bb16:
  %t56 = load ptr, ptr %l31, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 9}
  %t59 = icmp eq i64 %t57, 2
  store i1 %t59, ptr %l32, !tbaa !21
  br label %bb17
bb17:
  %t60 = load i1, ptr %l32, !tbaa !21
  br i1 %t60, label %bb18, label %bb19
bb18:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t63, i32 0, i32 2
  %t65 = load { i64, ptr }, ptr %t64
  store { i64, ptr } %t65, ptr %l4, !tbaa !27
  br label %bb24
bb19:
  %t67 = load ptr, ptr %l1, !tbaa !29
  store ptr %t67, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t68 = load ptr, ptr %l37, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb20, label %bb21
bb20:
  %t71 = load ptr, ptr %l37, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 9}
  %t74 = icmp eq i64 %t72, 6
  store i1 %t74, ptr %l38, !tbaa !21
  br label %bb21
bb21:
  %t75 = load i1, ptr %l38, !tbaa !21
  br i1 %t75, label %bb22, label %bb23
bb22:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t78, i32 0, i32 2
  %t80 = load { i64, ptr }, ptr %t79
  store { i64, ptr } %t80, ptr %l4, !tbaa !27
  br label %bb24
bb23:
  br label %bb32
bb24:
  %t82 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t82, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t84 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  store i64 %t86, ptr %l7, !tbaa !24
  br label %bb25
bb25:
  %t88 = load i64, ptr %l6, !tbaa !24
  %t89 = load i64, ptr %l7, !tbaa !24
  %t92 = icmp slt i64 %t88, %t89
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb26, label %bb27
bb26:
  br label %bb31
bb27:
  br label %bb28
bb28:
  %t96 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t96, ptr %l50, !tbaa !27
  %t97 = load i64, ptr %l6, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr ptr, ptr %t100, i64 %t97
  %t102 = load ptr, ptr %t101, !tbaa !39
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ebinds(ptr %v0, ptr %v1, ptr %t104, ptr %t102, i64 %t106)
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t110 = load i64, ptr %l6, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l6, !tbaa !24
  br label %bb25
bb31:
  br label %bb44
bb32:
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t115 = load ptr, ptr %l58, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb33, label %bb34
bb33:
  %t118 = load ptr, ptr %l58, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 9}
  %t121 = icmp eq i64 %t119, 8
  store i1 %t121, ptr %l59, !tbaa !21
  br label %bb34
bb34:
  %t122 = load i1, ptr %l59, !tbaa !21
  br i1 %t122, label %bb35, label %bb36
bb35:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t125, i32 0, i32 2
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l9, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l9, !tbaa !29
  %t131 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ebinds(ptr %v0, ptr %v1, ptr %t129, ptr %t130, i64 %t131)
  br label %bb38
bb38:
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_961f770be6209277_34282562e2239643)
  unreachable
bb44:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ematched(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l15 = alloca i64
  %l24 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Match", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i64 %t9, ptr %l15
  br label %bb1
bb1:
  %t10 = load i64, ptr %l15, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/ast:Match", ptr %t11, i32 0, i32 3
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp slt i64 %t20, %t21
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb3, label %bb4
bb3:
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t28, ptr %l24, !tbaa !27
  %t29 = load i64, ptr %l4, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr ptr, ptr %t32, i64 %t29
  %t34 = load ptr, ptr %t33, !tbaa !39
  store ptr %t34, ptr %l6, !tbaa !29
  %t36 = load ptr, ptr %l6, !tbaa !29
  %t38 = getelementptr %"compiler/ast:Case", ptr %t36, i32 0, i32 1
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  store { i64, ptr } %t39, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  store i64 %t43, ptr %l9, !tbaa !24
  br label %bb6
bb6:
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l9, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t53 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t53, ptr %l35, !tbaa !27
  %t54 = load i64, ptr %l8, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr ptr, ptr %t57, i64 %t54
  %t59 = load ptr, ptr %t58, !tbaa !39
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ebinds(ptr %v0, ptr %v1, ptr %t61, ptr %t59, i64 %t63)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t67 = load i64, ptr %l8, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l8, !tbaa !24
  br label %bb6
bb12:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l6, !tbaa !29
  %t74 = getelementptr %"compiler/ast:Case", ptr %t72, i32 0, i32 4
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %v0, ptr %v1, ptr %t71, { i64, ptr } %t75)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t78 = load i64, ptr %l4, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l4, !tbaa !24
  br label %bb2
bb15:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l2, !tbaa !27
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
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = add i64 %t28, 1
  store i64 %t30, ptr %l3, !tbaa !24
  br label %bb1
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fgeneric_2eisErrsArg(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_90309fa9b0fb789a_4b8ce68c657018ae)
  unreachable
bb11:
  %t10 = load i1, ptr %l1, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ekeyDecl(i32 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t1 = shl i64 1, 40
  %t4 = sext i32 %a0 to i64
  %t7 = or i64 %t1, %t4
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fgeneric_2emutableGlobal(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:VarDecl", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/ast:VarDecl", ptr %t9, i32 0, i32 2
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l1, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t15 = load ptr, ptr %l10, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = load ptr, ptr %l10, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 8}
  %t21 = icmp eq i64 %t19, 4
  store i1 %t21, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l11, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr { i64, [5 x i64] }, ptr %t23, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t25, i32 0, i32 2
  %t27 = load i1, ptr %t26
  store i1 %t27, ptr %l2, !tbaa !21
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t29 = load i1, ptr %l2, !tbaa !21
  store i1 %t29, ptr %l9, !tbaa !21
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_1f702846f089801_8e5e44ce193a520d)
  unreachable
bb14:
  %t31 = load i1, ptr %l9, !tbaa !21
  store i1 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2erefElem(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t12, i32 0, i32 2
  %t14 = load i1, ptr %t13
  store i1 %t14, ptr %l1, !tbaa !21
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i1, ptr %l1, !tbaa !21
  %t18 = xor i1 %t16, true
  store i1 %t18, ptr %l2, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_d7d90d95615537d8_d1765b1244f9b03c)
  unreachable
bb11:
  %t20 = load i1, ptr %l2, !tbaa !21
  store i1 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2eviewGenTy(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l23 = alloca i1
  %l27 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i1 @compiler_2fgeneric_2eviewGenTy(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l13
  br label %bb6
bb6:
  %t21 = load i1, ptr %l13, !tbaa !21
  store i1 %t21, ptr %l4, !tbaa !21
  br label %bb23
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l14, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 0
  store i1 %t29, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l15, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t33, i32 0, i32 1
  %t35 = load { i64, ptr }, ptr %t34
  store { i64, ptr } %t35, ptr %l3, !tbaa !27
  br label %bb12
bb11:
  br label %bb18
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t41 = icmp eq i64 %t39, 1
  br i1 %t41, label %bb13, label %bb14
bb13:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/load:Loader", ptr %t46, i32 0, i32 3
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t50, ptr %l27, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i32, ptr %t52, i64 0
  %t54 = load i32, ptr %t53, !tbaa !33
  %t57 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t49, i32 %t54)
  store { i64, ptr } %t57, ptr %l29
  br label %bb15
bb14:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb17
bb15:
  %t58 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t58, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t59, ptr %l30
  br label %bb16
bb16:
  %t60 = load i1, ptr %l30, !tbaa !21
  store i1 %t60, ptr %l23, !tbaa !21
  br label %bb17
bb17:
  %t61 = load i1, ptr %l23, !tbaa !21
  store i1 %t61, ptr %l4, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_9e21964695e7b518_e551ec91ddd7cf74)
  unreachable
bb23:
  %t62 = load i1, ptr %l4, !tbaa !21
  store i1 %t62, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/generic:AnySlot" @compiler_2fgeneric_3aAnySlot_2ector(ptr %v0, i32 %a0, i32 %a1, i64 %a2, i64 %a3, i1 %a4, i32 %a5) #0 {
entry:
  %rv = alloca %"compiler/generic:AnySlot"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/generic:AnySlot" undef, i32 %a0, 0
  %t16 = insertvalue %"compiler/generic:AnySlot" %t14, i32 %a1, 1
  %t18 = insertvalue %"compiler/generic:AnySlot" %t16, i64 %a2, 2
  %t20 = insertvalue %"compiler/generic:AnySlot" %t18, i64 %a3, 3
  %t22 = insertvalue %"compiler/generic:AnySlot" %t20, i1 %a4, 4
  %t24 = insertvalue %"compiler/generic:AnySlot" %t22, i32 %a5, 5
  store %"compiler/generic:AnySlot" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:AnySlot", ptr %rv
  ret %"compiler/generic:AnySlot" %rr
}

define dso_local %"compiler/generic:Origin" @compiler_2fgeneric_3aOrigin_2ector(ptr %v0, i64 %a0, %"compiler/source:Span" %a1, i64 %a2, i32 %a3) #0 {
entry:
  %rv = alloca %"compiler/generic:Origin"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/generic:Origin" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/generic:Origin" %t10, %"compiler/source:Span" %a1, 1
  %t14 = insertvalue %"compiler/generic:Origin" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/generic:Origin" %t14, i32 %a3, 3
  store %"compiler/generic:Origin" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Origin", ptr %rv
  ret %"compiler/generic:Origin" %rr
}

define dso_local %"compiler/generic:genRoots" @compiler_2fgeneric_3agenRoots_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"compiler/generic:genRoots"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  %t5 = ptrtoint ptr %v2 to i64
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3agenRoots_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v2)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l8
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t11)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t12, ptr %l10
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3agenRoots_2e2
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
  %t37 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t38 = insertvalue %"compiler/generic:genRoots" undef, { i64, ptr } %t37, 0
  %t39 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = insertvalue %"compiler/generic:genRoots" %t38, { i64, ptr } %t39, 1
  %t42 = insertvalue %"compiler/generic:genRoots" %t40, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t36, 2
  %t44 = insertvalue %"compiler/generic:genRoots" %t42, i64 0, 3
  store %"compiler/generic:genRoots" %t44, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:genRoots", ptr %rv
  ret %"compiler/generic:genRoots" %rr
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
declare void @__olang_check_failed(ptr) cold noreturn
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
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

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d0 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Columns" }>, align 8
@__olang_empty_array = external constant [16 x i64]
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
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

declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2ecompiler_2fast_3aVarDecl_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2fast_3aVarDecl_2e1 = weak hidden constant i1 false
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Copy" }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" ?" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d7 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"default" }>, align 8
@.d8 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" + " }>, align 8
@.d9 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ~[" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d12 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d14 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"hash" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d17 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d19 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d21 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d23 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fn?&(" }>, align 8
@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fn&(" }>, align 8
@.d25 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d26 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d28 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d29 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ? " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d30 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2fsource_3aNameId_3e_26(ptr %a0, ptr %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %a0, !tbaa !27
  %t4 = load { i64, ptr }, ptr %a1, !tbaa !27
  %t9 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2fsource_3aNameId_3e({ i64, ptr } %t2, { i64, ptr } %t4)
  store i1 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i1, ptr %l6, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d31 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ViewGenerator" }>, align 8
@olang_2esole_2ecompiler_2fgeneric_3agenRoots_2e2 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)
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

declare ptr @__olang_region_or(ptr, ptr)
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
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2fsource_3aNameId_3e({ i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i64
  %l6 = alloca i64
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t3, 0
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb7
bb2:
  store i64 0, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i32, ptr %t15, i64 %t13
  %t17 = load i32, ptr %t16, !tbaa !33
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i32, ptr %t20, i64 %t18
  %t22 = load i32, ptr %t21, !tbaa !33
  %t25 = icmp eq i32 %t17, %t22
  br i1 %t25, label %bb6, label %bb1
bb5:
  br label %bb7
bb6:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t28 = add i64 %t27, 1
  store i64 %t28, ptr %l6, !tbaa !24
  br label %bb3
bb7:
  %t29 = load i1, ptr %l2, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@olang_loc_9ad358ce4cd92925_29c80ed6090eef61 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderKey(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypesOverlap(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eLen_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorVars(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValName(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, { i64, ptr } %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b59432b088c5606d_7020d2b0800457f9 = external constant [0 x i8]
declare %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3, i64 %a4)
declare %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i1 %a3, i1 %a4, i1 %a5)
declare %"compiler/generic:Unmet" @compiler_2fgeneric_2eUnmet_2emet()
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsVar(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_f85b3d57f52ff5f3_99e1343e21fb4c8f = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eLen_Hf1590ba3dea8cd8a914b2a9f5344a2c6(ptr %v0, ptr %a0)
declare %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_23dbec30ec11f2fa_ab3fa8ca5a280626 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeNamed(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
@olang_loc_5d5ac97d78861951_ba50dfe20371558d = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H6743fd6fdd876d533cce32e3c0cd25b6(ptr %v0, ptr %a0, i32 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_Hcfc2a2943c600247d4ded3fb914681ab(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_25bcbd8d25f60d50_252e633c827b5284 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_Ha2fdd285cc075e465cab85a1d0fe3f31(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hc32bd40495535e8a7e7ddcc641d0c371(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i1 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fnames_2ePayloadName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eshape(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erefType(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3, i1 %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eperm(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eSpread = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_e146017c26ab6c4e_50202815c87e77c2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebodiesOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_c20939017dfa028a_da62df5ce2abe84e = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_24dfd0b2be49105f_81725bf52a128c43 = external constant [0 x i8]
declare %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, { i64, ptr } %a3, i1 %a4, i1 %a5, { i64, ptr } %a6, i1 %a7)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H6466f280e8b3243621b03e95613f722a(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, ptr %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeKey(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, { i64, ptr } %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownerApplies(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
@olang_loc_8878e002d59779fd_75c347076df58361 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvApplies(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisVar(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"compiler/generic:fnRow" @compiler_2fgeneric_3afnRow_2ector(ptr %v0, ptr %v1, i64 %a0, ptr %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2ePush_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:fnRow" %a1)
@olang_loc_cab99c6a514cda4c_3636b0df4624338 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eMarkCopy(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efnsIn(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %a0, i32 %a1)
declare i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v0, ptr %a0)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonInner(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i64 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonPromises(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i64 } @compiler_2fgeneric_2ecanonNumber(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9b5666a46f6f24aa_75ae4afb6f2a0cc6 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorItemKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetEntries(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_24f0f81fc570bea6_c6e464f22cc6b362 = external constant [0 x i8]
declare %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@G_2ecompiler_2fgeneric_2eFolded = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewide(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2ePending = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ealiasStep(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i32 %a4)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eflagBans(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i1 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeErrsUnwritten(ptr %v0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i64 %a6)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromisesOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithPromises(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %v0, i32 %a0, i64 %a1, i64 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_8c7d78b449474581_137735cf7503269d = external constant [0 x i8]
@olang_loc_bfcccee69af0f127_f3360b8adb85577b = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eheld(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_3f6d4ec28d03c677_4b12a6ade8d65b03 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownMethod(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashesAll(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ee8d77a4a1fda3da_cc07c41aef88f656 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetRawType(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_a1c12b43cfcb5ca8_7f9e794136c316fc = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eOwnScope = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNullable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_4061a14fd68eb9ea_8e3a57d2843d246e = external constant [0 x i8]
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eParseCanon(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnboundedInstantiation(ptr %v0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyLists(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyErrs(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_f83e897c6289299d_c5b35c0c7cd0f831 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_961f770be6209277_34282562e2239643 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_90309fa9b0fb789a_4b8ce68c657018ae = external constant [0 x i8]
@olang_loc_1f702846f089801_8e5e44ce193a520d = external constant [0 x i8]
@olang_loc_d7d90d95615537d8_d1765b1244f9b03c = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_9e21964695e7b518_e551ec91ddd7cf74 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)

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
