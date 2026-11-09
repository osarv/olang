source_filename = "compiler_generic-6.quick.ll"
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
%"compiler/generic:Unmet" = type { i64, i32, i32, i1, i1, i1 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/generic:fnRow" = type { i64, ptr, i1 }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/generic:instance" = type { i64, i32, i32, { i64, ptr }, { i64, ptr }, %"compiler/generic:Origin" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", i64 }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/generic:cursor" = type { { i64, ptr }, i64 }
%"compiler/generic:folded" = type { i64, i64, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Promise" = type { %"compiler/source:Span", i32, { i64, ptr } }
%"compiler/generic:genRoots" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64 }
%"compiler/generic:pattern" = type { ptr, i64, i64, i32, ptr }
define dso_local %"compiler/generic:Unmet" @compiler_2fgeneric_2eUnmet_2emet() #0 {
entry:
  %l1 = alloca %"compiler/generic:Unmet"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/generic:Unmet"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t3 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s0, i64 -1, i32 %t1, i32 0, i1 false, i1 false, i1 false)
  store %"compiler/generic:Unmet" %t3, ptr %l1
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t4 = load %"compiler/generic:Unmet", ptr %l1
  store %"compiler/generic:Unmet" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Unmet", ptr %rv
  ret %"compiler/generic:Unmet" %rr
}

define dso_local i1 @compiler_2fgeneric_2eborrowableElem(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %l26 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Func", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/ast:Sig", ptr %t4, i32 0, i32 1
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp ne i64 %t9, 1
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/ast:Func", ptr %t14, i32 0, i32 3
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/ast:Sig", ptr %t17, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l11, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 0
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l1, !tbaa !29
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t27 = load ptr, ptr %l14, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb4, label %bb5
bb4:
  %t30 = load ptr, ptr %l14, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 8}
  %t33 = icmp eq i64 %t31, 0
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t34 = load i1, ptr %l15, !tbaa !21
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t37, i32 0, i32 2
  %t39 = load { i64, ptr }, ptr %t38
  store { i64, ptr } %t39, ptr %l2, !tbaa !27
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t47, ptr %l24, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr ptr, ptr %t49, i64 0
  %t51 = load ptr, ptr %t50, !tbaa !39
  %t53 = call i1 @compiler_2fgeneric_2erefElem(ptr %v0, ptr %t51)
  store i1 %t53, ptr %l26
  br label %bb11
bb10:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb12
bb11:
  %t54 = load i1, ptr %l26, !tbaa !21
  store i1 %t54, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t55 = load i1, ptr %l23, !tbaa !21
  store i1 %t55, ptr %l13, !tbaa !21
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_b9fc8c34bb4a0c14_d84bd287e8577888)
  unreachable
bb18:
  %t56 = load i1, ptr %l13, !tbaa !21
  store i1 %t56, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyStored(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i32
  %l13 = alloca i1
  %l17 = alloca i32
  %l20 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
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
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr %l6, !tbaa !23
  store i32 %t8, ptr %l2, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l10
  br label %bb2
bb2:
  %t16 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t18 = trunc i64 19 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l2, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l17
  br label %bb5
bb4:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t28 = load i32, ptr %l17, !tbaa !23
  %t29 = icmp eq i32 %t28, 0
  store i1 %t29, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l13, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  store ptr %t34, ptr %l20, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l24
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t42 = load ptr, ptr %l20, !tbaa !29
  %t43 = load i32, ptr %l24, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t44, ptr %l25
  br label %bb10
bb10:
  %t45 = load i32, ptr %l25, !tbaa !23
  store i32 %t45, ptr %rv
  br label %ret
bb11:
  %t46 = load i32, ptr %l1, !tbaa !23
  store i32 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyTableOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca ptr
  %l9 = alloca i32
  %l13 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l14 = alloca i64
  %l15 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 62
  store ptr %t3, ptr %l5, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load i32, ptr %l9, !tbaa !23
  %t12 = sext i32 %t11 to i64
  %t15 = sext i32 %a2 to i64
  %t18 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t12, i64 %t15)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t18, ptr %l13
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l5, !tbaa !29
  %t20 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13
  %t21 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t19, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t20)
  %t22 = extractvalue { i32, i64 } %t21, 1
  %t23 = extractvalue { i32, i64 } %t21, 0
  store i32 %t23, ptr %l15
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb4, label %ok.25, !prof !99
ok.25:
  store i64 %t22, ptr %l14
  br label %bb3
bb3:
  %t26 = load i64, ptr %l14, !tbaa !24
  store i64 %t26, ptr %l3, !tbaa !24
  br label %bb6
bb4:
  br label %bb5
bb5:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t27 = load i64, ptr %l3, !tbaa !24
  store i64 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAttrsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"compiler/generic:Desc"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca %"compiler/generic:Desc"
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i64
  %lp16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l28 = alloca %"compiler/generic:Desc"
  %l35 = alloca i32
  %l44 = alloca i32
  %l47 = alloca ptr
  %l56 = alloca i64
  %l71 = alloca %"compiler/generic:fnRow"
  %l72 = alloca i64
  %l76 = alloca %"compiler/generic:fnRow"
  %l86 = alloca i32
  %l93 = alloca %"compiler/generic:Desc"
  %l100 = alloca %"compiler/generic:fnRow"
  %l113 = alloca %"compiler/generic:fnRow"
  %l115 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l130 = alloca ptr
  %l134 = alloca i32
  %l136 = alloca i64
  %l137 = alloca { i64, ptr }
  %l144 = alloca i32
  %l148 = alloca i32
  %l157 = alloca i32
  %l160 = alloca ptr
  %l163 = alloca i1
  %l173 = alloca i64
  %l176 = alloca ptr
  %l177 = alloca i1
  %l190 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l191 = alloca ptr
  %l193 = alloca ptr
  %l194 = alloca i32
  %l196 = alloca i1
  %l205 = alloca { i64, ptr }
  %l211 = alloca i64
  %l216 = alloca { i64, ptr }
  %l222 = alloca ptr
  %l223 = alloca i1
  %l230 = alloca i1
  %l241 = alloca { i64, ptr }
  %l247 = alloca { i64, ptr }
  %l254 = alloca { i64, ptr }
  %l257 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i64, { i64, ptr } }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = icmp sge i64 0, 0
  br i1 %t1, label %bb1, label %bb2
bb1:
  %t3 = icmp sle i64 0, 1152921504606846975
  br i1 %t3, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_17158c751ed21afe_33a2b26fdf358a22)
  unreachable
bb3:
  %t5 = mul i64 0, 8
  %t6 = insertvalue { i64, ptr } undef, i64 0, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t9, i32 %t10)
  store %"compiler/generic:Desc" %t13, ptr %l28
  br label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_17158c751ed21afe_33a2b26fdf358a22)
  unreachable
bb5:
  %t14 = load %"compiler/generic:Desc", ptr %l28
  store %"compiler/generic:Desc" %t14, ptr %l3
  %t15 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 0
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescNone, !tbaa !24
  %t20 = icmp eq i64 %t16, %t17
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l35
  br label %bb8
bb7:
  br label %bb18
bb8:
  %t29 = load i32, ptr %l35, !range !{i32 0, i32 33}
  %t31 = trunc i64 18 to i32
  %t32 = icmp eq i32 %t29, %t31
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t37 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t39 = insertvalue { i64, { i64, ptr } } %t37, { i64, ptr } %t36, 1
  store { i64, { i64, ptr } } %t39, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %l1, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l44
  br label %bb12
bb12:
  %t48 = load i32, ptr %l44, !tbaa !23
  store i32 %t48, ptr %l4, !tbaa !23
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l4, !tbaa !23
  %t53 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v1, ptr %t49, i32 %t50)
  store ptr %t53, ptr %l47
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l47, !tbaa !29
  store ptr %t54, ptr %l5, !tbaa !29
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  br i1 %t57, label %bb14, label %bb15
bb14:
  %t59 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t60 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t62 = insertvalue { i64, { i64, ptr } } %t60, { i64, ptr } %t59, 1
  store { i64, { i64, ptr } } %t62, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 12
  %t67 = load i32, ptr %l4, !tbaa !23
  %t69 = sext i32 %t67 to i64
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t66, i64 %t69)
  store i64 %t72, ptr %l56
  br label %bb17
bb17:
  %t73 = load ptr, ptr %l5, !tbaa !29
  %t75 = getelementptr %"compiler/ast:TypeDecl", ptr %t73, i32 0, i32 4
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l56, !tbaa !24
  %t78 = insertvalue { i64, { i64, ptr } } undef, i64 %t77, 0
  %t80 = insertvalue { i64, { i64, ptr } } %t78, { i64, ptr } %t76, 1
  store { i64, { i64, ptr } } %t80, ptr %rv
  br label %ret
bb18:
  %t82 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 0
  %t83 = load i64, ptr %t82, !tbaa !24
  %t84 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescResult, !tbaa !24
  %t87 = icmp eq i64 %t83, %t84
  br i1 %t87, label %bb19, label %bb20
bb19:
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t90 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t92 = insertvalue { i64, { i64, ptr } } %t90, { i64, ptr } %t89, 1
  store { i64, { i64, ptr } } %t92, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t94 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 0
  %t95 = load i64, ptr %t94, !tbaa !24
  %t96 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t99 = icmp eq i64 %t95, %t96
  br i1 %t99, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/generic:Program", ptr %t101, i32 0, i32 29
  %t104 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 2
  %t105 = load i64, ptr %t104, !tbaa !24
  %t108 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s5, ptr %t103, i64 %t105)
  store %"compiler/generic:fnRow" %t108, ptr %l71
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t109 = getelementptr %"compiler/generic:fnRow", ptr %l71, i32 0, i32 0
  %t110 = load i64, ptr %t109, !tbaa !24
  store i64 %t110, ptr %l72, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 29
  %t114 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 2
  %t115 = load i64, ptr %t114, !tbaa !24
  %t118 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v1, ptr %t113, i64 %t115)
  store %"compiler/generic:fnRow" %t118, ptr %l76
  br label %bb25
bb25:
  %t119 = getelementptr %"compiler/generic:fnRow", ptr %l76, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/ast:Func", ptr %t120, i32 0, i32 8
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  %t124 = load i64, ptr %l72, !tbaa !24
  %t125 = insertvalue { i64, { i64, ptr } } undef, i64 %t124, 0
  %t127 = insertvalue { i64, { i64, ptr } } %t125, { i64, ptr } %t123, 1
  call void @__olang_scope_close(ptr %s5)
  store { i64, { i64, ptr } } %t127, ptr %rv
  br label %ret
bb26:
  %t129 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 0
  %t130 = load i64, ptr %t129, !tbaa !24
  %t131 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  %t134 = icmp eq i64 %t130, %t131
  br i1 %t134, label %bb27, label %bb28
bb27:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  %t139 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 1
  %t140 = load i32, ptr %t139, !tbaa !23
  %t143 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t138, i32 %t140)
  store i32 %t143, ptr %l86
  br label %bb29
bb28:
  br label %bb48
bb29:
  %t144 = load i32, ptr %l86, !range !{i32 0, i32 33}
  %t146 = trunc i64 21 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb30, label %bb31
bb30:
  %t149 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t150 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t152 = insertvalue { i64, { i64, ptr } } %t150, { i64, ptr } %t149, 1
  store { i64, { i64, ptr } } %t152, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 1
  %t156 = load i32, ptr %t155, !tbaa !23
  %t159 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t154, i32 %t156)
  store %"compiler/generic:Desc" %t159, ptr %l93
  br label %bb33
bb33:
  %t160 = load %"compiler/generic:Desc", ptr %l93
  store %"compiler/generic:Desc" %t160, ptr %l6
  %t161 = getelementptr %"compiler/generic:Desc", ptr %l6, i32 0, i32 0
  %t162 = load i64, ptr %t161, !tbaa !24
  %t163 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t166 = icmp eq i64 %t162, %t163
  br i1 %t166, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s8
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/generic:Program", ptr %t168, i32 0, i32 29
  %t171 = getelementptr %"compiler/generic:Desc", ptr %l6, i32 0, i32 2
  %t172 = load i64, ptr %t171, !tbaa !24
  %t175 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t170, i64 %t172)
  store %"compiler/generic:fnRow" %t175, ptr %l100
  br label %bb36
bb35:
  br label %bb41
bb36:
  %t176 = getelementptr %"compiler/generic:fnRow", ptr %l100, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t179 = getelementptr %"compiler/ast:Func", ptr %t177, i32 0, i32 3
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t182 = getelementptr %"compiler/ast:Sig", ptr %t180, i32 0, i32 0
  %t183 = load { i64, ptr }, ptr %t182, !tbaa !27
  store { i64, ptr } %t183, ptr %l7, !tbaa !27
  %t185 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 3
  %t186 = load i64, ptr %t185, !tbaa !24
  %t187 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t192 = icmp sge i64 %t186, %t189
  br i1 %t192, label %bb37, label %bb38
bb37:
  %t194 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t195 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t197 = insertvalue { i64, { i64, ptr } } %t195, { i64, ptr } %t194, 1
  call void @__olang_scope_close(ptr %s8)
  store { i64, { i64, ptr } } %t197, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/generic:Program", ptr %t199, i32 0, i32 29
  %t202 = getelementptr %"compiler/generic:Desc", ptr %l6, i32 0, i32 2
  %t203 = load i64, ptr %t202, !tbaa !24
  %t206 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s8, ptr %t201, i64 %t203)
  store %"compiler/generic:fnRow" %t206, ptr %l113
  br label %bb40
bb40:
  %t207 = getelementptr %"compiler/generic:fnRow", ptr %l113, i32 0, i32 0
  %t208 = load i64, ptr %t207, !tbaa !24
  %t209 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t209, ptr %l115, !tbaa !27
  %t210 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 3
  %t211 = load i64, ptr %t210, !tbaa !24
  %t213 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr ptr, ptr %t214, i64 %t211
  %t216 = load ptr, ptr %t215, !tbaa !39
  %t218 = getelementptr %"compiler/ast:Param", ptr %t216, i32 0, i32 4
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  %t221 = insertvalue { i64, { i64, ptr } } undef, i64 %t208, 0
  %t223 = insertvalue { i64, { i64, ptr } } %t221, { i64, ptr } %t219, 1
  call void @__olang_scope_close(ptr %s8)
  store { i64, { i64, ptr } } %t223, ptr %rv
  br label %ret
bb41:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 1
  %t227 = load i32, ptr %t226, !tbaa !23
  %t230 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorParams(ptr %v0, ptr %v1, ptr %t225, i32 %t227)
  store { i64, ptr } %t230, ptr %l122
  br label %bb42
bb42:
  %t231 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t231, ptr %l8, !tbaa !27
  %t232 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 3
  %t233 = load i64, ptr %t232, !tbaa !24
  %t234 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t234, 0
  %t239 = icmp sge i64 %t233, %t236
  br i1 %t239, label %bb43, label %bb44
bb43:
  %t241 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t242 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t244 = insertvalue { i64, { i64, ptr } } %t242, { i64, ptr } %t241, 1
  store { i64, { i64, ptr } } %t244, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/generic:Program", ptr %t246, i32 0, i32 12
  store ptr %t248, ptr %l130, !tbaa !29
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/generic:Program", ptr %t249, i32 0, i32 2
  %t252 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 1
  %t253 = load i32, ptr %t252, !tbaa !23
  %t256 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t251, i32 %t253)
  store i32 %t256, ptr %l134
  br label %bb46
bb46:
  %t257 = load i32, ptr %l134, !tbaa !23
  %t258 = sext i32 %t257 to i64
  %t259 = load ptr, ptr %l130, !tbaa !29
  %t261 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t259, i64 %t258)
  store i64 %t261, ptr %l136
  br label %bb47
bb47:
  %t262 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t262, ptr %l137, !tbaa !27
  %t263 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 3
  %t264 = load i64, ptr %t263, !tbaa !24
  %t266 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr ptr, ptr %t267, i64 %t264
  %t269 = load ptr, ptr %t268, !tbaa !39
  %t271 = getelementptr %"compiler/ast:Param", ptr %t269, i32 0, i32 4
  %t272 = load { i64, ptr }, ptr %t271, !tbaa !27
  %t273 = load i64, ptr %l136, !tbaa !24
  %t274 = insertvalue { i64, { i64, ptr } } undef, i64 %t273, 0
  %t276 = insertvalue { i64, { i64, ptr } } %t274, { i64, ptr } %t272, 1
  store { i64, { i64, ptr } } %t276, ptr %rv
  br label %ret
bb48:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 1
  %t280 = load i32, ptr %t279, !tbaa !23
  %t283 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %t278, i32 %t280)
  store i32 %t283, ptr %l144
  br label %bb49
bb49:
  %t284 = load i32, ptr %l144, !tbaa !23
  store i32 %t284, ptr %l9, !tbaa !23
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/generic:Program", ptr %t285, i32 0, i32 2
  %t288 = load i32, ptr %l9, !tbaa !23
  %t291 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t287, i32 %t288)
  store i32 %t291, ptr %l148
  br label %bb50
bb50:
  %t292 = load i32, ptr %l148, !range !{i32 0, i32 33}
  %t294 = trunc i64 18 to i32
  %t295 = icmp eq i32 %t292, %t294
  %t297 = xor i1 %t295, true
  br i1 %t297, label %bb51, label %bb52
bb51:
  %t299 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t300 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t302 = insertvalue { i64, { i64, ptr } } %t300, { i64, ptr } %t299, 1
  store { i64, { i64, ptr } } %t302, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/generic:Program", ptr %t304, i32 0, i32 2
  %t307 = load i32, ptr %l9, !tbaa !23
  %t310 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t306, i32 %t307)
  store i32 %t310, ptr %l157
  br label %bb54
bb54:
  %t311 = load i32, ptr %l157, !tbaa !23
  store i32 %t311, ptr %l10, !tbaa !23
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load i32, ptr %l10, !tbaa !23
  %t316 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v1, ptr %t312, i32 %t313)
  store ptr %t316, ptr %l160
  br label %bb55
bb55:
  %t317 = load ptr, ptr %l160, !tbaa !29
  store ptr %t317, ptr %l11, !tbaa !29
  %t318 = load ptr, ptr %l11, !tbaa !29
  %t320 = icmp eq ptr %t318, null
  br i1 %t320, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l163, !tbaa !21
  br label %bb58
bb57:
  %t322 = load ptr, ptr %l11, !tbaa !29
  %t324 = getelementptr %"compiler/ast:TypeDecl", ptr %t322, i32 0, i32 3
  %t325 = load ptr, ptr %t324, !tbaa !29
  %t327 = icmp eq ptr %t325, null
  store i1 %t327, ptr %l163, !tbaa !21
  br label %bb58
bb58:
  %t329 = load i1, ptr %l163, !tbaa !21
  br i1 %t329, label %bb59, label %bb60
bb59:
  %t330 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t331 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t333 = insertvalue { i64, { i64, ptr } } %t331, { i64, ptr } %t330, 1
  store { i64, { i64, ptr } } %t333, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/generic:Program", ptr %t335, i32 0, i32 12
  %t338 = load i32, ptr %l10, !tbaa !23
  %t340 = sext i32 %t338 to i64
  %t343 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t337, i64 %t340)
  store i64 %t343, ptr %l173
  br label %bb62
bb62:
  %t344 = load i64, ptr %l173, !tbaa !24
  store i64 %t344, ptr %l12, !tbaa !24
  %t345 = load ptr, ptr %l11, !tbaa !29
  %t347 = getelementptr %"compiler/ast:TypeDecl", ptr %t345, i32 0, i32 3
  %t348 = load ptr, ptr %t347, !tbaa !29
  store ptr %t348, ptr %l13, !tbaa !29
  %t350 = load ptr, ptr %l13, !tbaa !29
  store ptr %t350, ptr %l176, !tbaa !29
  store i1 false, ptr %l177, !tbaa !21
  %t351 = load ptr, ptr %l176, !tbaa !29
  %t352 = icmp ne ptr %t351, null
  br i1 %t352, label %bb63, label %bb64
bb63:
  %t354 = load ptr, ptr %l176, !tbaa !29
  %t355 = load i64, ptr %t354, !range !{i64 0, i64 5}
  %t357 = icmp eq i64 %t355, 0
  store i1 %t357, ptr %l177, !tbaa !21
  br label %bb64
bb64:
  %t358 = load i1, ptr %l177, !tbaa !21
  br i1 %t358, label %bb65, label %bb66
bb65:
  %t359 = load ptr, ptr %l13, !tbaa !29
  %t361 = getelementptr { i64, [6 x i64] }, ptr %t359, i32 0, i32 1
  %t362 = getelementptr { ptr }, ptr %t361, i32 0, i32 0
  %t363 = load ptr, ptr %t362
  store ptr %t363, ptr %l14, !tbaa !29
  br label %bb67
bb66:
  br label %bb89
bb67:
  %t365 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 0
  %t366 = load i64, ptr %t365, !tbaa !24
  %t367 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t370 = icmp eq i64 %t366, %t367
  br i1 %t370, label %bb68, label %bb69
bb68:
  %t372 = load i64, ptr %l12, !tbaa !24
  %t373 = load ptr, ptr %l11, !tbaa !29
  %t375 = getelementptr %"compiler/ast:TypeDecl", ptr %t373, i32 0, i32 4
  %t376 = load { i64, ptr }, ptr %t375, !tbaa !27
  %t378 = insertvalue { i64, { i64, ptr } } undef, i64 %t372, 0
  %t380 = insertvalue { i64, { i64, ptr } } %t378, { i64, ptr } %t376, 1
  store { i64, { i64, ptr } } %t380, ptr %rv
  br label %ret
bb69:
  br label %bb70
bb70:
  store i64 0, ptr %l15, !tbaa !24
  %t382 = load ptr, ptr %l14, !tbaa !29
  %t384 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls(ptr %v1, ptr %v1, ptr %t382)
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t384, ptr %l190
  br label %bb71
bb71:
  %t385 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t385, ptr %lp16
  %t386 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l190
  %t387 = load ptr, ptr %lp16
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t386, ptr %t387
  br label %bb72
bb72:
  %t388 = load ptr, ptr %lp16
  %t390 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v1, ptr %t388)
  %t391 = extractvalue { i32, ptr } %t390, 1
  %t392 = extractvalue { i32, ptr } %t390, 0
  store i32 %t392, ptr %l194
  %t393 = icmp ne i32 %t392, 0
  br i1 %t393, label %bb74, label %ok.394, !prof !99
ok.394:
  store ptr %t391, ptr %l193
  br label %bb73
bb73:
  %t395 = load ptr, ptr %l193, !tbaa !29
  store ptr %t395, ptr %l191, !tbaa !29
  br label %bb76
bb74:
  %t396 = load i32, ptr %l194, !tbaa !23
  %t397 = ashr i32 %t396, 16
  %t399 = icmp eq i32 %t397, 1
  store i1 %t399, ptr %l196, !tbaa !21
  br label %bb75
bb75:
  br label %bb88
bb76:
  %t400 = load ptr, ptr %l191, !tbaa !29
  store ptr %t400, ptr %l17, !tbaa !29
  %t401 = load ptr, ptr %l17, !tbaa !29
  %t403 = getelementptr %"compiler/ast:VarDecl", ptr %t401, i32 0, i32 0
  %t404 = load { i64, ptr }, ptr %t403, !tbaa !27
  store { i64, ptr } %t404, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t406 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t408 = extractvalue { i64, ptr } %t406, 0
  store i64 %t408, ptr %l20, !tbaa !24
  br label %bb77
bb77:
  %t410 = load i64, ptr %l19, !tbaa !24
  %t411 = load i64, ptr %l20, !tbaa !24
  %t414 = icmp slt i64 %t410, %t411
  %t416 = xor i1 %t414, true
  br i1 %t416, label %bb78, label %bb79
bb78:
  br label %bb86
bb79:
  br label %bb80
bb80:
  %t418 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t418, ptr %l205, !tbaa !27
  %t419 = load i64, ptr %l19, !tbaa !24
  %t421 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t422 = load ptr, ptr %t421, !tbaa !27
  %t423 = getelementptr i32, ptr %t422, i64 %t419
  %t424 = load i32, ptr %t423, !tbaa !33
  store i32 %t424, ptr %l21, !tbaa !23
  %t426 = load i64, ptr %l15, !tbaa !24
  %t427 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 3
  %t428 = load i64, ptr %t427, !tbaa !24
  %t431 = icmp eq i64 %t426, %t428
  br i1 %t431, label %bb81, label %bb82
bb81:
  %t433 = load i64, ptr %l12, !tbaa !24
  store i64 %t433, ptr %l211, !tbaa !24
  %t434 = load ptr, ptr %l14, !tbaa !29
  %t435 = load ptr, ptr %l17, !tbaa !29
  %t436 = load i32, ptr %l21, !tbaa !23
  %t437 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t442 = call { i64, ptr } @compiler_2fgeneric_2efieldAttrs(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t434, ptr %t435, i32 %t436, { i64, ptr } %t437)
  store { i64, ptr } %t442, ptr %l216
  br label %bb83
bb82:
  br label %bb84
bb83:
  %t443 = load i64, ptr %l211, !tbaa !24
  %t444 = insertvalue { i64, { i64, ptr } } undef, i64 %t443, 0
  %t445 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t446 = insertvalue { i64, { i64, ptr } } %t444, { i64, ptr } %t445, 1
  store { i64, { i64, ptr } } %t446, ptr %rv
  br label %ret
bb84:
  %t448 = load i64, ptr %l15, !tbaa !24
  %t450 = add i64 %t448, 1
  store i64 %t450, ptr %l15, !tbaa !24
  br label %bb85
bb85:
  %t452 = load i64, ptr %l19, !tbaa !24
  %t454 = add i64 %t452, 1
  store i64 %t454, ptr %l19, !tbaa !24
  br label %bb77
bb86:
  br label %bb87
bb87:
  br label %bb72
bb88:
  br label %bb112
bb89:
  %t456 = load ptr, ptr %l13, !tbaa !29
  store ptr %t456, ptr %l222, !tbaa !29
  store i1 false, ptr %l223, !tbaa !21
  %t457 = load ptr, ptr %l222, !tbaa !29
  %t458 = icmp ne ptr %t457, null
  br i1 %t458, label %bb90, label %bb91
bb90:
  %t460 = load ptr, ptr %l222, !tbaa !29
  %t461 = load i64, ptr %t460, !range !{i64 0, i64 5}
  %t463 = icmp eq i64 %t461, 1
  store i1 %t463, ptr %l223, !tbaa !21
  br label %bb91
bb91:
  %t464 = load i1, ptr %l223, !tbaa !21
  br i1 %t464, label %bb92, label %bb93
bb92:
  %t465 = load ptr, ptr %l13, !tbaa !29
  %t467 = getelementptr { i64, [6 x i64] }, ptr %t465, i32 0, i32 1
  %t468 = getelementptr { { i64, ptr }, ptr }, ptr %t467, i32 0, i32 0
  %t469 = load { i64, ptr }, ptr %t468
  store { i64, ptr } %t469, ptr %l22, !tbaa !27
  br label %bb94
bb93:
  br label %bb107
bb94:
  %t471 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 2
  %t472 = load i64, ptr %t471, !tbaa !24
  %t474 = icmp slt i64 %t472, 0
  br i1 %t474, label %bb95, label %bb96
bb95:
  store i1 true, ptr %l230, !tbaa !21
  br label %bb97
bb96:
  %t476 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 2
  %t477 = load i64, ptr %t476, !tbaa !24
  %t478 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t480 = extractvalue { i64, ptr } %t478, 0
  %t483 = icmp sge i64 %t477, %t480
  store i1 %t483, ptr %l230, !tbaa !21
  br label %bb97
bb97:
  %t485 = load i1, ptr %l230, !tbaa !21
  br i1 %t485, label %bb98, label %bb99
bb98:
  %t486 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t487 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t489 = insertvalue { i64, { i64, ptr } } %t487, { i64, ptr } %t486, 1
  store { i64, { i64, ptr } } %t489, ptr %rv
  br label %ret
bb99:
  br label %bb100
bb100:
  %t491 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 0
  %t492 = load i64, ptr %t491, !tbaa !24
  %t493 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t496 = icmp eq i64 %t492, %t493
  br i1 %t496, label %bb101, label %bb102
bb101:
  %t498 = load i64, ptr %l12, !tbaa !24
  %t499 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t499, ptr %l241, !tbaa !27
  %t500 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 2
  %t501 = load i64, ptr %t500, !tbaa !24
  %t503 = getelementptr { i64, ptr }, ptr %l241, i32 0, i32 1
  %t504 = load ptr, ptr %t503, !tbaa !27
  %t505 = getelementptr ptr, ptr %t504, i64 %t501
  %t506 = load ptr, ptr %t505, !tbaa !39
  %t508 = getelementptr %"compiler/ast:CaseDecl", ptr %t506, i32 0, i32 5
  %t509 = load { i64, ptr }, ptr %t508, !tbaa !27
  %t511 = insertvalue { i64, { i64, ptr } } undef, i64 %t498, 0
  %t513 = insertvalue { i64, { i64, ptr } } %t511, { i64, ptr } %t509, 1
  store { i64, { i64, ptr } } %t513, ptr %rv
  br label %ret
bb102:
  br label %bb103
bb103:
  %t515 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 3
  %t516 = load i64, ptr %t515, !tbaa !24
  %t517 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t517, ptr %l247, !tbaa !27
  %t518 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 2
  %t519 = load i64, ptr %t518, !tbaa !24
  %t521 = getelementptr { i64, ptr }, ptr %l247, i32 0, i32 1
  %t522 = load ptr, ptr %t521, !tbaa !27
  %t523 = getelementptr ptr, ptr %t522, i64 %t519
  %t524 = load ptr, ptr %t523, !tbaa !39
  %t526 = getelementptr %"compiler/ast:CaseDecl", ptr %t524, i32 0, i32 2
  %t527 = load { i64, ptr }, ptr %t526, !tbaa !27
  %t529 = extractvalue { i64, ptr } %t527, 0
  %t532 = icmp slt i64 %t516, %t529
  br i1 %t532, label %bb104, label %bb105
bb104:
  %t534 = load i64, ptr %l12, !tbaa !24
  %t535 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t535, ptr %l254, !tbaa !27
  %t536 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 2
  %t537 = load i64, ptr %t536, !tbaa !24
  %t539 = getelementptr { i64, ptr }, ptr %l254, i32 0, i32 1
  %t540 = load ptr, ptr %t539, !tbaa !27
  %t541 = getelementptr ptr, ptr %t540, i64 %t537
  %t542 = load ptr, ptr %t541, !tbaa !39
  %t544 = getelementptr %"compiler/ast:CaseDecl", ptr %t542, i32 0, i32 2
  %t545 = load { i64, ptr }, ptr %t544, !tbaa !27
  store { i64, ptr } %t545, ptr %l257, !tbaa !27
  %t546 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 3
  %t547 = load i64, ptr %t546, !tbaa !24
  %t549 = getelementptr { i64, ptr }, ptr %l257, i32 0, i32 1
  %t550 = load ptr, ptr %t549, !tbaa !27
  %t551 = getelementptr ptr, ptr %t550, i64 %t547
  %t552 = load ptr, ptr %t551, !tbaa !39
  %t554 = getelementptr %"compiler/ast:Param", ptr %t552, i32 0, i32 4
  %t555 = load { i64, ptr }, ptr %t554, !tbaa !27
  %t557 = insertvalue { i64, { i64, ptr } } undef, i64 %t534, 0
  %t559 = insertvalue { i64, { i64, ptr } } %t557, { i64, ptr } %t555, 1
  store { i64, { i64, ptr } } %t559, ptr %rv
  br label %ret
bb105:
  br label %bb106
bb106:
  br label %bb112
bb107:
  br i1 true, label %bb108, label %bb109
bb108:
  br label %bb110
bb109:
  br label %bb111
bb110:
  br label %bb112
bb111:
  call void @__olang_check_failed(ptr @olang_loc_a8b1772d74e9e914_a0534ed2161c99a0)
  unreachable
bb112:
  %t561 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t562 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t564 = insertvalue { i64, { i64, ptr } } %t562, { i64, ptr } %t561, 1
  store { i64, { i64, ptr } } %t564, ptr %rv
  br label %ret
ret:
  %rr = load { i64, { i64, ptr } }, ptr %rv
  ret { i64, { i64, ptr } } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i32
  %l17 = alloca i64
  %l20 = alloca i64
  %l27 = alloca { i64, ptr }
  %l32 = alloca i64
  %l35 = alloca i64
  %l57 = alloca i64
  %l63 = alloca i32
  %l66 = alloca ptr
  %l67 = alloca i32
  %l68 = alloca i64
  %l72 = alloca i32
  %l73 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load i32, ptr %l15, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t7)
  store i64 %t9, ptr %l17
  br label %bb2
bb2:
  %t10 = load i64, ptr %l17, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t11, i64 %t12)
  store i64 %t15, ptr %l20
  br label %bb3
bb3:
  %t16 = load i64, ptr %l20, !tbaa !24
  store i64 %t16, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp eq i64 %t17, 0
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t21, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  %t29 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %s0, ptr %t23, i64 %t24, i32 %a2)
  store { i64, ptr } %t29, ptr %l27
  br label %bb7
bb7:
  %t30 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t30, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  store i64 %t31, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp sgt i64 %t33, %t34
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load i64, ptr %l9, !tbaa !24
  %t41 = icmp sgt i64 %t39, 0
  br i1 %t41, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb13
bb10:
  %t43 = load i64, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = sub i64 %t43, %t44
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = add i64 %t47, %t48
  %t53 = sub i64 %t51, 1
  %t54 = load i64, ptr %l9, !tbaa !24
  %t57 = sdiv i64 %t53, %t54
  store i64 %t57, ptr %l35, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb12
bb12:
  %t59 = load i64, ptr %l35, !tbaa !24
  store i64 %t59, ptr %l32, !tbaa !24
  br label %bb13
bb13:
  %t60 = load i64, ptr %l32, !tbaa !24
  store i64 %t60, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb14
bb14:
  %t61 = load i64, ptr %l11, !tbaa !24
  %t62 = load i64, ptr %l10, !tbaa !24
  %t65 = icmp slt i64 %t61, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb15, label %bb16
bb15:
  br label %bb23
bb16:
  br label %bb17
bb17:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i64, ptr %l11, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t74 = mul i64 %t70, %t71
  %t77 = add i64 %t69, %t74
  store i64 %t77, ptr %l12, !tbaa !24
  %t79 = load i64, ptr %l12, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i32, ptr %t82, i64 %t79
  %t84 = load i32, ptr %t83, !tbaa !33
  %t85 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t88 = icmp eq i32 %t84, %t85
  br i1 %t88, label %bb18, label %bb19
bb18:
  %t90 = load i64, ptr %l12, !tbaa !24
  store i64 %t90, ptr %l57, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i64, ptr %l4, !tbaa !24
  %t95 = load i64, ptr %l12, !tbaa !24
  %t96 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t93, i64 %t94, i64 %t95, i64 %t96)
  store i32 %t101, ptr %l63
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t102 = load i32, ptr %l63, !tbaa !23
  %t103 = load i64, ptr %l57, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i32, ptr %t105, i64 %t103
  store i32 %t102, ptr %t106, !tbaa !33
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t107 = load i64, ptr %l11, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l11, !tbaa !24
  br label %bb14
