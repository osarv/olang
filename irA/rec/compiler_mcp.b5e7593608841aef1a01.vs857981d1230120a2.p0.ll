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
%"compiler/session:Reader" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/diag:Item" = type { i1, { i64, ptr }, i64, i64, i64, i64, { i64, ptr } }
%"compiler/session:Positions" = type { { i64, ptr }, i1, { i64, ptr } }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/doc:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/session:Analysis" = type { ptr, ptr, ptr, ptr }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
@G_2ecompiler_2fmcp_2eTools = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\BF\07\00\00\00\00\00\00", ptr @G_2ecompiler_2fmcp_2eTools.k1 }>, align 8
@G_2ecompiler_2fmcp_2eTools.k1 = internal constant <{ [1983 x i8] }> <{ [1983 x i8] c"\5B\7B\22\6E\61\6D\65\22\3A\22\63\68\65\63\6B\22\2C\22\64\65\73\63\72\69\70\74\69\6F\6E\22\3A\22\43\68\65\63\6B\20\61\6E\20\6F\6C\61\6E\67\20\66\69\6C\65\20\61\73\20\74\68\65\20\63\6F\6D\70\69\6C\65\72\20\64\6F\65\73\20\28\69\74\73\20\70\72\6F\67\72\61\6D\20\6C\6F\61\64\65\64\2C\20\74\79\70\65\2D\63\68\65\63\6B\65\64\2C\20\69\74\73\20\63\6F\6D\70\69\6C\65\2D\74\69\6D\65\20\76\61\6C\75\65\73\20\61\6E\64\20\61\73\73\65\72\74\73\20\64\65\63\69\64\65\64\2C\20\68\65\6C\64\20\74\6F\20\74\68\65\20\73\63\6F\70\65\20\72\75\6C\65\73\29\3A\20\65\76\65\72\79\20\64\69\61\67\6E\6F\73\74\69\63\2C\20\65\61\63\68\20\69\74\73\20\66\69\6C\65\2C\20\6C\69\6E\65\2C\20\63\6F\6C\75\6D\6E\2C\20\72\75\6C\65\20\61\6E\64\20\6D\65\73\73\61\67\65\2C\20\61\6E\64\20\74\68\65\20\63\6F\6D\70\69\6C\65\72\27\73\20\6F\77\6E\20\6F\6E\65\2D\72\6F\77\20\72\65\6E\64\65\72\69\6E\67\2E\20\50\61\73\73\20\74\65\78\74\20\74\6F\20\63\68\65\63\6B\20\75\6E\73\61\76\65\64\20\63\6F\64\65\20\69\6E\20\70\6C\61\63\65\20\6F\66\20\74\68\65\20\66\69\6C\65\27\73\20\63\6F\6E\74\65\6E\74\73\2E\22\2C\22\69\6E\70\75\74\53\63\68\65\6D\61\22\3A\7B\22\74\79\70\65\22\3A\22\6F\62\6A\65\63\74\22\2C\22\70\72\6F\70\65\72\74\69\65\73\22\3A\7B\22\66\69\6C\65\22\3A\7B\22\74\79\70\65\22\3A\22\73\74\72\69\6E\67\22\2C\22\64\65\73\63\72\69\70\74\69\6F\6E\22\3A\22\70\61\74\68\20\6F\66\20\74\68\65\20\2E\6F\6C\61\6E\67\20\66\69\6C\65\2C\20\74\68\65\20\72\6F\6F\74\20\6F\66\20\74\68\65\20\70\72\6F\67\72\61\6D\22\7D\2C\22\74\65\78\74\22\3A\7B\22\74\79\70\65\22\3A\22\73\74\72\69\6E\67\22\2C\22\64\65\73\63\72\69\70\74\69\6F\6E\22\3A\22\74\68\65\20\66\69\6C\65\27\73\20\74\65\78\74\2C\20\69\66\20\6E\6F\74\20\61\73\20\73\61\76\65\64\22\7D\7D\2C\22\72\65\71\75\69\72\65\64\22\3A\5B\22\66\69\6C\65\22\5D\7D\7D\2C\7B\22\6E\61\6D\65\22\3A\22\65\78\70\6C\61\69\6E\22\2C\22\64\65\73\63\72\69\70\74\69\6F\6E\22\3A\22\41\20\74\6F\70\2D\6C\65\76\65\6C\20\69\74\65\6D\20\6F\66\20\61\6E\20\6F\6C\61\6E\67\20\66\69\6C\65\20\61\73\20\74\68\65\20\63\6F\6D\70\69\6C\65\72\20\73\65\65\73\20\69\74\3A\20\61\20\66\75\6E\63\74\69\6F\6E\27\73\20\77\68\6F\6C\65\20\73\69\67\6E\61\74\75\72\65\20\77\69\74\68\20\69\74\73\20\69\6E\66\65\72\72\65\64\20\65\72\72\6F\72\20\73\65\74\20\61\6E\64\20\73\63\6F\70\65\20\6F\62\6C\69\67\61\74\69\6F\6E\73\2C\20\61\20\74\79\70\65\27\73\20\63\6F\6E\73\74\72\75\63\74\6F\72\2C\20\66\69\65\6C\64\73\2C\20\6D\65\74\68\6F\64\73\20\61\6E\64\20\74\72\61\69\74\73\2C\20\61\20\67\6C\6F\62\61\6C\27\73\20\74\79\70\65\20\61\6E\64\20\76\61\6C\75\65\20\2D\20\6F\72\2C\20\67\69\76\65\6E\20\61\20\72\75\6C\65\20\73\75\63\68\20\61\73\20\54\36\62\20\61\6E\64\20\6E\6F\20\66\69\6C\65\2C\20\74\68\61\74\20\72\75\6C\65\20\6F\66\20\74\68\65\20\73\70\65\63\69\66\69\63\61\74\69\6F\6E\2E\22\2C\22\69\6E\70\75\74\53\63\68\65\6D\61\22\3A\7B\22\74\79\70\65\22\3A\22\6F\62\6A\65\63\74\22\2C\22\70\72\6F\70\65\72\74\69\65\73\22\3A\7B\22\66\69\6C\65\22\3A\7B\22\74\79\70\65\22\3A\22\73\74\72\69\6E\67\22\7D\2C\22\6E\61\6D\65\22\3A\7B\22\74\79\70\65\22\3A\22\73\74\72\69\6E\67\22\2C\22\64\65\73\63\72\69\70\74\69\6F\6E\22\3A\22\61\6E\20\69\74\65\6D\2C\20\6F\72\20\54\79\70\65\2E\4D\65\74\68\6F\64\3B\20\6F\72\20\61\20\72\75\6C\65\20\6F\66\20\74\68\65\20\73\70\65\63\69\66\69\63\61\74\69\6F\6E\20\77\68\65\6E\20\66\69\6C\65\20\69\73\20\6C\65\66\74\20\6F\75\74\22\7D\7D\2C\22\72\65\71\75\69\72\65\64\22\3A\5B\22\6E\61\6D\65\22\5D\7D\7D\2C\7B\22\6E\61\6D\65\22\3A\22\64\6F\63\22\2C\22\64\65\73\63\72\69\70\74\69\6F\6E\22\3A\22\54\68\65\20\64\6F\63\75\6D\65\6E\74\61\74\69\6F\6E\20\6F\66\20\61\6E\20\6F\6C\61\6E\67\20\6D\6F\64\75\6C\65\20\28\69\74\73\20\64\6F\63\20\63\6F\6D\6D\65\6E\74\73\20\61\6E\64\20\74\68\65\20\73\69\67\6E\61\74\75\72\65\73\20\6F\66\20\69\74\73\20\65\78\70\6F\72\74\65\64\20\69\74\65\6D\73\29\2C\20\6F\72\20\6F\66\20\6F\6E\65\20\69\74\65\6D\20\6F\66\20\69\74\2E\22\2C\22\69\6E\70\75\74\53\63\68\65\6D\61\22\3A\7B\22\74\79\70\65\22\3A\22\6F\62\6A\65\63\74\22\2C\22\70\72\6F\70\65\72\74\69\65\73\22\3A\7B\22\66\69\6C\65\22\3A\7B\22\74\79\70\65\22\3A\22\73\74\72\69\6E\67\22\2C\22\64\65\73\63\72\69\70\74\69\6F\6E\22\3A\22\61\20\2E\6F\6C\61\6E\67\20\66\69\6C\65\2C\20\6F\72\20\61\20\73\74\64\20\6D\6F\64\75\6C\65\20\61\73\20\73\74\64\2F\6A\73\6F\6E\22\7D\2C\22\6E\61\6D\65\22\3A\7B\22\74\79\70\65\22\3A\22\73\74\72\69\6E\67\22\7D\7D\2C\22\72\65\71\75\69\72\65\64\22\3A\5B\22\66\69\6C\65\22\5D\7D\7D\2C\7B\22\6E\61\6D\65\22\3A\22\66\6F\72\6D\61\74\22\2C\22\64\65\73\63\72\69\70\74\69\6F\6E\22\3A\22\41\6E\20\6F\6C\61\6E\67\20\66\69\6C\65\20\69\6E\20\74\68\65\20\6C\61\6E\67\75\61\67\65\27\73\20\6F\6E\65\20\6C\61\79\6F\75\74\2C\20\61\73\20\6F\6C\61\6E\67\20\66\6F\72\6D\61\74\20\77\72\69\74\65\73\20\69\74\20\2D\20\72\65\74\75\72\6E\65\64\2C\20\74\68\65\20\66\69\6C\65\20\6C\65\66\74\20\75\6E\63\68\61\6E\67\65\64\2E\22\2C\22\69\6E\70\75\74\53\63\68\65\6D\61\22\3A\7B\22\74\79\70\65\22\3A\22\6F\62\6A\65\63\74\22\2C\22\70\72\6F\70\65\72\74\69\65\73\22\3A\7B\22\66\69\6C\65\22\3A\7B\22\74\79\70\65\22\3A\22\73\74\72\69\6E\67\22\7D\2C\22\74\65\78\74\22\3A\7B\22\74\79\70\65\22\3A\22\73\74\72\69\6E\67\22\2C\22\64\65\73\63\72\69\70\74\69\6F\6E\22\3A\22\74\68\65\20\74\65\78\74\20\74\6F\20\66\6F\72\6D\61\74\2C\20\69\66\20\6E\6F\74\20\74\68\65\20\66\69\6C\65\27\73\22\7D\7D\2C\22\72\65\71\75\69\72\65\64\22\3A\5B\22\66\69\6C\65\22\5D\7D\7D\2C\7B\22\6E\61\6D\65\22\3A\22\74\65\73\74\22\2C\22\64\65\73\63\72\69\70\74\69\6F\6E\22\3A\22\52\75\6E\20\61\6E\20\6F\6C\61\6E\67\20\66\69\6C\65\27\73\20\74\65\73\74\20\62\6C\6F\63\6B\73\2C\20\61\73\20\6F\6C\61\6E\67\20\74\65\73\74\20\64\6F\65\73\3A\20\65\61\63\68\20\74\65\73\74\27\73\20\6F\75\74\63\6F\6D\65\20\61\6E\64\20\77\68\61\74\20\74\68\65\20\72\75\6E\20\70\72\69\6E\74\65\64\2E\22\2C\22\69\6E\70\75\74\53\63\68\65\6D\61\22\3A\7B\22\74\79\70\65\22\3A\22\6F\62\6A\65\63\74\22\2C\22\70\72\6F\70\65\72\74\69\65\73\22\3A\7B\22\66\69\6C\65\22\3A\7B\22\74\79\70\65\22\3A\22\73\74\72\69\6E\67\22\7D\7D\2C\22\72\65\71\75\69\72\65\64\22\3A\5B\22\66\69\6C\65\22\5D\7D\7D\5D" }>, align 64
define dso_local i32 @compiler_2fmcp_2eServe(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/session:Reader"
  %l7 = alloca i1
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l14 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fsession_2eIgnoreBrokenPipes()
  br label %bb1
bb1:
  %t1 = call %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %s0, i32 0)
  store %"compiler/session:Reader" %t1, ptr %l4
  br label %bb2
bb2:
  %t2 = load %"compiler/session:Reader", ptr %l4
  %t3 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 48, i64 8)
  store %"compiler/session:Reader" %t2, ptr %t3
  store ptr %t3, ptr %l2, !tbaa !29
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aReader_2eFill(ptr %s0, ptr %t5)
  store i1 %t7, ptr %l7
  br label %bb4
bb4:
  %t8 = load i1, ptr %l7, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb5, label %bb6
bb5:
  br label %bb22
bb6:
  br label %bb7
bb7:
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = call { i32, { i64, ptr } } @compiler_2fsession_2ecompiler_2fsession_3aReader_2eNextLine(ptr %s0, ptr %s2, ptr %t11)
  %t14 = extractvalue { i32, { i64, ptr } } %t13, 1
  %t15 = extractvalue { i32, { i64, ptr } } %t13, 0
  store i32 %t15, ptr %l12
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb10, label %ok.17, !prof !99
ok.17:
  store { i64, ptr } %t14, ptr %l11
  br label %bb9
bb9:
  %t18 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t18, ptr %l9, !tbaa !27
  br label %bb12
bb10:
  %t19 = load i32, ptr %l12, !tbaa !23
  %t20 = ashr i32 %t19, 16
  %t22 = icmp eq i32 %t20, 1
  store i1 %t22, ptr %l14, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb12:
  %t23 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t23, ptr %l3, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t26 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s2, ptr %s2, { i64, ptr } %t24)
  store { i64, ptr } %t26, ptr %l16
  br label %bb13
bb13:
  %t27 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t28, ptr %l17
  br label %bb14
bb14:
  %t29 = load i1, ptr %l17, !tbaa !21
  br i1 %t29, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t30 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fmcp_2ehandle(ptr %s2, ptr %v0, ptr %v1, { i64, ptr } %t30, ptr %a0, { i64, ptr } %a1)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  br label %bb8
bb20:
  br label %bb21
bb21:
  br label %bb3
bb22:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fmcp_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca [3 x { i64, ptr }]
  %l6 = alloca %"std/os:Output"
  %l8 = alloca [3 x { i64, ptr }]
  %l9 = alloca %"std/os:Output"
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l13 = alloca { { i64, ptr }, i32 }
  %lp14 = alloca ptr
  %l15 = alloca i32
  %l17 = alloca { i64, ptr }
  %l19 = alloca i1
  %l21 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca %"std/os:Output"
  %l29 = alloca { i64, ptr }
  %l30 = alloca %"std/os:Output"
  %l31 = alloca i32
  %l33 = alloca i1
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca i1
  %l47 = alloca i1
  %l49 = alloca i1
  %l51 = alloca { i64, ptr }
  %l52 = alloca %"std/os:Output"
  %l58 = alloca { i64, ptr }
  %l59 = alloca %"std/os:Output"
  %l60 = alloca i32
  %l62 = alloca i1
  %l65 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l74 = alloca i1
  %l76 = alloca i1
  %l78 = alloca i1
  %l80 = alloca i1
  %l82 = alloca i1
  %l84 = alloca i1
  %l86 = alloca i1
  %l91 = alloca { i64, ptr }
  %l93 = alloca i1
  %l97 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l100 = alloca { i64, ptr }
  %l102 = alloca ptr
  %l103 = alloca i32
  %l105 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca i1
  %l116 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l126 = alloca { { i64, ptr }, i32 }
  %l127 = alloca { i64, ptr }
  %l128 = alloca i64
  %l129 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t249 = alloca { i64, [2 x i64] }, align 8
  %t282 = alloca { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
  store { i64, ptr } %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2fmcp_2estr(ptr %v1, ptr %v1, ptr %v1, ptr %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store { i64, ptr } %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t4, ptr %l4, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t7, ptr %l19
  br label %bb2
bb2:
  %t8 = load i1, ptr %l19, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s1, { i64, ptr } %t9, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t11, ptr %l21
  br label %bb5
bb4:
  br label %bb20
bb5:
  %t12 = load i1, ptr %l21, !tbaa !21
  br i1 %t12, label %bb6, label %bb7
bb6:
  %t13 = call { i64, ptr } @compiler_2fmcp_2etoolError(ptr %v4, ptr %v4, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store { i64, ptr } %t13, ptr %l22
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t14 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb9:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t18 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } %t15, 0
  %t19 = insertvalue [3 x { i64, ptr }] %t18, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t21 = insertvalue [3 x { i64, ptr }] %t19, { i64, ptr } %t16, 2
  store [3 x { i64, ptr }] %t21, ptr %l5
  %t24 = insertvalue { i64, ptr } undef, i64 3, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %l5, 1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t28 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s1, ptr %s1, ptr %s1, ptr %s1, { i64, ptr } %t25, { i64, ptr } %t27, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) })
  %t29 = extractvalue { i32, %"std/os:Output" } %t28, 1
  %t30 = extractvalue { i32, %"std/os:Output" } %t28, 0
  store i32 %t30, ptr %l31
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb11, label %ok.32, !prof !99
ok.32:
  store %"std/os:Output" %t29, ptr %l30
  br label %bb10
bb10:
  %t33 = load %"std/os:Output", ptr %l30
  store %"std/os:Output" %t33, ptr %l23
  br label %bb16
