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
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32 }
%"compiler/generic:fnRow" = type { i64, ptr, i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/generic:folded" = type { i64, i64, i32 }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/generic:Unmet" = type { i64, i32, i32, i1, i1, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
define dso_local %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l3 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %rv = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t3 = ptrtoint ptr %t2 to i64
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 %t3, i64 8)
  %t5 = getelementptr { ptr, ptr }, ptr %t4, i32 0, i32 0
  store ptr %a0, ptr %t5, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t7 = getelementptr { ptr, ptr }, ptr %t4, i32 0, i32 1
  store ptr %v0, ptr %t7, !tbaa !28
  %t8 = call ptr @olang_lambda_0.coro(ptr %t4, ptr %v1)
  call void @__olang_scope_register_dtor(ptr %v1, ptr %t8, ptr @olang_lambda_0.drop)
  %t9 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_0, 0
  %t10 = insertvalue { ptr, ptr } %t9, ptr %t8, 1
  %t12 = extractvalue { ptr, ptr } %t10, 0
  %t13 = extractvalue { ptr, ptr } %t10, 1
  %t14 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @std_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aVarDecl_3e_2ector(ptr %v0, ptr %v1, ptr %t12, ptr %t13)
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t14, ptr %l3
  br label %bb1
bb1:
  %t15 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l3
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t15, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %rv
  ret %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %rr
}

define dso_local i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i1
  %l11 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) })
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
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) })
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
  br label %bb9
bb7:
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t12, ptr %l8
  br label %bb8
bb8:
  %t13 = load i1, ptr %l8, !tbaa !21
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb9
bb9:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb13
bb11:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t17, ptr %l11
  br label %bb12
bb12:
  %t18 = load i1, ptr %l11, !tbaa !21
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t19 = load i1, ptr %l9, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i1 @compiler_2fnames_2eWrittenMut(ptr %v0, ptr %a0)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  store i1 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca ptr
  %l22 = alloca i1
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i32
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i32
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l51 = alloca i32
  %l58 = alloca i1
  %l62 = alloca i1
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l83 = alloca i32
  %l86 = alloca ptr
  %l89 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca i1
  %l106 = alloca i64
  %l109 = alloca i64
  %l127 = alloca { i64, ptr }
  %l131 = alloca i1
  %l132 = alloca i1
  %l136 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca ptr
  %l144 = alloca %"compiler/generic:Context"
  %l149 = alloca i32
  %l151 = alloca i64
  %l155 = alloca i32
  %l156 = alloca i32
  %l161 = alloca ptr
  %l163 = alloca i32
  %l164 = alloca i32
  %l165 = alloca i64
  %l166 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca i32
  %l170 = alloca ptr
  %l174 = alloca i32
  %l176 = alloca i64
  %l179 = alloca i32
  %l180 = alloca i32
  %l181 = alloca %"compiler/generic:AnySlot"
  %l188 = alloca i64
  %l192 = alloca i64
  %l195 = alloca i64
  %l216 = alloca i64
  %l220 = alloca i64
  %l231 = alloca { i64, ptr }
  %l237 = alloca i32
  %l246 = alloca i1
  %l247 = alloca ptr
  %l251 = alloca %"compiler/generic:fnRow"
  %l254 = alloca i1
  %l255 = alloca ptr
  %l256 = alloca i64
  %l260 = alloca i32
  %l261 = alloca i32
  %l265 = alloca ptr
  %l269 = alloca %"compiler/generic:fnRow"
  %l273 = alloca ptr
  %l277 = alloca i32
  %l278 = alloca { i64, ptr }
  %l282 = alloca i1
  %l285 = alloca { i64, ptr }
  %l287 = alloca i32
  %l290 = alloca i1
  %l293 = alloca { i64, ptr }
  %l295 = alloca i64
  %l299 = alloca ptr
  %l303 = alloca %"compiler/generic:fnRow"
  %l310 = alloca %"compiler/generic:AnySlot"
  %l314 = alloca i64
  %l317 = alloca %"compiler/generic:AnySlot"
  %l322 = alloca i64
  %l326 = alloca i64
  %l329 = alloca i64
  %l347 = alloca { i64, ptr }
  %l348 = alloca i64
  %l351 = alloca %"compiler/generic:AnySlot"
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t200 = alloca %"compiler/generic:Context", align 8
  %t559 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 63
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H5ded0725d411df67b2648301e639bd4e(ptr %v0, ptr %v1, ptr %t3, i32 %t4)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l51
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l50
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t12, ptr %l46, !tbaa !27
  br label %bb8
bb2:
  br label %bb3
bb3:
  %t13 = icmp sge i64 0, 0
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = icmp sle i64 0, 288230376151711743
  br i1 %t15, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_c2f0255997df361c_a6c9f390e9e9df68)
  unreachable
bb6:
  %t17 = mul i64 0, 32
  %t18 = insertvalue { i64, ptr } undef, i64 0, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t19, ptr %l46, !tbaa !27
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_c2f0255997df361c_a6c9f390e9e9df68)
  unreachable
bb8:
  %t21 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t21, ptr %l2, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb12
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 63
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H9e3d6110ebf70523261e6bda2644191a(ptr %v0, ptr %t30, i32 %t31)
  store i1 %t34, ptr %l62
  br label %bb11
bb11:
  %t35 = load i1, ptr %l62, !tbaa !21
  store i1 %t35, ptr %l58, !tbaa !21
  br label %bb12
bb12:
  %t36 = load i1, ptr %l58, !tbaa !21
  br i1 %t36, label %bb13, label %bb14
bb13:
  %t37 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t37, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %t39)
  br label %bb16
bb16:
  %t41 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnySlot_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t41, ptr %l65
  br label %bb17
bb17:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l3
  %t43 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, ptr %l66
  br label %bb18
bb18:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l4
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l1, !tbaa !23
  %t49 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyCovers(ptr %v0, ptr %s0, ptr %t45, i32 %t46)
  store { i64, ptr } %t49, ptr %l69
  br label %bb19
bb19:
  %t50 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t50, ptr %l5, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t51, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  store i64 %t55, ptr %l8, !tbaa !24
  br label %bb20
bb20:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb21, label %bb22
bb21:
  br label %bb78
bb22:
  br label %bb23
bb23:
  %t65 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t65, ptr %l77, !tbaa !27
  %t66 = load i64, ptr %l7, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i32, ptr %t69, i64 %t66
  %t71 = load i32, ptr %t70, !tbaa !33
  store i32 %t71, ptr %l9, !tbaa !23
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l9, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l83
  br label %bb24
bb24:
  %t80 = load i32, ptr %l83, !tbaa !23
  store i32 %t80, ptr %l10, !tbaa !23
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i32, ptr %l10, !tbaa !23
  %t85 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t81, i32 %t82)
  store ptr %t85, ptr %l86
  br label %bb25
bb25:
  %t86 = load ptr, ptr %l86, !tbaa !29
  store ptr %t86, ptr %l11, !tbaa !29
  %t87 = load ptr, ptr %l11, !tbaa !29
  %t89 = icmp eq ptr %t87, null
  br i1 %t89, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb28
bb27:
  %t91 = load ptr, ptr %l11, !tbaa !29
  %t93 = getelementptr %"compiler/ast:TypeDecl", ptr %t91, i32 0, i32 3
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = icmp eq ptr %t94, null
  store i1 %t96, ptr %l89, !tbaa !21
  br label %bb28
bb28:
  %t98 = load i1, ptr %l89, !tbaa !21
  br i1 %t98, label %bb29, label %bb30
bb29:
  br label %bb77
bb30:
  br label %bb31
bb31:
  %t99 = load ptr, ptr %l11, !tbaa !29
  %t101 = getelementptr %"compiler/ast:TypeDecl", ptr %t99, i32 0, i32 3
  %t102 = load ptr, ptr %t101, !tbaa !29
  store ptr %t102, ptr %l12, !tbaa !29
  %t104 = load ptr, ptr %l12, !tbaa !29
  store ptr %t104, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t105 = load ptr, ptr %l95, !tbaa !29
  %t106 = icmp ne ptr %t105, null
  br i1 %t106, label %bb32, label %bb33
bb32:
  %t108 = load ptr, ptr %l95, !tbaa !29
  %t109 = load i64, ptr %t108, !range !{i64 0, i64 5}
  %t111 = icmp eq i64 %t109, 2
  store i1 %t111, ptr %l96, !tbaa !21
  br label %bb33
bb33:
  %t112 = load i1, ptr %l96, !tbaa !21
  br i1 %t112, label %bb34, label %bb35
bb34:
  %t113 = load ptr, ptr %l12, !tbaa !29
  %t115 = getelementptr { i64, [6 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t115, i32 0, i32 0
  %t117 = load { i64, ptr }, ptr %t116
  store { i64, ptr } %t117, ptr %l13, !tbaa !27
  br label %bb36
bb35:
  br label %bb71
bb36:
  store i64 0, ptr %l14, !tbaa !24
  %t119 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 0
  store i64 %t121, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t123 = load i64, ptr %l15, !tbaa !24
  %t124 = load i64, ptr %l14, !tbaa !24
  %t127 = icmp sgt i64 %t123, %t124
  br i1 %t127, label %bb37, label %bb38
bb37:
  %t129 = load i64, ptr %l16, !tbaa !24
  %t131 = icmp sgt i64 %t129, 0
  br i1 %t131, label %bb39, label %bb40
bb38:
  store i64 0, ptr %l106, !tbaa !24
  br label %bb42
bb39:
  %t133 = load i64, ptr %l15, !tbaa !24
  %t134 = load i64, ptr %l14, !tbaa !24
  %t137 = sub i64 %t133, %t134
  %t138 = load i64, ptr %l16, !tbaa !24
  %t141 = add i64 %t137, %t138
  %t143 = sub i64 %t141, 1
  %t144 = load i64, ptr %l16, !tbaa !24
  %t147 = sdiv i64 %t143, %t144
  store i64 %t147, ptr %l109, !tbaa !24
  br label %bb41
bb40:
  store i64 0, ptr %l109, !tbaa !24
  br label %bb41
bb41:
  %t149 = load i64, ptr %l109, !tbaa !24
  store i64 %t149, ptr %l106, !tbaa !24
  br label %bb42
bb42:
  %t150 = load i64, ptr %l106, !tbaa !24
  store i64 %t150, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb43
bb43:
  store %olang.scope zeroinitializer, ptr %s7
  %t151 = load i64, ptr %l18, !tbaa !24
  %t152 = load i64, ptr %l17, !tbaa !24
  %t155 = icmp slt i64 %t151, %t152
  %t157 = xor i1 %t155, true
  br i1 %t157, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s7)
  br label %bb70
bb45:
  br label %bb46
bb46:
  %t159 = load i64, ptr %l14, !tbaa !24
  %t160 = load i64, ptr %l18, !tbaa !24
  %t161 = load i64, ptr %l16, !tbaa !24
  %t164 = mul i64 %t160, %t161
  %t167 = add i64 %t159, %t164
  store i64 %t167, ptr %l19, !tbaa !24
  %t169 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t169, ptr %l127, !tbaa !27
  %t170 = load i64, ptr %l19, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr ptr, ptr %t173, i64 %t170
  %t175 = load ptr, ptr %t174, !tbaa !39
  store ptr %t175, ptr %l20, !tbaa !29
  %t177 = load ptr, ptr %l20, !tbaa !29
  %t179 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t177)
  store i1 %t179, ptr %l131
  br label %bb47
bb47:
  %t180 = load i1, ptr %l131, !tbaa !21
  br i1 %t180, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb51
bb49:
  %t181 = load ptr, ptr %l20, !tbaa !29
  %t183 = getelementptr %"compiler/ast:Func", ptr %t181, i32 0, i32 2
  %t184 = load i32, ptr %t183, !tbaa !23
  %t187 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l4, i32 %t184)
  store i1 %t187, ptr %l136
  br label %bb50
bb50:
  %t188 = load i1, ptr %l136, !tbaa !21
  store i1 %t188, ptr %l132, !tbaa !21
  br label %bb51
bb51:
  %t189 = load i1, ptr %l132, !tbaa !21
  br i1 %t189, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s7)
  br label %bb69
bb53:
  br label %bb54
bb54:
  %t190 = load ptr, ptr %l20, !tbaa !29
  %t192 = getelementptr %"compiler/ast:Func", ptr %t190, i32 0, i32 2
  %t193 = load i32, ptr %t192, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l4, i32 %t193)
  br label %bb55
bb55:
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l140, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  store ptr %t197, ptr %l141, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t200, ptr %v0, ptr %s7, ptr %t198, i32 %t199)
  call void @llvm.memmove.p0.p0.i64(ptr %l144, ptr %t200, i64 160, i1 false)
  br label %bb56
bb56:
  %t203 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t203, ptr %l144, i64 160, i1 false)
  %t204 = load ptr, ptr %l20, !tbaa !29
  %t206 = getelementptr %"compiler/ast:Func", ptr %t204, i32 0, i32 3
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t208 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t209 = load ptr, ptr %l141, !tbaa !29
  %t213 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %s7, ptr %v0, ptr %t209, ptr %t203, ptr %t207, i32 %t208, i32 0)
  store i32 %t213, ptr %l149
  br label %bb57
bb57:
  %t214 = load i32, ptr %l10, !tbaa !23
  %t216 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t214)
  store i64 %t216, ptr %l151
  br label %bb58
bb58:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/generic:Program", ptr %t217, i32 0, i32 2
  %t220 = load i32, ptr %l9, !tbaa !23
  %t223 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t219, i32 %t220)
  store i32 %t223, ptr %l155
  br label %bb59
bb59:
  %t224 = load ptr, ptr %l140, !tbaa !29
  %t225 = load i32, ptr %l149, !tbaa !23
  %t226 = load i64, ptr %l151, !tbaa !24
  %t227 = load i32, ptr %l155, !tbaa !23
  %t228 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t224, i32 %t225, i64 %t226, i32 %t227)
  store i32 %t228, ptr %l156
  br label %bb60
bb60:
  %t229 = load i32, ptr %l156, !tbaa !23
  %t230 = load ptr, ptr %l20, !tbaa !29
  %t232 = getelementptr %"compiler/ast:Func", ptr %t230, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t235 = icmp eq ptr %t233, null
  %t237 = xor i1 %t235, true
  store i1 %t237, ptr %l22, !tbaa !21
  store ptr %l3, ptr %l161, !tbaa !29
  %t239 = load ptr, ptr %l20, !tbaa !29
  %t241 = getelementptr %"compiler/ast:Func", ptr %t239, i32 0, i32 2
  %t242 = load i32, ptr %t241, !tbaa !23
  store i32 %t242, ptr %l163, !tbaa !23
  %t243 = load i32, ptr %l9, !tbaa !23
  store i32 %t243, ptr %l164, !tbaa !23
  %t244 = load i64, ptr %l19, !tbaa !24
  store i64 %t244, ptr %l165, !tbaa !24
  %t245 = load i1, ptr %l22, !tbaa !21
  store i1 %t245, ptr %l166, !tbaa !21
  %t246 = load ptr, ptr %l0, !tbaa !29
  store ptr %t246, ptr %l167, !tbaa !29
  store i32 %t229, ptr %l168, !tbaa !23
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/generic:Program", ptr %t248, i32 0, i32 2
  store ptr %t250, ptr %l170, !tbaa !29
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/generic:Program", ptr %t251, i32 0, i32 2
  %t254 = load i32, ptr %l1, !tbaa !23
  %t257 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %t253, i32 %t254)
  store i32 %t257, ptr %l174
  br label %bb61
bb61:
  %t258 = load i1, ptr %l22, !tbaa !21
  br i1 %t258, label %bb62, label %bb63
bb62:
  %t260 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  store i64 %t260, ptr %l176, !tbaa !24
  br label %bb64
bb63:
  %t262 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  store i64 %t262, ptr %l176, !tbaa !24
  br label %bb64
bb64:
  %t264 = load ptr, ptr %l170, !tbaa !29
  %t265 = load i32, ptr %l174, !tbaa !23
  %t266 = load i64, ptr %l176, !tbaa !24
  %t267 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t264, i32 %t265, i64 %t266)
  store i32 %t267, ptr %l179
  br label %bb65
bb65:
  %t268 = load ptr, ptr %l167, !tbaa !29
  %t269 = load i32, ptr %l168, !tbaa !23
  %t270 = load i32, ptr %l179, !tbaa !23
  %t271 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWithReceiver(ptr %v0, ptr %t268, i32 %t269, i32 %t270)
  store i32 %t271, ptr %l180
  br label %bb66
bb66:
  %t272 = load i32, ptr %l163, !tbaa !23
  %t273 = load i32, ptr %l164, !tbaa !23
  %t274 = load i64, ptr %l165, !tbaa !24
  %t275 = load i1, ptr %l166, !tbaa !21
  %t276 = load i32, ptr %l180, !tbaa !23
  %t277 = call %"compiler/generic:AnySlot" @compiler_2fgeneric_3aAnySlot_2ector(ptr %s7, i32 %t272, i32 %t273, i64 %t274, i64 -1, i1 %t275, i32 %t276)
  store %"compiler/generic:AnySlot" %t277, ptr %l181
  br label %bb67
bb67:
  %t278 = load ptr, ptr %l161, !tbaa !29
  %t279 = load %"compiler/generic:AnySlot", ptr %l181
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnySlot_3e_2ePush_H53ed042998733b8f648bef68c9e795c2(ptr %s0, ptr %t278, %"compiler/generic:AnySlot" %t279)
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s7)
  br label %bb69
bb69:
  %t280 = load i64, ptr %l18, !tbaa !24
  %t282 = add i64 %t280, 1
  store i64 %t282, ptr %l18, !tbaa !24
  br label %bb43
bb70:
  br label %bb76
bb71:
  br i1 true, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb76
bb75:
  call void @__olang_check_failed(ptr @olang_loc_8bb21cabdbc81f72_d9374099c3cf9016)
  unreachable
bb76:
  br label %bb77
bb77:
  %t284 = load i64, ptr %l7, !tbaa !24
  %t286 = add i64 %t284, 1
  store i64 %t286, ptr %l7, !tbaa !24
  br label %bb20
bb78:
  store i64 0, ptr %l23, !tbaa !24
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr %"compiler/generic:Program", ptr %t288, i32 0, i32 38
  %t292 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t290)
  store i64 %t292, ptr %l188
  br label %bb79
bb79:
  %t293 = load i64, ptr %l188, !tbaa !24
  store i64 %t293, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t294 = load i64, ptr %l24, !tbaa !24
  %t295 = load i64, ptr %l23, !tbaa !24
  %t298 = icmp sgt i64 %t294, %t295
  br i1 %t298, label %bb80, label %bb81
bb80:
  %t300 = load i64, ptr %l25, !tbaa !24
  %t302 = icmp sgt i64 %t300, 0
  br i1 %t302, label %bb82, label %bb83
bb81:
  store i64 0, ptr %l192, !tbaa !24
  br label %bb85
bb82:
  %t304 = load i64, ptr %l24, !tbaa !24
  %t305 = load i64, ptr %l23, !tbaa !24
  %t308 = sub i64 %t304, %t305
  %t309 = load i64, ptr %l25, !tbaa !24
  %t312 = add i64 %t308, %t309
  %t314 = sub i64 %t312, 1
  %t315 = load i64, ptr %l25, !tbaa !24
  %t318 = sdiv i64 %t314, %t315
  store i64 %t318, ptr %l195, !tbaa !24
  br label %bb84
bb83:
  store i64 0, ptr %l195, !tbaa !24
  br label %bb84
bb84:
  %t320 = load i64, ptr %l195, !tbaa !24
  store i64 %t320, ptr %l192, !tbaa !24
  br label %bb85
bb85:
  %t321 = load i64, ptr %l192, !tbaa !24
  store i64 %t321, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb86
bb86:
  store %olang.scope zeroinitializer, ptr %s13
  %t322 = load i64, ptr %l27, !tbaa !24
  %t323 = load i64, ptr %l26, !tbaa !24
  %t326 = icmp slt i64 %t322, %t323
  %t328 = xor i1 %t326, true
  br i1 %t328, label %bb87, label %bb88
bb87:
  call void @__olang_scope_close(ptr %s13)
  br label %bb131
bb88:
  br label %bb89
bb89:
  %t330 = load i64, ptr %l23, !tbaa !24
  %t331 = load i64, ptr %l27, !tbaa !24
  %t332 = load i64, ptr %l25, !tbaa !24
  %t335 = mul i64 %t331, %t332
  %t338 = add i64 %t330, %t335
  store i64 %t338, ptr %l28, !tbaa !24
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t342 = getelementptr %"compiler/generic:Program", ptr %t340, i32 0, i32 38
  %t343 = load i64, ptr %l28, !tbaa !24
  %t346 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t342, i64 %t343)
  store i64 %t346, ptr %l216
  br label %bb90
bb90:
  %t347 = load i64, ptr %l216, !tbaa !24
  store i64 %t347, ptr %l29, !tbaa !24
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/generic:Program", ptr %t348, i32 0, i32 39
  %t351 = load i64, ptr %l28, !tbaa !24
  %t354 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t350, i64 %t351)
  store i64 %t354, ptr %l220
  br label %bb91
bb91:
  %t355 = load i64, ptr %l220, !tbaa !24
  %t356 = trunc i64 %t355 to i32
  store i32 %t356, ptr %l30, !tbaa !23
  %t359 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t359, ptr %l31, !tbaa !23
  %t361 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t361, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t363 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t363, 0
  store i64 %t365, ptr %l34, !tbaa !24
  br label %bb92
bb92:
  %t367 = load i64, ptr %l33, !tbaa !24
  %t368 = load i64, ptr %l34, !tbaa !24
  %t371 = icmp slt i64 %t367, %t368
  %t373 = xor i1 %t371, true
  br i1 %t373, label %bb93, label %bb94
bb93:
  br label %bb101
bb94:
  br label %bb95
bb95:
  %t375 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t375, ptr %l231, !tbaa !27
  %t376 = load i64, ptr %l33, !tbaa !24
  %t378 = getelementptr { i64, ptr }, ptr %l231, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !27
  %t380 = getelementptr i32, ptr %t379, i64 %t376
  %t381 = load i32, ptr %t380, !tbaa !33
  store i32 %t381, ptr %l35, !tbaa !23
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t385 = getelementptr %"compiler/generic:Program", ptr %t383, i32 0, i32 2
  %t386 = load i32, ptr %l35, !tbaa !23
  %t389 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t385, i32 %t386)
  store i32 %t389, ptr %l237
  br label %bb96
bb96:
  %t390 = load i32, ptr %l30, !tbaa !23
  %t391 = load i32, ptr %l237, !tbaa !23
  %t393 = icmp eq i32 %t391, %t390
  br i1 %t393, label %bb97, label %bb98
bb97:
  %t395 = load i32, ptr %l35, !tbaa !23
  store i32 %t395, ptr %l31, !tbaa !23
  br label %bb99
bb98:
  br label %bb99
bb99:
  br label %bb100
bb100:
  %t397 = load i64, ptr %l33, !tbaa !24
  %t399 = add i64 %t397, 1
  store i64 %t399, ptr %l33, !tbaa !24
  br label %bb92
bb101:
  %t401 = load i32, ptr %l31, !tbaa !23
  %t402 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t405 = icmp eq i32 %t401, %t402
  br i1 %t405, label %bb102, label %bb103
bb102:
  store i1 true, ptr %l246, !tbaa !21
  br label %bb106
bb103:
  store ptr %l4, ptr %l247, !tbaa !29
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = getelementptr %"compiler/generic:Program", ptr %t407, i32 0, i32 29
  %t410 = load i64, ptr %l29, !tbaa !24
  %t413 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s13, ptr %t409, i64 %t410)
  store %"compiler/generic:fnRow" %t413, ptr %l251
  br label %bb104
bb104:
  %t414 = getelementptr %"compiler/generic:fnRow", ptr %l251, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !29
  %t417 = getelementptr %"compiler/ast:Func", ptr %t415, i32 0, i32 2
  %t418 = load i32, ptr %t417, !tbaa !23
  %t419 = load ptr, ptr %l247, !tbaa !29
  %t421 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t419, i32 %t418)
  store i1 %t421, ptr %l254
  br label %bb105
bb105:
  %t422 = load i1, ptr %l254, !tbaa !21
  store i1 %t422, ptr %l246, !tbaa !21
  br label %bb106
bb106:
  %t423 = load i1, ptr %l246, !tbaa !21
  br i1 %t423, label %bb107, label %bb108
bb107:
  call void @__olang_scope_close(ptr %s13)
  br label %bb130
bb108:
  br label %bb109
bb109:
  %t424 = load ptr, ptr %l0, !tbaa !29
  store ptr %t424, ptr %l255, !tbaa !29
  %t425 = load i64, ptr %l29, !tbaa !24
  store i64 %t425, ptr %l256, !tbaa !24
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/generic:Program", ptr %t426, i32 0, i32 2
  %t429 = load i32, ptr %l1, !tbaa !23
  %t432 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %t428, i32 %t429)
  store i32 %t432, ptr %l260
  br label %bb110
bb110:
  %t433 = load ptr, ptr %l255, !tbaa !29
  %t434 = load i64, ptr %l256, !tbaa !24
  %t435 = load i32, ptr %l260, !tbaa !23
  %t436 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultAt(ptr %v0, ptr %t433, i64 %t434, i32 %t435)
  store i32 %t436, ptr %l261
  br label %bb111
bb111:
  %t437 = load i32, ptr %l261, !tbaa !23
  store i32 %t437, ptr %l36, !tbaa !23
  %t438 = load i32, ptr %l36, !tbaa !23
  %t439 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t442 = icmp eq i32 %t438, %t439
  br i1 %t442, label %bb112, label %bb113
bb112:
  call void @__olang_scope_close(ptr %s13)
  br label %bb130
bb113:
  br label %bb114
bb114:
  store ptr %l4, ptr %l265, !tbaa !29
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t446 = getelementptr %"compiler/generic:Program", ptr %t444, i32 0, i32 29
  %t447 = load i64, ptr %l29, !tbaa !24
  %t450 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s13, ptr %t446, i64 %t447)
  store %"compiler/generic:fnRow" %t450, ptr %l269
  br label %bb115
bb115:
  %t451 = getelementptr %"compiler/generic:fnRow", ptr %l269, i32 0, i32 1
  %t452 = load ptr, ptr %t451, !tbaa !29
  %t454 = getelementptr %"compiler/ast:Func", ptr %t452, i32 0, i32 2
  %t455 = load i32, ptr %t454, !tbaa !23
  %t456 = load ptr, ptr %l265, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t456, i32 %t455)
  br label %bb116
bb116:
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/generic:Program", ptr %t458, i32 0, i32 2
  store ptr %t460, ptr %l273, !tbaa !29
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t463 = getelementptr %"compiler/generic:Program", ptr %t461, i32 0, i32 2
  %t464 = load i32, ptr %l36, !tbaa !23
  %t467 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t463, i32 %t464)
  store i32 %t467, ptr %l277
  br label %bb117
bb117:
  %t468 = load ptr, ptr %l273, !tbaa !29
  %t469 = load i32, ptr %l277, !tbaa !23
  %t470 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t468, i32 %t469)
  store { i64, ptr } %t470, ptr %l278
  br label %bb118
bb118:
  %t471 = load { i64, ptr }, ptr %l278, !tbaa !27
  store { i64, ptr } %t471, ptr %l37, !tbaa !27
  %t472 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t474 = extractvalue { i64, ptr } %t472, 0
  %t476 = icmp sgt i64 %t474, 0
  br i1 %t476, label %bb119, label %bb120
bb119:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t480 = getelementptr %"compiler/generic:Program", ptr %t478, i32 0, i32 2
  %t481 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t481, ptr %l285, !tbaa !27
  %t482 = getelementptr { i64, ptr }, ptr %l285, i32 0, i32 1
  %t483 = load ptr, ptr %t482, !tbaa !27
  %t484 = getelementptr i32, ptr %t483, i64 0
  %t485 = load i32, ptr %t484, !tbaa !33
  %t488 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t480, i32 %t485)
  store i32 %t488, ptr %l287
  br label %bb121
bb120:
  store i1 false, ptr %l282, !tbaa !21
  br label %bb122
bb121:
  %t489 = load i32, ptr %l287, !range !{i32 0, i32 33}
  %t491 = trunc i64 20 to i32
  %t492 = icmp eq i32 %t489, %t491
  store i1 %t492, ptr %l282, !tbaa !21
  br label %bb122
bb122:
  %t494 = load i1, ptr %l282, !tbaa !21
  br i1 %t494, label %bb123, label %bb124
bb123:
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t497 = getelementptr %"compiler/generic:Program", ptr %t495, i32 0, i32 2
  %t498 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t498, ptr %l293, !tbaa !27
  %t499 = getelementptr { i64, ptr }, ptr %l293, i32 0, i32 1
  %t500 = load ptr, ptr %t499, !tbaa !27
  %t501 = getelementptr i32, ptr %t500, i64 0
  %t502 = load i32, ptr %t501, !tbaa !33
  %t505 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t497, i32 %t502)
  store i64 %t505, ptr %l295
  br label %bb125
bb124:
  store i1 false, ptr %l290, !tbaa !21
  br label %bb126
bb125:
  %t506 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t507 = load i64, ptr %l295, !tbaa !24
  %t509 = and i64 %t507, %t506
  %t511 = icmp ne i64 %t509, 0
  store i1 %t511, ptr %l290, !tbaa !21
  br label %bb126
bb126:
  %t513 = load i1, ptr %l290, !tbaa !21
  store i1 %t513, ptr %l38, !tbaa !21
  store ptr %l3, ptr %l299, !tbaa !29
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t516 = getelementptr %"compiler/generic:Program", ptr %t514, i32 0, i32 29
  %t517 = load i64, ptr %l29, !tbaa !24
  %t520 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s13, ptr %t516, i64 %t517)
  store %"compiler/generic:fnRow" %t520, ptr %l303
  br label %bb127
bb127:
  %t521 = getelementptr %"compiler/generic:fnRow", ptr %l303, i32 0, i32 1
  %t522 = load ptr, ptr %t521, !tbaa !29
  %t524 = getelementptr %"compiler/ast:Func", ptr %t522, i32 0, i32 2
  %t525 = load i32, ptr %t524, !tbaa !23
  %t526 = load i32, ptr %l31, !tbaa !23
  %t527 = load i64, ptr %l29, !tbaa !24
  %t528 = load i1, ptr %l38, !tbaa !21
  %t529 = load i32, ptr %l36, !tbaa !23
  %t535 = call %"compiler/generic:AnySlot" @compiler_2fgeneric_3aAnySlot_2ector(ptr %s13, i32 %t525, i32 %t526, i64 -1, i64 %t527, i1 %t528, i32 %t529)
  store %"compiler/generic:AnySlot" %t535, ptr %l310
  br label %bb128
bb128:
  %t536 = load ptr, ptr %l299, !tbaa !29
  %t537 = load %"compiler/generic:AnySlot", ptr %l310
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnySlot_3e_2ePush_H53ed042998733b8f648bef68c9e795c2(ptr %s0, ptr %t536, %"compiler/generic:AnySlot" %t537)
  br label %bb129
bb129:
  call void @__olang_scope_close(ptr %s13)
  br label %bb130
bb130:
  %t538 = load i64, ptr %l27, !tbaa !24
  %t540 = add i64 %t538, 1
  store i64 %t540, ptr %l27, !tbaa !24
  br label %bb86
bb131:
  %t543 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnySlot_3e_2eLen__H711cec3afad496782566ddd729023773(ptr %s0, ptr %l3)
  store i64 %t543, ptr %l314
  br label %bb132
bb132:
  %t544 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t545 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t548 = call %"compiler/generic:AnySlot" @compiler_2fgeneric_3aAnySlot_2ector(ptr %v1, i32 0, i32 %t544, i64 -1, i64 -1, i1 false, i32 %t545)
  store %"compiler/generic:AnySlot" %t548, ptr %l317
  br label %bb133
bb133:
  %t549 = load i64, ptr %l314, !tbaa !24
  %t550 = icmp sge i64 %t549, 0
  br i1 %t550, label %bb134, label %bb135
bb134:
  %t552 = load i64, ptr %l314, !tbaa !24
  %t553 = icmp sle i64 %t552, 288230376151711743
  br i1 %t553, label %bb136, label %bb137
bb135:
  call void @__olang_check_failed(ptr @olang_loc_98166f45573479aa_46aa63c900b34a36)
  unreachable
bb136:
  %t555 = load i64, ptr %l314, !tbaa !24
  %t556 = mul i64 %t555, 32
  %t557 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t556)
  %t558 = load %"compiler/generic:AnySlot", ptr %l317
  store i64 0, ptr %t559
  br label %fill.560
fill.560:
  %t563 = load i64, ptr %t559
  %t564 = icmp slt i64 %t563, %t555
  br i1 %t564, label %fillb.561, label %filld.562
fillb.561:
  %t565 = getelementptr %"compiler/generic:AnySlot", ptr %t557, i64 %t563
  store %"compiler/generic:AnySlot" %t558, ptr %t565
  %t566 = add i64 %t563, 1
  store i64 %t566, ptr %t559
  br label %fill.560
filld.562:
  %t567 = insertvalue { i64, ptr } undef, i64 %t555, 0
  %t568 = insertvalue { i64, ptr } %t567, ptr %t557, 1
  store { i64, ptr } %t568, ptr %l39, !tbaa !27
  store i64 0, ptr %l40, !tbaa !24
  %t571 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnySlot_3e_2eLen__H711cec3afad496782566ddd729023773(ptr %s0, ptr %l3)
  store i64 %t571, ptr %l322
  br label %bb138
bb137:
  call void @__olang_check_failed(ptr @olang_loc_98166f45573479aa_46aa63c900b34a36)
  unreachable
bb138:
  %t572 = load i64, ptr %l322, !tbaa !24
  store i64 %t572, ptr %l41, !tbaa !24
  store i64 1, ptr %l42, !tbaa !24
  %t573 = load i64, ptr %l41, !tbaa !24
  %t574 = load i64, ptr %l40, !tbaa !24
  %t577 = icmp sgt i64 %t573, %t574
  br i1 %t577, label %bb139, label %bb140
bb139:
  %t579 = load i64, ptr %l42, !tbaa !24
  %t581 = icmp sgt i64 %t579, 0
  br i1 %t581, label %bb141, label %bb142
bb140:
  store i64 0, ptr %l326, !tbaa !24
  br label %bb144
bb141:
  %t583 = load i64, ptr %l41, !tbaa !24
  %t584 = load i64, ptr %l40, !tbaa !24
  %t587 = sub i64 %t583, %t584
  %t588 = load i64, ptr %l42, !tbaa !24
  %t591 = add i64 %t587, %t588
  %t593 = sub i64 %t591, 1
  %t594 = load i64, ptr %l42, !tbaa !24
  %t597 = sdiv i64 %t593, %t594
  store i64 %t597, ptr %l329, !tbaa !24
  br label %bb143
bb142:
  store i64 0, ptr %l329, !tbaa !24
  br label %bb143
bb143:
  %t599 = load i64, ptr %l329, !tbaa !24
  store i64 %t599, ptr %l326, !tbaa !24
  br label %bb144
bb144:
  %t600 = load i64, ptr %l326, !tbaa !24
  store i64 %t600, ptr %l43, !tbaa !24
  store i64 0, ptr %l44, !tbaa !24
  br label %bb145
bb145:
  %t601 = load i64, ptr %l44, !tbaa !24
  %t602 = load i64, ptr %l43, !tbaa !24
  %t605 = icmp slt i64 %t601, %t602
  %t607 = xor i1 %t605, true
  br i1 %t607, label %bb146, label %bb147
bb146:
  br label %bb151
bb147:
  br label %bb148
bb148:
  %t609 = load i64, ptr %l40, !tbaa !24
  %t610 = load i64, ptr %l44, !tbaa !24
  %t611 = load i64, ptr %l42, !tbaa !24
  %t614 = mul i64 %t610, %t611
  %t617 = add i64 %t609, %t614
  store i64 %t617, ptr %l45, !tbaa !24
  %t619 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t619, ptr %l347, !tbaa !27
  %t620 = load i64, ptr %l45, !tbaa !24
  store i64 %t620, ptr %l348, !tbaa !24
  %t621 = load i64, ptr %l45, !tbaa !24
  %t624 = call %"compiler/generic:AnySlot" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnySlot_3e_2eAt_3ccompiler_2fgeneric_3aAnySlot_3e(ptr %s0, ptr %l3, i64 %t621)
  store %"compiler/generic:AnySlot" %t624, ptr %l351
  br label %bb149
bb149:
  %t625 = load %"compiler/generic:AnySlot", ptr %l351
  %t626 = load i64, ptr %l348, !tbaa !24
  %t627 = getelementptr { i64, ptr }, ptr %l347, i32 0, i32 1
  %t628 = load ptr, ptr %t627, !tbaa !27
  %t629 = getelementptr %"compiler/generic:AnySlot", ptr %t628, i64 %t626
  store %"compiler/generic:AnySlot" %t625, ptr %t629
  br label %bb150
bb150:
  %t630 = load i64, ptr %l44, !tbaa !24
  %t632 = add i64 %t630, 1
  store i64 %t632, ptr %l44, !tbaa !24
  br label %bb145
bb151:
  %t634 = load ptr, ptr %l0, !tbaa !29
  %t636 = getelementptr %"compiler/generic:Program", ptr %t634, i32 0, i32 63
  %t637 = load i32, ptr %l1, !tbaa !23
  %t638 = load { i64, ptr }, ptr %l39, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H5c1f2db077436d08712784f933dc3852(ptr %v0, ptr %v1, ptr %t636, i32 %t637, { i64, ptr } %t638)
  br label %bb152
bb152:
  %t642 = load { i64, ptr }, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t642, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i1
  %l21 = alloca i64
  %l24 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t9, ptr %l9, !tbaa !27
  %t10 = load i64, ptr %l3, !tbaa !24
  %t12 = sub i64 %t10, 1
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr ptr, ptr %t15, i64 %t12
  %t17 = load ptr, ptr %t16, !tbaa !39
  %t19 = call i1 @compiler_2fgeneric_2eisErrsArg(ptr %v1, ptr %t17)
  store i1 %t19, ptr %l13
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t20 = load i1, ptr %l13, !tbaa !21
  store i1 %t20, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l8, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l17
  br label %bb7
bb6:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  %t27 = load i1, ptr %l17, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t34 = call i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v1, { i64, ptr } %t32)
  store i64 %t34, ptr %l21
  br label %bb12
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %t35, i32 %t36)
  store i64 %t39, ptr %l24
  br label %bb13
bb13:
  %t40 = load i64, ptr %l21, !tbaa !24
  %t41 = load i64, ptr %l24, !tbaa !24
  %t42 = icmp eq i64 %t40, %t41
  store i1 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderKey(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/generic:fnRow"
  %l6 = alloca %"compiler/generic:fnRow"
  %l8 = alloca i1
  %l17 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 29
  %t7 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/generic:fnRow" %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:fnRow", ptr %l6
  store %"compiler/generic:fnRow" %t8, ptr %l2
  %t9 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t10)
  store i1 %t12, ptr %l8
  br label %bb2
bb2:
  %t13 = load i1, ptr %l8, !tbaa !21
  %t14 = xor i1 %t13, true
  br i1 %t14, label %bb3, label %bb4
bb3:
  store i64 -1, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 0
  %t19 = load i64, ptr %t18, !tbaa !24
  %t20 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/ast:Func", ptr %t21, i32 0, i32 9
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/ast:Func", ptr %t26, i32 0, i32 5
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t34 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v0, ptr %v0, ptr %t17, i64 %t19, ptr %t24, { i64, ptr } %t29)
  store i64 %t34, ptr %l17
  br label %bb6
bb6:
  %t35 = load i64, ptr %l17, !tbaa !24
  store i64 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOfType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i32
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l14 = alloca i1
  %l15 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca i32
  %l31 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eEntriesOf(ptr %v0, ptr %s0, ptr %t3, i32 %t4, ptr %l2)
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l8, !tbaa !29
  %t10 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t10, ptr %l10
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t13 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOf(ptr %v0, ptr %s0, ptr %t11, { i64, ptr } %t12)
  store i32 %t13, ptr %l11
  br label %bb4
bb4:
  %t14 = load i32, ptr %l11, !tbaa !23
  store i32 %t14, ptr %l3, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrorSet(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l14
  br label %bb5
bb5:
  %t20 = load i1, ptr %l14, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  store ptr %t23, ptr %l17, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l3, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l21
  br label %bb8
bb7:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb10
bb8:
  %t31 = load ptr, ptr %l17, !tbaa !29
  %t32 = load i32, ptr %l21, !tbaa !23
  %t33 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t31, i32 %t32)
  store { i64, ptr } %t33, ptr %l22
  br label %bb9
bb9:
  %t34 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  %t37 = icmp sgt i64 %t35, 1
  store i1 %t37, ptr %l15, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l15, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  store ptr %t42, ptr %l26, !tbaa !29
  %t43 = load i32, ptr %l3, !tbaa !23
  store i32 %t43, ptr %l27, !tbaa !23
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l1, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l31
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t51 = load ptr, ptr %l26, !tbaa !29
  %t52 = load i32, ptr %l27, !tbaa !23
  %t53 = load i32, ptr %l31, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNameErrVal(ptr %v0, ptr %t51, i32 %t52, i32 %t53)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t54 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t54, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorItemKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, [3 x i64] }
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l28 = alloca i1
  %l32 = alloca i32
  %l41 = alloca { i64, [3 x i64] }
  %l46 = alloca i1
  %l50 = alloca { i64, ptr }
  %l52 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca { i64, [3 x i64] }
  %l59 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l64 = alloca %"compiler/diagmsg:Msg"
  %l65 = alloca i64
  %l70 = alloca i32
  %l76 = alloca ptr
  %l77 = alloca { i64, [3 x i64] }
  %l78 = alloca ptr
  %l80 = alloca ptr
  %l84 = alloca i32
  %l85 = alloca i32
  %l86 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l89 = alloca %"compiler/diagmsg:Msg"
  %l90 = alloca i64
  %l97 = alloca ptr
  %l98 = alloca ptr
  %l100 = alloca %"compiler/source:Span"
  %l102 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca i64
  %l110 = alloca %"compiler/ast:Path"
  %l112 = alloca i32
  %l117 = alloca { i64, ptr }
  %l121 = alloca ptr
  %l125 = alloca i32
  %l126 = alloca { i64, ptr }
  %l132 = alloca i64
  %l135 = alloca i64
  %l153 = alloca { i64, ptr }
  %l158 = alloca i1
  %l159 = alloca ptr
  %l163 = alloca i32
  %l164 = alloca i1
  %l168 = alloca ptr
  %l170 = alloca ptr
  %l174 = alloca i32
  %l175 = alloca i32
  %l176 = alloca { i64, ptr }
  %l180 = alloca ptr
  %l181 = alloca { i64, [3 x i64] }
  %l183 = alloca %"compiler/diagmsg:Msg"
  %l184 = alloca i64
  %l187 = alloca { i64, ptr }
  %l188 = alloca %"compiler/msgs:Nearest"
  %l197 = alloca { i64, ptr }
  %l200 = alloca ptr
  %l203 = alloca { i64, ptr }
  %l208 = alloca ptr
  %l209 = alloca { i64, [3 x i64] }
  %l210 = alloca { i64, ptr }
  %l213 = alloca { i64, ptr }
  %l214 = alloca { i64, ptr }
  %l215 = alloca { i64, ptr }
  %l217 = alloca { i64, ptr }
  %l219 = alloca %"compiler/diagmsg:Msg"
  %l220 = alloca i64
  %l227 = alloca ptr
  %l234 = alloca { i64, ptr }
  %l237 = alloca i64
  %l240 = alloca i64
  %l241 = alloca i64
  %l248 = alloca ptr
  %l249 = alloca { i64, [3 x i64] }
  %l251 = alloca { i64, ptr }
  %l252 = alloca { i64, ptr }
  %l257 = alloca { i64, ptr }
  %l259 = alloca %"compiler/diagmsg:Msg"
  %l260 = alloca i64
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Path", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb4
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t16 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %t10, ptr %t11, ptr %t12)
  store i32 %t16, ptr %l32
  br label %bb3
bb3:
  %t17 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t18 = load i32, ptr %l32, !tbaa !23
  %t20 = icmp ne i32 %t18, %t17
  store i1 %t20, ptr %l28, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l28, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Context", ptr %t25, i32 0, i32 0
  %t28 = load i64, ptr %t27, !tbaa !24
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Path", ptr %t29, i32 0, i32 0
  %t32 = load %"compiler/source:Span", ptr %t31
  %t36 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t24, i64 %t28, %"compiler/source:Span" %t32)
  store { i64, [3 x i64] } %t36, ptr %l41
  br label %bb8
bb8:
  %t37 = load { i64, [3 x i64] }, ptr %l41
  store { i64, [3 x i64] } %t37, ptr %l3
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/ast:Path", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp eq i64 %t43, 1
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Context", ptr %t47, i32 0, i32 2
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/ast:Path", ptr %t50, i32 0, i32 1
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l50, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i32, ptr %t55, i64 0
  %t57 = load i32, ptr %t56, !tbaa !33
  %t60 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v1, ptr %t49, i32 %t57)
  store i1 %t60, ptr %l52
  br label %bb11
bb10:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb12
bb11:
  %t61 = load i1, ptr %l52, !tbaa !21
  store i1 %t61, ptr %l46, !tbaa !21
  br label %bb12
bb12:
  %t62 = load i1, ptr %l46, !tbaa !21
  br i1 %t62, label %bb13, label %bb14
bb13:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/load:Loader", ptr %t66, i32 0, i32 4
  %t69 = load ptr, ptr %t68, !tbaa !29
  store ptr %t69, ptr %l55, !tbaa !29
  %t70 = load { i64, [3 x i64] }, ptr %l3
  store { i64, [3 x i64] } %t70, ptr %l56
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t74 = getelementptr %"compiler/ast:Path", ptr %t72, i32 0, i32 1
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %l59, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i32, ptr %t77, i64 0
  %t79 = load i32, ptr %t78, !tbaa !33
  %t82 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t71, i32 %t79)
  store { i64, ptr } %t82, ptr %l61
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t83 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t84 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t83)
  store { i64, ptr } %t84, ptr %l62
  br label %bb16
bb16:
  %t85 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t93 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNotErrorSet(ptr %v0, ptr %v0, { i64, ptr } %t91)
  store %"compiler/diagmsg:Msg" %t93, ptr %l64
  br label %bb17
bb17:
  %t94 = load ptr, ptr %l55, !tbaa !29
  %t95 = load { i64, [3 x i64] }, ptr %l56
  %t96 = load %"compiler/diagmsg:Msg", ptr %l64
  %t97 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t94, { i64, [3 x i64] } %t95, %"compiler/diagmsg:Msg" %t96)
  store i64 %t97, ptr %l65
  br label %bb18
bb18:
  store i1 false, ptr %rv
  br label %ret
bb19:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t101 = load ptr, ptr %l2, !tbaa !29
  %t105 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamedType(ptr %v0, ptr %v1, ptr %v2, ptr %t99, ptr %t100, ptr %t101)
  store i32 %t105, ptr %l70
  br label %bb20
bb20:
  %t106 = load i32, ptr %l70, !tbaa !23
  store i32 %t106, ptr %l4, !tbaa !23
  %t107 = load i32, ptr %l4, !tbaa !23
  %t108 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t111 = icmp ne i32 %t107, %t108
  br i1 %t111, label %bb21, label %bb22
bb21:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 0
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/load:Loader", ptr %t116, i32 0, i32 4
  %t119 = load ptr, ptr %t118, !tbaa !29
  store ptr %t119, ptr %l76, !tbaa !29
  %t120 = load { i64, [3 x i64] }, ptr %l3
  store { i64, [3 x i64] } %t120, ptr %l77
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l78, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  store ptr %t124, ptr %l80, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/generic:Program", ptr %t125, i32 0, i32 2
  %t128 = load i32, ptr %l4, !tbaa !23
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t127, i32 %t128)
  store i32 %t131, ptr %l84
  br label %bb23
bb22:
  br label %bb29
bb23:
  %t132 = load ptr, ptr %l80, !tbaa !29
  %t133 = load i32, ptr %l84, !tbaa !23
  %t134 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t134, ptr %l85
  br label %bb24
bb24:
  %t135 = load ptr, ptr %l78, !tbaa !29
  %t136 = load i32, ptr %l85, !tbaa !23
  %t137 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t135, i32 %t136)
  store { i64, ptr } %t137, ptr %l86
  br label %bb25
bb25:
  %t138 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t139 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t138)
  store { i64, ptr } %t139, ptr %l87
  br label %bb26
bb26:
  %t140 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  %t142 = extractvalue { i64, ptr } %t140, 1
  %t143 = mul i64 %t141, 1
  %t144 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t143)
  call void @llvm.memcpy.p0.p0.i64(ptr %t144, ptr %t142, i64 %t143, i1 false)
  %t145 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t144, 1
  %t148 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAnErrorType(ptr %v0, ptr %v0, { i64, ptr } %t146)
  store %"compiler/diagmsg:Msg" %t148, ptr %l89
  br label %bb27
bb27:
  %t149 = load ptr, ptr %l76, !tbaa !29
  %t150 = load { i64, [3 x i64] }, ptr %l77
  %t151 = load %"compiler/diagmsg:Msg", ptr %l89
  %t152 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t149, { i64, [3 x i64] } %t150, %"compiler/diagmsg:Msg" %t151)
  store i64 %t152, ptr %l90
  br label %bb28
bb28:
  store i1 false, ptr %rv
  br label %ret
bb29:
  %t154 = load ptr, ptr %l2, !tbaa !29
  %t156 = getelementptr %"compiler/ast:Path", ptr %t154, i32 0, i32 1
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t157, 0
  store i64 %t159, ptr %l5, !tbaa !24
  %t161 = load i64, ptr %l5, !tbaa !24
  %t163 = icmp sge i64 %t161, 2
  br i1 %t163, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s4
  %t165 = load ptr, ptr %l0, !tbaa !29
  store ptr %t165, ptr %l97, !tbaa !29
  %t166 = load ptr, ptr %l1, !tbaa !29
  store ptr %t166, ptr %l98, !tbaa !29
  %t167 = load ptr, ptr %l2, !tbaa !29
  %t169 = getelementptr %"compiler/ast:Path", ptr %t167, i32 0, i32 0
  %t170 = load %"compiler/source:Span", ptr %t169
  store %"compiler/source:Span" %t170, ptr %l100
  %t171 = load ptr, ptr %l2, !tbaa !29
  %t173 = getelementptr %"compiler/ast:Path", ptr %t171, i32 0, i32 1
  %t174 = load { i64, ptr }, ptr %t173, !tbaa !27
  store { i64, ptr } %t174, ptr %l102, !tbaa !27
  %t175 = load i64, ptr %l5, !tbaa !24
  %t177 = sub i64 %t175, 1
  store i64 %t177, ptr %l104, !tbaa !24
  %t178 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 0
  store i64 %t179, ptr %l105, !tbaa !24
  %t180 = icmp sge i64 0, 0
  br i1 %t180, label %bb32, label %bb33
bb31:
  br label %bb88
bb32:
  %t182 = load i64, ptr %l104, !tbaa !24
  %t183 = icmp sle i64 0, %t182
  br i1 %t183, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_1dc2a8cf17e248a5_de4d607536776161)
  unreachable
bb34:
  %t185 = load i64, ptr %l104, !tbaa !24
  %t186 = load i64, ptr %l105, !tbaa !24
  %t187 = icmp sle i64 %t185, %t186
  br i1 %t187, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_1dc2a8cf17e248a5_de4d607536776161)
  unreachable
bb36:
  %t189 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = load i64, ptr %l104, !tbaa !24
  %t192 = getelementptr i32, ptr %t190, i64 0
  %t193 = sub i64 %t191, 0
  %t194 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t192, 1
  %t196 = load %"compiler/source:Span", ptr %l100
  %t198 = call %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v2, ptr %s4, %"compiler/source:Span" %t196, { i64, ptr } %t195)
  store %"compiler/ast:Path" %t198, ptr %l110
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_1dc2a8cf17e248a5_de4d607536776161)
  unreachable
bb38:
  %t199 = load ptr, ptr %l97, !tbaa !29
  %t200 = load ptr, ptr %l98, !tbaa !29
  %t202 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorType(ptr %v0, ptr %v1, ptr %s4, ptr %t199, ptr %t200, ptr %l110)
  store i32 %t202, ptr %l112
  br label %bb39
bb39:
  %t203 = load i32, ptr %l112, !tbaa !23
  store i32 %t203, ptr %l6, !tbaa !23
  %t204 = load i32, ptr %l6, !tbaa !23
  %t205 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t208 = icmp ne i32 %t204, %t205
  br i1 %t208, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s5
  %t210 = load ptr, ptr %l2, !tbaa !29
  %t212 = getelementptr %"compiler/ast:Path", ptr %t210, i32 0, i32 1
  %t213 = load { i64, ptr }, ptr %t212, !tbaa !27
  store { i64, ptr } %t213, ptr %l117, !tbaa !27
  %t214 = load i64, ptr %l5, !tbaa !24
  %t216 = sub i64 %t214, 1
  %t218 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr i32, ptr %t219, i64 %t216
  %t221 = load i32, ptr %t220, !tbaa !33
  store i32 %t221, ptr %l7, !tbaa !23
  %t223 = load ptr, ptr %l0, !tbaa !29
  store ptr %t223, ptr %l121, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/generic:Program", ptr %t224, i32 0, i32 2
  %t227 = load i32, ptr %l6, !tbaa !23
  %t230 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t226, i32 %t227)
  store i32 %t230, ptr %l125
  br label %bb42
bb41:
  br label %bb87
bb42:
  %t231 = load ptr, ptr %l121, !tbaa !29
  %t232 = load i32, ptr %l125, !tbaa !23
  %t233 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s5, ptr %t231, i32 %t232)
  store { i64, ptr } %t233, ptr %l126
  br label %bb43
bb43:
  %t234 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t234, ptr %l8, !tbaa !27
  store i1 false, ptr %l9, !tbaa !21
  store i64 0, ptr %l10, !tbaa !24
  %t235 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t235, 0
  store i64 %t237, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t239 = load i64, ptr %l11, !tbaa !24
  %t240 = load i64, ptr %l10, !tbaa !24
  %t243 = icmp sgt i64 %t239, %t240
  br i1 %t243, label %bb44, label %bb45
bb44:
  %t245 = load i64, ptr %l12, !tbaa !24
  %t247 = icmp sgt i64 %t245, 0
  br i1 %t247, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l132, !tbaa !24
  br label %bb49
bb46:
  %t249 = load i64, ptr %l11, !tbaa !24
  %t250 = load i64, ptr %l10, !tbaa !24
  %t253 = sub i64 %t249, %t250
  %t254 = load i64, ptr %l12, !tbaa !24
  %t257 = add i64 %t253, %t254
  %t259 = sub i64 %t257, 1
  %t260 = load i64, ptr %l12, !tbaa !24
  %t263 = sdiv i64 %t259, %t260
  store i64 %t263, ptr %l135, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l135, !tbaa !24
  br label %bb48
bb48:
  %t265 = load i64, ptr %l135, !tbaa !24
  store i64 %t265, ptr %l132, !tbaa !24
  br label %bb49
bb49:
  %t266 = load i64, ptr %l132, !tbaa !24
  store i64 %t266, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb50
bb50:
  %t267 = load i64, ptr %l14, !tbaa !24
  %t268 = load i64, ptr %l13, !tbaa !24
  %t271 = icmp slt i64 %t267, %t268
  %t273 = xor i1 %t271, true
  br i1 %t273, label %bb51, label %bb52
bb51:
  br label %bb63
bb52:
  br label %bb53
bb53:
  %t275 = load i64, ptr %l10, !tbaa !24
  %t276 = load i64, ptr %l14, !tbaa !24
  %t277 = load i64, ptr %l12, !tbaa !24
  %t280 = mul i64 %t276, %t277
  %t283 = add i64 %t275, %t280
  %t285 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t285, ptr %l153, !tbaa !27
  %t288 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !27
  %t290 = getelementptr i32, ptr %t289, i64 %t283
  %t291 = load i32, ptr %t290, !tbaa !33
  %t292 = load i32, ptr %l7, !tbaa !23
  %t295 = icmp eq i32 %t291, %t292
  br i1 %t295, label %bb54, label %bb55
bb54:
  %t297 = load ptr, ptr %l0, !tbaa !29
  store ptr %t297, ptr %l159, !tbaa !29
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/generic:Program", ptr %t298, i32 0, i32 2
  %t301 = load i32, ptr %l6, !tbaa !23
  %t304 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t300, i32 %t301)
  store i32 %t304, ptr %l163
  br label %bb56
bb55:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb58
bb56:
  %t305 = load ptr, ptr %l159, !tbaa !29
  %t306 = load i32, ptr %l163, !tbaa !23
  %t307 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t305, i32 %t306)
  store i1 %t307, ptr %l164
  br label %bb57
bb57:
  %t308 = load i1, ptr %l164, !tbaa !21
  %t309 = xor i1 %t308, true
  store i1 %t309, ptr %l158, !tbaa !21
  br label %bb58
bb58:
  %t311 = load i1, ptr %l158, !tbaa !21
  br i1 %t311, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb61
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t312 = load i64, ptr %l14, !tbaa !24
  %t314 = add i64 %t312, 1
  store i64 %t314, ptr %l14, !tbaa !24
  br label %bb50
bb63:
  %t316 = load ptr, ptr %l0, !tbaa !29
  store ptr %t316, ptr %l168, !tbaa !29
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/generic:Program", ptr %t317, i32 0, i32 2
  store ptr %t319, ptr %l170, !tbaa !29
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/generic:Program", ptr %t320, i32 0, i32 2
  %t323 = load i32, ptr %l6, !tbaa !23
  %t326 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t322, i32 %t323)
  store i32 %t326, ptr %l174
  br label %bb64
bb64:
  %t327 = load ptr, ptr %l170, !tbaa !29
  %t328 = load i32, ptr %l174, !tbaa !23
  %t329 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t327, i32 %t328)
  store i32 %t329, ptr %l175
  br label %bb65
bb65:
  %t330 = load ptr, ptr %l168, !tbaa !29
  %t331 = load i32, ptr %l175, !tbaa !23
  %t332 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t330, i32 %t331)
  store { i64, ptr } %t332, ptr %l176
  br label %bb66
bb66:
  %t333 = load { i64, ptr }, ptr %l176, !tbaa !27
  store { i64, ptr } %t333, ptr %l16, !tbaa !27
  %t334 = load i1, ptr %l9, !tbaa !21
  br i1 %t334, label %bb67, label %bb68
bb67:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/generic:Program", ptr %t336, i32 0, i32 0
  %t339 = load ptr, ptr %t338, !tbaa !29
  %t341 = getelementptr %"compiler/load:Loader", ptr %t339, i32 0, i32 4
  %t342 = load ptr, ptr %t341, !tbaa !29
  store ptr %t342, ptr %l180, !tbaa !29
  %t343 = load { i64, [3 x i64] }, ptr %l3
  store { i64, [3 x i64] } %t343, ptr %l181
  %t344 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t346 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordTooFar(ptr %v0, ptr %v0, { i64, ptr } %t344)
  store %"compiler/diagmsg:Msg" %t346, ptr %l183
  br label %bb69
bb68:
  store %olang.scope zeroinitializer, ptr %s11
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load i32, ptr %l7, !tbaa !23
  %t351 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t347, i32 %t348)
  store { i64, ptr } %t351, ptr %l187
  br label %bb71
bb69:
  %t352 = load ptr, ptr %l180, !tbaa !29
  %t353 = load { i64, [3 x i64] }, ptr %l181
  %t354 = load %"compiler/diagmsg:Msg", ptr %l183
  %t355 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t352, { i64, [3 x i64] } %t353, %"compiler/diagmsg:Msg" %t354)
  store i64 %t355, ptr %l184
  br label %bb70
bb70:
  br label %bb86
bb71:
  %t356 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t357 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s11, { i64, ptr } %t356)
  store %"compiler/msgs:Nearest" %t357, ptr %l188
  br label %bb72
bb72:
  %t358 = load %"compiler/msgs:Nearest", ptr %l188
  %t359 = call ptr @__olang_scope_alloc_a(ptr %s11, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t358, ptr %t359
  store ptr %t359, ptr %l17, !tbaa !29
  %t361 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t361, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t363 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t363, 0
  store i64 %t365, ptr %l20, !tbaa !24
  br label %bb73
bb73:
  %t367 = load i64, ptr %l19, !tbaa !24
  %t368 = load i64, ptr %l20, !tbaa !24
  %t371 = icmp slt i64 %t367, %t368
  %t373 = xor i1 %t371, true
  br i1 %t373, label %bb74, label %bb75
bb74:
  br label %bb80
bb75:
  br label %bb76
bb76:
  %t375 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t375, ptr %l197, !tbaa !27
  %t376 = load i64, ptr %l19, !tbaa !24
  %t378 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !27
  %t380 = getelementptr i32, ptr %t379, i64 %t376
  %t381 = load i32, ptr %t380, !tbaa !33
  %t383 = load ptr, ptr %l17, !tbaa !29
  store ptr %t383, ptr %l200, !tbaa !29
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t388 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t384, i32 %t381)
  store { i64, ptr } %t388, ptr %l203
  br label %bb77
bb77:
  %t389 = load ptr, ptr %l200, !tbaa !29
  %t390 = load { i64, ptr }, ptr %l203, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s11, ptr %v0, ptr %t389, { i64, ptr } %t390)
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t391 = load i64, ptr %l19, !tbaa !24
  %t393 = add i64 %t391, 1
  store i64 %t393, ptr %l19, !tbaa !24
  br label %bb73
bb80:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = getelementptr %"compiler/generic:Program", ptr %t395, i32 0, i32 0
  %t398 = load ptr, ptr %t397, !tbaa !29
  %t400 = getelementptr %"compiler/load:Loader", ptr %t398, i32 0, i32 4
  %t401 = load ptr, ptr %t400, !tbaa !29
  store ptr %t401, ptr %l208, !tbaa !29
  %t402 = load { i64, [3 x i64] }, ptr %l3
  store { i64, [3 x i64] } %t402, ptr %l209
  %t403 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t403, ptr %l210, !tbaa !27
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load i32, ptr %l7, !tbaa !23
  %t408 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t404, i32 %t405)
  store { i64, ptr } %t408, ptr %l213
  br label %bb81
bb81:
  %t409 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t410 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t409)
  store { i64, ptr } %t410, ptr %l214
  br label %bb82
bb82:
  %t411 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t412 = extractvalue { i64, ptr } %t411, 0
  %t413 = extractvalue { i64, ptr } %t411, 1
  %t414 = mul i64 %t412, 1
  %t415 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t414)
  call void @llvm.memcpy.p0.p0.i64(ptr %t415, ptr %t413, i64 %t414, i1 false)
  %t416 = insertvalue { i64, ptr } undef, i64 %t412, 0
  %t417 = insertvalue { i64, ptr } %t416, ptr %t415, 1
  store { i64, ptr } %t417, ptr %l215, !tbaa !27
  %t418 = load ptr, ptr %l17, !tbaa !29
  %t420 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s11, ptr %v0, ptr %t418)
  store { i64, ptr } %t420, ptr %l217
  br label %bb83
bb83:
  %t421 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t422 = extractvalue { i64, ptr } %t421, 0
  %t423 = extractvalue { i64, ptr } %t421, 1
  %t424 = mul i64 %t422, 1
  %t425 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t424)
  call void @llvm.memcpy.p0.p0.i64(ptr %t425, ptr %t423, i64 %t424, i1 false)
  %t426 = insertvalue { i64, ptr } undef, i64 %t422, 0
  %t427 = insertvalue { i64, ptr } %t426, ptr %t425, 1
  %t428 = load { i64, ptr }, ptr %l210, !tbaa !27
  %t429 = load { i64, ptr }, ptr %l215, !tbaa !27
  %t431 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchErrorWord(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t428, { i64, ptr } %t429, { i64, ptr } %t427)
  store %"compiler/diagmsg:Msg" %t431, ptr %l219
  br label %bb84
bb84:
  %t432 = load ptr, ptr %l208, !tbaa !29
  %t433 = load { i64, [3 x i64] }, ptr %l209
  %t434 = load %"compiler/diagmsg:Msg", ptr %l219
  %t435 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t432, { i64, [3 x i64] } %t433, %"compiler/diagmsg:Msg" %t434)
  store i64 %t435, ptr %l220
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s11)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  store i1 false, ptr %rv
  br label %ret
bb87:
  call void @__olang_scope_close(ptr %s4)
  br label %bb88
bb88:
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t439 = getelementptr %"compiler/generic:Program", ptr %t437, i32 0, i32 0
  %t440 = load ptr, ptr %t439, !tbaa !29
  %t442 = getelementptr %"compiler/load:Loader", ptr %t440, i32 0, i32 10
  %t443 = load ptr, ptr %l1, !tbaa !29
  %t445 = getelementptr %"compiler/generic:Context", ptr %t443, i32 0, i32 0
  %t446 = load i64, ptr %t445, !tbaa !24
  %t449 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t442, i64 %t446)
  store ptr %t449, ptr %l227
  br label %bb89
bb89:
  %t450 = load ptr, ptr %l227, !tbaa !29
  %t452 = getelementptr %"compiler/load:Module", ptr %t450, i32 0, i32 6
  %t453 = load ptr, ptr %t452, !tbaa !29
  store ptr %t453, ptr %l22, !tbaa !29
  %t455 = load ptr, ptr %l22, !tbaa !29
  %t457 = icmp eq ptr %t455, null
  br i1 %t457, label %bb90, label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_f1cf7ccb88a76b40_782fc340d5d627c)
  unreachable
bb91:
  br label %bb92
bb92:
  %t459 = load ptr, ptr %l22, !tbaa !29
  %t462 = getelementptr %"compiler/source:Source", ptr %t459, i32 0, i32 1
  %t463 = load { i64, ptr }, ptr %t462, !tbaa !27
  store { i64, ptr } %t463, ptr %l234, !tbaa !27
  %t464 = load ptr, ptr %l2, !tbaa !29
  %t466 = getelementptr %"compiler/ast:Path", ptr %t464, i32 0, i32 0
  %t467 = getelementptr %"compiler/source:Span", ptr %t466, i32 0, i32 0
  %t468 = load i32, ptr %t467, !tbaa !23
  %t470 = sext i32 %t468 to i64
  store i64 %t470, ptr %l237, !tbaa !24
  %t471 = load ptr, ptr %l2, !tbaa !29
  %t473 = getelementptr %"compiler/ast:Path", ptr %t471, i32 0, i32 0
  %t474 = getelementptr %"compiler/source:Span", ptr %t473, i32 0, i32 1
  %t475 = load i32, ptr %t474, !tbaa !23
  %t477 = sext i32 %t475 to i64
  store i64 %t477, ptr %l240, !tbaa !24
  %t478 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t479 = extractvalue { i64, ptr } %t478, 0
  store i64 %t479, ptr %l241, !tbaa !24
  %t480 = load i64, ptr %l237, !tbaa !24
  %t481 = icmp sge i64 %t480, 0
  br i1 %t481, label %bb93, label %bb94
bb93:
  %t483 = load i64, ptr %l237, !tbaa !24
  %t484 = load i64, ptr %l240, !tbaa !24
  %t485 = icmp sle i64 %t483, %t484
  br i1 %t485, label %bb95, label %bb96
bb94:
  call void @__olang_check_failed(ptr @olang_loc_7655d9c19e1e4e63_9fb1b21e00b7825f)
  unreachable
bb95:
  %t487 = load i64, ptr %l240, !tbaa !24
  %t488 = load i64, ptr %l241, !tbaa !24
  %t489 = icmp sle i64 %t487, %t488
  br i1 %t489, label %bb97, label %bb98
bb96:
  call void @__olang_check_failed(ptr @olang_loc_7655d9c19e1e4e63_9fb1b21e00b7825f)
  unreachable
bb97:
  %t491 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t492 = load ptr, ptr %t491, !tbaa !27
  %t493 = load i64, ptr %l237, !tbaa !24
  %t494 = load i64, ptr %l240, !tbaa !24
  %t495 = getelementptr i8, ptr %t492, i64 %t493
  %t496 = sub i64 %t494, %t493
  %t497 = insertvalue { i64, ptr } undef, i64 %t496, 0
  %t498 = insertvalue { i64, ptr } %t497, ptr %t495, 1
  store { i64, ptr } %t498, ptr %l23, !tbaa !27
  %t500 = load ptr, ptr %l0, !tbaa !29
  %t502 = getelementptr %"compiler/generic:Program", ptr %t500, i32 0, i32 0
  %t503 = load ptr, ptr %t502, !tbaa !29
  %t505 = getelementptr %"compiler/load:Loader", ptr %t503, i32 0, i32 4
  %t506 = load ptr, ptr %t505, !tbaa !29
  store ptr %t506, ptr %l248, !tbaa !29
  %t507 = load { i64, [3 x i64] }, ptr %l3
  store { i64, [3 x i64] } %t507, ptr %l249
  %t508 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t510 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t508)
  store { i64, ptr } %t510, ptr %l251
  br label %bb99
bb98:
  call void @__olang_check_failed(ptr @olang_loc_7655d9c19e1e4e63_9fb1b21e00b7825f)
  unreachable
bb99:
  %t511 = load { i64, ptr }, ptr %l251, !tbaa !27
  %t512 = extractvalue { i64, ptr } %t511, 0
  %t513 = extractvalue { i64, ptr } %t511, 1
  %t514 = mul i64 %t512, 1
  %t515 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t514)
  call void @llvm.memcpy.p0.p0.i64(ptr %t515, ptr %t513, i64 %t514, i1 false)
  %t516 = insertvalue { i64, ptr } undef, i64 %t512, 0
  %t517 = insertvalue { i64, ptr } %t516, ptr %t515, 1
  store { i64, ptr } %t517, ptr %l252, !tbaa !27
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t519 = load ptr, ptr %l1, !tbaa !29
  %t521 = getelementptr %"compiler/generic:Context", ptr %t519, i32 0, i32 0
  %t522 = load i64, ptr %t521, !tbaa !24
  %t523 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t527 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorTypeHint(ptr %v0, ptr %v0, ptr %v0, ptr %t518, i64 %t522, { i64, ptr } %t523)
  store { i64, ptr } %t527, ptr %l257
  br label %bb100
bb100:
  %t528 = load { i64, ptr }, ptr %l257, !tbaa !27
  %t529 = extractvalue { i64, ptr } %t528, 0
  %t530 = extractvalue { i64, ptr } %t528, 1
  %t531 = mul i64 %t529, 1
  %t532 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t531)
  call void @llvm.memcpy.p0.p0.i64(ptr %t532, ptr %t530, i64 %t531, i1 false)
  %t533 = insertvalue { i64, ptr } undef, i64 %t529, 0
  %t534 = insertvalue { i64, ptr } %t533, ptr %t532, 1
  %t535 = load { i64, ptr }, ptr %l252, !tbaa !27
  %t537 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownErrorType(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t535, { i64, ptr } %t534)
  store %"compiler/diagmsg:Msg" %t537, ptr %l259
  br label %bb101
bb101:
  %t538 = load ptr, ptr %l248, !tbaa !29
  %t539 = load { i64, [3 x i64] }, ptr %l249
  %t540 = load %"compiler/diagmsg:Msg", ptr %l259
  %t541 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t538, { i64, [3 x i64] } %t539, %"compiler/diagmsg:Msg" %t540)
  store i64 %t541, ptr %l260
  br label %bb102
bb102:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l13 = alloca i1
  %l18 = alloca { i64, ptr }
  %l21 = alloca i1
  %l29 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/generic:Program", ptr %t2, i32 0, i32 2
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t4, i32 %t5)
  store i32 %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l5, !tbaa !29
  %t10 = load i32, ptr %l9, !tbaa !23
  %t11 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t9, i32 %t10)
  store { i64, ptr } %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t12, ptr %l3, !tbaa !27
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l13
  br label %bb3
bb3:
  %t18 = load i1, ptr %l13, !tbaa !21
  br i1 %t18, label %bb4, label %bb5
bb4:
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t21, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t27, i32 %t28)
  store { i64, ptr } %t31, ptr %l18
  br label %bb7
bb7:
  %t32 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t32, ptr %l4, !tbaa !27
  %t33 = load i64, ptr %l2, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  br i1 %t35, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb10
bb9:
  %t37 = load i64, ptr %l2, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t43 = icmp sge i64 %t37, %t40
  store i1 %t43, ptr %l21, !tbaa !21
  br label %bb10
bb10:
  %t45 = load i1, ptr %l21, !tbaa !21
  br i1 %t45, label %bb11, label %bb12
bb11:
  %t46 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t47 = load i64, ptr %l2, !tbaa !24
  %t49 = extractvalue { i64, ptr } %t46, 1
  %t50 = extractvalue { i64, ptr } %t46, 0
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t53 = add i64 %t50, %t52
  %t55 = call i64 @__olang_fmt_i64(ptr null, i64 %t47)
  %t56 = add i64 %t53, %t55
  %t57 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t56)
  call void @olang_textcopy(ptr %t57, ptr %t49, i64 %t50)
  %t58 = getelementptr i8, ptr %t57, i64 %t50
  call void @olang_textcopy(ptr %t58, ptr %t51, i64 %t52)
  %t59 = getelementptr i8, ptr %t58, i64 %t52
  %t60 = call i64 @__olang_fmt_i64(ptr %t59, i64 %t47)
  %t61 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t57, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t62, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t64 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t64, ptr %l29, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t66, ptr %l31, !tbaa !27
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i32, ptr %t70, i64 %t67
  %t72 = load i32, ptr %t71, !tbaa !33
  %t75 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s0, ptr %t65, i32 %t72)
  store { i64, ptr } %t75, ptr %l34
  br label %bb14
bb14:
  %t76 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t81 = add i64 %t78, %t80
  %t82 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = add i64 %t81, %t84
  %t86 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t85)
  call void @olang_textcopy(ptr %t86, ptr %t77, i64 %t78)
  %t87 = getelementptr i8, ptr %t86, i64 %t78
  call void @olang_textcopy(ptr %t87, ptr %t79, i64 %t80)
  %t88 = getelementptr i8, ptr %t87, i64 %t80
  call void @olang_textcopy(ptr %t88, ptr %t83, i64 %t84)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t86, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t90, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i64
  %l19 = alloca i32
  %l20 = alloca i64
  %l27 = alloca i32
  %rv = alloca { i32, i32 }
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
  store i32 %t11, ptr %l11
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb3, label %ok.13, !prof !99
ok.13:
  store i64 %t10, ptr %l10
  br label %bb2
bb2:
  %t14 = load i64, ptr %l10, !tbaa !24
  store i64 %t14, ptr %l6, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  %t16 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t16, ptr %rv
  br label %ret
bb5:
  %t17 = load i64, ptr %l6, !tbaa !24
  store i64 %t17, ptr %l3, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l13, !tbaa !29
  %t19 = load i64, ptr %l3, !tbaa !24
  store i64 %t19, ptr %l14, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/load:Loader", ptr %t23, i32 0, i32 3
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t30 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v2, ptr %t26, { i64, ptr } %a2)
  store i32 %t30, ptr %l19
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l13, !tbaa !29
  %t32 = load i64, ptr %l14, !tbaa !24
  %t33 = load i32, ptr %l19, !tbaa !23
  %t34 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t31, i64 %t32, i32 %t33)
  store i64 %t34, ptr %l20
  br label %bb7
bb7:
  %t35 = load i64, ptr %l20, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t38 = icmp slt i64 %t36, 0
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t41 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t41, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t48 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t42, i64 %t43, i64 %t44)
  store i32 %t48, ptr %l27
  br label %bb11
bb11:
  %t49 = load i32, ptr %l27, !tbaa !23
  %t50 = insertvalue { i32, i32 } zeroinitializer, i32 %t49, 1
  store { i32, i32 } %t50, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l12 = alloca i32
  %l19 = alloca i1
  %l23 = alloca i1
  %l25 = alloca i1
  %l29 = alloca i1
  %l35 = alloca i64
  %l39 = alloca i64
  %l43 = alloca i1
  %l44 = alloca i1
  %l48 = alloca i1
  %l52 = alloca i1
  %l53 = alloca i1
  %l57 = alloca i1
  %l63 = alloca i1
  %l69 = alloca i1
  %l73 = alloca i1
  %l81 = alloca i1
  %l82 = alloca i1
  %l86 = alloca i1
  %l88 = alloca i1
  %rv = alloca i1
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
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enumberOf(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l12
  br label %bb4
bb4:
  %t13 = load i32, ptr %l12, !tbaa !23
  store i32 %t13, ptr %l3, !tbaa !23
  %t14 = load i32, ptr %l3, !tbaa !23
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = icmp ne i32 %t14, %t15
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l3, !tbaa !23
  %t22 = load i32, ptr %l2, !tbaa !23
  %t26 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %t20, i32 %t21, i32 %t22)
  store i1 %t26, ptr %l19
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t27 = load i1, ptr %l19, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t30, i32 %t31)
  store i1 %t34, ptr %l23
  br label %bb9
bb9:
  %t35 = load i1, ptr %l23, !tbaa !21
  %t36 = xor i1 %t35, true
  br i1 %t36, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb13
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l2, !tbaa !23
  %t44 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t44, ptr %l29
  br label %bb12
bb12:
  %t45 = load i1, ptr %l29, !tbaa !21
  %t46 = xor i1 %t45, true
  store i1 %t46, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t48 = load i1, ptr %l25, !tbaa !21
  br i1 %t48, label %bb14, label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l1, !tbaa !23
  %t56 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t52, i32 %t53)
  store i64 %t56, ptr %l35
  br label %bb17
bb17:
  %t57 = load i64, ptr %l35, !tbaa !24
  store i64 %t57, ptr %l4, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %l2, !tbaa !23
  %t64 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t60, i32 %t61)
  store i64 %t64, ptr %l39
  br label %bb18
bb18:
  %t65 = load i64, ptr %l39, !tbaa !24
  store i64 %t65, ptr %l5, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l1, !tbaa !23
  %t72 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t68, i32 %t69)
  store i1 %t72, ptr %l43
  br label %bb19
bb19:
  %t73 = load i1, ptr %l43, !tbaa !21
  br i1 %t73, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb23
bb21:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %l2, !tbaa !23
  %t80 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t76, i32 %t77)
  store i1 %t80, ptr %l48
  br label %bb22
bb22:
  %t81 = load i1, ptr %l48, !tbaa !21
  store i1 %t81, ptr %l44, !tbaa !21
  br label %bb23
bb23:
  %t82 = load i1, ptr %l44, !tbaa !21
  br i1 %t82, label %bb24, label %bb25
bb24:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  %t86 = load i32, ptr %l1, !tbaa !23
  %t89 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t85, i32 %t86)
  store i1 %t89, ptr %l52
  br label %bb26
bb25:
  br label %bb37
bb26:
  %t90 = load i1, ptr %l52, !tbaa !21
  br i1 %t90, label %bb27, label %bb28
bb27:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l2, !tbaa !23
  %t97 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t93, i32 %t94)
  store i1 %t97, ptr %l57
  br label %bb29
bb28:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb30
bb29:
  %t98 = load i1, ptr %l57, !tbaa !21
  store i1 %t98, ptr %l53, !tbaa !21
  br label %bb30
bb30:
  %t99 = load i1, ptr %l53, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb31, label %bb32
bb31:
  store i1 false, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t103 = load i64, ptr %l4, !tbaa !24
  %t104 = load i64, ptr %l5, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  br i1 %t107, label %bb34, label %bb35
bb34:
  %t109 = load i64, ptr %l5, !tbaa !24
  %t111 = icmp sge i64 %t109, 32
  store i1 %t111, ptr %l63, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb36
bb36:
  %t113 = load i1, ptr %l63, !tbaa !21
  store i1 %t113, ptr %rv
  br label %ret
bb37:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = load i32, ptr %l1, !tbaa !23
  %t120 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t116, i32 %t117)
  store i1 %t120, ptr %l69
  br label %bb38
bb38:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Program", ptr %t121, i32 0, i32 2
  %t124 = load i32, ptr %l2, !tbaa !23
  %t127 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t123, i32 %t124)
  store i1 %t127, ptr %l73
  br label %bb39
bb39:
  %t128 = load i1, ptr %l69, !tbaa !21
  %t129 = load i1, ptr %l73, !tbaa !21
  %t130 = icmp eq i1 %t128, %t129
  br i1 %t130, label %bb40, label %bb41
bb40:
  %t132 = load i64, ptr %l4, !tbaa !24
  %t133 = load i64, ptr %l5, !tbaa !24
  %t136 = icmp slt i64 %t132, %t133
  store i1 %t136, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 2
  %t141 = load i32, ptr %l1, !tbaa !23
  %t144 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t140, i32 %t141)
  store i1 %t144, ptr %l81
  br label %bb43
bb43:
  %t145 = load i1, ptr %l81, !tbaa !21
  br i1 %t145, label %bb44, label %bb45
bb44:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 2
  %t149 = load i32, ptr %l2, !tbaa !23
  %t152 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t148, i32 %t149)
  store i1 %t152, ptr %l86
  br label %bb46
bb45:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb47
bb46:
  %t153 = load i1, ptr %l86, !tbaa !21
  %t154 = xor i1 %t153, true
  store i1 %t154, ptr %l82, !tbaa !21
  br label %bb47
bb47:
  %t156 = load i1, ptr %l82, !tbaa !21
  br i1 %t156, label %bb48, label %bb49
bb48:
  %t157 = load i64, ptr %l4, !tbaa !24
  %t158 = load i64, ptr %l5, !tbaa !24
  %t161 = icmp slt i64 %t157, %t158
  store i1 %t161, ptr %l88, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb50
bb50:
  %t163 = load i1, ptr %l88, !tbaa !21
  store i1 %t163, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:fnRow"
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 29
  %t7 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s0, ptr %t3, i64 %a1)
  store %"compiler/generic:fnRow" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:fnRow", ptr %l5, i32 0, i32 2
  %t9 = load i1, ptr %t8, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/generic:folded"
  %l8 = alloca %"compiler/generic:folded"
  %l13 = alloca ptr
  %l14 = alloca i32
  %l18 = alloca i64
  %l19 = alloca i32
  %l21 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %a1, ptr %a2)
  store %"compiler/generic:folded" %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:folded", ptr %l8
  store %"compiler/generic:folded" %t8, ptr %l4
  %t9 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t14 = icmp eq i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  store ptr %t18, ptr %l13, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  store i32 %t19, ptr %l14, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 1
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = load i32, ptr %l3, !tbaa !23
  %t27 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t20, i64 %t22, i32 %t23)
  store i64 %t27, ptr %l18
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t28 = load ptr, ptr %l13, !tbaa !29
  %t29 = load i32, ptr %l14, !tbaa !23
  %t30 = load i64, ptr %l18, !tbaa !24
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t28, i32 %t29, i64 %t30)
  store i32 %t31, ptr %l19
  br label %bb5
bb5:
  %t32 = load i32, ptr %l19, !tbaa !23
  store i32 %t32, ptr %rv
  br label %ret
bb6:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnknownConst(ptr %v0, ptr %t33)
  store i32 %t35, ptr %l21
  br label %bb7
bb7:
  %t36 = load i32, ptr %l21, !tbaa !23
  store i32 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenElem(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 19
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t8, i64 %t9)
  %t13 = extractvalue { i32, i64 } %t12, 1
  %t14 = extractvalue { i32, i64 } %t12, 0
  store i32 %t14, ptr %l10
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb3, label %ok.16, !prof !99
ok.16:
  store i64 %t13, ptr %l9
  br label %bb2
bb2:
  %t17 = load i64, ptr %l9, !tbaa !24
  store i64 %t17, ptr %l5, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  %t18 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenPerTurn, !tbaa !24
  store i64 %t18, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t20 = load i64, ptr %l5, !tbaa !24
  store i64 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i32
  %l18 = alloca %"compiler/generic:Context"
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l32 = alloca i1
  %l43 = alloca i64
  %l46 = alloca i64
  %l70 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l79 = alloca %"compiler/generic:Context"
  %t11 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load i32, ptr %l15, !tbaa !23
  store i32 %t8, ptr %l2, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t11, ptr %v0, ptr %v1, ptr %t9, i32 %t10)
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t11, i64 160, i1 false)
  br label %bb2
bb2:
  %t14 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 160, i64 8)
  store ptr %t14, ptr %lp3
  %t15 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %l18, i64 160, i1 false)
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t16, i32 %t17)
  store ptr %t20, ptr %l21
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l21, !tbaa !29
  store ptr %t21, ptr %l4, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  store ptr %t24, ptr %l23, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l27
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l23, !tbaa !29
  %t33 = load i32, ptr %l27, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t32, i32 %t33)
  store { i64, ptr } %t34, ptr %l28
  br label %bb5
bb5:
  %t35 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t35, ptr %l5, !tbaa !27
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb6, label %bb7
bb6:
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t44 = getelementptr %"compiler/ast:TypeDecl", ptr %t42, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = icmp sgt i64 %t47, 0
  store i1 %t49, ptr %l32, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb8
bb8:
  %t51 = load i1, ptr %l32, !tbaa !21
  br i1 %t51, label %bb9, label %bb10
bb9:
  store i64 0, ptr %l6, !tbaa !24
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t54 = getelementptr %"compiler/ast:TypeDecl", ptr %t52, i32 0, i32 1
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  store i64 %t57, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = icmp sgt i64 %t59, %t60
  br i1 %t63, label %bb11, label %bb12
bb10:
  br label %bb27
bb11:
  %t65 = load i64, ptr %l8, !tbaa !24
  %t67 = icmp sgt i64 %t65, 0
  br i1 %t67, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb16
bb13:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = sub i64 %t69, %t70
  %t74 = load i64, ptr %l8, !tbaa !24
  %t77 = add i64 %t73, %t74
  %t79 = sub i64 %t77, 1
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = sdiv i64 %t79, %t80
  store i64 %t83, ptr %l46, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb15
bb15:
  %t85 = load i64, ptr %l46, !tbaa !24
  store i64 %t85, ptr %l43, !tbaa !24
  br label %bb16
bb16:
  %t86 = load i64, ptr %l43, !tbaa !24
  store i64 %t86, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb17
bb17:
  %t87 = load i64, ptr %l10, !tbaa !24
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = icmp slt i64 %t87, %t88
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb18, label %bb19
bb18:
  br label %bb26
bb19:
  br label %bb20
bb20:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = load i64, ptr %l10, !tbaa !24
  %t97 = load i64, ptr %l8, !tbaa !24
  %t100 = mul i64 %t96, %t97
  %t103 = add i64 %t95, %t100
  store i64 %t103, ptr %l11, !tbaa !24
  %t105 = load i64, ptr %l11, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t111 = icmp slt i64 %t105, %t108
  br i1 %t111, label %bb21, label %bb22
bb21:
  %t113 = load ptr, ptr %lp3
  %t114 = getelementptr %"compiler/generic:Context", ptr %t113, i32 0, i32 2
  %t115 = load ptr, ptr %l4, !tbaa !29
  %t117 = getelementptr %"compiler/ast:TypeDecl", ptr %t115, i32 0, i32 1
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  store { i64, ptr } %t118, ptr %l70, !tbaa !27
  %t119 = load i64, ptr %l11, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr ptr, ptr %t122, i64 %t119
  %t124 = load ptr, ptr %t123, !tbaa !39
  %t126 = getelementptr %"compiler/ast:TypeParam", ptr %t124, i32 0, i32 1
  %t127 = load i32, ptr %t126, !tbaa !23
  %t128 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t128, ptr %l74, !tbaa !27
  %t129 = load i64, ptr %l11, !tbaa !24
  %t131 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i32, ptr %t132, i64 %t129
  %t134 = load i32, ptr %t133, !tbaa !33
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v1, ptr %t114, i32 %t127, i32 %t134)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t138 = load i64, ptr %l10, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l10, !tbaa !24
  br label %bb17
bb26:
  br label %bb27
bb27:
  %t142 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l79, ptr %t142, i64 160, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l79, i64 160, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMember(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
  %l19 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l30 = alloca i32
  %l33 = alloca i1
  %l42 = alloca { i64, ptr }
  %l49 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load i32, ptr %l2, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 21
  %t15 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H78bce58497ad959bdf5762dbe74df8e1(ptr %v0, ptr %t11, i32 %t7)
  store i1 %t15, ptr %l18
  br label %bb2
bb2:
  %t16 = load i1, ptr %l18, !tbaa !21
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 21
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hfa58d934e2b7178f7b33766972648144(ptr %v0, ptr %v0, ptr %t19, i32 %t20)
  %t24 = extractvalue { i32, ptr } %t23, 1
  %t25 = extractvalue { i32, ptr } %t23, 0
  store i32 %t25, ptr %l24
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb6, label %ok.27, !prof !99
ok.27:
  store ptr %t24, ptr %l23
  br label %bb5
bb4:
  br label %bb15
bb5:
  %t28 = load ptr, ptr %l23, !tbaa !29
  store ptr %t28, ptr %l19, !tbaa !29
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t29 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l25
  br label %bb8
bb8:
  %t30 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25
  %t31 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t30, ptr %t31
  store ptr %t31, ptr %l19, !tbaa !29
  br label %bb9
bb9:
  %t33 = load ptr, ptr %l19, !tbaa !29
  store ptr %t33, ptr %l5, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l30
  br label %bb10
bb10:
  %t41 = load i32, ptr %l30, !tbaa !23
  %t42 = load ptr, ptr %l5, !tbaa !29
  %t46 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %t42, i32 %t41)
  store i1 %t46, ptr %l33
  br label %bb11
bb11:
  %t47 = load i1, ptr %l33, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t49 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t49, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  store i64 %t53, ptr %l9, !tbaa !24
  br label %bb16
bb16:
  %t55 = load i64, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l9, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb17, label %bb18
bb17:
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t63 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t63, ptr %l42, !tbaa !27
  %t64 = load i64, ptr %l8, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i32, ptr %t67, i64 %t64
  %t69 = load i32, ptr %t68, !tbaa !33
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l1, !tbaa !23
  %t79 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t73, i32 %t74, i32 %t69)
  store i1 %t79, ptr %l49
  br label %bb20
bb20:
  %t80 = load i1, ptr %l49, !tbaa !21
  br i1 %t80, label %bb21, label %bb22
bb21:
  store i1 true, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t82 = load i64, ptr %l8, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l8, !tbaa !24
  br label %bb16
bb25:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOverlap(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/generic:fnRow"
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca %"compiler/generic:fnRow"
  %l13 = alloca ptr
  %l14 = alloca i64
  %l24 = alloca i64
  %l28 = alloca i64
  %l30 = alloca ptr
  %l35 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l36 = alloca i64
  %l37 = alloca i32
  %l40 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i1
  %l52 = alloca i1
  %l53 = alloca ptr
  %l56 = alloca i32
  %l59 = alloca i32
  %l60 = alloca i1
  %l62 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i32
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
  %t9 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/ast:Func", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l13, !tbaa !29
  %t19 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  store i64 %t20, ptr %l14, !tbaa !24
  %t21 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/ast:Func", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  br i1 %t27, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_68cd11c72d3db33f_352ec9aa512a8333)
  unreachable
bb6:
  br label %bb7
bb7:
  %t29 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/ast:Func", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t36 = getelementptr %"compiler/ast:Param", ptr %t33, i32 0, i32 2
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/ast:Func", ptr %t39, i32 0, i32 5
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t43 = load ptr, ptr %l13, !tbaa !29
  %t44 = load i64, ptr %l14, !tbaa !24
  %t47 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v0, ptr %v0, ptr %t43, i64 %t44, ptr %t37, { i64, ptr } %t42)
  store i64 %t47, ptr %l24
  br label %bb8
bb8:
  %t48 = load i64, ptr %l24, !tbaa !24
  store i64 %t48, ptr %l3, !tbaa !24
  %t49 = load i64, ptr %l3, !tbaa !24
  %t51 = icmp slt i64 %t49, 0
  br i1 %t51, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 36
  store ptr %t56, ptr %l30, !tbaa !29
  %t57 = load i64, ptr %l3, !tbaa !24
  %t58 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Func", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %t61, !tbaa !23
  %t64 = sext i32 %t62 to i64
  %t67 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t57, i64 %t64)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t67, ptr %l35
  br label %bb12
bb12:
  %t68 = load ptr, ptr %l30, !tbaa !29
  %t69 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l35
  %t70 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t68, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t69)
  %t71 = extractvalue { i32, i64 } %t70, 1
  %t72 = extractvalue { i32, i64 } %t70, 0
  store i32 %t72, ptr %l37
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb14, label %ok.74, !prof !99
ok.74:
  store i64 %t71, ptr %l36
  br label %bb13
bb13:
  %t75 = load i64, ptr %l36, !tbaa !24
  store i64 %t75, ptr %l28, !tbaa !24
  br label %bb16
bb14:
  br label %bb15
bb15:
  store i64 -1, ptr %l28, !tbaa !24
  br label %bb16
bb16:
  %t76 = load i64, ptr %l28, !tbaa !24
  store i64 %t76, ptr %l4, !tbaa !24
  br label %bb17
bb17:
  %t77 = load i64, ptr %l4, !tbaa !24
  %t79 = icmp sge i64 %t77, 0
  br i1 %t79, label %bb18, label %bb19
bb18:
  %t81 = load i64, ptr %l4, !tbaa !24
  %t82 = load i64, ptr %l1, !tbaa !24
  %t85 = icmp ne i64 %t81, %t82
  store i1 %t85, ptr %l40, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb20
bb20:
  %t87 = load i1, ptr %l40, !tbaa !21
  %t88 = xor i1 %t87, true
  br i1 %t88, label %bb21, label %bb22
bb21:
  br label %bb40
bb22:
  br label %bb23
bb23:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i64, ptr %l4, !tbaa !24
  %t94 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvExact(ptr %v0, ptr %t90, i64 %t91)
  store i1 %t94, ptr %l47
  br label %bb24
bb24:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l1, !tbaa !24
  %t99 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvExact(ptr %v0, ptr %t95, i64 %t96)
  store i1 %t99, ptr %l50
  br label %bb25
bb25:
  %t100 = load i1, ptr %l47, !tbaa !21
  %t101 = load i1, ptr %l50, !tbaa !21
  %t102 = icmp eq i1 %t100, %t101
  br i1 %t102, label %bb26, label %bb27
bb26:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l53, !tbaa !29
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i64, ptr %l4, !tbaa !24
  %t109 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvOf(ptr %v0, ptr %t105, i64 %t106)
  store i32 %t109, ptr %l56
  br label %bb28
bb27:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb31
bb28:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i64, ptr %l1, !tbaa !24
  %t114 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvOf(ptr %v0, ptr %t110, i64 %t111)
  store i32 %t114, ptr %l59
  br label %bb29
bb29:
  %t115 = load ptr, ptr %l53, !tbaa !29
  %t116 = load i32, ptr %l56, !tbaa !23
  %t117 = load i32, ptr %l59, !tbaa !23
  %t118 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypesOverlap(ptr %v0, ptr %t115, i32 %t116, i32 %t117, i64 0)
  store i1 %t118, ptr %l60
  br label %bb30
bb30:
  %t119 = load i1, ptr %l60, !tbaa !21
  store i1 %t119, ptr %l52, !tbaa !21
  br label %bb31
bb31:
  %t120 = load i1, ptr %l52, !tbaa !21
  br i1 %t120, label %bb32, label %bb33
bb32:
  %t121 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t121, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 37
  %t126 = load i64, ptr %l4, !tbaa !24
  %t129 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t125, i64 %t126)
  %t130 = extractvalue { i32, i64 } %t129, 1
  %t131 = extractvalue { i32, i64 } %t129, 0
  store i32 %t131, ptr %l67
  %t132 = icmp ne i32 %t131, 0
  br i1 %t132, label %bb36, label %ok.133, !prof !99
ok.133:
  store i64 %t130, ptr %l66
  br label %bb35
bb35:
  %t134 = load i64, ptr %l66, !tbaa !24
  store i64 %t134, ptr %l62, !tbaa !24
  br label %bb38
bb36:
  br label %bb37
bb37:
  store i64 -1, ptr %l62, !tbaa !24
  br label %bb38
bb38:
  %t135 = load i64, ptr %l62, !tbaa !24
  store i64 %t135, ptr %l4, !tbaa !24
  br label %bb39
bb39:
  br label %bb17
bb40:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedSettled(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 10
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i32, ptr %l7, !tbaa !23
  %t12 = sext i32 %t11 to i64
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t15 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__Hd32df9536ace7093dedc2ceceb7810b4(ptr %v0, ptr %t13, i64 %t12)
  store i1 %t15, ptr %l9
  br label %bb2
bb2:
  %t16 = load i1, ptr %l9, !tbaa !21
  store i1 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflKind(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i32
  %l14 = alloca i1
  %l19 = alloca i1
  %l24 = alloca i32
  %l25 = alloca i64
  %l36 = alloca i1
  %l37 = alloca i64
  %l40 = alloca i1
  %l41 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i64 4, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t16, i32 %t17)
  store i1 %t20, ptr %l14
  br label %bb5
bb5:
  %t21 = load i1, ptr %l14, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i64 2, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l2, !tbaa !23
  %t29 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t25, i32 %t26)
  store i1 %t29, ptr %l19
  br label %bb9
bb9:
  %t30 = load i1, ptr %l19, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  store i64 3, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l2, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l24
  br label %bb13
bb13:
  %t39 = load i32, ptr %l24, !range !{i32 0, i32 33}
  store i32 %t39, ptr %l3
  %t40 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t42 = trunc i64 19 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i64 5, ptr %l25, !tbaa !24
  br label %bb46
bb17:
  %t45 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t47 = trunc i64 20 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i64 6, ptr %l25, !tbaa !24
  br label %bb46
bb21:
  %t50 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t52 = trunc i64 21 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i64 7, ptr %l25, !tbaa !24
  br label %bb46
bb25:
  %t55 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t57 = trunc i64 18 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb37
bb28:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l2, !tbaa !23
  %t64 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisStructT(ptr %v0, ptr %t60, i32 %t61)
  store i1 %t64, ptr %l36
  br label %bb29
bb29:
  %t65 = load i1, ptr %l36, !tbaa !21
  br i1 %t65, label %bb30, label %bb31
bb30:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb36
bb31:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i32, ptr %l2, !tbaa !23
  %t70 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisEnumT(ptr %v0, ptr %t66, i32 %t67)
  store i1 %t70, ptr %l40
  br label %bb32
bb32:
  %t71 = load i1, ptr %l40, !tbaa !21
  br i1 %t71, label %bb33, label %bb34
bb33:
  store i64 1, ptr %l41, !tbaa !24
  br label %bb35
bb34:
  store i64 -1, ptr %l41, !tbaa !24
  br label %bb35
bb35:
  %t72 = load i64, ptr %l41, !tbaa !24
  store i64 %t72, ptr %l37, !tbaa !24
  br label %bb36
bb36:
  %t73 = load i64, ptr %l37, !tbaa !24
  store i64 %t73, ptr %l25, !tbaa !24
  br label %bb46
bb37:
  %t74 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t76 = trunc i64 32 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  store i64 8, ptr %l25, !tbaa !24
  br label %bb46
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i64 -1, ptr %l25, !tbaa !24
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_bea3dfbd3e43d709_f7b1d9dae3096955)
  unreachable
bb46:
  %t79 = load i64, ptr %l25, !tbaa !24
  store i64 %t79, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l48 = alloca i64
  %l52 = alloca i32
  %l56 = alloca ptr
  %l57 = alloca i32
  %l61 = alloca i32
  %l62 = alloca i32
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
  %t2 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %t1, i32 %t2)
  br label %bb1
bb1:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t5)
  store i64 %t7, ptr %l14
  br label %bb2
bb2:
  %t8 = load i64, ptr %l14, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t15, ptr %l18
  br label %bb3
bb3:
  %t16 = load i64, ptr %l18, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  store i64 %t17, ptr %l19, !tbaa !24
  %t18 = load i64, ptr %l19, !tbaa !24
  %t19 = icmp sge i64 %t18, 0
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i64, ptr %l19, !tbaa !24
  %t22 = icmp sle i64 %t21, 2305843009213693951
  br i1 %t22, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_8ed0ba4cde2484d3_77197335ab78eca7)
  unreachable
bb6:
  %t24 = load i64, ptr %l19, !tbaa !24
  %t25 = mul i64 %t24, 4
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l3, !tbaa !24
  store i64 %t30, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_8ed0ba4cde2484d3_77197335ab78eca7)
  unreachable
bb8:
  %t38 = load i64, ptr %l7, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb13
bb10:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l30, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb12
bb12:
  %t58 = load i64, ptr %l30, !tbaa !24
  store i64 %t58, ptr %l27, !tbaa !24
  br label %bb13
bb13:
  %t59 = load i64, ptr %l27, !tbaa !24
  store i64 %t59, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t60 = load i64, ptr %l9, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb15, label %bb16
bb15:
  br label %bb20
bb16:
  br label %bb17
bb17:
  %t68 = load i64, ptr %l5, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l10, !tbaa !24
  store i64 %t78, ptr %l48, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i64, ptr %l2, !tbaa !24
  %t81 = load i64, ptr %l10, !tbaa !24
  %t85 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarArg(ptr %v0, ptr %t79, i64 %t80, i64 %t81)
  store i32 %t85, ptr %l52
  br label %bb18
bb18:
  %t86 = load i32, ptr %l52, !tbaa !23
  %t87 = load i64, ptr %l48, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i32, ptr %t89, i64 %t87
  store i32 %t86, ptr %t90, !tbaa !33
  br label %bb19
bb19:
  %t91 = load i64, ptr %l9, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l9, !tbaa !24
  br label %bb14
bb20:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  store ptr %t97, ptr %l56, !tbaa !29
  %t98 = load i32, ptr %l1, !tbaa !23
  store i32 %t98, ptr %l57, !tbaa !23
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t101, { i64, ptr } %t102)
  store i32 %t105, ptr %l61
  br label %bb21
bb21:
  %t106 = load ptr, ptr %l56, !tbaa !29
  %t107 = load i32, ptr %l57, !tbaa !23
  %t108 = load i32, ptr %l61, !tbaa !23
  %t109 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t106, i32 %t107, i32 %t108)
  store i32 %t109, ptr %l62
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t110 = load i32, ptr %l62, !tbaa !23
  store i32 %t110, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSettleRaised(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l8 = alloca i32
  %l12 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca i32
  %l24 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l32 = alloca i32
  %s0 = alloca %olang.scope
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
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load i32, ptr %l8, !tbaa !23
  store i32 %t8, ptr %l3, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %t11, { i64, ptr } %a2)
  store i32 %t15, ptr %l12
  br label %bb2
bb2:
  %t16 = load i32, ptr %l12, !tbaa !23
  store i32 %t16, ptr %l4, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 10
  %t20 = load i32, ptr %l3, !tbaa !23
  %t22 = sext i32 %t20 to i64
  %t23 = load i32, ptr %l4, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__Hb311157f9ff5cfde66cc01a7f8069ed8(ptr %v0, ptr %t19, i64 %t22, i32 %t23)
  br label %bb3
bb3:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  store ptr %t29, ptr %l19, !tbaa !29
  %t30 = load i32, ptr %l1, !tbaa !23
  store i32 %t30, ptr %l20, !tbaa !23
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l1, !tbaa !23
  %t37 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v0, ptr %t33, i32 %t34)
  store { i64, ptr } %t37, ptr %l24
  br label %bb4
bb4:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  store ptr %t40, ptr %l26, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %l4, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l30
  br label %bb5
bb5:
  %t48 = mul i64 1, 4
  %t49 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t48)
  %t50 = insertvalue { i64, ptr } undef, i64 1, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  store { i64, ptr } %t51, ptr %l31, !tbaa !27
  %t52 = load i32, ptr %l30, !tbaa !23
  %t53 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i32, ptr %t54, i64 0
  store i32 %t52, ptr %t55, !tbaa !33
  %t56 = load ptr, ptr %l26, !tbaa !29
  %t57 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t56, { i64, ptr } %t57)
  store i32 %t58, ptr %l32
  br label %bb6
bb6:
  %t59 = load ptr, ptr %l19, !tbaa !29
  %t60 = load i32, ptr %l20, !tbaa !23
  %t61 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t62 = load i32, ptr %l32, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEnumBody(ptr %v0, ptr %v0, ptr %t59, i32 %t60, { i64, ptr } %t61, i32 %t62)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/generic:fnRow"
  %l4 = alloca i64
  %l5 = alloca %"compiler/generic:Context"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i32
  %l54 = alloca i32
  %l55 = alloca i32
  %l56 = alloca i32
  %l57 = alloca i64
  %l58 = alloca i32
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i1
  %l69 = alloca i32
  %l73 = alloca i32
  %l74 = alloca i32
  %l81 = alloca %"compiler/generic:fnRow"
  %l83 = alloca i64
  %l86 = alloca %"compiler/generic:Context"
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca ptr
  %l93 = alloca i64
  %l123 = alloca { i64, ptr }
  %l129 = alloca i1
  %l137 = alloca i64
  %l142 = alloca i64
  %l145 = alloca i64
  %l163 = alloca ptr
  %l166 = alloca i32
  %l172 = alloca i32
  %l175 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l207 = alloca { i64, ptr }
  %l221 = alloca i64
  %l224 = alloca i64
  %l242 = alloca ptr
  %l245 = alloca i32
  %l246 = alloca i1
  %l248 = alloca ptr
  %l251 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l254 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l257 = alloca { i64, ptr }
  %l258 = alloca i64
  %l259 = alloca { i64, ptr }
  %l264 = alloca i1
  %l265 = alloca ptr
  %l266 = alloca ptr
  %l267 = alloca ptr
  %l275 = alloca i32
  %l276 = alloca i1
  %l287 = alloca { i64, ptr }
  %l294 = alloca i1
  %l295 = alloca ptr
  %l300 = alloca i32
  %l301 = alloca i1
  %l308 = alloca i1
  %l310 = alloca i1
  %l315 = alloca i1
  %l317 = alloca ptr
  %l318 = alloca ptr
  %l319 = alloca ptr
  %l327 = alloca i32
  %l347 = alloca { i64, ptr }
  %l354 = alloca i1
  %l357 = alloca i1
  %l359 = alloca i1
  %l363 = alloca ptr
  %l368 = alloca i32
  %l375 = alloca ptr
  %l376 = alloca i64
  %l378 = alloca { i64, ptr }
  %l381 = alloca i32
  %l382 = alloca i64
  %l386 = alloca i64
  %l387 = alloca i32
  %l390 = alloca i64
  %l394 = alloca i64
  %l397 = alloca i64
  %l416 = alloca ptr
  %l419 = alloca i64
  %l420 = alloca i64
  %l423 = alloca i32
  %l426 = alloca %"compiler/generic:varRow"
  %l427 = alloca ptr
  %l430 = alloca i32
  %l436 = alloca i32
  %l451 = alloca { i64, ptr }
  %l464 = alloca ptr
  %l465 = alloca ptr
  %l473 = alloca i32
  %l487 = alloca i32
  %l493 = alloca ptr
  %l494 = alloca i64
  %l499 = alloca i32
  %l502 = alloca i1
  %l504 = alloca ptr
  %l508 = alloca i32
  %l512 = alloca i32
  %l516 = alloca i32
  %l518 = alloca ptr
  %l519 = alloca i64
  %l521 = alloca ptr
  %l525 = alloca i32
  %l526 = alloca { i64, ptr }
  %l527 = alloca i64
  %l528 = alloca i64
  %l532 = alloca i32
  %l533 = alloca i32
  %l536 = alloca i1
  %l538 = alloca i1
  %l552 = alloca %"compiler/source:Span"
  %l555 = alloca ptr
  %l559 = alloca i32
  %l560 = alloca i32
  %l568 = alloca i64
  %l572 = alloca ptr
  %l576 = alloca i32
  %l577 = alloca i32
  %l587 = alloca ptr
  %l591 = alloca i32
  %l592 = alloca i32
  %l596 = alloca i32
  %l597 = alloca i32
  %l599 = alloca i64
  %l603 = alloca ptr
  %l607 = alloca i32
  %l608 = alloca { i64, ptr }
  %l610 = alloca i64
  %l620 = alloca i64
  %l623 = alloca i64
  %l641 = alloca i64
  %l646 = alloca i64
  %l649 = alloca i64
  %l651 = alloca i32
  %l653 = alloca { i64, ptr }
  %l658 = alloca i32
  %l659 = alloca { i64, ptr }
  %l662 = alloca i64
  %l664 = alloca i64
  %l666 = alloca { i64, ptr }
  %l669 = alloca i64
  %l674 = alloca ptr
  %l678 = alloca i32
  %l682 = alloca i32
  %l686 = alloca i32
  %l690 = alloca i32
  %l691 = alloca i32
  %s0 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %rv = alloca i32
  %t35 = alloca %"compiler/generic:Context", align 8
  %t997 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 33
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, i32 } %t7, 1
  %t9 = extractvalue { i32, i32 } %t7, 0
  store i32 %t9, ptr %l74
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i32 %t8, ptr %l73
  br label %bb1
bb1:
  %t12 = load i32, ptr %l73, !tbaa !23
  store i32 %t12, ptr %l69, !tbaa !23
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i32 -1, ptr %l69, !tbaa !23
  br label %bb4
bb4:
  %t13 = load i32, ptr %l69, !tbaa !23
  store i32 %t13, ptr %l2, !tbaa !23
  %t14 = load i32, ptr %l2, !tbaa !23
  %t16 = icmp sge i32 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i32, ptr %l2, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t18, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 29
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t22, i64 %t23)
  store %"compiler/generic:fnRow" %t26, ptr %l81
  br label %bb8
bb8:
  %t27 = load %"compiler/generic:fnRow", ptr %l81
  store %"compiler/generic:fnRow" %t27, ptr %l3
  %t28 = load i64, ptr %l1, !tbaa !24
  %t30 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t28)
  store i64 %t30, ptr %l83
  br label %bb9
bb9:
  %t31 = load i64, ptr %l83, !tbaa !24
  store i64 %t31, ptr %l4, !tbaa !24
  %t32 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 0
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t35, ptr %s0, i64 %t33, i64 %t34)
  call void @llvm.memmove.p0.p0.i64(ptr %l86, ptr %t35, i64 160, i1 false)
  br label %bb10
bb10:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l86, i64 160, i1 false)
  %t38 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l87
  br label %bb11
bb11:
  %t39 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l6
  %t40 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/ast:Func", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb12, label %bb13
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l92, !tbaa !29
  %t51 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 0
  %t52 = load i64, ptr %t51, !tbaa !24
  store i64 %t52, ptr %l93, !tbaa !24
  %t53 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Func", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  br i1 %t59, label %bb14, label %bb15
bb13:
  br label %bb18
bb14:
  call void @__olang_check_failed(ptr @olang_loc_6d5aa29fe12cc9ea_ea4bfe36e43ffb6e)
  unreachable
bb15:
  br label %bb16
bb16:
  %t61 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/ast:Func", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t68 = getelementptr %"compiler/ast:Param", ptr %t65, i32 0, i32 2
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t70 = load ptr, ptr %l92, !tbaa !29
  %t71 = load i64, ptr %l93, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v0, ptr %s0, ptr %t70, i64 %t71, ptr %t69, ptr %l6, i1 false)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t74 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = getelementptr %"compiler/ast:Func", ptr %t75, i32 0, i32 9
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = icmp eq ptr %t78, null
  %t82 = xor i1 %t80, true
  br i1 %t82, label %bb19, label %bb20
bb19:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 0
  %t86 = load i64, ptr %t85, !tbaa !24
  %t87 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/ast:Func", ptr %t88, i32 0, i32 9
  %t91 = load ptr, ptr %t90, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v0, ptr %s0, ptr %t84, i64 %t86, ptr %t91, ptr %l6, i1 false)
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t96 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/ast:Func", ptr %t97, i32 0, i32 5
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t104 = icmp sgt i64 %t102, 0
  br i1 %t104, label %bb23, label %bb24
bb23:
  %t106 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/ast:Func", ptr %t107, i32 0, i32 5
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  store { i64, ptr } %t110, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  store i64 %t114, ptr %l9, !tbaa !24
  br label %bb25
bb24:
  br label %bb36
bb25:
  %t116 = load i64, ptr %l8, !tbaa !24
  %t117 = load i64, ptr %l9, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb26, label %bb27
bb26:
  br label %bb35
bb27:
  br label %bb28
bb28:
  %t124 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t124, ptr %l123, !tbaa !27
  %t125 = load i64, ptr %l8, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr ptr, ptr %t128, i64 %t125
  %t130 = load ptr, ptr %t129, !tbaa !39
  store ptr %t130, ptr %l10, !tbaa !29
  %t132 = load ptr, ptr %l10, !tbaa !29
  %t134 = getelementptr %"compiler/ast:TypeParam", ptr %t132, i32 0, i32 1
  %t135 = load i32, ptr %t134, !tbaa !23
  %t138 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l6, i32 %t135)
  store i1 %t138, ptr %l129
  br label %bb29
bb29:
  %t139 = load i1, ptr %l129, !tbaa !21
  %t140 = xor i1 %t139, true
  br i1 %t140, label %bb30, label %bb31
bb30:
  %t142 = load ptr, ptr %l10, !tbaa !29
  %t144 = getelementptr %"compiler/ast:TypeParam", ptr %t142, i32 0, i32 1
  %t145 = load i32, ptr %t144, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l6, i32 %t145)
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t148 = load i64, ptr %l8, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l8, !tbaa !24
  br label %bb25
bb35:
  br label %bb36
bb36:
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l6)
  store i64 %t153, ptr %l137
  br label %bb37
bb37:
  %t154 = load i64, ptr %l137, !tbaa !24
  store i64 %t154, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t155 = load i64, ptr %l11, !tbaa !24
  store i64 %t155, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t157 = load i64, ptr %l13, !tbaa !24
  %t158 = load i64, ptr %l12, !tbaa !24
  %t161 = icmp sgt i64 %t157, %t158
  br i1 %t161, label %bb38, label %bb39
bb38:
  %t163 = load i64, ptr %l14, !tbaa !24
  %t165 = icmp sgt i64 %t163, 0
  br i1 %t165, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb43
bb40:
  %t167 = load i64, ptr %l13, !tbaa !24
  %t168 = load i64, ptr %l12, !tbaa !24
  %t171 = sub i64 %t167, %t168
  %t172 = load i64, ptr %l14, !tbaa !24
  %t175 = add i64 %t171, %t172
  %t177 = sub i64 %t175, 1
  %t178 = load i64, ptr %l14, !tbaa !24
  %t181 = sdiv i64 %t177, %t178
  store i64 %t181, ptr %l145, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb42
bb42:
  %t183 = load i64, ptr %l145, !tbaa !24
  store i64 %t183, ptr %l142, !tbaa !24
  br label %bb43
bb43:
  %t184 = load i64, ptr %l142, !tbaa !24
  store i64 %t184, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb44
bb44:
  %t185 = load i64, ptr %l16, !tbaa !24
  %t186 = load i64, ptr %l15, !tbaa !24
  %t189 = icmp slt i64 %t185, %t186
  %t191 = xor i1 %t189, true
  br i1 %t191, label %bb45, label %bb46
bb45:
  br label %bb52
bb46:
  br label %bb47
bb47:
  %t193 = load i64, ptr %l12, !tbaa !24
  %t194 = load i64, ptr %l16, !tbaa !24
  %t195 = load i64, ptr %l14, !tbaa !24
  %t198 = mul i64 %t194, %t195
  %t201 = add i64 %t193, %t198
  store i64 %t201, ptr %l17, !tbaa !24
  %t203 = getelementptr %"compiler/generic:Context", ptr %l5, i32 0, i32 2
  store ptr %t203, ptr %l163, !tbaa !29
  %t204 = load i64, ptr %l17, !tbaa !24
  %t207 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l6, i64 %t204)
  store i32 %t207, ptr %l166
  br label %bb48
bb48:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/generic:Program", ptr %t208, i32 0, i32 2
  %t211 = load i64, ptr %l4, !tbaa !24
  %t212 = load i64, ptr %l17, !tbaa !24
  %t213 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t218 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t210, i64 %t211, i64 %t212, i64 %t213)
  store i32 %t218, ptr %l172
  br label %bb49
bb49:
  %t219 = load ptr, ptr %l163, !tbaa !29
  %t220 = load i32, ptr %l166, !tbaa !23
  %t221 = load i32, ptr %l172, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %s0, ptr %t219, i32 %t220, i32 %t221)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t222 = load i64, ptr %l16, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l16, !tbaa !24
  br label %bb44
bb52:
  %t226 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t226, ptr %l175
  br label %bb53
bb53:
  %t227 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l175
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t227, ptr %l18
  %t228 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !29
  %t231 = getelementptr %"compiler/ast:Func", ptr %t229, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !29
  %t234 = icmp eq ptr %t232, null
  %t236 = xor i1 %t234, true
  br i1 %t236, label %bb54, label %bb55
bb54:
  %t238 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !29
  %t241 = getelementptr %"compiler/ast:Func", ptr %t239, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t244 = icmp eq ptr %t242, null
  br i1 %t244, label %bb56, label %bb57
bb55:
  br label %bb60
bb56:
  call void @__olang_check_failed(ptr @olang_loc_d75eebf2560505f1_f536daa32c643715)
  unreachable
bb57:
  br label %bb58
bb58:
  %t246 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t249 = getelementptr %"compiler/ast:Func", ptr %t247, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t253 = getelementptr %"compiler/ast:Param", ptr %t250, i32 0, i32 2
  %t254 = load ptr, ptr %t253, !tbaa !29
  call void @compiler_2fgeneric_2eerrIntroductions(ptr %v0, ptr %s0, ptr %t254, ptr %l18)
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t257 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !29
  %t260 = getelementptr %"compiler/ast:Func", ptr %t258, i32 0, i32 9
  %t261 = load ptr, ptr %t260, !tbaa !29
  %t263 = icmp eq ptr %t261, null
  %t265 = xor i1 %t263, true
  br i1 %t265, label %bb61, label %bb62
bb61:
  %t267 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !29
  %t270 = getelementptr %"compiler/ast:Func", ptr %t268, i32 0, i32 9
  %t271 = load ptr, ptr %t270, !tbaa !29
  call void @compiler_2fgeneric_2eerrIntroductions(ptr %v0, ptr %s0, ptr %t271, ptr %l18)
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t274 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !29
  %t277 = getelementptr %"compiler/ast:Func", ptr %t275, i32 0, i32 5
  %t278 = load { i64, ptr }, ptr %t277, !tbaa !27
  %t280 = extractvalue { i64, ptr } %t278, 0
  %t282 = icmp sgt i64 %t280, 0
  br i1 %t282, label %bb65, label %bb66
bb65:
  %t284 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t287 = getelementptr %"compiler/ast:Func", ptr %t285, i32 0, i32 5
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !27
  store { i64, ptr } %t288, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t290 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t290, 0
  store i64 %t292, ptr %l21, !tbaa !24
  br label %bb67
bb66:
  br label %bb77
bb67:
  %t294 = load i64, ptr %l20, !tbaa !24
  %t295 = load i64, ptr %l21, !tbaa !24
  %t298 = icmp slt i64 %t294, %t295
  %t300 = xor i1 %t298, true
  br i1 %t300, label %bb68, label %bb69
bb68:
  br label %bb76
bb69:
  br label %bb70
bb70:
  %t302 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t302, ptr %l207, !tbaa !27
  %t303 = load i64, ptr %l20, !tbaa !24
  %t305 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr ptr, ptr %t306, i64 %t303
  %t308 = load ptr, ptr %t307, !tbaa !39
  store ptr %t308, ptr %l22, !tbaa !29
  %t310 = load ptr, ptr %l22, !tbaa !29
  %t312 = getelementptr %"compiler/ast:TypeParam", ptr %t310, i32 0, i32 4
  %t313 = load i1, ptr %t312, !tbaa !21
  br i1 %t313, label %bb71, label %bb72
bb71:
  %t315 = load ptr, ptr %l22, !tbaa !29
  %t317 = getelementptr %"compiler/ast:TypeParam", ptr %t315, i32 0, i32 1
  %t318 = load i32, ptr %t317, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l18, i32 %t318)
  br label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb74
bb74:
  br label %bb75
bb75:
  %t321 = load i64, ptr %l20, !tbaa !24
  %t323 = add i64 %t321, 1
  store i64 %t323, ptr %l20, !tbaa !24
  br label %bb67
bb76:
  br label %bb77
bb77:
  store i64 0, ptr %l23, !tbaa !24
  %t325 = load i64, ptr %l11, !tbaa !24
  store i64 %t325, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t327 = load i64, ptr %l24, !tbaa !24
  %t328 = load i64, ptr %l23, !tbaa !24
  %t331 = icmp sgt i64 %t327, %t328
  br i1 %t331, label %bb78, label %bb79
bb78:
  %t333 = load i64, ptr %l25, !tbaa !24
  %t335 = icmp sgt i64 %t333, 0
  br i1 %t335, label %bb80, label %bb81
bb79:
  store i64 0, ptr %l221, !tbaa !24
  br label %bb83
bb80:
  %t337 = load i64, ptr %l24, !tbaa !24
  %t338 = load i64, ptr %l23, !tbaa !24
  %t341 = sub i64 %t337, %t338
  %t342 = load i64, ptr %l25, !tbaa !24
  %t345 = add i64 %t341, %t342
  %t347 = sub i64 %t345, 1
  %t348 = load i64, ptr %l25, !tbaa !24
  %t351 = sdiv i64 %t347, %t348
  store i64 %t351, ptr %l224, !tbaa !24
  br label %bb82
bb81:
  store i64 0, ptr %l224, !tbaa !24
  br label %bb82
bb82:
  %t353 = load i64, ptr %l224, !tbaa !24
  store i64 %t353, ptr %l221, !tbaa !24
  br label %bb83
bb83:
  %t354 = load i64, ptr %l221, !tbaa !24
  store i64 %t354, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb84
bb84:
  %t355 = load i64, ptr %l27, !tbaa !24
  %t356 = load i64, ptr %l26, !tbaa !24
  %t359 = icmp slt i64 %t355, %t356
  %t361 = xor i1 %t359, true
  br i1 %t361, label %bb85, label %bb86
bb85:
  br label %bb96
bb86:
  br label %bb87
bb87:
  %t363 = load i64, ptr %l23, !tbaa !24
  %t364 = load i64, ptr %l27, !tbaa !24
  %t365 = load i64, ptr %l25, !tbaa !24
  %t368 = mul i64 %t364, %t365
  %t371 = add i64 %t363, %t368
  store i64 %t371, ptr %l28, !tbaa !24
  store ptr %l18, ptr %l242, !tbaa !29
  %t373 = load i64, ptr %l28, !tbaa !24
  %t376 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l6, i64 %t373)
  store i32 %t376, ptr %l245
  br label %bb88
bb88:
  %t377 = load ptr, ptr %l242, !tbaa !29
  %t378 = load i32, ptr %l245, !tbaa !23
  %t379 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t377, i32 %t378)
  store i1 %t379, ptr %l246
  br label %bb89
bb89:
  %t380 = load i1, ptr %l246, !tbaa !21
  br i1 %t380, label %bb90, label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s21
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t383 = getelementptr %"compiler/generic:Program", ptr %t381, i32 0, i32 17
  store ptr %t383, ptr %l248, !tbaa !29
  %t384 = load i64, ptr %l4, !tbaa !24
  %t385 = load i64, ptr %l28, !tbaa !24
  %t388 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s21, i64 %t384, i64 %t385)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t388, ptr %l251
  br label %bb92
bb91:
  br label %bb94
bb92:
  %t389 = load ptr, ptr %l248, !tbaa !29
  %t390 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l251
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t389, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t390, i1 true)
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s21)
  br label %bb94
bb94:
  br label %bb95
bb95:
  %t391 = load i64, ptr %l27, !tbaa !24
  %t393 = add i64 %t391, 1
  store i64 %t393, ptr %l27, !tbaa !24
  br label %bb84
bb96:
  %t395 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t395, ptr %l254
  br label %bb97
bb97:
  %t396 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l254
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t396, ptr %l29
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load i64, ptr %l1, !tbaa !24
  %t401 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthsDecidedOf(ptr %v0, ptr %s0, ptr %t397, i64 %t398, i64 0)
  store { i64, ptr } %t401, ptr %l257
  br label %bb98
bb98:
  %t402 = load { i64, ptr }, ptr %l257, !tbaa !27
  %t403 = extractvalue { i64, ptr } %t402, 0
  store i64 %t403, ptr %l258, !tbaa !24
  %t404 = load i64, ptr %l258, !tbaa !24
  %t405 = mul i64 %t404, 1
  %t406 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t405)
  %t407 = insertvalue { i64, ptr } undef, i64 %t404, 0
  %t408 = insertvalue { i64, ptr } %t407, ptr %t406, 1
  store { i64, ptr } %t408, ptr %l259, !tbaa !27
  %t409 = getelementptr { i64, ptr }, ptr %l259, i32 0, i32 1
  %t410 = load ptr, ptr %t409, !tbaa !27
  %t411 = getelementptr { i64, ptr }, ptr %l257, i32 0, i32 1
  %t412 = load ptr, ptr %t411, !tbaa !27
  %t413 = load i64, ptr %l258, !tbaa !24
  %t414 = mul i64 %t413, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t410, ptr %t412, i64 %t414, i1 false)
  %t415 = load { i64, ptr }, ptr %l259, !tbaa !27
  store { i64, ptr } %t415, ptr %l30, !tbaa !27
  %t416 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t417 = load ptr, ptr %t416, !tbaa !29
  %t419 = getelementptr %"compiler/ast:Func", ptr %t417, i32 0, i32 1
  %t420 = load ptr, ptr %t419, !tbaa !29
  %t422 = icmp eq ptr %t420, null
  %t424 = xor i1 %t422, true
  br i1 %t424, label %bb99, label %bb100
bb99:
  %t426 = load ptr, ptr %l0, !tbaa !29
  store ptr %t426, ptr %l265, !tbaa !29
  %t427 = load ptr, ptr %l0, !tbaa !29
  store ptr %t427, ptr %l266, !tbaa !29
  store ptr %l5, ptr %l267, !tbaa !29
  %t428 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t429 = load ptr, ptr %t428, !tbaa !29
  %t431 = getelementptr %"compiler/ast:Func", ptr %t429, i32 0, i32 1
  %t432 = load ptr, ptr %t431, !tbaa !29
  %t434 = icmp eq ptr %t432, null
  br i1 %t434, label %bb101, label %bb102
bb100:
  store i1 false, ptr %l264, !tbaa !21
  br label %bb106
bb101:
  call void @__olang_check_failed(ptr @olang_loc_31cb9a6f561579fc_4433aac0bd188f00)
  unreachable
bb102:
  br label %bb103
bb103:
  %t436 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !29
  %t439 = getelementptr %"compiler/ast:Func", ptr %t437, i32 0, i32 1
  %t440 = load ptr, ptr %t439, !tbaa !29
  %t443 = getelementptr %"compiler/ast:Param", ptr %t440, i32 0, i32 2
  %t444 = load ptr, ptr %t443, !tbaa !29
  %t445 = load ptr, ptr %l266, !tbaa !29
  %t446 = load ptr, ptr %l267, !tbaa !29
  %t448 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v0, ptr %t445, ptr %t446, ptr %t444)
  store i32 %t448, ptr %l275
  br label %bb104
bb104:
  %t449 = load ptr, ptr %l265, !tbaa !29
  %t450 = load i32, ptr %l275, !tbaa !23
  %t451 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enestedRows(ptr %v0, ptr %t449, i32 %t450)
  store i1 %t451, ptr %l276
  br label %bb105
bb105:
  %t452 = load i1, ptr %l276, !tbaa !21
  store i1 %t452, ptr %l264, !tbaa !21
  br label %bb106
bb106:
  %t453 = load i1, ptr %l264, !tbaa !21
  br i1 %t453, label %bb107, label %bb108
bb107:
  %t454 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t455 = load ptr, ptr %t454, !tbaa !27
  %t456 = getelementptr i1, ptr %t455, i64 0
  store i1 true, ptr %t456, !tbaa !31
  br label %bb109
bb108:
  br label %bb109
bb109:
  %t457 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t458 = load ptr, ptr %t457, !tbaa !29
  %t460 = getelementptr %"compiler/ast:Func", ptr %t458, i32 0, i32 3
  %t461 = load ptr, ptr %t460, !tbaa !29
  %t463 = getelementptr %"compiler/ast:Sig", ptr %t461, i32 0, i32 0
  %t464 = load { i64, ptr }, ptr %t463, !tbaa !27
  store { i64, ptr } %t464, ptr %l31, !tbaa !27
  store i64 0, ptr %l32, !tbaa !24
  %t466 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t468 = extractvalue { i64, ptr } %t466, 0
  store i64 %t468, ptr %l33, !tbaa !24
  br label %bb110
bb110:
  %t470 = load i64, ptr %l32, !tbaa !24
  %t471 = load i64, ptr %l33, !tbaa !24
  %t474 = icmp slt i64 %t470, %t471
  %t476 = xor i1 %t474, true
  br i1 %t476, label %bb111, label %bb112
bb111:
  br label %bb123
bb112:
  br label %bb113
bb113:
  %t478 = load i64, ptr %l32, !tbaa !24
  store i64 %t478, ptr %l34, !tbaa !24
  %t480 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t480, ptr %l287, !tbaa !27
  %t481 = load i64, ptr %l32, !tbaa !24
  %t483 = getelementptr { i64, ptr }, ptr %l287, i32 0, i32 1
  %t484 = load ptr, ptr %t483, !tbaa !27
  %t485 = getelementptr ptr, ptr %t484, i64 %t481
  %t486 = load ptr, ptr %t485, !tbaa !39
  store ptr %t486, ptr %l35, !tbaa !29
  %t488 = load ptr, ptr %l35, !tbaa !29
  %t490 = getelementptr %"compiler/ast:Param", ptr %t488, i32 0, i32 2
  %t491 = load ptr, ptr %t490, !tbaa !29
  %t493 = icmp eq ptr %t491, null
  %t495 = xor i1 %t493, true
  br i1 %t495, label %bb114, label %bb115
bb114:
  %t497 = load ptr, ptr %l0, !tbaa !29
  store ptr %t497, ptr %l295, !tbaa !29
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t499 = load ptr, ptr %l35, !tbaa !29
  %t501 = getelementptr %"compiler/ast:Param", ptr %t499, i32 0, i32 2
  %t502 = load ptr, ptr %t501, !tbaa !29
  %t506 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v0, ptr %t498, ptr %l5, ptr %t502)
  store i32 %t506, ptr %l300
  br label %bb116
bb115:
  store i1 false, ptr %l294, !tbaa !21
  br label %bb118
bb116:
  %t507 = load ptr, ptr %l295, !tbaa !29
  %t508 = load i32, ptr %l300, !tbaa !23
  %t509 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enestedRows(ptr %v0, ptr %t507, i32 %t508)
  store i1 %t509, ptr %l301
  br label %bb117
bb117:
  %t510 = load i1, ptr %l301, !tbaa !21
  store i1 %t510, ptr %l294, !tbaa !21
  br label %bb118
bb118:
  %t511 = load i1, ptr %l294, !tbaa !21
  br i1 %t511, label %bb119, label %bb120
bb119:
  %t512 = load i64, ptr %l34, !tbaa !24
  %t514 = add i64 %t512, 1
  %t516 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t517 = load ptr, ptr %t516, !tbaa !27
  %t518 = getelementptr i1, ptr %t517, i64 %t514
  store i1 true, ptr %t518, !tbaa !31
  br label %bb121
bb120:
  br label %bb121
bb121:
  br label %bb122
bb122:
  %t519 = load i64, ptr %l32, !tbaa !24
  %t521 = add i64 %t519, 1
  store i64 %t521, ptr %l32, !tbaa !24
  br label %bb110
bb123:
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t524 = load i64, ptr %l1, !tbaa !24
  %t527 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t523, i64 %t524)
  store i1 %t527, ptr %l308
  br label %bb124
bb124:
  %t528 = load i1, ptr %l308, !tbaa !21
  %t529 = xor i1 %t528, true
  br i1 %t529, label %bb125, label %bb126
bb125:
  %t531 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t532 = load ptr, ptr %t531, !tbaa !29
  %t534 = getelementptr %"compiler/ast:Func", ptr %t532, i32 0, i32 1
  %t535 = load ptr, ptr %t534, !tbaa !29
  %t537 = icmp eq ptr %t535, null
  %t539 = xor i1 %t537, true
  store i1 %t539, ptr %l310, !tbaa !21
  br label %bb127
bb126:
  store i1 false, ptr %l310, !tbaa !21
  br label %bb127
bb127:
  %t541 = load i1, ptr %l310, !tbaa !21
  br i1 %t541, label %bb128, label %bb129
bb128:
  %t542 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t543 = load ptr, ptr %t542, !tbaa !27
  %t544 = getelementptr i1, ptr %t543, i64 0
  %t545 = load i1, ptr %t544, !tbaa !31
  store i1 %t545, ptr %l315, !tbaa !21
  br label %bb130
bb129:
  store i1 false, ptr %l315, !tbaa !21
  br label %bb130
bb130:
  %t547 = load i1, ptr %l315, !tbaa !21
  br i1 %t547, label %bb131, label %bb132
bb131:
  %t548 = load ptr, ptr %l0, !tbaa !29
  store ptr %t548, ptr %l317, !tbaa !29
  %t549 = load ptr, ptr %l0, !tbaa !29
  store ptr %t549, ptr %l318, !tbaa !29
  store ptr %l5, ptr %l319, !tbaa !29
  %t550 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t551 = load ptr, ptr %t550, !tbaa !29
  %t553 = getelementptr %"compiler/ast:Func", ptr %t551, i32 0, i32 1
  %t554 = load ptr, ptr %t553, !tbaa !29
  %t556 = icmp eq ptr %t554, null
  br i1 %t556, label %bb133, label %bb134
bb132:
  br label %bb141
bb133:
  call void @__olang_check_failed(ptr @olang_loc_aa6ac5355bc4a96b_e63f80aa6f15ab9f)
  unreachable
bb134:
  br label %bb135
bb135:
  %t558 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t559 = load ptr, ptr %t558, !tbaa !29
  %t561 = getelementptr %"compiler/ast:Func", ptr %t559, i32 0, i32 1
  %t562 = load ptr, ptr %t561, !tbaa !29
  %t565 = getelementptr %"compiler/ast:Param", ptr %t562, i32 0, i32 2
  %t566 = load ptr, ptr %t565, !tbaa !29
  %t567 = load ptr, ptr %l318, !tbaa !29
  %t568 = load ptr, ptr %l319, !tbaa !29
  %t570 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v0, ptr %t567, ptr %t568, ptr %t566)
  store i32 %t570, ptr %l327
  br label %bb136
bb136:
  %t571 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t572 = load ptr, ptr %t571, !tbaa !29
  %t574 = getelementptr %"compiler/ast:Func", ptr %t572, i32 0, i32 1
  %t575 = load ptr, ptr %t574, !tbaa !29
  %t577 = icmp eq ptr %t575, null
  br i1 %t577, label %bb137, label %bb138
bb137:
  call void @__olang_check_failed(ptr @olang_loc_aa6ac5355bc4a96b_e63f80aa6f15ab9f)
  unreachable
bb138:
  br label %bb139
bb139:
  %t579 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t580 = load ptr, ptr %t579, !tbaa !29
  %t582 = getelementptr %"compiler/ast:Func", ptr %t580, i32 0, i32 1
  %t583 = load ptr, ptr %t582, !tbaa !29
  %t586 = getelementptr %"compiler/ast:Param", ptr %t583, i32 0, i32 1
  %t587 = load i32, ptr %t586, !tbaa !23
  %t588 = load ptr, ptr %l317, !tbaa !29
  %t589 = load i32, ptr %l327, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthLevels(ptr %v0, ptr %s0, ptr %s0, ptr %t588, i32 %t589, i1 true, i32 %t587, i64 0, ptr %l6, ptr %l29)
  br label %bb140
bb140:
  br label %bb141
bb141:
  %t593 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t594 = load ptr, ptr %t593, !tbaa !29
  %t596 = getelementptr %"compiler/ast:Func", ptr %t594, i32 0, i32 3
  %t597 = load ptr, ptr %t596, !tbaa !29
  %t599 = getelementptr %"compiler/ast:Sig", ptr %t597, i32 0, i32 0
  %t600 = load { i64, ptr }, ptr %t599, !tbaa !27
  store { i64, ptr } %t600, ptr %l36, !tbaa !27
  store i64 0, ptr %l37, !tbaa !24
  %t602 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t604 = extractvalue { i64, ptr } %t602, 0
  store i64 %t604, ptr %l38, !tbaa !24
  br label %bb142
bb142:
  %t606 = load i64, ptr %l37, !tbaa !24
  %t607 = load i64, ptr %l38, !tbaa !24
  %t610 = icmp slt i64 %t606, %t607
  %t612 = xor i1 %t610, true
  br i1 %t612, label %bb143, label %bb144
bb143:
  br label %bb159
bb144:
  br label %bb145
bb145:
  %t614 = load i64, ptr %l37, !tbaa !24
  store i64 %t614, ptr %l39, !tbaa !24
  %t616 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t616, ptr %l347, !tbaa !27
  %t617 = load i64, ptr %l37, !tbaa !24
  %t619 = getelementptr { i64, ptr }, ptr %l347, i32 0, i32 1
  %t620 = load ptr, ptr %t619, !tbaa !27
  %t621 = getelementptr ptr, ptr %t620, i64 %t617
  %t622 = load ptr, ptr %t621, !tbaa !39
  store ptr %t622, ptr %l40, !tbaa !29
  %t624 = load ptr, ptr %l40, !tbaa !29
  %t626 = getelementptr %"compiler/ast:Param", ptr %t624, i32 0, i32 2
  %t627 = load ptr, ptr %t626, !tbaa !29
  %t629 = icmp eq ptr %t627, null
  %t631 = xor i1 %t629, true
  br i1 %t631, label %bb146, label %bb147
bb146:
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t634 = load i64, ptr %l1, !tbaa !24
  %t637 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t633, i64 %t634)
  store i1 %t637, ptr %l357
  br label %bb148
bb147:
  store i1 false, ptr %l354, !tbaa !21
  br label %bb149
bb148:
  %t638 = load i1, ptr %l357, !tbaa !21
  %t639 = xor i1 %t638, true
  store i1 %t639, ptr %l354, !tbaa !21
  br label %bb149
bb149:
  %t641 = load i1, ptr %l354, !tbaa !21
  br i1 %t641, label %bb150, label %bb151
bb150:
  %t642 = load i64, ptr %l39, !tbaa !24
  %t644 = add i64 %t642, 1
  %t646 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t647 = load ptr, ptr %t646, !tbaa !27
  %t648 = getelementptr i1, ptr %t647, i64 %t644
  %t649 = load i1, ptr %t648, !tbaa !31
  store i1 %t649, ptr %l359, !tbaa !21
  br label %bb152
bb151:
  store i1 false, ptr %l359, !tbaa !21
  br label %bb152
bb152:
  %t651 = load i1, ptr %l359, !tbaa !21
  br i1 %t651, label %bb153, label %bb154
bb153:
  %t652 = load ptr, ptr %l0, !tbaa !29
  store ptr %t652, ptr %l363, !tbaa !29
  %t653 = load ptr, ptr %l0, !tbaa !29
  %t654 = load ptr, ptr %l40, !tbaa !29
  %t656 = getelementptr %"compiler/ast:Param", ptr %t654, i32 0, i32 2
  %t657 = load ptr, ptr %t656, !tbaa !29
  %t661 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v0, ptr %t653, ptr %l5, ptr %t657)
  store i32 %t661, ptr %l368
  br label %bb155
bb154:
  br label %bb157
bb155:
  %t662 = load ptr, ptr %l40, !tbaa !29
  %t664 = getelementptr %"compiler/ast:Param", ptr %t662, i32 0, i32 1
  %t665 = load i32, ptr %t664, !tbaa !23
  %t666 = load ptr, ptr %l363, !tbaa !29
  %t667 = load i32, ptr %l368, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthLevels(ptr %v0, ptr %s0, ptr %s0, ptr %t666, i32 %t667, i1 true, i32 %t665, i64 0, ptr %l6, ptr %l29)
  br label %bb156
bb156:
  br label %bb157
bb157:
  br label %bb158
bb158:
  %t671 = load i64, ptr %l37, !tbaa !24
  %t673 = add i64 %t671, 1
  store i64 %t673, ptr %l37, !tbaa !24
  br label %bb142
bb159:
  %t675 = load ptr, ptr %l0, !tbaa !29
  store ptr %t675, ptr %l375, !tbaa !29
  %t676 = load i64, ptr %l4, !tbaa !24
  store i64 %t676, ptr %l376, !tbaa !24
  %t678 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t678, ptr %l378
  br label %bb160
bb160:
  %t679 = load ptr, ptr %l375, !tbaa !29
  %t680 = load i64, ptr %l376, !tbaa !24
  %t681 = load { i64, ptr }, ptr %l378, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddVars(ptr %v0, ptr %s0, ptr %t679, i64 %t680, { i64, ptr } %t681)
  br label %bb161
bb161:
  %t682 = load ptr, ptr %l0, !tbaa !29
  %t684 = getelementptr %"compiler/generic:Program", ptr %t682, i32 0, i32 2
  %t686 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t684, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i32 %t686, ptr %l381
  br label %bb162
bb162:
  %t687 = load i32, ptr %l381, !tbaa !23
  store i32 %t687, ptr %l41, !tbaa !23
  %t688 = load ptr, ptr %l0, !tbaa !29
  %t690 = getelementptr %"compiler/generic:Program", ptr %t688, i32 0, i32 14
  %t691 = load i64, ptr %l4, !tbaa !24
  %t694 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t690, i64 %t691)
  %t695 = extractvalue { i32, i64 } %t694, 1
  %t696 = extractvalue { i32, i64 } %t694, 0
  store i32 %t696, ptr %l387
  %t697 = icmp ne i32 %t696, 0
  br i1 %t697, label %bb164, label %ok.698, !prof !99
ok.698:
  store i64 %t695, ptr %l386
  br label %bb163
bb163:
  %t699 = load i64, ptr %l386, !tbaa !24
  store i64 %t699, ptr %l382, !tbaa !24
  br label %bb166
bb164:
  br label %bb165
bb165:
  store i64 0, ptr %l382, !tbaa !24
  br label %bb166
bb166:
  %t700 = load i64, ptr %l382, !tbaa !24
  store i64 %t700, ptr %l42, !tbaa !24
  %t701 = load i64, ptr %l11, !tbaa !24
  store i64 %t701, ptr %l43, !tbaa !24
  %t704 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l6)
  store i64 %t704, ptr %l390
  br label %bb167
bb167:
  %t705 = load i64, ptr %l390, !tbaa !24
  store i64 %t705, ptr %l44, !tbaa !24
  store i64 1, ptr %l45, !tbaa !24
  %t706 = load i64, ptr %l44, !tbaa !24
  %t707 = load i64, ptr %l43, !tbaa !24
  %t710 = icmp sgt i64 %t706, %t707
  br i1 %t710, label %bb168, label %bb169
bb168:
  %t712 = load i64, ptr %l45, !tbaa !24
  %t714 = icmp sgt i64 %t712, 0
  br i1 %t714, label %bb170, label %bb171
bb169:
  store i64 0, ptr %l394, !tbaa !24
  br label %bb173
bb170:
  %t716 = load i64, ptr %l44, !tbaa !24
  %t717 = load i64, ptr %l43, !tbaa !24
  %t720 = sub i64 %t716, %t717
  %t721 = load i64, ptr %l45, !tbaa !24
  %t724 = add i64 %t720, %t721
  %t726 = sub i64 %t724, 1
  %t727 = load i64, ptr %l45, !tbaa !24
  %t730 = sdiv i64 %t726, %t727
  store i64 %t730, ptr %l397, !tbaa !24
  br label %bb172
bb171:
  store i64 0, ptr %l397, !tbaa !24
  br label %bb172
bb172:
  %t732 = load i64, ptr %l397, !tbaa !24
  store i64 %t732, ptr %l394, !tbaa !24
  br label %bb173
bb173:
  %t733 = load i64, ptr %l394, !tbaa !24
  store i64 %t733, ptr %l46, !tbaa !24
  store i64 0, ptr %l47, !tbaa !24
  br label %bb174
bb174:
  store %olang.scope zeroinitializer, ptr %s34
  %t734 = load i64, ptr %l47, !tbaa !24
  %t735 = load i64, ptr %l46, !tbaa !24
  %t738 = icmp slt i64 %t734, %t735
  %t740 = xor i1 %t738, true
  br i1 %t740, label %bb175, label %bb176
bb175:
  call void @__olang_scope_close(ptr %s34)
  br label %bb185
bb176:
  br label %bb177
bb177:
  %t742 = load i64, ptr %l43, !tbaa !24
  %t743 = load i64, ptr %l47, !tbaa !24
  %t744 = load i64, ptr %l45, !tbaa !24
  %t747 = mul i64 %t743, %t744
  %t750 = add i64 %t742, %t747
  store i64 %t750, ptr %l48, !tbaa !24
  %t752 = load ptr, ptr %l0, !tbaa !29
  %t754 = getelementptr %"compiler/generic:Program", ptr %t752, i32 0, i32 16
  store ptr %t754, ptr %l416, !tbaa !29
  %t755 = load i64, ptr %l42, !tbaa !24
  %t756 = load i64, ptr %l48, !tbaa !24
  %t759 = add i64 %t755, %t756
  store i64 %t759, ptr %l419, !tbaa !24
  %t760 = load i64, ptr %l4, !tbaa !24
  store i64 %t760, ptr %l420, !tbaa !24
  %t761 = load i64, ptr %l48, !tbaa !24
  %t764 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l6, i64 %t761)
  store i32 %t764, ptr %l423
  br label %bb178
bb178:
  %t765 = load i32, ptr %l41, !tbaa !23
  %t766 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t767 = load i64, ptr %l420, !tbaa !24
  %t768 = load i32, ptr %l423, !tbaa !23
  %t771 = call %"compiler/generic:varRow" @compiler_2fgeneric_3avarRow_2ector(ptr %s34, i64 %t767, i32 %t768, i32 %t765, i32 %t766)
  store %"compiler/generic:varRow" %t771, ptr %l426
  br label %bb179
bb179:
  %t772 = load ptr, ptr %l416, !tbaa !29
  %t773 = load i64, ptr %l419, !tbaa !24
  %t774 = load %"compiler/generic:varRow", ptr %l426
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eSetAt_H989a0ed1a318d7d0cbb6cc41385b33d2(ptr %v0, ptr %t772, i64 %t773, %"compiler/generic:varRow" %t774)
  br label %bb180
bb180:
  %t775 = getelementptr %"compiler/generic:Context", ptr %l5, i32 0, i32 2
  store ptr %t775, ptr %l427, !tbaa !29
  %t776 = load i64, ptr %l48, !tbaa !24
  %t779 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l6, i64 %t776)
  store i32 %t779, ptr %l430
  br label %bb181
bb181:
  %t780 = load ptr, ptr %l0, !tbaa !29
  %t782 = getelementptr %"compiler/generic:Program", ptr %t780, i32 0, i32 2
  %t783 = load i64, ptr %l4, !tbaa !24
  %t784 = load i64, ptr %l48, !tbaa !24
  %t785 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t790 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t782, i64 %t783, i64 %t784, i64 %t785)
  store i32 %t790, ptr %l436
  br label %bb182
bb182:
  %t791 = load ptr, ptr %l427, !tbaa !29
  %t792 = load i32, ptr %l430, !tbaa !23
  %t793 = load i32, ptr %l436, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %s0, ptr %t791, i32 %t792, i32 %t793)
  br label %bb183
bb183:
  call void @__olang_scope_close(ptr %s34)
  br label %bb184
bb184:
  %t794 = load i64, ptr %l47, !tbaa !24
  %t796 = add i64 %t794, 1
  store i64 %t796, ptr %l47, !tbaa !24
  br label %bb174
bb185:
  %t798 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t799 = load ptr, ptr %t798, !tbaa !29
  %t801 = getelementptr %"compiler/ast:Func", ptr %t799, i32 0, i32 5
  %t802 = load { i64, ptr }, ptr %t801, !tbaa !27
  %t804 = extractvalue { i64, ptr } %t802, 0
  %t806 = icmp sgt i64 %t804, 0
  br i1 %t806, label %bb186, label %bb187
bb186:
  %t808 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t809 = load ptr, ptr %t808, !tbaa !29
  %t811 = getelementptr %"compiler/ast:Func", ptr %t809, i32 0, i32 5
  %t812 = load { i64, ptr }, ptr %t811, !tbaa !27
  store { i64, ptr } %t812, ptr %l49, !tbaa !27
  store i64 0, ptr %l50, !tbaa !24
  %t814 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t816 = extractvalue { i64, ptr } %t814, 0
  store i64 %t816, ptr %l51, !tbaa !24
  br label %bb188
bb187:
  br label %bb195
bb188:
  %t818 = load i64, ptr %l50, !tbaa !24
  %t819 = load i64, ptr %l51, !tbaa !24
  %t822 = icmp slt i64 %t818, %t819
  %t824 = xor i1 %t822, true
  br i1 %t824, label %bb189, label %bb190
bb189:
  br label %bb194
bb190:
  br label %bb191
bb191:
  %t826 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t826, ptr %l451, !tbaa !27
  %t827 = load i64, ptr %l50, !tbaa !24
  %t829 = getelementptr { i64, ptr }, ptr %l451, i32 0, i32 1
  %t830 = load ptr, ptr %t829, !tbaa !27
  %t831 = getelementptr ptr, ptr %t830, i64 %t827
  %t832 = load ptr, ptr %t831, !tbaa !39
  %t834 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2econstraint(ptr %v0, ptr %s0, ptr %v0, ptr %t834, ptr %l5, ptr %t832)
  br label %bb192
bb192:
  br label %bb193
bb193:
  %t839 = load i64, ptr %l50, !tbaa !24
  %t841 = add i64 %t839, 1
  store i64 %t841, ptr %l50, !tbaa !24
  br label %bb188
bb194:
  br label %bb195
bb195:
  %t843 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t843, ptr %l53, !tbaa !23
  store i32 0, ptr %l54, !tbaa !23
  %t845 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t846 = load ptr, ptr %t845, !tbaa !29
  %t848 = getelementptr %"compiler/ast:Func", ptr %t846, i32 0, i32 1
  %t849 = load ptr, ptr %t848, !tbaa !29
  %t851 = icmp eq ptr %t849, null
  %t853 = xor i1 %t851, true
  br i1 %t853, label %bb196, label %bb197
bb196:
  %t855 = load ptr, ptr %l0, !tbaa !29
  store ptr %t855, ptr %l464, !tbaa !29
  store ptr %l5, ptr %l465, !tbaa !29
  %t856 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t857 = load ptr, ptr %t856, !tbaa !29
  %t859 = getelementptr %"compiler/ast:Func", ptr %t857, i32 0, i32 1
  %t860 = load ptr, ptr %t859, !tbaa !29
  %t862 = icmp eq ptr %t860, null
  br i1 %t862, label %bb198, label %bb199
bb197:
  br label %bb205
bb198:
  call void @__olang_check_failed(ptr @olang_loc_51637bfcdf5c43e6_f25177a3c4098752)
  unreachable
bb199:
  br label %bb200
bb200:
  %t864 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t865 = load ptr, ptr %t864, !tbaa !29
  %t867 = getelementptr %"compiler/ast:Func", ptr %t865, i32 0, i32 1
  %t868 = load ptr, ptr %t867, !tbaa !29
  %t871 = getelementptr %"compiler/ast:Param", ptr %t868, i32 0, i32 2
  %t872 = load ptr, ptr %t871, !tbaa !29
  %t873 = load ptr, ptr %l464, !tbaa !29
  %t874 = load ptr, ptr %l465, !tbaa !29
  %t876 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v0, ptr %t873, ptr %t874, ptr %t872)
  store i32 %t876, ptr %l473
  br label %bb201
bb201:
  %t877 = load i32, ptr %l473, !tbaa !23
  store i32 %t877, ptr %l53, !tbaa !23
  %t878 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t879 = load ptr, ptr %t878, !tbaa !29
  %t881 = getelementptr %"compiler/ast:Func", ptr %t879, i32 0, i32 1
  %t882 = load ptr, ptr %t881, !tbaa !29
  %t884 = icmp eq ptr %t882, null
  br i1 %t884, label %bb202, label %bb203
bb202:
  call void @__olang_check_failed(ptr @olang_loc_d562bdacef01dcd_aa524bbd020d1179)
  unreachable
bb203:
  br label %bb204
bb204:
  %t886 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t887 = load ptr, ptr %t886, !tbaa !29
  %t889 = getelementptr %"compiler/ast:Func", ptr %t887, i32 0, i32 1
  %t890 = load ptr, ptr %t889, !tbaa !29
  %t893 = getelementptr %"compiler/ast:Param", ptr %t890, i32 0, i32 1
  %t894 = load i32, ptr %t893, !tbaa !23
  store i32 %t894, ptr %l54, !tbaa !23
  br label %bb205
bb205:
  %t896 = load ptr, ptr %l0, !tbaa !29
  %t897 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t898 = load ptr, ptr %t897, !tbaa !29
  %t900 = getelementptr %"compiler/ast:Func", ptr %t898, i32 0, i32 3
  %t901 = load ptr, ptr %t900, !tbaa !29
  %t902 = load i32, ptr %l53, !tbaa !23
  %t903 = load i32, ptr %l54, !tbaa !23
  %t909 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %s0, ptr %v0, ptr %t896, ptr %l5, ptr %t901, i32 %t902, i32 %t903)
  store i32 %t909, ptr %l487
  br label %bb206
bb206:
  %t910 = load i32, ptr %l487, !tbaa !23
  store i32 %t910, ptr %l55, !tbaa !23
  %t911 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t912 = load ptr, ptr %t911, !tbaa !29
  %t914 = getelementptr %"compiler/ast:Func", ptr %t912, i32 0, i32 9
  %t915 = load ptr, ptr %t914, !tbaa !29
  %t917 = icmp eq ptr %t915, null
  %t919 = xor i1 %t917, true
  br i1 %t919, label %bb207, label %bb208
bb207:
  %t921 = load ptr, ptr %l0, !tbaa !29
  %t923 = getelementptr %"compiler/generic:Program", ptr %t921, i32 0, i32 43
  store ptr %t923, ptr %l493, !tbaa !29
  %t924 = load i64, ptr %l1, !tbaa !24
  store i64 %t924, ptr %l494, !tbaa !24
  %t925 = load ptr, ptr %l0, !tbaa !29
  %t926 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t927 = load ptr, ptr %t926, !tbaa !29
  %t929 = getelementptr %"compiler/ast:Func", ptr %t927, i32 0, i32 9
  %t930 = load ptr, ptr %t929, !tbaa !29
  %t934 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v0, ptr %t925, ptr %l5, ptr %t930)
  store i32 %t934, ptr %l499
  br label %bb209
bb208:
  br label %bb211
bb209:
  %t935 = load ptr, ptr %l493, !tbaa !29
  %t936 = load i64, ptr %l494, !tbaa !24
  %t937 = load i32, ptr %l499, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %t935, i64 %t936, i32 %t937)
  br label %bb210
bb210:
  br label %bb211
bb211:
  %t938 = load ptr, ptr %l0, !tbaa !29
  %t941 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eviewNext(ptr %v0, ptr %v0, ptr %t938, ptr %l3)
  store i1 %t941, ptr %l502
  br label %bb212
bb212:
  %t942 = load i1, ptr %l502, !tbaa !21
  br i1 %t942, label %bb213, label %bb214
bb213:
  store %olang.scope zeroinitializer, ptr %s42
  %t943 = load ptr, ptr %l0, !tbaa !29
  %t945 = getelementptr %"compiler/generic:Program", ptr %t943, i32 0, i32 2
  store ptr %t945, ptr %l504, !tbaa !29
  %t946 = load ptr, ptr %l0, !tbaa !29
  %t948 = getelementptr %"compiler/generic:Program", ptr %t946, i32 0, i32 2
  %t949 = load i32, ptr %l55, !tbaa !23
  %t952 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t948, i32 %t949)
  store i32 %t952, ptr %l508
  br label %bb215
bb214:
  br label %bb226
bb215:
  %t953 = load ptr, ptr %l0, !tbaa !29
  %t955 = getelementptr %"compiler/generic:Program", ptr %t953, i32 0, i32 2
  %t956 = load i32, ptr %l55, !tbaa !23
  %t959 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t955, i32 %t956)
  store i32 %t959, ptr %l512
  br label %bb216
bb216:
  %t960 = load ptr, ptr %l0, !tbaa !29
  %t962 = getelementptr %"compiler/generic:Program", ptr %t960, i32 0, i32 2
  %t963 = load i32, ptr %l55, !tbaa !23
  %t966 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t962, i32 %t963)
  store i32 %t966, ptr %l516
  br label %bb217
bb217:
  %t967 = load ptr, ptr %l0, !tbaa !29
  %t969 = getelementptr %"compiler/generic:Program", ptr %t967, i32 0, i32 2
  store ptr %t969, ptr %l518, !tbaa !29
  %t970 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleFn, !tbaa !24
  store i64 %t970, ptr %l519, !tbaa !24
  %t971 = load ptr, ptr %l0, !tbaa !29
  %t973 = getelementptr %"compiler/generic:Program", ptr %t971, i32 0, i32 2
  store ptr %t973, ptr %l521, !tbaa !29
  %t974 = load ptr, ptr %l0, !tbaa !29
  %t976 = getelementptr %"compiler/generic:Program", ptr %t974, i32 0, i32 2
  %t977 = load i32, ptr %l55, !tbaa !23
  %t980 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t976, i32 %t977)
  store i32 %t980, ptr %l525
  br label %bb218
bb218:
  %t981 = load ptr, ptr %l521, !tbaa !29
  %t982 = load i32, ptr %l525, !tbaa !23
  %t983 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s42, ptr %t981, i32 %t982)
  store { i64, ptr } %t983, ptr %l526
  br label %bb219
bb219:
  %t984 = load { i64, ptr }, ptr %l526, !tbaa !27
  %t985 = extractvalue { i64, ptr } %t984, 0
  store i64 %t985, ptr %l527, !tbaa !24
  %t986 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  store i64 %t986, ptr %l528, !tbaa !24
  %t987 = load i64, ptr %l527, !tbaa !24
  %t988 = icmp sge i64 %t987, 0
  br i1 %t988, label %bb220, label %bb221
bb220:
  %t990 = load i64, ptr %l527, !tbaa !24
  %t991 = icmp sle i64 %t990, 1152921504606846975
  br i1 %t991, label %bb222, label %bb223
bb221:
  call void @__olang_check_failed(ptr @olang_loc_225d07cb5d9263f0_78eb4cfe04925884)
  unreachable
bb222:
  %t993 = load i64, ptr %l527, !tbaa !24
  %t994 = mul i64 %t993, 8
  %t995 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t994)
  %t996 = load i64, ptr %l528, !tbaa !24
  store i64 0, ptr %t997
  br label %fill.998
fill.998:
  %t1001 = load i64, ptr %t997
  %t1002 = icmp slt i64 %t1001, %t993
  br i1 %t1002, label %fillb.999, label %filld.1000
fillb.999:
  %t1003 = getelementptr i64, ptr %t995, i64 %t1001
  store i64 %t996, ptr %t1003
  %t1004 = add i64 %t1001, 1
  store i64 %t1004, ptr %t997
  br label %fill.998
filld.1000:
  %t1005 = insertvalue { i64, ptr } undef, i64 %t993, 0
  %t1006 = insertvalue { i64, ptr } %t1005, ptr %t995, 1
  %t1007 = load ptr, ptr %l518, !tbaa !29
  %t1008 = load i64, ptr %l519, !tbaa !24
  %t1010 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %s42, ptr %s42, ptr %t1007, i64 %t1008, { i64, ptr } %t1006, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i64] }>, ptr @.d8, i32 0, i32 1) })
  store i32 %t1010, ptr %l532
  br label %bb224
bb223:
  call void @__olang_check_failed(ptr @olang_loc_225d07cb5d9263f0_78eb4cfe04925884)
  unreachable
bb224:
  %t1011 = load ptr, ptr %l504, !tbaa !29
  %t1012 = load i32, ptr %l508, !tbaa !23
  %t1013 = load i32, ptr %l512, !tbaa !23
  %t1014 = load i32, ptr %l516, !tbaa !23
  %t1015 = load i32, ptr %l532, !tbaa !23
  %t1016 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t1011, i32 %t1012, i32 %t1013, i32 %t1014, i32 %t1015, i64 0, i1 false, i32 0, i64 0)
  store i32 %t1016, ptr %l533
  br label %bb225
bb225:
  %t1017 = load i32, ptr %l533, !tbaa !23
  store i32 %t1017, ptr %l55, !tbaa !23
  call void @__olang_scope_close(ptr %s42)
  br label %bb226
bb226:
  %t1018 = load ptr, ptr %l0, !tbaa !29
  %t1019 = load i64, ptr %l1, !tbaa !24
  %t1022 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t1018, i64 %t1019)
  store i1 %t1022, ptr %l536
  br label %bb227
bb227:
  %t1023 = load i1, ptr %l536, !tbaa !21
  %t1024 = xor i1 %t1023, true
  br i1 %t1024, label %bb228, label %bb229
bb228:
  %t1026 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t1027 = load ptr, ptr %t1026, !tbaa !29
  %t1029 = getelementptr %"compiler/ast:Func", ptr %t1027, i32 0, i32 7
  %t1030 = load i1, ptr %t1029, !tbaa !21
  %t1032 = xor i1 %t1030, true
  store i1 %t1032, ptr %l538, !tbaa !21
  br label %bb230
bb229:
  store i1 false, ptr %l538, !tbaa !21
  br label %bb230
bb230:
  %t1034 = load i1, ptr %l538, !tbaa !21
  br i1 %t1034, label %bb231, label %bb232
bb231:
  %t1035 = load ptr, ptr %l0, !tbaa !29
  %t1036 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t1037 = load ptr, ptr %t1036, !tbaa !29
  %t1039 = getelementptr %"compiler/ast:Func", ptr %t1037, i32 0, i32 3
  %t1040 = load ptr, ptr %t1039, !tbaa !29
  %t1041 = load i32, ptr %l55, !tbaa !23
  %t1042 = load i32, ptr %l53, !tbaa !23
  %t1043 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1046 = icmp ne i32 %t1042, %t1043
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eflagBans(ptr %v0, ptr %s0, ptr %v0, ptr %t1035, ptr %l5, ptr %t1040, i32 %t1041, i1 %t1046)
  br label %bb233
bb232:
  br label %bb234
bb233:
  br label %bb234
bb234:
  %t1052 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t1053 = load ptr, ptr %t1052, !tbaa !29
  %t1055 = getelementptr %"compiler/ast:Func", ptr %t1053, i32 0, i32 4
  %t1056 = load { i64, ptr }, ptr %t1055, !tbaa !27
  %t1058 = call %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %t1056)
  store %"compiler/source:Span" %t1058, ptr %l552
  br label %bb235
bb235:
  %t1059 = getelementptr %"compiler/source:Span", ptr %l552, i32 0, i32 0
  %t1060 = load i32, ptr %t1059, !tbaa !23
  %t1062 = icmp sge i32 %t1060, 0
  br i1 %t1062, label %bb236, label %bb237
bb236:
  %t1064 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1064, ptr %l555, !tbaa !29
  %t1065 = load ptr, ptr %l0, !tbaa !29
  %t1067 = getelementptr %"compiler/generic:Program", ptr %t1065, i32 0, i32 2
  %t1068 = load i32, ptr %l55, !tbaa !23
  %t1071 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t1067, i32 %t1068)
  store i32 %t1071, ptr %l559
  br label %bb238
bb237:
  br label %bb257
bb238:
  %t1072 = load ptr, ptr %l555, !tbaa !29
  %t1073 = load i32, ptr %l559, !tbaa !23
  %t1074 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2egeneratorOf(ptr %v0, ptr %t1072, i32 %t1073)
  store i32 %t1074, ptr %l560
  br label %bb239
bb239:
  %t1075 = load i32, ptr %l560, !tbaa !23
  store i32 %t1075, ptr %l56, !tbaa !23
  %t1076 = load i32, ptr %l56, !tbaa !23
  %t1077 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1080 = icmp ne i32 %t1076, %t1077
  br i1 %t1080, label %bb240, label %bb241
bb240:
  %t1082 = load ptr, ptr %l0, !tbaa !29
  %t1084 = getelementptr %"compiler/generic:Program", ptr %t1082, i32 0, i32 18
  %t1085 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t1084, i64 %t1085, i1 true)
  br label %bb242
bb241:
  br label %bb256
bb242:
  %t1088 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t1089 = load ptr, ptr %t1088, !tbaa !29
  %t1091 = call i64 @compiler_2fgeneric_2egenElemOf(ptr %v0, ptr %t1089)
  store i64 %t1091, ptr %l568
  br label %bb243
bb243:
  %t1092 = load i64, ptr %l568, !tbaa !24
  store i64 %t1092, ptr %l57, !tbaa !24
  %t1093 = load i64, ptr %l57, !tbaa !24
  %t1094 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenPerTurn, !tbaa !24
  %t1097 = icmp ne i64 %t1093, %t1094
  br i1 %t1097, label %bb244, label %bb245
bb244:
  %t1099 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1099, ptr %l572, !tbaa !29
  %t1100 = load ptr, ptr %l0, !tbaa !29
  %t1102 = getelementptr %"compiler/generic:Program", ptr %t1100, i32 0, i32 2
  %t1103 = load i32, ptr %l55, !tbaa !23
  %t1106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t1102, i32 %t1103)
  store i32 %t1106, ptr %l576
  br label %bb246
bb245:
  br label %bb252
bb246:
  %t1107 = load ptr, ptr %l572, !tbaa !29
  %t1108 = load i32, ptr %l576, !tbaa !23
  %t1109 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eviewGeneratorOf(ptr %v0, ptr %t1107, i32 %t1108)
  store i32 %t1109, ptr %l577
  br label %bb247
bb247:
  %t1110 = load i32, ptr %l577, !tbaa !23
  store i32 %t1110, ptr %l58, !tbaa !23
  %t1111 = load i32, ptr %l58, !tbaa !23
  %t1112 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1115 = icmp ne i32 %t1111, %t1112
  br i1 %t1115, label %bb248, label %bb249
bb248:
  %t1117 = load i32, ptr %l58, !tbaa !23
  store i32 %t1117, ptr %l56, !tbaa !23
  %t1119 = load ptr, ptr %l0, !tbaa !29
  %t1121 = getelementptr %"compiler/generic:Program", ptr %t1119, i32 0, i32 19
  %t1122 = load i64, ptr %l1, !tbaa !24
  %t1123 = load i64, ptr %l57, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t1121, i64 %t1122, i64 %t1123)
  br label %bb250
bb249:
  br label %bb251
bb250:
  br label %bb251
bb251:
  br label %bb252
bb252:
  %t1127 = load ptr, ptr %l0, !tbaa !29
  %t1129 = getelementptr %"compiler/generic:Program", ptr %t1127, i32 0, i32 2
  store ptr %t1129, ptr %l587, !tbaa !29
  %t1130 = load ptr, ptr %l0, !tbaa !29
  %t1132 = getelementptr %"compiler/generic:Program", ptr %t1130, i32 0, i32 2
  %t1133 = load i32, ptr %l55, !tbaa !23
  %t1136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t1132, i32 %t1133)
  store i32 %t1136, ptr %l591
  br label %bb253
bb253:
  %t1137 = load i32, ptr %l56, !tbaa !23
  store i32 %t1137, ptr %l592, !tbaa !23
  %t1138 = load ptr, ptr %l0, !tbaa !29
  %t1140 = getelementptr %"compiler/generic:Program", ptr %t1138, i32 0, i32 2
  %t1141 = load i32, ptr %l55, !tbaa !23
  %t1144 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t1140, i32 %t1141)
  store i32 %t1144, ptr %l596
  br label %bb254
bb254:
  %t1145 = load ptr, ptr %l587, !tbaa !29
  %t1146 = load i32, ptr %l591, !tbaa !23
  %t1147 = load i32, ptr %l592, !tbaa !23
  %t1148 = load i32, ptr %l596, !tbaa !23
  %t1149 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t1145, i32 %t1146, i32 %t1147, i32 0, i32 %t1148, i64 0, i1 false, i32 0, i64 0)
  store i32 %t1149, ptr %l597
  br label %bb255
bb255:
  %t1150 = load i32, ptr %l597, !tbaa !23
  store i32 %t1150, ptr %l55, !tbaa !23
  br label %bb256
bb256:
  br label %bb257
bb257:
  %t1152 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l6)
  store i64 %t1152, ptr %l599
  br label %bb258
bb258:
  %t1153 = load i64, ptr %l11, !tbaa !24
  %t1154 = load i64, ptr %l599, !tbaa !24
  %t1156 = icmp sgt i64 %t1154, %t1153
  br i1 %t1156, label %bb259, label %bb260
bb259:
  store %olang.scope zeroinitializer, ptr %s48
  %t1158 = load ptr, ptr %l0, !tbaa !29
  %t1160 = getelementptr %"compiler/generic:Program", ptr %t1158, i32 0, i32 2
  store ptr %t1160, ptr %l603, !tbaa !29
  %t1161 = load ptr, ptr %l0, !tbaa !29
  %t1163 = getelementptr %"compiler/generic:Program", ptr %t1161, i32 0, i32 2
  %t1164 = load i32, ptr %l55, !tbaa !23
  %t1167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t1163, i32 %t1164)
  store i32 %t1167, ptr %l607
  br label %bb261
bb260:
  br label %bb295
bb261:
  %t1168 = load ptr, ptr %l603, !tbaa !29
  %t1169 = load i32, ptr %l607, !tbaa !23
  %t1170 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1168, i32 %t1169)
  store { i64, ptr } %t1170, ptr %l608
  br label %bb262
bb262:
  %t1171 = load { i64, ptr }, ptr %l608, !tbaa !27
  store { i64, ptr } %t1171, ptr %l59, !tbaa !27
  %t1172 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t1174 = extractvalue { i64, ptr } %t1172, 0
  store i64 %t1174, ptr %l610, !tbaa !24
  %t1175 = load i64, ptr %l610, !tbaa !24
  %t1176 = icmp sge i64 %t1175, 0
  br i1 %t1176, label %bb263, label %bb264
bb263:
  %t1178 = load i64, ptr %l610, !tbaa !24
  %t1179 = icmp sle i64 %t1178, 2305843009213693951
  br i1 %t1179, label %bb265, label %bb266
bb264:
  call void @__olang_check_failed(ptr @olang_loc_5f28aa7941f8b69d_8b8586bebbd1d991)
  unreachable
bb265:
  %t1181 = load i64, ptr %l610, !tbaa !24
  %t1182 = mul i64 %t1181, 4
  %t1183 = call ptr @__olang_scope_alloc_zeroed(ptr %s48, i64 %t1182)
  %t1184 = insertvalue { i64, ptr } undef, i64 %t1181, 0
  %t1185 = insertvalue { i64, ptr } %t1184, ptr %t1183, 1
  store { i64, ptr } %t1185, ptr %l60, !tbaa !27
  %t1187 = load i64, ptr %l11, !tbaa !24
  store i64 %t1187, ptr %l61, !tbaa !24
  store i64 0, ptr %l62, !tbaa !24
  %t1189 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t1191 = extractvalue { i64, ptr } %t1189, 0
  store i64 %t1191, ptr %l63, !tbaa !24
  store i64 1, ptr %l64, !tbaa !24
  %t1193 = load i64, ptr %l63, !tbaa !24
  %t1194 = load i64, ptr %l62, !tbaa !24
  %t1197 = icmp sgt i64 %t1193, %t1194
  br i1 %t1197, label %bb267, label %bb268
bb266:
  call void @__olang_check_failed(ptr @olang_loc_5f28aa7941f8b69d_8b8586bebbd1d991)
  unreachable
bb267:
  %t1199 = load i64, ptr %l64, !tbaa !24
  %t1201 = icmp sgt i64 %t1199, 0
  br i1 %t1201, label %bb269, label %bb270
bb268:
  store i64 0, ptr %l620, !tbaa !24
  br label %bb272
bb269:
  %t1203 = load i64, ptr %l63, !tbaa !24
  %t1204 = load i64, ptr %l62, !tbaa !24
  %t1207 = sub i64 %t1203, %t1204
  %t1208 = load i64, ptr %l64, !tbaa !24
  %t1211 = add i64 %t1207, %t1208
  %t1213 = sub i64 %t1211, 1
  %t1214 = load i64, ptr %l64, !tbaa !24
  %t1217 = sdiv i64 %t1213, %t1214
  store i64 %t1217, ptr %l623, !tbaa !24
  br label %bb271
bb270:
  store i64 0, ptr %l623, !tbaa !24
  br label %bb271
bb271:
  %t1219 = load i64, ptr %l623, !tbaa !24
  store i64 %t1219, ptr %l620, !tbaa !24
  br label %bb272
bb272:
  %t1220 = load i64, ptr %l620, !tbaa !24
  store i64 %t1220, ptr %l65, !tbaa !24
  store i64 0, ptr %l66, !tbaa !24
  br label %bb273
bb273:
  %t1221 = load i64, ptr %l66, !tbaa !24
  %t1222 = load i64, ptr %l65, !tbaa !24
  %t1225 = icmp slt i64 %t1221, %t1222
  %t1227 = xor i1 %t1225, true
  br i1 %t1227, label %bb274, label %bb275
bb274:
  br label %bb289
bb275:
  br label %bb276
bb276:
  %t1229 = load i64, ptr %l62, !tbaa !24
  %t1230 = load i64, ptr %l66, !tbaa !24
  %t1231 = load i64, ptr %l64, !tbaa !24
  %t1234 = mul i64 %t1230, %t1231
  %t1237 = add i64 %t1229, %t1234
  store i64 %t1237, ptr %l67, !tbaa !24
  %t1239 = load i64, ptr %l67, !tbaa !24
  store i64 %t1239, ptr %l641, !tbaa !24
  %t1240 = getelementptr %"compiler/generic:fnRow", ptr %l3, i32 0, i32 1
  %t1241 = load ptr, ptr %t1240, !tbaa !29
  %t1243 = getelementptr %"compiler/ast:Func", ptr %t1241, i32 0, i32 1
  %t1244 = load ptr, ptr %t1243, !tbaa !29
  %t1246 = icmp eq ptr %t1244, null
  %t1248 = xor i1 %t1246, true
  br i1 %t1248, label %bb277, label %bb278
bb277:
  store i64 0, ptr %l646, !tbaa !24
  br label %bb279
bb278:
  store i64 1, ptr %l646, !tbaa !24
  br label %bb279
bb279:
  %t1250 = load i64, ptr %l641, !tbaa !24
  %t1251 = load i64, ptr %l646, !tbaa !24
  %t1252 = add i64 %t1250, %t1251
  %t1254 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t1255 = load ptr, ptr %t1254, !tbaa !27
  %t1256 = getelementptr i1, ptr %t1255, i64 %t1252
  %t1257 = load i1, ptr %t1256, !tbaa !31
  store i1 %t1257, ptr %l68, !tbaa !21
  %t1259 = load i64, ptr %l67, !tbaa !24
  store i64 %t1259, ptr %l649, !tbaa !24
  %t1260 = load i1, ptr %l68, !tbaa !21
  br i1 %t1260, label %bb280, label %bb281
bb280:
  %t1262 = load ptr, ptr %l0, !tbaa !29
  %t1263 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t1263, ptr %l653, !tbaa !27
  %t1264 = load i64, ptr %l67, !tbaa !24
  %t1266 = getelementptr { i64, ptr }, ptr %l653, i32 0, i32 1
  %t1267 = load ptr, ptr %t1266, !tbaa !27
  %t1268 = getelementptr i32, ptr %t1267, i64 %t1264
  %t1269 = load i32, ptr %t1268, !tbaa !33
  %t1270 = load i64, ptr %l4, !tbaa !24
  %t1271 = load i64, ptr %l61, !tbaa !24
  %t1276 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewithLengths(ptr %v0, ptr %t1262, i32 %t1269, i1 true, i64 %t1270, i64 %t1271)
  store i32 %t1276, ptr %l658
  br label %bb282
bb281:
  %t1277 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t1277, ptr %l659, !tbaa !27
  %t1278 = load i64, ptr %l67, !tbaa !24
  %t1280 = getelementptr { i64, ptr }, ptr %l659, i32 0, i32 1
  %t1281 = load ptr, ptr %t1280, !tbaa !27
  %t1282 = getelementptr i32, ptr %t1281, i64 %t1278
  %t1283 = load i32, ptr %t1282, !tbaa !33
  store i32 %t1283, ptr %l651, !tbaa !23
  br label %bb283
bb282:
  %t1285 = load i32, ptr %l658, !tbaa !23
  store i32 %t1285, ptr %l651, !tbaa !23
  br label %bb283
bb283:
  %t1286 = load i32, ptr %l651, !tbaa !23
  %t1287 = load i64, ptr %l649, !tbaa !24
  %t1288 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t1289 = load ptr, ptr %t1288, !tbaa !27
  %t1290 = getelementptr i32, ptr %t1289, i64 %t1287
  store i32 %t1286, ptr %t1290, !tbaa !33
  %t1291 = load i64, ptr %l61, !tbaa !24
  store i64 %t1291, ptr %l662, !tbaa !24
  %t1292 = load i1, ptr %l68, !tbaa !21
  br i1 %t1292, label %bb284, label %bb285
bb284:
  %t1294 = load ptr, ptr %l0, !tbaa !29
  %t1295 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t1295, ptr %l666, !tbaa !27
  %t1296 = load i64, ptr %l67, !tbaa !24
  %t1298 = getelementptr { i64, ptr }, ptr %l666, i32 0, i32 1
  %t1299 = load ptr, ptr %t1298, !tbaa !27
  %t1300 = getelementptr i32, ptr %t1299, i64 %t1296
  %t1301 = load i32, ptr %t1300, !tbaa !33
  %t1304 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elevelCount(ptr %v0, ptr %t1294, i32 %t1301, i1 true)
  store i64 %t1304, ptr %l669
  br label %bb286
bb285:
  store i64 0, ptr %l664, !tbaa !24
  br label %bb287
bb286:
  %t1305 = load i64, ptr %l669, !tbaa !24
  store i64 %t1305, ptr %l664, !tbaa !24
  br label %bb287
bb287:
  %t1306 = load i64, ptr %l662, !tbaa !24
  %t1307 = load i64, ptr %l664, !tbaa !24
  %t1308 = add i64 %t1306, %t1307
  store i64 %t1308, ptr %l61, !tbaa !24
  br label %bb288
bb288:
  %t1310 = load i64, ptr %l66, !tbaa !24
  %t1312 = add i64 %t1310, 1
  store i64 %t1312, ptr %l66, !tbaa !24
  br label %bb273
bb289:
  %t1314 = load ptr, ptr %l0, !tbaa !29
  %t1316 = getelementptr %"compiler/generic:Program", ptr %t1314, i32 0, i32 2
  store ptr %t1316, ptr %l674, !tbaa !29
  %t1317 = load ptr, ptr %l0, !tbaa !29
  %t1319 = getelementptr %"compiler/generic:Program", ptr %t1317, i32 0, i32 2
  %t1320 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t1323 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s48, ptr %t1319, { i64, ptr } %t1320)
  store i32 %t1323, ptr %l678
  br label %bb290
bb290:
  %t1324 = load ptr, ptr %l0, !tbaa !29
  %t1326 = getelementptr %"compiler/generic:Program", ptr %t1324, i32 0, i32 2
  %t1327 = load i32, ptr %l55, !tbaa !23
  %t1330 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t1326, i32 %t1327)
  store i32 %t1330, ptr %l682
  br label %bb291
bb291:
  %t1331 = load ptr, ptr %l0, !tbaa !29
  %t1333 = getelementptr %"compiler/generic:Program", ptr %t1331, i32 0, i32 2
  %t1334 = load i32, ptr %l55, !tbaa !23
  %t1337 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t1333, i32 %t1334)
  store i32 %t1337, ptr %l686
  br label %bb292
bb292:
  %t1338 = load ptr, ptr %l0, !tbaa !29
  %t1340 = getelementptr %"compiler/generic:Program", ptr %t1338, i32 0, i32 2
  %t1341 = load i32, ptr %l55, !tbaa !23
  %t1344 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t1340, i32 %t1341)
  store i32 %t1344, ptr %l690
  br label %bb293
bb293:
  %t1345 = load ptr, ptr %l674, !tbaa !29
  %t1346 = load i32, ptr %l678, !tbaa !23
  %t1347 = load i32, ptr %l682, !tbaa !23
  %t1348 = load i32, ptr %l686, !tbaa !23
  %t1349 = load i32, ptr %l690, !tbaa !23
  %t1350 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t1345, i32 %t1346, i32 %t1347, i32 %t1348, i32 %t1349, i64 0, i1 false, i32 0, i64 0)
  store i32 %t1350, ptr %l691
  br label %bb294
bb294:
  %t1351 = load i32, ptr %l691, !tbaa !23
  store i32 %t1351, ptr %l55, !tbaa !23
  call void @__olang_scope_close(ptr %s48)
  br label %bb295
bb295:
  %t1352 = load ptr, ptr %l0, !tbaa !29
  %t1354 = getelementptr %"compiler/generic:Program", ptr %t1352, i32 0, i32 33
  %t1355 = load i64, ptr %l1, !tbaa !24
  %t1356 = load i32, ptr %l55, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %t1354, i64 %t1355, i32 %t1356)
  br label %bb296
bb296:
  %t1360 = load i32, ptr %l55, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t1360, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l44 = alloca { i64, ptr }
  %l54 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Sig", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l11, !tbaa !24
  %t7 = load i64, ptr %l11, !tbaa !24
  %t8 = icmp sge i64 %t7, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = icmp sle i64 %t10, 1152921504606846975
  br i1 %t11, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_52c8f96a75cfc7a4_95d33db140d5de70)
  unreachable
bb3:
  %t13 = load i64, ptr %l11, !tbaa !24
  %t14 = mul i64 %t13, 8
  %t15 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/ast:Sig", ptr %t19, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  store i64 %t24, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_52c8f96a75cfc7a4_95d33db140d5de70)
  unreachable
bb5:
  %t32 = load i64, ptr %l5, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t36 = load i64, ptr %l4, !tbaa !24
  %t37 = load i64, ptr %l3, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t52 = load i64, ptr %l24, !tbaa !24
  store i64 %t52, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t53 = load i64, ptr %l21, !tbaa !24
  store i64 %t53, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t54 = load i64, ptr %l7, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t62 = load i64, ptr %l3, !tbaa !24
  %t63 = load i64, ptr %l7, !tbaa !24
  %t64 = load i64, ptr %l5, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l8, !tbaa !24
  %t72 = load i64, ptr %l8, !tbaa !24
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/ast:Sig", ptr %t73, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l44, !tbaa !27
  %t77 = load i64, ptr %l8, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr ptr, ptr %t80, i64 %t77
  %t82 = load ptr, ptr %t81, !tbaa !39
  %t84 = getelementptr %"compiler/ast:Param", ptr %t82, i32 0, i32 1
  %t85 = load i32, ptr %t84, !tbaa !23
  %t87 = sext i32 %t85 to i64
  %t90 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i64, ptr %t91, i64 %t72
  store i64 %t87, ptr %t92, !tbaa !34
  br label %bb15
bb15:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l7, !tbaa !24
  br label %bb11
bb16:
  %t99 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 2
  %t100 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t103 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamNames(ptr %v0, ptr %s0, ptr %t99, { i64, ptr } %t100)
  store i64 %t103, ptr %l54
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t104 = load i64, ptr %l54, !tbaa !24
  store i64 %t104, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnendedDrop(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l7 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l2
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %s0, ptr %a0, i32 %a1, ptr %l2, i64 0, i1 false)
  store i32 %t8, ptr %l7
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load i32, ptr %l7, !tbaa !23
  store i32 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnknownConst(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 2
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstExpr(ptr %v0, ptr %v0, ptr %t3, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i32 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i32, ptr %l3, !tbaa !23
  store i32 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l13 = alloca %"compiler/generic:varRow"
  %rv = alloca %"compiler/generic:varRow"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 16
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 14
  %t10 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t6, i64 %a1)
  %t11 = extractvalue { i32, i64 } %t10, 1
  %t12 = extractvalue { i32, i64 } %t10, 0
  store i32 %t12, ptr %l10
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb2, label %ok.14, !prof !99
ok.14:
  store i64 %t11, ptr %l9
  br label %bb1
bb1:
  %t15 = load i64, ptr %l9, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = add i64 %t17, %a2
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = call %"compiler/generic:varRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eAt_3ccompiler_2fgeneric_3avarRow_3e(ptr %v0, ptr %t20, i64 %t19)
  store %"compiler/generic:varRow" %t22, ptr %l13
  br label %bb5
bb5:
  %t23 = load %"compiler/generic:varRow", ptr %l13
  store %"compiler/generic:varRow" %t23, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:varRow", ptr %rv
  ret %"compiler/generic:varRow" %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l11 = alloca ptr
  %l15 = alloca i32
  %l19 = alloca i1
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
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 7
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb6
bb4:
  %t23 = load i32, ptr %l15, !tbaa !23
  %t24 = sext i32 %t23 to i64
  %t27 = call i64 @__olang_fmt_i64(ptr null, i64 %t24)
  %t28 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %a2)
  %t33 = add i64 %t30, %t32
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  %t35 = call i64 @__olang_fmt_i64(ptr %t34, i64 %t24)
  %t36 = getelementptr i8, ptr %t34, i64 %t27
  call void @olang_textcopy(ptr %t36, ptr %t28, i64 %t29)
  %t37 = getelementptr i8, ptr %t36, i64 %t29
  %t38 = call i64 @__olang_fmt_i64(ptr %t37, i64 %a2)
  %t39 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t34, 1
  %t41 = load ptr, ptr %l11, !tbaa !29
  %t43 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %v0, ptr %t41, { i64, ptr } %t40)
  store i1 %t43, ptr %l19
  br label %bb5
bb5:
  %t44 = load i1, ptr %l19, !tbaa !21
  store i1 %t44, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load i1, ptr %l9, !tbaa !21
  store i1 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t3, i32 %t4)
  store i64 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %t8, i32 %t9)
  store i1 %t12, ptr %l8
  br label %bb2
bb2:
  %t13 = load i1, ptr %l8, !tbaa !21
  br i1 %t13, label %bb3, label %bb4
bb3:
  store i64 1, ptr %l9, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb5
bb5:
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l9, !tbaa !24
  %t16 = sub i64 %t14, %t15
  store i64 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFns(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i64
  %l56 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca i64
  %l65 = alloca %"compiler/source:Span"
  %l67 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a2, ptr %l3, !tbaa !27
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
  br label %bb44
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l18, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  store ptr %t23, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t24 = load ptr, ptr %l21, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l21, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 0
  store i1 %t30, ptr %l22, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l22, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { ptr }, ptr %t34, i32 0, i32 0
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l7, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  %t40 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFn(ptr %v0, ptr %v1, ptr %t38, i64 %t39, ptr %t40, i1 false)
  br label %bb10
bb10:
  br label %bb42
bb11:
  %t44 = load ptr, ptr %l6, !tbaa !29
  store ptr %t44, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t45 = load ptr, ptr %l30, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = load ptr, ptr %l30, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 11}
  %t51 = icmp eq i64 %t49, 1
  store i1 %t51, ptr %l31, !tbaa !21
  br label %bb13
bb13:
  %t52 = load i1, ptr %l31, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l6, !tbaa !29
  %t55 = getelementptr { i64, [8 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { ptr }, ptr %t55, i32 0, i32 0
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l8, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i64, ptr %l1, !tbaa !24
  %t61 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFn(ptr %v0, ptr %v1, ptr %t59, i64 %t60, ptr %t61, i1 true)
  br label %bb17
bb17:
  br label %bb42
bb18:
  %t65 = load ptr, ptr %l6, !tbaa !29
  store ptr %t65, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t66 = load ptr, ptr %l39, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb19, label %bb20
bb19:
  %t69 = load ptr, ptr %l39, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 11}
  %t72 = icmp eq i64 %t70, 10
  store i1 %t72, ptr %l40, !tbaa !21
  br label %bb20
bb20:
  %t73 = load i1, ptr %l40, !tbaa !21
  br i1 %t73, label %bb21, label %bb22
bb21:
  %t74 = load ptr, ptr %l6, !tbaa !29
  %t76 = getelementptr { i64, [8 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t76, i32 0, i32 2
  %t78 = load { i64, ptr }, ptr %t77
  store { i64, ptr } %t78, ptr %l9, !tbaa !27
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l1, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFns(ptr %v0, ptr %v1, ptr %t80, i64 %t81, { i64, ptr } %t82)
  br label %bb24
bb24:
  br label %bb42
bb25:
  %t86 = load ptr, ptr %l6, !tbaa !29
  store ptr %t86, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t87 = load ptr, ptr %l48, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb26, label %bb27
bb26:
  %t90 = load ptr, ptr %l48, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 11}
  %t93 = icmp eq i64 %t91, 7
  store i1 %t93, ptr %l49, !tbaa !21
  br label %bb27
bb27:
  %t94 = load i1, ptr %l49, !tbaa !21
  br i1 %t94, label %bb28, label %bb29
bb28:
  %t95 = load ptr, ptr %l6, !tbaa !29
  %t97 = getelementptr { i64, [8 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", ptr }, ptr %t97, i32 0, i32 1
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l10, !tbaa !29
  br label %bb30
bb29:
  br label %bb37
bb30:
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l54, !tbaa !29
  %t102 = load i64, ptr %l1, !tbaa !24
  store i64 %t102, ptr %l55, !tbaa !24
  %t103 = load ptr, ptr %l10, !tbaa !29
  store ptr %t103, ptr %l56, !tbaa !29
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  store ptr %t107, ptr %l58, !tbaa !29
  %t108 = load i64, ptr %l1, !tbaa !24
  store i64 %t108, ptr %l59, !tbaa !24
  %t109 = load ptr, ptr %l10, !tbaa !29
  %t111 = getelementptr %"compiler/ast:TopIf", ptr %t109, i32 0, i32 0
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = icmp eq ptr %t112, null
  br i1 %t114, label %bb31, label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_4e2b009ec27e80b_3f74010bfbf746f)
  unreachable
bb32:
  br label %bb33
bb33:
  %t116 = load ptr, ptr %l10, !tbaa !29
  %t118 = getelementptr %"compiler/ast:TopIf", ptr %t116, i32 0, i32 0
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t119)
  store %"compiler/source:Span" %t121, ptr %l65
  br label %bb34
bb34:
  %t122 = getelementptr %"compiler/source:Span", ptr %l65, i32 0, i32 0
  %t123 = load i32, ptr %t122, !tbaa !23
  %t124 = load ptr, ptr %l58, !tbaa !29
  %t125 = load i64, ptr %l59, !tbaa !24
  %t127 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t124, i64 %t125, i32 %t123)
  store i64 %t127, ptr %l67
  br label %bb35
bb35:
  %t128 = load ptr, ptr %l54, !tbaa !29
  %t129 = load i64, ptr %l55, !tbaa !24
  %t130 = load ptr, ptr %l56, !tbaa !29
  %t131 = load i64, ptr %l67, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFnsIf(ptr %v0, ptr %v1, ptr %t128, i64 %t129, ptr %t130, i64 %t131, i64 0)
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
  call void @__olang_check_failed(ptr @olang_loc_8b73386467b8fdb3_4742e8850cea3c57)
  unreachable
bb42:
  br label %bb43
bb43:
  %t132 = load i64, ptr %l4, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l4, !tbaa !24
  br label %bb1
bb44:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddVars(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca i64
  %l19 = alloca i64
  %l32 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l41 = alloca %"compiler/generic:varRow"
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 14
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l12
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l11
  br label %bb1
bb1:
  %t12 = load i64, ptr %l11, !tbaa !24
  store i64 %t12, ptr %l7, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l7, !tbaa !24
  %t14 = icmp sge i64 %t13, 0
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 14
  store ptr %t18, ptr %l15, !tbaa !29
  %t19 = load i64, ptr %l1, !tbaa !24
  store i64 %t19, ptr %l16, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 16
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eLen_3ccompiler_2fgeneric_3avarRow_3e(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l19
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = load i64, ptr %l16, !tbaa !24
  %t27 = load i64, ptr %l19, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t25, i64 %t26, i64 %t27)
  br label %bb9
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 15
  %t31 = load i64, ptr %l1, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t30, i64 %t31, i64 %t34)
  br label %bb10
bb10:
  %t38 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t38, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  store i64 %t42, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t44 = load i64, ptr %l4, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb18
bb13:
  br label %bb14
bb14:
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t52, ptr %l32, !tbaa !27
  %t53 = load i64, ptr %l4, !tbaa !24
  %t55 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i32, ptr %t56, i64 %t53
  %t58 = load i32, ptr %t57, !tbaa !33
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 16
  store ptr %t62, ptr %l36, !tbaa !29
  %t63 = load i64, ptr %l1, !tbaa !24
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t71 = call %"compiler/generic:varRow" @compiler_2fgeneric_3avarRow_2ector(ptr %s3, i64 %t63, i32 %t58, i32 %t65, i32 %t66)
  store %"compiler/generic:varRow" %t71, ptr %l41
  br label %bb15
bb15:
  %t72 = load ptr, ptr %l36, !tbaa !29
  %t73 = load %"compiler/generic:varRow", ptr %l41
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2ePush_3ccompiler_2fgeneric_3avarRow_3e(ptr %v0, ptr %t72, %"compiler/generic:varRow" %t73)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb17
bb17:
  %t74 = load i64, ptr %l4, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l4, !tbaa !24
  br label %bb11
bb18:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ealiasStep(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/load:Import"
  %l10 = alloca ptr
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca %"compiler/load:Import"
  %l23 = alloca i1
  %l28 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t13 = getelementptr %"compiler/load:Module", ptr %t11, i32 0, i32 11
  store ptr %t13, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t15 = load i64, ptr %l4, !tbaa !24
  store i64 %t15, ptr %l13, !tbaa !24
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l15
  br label %bb3
bb3:
  %t19 = load i64, ptr %l13, !tbaa !24
  %t20 = load i64, ptr %l15, !tbaa !24
  %t21 = icmp slt i64 %t19, %t20
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb4, label %bb5
bb4:
  br label %bb16
bb5:
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  store %"compiler/load:Import" %t29, ptr %l20
  br label %bb7
bb7:
  %t30 = load %"compiler/load:Import", ptr %l20
  store %"compiler/load:Import" %t30, ptr %l5
  %t31 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 5
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = icmp sge i64 %t32, 0
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/load:Loader", ptr %t39, i32 0, i32 3
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 2
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t47 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v0, ptr %t42, { i64, ptr } %t44)
  store i32 %t47, ptr %l28
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb11
bb10:
  %t49 = load i32, ptr %l28, !tbaa !23
  %t51 = icmp eq i32 %t49, %a2
  store i1 %t51, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t53 = load i1, ptr %l23, !tbaa !21
  br i1 %t53, label %bb12, label %bb13
bb12:
  %t54 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 5
  %t55 = load i64, ptr %t54, !tbaa !24
  store i64 %t55, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l4, !tbaa !24
  br label %bb2
bb16:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyGlobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca ptr
  %l6 = alloca ptr
  %l10 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i64
  %l19 = alloca ptr
  %l23 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 59
  store ptr %t3, ptr %l6, !tbaa !29
  %t4 = load i64, ptr %l1, !tbaa !24
  %t5 = load i32, ptr %l2, !tbaa !23
  %t7 = sext i32 %t5 to i64
  %t10 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t4, i64 %t7)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l6, !tbaa !29
  %t12 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l10
  %t13 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hcad520af686b186b53ef29921f8ab48b(ptr %v0, ptr %v1, ptr %t11, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t12)
  %t14 = extractvalue { i32, ptr } %t13, 1
  %t15 = extractvalue { i32, ptr } %t13, 0
  store i32 %t15, ptr %l12
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb3, label %ok.17, !prof !99
ok.17:
  store ptr %t14, ptr %l11
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l11, !tbaa !29
  store ptr %t18, ptr %l4, !tbaa !29
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  %t20 = load i64, ptr %l1, !tbaa !24
  store i64 %t20, ptr %l14, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/load:Loader", ptr %t24, i32 0, i32 10
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t26, i64 %t27)
  store ptr %t30, ptr %l19
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l19, !tbaa !29
  %t33 = getelementptr %"compiler/load:Module", ptr %t31, i32 0, i32 8
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  %t35 = load i32, ptr %l2, !tbaa !23
  %t36 = load ptr, ptr %l13, !tbaa !29
  %t37 = load i64, ptr %l14, !tbaa !24
  %t40 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalIn(ptr %v0, ptr %v0, ptr %v1, ptr %t36, i64 %t37, { i64, ptr } %t34, i32 %t35)
  store ptr %t40, ptr %l23
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t41 = load ptr, ptr %l23, !tbaa !29
  store ptr %t41, ptr %rv
  br label %ret
bb7:
  %t42 = load ptr, ptr %l4, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t42, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyReadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l18 = alloca { i64, ptr }
  %l25 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l18, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t37 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %t28)
  store i1 %t37, ptr %l25
  br label %bb8
bb8:
  %t38 = load i1, ptr %l25, !tbaa !21
  br i1 %t38, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t40 = load i64, ptr %l4, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l4, !tbaa !24
  br label %bb4
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecalleeType(ptr %v0, ptr %a0, %"compiler/names:Ref" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/names:Ref"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l8 = alloca i1
  %l14 = alloca i32
  %l18 = alloca i64
  %l20 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
  %l32 = alloca i64
  %l38 = alloca i32
  %l39 = alloca ptr
  %l41 = alloca i64
  %l42 = alloca i64
  %l45 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/names:Ref" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 9}
  %t4 = trunc i64 4 to i32
  %t5 = icmp eq i32 %t2, %t4
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 2
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = icmp sge i64 %t8, 0
  store i1 %t10, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l8, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 1
  %t15 = load i64, ptr %t14, !tbaa !24
  %t16 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 2
  %t17 = load i64, ptr %t16, !tbaa !24
  %t21 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t13, i64 %t15, i64 %t17)
  store i32 %t21, ptr %l14
  br label %bb6
bb5:
  br label %bb13
bb6:
  %t22 = load i32, ptr %l14, !tbaa !23
  store i32 %t22, ptr %l3, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l3, !tbaa !23
  %t29 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t25, i32 %t26)
  store i64 %t29, ptr %l18
  br label %bb7
bb7:
  %t30 = load i64, ptr %l18, !tbaa !24
  %t31 = icmp eq i64 %t30, 0
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l20, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l3, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t36, i32 %t37, i32 0)
  store i32 %t40, ptr %l24
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t41 = load ptr, ptr %l20, !tbaa !29
  %t42 = load i32, ptr %l24, !tbaa !23
  %t43 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eheld(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t43, ptr %l25
  br label %bb11
bb11:
  %t44 = load i32, ptr %l25, !tbaa !23
  store i32 %t44, ptr %rv
  br label %ret
bb12:
  %t45 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t45, ptr %rv
  br label %ret
bb13:
  %t47 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 0
  %t48 = load i32, ptr %t47, !range !{i32 0, i32 9}
  %t50 = trunc i64 3 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 1
  %t55 = load i64, ptr %t54, !tbaa !24
  %t60 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t53, i64 %t55, i32 %a2)
  store i64 %t60, ptr %l32
  br label %bb16
bb15:
  br label %bb28
bb16:
  %t61 = load i64, ptr %l32, !tbaa !24
  store i64 %t61, ptr %l4, !tbaa !24
  %t62 = load i64, ptr %l4, !tbaa !24
  %t64 = icmp slt i64 %t62, 0
  br i1 %t64, label %bb17, label %bb18
bb17:
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t66, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l4, !tbaa !24
  %t72 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t68, i64 %t69)
  store i32 %t72, ptr %l38
  br label %bb20
bb20:
  %t73 = load i32, ptr %l38, !tbaa !23
  store i32 %t73, ptr %l5, !tbaa !23
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l39, !tbaa !29
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t75)
  store i64 %t77, ptr %l41
  br label %bb21
bb21:
  %t78 = load ptr, ptr %l39, !tbaa !29
  %t79 = load i64, ptr %l41, !tbaa !24
  %t80 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t78, i64 %t79)
  store i64 %t80, ptr %l42
  br label %bb22
bb22:
  %t81 = load i64, ptr %l42, !tbaa !24
  %t82 = icmp sgt i64 %t81, 0
  br i1 %t82, label %bb23, label %bb24
bb23:
  %t84 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t84, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l45, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l5, !tbaa !23
  %t93 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t93, ptr %l49
  br label %bb26
bb26:
  %t94 = load ptr, ptr %l45, !tbaa !29
  %t95 = load i32, ptr %l49, !tbaa !23
  %t96 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eheld(ptr %v0, ptr %t94, i32 %t95)
  store i32 %t96, ptr %l50
  br label %bb27
bb27:
  %t97 = load i32, ptr %l50, !tbaa !23
  store i32 %t97, ptr %rv
  br label %ret
bb28:
  %t98 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t98, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecolumnFields(ptr %v0, ptr %a0, i32 %a1) #0 {
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
  %l13 = alloca i32
  %l17 = alloca i1
  %l19 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l31 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l38 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i64
  %l68 = alloca i64
  %l71 = alloca { i64, ptr }
  %l74 = alloca i32
  %l80 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i32, ptr %l13, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t13, ptr %l17
  br label %bb2
bb2:
  %t14 = load i1, ptr %l17, !tbaa !21
  %t15 = xor i1 %t14, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb6
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisStructT(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l22
  br label %bb5
bb5:
  %t22 = load i1, ptr %l22, !tbaa !21
  %t23 = xor i1 %t22, true
  store i1 %t23, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l19, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb10
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t26, i32 %t27)
  store i1 %t30, ptr %l27
  br label %bb9
bb9:
  %t31 = load i1, ptr %l27, !tbaa !21
  %t32 = xor i1 %t31, true
  store i1 %t32, ptr %l24, !tbaa !21
  br label %bb10
bb10:
  %t34 = load i1, ptr %l24, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  store ptr %t38, ptr %l31, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 2
  %t42 = load i32, ptr %l2, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l35
  br label %bb14
bb14:
  %t46 = load ptr, ptr %l31, !tbaa !29
  %t47 = load i32, ptr %l35, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t46, i32 %t47)
  store { i64, ptr } %t48, ptr %l36
  br label %bb15
bb15:
  %t49 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t49, ptr %l3, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l38, !tbaa !24
  %t53 = load i64, ptr %l38, !tbaa !24
  %t54 = icmp sge i64 %t53, 0
  br i1 %t54, label %bb16, label %bb17
bb16:
  %t56 = load i64, ptr %l38, !tbaa !24
  %t57 = icmp sle i64 %t56, 2305843009213693951
  br i1 %t57, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_5e7d85fe5a4092b0_8f62b4b719433814)
  unreachable
bb18:
  %t59 = load i64, ptr %l38, !tbaa !24
  %t60 = mul i64 %t59, 4
  %t61 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t60)
  %t62 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  store { i64, ptr } %t63, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  store i64 %t67, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l6, !tbaa !24
  %t70 = load i64, ptr %l5, !tbaa !24
  %t73 = icmp sgt i64 %t69, %t70
  br i1 %t73, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_5e7d85fe5a4092b0_8f62b4b719433814)
  unreachable
bb20:
  %t75 = load i64, ptr %l7, !tbaa !24
  %t77 = icmp sgt i64 %t75, 0
  br i1 %t77, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb25
bb22:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t80 = load i64, ptr %l5, !tbaa !24
  %t83 = sub i64 %t79, %t80
  %t84 = load i64, ptr %l7, !tbaa !24
  %t87 = add i64 %t83, %t84
  %t89 = sub i64 %t87, 1
  %t90 = load i64, ptr %l7, !tbaa !24
  %t93 = sdiv i64 %t89, %t90
  store i64 %t93, ptr %l50, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb24
bb24:
  %t95 = load i64, ptr %l50, !tbaa !24
  store i64 %t95, ptr %l47, !tbaa !24
  br label %bb25
bb25:
  %t96 = load i64, ptr %l47, !tbaa !24
  store i64 %t96, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb26
bb26:
  %t97 = load i64, ptr %l9, !tbaa !24
  %t98 = load i64, ptr %l8, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb27, label %bb28
bb27:
  br label %bb32
bb28:
  br label %bb29
bb29:
  %t105 = load i64, ptr %l5, !tbaa !24
  %t106 = load i64, ptr %l9, !tbaa !24
  %t107 = load i64, ptr %l7, !tbaa !24
  %t110 = mul i64 %t106, %t107
  %t113 = add i64 %t105, %t110
  store i64 %t113, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l10, !tbaa !24
  store i64 %t115, ptr %l68, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t119, ptr %l71, !tbaa !27
  %t120 = load i64, ptr %l10, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr i32, ptr %t123, i64 %t120
  %t125 = load i32, ptr %t124, !tbaa !33
  %t128 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t118, i32 %t125, i32 0)
  store i32 %t128, ptr %l74
  br label %bb30
bb30:
  %t129 = load i32, ptr %l74, !tbaa !23
  %t130 = load i64, ptr %l68, !tbaa !24
  %t131 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i32, ptr %t132, i64 %t130
  store i32 %t129, ptr %t133, !tbaa !33
  br label %bb31
bb31:
  %t134 = load i64, ptr %l9, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l9, !tbaa !24
  br label %bb26
bb32:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 2
  %t141 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t144 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t140, { i64, ptr } %t141)
  store i32 %t144, ptr %l80
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s0)
  %t145 = load i32, ptr %l80, !tbaa !23
  store i32 %t145, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2econstraintKey(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/names:Ref"
  %l5 = alloca ptr
  %l6 = alloca i1
  %l12 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca %"compiler/names:Ref"
  %l20 = alloca i1
  %l26 = alloca i32
  %l27 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t20, i64 %a1)
  store i64 %t24, ptr %l15
  br label %bb6
bb6:
  %t25 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t26 = load i32, ptr %t25, !tbaa !23
  %t27 = load ptr, ptr %l12, !tbaa !29
  %t28 = load i64, ptr %l15, !tbaa !24
  %t30 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t27, i64 %t28, i32 %t26)
  store %"compiler/names:Ref" %t30, ptr %l17
  br label %bb7
bb7:
  %t31 = load %"compiler/names:Ref", ptr %l17
  store %"compiler/names:Ref" %t31, ptr %l4
  %t32 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t33 = load i32, ptr %t32, !range !{i32 0, i32 9}
  %t35 = trunc i64 4 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t38 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t39 = load i64, ptr %t38, !tbaa !24
  %t41 = icmp sge i64 %t39, 0
  store i1 %t41, ptr %l20, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t43 = load i1, ptr %l20, !tbaa !21
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t48 = load i64, ptr %t47, !tbaa !24
  %t52 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t44, i64 %t46, i64 %t48)
  store i32 %t52, ptr %l26
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t53 = load i32, ptr %l26, !tbaa !23
  %t54 = call i64 @compiler_2fgeneric_2ekeyTrait(i32 %t53)
  store i64 %t54, ptr %l27
  br label %bb14
bb14:
  %t55 = load i64, ptr %l27, !tbaa !24
  store i64 %t55, ptr %rv
  br label %ret
bb15:
  store i64 -1, ptr %rv
  br label %ret
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i64 -1, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_6254d719be644cb8_ecba73ecf161ba54)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpand(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l9 = alloca i1
  %l16 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i1
  %l29 = alloca i1
  %l33 = alloca i64
  %l37 = alloca i1
  %l41 = alloca ptr
  %l45 = alloca i32
  %l50 = alloca ptr
  %l56 = alloca i1
  %l59 = alloca i1
  %l60 = alloca ptr
  %l65 = alloca ptr
  %l69 = alloca i32
  %l74 = alloca ptr
  %l78 = alloca i32
  %l85 = alloca ptr
  %l89 = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2fgeneric_2eMaxDepth, !tbaa !24
  %t4 = mul i64 4, %t2
  %t7 = icmp sgt i64 %t1, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t9 = load i32, ptr %l1, !tbaa !23
  %t10 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t13 = icmp eq i32 %t9, %t10
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l9, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l16
  br label %bb7
bb7:
  %t23 = load i32, ptr %l16, !range !{i32 0, i32 33}
  store i32 %t23, ptr %l3
  %t24 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t26 = trunc i64 18 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb34
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l22
  br label %bb11
bb11:
  %t36 = load i32, ptr %l22, !tbaa !23
  store i32 %t36, ptr %l4, !tbaa !23
  %t37 = load i32, ptr %l4, !tbaa !23
  %t39 = icmp eq i32 %t37, 0
  br i1 %t39, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb15
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %l1, !tbaa !23
  %t47 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t43, i32 %t44)
  store i1 %t47, ptr %l29
  br label %bb14
bb14:
  %t48 = load i1, ptr %l29, !tbaa !21
  store i1 %t48, ptr %l25, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l25, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l1, !tbaa !23
  %t56 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDepth(ptr %v0, ptr %t52, i32 %t53)
  store i64 %t56, ptr %l33
  br label %bb19
bb19:
  %t57 = load i64, ptr @G_2ecompiler_2fgeneric_2eMaxDepth, !tbaa !24
  %t59 = add i64 %t57, 1
  %t60 = load i64, ptr %l33, !tbaa !24
  %t62 = icmp sgt i64 %t60, %t59
  br i1 %t62, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb22
bb21:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 48
  %t67 = load i64, ptr %t66, !tbaa !24
  %t69 = icmp sgt i64 %t67, 200
  store i1 %t69, ptr %l37, !tbaa !21
  br label %bb22
bb22:
  %t71 = load i1, ptr %l37, !tbaa !21
  br i1 %t71, label %bb23, label %bb24
bb23:
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l41, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l1, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l45
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t80 = load ptr, ptr %l41, !tbaa !29
  %t81 = load i32, ptr %l45, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunbounded(ptr %v0, ptr %t80, i32 %t81)
  br label %bb26
bb26:
  br label %ret
bb27:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l4, !tbaa !23
  %t84 = load i64, ptr %l2, !tbaa !24
  %t86 = add i64 %t84, 1
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpandList(ptr %v0, ptr %t82, i32 %t83, i64 %t86)
  br label %bb28
bb28:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l50, !tbaa !29
  %t91 = load ptr, ptr %l50, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 48
  %t93 = load i64, ptr %t92, !tbaa !24
  %t95 = add i64 %t93, 1
  %t97 = load ptr, ptr %l50, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 48
  store i64 %t95, ptr %t98, !tbaa !24
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %l1, !tbaa !23
  %t105 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t101, i32 %t102)
  store i1 %t105, ptr %l56
  br label %bb29
bb29:
  %t106 = load i1, ptr %l56, !tbaa !21
  br i1 %t106, label %bb30, label %bb31
bb30:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l1, !tbaa !23
  %t111 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t107, i32 %t108)
  store i1 %t111, ptr %l59
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb33
bb33:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l60, !tbaa !29
  %t113 = load ptr, ptr %l60, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 48
  %t115 = load i64, ptr %t114, !tbaa !24
  %t117 = sub i64 %t115, 1
  %t119 = load ptr, ptr %l60, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t119, i32 0, i32 48
  store i64 %t117, ptr %t120, !tbaa !24
  br label %bb59
bb34:
  %t121 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t123 = trunc i64 20 to i32
  %t124 = icmp eq i32 %t121, %t123
  br i1 %t124, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l65, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 2
  %t130 = load i32, ptr %l1, !tbaa !23
  %t133 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t129, i32 %t130)
  store i32 %t133, ptr %l69
  br label %bb38
bb38:
  %t134 = load i64, ptr %l2, !tbaa !24
  %t136 = add i64 %t134, 1
  %t137 = load ptr, ptr %l65, !tbaa !29
  %t138 = load i32, ptr %l69, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpand(ptr %v0, ptr %t137, i32 %t138, i64 %t136)
  br label %bb39
bb39:
  br label %bb59
bb40:
  %t140 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t142 = trunc i64 19 to i32
  %t143 = icmp eq i32 %t140, %t142
  br i1 %t143, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l74, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 2
  %t149 = load i32, ptr %l1, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l78
  br label %bb44
bb44:
  %t153 = load i64, ptr %l2, !tbaa !24
  %t155 = add i64 %t153, 1
  %t156 = load ptr, ptr %l74, !tbaa !29
  %t157 = load i32, ptr %l78, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpand(ptr %v0, ptr %t156, i32 %t157, i64 %t155)
  br label %bb45
bb45:
  br label %bb59
bb46:
  %t159 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t161 = trunc i64 22 to i32
  %t162 = icmp eq i32 %t159, %t161
  br i1 %t162, label %bb47, label %bb48
bb47:
  br label %bb51
bb48:
  %t164 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t166 = trunc i64 23 to i32
  %t167 = icmp eq i32 %t164, %t166
  br i1 %t167, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l85, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Program", ptr %t170, i32 0, i32 2
  %t173 = load i32, ptr %l1, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l89
  br label %bb52
bb52:
  %t177 = load i64, ptr %l2, !tbaa !24
  %t179 = add i64 %t177, 1
  %t180 = load ptr, ptr %l85, !tbaa !29
  %t181 = load i32, ptr %l89, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpandList(ptr %v0, ptr %t180, i32 %t181, i64 %t179)
  br label %bb53
bb53:
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
  call void @__olang_check_failed(ptr @olang_loc_8c836894b35cad82_296f4aeeea10268e)
  unreachable
bb59:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisArray(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i32
  %l13 = alloca i32
  %l18 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
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
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t10 = trunc i64 20 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l13
  br label %bb4
bb3:
  %t20 = load i32, ptr %l1, !tbaa !23
  store i32 %t20, ptr %l9, !tbaa !23
  br label %bb5
bb4:
  %t22 = load i32, ptr %l13, !tbaa !23
  store i32 %t22, ptr %l9, !tbaa !23
  br label %bb5
bb5:
  %t23 = load i32, ptr %l9, !tbaa !23
  store i32 %t23, ptr %l2, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereprReady(ptr %v0, ptr %t24, i32 %t25)
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  store ptr %t30, ptr %l18, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l22
  br label %bb7
bb7:
  %t38 = load ptr, ptr %l18, !tbaa !29
  %t39 = load i32, ptr %l22, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t40, ptr %l23
  br label %bb8
bb8:
  %t41 = load i32, ptr %l23, !range !{i32 0, i32 33}
  %t43 = trunc i64 19 to i32
  %t44 = icmp eq i32 %t41, %t43
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisEnumT(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i1
  %l10 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i32
  %l18 = alloca i1
  %l21 = alloca i1
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
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  store ptr %t15, ptr %l10, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l14
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb6
bb4:
  %t23 = load ptr, ptr %l10, !tbaa !29
  %t24 = load i32, ptr %l14, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t25, ptr %l15
  br label %bb5
bb5:
  %t26 = load i32, ptr %l15, !range !{i32 0, i32 6}
  %t28 = trunc i64 1 to i32
  %t29 = icmp eq i32 %t26, %t28
  store i1 %t29, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l8, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t32, i32 %t33)
  store i1 %t36, ptr %l21
  br label %bb9
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  %t37 = load i1, ptr %l21, !tbaa !21
  store i1 %t37, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l18, !tbaa !21
  store i1 %t38, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elenPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i1
  %l22 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca i1
  %l34 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l36 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t5, ptr %l11, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l12, !tbaa !24
  %t8 = load i64, ptr %l12, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l13, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l12, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t19, ptr %l11, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t22 = load ptr, ptr %l14, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load ptr, ptr %l14, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 30}
  %t28 = icmp eq i64 %t26, 0
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l15, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32 }, ptr %t32, i32 0, i32 1
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l3, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l3, !tbaa !23
  %t40 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s2, ptr %t36, i32 %t37)
  store { i64, ptr } %t40, ptr %l22
  br label %bb9
bb9:
  %t41 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t44 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t43)
  call void @olang_textcopy(ptr %t44, ptr %t42, i64 %t43)
  %t45 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t46, ptr %rv
  br label %ret
bb10:
  %t48 = load ptr, ptr %l1, !tbaa !29
  store ptr %t48, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t49 = load ptr, ptr %l24, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t52 = load ptr, ptr %l24, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 30}
  %t55 = icmp eq i64 %t53, 2
  store i1 %t55, ptr %l25, !tbaa !21
  br label %bb12
bb12:
  %t56 = load i1, ptr %l25, !tbaa !21
  br i1 %t56, label %bb13, label %bb14
bb13:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr { i64, [4 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", ptr }, ptr %t59, i32 0, i32 1
  %t61 = load ptr, ptr %t60
  store ptr %t61, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t65 = load i64, ptr %l2, !tbaa !24
  %t67 = add i64 %t65, 1
  %t71 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elenPath(ptr %v0, ptr %v1, ptr %v2, ptr %t63, ptr %t64, i64 %t67)
  store { i64, ptr } %t71, ptr %l34
  br label %bb16
bb16:
  %t72 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t72, ptr %rv
  br label %ret
bb17:
  %t73 = load ptr, ptr %l1, !tbaa !29
  store ptr %t73, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t74 = load ptr, ptr %l35, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb18, label %bb19
bb18:
  %t77 = load ptr, ptr %l35, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 30}
  %t80 = icmp eq i64 %t78, 15
  store i1 %t80, ptr %l36, !tbaa !21
  br label %bb19
bb19:
  %t81 = load i1, ptr %l36, !tbaa !21
  br i1 %t81, label %bb20, label %bb21
bb20:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr { i64, [4 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t84, i32 0, i32 1
  %t86 = load ptr, ptr %t85
  store ptr %t86, ptr %l5, !tbaa !29
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t90, i32 0, i32 2
  %t92 = load { i64, ptr }, ptr %t91
  store { i64, ptr } %t92, ptr %l6, !tbaa !27
  br label %bb22
bb21:
  br label %bb31
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t94 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t98 = icmp ne i64 %t96, 1
  br i1 %t98, label %bb23, label %bb24
bb23:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l46, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t100, ptr %l47, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 0
  store i64 %t102, ptr %l48, !tbaa !24
  %t103 = load i64, ptr %l48, !tbaa !24
  %t104 = mul i64 %t103, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t104)
  %t106 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  store { i64, ptr } %t107, ptr %l49, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = load i64, ptr %l48, !tbaa !24
  %t113 = mul i64 %t112, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t109, ptr %t111, i64 %t113, i1 false)
  %t114 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t114, ptr %l47, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  %t115 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t115, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l5, !tbaa !29
  %t118 = load i64, ptr %l2, !tbaa !24
  %t120 = add i64 %t118, 1
  %t124 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elenPath(ptr %v0, ptr %v1, ptr %s5, ptr %t116, ptr %t117, i64 %t120)
  store { i64, ptr } %t124, ptr %l54
  br label %bb26
bb26:
  %t125 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t125, ptr %l7, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t128 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s5, ptr %s5, { i64, ptr } %t126, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t128, ptr %l56
  br label %bb27
bb27:
  %t129 = load i1, ptr %l56, !tbaa !21
  br i1 %t129, label %bb28, label %bb29
bb28:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l58, !tbaa !27
  %t130 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t130, ptr %l57, !tbaa !27
  br label %bb30
bb29:
  %t132 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 1
  %t135 = extractvalue { i64, ptr } %t132, 0
  %t136 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t137 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t138 = add i64 %t135, %t137
  %t139 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t138)
  call void @olang_textcopy(ptr %t139, ptr %t134, i64 %t135)
  %t140 = getelementptr i8, ptr %t139, i64 %t135
  call void @olang_textcopy(ptr %t140, ptr %t136, i64 %t137)
  %t141 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t139, 1
  store { i64, ptr } %t142, ptr %l57, !tbaa !27
  br label %bb30
bb30:
  %t144 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  store i64 %t145, ptr %l62, !tbaa !24
  %t146 = load i64, ptr %l62, !tbaa !24
  %t147 = mul i64 %t146, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t147)
  %t149 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  store { i64, ptr } %t150, ptr %l63, !tbaa !27
  %t151 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = load i64, ptr %l62, !tbaa !24
  %t156 = mul i64 %t155, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t152, ptr %t154, i64 %t156, i1 false)
  %t157 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t157, ptr %l57, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  %t158 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t158, ptr %rv
  br label %ret
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t159 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t159, ptr %l65, !tbaa !27
  %t160 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  store i64 %t161, ptr %l66, !tbaa !24
  %t162 = load i64, ptr %l66, !tbaa !24
  %t163 = mul i64 %t162, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t163)
  %t165 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  store { i64, ptr } %t166, ptr %l67, !tbaa !27
  %t167 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = load i64, ptr %l66, !tbaa !24
  %t172 = mul i64 %t171, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t168, ptr %t170, i64 %t172, i1 false)
  %t173 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t173, ptr %l65, !tbaa !27
  %t174 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t174, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_cffe0474e3afc296_35ccea70755633e2)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthsDecidedOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %lp4 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca i64
  %l26 = alloca %"compiler/generic:fnRow"
  %l31 = alloca i64
  %l33 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l39 = alloca %"compiler/generic:fnRow"
  %l42 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 35
  %t9 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2eHas_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %t5, i64 %t1)
  store i1 %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = load i1, ptr %l9, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 35
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2eGet_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %v1, ptr %t13, i64 %t14)
  %t18 = extractvalue { i32, { i64, ptr } } %t17, 1
  %t19 = extractvalue { i32, { i64, ptr } } %t17, 0
  store i32 %t19, ptr %l15
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb5, label %ok.21, !prof !99
ok.21:
  store { i64, ptr } %t18, ptr %l14
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t22 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l16, !tbaa !24
  %t24 = load i64, ptr %l16, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l17, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l16, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t35, ptr %l10, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  call void @__olang_check_failed(ptr @olang_loc_9b38dcb85fe2b78c_3b1a6cace8e1aa00)
  unreachable
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t36 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t36, ptr %rv
  br label %ret
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 35
  store ptr %t39, ptr %l19, !tbaa !29
  %t40 = load i64, ptr %l1, !tbaa !24
  store i64 %t40, ptr %l20, !tbaa !24
  %t41 = ptrtoint ptr %s0 to i64
  store i64 %t41, ptr %l21, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3cBool_3e_3e_2e1
  br i1 %t42, label %bb9, label %bb10
bb9:
  %t44 = call ptr @__olang_region_make(ptr %s0)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 29
  %t49 = load i64, ptr %l1, !tbaa !24
  %t52 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t48, i64 %t49)
  store %"compiler/generic:fnRow" %t52, ptr %l26
  br label %bb11
bb11:
  %t53 = getelementptr %"compiler/generic:fnRow", ptr %l26, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Func", ptr %t54, i32 0, i32 3
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/ast:Sig", ptr %t57, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l31, !tbaa !24
  %t65 = load i64, ptr %l31, !tbaa !24
  %t66 = icmp sge i64 %t65, 0
  br i1 %t66, label %bb12, label %bb13
bb12:
  %t68 = load i64, ptr %l31, !tbaa !24
  %t69 = mul i64 %t68, 1
  %t70 = load i64, ptr %l21
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call ptr @__olang_scope_alloc_zeroed(ptr %t71, i64 %t69)
  %t73 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  store { i64, ptr } %t74, ptr %l33, !tbaa !27
  %t75 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3cBool_3e_3e_2e1
  br i1 %t75, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_b6a09900eca87506_fcd5eabfc1944c82)
  unreachable
bb14:
  %t77 = load i64, ptr %l21
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = load { i64, ptr }, ptr %l33
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = call ptr @__olang_region_or(ptr %t80, ptr null)
  %t82 = icmp ne ptr %t81, null
  %t83 = select i1 %t82, ptr %t81, ptr null
  %t84 = icmp eq ptr %t83, %t78
  call void @__olang_region_settle(ptr %t78, i1 %t84)
  br label %bb15
bb15:
  %t85 = load ptr, ptr %l19, !tbaa !29
  %t86 = load i64, ptr %l20, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l33, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2ePut_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %t85, i64 %t86, { i64, ptr } %t87)
  br label %bb16
bb16:
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l35, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 29
  %t92 = load i64, ptr %l1, !tbaa !24
  %t95 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t91, i64 %t92)
  store %"compiler/generic:fnRow" %t95, ptr %l39
  br label %bb17
bb17:
  %t97 = load ptr, ptr %l35, !tbaa !29
  %t100 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthsDecided(ptr %v0, ptr %v0, ptr %v1, ptr %t97, ptr %l39, i64 %a2)
  store { i64, ptr } %t100, ptr %l42
  br label %bb18
bb18:
  %t101 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t101, ptr %lp4
  %t102 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t103 = load ptr, ptr %lp4
  store { i64, ptr } %t102, ptr %t103, !tbaa !27
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 35
  %t107 = load i64, ptr %l1, !tbaa !24
  %t108 = load ptr, ptr %lp4
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2ePut_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %t106, i64 %t107, { i64, ptr } %t109)
  br label %bb19
bb19:
  %t113 = load ptr, ptr %lp4
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t114, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eliteralType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l7 = alloca i32
  %l12 = alloca i32
  %l19 = alloca i32
  %l23 = alloca i32
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t3 = trunc i64 2 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb5
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s1, ptr %t8, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i32 %t10, ptr %l7
  br label %bb4
bb4:
  %t11 = load i32, ptr %l7, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb29
bb5:
  %t12 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t14 = trunc i64 3 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb10
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s2, ptr %t19, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i32 %t21, ptr %l12
  br label %bb9
bb9:
  %t22 = load i32, ptr %l12, !tbaa !23
  store i32 %t22, ptr %l2, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb10:
  %t23 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t25 = trunc i64 6 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t28, ptr %l2, !tbaa !23
  br label %bb29
bb14:
  %t30 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t32 = trunc i64 5 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etextType(ptr %v0, ptr %t35)
  store i32 %t37, ptr %l19
  br label %bb18
bb18:
  %t38 = load i32, ptr %l19, !tbaa !23
  store i32 %t38, ptr %l2, !tbaa !23
  br label %bb29
bb19:
  %t39 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t41 = trunc i64 4 to i32
  %t42 = icmp eq i32 %t39, %t41
  br i1 %t42, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb24
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeType(ptr %v0, ptr %s5, ptr %s5, ptr %t44, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d19, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i32 %t46, ptr %l23
  br label %bb23
bb23:
  %t47 = load i32, ptr %l23, !tbaa !23
  store i32 %t47, ptr %l2, !tbaa !23
  call void @__olang_scope_close(ptr %s5)
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t48, ptr %l2, !tbaa !23
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_fc435fbf179ab4a3_d5536eec81a24b6f)
  unreachable
bb29:
  %t50 = load i32, ptr %l2, !tbaa !23
  store i32 %t50, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownerApplies(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i32
  %l14 = alloca i64
  %l17 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca i32
  %l29 = alloca i32
  %l30 = alloca i1
  %l36 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i32, ptr %l8, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t14)
  store i64 %t16, ptr %l14
  br label %bb5
bb5:
  %t17 = load i64, ptr %l14, !tbaa !24
  store i64 %t17, ptr %l4, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l17
  br label %bb6
bb6:
  %t23 = load i64, ptr %l17, !tbaa !24
  store i64 %t23, ptr %l5, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t26 = icmp eq i64 %t24, 0
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  store ptr %t30, ptr %l21, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l25
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l2, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l29
  br label %bb10
bb10:
  %t45 = load ptr, ptr %l21, !tbaa !29
  %t46 = load i32, ptr %l25, !tbaa !23
  %t47 = load i32, ptr %l29, !tbaa !23
  %t48 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t45, i32 %t46, i32 %t47)
  store i1 %t48, ptr %l30
  br label %bb11
bb11:
  %t49 = load i1, ptr %l30, !tbaa !21
  store i1 %t49, ptr %rv
  br label %ret
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l3, !tbaa !23
  %t52 = load i32, ptr %l2, !tbaa !23
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l5, !tbaa !24
  %t60 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMatches(ptr %v0, ptr %t50, i32 %t51, i32 %t52, i64 %t53, i64 %t54, i1 true)
  store i1 %t60, ptr %l36
  br label %bb13
bb13:
  %t61 = load i1, ptr %l36, !tbaa !21
  store i1 %t61, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvApplies(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i32
  %l14 = alloca i1
  %l16 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l28 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i32
  %l33 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca i32
  %l45 = alloca i32
  %l48 = alloca { i64, ptr }
  %l50 = alloca i32
  %l51 = alloca { i64, ptr }
  %l56 = alloca i32
  %l60 = alloca i1
  %l64 = alloca i32
  %l68 = alloca i32
  %l72 = alloca i64
  %l75 = alloca i64
  %l79 = alloca ptr
  %l83 = alloca i32
  %l87 = alloca i32
  %l88 = alloca i1
  %l94 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l2, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb6
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l16, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l20
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t26 = load i32, ptr %l20, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t25, i32 %t26)
  store { i64, ptr } %t27, ptr %l21
  br label %bb5
bb5:
  %t28 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  %t31 = icmp eq i64 %t29, 0
  store i1 %t31, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t33 = load i1, ptr %l14, !tbaa !21
  br i1 %t33, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  store ptr %t37, ptr %l26, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  store ptr %t40, ptr %l28, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t41, i64 %t42)
  store i32 %t45, ptr %l31
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l28, !tbaa !29
  %t47 = load i32, ptr %l31, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t48, ptr %l32
  br label %bb11
bb11:
  %t49 = load ptr, ptr %l26, !tbaa !29
  %t50 = load i32, ptr %l32, !tbaa !23
  %t51 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t49, i32 %t50)
  store { i64, ptr } %t51, ptr %l33
  br label %bb12
bb12:
  %t52 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t52, ptr %l3, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t57 = icmp eq i64 %t55, 0
  br i1 %t57, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t63, ptr %l40, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i32, ptr %t65, i64 0
  %t67 = load i32, ptr %t66, !tbaa !33
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t62, i32 %t67)
  store i32 %t70, ptr %l42
  br label %bb16
bb16:
  %t71 = load i32, ptr %l42, !range !{i32 0, i32 33}
  %t73 = trunc i64 20 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb17, label %bb18
bb17:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  %t79 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t79, ptr %l48, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i32, ptr %t81, i64 0
  %t83 = load i32, ptr %t82, !tbaa !33
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t78, i32 %t83)
  store i32 %t86, ptr %l50
  br label %bb19
bb18:
  %t87 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t87, ptr %l51, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i32, ptr %t89, i64 0
  %t91 = load i32, ptr %t90, !tbaa !33
  store i32 %t91, ptr %l45, !tbaa !23
  br label %bb20
bb19:
  %t93 = load i32, ptr %l50, !tbaa !23
  store i32 %t93, ptr %l45, !tbaa !23
  br label %bb20
bb20:
  %t94 = load i32, ptr %l45, !tbaa !23
  store i32 %t94, ptr %l4, !tbaa !23
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %l4, !tbaa !23
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t97, i32 %t98)
  store i32 %t101, ptr %l56
  br label %bb21
bb21:
  %t102 = load i32, ptr %l56, !range !{i32 0, i32 33}
  %t104 = trunc i64 18 to i32
  %t105 = icmp eq i32 %t102, %t104
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb26
bb23:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %l4, !tbaa !23
  %t115 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l64
  br label %bb24
bb24:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  %t119 = load i32, ptr %l2, !tbaa !23
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t118, i32 %t119)
  store i32 %t122, ptr %l68
  br label %bb25
bb25:
  %t123 = load i32, ptr %l64, !tbaa !23
  %t124 = load i32, ptr %l68, !tbaa !23
  %t125 = icmp ne i32 %t123, %t124
  store i1 %t125, ptr %l60, !tbaa !21
  br label %bb26
bb26:
  %t127 = load i1, ptr %l60, !tbaa !21
  br i1 %t127, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t129 = load i64, ptr %l1, !tbaa !24
  %t131 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t129)
  store i64 %t131, ptr %l72
  br label %bb30
bb30:
  %t132 = load i64, ptr %l72, !tbaa !24
  store i64 %t132, ptr %l5, !tbaa !24
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i64, ptr %l5, !tbaa !24
  %t137 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t133, i64 %t134)
  store i64 %t137, ptr %l75
  br label %bb31
bb31:
  %t138 = load i64, ptr %l75, !tbaa !24
  store i64 %t138, ptr %l6, !tbaa !24
  %t139 = load i64, ptr %l6, !tbaa !24
  %t141 = icmp eq i64 %t139, 0
  br i1 %t141, label %bb32, label %bb33
bb32:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  store ptr %t145, ptr %l79, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 2
  %t149 = load i32, ptr %l4, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l83
  br label %bb34
bb33:
  br label %bb37
bb34:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  %t156 = load i32, ptr %l2, !tbaa !23
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l87
  br label %bb35
bb35:
  %t160 = load ptr, ptr %l79, !tbaa !29
  %t161 = load i32, ptr %l83, !tbaa !23
  %t162 = load i32, ptr %l87, !tbaa !23
  %t163 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t160, i32 %t161, i32 %t162)
  store i1 %t163, ptr %l88
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t164 = load i1, ptr %l88, !tbaa !21
  store i1 %t164, ptr %rv
  br label %ret
bb37:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i32, ptr %l4, !tbaa !23
  %t167 = load i32, ptr %l2, !tbaa !23
  %t168 = load i64, ptr %l5, !tbaa !24
  %t169 = load i64, ptr %l6, !tbaa !24
  %t175 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMatches(ptr %v0, ptr %t165, i32 %t166, i32 %t167, i64 %t168, i64 %t169, i1 true)
  store i1 %t175, ptr %l94
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t176 = load i1, ptr %l94, !tbaa !21
  store i1 %t176, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/names:Ref"
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i1
  %l24 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca i1
  %l36 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca i64
  %l51 = alloca %"compiler/names:Ref"
  %l55 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l64 = alloca i64
  %l67 = alloca i1
  %l73 = alloca i32
  %l74 = alloca i64
  %l78 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l85 = alloca i1
  %l88 = alloca i1
  %l90 = alloca i64
  %l94 = alloca i32
  %l95 = alloca i64
  %s8 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t7 = load ptr, ptr %l14, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l14, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 4
  store i1 %t13, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l15, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t17, i32 0, i32 1
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l4, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l1, !tbaa !24
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v1, ptr %v2, ptr %t21, i64 %t22, ptr %t23, { i64, ptr } %t24)
  store i64 %t29, ptr %l24
  br label %bb9
bb9:
  %t30 = load i64, ptr %l24, !tbaa !24
  store i64 %t30, ptr %rv
  br label %ret
bb10:
  %t31 = load ptr, ptr %l2, !tbaa !29
  store ptr %t31, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t32 = load ptr, ptr %l25, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l25, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 8}
  %t38 = icmp eq i64 %t36, 3
  store i1 %t38, ptr %l26, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l26, !tbaa !21
  br i1 %t39, label %bb13, label %bb14
bb13:
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = getelementptr { i64, [5 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t42, i32 0, i32 1
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l5, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i64, ptr %l1, !tbaa !24
  %t48 = load ptr, ptr %l5, !tbaa !29
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t55 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v1, ptr %v2, ptr %t46, i64 %t47, ptr %t48, { i64, ptr } %t50)
  store i64 %t55, ptr %l36
  br label %bb16
bb16:
  %t56 = load i64, ptr %l36, !tbaa !24
  store i64 %t56, ptr %rv
  br label %ret
bb17:
  %t57 = load ptr, ptr %l2, !tbaa !29
  store ptr %t57, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t58 = load ptr, ptr %l37, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb18, label %bb19
bb18:
  %t61 = load ptr, ptr %l37, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 8}
  %t64 = icmp eq i64 %t62, 0
  store i1 %t64, ptr %l38, !tbaa !21
  br label %bb19
bb19:
  %t65 = load i1, ptr %l38, !tbaa !21
  br i1 %t65, label %bb20, label %bb21
bb20:
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr { i64, [5 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t68, i32 0, i32 0
  %t70 = load %"compiler/source:Span", ptr %t69
  store %"compiler/source:Span" %t70, ptr %l6
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t74 = getelementptr { i64, [5 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t74, i32 0, i32 1
  %t76 = load { i64, ptr }, ptr %t75
  store { i64, ptr } %t76, ptr %l7, !tbaa !27
  br label %bb22
bb21:
  br label %bb56
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  store ptr %t81, ptr %l46, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l1, !tbaa !24
  %t86 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t82, i64 %t83)
  store i64 %t86, ptr %l49
  br label %bb23
bb23:
  %t87 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 0
  %t88 = load i32, ptr %t87, !tbaa !23
  %t89 = load ptr, ptr %l46, !tbaa !29
  %t90 = load i64, ptr %l49, !tbaa !24
  %t92 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t89, i64 %t90, i32 %t88)
  store %"compiler/names:Ref" %t92, ptr %l51
  br label %bb24
bb24:
  %t93 = load %"compiler/names:Ref", ptr %l51
  store %"compiler/names:Ref" %t93, ptr %l8
  %t94 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 0
  %t95 = load i32, ptr %t94, !range !{i32 0, i32 9}
  %t97 = trunc i64 8 to i32
  %t98 = icmp eq i32 %t95, %t97
  br i1 %t98, label %bb25, label %bb26
bb25:
  %t100 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t101, ptr %l55, !tbaa !27
  %t102 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i32, ptr %t103, i64 0
  %t105 = load i32, ptr %t104, !tbaa !33
  %t108 = call ptr @compiler_2fgeneric_2elisted(ptr %v2, ptr %v2, { i64, ptr } %t100, i32 %t105)
  store ptr %t108, ptr %l57
  br label %bb27
bb26:
  br label %bb32
bb27:
  %t109 = load ptr, ptr %l57, !tbaa !29
  store ptr %t109, ptr %l9, !tbaa !29
  %t110 = load ptr, ptr %l9, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  br i1 %t112, label %bb28, label %bb29
bb28:
  store i64 -1, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i64, ptr %l1, !tbaa !24
  %t117 = load ptr, ptr %l9, !tbaa !29
  %t121 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2econstraintKey(ptr %v0, ptr %v2, ptr %t115, i64 %t116, ptr %t117)
  store i64 %t121, ptr %l64
  br label %bb31
bb31:
  %t122 = load i64, ptr %l64, !tbaa !24
  store i64 %t122, ptr %rv
  br label %ret
bb32:
  %t123 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 0
  %t124 = load i32, ptr %t123, !range !{i32 0, i32 9}
  %t126 = trunc i64 4 to i32
  %t127 = icmp eq i32 %t124, %t126
  br i1 %t127, label %bb33, label %bb34
bb33:
  %t129 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 2
  %t130 = load i64, ptr %t129, !tbaa !24
  %t132 = icmp sge i64 %t130, 0
  store i1 %t132, ptr %l67, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb35
bb35:
  %t134 = load i1, ptr %l67, !tbaa !21
  br i1 %t134, label %bb36, label %bb37
bb36:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 1
  %t137 = load i64, ptr %t136, !tbaa !24
  %t138 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 2
  %t139 = load i64, ptr %t138, !tbaa !24
  %t143 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t135, i64 %t137, i64 %t139)
  store i32 %t143, ptr %l73
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t144 = load i32, ptr %l73, !tbaa !23
  %t145 = call i64 @compiler_2fgeneric_2ekeyDecl(i32 %t144)
  store i64 %t145, ptr %l74
  br label %bb39
bb39:
  %t146 = load i64, ptr %l74, !tbaa !24
  store i64 %t146, ptr %rv
  br label %ret
bb40:
  %t147 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 0
  %t148 = load i32, ptr %t147, !range !{i32 0, i32 9}
  %t150 = trunc i64 7 to i32
  %t151 = icmp eq i32 %t148, %t150
  br i1 %t151, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s8
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t154, ptr %l78, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t155, 0
  %t159 = sub i64 %t157, 1
  %t161 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr i32, ptr %t162, i64 %t159
  %t164 = load i32, ptr %t163, !tbaa !33
  %t167 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t153, i32 %t164)
  store { i64, ptr } %t167, ptr %l83
  br label %bb43
bb42:
  br label %bb55
bb43:
  %t168 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t168, ptr %l10, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t171 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s8, { i64, ptr } %t169, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t171, ptr %l85
  br label %bb44
bb44:
  %t172 = load i1, ptr %l85, !tbaa !21
  br i1 %t172, label %bb45, label %bb46
bb45:
  %t173 = load i64, ptr @G_2ecompiler_2fgeneric_2eArrayKey, !tbaa !24
  call void @__olang_scope_close(ptr %s8)
  store i64 %t173, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t175 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t177 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s8, { i64, ptr } %t175, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t177, ptr %l88
  br label %bb48
bb48:
  %t178 = load i1, ptr %l88, !tbaa !21
  br i1 %t178, label %bb49, label %bb50
bb49:
  %t179 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t181 = call i64 @compiler_2fgeneric_2ekeyPrim(i32 %t179)
  store i64 %t181, ptr %l90
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_scope_close(ptr %s8)
  %t182 = load i64, ptr %l90, !tbaa !24
  store i64 %t182, ptr %rv
  br label %ret
bb52:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 2
  %t186 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t189 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v0, ptr %t185, { i64, ptr } %t186)
  store i32 %t189, ptr %l94
  br label %bb53
bb53:
  %t190 = load i32, ptr %l94, !tbaa !23
  %t191 = call i64 @compiler_2fgeneric_2ekeyPrim(i32 %t190)
  store i64 %t191, ptr %l95
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s8)
  %t192 = load i64, ptr %l95, !tbaa !24
  store i64 %t192, ptr %rv
  br label %ret
bb55:
  store i64 -1, ptr %rv
  br label %ret
bb56:
  br i1 true, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  store i64 -1, ptr %rv
  br label %ret
bb60:
  call void @__olang_check_failed(ptr @olang_loc_769954e80c04bef7_8801cb066681a71b)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eresultMayHold(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l22 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t7 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s1, ptr %t3, i32 %a1)
  store { i64, ptr } %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  %t10 = extractvalue { i64, ptr } %t8, 1
  %t11 = mul i64 %t9, 4
  %t12 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t11)
  call void @llvm.memcpy.p0.p0.i64(ptr %t12, ptr %t10, i64 %t11, i1 false)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp slt i64 %t20, %t21
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t28, ptr %l17, !tbaa !27
  %t29 = load i64, ptr %l3, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i32, ptr %t32, i64 %t29
  %t34 = load i32, ptr %t33, !tbaa !33
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t40 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emayHold(ptr %v0, ptr %t36, i32 %t34)
  store i1 %t40, ptr %l22
  br label %bb6
bb6:
  %t41 = load i1, ptr %l22, !tbaa !21
  br i1 %t41, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l3, !tbaa !24
  br label %bb2
bb11:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eslotOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i1
  %l9 = alloca i32
  %l13 = alloca i1
  %l15 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i1
  %l24 = alloca i1
  %l25 = alloca i32
  %l29 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l9
  br label %bb3
bb3:
  %t12 = load i32, ptr %l9, !range !{i32 0, i32 33}
  %t14 = trunc i64 20 to i32
  %t15 = icmp eq i32 %t12, %t14
  %t17 = xor i1 %t15, true
  store i1 %t17, ptr %l5, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l5, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb9
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  store ptr %t22, ptr %l15, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l2, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l19
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l15, !tbaa !29
  %t31 = load i32, ptr %l19, !tbaa !23
  %t32 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t30, i32 %t31)
  store i1 %t32, ptr %l20
  br label %bb8
bb8:
  %t33 = load i1, ptr %l20, !tbaa !21
  %t34 = xor i1 %t33, true
  store i1 %t34, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l13, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t37 = load i32, ptr %l2, !tbaa !23
  store i32 %t37, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = call i1 @compiler_2fgeneric_2emadeByCall(ptr %v1, ptr %t39)
  store i1 %t41, ptr %l24
  br label %bb13
bb13:
  %t42 = load i1, ptr %l24, !tbaa !21
  br i1 %t42, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l2, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l29
  br label %bb16
bb15:
  %t50 = load i32, ptr %l2, !tbaa !23
  store i32 %t50, ptr %l25, !tbaa !23
  br label %bb17
bb16:
  %t52 = load i32, ptr %l29, !tbaa !23
  store i32 %t52, ptr %l25, !tbaa !23
  br label %bb17
bb17:
  %t53 = load i32, ptr %l25, !tbaa !23
  store i32 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esuppliedMeets(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i32
  %l24 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %l32 = alloca i1
  %l36 = alloca i32
  %l40 = alloca i1
  %l44 = alloca i32
  %l47 = alloca i32
  %l51 = alloca i32
  %l56 = alloca i64
  %l59 = alloca i64
  %l80 = alloca i1
  %l84 = alloca i64
  %l88 = alloca i32
  %l90 = alloca ptr
  %l93 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l97 = alloca i32
  %l101 = alloca i1
  %l107 = alloca i32
  %l114 = alloca i32
  %l119 = alloca i1
  %l122 = alloca i1
  %l124 = alloca i1
  %l128 = alloca i32
  %l131 = alloca i32
  %l135 = alloca i32
  %l140 = alloca i64
  %l143 = alloca i64
  %l164 = alloca i32
  %l170 = alloca i1
  %l176 = alloca i32
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t3, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i32 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i32, ptr %l22, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  store ptr %t9, ptr %l24, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l28
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l24, !tbaa !29
  %t18 = load i32, ptr %l28, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l29
  br label %bb3
bb3:
  %t20 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  %t23 = icmp ne i64 %t21, 0
  br i1 %t23, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb7
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l3, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l36
  br label %bb6
bb6:
  %t32 = load i32, ptr %l36, !tbaa !23
  %t33 = icmp ne i32 %t32, 0
  store i1 %t33, ptr %l32, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l32, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t37 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t39 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t37, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t39, ptr %l40
  br label %bb11
bb11:
  %t40 = load i1, ptr %l40, !tbaa !21
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %l1, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l44
  br label %bb14
bb13:
  br label %bb49
bb14:
  %t48 = load i32, ptr %l44, !range !{i32 0, i32 33}
  %t50 = trunc i64 20 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l1, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l51
  br label %bb17
bb16:
  %t60 = load i32, ptr %l1, !tbaa !23
  store i32 %t60, ptr %l47, !tbaa !23
  br label %bb18
bb17:
  %t62 = load i32, ptr %l51, !tbaa !23
  store i32 %t62, ptr %l47, !tbaa !23
  br label %bb18
bb18:
  %t63 = load i32, ptr %l47, !tbaa !23
  store i32 %t63, ptr %l5, !tbaa !23
  store i64 0, ptr %l6, !tbaa !24
  store i64 16, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t64 = load i64, ptr %l7, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = icmp sgt i64 %t64, %t65
  br i1 %t68, label %bb19, label %bb20
bb19:
  %t70 = load i64, ptr %l8, !tbaa !24
  %t72 = icmp sgt i64 %t70, 0
  br i1 %t72, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb24
bb21:
  %t74 = load i64, ptr %l7, !tbaa !24
  %t75 = load i64, ptr %l6, !tbaa !24
  %t78 = sub i64 %t74, %t75
  %t79 = load i64, ptr %l8, !tbaa !24
  %t82 = add i64 %t78, %t79
  %t84 = sub i64 %t82, 1
  %t85 = load i64, ptr %l8, !tbaa !24
  %t88 = sdiv i64 %t84, %t85
  store i64 %t88, ptr %l59, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb23
bb23:
  %t90 = load i64, ptr %l59, !tbaa !24
  store i64 %t90, ptr %l56, !tbaa !24
  br label %bb24
bb24:
  %t91 = load i64, ptr %l56, !tbaa !24
  store i64 %t91, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb25
bb25:
  %t92 = load i64, ptr %l10, !tbaa !24
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb26, label %bb27
bb26:
  br label %bb48
bb27:
  br label %bb28
bb28:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t101 = load i64, ptr %l10, !tbaa !24
  %t102 = load i64, ptr %l8, !tbaa !24
  %t105 = mul i64 %t101, %t102
  %t108 = add i64 %t100, %t105
  store i64 %t108, ptr %l11, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l5, !tbaa !23
  %t116 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t112, i32 %t113)
  store i1 %t116, ptr %l80
  br label %bb29
bb29:
  %t117 = load i1, ptr %l80, !tbaa !21
  br i1 %t117, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 2
  %t121 = load i32, ptr %l5, !tbaa !23
  %t124 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t120, i32 %t121)
  store i64 %t124, ptr %l84
  br label %bb32
bb31:
  br label %bb41
bb32:
  %t125 = load i64, ptr %l84, !tbaa !24
  store i64 %t125, ptr %l12, !tbaa !24
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t126, i32 0, i32 2
  %t129 = load i32, ptr %l3, !tbaa !23
  %t132 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t128, i32 %t129)
  store i32 %t132, ptr %l88
  br label %bb33
bb33:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  store ptr %t135, ptr %l90, !tbaa !29
  %t136 = load i64, ptr %l12, !tbaa !24
  %t138 = icmp eq i64 %t136, 64
  br i1 %t138, label %bb34, label %bb35
bb34:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l93, !tbaa !27
  br label %bb39
bb35:
  %t140 = load i64, ptr %l12, !tbaa !24
  %t142 = icmp eq i64 %t140, 32
  br i1 %t142, label %bb36, label %bb37
bb36:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l96, !tbaa !27
  br label %bb38
bb37:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l96, !tbaa !27
  br label %bb38
bb38:
  %t144 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t144, ptr %l93, !tbaa !27
  br label %bb39
bb39:
  %t145 = load ptr, ptr %l90, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s5, ptr %t145, { i64, ptr } %t146)
  store i32 %t147, ptr %l97
  br label %bb40
bb40:
  %t148 = load i32, ptr %l88, !tbaa !23
  %t149 = load i32, ptr %l97, !tbaa !23
  %t150 = icmp eq i32 %t148, %t149
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store i1 %t150, ptr %rv
  br label %ret
bb41:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i32, ptr %l5, !tbaa !23
  %t156 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t152, i32 %t153)
  store i1 %t156, ptr %l101
  br label %bb42
bb42:
  %t157 = load i1, ptr %l101, !tbaa !21
  %t158 = xor i1 %t157, true
  br i1 %t158, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 2
  %t164 = load i32, ptr %l5, !tbaa !23
  %t167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t163, i32 %t164)
  store i32 %t167, ptr %l107
  br label %bb46
bb46:
  %t168 = load i32, ptr %l107, !tbaa !23
  store i32 %t168, ptr %l5, !tbaa !23
  br label %bb47
bb47:
  %t169 = load i64, ptr %l10, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l10, !tbaa !24
  br label %bb25
bb48:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb49:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 2
  %t177 = load i32, ptr %l3, !tbaa !23
  %t180 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t176, i32 %t177)
  store i32 %t180, ptr %l114
  br label %bb50
bb50:
  %t181 = load i32, ptr %l4, !tbaa !23
  %t182 = load i32, ptr %l114, !tbaa !23
  %t184 = icmp ne i32 %t182, %t181
  br i1 %t184, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t187 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t189 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t187, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t189, ptr %l119
  br label %bb54
bb54:
  %t190 = load i1, ptr %l119, !tbaa !21
  br i1 %t190, label %bb55, label %bb56
bb55:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load i32, ptr %l1, !tbaa !23
  %t195 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasHash(ptr %v0, ptr %t191, i32 %t192)
  store i1 %t195, ptr %l122
  br label %bb57
bb56:
  br label %bb58
bb57:
  call void @__olang_scope_close(ptr %s0)
  %t196 = load i1, ptr %l122, !tbaa !21
  store i1 %t196, ptr %rv
  br label %ret
bb58:
  %t197 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t199 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t197, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t199, ptr %l124
  br label %bb59
bb59:
  %t200 = load i1, ptr %l124, !tbaa !21
  br i1 %t200, label %bb60, label %bb61
bb60:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/generic:Program", ptr %t201, i32 0, i32 2
  %t204 = load i32, ptr %l1, !tbaa !23
  %t207 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t203, i32 %t204)
  store i32 %t207, ptr %l128
  br label %bb62
bb61:
  br label %bb88
bb62:
  %t208 = load i32, ptr %l128, !range !{i32 0, i32 33}
  %t210 = trunc i64 20 to i32
  %t211 = icmp eq i32 %t208, %t210
  br i1 %t211, label %bb63, label %bb64
bb63:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/generic:Program", ptr %t213, i32 0, i32 2
  %t216 = load i32, ptr %l1, !tbaa !23
  %t219 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t215, i32 %t216)
  store i32 %t219, ptr %l135
  br label %bb65
bb64:
  %t220 = load i32, ptr %l1, !tbaa !23
  store i32 %t220, ptr %l131, !tbaa !23
  br label %bb66
bb65:
  %t222 = load i32, ptr %l135, !tbaa !23
  store i32 %t222, ptr %l131, !tbaa !23
  br label %bb66
bb66:
  %t223 = load i32, ptr %l131, !tbaa !23
  store i32 %t223, ptr %l13, !tbaa !23
  store i64 0, ptr %l14, !tbaa !24
  store i64 16, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t224 = load i64, ptr %l15, !tbaa !24
  %t225 = load i64, ptr %l14, !tbaa !24
  %t228 = icmp sgt i64 %t224, %t225
  br i1 %t228, label %bb67, label %bb68
bb67:
  %t230 = load i64, ptr %l16, !tbaa !24
  %t232 = icmp sgt i64 %t230, 0
  br i1 %t232, label %bb69, label %bb70
bb68:
  store i64 0, ptr %l140, !tbaa !24
  br label %bb72
bb69:
  %t234 = load i64, ptr %l15, !tbaa !24
  %t235 = load i64, ptr %l14, !tbaa !24
  %t238 = sub i64 %t234, %t235
  %t239 = load i64, ptr %l16, !tbaa !24
  %t242 = add i64 %t238, %t239
  %t244 = sub i64 %t242, 1
  %t245 = load i64, ptr %l16, !tbaa !24
  %t248 = sdiv i64 %t244, %t245
  store i64 %t248, ptr %l143, !tbaa !24
  br label %bb71
bb70:
  store i64 0, ptr %l143, !tbaa !24
  br label %bb71
bb71:
  %t250 = load i64, ptr %l143, !tbaa !24
  store i64 %t250, ptr %l140, !tbaa !24
  br label %bb72
bb72:
  %t251 = load i64, ptr %l140, !tbaa !24
  store i64 %t251, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb73
bb73:
  %t252 = load i64, ptr %l18, !tbaa !24
  %t253 = load i64, ptr %l17, !tbaa !24
  %t256 = icmp slt i64 %t252, %t253
  %t258 = xor i1 %t256, true
  br i1 %t258, label %bb74, label %bb75
bb74:
  br label %bb87
bb75:
  br label %bb76
bb76:
  %t260 = load i64, ptr %l14, !tbaa !24
  %t261 = load i64, ptr %l18, !tbaa !24
  %t262 = load i64, ptr %l16, !tbaa !24
  %t265 = mul i64 %t261, %t262
  %t268 = add i64 %t260, %t265
  store i64 %t268, ptr %l19, !tbaa !24
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/generic:Program", ptr %t270, i32 0, i32 2
  %t273 = load i32, ptr %l13, !tbaa !23
  %t276 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t272, i32 %t273)
  store i32 %t276, ptr %l164
  br label %bb77
bb77:
  %t277 = load i32, ptr %l164, !range !{i32 0, i32 33}
  %t279 = trunc i64 19 to i32
  %t280 = icmp eq i32 %t277, %t279
  br i1 %t280, label %bb78, label %bb79
bb78:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb79:
  br label %bb80
bb80:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load i32, ptr %l13, !tbaa !23
  %t287 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t283, i32 %t284)
  store i1 %t287, ptr %l170
  br label %bb81
bb81:
  %t288 = load i1, ptr %l170, !tbaa !21
  %t289 = xor i1 %t288, true
  br i1 %t289, label %bb82, label %bb83
bb82:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb83:
  br label %bb84
bb84:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/generic:Program", ptr %t292, i32 0, i32 2
  %t295 = load i32, ptr %l13, !tbaa !23
  %t298 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t294, i32 %t295)
  store i32 %t298, ptr %l176
  br label %bb85
bb85:
  %t299 = load i32, ptr %l176, !tbaa !23
  store i32 %t299, ptr %l13, !tbaa !23
  br label %bb86
bb86:
  %t300 = load i64, ptr %l18, !tbaa !24
  %t302 = add i64 %t300, 1
  store i64 %t302, ptr %l18, !tbaa !24
  br label %bb73
bb87:
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i32
  %l17 = alloca { i64, ptr }
  %l28 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l7, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l7, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb13
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t15, ptr %l17, !tbaa !27
  %t16 = load i64, ptr %l6, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i32, ptr %t19, i64 %t16
  %t21 = load i32, ptr %t20, !tbaa !33
  store i32 %t21, ptr %l8, !tbaa !23
  %t23 = load i32, ptr %l8, !tbaa !23
  %t25 = icmp eq i32 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb5:
  br label %bb12
bb6:
  br label %bb7
bb7:
  %t28 = load i32, ptr %l8, !tbaa !23
  %t32 = add i64 %a3, 1
  %t39 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v2, ptr %a0, i32 %t28, ptr %a2, i64 %t32, i1 %a4)
  store i32 %t39, ptr %l28
  br label %bb8
bb8:
  %t40 = load i32, ptr %l28, !tbaa !23
  store i32 %t40, ptr %l9, !tbaa !23
  %t41 = load i32, ptr %l9, !tbaa !23
  %t42 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t45 = icmp ne i32 %t41, %t42
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load i32, ptr %l9, !tbaa !23
  store i32 %t47, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l6, !tbaa !24
  br label %bb1
bb13:
  %t53 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyBound(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca i64
  %l44 = alloca i32
  %l45 = alloca i32
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l60 = alloca i32
  %l64 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l79 = alloca i64
  %l86 = alloca i64
  %l94 = alloca i32
  %l102 = alloca i32
  %l106 = alloca i32
  %l109 = alloca i32
  %l113 = alloca i32
  %l118 = alloca i32
  %l121 = alloca ptr
  %l125 = alloca i32
  %l126 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l140 = alloca i32
  %l144 = alloca i64
  %l153 = alloca i64
  %l156 = alloca i64
  %l176 = alloca { i64, ptr }
  %l181 = alloca ptr
  %l185 = alloca i32
  %l189 = alloca i32
  %l191 = alloca i32
  %l192 = alloca i64
  %l195 = alloca i64
  %l202 = alloca ptr
  %l205 = alloca i1
  %l211 = alloca i64
  %l220 = alloca i64
  %l223 = alloca i64
  %l243 = alloca { i64, ptr }
  %l250 = alloca ptr
  %l251 = alloca i1
  %l265 = alloca { i64, ptr }
  %l268 = alloca ptr
  %l269 = alloca i32
  %l270 = alloca ptr
  %l271 = alloca ptr
  %l274 = alloca %"compiler/generic:Context"
  %l278 = alloca i32
  %l280 = alloca i64
  %l284 = alloca i32
  %l285 = alloca i32
  %l289 = alloca i64
  %l299 = alloca { i64, ptr }
  %l303 = alloca i1
  %l308 = alloca i64
  %l314 = alloca i32
  %l318 = alloca ptr
  %l319 = alloca ptr
  %l322 = alloca %"compiler/generic:Context"
  %l327 = alloca i32
  %l329 = alloca i64
  %l333 = alloca i32
  %l334 = alloca i32
  %l336 = alloca ptr
  %l340 = alloca i32
  %l341 = alloca { i64, ptr }
  %l343 = alloca ptr
  %l347 = alloca i32
  %l348 = alloca { i64, ptr }
  %l360 = alloca i64
  %l363 = alloca i64
  %l382 = alloca { i64, ptr }
  %l385 = alloca { i64, ptr }
  %l390 = alloca i32
  %l393 = alloca ptr
  %l397 = alloca i32
  %l401 = alloca i32
  %l403 = alloca i32
  %l404 = alloca ptr
  %l408 = alloca i32
  %l410 = alloca i1
  %l411 = alloca ptr
  %l415 = alloca i32
  %l419 = alloca i32
  %l421 = alloca i32
  %l426 = alloca i64
  %s0 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %rv = alloca i64
  %t471 = alloca %"compiler/generic:Context", align 8
  %t569 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  %t9 = load i32, ptr %l2, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l60
  br label %bb4
bb4:
  %t13 = load i32, ptr %l60, !range !{i32 0, i32 33}
  %t15 = trunc i64 22 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i64 0, ptr %l5, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  store ptr %t20, ptr %l64, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l2, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l68
  br label %bb7
bb6:
  br label %bb16
bb7:
  %t28 = load ptr, ptr %l64, !tbaa !29
  %t29 = load i32, ptr %l68, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t28, i32 %t29)
  store { i64, ptr } %t30, ptr %l69
  br label %bb8
bb8:
  %t31 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t31, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  store i64 %t34, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t36 = load i64, ptr %l7, !tbaa !24
  %t37 = load i64, ptr %l8, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t44 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t44, ptr %l76, !tbaa !27
  %t45 = load i64, ptr %l7, !tbaa !24
  %t47 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i32, ptr %t48, i64 %t45
  %t50 = load i32, ptr %t49, !tbaa !33
  %t52 = load i64, ptr %l5, !tbaa !24
  store i64 %t52, ptr %l79, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l1, !tbaa !23
  %t56 = load ptr, ptr %l3, !tbaa !29
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = add i64 %t57, 1
  %t65 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyBound(ptr %v0, ptr %v1, ptr %t53, i32 %t54, i32 %t50, ptr %t56, i64 %t59)
  store i64 %t65, ptr %l86
  br label %bb13
bb13:
  %t66 = load i64, ptr %l79, !tbaa !24
  %t67 = load i64, ptr %l86, !tbaa !24
  %t68 = add i64 %t66, %t67
  store i64 %t68, ptr %l5, !tbaa !24
  br label %bb14
bb14:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l7, !tbaa !24
  br label %bb9
bb15:
  %t74 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t74, ptr %rv
  br label %ret
bb16:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  %t79 = load i32, ptr %l2, !tbaa !23
  %t82 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t78, i32 %t79)
  store i32 %t82, ptr %l94
  br label %bb17
bb17:
  %t83 = load i32, ptr %l94, !range !{i32 0, i32 33}
  %t85 = trunc i64 18 to i32
  %t86 = icmp eq i32 %t83, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l2, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l102
  br label %bb21
bb21:
  %t98 = load i32, ptr %l102, !tbaa !23
  store i32 %t98, ptr %l10, !tbaa !23
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %l1, !tbaa !23
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t101, i32 %t102)
  store i32 %t105, ptr %l106
  br label %bb22
bb22:
  %t106 = load i32, ptr %l106, !range !{i32 0, i32 33}
  %t108 = trunc i64 20 to i32
  %t109 = icmp eq i32 %t106, %t108
  br i1 %t109, label %bb23, label %bb24
bb23:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 2
  %t114 = load i32, ptr %l1, !tbaa !23
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t113, i32 %t114)
  store i32 %t117, ptr %l113
  br label %bb25
bb24:
  %t118 = load i32, ptr %l1, !tbaa !23
  store i32 %t118, ptr %l109, !tbaa !23
  br label %bb26
bb25:
  %t120 = load i32, ptr %l113, !tbaa !23
  store i32 %t120, ptr %l109, !tbaa !23
  br label %bb26
bb26:
  %t121 = load i32, ptr %l109, !tbaa !23
  store i32 %t121, ptr %l11, !tbaa !23
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  %t125 = load i32, ptr %l11, !tbaa !23
  %t128 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t124, i32 %t125)
  store i32 %t128, ptr %l118
  br label %bb27
bb27:
  %t129 = load i32, ptr %l118, !range !{i32 0, i32 33}
  %t131 = trunc i64 29 to i32
  %t132 = icmp eq i32 %t129, %t131
  br i1 %t132, label %bb28, label %bb29
bb28:
  store i64 0, ptr %l12, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s8
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l121, !tbaa !29
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  %t138 = load i32, ptr %l11, !tbaa !23
  %t141 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t137, i32 %t138)
  store i32 %t141, ptr %l125
  br label %bb30
bb29:
  br label %bb65
bb30:
  %t142 = load ptr, ptr %l121, !tbaa !29
  %t143 = load i32, ptr %l125, !tbaa !23
  %t144 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyCovers(ptr %v0, ptr %s8, ptr %t142, i32 %t143)
  store { i64, ptr } %t144, ptr %l126
  br label %bb31
bb31:
  %t145 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  %t147 = extractvalue { i64, ptr } %t145, 1
  %t148 = mul i64 %t146, 4
  %t149 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t148)
  call void @llvm.memcpy.p0.p0.i64(ptr %t149, ptr %t147, i64 %t148, i1 false)
  %t150 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  store { i64, ptr } %t151, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t153 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t153, 0
  store i64 %t155, ptr %l15, !tbaa !24
  br label %bb32
bb32:
  store %olang.scope zeroinitializer, ptr %s9
  %t157 = load i64, ptr %l14, !tbaa !24
  %t158 = load i64, ptr %l15, !tbaa !24
  %t161 = icmp slt i64 %t157, %t158
  %t163 = xor i1 %t161, true
  br i1 %t163, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s9)
  br label %bb64
bb34:
  br label %bb35
bb35:
  %t165 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t165, ptr %l134, !tbaa !27
  %t166 = load i64, ptr %l14, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i32, ptr %t169, i64 %t166
  %t171 = load i32, ptr %t170, !tbaa !33
  store i32 %t171, ptr %l16, !tbaa !23
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/generic:Program", ptr %t173, i32 0, i32 2
  %t176 = load i32, ptr %l16, !tbaa !23
  %t179 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t175, i32 %t176)
  store i32 %t179, ptr %l140
  br label %bb36
bb36:
  %t180 = load i32, ptr %l10, !tbaa !23
  %t181 = load i32, ptr %l140, !tbaa !23
  %t183 = icmp ne i32 %t181, %t180
  br i1 %t183, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s9)
  br label %bb63
bb38:
  br label %bb39
bb39:
  %t185 = load ptr, ptr %l3, !tbaa !29
  %t187 = getelementptr %"compiler/generic:Binding", ptr %t185, i32 0, i32 1
  %t188 = load i64, ptr %t187, !tbaa !24
  store i64 %t188, ptr %l144, !tbaa !24
  %t189 = load i64, ptr %l144, !tbaa !24
  %t190 = icmp sge i64 %t189, 0
  br i1 %t190, label %bb40, label %bb41
bb40:
  %t192 = load i64, ptr %l144, !tbaa !24
  %t193 = icmp sle i64 %t192, 2305843009213693951
  br i1 %t193, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_b3aa93c548ec796e_ac2c4500982ff6c2)
  unreachable
bb42:
  %t195 = load i64, ptr %l144, !tbaa !24
  %t196 = mul i64 %t195, 4
  %t197 = call ptr @__olang_scope_alloc_zeroed(ptr %s9, i64 %t196)
  %t198 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  store { i64, ptr } %t199, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t201 = load ptr, ptr %l3, !tbaa !29
  %t203 = getelementptr %"compiler/generic:Binding", ptr %t201, i32 0, i32 1
  %t204 = load i64, ptr %t203, !tbaa !24
  store i64 %t204, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t206 = load i64, ptr %l19, !tbaa !24
  %t207 = load i64, ptr %l18, !tbaa !24
  %t210 = icmp sgt i64 %t206, %t207
  br i1 %t210, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_b3aa93c548ec796e_ac2c4500982ff6c2)
  unreachable
bb44:
  %t212 = load i64, ptr %l20, !tbaa !24
  %t214 = icmp sgt i64 %t212, 0
  br i1 %t214, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l153, !tbaa !24
  br label %bb49
bb46:
  %t216 = load i64, ptr %l19, !tbaa !24
  %t217 = load i64, ptr %l18, !tbaa !24
  %t220 = sub i64 %t216, %t217
  %t221 = load i64, ptr %l20, !tbaa !24
  %t224 = add i64 %t220, %t221
  %t226 = sub i64 %t224, 1
  %t227 = load i64, ptr %l20, !tbaa !24
  %t230 = sdiv i64 %t226, %t227
  store i64 %t230, ptr %l156, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l156, !tbaa !24
  br label %bb48
bb48:
  %t232 = load i64, ptr %l156, !tbaa !24
  store i64 %t232, ptr %l153, !tbaa !24
  br label %bb49
bb49:
  %t233 = load i64, ptr %l153, !tbaa !24
  store i64 %t233, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb50
bb50:
  %t234 = load i64, ptr %l22, !tbaa !24
  %t235 = load i64, ptr %l21, !tbaa !24
  %t238 = icmp slt i64 %t234, %t235
  %t240 = xor i1 %t238, true
  br i1 %t240, label %bb51, label %bb52
bb51:
  br label %bb55
bb52:
  br label %bb53
bb53:
  %t242 = load i64, ptr %l18, !tbaa !24
  %t243 = load i64, ptr %l22, !tbaa !24
  %t244 = load i64, ptr %l20, !tbaa !24
  %t247 = mul i64 %t243, %t244
  %t250 = add i64 %t242, %t247
  store i64 %t250, ptr %l23, !tbaa !24
  %t252 = load i64, ptr %l23, !tbaa !24
  %t253 = load ptr, ptr %l3, !tbaa !29
  %t255 = getelementptr %"compiler/generic:Binding", ptr %t253, i32 0, i32 2
  %t256 = load { i64, ptr }, ptr %t255, !tbaa !27
  store { i64, ptr } %t256, ptr %l176, !tbaa !27
  %t257 = load i64, ptr %l23, !tbaa !24
  %t259 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr i32, ptr %t260, i64 %t257
  %t262 = load i32, ptr %t261, !tbaa !33
  %t265 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr i32, ptr %t266, i64 %t252
  store i32 %t262, ptr %t267, !tbaa !33
  br label %bb54
bb54:
  %t268 = load i64, ptr %l22, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l22, !tbaa !24
  br label %bb50
bb55:
  %t272 = load ptr, ptr %l0, !tbaa !29
  store ptr %t272, ptr %l181, !tbaa !29
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/generic:Program", ptr %t273, i32 0, i32 2
  %t276 = load i32, ptr %l2, !tbaa !23
  %t279 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t275, i32 %t276)
  store i32 %t279, ptr %l185
  br label %bb56
bb56:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/generic:Program", ptr %t280, i32 0, i32 2
  %t283 = load i32, ptr %l16, !tbaa !23
  %t286 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t282, i32 %t283)
  store i32 %t286, ptr %l189
  br label %bb57
bb57:
  %t287 = load ptr, ptr %l3, !tbaa !29
  %t288 = load ptr, ptr %l181, !tbaa !29
  %t289 = load i32, ptr %l185, !tbaa !23
  %t290 = load i32, ptr %l189, !tbaa !23
  %t292 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyLists(ptr %v0, ptr %v1, ptr %t288, i32 %t289, i32 %t290, ptr %t287, i1 false)
  store i32 %t292, ptr %l191
  %t293 = icmp ne i32 %t292, 0
  br i1 %t293, label %bb59, label %ok.294, !prof !99
ok.294:
  br label %bb58
bb58:
  br label %bb61
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t295 = load i64, ptr %l12, !tbaa !24
  store i64 %t295, ptr %l192, !tbaa !24
  %t296 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t297 = load ptr, ptr %l3, !tbaa !29
  %t300 = call i64 @compiler_2fgeneric_2echangedVals(ptr %s9, ptr %v1, { i64, ptr } %t296, ptr %t297)
  store i64 %t300, ptr %l195
  br label %bb62
bb62:
  %t301 = load i64, ptr %l192, !tbaa !24
  %t302 = load i64, ptr %l195, !tbaa !24
  %t303 = add i64 %t301, %t302
  store i64 %t303, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s9)
  br label %bb63
bb63:
  %t305 = load i64, ptr %l14, !tbaa !24
  %t307 = add i64 %t305, 1
  store i64 %t307, ptr %l14, !tbaa !24
  br label %bb32
bb64:
  call void @__olang_scope_close(ptr %s8)
  %t309 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t309, ptr %rv
  br label %ret
bb65:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load i32, ptr %l10, !tbaa !23
  %t315 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t311, i32 %t312)
  store ptr %t315, ptr %l202
  br label %bb66
bb66:
  %t316 = load ptr, ptr %l202, !tbaa !29
  store ptr %t316, ptr %l24, !tbaa !29
  %t317 = load ptr, ptr %l24, !tbaa !29
  %t319 = icmp eq ptr %t317, null
  br i1 %t319, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l205, !tbaa !21
  br label %bb69
bb68:
  %t321 = load ptr, ptr %l24, !tbaa !29
  %t323 = getelementptr %"compiler/ast:TypeDecl", ptr %t321, i32 0, i32 3
  %t324 = load ptr, ptr %t323, !tbaa !29
  %t326 = icmp eq ptr %t324, null
  store i1 %t326, ptr %l205, !tbaa !21
  br label %bb69
bb69:
  %t328 = load i1, ptr %l205, !tbaa !21
  br i1 %t328, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t330 = load ptr, ptr %l3, !tbaa !29
  %t332 = getelementptr %"compiler/generic:Binding", ptr %t330, i32 0, i32 1
  %t333 = load i64, ptr %t332, !tbaa !24
  store i64 %t333, ptr %l211, !tbaa !24
  %t334 = load i64, ptr %l211, !tbaa !24
  %t335 = icmp sge i64 %t334, 0
  br i1 %t335, label %bb73, label %bb74
bb73:
  %t337 = load i64, ptr %l211, !tbaa !24
  %t338 = icmp sle i64 %t337, 2305843009213693951
  br i1 %t338, label %bb75, label %bb76
bb74:
  call void @__olang_check_failed(ptr @olang_loc_d067a2352cc578e3_8c11ed4f2bfcee77)
  unreachable
bb75:
  %t340 = load i64, ptr %l211, !tbaa !24
  %t341 = mul i64 %t340, 4
  %t342 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t341)
  %t343 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t344 = insertvalue { i64, ptr } %t343, ptr %t342, 1
  store { i64, ptr } %t344, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t346 = load ptr, ptr %l3, !tbaa !29
  %t348 = getelementptr %"compiler/generic:Binding", ptr %t346, i32 0, i32 1
  %t349 = load i64, ptr %t348, !tbaa !24
  store i64 %t349, ptr %l27, !tbaa !24
  store i64 1, ptr %l28, !tbaa !24
  %t351 = load i64, ptr %l27, !tbaa !24
  %t352 = load i64, ptr %l26, !tbaa !24
  %t355 = icmp sgt i64 %t351, %t352
  br i1 %t355, label %bb77, label %bb78
bb76:
  call void @__olang_check_failed(ptr @olang_loc_d067a2352cc578e3_8c11ed4f2bfcee77)
  unreachable
bb77:
  %t357 = load i64, ptr %l28, !tbaa !24
  %t359 = icmp sgt i64 %t357, 0
  br i1 %t359, label %bb79, label %bb80
bb78:
  store i64 0, ptr %l220, !tbaa !24
  br label %bb82
bb79:
  %t361 = load i64, ptr %l27, !tbaa !24
  %t362 = load i64, ptr %l26, !tbaa !24
  %t365 = sub i64 %t361, %t362
  %t366 = load i64, ptr %l28, !tbaa !24
  %t369 = add i64 %t365, %t366
  %t371 = sub i64 %t369, 1
  %t372 = load i64, ptr %l28, !tbaa !24
  %t375 = sdiv i64 %t371, %t372
  store i64 %t375, ptr %l223, !tbaa !24
  br label %bb81
bb80:
  store i64 0, ptr %l223, !tbaa !24
  br label %bb81
bb81:
  %t377 = load i64, ptr %l223, !tbaa !24
  store i64 %t377, ptr %l220, !tbaa !24
  br label %bb82
bb82:
  %t378 = load i64, ptr %l220, !tbaa !24
  store i64 %t378, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  br label %bb83
bb83:
  %t379 = load i64, ptr %l30, !tbaa !24
  %t380 = load i64, ptr %l29, !tbaa !24
  %t383 = icmp slt i64 %t379, %t380
  %t385 = xor i1 %t383, true
  br i1 %t385, label %bb84, label %bb85
bb84:
  br label %bb88
bb85:
  br label %bb86
bb86:
  %t387 = load i64, ptr %l26, !tbaa !24
  %t388 = load i64, ptr %l30, !tbaa !24
  %t389 = load i64, ptr %l28, !tbaa !24
  %t392 = mul i64 %t388, %t389
  %t395 = add i64 %t387, %t392
  store i64 %t395, ptr %l31, !tbaa !24
  %t397 = load i64, ptr %l31, !tbaa !24
  %t398 = load ptr, ptr %l3, !tbaa !29
  %t400 = getelementptr %"compiler/generic:Binding", ptr %t398, i32 0, i32 2
  %t401 = load { i64, ptr }, ptr %t400, !tbaa !27
  store { i64, ptr } %t401, ptr %l243, !tbaa !27
  %t402 = load i64, ptr %l31, !tbaa !24
  %t404 = getelementptr { i64, ptr }, ptr %l243, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !27
  %t406 = getelementptr i32, ptr %t405, i64 %t402
  %t407 = load i32, ptr %t406, !tbaa !33
  %t410 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t411 = load ptr, ptr %t410, !tbaa !27
  %t412 = getelementptr i32, ptr %t411, i64 %t397
  store i32 %t407, ptr %t412, !tbaa !33
  br label %bb87
bb87:
  %t413 = load i64, ptr %l30, !tbaa !24
  %t415 = add i64 %t413, 1
  store i64 %t415, ptr %l30, !tbaa !24
  br label %bb83
bb88:
  %t417 = load ptr, ptr %l24, !tbaa !29
  %t419 = getelementptr %"compiler/ast:TypeDecl", ptr %t417, i32 0, i32 3
  %t420 = load ptr, ptr %t419, !tbaa !29
  store ptr %t420, ptr %l32, !tbaa !29
  %t422 = load ptr, ptr %l32, !tbaa !29
  store ptr %t422, ptr %l250, !tbaa !29
  store i1 false, ptr %l251, !tbaa !21
  %t423 = load ptr, ptr %l250, !tbaa !29
  %t424 = icmp ne ptr %t423, null
  br i1 %t424, label %bb89, label %bb90
bb89:
  %t426 = load ptr, ptr %l250, !tbaa !29
  %t427 = load i64, ptr %t426, !range !{i64 0, i64 5}
  %t429 = icmp eq i64 %t427, 2
  store i1 %t429, ptr %l251, !tbaa !21
  br label %bb90
bb90:
  %t430 = load i1, ptr %l251, !tbaa !21
  br i1 %t430, label %bb91, label %bb92
bb91:
  %t431 = load ptr, ptr %l32, !tbaa !29
  %t433 = getelementptr { i64, [6 x i64] }, ptr %t431, i32 0, i32 1
  %t434 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t433, i32 0, i32 0
  %t435 = load { i64, ptr }, ptr %t434
  store { i64, ptr } %t435, ptr %l33, !tbaa !27
  %t437 = load ptr, ptr %l32, !tbaa !29
  %t439 = getelementptr { i64, [6 x i64] }, ptr %t437, i32 0, i32 1
  %t440 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t439, i32 0, i32 1
  %t441 = load { i64, ptr }, ptr %t440
  store { i64, ptr } %t441, ptr %l34, !tbaa !27
  br label %bb93
bb92:
  br label %bb169
bb93:
  %t443 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t443, ptr %l35, !tbaa !27
  store i64 0, ptr %l36, !tbaa !24
  %t445 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t445, 0
  store i64 %t447, ptr %l37, !tbaa !24
  br label %bb94
bb94:
  store %olang.scope zeroinitializer, ptr %s22
  %t449 = load i64, ptr %l36, !tbaa !24
  %t450 = load i64, ptr %l37, !tbaa !24
  %t453 = icmp slt i64 %t449, %t450
  %t455 = xor i1 %t453, true
  br i1 %t455, label %bb95, label %bb96
bb95:
  call void @__olang_scope_close(ptr %s22)
  br label %bb105
bb96:
  br label %bb97
bb97:
  %t457 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t457, ptr %l265, !tbaa !27
  %t458 = load i64, ptr %l36, !tbaa !24
  %t460 = getelementptr { i64, ptr }, ptr %l265, i32 0, i32 1
  %t461 = load ptr, ptr %t460, !tbaa !27
  %t462 = getelementptr ptr, ptr %t461, i64 %t458
  %t463 = load ptr, ptr %t462, !tbaa !39
  store ptr %t463, ptr %l38, !tbaa !29
  %t465 = load ptr, ptr %l0, !tbaa !29
  store ptr %t465, ptr %l268, !tbaa !29
  %t466 = load i32, ptr %l1, !tbaa !23
  store i32 %t466, ptr %l269, !tbaa !23
  %t467 = load ptr, ptr %l0, !tbaa !29
  store ptr %t467, ptr %l270, !tbaa !29
  %t468 = load ptr, ptr %l0, !tbaa !29
  store ptr %t468, ptr %l271, !tbaa !29
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t470 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t471, ptr %v0, ptr %s22, ptr %t469, i32 %t470)
  call void @llvm.memmove.p0.p0.i64(ptr %l274, ptr %t471, i64 160, i1 false)
  br label %bb98
bb98:
  %t474 = call ptr @__olang_scope_alloc_a(ptr %s22, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t474, ptr %l274, i64 160, i1 false)
  %t475 = load ptr, ptr %l38, !tbaa !29
  %t477 = load ptr, ptr %l271, !tbaa !29
  %t480 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s22, ptr %v0, ptr %t477, ptr %t474, ptr %t475)
  store i32 %t480, ptr %l278
  br label %bb99
bb99:
  %t481 = load i32, ptr %l10, !tbaa !23
  %t483 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t481)
  store i64 %t483, ptr %l280
  br label %bb100
bb100:
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t486 = getelementptr %"compiler/generic:Program", ptr %t484, i32 0, i32 2
  %t487 = load i32, ptr %l2, !tbaa !23
  %t490 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t486, i32 %t487)
  store i32 %t490, ptr %l284
  br label %bb101
bb101:
  %t491 = load ptr, ptr %l270, !tbaa !29
  %t492 = load i32, ptr %l278, !tbaa !23
  %t493 = load i64, ptr %l280, !tbaa !24
  %t494 = load i32, ptr %l284, !tbaa !23
  %t495 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t491, i32 %t492, i64 %t493, i32 %t494)
  store i32 %t495, ptr %l285
  br label %bb102
bb102:
  %t496 = load ptr, ptr %l3, !tbaa !29
  %t497 = load i64, ptr %l4, !tbaa !24
  %t499 = add i64 %t497, 1
  %t500 = load ptr, ptr %l268, !tbaa !29
  %t501 = load i32, ptr %l269, !tbaa !23
  %t502 = load i32, ptr %l285, !tbaa !23
  %t505 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyBound(ptr %v0, ptr %v1, ptr %t500, i32 %t501, i32 %t502, ptr %t496, i64 %t499)
  store i64 %t505, ptr %l289
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s22)
  br label %bb104
bb104:
  %t506 = load i64, ptr %l36, !tbaa !24
  %t508 = add i64 %t506, 1
  store i64 %t508, ptr %l36, !tbaa !24
  br label %bb94
bb105:
  %t510 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t510, ptr %l39, !tbaa !27
  store i64 0, ptr %l40, !tbaa !24
  %t512 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t514 = extractvalue { i64, ptr } %t512, 0
  store i64 %t514, ptr %l41, !tbaa !24
  br label %bb106
bb106:
  store %olang.scope zeroinitializer, ptr %s25
  %t516 = load i64, ptr %l40, !tbaa !24
  %t517 = load i64, ptr %l41, !tbaa !24
  %t520 = icmp slt i64 %t516, %t517
  %t522 = xor i1 %t520, true
  br i1 %t522, label %bb107, label %bb108
bb107:
  call void @__olang_scope_close(ptr %s25)
  br label %bb168
bb108:
  br label %bb109
bb109:
  %t524 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t524, ptr %l299, !tbaa !27
  %t525 = load i64, ptr %l40, !tbaa !24
  %t527 = getelementptr { i64, ptr }, ptr %l299, i32 0, i32 1
  %t528 = load ptr, ptr %t527, !tbaa !27
  %t529 = getelementptr ptr, ptr %t528, i64 %t525
  %t530 = load ptr, ptr %t529, !tbaa !39
  store ptr %t530, ptr %l42, !tbaa !29
  %t532 = load ptr, ptr %l42, !tbaa !29
  %t534 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t532)
  store i1 %t534, ptr %l303
  br label %bb110
bb110:
  %t535 = load i1, ptr %l303, !tbaa !21
  br i1 %t535, label %bb111, label %bb112
bb111:
  call void @__olang_scope_close(ptr %s25)
  br label %bb167
bb112:
  br label %bb113
bb113:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t537 = load i32, ptr %l1, !tbaa !23
  %t538 = load ptr, ptr %l42, !tbaa !29
  %t540 = getelementptr %"compiler/ast:Func", ptr %t538, i32 0, i32 2
  %t541 = load i32, ptr %t540, !tbaa !23
  %t545 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t536, i32 %t537, i32 %t541)
  store i64 %t545, ptr %l308
  br label %bb114
bb114:
  %t546 = load i64, ptr %l308, !tbaa !24
  store i64 %t546, ptr %l43, !tbaa !24
  %t547 = load i64, ptr %l43, !tbaa !24
  %t549 = icmp slt i64 %t547, 0
  br i1 %t549, label %bb115, label %bb116
bb115:
  call void @__olang_scope_close(ptr %s25)
  br label %bb167
bb116:
  br label %bb117
bb117:
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t552 = load i64, ptr %l43, !tbaa !24
  %t553 = load i32, ptr %l1, !tbaa !23
  %t557 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %t551, i64 %t552, i32 %t553)
  store i32 %t557, ptr %l314
  br label %bb118
bb118:
  %t558 = load i32, ptr %l314, !tbaa !23
  store i32 %t558, ptr %l44, !tbaa !23
  %t559 = load i32, ptr %l44, !tbaa !23
  %t560 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t563 = icmp eq i32 %t559, %t560
  br i1 %t563, label %bb119, label %bb120
bb119:
  call void @__olang_scope_close(ptr %s25)
  br label %bb167
bb120:
  br label %bb121
bb121:
  %t565 = load ptr, ptr %l0, !tbaa !29
  store ptr %t565, ptr %l318, !tbaa !29
  %t566 = load ptr, ptr %l0, !tbaa !29
  store ptr %t566, ptr %l319, !tbaa !29
  %t567 = load ptr, ptr %l0, !tbaa !29
  %t568 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t569, ptr %v0, ptr %s25, ptr %t567, i32 %t568)
  call void @llvm.memmove.p0.p0.i64(ptr %l322, ptr %t569, i64 160, i1 false)
  br label %bb122
bb122:
  %t572 = call ptr @__olang_scope_alloc_a(ptr %s25, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t572, ptr %l322, i64 160, i1 false)
  %t573 = load ptr, ptr %l42, !tbaa !29
  %t575 = getelementptr %"compiler/ast:Func", ptr %t573, i32 0, i32 3
  %t576 = load ptr, ptr %t575, !tbaa !29
  %t577 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t578 = load ptr, ptr %l319, !tbaa !29
  %t582 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %s25, ptr %v0, ptr %t578, ptr %t572, ptr %t576, i32 %t577, i32 0)
  store i32 %t582, ptr %l327
  br label %bb123
bb123:
  %t583 = load i32, ptr %l10, !tbaa !23
  %t585 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t583)
  store i64 %t585, ptr %l329
  br label %bb124
bb124:
  %t586 = load ptr, ptr %l0, !tbaa !29
  %t588 = getelementptr %"compiler/generic:Program", ptr %t586, i32 0, i32 2
  %t589 = load i32, ptr %l2, !tbaa !23
  %t592 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t588, i32 %t589)
  store i32 %t592, ptr %l333
  br label %bb125
bb125:
  %t593 = load ptr, ptr %l318, !tbaa !29
  %t594 = load i32, ptr %l327, !tbaa !23
  %t595 = load i64, ptr %l329, !tbaa !24
  %t596 = load i32, ptr %l333, !tbaa !23
  %t597 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t593, i32 %t594, i64 %t595, i32 %t596)
  store i32 %t597, ptr %l334
  br label %bb126
bb126:
  %t598 = load i32, ptr %l334, !tbaa !23
  store i32 %t598, ptr %l45, !tbaa !23
  %t599 = load ptr, ptr %l0, !tbaa !29
  %t601 = getelementptr %"compiler/generic:Program", ptr %t599, i32 0, i32 2
  store ptr %t601, ptr %l336, !tbaa !29
  %t602 = load ptr, ptr %l0, !tbaa !29
  %t604 = getelementptr %"compiler/generic:Program", ptr %t602, i32 0, i32 2
  %t605 = load i32, ptr %l44, !tbaa !23
  %t608 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t604, i32 %t605)
  store i32 %t608, ptr %l340
  br label %bb127
bb127:
  %t609 = load ptr, ptr %l336, !tbaa !29
  %t610 = load i32, ptr %l340, !tbaa !23
  %t611 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t609, i32 %t610)
  store { i64, ptr } %t611, ptr %l341
  br label %bb128
bb128:
  %t612 = load { i64, ptr }, ptr %l341, !tbaa !27
  store { i64, ptr } %t612, ptr %l46, !tbaa !27
  %t613 = load ptr, ptr %l0, !tbaa !29
  %t615 = getelementptr %"compiler/generic:Program", ptr %t613, i32 0, i32 2
  store ptr %t615, ptr %l343, !tbaa !29
  %t616 = load ptr, ptr %l0, !tbaa !29
  %t618 = getelementptr %"compiler/generic:Program", ptr %t616, i32 0, i32 2
  %t619 = load i32, ptr %l45, !tbaa !23
  %t622 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t618, i32 %t619)
  store i32 %t622, ptr %l347
  br label %bb129
bb129:
  %t623 = load ptr, ptr %l343, !tbaa !29
  %t624 = load i32, ptr %l347, !tbaa !23
  %t625 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t623, i32 %t624)
  store { i64, ptr } %t625, ptr %l348
  br label %bb130
bb130:
  %t626 = load { i64, ptr }, ptr %l348, !tbaa !27
  store { i64, ptr } %t626, ptr %l47, !tbaa !27
  %t627 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t629 = extractvalue { i64, ptr } %t627, 0
  %t630 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t632 = extractvalue { i64, ptr } %t630, 0
  %t634 = add i64 %t632, 1
  %t637 = icmp ne i64 %t629, %t634
  br i1 %t637, label %bb131, label %bb132
bb131:
  call void @__olang_scope_close(ptr %s25)
  br label %bb167
bb132:
  br label %bb133
bb133:
  store i64 0, ptr %l48, !tbaa !24
  %t639 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t641 = extractvalue { i64, ptr } %t639, 0
  store i64 %t641, ptr %l49, !tbaa !24
  store i64 1, ptr %l50, !tbaa !24
  %t643 = load i64, ptr %l49, !tbaa !24
  %t644 = load i64, ptr %l48, !tbaa !24
  %t647 = icmp sgt i64 %t643, %t644
  br i1 %t647, label %bb134, label %bb135
bb134:
  %t649 = load i64, ptr %l50, !tbaa !24
  %t651 = icmp sgt i64 %t649, 0
  br i1 %t651, label %bb136, label %bb137
bb135:
  store i64 0, ptr %l360, !tbaa !24
  br label %bb139
bb136:
  %t653 = load i64, ptr %l49, !tbaa !24
  %t654 = load i64, ptr %l48, !tbaa !24
  %t657 = sub i64 %t653, %t654
  %t658 = load i64, ptr %l50, !tbaa !24
  %t661 = add i64 %t657, %t658
  %t663 = sub i64 %t661, 1
  %t664 = load i64, ptr %l50, !tbaa !24
  %t667 = sdiv i64 %t663, %t664
  store i64 %t667, ptr %l363, !tbaa !24
  br label %bb138
bb137:
  store i64 0, ptr %l363, !tbaa !24
  br label %bb138
bb138:
  %t669 = load i64, ptr %l363, !tbaa !24
  store i64 %t669, ptr %l360, !tbaa !24
  br label %bb139
bb139:
  %t670 = load i64, ptr %l360, !tbaa !24
  store i64 %t670, ptr %l51, !tbaa !24
  store i64 0, ptr %l52, !tbaa !24
  br label %bb140
bb140:
  %t671 = load i64, ptr %l52, !tbaa !24
  %t672 = load i64, ptr %l51, !tbaa !24
  %t675 = icmp slt i64 %t671, %t672
  %t677 = xor i1 %t675, true
  br i1 %t677, label %bb141, label %bb142
bb141:
  br label %bb149
bb142:
  br label %bb143
bb143:
  %t679 = load i64, ptr %l48, !tbaa !24
  %t680 = load i64, ptr %l52, !tbaa !24
  %t681 = load i64, ptr %l50, !tbaa !24
  %t684 = mul i64 %t680, %t681
  %t687 = add i64 %t679, %t684
  store i64 %t687, ptr %l53, !tbaa !24
  %t689 = load ptr, ptr %l0, !tbaa !29
  %t690 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t690, ptr %l382, !tbaa !27
  %t691 = load i64, ptr %l53, !tbaa !24
  %t693 = getelementptr { i64, ptr }, ptr %l382, i32 0, i32 1
  %t694 = load ptr, ptr %t693, !tbaa !27
  %t695 = getelementptr i32, ptr %t694, i64 %t691
  %t696 = load i32, ptr %t695, !tbaa !33
  %t697 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t697, ptr %l385, !tbaa !27
  %t698 = load i64, ptr %l53, !tbaa !24
  %t700 = add i64 %t698, 1
  %t702 = getelementptr { i64, ptr }, ptr %l385, i32 0, i32 1
  %t703 = load ptr, ptr %t702, !tbaa !27
  %t704 = getelementptr i32, ptr %t703, i64 %t700
  %t705 = load i32, ptr %t704, !tbaa !33
  %t706 = load ptr, ptr %l3, !tbaa !29
  %t711 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %v1, ptr %t689, i32 %t696, i32 %t705, ptr %t706, i1 false, i1 false)
  store i32 %t711, ptr %l390
  %t712 = icmp ne i32 %t711, 0
  br i1 %t712, label %bb145, label %ok.713, !prof !99
ok.713:
  br label %bb144
bb144:
  br label %bb147
bb145:
  br label %bb146
bb146:
  br label %bb147
bb147:
  br label %bb148
bb148:
  %t714 = load i64, ptr %l52, !tbaa !24
  %t716 = add i64 %t714, 1
  store i64 %t716, ptr %l52, !tbaa !24
  br label %bb140
bb149:
  %t718 = load ptr, ptr %l0, !tbaa !29
  store ptr %t718, ptr %l393, !tbaa !29
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t721 = getelementptr %"compiler/generic:Program", ptr %t719, i32 0, i32 2
  %t722 = load i32, ptr %l45, !tbaa !23
  %t725 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t721, i32 %t722)
  store i32 %t725, ptr %l397
  br label %bb150
bb150:
  %t726 = load ptr, ptr %l0, !tbaa !29
  %t728 = getelementptr %"compiler/generic:Program", ptr %t726, i32 0, i32 2
  %t729 = load i32, ptr %l44, !tbaa !23
  %t732 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t728, i32 %t729)
  store i32 %t732, ptr %l401
  br label %bb151
bb151:
  %t733 = load ptr, ptr %l3, !tbaa !29
  %t734 = load ptr, ptr %l393, !tbaa !29
  %t735 = load i32, ptr %l397, !tbaa !23
  %t736 = load i32, ptr %l401, !tbaa !23
  %t738 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %v1, ptr %t734, i32 %t735, i32 %t736, ptr %t733, i1 false, i1 false)
  store i32 %t738, ptr %l403
  %t739 = icmp ne i32 %t738, 0
  br i1 %t739, label %bb153, label %ok.740, !prof !99
ok.740:
  br label %bb152
bb152:
  br label %bb155
bb153:
  br label %bb154
bb154:
  br label %bb155
bb155:
  %t741 = load ptr, ptr %l0, !tbaa !29
  store ptr %t741, ptr %l404, !tbaa !29
  %t742 = load ptr, ptr %l0, !tbaa !29
  %t744 = getelementptr %"compiler/generic:Program", ptr %t742, i32 0, i32 2
  %t745 = load i32, ptr %l45, !tbaa !23
  %t748 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t744, i32 %t745)
  store i32 %t748, ptr %l408
  br label %bb156
bb156:
  %t749 = load ptr, ptr %l3, !tbaa !29
  %t750 = load ptr, ptr %l404, !tbaa !29
  %t751 = load i32, ptr %l408, !tbaa !23
  %t753 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrsHaveVar(ptr %v0, ptr %v1, ptr %t750, i32 %t751, ptr %t749)
  store i1 %t753, ptr %l410
  br label %bb157
bb157:
  %t754 = load i1, ptr %l410, !tbaa !21
  br i1 %t754, label %bb158, label %bb159
bb158:
  %t755 = load ptr, ptr %l0, !tbaa !29
  store ptr %t755, ptr %l411, !tbaa !29
  %t756 = load ptr, ptr %l0, !tbaa !29
  %t758 = getelementptr %"compiler/generic:Program", ptr %t756, i32 0, i32 2
  %t759 = load i32, ptr %l45, !tbaa !23
  %t762 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t758, i32 %t759)
  store i32 %t762, ptr %l415
  br label %bb160
bb159:
  br label %bb166
bb160:
  %t763 = load ptr, ptr %l0, !tbaa !29
  %t765 = getelementptr %"compiler/generic:Program", ptr %t763, i32 0, i32 2
  %t766 = load i32, ptr %l44, !tbaa !23
  %t769 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t765, i32 %t766)
  store i32 %t769, ptr %l419
  br label %bb161
bb161:
  %t770 = load ptr, ptr %l3, !tbaa !29
  %t771 = load ptr, ptr %l411, !tbaa !29
  %t772 = load i32, ptr %l415, !tbaa !23
  %t773 = load i32, ptr %l419, !tbaa !23
  %t775 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyErrs(ptr %v0, ptr %v1, ptr %t771, i32 %t772, i32 %t773, ptr %t770)
  store i32 %t775, ptr %l421
  %t776 = icmp ne i32 %t775, 0
  br i1 %t776, label %bb163, label %ok.777, !prof !99
ok.777:
  br label %bb162
bb162:
  br label %bb165
bb163:
  br label %bb164
bb164:
  br label %bb165
bb165:
  br label %bb166
bb166:
  call void @__olang_scope_close(ptr %s25)
  br label %bb167
bb167:
  %t778 = load i64, ptr %l40, !tbaa !24
  %t780 = add i64 %t778, 1
  store i64 %t780, ptr %l40, !tbaa !24
  br label %bb106
bb168:
  br label %bb174
bb169:
  br i1 true, label %bb170, label %bb171
bb170:
  br label %bb172
bb171:
  br label %bb173
bb172:
  br label %bb174
bb173:
  call void @__olang_check_failed(ptr @olang_loc_29bfa21b0ca1023f_9ac138f9a38bfc3b)
  unreachable
bb174:
  %t782 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t783 = load ptr, ptr %l3, !tbaa !29
  %t786 = call i64 @compiler_2fgeneric_2echangedVals(ptr %s0, ptr %v1, { i64, ptr } %t782, ptr %t783)
  store i64 %t786, ptr %l426
  br label %bb175
bb175:
  call void @__olang_scope_close(ptr %s0)
  %t787 = load i64, ptr %l426, !tbaa !24
  store i64 %t787, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyLists(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l16 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l32 = alloca i64
  %l35 = alloca i64
  %l54 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l62 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t7 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t3, i32 %a1)
  store { i64, ptr } %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t15 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t11, i32 %a2)
  store { i64, ptr } %t15, ptr %l20
  br label %bb2
bb2:
  %t16 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t16, ptr %l6, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t25 = icmp ne i64 %t19, %t22
  br i1 %t25, label %bb3, label %bb4
bb3:
  store i32 65536, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  store i64 0, ptr %l7, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t32 = load i64, ptr %l8, !tbaa !24
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = load i64, ptr %l9, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb11
bb8:
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l9, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l35, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb10
bb10:
  %t58 = load i64, ptr %l35, !tbaa !24
  store i64 %t58, ptr %l32, !tbaa !24
  br label %bb11
bb11:
  %t59 = load i64, ptr %l32, !tbaa !24
  store i64 %t59, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l11, !tbaa !24
  %t61 = load i64, ptr %l10, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb13, label %bb14
bb13:
  br label %bb20
bb14:
  br label %bb15
bb15:
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l11, !tbaa !24
  %t70 = load i64, ptr %l9, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l12, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t79, ptr %l54, !tbaa !27
  %t80 = load i64, ptr %l12, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i32, ptr %t83, i64 %t80
  %t85 = load i32, ptr %t84, !tbaa !33
  %t86 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t86, ptr %l57, !tbaa !27
  %t87 = load i64, ptr %l12, !tbaa !24
  %t89 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr i32, ptr %t90, i64 %t87
  %t92 = load i32, ptr %t91, !tbaa !33
  %t100 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %t78, i32 %t85, i32 %t92, ptr %a3, i1 false, i1 %a4)
  store i32 %t100, ptr %l62
  %t101 = icmp ne i32 %t100, 0
  br i1 %t101, label %bb17, label %ok.102, !prof !99
ok.102:
  br label %bb16
bb16:
  br label %bb18
bb17:
  %t103 = load i32, ptr %l62, !tbaa !23
  %t104 = lshr i32 %t103, 16
  %t105 = and i32 %t103, 65535
  %t106 = icmp eq i32 %t104, 1
  %t107 = select i1 %t106, i32 1, i32 0
  %t108 = icmp eq i32 %t103, 0
  %t109 = shl i32 %t107, 16
  %t110 = or i32 %t109, %t105
  %t111 = select i1 %t108, i32 0, i32 %t110
  store i32 %t111, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t113 = load i64, ptr %l11, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l11, !tbaa !24
  br label %bb12
bb20:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ecaseRoots(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca i64
  %l22 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t3 = getelementptr %"compiler/ast:Match", ptr %a1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t26 = load i64, ptr %l2, !tbaa !24
  store i64 %t26, ptr %l18, !tbaa !24
  %t30 = getelementptr %"compiler/ast:Case", ptr %t24, i32 0, i32 5
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t34 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %a0, ptr %t31)
  store i64 %t34, ptr %l22
  br label %bb5
bb5:
  %t35 = load i64, ptr %l18, !tbaa !24
  %t36 = load i64, ptr %l22, !tbaa !24
  %t37 = or i64 %t35, %t36
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l4, !tbaa !24
  br label %bb1
bb7:
  %t43 = load i64, ptr %l2, !tbaa !24
  store i64 %t43, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fgeneric_2eerrorDeclIn(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l24 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l42 = alloca ptr
  %rv = alloca ptr
  store { i64, ptr } %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  br label %bb33
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l20, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  store ptr %t30, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t31 = load ptr, ptr %l23, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l23, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 11}
  %t37 = icmp eq i64 %t35, 5
  store i1 %t37, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l24, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr { i64, [8 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t41, i32 0, i32 1
  %t43 = load i32, ptr %t42
  store i32 %t43, ptr %l6, !tbaa !23
  br label %bb12
bb11:
  br label %bb16
bb12:
  %t45 = load i32, ptr %l6, !tbaa !23
  %t46 = load i32, ptr %l1, !tbaa !23
  %t49 = icmp eq i32 %t45, %t46
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load ptr, ptr %l5, !tbaa !29
  store ptr %t51, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb31
bb16:
  %t54 = load ptr, ptr %l5, !tbaa !29
  store ptr %t54, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t55 = load ptr, ptr %l34, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb17, label %bb18
bb17:
  %t58 = load ptr, ptr %l34, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 11}
  %t61 = icmp eq i64 %t59, 7
  store i1 %t61, ptr %l35, !tbaa !21
  br label %bb18
bb18:
  %t62 = load i1, ptr %l35, !tbaa !21
  br i1 %t62, label %bb19, label %bb20
bb19:
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t65 = getelementptr { i64, [8 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", ptr }, ptr %t65, i32 0, i32 1
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l7, !tbaa !29
  br label %bb21
bb20:
  br label %bb26
bb21:
  %t69 = load ptr, ptr %l7, !tbaa !29
  %t70 = load i32, ptr %l1, !tbaa !23
  %t73 = call ptr @compiler_2fgeneric_2eerrorDeclInIf(ptr %v0, ptr %v1, ptr %t69, i32 %t70)
  store ptr %t73, ptr %l42
  br label %bb22
bb22:
  %t74 = load ptr, ptr %l42, !tbaa !29
  store ptr %t74, ptr %l8, !tbaa !29
  %t75 = load ptr, ptr %l8, !tbaa !29
  %t77 = icmp eq ptr %t75, null
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb23, label %bb24
bb23:
  %t81 = load ptr, ptr %l8, !tbaa !29
  store ptr %t81, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  br label %bb31
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_e63a4179e5518e65_559deced239d0aa9)
  unreachable
bb31:
  br label %bb32
bb32:
  %t84 = load i64, ptr %l3, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l3, !tbaa !24
  br label %bb4
bb33:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fgeneric_2eerrorDeclInIf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l16 = alloca ptr
  %l32 = alloca ptr
  %l50 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:TopIf", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/ast:TopIf", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb3, label %bb4
bb2:
  br label %bb10
bb3:
  call void @__olang_check_failed(ptr @olang_loc_fe684dd4125d4b4d_99bf6f4db7396e79)
  unreachable
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/ast:TopIf", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t23 = getelementptr %"compiler/ast:TopBranch", ptr %t20, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call ptr @compiler_2fgeneric_2eerrorDeclIn(ptr %v0, ptr %v1, { i64, ptr } %t24, i32 %t25)
  store ptr %t28, ptr %l16
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l16, !tbaa !29
  store ptr %t29, ptr %l2, !tbaa !29
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = icmp eq ptr %t30, null
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load ptr, ptr %l2, !tbaa !29
  store ptr %t36, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/ast:TopIf", ptr %t39, i32 0, i32 2
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/ast:TopIf", ptr %t48, i32 0, i32 2
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  br i1 %t53, label %bb13, label %bb14
bb12:
  br label %bb20
bb13:
  call void @__olang_check_failed(ptr @olang_loc_42759df622c97166_e1be9b347935e452)
  unreachable
bb14:
  br label %bb15
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/ast:TopIf", ptr %t55, i32 0, i32 2
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t59 = load i32, ptr %l1, !tbaa !23
  %t62 = call ptr @compiler_2fgeneric_2eerrorDeclInIf(ptr %v0, ptr %v1, ptr %t58, i32 %t59)
  store ptr %t62, ptr %l32
  br label %bb16
bb16:
  %t63 = load ptr, ptr %l32, !tbaa !29
  store ptr %t63, ptr %l3, !tbaa !29
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t66 = icmp eq ptr %t64, null
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t70 = load ptr, ptr %l3, !tbaa !29
  store ptr %t70, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/ast:TopIf", ptr %t73, i32 0, i32 3
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = icmp eq ptr %t76, null
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb21, label %bb22
bb21:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/ast:TopIf", ptr %t82, i32 0, i32 3
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = icmp eq ptr %t85, null
  br i1 %t87, label %bb23, label %bb24
bb22:
  br label %bb27
bb23:
  call void @__olang_check_failed(ptr @olang_loc_cc60064df4ba0b57_d35c100e8c6c7d93)
  unreachable
bb24:
  br label %bb25
bb25:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/ast:TopIf", ptr %t89, i32 0, i32 3
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t95 = getelementptr %"compiler/ast:TopBranch", ptr %t92, i32 0, i32 1
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  %t97 = load i32, ptr %l1, !tbaa !23
  %t100 = call ptr @compiler_2fgeneric_2eerrorDeclIn(ptr %v0, ptr %v1, { i64, ptr } %t96, i32 %t97)
  store ptr %t100, ptr %l50
  br label %bb26
bb26:
  %t101 = load ptr, ptr %l50, !tbaa !29
  store ptr %t101, ptr %rv
  br label %ret
bb27:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fgeneric_2ekeyPrim(i32 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t1 = shl i64 3, 40
  %t4 = sext i32 %a0 to i64
  %t7 = or i64 %t1, %t4
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/generic:AnyTable" @compiler_2fgeneric_3aAnyTable_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca %"compiler/source:Span"
  %l16 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/generic:AnyTable"
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a0, ptr %l5, !tbaa !23
  store i32 %a1, ptr %l6, !tbaa !23
  store i32 %a2, ptr %l7, !tbaa !23
  store i64 %a3, ptr %l8, !tbaa !24
  store %"compiler/source:Span" %a4, ptr %l9
  %t11 = ptrtoint ptr %v0 to i64
  store i64 %t11, ptr %l16, !tbaa !24
  %t12 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aAnyTable_2e5
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = call ptr @__olang_region_make(ptr %v0)
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l16, !tbaa !24
  br label %bb2
bb2:
  %t16 = load i64, ptr %l16
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t17, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l18
  br label %bb3
bb3:
  %t19 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aAnyTable_2e5
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i64, ptr %l16
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = call ptr @__olang_region_or(ptr %t25, ptr null)
  %t27 = icmp ne ptr %t26, null
  %t28 = select i1 %t27, ptr %t26, ptr null
  %t29 = icmp eq ptr %t28, %t22
  call void @__olang_region_settle(ptr %t22, i1 %t29)
  br label %bb5
bb5:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  %t31 = load i32, ptr %l5, !tbaa !23
  %t32 = insertvalue %"compiler/generic:AnyTable" undef, i32 %t31, 0
  %t33 = load i32, ptr %l6, !tbaa !23
  %t34 = insertvalue %"compiler/generic:AnyTable" %t32, i32 %t33, 1
  %t35 = load i32, ptr %l7, !tbaa !23
  %t36 = insertvalue %"compiler/generic:AnyTable" %t34, i32 %t35, 2
  %t37 = load i64, ptr %l8, !tbaa !24
  %t38 = insertvalue %"compiler/generic:AnyTable" %t36, i64 %t37, 3
  %t39 = load %"compiler/source:Span", ptr %l9
  %t40 = insertvalue %"compiler/generic:AnyTable" %t38, %"compiler/source:Span" %t39, 4
  %t42 = insertvalue %"compiler/generic:AnyTable" %t40, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, 5
  store %"compiler/generic:AnyTable" %t42, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:AnyTable", ptr %rv
  ret %"compiler/generic:AnyTable" %rr
}

define dso_local %"compiler/generic:Desc" @compiler_2fgeneric_3aDesc_2ector(ptr %v0, i64 %a0, i32 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %rv = alloca %"compiler/generic:Desc"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/generic:Desc" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/generic:Desc" %t10, i32 %a1, 1
  %t14 = insertvalue %"compiler/generic:Desc" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/generic:Desc" %t14, i64 %a3, 3
  store %"compiler/generic:Desc" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Desc", ptr %rv
  ret %"compiler/generic:Desc" %rr
}

define dso_local %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i1 %a3, i1 %a4, i1 %a5) #0 {
entry:
  %rv = alloca %"compiler/generic:Unmet"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/generic:Unmet" undef, i64 %a0, 0
  %t16 = insertvalue %"compiler/generic:Unmet" %t14, i32 %a1, 1
  %t18 = insertvalue %"compiler/generic:Unmet" %t16, i32 %a2, 2
  %t20 = insertvalue %"compiler/generic:Unmet" %t18, i1 %a3, 3
  %t22 = insertvalue %"compiler/generic:Unmet" %t20, i1 %a4, 4
  %t24 = insertvalue %"compiler/generic:Unmet" %t22, i1 %a5, 5
  store %"compiler/generic:Unmet" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Unmet", ptr %rv
  ret %"compiler/generic:Unmet" %rr
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
define internal { i32, ptr } @olang_lambda_0(ptr %env, ptr %v0) #0 {
entry:
  %p = call ptr @llvm.coro.promise(ptr %env, i32 8, i1 false)
  %pr = getelementptr { { i32, ptr }, i32, ptr, ptr }, ptr %p, i32 0, i32 1
  %running = load i32, ptr %pr
  switch i32 %running, label %again [ i32 0, label %go i32 2, label %drop ]
again:
  call void @__olang_check_failed(ptr @.c30)
  unreachable
drop:
  call void @llvm.coro.destroy(ptr %env)
  br label %over
go:
  %done = call i1 @llvm.coro.done(ptr %env)
  br i1 %done, label %over, label %run
run:
  %pv0 = getelementptr { { i32, ptr }, i32, ptr, ptr }, ptr %p, i32 0, i32 3
  store ptr %v0, ptr %pv0
  store i32 1, ptr %pr
  call void @llvm.coro.resume(ptr %env)
  store i32 0, ptr %pr
  %r = load { i32, ptr }, ptr %p
  ret { i32, ptr } %r
over:
  %x = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  ret { i32, ptr } %x
}

define internal { i32, ptr } @olang_lambda_0.wnext(ptr %env, ptr %v0) alwaysinline #0 {
entry:
  %p = call ptr @llvm.coro.promise(ptr %env, i32 8, i1 false)
  %pr = getelementptr { { i32, ptr }, i32, ptr, ptr }, ptr %p, i32 0, i32 1
  %running = load i32, ptr %pr
  %stop = icmp eq i32 %running, 2
  br i1 %stop, label %drop, label %run
drop:
  call void @llvm.coro.destroy(ptr %env)
  br label %over
run:
  %pv0 = getelementptr { { i32, ptr }, i32, ptr, ptr }, ptr %p, i32 0, i32 3
  store ptr %v0, ptr %pv0
  call void @llvm.coro.resume(ptr %env)
  %r = load { i32, ptr }, ptr %p
  ret { i32, ptr } %r
over:
  %x = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  ret { i32, ptr } %x
}

define internal ptr @olang_lambda_0.coro(ptr %env, ptr %home) presplitcoroutine alwaysinline #0 {
entry:
  %prom = alloca { { i32, ptr }, i32, ptr, ptr }, align 8
  store { { i32, ptr }, i32, ptr, ptr } zeroinitializer, ptr %prom
  %rv = getelementptr { { i32, ptr }, i32, ptr, ptr }, ptr %prom, i32 0, i32 0
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca i1
  %cid = call token @llvm.coro.id(i32 8, ptr %prom, ptr null, ptr null)
  %cneed = call i1 @llvm.coro.alloc(token %cid)
  br i1 %cneed, label %coro.alloc, label %coro.begin
coro.alloc:
  %csz = call i64 @llvm.coro.size.i64()
  %cal = call i64 @llvm.coro.align.i64()
  %cmem0 = call ptr @__olang_scope_alloc_a(ptr %home, i64 %csz, i64 %cal)
  br label %coro.begin
coro.begin:
  %cmem = phi ptr [ null, %entry ], [ %cmem0, %coro.alloc ]
  %hdl = call ptr @llvm.coro.begin(token %cid, ptr %cmem)
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l0
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  %is = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %is, label %gen.end [ i8 0, label %gen.go i8 1, label %gen.fresh ]
gen.fresh:
  br label %gen.free
gen.go:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/ast:StructBody", ptr %t1, i32 0, i32 2
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp slt i64 %t12, %t13
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb2, label %bb3
bb2:
  br label %bb22
bb3:
  br label %bb4
bb4:
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t20, ptr %l16, !tbaa !27
  %t21 = load i64, ptr %l3, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr ptr, ptr %t24, i64 %t21
  %t26 = load ptr, ptr %t25, !tbaa !39
  store ptr %t26, ptr %l5, !tbaa !29
  %t28 = load ptr, ptr %l5, !tbaa !29
  store ptr %t28, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t29 = load ptr, ptr %l19, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 22}
  %t35 = icmp eq i64 %t33, 1
  store i1 %t35, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l20, !tbaa !21
  br i1 %t36, label %bb7, label %bb8
bb7:
  %t37 = load ptr, ptr %l5, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", ptr }, ptr %t39, i32 0, i32 1
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l6, !tbaa !29
  br label %bb9
bb8:
  br label %bb15
bb9:
  %t43 = load ptr, ptr %l6, !tbaa !29
  %t45 = getelementptr %"compiler/ast:VarDecl", ptr %t43, i32 0, i32 5
  %t46 = load i1, ptr %t45, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l6, !tbaa !29
  %t50 = insertvalue { i32, ptr } zeroinitializer, ptr %t48, 1
  store { i32, ptr } %t50, ptr %rv
  %t51 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %t51, label %gen.end [ i8 0, label %gen.res.52 i8 1, label %gen.drop.53 ]
gen.res.52:
  br label %bb12
gen.drop.53:
  br label %bb13
bb11:
  br label %bb14
bb12:
  br label %bb14
bb13:
  br label %gen.free
bb14:
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_4e9784bcac016c39_bf9d00668e70ebe5)
  unreachable
bb20:
  br label %bb21
bb21:
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l3, !tbaa !24
  br label %bb1
bb22:
  %t59 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t59, ptr %rv
  br label %ret
ret:
  %fs = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %fs, label %gen.end [ i8 0, label %gen.dead i8 1, label %gen.free ]
gen.dead:
  unreachable
gen.free:
  %fm = call ptr @llvm.coro.free(token %cid, ptr %hdl)
  br label %gen.end
gen.end:
  %ce = call i1 @llvm.coro.end(ptr %hdl, i1 false, token none)
  ret ptr %hdl
}

define internal void @olang_lambda_0.drop(ptr %h, ptr %scope) #0 {
entry:
  %p = call ptr @llvm.coro.promise(ptr %h, i32 8, i1 false)
  %pr = getelementptr { { i32, ptr }, i32, ptr, ptr }, ptr %p, i32 0, i32 1
  %r = load i32, ptr %pr
  %idle = icmp eq i32 %r, 0
  br i1 %idle, label %d, label %x
d:
  call void @llvm.coro.destroy(ptr %h)
  br label %x
x:
  ret void
}

declare void @__olang_scope_register_dtor(ptr, ptr, ptr)
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Type" }>, align 8
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Base" }>, align 8
@.d3 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Element" }>, align 8
@.d4 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Target" }>, align 8
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d8 = private constant <{ i64, [1 x i64] }> <{ i64 0, [1 x i64] [i64 0] }>, align 8
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

@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"[0]" }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3cBool_3e_3e_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d17 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d19 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"std/prelude/text" }>, align 8
@.d20 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Char" }>, align 8
@.d21 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bits" }>, align 8
@.d25 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d26 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d27 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d28 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d29 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@olang_2esole_2ecompiler_2fgeneric_3aAnyTable_2e5 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@__olang_self = external thread_local(initialexec) global ptr
declare ptr @llvm.coro.promise(ptr, i32, i1)
@.c30 = private unnamed_addr constant [87 x i8] c"compiler/generic.olang:2491: a generator asked for its next value inside its own walk\0A\00"
declare void @llvm.coro.destroy(ptr)
declare i1 @llvm.coro.done(ptr)
declare void @llvm.coro.resume(ptr)
declare token @llvm.coro.id(i32, ptr, ptr, ptr)
declare i1 @llvm.coro.alloc(token)
declare i64 @llvm.coro.size.i64()
declare i64 @llvm.coro.align.i64()
declare ptr @llvm.coro.begin(token, ptr)
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
declare i8 @llvm.coro.suspend(token, i1)
declare ptr @llvm.coro.free(token, ptr)
declare i1 @llvm.coro.end(ptr, i1, token)
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
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @std_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aVarDecl_3e_2ector(ptr %v0, ptr %v1, ptr %a0c, ptr %a0e)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fnames_2eWrittenMut(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H5ded0725d411df67b2648301e639bd4e(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_c2f0255997df361c_a6c9f390e9e9df68 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H9e3d6110ebf70523261e6bda2644191a(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnySlot_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyCovers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i32 %a4)
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWithReceiver(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/generic:AnySlot" @compiler_2fgeneric_3aAnySlot_2ector(ptr %v0, i32 %a0, i32 %a1, i64 %a2, i64 %a3, i1 %a4, i32 %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnySlot_3e_2ePush_H53ed042998733b8f648bef68c9e795c2(ptr %v0, ptr %a0, %"compiler/generic:AnySlot" %a1)
@olang_loc_8bb21cabdbc81f72_d9374099c3cf9016 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultAt(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnySlot_3e_2eLen__H711cec3afad496782566ddd729023773(ptr %v0, ptr %a0)
@olang_loc_98166f45573479aa_46aa63c900b34a36 = external constant [0 x i8]
declare %"compiler/generic:AnySlot" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnySlot_3e_2eAt_3ccompiler_2fgeneric_3aAnySlot_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H5c1f2db077436d08712784f933dc3852(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare i1 @compiler_2fgeneric_2eisErrsArg(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eEntriesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrorSet(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNameErrVal(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNotErrorSet(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamedType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAnErrorType(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_1dc2a8cf17e248a5_de4d607536776161 = external constant [0 x i8]
declare %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordTooFar(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchErrorWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_f1cf7ccb88a76b40_782fc340d5d627c = external constant [0 x i8]
@olang_loc_7655d9c19e1e4e63_9fb1b21e00b7825f = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorTypeHint(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownErrorType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eensureModules(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enumberOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@G_2ecompiler_2fgeneric_2eFolded = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fgeneric_2eGenPerTurn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H78bce58497ad959bdf5762dbe74df8e1(ptr %v0, ptr %a0, i32 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hfa58d934e2b7178f7b33766972648144(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_68cd11c72d3db33f_352ec9aa512a8333 = external constant [0 x i8]
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvExact(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvOf(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypesOverlap(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__Hd32df9536ace7093dedc2ceceb7810b4(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisStructT(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_bea3dfbd3e43d709_f7b1d9dae3096955 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_8ed0ba4cde2484d3_77197335ab78eca7 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarArg(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__Hb311157f9ff5cfde66cc01a7f8069ed8(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEnumBody(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
@olang_loc_6d5aa29fe12cc9ea_ea4bfe36e43ffb6e = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i1 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_d75eebf2560505f1_f536daa32c643715 = external constant [0 x i8]
declare void @compiler_2fgeneric_2eerrIntroductions(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_31cb9a6f561579fc_4433aac0bd188f00 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enestedRows(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_aa6ac5355bc4a96b_e63f80aa6f15ab9f = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthLevels(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i1 %a2, i32 %a3, i64 %a4, ptr %a5, ptr %a6)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/generic:varRow" @compiler_2fgeneric_3avarRow_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i32 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eSetAt_H989a0ed1a318d7d0cbb6cc41385b33d2(ptr %v0, ptr %a0, i64 %a1, %"compiler/generic:varRow" %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2econstraint(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_51637bfcdf5c43e6_f25177a3c4098752 = external constant [0 x i8]
@olang_loc_d562bdacef01dcd_aa524bbd020d1179 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eviewNext(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleFn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eOwnScope = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_225d07cb5d9263f0_78eb4cfe04925884 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eflagBans(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i1 %a4)
declare %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2egeneratorOf(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @compiler_2fgeneric_2egenElemOf(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eviewGeneratorOf(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_5f28aa7941f8b69d_8b8586bebbd1d991 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewithLengths(ptr %v0, ptr %a0, i32 %a1, i1 %a2, i64 %a3, i64 %a4)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elevelCount(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
@olang_loc_52c8f96a75cfc7a4_95d33db140d5de70 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamNames(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstExpr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/generic:varRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eAt_3ccompiler_2fgeneric_3avarRow_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFn(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i1 %a3)
@olang_loc_4e2b009ec27e80b_3f74010bfbf746f = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFnsIf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4)
@olang_loc_8b73386467b8fdb3_4742e8850cea3c57 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eLen_3ccompiler_2fgeneric_3avarRow_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2ePush_3ccompiler_2fgeneric_3avarRow_3e(ptr %v0, ptr %a0, %"compiler/generic:varRow" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hcad520af686b186b53ef29921f8ab48b(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, i32 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eheld(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_5e7d85fe5a4092b0_8f62b4b719433814 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ekeyTrait(i32 %a0)
@olang_loc_6254d719be644cb8_ecba73ecf161ba54 = external constant [0 x i8]
@G_2ecompiler_2fgeneric_2eMaxDepth = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\30\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDepth(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunbounded(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpandList(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_8c836894b35cad82_296f4aeeea10268e = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereprReady(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_cffe0474e3afc296_35ccea70755633e2 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2eHas_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2eGet_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_9b38dcb85fe2b78c_3b1a6cace8e1aa00 = external constant [0 x i8]
@olang_loc_b6a09900eca87506_fcd5eabfc1944c82 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2ePut_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthsDecided(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etextType(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_fc435fbf179ab4a3_d5536eec81a24b6f = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMatches(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3, i64 %a4, i1 %a5)
declare ptr @compiler_2fgeneric_2elisted(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ekeyDecl(i32 %a0)
@G_2ecompiler_2fgeneric_2eArrayKey = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\02\00\00" }>, align 8
@olang_loc_769954e80c04bef7_8801cb066681a71b = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emayHold(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2emadeByCall(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasHash(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b3aa93c548ec796e_ac2c4500982ff6c2 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2echangedVals(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
@olang_loc_d067a2352cc578e3_8c11ed4f2bfcee77 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrsHaveVar(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyErrs(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
@olang_loc_29bfa21b0ca1023f_9ac138f9a38bfc3b = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_e63a4179e5518e65_559deced239d0aa9 = external constant [0 x i8]
@olang_loc_fe684dd4125d4b4d_99bf6f4db7396e79 = external constant [0 x i8]
@olang_loc_42759df622c97166_e1be9b347935e452 = external constant [0 x i8]
@olang_loc_cc60064df4ba0b57_d35c100e8c6c7d93 = external constant [0 x i8]
@olang_loc_4e9784bcac016c39_bf9d00668e70ebe5 = external constant [0 x i8]

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