bb23:
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l66, !tbaa !29
  %t112 = load i32, ptr %l3, !tbaa !23
  store i32 %t112, ptr %l67, !tbaa !23
  %t113 = load i64, ptr %l4, !tbaa !24
  store i64 %t113, ptr %l68, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t116, { i64, ptr } %t117)
  store i32 %t120, ptr %l72
  br label %bb24
bb24:
  %t121 = load ptr, ptr %l66, !tbaa !29
  %t122 = load i32, ptr %l67, !tbaa !23
  %t123 = load i64, ptr %l68, !tbaa !24
  %t124 = load i32, ptr %l72, !tbaa !23
  %t125 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t121, i32 %t122, i64 %t123, i32 %t124)
  store i32 %t125, ptr %l73
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t126 = load i32, ptr %l73, !tbaa !23
  store i32 %t126, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l12 = alloca i32
  %l17 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca ptr
  %l25 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca i1
  %l46 = alloca { i64, ptr }
  %l56 = alloca i32
  %l57 = alloca { i64, ptr }
  %l61 = alloca i32
  %l63 = alloca ptr
  %l67 = alloca i32
  %l69 = alloca i32
  %l70 = alloca i32
  %l74 = alloca i32
  %l76 = alloca i64
  %l77 = alloca i64
  %l82 = alloca ptr
  %l83 = alloca i32
  %l84 = alloca i32
  %l90 = alloca { i64, ptr }
  %l91 = alloca i32
  %l92 = alloca i32
  %l93 = alloca ptr
  %l96 = alloca %"compiler/generic:Context"
  %l100 = alloca i32
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca i32
  %t157 = alloca i64
  %t201 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t15, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l17, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l21
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l17, !tbaa !29
  %t26 = load i32, ptr %l21, !tbaa !23
  %t27 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t25, i32 %t26)
  store ptr %t27, ptr %l22
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l22, !tbaa !29
  store ptr %t28, ptr %l3, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  br i1 %t31, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb9
bb8:
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t35 = getelementptr %"compiler/ast:TypeDecl", ptr %t33, i32 0, i32 3
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  store i1 %t38, ptr %l25, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l25, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t41 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t41, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t45 = getelementptr %"compiler/ast:TypeDecl", ptr %t43, i32 0, i32 3
  %t46 = load ptr, ptr %t45, !tbaa !29
  store ptr %t46, ptr %l4, !tbaa !29
  %t48 = load ptr, ptr %l4, !tbaa !29
  store ptr %t48, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t49 = load ptr, ptr %l32, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb13, label %bb14
bb13:
  %t52 = load ptr, ptr %l32, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 5}
  %t55 = icmp eq i64 %t53, 1
  store i1 %t55, ptr %l33, !tbaa !21
  br label %bb14
bb14:
  %t56 = load i1, ptr %l33, !tbaa !21
  br i1 %t56, label %bb15, label %bb16
bb15:
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = getelementptr { i64, [6 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { { i64, ptr }, ptr }, ptr %t59, i32 0, i32 0
  %t61 = load { i64, ptr }, ptr %t60
  store { i64, ptr } %t61, ptr %l5, !tbaa !27
  br label %bb17
bb16:
  br label %bb45
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t63 = load i64, ptr %l2, !tbaa !24
  %t65 = icmp slt i64 %t63, 0
  br i1 %t65, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb20
bb19:
  %t67 = load i64, ptr %l2, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t73 = icmp sge i64 %t67, %t70
  store i1 %t73, ptr %l40, !tbaa !21
  br label %bb20
bb20:
  %t75 = load i1, ptr %l40, !tbaa !21
  br i1 %t75, label %bb21, label %bb22
bb21:
  %t76 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  store i32 %t76, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t78 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t78, ptr %l46, !tbaa !27
  %t79 = load i64, ptr %l2, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr ptr, ptr %t82, i64 %t79
  %t84 = load ptr, ptr %t83, !tbaa !39
  %t86 = getelementptr %"compiler/ast:CaseDecl", ptr %t84, i32 0, i32 2
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  store { i64, ptr } %t87, ptr %l6, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t93 = icmp eq i64 %t91, 0
  br i1 %t93, label %bb24, label %bb25
bb24:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %l1, !tbaa !23
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t97, i32 0, i32 %t98, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t101, ptr %l56
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  %t102 = load i32, ptr %l56, !tbaa !23
  store i32 %t102, ptr %rv
  br label %ret
bb27:
  %t103 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t103, ptr %l57, !tbaa !27
  %t104 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr ptr, ptr %t105, i64 0
  %t107 = load ptr, ptr %t106, !tbaa !39
  %t109 = getelementptr %"compiler/ast:Param", ptr %t107, i32 0, i32 2
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  br i1 %t112, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s6
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 10
  store ptr %t116, ptr %l63, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/generic:Program", ptr %t117, i32 0, i32 2
  %t120 = load i32, ptr %l1, !tbaa !23
  %t123 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t119, i32 %t120)
  store i32 %t123, ptr %l67
  br label %bb30
bb29:
  br label %bb42
bb30:
  %t124 = load i32, ptr %l67, !tbaa !23
  %t125 = sext i32 %t124 to i64
  %t126 = load ptr, ptr %l63, !tbaa !29
  %t128 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__H9cb5d99387f926677a92c13412f9a8b2(ptr %v0, ptr %t126, i64 %t125)
  %t129 = extractvalue { i32, i32 } %t128, 1
  %t130 = extractvalue { i32, i32 } %t128, 0
  store i32 %t130, ptr %l70
  %t131 = icmp ne i32 %t130, 0
  br i1 %t131, label %bb32, label %ok.132, !prof !99
ok.132:
  store i32 %t129, ptr %l69
  br label %bb31
bb31:
  %t133 = load i32, ptr %l69, !tbaa !23
  store i32 %t133, ptr %l61, !tbaa !23
  br label %bb35
bb32:
  br label %bb33
bb33:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t135, 0
  %t140 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunknowns(ptr %v0, ptr %t134, i64 %t137)
  store i32 %t140, ptr %l74
  br label %bb34
bb34:
  %t141 = load i32, ptr %l74, !tbaa !23
  store i32 %t141, ptr %l61, !tbaa !23
  br label %bb35
bb35:
  %t142 = load i32, ptr %l61, !tbaa !23
  store i32 %t142, ptr %l7, !tbaa !23
  %t143 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t143, 0
  store i64 %t145, ptr %l76, !tbaa !24
  %t146 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  store i64 %t146, ptr %l77, !tbaa !24
  %t147 = load i64, ptr %l76, !tbaa !24
  %t148 = icmp sge i64 %t147, 0
  br i1 %t148, label %bb36, label %bb37
bb36:
  %t150 = load i64, ptr %l76, !tbaa !24
  %t151 = icmp sle i64 %t150, 1152921504606846975
  br i1 %t151, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_f9e5e93c78b56bbe_6af7701bc585ea2)
  unreachable
bb38:
  %t153 = load i64, ptr %l76, !tbaa !24
  %t154 = mul i64 %t153, 8
  %t155 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t154)
  %t156 = load i64, ptr %l77, !tbaa !24
  store i64 0, ptr %t157
  br label %fill.158
fill.158:
  %t161 = load i64, ptr %t157
  %t162 = icmp slt i64 %t161, %t153
  br i1 %t162, label %fillb.159, label %filld.160
fillb.159:
  %t163 = getelementptr i64, ptr %t155, i64 %t161
  store i64 %t156, ptr %t163
  %t164 = add i64 %t161, 1
  store i64 %t164, ptr %t157
  br label %fill.158
filld.160:
  %t165 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t155, 1
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/generic:Program", ptr %t168, i32 0, i32 2
  store ptr %t170, ptr %l82, !tbaa !29
  %t171 = load i32, ptr %l7, !tbaa !23
  store i32 %t171, ptr %l83, !tbaa !23
  %t172 = load i32, ptr %l1, !tbaa !23
  store i32 %t172, ptr %l84, !tbaa !23
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/generic:Program", ptr %t173, i32 0, i32 2
  %t176 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t178 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t179 = mul i64 1, 8
  %t180 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t179)
  %t181 = insertvalue { i64, ptr } undef, i64 1, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  store { i64, ptr } %t182, ptr %l90, !tbaa !27
  %t184 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr i64, ptr %t185, i64 0
  store i64 %t178, ptr %t186, !tbaa !34
  %t190 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t191 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %s6, ptr %s6, ptr %t175, i64 %t176, { i64, ptr } %t166, { i64, ptr } %t190)
  store i32 %t191, ptr %l91
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_f9e5e93c78b56bbe_6af7701bc585ea2)
  unreachable
bb40:
  %t192 = load ptr, ptr %l82, !tbaa !29
  %t193 = load i32, ptr %l83, !tbaa !23
  %t194 = load i32, ptr %l84, !tbaa !23
  %t195 = load i32, ptr %l91, !tbaa !23
  %t196 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t192, i32 %t193, i32 %t194, i32 0, i32 %t195, i64 0, i1 false, i32 0, i64 0)
  store i32 %t196, ptr %l92
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s3)
  %t197 = load i32, ptr %l92, !tbaa !23
  store i32 %t197, ptr %rv
  br label %ret
bb42:
  %t198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t198, ptr %l93, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %t201, ptr %v0, ptr %s3, ptr %t199, i32 %t200)
  call void @llvm.memmove.p0.p0.i64(ptr %l96, ptr %t201, i64 160, i1 false)
  br label %bb43
bb43:
  %t204 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t204, ptr %l96, i64 160, i1 false)
  %t205 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t206 = load i32, ptr %l1, !tbaa !23
  %t207 = load ptr, ptr %l93, !tbaa !29
  %t211 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamsSig(ptr %v0, ptr %s3, ptr %v0, ptr %s3, ptr %t207, ptr %t204, { i64, ptr } %t205, ptr null, i32 %t206)
  store i32 %t211, ptr %l100
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s3)
  %t212 = load i32, ptr %l100, !tbaa !23
  store i32 %t212, ptr %rv
  br label %ret
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  %t213 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t213, ptr %rv
  br label %ret
bb49:
  call void @__olang_check_failed(ptr @olang_loc_2d8c89c88aa67454_7b49ff00081a1220)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclWord(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l6 = alloca i32
  %l11 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca ptr
  %l20 = alloca i32
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
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i32 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l15
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t25 = load i32, ptr %l15, !tbaa !23
  %t26 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t24, i32 %t25)
  store ptr %t26, ptr %l16
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l16, !tbaa !29
  store ptr %t27, ptr %l2, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr %"compiler/ast:TypeDecl", ptr %t34, i32 0, i32 5
  %t37 = load i32, ptr %t36, !range !{i32 0, i32 3}
  store i32 %t37, ptr %l20
  br label %bb9
bb8:
  store i32 0, ptr %l20
  br label %bb9
bb9:
  %t40 = load i32, ptr %l20, !range !{i32 0, i32 3}
  store i32 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/generic:Desc"
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
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l23 = alloca %"compiler/generic:Desc"
  %l27 = alloca i1
  %l31 = alloca i32
  %l39 = alloca i32
  %l42 = alloca ptr
  %l46 = alloca i64
  %l47 = alloca ptr
  %l50 = alloca i1
  %l54 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca { i64, ptr }
  %l67 = alloca i64
  %l70 = alloca i64
  %l88 = alloca i32
  %l91 = alloca i32
  %l98 = alloca i64
  %l101 = alloca i64
  %l121 = alloca { i64, ptr }
  %l124 = alloca i32
  %l136 = alloca { i64, ptr }
  %l138 = alloca i64
  %l139 = alloca i64
  %l143 = alloca i64
  %l144 = alloca i32
  %l149 = alloca { i64, ptr }
  %l153 = alloca %"compiler/generic:Desc"
  %l157 = alloca i1
  %l161 = alloca i64
  %l164 = alloca { i64, ptr }
  %l166 = alloca i64
  %l169 = alloca { i64, ptr }
  %l174 = alloca i64
  %l176 = alloca { i64, ptr }
  %l180 = alloca %"compiler/generic:Desc"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca %"compiler/generic:Desc"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescNone, !tbaa !24
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = call %"compiler/generic:Desc" @compiler_2fgeneric_3aDesc_2ector(ptr %s0, i64 %t1, i32 %t2, i64 0, i64 0)
  store %"compiler/generic:Desc" %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load %"compiler/generic:Desc", ptr %l23
  store %"compiler/generic:Desc" %t6, ptr %l2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l31
  br label %bb4
bb4:
  %t20 = load i32, ptr %l31, !range !{i32 0, i32 33}
  %t22 = trunc i64 18 to i32
  %t23 = icmp eq i32 %t20, %t22
  %t25 = xor i1 %t23, true
  store i1 %t25, ptr %l27, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l27, !tbaa !21
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t28 = load %"compiler/generic:Desc", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Desc" %t28, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l39
  br label %bb9
bb9:
  %t37 = load i32, ptr %l39, !tbaa !23
  store i32 %t37, ptr %l3, !tbaa !23
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/load:Loader", ptr %t41, i32 0, i32 10
  store ptr %t43, ptr %l42, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l3, !tbaa !23
  %t50 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t46, i32 %t47)
  store i64 %t50, ptr %l46
  br label %bb10
bb10:
  %t51 = load ptr, ptr %l42, !tbaa !29
  %t52 = load i64, ptr %l46, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  store ptr %t53, ptr %l47
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l47, !tbaa !29
  %t56 = getelementptr %"compiler/load:Module", ptr %t54, i32 0, i32 2
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t59, ptr %l50
  br label %bb12
bb12:
  %t60 = load i1, ptr %l50, !tbaa !21
  %t61 = xor i1 %t60, true
  br i1 %t61, label %bb13, label %bb14
bb13:
  %t63 = load %"compiler/generic:Desc", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Desc" %t63, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  store ptr %t67, ptr %l54, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %l1, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l58
  br label %bb16
bb16:
  %t75 = load ptr, ptr %l54, !tbaa !29
  %t76 = load i32, ptr %l58, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t75, i32 %t76)
  store { i64, ptr } %t77, ptr %l59
  br label %bb17
bb17:
  %t78 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t78, ptr %l4, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t83 = icmp slt i64 %t81, 2
  br i1 %t83, label %bb18, label %bb19
bb18:
  %t85 = load %"compiler/generic:Desc", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Desc" %t85, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  store i64 1, ptr %l5, !tbaa !24
  store i64 6, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t88 = load i64, ptr %l5, !tbaa !24
  %t91 = icmp sgt i64 %t87, %t88
  br i1 %t91, label %bb21, label %bb22
bb21:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = icmp sgt i64 %t93, 0
  br i1 %t95, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb26
bb23:
  %t97 = load i64, ptr %l6, !tbaa !24
  %t98 = load i64, ptr %l5, !tbaa !24
  %t101 = sub i64 %t97, %t98
  %t102 = load i64, ptr %l7, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t107 = sub i64 %t105, 1
  %t108 = load i64, ptr %l7, !tbaa !24
  %t111 = sdiv i64 %t107, %t108
  store i64 %t111, ptr %l70, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb25
bb25:
  %t113 = load i64, ptr %l70, !tbaa !24
  store i64 %t113, ptr %l67, !tbaa !24
  br label %bb26
bb26:
  %t114 = load i64, ptr %l67, !tbaa !24
  store i64 %t114, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t115 = load i64, ptr %l9, !tbaa !24
  %t116 = load i64, ptr %l8, !tbaa !24
  %t119 = icmp slt i64 %t115, %t116
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb73
bb29:
  br label %bb30
bb30:
  %t123 = load i64, ptr %l5, !tbaa !24
  %t124 = load i64, ptr %l9, !tbaa !24
  %t125 = load i64, ptr %l7, !tbaa !24
  %t128 = mul i64 %t124, %t125
  %t131 = add i64 %t123, %t128
  store i64 %t131, ptr %l10, !tbaa !24
  %t133 = load i32, ptr %l3, !tbaa !23
  store i32 %t133, ptr %l88, !tbaa !23
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i64, ptr %l10, !tbaa !24
  %t138 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edescDecl(ptr %v0, ptr %t134, i64 %t135)
  store i32 %t138, ptr %l91
  br label %bb31
bb31:
  %t139 = load i32, ptr %l88, !tbaa !23
  %t140 = load i32, ptr %l91, !tbaa !23
  %t141 = icmp ne i32 %t139, %t140
  br i1 %t141, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s5)
  br label %bb72
bb33:
  br label %bb34
bb34:
  store i64 1, ptr %l11, !tbaa !24
  %t143 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t143, 0
  store i64 %t145, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t147 = load i64, ptr %l12, !tbaa !24
  %t148 = load i64, ptr %l11, !tbaa !24
  %t151 = icmp sgt i64 %t147, %t148
  br i1 %t151, label %bb35, label %bb36
bb35:
  %t153 = load i64, ptr %l13, !tbaa !24
  %t155 = icmp sgt i64 %t153, 0
  br i1 %t155, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb40
bb37:
  %t157 = load i64, ptr %l12, !tbaa !24
  %t158 = load i64, ptr %l11, !tbaa !24
  %t161 = sub i64 %t157, %t158
  %t162 = load i64, ptr %l13, !tbaa !24
  %t165 = add i64 %t161, %t162
  %t167 = sub i64 %t165, 1
  %t168 = load i64, ptr %l13, !tbaa !24
  %t171 = sdiv i64 %t167, %t168
  store i64 %t171, ptr %l101, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb39
bb39:
  %t173 = load i64, ptr %l101, !tbaa !24
  store i64 %t173, ptr %l98, !tbaa !24
  br label %bb40
bb40:
  %t174 = load i64, ptr %l98, !tbaa !24
  store i64 %t174, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb41
bb41:
  %t175 = load i64, ptr %l15, !tbaa !24
  %t176 = load i64, ptr %l14, !tbaa !24
  %t179 = icmp slt i64 %t175, %t176
  %t181 = xor i1 %t179, true
  br i1 %t181, label %bb42, label %bb43
bb42:
  br label %bb50
bb43:
  br label %bb44
bb44:
  %t183 = load i64, ptr %l11, !tbaa !24
  %t184 = load i64, ptr %l15, !tbaa !24
  %t185 = load i64, ptr %l13, !tbaa !24
  %t188 = mul i64 %t184, %t185
  %t191 = add i64 %t183, %t188
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/generic:Program", ptr %t193, i32 0, i32 2
  %t196 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t196, ptr %l121, !tbaa !27
  %t199 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr i32, ptr %t200, i64 %t191
  %t202 = load i32, ptr %t201, !tbaa !33
  %t205 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t195, i32 %t202)
  store i32 %t205, ptr %l124
  br label %bb45
bb45:
  %t206 = load i32, ptr %l124, !range !{i32 0, i32 33}
  %t208 = trunc i64 26 to i32
  %t209 = icmp eq i32 %t206, %t208
  %t211 = xor i1 %t209, true
  br i1 %t211, label %bb46, label %bb47
bb46:
  %t213 = load %"compiler/generic:Desc", ptr %l2
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Desc" %t213, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t215 = load i64, ptr %l15, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l15, !tbaa !24
  br label %bb41
bb50:
  %t219 = load i64, ptr %l10, !tbaa !24
  %t220 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t223 = icmp eq i64 %t219, %t220
  br i1 %t223, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s11
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 2
  %t228 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t228, ptr %l136, !tbaa !27
  %t229 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr i32, ptr %t230, i64 1
  %t232 = load i32, ptr %t231, !tbaa !33
  %t235 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t227, i32 %t232)
  store i64 %t235, ptr %l138
  br label %bb53
bb52:
  br label %bb62
bb53:
  %t236 = load i64, ptr %l138, !tbaa !24
  store i64 %t236, ptr %l17, !tbaa !24
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 31
  %t240 = load i64, ptr %l17, !tbaa !24
  %t243 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t239, i64 %t240)
  %t244 = extractvalue { i32, i64 } %t243, 1
  %t245 = extractvalue { i32, i64 } %t243, 0
  store i32 %t245, ptr %l144
  %t246 = icmp ne i32 %t245, 0
  br i1 %t246, label %bb55, label %ok.247, !prof !99
ok.247:
  store i64 %t244, ptr %l143
  br label %bb54
bb54:
  %t248 = load i64, ptr %l143, !tbaa !24
  store i64 %t248, ptr %l139, !tbaa !24
  br label %bb57
bb55:
  br label %bb56
bb56:
  store i64 -1, ptr %l139, !tbaa !24
  br label %bb57
bb57:
  %t249 = load i64, ptr %l139, !tbaa !24
  store i64 %t249, ptr %l18, !tbaa !24
  %t250 = load i64, ptr %l18, !tbaa !24
  %t252 = icmp slt i64 %t250, 0
  br i1 %t252, label %bb58, label %bb59
bb58:
  %t254 = load %"compiler/generic:Desc", ptr %l2
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Desc" %t254, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t256 = load i64, ptr %l10, !tbaa !24
  %t257 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t257, ptr %l149, !tbaa !27
  %t258 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr i32, ptr %t259, i64 0
  %t261 = load i32, ptr %t260, !tbaa !33
  %t262 = load i64, ptr %l18, !tbaa !24
  %t263 = load i64, ptr %l17, !tbaa !24
  %t268 = call %"compiler/generic:Desc" @compiler_2fgeneric_3aDesc_2ector(ptr %s11, i64 %t256, i32 %t261, i64 %t262, i64 %t263)
  store %"compiler/generic:Desc" %t268, ptr %l153
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t269 = load %"compiler/generic:Desc", ptr %l153
  store %"compiler/generic:Desc" %t269, ptr %rv
  br label %ret
bb62:
  %t270 = load i64, ptr %l10, !tbaa !24
  %t271 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t274 = icmp eq i64 %t270, %t271
  br i1 %t274, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l157, !tbaa !21
  br label %bb65
bb64:
  %t276 = load i64, ptr %l10, !tbaa !24
  %t277 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t280 = icmp eq i64 %t276, %t277
  store i1 %t280, ptr %l157, !tbaa !21
  br label %bb65
bb65:
  %t282 = load i1, ptr %l157, !tbaa !21
  br i1 %t282, label %bb66, label %bb67
bb66:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/generic:Program", ptr %t283, i32 0, i32 2
  %t286 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t286, ptr %l164, !tbaa !27
  %t287 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr i32, ptr %t288, i64 1
  %t290 = load i32, ptr %t289, !tbaa !33
  %t293 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t285, i32 %t290)
  store i64 %t293, ptr %l166
  br label %bb68
bb67:
  store i64 0, ptr %l161, !tbaa !24
  br label %bb69
bb68:
  %t294 = load i64, ptr %l166, !tbaa !24
  store i64 %t294, ptr %l161, !tbaa !24
  br label %bb69
bb69:
  %t295 = load i64, ptr %l161, !tbaa !24
  store i64 %t295, ptr %l19, !tbaa !24
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/generic:Program", ptr %t296, i32 0, i32 2
  %t299 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t299, ptr %l169, !tbaa !27
  %t300 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t304 = sub i64 %t302, 1
  %t306 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr i32, ptr %t307, i64 %t304
  %t309 = load i32, ptr %t308, !tbaa !33
  %t312 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t298, i32 %t309)
  store i64 %t312, ptr %l174
  br label %bb70
bb70:
  %t313 = load i64, ptr %l174, !tbaa !24
  %t314 = load i64, ptr %l10, !tbaa !24
  %t315 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t315, ptr %l176, !tbaa !27
  %t316 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr i32, ptr %t317, i64 0
  %t319 = load i32, ptr %t318, !tbaa !33
  %t320 = load i64, ptr %l19, !tbaa !24
  %t326 = call %"compiler/generic:Desc" @compiler_2fgeneric_3aDesc_2ector(ptr %s5, i64 %t314, i32 %t319, i64 %t320, i64 %t313)
  store %"compiler/generic:Desc" %t326, ptr %l180
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t327 = load %"compiler/generic:Desc", ptr %l180
  store %"compiler/generic:Desc" %t327, ptr %rv
  br label %ret
bb72:
  %t328 = load i64, ptr %l9, !tbaa !24
  %t330 = add i64 %t328, 1
  store i64 %t330, ptr %l9, !tbaa !24
  br label %bb27
bb73:
  %t332 = load %"compiler/generic:Desc", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Desc" %t332, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Desc", ptr %rv
  ret %"compiler/generic:Desc" %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eEndsHeld(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l25 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %rv = alloca i1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:TypeDecl", ptr %t1, i32 0, i32 5
  %t4 = load i32, ptr %t3, !range !{i32 0, i32 3}
  %t6 = trunc i64 2 to i32
  %t7 = icmp eq i32 %t4, %t6
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/ast:TypeDecl", ptr %t9, i32 0, i32 1
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t16 = icmp eq i64 %t14, 0
  store i1 %t16, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t18 = load i1, ptr %l8, !tbaa !21
  br i1 %t18, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/ast:TypeDecl", ptr %t19, i32 0, i32 3
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  store i1 %t24, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t26 = load i1, ptr %l13, !tbaa !21
  br i1 %t26, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb10
bb8:
  %t31 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLibrary(ptr %v0, ptr %a0, i64 %a1)
  store i1 %t31, ptr %l20
  br label %bb9
bb9:
  %t32 = load i1, ptr %l20, !tbaa !21
  %t33 = xor i1 %t32, true
  store i1 %t33, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l17, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr %"compiler/ast:TypeDecl", ptr %t37, i32 0, i32 3
  %t40 = load ptr, ptr %t39, !tbaa !29
  store ptr %t40, ptr %l3, !tbaa !29
  %t42 = load ptr, ptr %l3, !tbaa !29
  store ptr %t42, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t43 = load ptr, ptr %l26, !tbaa !29
  %t44 = icmp ne ptr %t43, null
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t46 = load ptr, ptr %l26, !tbaa !29
  %t47 = load i64, ptr %t46, !range !{i64 0, i64 5}
  %t49 = icmp eq i64 %t47, 0
  store i1 %t49, ptr %l27, !tbaa !21
  br label %bb15
bb15:
  %t50 = load i1, ptr %l27, !tbaa !21
  br i1 %t50, label %bb16, label %bb17
bb16:
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t53 = getelementptr { i64, [6 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { ptr }, ptr %t53, i32 0, i32 0
  %t55 = load ptr, ptr %t54
  store ptr %t55, ptr %l4, !tbaa !29
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = getelementptr %"compiler/ast:StructBody", ptr %t57, i32 0, i32 4
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t64 = icmp sgt i64 %t62, 0
  store i1 %t64, ptr %l25, !tbaa !21
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_4139559e1c186529_46f8c3a78fef470d)
  unreachable
bb24:
  %t66 = load i1, ptr %l25, !tbaa !21
  store i1 %t66, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i1
  %l5 = alloca ptr
  %l8 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l9 = alloca i1
  %l10 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 17
  store ptr %t3, ptr %l5, !tbaa !29
  %t8 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %a1, i64 %a2)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l5, !tbaa !29
  %t10 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  %t11 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %t9, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t10)
  %t12 = extractvalue { i32, i1 } %t11, 1
  %t13 = extractvalue { i32, i1 } %t11, 0
  store i32 %t13, ptr %l10
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store i1 %t12, ptr %l9
  br label %bb2
bb2:
  %t16 = load i1, ptr %l9, !tbaa !21
  store i1 %t16, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t17 = load i1, ptr %l3, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca i1
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
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
  %t11 = icmp sge i64 0, 0
  br i1 %t11, label %bb4, label %bb5
bb3:
  br label %bb8
bb4:
  %t13 = icmp sle i64 0, 1152921504606846975
  br i1 %t13, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_e11f9621bf6c2a4e_ffbbdf781a3c7e7a)
  unreachable
bb6:
  %t15 = mul i64 0, 8
  %t16 = insertvalue { i64, ptr } undef, i64 0, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t17, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_e11f9621bf6c2a4e_ffbbdf781a3c7e7a)
  unreachable
bb8:
  %t19 = load ptr, ptr %l2, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 11}
  %t26 = icmp eq i64 %t24, 5
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l14, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr { i64, [8 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t30, i32 0, i32 3
  %t32 = load { i64, ptr }, ptr %t31
  store { i64, ptr } %t32, ptr %l3, !tbaa !27
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t34 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t34, ptr %l12, !tbaa !27
  br label %bb23
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t36 = icmp sge i64 0, 0
  br i1 %t36, label %bb18, label %bb19
bb18:
  %t38 = icmp sle i64 0, 1152921504606846975
  br i1 %t38, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_882f12ba06d2ce43_a9b5d482619655cf)
  unreachable
bb20:
  %t40 = mul i64 0, 8
  %t41 = insertvalue { i64, ptr } undef, i64 0, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t42, ptr %l12, !tbaa !27
  br label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_882f12ba06d2ce43_a9b5d482619655cf)
  unreachable
bb22:
  call void @__olang_check_failed(ptr @olang_loc_76207083d0f68b9f_74e05cac4bc21103)
  unreachable
bb23:
  %t44 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t44, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
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

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorTypeHint(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
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
  %l16 = alloca %"compiler/names:Entry"
  %l17 = alloca { i64, ptr }
  %l19 = alloca %"compiler/msgs:Nearest"
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca i1
  %l57 = alloca ptr
  %l65 = alloca ptr
  %l68 = alloca i64
  %l72 = alloca i64
  %l75 = alloca i64
  %l97 = alloca ptr
  %l101 = alloca %"compiler/names:Entry"
  %l107 = alloca { i64, ptr }
  %l111 = alloca i1
  %l113 = alloca i1
  %l116 = alloca ptr
  %l120 = alloca i32
  %l121 = alloca i32
  %l131 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v1, ptr %s0, { i64, ptr } %a2)
  store %"compiler/msgs:Nearest" %t3, ptr %l19
  br label %bb1
bb1:
  %t4 = load %"compiler/msgs:Nearest", ptr %l19
  %t5 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t4, ptr %t5
  store ptr %t5, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/load:Loader", ptr %t10, i32 0, i32 10
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l24
  br label %bb2
bb2:
  %t15 = load i64, ptr %l24, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb8
bb5:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l6, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l31, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb7
bb7:
  %t42 = load i64, ptr %l31, !tbaa !24
  store i64 %t42, ptr %l28, !tbaa !24
  br label %bb8
bb8:
  %t43 = load i64, ptr %l28, !tbaa !24
  store i64 %t43, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb10, label %bb11
bb10:
  br label %bb54
bb11:
  br label %bb12
bb12:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l9, !tbaa !24
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l1, !tbaa !24
  %t66 = icmp ne i64 %t62, %t63
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 0
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/load:Loader", ptr %t71, i32 0, i32 10
  %t74 = load i64, ptr %l9, !tbaa !24
  %t77 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t73, i64 %t74)
  store ptr %t77, ptr %l57
  br label %bb15
bb14:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb16
bb15:
  %t78 = load ptr, ptr %l57, !tbaa !29
  %t80 = getelementptr %"compiler/load:Module", ptr %t78, i32 0, i32 3
  %t81 = load i1, ptr %t80, !tbaa !21
  %t83 = xor i1 %t81, true
  store i1 %t83, ptr %l52, !tbaa !21
  br label %bb16
bb16:
  %t85 = load i1, ptr %l52, !tbaa !21
  br i1 %t85, label %bb17, label %bb18
bb17:
  br label %bb53
bb18:
  br label %bb19
bb19:
  store i64 0, ptr %l10, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/names:Resolver", ptr %t89, i32 0, i32 1
  %t92 = load i64, ptr %l9, !tbaa !24
  %t95 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t91, i64 %t92)
  store ptr %t95, ptr %l65
  br label %bb20
bb20:
  %t96 = load ptr, ptr %l65, !tbaa !29
  %t98 = getelementptr %"compiler/names:Table", ptr %t96, i32 0, i32 0
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t98)
  store i64 %t100, ptr %l68
  br label %bb21
bb21:
  %t101 = load i64, ptr %l68, !tbaa !24
  store i64 %t101, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t102 = load i64, ptr %l11, !tbaa !24
  %t103 = load i64, ptr %l10, !tbaa !24
  %t106 = icmp sgt i64 %t102, %t103
  br i1 %t106, label %bb22, label %bb23
bb22:
  %t108 = load i64, ptr %l12, !tbaa !24
  %t110 = icmp sgt i64 %t108, 0
  br i1 %t110, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb27
bb24:
  %t112 = load i64, ptr %l11, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t116 = sub i64 %t112, %t113
  %t117 = load i64, ptr %l12, !tbaa !24
  %t120 = add i64 %t116, %t117
  %t122 = sub i64 %t120, 1
  %t123 = load i64, ptr %l12, !tbaa !24
  %t126 = sdiv i64 %t122, %t123
  store i64 %t126, ptr %l75, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb26
bb26:
  %t128 = load i64, ptr %l75, !tbaa !24
  store i64 %t128, ptr %l72, !tbaa !24
  br label %bb27
bb27:
  %t129 = load i64, ptr %l72, !tbaa !24
  store i64 %t129, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb28
bb28:
  %t130 = load i64, ptr %l14, !tbaa !24
  %t131 = load i64, ptr %l13, !tbaa !24
  %t134 = icmp slt i64 %t130, %t131
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb29, label %bb30
bb29:
  br label %bb52
bb30:
  br label %bb31
bb31:
  %t138 = load i64, ptr %l10, !tbaa !24
  %t139 = load i64, ptr %l14, !tbaa !24
  %t140 = load i64, ptr %l12, !tbaa !24
  %t143 = mul i64 %t139, %t140
  %t146 = add i64 %t138, %t143
  store i64 %t146, ptr %l15, !tbaa !24
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/names:Resolver", ptr %t151, i32 0, i32 1
  %t154 = load i64, ptr %l9, !tbaa !24
  %t157 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t153, i64 %t154)
  store ptr %t157, ptr %l97
  br label %bb32
bb32:
  %t158 = load ptr, ptr %l97, !tbaa !29
  %t160 = getelementptr %"compiler/names:Table", ptr %t158, i32 0, i32 0
  %t161 = load i64, ptr %l15, !tbaa !24
  %t164 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t160, i64 %t161)
  store %"compiler/names:Entry" %t164, ptr %l101
  br label %bb33
bb33:
  %t165 = load %"compiler/names:Entry", ptr %l101
  store %"compiler/names:Entry" %t165, ptr %l16
  %t166 = getelementptr %"compiler/names:Entry", ptr %l16, i32 0, i32 2
  %t167 = load i32, ptr %t166, !range !{i32 0, i32 9}
  %t169 = trunc i64 4 to i32
  %t170 = icmp eq i32 %t167, %t169
  %t172 = xor i1 %t170, true
  br i1 %t172, label %bb34, label %bb35
bb34:
  br label %bb51
bb35:
  br label %bb36
bb36:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/names:Entry", ptr %l16, i32 0, i32 0
  %t176 = load i32, ptr %t175, !tbaa !23
  %t179 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t174, i32 %t176)
  store { i64, ptr } %t179, ptr %l107
  br label %bb37