bb11:
  %t34 = load i32, ptr %l31, !tbaa !23
  %t35 = ashr i32 %t34, 16
  %t37 = icmp eq i32 %t35, 1
  store i1 %t37, ptr %l33, !tbaa !21
  %t38 = load i32, ptr %l31, !tbaa !23
  %t39 = ashr i32 %t38, 16
  %t41 = icmp eq i32 %t39, 1
  br i1 %t41, label %bb12, label %bb13
bb12:
  call void @__olang_errpay_pop()
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t43 = call { i64, ptr } @compiler_2fmcp_2etoolError(ptr %v4, ptr %v4, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store { i64, ptr } %t43, ptr %l36
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t44 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t44, ptr %rv
  br label %ret
bb16:
  %t45 = load %"std/os:Output", ptr %l23
  store %"std/os:Output" %t45, ptr %l6
  %t46 = ptrtoint ptr %v4 to i64
  store i64 %t46, ptr %l37, !tbaa !24
  %t47 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t47, label %bb17, label %bb18
bb17:
  %t49 = call ptr @__olang_region_make(ptr %v4)
  %t50 = ptrtoint ptr %t49 to i64
  store i64 %t50, ptr %l37, !tbaa !24
  br label %bb18
bb18:
  %t51 = getelementptr %"std/os:Output", ptr %l6, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  %t53 = getelementptr %"std/os:Output", ptr %l6, i32 0, i32 2
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t52, 1
  %t57 = extractvalue { i64, ptr } %t52, 0
  %t59 = extractvalue { i64, ptr } %t54, 1
  %t60 = extractvalue { i64, ptr } %t54, 0
  %t61 = add i64 %t57, %t60
  %t62 = load i64, ptr %l37
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call ptr @__olang_scope_alloc(ptr %t63, i64 %t61)
  call void @olang_textcopy(ptr %t64, ptr %t56, i64 %t57)
  %t65 = getelementptr i8, ptr %t64, i64 %t57
  call void @olang_textcopy(ptr %t65, ptr %t59, i64 %t60)
  %t66 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t64, 1
  %t69 = load i64, ptr %l37
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = extractvalue { i64, ptr } %t67, 0
  %t72 = extractvalue { i64, ptr } %t67, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %t70, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  %t77 = getelementptr %"std/os:Output", ptr %l6, i32 0, i32 0
  %t78 = load i32, ptr %t77, !tbaa !23
  %t81 = call { i64, ptr } @compiler_2fmcp_2etestResult(ptr %v4, ptr %v4, { i64, ptr } %t76, i32 %t78)
  store { i64, ptr } %t81, ptr %l44
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t82 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t82, ptr %rv
  br label %ret
bb20:
  %t83 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t85 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t83, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t85, ptr %l46
  br label %bb21
bb21:
  %t86 = load i1, ptr %l46, !tbaa !21
  br i1 %t86, label %bb22, label %bb23
bb22:
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t87, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t89, ptr %l49
  br label %bb24
bb23:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb25
bb24:
  %t90 = load i1, ptr %l49, !tbaa !21
  store i1 %t90, ptr %l47, !tbaa !21
  br label %bb25
bb25:
  %t91 = load i1, ptr %l47, !tbaa !21
  br i1 %t91, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = call { i64, ptr } @compiler_2fmcp_2estr(ptr %v1, ptr %v1, ptr %v1, ptr %t92, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store { i64, ptr } %t94, ptr %l51
  br label %bb28
bb27:
  br label %bb37
bb28:
  %t95 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t99 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } %t96, 0
  %t100 = insertvalue [3 x { i64, ptr }] %t99, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t102 = insertvalue [3 x { i64, ptr }] %t100, { i64, ptr } %t95, 2
  store [3 x { i64, ptr }] %t102, ptr %l8
  %t105 = insertvalue { i64, ptr } undef, i64 3, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %l8, 1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l58, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t109 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s5, ptr %s5, ptr %s5, ptr %s5, { i64, ptr } %t106, { i64, ptr } %t108, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) })
  %t110 = extractvalue { i32, %"std/os:Output" } %t109, 1
  %t111 = extractvalue { i32, %"std/os:Output" } %t109, 0
  store i32 %t111, ptr %l60
  %t112 = icmp ne i32 %t111, 0
  br i1 %t112, label %bb30, label %ok.113, !prof !99
ok.113:
  store %"std/os:Output" %t110, ptr %l59
  br label %bb29
bb29:
  %t114 = load %"std/os:Output", ptr %l59
  store %"std/os:Output" %t114, ptr %l52
  br label %bb35
bb30:
  %t115 = load i32, ptr %l60, !tbaa !23
  %t116 = ashr i32 %t115, 16
  %t118 = icmp eq i32 %t116, 1
  store i1 %t118, ptr %l62, !tbaa !21
  %t119 = load i32, ptr %l60, !tbaa !23
  %t120 = ashr i32 %t119, 16
  %t122 = icmp eq i32 %t120, 1
  br i1 %t122, label %bb31, label %bb32
bb31:
  call void @__olang_errpay_pop()
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t124 = call { i64, ptr } @compiler_2fmcp_2etoolError(ptr %v4, ptr %v4, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store { i64, ptr } %t124, ptr %l65
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t125 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t125, ptr %rv
  br label %ret
bb35:
  %t126 = load %"std/os:Output", ptr %l52
  store %"std/os:Output" %t126, ptr %l9
  %t127 = getelementptr %"std/os:Output", ptr %l9, i32 0, i32 1
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  %t129 = getelementptr %"std/os:Output", ptr %l9, i32 0, i32 2
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t128, 1
  %t133 = extractvalue { i64, ptr } %t128, 0
  %t135 = extractvalue { i64, ptr } %t130, 1
  %t136 = extractvalue { i64, ptr } %t130, 0
  %t137 = add i64 %t133, %t136
  %t138 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t137)
  call void @olang_textcopy(ptr %t138, ptr %t132, i64 %t133)
  %t139 = getelementptr i8, ptr %t138, i64 %t133
  call void @olang_textcopy(ptr %t139, ptr %t135, i64 %t136)
  %t140 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t138, 1
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t144 = extractvalue { i64, ptr } %t141, 1
  %t145 = mul i64 %t143, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t145)
  call void @llvm.memcpy.p0.p0.i64(ptr %t146, ptr %t144, i64 %t145, i1 false)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t149 = getelementptr %"std/os:Output", ptr %l9, i32 0, i32 0
  %t150 = load i32, ptr %t149, !tbaa !23
  %t152 = icmp ne i32 %t150, 0
  %t155 = call { i64, ptr } @compiler_2fmcp_2etextResult(ptr %v4, ptr %v4, { i64, ptr } %t148, i1 %t152)
  store { i64, ptr } %t155, ptr %l72
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t156 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t156, ptr %rv
  br label %ret
bb37:
  %t157 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t159 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t157, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t159, ptr %l74
  br label %bb38
bb38:
  %t160 = load i1, ptr %l74, !tbaa !21
  %t161 = xor i1 %t160, true
  br i1 %t161, label %bb39, label %bb40
bb39:
  %t163 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t165 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t163, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t165, ptr %l78
  br label %bb41
bb40:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb42
bb41:
  %t166 = load i1, ptr %l78, !tbaa !21
  %t167 = xor i1 %t166, true
  store i1 %t167, ptr %l76, !tbaa !21
  br label %bb42
bb42:
  %t169 = load i1, ptr %l76, !tbaa !21
  br i1 %t169, label %bb43, label %bb44
bb43:
  %t170 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t172 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t170, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t172, ptr %l82
  br label %bb45
bb44:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb46
bb45:
  %t173 = load i1, ptr %l82, !tbaa !21
  %t174 = xor i1 %t173, true
  store i1 %t174, ptr %l80, !tbaa !21
  br label %bb46
bb46:
  %t176 = load i1, ptr %l80, !tbaa !21
  br i1 %t176, label %bb47, label %bb48
bb47:
  %t177 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t179 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t177, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t179, ptr %l86
  br label %bb49
bb48:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb50
bb49:
  %t180 = load i1, ptr %l86, !tbaa !21
  %t181 = xor i1 %t180, true
  store i1 %t181, ptr %l84, !tbaa !21
  br label %bb50
bb50:
  %t183 = load i1, ptr %l84, !tbaa !21
  br i1 %t183, label %bb51, label %bb52
bb51:
  %t184 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t185 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t186 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t188 = extractvalue { i64, ptr } %t184, 1
  %t189 = extractvalue { i64, ptr } %t184, 0
  %t190 = add i64 %t186, %t189
  %t191 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t190)
  call void @olang_textcopy(ptr %t191, ptr %t185, i64 %t186)
  %t192 = getelementptr i8, ptr %t191, i64 %t186
  call void @olang_textcopy(ptr %t192, ptr %t188, i64 %t189)
  %t193 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t191, 1
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t197 = extractvalue { i64, ptr } %t194, 1
  %t198 = mul i64 %t196, 1
  %t199 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t198)
  call void @llvm.memcpy.p0.p0.i64(ptr %t199, ptr %t197, i64 %t198, i1 false)
  %t200 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  %t203 = call { i64, ptr } @compiler_2fmcp_2etoolError(ptr %v4, ptr %v4, { i64, ptr } %t201)
  store { i64, ptr } %t203, ptr %l91
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t204 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t204, ptr %rv
  br label %ret
bb54:
  %t205 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t207 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t205, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t207, ptr %l93
  br label %bb55
bb55:
  %t208 = load i1, ptr %l93, !tbaa !21
  br i1 %t208, label %bb56, label %bb57
bb56:
  %t209 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t209, 1
  %t212 = extractvalue { i64, ptr } %t209, 0
  %t213 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t216 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t215)
  call void @olang_textcopy(ptr %t216, ptr %t211, i64 %t212)
  %t217 = getelementptr i8, ptr %t216, i64 %t212
  call void @olang_textcopy(ptr %t217, ptr %t213, i64 %t214)
  %t218 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t216, 1
  %t221 = extractvalue { i64, ptr } %t219, 0
  %t222 = extractvalue { i64, ptr } %t219, 1
  %t223 = mul i64 %t221, 1
  %t224 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t223)
  call void @llvm.memcpy.p0.p0.i64(ptr %t224, ptr %t222, i64 %t223, i1 false)
  %t225 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t224, 1
  %t228 = call { i64, ptr } @compiler_2fmcp_2etoolError(ptr %v4, ptr %v4, { i64, ptr } %t226)
  store { i64, ptr } %t228, ptr %l97
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s0)
  %t229 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t229, ptr %rv
  br label %ret
bb59:
  %t230 = load ptr, ptr %l1, !tbaa !29
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l100, !tbaa !27
  %t231 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t234 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t230, { i64, ptr } %t231)
  %t235 = extractvalue { i32, ptr } %t234, 1
  %t236 = extractvalue { i32, ptr } %t234, 0
  store i32 %t236, ptr %l103
  %t237 = icmp ne i32 %t236, 0
  br i1 %t237, label %bb61, label %ok.238, !prof !99
ok.238:
  store ptr %t235, ptr %l102
  br label %bb60
bb60:
  %t239 = load ptr, ptr %l102, !tbaa !29
  store ptr %t239, ptr %l98, !tbaa !29
  br label %bb65
bb61:
  %t240 = load i32, ptr %l103, !tbaa !23
  %t241 = ashr i32 %t240, 16
  %t243 = icmp eq i32 %t241, 1
  store i1 %t243, ptr %l105, !tbaa !21
  %t244 = load i32, ptr %l103, !tbaa !23
  %t245 = ashr i32 %t244, 16
  %t247 = icmp eq i32 %t245, 1
  br i1 %t247, label %bb62, label %bb63
bb62:
  call void @__olang_errpay_pop()
  br label %bb63
bb63:
  br label %bb64
bb64:
  store { i64, [2 x i64] } zeroinitializer, ptr %t249
  %t250 = getelementptr { i64, [2 x i64] }, ptr %t249, i32 0, i32 0
  store i64 0, ptr %t250
  %t251 = load { i64, [2 x i64] }, ptr %t249
  %t253 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t251, ptr %t253
  store ptr %t253, ptr %l98, !tbaa !29
  br label %bb65
bb65:
  %t255 = load ptr, ptr %l98, !tbaa !29
  store ptr %t255, ptr %l110, !tbaa !29
  store i1 false, ptr %l111, !tbaa !21
  %t256 = load ptr, ptr %l110, !tbaa !29
  %t257 = icmp ne ptr %t256, null
  br i1 %t257, label %bb66, label %bb67
bb66:
  %t259 = load ptr, ptr %l110, !tbaa !29
  %t260 = load i64, ptr %t259, !range !{i64 0, i64 8}
  %t262 = icmp eq i64 %t260, 0
  store i1 %t262, ptr %l111, !tbaa !21
  br label %bb67
bb67:
  %t263 = load i1, ptr %l111, !tbaa !21
  %t264 = xor i1 %t263, true
  store i1 %t264, ptr %l10, !tbaa !21
  %t266 = load ptr, ptr %l1, !tbaa !29
  %t268 = call { i64, ptr } @compiler_2fmcp_2estr(ptr %v1, ptr %v1, ptr %v1, ptr %t266, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store { i64, ptr } %t268, ptr %l116
  br label %bb68
bb68:
  %t269 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t269, ptr %l11, !tbaa !27
  %t270 = load ptr, ptr %l1, !tbaa !29
  %t272 = call { i64, ptr } @compiler_2fmcp_2estr(ptr %v1, ptr %v1, ptr %v1, ptr %t270, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store { i64, ptr } %t272, ptr %l118
  br label %bb69
bb69:
  %t273 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t274 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t275 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t276 = load i1, ptr %l10, !tbaa !21
  %t277 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t280 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr null, i32 1
  %t281 = ptrtoint ptr %t280 to i64
  %t283 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %t282, i32 0, i32 0
  store { i64, ptr } %t274, ptr %t283, !tbaa !28
  %t285 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %t282, i32 0, i32 1
  store { i64, ptr } %t275, ptr %t285, !tbaa !28
  %t287 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %t282, i32 0, i32 2
  store i1 %t276, ptr %t287, !tbaa !28
  %t289 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %t282, i32 0, i32 3
  store { i64, ptr } %t277, ptr %t289, !tbaa !28
  %t291 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %t282, i32 0, i32 4
  store { i64, ptr } %t273, ptr %t291, !tbaa !28
  %t293 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %t282, i32 0, i32 5
  store ptr %a2, ptr %t293, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t295 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %t282, i32 0, i32 6
  store ptr %v0, ptr %t295, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t296 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %t282, i32 0, i32 7
  store ptr %v1, ptr %t296, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t297 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %t282, i32 0, i32 8
  store ptr %v1, ptr %t297, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t298 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %t282, i32 0, i32 9
  store ptr %v1, ptr %t298, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t299 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %t282, i32 0, i32 10
  store ptr %v2, ptr %t299, !tbaa !28
  %t300 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_24, 0
  %t301 = insertvalue { ptr, ptr } %t300, ptr %t282, 1
  %t303 = extractvalue { ptr, ptr } %t301, 0
  %t304 = extractvalue { ptr, ptr } %t301, 1
  %t305 = call { { i64, ptr }, i32 } @compiler_2fsession_2eChildOutput(ptr %s0, ptr %s0, ptr %t303, ptr %t304)
  store { { i64, ptr }, i32 } %t305, ptr %l126
  br label %bb70
bb70:
  %t306 = load { { i64, ptr }, i32 }, ptr %l126
  store { { i64, ptr }, i32 } %t306, ptr %l13
  %t307 = getelementptr { { i64, ptr }, i32 }, ptr %l13, i32 0, i32 0
  %t308 = load { i64, ptr }, ptr %t307, !tbaa !27
  store { i64, ptr } %t308, ptr %l127, !tbaa !27
  %t309 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 0
  store i64 %t310, ptr %l128, !tbaa !24
  %t311 = load i64, ptr %l128, !tbaa !24
  %t312 = mul i64 %t311, 1
  %t313 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t312)
  %t314 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t313, 1
  store { i64, ptr } %t315, ptr %l129, !tbaa !27
  %t316 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = load i64, ptr %l128, !tbaa !24
  %t321 = mul i64 %t320, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t317, ptr %t319, i64 %t321, i1 false)
  %t322 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t322, ptr %lp14
  %t323 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t324 = load ptr, ptr %lp14
  store { i64, ptr } %t323, ptr %t324, !tbaa !27
  %t325 = getelementptr { { i64, ptr }, i32 }, ptr %l13, i32 0, i32 1
  %t326 = load i32, ptr %t325, !tbaa !23
  store i32 %t326, ptr %l15, !tbaa !23
  %t328 = load i32, ptr %l15, !tbaa !23
  %t330 = icmp ne i32 %t328, 0
  br i1 %t330, label %bb71, label %bb72