bb37:
  %t180 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t180, ptr %l17, !tbaa !27
  %t181 = load i64, ptr %l9, !tbaa !24
  %t182 = load i64, ptr %l1, !tbaa !24
  %t185 = icmp ne i64 %t181, %t182
  br i1 %t185, label %bb38, label %bb39
bb38:
  %t187 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t189 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t187)
  store i1 %t189, ptr %l113
  br label %bb40
bb39:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb41
bb40:
  %t190 = load i1, ptr %l113, !tbaa !21
  %t191 = xor i1 %t190, true
  store i1 %t191, ptr %l111, !tbaa !21
  br label %bb41
bb41:
  %t193 = load i1, ptr %l111, !tbaa !21
  br i1 %t193, label %bb42, label %bb43
bb42:
  br label %bb51
bb43:
  br label %bb44
bb44:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/generic:Program", ptr %t194, i32 0, i32 2
  store ptr %t196, ptr %l116, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load i64, ptr %l9, !tbaa !24
  %t199 = load i64, ptr %l15, !tbaa !24
  %t203 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t197, i64 %t198, i64 %t199)
  store i32 %t203, ptr %l120
  br label %bb45
bb45:
  %t204 = load ptr, ptr %l116, !tbaa !29
  %t205 = load i32, ptr %l120, !tbaa !23
  %t206 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t204, i32 %t205)
  store i32 %t206, ptr %l121
  br label %bb46
bb46:
  %t207 = load i32, ptr %l121, !range !{i32 0, i32 6}
  %t209 = trunc i64 2 to i32
  %t210 = icmp eq i32 %t207, %t209
  br i1 %t210, label %bb47, label %bb48
bb47:
  %t212 = load ptr, ptr %l3, !tbaa !29
  %t213 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t212, { i64, ptr } %t213)
  br label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t216 = load i64, ptr %l14, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l14, !tbaa !24
  br label %bb28
bb52:
  br label %bb53
bb53:
  %t220 = load i64, ptr %l8, !tbaa !24
  %t222 = add i64 %t220, 1
  store i64 %t222, ptr %l8, !tbaa !24
  br label %bb9
bb54:
  %t224 = load ptr, ptr %l3, !tbaa !29
  %t226 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s0, ptr %v2, ptr %t224)
  store { i64, ptr } %t226, ptr %l131
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s0)
  %t227 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t227, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca i1
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
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
  %t11 = icmp sge i64 0, 0
  br i1 %t11, label %bb4, label %bb5
bb3:
  br label %bb8
bb4:
  %t13 = icmp sle i64 0, 2305843009213693951
  br i1 %t13, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_de4c5053baae2eb0_7e20459b6f7605c4)
  unreachable
bb6:
  %t15 = mul i64 0, 4
  %t16 = insertvalue { i64, ptr } undef, i64 0, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t17, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_de4c5053baae2eb0_7e20459b6f7605c4)
  unreachable
bb8:
  %t19 = load ptr, ptr %l2, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 11}
  %t26 = icmp eq i64 %t24, 5
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l14, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr { i64, [8 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t30, i32 0, i32 2
  %t32 = load { i64, ptr }, ptr %t31
  store { i64, ptr } %t32, ptr %l3, !tbaa !27
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t34 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t34, ptr %l12, !tbaa !27
  br label %bb23
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t36 = icmp sge i64 0, 0
  br i1 %t36, label %bb18, label %bb19
bb18:
  %t38 = icmp sle i64 0, 2305843009213693951
  br i1 %t38, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_16d3c7726565025d_3b40f943fadf33d1)
  unreachable
bb20:
  %t40 = mul i64 0, 4
  %t41 = insertvalue { i64, ptr } undef, i64 0, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t42, ptr %l12, !tbaa !27
  br label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_16d3c7726565025d_3b40f943fadf33d1)
  unreachable
bb22:
  call void @__olang_check_failed(ptr @olang_loc_7b14d935e96e16e5_1eebf856974cc301)
  unreachable
bb23:
  %t44 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t44, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i1
  %l12 = alloca ptr
  %l14 = alloca i64
  %l17 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %t1, i32 %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t7, i32 %t8)
  store i64 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load i64, ptr %l8, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l12, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t20 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t18)
  store i64 %t20, ptr %l14
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb7
bb5:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = sub i64 %t21, 1
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t25 = load i64, ptr %l14, !tbaa !24
  %t27 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %t24, i64 %t25, i64 %t23)
  store i1 %t27, ptr %l17
  br label %bb6
bb6:
  %t28 = load i1, ptr %l17, !tbaa !21
  store i1 %t28, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l11, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/generic:varRow"
  %l21 = alloca i64
  %l24 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i64
  %l72 = alloca %"compiler/generic:varRow"
  %l76 = alloca i1
  %l78 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l90 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Binding", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t10 = icmp sgt i64 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp sgt i64 %t12, 0
  br i1 %t14, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb3:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t20 = sub i64 %t16, %t17
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = add i64 %t20, %t21
  %t26 = sub i64 %t24, 1
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = sdiv i64 %t26, %t27
  store i64 %t30, ptr %l24, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb5
bb5:
  %t32 = load i64, ptr %l24, !tbaa !24
  store i64 %t32, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l21, !tbaa !24
  store i64 %t33, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb8, label %bb9
bb8:
  br label %bb38
bb9:
  br label %bb10
bb10:
  %t42 = load i64, ptr %l2, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = mul i64 %t43, %t44
  %t50 = add i64 %t42, %t47
  store i64 %t50, ptr %l7, !tbaa !24
  store i1 false, ptr %l8, !tbaa !21
  store i64 0, ptr %l9, !tbaa !24
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Binding", ptr %t52, i32 0, i32 1
  %t55 = load i64, ptr %t54, !tbaa !24
  store i64 %t55, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t58 = load i64, ptr %l9, !tbaa !24
  %t61 = icmp sgt i64 %t57, %t58
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t63 = load i64, ptr %l11, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb16
bb13:
  %t67 = load i64, ptr %l10, !tbaa !24
  %t68 = load i64, ptr %l9, !tbaa !24
  %t71 = sub i64 %t67, %t68
  %t72 = load i64, ptr %l11, !tbaa !24
  %t75 = add i64 %t71, %t72
  %t77 = sub i64 %t75, 1
  %t78 = load i64, ptr %l11, !tbaa !24
  %t81 = sdiv i64 %t77, %t78
  store i64 %t81, ptr %l50, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb15
bb15:
  %t83 = load i64, ptr %l50, !tbaa !24
  store i64 %t83, ptr %l47, !tbaa !24
  br label %bb16
bb16:
  %t84 = load i64, ptr %l47, !tbaa !24
  store i64 %t84, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb17
bb17:
  %t85 = load i64, ptr %l13, !tbaa !24
  %t86 = load i64, ptr %l12, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb18, label %bb19
bb18:
  br label %bb33
bb19:
  br label %bb20
bb20:
  %t93 = load i64, ptr %l9, !tbaa !24
  %t94 = load i64, ptr %l13, !tbaa !24
  %t95 = load i64, ptr %l11, !tbaa !24
  %t98 = mul i64 %t94, %t95
  %t101 = add i64 %t93, %t98
  store i64 %t101, ptr %l14, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Binding", ptr %t104, i32 0, i32 0
  %t107 = load i64, ptr %t106, !tbaa !24
  %t108 = load i64, ptr %l14, !tbaa !24
  %t112 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t103, i64 %t107, i64 %t108)
  store %"compiler/generic:varRow" %t112, ptr %l72
  br label %bb21
bb21:
  %t113 = load %"compiler/generic:varRow", ptr %l72
  store %"compiler/generic:varRow" %t113, ptr %l15
  %t114 = getelementptr %"compiler/generic:varRow", ptr %l15, i32 0, i32 3
  %t115 = load i32, ptr %t114, !tbaa !23
  %t116 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t119 = icmp eq i32 %t115, %t116
  br i1 %t119, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb24
bb23:
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Binding", ptr %t121, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l78, !tbaa !27
  %t125 = load i64, ptr %l14, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i32, ptr %t128, i64 %t125
  %t130 = load i32, ptr %t129, !tbaa !33
  %t131 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t134 = icmp eq i32 %t130, %t131
  store i1 %t134, ptr %l76, !tbaa !21
  br label %bb24
bb24:
  %t136 = load i1, ptr %l76, !tbaa !21
  br i1 %t136, label %bb25, label %bb26
bb25:
  br label %bb32
bb26:
  br label %bb27
bb27:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Binding", ptr %t138, i32 0, i32 2
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  store { i64, ptr } %t141, ptr %l85, !tbaa !27
  %t142 = load i64, ptr %l14, !tbaa !24
  %t144 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr i32, ptr %t145, i64 %t142
  %t147 = load i32, ptr %t146, !tbaa !33
  %t148 = getelementptr %"compiler/generic:varRow", ptr %l15, i32 0, i32 3
  %t149 = load i32, ptr %t148, !tbaa !23
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t155 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyBound(ptr %v0, ptr %v1, ptr %t137, i32 %t147, i32 %t149, ptr %t150, i64 0)
  store i64 %t155, ptr %l90
  br label %bb28
bb28:
  %t156 = load i64, ptr %l90, !tbaa !24
  %t157 = icmp sgt i64 %t156, 0
  br i1 %t157, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t159 = load i64, ptr %l13, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l13, !tbaa !24
  br label %bb17
bb33:
  %t163 = load i1, ptr %l8, !tbaa !21
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t167 = load i64, ptr %l6, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l6, !tbaa !24
  br label %bb7
bb38:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t8 = getelementptr %"compiler/generic:instance", ptr %l5, i32 0, i32 1
  %t9 = load i32, ptr %t8, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumnVec(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeNamed(ptr %v0, ptr %s0, ptr %a0, i32 %a1, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d1, i32 0, i32 1) })
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

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsEntry(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l5 = alloca i64
  %l13 = alloca ptr
  %l17 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %l27 = alloca { i64, ptr }
  %l28 = alloca i1
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
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t1, i64 %t2)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/load:Loader", ptr %t9, i32 0, i32 12
  %t12 = load i64, ptr %t11, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp ne i64 %t13, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l13
  br label %bb5
bb5:
  %t23 = load ptr, ptr %l13, !tbaa !29
  store ptr %t23, ptr %l2, !tbaa !29
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/ast:Func", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = icmp eq ptr %t27, null
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t31)
  store i1 %t33, ptr %l19
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb9
bb8:
  %t34 = load i1, ptr %l19, !tbaa !21
  %t35 = xor i1 %t34, true
  store i1 %t35, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l17, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/load:Loader", ptr %t41, i32 0, i32 3
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = getelementptr %"compiler/ast:Func", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %t47, !tbaa !23
  %t51 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t44, i32 %t48)
  store { i64, ptr } %t51, ptr %l27
  br label %bb12
bb11:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb14
bb12:
  %t52 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t53 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t53, ptr %l28
  br label %bb13
bb13:
  %t54 = load i1, ptr %l28, !tbaa !21
  store i1 %t54, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t55 = load i1, ptr %l21, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i1
  %l9 = alloca i1
  %l11 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l21 = alloca i1
  %l22 = alloca i32
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
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t10 = trunc i64 25 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 17
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t18, i32 %t19)
  store i64 %t22, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb11
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t25, i32 %t26)
  store i64 %t29, ptr %l19
  br label %bb5
bb5:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = load i64, ptr %l19, !tbaa !24
  %t32 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t30, i64 %t31)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t32, ptr %l20
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l11, !tbaa !29
  %t34 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20
  %t35 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %t33, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t34)
  %t36 = extractvalue { i32, i1 } %t35, 1
  %t37 = extractvalue { i32, i1 } %t35, 0
  store i32 %t37, ptr %l22
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb8, label %ok.39, !prof !99
ok.39:
  store i1 %t36, ptr %l21
  br label %bb7
bb7:
  %t40 = load i1, ptr %l21, !tbaa !21
  store i1 %t40, ptr %l9, !tbaa !21
  br label %bb10
bb8:
  br label %bb9
bb9:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb10
bb10:
  %t41 = load i1, ptr %l9, !tbaa !21
  store i1 %t41, ptr %l8, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t42 = load i1, ptr %l8, !tbaa !21
  store i1 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthKey(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l5 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca ptr
  %l13 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca %"compiler/source:Span"
  %l23 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l24 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l26 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l27 = alloca i32
  %l29 = alloca i1
  %l31 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l3
  store ptr %l3, ptr %l7, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 0
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/load:Loader", ptr %t6, i32 0, i32 10
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Context", ptr %t9, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t8, i64 %t12)
  store ptr %t15, ptr %l13
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l13, !tbaa !29
  %t18 = getelementptr %"compiler/load:Module", ptr %t16, i32 0, i32 4
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l15, !tbaa !24
  %t22 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %a2)
  store %"compiler/source:Span" %t22, ptr %l17
  br label %bb3
bb3:
  %t23 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 0
  %t24 = load i32, ptr %t23, !tbaa !23
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = call i64 @__olang_fmt_i64(ptr null, i64 %t25)
  %t27 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = sext i32 %t24 to i64
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t33 = add i64 %t29, %t32
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  %t35 = call i64 @__olang_fmt_i64(ptr %t34, i64 %t25)
  %t36 = getelementptr i8, ptr %t34, i64 %t26
  call void @olang_textcopy(ptr %t36, ptr %t27, i64 %t28)
  %t37 = getelementptr i8, ptr %t36, i64 %t28
  %t38 = call i64 @__olang_fmt_i64(ptr %t37, i64 %t31)
  %t39 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t34, 1
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t43 = extractvalue { i64, ptr } %t40, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t48, { i64, ptr } %t47)
  br label %bb4
bb4:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Context", ptr %t50, i32 0, i32 2
  %t54 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v1, ptr %v1, ptr %t52)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t54, ptr %l23
  br label %bb5
bb5:
  %t55 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l23
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t55, ptr %l4
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s3
  %t57 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v1, ptr %l4)
  %t58 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t57, 1
  %t59 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t57, 0
  store i32 %t59, ptr %l27
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb8, label %ok.61, !prof !99
ok.61:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t58, ptr %l26
  br label %bb7
bb7:
  %t62 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l26
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t62, ptr %l24
  br label %bb10
bb8:
  %t63 = load i32, ptr %l27, !tbaa !23
  %t64 = ashr i32 %t63, 16
  %t66 = icmp eq i32 %t64, 1
  store i1 %t66, ptr %l29, !tbaa !21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s3)
  br label %bb15
bb10:
  %t67 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l24
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t67, ptr %l5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l3, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) })
  br label %bb11
bb11:
  store ptr %l3, ptr %l31, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l5, i32 0, i32 1
  %t73 = load i32, ptr %t72, !tbaa !23
  %t75 = inttoptr i64 0 to ptr
  %t78 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s3, ptr %t75, ptr %t71, i32 %t73)
  store { i64, ptr } %t78, ptr %l36
  br label %bb12
bb12:
  %t79 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 0
  %t81 = extractvalue { i64, ptr } %t79, 1
  %t82 = mul i64 %t80, 1
  %t83 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t82)
  call void @llvm.memcpy.p0.p0.i64(ptr %t83, ptr %t81, i64 %t82, i1 false)
  %t84 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  %t86 = load ptr, ptr %l31, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t86, { i64, ptr } %t85)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb14
bb14:
  br label %bb6
bb15:
  %t89 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l3)
  store { i64, ptr } %t89, ptr %l39
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t90 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t90, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodNames(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %lp2 = alloca ptr
  %l3 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l4 = alloca %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca i32
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l15 = alloca %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708"
  %l17 = alloca %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708"
  %l18 = alloca i32
  %l20 = alloca i1
  %l23 = alloca i1
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca i64
  %l43 = alloca %"compiler/generic:fnRow"
  %l49 = alloca i1
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %l10
  br label %bb2
bb2:
  %t4 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t4, ptr %l1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l11
  br label %bb3
bb3:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t6, ptr %lp2
  %t7 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t8 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %t8
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 36
  %t13 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hce1a5ca8c8bc252d00e2ccbd39de0b40(ptr %v0, ptr %v0, ptr %t11)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t13, ptr %l14
  br label %bb4
bb4:
  %t14 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l14
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t14, ptr %l3
  br label %bb5
bb5:
  %t16 = call { i32, %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fpair_3aPair_3cI64_2c_20I64_3_Hca1409b49ac7e9b021f6a95c9301ae1a(ptr %v0, ptr %l3)
  %t17 = extractvalue { i32, %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708" } %t16, 1
  %t18 = extractvalue { i32, %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708" } %t16, 0
  store i32 %t18, ptr %l18
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb7, label %ok.20, !prof !99
ok.20:
  store %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708" %t17, ptr %l17
  br label %bb6
bb6:
  %t21 = load %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708", ptr %l17
  store %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708" %t21, ptr %l15
  br label %bb9
bb7:
  %t22 = load i32, ptr %l18, !tbaa !23
  %t23 = ashr i32 %t22, 16
  %t25 = icmp eq i32 %t23, 1
  store i1 %t25, ptr %l20, !tbaa !21
  br label %bb8
bb8:
  br label %bb17
bb9:
  %t26 = load %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708", ptr %l15
  store %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708" %t26, ptr %l4
  %t27 = getelementptr %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708", ptr %l4, i32 0, i32 0
  %t28 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t27, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  %t32 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t29)
  store i1 %t32, ptr %l23
  br label %bb10
bb10:
  %t33 = load i1, ptr %l23, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t34 = getelementptr %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708", ptr %l4, i32 0, i32 0
  %t35 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t34, i32 0, i32 1
  %t36 = load i64, ptr %t35, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t36, i1 true)
  br label %bb14
bb14:
  %t39 = load ptr, ptr %lp2
  %t40 = getelementptr %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708", ptr %l4, i32 0, i32 0
  %t41 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t40, i32 0, i32 1
  %t42 = load i64, ptr %t41, !tbaa !24
  %t44 = trunc i64 %t42 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v1, ptr %t39, i32 %t44)
  br label %bb15
bb15:
  br label %bb16
bb16:
  br label %bb5
bb17:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 38
  store ptr %t50, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t52 = load i64, ptr %l6, !tbaa !24
  store i64 %t52, ptr %l32, !tbaa !24
  %t53 = load ptr, ptr %l5, !tbaa !29
  %t55 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t53)
  store i64 %t55, ptr %l34
  br label %bb19
bb19:
  %t56 = load i64, ptr %l32, !tbaa !24
  %t57 = load i64, ptr %l34, !tbaa !24
  %t58 = icmp slt i64 %t56, %t57
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s5)
  br label %bb32
bb21:
  br label %bb22
bb22:
  %t62 = load ptr, ptr %l5, !tbaa !29
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t62, i64 %t63)
  store i64 %t66, ptr %l39
  br label %bb23
bb23:
  %t67 = load i64, ptr %l39, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 29
  %t74 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s5, ptr %t70, i64 %t67)
  store %"compiler/generic:fnRow" %t74, ptr %l43
  br label %bb24
bb24:
  %t75 = getelementptr %"compiler/generic:fnRow", ptr %l43, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/ast:Func", ptr %t76, i32 0, i32 2
  %t79 = load i32, ptr %t78, !tbaa !23
  store i32 %t79, ptr %l8, !tbaa !23
  %t81 = load i32, ptr %l8, !tbaa !23
  %t83 = sext i32 %t81 to i64
  %t86 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t83)
  store i1 %t86, ptr %l49
  br label %bb25
bb25:
  %t87 = load i1, ptr %l49, !tbaa !21
  br i1 %t87, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s5)
  br label %bb31
bb27:
  br label %bb28
bb28:
  %t88 = load i32, ptr %l8, !tbaa !23
  %t90 = sext i32 %t88 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t90, i1 true)
  br label %bb29
bb29:
  %t93 = load ptr, ptr %lp2
  %t94 = load i32, ptr %l8, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v1, ptr %t93, i32 %t94)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s5)
  br label %bb31
bb31:
  %t97 = load i64, ptr %l6, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l6, !tbaa !24
  br label %bb18
bb32:
  %t101 = load ptr, ptr %lp2
  %t102 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t101
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca %"compiler/generic:Unmet"
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca %"compiler/generic:Unmet"
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i1
  %l32 = alloca i32
  %l33 = alloca i1
  %l36 = alloca %"compiler/generic:Unmet"
  %l40 = alloca i32
  %l44 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l65 = alloca %"compiler/generic:Unmet"
  %l71 = alloca %"compiler/generic:Unmet"
  %l75 = alloca i32
  %l80 = alloca %"compiler/generic:Unmet"
  %l84 = alloca i32
  %l87 = alloca i32
  %l91 = alloca i32
  %l96 = alloca i32
  %l99 = alloca ptr
  %l103 = alloca i32
  %l104 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l119 = alloca i1
  %l120 = alloca %"compiler/generic:Unmet"
  %l124 = alloca %"compiler/generic:Unmet"
  %l128 = alloca i32
  %l131 = alloca ptr
  %l134 = alloca i1
  %l139 = alloca %"compiler/generic:Unmet"
  %l142 = alloca ptr
  %l143 = alloca i1
  %l153 = alloca i1
  %l157 = alloca i1
  %l161 = alloca i1
  %l164 = alloca %"compiler/generic:Unmet"
  %l172 = alloca { i64, ptr }
  %l175 = alloca ptr
  %l176 = alloca ptr
  %l179 = alloca %"compiler/generic:Context"
  %l183 = alloca i32
  %l185 = alloca i64
  %l189 = alloca i32
  %l190 = alloca i32
  %l194 = alloca i32
  %l198 = alloca i1
  %l208 = alloca %"compiler/generic:Unmet"
  %l221 = alloca { i64, ptr }
  %l225 = alloca i1
  %l226 = alloca ptr
  %l227 = alloca i32
  %l231 = alloca i32
  %l233 = alloca i1
  %l237 = alloca %"compiler/generic:Unmet"
  %l238 = alloca ptr
  %l239 = alloca i32
  %l240 = alloca i32
  %l244 = alloca i32
  %l246 = alloca i1
  %l250 = alloca { i64, ptr }
  %l251 = alloca i1
  %l256 = alloca i32
  %l259 = alloca i32
  %l263 = alloca i32
  %l268 = alloca i32
  %l272 = alloca i1
  %l273 = alloca ptr
  %l277 = alloca i32
  %l278 = alloca i64
  %l281 = alloca i64
  %l283 = alloca i32
  %l285 = alloca i32
  %l287 = alloca i1
  %l289 = alloca %"compiler/generic:Unmet"
  %l292 = alloca %"compiler/generic:Unmet"
  %l294 = alloca %"compiler/generic:Unmet"
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %rv = alloca %"compiler/generic:Unmet"
  %t304 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i1 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2eUnmet_2emet()
  store %"compiler/generic:Unmet" %t5, ptr %l36
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load %"compiler/generic:Unmet", ptr %l36
  store %"compiler/generic:Unmet" %t6, ptr %rv
  br label %ret
bb4:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l40
  br label %bb5
bb5:
  %t14 = load i32, ptr %l40, !range !{i32 0, i32 33}
  %t16 = trunc i64 22 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  store ptr %t21, ptr %l44, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l2, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l48
  br label %bb8
bb7:
  br label %bb21
bb8:
  %t29 = load ptr, ptr %l44, !tbaa !29
  %t30 = load i32, ptr %l48, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t31, ptr %l49
  br label %bb9
bb9:
  %t32 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t32, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb11, label %bb12
bb11:
  br label %bb19
bb12:
  br label %bb13
bb13:
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t45, ptr %l56, !tbaa !27
  %t46 = load i64, ptr %l6, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr i32, ptr %t49, i64 %t46
  %t51 = load i32, ptr %t50, !tbaa !33
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l1, !tbaa !23
  %t56 = load i1, ptr %l3, !tbaa !21
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = add i64 %t57, 1
  %t65 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %t53, i32 %t54, i32 %t51, i1 %t56, i64 %t59)
  store %"compiler/generic:Unmet" %t65, ptr %l65
  br label %bb14
bb14:
  %t66 = load %"compiler/generic:Unmet", ptr %l65
  store %"compiler/generic:Unmet" %t66, ptr %l9
  %t67 = getelementptr %"compiler/generic:Unmet", ptr %l9, i32 0, i32 0
  %t68 = load i64, ptr %t67, !tbaa !24
  %t70 = icmp sge i64 %t68, 0
  br i1 %t70, label %bb15, label %bb16
bb15:
  %t72 = load %"compiler/generic:Unmet", ptr %l9
  store %"compiler/generic:Unmet" %t72, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t74 = load i64, ptr %l6, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l6, !tbaa !24
  br label %bb10
bb19:
  %t78 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2eUnmet_2emet()
  store %"compiler/generic:Unmet" %t78, ptr %l71
  br label %bb20
bb20:
  %t79 = load %"compiler/generic:Unmet", ptr %l71
  store %"compiler/generic:Unmet" %t79, ptr %rv
  br label %ret
bb21:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l2, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l75
  br label %bb22
bb22:
  %t87 = load i32, ptr %l75, !range !{i32 0, i32 33}
  %t89 = trunc i64 18 to i32
  %t90 = icmp eq i32 %t87, %t89
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s7
  %t94 = load i32, ptr %l2, !tbaa !23
  %t96 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s7, i64 0, i32 %t94, i32 0, i1 false, i1 false, i1 false)
  store %"compiler/generic:Unmet" %t96, ptr %l80
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s7)
  %t97 = load %"compiler/generic:Unmet", ptr %l80
  store %"compiler/generic:Unmet" %t97, ptr %rv
  br label %ret
bb26:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 2
  %t101 = load i32, ptr %l1, !tbaa !23
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t104, ptr %l84
  br label %bb27
bb27:
  %t105 = load i32, ptr %l84, !range !{i32 0, i32 33}
  %t107 = trunc i64 20 to i32
  %t108 = icmp eq i32 %t105, %t107
  br i1 %t108, label %bb28, label %bb29
bb28:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l1, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t116, ptr %l91
  br label %bb30
bb29:
  %t117 = load i32, ptr %l1, !tbaa !23
  store i32 %t117, ptr %l87, !tbaa !23
  br label %bb31
bb30:
  %t119 = load i32, ptr %l91, !tbaa !23
  store i32 %t119, ptr %l87, !tbaa !23
  br label %bb31
bb31:
  %t120 = load i32, ptr %l87, !tbaa !23
  store i32 %t120, ptr %l10, !tbaa !23
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Program", ptr %t121, i32 0, i32 2
  %t124 = load i32, ptr %l10, !tbaa !23
  %t127 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t123, i32 %t124)
  store i32 %t127, ptr %l96
  br label %bb32
bb32:
  %t128 = load i32, ptr %l96, !range !{i32 0, i32 33}
  %t130 = trunc i64 29 to i32
  %t131 = icmp eq i32 %t128, %t130
  br i1 %t131, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s8
  store %olang.scope zeroinitializer, ptr %s9
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l99, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/generic:Program", ptr %t134, i32 0, i32 2
  %t137 = load i32, ptr %l10, !tbaa !23
  %t140 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t136, i32 %t137)
  store i32 %t140, ptr %l103
  br label %bb35
bb34:
  br label %bb49
bb35:
  %t141 = load ptr, ptr %l99, !tbaa !29
  %t142 = load i32, ptr %l103, !tbaa !23
  %t143 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyCovers(ptr %v0, ptr %s9, ptr %t141, i32 %t142)
  store { i64, ptr } %t143, ptr %l104
  br label %bb36
bb36:
  %t144 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  %t146 = extractvalue { i64, ptr } %t144, 1
  %t147 = mul i64 %t145, 4
  %t148 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  store { i64, ptr } %t150, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t152 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t152, 0
  store i64 %t154, ptr %l13, !tbaa !24
  br label %bb37
bb37:
  %t156 = load i64, ptr %l12, !tbaa !24
  %t157 = load i64, ptr %l13, !tbaa !24
  %t160 = icmp slt i64 %t156, %t157
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb38, label %bb39
bb38:
  br label %bb47
bb39:
  br label %bb40
bb40:
  %t164 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t164, ptr %l112, !tbaa !27
  %t165 = load i64, ptr %l12, !tbaa !24
  %t167 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr i32, ptr %t168, i64 %t165
  %t170 = load i32, ptr %t169, !tbaa !33
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/generic:Program", ptr %t172, i32 0, i32 2
  %t176 = load i32, ptr %l2, !tbaa !23
  %t180 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t174, i32 %t170, i32 %t176)
  store i1 %t180, ptr %l119
  br label %bb41
bb41:
  %t181 = load i1, ptr %l119, !tbaa !21
  br i1 %t181, label %bb42, label %bb43
bb42:
  %t182 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2eUnmet_2emet()
  store %"compiler/generic:Unmet" %t182, ptr %l120
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  %t183 = load %"compiler/generic:Unmet", ptr %l120
  store %"compiler/generic:Unmet" %t183, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  %t184 = load i64, ptr %l12, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l12, !tbaa !24
  br label %bb37
bb47:
  call void @__olang_scope_close(ptr %s9)
  %t188 = load i32, ptr %l2, !tbaa !23
  %t190 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s8, i64 0, i32 %t188, i32 0, i1 false, i1 false, i1 false)
  store %"compiler/generic:Unmet" %t190, ptr %l124
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s8)
  %t191 = load %"compiler/generic:Unmet", ptr %l124
  store %"compiler/generic:Unmet" %t191, ptr %rv
  br label %ret
bb49:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 2
  %t195 = load i32, ptr %l2, !tbaa !23
  %t198 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t194, i32 %t195)
  store i32 %t198, ptr %l128
  br label %bb50
bb50:
  %t199 = load i32, ptr %l128, !tbaa !23
  store i32 %t199, ptr %l15, !tbaa !23
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load i32, ptr %l15, !tbaa !23
  %t204 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t200, i32 %t201)
  store ptr %t204, ptr %l131
  br label %bb51
bb51:
  %t205 = load ptr, ptr %l131, !tbaa !29
  store ptr %t205, ptr %l16, !tbaa !29
  %t206 = load ptr, ptr %l16, !tbaa !29
  %t208 = icmp eq ptr %t206, null
  br i1 %t208, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb54
bb53:
  %t210 = load ptr, ptr %l16, !tbaa !29
  %t212 = getelementptr %"compiler/ast:TypeDecl", ptr %t210, i32 0, i32 3
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t215 = icmp eq ptr %t213, null
  store i1 %t215, ptr %l134, !tbaa !21
  br label %bb54
bb54:
  %t217 = load i1, ptr %l134, !tbaa !21
  br i1 %t217, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s13
  %t218 = load i32, ptr %l2, !tbaa !23
  %t220 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s13, i64 0, i32 %t218, i32 0, i1 false, i1 false, i1 false)
  store %"compiler/generic:Unmet" %t220, ptr %l139
  br label %bb57
bb56:
  br label %bb58
bb57:
  call void @__olang_scope_close(ptr %s13)
  %t221 = load %"compiler/generic:Unmet", ptr %l139
  store %"compiler/generic:Unmet" %t221, ptr %rv
  br label %ret
bb58:
  %t222 = load ptr, ptr %l16, !tbaa !29
  %t224 = getelementptr %"compiler/ast:TypeDecl", ptr %t222, i32 0, i32 3
  %t225 = load ptr, ptr %t224, !tbaa !29
  store ptr %t225, ptr %l17, !tbaa !29
  %t227 = load ptr, ptr %l17, !tbaa !29
  store ptr %t227, ptr %l142, !tbaa !29
  store i1 false, ptr %l143, !tbaa !21
  %t228 = load ptr, ptr %l142, !tbaa !29
  %t229 = icmp ne ptr %t228, null
  br i1 %t229, label %bb59, label %bb60
bb59:
  %t231 = load ptr, ptr %l142, !tbaa !29
  %t232 = load i64, ptr %t231, !range !{i64 0, i64 5}
  %t234 = icmp eq i64 %t232, 2
  store i1 %t234, ptr %l143, !tbaa !21
  br label %bb60
bb60:
  %t235 = load i1, ptr %l143, !tbaa !21
  br i1 %t235, label %bb61, label %bb62
bb61:
  %t236 = load ptr, ptr %l17, !tbaa !29
  %t238 = getelementptr { i64, [6 x i64] }, ptr %t236, i32 0, i32 1
  %t239 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t238, i32 0, i32 0
  %t240 = load { i64, ptr }, ptr %t239
  store { i64, ptr } %t240, ptr %l18, !tbaa !27
  %t242 = load ptr, ptr %l17, !tbaa !29
  %t244 = getelementptr { i64, [6 x i64] }, ptr %t242, i32 0, i32 1
  %t245 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t244, i32 0, i32 1
  %t246 = load { i64, ptr }, ptr %t245
  store { i64, ptr } %t246, ptr %l19, !tbaa !27
  %t248 = load ptr, ptr %l17, !tbaa !29
  %t250 = getelementptr { i64, [6 x i64] }, ptr %t248, i32 0, i32 1
  %t251 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t250, i32 0, i32 2
  %t252 = load { i64, ptr }, ptr %t251
  store { i64, ptr } %t252, ptr %l20, !tbaa !27
  br label %bb63
bb62:
  br label %bb137
bb63:
  %t254 = load i1, ptr %l3, !tbaa !21
  br i1 %t254, label %bb64, label %bb65
bb64:
  %t256 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t258 = extractvalue { i64, ptr } %t256, 0
  %t260 = icmp sgt i64 %t258, 0
  store i1 %t260, ptr %l153, !tbaa !21
  br label %bb66
bb65:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb66
bb66:
  %t262 = load i1, ptr %l153, !tbaa !21
  br i1 %t262, label %bb67, label %bb68
bb67:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load i32, ptr %l1, !tbaa !23
  %t265 = load i32, ptr %l2, !tbaa !23
  %t269 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMember(ptr %v0, ptr %t263, i32 %t264, i32 %t265)
  store i1 %t269, ptr %l161
  br label %bb69
bb68:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb70
bb69:
  %t270 = load i1, ptr %l161, !tbaa !21
  %t271 = xor i1 %t270, true
  store i1 %t271, ptr %l157, !tbaa !21
  br label %bb70
bb70:
  %t273 = load i1, ptr %l157, !tbaa !21
  br i1 %t273, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s15
  %t274 = load i32, ptr %l2, !tbaa !23
  %t276 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s15, i64 0, i32 %t274, i32 0, i1 false, i1 false, i1 true)
  store %"compiler/generic:Unmet" %t276, ptr %l164
  br label %bb73
bb72:
  br label %bb74
bb73:
  call void @__olang_scope_close(ptr %s15)
  %t277 = load %"compiler/generic:Unmet", ptr %l164
  store %"compiler/generic:Unmet" %t277, ptr %rv
  br label %ret
bb74:
  %t278 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t278, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t280 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t282 = extractvalue { i64, ptr } %t280, 0
  store i64 %t282, ptr %l23, !tbaa !24
  br label %bb75
bb75:
  store %olang.scope zeroinitializer, ptr %s17
  %t284 = load i64, ptr %l22, !tbaa !24
  %t285 = load i64, ptr %l23, !tbaa !24
  %t288 = icmp slt i64 %t284, %t285
  %t290 = xor i1 %t288, true
  br i1 %t290, label %bb76, label %bb77
bb76:
  call void @__olang_scope_close(ptr %s17)
  br label %bb96
bb77:
  br label %bb78
bb78:
  %t292 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t292, ptr %l172, !tbaa !27
  %t293 = load i64, ptr %l22, !tbaa !24
  %t295 = getelementptr { i64, ptr }, ptr %l172, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr ptr, ptr %t296, i64 %t293
  %t298 = load ptr, ptr %t297, !tbaa !39
  store ptr %t298, ptr %l24, !tbaa !29
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l175, !tbaa !29
  %t301 = load ptr, ptr %l0, !tbaa !29
  store ptr %t301, ptr %l176, !tbaa !29
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t304, ptr %v0, ptr %s17, ptr %t302, i32 %t303)
  call void @llvm.memmove.p0.p0.i64(ptr %l179, ptr %t304, i64 160, i1 false)
  br label %bb79
bb79:
  %t307 = call ptr @__olang_scope_alloc_a(ptr %s17, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t307, ptr %l179, i64 160, i1 false)
  %t308 = load ptr, ptr %l24, !tbaa !29
  %t310 = load ptr, ptr %l176, !tbaa !29
  %t313 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s17, ptr %v0, ptr %t310, ptr %t307, ptr %t308)
  store i32 %t313, ptr %l183
  br label %bb80
bb80:
  %t314 = load i32, ptr %l15, !tbaa !23
  %t316 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t314)
  store i64 %t316, ptr %l185
  br label %bb81
bb81:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/generic:Program", ptr %t317, i32 0, i32 2
  %t320 = load i32, ptr %l2, !tbaa !23
  %t323 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t319, i32 %t320)
  store i32 %t323, ptr %l189
  br label %bb82
bb82:
  %t324 = load ptr, ptr %l175, !tbaa !29
  %t325 = load i32, ptr %l183, !tbaa !23
  %t326 = load i64, ptr %l185, !tbaa !24
  %t327 = load i32, ptr %l189, !tbaa !23
  %t328 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t324, i32 %t325, i64 %t326, i32 %t327)
  store i32 %t328, ptr %l190
  br label %bb83
bb83:
  %t329 = load i32, ptr %l190, !tbaa !23
  store i32 %t329, ptr %l25, !tbaa !23
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/generic:Program", ptr %t330, i32 0, i32 2
  %t333 = load i32, ptr %l25, !tbaa !23
  %t336 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t332, i32 %t333)
  store i32 %t336, ptr %l194
  br label %bb84
bb84:
  %t337 = load i32, ptr %l194, !range !{i32 0, i32 33}
  %t339 = trunc i64 18 to i32
  %t340 = icmp eq i32 %t337, %t339
  %t342 = xor i1 %t340, true
  br i1 %t342, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l198, !tbaa !21
  br label %bb87
bb86:
  %t344 = load i32, ptr %l25, !tbaa !23
  %t345 = load i32, ptr %l2, !tbaa !23
  %t348 = icmp eq i32 %t344, %t345
  store i1 %t348, ptr %l198, !tbaa !21
  br label %bb87
bb87:
  %t350 = load i1, ptr %l198, !tbaa !21
  br i1 %t350, label %bb88, label %bb89
bb88:
  call void @__olang_scope_close(ptr %s17)
  br label %bb95
bb89:
  br label %bb90
bb90:
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t352 = load i32, ptr %l1, !tbaa !23
  %t353 = load i32, ptr %l25, !tbaa !23
  %t354 = load i1, ptr %l3, !tbaa !21
  %t355 = load i64, ptr %l4, !tbaa !24
  %t357 = add i64 %t355, 1
  %t363 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %t351, i32 %t352, i32 %t353, i1 %t354, i64 %t357)
  store %"compiler/generic:Unmet" %t363, ptr %l208
  br label %bb91
bb91:
  %t364 = load %"compiler/generic:Unmet", ptr %l208
  store %"compiler/generic:Unmet" %t364, ptr %l26
  %t365 = getelementptr %"compiler/generic:Unmet", ptr %l26, i32 0, i32 0
  %t366 = load i64, ptr %t365, !tbaa !24
  %t368 = icmp sge i64 %t366, 0
  br i1 %t368, label %bb92, label %bb93
bb92:
  %t370 = load %"compiler/generic:Unmet", ptr %l26
  call void @__olang_scope_close(ptr %s17)
  store %"compiler/generic:Unmet" %t370, ptr %rv
  br label %ret
bb93:
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s17)
  br label %bb95
bb95:
  %t372 = load i64, ptr %l22, !tbaa !24
  %t374 = add i64 %t372, 1
  store i64 %t374, ptr %l22, !tbaa !24
  br label %bb75
bb96:
  %t376 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t376, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t378 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t380 = extractvalue { i64, ptr } %t378, 0
  store i64 %t380, ptr %l29, !tbaa !24
  br label %bb97
bb97:
  store %olang.scope zeroinitializer, ptr %s22
  %t382 = load i64, ptr %l28, !tbaa !24
  %t383 = load i64, ptr %l29, !tbaa !24
  %t386 = icmp slt i64 %t382, %t383
  %t388 = xor i1 %t386, true
  br i1 %t388, label %bb98, label %bb99
bb98:
  call void @__olang_scope_close(ptr %s22)
  br label %bb135
bb99:
  br label %bb100
bb100:
  %t390 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t390, ptr %l221, !tbaa !27
  %t391 = load i64, ptr %l28, !tbaa !24
  %t393 = getelementptr { i64, ptr }, ptr %l221, i32 0, i32 1
  %t394 = load ptr, ptr %t393, !tbaa !27
  %t395 = getelementptr ptr, ptr %t394, i64 %t391
  %t396 = load ptr, ptr %t395, !tbaa !39
  store ptr %t396, ptr %l30, !tbaa !29
  %t398 = load ptr, ptr %l30, !tbaa !29
  %t400 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t398)
  store i1 %t400, ptr %l225
  br label %bb101
bb101:
  %t401 = load i1, ptr %l225, !tbaa !21
  br i1 %t401, label %bb102, label %bb103
bb102:
  store %olang.scope zeroinitializer, ptr %s23
  %t402 = load ptr, ptr %l0, !tbaa !29
  store ptr %t402, ptr %l226, !tbaa !29
  %t403 = load i32, ptr %l15, !tbaa !23
  store i32 %t403, ptr %l227, !tbaa !23
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t406 = getelementptr %"compiler/generic:Program", ptr %t404, i32 0, i32 2
  %t407 = load i32, ptr %l2, !tbaa !23
  %t410 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t406, i32 %t407)
  store i32 %t410, ptr %l231
  br label %bb104
bb103:
  br label %bb110
bb104:
  %t411 = load ptr, ptr %l30, !tbaa !29
  %t412 = load ptr, ptr %l226, !tbaa !29
  %t413 = load i32, ptr %l227, !tbaa !23
  %t414 = load i32, ptr %l231, !tbaa !23
  %t416 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeetsBuilder(ptr %v0, ptr %v0, ptr %t412, i32 %t413, i32 %t414, ptr %t411)
  store i1 %t416, ptr %l233
  br label %bb105
bb105:
  %t417 = load i1, ptr %l233, !tbaa !21
  br i1 %t417, label %bb106, label %bb107
bb106:
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s22)
  br label %bb134
bb107:
  br label %bb108
bb108:
  %t418 = load i32, ptr %l2, !tbaa !23
  %t419 = load ptr, ptr %l30, !tbaa !29
  %t421 = getelementptr %"compiler/ast:Func", ptr %t419, i32 0, i32 2
  %t422 = load i32, ptr %t421, !tbaa !23
  %t425 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s23, i64 0, i32 %t418, i32 %t422, i1 true, i1 false, i1 false)
  store %"compiler/generic:Unmet" %t425, ptr %l237
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s22)
  %t426 = load %"compiler/generic:Unmet", ptr %l237
  store %"compiler/generic:Unmet" %t426, ptr %rv
  br label %ret
bb110:
  %t427 = load ptr, ptr %l0, !tbaa !29
  store ptr %t427, ptr %l238, !tbaa !29
  %t428 = load i32, ptr %l1, !tbaa !23
  store i32 %t428, ptr %l239, !tbaa !23
  %t429 = load i32, ptr %l15, !tbaa !23
  store i32 %t429, ptr %l240, !tbaa !23
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t432 = getelementptr %"compiler/generic:Program", ptr %t430, i32 0, i32 2
  %t433 = load i32, ptr %l2, !tbaa !23
  %t436 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t432, i32 %t433)
  store i32 %t436, ptr %l244
  br label %bb111
bb111:
  %t437 = load ptr, ptr %l30, !tbaa !29
  %t438 = load ptr, ptr %l238, !tbaa !29
  %t439 = load i32, ptr %l239, !tbaa !23
  %t440 = load i32, ptr %l240, !tbaa !23
  %t441 = load i32, ptr %l244, !tbaa !23
  %t443 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeets(ptr %v0, ptr %v0, ptr %t438, i32 %t439, i32 %t440, i32 %t441, ptr %t437)
  store i1 %t443, ptr %l246
  br label %bb112
bb112:
  %t444 = load i1, ptr %l246, !tbaa !21
  br i1 %t444, label %bb113, label %bb114
bb113:
  call void @__olang_scope_close(ptr %s22)
  br label %bb134
bb114:
  br label %bb115
bb115:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t446 = load ptr, ptr %l30, !tbaa !29
  %t448 = getelementptr %"compiler/ast:Func", ptr %t446, i32 0, i32 2
  %t449 = load i32, ptr %t448, !tbaa !23
  %t452 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t445, i32 %t449)
  store { i64, ptr } %t452, ptr %l250
  br label %bb116
bb116:
  %t453 = load { i64, ptr }, ptr %l250, !tbaa !27
  %t454 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t453)
  store i1 %t454, ptr %l251
  br label %bb117
bb117:
  %t455 = load i1, ptr %l251, !tbaa !21
  %t456 = xor i1 %t455, true
  store i1 %t456, ptr %l31, !tbaa !21
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/generic:Program", ptr %t458, i32 0, i32 2
  %t461 = load i32, ptr %l1, !tbaa !23
  %t464 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t460, i32 %t461)
  store i32 %t464, ptr %l256
  br label %bb118
bb118:
  %t465 = load i32, ptr %l256, !range !{i32 0, i32 33}
  %t467 = trunc i64 20 to i32
  %t468 = icmp eq i32 %t465, %t467
  br i1 %t468, label %bb119, label %bb120
bb119:
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t472 = getelementptr %"compiler/generic:Program", ptr %t470, i32 0, i32 2
  %t473 = load i32, ptr %l1, !tbaa !23
  %t476 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t472, i32 %t473)
  store i32 %t476, ptr %l263
  br label %bb121
bb120:
  %t477 = load i32, ptr %l1, !tbaa !23
  store i32 %t477, ptr %l259, !tbaa !23
  br label %bb122
bb121:
  %t479 = load i32, ptr %l263, !tbaa !23
  store i32 %t479, ptr %l259, !tbaa !23
  br label %bb122
bb122:
  %t480 = load i32, ptr %l259, !tbaa !23
  store i32 %t480, ptr %l32, !tbaa !23
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t483 = getelementptr %"compiler/generic:Program", ptr %t481, i32 0, i32 2
  %t484 = load i32, ptr %l32, !tbaa !23
  %t487 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t483, i32 %t484)
  store i32 %t487, ptr %l268
  br label %bb123
bb123:
  %t488 = load i32, ptr %l268, !range !{i32 0, i32 33}
  %t490 = trunc i64 18 to i32
  %t491 = icmp eq i32 %t488, %t490
  %t493 = xor i1 %t491, true
  br i1 %t493, label %bb124, label %bb125
bb124:
  store i1 true, ptr %l272, !tbaa !21
  br label %bb129
bb125:
  %t495 = load ptr, ptr %l0, !tbaa !29
  store ptr %t495, ptr %l273, !tbaa !29
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr %"compiler/generic:Program", ptr %t496, i32 0, i32 2
  %t499 = load i32, ptr %l32, !tbaa !23
  %t502 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t498, i32 %t499)
  store i32 %t502, ptr %l277
  br label %bb126
bb126:
  %t503 = load ptr, ptr %l273, !tbaa !29
  %t504 = load i32, ptr %l277, !tbaa !23
  %t505 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t503, i32 %t504)
  store i64 %t505, ptr %l278
  br label %bb127
bb127:
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t507 = load i32, ptr %l15, !tbaa !23
  %t510 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t506, i32 %t507)
  store i64 %t510, ptr %l281
  br label %bb128
bb128:
  %t511 = load i64, ptr %l278, !tbaa !24
  %t512 = load i64, ptr %l281, !tbaa !24
  %t513 = icmp ne i64 %t511, %t512
  store i1 %t513, ptr %l272, !tbaa !21
  br label %bb129
bb129:
  %t515 = load i1, ptr %l272, !tbaa !21
  store i1 %t515, ptr %l33, !tbaa !21
  %t516 = load i32, ptr %l2, !tbaa !23
  store i32 %t516, ptr %l283, !tbaa !23
  %t517 = load ptr, ptr %l30, !tbaa !29
  %t519 = getelementptr %"compiler/ast:Func", ptr %t517, i32 0, i32 2
  %t520 = load i32, ptr %t519, !tbaa !23
  store i32 %t520, ptr %l285, !tbaa !23
  %t521 = load i1, ptr %l31, !tbaa !21
  br i1 %t521, label %bb130, label %bb131
bb130:
  %t523 = load i1, ptr %l33, !tbaa !21
  store i1 %t523, ptr %l287, !tbaa !21
  br label %bb132
bb131:
  store i1 false, ptr %l287, !tbaa !21
  br label %bb132
bb132:
  %t525 = load i32, ptr %l283, !tbaa !23
  %t526 = load i32, ptr %l285, !tbaa !23
  %t527 = load i1, ptr %l287, !tbaa !21
  %t528 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s22, i64 0, i32 %t525, i32 %t526, i1 true, i1 %t527, i1 false)
  store %"compiler/generic:Unmet" %t528, ptr %l289
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s22)
  %t529 = load %"compiler/generic:Unmet", ptr %l289
  store %"compiler/generic:Unmet" %t529, ptr %rv
  br label %ret
bb134:
  %t530 = load i64, ptr %l28, !tbaa !24
  %t532 = add i64 %t530, 1
  store i64 %t532, ptr %l28, !tbaa !24
  br label %bb97
bb135:
  %t534 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2eUnmet_2emet()
  store %"compiler/generic:Unmet" %t534, ptr %l292
  br label %bb136
bb136:
  %t535 = load %"compiler/generic:Unmet", ptr %l292
  store %"compiler/generic:Unmet" %t535, ptr %rv
  br label %ret
bb137:
  br i1 true, label %bb138, label %bb139
bb138:
  br label %bb140
bb139:
  br label %bb142
bb140:
  store %olang.scope zeroinitializer, ptr %s27
  %t536 = load i32, ptr %l2, !tbaa !23
  %t538 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s27, i64 0, i32 %t536, i32 0, i1 false, i1 false, i1 false)
  store %"compiler/generic:Unmet" %t538, ptr %l294
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s27)
  %t539 = load %"compiler/generic:Unmet", ptr %l294
  store %"compiler/generic:Unmet" %t539, ptr %rv
  br label %ret
bb142:
  call void @__olang_check_failed(ptr @olang_loc_baaca818f0e4393a_2cd871f7f771e33e)
  unreachable
ret:
  %rr = load %"compiler/generic:Unmet", ptr %rv
  ret %"compiler/generic:Unmet" %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eNewAnyTable(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i64
  %l7 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l21 = alloca %"compiler/generic:AnyTable"
  %l24 = alloca i64
  %l27 = alloca ptr
  %l31 = alloca i32
  %l35 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 61
  store ptr %t3, ptr %l7, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l11
  br label %bb1
bb1:
  %t11 = load i32, ptr %l2, !tbaa !23
  store i32 %t11, ptr %l12, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l13, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l17
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load i32, ptr %l17, !tbaa !23
  %t22 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyStored(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t22, ptr %l18
  br label %bb3
bb3:
  %t25 = load i32, ptr %l11, !tbaa !23
  %t26 = load i32, ptr %l12, !tbaa !23
  %t27 = load i32, ptr %l18, !tbaa !23
  %t30 = call %"compiler/generic:AnyTable" @compiler_2fgeneric_3aAnyTable_2ector(ptr %s0, i32 %t25, i32 %t26, i32 %t27, i64 %a3, %"compiler/source:Span" %a4)
  store %"compiler/generic:AnyTable" %t30, ptr %l21
  br label %bb4
bb4:
  %t31 = load ptr, ptr %l7, !tbaa !29
  %t32 = load %"compiler/generic:AnyTable", ptr %l21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2ePus_H18461b16f088a87daf519df5031429e6(ptr %v0, ptr %s0, ptr %t31, %"compiler/generic:AnyTable" %t32)
  br label %bb5
bb5:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 61
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eLen_H9daf28210c013890fd7cb07d1d61ba6e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = sub i64 %t38, 1
  store i64 %t39, ptr %l5, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 62
  store ptr %t43, ptr %l27, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l1, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l31
  br label %bb7
bb7:
  %t51 = load i32, ptr %l31, !tbaa !23
  %t52 = sext i32 %t51 to i64
  %t53 = load i32, ptr %l2, !tbaa !23
  %t55 = sext i32 %t53 to i64
  %t58 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t52, i64 %t55)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t58, ptr %l35
  br label %bb8
bb8:
  %t59 = load i64, ptr %l5, !tbaa !24
  %t60 = load ptr, ptr %l27, !tbaa !29
  %t61 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l35
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t60, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t61, i64 %t59)
  br label %bb9
bb9:
  %t63 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
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

define dso_local { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l2 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %rv = alloca { i64, [3 x i64] }
  %t14 = alloca { i64, [3 x i64] }, align 8
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %a0, i64 %a1)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = sext i32 %t7 to i64
  %t10 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t11 = load i32, ptr %t10, !tbaa !23
  %t13 = sext i32 %t11 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t14
  %t15 = getelementptr { i64, [3 x i64] }, ptr %t14, i32 0, i32 0
  store i64 3, ptr %t15
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = insertvalue { i64, i64, i64 } undef, i64 %t16, 0
  %t19 = insertvalue { i64, i64, i64 } %t17, i64 %t9, 1
  %t21 = insertvalue { i64, i64, i64 } %t19, i64 %t13, 2
  %t22 = getelementptr { i64, [3 x i64] }, ptr %t14, i32 0, i32 1
  store { i64, i64, i64 } %t21, ptr %t22
  %t23 = load { i64, [3 x i64] }, ptr %t14
  store { i64, [3 x i64] } %t23, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecallType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca %"compiler/names:Ref"
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca %"compiler/names:Ref"
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i1
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i1
  %l38 = alloca ptr
  %l42 = alloca i64
  %l44 = alloca %"compiler/names:Ref"
  %l49 = alloca { i64, ptr }
  %l50 = alloca i1
  %l51 = alloca i32
  %l54 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l58 = alloca i32
  %l62 = alloca i32
  %l63 = alloca ptr
  %l64 = alloca i1
  %l74 = alloca ptr
  %l78 = alloca i64
  %l80 = alloca %"compiler/names:Ref"
  %l87 = alloca i32
  %l93 = alloca i32
  %l100 = alloca { i64, ptr }
  %l101 = alloca i1
  %l102 = alloca i1
  %l105 = alloca i1
  %l108 = alloca i32
  %l112 = alloca i64
  %l119 = alloca i32
  %l123 = alloca i32
  %l128 = alloca i32
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t2 = load ptr, ptr %l16, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l16, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 13
  store i1 %t8, ptr %l17, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l17, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l5, !tbaa !27
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t25 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t30 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2egenericCall(ptr %v0, ptr %v1, ptr %v3, ptr %v3, ptr %t22, ptr %t23, ptr %t24, { i64, ptr } %t25)
  store i32 %t30, ptr %l28
  br label %bb6
bb6:
  %t31 = load i32, ptr %l28, !tbaa !23
  store i32 %t31, ptr %rv
  br label %ret
bb7:
  %t32 = load ptr, ptr %l3, !tbaa !29
  store ptr %t32, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t33 = load ptr, ptr %l29, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l29, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 30}
  %t39 = icmp eq i64 %t37, 0
  store i1 %t39, ptr %l30, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l30, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32 }, ptr %t43, i32 0, i32 0
  %t45 = load %"compiler/source:Span", ptr %t44
  store %"compiler/source:Span" %t45, ptr %l6
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32 }, ptr %t49, i32 0, i32 1
  %t51 = load i32, ptr %t50
  store i32 %t51, ptr %l7, !tbaa !23
  br label %bb12
bb11:
  br label %bb26
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  store ptr %t56, ptr %l38, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Context", ptr %t58, i32 0, i32 0
  %t61 = load i64, ptr %t60, !tbaa !24
  %t64 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t57, i64 %t61)
  store i64 %t64, ptr %l42
  br label %bb13
bb13:
  %t65 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 0
  %t66 = load i32, ptr %t65, !tbaa !23
  %t67 = load ptr, ptr %l38, !tbaa !29
  %t68 = load i64, ptr %l42, !tbaa !24
  %t70 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t67, i64 %t68, i32 %t66)
  store %"compiler/names:Ref" %t70, ptr %l44
  br label %bb14
bb14:
  %t71 = load %"compiler/names:Ref", ptr %l44
  store %"compiler/names:Ref" %t71, ptr %l8
  %t72 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 0
  %t73 = load i32, ptr %t72, !range !{i32 0, i32 9}
  %t75 = trunc i64 7 to i32
  %t76 = icmp eq i32 %t73, %t75
  br i1 %t76, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l7, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t78, i32 %t79)
  store { i64, ptr } %t82, ptr %l49
  br label %bb17
bb16:
  br label %bb24
bb17:
  %t83 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t84 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t83, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t84, ptr %l50
  br label %bb18
bb18:
  %t85 = load i1, ptr %l50, !tbaa !21
  br i1 %t85, label %bb19, label %bb20
bb19:
  %t86 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t86, ptr %l51, !tbaa !23
  br label %bb23
bb20:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  store ptr %t90, ptr %l54, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l7, !tbaa !23
  %t95 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t91, i32 %t92)
  store { i64, ptr } %t95, ptr %l57
  br label %bb21
bb21:
  %t96 = load ptr, ptr %l54, !tbaa !29
  %t97 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t98 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v0, ptr %t96, { i64, ptr } %t97)
  store i32 %t98, ptr %l58
  br label %bb22
bb22:
  %t99 = load i32, ptr %l58, !tbaa !23
  store i32 %t99, ptr %l51, !tbaa !23
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  %t100 = load i32, ptr %l51, !tbaa !23
  store i32 %t100, ptr %rv
  br label %ret
bb24:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load %"compiler/names:Ref", ptr %l8
  %t103 = load i32, ptr %l7, !tbaa !23
  %t107 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecalleeType(ptr %v0, ptr %t101, %"compiler/names:Ref" %t102, i32 %t103)
  store i32 %t107, ptr %l62
  br label %bb25
bb25:
  %t108 = load i32, ptr %l62, !tbaa !23
  store i32 %t108, ptr %rv
  br label %ret
bb26:
  %t109 = load ptr, ptr %l3, !tbaa !29
  store ptr %t109, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t110 = load ptr, ptr %l63, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb27, label %bb28
bb27:
  %t113 = load ptr, ptr %l63, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 30}
  %t116 = icmp eq i64 %t114, 14
  store i1 %t116, ptr %l64, !tbaa !21
  br label %bb28
bb28:
  %t117 = load i1, ptr %l64, !tbaa !21
  br i1 %t117, label %bb29, label %bb30
bb29:
  %t118 = load ptr, ptr %l3, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t120, i32 0, i32 0
  %t122 = load %"compiler/source:Span", ptr %t121
  store %"compiler/source:Span" %t122, ptr %l9
  %t124 = load ptr, ptr %l3, !tbaa !29
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t126, i32 0, i32 1
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l10, !tbaa !29
  %t130 = load ptr, ptr %l3, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t132, i32 0, i32 2
  %t134 = load i32, ptr %t133
  store i32 %t134, ptr %l11, !tbaa !23
  br label %bb31
bb30:
  br label %bb61
bb31:
  store %olang.scope zeroinitializer, ptr %s4
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  store ptr %t139, ptr %l74, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Context", ptr %t141, i32 0, i32 0
  %t144 = load i64, ptr %t143, !tbaa !24
  %t147 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t140, i64 %t144)
  store i64 %t147, ptr %l78
  br label %bb32
bb32:
  %t148 = getelementptr %"compiler/source:Span", ptr %l9, i32 0, i32 1
  %t149 = load i32, ptr %t148, !tbaa !23
  %t150 = load ptr, ptr %l74, !tbaa !29
  %t151 = load i64, ptr %l78, !tbaa !24
  %t153 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t150, i64 %t151, i32 %t149)
  store %"compiler/names:Ref" %t153, ptr %l80
  br label %bb33
bb33:
  %t154 = load %"compiler/names:Ref", ptr %l80
  store %"compiler/names:Ref" %t154, ptr %l12
  %t155 = getelementptr %"compiler/names:Ref", ptr %l12, i32 0, i32 0
  %t156 = load i32, ptr %t155, !range !{i32 0, i32 9}
  %t158 = trunc i64 0 to i32
  %t159 = icmp eq i32 %t156, %t158
  %t161 = xor i1 %t159, true
  br i1 %t161, label %bb34, label %bb35
bb34:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load %"compiler/names:Ref", ptr %l12
  %t165 = load i32, ptr %l11, !tbaa !23
  %t169 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecalleeType(ptr %v0, ptr %t163, %"compiler/names:Ref" %t164, i32 %t165)
  store i32 %t169, ptr %l87
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_scope_close(ptr %s4)
  %t170 = load i32, ptr %l87, !tbaa !23
  store i32 %t170, ptr %rv
  br label %ret
bb37:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t174 = load ptr, ptr %l10, !tbaa !29
  %t180 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t171, ptr %t172, ptr %a2, ptr %t174)
  store i32 %t180, ptr %l93
  br label %bb38
bb38:
  %t181 = load i32, ptr %l93, !tbaa !23
  store i32 %t181, ptr %l13, !tbaa !23
  %t182 = load i32, ptr %l13, !tbaa !23
  %t183 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t186 = icmp eq i32 %t182, %t183
  br i1 %t186, label %bb39, label %bb40
bb39:
  %t188 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s4)
  store i32 %t188, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i32, ptr %l11, !tbaa !23
  %t194 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t190, i32 %t191)
  store { i64, ptr } %t194, ptr %l100
  br label %bb42
bb42:
  %t195 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t196 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t195, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t196, ptr %l101
  br label %bb43
bb43:
  %t197 = load i1, ptr %l101, !tbaa !21
  br i1 %t197, label %bb44, label %bb45
bb44:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load i32, ptr %l13, !tbaa !23
  %t202 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisArray(ptr %v0, ptr %t198, i32 %t199)
  store i1 %t202, ptr %l105
  br label %bb46
bb45:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb47
bb46:
  %t203 = load i1, ptr %l105, !tbaa !21
  store i1 %t203, ptr %l102, !tbaa !21
  br label %bb47
bb47:
  %t204 = load i1, ptr %l102, !tbaa !21
  br i1 %t204, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s7
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/generic:Program", ptr %t205, i32 0, i32 2
  %t209 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s7, ptr %t207, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i32 %t209, ptr %l108
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s4)
  %t210 = load i32, ptr %l108, !tbaa !23
  store i32 %t210, ptr %rv
  br label %ret
bb51:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load i32, ptr %l13, !tbaa !23
  %t213 = load i32, ptr %l11, !tbaa !23
  %t217 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t211, i32 %t212, i32 %t213)
  store i64 %t217, ptr %l112
  br label %bb52
bb52:
  %t218 = load i64, ptr %l112, !tbaa !24
  store i64 %t218, ptr %l14, !tbaa !24
  %t219 = load i64, ptr %l14, !tbaa !24
  %t221 = icmp slt i64 %t219, 0
  br i1 %t221, label %bb53, label %bb54
bb53:
  %t223 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s4)
  store i32 %t223, ptr %rv
  br label %ret
bb54:
  br label %bb55
bb55:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load i64, ptr %l14, !tbaa !24
  %t227 = load i32, ptr %l13, !tbaa !23
  %t231 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %t225, i64 %t226, i32 %t227)
  store i32 %t231, ptr %l119
  br label %bb56
bb56:
  %t232 = load i32, ptr %l119, !tbaa !23
  store i32 %t232, ptr %l15, !tbaa !23
  %t233 = load i32, ptr %l15, !tbaa !23
  %t234 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t237 = icmp eq i32 %t233, %t234
  br i1 %t237, label %bb57, label %bb58
bb57:
  %t239 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t239, ptr %l123, !tbaa !23
  br label %bb60
bb58:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/generic:Program", ptr %t241, i32 0, i32 2
  %t244 = load i32, ptr %l15, !tbaa !23
  %t247 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t243, i32 %t244)
  store i32 %t247, ptr %l128
  br label %bb59
bb59:
  %t248 = load i32, ptr %l128, !tbaa !23
  store i32 %t248, ptr %l123, !tbaa !23
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s4)
  %t249 = load i32, ptr %l123, !tbaa !23
  store i32 %t249, ptr %rv
  br label %ret
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  %t250 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t250, ptr %rv
  br label %ret
bb65:
  call void @__olang_check_failed(ptr @olang_loc_a87b58072a15a8a_ec80af628fdc0e7e)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonEnum(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i1
  %l12 = alloca i64
  %l14 = alloca i1
  %l16 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i8
  %l30 = alloca i1
  %l31 = alloca i1
  %l33 = alloca i8
  %l34 = alloca i1
  %l35 = alloca i1
  %l37 = alloca i8
  %l40 = alloca ptr
  %l43 = alloca ptr
  %l46 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l57 = alloca i32
  %l59 = alloca i1
  %l60 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca i32
  %l66 = alloca i32
  %l67 = alloca i32
  %l69 = alloca i32
  %l72 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l79 = alloca i32
  %l83 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l6
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s1, ptr %t5, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t7, ptr %l8
  br label %bb4
bb4:
  %t8 = load i1, ptr %l8, !tbaa !21
  %t9 = xor i1 %t8, true
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb55
bb6:
  br label %bb7
bb7:
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l2)
  store i64 %t14, ptr %l12
  br label %bb8
bb8:
  %t15 = load i64, ptr %l12, !tbaa !24
  %t16 = icmp sgt i64 %t15, 0
  br i1 %t16, label %bb9, label %bb10
bb9:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s1, ptr %t18, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t20, ptr %l16
  br label %bb11
bb10:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb12
bb11:
  %t21 = load i1, ptr %l16, !tbaa !21
  %t22 = xor i1 %t21, true
  store i1 %t22, ptr %l14, !tbaa !21
  br label %bb12
bb12:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t26 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t26, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/generic:cursor", ptr %t27, i32 0, i32 1
  %t30 = load i64, ptr %t29, !tbaa !24
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb16
bb16:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/generic:cursor", ptr %t32, i32 0, i32 1
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr %"compiler/generic:cursor", ptr %t36, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t44 = icmp slt i64 %t35, %t41
  br i1 %t44, label %bb17, label %bb18
bb17:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v1, ptr %t46)
  store i8 %t48, ptr %l29
  br label %bb19
bb18:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb30
bb19:
  %t49 = load i8, ptr %l29, !tbaa !22
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t49)
  store i1 %t50, ptr %l30
  br label %bb20
bb20:
  %t51 = load i1, ptr %l30, !tbaa !21
  br i1 %t51, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb25
bb22:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v1, ptr %t52)
  store i8 %t54, ptr %l33
  br label %bb23
bb23:
  %t55 = load i8, ptr %l33, !tbaa !22
  %t56 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t55)
  store i1 %t56, ptr %l34
  br label %bb24
bb24:
  %t57 = load i1, ptr %l34, !tbaa !21
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb25
bb25:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb29
bb27:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v1, ptr %t59)
  store i8 %t61, ptr %l37
  br label %bb28
bb28:
  %t62 = load i8, ptr %l37, !tbaa !22
  %t63 = icmp eq i8 %t62, 95
  store i1 %t63, ptr %l35, !tbaa !21
  br label %bb29
bb29:
  %t65 = load i1, ptr %l35, !tbaa !21
  store i1 %t65, ptr %l27, !tbaa !21
  br label %bb30
bb30:
  %t66 = load i1, ptr %l27, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  br label %bb33
bb33:
  %t69 = load ptr, ptr %l1, !tbaa !29
  store ptr %t69, ptr %l40, !tbaa !29
  %t70 = load ptr, ptr %l40, !tbaa !29
  %t71 = getelementptr %"compiler/generic:cursor", ptr %t70, i32 0, i32 1
  %t72 = load i64, ptr %t71, !tbaa !24
  %t74 = add i64 %t72, 1
  %t76 = load ptr, ptr %l40, !tbaa !29
  %t77 = getelementptr %"compiler/generic:cursor", ptr %t76, i32 0, i32 1
  store i64 %t74, ptr %t77, !tbaa !24
  br label %bb34
bb34:
  br label %bb16
bb35:
  store ptr %l2, ptr %l43, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 0
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/load:Loader", ptr %t81, i32 0, i32 3
  %t84 = load ptr, ptr %t83, !tbaa !29
  store ptr %t84, ptr %l46, !tbaa !29
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr %"compiler/generic:cursor", ptr %t85, i32 0, i32 0
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  store { i64, ptr } %t88, ptr %l48, !tbaa !27
  %t89 = load i64, ptr %l4, !tbaa !24
  store i64 %t89, ptr %l49, !tbaa !24
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr %"compiler/generic:cursor", ptr %t90, i32 0, i32 1
  %t93 = load i64, ptr %t92, !tbaa !24
  store i64 %t93, ptr %l51, !tbaa !24
  %t94 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  store i64 %t95, ptr %l52, !tbaa !24
  %t96 = load i64, ptr %l49, !tbaa !24
  %t97 = icmp sge i64 %t96, 0
  br i1 %t97, label %bb36, label %bb37
bb36:
  %t99 = load i64, ptr %l49, !tbaa !24
  %t100 = load i64, ptr %l51, !tbaa !24
  %t101 = icmp sle i64 %t99, %t100
  br i1 %t101, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_510ce85b2a9a6c03_b867f874fd10b7a7)
  unreachable
bb38:
  %t103 = load i64, ptr %l51, !tbaa !24
  %t104 = load i64, ptr %l52, !tbaa !24
  %t105 = icmp sle i64 %t103, %t104
  br i1 %t105, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_510ce85b2a9a6c03_b867f874fd10b7a7)
  unreachable
bb40:
  %t107 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = load i64, ptr %l49, !tbaa !24
  %t110 = load i64, ptr %l51, !tbaa !24
  %t111 = getelementptr i8, ptr %t108, i64 %t109
  %t112 = sub i64 %t110, %t109
  %t113 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t111, 1
  %t115 = load ptr, ptr %l46, !tbaa !29
  %t117 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %t115, { i64, ptr } %t114)
  store i32 %t117, ptr %l57
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_510ce85b2a9a6c03_b867f874fd10b7a7)
  unreachable