bb71:
  %t332 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t333 = load i32, ptr %l15, !tbaa !23
  %t334 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t335 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t337 = extractvalue { i64, ptr } %t332, 1
  %t338 = extractvalue { i64, ptr } %t332, 0
  %t339 = add i64 %t335, %t338
  %t340 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t341 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t342 = add i64 %t339, %t341
  %t344 = sext i32 %t333 to i64
  %t345 = call i64 @__olang_fmt_i64(ptr null, i64 %t344)
  %t346 = add i64 %t342, %t345
  %t347 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t348 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t349 = add i64 %t346, %t348
  %t350 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t349)
  call void @olang_textcopy(ptr %t350, ptr %t334, i64 %t335)
  %t351 = getelementptr i8, ptr %t350, i64 %t335
  call void @olang_textcopy(ptr %t351, ptr %t337, i64 %t338)
  %t352 = getelementptr i8, ptr %t351, i64 %t338
  call void @olang_textcopy(ptr %t352, ptr %t340, i64 %t341)
  %t353 = getelementptr i8, ptr %t352, i64 %t341
  %t354 = call i64 @__olang_fmt_i64(ptr %t353, i64 %t344)
  %t355 = getelementptr i8, ptr %t353, i64 %t345
  call void @olang_textcopy(ptr %t355, ptr %t347, i64 %t348)
  %t356 = insertvalue { i64, ptr } undef, i64 %t349, 0
  %t357 = insertvalue { i64, ptr } %t356, ptr %t350, 1
  %t359 = extractvalue { i64, ptr } %t357, 0
  %t360 = extractvalue { i64, ptr } %t357, 1
  %t361 = mul i64 %t359, 1
  %t362 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t361)
  call void @llvm.memcpy.p0.p0.i64(ptr %t362, ptr %t360, i64 %t361, i1 false)
  %t363 = insertvalue { i64, ptr } undef, i64 %t359, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t362, 1
  %t366 = call { i64, ptr } @compiler_2fmcp_2etoolError(ptr %v4, ptr %v4, { i64, ptr } %t364)
  store { i64, ptr } %t366, ptr %l137
  br label %bb73
bb72:
  br label %bb74
bb73:
  call void @__olang_scope_close(ptr %s0)
  %t367 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t367, ptr %rv
  br label %ret
bb74:
  %t368 = load ptr, ptr %lp14
  %t369 = load { i64, ptr }, ptr %t368, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t369, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmcp_2echeckResult(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/diag:Item"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca %"compiler/diag:Item"
  %l20 = alloca { i64, ptr }
  %l21 = alloca %"std/prelude/text:StringBuilder"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/text:StringBuilder"
  %l27 = alloca i64
  %l31 = alloca i64
  %l34 = alloca i64
  %l54 = alloca %"compiler/diag:Item"
  %l70 = alloca i64
  %l74 = alloca i64
  %l77 = alloca i64
  %l97 = alloca %"compiler/diag:Item"
  %l120 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l127 = alloca %"std/prelude/text:StringBuilder"
  %l131 = alloca ptr
  %l133 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eItems(ptr %v1, ptr %s0, ptr %t1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l23
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  %t5 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t5, ptr %l24
  br label %bb2
bb2:
  %t6 = load %"std/prelude/text:StringBuilder", ptr %l24
  store %"std/prelude/text:StringBuilder" %t6, ptr %l3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d28, i32 0, i32 1) })
  br label %bb3
bb3:
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eLen_3ccompiler_2fdiag_3aItem_3e(ptr %s0, ptr %l2)
  store i64 %t9, ptr %l27
  br label %bb4
bb4:
  %t10 = load i64, ptr %l27, !tbaa !24
  store i64 %t10, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t11 = load i64, ptr %l6, !tbaa !24
  %t12 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load i64, ptr %l7, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb10
bb7:
  %t21 = load i64, ptr %l6, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l7, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l34, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb9
bb9:
  %t37 = load i64, ptr %l34, !tbaa !24
  store i64 %t37, ptr %l31, !tbaa !24
  br label %bb10
bb10:
  %t38 = load i64, ptr %l31, !tbaa !24
  store i64 %t38, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t39 = load i64, ptr %l9, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb50
bb13:
  br label %bb14
bb14:
  %t47 = load i64, ptr %l5, !tbaa !24
  %t48 = load i64, ptr %l9, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t60 = call %"compiler/diag:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eAt_3ccompiler_2fdiag_3aItem_3e(ptr %s0, ptr %s0, ptr %l2, i64 %t57)
  store %"compiler/diag:Item" %t60, ptr %l54
  br label %bb15
bb15:
  %t61 = load %"compiler/diag:Item", ptr %l54
  store %"compiler/diag:Item" %t61, ptr %l11
  %t62 = getelementptr %"compiler/diag:Item", ptr %l11, i32 0, i32 0
  %t63 = load i1, ptr %t62, !tbaa !21
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb49
bb17:
  br label %bb18
bb18:
  %t67 = load i64, ptr %l4, !tbaa !24
  %t69 = icmp sgt i64 %t67, 0
  br i1 %t69, label %bb19, label %bb20
bb19:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 44)
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t72 = load i64, ptr %l4, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l4, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fmcp_2elocated(ptr %s0, ptr %v0, ptr %v1, ptr %s0, ptr %l3, ptr %t76, ptr %t77, ptr %l11)
  br label %bb23
bb23:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l3, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d29, i32 0, i32 1) })
  br label %bb24
bb24:
  store i64 0, ptr %l12, !tbaa !24
  %t83 = load i64, ptr %l10, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l13, !tbaa !24
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eLen_3ccompiler_2fdiag_3aItem_3e(ptr %s0, ptr %l2)
  store i64 %t88, ptr %l70
  br label %bb25
bb25:
  %t89 = load i64, ptr %l70, !tbaa !24
  store i64 %t89, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t90 = load i64, ptr %l14, !tbaa !24
  %t91 = load i64, ptr %l13, !tbaa !24
  %t94 = icmp sgt i64 %t90, %t91
  br i1 %t94, label %bb26, label %bb27
bb26:
  %t96 = load i64, ptr %l15, !tbaa !24
  %t98 = icmp sgt i64 %t96, 0
  br i1 %t98, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb31
bb28:
  %t100 = load i64, ptr %l14, !tbaa !24
  %t101 = load i64, ptr %l13, !tbaa !24
  %t104 = sub i64 %t100, %t101
  %t105 = load i64, ptr %l15, !tbaa !24
  %t108 = add i64 %t104, %t105
  %t110 = sub i64 %t108, 1
  %t111 = load i64, ptr %l15, !tbaa !24
  %t114 = sdiv i64 %t110, %t111
  store i64 %t114, ptr %l77, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb30
bb30:
  %t116 = load i64, ptr %l77, !tbaa !24
  store i64 %t116, ptr %l74, !tbaa !24
  br label %bb31
bb31:
  %t117 = load i64, ptr %l74, !tbaa !24
  store i64 %t117, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb32
bb32:
  %t118 = load i64, ptr %l17, !tbaa !24
  %t119 = load i64, ptr %l16, !tbaa !24
  %t122 = icmp slt i64 %t118, %t119
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb33, label %bb34
bb33:
  br label %bb47
bb34:
  br label %bb35
bb35:
  %t126 = load i64, ptr %l13, !tbaa !24
  %t127 = load i64, ptr %l17, !tbaa !24
  %t128 = load i64, ptr %l15, !tbaa !24
  %t131 = mul i64 %t127, %t128
  %t134 = add i64 %t126, %t131
  %t139 = call %"compiler/diag:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eAt_3ccompiler_2fdiag_3aItem_3e(ptr %s0, ptr %s0, ptr %l2, i64 %t134)
  store %"compiler/diag:Item" %t139, ptr %l97
  br label %bb36
bb36:
  %t140 = load %"compiler/diag:Item", ptr %l97
  store %"compiler/diag:Item" %t140, ptr %l19
  %t141 = getelementptr %"compiler/diag:Item", ptr %l19, i32 0, i32 0
  %t142 = load i1, ptr %t141, !tbaa !21
  br i1 %t142, label %bb37, label %bb38
bb37:
  br label %bb47
bb38:
  br label %bb39
bb39:
  %t144 = load i64, ptr %l12, !tbaa !24
  %t146 = icmp sgt i64 %t144, 0
  br i1 %t146, label %bb40, label %bb41
bb40:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 44)
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb43
bb43:
  %t149 = load i64, ptr %l12, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l12, !tbaa !24
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fmcp_2elocated(ptr %s0, ptr %v0, ptr %v1, ptr %s0, ptr %l3, ptr %t153, ptr %t154, ptr %l19)
  br label %bb44
bb44:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 125)
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t160 = load i64, ptr %l17, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l17, !tbaa !24
  br label %bb32
bb47:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d30, i32 0, i32 1) })
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s2)
  br label %bb49
bb49:
  %t165 = load i64, ptr %l9, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l9, !tbaa !24
  br label %bb11
bb50:
  %t169 = load i64, ptr %l4, !tbaa !24
  %t170 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t173 = call i64 @__olang_fmt_i64(ptr null, i64 %t169)
  %t174 = add i64 %t171, %t173
  %t175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t176 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t177 = add i64 %t174, %t176
  %t178 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t177)
  call void @olang_textcopy(ptr %t178, ptr %t170, i64 %t171)
  %t179 = getelementptr i8, ptr %t178, i64 %t171
  %t180 = call i64 @__olang_fmt_i64(ptr %t179, i64 %t169)
  %t181 = getelementptr i8, ptr %t179, i64 %t173
  call void @olang_textcopy(ptr %t181, ptr %t175, i64 %t176)
  %t182 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t178, 1
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t186 = extractvalue { i64, ptr } %t183, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } %t190)
  br label %bb51
bb51:
  %t193 = load i64, ptr %l4, !tbaa !24
  %t195 = icmp eq i64 %t193, 0
  br i1 %t195, label %bb52, label %bb53
bb52:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l120, !tbaa !27
  br label %bb56
bb53:
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t199 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v1, ptr %s0, ptr %t197)
  store { i64, ptr } %t199, ptr %l122
  br label %bb54
bb54:
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t202 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSummary(ptr %v1, ptr %s0, ptr %t200)
  store { i64, ptr } %t202, ptr %l124
  br label %bb55
bb55:
  %t203 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t203, 1
  %t205 = extractvalue { i64, ptr } %t203, 0
  %t206 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 1
  %t208 = extractvalue { i64, ptr } %t206, 0
  %t209 = add i64 %t205, %t208
  %t210 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t209)
  call void @olang_textcopy(ptr %t210, ptr %t204, i64 %t205)
  %t211 = getelementptr i8, ptr %t210, i64 %t205
  call void @olang_textcopy(ptr %t211, ptr %t207, i64 %t208)
  %t212 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t210, 1
  %t215 = extractvalue { i64, ptr } %t213, 0
  %t216 = extractvalue { i64, ptr } %t213, 1
  %t217 = mul i64 %t215, 1
  %t218 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t217)
  call void @llvm.memcpy.p0.p0.i64(ptr %t218, ptr %t216, i64 %t217, i1 false)
  %t219 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t218, 1
  store { i64, ptr } %t220, ptr %l120, !tbaa !27
  br label %bb56
bb56:
  %t222 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t222, ptr %l20, !tbaa !27
  %t223 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t223, ptr %l127
  br label %bb57
bb57:
  %t224 = load %"std/prelude/text:StringBuilder", ptr %l127
  store %"std/prelude/text:StringBuilder" %t224, ptr %l21
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l21, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d34, i32 0, i32 1) })
  br label %bb58
bb58:
  %t226 = load { i64, ptr }, ptr %l20, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %s0, ptr %l21, { i64, ptr } %t226)
  br label %bb59
bb59:
  store ptr %l21, ptr %l131, !tbaa !29
  %t230 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t230, ptr %l133
  br label %bb60
bb60:
  %t231 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t232 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t233 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t233, 1
  %t235 = extractvalue { i64, ptr } %t233, 0
  %t236 = add i64 %t232, %t235
  %t237 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t238 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t239 = add i64 %t236, %t238
  %t240 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t239)
  call void @olang_textcopy(ptr %t240, ptr %t231, i64 %t232)
  %t241 = getelementptr i8, ptr %t240, i64 %t232
  call void @olang_textcopy(ptr %t241, ptr %t234, i64 %t235)
  %t242 = getelementptr i8, ptr %t241, i64 %t235
  call void @olang_textcopy(ptr %t242, ptr %t237, i64 %t238)
  %t243 = insertvalue { i64, ptr } undef, i64 %t239, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t240, 1
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t247 = extractvalue { i64, ptr } %t244, 1
  %t248 = mul i64 %t246, 1
  %t249 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t248)
  call void @llvm.memcpy.p0.p0.i64(ptr %t249, ptr %t247, i64 %t248, i1 false)
  %t250 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  %t252 = load ptr, ptr %l131, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t252, { i64, ptr } %t251)
  br label %bb61
bb61:
  %t255 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l21)
  store { i64, ptr } %t255, ptr %l137
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s0)
  %t256 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t256, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmcp_2ecompilerUnderTest(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l7 = alloca i1
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d37, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l3
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l2
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t15, ptr %l7
  br label %bb7
bb7:
  %t16 = load i1, ptr %l7, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t21, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l9, !tbaa !27
  br label %bb10
bb9:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t27, ptr %l9, !tbaa !27
  br label %bb10
bb10:
  %t29 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 0
  store i64 %t30, ptr %l14, !tbaa !24
  %t31 = load i64, ptr %l14, !tbaa !24
  %t32 = mul i64 %t31, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l15, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l14, !tbaa !24
  %t41 = mul i64 %t40, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t37, ptr %t39, i64 %t41, i1 false)
  %t42 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t42, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t43 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmcp_2eerrorReply(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l4
  store %"std/prelude/text:StringBuilder" %t2, ptr %l3
  %t5 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = add i64 %t6, %t9
  %t11 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t16 = add i64 %t13, %t15
  %t17 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t20 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t19)
  call void @olang_textcopy(ptr %t20, ptr %t5, i64 %t6)
  %t21 = getelementptr i8, ptr %t20, i64 %t6
  call void @olang_textcopy(ptr %t21, ptr %t8, i64 %t9)
  %t22 = getelementptr i8, ptr %t21, i64 %t9
  call void @olang_textcopy(ptr %t22, ptr %t11, i64 %t12)
  %t23 = getelementptr i8, ptr %t22, i64 %t12
  %t24 = call i64 @__olang_fmt_i64(ptr %t23, i64 %a1)
  %t25 = getelementptr i8, ptr %t23, i64 %t15
  call void @olang_textcopy(ptr %t25, ptr %t17, i64 %t18)
  %t26 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t20, 1
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t30 = extractvalue { i64, ptr } %t27, 1
  %t31 = mul i64 %t29, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t31)
  call void @llvm.memcpy.p0.p0.i64(ptr %t32, ptr %t30, i64 %t31, i1 false)
  %t33 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } %t34)
  br label %bb2
bb2:
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %v1, ptr %l3, { i64, ptr } %a2)
  br label %bb3
bb3:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d44, i32 0, i32 1) })
  br label %bb4
bb4:
  %t42 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l3)
  store { i64, ptr } %t42, ptr %l14
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t43 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fmcp_2ehandle(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i32
  %l15 = alloca i1
  %l18 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l25 = alloca i1
  %l26 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i32
  %l34 = alloca i1
  %l38 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l41 = alloca i32
  %l43 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca i32
  %l49 = alloca i1
  %l52 = alloca %"std/prelude/text:StringBuilder"
  %l63 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l70 = alloca i1
  %l72 = alloca i1
  %l74 = alloca { i64, ptr }
  %l77 = alloca i1
  %l82 = alloca { i64, ptr }
  %l85 = alloca i1
  %l86 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l91 = alloca ptr
  %l92 = alloca i32
  %l94 = alloca i1
  %l98 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l101 = alloca i32
  %l103 = alloca i1
  %l106 = alloca { i64, ptr }
  %l107 = alloca i32
  %l109 = alloca i1
  %l112 = alloca ptr
  %l115 = alloca { i64, ptr }
  %l117 = alloca ptr
  %l118 = alloca i32
  %l120 = alloca i1
  %l124 = alloca { i64, ptr }
  %l126 = alloca ptr
  %l127 = alloca i32
  %l129 = alloca i1
  %l134 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l147 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %t305 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v0, ptr %s0, { i64, ptr } %a0)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l13
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l12
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l12, !tbaa !29
  store ptr %t8, ptr %l10, !tbaa !29
  br label %bb8
bb2:
  %t9 = load i32, ptr %l13, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l15, !tbaa !21
  %t13 = load i32, ptr %l13, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = call { i64, ptr } @compiler_2fmcp_2eerrorReply(ptr %s1, ptr %s1, ptr %s1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) }, i64 -32700, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store { i64, ptr } %t18, ptr %l18
  br label %bb6
bb6:
  %t19 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = mul i64 %t20, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t22)
  call void @llvm.memcpy.p0.p0.i64(ptr %t23, ptr %t21, i64 %t22, i1 false)
  %t24 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  call void @compiler_2fmcp_2esend(ptr %s1, { i64, ptr } %t25)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t27 = load ptr, ptr %l10, !tbaa !29
  store ptr %t27, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = call { i64, ptr } @compiler_2fmcp_2estr(ptr %s0, ptr %s0, ptr %s0, ptr %t28, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store { i64, ptr } %t30, ptr %l21
  br label %bb9
bb9:
  %t31 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t31, ptr %l4, !tbaa !27
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t34 = call { i64, ptr } @compiler_2fmcp_2eidOf(ptr %s0, ptr %s0, ptr %t32)
  store { i64, ptr } %t34, ptr %l23
  br label %bb10
bb10:
  %t35 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t35, ptr %l5, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t36, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t38, ptr %l25
  br label %bb11
bb11:
  %t39 = load i1, ptr %l25, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t40 = load ptr, ptr %l3, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t45 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t40, { i64, ptr } %t42)
  %t46 = extractvalue { i32, ptr } %t45, 1
  %t47 = extractvalue { i32, ptr } %t45, 0
  store i32 %t47, ptr %l32
  %t48 = icmp ne i32 %t47, 0
  br i1 %t48, label %bb15, label %ok.49, !prof !99