bb42:
  %t118 = load ptr, ptr %l43, !tbaa !29
  %t119 = load i32, ptr %l57, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t118, i32 %t119)
  br label %bb43
bb43:
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s1, ptr %t120, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t122, ptr %l59
  br label %bb44
bb44:
  %t123 = load i1, ptr %l59, !tbaa !21
  br i1 %t123, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l3, ptr %l60, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 2
  store ptr %t126, ptr %l62, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t131 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonList(ptr %v0, ptr %v1, ptr %s4, ptr %t127, ptr %t128, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) })
  %t132 = extractvalue { i32, i32 } %t131, 1
  %t133 = extractvalue { i32, i32 } %t131, 0
  store i32 %t133, ptr %l67
  %t134 = icmp ne i32 %t133, 0
  br i1 %t134, label %bb48, label %ok.135, !prof !99
ok.135:
  store i32 %t132, ptr %l66
  br label %bb47
bb46:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l3, i32 0)
  br label %bb52
bb47:
  %t137 = load i32, ptr %l66, !tbaa !23
  store i32 %t137, ptr %l63, !tbaa !23
  br label %bb49
bb48:
  %t138 = load i32, ptr %l67, !tbaa !23
  %t139 = lshr i32 %t138, 16
  %t140 = and i32 %t138, 65535
  %t141 = icmp eq i32 %t139, 1
  %t142 = select i1 %t141, i32 1, i32 0
  %t143 = icmp eq i32 %t139, 2
  %t144 = select i1 %t143, i32 2, i32 %t142
  %t145 = icmp eq i32 %t138, 0
  %t146 = shl i32 %t144, 16
  %t147 = or i32 %t146, %t140
  %t148 = select i1 %t145, i32 0, i32 %t147
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t150 = insertvalue { i32, i32 } zeroinitializer, i32 %t148, 0
  store { i32, i32 } %t150, ptr %rv
  br label %ret
bb49:
  %t151 = load ptr, ptr %l62, !tbaa !29
  %t152 = load i32, ptr %l63, !tbaa !23
  %t153 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %t151, i32 %t152)
  store i32 %t153, ptr %l69
  br label %bb50
bb50:
  %t154 = load ptr, ptr %l60, !tbaa !29
  %t155 = load i32, ptr %l69, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t154, i32 %t155)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s4)
  br label %bb53
bb52:
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s1)
  br label %bb54
bb54:
  br label %bb3
bb55:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/generic:Program", ptr %t156, i32 0, i32 2
  store ptr %t158, ptr %l72, !tbaa !29
  %t160 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t160, ptr %l74
  br label %bb56
bb56:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 2
  store ptr %t163, ptr %l76, !tbaa !29
  %t165 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t165, ptr %l78
  br label %bb57
bb57:
  %t166 = load ptr, ptr %l76, !tbaa !29
  %t167 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t168 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t166, { i64, ptr } %t167)
  store i32 %t168, ptr %l79
  br label %bb58
bb58:
  %t169 = icmp sge i64 0, 0
  br i1 %t169, label %bb59, label %bb60
bb59:
  %t171 = icmp sle i64 0, 2305843009213693951
  br i1 %t171, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_3e2c33a947ef0926_eb9e7dc4e2170cd2)
  unreachable
bb61:
  %t173 = mul i64 0, 4
  %t174 = insertvalue { i64, ptr } undef, i64 0, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t176 = load ptr, ptr %l72, !tbaa !29
  %t177 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t178 = load i32, ptr %l79, !tbaa !23
  %t180 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnonEnum(ptr %v0, ptr %s0, ptr %s0, ptr %t176, { i64, ptr } %t177, i32 %t178, { i64, ptr } %t175)
  store i32 %t180, ptr %l83
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_3e2c33a947ef0926_eb9e7dc4e2170cd2)
  unreachable
bb63:
  call void @__olang_scope_close(ptr %s0)
  %t181 = load i32, ptr %l83, !tbaa !23
  %t182 = insertvalue { i32, i32 } zeroinitializer, i32 %t181, 1
  store { i32, i32 } %t182, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l6 = alloca i1
  %l10 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i1
  %l22 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  store i64 %t1, ptr %l2, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s0, ptr %t3, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i1, ptr %l6, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t11 = or i64 %t7, %t8
  store i64 %t11, ptr %l2, !tbaa !24
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t17 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonInner(ptr %v0, ptr %v1, ptr %t13, ptr %t14)
  %t18 = extractvalue { i32, i32 } %t17, 1
  %t19 = extractvalue { i32, i32 } %t17, 0
  store i32 %t19, ptr %l14
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb6, label %ok.21, !prof !99
ok.21:
  store i32 %t18, ptr %l13
  br label %bb5
bb5:
  %t22 = load i32, ptr %l13, !tbaa !23
  store i32 %t22, ptr %l10, !tbaa !23
  br label %bb7
bb6:
  %t23 = load i32, ptr %l14, !tbaa !23
  %t24 = lshr i32 %t23, 16
  %t25 = and i32 %t23, 65535
  %t26 = icmp eq i32 %t24, 1
  %t27 = select i1 %t26, i32 1, i32 0
  %t28 = icmp eq i32 %t24, 2
  %t29 = select i1 %t28, i32 2, i32 %t27
  %t30 = icmp eq i32 %t23, 0
  %t31 = shl i32 %t29, 16
  %t32 = or i32 %t31, %t25
  %t33 = select i1 %t30, i32 0, i32 %t32
  call void @__olang_scope_close(ptr %s0)
  %t35 = insertvalue { i32, i32 } zeroinitializer, i32 %t33, 0
  store { i32, i32 } %t35, ptr %rv
  br label %ret
bb7:
  %t36 = load i32, ptr %l10, !tbaa !23
  store i32 %t36, ptr %l3, !tbaa !23
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s0, ptr %t37, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load i1, ptr %l17, !tbaa !21
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %l3, !tbaa !23
  %t45 = load i64, ptr %l2, !tbaa !24
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t43, i32 %t44, i64 %t45)
  store i32 %t49, ptr %l22
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t50 = load i32, ptr %l22, !tbaa !23
  %t51 = insertvalue { i32, i32 } zeroinitializer, i32 %t50, 1
  store { i32, i32 } %t51, ptr %rv
  br label %ret
bb12:
  %t52 = load i64, ptr %l2, !tbaa !24
  %t53 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t56 = icmp ne i64 %t52, %t53
  br i1 %t56, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t59 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t59, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t60 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t62 = insertvalue { i32, i32 } zeroinitializer, i32 %t60, 1
  store { i32, i32 } %t62, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edescDecl(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l3, !tbaa !29
  %t4 = call { i64, ptr } @compiler_2fgeneric_2edescName(ptr %s0, i64 %a1)
  store { i64, ptr } %t4, ptr %l5
  br label %bb1
bb1:
  %t5 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  %t7 = extractvalue { i64, ptr } %t5, 1
  %t8 = mul i64 %t6, 1
  %t9 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t8)
  call void @llvm.memcpy.p0.p0.i64(ptr %t9, ptr %t7, i64 %t8, i1 false)
  %t10 = insertvalue { i64, ptr } undef, i64 %t6, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %s0, ptr %s0, ptr %t12, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d14, i32 0, i32 1) }, { i64, ptr } %t11)
  %t15 = extractvalue { i32, i32 } %t14, 1
  %t16 = extractvalue { i32, i32 } %t14, 0
  store i32 %t16, ptr %l8
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb3, label %ok.18, !prof !99
ok.18:
  store i32 %t15, ptr %l7
  br label %bb2
bb2:
  %t19 = load i32, ptr %l7, !tbaa !23
  store i32 %t19, ptr %l2, !tbaa !23
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i32 -1, ptr %l2, !tbaa !23
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t20 = load i32, ptr %l2, !tbaa !23
  store i32 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eensureModules(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l38 = alloca ptr
  %l43 = alloca ptr
  %l46 = alloca i64
  %l48 = alloca ptr
  %l53 = alloca ptr
  %l59 = alloca ptr
  %l63 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 27
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l1, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/load:Loader", ptr %t9, i32 0, i32 10
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l12
  br label %bb1
bb1:
  %t14 = load i64, ptr %l12, !tbaa !24
  store i64 %t14, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb7
bb4:
  %t25 = load i64, ptr %l2, !tbaa !24
  %t26 = load i64, ptr %l1, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l3, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l19, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t41 = load i64, ptr %l19, !tbaa !24
  store i64 %t41, ptr %l16, !tbaa !24
  br label %bb7
bb7:
  %t42 = load i64, ptr %l16, !tbaa !24
  store i64 %t42, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t43 = load i64, ptr %l5, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t51 = load i64, ptr %l1, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load i64, ptr %l3, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l6, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  store ptr %t63, ptr %l38, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 0
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/load:Loader", ptr %t67, i32 0, i32 10
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t69, i64 %t70)
  store ptr %t73, ptr %l43
  br label %bb12
bb12:
  %t74 = load ptr, ptr %l43, !tbaa !29
  %t76 = getelementptr %"compiler/load:Module", ptr %t74, i32 0, i32 2
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  %t78 = load ptr, ptr %l38, !tbaa !29
  %t80 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddModule(ptr %v0, ptr %v0, ptr %t78, { i64, ptr } %t77)
  store i64 %t80, ptr %l46
  br label %bb13
bb13:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 24
  store ptr %t83, ptr %l48, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 0
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/load:Loader", ptr %t87, i32 0, i32 10
  %t90 = load i64, ptr %l6, !tbaa !24
  %t93 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t89, i64 %t90)
  store ptr %t93, ptr %l53
  br label %bb14
bb14:
  %t94 = load ptr, ptr %l53, !tbaa !29
  %t96 = getelementptr %"compiler/load:Module", ptr %t94, i32 0, i32 2
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  %t98 = load i64, ptr %l6, !tbaa !24
  %t99 = load ptr, ptr %l48, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t99, { i64, ptr } %t97, i64 %t98)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t102 = load i64, ptr %l5, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l5, !tbaa !24
  br label %bb8
bb17:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l59, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/load:Loader", ptr %t110, i32 0, i32 10
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t112)
  store i64 %t114, ptr %l63
  br label %bb18
bb18:
  %t115 = load i64, ptr %l63, !tbaa !24
  %t116 = load ptr, ptr %l59, !tbaa !29
  %t117 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 27
  store i64 %t115, ptr %t117, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalBinary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/generic:folded"
  %l6 = alloca %"compiler/generic:folded"
  %l7 = alloca %"compiler/generic:folded"
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i1
  %l24 = alloca %"compiler/generic:folded"
  %l31 = alloca i1
  %l34 = alloca i1
  %l37 = alloca i1
  %l44 = alloca %"compiler/generic:folded"
  %l48 = alloca %"compiler/generic:folded"
  %l52 = alloca %"compiler/generic:folded"
  %l56 = alloca i1
  %l60 = alloca %"compiler/generic:folded"
  %l64 = alloca i1
  %l70 = alloca %"compiler/generic:folded"
  %l74 = alloca i32
  %l77 = alloca i1
  %l80 = alloca i1
  %l81 = alloca %"compiler/generic:folded"
  %l87 = alloca i1
  %l89 = alloca ptr
  %l92 = alloca i32
  %l93 = alloca i1
  %l96 = alloca i1
  %l99 = alloca i1
  %l102 = alloca i1
  %l105 = alloca i1
  %l108 = alloca i1
  %l112 = alloca i1
  %l121 = alloca i1
  %l138 = alloca i1
  %l146 = alloca i1
  %l152 = alloca i64
  %l154 = alloca i64
  %l156 = alloca %"compiler/generic:folded"
  %l178 = alloca %"compiler/generic:folded"
  %l182 = alloca i64
  %l197 = alloca i64
  %l226 = alloca i32
  %l231 = alloca i32
  %l237 = alloca i64
  %l239 = alloca ptr
  %l242 = alloca i32
  %l243 = alloca i64
  %l246 = alloca i1
  %l250 = alloca %"compiler/generic:folded"
  %l254 = alloca i64
  %l259 = alloca i1
  %l261 = alloca ptr
  %l264 = alloca i32
  %l265 = alloca i1
  %l266 = alloca i64
  %l270 = alloca i64
  %l274 = alloca i64
  %l283 = alloca i64
  %l284 = alloca %"compiler/generic:folded"
  %l290 = alloca %"compiler/generic:folded"
  %l291 = alloca i64
  %l295 = alloca i64
  %l299 = alloca i64
  %l302 = alloca %"compiler/generic:folded"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %rv = alloca %"compiler/generic:folded"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t3 = trunc i64 45 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t8 = trunc i64 46 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l18, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l18, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t18 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %t12, ptr %t13, ptr %t14)
  store %"compiler/generic:folded" %t18, ptr %l24
  br label %bb6
bb5:
  br label %bb23
bb6:
  %t19 = load %"compiler/generic:folded", ptr %l24
  store %"compiler/generic:folded" %t19, ptr %l5
  %t20 = getelementptr %"compiler/generic:folded", ptr %l5, i32 0, i32 0
  %t21 = load i64, ptr %t20, !tbaa !24
  %t22 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t25 = icmp ne i64 %t21, %t22
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = load %"compiler/generic:folded", ptr %l5
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:folded" %t27, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t29 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t31 = trunc i64 45 to i32
  %t32 = icmp eq i32 %t29, %t31
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = getelementptr %"compiler/generic:folded", ptr %l5, i32 0, i32 1
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = icmp eq i64 %t35, 0
  store i1 %t37, ptr %l31, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l31, !tbaa !21
  br i1 %t39, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb18
bb14:
  %t40 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t42 = trunc i64 46 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb15, label %bb16
bb15:
  %t45 = getelementptr %"compiler/generic:folded", ptr %l5, i32 0, i32 1
  %t46 = load i64, ptr %t45, !tbaa !24
  %t48 = icmp ne i64 %t46, 0
  store i1 %t48, ptr %l37, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb17
bb17:
  %t50 = load i1, ptr %l37, !tbaa !21
  store i1 %t50, ptr %l34, !tbaa !21
  br label %bb18
bb18:
  %t51 = load i1, ptr %l34, !tbaa !21
  br i1 %t51, label %bb19, label %bb20
bb19:
  %t52 = load %"compiler/generic:folded", ptr %l5
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:folded" %t52, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t60 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v3, ptr %t54, ptr %t55, ptr %t56)
  store %"compiler/generic:folded" %t60, ptr %l44
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t61 = load %"compiler/generic:folded", ptr %l44
  store %"compiler/generic:folded" %t61, ptr %rv
  br label %ret
bb23:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t68 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %t62, ptr %t63, ptr %t64)
  store %"compiler/generic:folded" %t68, ptr %l48
  br label %bb24
bb24:
  %t69 = load %"compiler/generic:folded", ptr %l48
  store %"compiler/generic:folded" %t69, ptr %l6
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t76 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v3, ptr %t70, ptr %t71, ptr %t72)
  store %"compiler/generic:folded" %t76, ptr %l52
  br label %bb25
bb25:
  %t77 = load %"compiler/generic:folded", ptr %l52
  store %"compiler/generic:folded" %t77, ptr %l7
  %t78 = getelementptr %"compiler/generic:folded", ptr %l6, i32 0, i32 0
  %t79 = load i64, ptr %t78, !tbaa !24
  %t80 = load i64, ptr @G_2ecompiler_2fgeneric_2eUnfolded, !tbaa !24
  %t83 = icmp eq i64 %t79, %t80
  br i1 %t83, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb28
bb27:
  %t85 = getelementptr %"compiler/generic:folded", ptr %l7, i32 0, i32 0
  %t86 = load i64, ptr %t85, !tbaa !24
  %t87 = load i64, ptr @G_2ecompiler_2fgeneric_2eUnfolded, !tbaa !24
  %t90 = icmp eq i64 %t86, %t87
  store i1 %t90, ptr %l56, !tbaa !21
  br label %bb28
bb28:
  %t92 = load i1, ptr %l56, !tbaa !21
  br i1 %t92, label %bb29, label %bb30
bb29:
  %t93 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t93, ptr %l60
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t94 = load %"compiler/generic:folded", ptr %l60
  store %"compiler/generic:folded" %t94, ptr %rv
  br label %ret
bb32:
  %t95 = getelementptr %"compiler/generic:folded", ptr %l6, i32 0, i32 0
  %t96 = load i64, ptr %t95, !tbaa !24
  %t97 = load i64, ptr @G_2ecompiler_2fgeneric_2ePending, !tbaa !24
  %t100 = icmp eq i64 %t96, %t97
  br i1 %t100, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb35
bb34:
  %t102 = getelementptr %"compiler/generic:folded", ptr %l7, i32 0, i32 0
  %t103 = load i64, ptr %t102, !tbaa !24
  %t104 = load i64, ptr @G_2ecompiler_2fgeneric_2ePending, !tbaa !24
  %t107 = icmp eq i64 %t103, %t104
  store i1 %t107, ptr %l64, !tbaa !21
  br label %bb35
bb35:
  %t109 = load i1, ptr %l64, !tbaa !21
  br i1 %t109, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s5
  %t110 = load i64, ptr @G_2ecompiler_2fgeneric_2ePending, !tbaa !24
  %t111 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t114 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s5, i64 %t110, i64 0, i32 %t111)
  store %"compiler/generic:folded" %t114, ptr %l70
  br label %bb38
bb37:
  br label %bb39
bb38:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t115 = load %"compiler/generic:folded", ptr %l70
  store %"compiler/generic:folded" %t115, ptr %rv
  br label %ret
bb39:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load %"compiler/generic:folded", ptr %l6
  %t118 = load %"compiler/generic:folded", ptr %l7
  %t122 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeet(ptr %v0, ptr %t116, %"compiler/generic:folded" %t117, %"compiler/generic:folded" %t118)
  store i32 %t122, ptr %l74
  br label %bb40
bb40:
  %t123 = load i32, ptr %l74, !tbaa !23
  store i32 %t123, ptr %l8, !tbaa !23
  %t124 = load i32, ptr %l8, !tbaa !23
  %t126 = icmp eq i32 %t124, -1
  br i1 %t126, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb44
bb42:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i32, ptr %l8, !tbaa !23
  %t132 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewide(ptr %v0, ptr %t128, i32 %t129)
  store i1 %t132, ptr %l80
  br label %bb43
bb43:
  %t133 = load i1, ptr %l80, !tbaa !21
  store i1 %t133, ptr %l77, !tbaa !21
  br label %bb44
bb44:
  %t134 = load i1, ptr %l77, !tbaa !21
  br i1 %t134, label %bb45, label %bb46
bb45:
  %t135 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t135, ptr %l81
  br label %bb47
bb46:
  br label %bb48
bb47:
  call void @__olang_scope_close(ptr %s0)
  %t136 = load %"compiler/generic:folded", ptr %l81
  store %"compiler/generic:folded" %t136, ptr %rv
  br label %ret
bb48:
  %t137 = getelementptr %"compiler/generic:folded", ptr %l6, i32 0, i32 1
  %t138 = load i64, ptr %t137, !tbaa !24
  store i64 %t138, ptr %l9, !tbaa !24
  %t140 = getelementptr %"compiler/generic:folded", ptr %l7, i32 0, i32 1
  %t141 = load i64, ptr %t140, !tbaa !24
  store i64 %t141, ptr %l10, !tbaa !24
  %t143 = load i32, ptr %l8, !tbaa !23
  %t144 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t147 = icmp ne i32 %t143, %t144
  br i1 %t147, label %bb49, label %bb50
bb49:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/generic:Program", ptr %t149, i32 0, i32 2
  store ptr %t151, ptr %l89, !tbaa !29
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i32, ptr %l8, !tbaa !23
  %t156 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enumberOf(ptr %v0, ptr %t152, i32 %t153)
  store i32 %t156, ptr %l92
  br label %bb51
bb50:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb53
bb51:
  %t157 = load ptr, ptr %l89, !tbaa !29
  %t158 = load i32, ptr %l92, !tbaa !23
  %t159 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t157, i32 %t158)
  store i1 %t159, ptr %l93
  br label %bb52
bb52:
  %t160 = load i1, ptr %l93, !tbaa !21
  store i1 %t160, ptr %l87, !tbaa !21
  br label %bb53
bb53:
  %t161 = load i1, ptr %l87, !tbaa !21
  store i1 %t161, ptr %l11, !tbaa !21
  %t162 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t164 = trunc i64 94 to i32
  %t165 = icmp eq i32 %t162, %t164
  br i1 %t165, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb56
bb55:
  %t167 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t169 = trunc i64 95 to i32
  %t170 = icmp eq i32 %t167, %t169
  store i1 %t170, ptr %l96, !tbaa !21
  br label %bb56
bb56:
  %t172 = load i1, ptr %l96, !tbaa !21
  br i1 %t172, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb59
bb58:
  %t173 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t175 = trunc i64 97 to i32
  %t176 = icmp eq i32 %t173, %t175
  store i1 %t176, ptr %l99, !tbaa !21
  br label %bb59
bb59:
  %t178 = load i1, ptr %l99, !tbaa !21
  br i1 %t178, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb62
bb61:
  %t179 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t181 = trunc i64 98 to i32
  %t182 = icmp eq i32 %t179, %t181
  store i1 %t182, ptr %l102, !tbaa !21
  br label %bb62
bb62:
  %t184 = load i1, ptr %l102, !tbaa !21
  br i1 %t184, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb65
bb64:
  %t185 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t187 = trunc i64 99 to i32
  %t188 = icmp eq i32 %t185, %t187
  store i1 %t188, ptr %l105, !tbaa !21
  br label %bb65
bb65:
  %t190 = load i1, ptr %l105, !tbaa !21
  br i1 %t190, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb68
bb67:
  %t191 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t193 = trunc i64 100 to i32
  %t194 = icmp eq i32 %t191, %t193
  store i1 %t194, ptr %l108, !tbaa !21
  br label %bb68
bb68:
  %t196 = load i1, ptr %l108, !tbaa !21
  br i1 %t196, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s7
  %t197 = load i1, ptr %l11, !tbaa !21
  br i1 %t197, label %bb71, label %bb72
bb70:
  br label %bb109
bb71:
  %t199 = load i64, ptr %l9, !tbaa !24
  %t201 = load i64, ptr %l10, !tbaa !24
  %t205 = icmp ult i64 %t199, %t201
  store i1 %t205, ptr %l112, !tbaa !21
  br label %bb73
bb72:
  %t207 = load i64, ptr %l9, !tbaa !24
  %t208 = load i64, ptr %l10, !tbaa !24
  %t211 = icmp slt i64 %t207, %t208
  store i1 %t211, ptr %l112, !tbaa !21
  br label %bb73
bb73:
  %t213 = load i1, ptr %l112, !tbaa !21
  store i1 %t213, ptr %l12, !tbaa !21
  %t214 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t216 = trunc i64 94 to i32
  %t217 = icmp eq i32 %t214, %t216
  br i1 %t217, label %bb74, label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb77
bb76:
  %t219 = load i64, ptr %l9, !tbaa !24
  %t220 = load i64, ptr %l10, !tbaa !24
  %t223 = icmp eq i64 %t219, %t220
  store i1 %t223, ptr %l121, !tbaa !21
  br label %bb104
bb77:
  %t225 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t227 = trunc i64 95 to i32
  %t228 = icmp eq i32 %t225, %t227
  br i1 %t228, label %bb78, label %bb79
bb78:
  br label %bb80
bb79:
  br label %bb81
bb80:
  %t230 = load i64, ptr %l9, !tbaa !24
  %t231 = load i64, ptr %l10, !tbaa !24
  %t234 = icmp ne i64 %t230, %t231
  store i1 %t234, ptr %l121, !tbaa !21
  br label %bb104
bb81:
  %t236 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t238 = trunc i64 97 to i32
  %t239 = icmp eq i32 %t236, %t238
  br i1 %t239, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  %t241 = load i1, ptr %l12, !tbaa !21
  store i1 %t241, ptr %l121, !tbaa !21
  br label %bb104
bb85:
  %t243 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t245 = trunc i64 98 to i32
  %t246 = icmp eq i32 %t243, %t245
  br i1 %t246, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb92
bb88:
  %t248 = load i1, ptr %l12, !tbaa !21
  br i1 %t248, label %bb89, label %bb90
bb89:
  store i1 true, ptr %l138, !tbaa !21
  br label %bb91
bb90:
  %t250 = load i64, ptr %l9, !tbaa !24
  %t251 = load i64, ptr %l10, !tbaa !24
  %t254 = icmp eq i64 %t250, %t251
  store i1 %t254, ptr %l138, !tbaa !21
  br label %bb91
bb91:
  %t256 = load i1, ptr %l138, !tbaa !21
  store i1 %t256, ptr %l121, !tbaa !21
  br label %bb104
bb92:
  %t257 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t259 = trunc i64 99 to i32
  %t260 = icmp eq i32 %t257, %t259
  br i1 %t260, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb99
bb95:
  %t262 = load i1, ptr %l12, !tbaa !21
  %t264 = xor i1 %t262, true
  br i1 %t264, label %bb96, label %bb97
bb96:
  %t266 = load i64, ptr %l9, !tbaa !24
  %t267 = load i64, ptr %l10, !tbaa !24
  %t270 = icmp ne i64 %t266, %t267
  store i1 %t270, ptr %l146, !tbaa !21
  br label %bb98
bb97:
  store i1 false, ptr %l146, !tbaa !21
  br label %bb98
bb98:
  %t272 = load i1, ptr %l146, !tbaa !21
  store i1 %t272, ptr %l121, !tbaa !21
  br label %bb104
bb99:
  br i1 true, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb103
bb102:
  %t273 = load i1, ptr %l12, !tbaa !21
  %t275 = xor i1 %t273, true
  store i1 %t275, ptr %l121, !tbaa !21
  br label %bb104
bb103:
  call void @__olang_check_failed(ptr @olang_loc_fa05ab364d453a8b_cb1072875564fc6f)
  unreachable
bb104:
  %t277 = load i1, ptr %l121, !tbaa !21
  %t278 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t278, ptr %l152, !tbaa !24
  br i1 %t277, label %bb105, label %bb106
bb105:
  store i64 1, ptr %l154, !tbaa !24
  br label %bb107
bb106:
  store i64 0, ptr %l154, !tbaa !24
  br label %bb107
bb107:
  %t281 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t282 = load i64, ptr %l152, !tbaa !24
  %t283 = load i64, ptr %l154, !tbaa !24
  %t285 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s7, i64 %t282, i64 %t283, i32 %t281)
  store %"compiler/generic:folded" %t285, ptr %l156
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  %t286 = load %"compiler/generic:folded", ptr %l156
  store %"compiler/generic:folded" %t286, ptr %rv
  br label %ret
bb109:
  store i64 0, ptr %l14, !tbaa !24
  %t287 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t289 = trunc i64 68 to i32
  %t290 = icmp eq i32 %t287, %t289
  br i1 %t290, label %bb110, label %bb111
bb110:
  br label %bb112
bb111:
  br label %bb113
bb112:
  %t292 = load i64, ptr %l9, !tbaa !24
  %t293 = load i64, ptr %l10, !tbaa !24
  %t296 = add i64 %t292, %t293
  store i64 %t296, ptr %l14, !tbaa !24
  br label %bb200
bb113:
  %t298 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t300 = trunc i64 69 to i32
  %t301 = icmp eq i32 %t298, %t300
  br i1 %t301, label %bb114, label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb117
bb116:
  %t303 = load i64, ptr %l9, !tbaa !24
  %t304 = load i64, ptr %l10, !tbaa !24
  %t307 = sub i64 %t303, %t304
  store i64 %t307, ptr %l14, !tbaa !24
  br label %bb200
bb117:
  %t309 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t311 = trunc i64 70 to i32
  %t312 = icmp eq i32 %t309, %t311
  br i1 %t312, label %bb118, label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb121
bb120:
  %t314 = load i64, ptr %l9, !tbaa !24
  %t315 = load i64, ptr %l10, !tbaa !24
  %t318 = mul i64 %t314, %t315
  store i64 %t318, ptr %l14, !tbaa !24
  br label %bb200
bb121:
  %t320 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t322 = trunc i64 72 to i32
  %t323 = icmp eq i32 %t320, %t322
  br i1 %t323, label %bb122, label %bb123
bb122:
  br label %bb126
bb123:
  %t325 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t327 = trunc i64 73 to i32
  %t328 = icmp eq i32 %t325, %t327
  br i1 %t328, label %bb124, label %bb125
bb124:
  br label %bb126
bb125:
  br label %bb140
bb126:
  %t330 = load i64, ptr %l10, !tbaa !24
  %t332 = icmp eq i64 %t330, 0
  br i1 %t332, label %bb127, label %bb128
bb127:
  %t334 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t334, ptr %l178
  br label %bb129
bb128:
  br label %bb130
bb129:
  call void @__olang_scope_close(ptr %s0)
  %t335 = load %"compiler/generic:folded", ptr %l178
  store %"compiler/generic:folded" %t335, ptr %rv
  br label %ret
bb130:
  %t336 = load i1, ptr %l11, !tbaa !21
  br i1 %t336, label %bb131, label %bb132
bb131:
  %t338 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t340 = trunc i64 72 to i32
  %t341 = icmp eq i32 %t338, %t340
  br i1 %t341, label %bb133, label %bb134
bb132:
  %t343 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t345 = trunc i64 72 to i32
  %t346 = icmp eq i32 %t343, %t345
  br i1 %t346, label %bb136, label %bb137
bb133:
  %t348 = load i64, ptr %l9, !tbaa !24
  %t350 = load i64, ptr %l10, !tbaa !24
  %t354 = udiv i64 %t348, %t350
  store i64 %t354, ptr %l182, !tbaa !24
  br label %bb135
bb134:
  %t357 = load i64, ptr %l9, !tbaa !24
  %t359 = load i64, ptr %l10, !tbaa !24
  %t363 = urem i64 %t357, %t359
  store i64 %t363, ptr %l182, !tbaa !24
  br label %bb135
bb135:
  %t366 = load i64, ptr %l182, !tbaa !24
  store i64 %t366, ptr %l14, !tbaa !24
  br label %bb139
bb136:
  %t367 = load i64, ptr %l9, !tbaa !24
  %t368 = load i64, ptr %l10, !tbaa !24
  %t371 = sdiv i64 %t367, %t368
  store i64 %t371, ptr %l197, !tbaa !24
  br label %bb138
bb137:
  %t373 = load i64, ptr %l9, !tbaa !24
  %t374 = load i64, ptr %l10, !tbaa !24
  %t377 = srem i64 %t373, %t374
  store i64 %t377, ptr %l197, !tbaa !24
  br label %bb138
bb138:
  %t379 = load i64, ptr %l197, !tbaa !24
  store i64 %t379, ptr %l14, !tbaa !24
  br label %bb139
bb139:
  br label %bb200
bb140:
  %t380 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t382 = trunc i64 101 to i32
  %t383 = icmp eq i32 %t380, %t382
  br i1 %t383, label %bb141, label %bb142
bb141:
  br label %bb143
bb142:
  br label %bb144
bb143:
  %t385 = load i64, ptr %l9, !tbaa !24
  %t386 = load i64, ptr %l10, !tbaa !24
  %t389 = and i64 %t385, %t386
  store i64 %t389, ptr %l14, !tbaa !24
  br label %bb200
bb144:
  %t391 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t393 = trunc i64 102 to i32
  %t394 = icmp eq i32 %t391, %t393
  br i1 %t394, label %bb145, label %bb146
bb145:
  br label %bb147
bb146:
  br label %bb148
bb147:
  %t396 = load i64, ptr %l9, !tbaa !24
  %t397 = load i64, ptr %l10, !tbaa !24
  %t400 = or i64 %t396, %t397
  store i64 %t400, ptr %l14, !tbaa !24
  br label %bb200
bb148:
  %t402 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t404 = trunc i64 103 to i32
  %t405 = icmp eq i32 %t402, %t404
  br i1 %t405, label %bb149, label %bb150
bb149:
  br label %bb151
bb150:
  br label %bb152
bb151:
  %t407 = load i64, ptr %l9, !tbaa !24
  %t408 = load i64, ptr %l10, !tbaa !24
  %t411 = xor i64 %t407, %t408
  store i64 %t411, ptr %l14, !tbaa !24
  br label %bb200
bb152:
  %t413 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t415 = trunc i64 106 to i32
  %t416 = icmp eq i32 %t413, %t415
  br i1 %t416, label %bb153, label %bb154
bb153:
  br label %bb157
bb154:
  %t418 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t420 = trunc i64 107 to i32
  %t421 = icmp eq i32 %t418, %t420
  br i1 %t421, label %bb155, label %bb156
bb155:
  br label %bb157
bb156:
  br label %bb187
bb157:
  %t423 = getelementptr %"compiler/generic:folded", ptr %l6, i32 0, i32 2
  %t424 = load i32, ptr %t423, !tbaa !23
  %t425 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t428 = icmp ne i32 %t424, %t425
  br i1 %t428, label %bb158, label %bb159
bb158:
  %t430 = getelementptr %"compiler/generic:folded", ptr %l6, i32 0, i32 2
  %t431 = load i32, ptr %t430, !tbaa !23
  store i32 %t431, ptr %l226, !tbaa !23
  br label %bb163
bb159:
  %t433 = getelementptr %"compiler/generic:folded", ptr %l7, i32 0, i32 2
  %t434 = load i32, ptr %t433, !tbaa !23
  %t435 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t438 = icmp eq i32 %t434, %t435
  br i1 %t438, label %bb160, label %bb161
bb160:
  %t440 = getelementptr %"compiler/generic:folded", ptr %l7, i32 0, i32 2
  %t441 = load i32, ptr %t440, !tbaa !23
  store i32 %t441, ptr %l231, !tbaa !23
  br label %bb162
bb161:
  %t443 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t443, ptr %l231, !tbaa !23
  br label %bb162
bb162:
  %t445 = load i32, ptr %l231, !tbaa !23
  store i32 %t445, ptr %l226, !tbaa !23
  br label %bb163
bb163:
  %t446 = load i32, ptr %l226, !tbaa !23
  store i32 %t446, ptr %l8, !tbaa !23
  %t447 = load i32, ptr %l8, !tbaa !23
  %t448 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t451 = icmp eq i32 %t447, %t448
  br i1 %t451, label %bb164, label %bb165
bb164:
  store i64 64, ptr %l237, !tbaa !24
  br label %bb168
bb165:
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t455 = getelementptr %"compiler/generic:Program", ptr %t453, i32 0, i32 2
  store ptr %t455, ptr %l239, !tbaa !29
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t457 = load i32, ptr %l8, !tbaa !23
  %t460 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enumberOf(ptr %v0, ptr %t456, i32 %t457)
  store i32 %t460, ptr %l242
  br label %bb166
bb166:
  %t461 = load ptr, ptr %l239, !tbaa !29
  %t462 = load i32, ptr %l242, !tbaa !23
  %t463 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t461, i32 %t462)
  store i64 %t463, ptr %l243
  br label %bb167
bb167:
  %t464 = load i64, ptr %l243, !tbaa !24
  store i64 %t464, ptr %l237, !tbaa !24
  br label %bb168
bb168:
  %t465 = load i64, ptr %l237, !tbaa !24
  store i64 %t465, ptr %l15, !tbaa !24
  %t466 = load i64, ptr %l10, !tbaa !24
  %t468 = icmp slt i64 %t466, 0
  br i1 %t468, label %bb169, label %bb170
bb169:
  store i1 true, ptr %l246, !tbaa !21
  br label %bb171
bb170:
  %t470 = load i64, ptr %l10, !tbaa !24
  %t471 = load i64, ptr %l15, !tbaa !24
  %t474 = icmp sge i64 %t470, %t471
  store i1 %t474, ptr %l246, !tbaa !21
  br label %bb171
bb171:
  %t476 = load i1, ptr %l246, !tbaa !21
  br i1 %t476, label %bb172, label %bb173
bb172:
  %t477 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t477, ptr %l250
  br label %bb174
bb173:
  br label %bb175
bb174:
  call void @__olang_scope_close(ptr %s0)
  %t478 = load %"compiler/generic:folded", ptr %l250
  store %"compiler/generic:folded" %t478, ptr %rv
  br label %ret
bb175:
  %t479 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t481 = trunc i64 106 to i32
  %t482 = icmp eq i32 %t479, %t481
  br i1 %t482, label %bb176, label %bb177
bb176:
  %t484 = load i64, ptr %l9, !tbaa !24
  %t485 = load i64, ptr %l10, !tbaa !24
  store i64 %t485, ptr %l254, !tbaa !24
  %t487 = load i64, ptr %l254, !tbaa !24
  %t488 = load i64, ptr %l254, !tbaa !24
  %t489 = shl i64 %t484, %t488
  store i64 %t489, ptr %l14, !tbaa !24
  br label %bb186
bb177:
  %t491 = load i32, ptr %l8, !tbaa !23
  %t492 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t495 = icmp ne i32 %t491, %t492
  br i1 %t495, label %bb178, label %bb179
bb178:
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t499 = getelementptr %"compiler/generic:Program", ptr %t497, i32 0, i32 2
  store ptr %t499, ptr %l261, !tbaa !29
  %t500 = load ptr, ptr %l0, !tbaa !29
  %t501 = load i32, ptr %l8, !tbaa !23
  %t504 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enumberOf(ptr %v0, ptr %t500, i32 %t501)
  store i32 %t504, ptr %l264
  br label %bb180
bb179:
  store i1 false, ptr %l259, !tbaa !21
  br label %bb182
bb180:
  %t505 = load ptr, ptr %l261, !tbaa !29
  %t506 = load i32, ptr %l264, !tbaa !23
  %t507 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t505, i32 %t506)
  store i1 %t507, ptr %l265
  br label %bb181
bb181:
  %t508 = load i1, ptr %l265, !tbaa !21
  store i1 %t508, ptr %l259, !tbaa !21
  br label %bb182
bb182:
  %t509 = load i1, ptr %l259, !tbaa !21
  br i1 %t509, label %bb183, label %bb184
bb183:
  %t510 = load i64, ptr %l9, !tbaa !24
  %t512 = load i64, ptr %l10, !tbaa !24
  store i64 %t512, ptr %l270, !tbaa !65
  %t515 = load i64, ptr %l270, !tbaa !65
  %t516 = load i64, ptr %l270, !tbaa !65
  %t517 = lshr i64 %t510, %t516
  store i64 %t517, ptr %l266, !tbaa !24
  br label %bb185
bb184:
  %t520 = load i64, ptr %l9, !tbaa !24
  %t521 = load i64, ptr %l10, !tbaa !24
  store i64 %t521, ptr %l274, !tbaa !24
  %t523 = load i64, ptr %l274, !tbaa !24
  %t524 = load i64, ptr %l274, !tbaa !24
  %t525 = ashr i64 %t520, %t524
  store i64 %t525, ptr %l266, !tbaa !24
  br label %bb185
bb185:
  %t527 = load i64, ptr %l266, !tbaa !24
  store i64 %t527, ptr %l14, !tbaa !24
  br label %bb186
bb186:
  br label %bb200
bb187:
  %t528 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t530 = trunc i64 47 to i32
  %t531 = icmp eq i32 %t528, %t530
  br i1 %t531, label %bb188, label %bb189
bb188:
  br label %bb190
bb189:
  br label %bb194
bb190:
  %t533 = load i64, ptr %l9, !tbaa !24
  %t535 = icmp ne i64 %t533, 0
  %t536 = load i64, ptr %l10, !tbaa !24
  %t538 = icmp ne i64 %t536, 0
  %t541 = icmp ne i1 %t535, %t538
  br i1 %t541, label %bb191, label %bb192
bb191:
  store i64 1, ptr %l283, !tbaa !24
  br label %bb193
bb192:
  store i64 0, ptr %l283, !tbaa !24
  br label %bb193
bb193:
  %t543 = load i64, ptr %l283, !tbaa !24
  store i64 %t543, ptr %l14, !tbaa !24
  br label %bb200
bb194:
  br i1 true, label %bb195, label %bb196
bb195:
  br label %bb197
bb196:
  br label %bb199
bb197:
  %t544 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t544, ptr %l284
  br label %bb198
bb198:
  call void @__olang_scope_close(ptr %s0)
  %t545 = load %"compiler/generic:folded", ptr %l284
  store %"compiler/generic:folded" %t545, ptr %rv
  br label %ret
bb199:
  call void @__olang_check_failed(ptr @olang_loc_415c77be4516d04a_7550ee8386647fae)
  unreachable
bb200:
  %t546 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t548 = trunc i64 47 to i32
  %t549 = icmp eq i32 %t546, %t548
  br i1 %t549, label %bb201, label %bb202
bb201:
  store %olang.scope zeroinitializer, ptr %s30
  %t551 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t552 = load i64, ptr %l14, !tbaa !24
  %t553 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t557 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s30, i64 %t551, i64 %t552, i32 %t553)
  store %"compiler/generic:folded" %t557, ptr %l290
  br label %bb203
bb202:
  br label %bb204
bb203:
  call void @__olang_scope_close(ptr %s30)
  call void @__olang_scope_close(ptr %s0)
  %t558 = load %"compiler/generic:folded", ptr %l290
  store %"compiler/generic:folded" %t558, ptr %rv
  br label %ret
bb204:
  %t559 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t559, ptr %l291, !tbaa !24
  %t560 = load i32, ptr %l8, !tbaa !23
  %t561 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t564 = icmp ne i32 %t560, %t561
  br i1 %t564, label %bb205, label %bb206
bb205:
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t567 = load i64, ptr %l14, !tbaa !24
  %t568 = load i32, ptr %l8, !tbaa !23
  %t572 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t566, i64 %t567, i32 %t568)
  store i64 %t572, ptr %l299
  br label %bb207
bb206:
  %t573 = load i64, ptr %l14, !tbaa !24
  store i64 %t573, ptr %l295, !tbaa !24
  br label %bb208
bb207:
  %t575 = load i64, ptr %l299, !tbaa !24
  store i64 %t575, ptr %l295, !tbaa !24
  br label %bb208
bb208:
  %t576 = load i32, ptr %l8, !tbaa !23
  %t577 = load i64, ptr %l291, !tbaa !24
  %t578 = load i64, ptr %l295, !tbaa !24
  %t580 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s0, i64 %t577, i64 %t578, i32 %t576)
  store %"compiler/generic:folded" %t580, ptr %l302
  br label %bb209
bb209:
  call void @__olang_scope_close(ptr %s0)
  %t581 = load %"compiler/generic:folded", ptr %l302
  store %"compiler/generic:folded" %t581, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:folded", ptr %rv
  ret %"compiler/generic:folded" %rr
}

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalConversion(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca %"compiler/generic:folded"
  %l11 = alloca %"compiler/generic:folded"
  %l12 = alloca ptr
  %l13 = alloca i1
  %l21 = alloca ptr
  %l25 = alloca i64
  %l27 = alloca %"compiler/names:Ref"
  %l31 = alloca %"compiler/generic:folded"
  %l33 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l37 = alloca i32
  %l41 = alloca i1
  %l43 = alloca i1
  %l46 = alloca i1
  %l47 = alloca %"compiler/generic:folded"
  %l50 = alloca { i64, ptr }
  %l52 = alloca %"compiler/generic:folded"
  %l57 = alloca i64
  %l61 = alloca i64
  %l63 = alloca %"compiler/generic:folded"
  %l64 = alloca %"compiler/generic:folded"
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/generic:folded"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp ne i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t7, ptr %l11
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t8 = load %"compiler/generic:folded", ptr %l11
  store %"compiler/generic:folded" %t8, ptr %rv
  br label %ret
bb4:
  %t9 = load ptr, ptr %l2, !tbaa !29
  store ptr %t9, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t10 = load ptr, ptr %l12, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load ptr, ptr %l12, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 30}
  %t16 = icmp eq i64 %t14, 0
  store i1 %t16, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l13, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr { i64, [4 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { %"compiler/source:Span", i32 }, ptr %t20, i32 0, i32 0
  %t22 = load %"compiler/source:Span", ptr %t21
  store %"compiler/source:Span" %t22, ptr %l4
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32 }, ptr %t26, i32 0, i32 1
  %t28 = load i32, ptr %t27
  store i32 %t28, ptr %l5, !tbaa !23
  br label %bb9
bb8:
  br label %bb33
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  store ptr %t33, ptr %l21, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Context", ptr %t35, i32 0, i32 0
  %t38 = load i64, ptr %t37, !tbaa !24
  %t41 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t34, i64 %t38)
  store i64 %t41, ptr %l25
  br label %bb10
bb10:
  %t42 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t43 = load i32, ptr %t42, !tbaa !23
  %t44 = load ptr, ptr %l21, !tbaa !29
  %t45 = load i64, ptr %l25, !tbaa !24
  %t47 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t44, i64 %t45, i32 %t43)
  store %"compiler/names:Ref" %t47, ptr %l27
  br label %bb11
bb11:
  %t48 = getelementptr %"compiler/names:Ref", ptr %l27, i32 0, i32 0
  %t49 = load i32, ptr %t48, !range !{i32 0, i32 9}
  %t51 = trunc i64 7 to i32
  %t52 = icmp eq i32 %t49, %t51
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t56, ptr %l31
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  %t57 = load %"compiler/generic:folded", ptr %l31
  store %"compiler/generic:folded" %t57, ptr %rv
  br label %ret
bb15:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  store ptr %t60, ptr %l33, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l5, !tbaa !23
  %t65 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t61, i32 %t62)
  store { i64, ptr } %t65, ptr %l36
  br label %bb16
bb16:
  %t66 = load ptr, ptr %l33, !tbaa !29
  %t67 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v0, ptr %t66, { i64, ptr } %t67)
  store i32 %t68, ptr %l37
  br label %bb17
bb17:
  %t69 = load i32, ptr %l37, !tbaa !23
  store i32 %t69, ptr %l6, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = load i32, ptr %l6, !tbaa !23
  %t76 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t72, i32 %t73)
  store i1 %t76, ptr %l41
  br label %bb18
bb18:
  %t77 = load i1, ptr %l41, !tbaa !21
  %t78 = xor i1 %t77, true
  br i1 %t78, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb22
bb20:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l6, !tbaa !23
  %t84 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewide(ptr %v0, ptr %t80, i32 %t81)
  store i1 %t84, ptr %l46
  br label %bb21
bb21:
  %t85 = load i1, ptr %l46, !tbaa !21
  store i1 %t85, ptr %l43, !tbaa !21
  br label %bb22
bb22:
  %t86 = load i1, ptr %l43, !tbaa !21
  br i1 %t86, label %bb23, label %bb24
bb23:
  %t87 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t87, ptr %l47
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s2)
  %t88 = load %"compiler/generic:folded", ptr %l47
  store %"compiler/generic:folded" %t88, ptr %rv
  br label %ret
bb26:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t91 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t91, ptr %l50, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr ptr, ptr %t93, i64 0
  %t95 = load ptr, ptr %t94, !tbaa !39
  %t99 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v3, ptr %t89, ptr %t90, ptr %t95)
  store %"compiler/generic:folded" %t99, ptr %l52
  br label %bb27
bb27:
  %t100 = load %"compiler/generic:folded", ptr %l52
  store %"compiler/generic:folded" %t100, ptr %l7
  %t101 = getelementptr %"compiler/generic:folded", ptr %l7, i32 0, i32 0
  %t102 = load i64, ptr %t101, !tbaa !24
  %t103 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t106 = icmp ne i64 %t102, %t103
  br i1 %t106, label %bb28, label %bb29
bb28:
  %t108 = load %"compiler/generic:folded", ptr %l7
  call void @__olang_scope_close(ptr %s2)
  store %"compiler/generic:folded" %t108, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t110 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t110, ptr %l57, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/generic:folded", ptr %l7, i32 0, i32 1
  %t113 = load i64, ptr %t112, !tbaa !24
  %t114 = load i32, ptr %l6, !tbaa !23
  %t118 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t111, i64 %t113, i32 %t114)
  store i64 %t118, ptr %l61
  br label %bb31
bb31:
  %t119 = load i32, ptr %l6, !tbaa !23
  %t120 = load i64, ptr %l57, !tbaa !24
  %t121 = load i64, ptr %l61, !tbaa !24
  %t123 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s2, i64 %t120, i64 %t121, i32 %t119)
  store %"compiler/generic:folded" %t123, ptr %l63
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s2)
  %t124 = load %"compiler/generic:folded", ptr %l63
  store %"compiler/generic:folded" %t124, ptr %rv
  br label %ret
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t125 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t125, ptr %l64
  br label %bb37
bb37:
  %t126 = load %"compiler/generic:folded", ptr %l64
  store %"compiler/generic:folded" %t126, ptr %rv
  br label %ret
bb38:
  call void @__olang_check_failed(ptr @olang_loc_1222b844891ca59c_eae6e2f85df83468)
  unreachable
ret:
  %rr = load %"compiler/generic:folded", ptr %rv
  ret %"compiler/generic:folded" %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eflagBans(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l34 = alloca i64
  %l37 = alloca i64
  %l59 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca ptr
  %l70 = alloca i64
  %l72 = alloca { i64, ptr }
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca { i64, [3 x i64] }
  %l77 = alloca %"compiler/diagmsg:Msg"
  %l78 = alloca i64
  %l84 = alloca i1
  %l89 = alloca ptr
  %l93 = alloca i32
  %l94 = alloca { i64, ptr }
  %l96 = alloca i64
  %l103 = alloca i64
  %l106 = alloca i64
  %l132 = alloca i1
  %l135 = alloca { i64, ptr }
  %l138 = alloca i1
  %l140 = alloca i1
  %l143 = alloca { i64, ptr }
  %l146 = alloca i64
  %l151 = alloca { i64, ptr }
  %l156 = alloca ptr
  %l162 = alloca { i64, [3 x i64] }
  %l166 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %l169 = alloca %"compiler/diagmsg:Msg"
  %l170 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l3, !tbaa !23
  %t7 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s0, ptr %t3, i32 %t4)
  store { i64, ptr } %t7, ptr %l25
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t13 = icmp sgt i64 %t11, 1
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i64 0, ptr %l6, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t19 = load i64, ptr %l7, !tbaa !24
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb4, label %bb5
bb3:
  br label %bb26
bb4:
  %t25 = load i64, ptr %l8, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb9
bb6:
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l8, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l8, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l37, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb8
bb8:
  %t45 = load i64, ptr %l37, !tbaa !24
  store i64 %t45, ptr %l34, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l34, !tbaa !24
  store i64 %t46, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l10, !tbaa !24
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb11, label %bb12
bb11:
  br label %bb25
bb12:
  br label %bb13
bb13:
  %t55 = load i64, ptr %l6, !tbaa !24
  %t56 = load i64, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  store i64 %t63, ptr %l11, !tbaa !24
  %t65 = load i64, ptr %l11, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i32, ptr %t68, i64 %t65
  %t70 = load i32, ptr %t69, !tbaa !33
  %t71 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t74 = icmp eq i32 %t70, %t71
  br i1 %t74, label %bb14, label %bb15
bb14:
  %t76 = load i64, ptr %l11, !tbaa !24
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t79 = getelementptr %"compiler/ast:Sig", ptr %t77, i32 0, i32 1
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t85 = icmp slt i64 %t76, %t82
  store i1 %t85, ptr %l59, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb16
bb16:
  %t87 = load i1, ptr %l59, !tbaa !21
  br i1 %t87, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/load:Loader", ptr %t91, i32 0, i32 4
  %t94 = load ptr, ptr %t93, !tbaa !29
  store ptr %t94, ptr %l67, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l68, !tbaa !29
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Context", ptr %t96, i32 0, i32 0
  %t99 = load i64, ptr %t98, !tbaa !24
  store i64 %t99, ptr %l70, !tbaa !24
  %t100 = load ptr, ptr %l2, !tbaa !29
  %t102 = getelementptr %"compiler/ast:Sig", ptr %t100, i32 0, i32 1
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  store { i64, ptr } %t103, ptr %l72, !tbaa !27
  %t104 = load i64, ptr %l11, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr ptr, ptr %t107, i64 %t104
  %t109 = load ptr, ptr %t108, !tbaa !39
  %t111 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t109)
  store %"compiler/source:Span" %t111, ptr %l75
  br label %bb19
bb18:
  br label %bb23
bb19:
  %t112 = load ptr, ptr %l68, !tbaa !29
  %t113 = load i64, ptr %l70, !tbaa !24
  %t114 = load %"compiler/source:Span", ptr %l75
  %t115 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t112, i64 %t113, %"compiler/source:Span" %t114)
  store { i64, [3 x i64] } %t115, ptr %l76
  br label %bb20
bb20:
  %t116 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFlagAmongResults(ptr %s4)
  store %"compiler/diagmsg:Msg" %t116, ptr %l77
  br label %bb21
bb21:
  %t117 = load ptr, ptr %l67, !tbaa !29
  %t118 = load { i64, [3 x i64] }, ptr %l76
  %t119 = load %"compiler/diagmsg:Msg", ptr %l77
  %t120 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %s4, ptr %t117, { i64, [3 x i64] } %t118, %"compiler/diagmsg:Msg" %t119)
  store i64 %t120, ptr %l78
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t121 = load i64, ptr %l10, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l10, !tbaa !24
  br label %bb10
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  %t125 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t129 = icmp ne i64 %t127, 1
  br i1 %t129, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb29
bb28:
  %t131 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i32, ptr %t132, i64 0
  %t134 = load i32, ptr %t133, !tbaa !33
  %t135 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t138 = icmp ne i32 %t134, %t135
  store i1 %t138, ptr %l84, !tbaa !21
  br label %bb29
bb29:
  %t140 = load i1, ptr %l84, !tbaa !21
  br i1 %t140, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb31:
  br label %bb32
bb32:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  store ptr %t143, ptr %l89, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/generic:Program", ptr %t144, i32 0, i32 2
  %t147 = load i32, ptr %l3, !tbaa !23
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t146, i32 %t147)
  store i32 %t150, ptr %l93
  br label %bb33
bb33:
  %t151 = load ptr, ptr %l89, !tbaa !29
  %t152 = load i32, ptr %l93, !tbaa !23
  %t153 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t151, i32 %t152)
  store { i64, ptr } %t153, ptr %l94
  br label %bb34
bb34:
  %t154 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t154, ptr %l12, !tbaa !27
  br i1 %a4, label %bb35, label %bb36
bb35:
  store i64 1, ptr %l96, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb37
bb37:
  %t157 = load i64, ptr %l96, !tbaa !24
  store i64 %t157, ptr %l13, !tbaa !24
  %t158 = load i64, ptr %l13, !tbaa !24
  store i64 %t158, ptr %l14, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  store i64 %t162, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t164 = load i64, ptr %l15, !tbaa !24
  %t165 = load i64, ptr %l14, !tbaa !24
  %t168 = icmp sgt i64 %t164, %t165
  br i1 %t168, label %bb38, label %bb39
bb38:
  %t170 = load i64, ptr %l16, !tbaa !24
  %t172 = icmp sgt i64 %t170, 0
  br i1 %t172, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l103, !tbaa !24
  br label %bb43
bb40:
  %t174 = load i64, ptr %l15, !tbaa !24
  %t175 = load i64, ptr %l14, !tbaa !24
  %t178 = sub i64 %t174, %t175
  %t179 = load i64, ptr %l16, !tbaa !24
  %t182 = add i64 %t178, %t179
  %t184 = sub i64 %t182, 1
  %t185 = load i64, ptr %l16, !tbaa !24
  %t188 = sdiv i64 %t184, %t185
  store i64 %t188, ptr %l106, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l106, !tbaa !24
  br label %bb42
bb42:
  %t190 = load i64, ptr %l106, !tbaa !24
  store i64 %t190, ptr %l103, !tbaa !24
  br label %bb43
bb43:
  %t191 = load i64, ptr %l103, !tbaa !24
  store i64 %t191, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s8
  %t192 = load i64, ptr %l18, !tbaa !24
  %t193 = load i64, ptr %l17, !tbaa !24
  %t196 = icmp slt i64 %t192, %t193
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s8)
  br label %bb65
bb46:
  br label %bb47
bb47:
  %t200 = load i64, ptr %l14, !tbaa !24
  %t201 = load i64, ptr %l18, !tbaa !24
  %t202 = load i64, ptr %l16, !tbaa !24
  %t205 = mul i64 %t201, %t202
  %t208 = add i64 %t200, %t205
  store i64 %t208, ptr %l19, !tbaa !24
  %t210 = load i64, ptr %l19, !tbaa !24
  %t211 = load i64, ptr %l13, !tbaa !24
  %t214 = sub i64 %t210, %t211
  store i64 %t214, ptr %l20, !tbaa !24
  %t216 = load i64, ptr %l20, !tbaa !24
  %t217 = load ptr, ptr %l2, !tbaa !29
  %t219 = getelementptr %"compiler/ast:Sig", ptr %t217, i32 0, i32 0
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t220, 0
  %t225 = icmp sge i64 %t216, %t222
  br i1 %t225, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb51
bb49:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/generic:Program", ptr %t227, i32 0, i32 2
  %t230 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t230, ptr %l135, !tbaa !27
  %t231 = load i64, ptr %l19, !tbaa !24
  %t233 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr i32, ptr %t234, i64 %t231
  %t236 = load i32, ptr %t235, !tbaa !33
  %t239 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t229, i32 %t236)
  store i1 %t239, ptr %l138
  br label %bb50
bb50:
  %t240 = load i1, ptr %l138, !tbaa !21
  %t241 = xor i1 %t240, true
  store i1 %t241, ptr %l132, !tbaa !21
  br label %bb51
bb51:
  %t243 = load i1, ptr %l132, !tbaa !21
  br i1 %t243, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l140, !tbaa !21
  br label %bb55
bb53:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/generic:Program", ptr %t244, i32 0, i32 2
  %t247 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t247, ptr %l143, !tbaa !27
  %t248 = load i64, ptr %l19, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr i32, ptr %t251, i64 %t248
  %t253 = load i32, ptr %t252, !tbaa !33
  %t256 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t246, i32 %t253)
  store i64 %t256, ptr %l146
  br label %bb54
bb54:
  %t257 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t258 = load i64, ptr %l146, !tbaa !24
  %t260 = and i64 %t258, %t257
  %t262 = icmp eq i64 %t260, 0
  store i1 %t262, ptr %l140, !tbaa !21
  br label %bb55
bb55:
  %t264 = load i1, ptr %l140, !tbaa !21
  br i1 %t264, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s8)
  br label %bb64
bb57:
  br label %bb58
bb58:
  %t265 = load ptr, ptr %l2, !tbaa !29
  %t267 = getelementptr %"compiler/ast:Sig", ptr %t265, i32 0, i32 0
  %t268 = load { i64, ptr }, ptr %t267, !tbaa !27
  store { i64, ptr } %t268, ptr %l151, !tbaa !27
  %t269 = load i64, ptr %l20, !tbaa !24
  %t271 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !27
  %t273 = getelementptr ptr, ptr %t272, i64 %t269
  %t274 = load ptr, ptr %t273, !tbaa !39
  store ptr %t274, ptr %l21, !tbaa !29
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/generic:Program", ptr %t276, i32 0, i32 0
  %t279 = load ptr, ptr %t278, !tbaa !29
  %t281 = getelementptr %"compiler/load:Loader", ptr %t279, i32 0, i32 4
  %t282 = load ptr, ptr %t281, !tbaa !29
  store ptr %t282, ptr %l156, !tbaa !29
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load ptr, ptr %l1, !tbaa !29
  %t286 = getelementptr %"compiler/generic:Context", ptr %t284, i32 0, i32 0
  %t287 = load i64, ptr %t286, !tbaa !24
  %t288 = load ptr, ptr %l21, !tbaa !29
  %t290 = getelementptr %"compiler/ast:Param", ptr %t288, i32 0, i32 0
  %t291 = load %"compiler/source:Span", ptr %t290
  %t295 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t283, i64 %t287, %"compiler/source:Span" %t291)
  store { i64, [3 x i64] } %t295, ptr %l162
  br label %bb59
bb59:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t297 = load ptr, ptr %l21, !tbaa !29
  %t299 = getelementptr %"compiler/ast:Param", ptr %t297, i32 0, i32 1
  %t300 = load i32, ptr %t299, !tbaa !23
  %t303 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t296, i32 %t300)
  store { i64, ptr } %t303, ptr %l166
  br label %bb60
bb60:
  %t304 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t305 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s8, { i64, ptr } %t304)
  store { i64, ptr } %t305, ptr %l167
  br label %bb61
bb61:
  %t306 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t307 = extractvalue { i64, ptr } %t306, 0
  %t308 = extractvalue { i64, ptr } %t306, 1
  %t309 = mul i64 %t307, 1
  %t310 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t309)
  call void @llvm.memcpy.p0.p0.i64(ptr %t310, ptr %t308, i64 %t309, i1 false)
  %t311 = insertvalue { i64, ptr } undef, i64 %t307, 0
  %t312 = insertvalue { i64, ptr } %t311, ptr %t310, 1
  %t314 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFlagWithOutParam(ptr %s8, ptr %s8, { i64, ptr } %t312)
  store %"compiler/diagmsg:Msg" %t314, ptr %l169
  br label %bb62
bb62:
  %t315 = load ptr, ptr %l156, !tbaa !29
  %t316 = load { i64, [3 x i64] }, ptr %l162
  %t317 = load %"compiler/diagmsg:Msg", ptr %l169
  %t318 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %s8, ptr %t315, { i64, [3 x i64] } %t316, %"compiler/diagmsg:Msg" %t317)
  store i64 %t318, ptr %l170
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s8)
  br label %bb64
bb64:
  %t319 = load i64, ptr %l18, !tbaa !24
  %t321 = add i64 %t319, 1
  store i64 %t321, ptr %l18, !tbaa !24
  br label %bb44
bb65:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2einstanceArgs(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l19 = alloca { i64, ptr }
  %l21 = alloca i64
  %l26 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i64
  %l56 = alloca i64
  %l59 = alloca { i64, ptr }
  %l62 = alloca i32
  %l65 = alloca i32
  %l66 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l74 = alloca i32
  %l75 = alloca i64
  %l80 = alloca i32
  %l83 = alloca { i64, ptr }
  %l95 = alloca i32
  %l99 = alloca i32
  %l107 = alloca i32
  %l108 = alloca i32
  %l112 = alloca i32
  %l113 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
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
  %t7 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t3, i32 %t4)
  store { i64, ptr } %t7, ptr %l19
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l21, !tbaa !24
  %t12 = load i64, ptr %l21, !tbaa !24
  %t13 = icmp sge i64 %t12, 0
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i64, ptr %l21, !tbaa !24
  %t16 = icmp sle i64 %t15, 2305843009213693951
  br i1 %t16, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_b8112a4d89490ffb_a06a8022a06c4bef)
  unreachable
bb4:
  %t18 = load i64, ptr %l21, !tbaa !24
  %t19 = mul i64 %t18, 4
  %t20 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l3, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l26, !tbaa !24
  %t27 = load i64, ptr %l26, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_b8112a4d89490ffb_a06a8022a06c4bef)
  unreachable
bb6:
  %t30 = load i64, ptr %l26, !tbaa !24
  %t31 = icmp sle i64 %t30, 2305843009213693951
  br i1 %t31, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_efebc3387e505f66_7fb3af75c23c7b1a)
  unreachable
bb8:
  %t33 = load i64, ptr %l26, !tbaa !24
  %t34 = mul i64 %t33, 4
  %t35 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l4, !tbaa !27
  store i1 false, ptr %l5, !tbaa !21
  store i1 false, ptr %l6, !tbaa !21
  store i64 0, ptr %l7, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t43 = load i64, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp sgt i64 %t43, %t44
  br i1 %t47, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_efebc3387e505f66_7fb3af75c23c7b1a)
  unreachable
bb10:
  %t49 = load i64, ptr %l9, !tbaa !24
  %t51 = icmp sgt i64 %t49, 0
  br i1 %t51, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb15
bb12:
  %t53 = load i64, ptr %l8, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = sub i64 %t53, %t54
  %t58 = load i64, ptr %l9, !tbaa !24
  %t61 = add i64 %t57, %t58
  %t63 = sub i64 %t61, 1
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = sdiv i64 %t63, %t64
  store i64 %t67, ptr %l38, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb14
bb14:
  %t69 = load i64, ptr %l38, !tbaa !24
  store i64 %t69, ptr %l35, !tbaa !24
  br label %bb15
bb15:
  %t70 = load i64, ptr %l35, !tbaa !24
  store i64 %t70, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb16
bb16:
  %t71 = load i64, ptr %l11, !tbaa !24
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = icmp slt i64 %t71, %t72
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb17, label %bb18
bb17:
  br label %bb33
bb18:
  br label %bb19
bb19:
  %t79 = load i64, ptr %l7, !tbaa !24
  %t80 = load i64, ptr %l11, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  %t84 = mul i64 %t80, %t81
  %t87 = add i64 %t79, %t84
  store i64 %t87, ptr %l12, !tbaa !24
  %t89 = load i64, ptr %l12, !tbaa !24
  store i64 %t89, ptr %l56, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 2
  %t93 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t93, ptr %l59, !tbaa !27
  %t94 = load i64, ptr %l12, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i32, ptr %t97, i64 %t94
  %t99 = load i32, ptr %t98, !tbaa !33
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t92, i32 %t99)
  store i32 %t102, ptr %l62
  br label %bb20
bb20:
  %t103 = load i32, ptr %l62, !range !{i32 0, i32 33}
  %t105 = trunc i64 21 to i32
  %t106 = icmp eq i32 %t103, %t105
  br i1 %t106, label %bb21, label %bb22
bb21:
  %t108 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t108, ptr %l66, !tbaa !27
  %t109 = load i64, ptr %l12, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i32, ptr %t112, i64 %t109
  %t114 = load i32, ptr %t113, !tbaa !33
  store i32 %t114, ptr %l65, !tbaa !23
  br label %bb24
bb22:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t119, ptr %l71, !tbaa !27
  %t120 = load i64, ptr %l12, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr i32, ptr %t123, i64 %t120
  %t125 = load i32, ptr %t124, !tbaa !33
  %t128 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t118, i32 %t125)
  store i32 %t128, ptr %l74
  br label %bb23
bb23:
  %t129 = load i32, ptr %l74, !tbaa !23
  store i32 %t129, ptr %l65, !tbaa !23
  br label %bb24
bb24:
  %t130 = load i32, ptr %l65, !tbaa !23
  %t131 = load i64, ptr %l56, !tbaa !24
  %t132 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr i32, ptr %t133, i64 %t131
  store i32 %t130, ptr %t134, !tbaa !33
  %t135 = load i64, ptr %l12, !tbaa !24
  store i64 %t135, ptr %l75, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  %t139 = load i64, ptr %l12, !tbaa !24
  %t141 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i32, ptr %t142, i64 %t139
  %t144 = load i32, ptr %t143, !tbaa !33
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %t138, i32 %t144)
  store i32 %t147, ptr %l80
  br label %bb25
bb25:
  %t148 = load i32, ptr %l80, !tbaa !23
  %t149 = load i64, ptr %l75, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i32, ptr %t151, i64 %t149
  store i32 %t148, ptr %t152, !tbaa !33
  %t153 = load i64, ptr %l12, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i32, ptr %t156, i64 %t153
  %t158 = load i32, ptr %t157, !tbaa !33
  %t159 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t159, ptr %l83, !tbaa !27
  %t160 = load i64, ptr %l12, !tbaa !24
  %t162 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i32, ptr %t163, i64 %t160
  %t165 = load i32, ptr %t164, !tbaa !33
  %t168 = icmp ne i32 %t158, %t165
  br i1 %t168, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb28
bb27:
  br label %bb28
bb28:
  %t170 = load i64, ptr %l12, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i32, ptr %t173, i64 %t170
  %t175 = load i32, ptr %t174, !tbaa !33
  %t176 = load i64, ptr %l12, !tbaa !24
  %t178 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i32, ptr %t179, i64 %t176
  %t181 = load i32, ptr %t180, !tbaa !33
  %t184 = icmp ne i32 %t175, %t181
  br i1 %t184, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t186 = load i64, ptr %l11, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l11, !tbaa !24
  br label %bb16
bb33:
  %t190 = load i1, ptr %l5, !tbaa !21
  br i1 %t190, label %bb34, label %bb35
bb34:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 2
  %t195 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t198 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t194, { i64, ptr } %t195)
  store i32 %t198, ptr %l99
  br label %bb36
bb35:
  %t199 = load i32, ptr %l1, !tbaa !23
  store i32 %t199, ptr %l95, !tbaa !23
  br label %bb37
bb36:
  %t201 = load i32, ptr %l99, !tbaa !23
  store i32 %t201, ptr %l95, !tbaa !23
  br label %bb37
bb37:
  %t202 = load i32, ptr %l95, !tbaa !23
  store i32 %t202, ptr %l13, !tbaa !23
  %t203 = load i1, ptr %l6, !tbaa !21
  %t205 = xor i1 %t203, true
  br i1 %t205, label %bb38, label %bb39
bb38:
  %t207 = load i32, ptr %l13, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t207, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/generic:Program", ptr %t209, i32 0, i32 2
  %t212 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t215 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t211, { i64, ptr } %t212)
  store i32 %t215, ptr %l107
  br label %bb41
bb41:
  %t216 = load i32, ptr %l107, !tbaa !23
  store i32 %t216, ptr %l14, !tbaa !23
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/generic:Program", ptr %t217, i32 0, i32 46
  %t220 = load i32, ptr %l14, !tbaa !23
  %t223 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aListId_2c_20compile_H6dc73389c50b0fe7ce755995350ae9cd(ptr %v0, ptr %t219, i32 %t220)
  %t224 = extractvalue { i32, i32 } %t223, 1
  %t225 = extractvalue { i32, i32 } %t223, 0
  store i32 %t225, ptr %l113
  %t226 = icmp ne i32 %t225, 0
  br i1 %t226, label %bb43, label %ok.227, !prof !99