ok.49:
  store ptr %t46, ptr %l31
  br label %bb14
bb13:
  br label %bb37
bb14:
  %t50 = load ptr, ptr %l31, !tbaa !29
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t54 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s2, ptr %t50, { i64, ptr } %t51)
  %t55 = extractvalue { i32, ptr } %t54, 1
  %t56 = extractvalue { i32, ptr } %t54, 0
  store i32 %t56, ptr %l41
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb20, label %ok.58, !prof !99
ok.58:
  store ptr %t55, ptr %l40
  br label %bb19
bb15:
  %t59 = load i32, ptr %l32, !tbaa !23
  %t60 = ashr i32 %t59, 16
  %t62 = icmp eq i32 %t60, 1
  store i1 %t62, ptr %l34, !tbaa !21
  %t63 = load i32, ptr %l32, !tbaa !23
  %t64 = ashr i32 %t63, 16
  %t66 = icmp eq i32 %t64, 1
  br i1 %t66, label %bb16, label %bb17
bb16:
  call void @__olang_errpay_pop()
  br label %bb17
bb17:
  br label %bb18
bb18:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l26, !tbaa !27
  br label %bb27
bb19:
  %t68 = load ptr, ptr %l40, !tbaa !29
  %t69 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %s2, ptr %s2, ptr %t68)
  %t70 = extractvalue { i32, { i64, ptr } } %t69, 1
  %t71 = extractvalue { i32, { i64, ptr } } %t69, 0
  store i32 %t71, ptr %l47
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb24, label %ok.73, !prof !99
ok.73:
  store { i64, ptr } %t70, ptr %l46
  br label %bb23
bb20:
  %t74 = load i32, ptr %l41, !tbaa !23
  %t75 = ashr i32 %t74, 16
  %t77 = icmp eq i32 %t75, 1
  store i1 %t77, ptr %l43, !tbaa !21
  %t78 = load i32, ptr %l41, !tbaa !23
  %t79 = ashr i32 %t78, 16
  %t81 = icmp eq i32 %t79, 1
  br i1 %t81, label %bb21, label %bb22
bb21:
  call void @__olang_errpay_pop()
  br label %bb22
bb22:
  br label %bb18
bb23:
  %t83 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t83, ptr %l26, !tbaa !27
  br label %bb27
bb24:
  %t84 = load i32, ptr %l47, !tbaa !23
  %t85 = ashr i32 %t84, 16
  %t87 = icmp eq i32 %t85, 1
  store i1 %t87, ptr %l49, !tbaa !21
  %t88 = load i32, ptr %l47, !tbaa !23
  %t89 = ashr i32 %t88, 16
  %t91 = icmp eq i32 %t89, 1
  br i1 %t91, label %bb25, label %bb26
bb25:
  call void @__olang_errpay_pop()
  br label %bb26
bb26:
  br label %bb18
bb27:
  %t93 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t93, ptr %l6, !tbaa !27
  %t94 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t94, ptr %l52
  br label %bb28
bb28:
  %t95 = load %"std/prelude/text:StringBuilder", ptr %l52
  store %"std/prelude/text:StringBuilder" %t95, ptr %l7
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s2, ptr %l7, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d52, i32 0, i32 1) })
  br label %bb29
bb29:
  %t97 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %s2, ptr %s2, ptr %l7, { i64, ptr } %t97)
  br label %bb30
bb30:
  %t100 = extractvalue { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t102 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t104 = add i64 %t101, %t103
  %t105 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t104)
  call void @olang_textcopy(ptr %t105, ptr %t100, i64 %t101)
  %t106 = getelementptr i8, ptr %t105, i64 %t101
  call void @olang_textcopy(ptr %t106, ptr %t102, i64 %t103)
  %t107 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t105, 1
  %t110 = extractvalue { i64, ptr } %t108, 0
  %t111 = extractvalue { i64, ptr } %t108, 1
  %t112 = mul i64 %t110, 1
  %t113 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t112)
  call void @llvm.memcpy.p0.p0.i64(ptr %t113, ptr %t111, i64 %t112, i1 false)
  %t114 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s2, ptr %l7, { i64, ptr } %t115)
  br label %bb31
bb31:
  %t118 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t120 = extractvalue { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t121 = extractvalue { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t122 = add i64 %t119, %t121
  %t123 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t124 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t125 = add i64 %t122, %t124
  %t126 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t125)
  call void @olang_textcopy(ptr %t126, ptr %t118, i64 %t119)
  %t127 = getelementptr i8, ptr %t126, i64 %t119
  call void @olang_textcopy(ptr %t127, ptr %t120, i64 %t121)
  %t128 = getelementptr i8, ptr %t127, i64 %t121
  call void @olang_textcopy(ptr %t128, ptr %t123, i64 %t124)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t126, 1
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t133 = extractvalue { i64, ptr } %t130, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  call void @compiler_2fsession_2eJsonStr(ptr %s2, ptr %s2, ptr %l7, { i64, ptr } %t137)
  br label %bb32
bb32:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s2, ptr %l7, i8 125)
  br label %bb33
bb33:
  %t141 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t141, ptr %l63, !tbaa !27
  %t143 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s2, ptr %l7)
  store { i64, ptr } %t143, ptr %l65
  br label %bb34
bb34:
  %t144 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  %t146 = extractvalue { i64, ptr } %t144, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t151 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t153 = call { i64, ptr } @compiler_2fmcp_2ereply(ptr %s0, ptr %s2, ptr %s2, { i64, ptr } %t151, { i64, ptr } %t150)
  store { i64, ptr } %t153, ptr %l67
  br label %bb35
bb35:
  %t154 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 0
  %t156 = extractvalue { i64, ptr } %t154, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  call void @compiler_2fmcp_2esend(ptr %s2, { i64, ptr } %t160)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb37:
  %t162 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t164 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t162, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i1 %t164, ptr %l70
  br label %bb38
bb38:
  %t165 = load i1, ptr %l70, !tbaa !21
  br i1 %t165, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb40:
  br label %bb41
bb41:
  %t166 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t168 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t166, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t168, ptr %l72
  br label %bb42
bb42:
  %t169 = load i1, ptr %l72, !tbaa !21
  br i1 %t169, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s6
  %t170 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t172 = call { i64, ptr } @compiler_2fmcp_2ereply(ptr %s0, ptr %s6, ptr %s6, { i64, ptr } %t170, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store { i64, ptr } %t172, ptr %l74
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t173 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t173, 0
  %t175 = extractvalue { i64, ptr } %t173, 1
  %t176 = mul i64 %t174, 1
  %t177 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t176)
  call void @llvm.memcpy.p0.p0.i64(ptr %t177, ptr %t175, i64 %t176, i1 false)
  %t178 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t177, 1
  call void @compiler_2fmcp_2esend(ptr %s6, { i64, ptr } %t179)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb47:
  %t181 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t183 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t181, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i1 %t183, ptr %l77
  br label %bb48
bb48:
  %t184 = load i1, ptr %l77, !tbaa !21
  br i1 %t184, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s7
  %t185 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t186 = load { i64, ptr }, ptr @G_2ecompiler_2fmcp_2eTools, !tbaa !27
  %t187 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t190 = extractvalue { i64, ptr } %t186, 1
  %t191 = extractvalue { i64, ptr } %t186, 0
  %t192 = add i64 %t188, %t191
  %t193 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t195 = add i64 %t192, %t194
  %t196 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t195)
  call void @olang_textcopy(ptr %t196, ptr %t187, i64 %t188)
  %t197 = getelementptr i8, ptr %t196, i64 %t188
  call void @olang_textcopy(ptr %t197, ptr %t190, i64 %t191)
  %t198 = getelementptr i8, ptr %t197, i64 %t191
  call void @olang_textcopy(ptr %t198, ptr %t193, i64 %t194)
  %t199 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t196, 1
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t203 = extractvalue { i64, ptr } %t200, 1
  %t204 = mul i64 %t202, 1
  %t205 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t204)
  call void @llvm.memcpy.p0.p0.i64(ptr %t205, ptr %t203, i64 %t204, i1 false)
  %t206 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  %t210 = call { i64, ptr } @compiler_2fmcp_2ereply(ptr %s0, ptr %s7, ptr %s7, { i64, ptr } %t185, { i64, ptr } %t207)
  store { i64, ptr } %t210, ptr %l82
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t211 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 0
  %t213 = extractvalue { i64, ptr } %t211, 1
  %t214 = mul i64 %t212, 1
  %t215 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t214)
  call void @llvm.memcpy.p0.p0.i64(ptr %t215, ptr %t213, i64 %t214, i1 false)
  %t216 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  call void @compiler_2fmcp_2esend(ptr %s7, { i64, ptr } %t217)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb53:
  %t219 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t221 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t219, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d64, i32 0, i32 1) })
  store i1 %t221, ptr %l85
  br label %bb54
bb54:
  %t222 = load i1, ptr %l85, !tbaa !21
  br i1 %t222, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s9
  %t223 = load ptr, ptr %l3, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %l89, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t228 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t223, { i64, ptr } %t225)
  %t229 = extractvalue { i32, ptr } %t228, 1
  %t230 = extractvalue { i32, ptr } %t228, 0
  store i32 %t230, ptr %l92
  %t231 = icmp ne i32 %t230, 0
  br i1 %t231, label %bb58, label %ok.232, !prof !99
ok.232:
  store ptr %t229, ptr %l91
  br label %bb57
bb56:
  br label %bb84
bb57:
  %t233 = load ptr, ptr %l91, !tbaa !29
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l98, !tbaa !27
  %t234 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t237 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s9, ptr %t233, { i64, ptr } %t234)
  %t238 = extractvalue { i32, ptr } %t237, 1
  %t239 = extractvalue { i32, ptr } %t237, 0
  store i32 %t239, ptr %l101
  %t240 = icmp ne i32 %t239, 0
  br i1 %t240, label %bb63, label %ok.241, !prof !99
ok.241:
  store ptr %t238, ptr %l100
  br label %bb62
bb58:
  %t242 = load i32, ptr %l92, !tbaa !23
  %t243 = ashr i32 %t242, 16
  %t245 = icmp eq i32 %t243, 1
  store i1 %t245, ptr %l94, !tbaa !21
  %t246 = load i32, ptr %l92, !tbaa !23
  %t247 = ashr i32 %t246, 16
  %t249 = icmp eq i32 %t247, 1
  br i1 %t249, label %bb59, label %bb60
bb59:
  call void @__olang_errpay_pop()
  br label %bb60
bb60:
  br label %bb61
bb61:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l86, !tbaa !27
  br label %bb70
bb62:
  %t251 = load ptr, ptr %l100, !tbaa !29
  %t252 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %s9, ptr %s9, ptr %t251)
  %t253 = extractvalue { i32, { i64, ptr } } %t252, 1
  %t254 = extractvalue { i32, { i64, ptr } } %t252, 0
  store i32 %t254, ptr %l107
  %t255 = icmp ne i32 %t254, 0
  br i1 %t255, label %bb67, label %ok.256, !prof !99
ok.256:
  store { i64, ptr } %t253, ptr %l106
  br label %bb66
bb63:
  %t257 = load i32, ptr %l101, !tbaa !23
  %t258 = ashr i32 %t257, 16
  %t260 = icmp eq i32 %t258, 1
  store i1 %t260, ptr %l103, !tbaa !21
  %t261 = load i32, ptr %l101, !tbaa !23
  %t262 = ashr i32 %t261, 16
  %t264 = icmp eq i32 %t262, 1
  br i1 %t264, label %bb64, label %bb65
bb64:
  call void @__olang_errpay_pop()
  br label %bb65
bb65:
  br label %bb61
bb66:
  %t266 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t266, ptr %l86, !tbaa !27
  br label %bb70
bb67:
  %t267 = load i32, ptr %l107, !tbaa !23
  %t268 = ashr i32 %t267, 16
  %t270 = icmp eq i32 %t268, 1
  store i1 %t270, ptr %l109, !tbaa !21
  %t271 = load i32, ptr %l107, !tbaa !23
  %t272 = ashr i32 %t271, 16
  %t274 = icmp eq i32 %t272, 1
  br i1 %t274, label %bb68, label %bb69
bb68:
  call void @__olang_errpay_pop()
  br label %bb69
bb69:
  br label %bb61
bb70:
  %t276 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t276, ptr %l8, !tbaa !27
  %t277 = load ptr, ptr %l3, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l115, !tbaa !27
  %t279 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t282 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t277, { i64, ptr } %t279)
  %t283 = extractvalue { i32, ptr } %t282, 1
  %t284 = extractvalue { i32, ptr } %t282, 0
  store i32 %t284, ptr %l118
  %t285 = icmp ne i32 %t284, 0
  br i1 %t285, label %bb72, label %ok.286, !prof !99
ok.286:
  store ptr %t283, ptr %l117
  br label %bb71
bb71:
  %t287 = load ptr, ptr %l117, !tbaa !29
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l124, !tbaa !27
  %t288 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t291 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t287, { i64, ptr } %t288)
  %t292 = extractvalue { i32, ptr } %t291, 1
  %t293 = extractvalue { i32, ptr } %t291, 0
  store i32 %t293, ptr %l127
  %t294 = icmp ne i32 %t293, 0
  br i1 %t294, label %bb77, label %ok.295, !prof !99
ok.295:
  store ptr %t292, ptr %l126
  br label %bb76
bb72:
  %t296 = load i32, ptr %l118, !tbaa !23
  %t297 = ashr i32 %t296, 16
  %t299 = icmp eq i32 %t297, 1
  store i1 %t299, ptr %l120, !tbaa !21
  %t300 = load i32, ptr %l118, !tbaa !23
  %t301 = ashr i32 %t300, 16
  %t303 = icmp eq i32 %t301, 1
  br i1 %t303, label %bb73, label %bb74
bb73:
  call void @__olang_errpay_pop()
  br label %bb74
bb74:
  br label %bb75
bb75:
  store { i64, [2 x i64] } zeroinitializer, ptr %t305
  %t306 = getelementptr { i64, [2 x i64] }, ptr %t305, i32 0, i32 0
  store i64 0, ptr %t306
  %t307 = load { i64, [2 x i64] }, ptr %t305
  %t309 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t307, ptr %t309
  store ptr %t309, ptr %l112, !tbaa !29
  br label %bb80
bb76:
  %t311 = load ptr, ptr %l126, !tbaa !29
  store ptr %t311, ptr %l112, !tbaa !29
  br label %bb80
bb77:
  %t312 = load i32, ptr %l127, !tbaa !23
  %t313 = ashr i32 %t312, 16
  %t315 = icmp eq i32 %t313, 1
  store i1 %t315, ptr %l129, !tbaa !21
  %t316 = load i32, ptr %l127, !tbaa !23
  %t317 = ashr i32 %t316, 16
  %t319 = icmp eq i32 %t317, 1
  br i1 %t319, label %bb78, label %bb79
bb78:
  call void @__olang_errpay_pop()
  br label %bb79
bb79:
  br label %bb75
bb80:
  %t321 = load ptr, ptr %l112, !tbaa !29
  %t322 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t322, ptr %l134, !tbaa !27
  %t323 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t331 = call { i64, ptr } @compiler_2fmcp_2ecall(ptr %s9, ptr %s0, ptr %v1, ptr %v2, ptr %s9, { i64, ptr } %t323, ptr %t321, ptr %a1, { i64, ptr } %a2)
  store { i64, ptr } %t331, ptr %l139
  br label %bb81
bb81:
  %t332 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t333 = extractvalue { i64, ptr } %t332, 0
  %t334 = extractvalue { i64, ptr } %t332, 1
  %t335 = mul i64 %t333, 1
  %t336 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t335)
  call void @llvm.memcpy.p0.p0.i64(ptr %t336, ptr %t334, i64 %t335, i1 false)
  %t337 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t336, 1
  %t339 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t341 = call { i64, ptr } @compiler_2fmcp_2ereply(ptr %s0, ptr %s9, ptr %s9, { i64, ptr } %t339, { i64, ptr } %t338)
  store { i64, ptr } %t341, ptr %l141
  br label %bb82