ok.227:
  store i32 %t224, ptr %l112
  br label %bb42
bb42:
  %t228 = load i32, ptr %l112, !tbaa !23
  store i32 %t228, ptr %l108, !tbaa !23
  br label %bb45
bb43:
  br label %bb44
bb44:
  store i32 -1, ptr %l108, !tbaa !23
  br label %bb45
bb45:
  %t229 = load i32, ptr %l108, !tbaa !23
  store i32 %t229, ptr %l15, !tbaa !23
  %t230 = load i32, ptr %l15, !tbaa !23
  %t232 = icmp sge i32 %t230, 0
  br i1 %t232, label %bb46, label %bb47
bb46:
  %t234 = load i32, ptr %l15, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t234, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/generic:Program", ptr %t236, i32 0, i32 46
  %t239 = load i32, ptr %l14, !tbaa !23
  %t240 = load i32, ptr %l13, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aListId_2c_20compile_Ha0a2a345eb8118fa74dc4419a52b5a9c(ptr %v0, ptr %t238, i32 %t239, i32 %t240)
  br label %bb49
bb49:
  %t244 = load i32, ptr %l13, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t244, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eitemsElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i32
  %l17 = alloca i1
  %l21 = alloca i32
  %l23 = alloca i1
  %l31 = alloca { i64, ptr }
  %l34 = alloca i32
  %l38 = alloca i32
  %l42 = alloca i1
  %l44 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca i32
  %l53 = alloca i1
  %l57 = alloca i1
  %l67 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l77 = alloca i32
  %l79 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l3, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t10 = trunc i64 19 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l21
  br label %bb4
bb4:
  %t22 = load i32, ptr %l21, !tbaa !23
  %t23 = icmp ne i32 %t22, 0
  store i1 %t23, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l17, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb8
bb7:
  %t26 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t30 = icmp eq i64 %t28, 0
  store i1 %t30, ptr %l23, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l23, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load i32, ptr %l3, !tbaa !23
  store i32 %t33, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t38, ptr %l31, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr ptr, ptr %t40, i64 0
  %t42 = load ptr, ptr %t41, !tbaa !39
  %t48 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t35, ptr %t36, ptr %t37, ptr %t42)
  store i32 %t48, ptr %l34
  br label %bb12
bb12:
  %t49 = load i32, ptr %l34, !tbaa !23
  store i32 %t49, ptr %l5, !tbaa !23
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l5, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l38
  br label %bb13
bb13:
  %t57 = load i32, ptr %l38, !range !{i32 0, i32 33}
  %t59 = trunc i64 19 to i32
  %t60 = icmp eq i32 %t57, %t59
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb18
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 2
  store ptr %t66, ptr %l44, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l5, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l48
  br label %bb16
bb16:
  %t74 = load ptr, ptr %l44, !tbaa !29
  %t75 = load i32, ptr %l48, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t74, i32 %t75)
  store i32 %t76, ptr %l49
  br label %bb17
bb17:
  %t77 = load i32, ptr %l49, !range !{i32 0, i32 33}
  %t79 = trunc i64 26 to i32
  %t80 = icmp eq i32 %t77, %t79
  %t82 = xor i1 %t80, true
  store i1 %t82, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t84 = load i1, ptr %l42, !tbaa !21
  br i1 %t84, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb22
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l5, !tbaa !23
  %t87 = load i32, ptr %l3, !tbaa !23
  %t91 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %t85, i32 %t86, i32 %t87)
  store i1 %t91, ptr %l57
  br label %bb21
bb21:
  %t92 = load i1, ptr %l57, !tbaa !21
  %t93 = xor i1 %t92, true
  store i1 %t93, ptr %l53, !tbaa !21
  br label %bb22
bb22:
  %t95 = load i1, ptr %l53, !tbaa !21
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t96 = load i32, ptr %l3, !tbaa !23
  store i32 %t96, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t98 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t98, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t100 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  store i64 %t102, ptr %l8, !tbaa !24
  br label %bb26
bb26:
  %t104 = load i64, ptr %l7, !tbaa !24
  %t105 = load i64, ptr %l8, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb27, label %bb28
bb27:
  br label %bb36
bb28:
  br label %bb29
bb29:
  %t112 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t112, ptr %l67, !tbaa !27
  %t113 = load i64, ptr %l7, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr ptr, ptr %t116, i64 %t113
  %t118 = load ptr, ptr %t117, !tbaa !39
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  store ptr %t122, ptr %l71, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load ptr, ptr %l1, !tbaa !29
  %t125 = load ptr, ptr %l2, !tbaa !29
  %t132 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t123, ptr %t124, ptr %t125, ptr %t118)
  store i32 %t132, ptr %l77
  br label %bb30
bb30:
  %t133 = load i32, ptr %l5, !tbaa !23
  %t134 = load ptr, ptr %l71, !tbaa !29
  %t135 = load i32, ptr %l77, !tbaa !23
  %t137 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t134, i32 %t135, i32 %t133)
  store i1 %t137, ptr %l79
  br label %bb31
bb31:
  %t138 = load i1, ptr %l79, !tbaa !21
  %t139 = xor i1 %t138, true
  br i1 %t139, label %bb32, label %bb33
bb32:
  %t141 = load i32, ptr %l3, !tbaa !23
  store i32 %t141, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t143 = load i64, ptr %l7, !tbaa !24
  %t145 = add i64 %t143, 1
  store i64 %t145, ptr %l7, !tbaa !24
  br label %bb26
bb36:
  %t147 = load i32, ptr %l5, !tbaa !23
  store i32 %t147, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eliteralMade(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l8 = alloca i1
  %l12 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l25 = alloca i32
  %l27 = alloca i32
  %l29 = alloca ptr
  %l32 = alloca i32
  %l35 = alloca i32
  %l36 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l3, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l3, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l12
  br label %bb3
bb3:
  %t14 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t16 = trunc i64 19 to i32
  %t17 = icmp eq i32 %t14, %t16
  %t19 = xor i1 %t17, true
  store i1 %t19, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l8, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t22 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t22, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  store ptr %t26, ptr %l18, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  store ptr %a1, ptr %l20, !tbaa !29
  store ptr %a2, ptr %l21, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l3, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l25
  br label %bb8
bb8:
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = load ptr, ptr %l19, !tbaa !29
  %t39 = load ptr, ptr %l20, !tbaa !29
  %t40 = load ptr, ptr %l21, !tbaa !29
  %t41 = load i32, ptr %l25, !tbaa !23
  %t43 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eitemsElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t38, ptr %t39, ptr %t40, i32 %t41, { i64, ptr } %t37)
  store i32 %t43, ptr %l27
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  store ptr %t46, ptr %l29, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t49, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i32 %t51, ptr %l32
  br label %bb10
bb10:
  %t52 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t55 = load ptr, ptr %l29, !tbaa !29
  %t56 = load i32, ptr %l32, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t55, i32 %t56, i64 %t54)
  store i32 %t58, ptr %l35
  br label %bb11
bb11:
  %t59 = load ptr, ptr %l18, !tbaa !29
  %t60 = load i32, ptr %l27, !tbaa !23
  %t61 = load i32, ptr %l35, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t59, i32 %t60, i32 %t61)
  store i32 %t62, ptr %l36
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load i32, ptr %l36, !tbaa !23
  store i32 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeetTyped(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l10 = alloca i1
  %l15 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i32, ptr %l1, !tbaa !23
  store i32 %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  %t11 = load i32, ptr %l2, !tbaa !23
  %t15 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %t9, i32 %t10, i32 %t11)
  store i1 %t15, ptr %l10
  br label %bb4
bb4:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t17 = load i32, ptr %l2, !tbaa !23
  store i32 %t17, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l2, !tbaa !23
  %t21 = load i32, ptr %l1, !tbaa !23
  %t25 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %t19, i32 %t20, i32 %t21)
  store i1 %t25, ptr %l15
  br label %bb8
bb8:
  %t26 = load i1, ptr %l15, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t27 = load i32, ptr %l1, !tbaa !23
  store i32 %t27, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  store i32 -1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeetsBuilder(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/generic:Context"
  %l5 = alloca i32
  %l6 = alloca i64
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
  %l21 = alloca %"compiler/generic:Context"
  %l22 = alloca ptr
  %l27 = alloca i32
  %l29 = alloca i64
  %l31 = alloca i32
  %l35 = alloca i1
  %l39 = alloca i32
  %l47 = alloca i64
  %l51 = alloca ptr
  %l57 = alloca i32
  %l59 = alloca i64
  %l61 = alloca i32
  %l65 = alloca i32
  %l71 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l78 = alloca ptr
  %l82 = alloca i32
  %l83 = alloca { i64, ptr }
  %l95 = alloca i64
  %l98 = alloca i64
  %l117 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l123 = alloca i1
  %l131 = alloca i32
  %l135 = alloca i32
  %l140 = alloca i1
  %l141 = alloca i1
  %l145 = alloca i1
  %l149 = alloca i1
  %l150 = alloca ptr
  %l154 = alloca i32
  %l158 = alloca i32
  %l159 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t3 = alloca %"compiler/generic:Context", align 8
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
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t3, ptr %v0, ptr %s0, ptr %t1, i32 %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %t3, i64 160, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l21, i64 160, i1 false)
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l22, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = getelementptr %"compiler/ast:Func", ptr %t8, i32 0, i32 9
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t15 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v1, ptr %t7, ptr %l4, ptr %t11)
  store i32 %t15, ptr %l27
  br label %bb2
bb2:
  %t16 = load i32, ptr %l1, !tbaa !23
  %t18 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t16)
  store i64 %t18, ptr %l29
  br label %bb3
bb3:
  %t19 = load i32, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l22, !tbaa !29
  %t21 = load i32, ptr %l27, !tbaa !23
  %t22 = load i64, ptr %l29, !tbaa !24
  %t24 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t20, i32 %t21, i64 %t22, i32 %t19)
  store i32 %t24, ptr %l31
  br label %bb4
bb4:
  %t25 = load i32, ptr %l31, !tbaa !23
  store i32 %t25, ptr %l5, !tbaa !23
  %t26 = load i32, ptr %l5, !tbaa !23
  %t27 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t30 = icmp eq i32 %t26, %t27
  br i1 %t30, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb8
bb6:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l5, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l39
  br label %bb7
bb7:
  %t39 = load i32, ptr %l39, !range !{i32 0, i32 33}
  %t41 = trunc i64 25 to i32
  %t42 = icmp eq i32 %t39, %t41
  store i1 %t42, ptr %l35, !tbaa !21
  br label %bb8
bb8:
  %t44 = load i1, ptr %l35, !tbaa !21
  br i1 %t44, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l5, !tbaa !23
  %t48 = load ptr, ptr %l3, !tbaa !29
  %t50 = getelementptr %"compiler/ast:Func", ptr %t48, i32 0, i32 10
  %t51 = load i32, ptr %t50, !tbaa !23
  %t55 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %t46, i32 %t47, i32 %t51, i1 false)
  store i64 %t55, ptr %l47
  br label %bb12
bb12:
  %t56 = load i64, ptr %l47, !tbaa !24
  store i64 %t56, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l6, !tbaa !24
  %t59 = icmp slt i64 %t57, 0
  br i1 %t59, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l51, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t66 = getelementptr %"compiler/ast:Func", ptr %t64, i32 0, i32 3
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t68 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t73 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %s0, ptr %v1, ptr %t63, ptr %l4, ptr %t67, i32 %t68, i32 0)
  store i32 %t73, ptr %l57
  br label %bb16
bb16:
  %t74 = load i32, ptr %l1, !tbaa !23
  %t76 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t74)
  store i64 %t76, ptr %l59
  br label %bb17
bb17:
  %t77 = load i32, ptr %l2, !tbaa !23
  %t78 = load ptr, ptr %l51, !tbaa !29
  %t79 = load i32, ptr %l57, !tbaa !23
  %t80 = load i64, ptr %l59, !tbaa !24
  %t82 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t78, i32 %t79, i64 %t80, i32 %t77)
  store i32 %t82, ptr %l61
  br label %bb18
bb18:
  %t83 = load i32, ptr %l61, !tbaa !23
  store i32 %t83, ptr %l7, !tbaa !23
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i64, ptr %l6, !tbaa !24
  %t86 = load i32, ptr %l5, !tbaa !23
  %t90 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %t84, i64 %t85, i32 %t86)
  store i32 %t90, ptr %l65
  br label %bb19
bb19:
  %t91 = load i32, ptr %l65, !tbaa !23
  store i32 %t91, ptr %l8, !tbaa !23
  %t92 = load i32, ptr %l8, !tbaa !23
  %t93 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t96 = icmp eq i32 %t92, %t93
  br i1 %t96, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  store ptr %t101, ptr %l71, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/generic:Program", ptr %t102, i32 0, i32 2
  %t105 = load i32, ptr %l8, !tbaa !23
  %t108 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t104, i32 %t105)
  store i32 %t108, ptr %l75
  br label %bb23
bb23:
  %t109 = load ptr, ptr %l71, !tbaa !29
  %t110 = load i32, ptr %l75, !tbaa !23
  %t111 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t109, i32 %t110)
  store { i64, ptr } %t111, ptr %l76
  br label %bb24
bb24:
  %t112 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t112, ptr %l9, !tbaa !27
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  store ptr %t115, ptr %l78, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  %t119 = load i32, ptr %l7, !tbaa !23
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t118, i32 %t119)
  store i32 %t122, ptr %l82
  br label %bb25
bb25:
  %t123 = load ptr, ptr %l78, !tbaa !29
  %t124 = load i32, ptr %l82, !tbaa !23
  %t125 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t123, i32 %t124)
  store { i64, ptr } %t125, ptr %l83
  br label %bb26
bb26:
  %t126 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t126, ptr %l10, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t127, 0
  %t130 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t135 = icmp ne i64 %t129, %t132
  br i1 %t135, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  store i64 0, ptr %l11, !tbaa !24
  %t138 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 0
  store i64 %t140, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t142 = load i64, ptr %l12, !tbaa !24
  %t143 = load i64, ptr %l11, !tbaa !24
  %t146 = icmp sgt i64 %t142, %t143
  br i1 %t146, label %bb30, label %bb31
bb30:
  %t148 = load i64, ptr %l13, !tbaa !24
  %t150 = icmp sgt i64 %t148, 0
  br i1 %t150, label %bb32, label %bb33
bb31:
  store i64 0, ptr %l95, !tbaa !24
  br label %bb35
bb32:
  %t152 = load i64, ptr %l12, !tbaa !24
  %t153 = load i64, ptr %l11, !tbaa !24
  %t156 = sub i64 %t152, %t153
  %t157 = load i64, ptr %l13, !tbaa !24
  %t160 = add i64 %t156, %t157
  %t162 = sub i64 %t160, 1
  %t163 = load i64, ptr %l13, !tbaa !24
  %t166 = sdiv i64 %t162, %t163
  store i64 %t166, ptr %l98, !tbaa !24
  br label %bb34
bb33:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb34
bb34:
  %t168 = load i64, ptr %l98, !tbaa !24
  store i64 %t168, ptr %l95, !tbaa !24
  br label %bb35
bb35:
  %t169 = load i64, ptr %l95, !tbaa !24
  store i64 %t169, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb36
bb36:
  %t170 = load i64, ptr %l15, !tbaa !24
  %t171 = load i64, ptr %l14, !tbaa !24
  %t174 = icmp slt i64 %t170, %t171
  %t176 = xor i1 %t174, true
  br i1 %t176, label %bb37, label %bb38
bb37:
  br label %bb45
bb38:
  br label %bb39
bb39:
  %t178 = load i64, ptr %l11, !tbaa !24
  %t179 = load i64, ptr %l15, !tbaa !24
  %t180 = load i64, ptr %l13, !tbaa !24
  %t183 = mul i64 %t179, %t180
  %t186 = add i64 %t178, %t183
  store i64 %t186, ptr %l16, !tbaa !24
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t189, ptr %l117, !tbaa !27
  %t190 = load i64, ptr %l16, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr i32, ptr %t193, i64 %t190
  %t195 = load i32, ptr %t194, !tbaa !33
  %t196 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t196, ptr %l120, !tbaa !27
  %t197 = load i64, ptr %l16, !tbaa !24
  %t199 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr i32, ptr %t200, i64 %t197
  %t202 = load i32, ptr %t201, !tbaa !33
  %t206 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esameUpToShape(ptr %v0, ptr %t188, i32 %t195, i32 %t202)
  store i1 %t206, ptr %l123
  br label %bb40
bb40:
  %t207 = load i1, ptr %l123, !tbaa !21
  %t208 = xor i1 %t207, true
  br i1 %t208, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t211 = load i64, ptr %l15, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l15, !tbaa !24
  br label %bb36
bb45:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 2
  %t218 = load i32, ptr %l8, !tbaa !23
  %t221 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t217, i32 %t218)
  store i32 %t221, ptr %l131
  br label %bb46
bb46:
  %t222 = load i32, ptr %l131, !tbaa !23
  store i32 %t222, ptr %l17, !tbaa !23
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/generic:Program", ptr %t223, i32 0, i32 2
  %t226 = load i32, ptr %l7, !tbaa !23
  %t229 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t225, i32 %t226)
  store i32 %t229, ptr %l135
  br label %bb47
bb47:
  %t230 = load i32, ptr %l135, !tbaa !23
  store i32 %t230, ptr %l18, !tbaa !23
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/generic:Program", ptr %t231, i32 0, i32 2
  %t234 = load i32, ptr %l17, !tbaa !23
  %t235 = load i32, ptr %l18, !tbaa !23
  %t239 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t233, i32 %t234, i32 %t235)
  store i1 %t239, ptr %l140
  br label %bb48
bb48:
  %t240 = load i1, ptr %l140, !tbaa !21
  br i1 %t240, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l141, !tbaa !21
  br label %bb54
bb50:
  %t241 = load i32, ptr %l17, !tbaa !23
  %t242 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t245 = icmp eq i32 %t241, %t242
  br i1 %t245, label %bb51, label %bb52
bb51:
  %t247 = load i32, ptr %l18, !tbaa !23
  %t248 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t251 = icmp eq i32 %t247, %t248
  store i1 %t251, ptr %l145, !tbaa !21
  br label %bb53
bb52:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb53
bb53:
  %t253 = load i1, ptr %l145, !tbaa !21
  store i1 %t253, ptr %l141, !tbaa !21
  br label %bb54
bb54:
  %t254 = load i1, ptr %l141, !tbaa !21
  br i1 %t254, label %bb55, label %bb56
bb55:
  %t255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t255, ptr %l150, !tbaa !29
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/generic:Program", ptr %t256, i32 0, i32 2
  %t259 = load i32, ptr %l8, !tbaa !23
  %t262 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t258, i32 %t259)
  store i32 %t262, ptr %l154
  br label %bb57
bb56:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb60
bb57:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/generic:Program", ptr %t263, i32 0, i32 2
  %t266 = load i32, ptr %l7, !tbaa !23
  %t269 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t265, i32 %t266)
  store i32 %t269, ptr %l158
  br label %bb58
bb58:
  %t270 = load ptr, ptr %l150, !tbaa !29
  %t271 = load i32, ptr %l154, !tbaa !23
  %t272 = load i32, ptr %l158, !tbaa !23
  %t273 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrsHeld(ptr %v0, ptr %t270, i32 %t271, i32 %t272)
  store i1 %t273, ptr %l159
  br label %bb59
bb59:
  %t274 = load i1, ptr %l159, !tbaa !21
  store i1 %t274, ptr %l149, !tbaa !21
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  %t275 = load i1, ptr %l149, !tbaa !21
  store i1 %t275, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l41 = alloca i64
  %l44 = alloca { i64, ptr }
  %l48 = alloca i32
  %l54 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l11, !tbaa !24
  %t4 = load i64, ptr %l11, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l11, !tbaa !24
  %t8 = icmp sle i64 %t7, 2305843009213693951
  br i1 %t8, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_1255cf76aedf9e7f_39892a6a8a5fd693)
  unreachable
bb3:
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = mul i64 %t10, 4
  %t12 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_1255cf76aedf9e7f_39892a6a8a5fd693)
  unreachable
bb5:
  %t26 = load i64, ptr %l6, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb10
bb7:
  %t30 = load i64, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l23, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l23, !tbaa !24
  store i64 %t46, ptr %l20, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l20, !tbaa !24
  store i64 %t47, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  store i64 %t66, ptr %l41, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t69, ptr %l44, !tbaa !27
  %t70 = load i64, ptr %l9, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr ptr, ptr %t73, i64 %t70
  %t75 = load ptr, ptr %t74, !tbaa !39
  %t77 = getelementptr %"compiler/ast:Param", ptr %t75, i32 0, i32 2
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t82 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t67, ptr %a1, ptr %t78)
  store i32 %t82, ptr %l48
  br label %bb15
bb15:
  %t83 = load i32, ptr %l48, !tbaa !23
  %t84 = load i64, ptr %l41, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i32, ptr %t86, i64 %t84
  store i32 %t83, ptr %t87, !tbaa !33
  br label %bb16
bb16:
  %t88 = load i64, ptr %l8, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l8, !tbaa !24
  br label %bb11
bb17:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 2
  %t95 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t98 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t94, { i64, ptr } %t95)
  store i32 %t98, ptr %l54
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t99 = load i32, ptr %l54, !tbaa !23
  store i32 %t99, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epayload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l30 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:CaseDecl", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i32 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/ast:CaseDecl", ptr %t11, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l10, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr ptr, ptr %t16, i64 0
  %t18 = load ptr, ptr %t17, !tbaa !39
  %t20 = getelementptr %"compiler/ast:Param", ptr %t18, i32 0, i32 2
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = icmp eq ptr %t21, null
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  store ptr %t27, ptr %l15, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 10
  %t33 = sext i32 %a3 to i64
  %t36 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__H9cb5d99387f926677a92c13412f9a8b2(ptr %v0, ptr %t30, i64 %t33)
  %t37 = extractvalue { i32, i32 } %t36, 1
  %t38 = extractvalue { i32, i32 } %t36, 0
  store i32 %t38, ptr %l22
  %t39 = icmp ne i32 %t38, 0
  br i1 %t39, label %bb7, label %ok.40, !prof !99
ok.40:
  store i32 %t37, ptr %l21
  br label %bb6
bb5:
  br label %bb12
bb6:
  %t41 = load i32, ptr %l21, !tbaa !23
  store i32 %t41, ptr %l16, !tbaa !23
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr %"compiler/ast:CaseDecl", ptr %t43, i32 0, i32 2
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t51 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunknowns(ptr %v0, ptr %t42, i64 %t48)
  store i32 %t51, ptr %l27
  br label %bb9
bb9:
  %t52 = load i32, ptr %l27, !tbaa !23
  store i32 %t52, ptr %l16, !tbaa !23
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l15, !tbaa !29
  %t54 = load i32, ptr %l16, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t55, ptr %l28
  br label %bb11
bb11:
  %t56 = load i32, ptr %l28, !tbaa !23
  store i32 %t56, ptr %rv
  br label %ret
bb12:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  store ptr %t59, ptr %l30, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t64 = getelementptr %"compiler/ast:CaseDecl", ptr %t62, i32 0, i32 2
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  %t69 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamTypes(ptr %v0, ptr %v1, ptr %v2, ptr %t60, ptr %a1, { i64, ptr } %t65)
  store i32 %t69, ptr %l35
  br label %bb13
bb13:
  %t70 = load ptr, ptr %l30, !tbaa !29
  %t71 = load i32, ptr %l35, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t72, ptr %l36
  br label %bb14
bb14:
  %t73 = load i32, ptr %l36, !tbaa !23
  store i32 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eperm(ptr %v0, ptr %a0, i32 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l6 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i32
  %l17 = alloca ptr
  %l21 = alloca i32
  %l25 = alloca i64
  %l28 = alloca i32
  %l32 = alloca ptr
  %l36 = alloca i64
  %l40 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a2, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  store i64 %t3, ptr %l6, !tbaa !24
  br label %bb3
bb2:
  %t5 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t7 = load i64, ptr %l6, !tbaa !24
  store i64 %t7, ptr %l3, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l12
  br label %bb4
bb4:
  %t15 = load i32, ptr %l12, !range !{i32 0, i32 33}
  store i32 %t15, ptr %l4
  %t16 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t18 = trunc i64 20 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb11
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  store ptr %t23, ptr %l17, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l21
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l1, !tbaa !23
  %t37 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t33, i32 %t34)
  store i64 %t37, ptr %l25
  br label %bb9
bb9:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l25, !tbaa !24
  %t41 = or i64 %t39, %t38
  %t42 = load ptr, ptr %l17, !tbaa !29
  %t43 = load i32, ptr %l21, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t42, i32 %t43, i64 %t41)
  store i32 %t45, ptr %l28
  br label %bb10
bb10:
  %t46 = load i32, ptr %l28, !tbaa !23
  store i32 %t46, ptr %l13, !tbaa !23
  br label %bb24
bb11:
  %t47 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t49 = trunc i64 25 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb19
bb14:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  store ptr %t54, ptr %l32, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l1, !tbaa !23
  %t61 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t57, i32 %t58)
  store i64 %t61, ptr %l36
  br label %bb15
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l1, !tbaa !23
  %t68 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t64, i32 %t65)
  store i64 %t68, ptr %l40
  br label %bb16
bb16:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %l1, !tbaa !23
  %t75 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eC(ptr %v0, ptr %t71, i32 %t72)
  store i64 %t75, ptr %l44
  br label %bb17
bb17:
  %t76 = load i64, ptr %l3, !tbaa !24
  %t77 = load i64, ptr %l44, !tbaa !24
  %t79 = or i64 %t77, %t76
  %t80 = load ptr, ptr %l32, !tbaa !29
  %t81 = load i64, ptr %l36, !tbaa !24
  %t82 = load i64, ptr %l40, !tbaa !24
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t80, i64 %t81, i64 %t82, i64 %t79)
  store i32 %t84, ptr %l47
  br label %bb18
bb18:
  %t85 = load i32, ptr %l47, !tbaa !23
  store i32 %t85, ptr %l13, !tbaa !23
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t86 = load i32, ptr %l1, !tbaa !23
  store i32 %t86, ptr %l13, !tbaa !23
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_d28ca411b3c69834_cefe3fe6ba6de938)
  unreachable
bb24:
  %t88 = load i32, ptr %l13, !tbaa !23
  store i32 %t88, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, %"compiler/diagmsg:Msg" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l10 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l11 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i32
  %l22 = alloca ptr
  %l28 = alloca { i64, [3 x i64] }
  %l30 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Context", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:Promise", ptr %t5, i32 0, i32 0
  %t8 = getelementptr %"compiler/source:Span", ptr %t7, i32 0, i32 0
  %t9 = load i32, ptr %t8, !tbaa !23
  %t11 = sext i32 %t9 to i64
  %t14 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t4, i64 %t11)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t14, ptr %l10
  br label %bb1
bb1:
  %t15 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l10
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t15, ptr %l4
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 26
  %t19 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  %t22 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %t18, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t19)
  %t23 = extractvalue { i32, i1 } %t22, 1
  %t24 = extractvalue { i32, i1 } %t22, 0
  store i32 %t24, ptr %l16
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb3, label %ok.26, !prof !99
ok.26:
  store i1 %t23, ptr %l15
  br label %bb2
bb2:
  %t27 = load i1, ptr %l15, !tbaa !21
  store i1 %t27, ptr %l11, !tbaa !21
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t28 = load i1, ptr %l11, !tbaa !21
  br i1 %t28, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 26
  %t32 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t31, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t32, i1 true)
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/load:Loader", ptr %t38, i32 0, i32 4
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l22, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Context", ptr %t43, i32 0, i32 0
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Promise", ptr %t47, i32 0, i32 0
  %t50 = load %"compiler/source:Span", ptr %t49
  %t54 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t42, i64 %t46, %"compiler/source:Span" %t50)
  store { i64, [3 x i64] } %t54, ptr %l28
  br label %bb10
bb10:
  %t56 = load ptr, ptr %l22, !tbaa !29
  %t57 = load { i64, [3 x i64] }, ptr %l28
  %t59 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v3, ptr %t56, { i64, [3 x i64] } %t57, %"compiler/diagmsg:Msg" %a3)
  store i64 %t59, ptr %l30
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca { i64, ptr }
  %l22 = alloca i64
  %l25 = alloca i64
  %l44 = alloca { i64, ptr }
  %l50 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l58 = alloca ptr
  %l61 = alloca { i64, ptr }
  %l62 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Promise", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l13, !tbaa !27
  %t7 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr i32, ptr %t8, i64 %a4
  %t10 = load i32, ptr %t9, !tbaa !33
  store i32 %t10, ptr %l5, !tbaa !23
  store i64 0, ptr %l6, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/ast:Sig", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t19 = load i64, ptr %l7, !tbaa !24
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb1, label %bb2
bb1:
  %t25 = load i64, ptr %l8, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb3:
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l8, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l8, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l25, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb5
bb5:
  %t45 = load i64, ptr %l25, !tbaa !24
  store i64 %t45, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t46 = load i64, ptr %l22, !tbaa !24
  store i64 %t46, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t47 = load i64, ptr %l10, !tbaa !24
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb8, label %bb9
bb8:
  br label %bb18
bb9:
  br label %bb10
bb10:
  %t55 = load i64, ptr %l6, !tbaa !24
  %t56 = load i64, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  store i64 %t63, ptr %l11, !tbaa !24
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t67 = getelementptr %"compiler/ast:Sig", ptr %t65, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l44, !tbaa !27
  %t69 = load i64, ptr %l11, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr ptr, ptr %t72, i64 %t69
  %t74 = load ptr, ptr %t73, !tbaa !39
  %t76 = getelementptr %"compiler/ast:Param", ptr %t74, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t78 = load i32, ptr %l5, !tbaa !23
  %t81 = icmp eq i32 %t77, %t78
  br i1 %t81, label %bb11, label %bb12
bb11:
  %t83 = load i32, ptr %l5, !tbaa !23
  %t85 = icmp ne i32 %t83, 0
  store i1 %t85, ptr %l50, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb13
bb13:
  %t87 = load i1, ptr %l50, !tbaa !21
  br i1 %t87, label %bb14, label %bb15
bb14:
  %t88 = load i64, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t88, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t90 = load i64, ptr %l10, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l10, !tbaa !24
  br label %bb7
bb18:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l56, !tbaa !29
  store ptr %a1, ptr %l57, !tbaa !29
  %t96 = load ptr, ptr %l3, !tbaa !29
  store ptr %t96, ptr %l58, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l5, !tbaa !23
  %t101 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t97, i32 %t98)
  store { i64, ptr } %t101, ptr %l61
  br label %bb19
bb19:
  %t102 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t103 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseNoParam(ptr %v0, ptr %s0, { i64, ptr } %t102)
  store %"compiler/diagmsg:Msg" %t103, ptr %l62
  br label %bb20
bb20:
  %t104 = load ptr, ptr %l56, !tbaa !29
  %t105 = load ptr, ptr %l57, !tbaa !29
  %t106 = load ptr, ptr %l58, !tbaa !29
  %t107 = load %"compiler/diagmsg:Msg", ptr %l62
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v3, ptr %s0, ptr %t104, ptr %t105, ptr %t106, %"compiler/diagmsg:Msg" %t107)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvExact(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l9 = alloca i1
  %l13 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvOf(ptr %v0, ptr %t1, i64 %a1)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp ne i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l13
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  %t20 = load i1, ptr %l13, !tbaa !21
  store i1 %t20, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l9, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunaryType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca i1
  %l15 = alloca i32
  %l19 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t3 = trunc i64 69 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t8 = trunc i64 104 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l7, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t21 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t12, ptr %a1, ptr %a2, ptr %a4)
  store i32 %t21, ptr %l15
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t22 = load i32, ptr %l15, !tbaa !23
  store i32 %t22, ptr %rv
  br label %ret
bb7:
  %t23 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t25 = trunc i64 105 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etextType(ptr %v0, ptr %t28)
  store i32 %t30, ptr %l19
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l19, !tbaa !23
  store i32 %t31, ptr %rv
  br label %ret
bb11:
  %t32 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t34 = trunc i64 48 to i32
  %t35 = icmp eq i32 %t32, %t34
  br i1 %t35, label %bb12, label %bb13
bb12:
  %t37 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t37, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t39 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t39, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedNamed(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i32
  %l8 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l18 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l32 = alloca i32
  %l35 = alloca ptr
  %l37 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca { i64, ptr }
  %l46 = alloca i32
  %l49 = alloca ptr
  %l53 = alloca i32
  %l58 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v1, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i1, ptr %l8, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l12
  br label %bb4
bb4:
  %t12 = load i1, ptr %l12, !tbaa !21
  %t13 = xor i1 %t12, true
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l9, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t16, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v1, ptr %t18, i32 %t19, i1 true)
  br label %bb9
bb9:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  store ptr %t24, ptr %l18, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l22
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l18, !tbaa !29
  %t33 = load i32, ptr %l22, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t34, ptr %l23
  br label %bb11
bb11:
  %t35 = load i32, ptr %l23, !range !{i32 0, i32 6}
  store i32 %t35, ptr %l5
  %t36 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t38 = trunc i64 0 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t44 = load i64, ptr %l3, !tbaa !24
  %t45 = load i1, ptr %l4, !tbaa !21
  %t51 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedFields(ptr %v0, ptr %v1, ptr %t41, i32 %t42, ptr %t43, i64 %t44, i1 %t45)
  store i32 %t51, ptr %l32
  br label %bb15
bb15:
  %t52 = load i32, ptr %l32, !tbaa !23
  store i32 %t52, ptr %l24, !tbaa !23
  br label %bb34
bb16:
  %t53 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t55 = trunc i64 1 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb23
bb19:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l35, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  store ptr %t61, ptr %l37, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l1, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l41
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l37, !tbaa !29
  %t70 = load i32, ptr %l41, !tbaa !23
  %t71 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t69, i32 %t70)
  store { i64, ptr } %t71, ptr %l42
  br label %bb21
bb21:
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t73 = load i64, ptr %l3, !tbaa !24
  %t74 = load i1, ptr %l4, !tbaa !21
  %t75 = load ptr, ptr %l35, !tbaa !29
  %t76 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t80 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedIn(ptr %v0, ptr %v0, ptr %v1, ptr %t75, { i64, ptr } %t76, ptr %t72, i64 %t73, i1 %t74)
  store i32 %t80, ptr %l46
  br label %bb22
bb22:
  %t81 = load i32, ptr %l46, !tbaa !23
  store i32 %t81, ptr %l24, !tbaa !23
  br label %bb34
bb23:
  %t82 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t84 = trunc i64 4 to i32
  %t85 = icmp eq i32 %t82, %t84
  br i1 %t85, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l49, !tbaa !29
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l1, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l53
  br label %bb27
bb27:
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t96 = load i64, ptr %l3, !tbaa !24
  %t98 = add i64 %t96, 1
  %t99 = load i1, ptr %l4, !tbaa !21
  %t100 = load ptr, ptr %l49, !tbaa !29
  %t101 = load i32, ptr %l53, !tbaa !23
  %t105 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %t100, i32 %t101, ptr %t95, i64 %t98, i1 %t99)
  store i32 %t105, ptr %l58
  br label %bb28