bb82:
  %t342 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t343 = extractvalue { i64, ptr } %t342, 0
  %t344 = extractvalue { i64, ptr } %t342, 1
  %t345 = mul i64 %t343, 1
  %t346 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t345)
  call void @llvm.memcpy.p0.p0.i64(ptr %t346, ptr %t344, i64 %t345, i1 false)
  %t347 = insertvalue { i64, ptr } undef, i64 %t343, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t346, 1
  call void @compiler_2fmcp_2esend(ptr %s9, { i64, ptr } %t348)
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb84:
  %t350 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t351 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t352 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t353 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t355 = extractvalue { i64, ptr } %t351, 1
  %t356 = extractvalue { i64, ptr } %t351, 0
  %t357 = add i64 %t353, %t356
  %t358 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t357)
  call void @olang_textcopy(ptr %t358, ptr %t352, i64 %t353)
  %t359 = getelementptr i8, ptr %t358, i64 %t353
  call void @olang_textcopy(ptr %t359, ptr %t355, i64 %t356)
  %t360 = insertvalue { i64, ptr } undef, i64 %t357, 0
  %t361 = insertvalue { i64, ptr } %t360, ptr %t358, 1
  %t363 = extractvalue { i64, ptr } %t361, 0
  %t364 = extractvalue { i64, ptr } %t361, 1
  %t365 = mul i64 %t363, 1
  %t366 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t365)
  call void @llvm.memcpy.p0.p0.i64(ptr %t366, ptr %t364, i64 %t365, i1 false)
  %t367 = insertvalue { i64, ptr } undef, i64 %t363, 0
  %t368 = insertvalue { i64, ptr } %t367, ptr %t366, 1
  %t371 = call { i64, ptr } @compiler_2fmcp_2eerrorReply(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t350, i64 -32601, { i64, ptr } %t368)
  store { i64, ptr } %t371, ptr %l147
  br label %bb85
bb85:
  %t372 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t373 = extractvalue { i64, ptr } %t372, 0
  %t374 = extractvalue { i64, ptr } %t372, 1
  %t375 = mul i64 %t373, 1
  %t376 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t375)
  call void @llvm.memcpy.p0.p0.i64(ptr %t376, ptr %t374, i64 %t375, i1 false)
  %t377 = insertvalue { i64, ptr } undef, i64 %t373, 0
  %t378 = insertvalue { i64, ptr } %t377, ptr %t376, 1
  call void @compiler_2fmcp_2esend(ptr %s0, { i64, ptr } %t378)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmcp_2eidOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d71, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, ptr %v0, ptr %a0, { i64, ptr } %t2)
  %t6 = extractvalue { i32, ptr } %t5, 1
  %t7 = extractvalue { i32, ptr } %t5, 0
  store i32 %t7, ptr %l7
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store ptr %t6, ptr %l6
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l6, !tbaa !29
  store ptr %t10, ptr %l2, !tbaa !29
  br label %bb6
bb2:
  %t11 = load i32, ptr %l7, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l9, !tbaa !21
  %t15 = load i32, ptr %l7, !tbaa !23
  %t16 = ashr i32 %t15, 16
  %t18 = icmp eq i32 %t16, 1
  br i1 %t18, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t20, ptr %l13, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  store i64 %t22, ptr %l14, !tbaa !24
  %t23 = load i64, ptr %l14, !tbaa !24
  %t24 = mul i64 %t23, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l15, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l14, !tbaa !24
  %t33 = mul i64 %t32, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %t31, i64 %t33, i1 false)
  %t34 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t34, ptr %l13, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t35, ptr %rv
  br label %ret
bb6:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t40 = call { i64, ptr } @std_2fjson_2eEncode_3cstd_2fjson_3aJson_26_3e(ptr %v0, ptr %v1, ptr %v1, ptr %t36, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d73, i32 0, i32 1) }, i32 0)
  store { i64, ptr } %t40, ptr %l18
  br label %bb7
bb7:
  %t41 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t41, ptr %l19, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l20, !tbaa !24
  %t44 = load i64, ptr %l20, !tbaa !24
  %t45 = mul i64 %t44, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t45)
  %t47 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %l21, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l20, !tbaa !24
  %t54 = mul i64 %t53, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t50, ptr %t52, i64 %t54, i1 false)
  %t55 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t55, ptr %l19, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t56, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fmcp_2elocated(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/session:Positions"
  %l5 = alloca { i64, i64 }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, i64 }
  %l12 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca %"compiler/session:Positions"
  %l33 = alloca { i64, i64 }
  %l36 = alloca ptr
  %l42 = alloca i64
  %l47 = alloca { i64, i64 }
  %l71 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d74, i32 0, i32 1) })
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l12, !tbaa !29
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = getelementptr %"compiler/diag:Item", ptr %t4, i32 0, i32 2
  %t7 = load i64, ptr %t6, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = getelementptr %"compiler/diag:Item", ptr %t12, i32 0, i32 2
  %t15 = load i64, ptr %t14, !tbaa !24
  %t18 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v2, ptr %s0, ptr %t11, i64 %t15)
  store { i64, ptr } %t18, ptr %l20
  br label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb5
bb4:
  %t19 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = mul i64 %t20, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t22)
  call void @llvm.memcpy.p0.p0.i64(ptr %t23, ptr %t21, i64 %t22, i1 false)
  %t24 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l16, !tbaa !27
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l12, !tbaa !29
  %t28 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v0, ptr %s0, ptr %t27, { i64, ptr } %t28)
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = getelementptr %"compiler/diag:Item", ptr %t29, i32 0, i32 3
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = icmp sge i64 %t32, 0
  br i1 %t34, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr %"compiler/diag:Item", ptr %t37, i32 0, i32 2
  %t40 = load i64, ptr %t39, !tbaa !24
  %t43 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v2, ptr %v2, ptr %t36, i64 %t40)
  store { i64, ptr } %t43, ptr %l28
  br label %bb9
bb8:
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t46 = getelementptr %"compiler/diag:Item", ptr %t44, i32 0, i32 5
  %t47 = load i64, ptr %t46, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb17, label %bb18
bb9:
  %t51 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t52 = call %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %v2, ptr %s1, { i64, ptr } %t51, i1 true)
  store %"compiler/session:Positions" %t52, ptr %l29
  br label %bb10
bb10:
  %t53 = load %"compiler/session:Positions", ptr %l29
  store %"compiler/session:Positions" %t53, ptr %l4
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t56 = getelementptr %"compiler/diag:Item", ptr %t54, i32 0, i32 3
  %t57 = load i64, ptr %t56, !tbaa !24
  %t60 = call { i64, i64 } @compiler_2fsession_2ecompiler_2fsession_3aPositions_2ePos(ptr %s1, ptr %l4, i64 %t57)
  store { i64, i64 } %t60, ptr %l33
  br label %bb11
bb11:
  %t61 = load { i64, i64 }, ptr %l33
  store { i64, i64 } %t61, ptr %l5
  %t62 = getelementptr { i64, i64 }, ptr %l5, i32 0, i32 0
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l6, !tbaa !24
  %t65 = getelementptr { i64, i64 }, ptr %l5, i32 0, i32 1
  %t66 = load i64, ptr %t65, !tbaa !24
  store i64 %t66, ptr %l7, !tbaa !24
  store ptr %l4, ptr %l36, !tbaa !29
  %t68 = load ptr, ptr %l3, !tbaa !29
  %t70 = getelementptr %"compiler/diag:Item", ptr %t68, i32 0, i32 4
  %t71 = load i64, ptr %t70, !tbaa !24
  %t72 = load ptr, ptr %l3, !tbaa !29
  %t74 = getelementptr %"compiler/diag:Item", ptr %t72, i32 0, i32 3
  %t75 = load i64, ptr %t74, !tbaa !24
  %t78 = icmp sgt i64 %t71, %t75
  br i1 %t78, label %bb12, label %bb13
bb12:
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t82 = getelementptr %"compiler/diag:Item", ptr %t80, i32 0, i32 4
  %t83 = load i64, ptr %t82, !tbaa !24
  store i64 %t83, ptr %l42, !tbaa !24
  br label %bb14
bb13:
  %t85 = load ptr, ptr %l3, !tbaa !29
  %t87 = getelementptr %"compiler/diag:Item", ptr %t85, i32 0, i32 3
  %t88 = load i64, ptr %t87, !tbaa !24
  store i64 %t88, ptr %l42, !tbaa !24
  br label %bb14
bb14:
  %t90 = load ptr, ptr %l36, !tbaa !29
  %t91 = load i64, ptr %l42, !tbaa !24
  %t92 = call { i64, i64 } @compiler_2fsession_2ecompiler_2fsession_3aPositions_2ePos(ptr %s1, ptr %t90, i64 %t91)
  store { i64, i64 } %t92, ptr %l47
  br label %bb15
bb15:
  %t93 = load { i64, i64 }, ptr %l47
  store { i64, i64 } %t93, ptr %l8
  %t94 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 0
  %t95 = load i64, ptr %t94, !tbaa !24
  %t97 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 1
  %t98 = load i64, ptr %t97, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i64, ptr %l6, !tbaa !24
  %t103 = add i64 %t101, 1
  %t104 = load i64, ptr %l7, !tbaa !24
  %t106 = add i64 %t104, 1
  %t109 = add i64 %t95, 1
  %t112 = add i64 %t98, 1
  %t113 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t116 = call i64 @__olang_fmt_i64(ptr null, i64 %t103)
  %t117 = add i64 %t114, %t116
  %t118 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t122 = call i64 @__olang_fmt_i64(ptr null, i64 %t106)
  %t123 = add i64 %t120, %t122
  %t124 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t126 = add i64 %t123, %t125
  %t128 = call i64 @__olang_fmt_i64(ptr null, i64 %t109)
  %t129 = add i64 %t126, %t128
  %t130 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t131 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t132 = add i64 %t129, %t131
  %t134 = call i64 @__olang_fmt_i64(ptr null, i64 %t112)
  %t135 = add i64 %t132, %t134
  %t136 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t135)
  call void @olang_textcopy(ptr %t136, ptr %t113, i64 %t114)
  %t137 = getelementptr i8, ptr %t136, i64 %t114
  %t138 = call i64 @__olang_fmt_i64(ptr %t137, i64 %t103)
  %t139 = getelementptr i8, ptr %t137, i64 %t116
  call void @olang_textcopy(ptr %t139, ptr %t118, i64 %t119)
  %t140 = getelementptr i8, ptr %t139, i64 %t119
  %t141 = call i64 @__olang_fmt_i64(ptr %t140, i64 %t106)
  %t142 = getelementptr i8, ptr %t140, i64 %t122
  call void @olang_textcopy(ptr %t142, ptr %t124, i64 %t125)
  %t143 = getelementptr i8, ptr %t142, i64 %t125
  %t144 = call i64 @__olang_fmt_i64(ptr %t143, i64 %t109)
  %t145 = getelementptr i8, ptr %t143, i64 %t128
  call void @olang_textcopy(ptr %t145, ptr %t130, i64 %t131)
  %t146 = getelementptr i8, ptr %t145, i64 %t131
  %t147 = call i64 @__olang_fmt_i64(ptr %t146, i64 %t112)
  %t148 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t136, 1
  %t151 = extractvalue { i64, ptr } %t149, 0
  %t152 = extractvalue { i64, ptr } %t149, 1
  %t153 = mul i64 %t151, 1
  %t154 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t153)
  call void @llvm.memcpy.p0.p0.i64(ptr %t154, ptr %t152, i64 %t153, i1 false)
  %t155 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t154, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t100, { i64, ptr } %t156)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l3, !tbaa !29
  %t162 = getelementptr %"compiler/diag:Item", ptr %t160, i32 0, i32 5
  %t163 = load i64, ptr %t162, !tbaa !24
  %t164 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t165 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t167 = call i64 @__olang_fmt_i64(ptr null, i64 %t163)
  %t168 = add i64 %t165, %t167
  %t169 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t168)
  call void @olang_textcopy(ptr %t169, ptr %t164, i64 %t165)
  %t170 = getelementptr i8, ptr %t169, i64 %t165
  %t171 = call i64 @__olang_fmt_i64(ptr %t170, i64 %t163)
  %t172 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t169, 1
  %t175 = extractvalue { i64, ptr } %t173, 0
  %t176 = extractvalue { i64, ptr } %t173, 1
  %t177 = mul i64 %t175, 1
  %t178 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t177)
  call void @llvm.memcpy.p0.p0.i64(ptr %t178, ptr %t176, i64 %t177, i1 false)
  %t179 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t178, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s4, ptr %t159, { i64, ptr } %t180)
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s4)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t183 = load ptr, ptr %l3, !tbaa !29
  %t185 = getelementptr %"compiler/diag:Item", ptr %t183, i32 0, i32 1
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  %t188 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t186, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t188, ptr %l71
  br label %bb22
bb22:
  %t189 = load i1, ptr %l71, !tbaa !21
  %t190 = xor i1 %t189, true
  br i1 %t190, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s6
  %t192 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s6, ptr %t192, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d82, i32 0, i32 1) })
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load ptr, ptr %l3, !tbaa !29
  %t197 = getelementptr %"compiler/diag:Item", ptr %t195, i32 0, i32 1
  %t198 = load { i64, ptr }, ptr %t197, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v0, ptr %v3, ptr %t194, { i64, ptr } %t198)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s6)
  br label %bb27
bb27:
  %t201 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t201, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d83, i32 0, i32 1) })
  br label %bb28
bb28:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load ptr, ptr %l3, !tbaa !29
  %t206 = getelementptr %"compiler/diag:Item", ptr %t204, i32 0, i32 6
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v0, ptr %v3, ptr %t203, { i64, ptr } %t207)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmcp_2ereply(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t6 = extractvalue { i64, ptr } %a0, 1
  %t7 = extractvalue { i64, ptr } %a0, 0
  %t8 = add i64 %t4, %t7
  %t9 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t11 = add i64 %t8, %t10
  %t13 = extractvalue { i64, ptr } %a1, 1
  %t14 = extractvalue { i64, ptr } %a1, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t19 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t18)
  call void @olang_textcopy(ptr %t19, ptr %t3, i64 %t4)
  %t20 = getelementptr i8, ptr %t19, i64 %t4
  call void @olang_textcopy(ptr %t20, ptr %t6, i64 %t7)
  %t21 = getelementptr i8, ptr %t20, i64 %t7
  call void @olang_textcopy(ptr %t21, ptr %t9, i64 %t10)
  %t22 = getelementptr i8, ptr %t21, i64 %t10
  call void @olang_textcopy(ptr %t22, ptr %t13, i64 %t14)
  %t23 = getelementptr i8, ptr %t22, i64 %t14
  call void @olang_textcopy(ptr %t23, ptr %t16, i64 %t17)
  %t24 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t19, 1
  store { i64, ptr } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmcp_2erun(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3, { i64, ptr } %a4, ptr %a5) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l16 = alloca i1
  %l17 = alloca i1
  %l19 = alloca i1
  %l22 = alloca { i64, ptr }
  %l25 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l27 = alloca ptr
  %l28 = alloca i64
  %l30 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l40 = alloca i1
  %l42 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i32
  %l50 = alloca i1
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca i32
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l69 = alloca %"compiler/diag:Diagnostics"
  %l71 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l78 = alloca i1
  %l81 = alloca { i64, ptr }
  %l83 = alloca i64
  %l85 = alloca i1
  %l89 = alloca i1
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l101 = alloca i1
  %l102 = alloca { i64, ptr }
  %l107 = alloca ptr
  %l112 = alloca ptr
  %l122 = alloca { i64, ptr }
  %l123 = alloca i32
  %l125 = alloca i1
  %l130 = alloca { i64, ptr }
  %l132 = alloca { i64, ptr }
  %l134 = alloca i1
  %l136 = alloca { i64, ptr }
  %l141 = alloca ptr
  %l146 = alloca ptr
  %l156 = alloca { i64, ptr }
  %l157 = alloca i32
  %l159 = alloca i1
  %l164 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l171 = alloca ptr
  %l176 = alloca ptr
  %l185 = alloca %"compiler/doc:Module"
  %l187 = alloca { i64, ptr }
  %l189 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t182 = alloca %"compiler/diag:Diagnostics", align 8
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i1 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t1, ptr %l6, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t3, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store i1 %t5, ptr %l16
  br label %bb1
bb1:
  %t6 = load i1, ptr %l16, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d88, i32 0, i32 1) })
  store i1 %t9, ptr %l19
  br label %bb4
bb3:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb5
bb4:
  %t10 = load i1, ptr %l19, !tbaa !21
  %t11 = xor i1 %t10, true
  store i1 %t11, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l17, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = call { i64, ptr } @compiler_2fsession_2eStdModule(ptr %v1, ptr %s1, { i64, ptr } %t14)
  store { i64, ptr } %t16, ptr %l22
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t17 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 1
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t19)
  call void @olang_textcopy(ptr %t20, ptr %t18, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t25 = extractvalue { i64, ptr } %t22, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l6, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb9
bb9:
  %t31 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t31, ptr %l25
  br label %bb10
bb10:
  %t32 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t32, ptr %l7
  %t33 = load i1, ptr %l2, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  store ptr %l7, ptr %l27, !tbaa !29
  %t35 = ptrtoint ptr %s0 to i64
  store i64 %t35, ptr %l28, !tbaa !24
  %t36 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t36, label %bb13, label %bb14
bb12:
  br label %bb19
bb13:
  %t38 = call ptr @__olang_region_make(ptr %s0)
  %t39 = ptrtoint ptr %t38 to i64
  store i64 %t39, ptr %l28, !tbaa !24
  br label %bb14
bb14:
  %t40 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t40, ptr %l30, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = call ptr @__olang_scope_of(ptr %t42, ptr null)
  %t44 = ptrtoint ptr %t43 to i64
  %t46 = inttoptr i64 %t44 to ptr
  %t47 = load i64, ptr %l28
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t50 = call { i64, ptr } @compiler_2fsession_2eRealOf(ptr %t46, ptr %t48, { i64, ptr } %t49)
  store { i64, ptr } %t50, ptr %l32
  br label %bb15
bb15:
  %t51 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t52 = load i64, ptr %l28
  %t53 = inttoptr i64 %t52 to ptr
  %t54 = extractvalue { i64, ptr } %t51, 0
  %t55 = extractvalue { i64, ptr } %t51, 1
  %t56 = mul i64 %t54, 1
  %t57 = call ptr @__olang_scope_alloc(ptr %t53, i64 %t56)
  call void @llvm.memcpy.p0.p0.i64(ptr %t57, ptr %t55, i64 %t56, i1 false)
  %t58 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  store { i64, ptr } %t59, ptr %l33, !tbaa !27
  %t60 = ptrtoint ptr %s0 to i64
  store i64 %t60, ptr %l34, !tbaa !24
  %t61 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t61, label %bb16, label %bb17
bb16:
  %t63 = call ptr @__olang_region_make(ptr %s0)
  %t64 = ptrtoint ptr %t63 to i64
  store i64 %t64, ptr %l34, !tbaa !24
  br label %bb17
bb17:
  %t65 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 1
  %t68 = extractvalue { i64, ptr } %t65, 0
  %t69 = load i64, ptr %l34
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = call ptr @__olang_scope_alloc(ptr %t70, i64 %t68)
  call void @olang_textcopy(ptr %t71, ptr %t67, i64 %t68)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t75 = load i64, ptr %l34
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = extractvalue { i64, ptr } %t73, 0
  %t78 = extractvalue { i64, ptr } %t73, 1
  %t79 = mul i64 %t77, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %t76, i64 %t79)
  call void @llvm.memcpy.p0.p0.i64(ptr %t80, ptr %t78, i64 %t79, i1 false)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  %t83 = load ptr, ptr %l27, !tbaa !29
  %t84 = load { i64, ptr }, ptr %l33, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %s0, ptr %s0, ptr %s0, ptr %t83, { i64, ptr } %t84, { i64, ptr } %t82)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t86 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t86, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t88, ptr %l40
  br label %bb20
bb20:
  %t89 = load i1, ptr %l40, !tbaa !21
  br i1 %t89, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  %t90 = load i1, ptr %l2, !tbaa !21
  br i1 %t90, label %bb23, label %bb24
bb22:
  br label %bb39
bb23:
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t92, ptr %l42, !tbaa !27
  br label %bb32
bb24:
  %t94 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t94, ptr %l45, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 1
  %t97 = call ptr @__olang_scope_of(ptr %t96, ptr null)
  %t98 = ptrtoint ptr %t97 to i64
  %t100 = inttoptr i64 %t98 to ptr
  %t101 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t102 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %t100, ptr %v2, { i64, ptr } %t101)
  %t103 = extractvalue { i32, { i64, ptr } } %t102, 1
  %t104 = extractvalue { i32, { i64, ptr } } %t102, 0
  store i32 %t104, ptr %l48
  %t105 = icmp ne i32 %t104, 0
  br i1 %t105, label %bb26, label %ok.106, !prof !99
ok.106:
  store { i64, ptr } %t103, ptr %l47
  br label %bb25
bb25:
  %t107 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t107, ptr %l44, !tbaa !27
  br label %bb31
bb26:
  %t108 = load i32, ptr %l48, !tbaa !23
  %t109 = ashr i32 %t108, 16
  %t111 = icmp eq i32 %t109, 1
  store i1 %t111, ptr %l50, !tbaa !21
  %t112 = load i32, ptr %l48, !tbaa !23
  %t113 = ashr i32 %t112, 16
  %t115 = icmp eq i32 %t113, 1
  br i1 %t115, label %bb27, label %bb28
bb27:
  call void @__olang_errpay_pop()
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t117 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t118 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t121 = extractvalue { i64, ptr } %t117, 1
  %t122 = extractvalue { i64, ptr } %t117, 0
  %t123 = add i64 %t119, %t122
  %t124 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t123)
  call void @olang_textcopy(ptr %t124, ptr %t118, i64 %t119)
  %t125 = getelementptr i8, ptr %t124, i64 %t119
  call void @olang_textcopy(ptr %t125, ptr %t121, i64 %t122)
  %t126 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t124, 1
  %t129 = extractvalue { i64, ptr } %t127, 0
  %t130 = extractvalue { i64, ptr } %t127, 1
  %t131 = mul i64 %t129, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t131)
  call void @llvm.memcpy.p0.p0.i64(ptr %t132, ptr %t130, i64 %t131, i1 false)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t136 = call { i64, ptr } @compiler_2fmcp_2etoolError(ptr %v5, ptr %v5, { i64, ptr } %t134)
  store { i64, ptr } %t136, ptr %l56
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t137 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t137, ptr %rv
  br label %ret
bb31:
  %t138 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t138, ptr %l42, !tbaa !27
  br label %bb32
bb32:
  %t139 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t140 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t140, ptr %l58, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_scope_of(ptr %t143, ptr null)
  %t145 = ptrtoint ptr %t144 to i64
  %t147 = inttoptr i64 %t145 to ptr
  %t148 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t150 = call { i32, { i64, ptr } } @compiler_2fsession_2eFormat(ptr %t147, ptr %v2, ptr %s5, { i64, ptr } %t148, { i64, ptr } %t139)
  %t151 = extractvalue { i32, { i64, ptr } } %t150, 1
  %t152 = extractvalue { i32, { i64, ptr } } %t150, 0
  store i32 %t152, ptr %l62
  %t153 = icmp ne i32 %t152, 0
  br i1 %t153, label %bb34, label %ok.154, !prof !99
ok.154:
  store { i64, ptr } %t151, ptr %l61
  br label %bb33
bb33:
  %t155 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t155, ptr %l57, !tbaa !27
  br label %bb37
bb34:
  br label %bb35
bb35:
  %t156 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t156, 1
  %t159 = extractvalue { i64, ptr } %t156, 0
  %t160 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t161 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t162 = add i64 %t159, %t161
  %t163 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t162)
  call void @olang_textcopy(ptr %t163, ptr %t158, i64 %t159)
  %t164 = getelementptr i8, ptr %t163, i64 %t159
  call void @olang_textcopy(ptr %t164, ptr %t160, i64 %t161)
  %t165 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t163, 1
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t169 = extractvalue { i64, ptr } %t166, 1
  %t170 = mul i64 %t168, 1
  %t171 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t170)
  call void @llvm.memcpy.p0.p0.i64(ptr %t171, ptr %t169, i64 %t170, i1 false)
  %t172 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  %t175 = call { i64, ptr } @compiler_2fmcp_2etextResult(ptr %v5, ptr %v5, { i64, ptr } %t173, i1 true)
  store { i64, ptr } %t175, ptr %l66
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t176 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t176, ptr %rv
  br label %ret
bb37:
  %t177 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t180 = call { i64, ptr } @compiler_2fmcp_2etextResult(ptr %s5, ptr %v5, { i64, ptr } %t177, i1 false)
  store { i64, ptr } %t180, ptr %l68
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t181 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t181, ptr %rv
  br label %ret
bb39:
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t182, ptr %v4, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l69, ptr %t182, i64 544, i1 false)
  br label %bb40
bb40:
  %t183 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 544, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t183, ptr %l69, i64 544, i1 false)
  store ptr %t183, ptr %l10, !tbaa !29
  %t185 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t185, ptr %l71, !tbaa !27
  %t187 = load ptr, ptr %l10, !tbaa !29
  %t188 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 1
  %t190 = call ptr @__olang_scope_of(ptr %t189, ptr null)
  %t191 = ptrtoint ptr %t190 to i64
  %t193 = inttoptr i64 %t191 to ptr
  %t194 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t198 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %t193, ptr %v4, ptr %v4, ptr %s0, ptr %v4, { i64, ptr } %t194, ptr %a5, ptr %t187, ptr %l7, i1 true)
  store ptr %t198, ptr %l76
  br label %bb41
bb41:
  %t199 = load ptr, ptr %l76, !tbaa !29
  store ptr %t199, ptr %l11, !tbaa !29
  %t200 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t202 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t200, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store i1 %t202, ptr %l78
  br label %bb42
bb42:
  %t203 = load i1, ptr %l78, !tbaa !21
  br i1 %t203, label %bb43, label %bb44
bb43:
  %t204 = load ptr, ptr %l11, !tbaa !29
  %t205 = load ptr, ptr %l10, !tbaa !29
  %t208 = call { i64, ptr } @compiler_2fmcp_2echeckResult(ptr %v4, ptr %v4, ptr %v5, ptr %t204, ptr %t205)
  store { i64, ptr } %t208, ptr %l81
  br label %bb45
bb44:
  br label %bb46
bb45:
  call void @__olang_scope_close(ptr %s0)
  %t209 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t209, ptr %rv
  br label %ret
bb46:
  %t210 = load ptr, ptr %l10, !tbaa !29
  %t212 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v4, ptr %t210)
  store i64 %t212, ptr %l83
  br label %bb47
bb47:
  %t213 = load i64, ptr %l83, !tbaa !24
  %t214 = icmp sgt i64 %t213, 0
  br i1 %t214, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l85, !tbaa !21
  br label %bb50
bb49:
  %t216 = load ptr, ptr %l11, !tbaa !29
  %t218 = getelementptr %"compiler/session:Analysis", ptr %t216, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t221 = icmp eq ptr %t219, null
  store i1 %t221, ptr %l85, !tbaa !21
  br label %bb50
bb50:
  %t223 = load i1, ptr %l85, !tbaa !21
  br i1 %t223, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb53
bb52:
  %t224 = load ptr, ptr %l11, !tbaa !29
  %t226 = getelementptr %"compiler/session:Analysis", ptr %t224, i32 0, i32 2
  %t227 = load ptr, ptr %t226, !tbaa !29
  %t229 = icmp eq ptr %t227, null
  store i1 %t229, ptr %l89, !tbaa !21
  br label %bb53
bb53:
  %t231 = load i1, ptr %l89, !tbaa !21
  br i1 %t231, label %bb54, label %bb55
bb54:
  store %olang.scope zeroinitializer, ptr %s11
  %t232 = load ptr, ptr %l10, !tbaa !29
  %t234 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v4, ptr %s11, ptr %t232)
  store { i64, ptr } %t234, ptr %l94
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t235 = load ptr, ptr %l10, !tbaa !29
  %t237 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSummary(ptr %v4, ptr %s11, ptr %t235)
  store { i64, ptr } %t237, ptr %l96
  br label %bb57
bb57:
  %t238 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t238, 1
  %t240 = extractvalue { i64, ptr } %t238, 0
  %t241 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t241, 1
  %t243 = extractvalue { i64, ptr } %t241, 0
  %t244 = add i64 %t240, %t243
  %t245 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t244)
  call void @olang_textcopy(ptr %t245, ptr %t239, i64 %t240)
  %t246 = getelementptr i8, ptr %t245, i64 %t240
  call void @olang_textcopy(ptr %t246, ptr %t242, i64 %t243)
  %t247 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t245, 1
  %t250 = extractvalue { i64, ptr } %t248, 0
  %t251 = extractvalue { i64, ptr } %t248, 1
  %t252 = mul i64 %t250, 1
  %t253 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t252)
  call void @llvm.memcpy.p0.p0.i64(ptr %t253, ptr %t251, i64 %t252, i1 false)
  %t254 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t253, 1
  %t257 = call { i64, ptr } @compiler_2fmcp_2etextResult(ptr %v5, ptr %v5, { i64, ptr } %t255, i1 true)
  store { i64, ptr } %t257, ptr %l99
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t258 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t258, ptr %rv
  br label %ret
bb59:
  %t259 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t261 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t259, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d93, i32 0, i32 1) })
  store i1 %t261, ptr %l101
  br label %bb60
bb60:
  %t262 = load i1, ptr %l101, !tbaa !21
  br i1 %t262, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s13
  %t263 = load ptr, ptr %l11, !tbaa !29
  %t265 = getelementptr %"compiler/session:Analysis", ptr %t263, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !29
  %t268 = icmp eq ptr %t266, null
  br i1 %t268, label %bb63, label %bb64
bb62:
  br label %bb78
bb63:
  call void @__olang_check_failed(ptr @olang_loc_308bbd8a0e283fc3_2a8ec4cf6bdf47df)
  unreachable
bb64:
  br label %bb65
bb65:
  %t270 = load ptr, ptr %l11, !tbaa !29
  %t272 = getelementptr %"compiler/session:Analysis", ptr %t270, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !29
  store ptr %t273, ptr %l107, !tbaa !29
  %t274 = load ptr, ptr %l11, !tbaa !29
  %t276 = getelementptr %"compiler/session:Analysis", ptr %t274, i32 0, i32 2
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t279 = icmp eq ptr %t277, null
  br i1 %t279, label %bb66, label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_308bbd8a0e283fc3_2a8ec4cf6bdf47df)
  unreachable
bb67:
  br label %bb68
bb68:
  %t281 = load ptr, ptr %l11, !tbaa !29
  %t283 = getelementptr %"compiler/session:Analysis", ptr %t281, i32 0, i32 2
  %t284 = load ptr, ptr %t283, !tbaa !29
  store ptr %t284, ptr %l112, !tbaa !29
  %t285 = load ptr, ptr %l11, !tbaa !29
  %t287 = getelementptr %"compiler/session:Analysis", ptr %t285, i32 0, i32 3
  %t288 = load ptr, ptr %t287, !tbaa !29
  %t290 = icmp eq ptr %t288, null
  br i1 %t290, label %bb69, label %bb70
bb69:
  call void @__olang_check_failed(ptr @olang_loc_308bbd8a0e283fc3_2a8ec4cf6bdf47df)
  unreachable
bb70:
  br label %bb71
bb71:
  %t292 = load ptr, ptr %l11, !tbaa !29
  %t294 = getelementptr %"compiler/session:Analysis", ptr %t292, i32 0, i32 3
  %t295 = load ptr, ptr %t294, !tbaa !29
  %t296 = load ptr, ptr %l11, !tbaa !29
  %t298 = getelementptr %"compiler/session:Analysis", ptr %t296, i32 0, i32 0
  %t299 = load ptr, ptr %t298, !tbaa !29
  %t301 = getelementptr %"compiler/load:Loader", ptr %t299, i32 0, i32 12
  %t302 = load i64, ptr %t301, !tbaa !24
  %t303 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t304 = load ptr, ptr %l107, !tbaa !29
  %t305 = load ptr, ptr %l112, !tbaa !29
  %t309 = call { i32, { i64, ptr } } @compiler_2fexplain_2eItem(ptr %v4, ptr %v4, ptr %v4, ptr %v3, ptr %s13, ptr %t304, ptr %t305, ptr %t295, i64 %t302, { i64, ptr } %t303)
  %t310 = extractvalue { i32, { i64, ptr } } %t309, 1
  %t311 = extractvalue { i32, { i64, ptr } } %t309, 0
  store i32 %t311, ptr %l123
  %t312 = icmp ne i32 %t311, 0
  br i1 %t312, label %bb73, label %ok.313, !prof !99
ok.313:
  store { i64, ptr } %t310, ptr %l122
  br label %bb72
bb72:
  %t314 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t314, ptr %l102, !tbaa !27
  br label %bb76
bb73:
  %t315 = load i32, ptr %l123, !tbaa !23
  %t316 = ashr i32 %t315, 16
  %t318 = icmp eq i32 %t316, 1
  store i1 %t318, ptr %l125, !tbaa !21
  br label %bb74
bb74:
  %t319 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t321 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t322 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t324 = extractvalue { i64, ptr } %t319, 1
  %t325 = extractvalue { i64, ptr } %t319, 0
  %t326 = add i64 %t322, %t325
  %t327 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t328 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t329 = add i64 %t326, %t328
  %t331 = extractvalue { i64, ptr } %t320, 1
  %t332 = extractvalue { i64, ptr } %t320, 0
  %t333 = add i64 %t329, %t332
  %t334 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t333)
  call void @olang_textcopy(ptr %t334, ptr %t321, i64 %t322)
  %t335 = getelementptr i8, ptr %t334, i64 %t322
  call void @olang_textcopy(ptr %t335, ptr %t324, i64 %t325)
  %t336 = getelementptr i8, ptr %t335, i64 %t325
  call void @olang_textcopy(ptr %t336, ptr %t327, i64 %t328)
  %t337 = getelementptr i8, ptr %t336, i64 %t328
  call void @olang_textcopy(ptr %t337, ptr %t331, i64 %t332)
  %t338 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t339 = insertvalue { i64, ptr } %t338, ptr %t334, 1
  %t341 = extractvalue { i64, ptr } %t339, 0
  %t342 = extractvalue { i64, ptr } %t339, 1
  %t343 = mul i64 %t341, 1
  %t344 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t343)
  call void @llvm.memcpy.p0.p0.i64(ptr %t344, ptr %t342, i64 %t343, i1 false)
  %t345 = insertvalue { i64, ptr } undef, i64 %t341, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t344, 1
  %t348 = call { i64, ptr } @compiler_2fmcp_2etextResult(ptr %v5, ptr %v5, { i64, ptr } %t346, i1 true)
  store { i64, ptr } %t348, ptr %l130
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t349 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t349, ptr %rv
  br label %ret