bb28:
  %t106 = load i32, ptr %l58, !tbaa !23
  store i32 %t106, ptr %l24, !tbaa !23
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t107 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t107, ptr %l24, !tbaa !23
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_c2b0e0f9c58e7130_5beafbe0f1fd477c)
  unreachable
bb34:
  %t109 = load i32, ptr %l24, !tbaa !23
  store i32 %t109, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca { i64, ptr }
  %l55 = alloca i32
  %l61 = alloca i32
  %l67 = alloca i32
  %l71 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l78 = alloca i64
  %l87 = alloca i64
  %l90 = alloca i64
  %l108 = alloca i64
  %l110 = alloca { i64, ptr }
  %l115 = alloca i32
  %l118 = alloca ptr
  %l122 = alloca i32
  %l126 = alloca i32
  %l127 = alloca i32
  %l131 = alloca ptr
  %l132 = alloca ptr
  %l136 = alloca i32
  %l139 = alloca i32
  %l140 = alloca ptr
  %l144 = alloca i32
  %l147 = alloca i32
  %l148 = alloca i32
  %l152 = alloca ptr
  %l153 = alloca ptr
  %l157 = alloca i32
  %l160 = alloca i32
  %l164 = alloca i64
  %l165 = alloca i32
  %l169 = alloca ptr
  %l170 = alloca ptr
  %l174 = alloca i32
  %l177 = alloca i32
  %l178 = alloca i32
  %s5 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l5, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l27, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l27, !tbaa !24
  store i64 %t31, ptr %l24, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l24, !tbaa !24
  store i64 %t32, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l9, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t51, ptr %l45, !tbaa !27
  %t52 = load i64, ptr %l9, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i32, ptr %t55, i64 %t52
  %t57 = load i32, ptr %t56, !tbaa !33
  %t58 = load i32, ptr %l1, !tbaa !23
  %t61 = icmp eq i32 %t57, %t58
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load i64, ptr %l2, !tbaa !24
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t65, i64 %t66, i64 %t67, i64 %t68)
  store i32 %t73, ptr %l55
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t74 = load i32, ptr %l55, !tbaa !23
  store i32 %t74, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l8, !tbaa !24
  br label %bb7
bb16:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 2
  %t82 = load i32, ptr %l1, !tbaa !23
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t81, i32 %t82)
  store i32 %t85, ptr %l61
  br label %bb17
bb17:
  %t86 = load i32, ptr %l61, !range !{i32 0, i32 33}
  store i32 %t86, ptr %l10
  %t87 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t89 = trunc i64 18 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb47
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 2
  %t95 = load i32, ptr %l1, !tbaa !23
  %t98 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t94, i32 %t95)
  store i32 %t98, ptr %l67
  br label %bb21
bb21:
  %t99 = load i32, ptr %l67, !tbaa !23
  %t100 = icmp eq i32 %t99, 0
  br i1 %t100, label %bb22, label %bb23
bb22:
  %t102 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s5)
  store i32 %t102, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  store ptr %t106, ptr %l71, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  %t110 = load i32, ptr %l1, !tbaa !23
  %t113 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t109, i32 %t110)
  store i32 %t113, ptr %l75
  br label %bb25
bb25:
  %t114 = load ptr, ptr %l71, !tbaa !29
  %t115 = load i32, ptr %l75, !tbaa !23
  %t116 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t114, i32 %t115)
  store { i64, ptr } %t116, ptr %l76
  br label %bb26
bb26:
  %t117 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t117, ptr %l11, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t118, 0
  store i64 %t120, ptr %l78, !tbaa !24
  %t121 = load i64, ptr %l78, !tbaa !24
  %t122 = icmp sge i64 %t121, 0
  br i1 %t122, label %bb27, label %bb28
bb27:
  %t124 = load i64, ptr %l78, !tbaa !24
  %t125 = icmp sle i64 %t124, 2305843009213693951
  br i1 %t125, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_dbc69524847f1d49_8831f326edbf0acd)
  unreachable
bb29:
  %t127 = load i64, ptr %l78, !tbaa !24
  %t128 = mul i64 %t127, 4
  %t129 = call ptr @__olang_scope_alloc_zeroed(ptr %s5, i64 %t128)
  %t130 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  store { i64, ptr } %t131, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t133 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 0
  store i64 %t135, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t137 = load i64, ptr %l14, !tbaa !24
  %t138 = load i64, ptr %l13, !tbaa !24
  %t141 = icmp sgt i64 %t137, %t138
  br i1 %t141, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_dbc69524847f1d49_8831f326edbf0acd)
  unreachable
bb31:
  %t143 = load i64, ptr %l15, !tbaa !24
  %t145 = icmp sgt i64 %t143, 0
  br i1 %t145, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb36
bb33:
  %t147 = load i64, ptr %l14, !tbaa !24
  %t148 = load i64, ptr %l13, !tbaa !24
  %t151 = sub i64 %t147, %t148
  %t152 = load i64, ptr %l15, !tbaa !24
  %t155 = add i64 %t151, %t152
  %t157 = sub i64 %t155, 1
  %t158 = load i64, ptr %l15, !tbaa !24
  %t161 = sdiv i64 %t157, %t158
  store i64 %t161, ptr %l90, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb35
bb35:
  %t163 = load i64, ptr %l90, !tbaa !24
  store i64 %t163, ptr %l87, !tbaa !24
  br label %bb36
bb36:
  %t164 = load i64, ptr %l87, !tbaa !24
  store i64 %t164, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb37
bb37:
  %t165 = load i64, ptr %l17, !tbaa !24
  %t166 = load i64, ptr %l16, !tbaa !24
  %t169 = icmp slt i64 %t165, %t166
  %t171 = xor i1 %t169, true
  br i1 %t171, label %bb38, label %bb39
bb38:
  br label %bb43
bb39:
  br label %bb40
bb40:
  %t173 = load i64, ptr %l13, !tbaa !24
  %t174 = load i64, ptr %l17, !tbaa !24
  %t175 = load i64, ptr %l15, !tbaa !24
  %t178 = mul i64 %t174, %t175
  %t181 = add i64 %t173, %t178
  store i64 %t181, ptr %l18, !tbaa !24
  %t183 = load i64, ptr %l18, !tbaa !24
  store i64 %t183, ptr %l108, !tbaa !24
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t185, ptr %l110, !tbaa !27
  %t186 = load i64, ptr %l18, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i32, ptr %t189, i64 %t186
  %t191 = load i32, ptr %t190, !tbaa !33
  %t192 = load i64, ptr %l2, !tbaa !24
  %t193 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t198 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %t184, i32 %t191, i64 %t192, { i64, ptr } %t193)
  store i32 %t198, ptr %l115
  br label %bb41
bb41:
  %t199 = load i32, ptr %l115, !tbaa !23
  %t200 = load i64, ptr %l108, !tbaa !24
  %t201 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr i32, ptr %t202, i64 %t200
  store i32 %t199, ptr %t203, !tbaa !33
  br label %bb42
bb42:
  %t204 = load i64, ptr %l17, !tbaa !24
  %t206 = add i64 %t204, 1
  store i64 %t206, ptr %l17, !tbaa !24
  br label %bb37
bb43:
  %t208 = load ptr, ptr %l0, !tbaa !29
  store ptr %t208, ptr %l118, !tbaa !29
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/generic:Program", ptr %t209, i32 0, i32 2
  %t212 = load i32, ptr %l1, !tbaa !23
  %t215 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t211, i32 %t212)
  store i32 %t215, ptr %l122
  br label %bb44
bb44:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/generic:Program", ptr %t216, i32 0, i32 2
  %t219 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t222 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s5, ptr %t218, { i64, ptr } %t219)
  store i32 %t222, ptr %l126
  br label %bb45
bb45:
  %t223 = load ptr, ptr %l118, !tbaa !29
  %t224 = load i32, ptr %l122, !tbaa !23
  %t225 = load i32, ptr %l126, !tbaa !23
  %t226 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t223, i32 %t224, i32 %t225)
  store i32 %t226, ptr %l127
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s5)
  %t227 = load i32, ptr %l127, !tbaa !23
  store i32 %t227, ptr %rv
  br label %ret
bb47:
  %t228 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t230 = trunc i64 19 to i32
  %t231 = icmp eq i32 %t228, %t230
  br i1 %t231, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb56
bb50:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/generic:Program", ptr %t233, i32 0, i32 2
  store ptr %t235, ptr %l131, !tbaa !29
  %t236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t236, ptr %l132, !tbaa !29
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 2
  %t240 = load i32, ptr %l1, !tbaa !23
  %t243 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t239, i32 %t240)
  store i32 %t243, ptr %l136
  br label %bb51
bb51:
  %t244 = load i64, ptr %l2, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t246 = load ptr, ptr %l132, !tbaa !29
  %t247 = load i32, ptr %l136, !tbaa !23
  %t250 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %t246, i32 %t247, i64 %t244, { i64, ptr } %t245)
  store i32 %t250, ptr %l139
  br label %bb52
bb52:
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l140, !tbaa !29
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/generic:Program", ptr %t252, i32 0, i32 2
  %t255 = load i32, ptr %l1, !tbaa !23
  %t258 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t254, i32 %t255)
  store i32 %t258, ptr %l144
  br label %bb53
bb53:
  %t259 = load i64, ptr %l2, !tbaa !24
  %t260 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t261 = load ptr, ptr %l140, !tbaa !29
  %t262 = load i32, ptr %l144, !tbaa !23
  %t265 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %t261, i32 %t262, i64 %t259, { i64, ptr } %t260)
  store i32 %t265, ptr %l147
  br label %bb54
bb54:
  %t266 = load ptr, ptr %l131, !tbaa !29
  %t267 = load i32, ptr %l139, !tbaa !23
  %t268 = load i32, ptr %l147, !tbaa !23
  %t269 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t266, i32 %t267, i32 %t268)
  store i32 %t269, ptr %l148
  br label %bb55
bb55:
  %t270 = load i32, ptr %l148, !tbaa !23
  store i32 %t270, ptr %rv
  br label %ret
bb56:
  %t271 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t273 = trunc i64 20 to i32
  %t274 = icmp eq i32 %t271, %t273
  br i1 %t274, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb64
bb59:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/generic:Program", ptr %t276, i32 0, i32 2
  store ptr %t278, ptr %l152, !tbaa !29
  %t279 = load ptr, ptr %l0, !tbaa !29
  store ptr %t279, ptr %l153, !tbaa !29
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/generic:Program", ptr %t280, i32 0, i32 2
  %t283 = load i32, ptr %l1, !tbaa !23
  %t286 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t282, i32 %t283)
  store i32 %t286, ptr %l157
  br label %bb60
bb60:
  %t287 = load i64, ptr %l2, !tbaa !24
  %t288 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t289 = load ptr, ptr %l153, !tbaa !29
  %t290 = load i32, ptr %l157, !tbaa !23
  %t293 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %t289, i32 %t290, i64 %t287, { i64, ptr } %t288)
  store i32 %t293, ptr %l160
  br label %bb61
bb61:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/generic:Program", ptr %t294, i32 0, i32 2
  %t297 = load i32, ptr %l1, !tbaa !23
  %t300 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t296, i32 %t297)
  store i64 %t300, ptr %l164
  br label %bb62
bb62:
  %t301 = load ptr, ptr %l152, !tbaa !29
  %t302 = load i32, ptr %l160, !tbaa !23
  %t303 = load i64, ptr %l164, !tbaa !24
  %t304 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t301, i32 %t302, i64 %t303)
  store i32 %t304, ptr %l165
  br label %bb63
bb63:
  %t305 = load i32, ptr %l165, !tbaa !23
  store i32 %t305, ptr %rv
  br label %ret
bb64:
  %t306 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t308 = trunc i64 29 to i32
  %t309 = icmp eq i32 %t306, %t308
  br i1 %t309, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb71
bb67:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/generic:Program", ptr %t311, i32 0, i32 2
  store ptr %t313, ptr %l169, !tbaa !29
  %t314 = load ptr, ptr %l0, !tbaa !29
  store ptr %t314, ptr %l170, !tbaa !29
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/generic:Program", ptr %t315, i32 0, i32 2
  %t318 = load i32, ptr %l1, !tbaa !23
  %t321 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t317, i32 %t318)
  store i32 %t321, ptr %l174
  br label %bb68
bb68:
  %t322 = load i64, ptr %l2, !tbaa !24
  %t323 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t324 = load ptr, ptr %l170, !tbaa !29
  %t325 = load i32, ptr %l174, !tbaa !23
  %t328 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %t324, i32 %t325, i64 %t322, { i64, ptr } %t323)
  store i32 %t328, ptr %l177
  br label %bb69
bb69:
  %t329 = load ptr, ptr %l169, !tbaa !29
  %t330 = load i32, ptr %l177, !tbaa !23
  %t331 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %t329, i32 %t330)
  store i32 %t331, ptr %l178
  br label %bb70
bb70:
  %t332 = load i32, ptr %l178, !tbaa !23
  store i32 %t332, ptr %rv
  br label %ret
bb71:
  br i1 true, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb75
bb74:
  %t333 = load i32, ptr %l1, !tbaa !23
  store i32 %t333, ptr %rv
  br label %ret
bb75:
  call void @__olang_check_failed(ptr @olang_loc_737134d81da26253_60c38b193f08901f)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eviewGeneratorOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l17 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l26 = alloca i1
  %l29 = alloca { i64, ptr }
  %l31 = alloca i32
  %l37 = alloca i64
  %l43 = alloca { i64, ptr }
  %l45 = alloca i32
  %l51 = alloca i64
  %l54 = alloca i64
  %l73 = alloca { i64, ptr }
  %l78 = alloca ptr
  %l79 = alloca i32
  %l83 = alloca i32
  %l84 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %s0, ptr %s0, ptr %t1, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d16, i32 0, i32 1) }, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d17, i32 0, i32 1) })
  %t4 = extractvalue { i32, i32 } %t3, 1
  %t5 = extractvalue { i32, i32 } %t3, 0
  store i32 %t5, ptr %l14
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i32 %t4, ptr %l13
  br label %bb1
bb1:
  %t8 = load i32, ptr %l13, !tbaa !23
  store i32 %t8, ptr %l11, !tbaa !23
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t9 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t9, ptr %rv
  br label %ret
bb4:
  %t11 = load i32, ptr %l11, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  store ptr %t14, ptr %l17, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t17, i32 %a1)
  store i32 %t21, ptr %l21
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l17, !tbaa !29
  %t23 = load i32, ptr %l21, !tbaa !23
  %t24 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t22, i32 %t23)
  store { i64, ptr } %t24, ptr %l22
  br label %bb6
bb6:
  %t25 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t25, ptr %l3, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t30 = icmp eq i64 %t28, 0
  br i1 %t30, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb10
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t35, ptr %l29, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i32, ptr %t37, i64 0
  %t39 = load i32, ptr %t38, !tbaa !33
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t34, i32 %t39)
  store i32 %t42, ptr %l31
  br label %bb9
bb9:
  %t43 = load i32, ptr %l31, !range !{i32 0, i32 33}
  %t45 = trunc i64 20 to i32
  %t46 = icmp eq i32 %t43, %t45
  %t48 = xor i1 %t46, true
  store i1 %t48, ptr %l26, !tbaa !21
  br label %bb10
bb10:
  %t50 = load i1, ptr %l26, !tbaa !21
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t51, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  store i64 %t55, ptr %l37, !tbaa !24
  %t56 = load i64, ptr %l37, !tbaa !24
  %t57 = icmp sge i64 %t56, 0
  br i1 %t57, label %bb14, label %bb15
bb14:
  %t59 = load i64, ptr %l37, !tbaa !24
  %t60 = icmp sle i64 %t59, 2305843009213693951
  br i1 %t60, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_6b949e9fdbc9587c_5a8bb2436952ea48)
  unreachable
bb16:
  %t62 = load i64, ptr %l37, !tbaa !24
  %t63 = mul i64 %t62, 4
  %t64 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t63)
  %t65 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  store { i64, ptr } %t66, ptr %l4, !tbaa !27
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t71, ptr %l43, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i32, ptr %t73, i64 0
  %t75 = load i32, ptr %t74, !tbaa !33
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t70, i32 %t75)
  store i32 %t78, ptr %l45
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_6b949e9fdbc9587c_5a8bb2436952ea48)
  unreachable
bb18:
  %t79 = load i32, ptr %l45, !tbaa !23
  %t80 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i32, ptr %t81, i64 0
  store i32 %t79, ptr %t82, !tbaa !33
  store i64 1, ptr %l5, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 0
  store i64 %t85, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t88 = load i64, ptr %l5, !tbaa !24
  %t91 = icmp sgt i64 %t87, %t88
  br i1 %t91, label %bb19, label %bb20
bb19:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = icmp sgt i64 %t93, 0
  br i1 %t95, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb24
bb21:
  %t97 = load i64, ptr %l6, !tbaa !24
  %t98 = load i64, ptr %l5, !tbaa !24
  %t101 = sub i64 %t97, %t98
  %t102 = load i64, ptr %l7, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t107 = sub i64 %t105, 1
  %t108 = load i64, ptr %l7, !tbaa !24
  %t111 = sdiv i64 %t107, %t108
  store i64 %t111, ptr %l54, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb23
bb23:
  %t113 = load i64, ptr %l54, !tbaa !24
  store i64 %t113, ptr %l51, !tbaa !24
  br label %bb24
bb24:
  %t114 = load i64, ptr %l51, !tbaa !24
  store i64 %t114, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb25
bb25:
  %t115 = load i64, ptr %l9, !tbaa !24
  %t116 = load i64, ptr %l8, !tbaa !24
  %t119 = icmp slt i64 %t115, %t116
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t123 = load i64, ptr %l5, !tbaa !24
  %t124 = load i64, ptr %l9, !tbaa !24
  %t125 = load i64, ptr %l7, !tbaa !24
  %t128 = mul i64 %t124, %t125
  %t131 = add i64 %t123, %t128
  store i64 %t131, ptr %l10, !tbaa !24
  %t133 = load i64, ptr %l10, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t134, ptr %l73, !tbaa !27
  %t135 = load i64, ptr %l10, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i32, ptr %t138, i64 %t135
  %t140 = load i32, ptr %t139, !tbaa !33
  %t143 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr i32, ptr %t144, i64 %t133
  store i32 %t140, ptr %t145, !tbaa !33
  br label %bb29
bb29:
  %t146 = load i64, ptr %l9, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l9, !tbaa !24
  br label %bb25
bb30:
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l78, !tbaa !29
  %t151 = load i32, ptr %l2, !tbaa !23
  store i32 %t151, ptr %l79, !tbaa !23
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 2
  %t155 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t158 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t154, { i64, ptr } %t155)
  store i32 %t158, ptr %l83
  br label %bb31
bb31:
  %t159 = load ptr, ptr %l78, !tbaa !29
  %t160 = load i32, ptr %l79, !tbaa !23
  %t161 = load i32, ptr %l83, !tbaa !23
  %t162 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t159, i32 %t160, i32 %t161)
  store i32 %t162, ptr %l84
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t163 = load i32, ptr %l84, !tbaa !23
  store i32 %t163, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewithLengths(ptr %v0, ptr %a0, i32 %a1, i1 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i1
  %l11 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l20 = alloca i32
  %l23 = alloca i32
  %l27 = alloca i64
  %l28 = alloca i32
  %l32 = alloca i1
  %l36 = alloca i32
  %l38 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i64
  %l44 = alloca i64
  %l46 = alloca i64
  %l48 = alloca i32
  %l50 = alloca ptr
  %l51 = alloca i32
  %l53 = alloca i32
  %l59 = alloca i32
  %l63 = alloca i32
  %l64 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
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
  store i32 %t8, ptr %l5
  %t9 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t11 = trunc i64 20 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb9
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  store ptr %t16, ptr %l15, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l16, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l20
  br label %bb5
bb5:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = load i32, ptr %l20, !tbaa !23
  %t31 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewithLengths(ptr %v0, ptr %t27, i32 %t28, i1 false, i64 %t25, i64 %t26)
  store i32 %t31, ptr %l23
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l1, !tbaa !23
  %t38 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t34, i32 %t35)
  store i64 %t38, ptr %l27
  br label %bb7
bb7:
  %t39 = load ptr, ptr %l15, !tbaa !29
  %t40 = load i32, ptr %l23, !tbaa !23
  %t41 = load i64, ptr %l27, !tbaa !24
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t39, i32 %t40, i64 %t41)
  store i32 %t42, ptr %l28
  br label %bb8
bb8:
  %t43 = load i32, ptr %l28, !tbaa !23
  store i32 %t43, ptr %rv
  br label %ret
bb9:
  %t44 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t46 = trunc i64 19 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb28
bb12:
  br i1 %a2, label %bb13, label %bb14
bb13:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  %t54 = load i32, ptr %l1, !tbaa !23
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t57, ptr %l36
  br label %bb15
bb14:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb16
bb15:
  %t58 = load i32, ptr %l36, !tbaa !23
  %t59 = icmp eq i32 %t58, 0
  store i1 %t59, ptr %l32, !tbaa !21
  br label %bb16
bb16:
  %t61 = load i1, ptr %l32, !tbaa !21
  store i1 %t61, ptr %l6, !tbaa !21
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l38, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load i32, ptr %l1, !tbaa !23
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t69, ptr %l42
  br label %bb17
bb17:
  %t70 = load i64, ptr %l3, !tbaa !24
  store i64 %t70, ptr %l43, !tbaa !24
  %t71 = load i64, ptr %l4, !tbaa !24
  store i64 %t71, ptr %l44, !tbaa !24
  %t72 = load i1, ptr %l6, !tbaa !21
  br i1 %t72, label %bb18, label %bb19
bb18:
  store i64 1, ptr %l46, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb20
bb20:
  %t74 = load i64, ptr %l44, !tbaa !24
  %t75 = load i64, ptr %l46, !tbaa !24
  %t76 = add i64 %t74, %t75
  %t77 = load ptr, ptr %l38, !tbaa !29
  %t78 = load i32, ptr %l42, !tbaa !23
  %t79 = load i64, ptr %l43, !tbaa !24
  %t81 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewithLengths(ptr %v0, ptr %t77, i32 %t78, i1 true, i64 %t79, i64 %t76)
  store i32 %t81, ptr %l48
  br label %bb21
bb21:
  %t82 = load i32, ptr %l48, !tbaa !23
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  store ptr %t85, ptr %l50, !tbaa !29
  store i32 %t82, ptr %l51, !tbaa !23
  %t87 = load i1, ptr %l6, !tbaa !21
  br i1 %t87, label %bb22, label %bb23
bb22:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  %t92 = load i64, ptr %l3, !tbaa !24
  %t93 = load i64, ptr %l4, !tbaa !24
  %t94 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t99 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t91, i64 %t92, i64 %t93, i64 %t94)
  store i32 %t99, ptr %l59
  br label %bb24
bb23:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l1, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t106, ptr %l63
  br label %bb25
bb24:
  %t107 = load i32, ptr %l59, !tbaa !23
  store i32 %t107, ptr %l53, !tbaa !23
  br label %bb26
bb25:
  %t108 = load i32, ptr %l63, !tbaa !23
  store i32 %t108, ptr %l53, !tbaa !23
  br label %bb26
bb26:
  %t109 = load ptr, ptr %l50, !tbaa !29
  %t110 = load i32, ptr %l51, !tbaa !23
  %t111 = load i32, ptr %l53, !tbaa !23
  %t112 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t109, i32 %t110, i32 %t111)
  store i32 %t112, ptr %l64
  br label %bb27
bb27:
  %t113 = load i32, ptr %l64, !tbaa !23
  store i32 %t113, ptr %rv
  br label %ret
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t114 = load i32, ptr %l1, !tbaa !23
  store i32 %t114, ptr %rv
  br label %ret
bb32:
  call void @__olang_check_failed(ptr @olang_loc_f4e774cdd9b91619_414e7517a2fb3f1d)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewritableRecv(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i32
  %l9 = alloca i1
  %l13 = alloca i64
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
  store i32 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t10 = trunc i64 20 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t17, i32 %t18)
  store i64 %t21, ptr %l13
  br label %bb4
bb4:
  %t22 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t23 = load i64, ptr %l13, !tbaa !24
  %t25 = and i64 %t23, %t22
  %t27 = icmp ne i64 %t25, 0
  store i1 %t27, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l9, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2enameRoot(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l6 = alloca i64
  %l13 = alloca i1
  %l16 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i32
  %l27 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eparamBit(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l2, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:genRoots", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l13
  br label %bb5
bb5:
  %t20 = load i1, ptr %l13, !tbaa !21
  %t21 = xor i1 %t20, true
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i64 0, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:genRoots", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t26, i32 %t27)
  %t31 = extractvalue { i32, i64 } %t30, 1
  %t32 = extractvalue { i32, i64 } %t30, 0
  store i32 %t32, ptr %l21
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb10, label %ok.34, !prof !99
ok.34:
  store i64 %t31, ptr %l20
  br label %bb9
bb9:
  %t35 = load i64, ptr %l20, !tbaa !24
  store i64 %t35, ptr %l16, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb12
bb12:
  %t36 = load i64, ptr %l16, !tbaa !24
  store i64 %t36, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenLocalBit, !tbaa !24
  %t40 = xor i64 %t38, -1
  %t43 = and i64 %t37, %t40
  %t45 = icmp ne i64 %t43, 0
  br i1 %t45, label %bb13, label %bb14
bb13:
  %t47 = load i64, ptr %l3, !tbaa !24
  store i64 %t47, ptr %l27, !tbaa !24
  br label %bb15
bb14:
  %t49 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenLocalBit, !tbaa !24
  store i64 %t49, ptr %l27, !tbaa !24
  br label %bb15
bb15:
  %t51 = load i64, ptr %l27, !tbaa !24
  store i64 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l9 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i64
  %rv = alloca %"compiler/generic:Binding"
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %l2, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  store i64 %t3, ptr %l3, !tbaa !24
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aBinding_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l9, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l1, !tbaa !24
  store i64 %t10, ptr %l11, !tbaa !24
  %t11 = load i64, ptr %l11, !tbaa !24
  %t12 = icmp sge i64 %t11, 0
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load i64, ptr %l11, !tbaa !24
  %t15 = icmp sle i64 %t14, 2305843009213693951
  br i1 %t15, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_8e4da92f4f682bfd_d3a5cd4c92991ca9)
  unreachable
bb5:
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = mul i64 %t17, 4
  %t19 = load i64, ptr %l9
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = call ptr @__olang_scope_alloc_zeroed(ptr %t20, i64 %t18)
  %t22 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l4, !tbaa !27
  %t25 = ptrtoint ptr %v0 to i64
  store i64 %t25, ptr %l15, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aBinding_2e3
  br i1 %t26, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_8e4da92f4f682bfd_d3a5cd4c92991ca9)
  unreachable
bb7:
  %t28 = call ptr @__olang_region_make(ptr %v0)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l15, !tbaa !24
  br label %bb8
bb8:
  %t30 = load i64, ptr %l1, !tbaa !24
  store i64 %t30, ptr %l17, !tbaa !24
  %t31 = load i64, ptr %l17, !tbaa !24
  %t32 = icmp sge i64 %t31, 0
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load i64, ptr %l17, !tbaa !24
  %t35 = mul i64 %t34, 1
  %t36 = load i64, ptr %l15
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = call ptr @__olang_scope_alloc_zeroed(ptr %t37, i64 %t35)
  %t39 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l5, !tbaa !27
  %t42 = ptrtoint ptr %v0 to i64
  store i64 %t42, ptr %l20, !tbaa !24
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aBinding_2e4
  br i1 %t43, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_d2716e3b81e17ed0_f7580b05837cd1dc)
  unreachable
bb11:
  %t45 = call ptr @__olang_region_make(ptr %v0)
  %t46 = ptrtoint ptr %t45 to i64
  store i64 %t46, ptr %l20, !tbaa !24
  br label %bb12
bb12:
  %t47 = load i64, ptr %l1, !tbaa !24
  store i64 %t47, ptr %l22, !tbaa !24
  %t48 = load i64, ptr %l22, !tbaa !24
  %t49 = icmp sge i64 %t48, 0
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load i64, ptr %l22, !tbaa !24
  %t52 = mul i64 %t51, 1
  %t53 = load i64, ptr %l20
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = call ptr @__olang_scope_alloc_zeroed(ptr %t54, i64 %t52)
  %t56 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t59 = load i64, ptr %l2, !tbaa !24
  %t60 = insertvalue %"compiler/generic:Binding" undef, i64 %t59, 0
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = insertvalue %"compiler/generic:Binding" %t60, i64 %t61, 1
  %t63 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t64 = insertvalue %"compiler/generic:Binding" %t62, { i64, ptr } %t63, 2
  %t65 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t66 = insertvalue %"compiler/generic:Binding" %t64, { i64, ptr } %t65, 3
  %t68 = insertvalue %"compiler/generic:Binding" %t66, { i64, ptr } %t57, 4
  store %"compiler/generic:Binding" %t68, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_7f889b865e0796f3_e5c04d4d88f5fb3f)
  unreachable
ret:
  %rr = load %"compiler/generic:Binding", ptr %rv
  ret %"compiler/generic:Binding" %rr
}

define dso_local %"compiler/generic:pattern" @compiler_2fgeneric_3apattern_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i64 %a2, i32 %a3, ptr %a4) #0 {
entry:
  %rv = alloca %"compiler/generic:pattern"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/generic:pattern" undef, ptr %a0, 0
  %t14 = insertvalue %"compiler/generic:pattern" %t12, i64 %a1, 1
  %t16 = insertvalue %"compiler/generic:pattern" %t14, i64 %a2, 2
  %t18 = insertvalue %"compiler/generic:pattern" %t16, i32 %a3, 3
  %t20 = insertvalue %"compiler/generic:pattern" %t18, ptr %a4, 4
  store %"compiler/generic:pattern" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:pattern", ptr %rv
  ret %"compiler/generic:pattern" %rr
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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d0 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"std/prelude/reflect" }>, align 8
@.d1 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ColumnVec" }>, align 8
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
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
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
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

@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d14 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"std/prelude/reflect" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d16 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@.d17 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ViewGenerator" }>, align 8
@olang_2esole_2ecompiler_2fgeneric_3aBinding_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2fgeneric_3aBinding_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fgeneric_3aBinding_2e4 = weak hidden constant i1 false
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
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i1 %a3, i1 %a4, i1 %a5)
declare i1 @compiler_2fgeneric_2erefElem(ptr %v0, ptr %a0)
@olang_loc_b9fc8c34bb4a0c14_d84bd287e8577888 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_17158c751ed21afe_33a2b26fdf358a22 = external constant [0 x i8]
@G_2ecompiler_2fgeneric_2eDescNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fgeneric_2eDescResult = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2fgeneric_2eDescParam = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorParams(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fgeneric_2efieldAttrs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_a8b1772d74e9e914_a0534ed2161c99a0 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__H9cb5d99387f926677a92c13412f9a8b2(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunknowns(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eOwnScope = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_f9e5e93c78b56bbe_6af7701bc585ea2 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamsSig(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3, i32 %a4)
@olang_loc_2d8c89c88aa67454_7b49ff00081a1220 = external constant [0 x i8]
declare %"compiler/generic:Desc" @compiler_2fgeneric_3aDesc_2ector(ptr %v0, i64 %a0, i32 %a1, i64 %a2, i64 %a3)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLibrary(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_4139559e1c186529_46f8c3a78fef470d = external constant [0 x i8]
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_e11f9621bf6c2a4e_ffbbdf781a3c7e7a = external constant [0 x i8]
@olang_loc_882f12ba06d2ce43_a9b5d482619655cf = external constant [0 x i8]
@olang_loc_76207083d0f68b9f_74e05cac4bc21103 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_de4c5053baae2eb0_7e20459b6f7605c4 = external constant [0 x i8]
@olang_loc_16d3c7726565025d_3b40f943fadf33d1 = external constant [0 x i8]
@olang_loc_7b14d935e96e16e5_1eebf856974cc301 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyBound(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i64 %a4)
declare %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeNamed(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hce1a5ca8c8bc252d00e2ccbd39de0b40(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fpair_3aPair_3cI64_2c_20I64_3_Hca1409b49ac7e9b021f6a95c9301ae1a(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyCovers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMember(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeets(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, i32 %a3, ptr %a4)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_baaca818f0e4393a_2cd871f7f771e33e = external constant [0 x i8]
declare %"compiler/generic:AnyTable" @compiler_2fgeneric_3aAnyTable_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2ePus_H18461b16f088a87daf519df5031429e6(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:AnyTable" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eLen_H9daf28210c013890fd7cb07d1d61ba6e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2egenericCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecalleeType(ptr %v0, ptr %a0, %"compiler/names:Ref" %a1, i32 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisArray(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a87b58072a15a8a_ec80af628fdc0e7e = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_510ce85b2a9a6c03_b867f874fd10b7a7 = external constant [0 x i8]
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_3e2c33a947ef0926_eb9e7dc4e2170cd2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnonEnum(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonInner(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fgeneric_2edescName(ptr %v0, i64 %a0)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddModule(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@G_2ecompiler_2fgeneric_2eFolded = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eUnfolded = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
@G_2ecompiler_2fgeneric_2ePending = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeet(ptr %v0, ptr %a0, %"compiler/generic:folded" %a1, %"compiler/generic:folded" %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewide(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enumberOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_fa05ab364d453a8b_cb1072875564fc6f = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_415c77be4516d04a_7550ee8386647fae = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_1222b844891ca59c_eae6e2f85df83468 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFlagAmongResults(ptr %v0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFlagWithOutParam(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_b8112a4d89490ffb_a06a8022a06c4bef = external constant [0 x i8]
@olang_loc_efebc3387e505f66_7fb3af75c23c7b1a = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aListId_2c_20compile_H6dc73389c50b0fe7ce755995350ae9cd(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aListId_2c_20compile_Ha0a2a345eb8118fa74dc4419a52b5a9c(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i32 %a4)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esameUpToShape(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrsHeld(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_1255cf76aedf9e7f_39892a6a8a5fd693 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eC(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_d28ca411b3c69834_cefe3fe6ba6de938 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseNoParam(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvOf(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etextType(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2, i64 %a3, i1 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4)
@olang_loc_c2b0e0f9c58e7130_5beafbe0f1fd477c = external constant [0 x i8]
@olang_loc_dbc69524847f1d49_8831f326edbf0acd = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_737134d81da26253_60c38b193f08901f = external constant [0 x i8]
@olang_loc_6b949e9fdbc9587c_5a8bb2436952ea48 = external constant [0 x i8]
@olang_loc_f4e774cdd9b91619_414e7517a2fb3f1d = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eparamBit(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eGenLocalBit = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\40" }>, align 8
@olang_loc_8e4da92f4f682bfd_d3a5cd4c92991ca9 = external constant [0 x i8]
@olang_loc_d2716e3b81e17ed0_f7580b05837cd1dc = external constant [0 x i8]
@olang_loc_7f889b865e0796f3_e5c04d4d88f5fb3f = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)

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