bb76:
  %t350 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t353 = call { i64, ptr } @compiler_2fmcp_2etextResult(ptr %s13, ptr %v5, { i64, ptr } %t350, i1 false)
  store { i64, ptr } %t353, ptr %l132
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t354 = load { i64, ptr }, ptr %l132, !tbaa !27
  store { i64, ptr } %t354, ptr %rv
  br label %ret
bb78:
  %t355 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t357 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t355, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d96, i32 0, i32 1) })
  store i1 %t357, ptr %l134
  br label %bb79
bb79:
  %t358 = load i1, ptr %l134, !tbaa !21
  %t359 = xor i1 %t358, true
  br i1 %t359, label %bb80, label %bb81
bb80:
  store %olang.scope zeroinitializer, ptr %s16
  %t361 = load ptr, ptr %l11, !tbaa !29
  %t363 = getelementptr %"compiler/session:Analysis", ptr %t361, i32 0, i32 1
  %t364 = load ptr, ptr %t363, !tbaa !29
  %t366 = icmp eq ptr %t364, null
  br i1 %t366, label %bb82, label %bb83
bb81:
  br label %bb97
bb82:
  call void @__olang_check_failed(ptr @olang_loc_fd6ee713b6cd3a34_3a725fec10b02c40)
  unreachable
bb83:
  br label %bb84
bb84:
  %t368 = load ptr, ptr %l11, !tbaa !29
  %t370 = getelementptr %"compiler/session:Analysis", ptr %t368, i32 0, i32 1
  %t371 = load ptr, ptr %t370, !tbaa !29
  store ptr %t371, ptr %l141, !tbaa !29
  %t372 = load ptr, ptr %l11, !tbaa !29
  %t374 = getelementptr %"compiler/session:Analysis", ptr %t372, i32 0, i32 2
  %t375 = load ptr, ptr %t374, !tbaa !29
  %t377 = icmp eq ptr %t375, null
  br i1 %t377, label %bb85, label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_fd6ee713b6cd3a34_3a725fec10b02c40)
  unreachable
bb86:
  br label %bb87
bb87:
  %t379 = load ptr, ptr %l11, !tbaa !29
  %t381 = getelementptr %"compiler/session:Analysis", ptr %t379, i32 0, i32 2
  %t382 = load ptr, ptr %t381, !tbaa !29
  store ptr %t382, ptr %l146, !tbaa !29
  %t383 = load ptr, ptr %l11, !tbaa !29
  %t385 = getelementptr %"compiler/session:Analysis", ptr %t383, i32 0, i32 3
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t388 = icmp eq ptr %t386, null
  br i1 %t388, label %bb88, label %bb89
bb88:
  call void @__olang_check_failed(ptr @olang_loc_fd6ee713b6cd3a34_3a725fec10b02c40)
  unreachable
bb89:
  br label %bb90
bb90:
  %t390 = load ptr, ptr %l11, !tbaa !29
  %t392 = getelementptr %"compiler/session:Analysis", ptr %t390, i32 0, i32 3
  %t393 = load ptr, ptr %t392, !tbaa !29
  %t394 = load ptr, ptr %l11, !tbaa !29
  %t396 = getelementptr %"compiler/session:Analysis", ptr %t394, i32 0, i32 0
  %t397 = load ptr, ptr %t396, !tbaa !29
  %t399 = getelementptr %"compiler/load:Loader", ptr %t397, i32 0, i32 12
  %t400 = load i64, ptr %t399, !tbaa !24
  %t401 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t402 = load ptr, ptr %l141, !tbaa !29
  %t403 = load ptr, ptr %l146, !tbaa !29
  %t407 = call { i32, { i64, ptr } } @compiler_2fdoc_2eItemText(ptr %v4, ptr %v4, ptr %v4, ptr %v3, ptr %s16, ptr %t402, ptr %t403, ptr %t393, i64 %t400, { i64, ptr } %t401)
  %t408 = extractvalue { i32, { i64, ptr } } %t407, 1
  %t409 = extractvalue { i32, { i64, ptr } } %t407, 0
  store i32 %t409, ptr %l157
  %t410 = icmp ne i32 %t409, 0
  br i1 %t410, label %bb92, label %ok.411, !prof !99
ok.411:
  store { i64, ptr } %t408, ptr %l156
  br label %bb91
bb91:
  %t412 = load { i64, ptr }, ptr %l156, !tbaa !27
  store { i64, ptr } %t412, ptr %l136, !tbaa !27
  br label %bb95
bb92:
  %t413 = load i32, ptr %l157, !tbaa !23
  %t414 = ashr i32 %t413, 16
  %t416 = icmp eq i32 %t414, 1
  store i1 %t416, ptr %l159, !tbaa !21
  br label %bb93
bb93:
  %t417 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t418 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t419 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t420 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t422 = extractvalue { i64, ptr } %t417, 1
  %t423 = extractvalue { i64, ptr } %t417, 0
  %t424 = add i64 %t420, %t423
  %t425 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t426 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t427 = add i64 %t424, %t426
  %t429 = extractvalue { i64, ptr } %t418, 1
  %t430 = extractvalue { i64, ptr } %t418, 0
  %t431 = add i64 %t427, %t430
  %t432 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t431)
  call void @olang_textcopy(ptr %t432, ptr %t419, i64 %t420)
  %t433 = getelementptr i8, ptr %t432, i64 %t420
  call void @olang_textcopy(ptr %t433, ptr %t422, i64 %t423)
  %t434 = getelementptr i8, ptr %t433, i64 %t423
  call void @olang_textcopy(ptr %t434, ptr %t425, i64 %t426)
  %t435 = getelementptr i8, ptr %t434, i64 %t426
  call void @olang_textcopy(ptr %t435, ptr %t429, i64 %t430)
  %t436 = insertvalue { i64, ptr } undef, i64 %t431, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t432, 1
  %t439 = extractvalue { i64, ptr } %t437, 0
  %t440 = extractvalue { i64, ptr } %t437, 1
  %t441 = mul i64 %t439, 1
  %t442 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t441)
  call void @llvm.memcpy.p0.p0.i64(ptr %t442, ptr %t440, i64 %t441, i1 false)
  %t443 = insertvalue { i64, ptr } undef, i64 %t439, 0
  %t444 = insertvalue { i64, ptr } %t443, ptr %t442, 1
  %t446 = call { i64, ptr } @compiler_2fmcp_2etextResult(ptr %v5, ptr %v5, { i64, ptr } %t444, i1 true)
  store { i64, ptr } %t446, ptr %l164
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  %t447 = load { i64, ptr }, ptr %l164, !tbaa !27
  store { i64, ptr } %t447, ptr %rv
  br label %ret
bb95:
  %t448 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t451 = call { i64, ptr } @compiler_2fmcp_2etextResult(ptr %s16, ptr %v5, { i64, ptr } %t448, i1 false)
  store { i64, ptr } %t451, ptr %l166
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  %t452 = load { i64, ptr }, ptr %l166, !tbaa !27
  store { i64, ptr } %t452, ptr %rv
  br label %ret
bb97:
  %t453 = load ptr, ptr %l11, !tbaa !29
  %t455 = getelementptr %"compiler/session:Analysis", ptr %t453, i32 0, i32 1
  %t456 = load ptr, ptr %t455, !tbaa !29
  %t458 = icmp eq ptr %t456, null
  br i1 %t458, label %bb98, label %bb99
bb98:
  call void @__olang_check_failed(ptr @olang_loc_bf544a52d5413c29_9c9e72e4a09cc655)
  unreachable
bb99:
  br label %bb100
bb100:
  %t460 = load ptr, ptr %l11, !tbaa !29
  %t462 = getelementptr %"compiler/session:Analysis", ptr %t460, i32 0, i32 1
  %t463 = load ptr, ptr %t462, !tbaa !29
  store ptr %t463, ptr %l171, !tbaa !29
  %t464 = load ptr, ptr %l11, !tbaa !29
  %t466 = getelementptr %"compiler/session:Analysis", ptr %t464, i32 0, i32 2
  %t467 = load ptr, ptr %t466, !tbaa !29
  %t469 = icmp eq ptr %t467, null
  br i1 %t469, label %bb101, label %bb102
bb101:
  call void @__olang_check_failed(ptr @olang_loc_bf544a52d5413c29_9c9e72e4a09cc655)
  unreachable
bb102:
  br label %bb103
bb103:
  %t471 = load ptr, ptr %l11, !tbaa !29
  %t473 = getelementptr %"compiler/session:Analysis", ptr %t471, i32 0, i32 2
  %t474 = load ptr, ptr %t473, !tbaa !29
  store ptr %t474, ptr %l176, !tbaa !29
  %t475 = load ptr, ptr %l11, !tbaa !29
  %t477 = getelementptr %"compiler/session:Analysis", ptr %t475, i32 0, i32 3
  %t478 = load ptr, ptr %t477, !tbaa !29
  %t480 = icmp eq ptr %t478, null
  br i1 %t480, label %bb104, label %bb105
bb104:
  call void @__olang_check_failed(ptr @olang_loc_bf544a52d5413c29_9c9e72e4a09cc655)
  unreachable
bb105:
  br label %bb106
bb106:
  %t482 = load ptr, ptr %l11, !tbaa !29
  %t484 = getelementptr %"compiler/session:Analysis", ptr %t482, i32 0, i32 3
  %t485 = load ptr, ptr %t484, !tbaa !29
  %t486 = load ptr, ptr %l11, !tbaa !29
  %t488 = getelementptr %"compiler/session:Analysis", ptr %t486, i32 0, i32 0
  %t489 = load ptr, ptr %t488, !tbaa !29
  %t491 = getelementptr %"compiler/load:Loader", ptr %t489, i32 0, i32 12
  %t492 = load i64, ptr %t491, !tbaa !24
  %t493 = load ptr, ptr %l171, !tbaa !29
  %t494 = load ptr, ptr %l176, !tbaa !29
  %t497 = call %"compiler/doc:Module" @compiler_2fdoc_2eModule_2eOf(ptr %v4, ptr %v4, ptr %v4, ptr %v5, ptr %t493, ptr %t494, ptr %t485, i64 %t492, i1 false)
  store %"compiler/doc:Module" %t497, ptr %l185
  br label %bb107
bb107:
  %t498 = load %"compiler/doc:Module", ptr %l185
  %t499 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 80, i64 8)
  store %"compiler/doc:Module" %t498, ptr %t499
  %t501 = call { i64, ptr } @compiler_2fdoc_2ecompiler_2fdoc_3aModule_2eText(ptr %v5, ptr %v5, ptr %t499)
  store { i64, ptr } %t501, ptr %l187
  br label %bb108
bb108:
  %t502 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t503 = extractvalue { i64, ptr } %t502, 0
  %t504 = extractvalue { i64, ptr } %t502, 1
  %t505 = mul i64 %t503, 1
  %t506 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t505)
  call void @llvm.memcpy.p0.p0.i64(ptr %t506, ptr %t504, i64 %t505, i1 false)
  %t507 = insertvalue { i64, ptr } undef, i64 %t503, 0
  %t508 = insertvalue { i64, ptr } %t507, ptr %t506, 1
  %t510 = call { i64, ptr } @compiler_2fmcp_2etextResult(ptr %v5, ptr %v5, { i64, ptr } %t508, i1 false)
  store { i64, ptr } %t510, ptr %l189
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s0)
  %t511 = load { i64, ptr }, ptr %l189, !tbaa !27
  store { i64, ptr } %t511, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fmcp_2esend(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l5 = alloca i32
  %l7 = alloca i1
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = extractvalue { i64, ptr } %a0, 1
  %t4 = extractvalue { i64, ptr } %a0, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t14 = extractvalue { i64, ptr } %t11, 0
  %t15 = extractvalue { i64, ptr } %t11, 1
  %t16 = mul i64 %t14, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @llvm.memcpy.p0.p0.i64(ptr %t17, ptr %t15, i64 %t16, i1 false)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  %t21 = call i32 @std_2fio_2eWrite(ptr %s0, i32 1, { i64, ptr } %t19)
  store i32 %t21, ptr %l5
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb2, label %ok.23, !prof !99
ok.23:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t24 = load i32, ptr %l5, !tbaa !23
  %t25 = ashr i32 %t24, 16
  %t27 = icmp eq i32 %t25, 1
  store i1 %t27, ptr %l7, !tbaa !21
  %t28 = load i32, ptr %l5, !tbaa !23
  %t29 = ashr i32 %t28, 16
  %t31 = icmp eq i32 %t29, 1
  br i1 %t31, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmcp_2estr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l8 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l14 = alloca i1
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %v0, ptr %a0, { i64, ptr } %a1)
  %t6 = extractvalue { i32, ptr } %t5, 1
  %t7 = extractvalue { i32, ptr } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store ptr %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t11 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %v0, ptr %v2, ptr %t10)
  %t12 = extractvalue { i32, { i64, ptr } } %t11, 1
  %t13 = extractvalue { i32, { i64, ptr } } %t11, 0
  store i32 %t13, ptr %l12
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb7, label %ok.15, !prof !99
ok.15:
  store { i64, ptr } %t12, ptr %l11
  br label %bb6
bb2:
  %t16 = load i32, ptr %l6, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  store i1 %t19, ptr %l8, !tbaa !21
  %t20 = load i32, ptr %l6, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  br i1 %t23, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d100, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb10
bb6:
  %t25 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t25, ptr %l2, !tbaa !27
  br label %bb10
bb7:
  %t26 = load i32, ptr %l12, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l14, !tbaa !21
  %t30 = load i32, ptr %l12, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb5
bb10:
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t35, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmcp_2etestResult(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/text:LineIter"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i1
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca %"std/prelude/text:LineIter"
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l18 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %l25 = alloca i1
  %l36 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca i64
  %l48 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l57 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l70 = alloca %"std/prelude/text:StringBuilder"
  %l74 = alloca ptr
  %l76 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l9
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d101, i32 0, i32 1) })
  br label %bb2
bb2:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %t4)
  store %"std/prelude/text:LineIter" %t6, ptr %l12
  br label %bb3
bb3:
  %t7 = load %"std/prelude/text:LineIter", ptr %l12
  store %"std/prelude/text:LineIter" %t7, ptr %l5
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l5)
  %t10 = extractvalue { i32, { i64, ptr } } %t9, 1
  %t11 = extractvalue { i32, { i64, ptr } } %t9, 0
  store i32 %t11, ptr %l16
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb6, label %ok.13, !prof !99
ok.13:
  store { i64, ptr } %t10, ptr %l15
  br label %bb5
bb5:
  %t14 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t14, ptr %l13, !tbaa !27
  br label %bb8
bb6:
  %t15 = load i32, ptr %l16, !tbaa !23
  %t16 = ashr i32 %t15, 16
  %t18 = icmp eq i32 %t16, 1
  store i1 %t18, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb46
bb8:
  %t19 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t19, ptr %l6, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t20, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d102, i32 0, i32 1) })
  store i1 %t22, ptr %l20
  br label %bb9
bb9:
  %t23 = load i1, ptr %l20, !tbaa !21
  store i1 %t23, ptr %l7, !tbaa !21
  %t24 = load i1, ptr %l7, !tbaa !21
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t30 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t28, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d103, i32 0, i32 1) })
  store i1 %t30, ptr %l25
  br label %bb12
bb11:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb13
bb12:
  %t31 = load i1, ptr %l25, !tbaa !21
  %t32 = xor i1 %t31, true
  store i1 %t32, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t34 = load i1, ptr %l23, !tbaa !21
  br i1 %t34, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb45
bb15:
  br label %bb16
bb16:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  br i1 %t37, label %bb17, label %bb18
bb17:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 44)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l3, !tbaa !24
  %t44 = load i1, ptr %l7, !tbaa !21
  br i1 %t44, label %bb21, label %bb22
bb21:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l4, !tbaa !24
  br label %bb23
bb22:
  br label %bb23
bb23:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l2, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d104, i32 0, i32 1) })
  br label %bb24
bb24:
  store ptr %l2, ptr %l36, !tbaa !29
  %t51 = load i1, ptr %l7, !tbaa !21
  br i1 %t51, label %bb25, label %bb26
bb25:
  %t53 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t53, ptr %l39, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t54, 0
  store i64 %t57, ptr %l42, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 0
  store i64 %t59, ptr %l43, !tbaa !24
  %t60 = icmp sge i64 5, 0
  br i1 %t60, label %bb27, label %bb28
bb26:
  %t62 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t62, ptr %l48, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t63, 0
  store i64 %t66, ptr %l51, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  store i64 %t68, ptr %l52, !tbaa !24
  %t69 = icmp sge i64 7, 0
  br i1 %t69, label %bb33, label %bb34
bb27:
  %t71 = load i64, ptr %l42, !tbaa !24
  %t72 = icmp sle i64 5, %t71
  br i1 %t72, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_8d8cf657aed96bef_7cd13aec667ffb8b)
  unreachable
bb29:
  %t74 = load i64, ptr %l42, !tbaa !24
  %t75 = load i64, ptr %l43, !tbaa !24
  %t76 = icmp sle i64 %t74, %t75
  br i1 %t76, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_8d8cf657aed96bef_7cd13aec667ffb8b)
  unreachable
bb31:
  %t78 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = load i64, ptr %l42, !tbaa !24
  %t81 = getelementptr i8, ptr %t79, i64 5
  %t82 = sub i64 %t80, 5
  %t83 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t81, 1
  store { i64, ptr } %t84, ptr %l38, !tbaa !27
  br label %bb39
bb32:
  call void @__olang_check_failed(ptr @olang_loc_8d8cf657aed96bef_7cd13aec667ffb8b)
  unreachable
bb33:
  %t86 = load i64, ptr %l51, !tbaa !24
  %t87 = icmp sle i64 7, %t86
  br i1 %t87, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_8d8cf657aed96bef_7cd13aec667ffb8b)
  unreachable
bb35:
  %t89 = load i64, ptr %l51, !tbaa !24
  %t90 = load i64, ptr %l52, !tbaa !24
  %t91 = icmp sle i64 %t89, %t90
  br i1 %t91, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_8d8cf657aed96bef_7cd13aec667ffb8b)
  unreachable
bb37:
  %t93 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = load i64, ptr %l51, !tbaa !24
  %t96 = getelementptr i8, ptr %t94, i64 7
  %t97 = sub i64 %t95, 7
  %t98 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t96, 1
  store { i64, ptr } %t99, ptr %l38, !tbaa !27
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_8d8cf657aed96bef_7cd13aec667ffb8b)
  unreachable
bb39:
  %t101 = load ptr, ptr %l36, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l38, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %v0, ptr %t101, { i64, ptr } %t102)
  br label %bb40
bb40:
  store ptr %l2, ptr %l57, !tbaa !29
  %t103 = load i1, ptr %l7, !tbaa !21
  br i1 %t103, label %bb41, label %bb42
bb41:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d105, i32 0, i32 1) }, ptr %l59, !tbaa !27
  br label %bb43
bb42:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d106, i32 0, i32 1) }, ptr %l59, !tbaa !27
  br label %bb43
bb43:
  %t105 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t107 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t107, 1
  %t109 = extractvalue { i64, ptr } %t107, 0
  %t110 = add i64 %t106, %t109
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t113 = add i64 %t110, %t112
  %t114 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t113)
  call void @olang_textcopy(ptr %t114, ptr %t105, i64 %t106)
  %t115 = getelementptr i8, ptr %t114, i64 %t106
  call void @olang_textcopy(ptr %t115, ptr %t108, i64 %t109)
  %t116 = getelementptr i8, ptr %t115, i64 %t109
  call void @olang_textcopy(ptr %t116, ptr %t111, i64 %t112)
  %t117 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t114, 1
  %t120 = extractvalue { i64, ptr } %t118, 0
  %t121 = extractvalue { i64, ptr } %t118, 1
  %t122 = mul i64 %t120, 1
  %t123 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t122)
  call void @llvm.memcpy.p0.p0.i64(ptr %t123, ptr %t121, i64 %t122, i1 false)
  %t124 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  %t126 = load ptr, ptr %l57, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t126, { i64, ptr } %t125)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s2)
  br label %bb45
bb45:
  br label %bb4
bb46:
  %t128 = load i64, ptr %l4, !tbaa !24
  %t129 = load i64, ptr %l3, !tbaa !24
  %t130 = load i64, ptr %l4, !tbaa !24
  %t133 = sub i64 %t129, %t130
  %t134 = load i32, ptr %l1, !tbaa !23
  %t135 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t138 = call i64 @__olang_fmt_i64(ptr null, i64 %t128)
  %t139 = add i64 %t136, %t138
  %t140 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t144 = call i64 @__olang_fmt_i64(ptr null, i64 %t133)
  %t145 = add i64 %t142, %t144
  %t146 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t148 = add i64 %t145, %t147
  %t150 = sext i32 %t134 to i64
  %t151 = call i64 @__olang_fmt_i64(ptr null, i64 %t150)
  %t152 = add i64 %t148, %t151
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t154 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t155 = add i64 %t152, %t154
  %t156 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t155)
  call void @olang_textcopy(ptr %t156, ptr %t135, i64 %t136)
  %t157 = getelementptr i8, ptr %t156, i64 %t136
  %t158 = call i64 @__olang_fmt_i64(ptr %t157, i64 %t128)
  %t159 = getelementptr i8, ptr %t157, i64 %t138
  call void @olang_textcopy(ptr %t159, ptr %t140, i64 %t141)
  %t160 = getelementptr i8, ptr %t159, i64 %t141
  %t161 = call i64 @__olang_fmt_i64(ptr %t160, i64 %t133)
  %t162 = getelementptr i8, ptr %t160, i64 %t144
  call void @olang_textcopy(ptr %t162, ptr %t146, i64 %t147)
  %t163 = getelementptr i8, ptr %t162, i64 %t147
  %t164 = call i64 @__olang_fmt_i64(ptr %t163, i64 %t150)
  %t165 = getelementptr i8, ptr %t163, i64 %t151
  call void @olang_textcopy(ptr %t165, ptr %t153, i64 %t154)
  %t166 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t156, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = extractvalue { i64, ptr } %t167, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } %t174)
  br label %bb47
bb47:
  %t177 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t177, ptr %l70
  br label %bb48
bb48:
  %t178 = load %"std/prelude/text:StringBuilder", ptr %l70
  store %"std/prelude/text:StringBuilder" %t178, ptr %l8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l8, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d113, i32 0, i32 1) })
  br label %bb49
bb49:
  %t180 = load { i64, ptr }, ptr %l0, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %v0, ptr %l8, { i64, ptr } %t180)
  br label %bb50
bb50:
  store ptr %l8, ptr %l74, !tbaa !29
  %t184 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t184, ptr %l76
  br label %bb51
bb51:
  %t185 = load i32, ptr %l1, !tbaa !23
  %t187 = icmp ne i32 %t185, 0
  br i1 %t187, label %bb52, label %bb53
bb52:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d114, i32 0, i32 1) }, ptr %l79, !tbaa !27
  br label %bb54
bb53:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d115, i32 0, i32 1) }, ptr %l79, !tbaa !27
  br label %bb54
bb54:
  %t189 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t190 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t191 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t194 = add i64 %t190, %t193
  %t195 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t196 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t197 = add i64 %t194, %t196
  %t198 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = extractvalue { i64, ptr } %t198, 0
  %t201 = add i64 %t197, %t200
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t203 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t204 = add i64 %t201, %t203
  %t205 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t204)
  call void @olang_textcopy(ptr %t205, ptr %t189, i64 %t190)
  %t206 = getelementptr i8, ptr %t205, i64 %t190
  call void @olang_textcopy(ptr %t206, ptr %t192, i64 %t193)
  %t207 = getelementptr i8, ptr %t206, i64 %t193
  call void @olang_textcopy(ptr %t207, ptr %t195, i64 %t196)
  %t208 = getelementptr i8, ptr %t207, i64 %t196
  call void @olang_textcopy(ptr %t208, ptr %t199, i64 %t200)
  %t209 = getelementptr i8, ptr %t208, i64 %t200
  call void @olang_textcopy(ptr %t209, ptr %t202, i64 %t203)
  %t210 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr %t205, 1
  %t213 = extractvalue { i64, ptr } %t211, 0
  %t214 = extractvalue { i64, ptr } %t211, 1
  %t215 = mul i64 %t213, 1
  %t216 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t215)
  call void @llvm.memcpy.p0.p0.i64(ptr %t216, ptr %t214, i64 %t215, i1 false)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  %t219 = load ptr, ptr %l74, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t219, { i64, ptr } %t218)
  br label %bb55
bb55:
  %t222 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l8)
  store { i64, ptr } %t222, ptr %l83
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s0)
  %t223 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t223, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmcp_2etextResult(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l3
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d119, i32 0, i32 1) })
  br label %bb2
bb2:
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %v0, ptr %l2, { i64, ptr } %a0)
  br label %bb3
bb3:
  store ptr %l2, ptr %l7, !tbaa !29
  br i1 %a1, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d120, i32 0, i32 1) }, ptr %l9, !tbaa !27
  br label %bb6
bb5:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d121, i32 0, i32 1) }, ptr %l9, !tbaa !27
  br label %bb6
bb6:
  %t9 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t11 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = add i64 %t10, %t13
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t18 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t17)
  call void @olang_textcopy(ptr %t18, ptr %t9, i64 %t10)
  %t19 = getelementptr i8, ptr %t18, i64 %t10
  call void @olang_textcopy(ptr %t19, ptr %t12, i64 %t13)
  %t20 = getelementptr i8, ptr %t19, i64 %t13
  call void @olang_textcopy(ptr %t20, ptr %t15, i64 %t16)
  %t21 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t18, 1
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t25 = extractvalue { i64, ptr } %t22, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t30 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t30, { i64, ptr } %t29)
  br label %bb7
bb7:
  %t33 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t33, ptr %l13
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t34 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t34, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmcp_2etoolError(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i64, ptr } @compiler_2fmcp_2etextResult(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 true)
  store { i64, ptr } %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t4, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"file" }>, align 8
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"test needs a file" }>, align 8
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_errpay_pop()
@.d8 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"the compiler could not be run" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
@.d9 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"explain" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d12 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"explain" }>, align 8
@.d13 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"the compiler could not be run" }>, align 8
@.d14 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"check" }>, align 8
@.d15 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"explain" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"doc" }>, align 8
@.d17 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"format" }>, align 8
@.d18 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"no tool " }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" needs a file" }>, align 8
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"text" }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"text" }>, align 8
@.d23 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
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
define internal { i64, ptr } @olang_lambda_24(ptr %env, ptr %v0) #0 {
entry:
  %l12 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %cp0 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { i64, ptr }, ptr %cp0, !tbaa !28
  %cp1 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load { i64, ptr }, ptr %cp1, !tbaa !28
  %cp2 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load i1, ptr %cp2, !tbaa !28
  %cp3 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %cv3 = load { i64, ptr }, ptr %cp3, !tbaa !28
  %cp4 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 4
  %cv4 = load { i64, ptr }, ptr %cp4, !tbaa !28
  %cp5 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 5
  %cv5 = load ptr, ptr %cp5, !tbaa !28
  %vq0 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 6
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 7
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  %vq2 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 8
  %vr2 = load ptr, ptr %vq2, !tbaa !28
  %vc2 = call ptr @__olang_capture_scope(ptr %vr2)
  %vq3 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 9
  %vr3 = load ptr, ptr %vq3, !tbaa !28
  %vc3 = call ptr @__olang_capture_scope(ptr %vr3)
  %vq4 = getelementptr { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 10
  %vr4 = load ptr, ptr %vq4, !tbaa !28
  %vc4 = call ptr @__olang_capture_scope(ptr %vr4)
  br label %start
start:
  br label %bb0
bb0:
  %t13 = call { i64, ptr } @compiler_2fmcp_2erun(ptr %vc0, ptr %vc1, ptr %vc2, ptr %vc3, ptr %vc4, ptr %v0, { i64, ptr } %cv0, { i64, ptr } %cv1, i1 %cv2, { i64, ptr } %cv3, { i64, ptr } %cv4, ptr %cv5)
  store { i64, ptr } %t13, ptr %l12
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t14, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d25 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"the compiler ended while running " }>, align 8
@.d26 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" (status " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d27 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c") - a bug in the compiler" }>, align 8
@.d28 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"{\22diagnostics\22:[" }>, align 8
@.d29 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c",\22notes\22:[" }>, align 8
@.d30 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]}" }>, align 8
@.d31 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"],\22errors\22:" }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d33 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"no errors" }>, align 8
@.d34 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"{\22content\22:[{\22type\22:\22text\22,\22text\22:" }>, align 8
@.d35 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"}],\22structuredContent\22:" }>, align 8
@.d36 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c",\22isError\22:false}" }>, align 8
@.d37 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"OLANG" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"build/olang" }>, align 8
@.d41 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"{\22jsonrpc\22:\222.0\22,\22id\22:" }>, align 8
@.d42 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c",\22error\22:{\22code\22:" }>, align 8
@.d43 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c",\22message\22:" }>, align 8
@.d44 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}}" }>, align 8
@.d45 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d46 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"the message is not JSON" }>, align 8
@.d47 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"method" }>, align 8
@.d48 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"initialize" }>, align 8
@.d49 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d50 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"protocolVersion" }>, align 8
@.d51 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"2025-06-18" }>, align 8
@.d52 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"{\22protocolVersion\22:" }>, align 8
@.d53 = private constant <{ i64, [92 x i8] }> <{ i64 0, [92 x i8] c",\22capabilities\22:{\22tools\22:{\22listChanged\22:false}},\22serverInfo\22:{\22name\22:\22olang\22,\22version\22:\220\22}," }>, align 8
@.d54 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"\22instructions\22:" }>, align 8
@.d55 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c"Tools for the olang language: check a file's diagnostics, explain an item or a rule, a " }>, align 8
@.d56 = private constant <{ i64, [91 x i8] }> <{ i64 0, [91 x i8] c"module's documentation, format, and run a file's tests. Paths are relative to the server's " }>, align 8
@.d57 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"working directory." }>, align 8
@.d58 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d59 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ping" }>, align 8
@.d60 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{}" }>, align 8
@.d61 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"tools/list" }>, align 8
@.d62 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"{\22tools\22:" }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d64 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"tools/call" }>, align 8
@.d65 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d66 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"name" }>, align 8
@.d67 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d68 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d69 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"arguments" }>, align 8
@.d70 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"olang mcp has no " }>, align 8
@.d71 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"id" }>, align 8
@.d72 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d73 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d74 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"{\22file\22:" }>, align 8
@.d75 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d76 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c",\22line\22:" }>, align 8
@.d77 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c",\22column\22:" }>, align 8
@.d78 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c",\22endLine\22:" }>, align 8
@.d79 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c",\22endColumn\22:" }>, align 8
@.d80 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c",\22line\22:" }>, align 8
@.d81 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d82 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c",\22rule\22:" }>, align 8
@.d83 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c",\22message\22:" }>, align 8
@.d84 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"{\22jsonrpc\22:\222.0\22,\22id\22:" }>, align 8
@.d85 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c",\22result\22:" }>, align 8
@.d86 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d87 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"doc" }>, align 8
@.d88 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670 = weak hidden constant i1 false
declare ptr @__olang_scope_of(ptr, ptr) noinline
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03 = weak hidden constant i1 false
@.d89 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"format" }>, align 8
@.d90 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"cannot read " }>, align 8
@.d91 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c" does not parse - check it for its diagnostics" }>, align 8
@.d92 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"check" }>, align 8
@.d93 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"explain" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d94 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d95 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"' is no top-level item of " }>, align 8
@.d96 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d97 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d98 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"' is no item of " }>, align 8
@.d99 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d100 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d101 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"{\22tests\22:[" }>, align 8
@.d102 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ok - " }>, align 8
@.d103 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"FAIL - " }>, align 8
@.d104 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"{\22name\22:" }>, align 8
@.d105 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d106 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d107 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c",\22passed\22:" }>, align 8
@.d108 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d109 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"],\22passed\22:" }>, align 8
@.d110 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c",\22failed\22:" }>, align 8
@.d111 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c",\22status\22:" }>, align 8
@.d112 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d113 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"{\22content\22:[{\22type\22:\22text\22,\22text\22:" }>, align 8
@.d114 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d115 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d116 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"}],\22structuredContent\22:" }>, align 8
@.d117 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c",\22isError\22:" }>, align 8
@.d118 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d119 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"{\22content\22:[{\22type\22:\22text\22,\22text\22:" }>, align 8
@.d120 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d121 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d122 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"}],\22isError\22:" }>, align 8
@.d123 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
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
declare void @compiler_2fsession_2eIgnoreBrokenPipes()
declare %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %v0, i32 %a0)
declare i1 @compiler_2fsession_2ecompiler_2fsession_3aReader_2eFill(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @compiler_2fsession_2ecompiler_2fsession_3aReader_2eNextLine(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { { i64, ptr }, i32 } @compiler_2fsession_2eChildOutput(ptr %v0, ptr %v1, ptr %a0c, ptr %a0e)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eItems(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eLen_3ccompiler_2fdiag_3aItem_3e(ptr %v0, ptr %a0)
declare %"compiler/diag:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eAt_3ccompiler_2fdiag_3aItem_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSummary(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fsession_2eJsonStr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fjson_2eEncode_3cstd_2fjson_3aJson_26_3e(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare { i64, i64 } @compiler_2fsession_2ecompiler_2fsession_3aPositions_2ePos(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fsession_2eStdModule(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare { i64, ptr } @compiler_2fsession_2eRealOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @compiler_2fsession_2eFormat(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, i1 %a4)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
@olang_loc_308bbd8a0e283fc3_2a8ec4cf6bdf47df = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fexplain_2eItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4)
@olang_loc_fd6ee713b6cd3a34_3a725fec10b02c40 = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fdoc_2eItemText(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4)
@olang_loc_bf544a52d5413c29_9c9e72e4a09cc655 = external constant [0 x i8]
declare %"compiler/doc:Module" @compiler_2fdoc_2eModule_2eOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i1 %a4)
declare { i64, ptr } @compiler_2fdoc_2ecompiler_2fdoc_3aModule_2eText(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fio_2eWrite(ptr %v0, i32 %a0, { i64, ptr } %a1)
declare { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_8d8cf657aed96bef_7cd13aec667ffb8b = external constant [0 x i8]

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
